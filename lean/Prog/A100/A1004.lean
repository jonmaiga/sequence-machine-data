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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A100400: Triangle read by rows: T(n,k) is the number of nonroot nodes of outdegree k (0<=k<=n-1) in all non-crossing trees with n edges.

The programs for A100400, the canonical program `A100400.P6772168548397951224` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100400 has offset 1).

The definition of A100400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100400.P6772168548397951224

`(col(n)+1)*C(3*(row(n)+1)-col(n)-2, 2*(row(n)+1)-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100400

/-- `(col(n)+1)*C(3*(row(n)+1)-col(n)-2, 2*(row(n)+1)-1)` -/
def P6772168548397951224.Spec : Prop :=
  ∀ n, (P6772168548397951224.a n : ℤ) = A100400 (n + 1)

theorem P6772168548397951224.correct : P6772168548397951224.Spec := by
  intro n
  simp only [A100400, Nat.add_sub_cancel]

end A100400

/-! ## A100400.P4911866970279185468

`∑[char[∑[n]]]*A092276(n+1)`
-/

namespace A100400.P4911866970279185468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A092276 (n + 1)

end

end A100400.P4911866970279185468

namespace A100400

/-- `∑[char[∑[n]]]*A092276(n+1)` -/
def P4911866970279185468.Spec : Prop :=
  ∀ n, P4911866970279185468.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P9289022873065345106

`A002260(n+1)*A144484(n)`
-/

namespace A100400.P9289022873065345106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A144484 n

end

end A100400.P9289022873065345106

namespace A100400

/-- `A002260(n+1)*A144484(n)` -/
def P9289022873065345106.Spec : Prop :=
  ∀ n, P9289022873065345106.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P4830608989479059773

`∑[char[∑[n]]]*A071948(A061579(n))`
-/

namespace A100400.P4830608989479059773
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A071948 (A061579 n).toNat

end

end A100400.P4830608989479059773

namespace A100400

/-- `∑[char[∑[n]]]*A071948(A061579(n))` -/
def P4830608989479059773.Spec : Prop :=
  ∀ n, P4830608989479059773.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P3838148572073710836

`A092276(n+1)*A002024(n+1)`
-/

namespace A100400.P3838148572073710836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1) * A002024 (n + 1)

end

end A100400.P3838148572073710836

namespace A100400

/-- `A092276(n+1)*A002024(n+1)` -/
def P3838148572073710836.Spec : Prop :=
  ∀ n, P3838148572073710836.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P6997888741384618233

`A092276(n+1)*A123578(n+1)`
-/

namespace A100400.P6997888741384618233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1) * A123578 (n + 1)

end

end A100400.P6997888741384618233

namespace A100400

/-- `A092276(n+1)*A123578(n+1)` -/
def P6997888741384618233.Spec : Prop :=
  ∀ n, P6997888741384618233.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P13227781085438650075

`A092276(n+1)*A101447(A057944(n))`
-/

namespace A100400.P13227781085438650075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1) * A101447 (A057944 n).toNat

end

end A100400.P13227781085438650075

namespace A100400

/-- `A092276(n+1)*A101447(A057944(n))` -/
def P13227781085438650075.Spec : Prop :=
  ∀ n, P13227781085438650075.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P16598971603355298992

`A002260(n+1)*A100100(A292565(n+1))`
-/

namespace A100400.P16598971603355298992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A100100 (A292565 (n + 1)).toNat

end

end A100400.P16598971603355298992

namespace A100400

/-- `A002260(n+1)*A100100(A292565(n+1))` -/
def P16598971603355298992.Spec : Prop :=
  ∀ n, P16598971603355298992.a n = A100400 (n + 1)

end A100400

/-! ## A100400.P13684790248412795945

`sqrt(A133819(n+1))*A100100(A292565(n+1))`
-/

namespace A100400.P13684790248412795945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A100100 (A292565 (n + 1)).toNat : ℝ)

end

end A100400.P13684790248412795945

namespace A100400

/-- `sqrt(A133819(n+1))*A100100(A292565(n+1))` -/
def P13684790248412795945.Spec : Prop :=
  ∀ n, P13684790248412795945.a n = (A100400 (n + 1) : ℝ)

end A100400

/-! ## A100400.P17349890722991987533

`A003057(n+2)*A092276(n+1)-A092276(n+1)`
-/

namespace A100400.P17349890722991987533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A092276 (n + 1) - A092276 (n + 1)

end

end A100400.P17349890722991987533

namespace A100400

/-- `A003057(n+2)*A092276(n+1)-A092276(n+1)` -/
def P17349890722991987533.Spec : Prop :=
  ∀ n, P17349890722991987533.a n = A100400 (n + 1)

end A100400

/-!
# A100401: Digital root of 3^n.

The programs for A100401, the canonical program `A100401.P15455637712474666273` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100401 has offset 0).

The definition of A100401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100401.P15455637712474666273

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100401

/-- `a(n-1)` -/
def P15455637712474666273.Spec : Prop :=
  ∀ n, (P15455637712474666273.a n : ℤ) = A100401 n

theorem P15455637712474666273.correct : P15455637712474666273.Spec := by
  intro n
  simp only [A100401]

end A100401

/-!
# A100402: Digital root of 4^n.

The programs for A100402, the canonical program `A100402.P7233989705436116339` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100402 has offset 0).

The definition of A100402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100402.P7233989705436116339

`a(n-3)` with `a(0)=1, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100402

/-- `a(n-3)` -/
def P7233989705436116339.Spec : Prop :=
  ∀ n, (P7233989705436116339.a n : ℤ) = A100402 n

theorem P7233989705436116339.correct : P7233989705436116339.Spec := by
  intro n
  simp only [A100402]

end A100402

/-!
# A100403: Digital root of 6^n.

The programs for A100403, the canonical program `A100403.P546911059908108017` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100403 has offset 0).

The definition of A100403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100403.P546911059908108017

`a(n-1)` with `a(0)=1, a(1)=6, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100403

/-- `a(n-1)` -/
def P546911059908108017.Spec : Prop :=
  ∀ n, (P546911059908108017.a n : ℤ) = A100403 n

theorem P546911059908108017.correct : P546911059908108017.Spec := by
  intro n
  simp only [A100403]

end A100403

/-!
# A100404: a(n) = L(n) * n! where L(n) are the Lucas numbers.

The programs for A100404, there is no canonical definition to state claims against.
-/

/-! ## A100404.P1691060197511586602

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A100404.P1691060197511586602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A100404.P1691060197511586602

/-! ## A100404.P10716246302105266617

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=2, a(1)=1`
-/

namespace A100404.P10716246302105266617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A100404.P10716246302105266617

/-! ## A100404.P6111213107827187448

`n!*A000032(n)`
-/

namespace A100404.P6111213107827187448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000032 n

end

end A100404.P6111213107827187448

/-! ## A100404.P10169588864387086181

`Δ[A000032(n+1)]/(n+1)*∏[n+1]`
-/

namespace A100404.P10169588864387086181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A100404.P10169588864387086181

/-! ## A100404.P261597255723196873

`A000032(n)*A000142(n)`
-/

namespace A100404.P261597255723196873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000142 n

end

end A100404.P261597255723196873

/-! ## A100404.P2597385959566022738

`A000032(n)*A104150(n+1)`
-/

namespace A100404.P2597385959566022738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A104150 (n + 1)

end

end A100404.P2597385959566022738

/-! ## A100404.P10050697659066784795

`A005443(n)+2*A052554(n)`
-/

namespace A100404.P10050697659066784795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005443 n + 2 * A052554 n

end

end A100404.P10050697659066784795

/-! ## A100404.P8207663925195676689

`2*A005442(n)-A005443(n)`
-/

namespace A100404.P8207663925195676689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005442 n - A005443 n

end

end A100404.P8207663925195676689

/-! ## A100404.P614982851182351685

`n!*Δ[A000045(n)+∑[A000045(n)]]`
-/

namespace A100404.P614982851182351685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A100404.P614982851182351685

/-!
# A100405: Number of partitions of n where every part appears more than two times.

The programs for A100405, there is no canonical definition to state claims against.
-/

/-! ## A100405.P3911277612196515531

`A244516(A028310(n))+A160974(n)`
-/

namespace A100405.P3911277612196515531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244516 (A028310 n).toNat + A160974 n

end

end A100405.P3911277612196515531

/-! ## A100405.P12902103017181689513

`A007690(n)-A244515(A028310(n))`
-/

namespace A100405.P12902103017181689513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n - A244515 (A028310 n).toNat

end

end A100405.P12902103017181689513

/-! ## A100405.P3697018357686674936

`A244516(A008458(n)-5*n)+A160974(n)`
-/

namespace A100405.P3697018357686674936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244516 (A008458 n - (5 * n : ℤ)).toNat + A160974 n

end

end A100405.P3697018357686674936

/-! ## A100405.P7881506863253148549

`A244516(and(1, A008458(n))+n)+A160974(n)`
-/

namespace A100405.P7881506863253148549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244516 (Int.land 1 (A008458 n) + (n : ℤ)).toNat + A160974 n

end

end A100405.P7881506863253148549

/-! ## A100405.P17562293630153520666

`A000041(n)-(A244515(A028310(n))+A183558(n))`
-/

namespace A100405.P17562293630153520666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A244515 (A028310 n).toNat + A183558 n)

end

end A100405.P17562293630153520666

/-! ## A100405.P5872154152996612160

`A116595(A075349(n+1)-1)-A244515(A028310(n))`
-/

namespace A100405.P5872154152996612160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (A075349 (n + 1) - 1).toNat - A244515 (A028310 n).toNat

end

end A100405.P5872154152996612160

/-! ## A100405.P4741359327570332838

`A264403(∑[n])-A244515(A028310(n))`
-/

namespace A100405.P4741359327570332838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j) - A244515 (A028310 n).toNat

end

end A100405.P4741359327570332838

/-! ## A100405.P2277314677852834612

`A007690(n)-A243978(A133263(n))`
-/

namespace A100405.P2277314677852834612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n - A243978 (A133263 n).toNat

end

end A100405.P2277314677852834612

/-! ## A100405.P11385193431638446604

`A264403(∑[n])-A243978(A133263(n))`
-/

namespace A100405.P11385193431638446604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j) - A243978 (A133263 n).toNat

end

end A100405.P11385193431638446604

/-! ## A100405.P3467389949036866762

`A000041(n)-(A243978(A133263(n))+A183558(n))`
-/

namespace A100405.P3467389949036866762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A243978 (A133263 n).toNat + A183558 n)

end

end A100405.P3467389949036866762

/-!
# A100410: Numbers m such that m is the phi(m)-th composite number (m = A002808(phi(m))).

The programs for A100410, there is no canonical definition to state claims against.
-/

/-! ## A100410.P10944701850025931687

`record[A007913(A300479(n+1))]`
-/

namespace A100410.P10944701850025931687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A300479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100410.P10944701850025931687

/-! ## A100410.P14770556886714455514

`filter[A300479(n+1), A008966(#)]`
-/

namespace A100410.P14770556886714455514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A100410.P14770556886714455514

/-!
# A100411: Numbers n such that n is the phi(n)-th nonprime number.

The programs for A100411, there is no canonical definition to state claims against.
-/

/-! ## A100411.P688074625578383553

`A037170(n+2)-floor(acot(n))`
-/

namespace A100411.P688074625578383553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037170 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A100411.P688074625578383553

/-! ## A100411.P9220628188473306239

`A037170(ceil(sqrt((n+2)²-3)))`
-/

namespace A100411.P9220628188473306239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037170 ⌈Real.sqrt (((n + 2) ^ 2 : ℤ) - 3 : ℝ)⌉.toNat

end

end A100411.P9220628188473306239

/-! ## A100411.P13970825420463062475

`record[lcm(1-char[1], A037170(n+1))]`
-/

namespace A100411.P13970825420463062475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (A037170 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100411.P13970825420463062475

/-! ## A100411.P3814417418148065607

`record[A037170(A035936(n))]`
-/

namespace A100411.P3814417418148065607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037170 (A035936 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100411.P3814417418148065607

/-! ## A100411.P4263613504749938661

`A037170(n+2)-char[A327130(n)]`
-/

namespace A100411.P4263613504749938661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327130 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037170 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100411.P4263613504749938661

/-!
# A100412: a(n) = 8*10^n - 7.

The programs for A100412, the canonical program `A100412.P15674556546461358470` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100412 has offset 0).

The definition of A100412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*10^n-7` (program `A100412.P15674556546461358470`, by `A100412.P15674556546461358470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100412.P15674556546461358470

`8*10^n-7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100412

/-- `8*10^n-7` -/
def P15674556546461358470.Spec : Prop :=
  ∀ n, P15674556546461358470.a n = A100412 n

theorem P15674556546461358470.correct : P15674556546461358470.Spec := by
  intro n
  simp only [A100412]

end A100412

/-! ## A100412.P5290726649754954531

`∑[10*a(n-1)]` with `a(0)=1, a(1)=72`
-/

namespace A100412.P5290726649754954531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 72] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100412.P5290726649754954531

namespace A100412

/-- `∑[10*a(n-1)]` -/
def P5290726649754954531.Spec : Prop :=
  ∀ n, (P5290726649754954531.a n : ℤ) = A100412 n

end A100412

/-! ## A100412.P18005839443112365580

`xor(6, record[10*a(n-3)+9])` with `a(0)=7, a(1)=0, a(2)=3`
-/

namespace A100412.P18005839443112365580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 0, 3] fun n f1 =>
  10 * f1 (n - 3) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A100412.P18005839443112365580

namespace A100412

/-- `xor(6, record[10*a(n-3)+9])` -/
def P18005839443112365580.Spec : Prop :=
  ∀ n, (P18005839443112365580.a n : ℤ) = A100412 n

end A100412

/-! ## A100412.P8973613812010070371

`or(1, A086579(n))`
-/

namespace A100412.P8973613812010070371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086579 n)

end

end A100412.P8973613812010070371

namespace A100412

/-- `or(1, A086579(n))` -/
def P8973613812010070371.Spec : Prop :=
  ∀ n, P8973613812010070371.a n = A100412 n

end A100412

/-! ## A100412.P9713879863497398546

`xor(6, A198973(n))`
-/

namespace A100412.P9713879863497398546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A198973 n)

end

end A100412.P9713879863497398546

namespace A100412

/-- `xor(6, A198973(n))` -/
def P9713879863497398546.Spec : Prop :=
  ∀ n, P9713879863497398546.a n = A100412 n

end A100412

/-! ## A100412.P7995417818496736213

`abs(8-A199689(n))`
-/

namespace A100412.P7995417818496736213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A199689 n|

end

end A100412.P7995417818496736213

namespace A100412

/-- `abs(8-A199689(n))` -/
def P7995417818496736213.Spec : Prop :=
  ∀ n, P7995417818496736213.a n = A100412 n

end A100412

/-! ## A100412.P10680662906361336258

`or(1, 2*A086575(n))`
-/

namespace A100412.P10680662906361336258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A086575 n)

end

end A100412.P10680662906361336258

namespace A100412

/-- `or(1, 2*A086575(n))` -/
def P10680662906361336258.Spec : Prop :=
  ∀ n, P10680662906361336258.a n = A100412 n

end A100412

/-! ## A100412.P1125218725569984329

`or(1, 4*A086573(n))`
-/

namespace A100412.P1125218725569984329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * A086573 n)

end

end A100412.P1125218725569984329

namespace A100412

/-- `or(1, 4*A086573(n))` -/
def P1125218725569984329.Spec : Prop :=
  ∀ n, P1125218725569984329.a n = A100412 n

end A100412

/-! ## A100412.P16823214953492174737

`or(1, 12*A002280(n))`
-/

namespace A100412.P16823214953492174737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (12 * A002280 n)

end

end A100412.P16823214953492174737

namespace A100412

/-- `or(1, 12*A002280(n))` -/
def P16823214953492174737.Spec : Prop :=
  ∀ n, P16823214953492174737.a n = A100412 n

end A100412

/-! ## A100412.P2269627798604354270

`abs(7-A346178(n+1))`
-/

namespace A100412.P2269627798604354270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A346178 (n + 1)|

end

end A100412.P2269627798604354270

namespace A100412

/-- `abs(7-A346178(n+1))` -/
def P2269627798604354270.Spec : Prop :=
  ∀ n, P2269627798604354270.a n = A100412 n

end A100412

/-! ## A100412.P4063463357458683671

`Δ[A059482(n)-7*n]`
-/

namespace A100412.P4063463357458683671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n - (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100412.P4063463357458683671

namespace A100412

/-- `Δ[A059482(n)-7*n]` -/
def P4063463357458683671.Spec : Prop :=
  ∀ n, P4063463357458683671.a n = A100412 n

end A100412

/-! ## A100412.P8369532195441105953

`Δ[A002282(n)-A008589(n)]`
-/

namespace A100412.P8369532195441105953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n - A008589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100412.P8369532195441105953

namespace A100412

/-- `Δ[A002282(n)-A008589(n)]` -/
def P8369532195441105953.Spec : Prop :=
  ∀ n, P8369532195441105953.a n = A100412 n

end A100412

/-!
# A100413: Numbers k such that k is reversal(k)-th even composite number (k is A004086(k)-th even composite number).

The programs for A100413, the canonical program `A100413.P6816807704567596716` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100413 has offset 1).

The definition of A100413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100413.P2791221672753059291

`6*10^(n+1)-8`
-/

namespace A100413.P2791221672753059291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 10 ^ (n + 1) : ℤ) - 8

end

end A100413.P2791221672753059291

namespace A100413

/-- `6*10^(n+1)-8` -/
def P2791221672753059291.Spec : Prop :=
  ∀ n, P2791221672753059291.a n = A100413 (n + 1)

theorem P2791221672753059291.correct : P2791221672753059291.Spec := by
  intro n
  simp only [A100413, Nat.add_sub_cancel, A100413.P2791221672753059291.a, A100413.P6816807704567596716.a, A086943, A086943.P11761326943072460489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100413

/-! ## A100413.P6816807704567596716

`2*(A086943(n+1)+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100413

/-- `2*(A086943(n+1)+3)` -/
def P6816807704567596716.Spec : Prop :=
  ∀ n, P6816807704567596716.a n = A100413 (n + 1)

theorem P6816807704567596716.correct : P6816807704567596716.Spec := by
  intro n
  simp only [A100413, Nat.add_sub_cancel]

end A100413

/-! ## A100413.P14661519519449368214

`xor(2, A086577(n+1))`
-/

namespace A100413.P14661519519449368214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A086577 (n + 1))

end

end A100413.P14661519519449368214

namespace A100413

/-- `xor(2, A086577(n+1))` -/
def P14661519519449368214.Spec : Prop :=
  ∀ n, P14661519519449368214.a n = A100413 (n + 1)

end A100413

/-! ## A100413.P14329755514297237883

`abs(8-A090019(n+2))`
-/

namespace A100413.P14329755514297237883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A090019 (n + 2)|

end

end A100413.P14329755514297237883

namespace A100413

/-- `abs(8-A090019(n+2))` -/
def P14329755514297237883.Spec : Prop :=
  ∀ n, P14329755514297237883.a n = A100413 (n + 1)

end A100413

/-! ## A100413.P9029630508517567813

`2*(A083813(n+1)-1)`
-/

namespace A100413.P9029630508517567813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083813 (n + 1) - 1)

end

end A100413.P9029630508517567813

namespace A100413

/-- `2*(A083813(n+1)-1)` -/
def P9029630508517567813.Spec : Prop :=
  ∀ n, P9029630508517567813.a n = A100413 (n + 1)

theorem P9029630508517567813.correct : P9029630508517567813.Spec := by
  intro n
  simp only [A100413, Nat.add_sub_cancel, A100413.P9029630508517567813.a, A100413.P6816807704567596716.a, A083813, A083813.P14654733700154790409.a, A086943, A086943.P11761326943072460489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100413

/-! ## A100413.P5779479661936609549

`2*(A086574(n+1)-1)`
-/

namespace A100413.P5779479661936609549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086574 (n + 1) - 1)

end

end A100413.P5779479661936609549

namespace A100413

/-- `2*(A086574(n+1)-1)` -/
def P5779479661936609549.Spec : Prop :=
  ∀ n, P5779479661936609549.a n = A100413 (n + 1)

theorem P5779479661936609549.correct : P5779479661936609549.Spec := by
  intro n
  simp only [A100413, Nat.add_sub_cancel, A100413.P5779479661936609549.a, A100413.P6816807704567596716.a, A086574, A086574.P5714779003490660337.a, A086943, A086943.P11761326943072460489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100413

/-! ## A100413.P2234037884851514271

`2*(A086941(n+1)+2)`
-/

namespace A100413.P2234037884851514271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086941 (n + 1) + 2)

end

end A100413.P2234037884851514271

namespace A100413

/-- `2*(A086941(n+1)+2)` -/
def P2234037884851514271.Spec : Prop :=
  ∀ n, P2234037884851514271.a n = A100413 (n + 1)

end A100413

/-! ## A100413.P7303655627265990905

`2*(A086947(n+1)+5)`
-/

namespace A100413.P7303655627265990905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086947 (n + 1) + 5)

end

end A100413.P7303655627265990905

namespace A100413

/-- `2*(A086947(n+1)+5)` -/
def P7303655627265990905.Spec : Prop :=
  ∀ n, P7303655627265990905.a n = A100413 (n + 1)

end A100413

/-! ## A100413.P689926213584441696

`4*(3*A198971(n)+1)`
-/

namespace A100413.P689926213584441696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (3 * A198971 n + 1)

end

end A100413.P689926213584441696

namespace A100413

/-- `4*(3*A198971(n)+1)` -/
def P689926213584441696.Spec : Prop :=
  ∀ n, P689926213584441696.a n = A100413 (n + 1)

theorem P689926213584441696.correct : P689926213584441696.Spec := by
  intro n
  simp only [A100413, Nat.add_sub_cancel, A100413.P689926213584441696.a, A100413.P6816807704567596716.a, A086943, A086943.P11761326943072460489.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100413

/-!
# A100417: Numbers n such that P(n) = P(B(n)), where P() = A100549() and B() = A100762.

The programs for A100417, there is no canonical definition to state claims against.
-/

/-! ## A100417.P6957128976802272341

`comp[A100933(n+1)-1]+1`
-/

namespace A100417.P6957128976802272341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100933 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A100417.P6957128976802272341

/-! ## A100417.P4900612938028824143

`comp[A058359(A100933(n+1))]+1`
-/

namespace A100417.P4900612938028824143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058359 (A100933 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A100417.P4900612938028824143

/-! ## A100417.P543452401033310627

`∪[A070279(n+1), A360015(n+1)]`
-/

namespace A100417.P543452401033310627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100417.P543452401033310627

/-! ## A100417.P6645096462646705349

`∪[A360015(n+1), A366290(n+1)]`
-/

namespace A100417.P6645096462646705349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100417.P6645096462646705349

/-! ## A100417.P13345203695424614169

`eq[A100549(n+1), A100549(A100762(n+1))]+1`
-/

namespace A100417.P13345203695424614169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100549 (A100762 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100417.P13345203695424614169

/-!
# A100418: Numbers k such that 30*k + {1,11,13,17,19,23,29} are all prime.

The programs for A100418, there is no canonical definition to state claims against.
-/

/-! ## A100418.P9282784711834462488

`∩[A182279(n+1), A385124(n+1)]`
-/

namespace A100418.P9282784711834462488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100418.P9282784711834462488

/-!
# A100423: Numbers n such that 30*n+{1,7,11,13,17,19,29} are all prime.

The programs for A100423, there is no canonical definition to state claims against.
-/

/-! ## A100423.P5076485097918775062

`∩[A089157(n+1), A385124(n+1)]`
-/

namespace A100423.P5076485097918775062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100423.P5076485097918775062

/-!
# A100424: A sieve transform applied three times to the positive integers.

The programs for A100424, there is no canonical definition to state claims against.
-/

/-! ## A100424.P8061307970232105896

`A099361(record[A248596(n+1)-1])`
-/

namespace A100424.P8061307970232105896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248596 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100424.P8061307970232105896

/-! ## A100424.P820012543271723041

`A099361(eq[2, A321415(n+1)])`
-/

namespace A100424.P820012543271723041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100424.P820012543271723041

/-! ## A100424.P7603706222684688044

`A099361(∑{e}[A061286(n+1), #])`
-/

namespace A100424.P7603706222684688044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099361 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A100424.P7603706222684688044

/-!
# A100427: Bisection of A000081 (odd part).

The programs for A100427, there is no canonical definition to state claims against.
-/

/-! ## A100427.P12994397437204124592

`A000081(Δ[n²])`
-/

namespace A100427.P12994397437204124592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100427.P12994397437204124592

/-! ## A100427.P1628039967344631353

`record[A000081(xor(1, n))]`
-/

namespace A100427.P1628039967344631353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P1628039967344631353

/-! ## A100427.P5998693392607914076

`A038001(4*n+1)`
-/

namespace A100427.P5998693392607914076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (4 * n + 1)

end

end A100427.P5998693392607914076

/-! ## A100427.P16218847295685147659

`record[A000081(n^(n%2))]`
-/

namespace A100427.P16218847295685147659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P16218847295685147659

/-! ## A100427.P9008691372882587635

`or(char[2], A000081(2*n+1))`
-/

namespace A100427.P9008691372882587635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000081 (2 * n + 1))

end

end A100427.P9008691372882587635

/-! ## A100427.P18063182974019493429

`record[(-1)^n*A000081(n+1)]`
-/

namespace A100427.P18063182974019493429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P18063182974019493429

/-! ## A100427.P16626941074207161321

`record[A038001(n+1)/(1-and(2, n))]`
-/

namespace A100427.P16626941074207161321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038001 (n + 1) : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P16626941074207161321

/-! ## A100427.P14238917640313655646

`A123467(A004277(n))`
-/

namespace A100427.P14238917640313655646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A004277 n).toNat

end

end A100427.P14238917640313655646

/-! ## A100427.P18354494326367444091

`A123467(A004275(n+1))`
-/

namespace A100427.P18354494326367444091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A004275 (n + 1)).toNat

end

end A100427.P18354494326367444091

/-! ## A100427.P11304848501506189259

`A123467(A028310(2*n))`
-/

namespace A100427.P11304848501506189259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A028310 (2 * n)).toNat

end

end A100427.P11304848501506189259

/-! ## A100427.P14103654013913580574

`A123467(A028310(n)+n)`
-/

namespace A100427.P14103654013913580574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A028310 n + (n : ℤ)).toNat

end

end A100427.P14103654013913580574

/-! ## A100427.P6414284271732796657

`record[A000081(A014681(n)+1)]`
-/

namespace A100427.P6414284271732796657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P6414284271732796657

/-! ## A100427.P7408695282178245592

`record[A000081(A029578(n)+1)]`
-/

namespace A100427.P7408695282178245592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A029578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P7408695282178245592

/-! ## A100427.P17785129832163799727

`record[A000081(A083220(n)+1)]`
-/

namespace A100427.P17785129832163799727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A083220 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P17785129832163799727

/-! ## A100427.P11552630466392927141

`record[A000081(A110090(n)+1)]`
-/

namespace A100427.P11552630466392927141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A110090 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P11552630466392927141

/-! ## A100427.P5171935159708771848

`record[A000081(A131508(n)+1)]`
-/

namespace A100427.P5171935159708771848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A131508 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P5171935159708771848

/-! ## A100427.P9205087354786408453

`record[gcd(A000081(n), A126120(n))]`
-/

namespace A100427.P9205087354786408453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000081 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P9205087354786408453

/-! ## A100427.P6206025483857637411

`record[A000081(A081594(2*n+1))]`
-/

namespace A100427.P6206025483857637411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A081594 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100427.P6206025483857637411

/-! ## A100427.P540739732149699047

`A123467(A101279(2*n+1)+n)`
-/

namespace A100427.P540739732149699047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A101279 (2 * n + 1) + (n : ℤ)).toNat

end

end A100427.P540739732149699047

/-! ## A100427.P9168992628612687154

`A174145(2*n)+A000081(2*n)`
-/

namespace A100427.P9168992628612687154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 (2 * n) + A000081 (2 * n)

end

end A100427.P9168992628612687154

/-!
# A100428: Bisection of Kolakoski sequence A000002.

The programs for A100428, the canonical program `A100428.P16186461630446330392` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100428 has offset 1).

The definition of A100428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100428.P16186461630446330392

`A332875(n+1)-A100429(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100428

/-- `A332875(n+1)-A100429(n+1)` -/
def P16186461630446330392.Spec : Prop :=
  ∀ n, P16186461630446330392.a n = A100428 (n + 1)

theorem P16186461630446330392.correct : P16186461630446330392.Spec := by
  intro n
  simp only [A100428, Nat.add_sub_cancel]

end A100428

/-! ## A100428.P6974318646131517133

`A156243(n+1)%A156242(A028310(n))`
-/

namespace A100428.P6974318646131517133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156243 (n + 1)) (A156242 (A028310 n).toNat)

end

end A100428.P6974318646131517133

namespace A100428

/-- `A156243(n+1)%A156242(A028310(n))` -/
def P6974318646131517133.Spec : Prop :=
  ∀ n, P6974318646131517133.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P4101582765735978487

`A332875(n+1)-A054977(A249093(2*(n+1)))`
-/

namespace A100428.P4101582765735978487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A054977 (A249093 (2 * (n + 1))).toNat

end

end A100428.P4101582765735978487

namespace A100428

/-- `A332875(n+1)-A054977(A249093(2*(n+1)))` -/
def P4101582765735978487.Spec : Prop :=
  ∀ n, P4101582765735978487.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P10788497919833505004

`A332875(n+1)-A054977(A249094(2*(n+1)))`
-/

namespace A100428.P10788497919833505004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A054977 (A249094 (2 * (n + 1))).toNat

end

end A100428.P10788497919833505004

namespace A100428

/-- `A332875(n+1)-A054977(A249094(2*(n+1)))` -/
def P10788497919833505004.Spec : Prop :=
  ∀ n, P10788497919833505004.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P13577997050900067658

`A332875(n+1)-A156264(A249093(2*(n+1))+7)`
-/

namespace A100428.P13577997050900067658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A156264 (A249093 (2 * (n + 1)) + 7).toNat

end

end A100428.P13577997050900067658

namespace A100428

/-- `A332875(n+1)-A156264(A249093(2*(n+1))+7)` -/
def P13577997050900067658.Spec : Prop :=
  ∀ n, P13577997050900067658.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P1756001736813973427

`A332875(n+1)-A001285(C(3, A249093(2*(n+1))))`
-/

namespace A100428.P1756001736813973427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A001285 (Nat.choose 3 (A249093 (2 * (n + 1))).toNat)

end

end A100428.P1756001736813973427

namespace A100428

/-- `A332875(n+1)-A001285(C(3, A249093(2*(n+1))))` -/
def P1756001736813973427.Spec : Prop :=
  ∀ n, P1756001736813973427.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P17494981090596907427

`A332875(n+1)-(A156242(n+1)-∑[A332273(n+1)])`
-/

namespace A100428.P17494981090596907427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - (A156242 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100428.P17494981090596907427

namespace A100428

/-- `A332875(n+1)-(A156242(n+1)-∑[A332273(n+1)])` -/
def P17494981090596907427.Spec : Prop :=
  ∀ n, P17494981090596907427.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P4948751398232764754

`(A156242(n+1)-A100429(n+1))%A156242(A028310(n))`
-/

namespace A100428.P4948751398232764754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156242 (n + 1) - A100429 (n + 1)) (A156242 (A028310 n).toNat)

end

end A100428.P4948751398232764754

namespace A100428

/-- `(A156242(n+1)-A100429(n+1))%A156242(A028310(n))` -/
def P4948751398232764754.Spec : Prop :=
  ∀ n, P4948751398232764754.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P8292670804325268289

`A000002(Δ[n²])`
-/

namespace A100428.P8292670804325268289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100428.P8292670804325268289

namespace A100428

/-- `A000002(Δ[n²])` -/
def P8292670804325268289.Spec : Prop :=
  ∀ n, P8292670804325268289.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P5881282169295185479

`dr(A000002(2*n+1))`
-/

namespace A100428.P5881282169295185479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000002 (2 * n + 1))

end

end A100428.P5881282169295185479

namespace A100428

/-- `dr(A000002(2*n+1))` -/
def P5881282169295185479.Spec : Prop :=
  ∀ n, (P5881282169295185479.a n : ℤ) = A100428 (n + 1)

end A100428

/-! ## A100428.P16427226416183338002

`gcd(2, A000002(A005408(n)))`
-/

namespace A100428.P16427226416183338002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000002 (A005408 n).toNat)

end

end A100428.P16427226416183338002

namespace A100428

/-- `gcd(2, A000002(A005408(n)))` -/
def P16427226416183338002.Spec : Prop :=
  ∀ n, (P16427226416183338002.a n : ℤ) = A100428 (n + 1)

end A100428

/-! ## A100428.P6551297729750458176

`A000002(A000027(2*n+1))%3`
-/

namespace A100428.P6551297729750458176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (A000027 (2 * n + 1)).toNat) 3

end

end A100428.P6551297729750458176

namespace A100428

/-- `A000002(A000027(2*n+1))%3` -/
def P6551297729750458176.Spec : Prop :=
  ∀ n, P6551297729750458176.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P829046551453643518

`A000002(A000265(2*n+1))%3`
-/

namespace A100428.P829046551453643518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (A000265 (2 * n + 1)).toNat) 3

end

end A100428.P829046551453643518

namespace A100428

/-- `A000002(A000265(2*n+1))%3` -/
def P829046551453643518.Spec : Prop :=
  ∀ n, P829046551453643518.a n = A100428 (n + 1)

end A100428

/-! ## A100428.P10626312645642073241

`gcd(A000002(2*n+1), A008592(n))`
-/

namespace A100428.P10626312645642073241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000002 (2 * n + 1)) (A008592 n)

end

end A100428.P10626312645642073241

namespace A100428

/-- `gcd(A000002(2*n+1), A008592(n))` -/
def P10626312645642073241.Spec : Prop :=
  ∀ n, (P10626312645642073241.a n : ℤ) = A100428 (n + 1)

end A100428

/-! ## A100428.P3202055449808860277

`A332875(n+1)-A000002(2*(n+1))`
-/

namespace A100428.P3202055449808860277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A000002 (2 * (n + 1))

end

end A100428.P3202055449808860277

namespace A100428

/-- `A332875(n+1)-A000002(2*(n+1))` -/
def P3202055449808860277.Spec : Prop :=
  ∀ n, P3202055449808860277.a n = A100428 (n + 1)

end A100428

/-!
# A100429: Bisection of Kolakoski sequence A000002.

The programs for A100429, the canonical program `A100429.P11083441272266622495` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100429 has offset 1).

The definition of A100429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100429.P11083441272266622495

`A022303(comp[2*n+5]+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100429

/-- `A022303(comp[2*n+5]+2)` -/
def P11083441272266622495.Spec : Prop :=
  ∀ n, P11083441272266622495.a n = A100429 (n + 1)

theorem P11083441272266622495.correct : P11083441272266622495.Spec := by
  intro n
  simp only [A100429, Nat.add_sub_cancel]

end A100429

/-! ## A100429.P11168780240811465143

`floor(acot(A249093(2*(n+1))))+1`
-/

namespace A100429.P11168780240811465143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A249093 (2 * (n + 1)) : ℝ)⌋ + 1

end

end A100429.P11168780240811465143

namespace A100429

/-- `floor(acot(A249093(2*(n+1))))+1` -/
def P11168780240811465143.Spec : Prop :=
  ∀ n, P11168780240811465143.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P7816300426780778500

`A054977(A249093(2*(n+1)))`
-/

namespace A100429.P7816300426780778500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249093 (2 * (n + 1))).toNat

end

end A100429.P7816300426780778500

namespace A100429

/-- `A054977(A249093(2*(n+1)))` -/
def P7816300426780778500.Spec : Prop :=
  ∀ n, P7816300426780778500.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P443580861197122639

`A054977(A249094(2*(n+1)))`
-/

namespace A100429.P443580861197122639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249094 (2 * (n + 1))).toNat

end

end A100429.P443580861197122639

namespace A100429

/-- `A054977(A249094(2*(n+1)))` -/
def P443580861197122639.Spec : Prop :=
  ∀ n, P443580861197122639.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P1157713910758180943

`A054977(abs(A249507(2*(n+1))))`
-/

namespace A100429.P1157713910758180943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 |A249507 (2 * (n + 1))|.toNat

end

end A100429.P1157713910758180943

namespace A100429

/-- `A054977(abs(A249507(2*(n+1))))` -/
def P1157713910758180943.Spec : Prop :=
  ∀ n, P1157713910758180943.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P3054261972337512829

`A054977(A249507(2*(n+1))²)`
-/

namespace A100429.P3054261972337512829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249507 (2 * (n + 1)) ^ 2).toNat

end

end A100429.P3054261972337512829

namespace A100429

/-- `A054977(A249507(2*(n+1))²)` -/
def P3054261972337512829.Spec : Prop :=
  ∀ n, P3054261972337512829.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P8442042459599996208

`A000038(A249093(2*n+2))!`
-/

namespace A100429.P8442042459599996208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 (A249093 (2 * n + 2)).toNat).toNat

end

end A100429.P8442042459599996208

namespace A100429

/-- `A000038(A249093(2*n+2))!` -/
def P8442042459599996208.Spec : Prop :=
  ∀ n, (P8442042459599996208.a n : ℤ) = A100429 (n + 1)

end A100429

/-! ## A100429.P14685167526758989644

`A156264(A249093(2*(n+1))+7)`
-/

namespace A100429.P14685167526758989644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A249093 (2 * (n + 1)) + 7).toNat

end

end A100429.P14685167526758989644

namespace A100429

/-- `A156264(A249093(2*(n+1))+7)` -/
def P14685167526758989644.Spec : Prop :=
  ∀ n, P14685167526758989644.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P13649812489363762795

`A001285(C(3, A249093(2*(n+1))))`
-/

namespace A100429.P13649812489363762795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Nat.choose 3 (A249093 (2 * (n + 1))).toNat)

end

end A100429.P13649812489363762795

namespace A100429

/-- `A001285(C(3, A249093(2*(n+1))))` -/
def P13649812489363762795.Spec : Prop :=
  ∀ n, P13649812489363762795.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P6834263341851579621

`A156242(n+1)-A156243(n+1)`
-/

namespace A100429.P6834263341851579621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A156243 (n + 1)

end

end A100429.P6834263341851579621

namespace A100429

/-- `A156242(n+1)-A156243(n+1)` -/
def P6834263341851579621.Spec : Prop :=
  ∀ n, P6834263341851579621.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P12531288410594710316

`A332875(n+1)-A100428(n+1)`
-/

namespace A100429.P12531288410594710316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A100428 (n + 1)

end

end A100429.P12531288410594710316

namespace A100429

/-- `A332875(n+1)-A100428(n+1)` -/
def P12531288410594710316.Spec : Prop :=
  ∀ n, P12531288410594710316.a n = A100429 (n + 1)

theorem P12531288410594710316.correct : P12531288410594710316.Spec := by
  intro n
  simp only [A100429, Nat.add_sub_cancel, A100429.P12531288410594710316.a, A100429.P11083441272266622495.f1, A100429.P11083441272266622495.a, A022303, A022303.P9265149570533791824.a, A100428, A100428.P16186461630446330392.a, A332875, A332875.P11519112769782522596.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100429

/-! ## A100429.P8955212119158891947

`A001285(A249093(2*(n+1))²+2)`
-/

namespace A100429.P8955212119158891947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A249093 (2 * (n + 1)) ^ 2 + 2).toNat

end

end A100429.P8955212119158891947

namespace A100429

/-- `A001285(A249093(2*(n+1))²+2)` -/
def P8955212119158891947.Spec : Prop :=
  ∀ n, P8955212119158891947.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P8481266300279564330

`A001285(A249094(2*(n+1))²+2)`
-/

namespace A100429.P8481266300279564330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A249094 (2 * (n + 1)) ^ 2 + 2).toNat

end

end A100429.P8481266300279564330

namespace A100429

/-- `A001285(A249094(2*(n+1))²+2)` -/
def P8481266300279564330.Spec : Prop :=
  ∀ n, P8481266300279564330.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P7747961770808862295

`A000002(2*(n+1))`
-/

namespace A100429.P7747961770808862295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

end

end A100429.P7747961770808862295

namespace A100429

/-- `A000002(2*(n+1))` -/
def P7747961770808862295.Spec : Prop :=
  ∀ n, P7747961770808862295.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P17999496416728560592

`dr(A000002(Δ[n²]+1))`
-/

namespace A100429.P17999496416728560592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A100429.P17999496416728560592

namespace A100429

/-- `dr(A000002(Δ[n²]+1))` -/
def P17999496416728560592.Spec : Prop :=
  ∀ n, (P17999496416728560592.a n : ℤ) = A100429 (n + 1)

end A100429

/-! ## A100429.P17699905486305731112

`A078880(Δ[n²])`
-/

namespace A100429.P17699905486305731112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100429.P17699905486305731112

namespace A100429

/-- `A078880(Δ[n²])` -/
def P17699905486305731112.Spec : Prop :=
  ∀ n, P17699905486305731112.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P8177989554995340592

`A157686(Δ[n²])+1`
-/

namespace A100429.P8177989554995340592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A100429.P8177989554995340592

namespace A100429

/-- `A157686(Δ[n²])+1` -/
def P8177989554995340592.Spec : Prop :=
  ∀ n, P8177989554995340592.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P14004430108856012466

`3-A088569(Δ[n²])`
-/

namespace A100429.P14004430108856012466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A088569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100429.P14004430108856012466

namespace A100429

/-- `3-A088569(Δ[n²])` -/
def P14004430108856012466.Spec : Prop :=
  ∀ n, P14004430108856012466.a n = A100429 (n + 1)

end A100429

/-! ## A100429.P1998915559105262530

`log2(A088570(2*(n+1)))`
-/

namespace A100429.P1998915559105262530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A088570 (2 * (n + 1)) : ℝ)

end

end A100429.P1998915559105262530

namespace A100429

/-- `log2(A088570(2*(n+1)))` -/
def P1998915559105262530.Spec : Prop :=
  ∀ n, P1998915559105262530.a n = (A100429 (n + 1) : ℝ)

end A100429

/-!
# A100430: Bisection of A002417.

The programs for A100430, the canonical program `A100430.P16836244561636270343` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100430 has offset 0).

The definition of A100430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100430.P6560098299729921920

`(2*n+1)*C(2*n+3, 3)`
-/

namespace A100430.P6560098299729921920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (2 * n + 3) 3

end

end A100430.P6560098299729921920

namespace A100430

/-- `(2*n+1)*C(2*n+3, 3)` -/
def P6560098299729921920.Spec : Prop :=
  ∀ n, (P6560098299729921920.a n : ℤ) = A100430 n

end A100430

/-! ## A100430.P7872162786202619736

`(8*n^4+28*n^3+34*n²+17*n+3)/3`
-/

namespace A100430.P7872162786202619736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 4 + 28 * n ^ 3 + 34 * n ^ 2 + 17 * n + 3 : ℚ) / 3

end

end A100430.P7872162786202619736

namespace A100430

/-- `(8*n^4+28*n^3+34*n²+17*n+3)/3` -/
def P7872162786202619736.Spec : Prop :=
  ∀ n, P7872162786202619736.a n = (A100430 n : ℚ)

end A100430

/-! ## A100430.P16836244561636270343

`(2*n+1)*A000447(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100430

/-- `(2*n+1)*A000447(n+1)` -/
def P16836244561636270343.Spec : Prop :=
  ∀ n, P16836244561636270343.a n = A100430 n

theorem P16836244561636270343.correct : P16836244561636270343.Spec := by
  intro n
  simp only [A100430]

end A100430

/-! ## A100430.P6868064243966388171

`record[(n*C(n+2, 3))^(n%2)]`
-/

namespace A100430.P6868064243966388171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (n + 2) 3) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100430.P6868064243966388171

namespace A100430

/-- `record[(n*C(n+2, 3))^(n%2)]` -/
def P6868064243966388171.Spec : Prop :=
  ∀ n, (P6868064243966388171.a n : ℤ) = A100430 n

end A100430

/-! ## A100430.P13871387724137191197

`lcm(2*n+1, (2*n+1)*∑[(2*n+1)²])`
-/

namespace A100430.P13871387724137191197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A100430.P13871387724137191197

namespace A100430

/-- `lcm(2*n+1, (2*n+1)*∑[(2*n+1)²])` -/
def P13871387724137191197.Spec : Prop :=
  ∀ n, (P13871387724137191197.a n : ℤ) = A100430 n

end A100430

/-! ## A100430.P16736607579922058921

`and(1, 2*n)+(2*n+1)*∑[(2*n+1)²]`
-/

namespace A100430.P16736607579922058921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100430.P16736607579922058921

namespace A100430

/-- `and(1, 2*n)+(2*n+1)*∑[(2*n+1)²]` -/
def P16736607579922058921.Spec : Prop :=
  ∀ n, (P16736607579922058921.a n : ℤ) = A100430 n

end A100430

/-! ## A100430.P6301723715883709873

`2*(n+2)*A050533(n)+1-n`
-/

namespace A100430.P6301723715883709873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) * A050533 n + 1 - (n : ℤ)

end

end A100430.P6301723715883709873

namespace A100430

/-- `2*(n+2)*A050533(n)+1-n` -/
def P6301723715883709873.Spec : Prop :=
  ∀ n, P6301723715883709873.a n = A100430 n

end A100430

/-! ## A100430.P1699243268693449003

`∑[A098931(2*n)+2*n]`
-/

namespace A100430.P1699243268693449003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098931 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100430.P1699243268693449003

namespace A100430

/-- `∑[A098931(2*n)+2*n]` -/
def P1699243268693449003.Spec : Prop :=
  ∀ n, P1699243268693449003.a n = A100430 n

end A100430

/-! ## A100430.P16543945604219638099

`∑[A166911(2*n)]-A035597(n+1)`
-/

namespace A100430.P16543945604219638099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035597 (n + 1)

end

end A100430.P16543945604219638099

namespace A100430

/-- `∑[A166911(2*n)]-A035597(n+1)` -/
def P16543945604219638099.Spec : Prop :=
  ∀ n, P16543945604219638099.a n = A100430 n

end A100430

/-! ## A100430.P18418306631372430036

`A002417(Δ[n²])`
-/

namespace A100430.P18418306631372430036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100430.P18418306631372430036

namespace A100430

/-- `A002417(Δ[n²])` -/
def P18418306631372430036.Spec : Prop :=
  ∀ n, P18418306631372430036.a n = A100430 n

end A100430

/-! ## A100430.P13836644854844327659

`∑[A100178(Δ[n²])]`
-/

namespace A100430.P13836644854844327659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100430.P13836644854844327659

namespace A100430

/-- `∑[A100178(Δ[n²])]` -/
def P13836644854844327659.Spec : Prop :=
  ∀ n, P13836644854844327659.a n = A100430 n

end A100430

/-! ## A100430.P11142758400843616026

`record[(n+1)*A000292(xor(1, n))]`
-/

namespace A100430.P11142758400843616026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000292 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100430.P11142758400843616026

namespace A100430

/-- `record[(n+1)*A000292(xor(1, n))]` -/
def P11142758400843616026.Spec : Prop :=
  ∀ n, P11142758400843616026.a n = A100430 n

end A100430

/-! ## A100430.P16205284211016330791

`∑[floor(A168547(2*n+1)/2)]`
-/

namespace A100430.P16205284211016330791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168547 (2 * n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100430.P16205284211016330791

namespace A100430

/-- `∑[floor(A168547(2*n+1)/2)]` -/
def P16205284211016330791.Spec : Prop :=
  ∀ n, P16205284211016330791.a n = A100430 n

end A100430

/-! ## A100430.P6906461596091304904

`abs(A002417(2*n+1)-1)+1`
-/

namespace A100430.P6906461596091304904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002417 (2 * n + 1) - 1| + 1

end

end A100430.P6906461596091304904

namespace A100430

/-- `abs(A002417(2*n+1)-1)+1` -/
def P6906461596091304904.Spec : Prop :=
  ∀ n, P6906461596091304904.a n = A100430 n

end A100430

/-! ## A100430.P10737320204036231866

`(2*n+1)*A000292(2*n+1)`
-/

namespace A100430.P10737320204036231866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000292 (2 * n + 1)

end

end A100430.P10737320204036231866

namespace A100430

/-- `(2*n+1)*A000292(2*n+1)` -/
def P10737320204036231866.Spec : Prop :=
  ∀ n, P10737320204036231866.a n = A100430 n

end A100430

/-! ## A100430.P17386882459808300350

`(2*n+1)*A067046(2*n+1)`
-/

namespace A100430.P17386882459808300350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A067046 (2 * n + 1)

end

end A100430.P17386882459808300350

namespace A100430

/-- `(2*n+1)*A067046(2*n+1)` -/
def P17386882459808300350.Spec : Prop :=
  ∀ n, P17386882459808300350.a n = A100430 n

end A100430

/-! ## A100430.P1081867284138441594

`(2*n+1)*A212767(2*n+1)`
-/

namespace A100430.P1081867284138441594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A212767 (2 * n + 1)

end

end A100430.P1081867284138441594

namespace A100430

/-- `(2*n+1)*A212767(2*n+1)` -/
def P1081867284138441594.Spec : Prop :=
  ∀ n, P1081867284138441594.a n = A100430 n

end A100430

/-! ## A100430.P14539568154066918066

`(2*n+1)*A338046(2*n+1)`
-/

namespace A100430.P14539568154066918066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A338046 (2 * n + 1)

end

end A100430.P14539568154066918066

namespace A100430

/-- `(2*n+1)*A338046(2*n+1)` -/
def P14539568154066918066.Spec : Prop :=
  ∀ n, P14539568154066918066.a n = A100430 n

end A100430

/-! ## A100430.P1911057326219609989

`(2*n+1)*A368047(2*n+1)`
-/

namespace A100430.P1911057326219609989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A368047 (2 * n + 1)

end

end A100430.P1911057326219609989

namespace A100430

/-- `(2*n+1)*A368047(2*n+1)` -/
def P1911057326219609989.Spec : Prop :=
  ∀ n, P1911057326219609989.a n = A100430 n

end A100430

/-!
# A100431: Bisection of A002417.

The programs for A100431, the canonical program `A100431.P7394893603703982316` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100431 has offset 0).

The definition of A100431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100431.P7394893603703982316

`8/3*C(n+2, 2)*C(2*n+3, 2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100431

/-- `8/3*C(n+2, 2)*C(2*n+3, 2)` -/
def P7394893603703982316.Spec : Prop :=
  ∀ n, P7394893603703982316.a n = (A100431 n : ℚ)

end A100431

/-! ## A100431.P5346100531963277272

`4*(n+1)²*(n+2)*(2*n+3)/3`
-/

namespace A100431.P5346100531963277272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) ^ 2 * (n + 2) * (2 * n + 3) : ℚ) / 3

end

end A100431.P5346100531963277272

namespace A100431

/-- `4*(n+1)²*(n+2)*(2*n+3)/3` -/
def P5346100531963277272.Spec : Prop :=
  ∀ n, P5346100531963277272.a n = (A100431 n : ℚ)

end A100431

/-! ## A100431.P12384275742256324007

`lcm(2, 8*(n+1)*∑[(n+1)²])`
-/

namespace A100431.P12384275742256324007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (8 * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A100431.P12384275742256324007

namespace A100431

/-- `lcm(2, 8*(n+1)*∑[(n+1)²])` -/
def P12384275742256324007.Spec : Prop :=
  ∀ n, (P12384275742256324007.a n : ℤ) = A100431 n

end A100431

/-! ## A100431.P3832554676393644685

`xor(1, 2*(n+1)*C(2*(n+2), 3)+1)`
-/

namespace A100431.P3832554676393644685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * ((n + 1) * Nat.choose (2 * (n + 2)) 3) + 1)

end

end A100431.P3832554676393644685

namespace A100431

/-- `xor(1, 2*(n+1)*C(2*(n+2), 3)+1)` -/
def P3832554676393644685.Spec : Prop :=
  ∀ n, (P3832554676393644685.a n : ℤ) = A100431 n

end A100431

/-! ## A100431.P5209225150923756776

`8*A108678(n)`
-/

namespace A100431.P5209225150923756776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108678 n

end

end A100431.P5209225150923756776

namespace A100431

/-- `8*A108678(n)` -/
def P5209225150923756776.Spec : Prop :=
  ∀ n, P5209225150923756776.a n = A100431 n

end A100431

/-! ## A100431.P6261947207507843251

`4*A098077(n+1)`
-/

namespace A100431.P6261947207507843251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098077 (n + 1)

end

end A100431.P6261947207507843251

namespace A100431

/-- `4*A098077(n+1)` -/
def P6261947207507843251.Spec : Prop :=
  ∀ n, P6261947207507843251.a n = A100431 n

end A100431

/-! ## A100431.P15484477794505384997

`(n+1)/3*A069074(n)`
-/

namespace A100431.P15484477794505384997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A069074 n : ℚ)

end

end A100431.P15484477794505384997

namespace A100431

/-- `(n+1)/3*A069074(n)` -/
def P15484477794505384997.Spec : Prop :=
  ∀ n, P15484477794505384997.a n = (A100431 n : ℚ)

end A100431

/-! ## A100431.P11040181766219511472

`(n+1)*(A358035(n+1)+3)`
-/

namespace A100431.P11040181766219511472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A358035 (n + 1) + 3)

end

end A100431.P11040181766219511472

namespace A100431

/-- `(n+1)*(A358035(n+1)+3)` -/
def P11040181766219511472.Spec : Prop :=
  ∀ n, P11040181766219511472.a n = A100431 n

end A100431

/-! ## A100431.P6773866884315604874

`A213846(n+1)+A076455(n+1)`
-/

namespace A100431.P6773866884315604874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213846 (n + 1) + A076455 (n + 1)

end

end A100431.P6773866884315604874

namespace A100431

/-- `A213846(n+1)+A076455(n+1)` -/
def P6773866884315604874.Spec : Prop :=
  ∀ n, P6773866884315604874.a n = A100431 n

end A100431

/-! ## A100431.P15465991091484122670

`A062346(n+2)+A053126(n+4)`
-/

namespace A100431.P15465991091484122670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062346 (n + 2) + A053126 (n + 4)

end

end A100431.P15465991091484122670

namespace A100431

/-- `A062346(n+2)+A053126(n+4)` -/
def P15465991091484122670.Spec : Prop :=
  ∀ n, P15465991091484122670.a n = A100431 n

end A100431

/-! ## A100431.P8696819383569762656

`Δ[a(n-1)+2*n*∑[(2*n)²]]` with `a(0)=0`
-/

namespace A100431.P8696819383569762656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100431.P8696819383569762656

namespace A100431

/-- `Δ[a(n-1)+2*n*∑[(2*n)²]]` -/
def P8696819383569762656.Spec : Prop :=
  ∀ n, P8696819383569762656.a n = A100431 n

end A100431

/-! ## A100431.P16887850198615709045

`(n+1)*∑[A139098(n+1)]`
-/

namespace A100431.P16887850198615709045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100431.P16887850198615709045

namespace A100431

/-- `(n+1)*∑[A139098(n+1)]` -/
def P16887850198615709045.Spec : Prop :=
  ∀ n, P16887850198615709045.a n = A100431 n

end A100431

/-! ## A100431.P15711286683873146651

`(n+1)*Δ[A072819(n+1)]`
-/

namespace A100431.P15711286683873146651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A100431.P15711286683873146651

namespace A100431

/-- `(n+1)*Δ[A072819(n+1)]` -/
def P15711286683873146651.Spec : Prop :=
  ∀ n, P15711286683873146651.a n = A100431 n

end A100431

/-! ## A100431.P3226567636338122894

`2*(n+1)*A002492(n+1)`
-/

namespace A100431.P3226567636338122894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A002492 (n + 1))

end

end A100431.P3226567636338122894

namespace A100431

/-- `2*(n+1)*A002492(n+1)` -/
def P3226567636338122894.Spec : Prop :=
  ∀ n, P3226567636338122894.a n = A100431 n

end A100431

/-! ## A100431.P2829959554417894898

`A002492(n+1)*A005843(n+1)`
-/

namespace A100431.P2829959554417894898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (n + 1) * A005843 (n + 1)

end

end A100431.P2829959554417894898

namespace A100431

/-- `A002492(n+1)*A005843(n+1)` -/
def P2829959554417894898.Spec : Prop :=
  ∀ n, P2829959554417894898.a n = A100431 n

end A100431

/-! ## A100431.P3040657497262348286

`A000330(n+1)*A008590(n+1)`
-/

namespace A100431.P3040657497262348286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A008590 (n + 1)

end

end A100431.P3040657497262348286

namespace A100431

/-- `A000330(n+1)*A008590(n+1)` -/
def P3040657497262348286.Spec : Prop :=
  ∀ n, P3040657497262348286.a n = A100431 n

end A100431

/-! ## A100431.P3251057057352120848

`A145068(n+2)²-A145067(n+2)²`
-/

namespace A100431.P3251057057352120848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145068 (n + 2) ^ 2 - A145067 (n + 2) ^ 2

end

end A100431.P3251057057352120848

namespace A100431

/-- `A145068(n+2)²-A145067(n+2)²` -/
def P3251057057352120848.Spec : Prop :=
  ∀ n, P3251057057352120848.a n = A100431 n

end A100431

/-! ## A100431.P3020839532298736416

`A199394(n+1)+A016061(n)-A016061(n+1)`
-/

namespace A100431.P3020839532298736416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199394 (n + 1) + (A016061 n - A016061 (n + 1))

end

end A100431.P3020839532298736416

namespace A100431

/-- `A199394(n+1)+A016061(n)-A016061(n+1)` -/
def P3020839532298736416.Spec : Prop :=
  ∀ n, P3020839532298736416.a n = A100431 n

end A100431

/-! ## A100431.P14846826944977347764

`(A001844(n+1)-A001844(n))*A006331(n+1)`
-/

namespace A100431.P14846826944977347764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 (n + 1) - A001844 n) * A006331 (n + 1)

end

end A100431.P14846826944977347764

namespace A100431

/-- `(A001844(n+1)-A001844(n))*A006331(n+1)` -/
def P14846826944977347764.Spec : Prop :=
  ∀ n, P14846826944977347764.a n = A100431 n

end A100431

/-! ## A100431.P13313498203811527913

`A000330(n+1)*A017077(n+1)-A000330(n+1)`
-/

namespace A100431.P13313498203811527913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A017077 (n + 1) - A000330 (n + 1)

end

end A100431.P13313498203811527913

namespace A100431

/-- `A000330(n+1)*A017077(n+1)-A000330(n+1)` -/
def P13313498203811527913.Spec : Prop :=
  ∀ n, P13313498203811527913.a n = A100431 n

end A100431

/-!
# A100432: Bisection of A005349.

The programs for A100432, there is no canonical definition to state claims against.
-/

/-! ## A100432.P3514367115438721888

`A005349(2*n+1)`
-/

namespace A100432.P3514367115438721888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (2 * n + 1)

end

end A100432.P3514367115438721888

/-! ## A100432.P15903441758685714681

`record[A005349(n^(n%2))]`
-/

namespace A100432.P15903441758685714681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P15903441758685714681

/-! ## A100432.P18358981472480487995

`record[A005349(C(or(1, n), n))]`
-/

namespace A100432.P18358981472480487995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P18358981472480487995

/-! ## A100432.P477762649428961749

`root(A005349(record[xor(1, n)])^4, 4)`
-/

namespace A100432.P477762649428961749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 4 : ℝ) ^ (1 / (4 : ℝ))

end

end A100432.P477762649428961749

/-! ## A100432.P13615948819544957830

`record[A005349(C(n+2, and(1, n)))]`
-/

namespace A100432.P13615948819544957830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (Nat.choose (n + 2) (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P13615948819544957830

/-! ## A100432.P1605441495579263066

`record[A005349(n+1)/(-1)^n]`
-/

namespace A100432.P1605441495579263066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P1605441495579263066

/-! ## A100432.P3834749508644498708

`record[A005349((n+1)/gcd(2, n+1))]`
-/

namespace A100432.P3834749508644498708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P3834749508644498708

/-! ## A100432.P3626285871908847629

`record[A005349((n+1)/and(n+1, -(n+1)))]`
-/

namespace A100432.P3626285871908847629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P3626285871908847629

/-! ## A100432.P1861474482994468041

`record[A005349(A093178(n))]`
-/

namespace A100432.P1861474482994468041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P1861474482994468041

/-! ## A100432.P13994800030646848398

`record[A005349(A000265(n+1))]`
-/

namespace A100432.P13994800030646848398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100432.P13994800030646848398

/-! ## A100432.P14990510011769214048

`A005349(A005408(n))/gcd(n, n+1)`
-/

namespace A100432.P14990510011769214048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (A005408 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A100432.P14990510011769214048

/-! ## A100432.P17298828456456131791

`A113315(2*n+1)*A325454(2*n+1)`
-/

namespace A100432.P17298828456456131791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (2 * n + 1) * A325454 (2 * n + 1)

end

end A100432.P17298828456456131791

/-! ## A100432.P14250746218980876966

`A357936(A005349(n+1+n))`
-/

namespace A100432.P14250746218980876966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357936 (A005349 (n + 1 + n)).toNat

end

end A100432.P14250746218980876966

/-!
# A100433: Bisection of A005349.

The programs for A100433, there is no canonical definition to state claims against.
-/

/-! ## A100433.P16676515450889890003

`A005349(2*(n+1))`
-/

namespace A100433.P16676515450889890003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (2 * (n + 1))

end

end A100433.P16676515450889890003

/-! ## A100433.P16342949877812731138

`record[A005349(xor(1, n)+1)]`
-/

namespace A100433.P16342949877812731138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P16342949877812731138

/-! ## A100433.P3359031073015256634

`record[A005349(n+2)/gcd(2, n+1)]`
-/

namespace A100433.P3359031073015256634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 2) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P3359031073015256634

/-! ## A100433.P1085595042666120835

`record[A005349(A093178(n)+1)]`
-/

namespace A100433.P1085595042666120835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P1085595042666120835

/-! ## A100433.P998098997351103475

`record[A005349(2*A133310(n))]`
-/

namespace A100433.P998098997351103475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P998098997351103475

/-! ## A100433.P2631182781482191649

`A000027(A005349(n+2+n))`
-/

namespace A100433.P2631182781482191649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005349 (n + 2 + n)).toNat

end

end A100433.P2631182781482191649

/-! ## A100433.P6834197106689425304

`record[A005349(A000265(n+1)+1)]`
-/

namespace A100433.P6834197106689425304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P6834197106689425304

/-! ## A100433.P8128301869054390153

`record[A005349(n+1)+2-A141310(n)]`
-/

namespace A100433.P8128301869054390153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) + (2 - A141310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P8128301869054390153

/-! ## A100433.P10072650561876427828

`A005349(n+2+n)%A001248(n+1)`
-/

namespace A100433.P10072650561876427828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005349 (n + 2 + n)) (A001248 (n + 1))

end

end A100433.P10072650561876427828

/-! ## A100433.P10924256372485254434

`gcd(A000038(n), A005349(A005408(n)+1))`
-/

namespace A100433.P10924256372485254434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005349 (A005408 n + 1).toNat)

end

end A100433.P10924256372485254434

/-! ## A100433.P10866254714988276

`A005349(A005843(n+1))+A000007(n+1)`
-/

namespace A100433.P10866254714988276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A005843 (n + 1)).toNat + A000007 (n + 1)

end

end A100433.P10866254714988276

/-! ## A100433.P12156071532227632896

`record[A005349(A014681(n)+2)]`
-/

namespace A100433.P12156071532227632896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A014681 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P12156071532227632896

/-! ## A100433.P16755953120906266867

`record[A005349(A133265(n))]`
-/

namespace A100433.P16755953120906266867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P16755953120906266867

/-! ## A100433.P2108063153501343875

`record[A005349(n+2)/A000034(n)]`
-/

namespace A100433.P2108063153501343875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 2) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P2108063153501343875

/-! ## A100433.P15922334658169915068

`record[A005349(n+2)/A006519(n+1)]`
-/

namespace A100433.P15922334658169915068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 2) : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P15922334658169915068

/-! ## A100433.P7226441839711508747

`A113315(2*(n+1))*A325454(2*(n+1))`
-/

namespace A100433.P7226441839711508747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (2 * (n + 1)) * A325454 (2 * (n + 1))

end

end A100433.P7226441839711508747

/-! ## A100433.P17207647065601398840

`∑[A082516(2*n+1)+A082516(A028310(2*n))]`
-/

namespace A100433.P17207647065601398840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (2 * n + 1) + A082516 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100433.P17207647065601398840

/-! ## A100433.P6516444730213777394

`record[A005349(A029578(n+3))]`
-/

namespace A100433.P6516444730213777394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P6516444730213777394

/-! ## A100433.P16283885200403284943

`record[A005349(A018838(n)+2)]`
-/

namespace A100433.P16283885200403284943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A018838 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100433.P16283885200403284943

/-!
# A100434: Expansion of g.f. (1+x)*(3+x)/(1+6*x^2+x^4).

The programs for A100434, the canonical program `A100434.P14202553700757604113` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100434 has offset 0).

The definition of A100434 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+4x+x^2)/(1+6x^2+x^4))` (program `A100434.P14202553700757604113`, by `A100434.P14202553700757604113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100434.P14202553700757604113

`ogf((3+4x+x^2)/(1+6x^2+x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100434

/-- `ogf((3+4x+x^2)/(1+6x^2+x^4))` -/
def P14202553700757604113.Spec : Prop :=
  ∀ n, P14202553700757604113.a n = A100434 n

theorem P14202553700757604113.correct : P14202553700757604113.Spec := by
  intro n
  simp only [A100434]

end A100434

/-! ## A100434.P12715157221917597726

`(-1)^floor(n/2)*A000034(n)*A126354(n+3)`
-/

namespace A100434.P12715157221917597726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A000034 n : ℚ) * (A126354 (n + 3) : ℚ)

end

end A100434.P12715157221917597726

namespace A100434

/-- `(-1)^floor(n/2)*A000034(n)*A126354(n+3)` -/
def P12715157221917597726.Spec : Prop :=
  ∀ n, P12715157221917597726.a n = (A100434 n : ℚ)

end A100434

/-! ## A100434.P7961840975391849818

`(1-and(2, n))*Δ[A229083(2*n+1)]`
-/

namespace A100434.P7961840975391849818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229083 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A100434.P7961840975391849818

namespace A100434

/-- `(1-and(2, n))*Δ[A229083(2*n+1)]` -/
def P7961840975391849818.Spec : Prop :=
  ∀ n, P7961840975391849818.a n = A100434 n

end A100434

/-!
# A100437: Number of distinct products i*j*k*l for 1 <= i <= j <= k <= l <= n.

The programs for A100437, there is no canonical definition to state claims against.
-/

/-! ## A100437.P7298070608368579173

`A322967(∑[n+3]+n+4)`
-/

namespace A100437.P7298070608368579173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A100437.P7298070608368579173

/-! ## A100437.P16316294501093205231

`or(char[1], A322967(A055998(n+2)))`
-/

namespace A100437.P16316294501093205231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A322967 (A055998 (n + 2)).toNat)

end

end A100437.P16316294501093205231

/-! ## A100437.P8035637388266563842

`A322967(A000217(n+4)-3)+char[34]`
-/

namespace A100437.P8035637388266563842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (A000217 (n + 4) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100437.P8035637388266563842

/-! ## A100437.P15038180293675275728

`and(A260196(n), A322967(A055998(n+2)))`
-/

namespace A100437.P15038180293675275728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A322967 (A055998 (n + 2)).toNat)

end

end A100437.P15038180293675275728

/-!
# A100438: Number of distinct products i*j*k*l for 1 <= i < j < k < l <= n.

The programs for A100438, there is no canonical definition to state claims against.
-/

/-! ## A100438.P9571846248962770302

`A352276(A352241(n+1))%A352208(n+1)`
-/

namespace A100438.P9571846248962770302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352276 (A352241 (n + 1)).toNat) (A352208 (n + 1))

end

end A100438.P9571846248962770302

/-!
# A100439: Number of distinct values of i*j + j*k + k*i with 1 <= i

The programs for A100439, there is no canonical definition to state claims against.
-/

/-! ## A100439.P15203960845177982649

`∑[∑[A335885(A155866(n))]]`
-/

namespace A100439.P15203960845177982649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A155866 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100439.P15203960845177982649

/-!
# A100440: Number of distinct values of i*j + j*k + k*i with 1 <= i <= j <= k <= n.

The programs for A100440, there is no canonical definition to state claims against.
-/

/-! ## A100440.P7243379898867154257

`Δ[eq[3, A200741(n+1)]]`
-/

namespace A100440.P7243379898867154257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200741 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100440.P7243379898867154257

/-!
# A100441: a(n) is the denominator of f(n) where f(1) = 2 and f(n+1) is the solution of x + Sum_{i=1..n} f(i) = x * Product_{i=1..n} f(i).

The programs for A100441, the canonical program `A100441.P666211359868640610` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100441 has offset 1).

The definition of A100441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100441.P666211359868640610

`2^2^(n-1)-2^2^(n-2)*a(n-1)+a(n-1)²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100441

/-- `2^2^(n-1)-2^2^(n-2)*a(n-1)+a(n-1)²` -/
def P666211359868640610.Spec : Prop :=
  ∀ n, P666211359868640610.a n = (A100441 (n + 1) : ℝ)

end A100441

/-! ## A100441.P8205981261616058330

`ratio[A076628(A028310(n))]`
-/

namespace A100441.P8205981261616058330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076628 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A100441.P8205981261616058330

namespace A100441

/-- `ratio[A076628(A028310(n))]` -/
def P8205981261616058330.Spec : Prop :=
  ∀ n, P8205981261616058330.a n = (A100441 (n + 1) : ℚ)

end A100441

/-! ## A100441.P5738980749576653101

`ratio[A076628(A072411(2^n))]`
-/

namespace A100441.P5738980749576653101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076628 (A072411 (2 ^ n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A100441.P5738980749576653101

namespace A100441

/-- `ratio[A076628(A072411(2^n))]` -/
def P5738980749576653101.Spec : Prop :=
  ∀ n, P5738980749576653101.a n = (A100441 (n + 1) : ℚ)

end A100441

/-! ## A100441.P15446145174744283701

`A076628(n+1)/A076628(round(acot(n)+n))`
-/

namespace A100441.P15446145174744283701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076628 (n + 1) : ℚ) / (A076628 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)

end

end A100441.P15446145174744283701

namespace A100441

/-- `A076628(n+1)/A076628(round(acot(n)+n))` -/
def P15446145174744283701.Spec : Prop :=
  ∀ n, P15446145174744283701.a n = (A100441 (n + 1) : ℚ)

end A100441

/-! ## A100441.P3026015317763536699

`A076628(n+1)/A076628(round(sqrt(n²+1)))`
-/

namespace A100441.P3026015317763536699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076628 (n + 1) : ℚ) / (A076628 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A100441.P3026015317763536699

namespace A100441

/-- `A076628(n+1)/A076628(round(sqrt(n²+1)))` -/
def P3026015317763536699.Spec : Prop :=
  ∀ n, P3026015317763536699.a n = (A100441 (n + 1) : ℚ)

end A100441

/-!
# A100442: Binomial transform of A003418.

The programs for A100442, there is no canonical definition to state claims against.
-/

/-! ## A100442.P16762786277106839698

`A307800(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A100442.P16762786277106839698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307800 (n - 1) + a (n - 1)

end

end A100442.P16762786277106839698

/-! ## A100442.P8429880762091247173

`∑[A307800(log2(A011782(n)))]`
-/

namespace A100442.P8429880762091247173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100442.P8429880762091247173

/-! ## A100442.P9351392686195603779

`∑[A307800(A004273(n)-n)]`
-/

namespace A100442.P9351392686195603779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100442.P9351392686195603779

/-! ## A100442.P4403840131847581857

`∑[A307800(A004526(A004273(n)))]`
-/

namespace A100442.P4403840131847581857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100442.P4403840131847581857

/-! ## A100442.P1089911175204711482

`∑[A307800(n)]+1-A307800(n)`
-/

namespace A100442.P1089911175204711482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A307800 n)

end

end A100442.P1089911175204711482

/-! ## A100442.P6167145690145590829

`∑[A307800(A004247(A000124(n)))]`
-/

namespace A100442.P6167145690145590829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 (A004247 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100442.P6167145690145590829

/-! ## A100442.P1226239312463027730

`∑[A307800(A259361(n²))]`
-/

namespace A100442.P1226239312463027730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100442.P1226239312463027730

/-! ## A100442.P4880087591446999273

`∑[A307800(A004197(A001105(n)))]`
-/

namespace A100442.P4880087591446999273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307800 (A004197 (A001105 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100442.P4880087591446999273

/-!
# A100444: Bisection of A000255.

The programs for A100444, there is no canonical definition to state claims against.
-/

/-! ## A100444.P10161069344064353869

`record[Δ[n*(1-a(n-1))]]` with `a(0)=0`
-/

namespace A100444.P10161069344064353869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) * (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100444.P10161069344064353869

/-! ## A100444.P6570496094691720337

`(n+1)*2*(2*(n+1)-3)*a(n-1)-1` with `a(0)=1`
-/

namespace A100444.P6570496094691720337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (2 * (((2 * (n + 1) : ℤ) - 3) * a (n - 1))) - 1

end

end A100444.P6570496094691720337

/-! ## A100444.P15653822258366585510

`A000255(2*n)`
-/

namespace A100444.P15653822258366585510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (2 * n)

end

end A100444.P15653822258366585510

/-! ## A100444.P8284453572996373744

`record[A182386(n)]/Δ[n²]`
-/

namespace A100444.P8284453572996373744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A100444.P8284453572996373744

/-! ## A100444.P405745785291739613

`A162969(3*n+n+1)`
-/

namespace A100444.P405745785291739613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162969 (3 * n + (n + 1))

end

end A100444.P405745785291739613

/-!
# A100445: Bisection of A000255.

The programs for A100445, there is no canonical definition to state claims against.
-/

/-! ## A100445.P10934696387017305025

`A000255(Δ[n²])`
-/

namespace A100445.P10934696387017305025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100445.P10934696387017305025

/-! ## A100445.P11045204217836751755

`Δ[A173184(2*n)]`
-/

namespace A100445.P11045204217836751755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173184 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100445.P11045204217836751755

/-! ## A100445.P7793503582882588006

`record[A000255(xor(1, n))]`
-/

namespace A100445.P7793503582882588006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100445.P7793503582882588006

/-! ## A100445.P562197430985217016

`Δ[A180192((n+1)²)]`
-/

namespace A100445.P562197430985217016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180192 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100445.P562197430985217016

/-! ## A100445.P16773587313814549932

`record[Δ[A182386(n+1)]]`
-/

namespace A100445.P16773587313814549932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100445.P16773587313814549932

/-!
# A100446: Bisection of A000031.

The programs for A100446, the canonical program `A100446.P4293129564490345513` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100446 has offset 0).

The definition of A100446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100446.P4293129564490345513

`A000031(2*n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100446

/-- `A000031(2*n)` -/
def P4293129564490345513.Spec : Prop :=
  ∀ n, P4293129564490345513.a n = A100446 n

theorem P4293129564490345513.correct : P4293129564490345513.Spec := by
  intro n
  simp only [A100446]

end A100446

/-! ## A100446.P1172794610795443635

`record[A000031(and(n, n+1))]`
-/

namespace A100446.P1172794610795443635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P1172794610795443635

namespace A100446

/-- `record[A000031(and(n, n+1))]` -/
def P1172794610795443635.Spec : Prop :=
  ∀ n, P1172794610795443635.a n = A100446 n

end A100446

/-! ## A100446.P10119710807266781123

`record[A000031(n)/(-1)^n]`
-/

namespace A100446.P10119710807266781123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P10119710807266781123

namespace A100446

/-- `record[A000031(n)/(-1)^n]` -/
def P10119710807266781123.Spec : Prop :=
  ∀ n, P10119710807266781123.a n = (A100446 n : ℚ)

end A100446

/-! ## A100446.P7709946561633551208

`record[A000031(n+1)^(n%2)]`
-/

namespace A100446.P7709946561633551208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P7709946561633551208

namespace A100446

/-- `record[A000031(n+1)^(n%2)]` -/
def P7709946561633551208.Spec : Prop :=
  ∀ n, P7709946561633551208.a n = A100446 n

end A100446

/-! ## A100446.P17237143939340883018

`record[A000031(xor(1, n)%(n+1))]`
-/

namespace A100446.P17237143939340883018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (Nat.xor 1 n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P17237143939340883018

namespace A100446

/-- `record[A000031(xor(1, n)%(n+1))]` -/
def P17237143939340883018.Spec : Prop :=
  ∀ n, P17237143939340883018.a n = A100446 n

end A100446

/-! ## A100446.P8575571006494253944

`record[A000031(A153733(n))]`
-/

namespace A100446.P8575571006494253944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P8575571006494253944

namespace A100446

/-- `record[A000031(A153733(n))]` -/
def P8575571006494253944.Spec : Prop :=
  ∀ n, P8575571006494253944.a n = A100446 n

end A100446

/-! ## A100446.P6779917353490188609

`2*A000116(n)-A000013(n)`
-/

namespace A100446.P6779917353490188609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000116 n - A000013 n

end

end A100446.P6779917353490188609

namespace A100446

/-- `2*A000116(n)-A000013(n)` -/
def P6779917353490188609.Spec : Prop :=
  ∀ n, P6779917353490188609.a n = A100446 n

end A100446

/-! ## A100446.P5157850604585844873

`record[A000031(A000265(n+1)-1)]`
-/

namespace A100446.P5157850604585844873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P5157850604585844873

namespace A100446

/-- `record[A000031(A000265(n+1)-1)]` -/
def P5157850604585844873.Spec : Prop :=
  ∀ n, P5157850604585844873.a n = A100446 n

end A100446

/-! ## A100446.P13013078597566374182

`record[A000031(n%A000265(n+1))]`
-/

namespace A100446.P13013078597566374182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (Int.tmod (n : ℤ) (A000265 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100446.P13013078597566374182

namespace A100446

/-- `record[A000031(n%A000265(n+1))]` -/
def P13013078597566374182.Spec : Prop :=
  ∀ n, P13013078597566374182.a n = A100446 n

end A100446

/-! ## A100446.P5087216119844575565

`A052823(2*n)+A036453(n+1)`
-/

namespace A100446.P5087216119844575565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (2 * n) + A036453 (n + 1)

end

end A100446.P5087216119844575565

namespace A100446

/-- `A052823(2*n)+A036453(n+1)` -/
def P5087216119844575565.Spec : Prop :=
  ∀ n, P5087216119844575565.a n = A100446 n

end A100446

/-! ## A100446.P5257568649318714560

`A059076(2*n)+A000029(2*n)`
-/

namespace A100446.P5257568649318714560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (2 * n) + A000029 (2 * n)

end

end A100446.P5257568649318714560

namespace A100446

/-- `A059076(2*n)+A000029(2*n)` -/
def P5257568649318714560.Spec : Prop :=
  ∀ n, P5257568649318714560.a n = A100446 n

end A100446

/-! ## A100446.P9071427939813882705

`A066656(2*n)+A001037(2*n)`
-/

namespace A100446.P9071427939813882705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066656 (2 * n) + A001037 (2 * n)

end

end A100446.P9071427939813882705

namespace A100446

/-- `A066656(2*n)+A001037(2*n)` -/
def P9071427939813882705.Spec : Prop :=
  ∀ n, P9071427939813882705.a n = A100446 n

theorem P9071427939813882705.correct : P9071427939813882705.Spec := by
  intro n
  simp only [A100446, Nat.add_sub_cancel, A100446.P9071427939813882705.a, A100446.P4293129564490345513.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A001037, A001037.P3072020637183991904.a, A066656, A066656.P10645985252166079910.a, A045664, A045664.P10163269847227854319.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P18254306604665478110.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100446

/-! ## A100446.P4808827834566445460

`A266977(2*n)+A262232(2*n)`
-/

namespace A100446.P4808827834566445460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (2 * n) + A262232 (2 * n)

end

end A100446.P4808827834566445460

namespace A100446

/-- `A266977(2*n)+A262232(2*n)` -/
def P4808827834566445460.Spec : Prop :=
  ∀ n, P4808827834566445460.a n = A100446 n

end A100446

/-! ## A100446.P16110952842969915186

`A029744(2*n+1)+2*A059076(2*n)`
-/

namespace A100446.P16110952842969915186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * n + 1) + 2 * A059076 (2 * n)

end

end A100446.P16110952842969915186

namespace A100446

/-- `A029744(2*n+1)+2*A059076(2*n)` -/
def P16110952842969915186.Spec : Prop :=
  ∀ n, P16110952842969915186.a n = A100446 n

end A100446

/-! ## A100446.P7143286635847640500

`2*A000029(2*n)-A029744(2*n+1)`
-/

namespace A100446.P7143286635847640500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000029 (2 * n) - A029744 (2 * n + 1)

end

end A100446.P7143286635847640500

namespace A100446

/-- `2*A000029(2*n)-A029744(2*n+1)` -/
def P7143286635847640500.Spec : Prop :=
  ∀ n, P7143286635847640500.a n = A100446 n

end A100446

/-! ## A100446.P237177186713000401

`A052823(2*n)+A020639(A004277(n))`
-/

namespace A100446.P237177186713000401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (2 * n) + A020639 (A004277 n).toNat

end

end A100446.P237177186713000401

namespace A100446

/-- `A052823(2*n)+A020639(A004277(n))` -/
def P237177186713000401.Spec : Prop :=
  ∀ n, P237177186713000401.a n = A100446 n

end A100446

/-! ## A100446.P9985580604464887360

`A001371(2*n)+A115119(2*n)+A059076(2*n)`
-/

namespace A100446.P9985580604464887360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (2 * n) + (A115119 (2 * n) + A059076 (2 * n))

end

end A100446.P9985580604464887360

namespace A100446

/-- `A001371(2*n)+A115119(2*n)+A059076(2*n)` -/
def P9985580604464887360.Spec : Prop :=
  ∀ n, P9985580604464887360.a n = A100446 n

end A100446

/-! ## A100446.P17348724168973503451

`A000079(n)²-A209970(2*n)`
-/

namespace A100446.P17348724168973503451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A209970 (2 * n)

end

end A100446.P17348724168973503451

namespace A100446

/-- `A000079(n)²-A209970(2*n)` -/
def P17348724168973503451.Spec : Prop :=
  ∀ n, P17348724168973503451.a n = A100446 n

theorem P17348724168973503451.correct : P17348724168973503451.Spec := by
  intro n
  simp only [A100446, Nat.add_sub_cancel, A100446.P17348724168973503451.a, A100446.P4293129564490345513.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A000079, A000079.P10855139691139572931.a, A209970, A209970.P62417713944158277.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100446

/-! ## A100446.P5598240712763055765

`A000079(2*n)-A209970(2*n)`
-/

namespace A100446.P5598240712763055765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A209970 (2 * n)

end

end A100446.P5598240712763055765

namespace A100446

/-- `A000079(2*n)-A209970(2*n)` -/
def P5598240712763055765.Spec : Prop :=
  ∀ n, P5598240712763055765.a n = A100446 n

theorem P5598240712763055765.correct : P5598240712763055765.Spec := by
  intro n
  simp only [A100446, Nat.add_sub_cancel, A100446.P5598240712763055765.a, A100446.P4293129564490345513.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A000079, A000079.P10855139691139572931.a, A209970, A209970.P62417713944158277.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100446

/-!
# A100447: Bisection of A000031.

The programs for A100447, the canonical program `A100447.P15009877531804378152` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100447 has offset 0).

The definition of A100447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100447.P9647154493003985025

`2*A026119(n)`
-/

namespace A100447.P9647154493003985025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026119 n

end

end A100447.P9647154493003985025

namespace A100447

/-- `2*A026119(n)` -/
def P9647154493003985025.Spec : Prop :=
  ∀ n, P9647154493003985025.a n = A100447 n

end A100447

/-! ## A100447.P15852567767003069223

`A000031(Δ[n²])`
-/

namespace A100447.P15852567767003069223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P15852567767003069223

namespace A100447

/-- `A000031(Δ[n²])` -/
def P15852567767003069223.Spec : Prop :=
  ∀ n, P15852567767003069223.a n = A100447 n

end A100447

/-! ## A100447.P15009877531804378152

`A063776(Δ[n²])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A100447

/-- `A063776(Δ[n²])` -/
def P15009877531804378152.Spec : Prop :=
  ∀ n, P15009877531804378152.a n = A100447 n

theorem P15009877531804378152.correct : P15009877531804378152.Spec := by
  intro n
  simp only [A100447]

end A100447

/-! ## A100447.P2942879572390758173

`A074763(Δ[n²])`
-/

namespace A100447.P2942879572390758173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074763 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P2942879572390758173

namespace A100447

/-- `A074763(Δ[n²])` -/
def P2942879572390758173.Spec : Prop :=
  ∀ n, P2942879572390758173.a n = A100447 n

end A100447

/-! ## A100447.P17863473622306890485

`record[A000031(xor(1, n))]`
-/

namespace A100447.P17863473622306890485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100447.P17863473622306890485

namespace A100447

/-- `record[A000031(xor(1, n))]` -/
def P17863473622306890485.Spec : Prop :=
  ∀ n, P17863473622306890485.a n = A100447 n

end A100447

/-! ## A100447.P858328259617258608

`A008965(Δ[n²])+1`
-/

namespace A100447.P858328259617258608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A100447.P858328259617258608

namespace A100447

/-- `A008965(Δ[n²])+1` -/
def P858328259617258608.Spec : Prop :=
  ∀ n, P858328259617258608.a n = A100447 n

end A100447

/-! ## A100447.P733703938348037372

`A082550(Δ[n²])+1`
-/

namespace A100447.P733703938348037372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A100447.P733703938348037372

namespace A100447

/-- `A082550(Δ[n²])+1` -/
def P733703938348037372.Spec : Prop :=
  ∀ n, P733703938348037372.a n = A100447 n

theorem P733703938348037372.correct : P733703938348037372.Spec := by
  intro n
  simp only [A100447, Nat.add_sub_cancel, A100447.P733703938348037372.f1, A100447.P733703938348037372.a, A100447.P15009877531804378152.f1, A100447.P15009877531804378152.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A082550, A082550.P6841504247689330333.a, A059841, A059841.P7264174615531153985.a, A064355, A064355.P15803301992756024606.a, A011946, A011946.P13849652241662667985.f1, A011946.P13849652241662667985.a, A001511, A001511.P17146462531039486101.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100447

/-! ## A100447.P9595201835737051766

`A052823(Δ[n²])+2`
-/

namespace A100447.P9595201835737051766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A100447.P9595201835737051766

namespace A100447

/-- `A052823(Δ[n²])+2` -/
def P9595201835737051766.Spec : Prop :=
  ∀ n, P9595201835737051766.a n = A100447 n

end A100447

/-! ## A100447.P2185443937128593861

`A093367(Δ[n²])+2`
-/

namespace A100447.P2185443937128593861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A100447.P2185443937128593861

namespace A100447

/-- `A093367(Δ[n²])+2` -/
def P2185443937128593861.Spec : Prop :=
  ∀ n, P2185443937128593861.a n = A100447 n

end A100447

/-! ## A100447.P3009697289805353817

`A283843(Δ[n²])-1`
-/

namespace A100447.P3009697289805353817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A100447.P3009697289805353817

namespace A100447

/-- `A283843(Δ[n²])-1` -/
def P3009697289805353817.Spec : Prop :=
  ∀ n, P3009697289805353817.a n = A100447 n

theorem P3009697289805353817.correct : P3009697289805353817.Spec := by
  intro n
  simp only [A100447, Nat.add_sub_cancel, A100447.P3009697289805353817.f1, A100447.P3009697289805353817.a, A100447.P15009877531804378152.f1, A100447.P15009877531804378152.a, A063776, A063776.P939957080839248717.f1, A063776.P939957080839248717.a, A283843, A283843.P15067060620591103805.a, A059841, A059841.P7264174615531153985.a, A064355, A064355.P15803301992756024606.a, A011946, A011946.P13849652241662667985.f1, A011946.P13849652241662667985.a, A001511, A001511.P17146462531039486101.a, A296302, A296302.P8637239320253714587.f1, A296302.P8637239320253714587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100447

/-! ## A100447.P15995973463437912406

`2*A000013(Δ[n²])`
-/

namespace A100447.P15995973463437912406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P15995973463437912406

namespace A100447

/-- `2*A000013(Δ[n²])` -/
def P15995973463437912406.Spec : Prop :=
  ∀ n, P15995973463437912406.a n = A100447 n

end A100447

/-! ## A100447.P18234678700180572868

`2*A000016(Δ[n²])`
-/

namespace A100447.P18234678700180572868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P18234678700180572868

namespace A100447

/-- `2*A000016(Δ[n²])` -/
def P18234678700180572868.Spec : Prop :=
  ∀ n, P18234678700180572868.a n = A100447 n

end A100447

/-! ## A100447.P11570431194214911047

`2*A053656(Δ[n²])`
-/

namespace A100447.P11570431194214911047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P11570431194214911047

namespace A100447

/-- `2*A053656(Δ[n²])` -/
def P11570431194214911047.Spec : Prop :=
  ∀ n, P11570431194214911047.a n = A100447 n

end A100447

/-! ## A100447.P2806381777624668685

`2*A300190(Δ[n²])`
-/

namespace A100447.P2806381777624668685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P2806381777624668685

namespace A100447

/-- `2*A300190(Δ[n²])` -/
def P2806381777624668685.Spec : Prop :=
  ∀ n, P2806381777624668685.a n = A100447 n

end A100447

/-! ## A100447.P13972869570402872681

`2*A300218(Δ[n²])`
-/

namespace A100447.P13972869570402872681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100447.P13972869570402872681

namespace A100447

/-- `2*A300218(Δ[n²])` -/
def P13972869570402872681.Spec : Prop :=
  ∀ n, P13972869570402872681.a n = A100447 n

end A100447

/-! ## A100447.P17031678451839934673

`A161219(Δ[n²])/2`
-/

namespace A100447.P17031678451839934673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A100447.P17031678451839934673

namespace A100447

/-- `A161219(Δ[n²])/2` -/
def P17031678451839934673.Spec : Prop :=
  ∀ n, P17031678451839934673.a n = (A100447 n : ℚ)

end A100447

/-! ## A100447.P4754586457261333491

`lcm(2, A000031(2*n+1))`
-/

namespace A100447.P4754586457261333491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000031 (2 * n + 1))

end

end A100447.P4754586457261333491

namespace A100447

/-- `lcm(2, A000031(2*n+1))` -/
def P4754586457261333491.Spec : Prop :=
  ∀ n, (P4754586457261333491.a n : ℤ) = A100447 n

end A100447

/-! ## A100447.P13462058658726127937

`∑{d}[2*n+1, A001037(#)]`
-/

namespace A100447.P13462058658726127937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001037 d

end

end A100447.P13462058658726127937

namespace A100447

/-- `∑{d}[2*n+1, A001037(#)]` -/
def P13462058658726127937.Spec : Prop :=
  ∀ n, P13462058658726127937.a n = A100447 n

end A100447

/-! ## A100447.P5370349071378498630

`∑{d}[2*n+1, A038063(#)]`
-/

namespace A100447.P5370349071378498630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038063 d

end

end A100447.P5370349071378498630

namespace A100447

/-- `∑{d}[2*n+1, A038063(#)]` -/
def P5370349071378498630.Spec : Prop :=
  ∀ n, P5370349071378498630.a n = A100447 n

end A100447

/-! ## A100447.P8443004899745683488

`∑{d}[2*n+1, A038067(#)]`
-/

namespace A100447.P8443004899745683488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038067 d

end

end A100447.P8443004899745683488

namespace A100447

/-- `∑{d}[2*n+1, A038067(#)]` -/
def P8443004899745683488.Spec : Prop :=
  ∀ n, P8443004899745683488.a n = A100447 n

end A100447

/-!
# A100448: Number of triples (i,j,k) with 1 <= i <= j < k <= n and gcd{i,j,k} = 1.

The programs for A100448, the canonical program `A100448.P17514214927403473574` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100448 has offset 1).

The definition of A100448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100448.P17514214927403473574

`(A071778(n+1)-1)/6`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100448

/-- `(A071778(n+1)-1)/6` -/
def P17514214927403473574.Spec : Prop :=
  ∀ n, P17514214927403473574.a n = (A100448 (n + 1) : ℚ)

end A100448

/-! ## A100448.P10808024295350812182

`∑[A102309(n+1)]`
-/

namespace A100448.P10808024295350812182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100448.P10808024295350812182

namespace A100448

/-- `∑[A102309(n+1)]` -/
def P10808024295350812182.Spec : Prop :=
  ∀ n, P10808024295350812182.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P3710264753138043796

`floor(A071778(n+1)/6)`
-/

namespace A100448.P3710264753138043796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071778 (n + 1) : ℚ) / 6⌋

end

end A100448.P3710264753138043796

namespace A100448

/-- `floor(A071778(n+1)/6)` -/
def P3710264753138043796.Spec : Prop :=
  ∀ n, P3710264753138043796.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P9052493581670863459

`∑[A326419(n+1)]-1`
-/

namespace A100448.P9052493581670863459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100448.P9052493581670863459

namespace A100448

/-- `∑[A326419(n+1)]-1` -/
def P9052493581670863459.Spec : Prop :=
  ∀ n, P9052493581670863459.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P7163302919703904452

`round(A071778(C(n+1, n))/6)`
-/

namespace A100448.P7163302919703904452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071778 (Nat.choose (n + 1) n) : ℚ) / 6)

end

end A100448.P7163302919703904452

namespace A100448

/-- `round(A071778(C(n+1, n))/6)` -/
def P7163302919703904452.Spec : Prop :=
  ∀ n, P7163302919703904452.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P2100808413718521372

`∑[A326419(n+1)%A008000(n)]`
-/

namespace A100448.P2100808413718521372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326419 (n + 1)) (A008000 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100448.P2100808413718521372

namespace A100448

/-- `∑[A326419(n+1)%A008000(n)]` -/
def P2100808413718521372.Spec : Prop :=
  ∀ n, P2100808413718521372.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P6225424701681245224

`A015616(n+1)+A015614(n+1)`
-/

namespace A100448.P6225424701681245224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + A015614 (n + 1)

end

end A100448.P6225424701681245224

namespace A100448

/-- `A015616(n+1)+A015614(n+1)` -/
def P6225424701681245224.Spec : Prop :=
  ∀ n, P6225424701681245224.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P4859385812851254456

`A015631(n+1)-A002088(n+1)`
-/

namespace A100448.P4859385812851254456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 1) - A002088 (n + 1)

end

end A100448.P4859385812851254456

namespace A100448

/-- `A015631(n+1)-A002088(n+1)` -/
def P4859385812851254456.Spec : Prop :=
  ∀ n, P4859385812851254456.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P5469980740284596530

`A015631(n+1)-A092249(n+1)`
-/

namespace A100448.P5469980740284596530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015631 (n + 1) - A092249 (n + 1)

end

end A100448.P5469980740284596530

namespace A100448

/-- `A015631(n+1)-A092249(n+1)` -/
def P5469980740284596530.Spec : Prop :=
  ∀ n, P5469980740284596530.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P153167679196769348

`∑[A007438(n+1)-A000010(n+1)]`
-/

namespace A100448.P153167679196769348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007438 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100448.P153167679196769348

namespace A100448

/-- `∑[A007438(n+1)-A000010(n+1)]` -/
def P153167679196769348.Spec : Prop :=
  ∀ n, P153167679196769348.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P9809722979968025374

`∑[A007434(n+1)-A007438(n+1)]`
-/

namespace A100448.P9809722979968025374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) - A007438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100448.P9809722979968025374

namespace A100448

/-- `∑[A007434(n+1)-A007438(n+1)]` -/
def P9809722979968025374.Spec : Prop :=
  ∀ n, P9809722979968025374.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P17194177583042687204

`∑[A000741(n+1)+A000010(n+1)]-1`
-/

namespace A100448.P17194177583042687204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000741 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100448.P17194177583042687204

namespace A100448

/-- `∑[A000741(n+1)+A000010(n+1)]-1` -/
def P17194177583042687204.Spec : Prop :=
  ∀ n, P17194177583042687204.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P13984154357008578947

`∑[A000010(n+1)]+A015616(n+1)-1`
-/

namespace A100448.P13984154357008578947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A015616 (n + 1) - 1)

end

end A100448.P13984154357008578947

namespace A100448

/-- `∑[A000010(n+1)]+A015616(n+1)-1` -/
def P13984154357008578947.Spec : Prop :=
  ∀ n, P13984154357008578947.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P15284027720471825405

`∑[(A007434(n+1)-A000010(n+1))/2]`
-/

namespace A100448.P15284027720471825405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) - A000010 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100448.P15284027720471825405

namespace A100448

/-- `∑[(A007434(n+1)-A000010(n+1))/2]` -/
def P15284027720471825405.Spec : Prop :=
  ∀ n, P15284027720471825405.a n = (A100448 (n + 1) : ℚ)

end A100448

/-! ## A100448.P18237836217711318208

`A015616(n+1)+∑[A109606(n+1)]+n`
-/

namespace A100448.P18237836217711318208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A100448.P18237836217711318208

namespace A100448

/-- `A015616(n+1)+∑[A109606(n+1)]+n` -/
def P18237836217711318208.Spec : Prop :=
  ∀ n, P18237836217711318208.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P2403214445925605257

`∑[∑{d}[n+1, A008683(#)*A000124((n+1)/#-1)]]-1`
-/

namespace A100448.P2403214445925605257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A000124 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100448.P2403214445925605257

namespace A100448

/-- `∑[∑{d}[n+1, A008683(#)*A000124((n+1)/#-1)]]-1` -/
def P2403214445925605257.Spec : Prop :=
  ∀ n, P2403214445925605257.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P8260715718939686378

`A015616(n+1)+A018805(n+1)-A002088(n+1)`
-/

namespace A100448.P8260715718939686378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015616 (n + 1) + (A018805 (n + 1) - A002088 (n + 1))

end

end A100448.P8260715718939686378

namespace A100448

/-- `A015616(n+1)+A018805(n+1)-A002088(n+1)` -/
def P8260715718939686378.Spec : Prop :=
  ∀ n, P8260715718939686378.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P534127293014101479

`A048241(n+1)-2*A005728(n+1)`
-/

namespace A100448.P534127293014101479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048241 (n + 1) - 2 * A005728 (n + 1)

end

end A100448.P534127293014101479

namespace A100448

/-- `A048241(n+1)-2*A005728(n+1)` -/
def P534127293014101479.Spec : Prop :=
  ∀ n, P534127293014101479.a n = A100448 (n + 1)

end A100448

/-! ## A100448.P8979058438655627010

`A048134(n+1)-(A005728(n+1)+A002088(n+1))`
-/

namespace A100448.P8979058438655627010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048134 (n + 1) - (A005728 (n + 1) + A002088 (n + 1))

end

end A100448.P8979058438655627010

namespace A100448

/-- `A048134(n+1)-(A005728(n+1)+A002088(n+1))` -/
def P8979058438655627010.Spec : Prop :=
  ∀ n, P8979058438655627010.a n = A100448 (n + 1)

end A100448

/-!
# A100449: Number of ordered pairs (i,j) with |i| + |j| <= n and gcd(i,j) <= 1.

The programs for A100449, the canonical program `A100449.P13498763257578754956` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100449 has offset 0).

The definition of A100449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100449.P13498763257578754956

`1+4*A002088(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A100449

/-- `1+4*A002088(n)` -/
def P13498763257578754956.Spec : Prop :=
  ∀ n, P13498763257578754956.a n = A100449 n

theorem P13498763257578754956.correct : P13498763257578754956.Spec := by
  intro n
  simp only [A100449]

end A100449

/-! ## A100449.P18331469092210610644

`A140466(n)+1`
-/

namespace A100449.P18331469092210610644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n + 1

end

end A100449.P18331469092210610644

namespace A100449

/-- `A140466(n)+1` -/
def P18331469092210610644.Spec : Prop :=
  ∀ n, P18331469092210610644.a n = A100449 n

theorem P18331469092210610644.correct : P18331469092210610644.Spec := by
  intro n
  simp only [A100449, Nat.add_sub_cancel, A100449.P18331469092210610644.a, A100449.P13498763257578754956.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A140466, A140466.P2617124052483112329.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100449

/-! ## A100449.P2911848887845210568

`2*A049696(n)+1`
-/

namespace A100449.P2911848887845210568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049696 n + 1

end

end A100449.P2911848887845210568

namespace A100449

/-- `2*A049696(n)+1` -/
def P2911848887845210568.Spec : Prop :=
  ∀ n, P2911848887845210568.a n = A100449 n

theorem P2911848887845210568.correct : P2911848887845210568.Spec := by
  intro n
  simp only [A100449, Nat.add_sub_cancel, A100449.P2911848887845210568.a, A100449.P13498763257578754956.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A049696, A049696.P12004431397855860570.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100449

/-! ## A100449.P10082168047973213374

`4*A005728(n)-3`
-/

namespace A100449.P10082168047973213374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005728 n - 3

end

end A100449.P10082168047973213374

namespace A100449

/-- `4*A005728(n)-3` -/
def P10082168047973213374.Spec : Prop :=
  ∀ n, P10082168047973213374.a n = A100449 n

theorem P10082168047973213374.correct : P10082168047973213374.Spec := by
  intro n
  simp only [A100449, Nat.add_sub_cancel, A100449.P10082168047973213374.a, A100449.P13498763257578754956.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100449

/-! ## A100449.P17885191378683044928

`a(n-1)+4*A000010(n)` with `a(0)=1`
-/

namespace A100449.P17885191378683044928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * A000010 n

end

end A100449.P17885191378683044928

namespace A100449

/-- `a(n-1)+4*A000010(n)` -/
def P17885191378683044928.Spec : Prop :=
  ∀ n, P17885191378683044928.a n = A100449 n

end A100449

/-! ## A100449.P12350978394383353609

`1-A057428(n)*A140466(n)`
-/

namespace A100449.P12350978394383353609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A140466 n

end

end A100449.P12350978394383353609

namespace A100449

/-- `1-A057428(n)*A140466(n)` -/
def P12350978394383353609.Spec : Prop :=
  ∀ n, P12350978394383353609.a n = A100449 n

end A100449

/-! ## A100449.P202787022315859987

`4*(∑[A000010(n+1)]-A000010(n+1))+1`
-/

namespace A100449.P202787022315859987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A000010 (n + 1)) + 1

end

end A100449.P202787022315859987

namespace A100449

/-- `4*(∑[A000010(n+1)]-A000010(n+1))+1` -/
def P202787022315859987.Spec : Prop :=
  ∀ n, P202787022315859987.a n = A100449 n

end A100449

/-! ## A100449.P8878157922904228941

`A002088(n)+A049696(n)+A005728(n)`
-/

namespace A100449.P8878157922904228941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (A049696 n + A005728 n)

end

end A100449.P8878157922904228941

namespace A100449

/-- `A002088(n)+A049696(n)+A005728(n)` -/
def P8878157922904228941.Spec : Prop :=
  ∀ n, P8878157922904228941.a n = A100449 n

theorem P8878157922904228941.correct : P8878157922904228941.Spec := by
  intro n
  simp only [A100449, Nat.add_sub_cancel, A100449.P8878157922904228941.a, A100449.P13498763257578754956.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A049696, A049696.P12004431397855860570.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100449

/-! ## A100449.P9319015729774249064

`A206350(n+1)+A332681(n+1)-A002321(n+1)`
-/

namespace A100449.P9319015729774249064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1) + (A332681 (n + 1) - A002321 (n + 1))

end

end A100449.P9319015729774249064

namespace A100449

/-- `A206350(n+1)+A332681(n+1)-A002321(n+1)` -/
def P9319015729774249064.Spec : Prop :=
  ∀ n, P9319015729774249064.a n = A100449 n

end A100449

/-! ## A100449.P3483093443497437477

`A206350(n+1)+A049691(n)`
-/

namespace A100449.P3483093443497437477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1) + A049691 n

end

end A100449.P3483093443497437477

namespace A100449

/-- `A206350(n+1)+A049691(n)` -/
def P3483093443497437477.Spec : Prop :=
  ∀ n, P3483093443497437477.a n = A100449 n

end A100449

/-! ## A100449.P200247396865843693

`2*A049691(n)-A158388(n)`
-/

namespace A100449.P200247396865843693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049691 n - A158388 n

end

end A100449.P200247396865843693

namespace A100449

/-- `2*A049691(n)-A158388(n)` -/
def P200247396865843693.Spec : Prop :=
  ∀ n, P200247396865843693.a n = A100449 n

end A100449

/-! ## A100449.P5206055686151558357

`abs(3-2*A049632(n))`
-/

namespace A100449.P5206055686151558357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 2 * A049632 n|

end

end A100449.P5206055686151558357

namespace A100449

/-- `abs(3-2*A049632(n))` -/
def P5206055686151558357.Spec : Prop :=
  ∀ n, P5206055686151558357.a n = A100449 n

end A100449

/-! ## A100449.P4639238311717857214

`or(1, A171503(n)+1)`
-/

namespace A100449.P4639238311717857214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171503 n + 1)

end

end A100449.P4639238311717857214

namespace A100449

/-- `or(1, A171503(n)+1)` -/
def P4639238311717857214.Spec : Prop :=
  ∀ n, P4639238311717857214.a n = A100449 n

end A100449

/-! ## A100449.P10528660460407122858

`A171503(n)+A036453(n+1)`
-/

namespace A100449.P10528660460407122858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + A036453 (n + 1)

end

end A100449.P10528660460407122858

namespace A100449

/-- `A171503(n)+A036453(n+1)` -/
def P10528660460407122858.Spec : Prop :=
  ∀ n, P10528660460407122858.a n = A100449 n

end A100449

/-! ## A100449.P2002134472960018969

`A057427(n)+A171503(n)+1`
-/

namespace A100449.P2002134472960018969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A171503 n + 1)

end

end A100449.P2002134472960018969

namespace A100449

/-- `A057427(n)+A171503(n)+1` -/
def P2002134472960018969.Spec : Prop :=
  ∀ n, P2002134472960018969.a n = A100449 n

end A100449

/-! ## A100449.P17789665878457657406

`A171503(n)+1-A057428(n)`
-/

namespace A100449.P17789665878457657406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + (1 - A057428 n)

end

end A100449.P17789665878457657406

namespace A100449

/-- `A171503(n)+1-A057428(n)` -/
def P17789665878457657406.Spec : Prop :=
  ∀ n, P17789665878457657406.a n = A100449 n

end A100449

/-! ## A100449.P6917961672489936423

`A171503(n)+2-A000007(n)`
-/

namespace A100449.P6917961672489936423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + (2 - A000007 n)

end

end A100449.P6917961672489936423

namespace A100449

/-- `A171503(n)+2-A000007(n)` -/
def P6917961672489936423.Spec : Prop :=
  ∀ n, P6917961672489936423.a n = A100449 n

end A100449

/-! ## A100449.P8087497515375371180

`A171503(n)+A020639(A000010(n+2))`
-/

namespace A100449.P8087497515375371180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171503 n + A020639 (A000010 (n + 2)).toNat

end

end A100449.P8087497515375371180

namespace A100449

/-- `A171503(n)+A020639(A000010(n+2))` -/
def P8087497515375371180.Spec : Prop :=
  ∀ n, P8087497515375371180.a n = A100449 n

end A100449

/-! ## A100449.P7763202181187633291

`2*A206297(n+1)-1`
-/

namespace A100449.P7763202181187633291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206297 (n + 1) - 1

end

end A100449.P7763202181187633291

namespace A100449

/-- `2*A206297(n+1)-1` -/
def P7763202181187633291.Spec : Prop :=
  ∀ n, P7763202181187633291.a n = A100449 n

end A100449

/-!
# A100450: Number of ordered triples (i,j,k) with |i| + |j| + |k| <= n and gcd(i,j,k) <= 1.

The programs for A100450, the canonical program `A100450.P9268367360250409235` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100450 has offset 0).

The definition of A100450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100450.P9268367360250409235

`A122553(n)+4*A321879(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A100450

/-- `A122553(n)+4*A321879(n)` -/
def P9268367360250409235.Spec : Prop :=
  ∀ n, P9268367360250409235.a n = A100450 n

theorem P9268367360250409235.correct : P9268367360250409235.Spec := by
  intro n
  simp only [A100450]

end A100450

/-! ## A100450.P8285424250378167357

`A158388(n)+A016825(A321879(n))`
-/

namespace A100450.P8285424250378167357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A016825 (A321879 n).toNat

end

end A100450.P8285424250378167357

namespace A100450

/-- `A158388(n)+A016825(A321879(n))` -/
def P8285424250378167357.Spec : Prop :=
  ∀ n, P8285424250378167357.a n = A100450 n

end A100450

/-! ## A100450.P18090345010493163104

`A016825(A321879(n))-A140253(C(2, n+2))`
-/

namespace A100450.P18090345010493163104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A321879 n).toNat - A140253 (Nat.choose 2 (n + 2))

end

end A100450.P18090345010493163104

namespace A100450

/-- `A016825(A321879(n))-A140253(C(2, n+2))` -/
def P18090345010493163104.Spec : Prop :=
  ∀ n, P18090345010493163104.a n = A100450 n

end A100450

/-! ## A100450.P18126419854597453194

`A033999(A004277(n))+A016825(A321879(n))`
-/

namespace A100450.P18126419854597453194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004277 n).toNat + A016825 (A321879 n).toNat

end

end A100450.P18126419854597453194

namespace A100450

/-- `A033999(A004277(n))+A016825(A321879(n))` -/
def P18126419854597453194.Spec : Prop :=
  ∀ n, P18126419854597453194.a n = A100450 n

end A100450

/-! ## A100450.P8306877335737378030

`A016825(A321879(n))-A008683(A008578(n+1))`
-/

namespace A100450.P8306877335737378030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A321879 n).toNat - A008683 (A008578 (n + 1)).toNat

end

end A100450.P8306877335737378030

namespace A100450

/-- `A016825(A321879(n))-A008683(A008578(n+1))` -/
def P8306877335737378030.Spec : Prop :=
  ∀ n, P8306877335737378030.a n = A100450 n

end A100450

/-!
# A100451: a(n) = 0 for n <= 2; for n >= 3, a(n) = (n-2)*floor((n^2-2)/(n-2)).

The programs for A100451, the canonical program `A100451.P8102033930993771668` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100451 has offset 1).

The definition of A100451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100451.P8102033930993771668

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=14, a(4)=21, a(5)=32, a(6)=45`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100451

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8102033930993771668.Spec : Prop :=
  ∀ n, P8102033930993771668.a n = A100451 (n + 1)

theorem P8102033930993771668.correct : P8102033930993771668.Spec := by
  intro n
  simp only [A100451, Nat.add_sub_cancel]

end A100451

/-! ## A100451.P4364179521849208898

`A164005((n-1)%(n+1))`
-/

namespace A100451.P4364179521849208898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164005 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A100451.P4364179521849208898

namespace A100451

/-- `A164005((n-1)%(n+1))` -/
def P4364179521849208898.Spec : Prop :=
  ∀ n, P4364179521849208898.a n = A100451 (n + 1)

end A100451

/-! ## A100451.P6773440047972995101

`A164005(floor(n*n/(n+1)))`
-/

namespace A100451.P6773440047972995101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164005 ⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋.toNat

end

end A100451.P6773440047972995101

namespace A100451

/-- `A164005(floor(n*n/(n+1)))` -/
def P6773440047972995101.Spec : Prop :=
  ∀ n, P6773440047972995101.a n = A100451 (n + 1)

end A100451

/-! ## A100451.P1564241385382532956

`(n+1)²-gcd(4, A306933(A005229(n+2)+1))`
-/

namespace A100451.P1564241385382532956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Int.gcd 4 (A306933 (A005229 (n + 2) + 1).toNat) : ℤ)

end

end A100451.P1564241385382532956

namespace A100451

/-- `(n+1)²-gcd(4, A306933(A005229(n+2)+1))` -/
def P1564241385382532956.Spec : Prop :=
  ∀ n, P1564241385382532956.a n = A100451 (n + 1)

end A100451

/-! ## A100451.P3556455593799004981

`A164005(n-A057427(n))%A100896(2*n)`
-/

namespace A100451.P3556455593799004981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164005 ((n : ℤ) - A057427 n).toNat) (A100896 (2 * n))

end

end A100451.P3556455593799004981

namespace A100451

/-- `A164005(n-A057427(n))%A100896(2*n)` -/
def P3556455593799004981.Spec : Prop :=
  ∀ n, P3556455593799004981.a n = A100451 (n + 1)

end A100451

/-! ## A100451.P2354557553434050618

`A164005(abs(1-n))%A058039(2*n)`
-/

namespace A100451.P2354557553434050618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164005 |1 - (n : ℤ)|.toNat) (A058039 (2 * n))

end

end A100451.P2354557553434050618

namespace A100451

/-- `A164005(abs(1-n))%A058039(2*n)` -/
def P2354557553434050618.Spec : Prop :=
  ∀ n, P2354557553434050618.a n = A100451 (n + 1)

end A100451

/-! ## A100451.P11314855422281144676

`(n+1)²-A138530(∑[n+3])`
-/

namespace A100451.P11314855422281144676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A138530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100451.P11314855422281144676

namespace A100451

/-- `(n+1)²-A138530(∑[n+3])` -/
def P11314855422281144676.Spec : Prop :=
  ∀ n, P11314855422281144676.a n = A100451 (n + 1)

end A100451

/-!
# A100452: Triangle read by rows, based on array described below.

The programs for A100452, there is no canonical definition to state claims against.
-/

/-! ## A100452.P8706866165024380100

`eq[A124780(A006580(n)), A300820(n+1)]`
-/

namespace A100452.P8706866165024380100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124780 (A006580 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100452.P8706866165024380100

/-! ## A100452.P5750808583553867174

`record[gcd(A127372(n+1), A194255(n+1))]`
-/

namespace A100452.P5750808583553867174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127372 (n + 1)) (A194255 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100452.P5750808583553867174

/-! ## A100452.P3644658788721250866

`lt[A006577(A001222(n+4)+1), A352541(3*n+4)]`
-/

namespace A100452.P3644658788721250866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A001222 (n + 4) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100452.P3644658788721250866

/-! ## A100452.P11107975515547448490

`∑[gcd(A076696(n+1), A297519(n+1))]`
-/

namespace A100452.P11107975515547448490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076696 (n + 1)) (A297519 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100452.P11107975515547448490

/-! ## A100452.P1109831454880986872

`∑[A051903(A338855(A104259(n)))]`
-/

namespace A100452.P1109831454880986872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A338855 (A104259 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100452.P1109831454880986872

/-!
# A100453: a(n) = smallest number to appear exactly n times in the array A100452.

The programs for A100453, there is no canonical definition to state claims against.
-/

/-! ## A100453.P17197188786142782503

`A014486(A092098(n+1))-A000010(n+1)`
-/

namespace A100453.P17197188786142782503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A092098 (n + 1)).toNat - A000010 (n + 1)

end

end A100453.P17197188786142782503

/-!
# A100454: a(n) = sum of n-th column in array in A100452.

The programs for A100454, there is no canonical definition to state claims against.
-/

/-! ## A100454.P5561224955019548718

`ceil(sqrt((A038722((3*n²+1)²+2*n)+n)*(n+1)))`
-/

namespace A100454.P5561224955019548718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A038722 ((3 * n ^ 2 + 1) ^ 2 + 2 * n) + (n : ℤ)) * (n + 1 : ℤ) : ℝ)⌉

end

end A100454.P5561224955019548718

/-!
# A100455: a(n) = 2^n + sin(n*Pi/2).

The programs for A100455, the canonical program `A100455.P9517607947655080592` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100455 has offset 0).

The definition of A100455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100455.P1103573485225438896

`2^n+sin(n*π/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100455.P1103573485225438896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + Real.sin ((n : ℝ) * Real.pi / 2)

end

end A100455.P1103573485225438896

namespace A100455

/-- `2^n+sin(n*π/2)` -/
def P1103573485225438896.Spec : Prop :=
  ∀ n, P1103573485225438896.a n = (A100455 n : ℝ)

end A100455

/-! ## A100455.P9517607947655080592

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100455

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P9517607947655080592.Spec : Prop :=
  ∀ n, P9517607947655080592.a n = A100455 n

theorem P9517607947655080592.correct : P9517607947655080592.Spec := by
  intro n
  simp only [A100455]

end A100455

/-! ## A100455.P12745853314717961545

`sin(n*acos(0))+2^n`
-/

namespace A100455.P12745853314717961545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arccos (0 : ℝ)) + (2 ^ n : ℝ)

end

end A100455.P12745853314717961545

namespace A100455

/-- `sin(n*acos(0))+2^n` -/
def P12745853314717961545.Spec : Prop :=
  ∀ n, P12745853314717961545.a n = (A100455 n : ℝ)

end A100455

/-! ## A100455.P5542281933124311440

`sin(n*asin(1))+2^n`
-/

namespace A100455.P5542281933124311440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) + (2 ^ n : ℝ)

end

end A100455.P5542281933124311440

namespace A100455

/-- `sin(n*asin(1))+2^n` -/
def P5542281933124311440.Spec : Prop :=
  ∀ n, P5542281933124311440.a n = (A100455 n : ℝ)

end A100455

/-! ## A100455.P9064382936537074272

`ogf((1+x-x^2)/(1-2x+x^2-2x^3))`
-/

namespace A100455.P9064382936537074272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, 1, -2] n

end

end A100455.P9064382936537074272

namespace A100455

/-- `ogf((1+x-x^2)/(1-2x+x^2-2x^3))` -/
def P9064382936537074272.Spec : Prop :=
  ∀ n, P9064382936537074272.a n = A100455 n

end A100455

/-! ## A100455.P16334781451509649388

`(2-n%4)%2+2^n`
-/

namespace A100455.P16334781451509649388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - ((n % 4 : ℕ) : ℤ)) 2 + (2 ^ n : ℤ)

end

end A100455.P16334781451509649388

namespace A100455

/-- `(2-n%4)%2+2^n` -/
def P16334781451509649388.Spec : Prop :=
  ∀ n, P16334781451509649388.a n = A100455 n

end A100455

/-! ## A100455.P5137243356475513

`∑[floor(2^(n-1))+1-and(2, n)]`
-/

namespace A100455.P5137243356475513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100455.P5137243356475513

namespace A100455

/-- `∑[floor(2^(n-1))+1-and(2, n)]` -/
def P5137243356475513.Spec : Prop :=
  ∀ n, P5137243356475513.a n = A100455 n

end A100455

/-! ## A100455.P2930501397900244302

`2^n-(∑[(-1)^∑[n+1]]+1)`
-/

namespace A100455.P2930501397900244302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100455.P2930501397900244302

namespace A100455

/-- `2^n-(∑[(-1)^∑[n+1]]+1)` -/
def P2930501397900244302.Spec : Prop :=
  ∀ n, P2930501397900244302.a n = A100455 n

end A100455

/-! ## A100455.P841913723780574035

`Δ[A000051(n)-A014695(n+1)]`
-/

namespace A100455.P841913723780574035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A014695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100455.P841913723780574035

namespace A100455

/-- `Δ[A000051(n)-A014695(n+1)]` -/
def P841913723780574035.Spec : Prop :=
  ∀ n, P841913723780574035.a n = A100455 n

end A100455

/-! ## A100455.P12298455915981313278

`A267036(n)/A007679(n+1)`
-/

namespace A100455.P12298455915981313278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267036 n : ℚ) / (A007679 (n + 1) : ℚ)

end

end A100455.P12298455915981313278

namespace A100455

/-- `A267036(n)/A007679(n+1)` -/
def P12298455915981313278.Spec : Prop :=
  ∀ n, P12298455915981313278.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P6830584757616390505

`round(A007909(2*n+1)/A007909(n+1))`
-/

namespace A100455.P6830584757616390505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007909 (2 * n + 1) : ℚ) / (A007909 (n + 1) : ℚ))

end

end A100455.P6830584757616390505

namespace A100455

/-- `round(A007909(2*n+1)/A007909(n+1))` -/
def P6830584757616390505.Spec : Prop :=
  ∀ n, P6830584757616390505.a n = A100455 n

end A100455

/-! ## A100455.P1990244452310256440

`(A011782(n+1)²+A009545(2*n))/A011782(n+1)`
-/

namespace A100455.P1990244452310256440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) ^ 2 + A009545 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A100455.P1990244452310256440

namespace A100455

/-- `(A011782(n+1)²+A009545(2*n))/A011782(n+1)` -/
def P1990244452310256440.Spec : Prop :=
  ∀ n, P1990244452310256440.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P2742433815654279619

`(A131577(n+1)²+A009545(2*n))/A131577(n+1)`
-/

namespace A100455.P2742433815654279619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) ^ 2 + A009545 (2 * n) : ℚ) / (A131577 (n + 1) : ℚ)

end

end A100455.P2742433815654279619

namespace A100455

/-- `(A131577(n+1)²+A009545(2*n))/A131577(n+1)` -/
def P2742433815654279619.Spec : Prop :=
  ∀ n, P2742433815654279619.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P9820314753617683196

`(A011782(2*n+1)+A009545(2*n))/A011782(n+1)`
-/

namespace A100455.P9820314753617683196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) + A009545 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A100455.P9820314753617683196

namespace A100455

/-- `(A011782(2*n+1)+A009545(2*n))/A011782(n+1)` -/
def P9820314753617683196.Spec : Prop :=
  ∀ n, P9820314753617683196.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P6058794252104127507

`(A131577(2*n+1)+A009545(2*n))/A131577(n+1)`
-/

namespace A100455.P6058794252104127507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n + 1) + A009545 (2 * n) : ℚ) / (A131577 (n + 1) : ℚ)

end

end A100455.P6058794252104127507

namespace A100455

/-- `(A131577(2*n+1)+A009545(2*n))/A131577(n+1)` -/
def P6058794252104127507.Spec : Prop :=
  ∀ n, P6058794252104127507.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P3063534613683194942

`(A157823(2*n+1)-A009545(2*n))/A157823(n+1)`
-/

namespace A100455.P3063534613683194942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157823 (2 * n + 1) - A009545 (2 * n) : ℚ) / (A157823 (n + 1) : ℚ)

end

end A100455.P3063534613683194942

namespace A100455

/-- `(A157823(2*n+1)-A009545(2*n))/A157823(n+1)` -/
def P3063534613683194942.Spec : Prop :=
  ∀ n, P3063534613683194942.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P2262142192485771296

`(A090132(2*n+1)+2*A000079(n)²)/A000079(n+1)`
-/

namespace A100455.P2262142192485771296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090132 (2 * n + 1) + 2 * A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ)

end

end A100455.P2262142192485771296

namespace A100455

/-- `(A090132(2*n+1)+2*A000079(n)²)/A000079(n+1)` -/
def P2262142192485771296.Spec : Prop :=
  ∀ n, P2262142192485771296.a n = (A100455 n : ℚ)

end A100455

/-! ## A100455.P12963240517159270634

`(A090132(2*n+1)+A000079(2*n+1))/A000079(n+1)`
-/

namespace A100455.P12963240517159270634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090132 (2 * n + 1) + A000079 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A100455.P12963240517159270634

namespace A100455

/-- `(A090132(2*n+1)+A000079(2*n+1))/A000079(n+1)` -/
def P12963240517159270634.Spec : Prop :=
  ∀ n, P12963240517159270634.a n = (A100455 n : ℚ)

end A100455

/-!
# A100456: Values of n for which the decimal number 10...050...01 is an n-digit prime.

The programs for A100456, there is no canonical definition to state claims against.
-/

/-! ## A100456.P13591622164150225470

`2*A171411(n+2)+1`
-/

namespace A100456.P13591622164150225470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171411 (n + 2) + 1

end

end A100456.P13591622164150225470

/-! ## A100456.P15765786325471297483

`A005408(A171411(n+2))`
-/

namespace A100456.P15765786325471297483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A171411 (n + 2)).toNat

end

end A100456.P15765786325471297483

/-! ## A100456.P13954075451840010190

`A004273(A171411(n+2)+1)`
-/

namespace A100456.P13954075451840010190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A171411 (n + 2) + 1).toNat

end

end A100456.P13954075451840010190

/-! ## A100456.P2145382871028583070

`A004280(A171411(n+2)+2)`
-/

namespace A100456.P2145382871028583070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A171411 (n + 2) + 2).toNat

end

end A100456.P2145382871028583070

/-! ## A100456.P3210090431514671857

`A171411(n+2)+A171411(n+2)+A000005(gcd(n, n+1))`
-/

namespace A100456.P3210090431514671857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171411 (n + 2) + (A171411 (n + 2) + A000005 (Nat.gcd n (n + 1)))

end

end A100456.P3210090431514671857

/-!
# A100457: Values of n for which the decimal number 10...060...01 is an n-digit prime.

The programs for A100457, there is no canonical definition to state claims against.
-/

/-! ## A100457.P6093510348810830496

`2*A171459(n+1)+1`
-/

namespace A100457.P6093510348810830496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171459 (n + 1) + 1

end

end A100457.P6093510348810830496

/-! ## A100457.P10024208217334825672

`A005408(A171459(n+1))`
-/

namespace A100457.P10024208217334825672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A171459 (n + 1)).toNat

end

end A100457.P10024208217334825672

/-! ## A100457.P10039340877460018531

`A004273(A171459(n+1)+1)`
-/

namespace A100457.P10039340877460018531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A171459 (n + 1) + 1).toNat

end

end A100457.P10039340877460018531

/-! ## A100457.P11977835604938365684

`A060747(A171459(n+1)+1)`
-/

namespace A100457.P11977835604938365684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A171459 (n + 1) + 1).toNat

end

end A100457.P11977835604938365684

/-! ## A100457.P9461119071470689256

`A163985(A171459(n+1)+1)`
-/

namespace A100457.P9461119071470689256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A171459 (n + 1) + 1).toNat

end

end A100457.P9461119071470689256

/-!
# A100458: Values of n for which the decimal number 10...080...01 is an n-digit prime.

The programs for A100458, there is no canonical definition to state claims against.
-/

/-! ## A100458.P6579247490089313054

`2*A171514(n+1)+1`
-/

namespace A100458.P6579247490089313054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171514 (n + 1) + 1

end

end A100458.P6579247490089313054

/-! ## A100458.P3778284509418541044

`A016825(A171514(n+1))/2`
-/

namespace A100458.P3778284509418541044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A171514 (n + 1)).toNat : ℚ) / 2

end

end A100458.P3778284509418541044

/-! ## A100458.P11411342011894621474

`A103391(4*A171514(n+1))`
-/

namespace A100458.P11411342011894621474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (4 * A171514 (n + 1)).toNat

end

end A100458.P11411342011894621474

/-! ## A100458.P15115609981299385484

`A005408(A171514(n+1))`
-/

namespace A100458.P15115609981299385484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A171514 (n + 1)).toNat

end

end A100458.P15115609981299385484

/-! ## A100458.P2223674259245179669

`A004273(A171514(n+1)+1)`
-/

namespace A100458.P2223674259245179669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A171514 (n + 1) + 1).toNat

end

end A100458.P2223674259245179669

/-!
# A100461: Triangle read by rows, based on array described below.

The programs for A100461, there is no canonical definition to state claims against.
-/

/-! ## A100461.P12083790723839750748

`A070939(A227322(n)+A000073(n))`
-/

namespace A100461.P12083790723839750748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A227322 n + A000073 n).toNat

end

end A100461.P12083790723839750748

/-! ## A100461.P8092341498880952839

`A279209(A126646(n)+A049777(n+1))`
-/

namespace A100461.P8092341498880952839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A126646 n + A049777 (n + 1)).toNat

end

end A100461.P8092341498880952839

/-! ## A100461.P12419111265523873026

`A005811(abs(A326793(n)-n+1-n)+1)`
-/

namespace A100461.P12419111265523873026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (|A326793 n - (n : ℤ) + 1 - (n : ℤ)| + 1).toNat

end

end A100461.P12419111265523873026

/-! ## A100461.P10217911441588635102

`A329697(A279065(n))+A232089(n)`
-/

namespace A100461.P10217911441588635102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A279065 n).toNat + A232089 n

end

end A100461.P10217911441588635102

/-! ## A100461.P11162805376554168780

`A134021(A059268(n)*A072899(n))`
-/

namespace A100461.P11162805376554168780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A059268 n * A072899 n).toNat

end

end A100461.P11162805376554168780

/-!
# A100462: Leading diagonal of array in A100461.

The programs for A100462, there is no canonical definition to state claims against.
-/

/-! ## A100462.P9573262350103001999

`2^n-A100463(n+1)`
-/

namespace A100462.P9573262350103001999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A100463 (n + 1)

end

end A100462.P9573262350103001999

/-! ## A100462.P4184215316701272068

`abs(A100463(n+1)-A000079(n))`
-/

namespace A100462.P4184215316701272068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100463 (n + 1) - A000079 n|

end

end A100462.P4184215316701272068

/-! ## A100462.P17833958012870702008

`A000051(n)-(A100463(n+1)+1)`
-/

namespace A100462.P17833958012870702008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A100463 (n + 1) + 1)

end

end A100462.P17833958012870702008

/-! ## A100462.P5066271112825528233

`A000225(n)+1-A100463(n+1)`
-/

namespace A100462.P5066271112825528233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A100463 (n + 1))

end

end A100462.P5066271112825528233

/-! ## A100462.P16888844240549265359

`A008683(4*(n+1))-(A100463(n+1)-A000079(n))`
-/

namespace A100462.P16888844240549265359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - (A100463 (n + 1) - A000079 n)

end

end A100462.P16888844240549265359

/-! ## A100462.P7720997566436979599

`A100461(∑[n]+1)`
-/

namespace A100462.P7720997566436979599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100461 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100462.P7720997566436979599

/-!
# A100463: a(n) = 2^(n-1) - A100462(n).

The programs for A100463, there is no canonical definition to state claims against.
-/

/-! ## A100463.P2544072477014089077

`2^n-A100462(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100463.P2544072477014089077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A100462 (n + 1)

end

end A100463.P2544072477014089077

/-! ## A100463.P2445290758077114303

`abs(A100462(n+1)-A000079(n))`
-/

namespace A100463.P2445290758077114303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100462 (n + 1) - A000079 n|

end

end A100463.P2445290758077114303

/-! ## A100463.P14839811680876188393

`and(-A100462(n+1), A000225(n))`
-/

namespace A100463.P14839811680876188393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A100462 (n + 1)) (A000225 n)

end

end A100463.P14839811680876188393

/-! ## A100463.P15655464181742612057

`A000051(n)-(A100462(n+1)+1)`
-/

namespace A100463.P15655464181742612057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A100462 (n + 1) + 1)

end

end A100463.P15655464181742612057

/-! ## A100463.P16442169163662118807

`abs(A100462(n+1)-record[A302030(n+1)])`
-/

namespace A100463.P16442169163662118807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100462 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A100463.P16442169163662118807

/-!
# A100464: Write down the numbers from 3 to infinity. Take next number, M say, that has not been crossed off and cross off all the numbers i*M + 1 for i >= 1. Repeat. The numbers that are left form the sequence.

The programs for A100464, there is no canonical definition to state claims against.
-/

/-! ## A100464.P8241848568732837855

`A262231(n+1)+1`
-/

namespace A100464.P8241848568732837855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262231 (n + 1) + 1

end

end A100464.P8241848568732837855

/-! ## A100464.P10405297388715293837

`A020725(A262231(n+1))`
-/

namespace A100464.P10405297388715293837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A262231 (n + 1)).toNat

end

end A100464.P10405297388715293837

/-! ## A100464.P3942334666108906789

`record[Δ[A123089(n+2)]]`
-/

namespace A100464.P3942334666108906789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123089 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100464.P3942334666108906789

/-! ## A100464.P2045033974435254634

`eq[n+2, A123089(n+1)]+2`
-/

namespace A100464.P2045033974435254634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A100464.P2045033974435254634

/-! ## A100464.P7666369205966756478

`record[A123089(n+3)-A123089(n+2)]`
-/

namespace A100464.P7666369205966756478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123089 (n + 3) - A123089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100464.P7666369205966756478

/-!
# A100466: Semiprimes of special form: sum of an integer k and the k-th semiprime.

The programs for A100466, the canonical program `A100466.P305390697348987703` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100466 has offset 1).

The definition of A100466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100915, A100916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100466.P305390697348987703

`A100915(n+1)+A100916(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A100466

/-- `A100915(n+1)+A100916(n+1)` -/
def P305390697348987703.Spec : Prop :=
  ∀ n, P305390697348987703.a n = A100466 (n + 1)

theorem P305390697348987703.correct : P305390697348987703.Spec := by
  intro n
  simp only [A100466, Nat.add_sub_cancel]

end A100466

/-! ## A100466.P5765781685265280034

`A100493(A100915(n+1))`
-/

namespace A100466.P5765781685265280034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (A100915 (n + 1)).toNat

end

end A100466.P5765781685265280034

namespace A100466

/-- `A100493(A100915(n+1))` -/
def P5765781685265280034.Spec : Prop :=
  ∀ n, P5765781685265280034.a n = A100466 (n + 1)

end A100466

/-! ## A100466.P3776361830625759090

`record[A179312(A100493(n+4))]`
-/

namespace A100466.P3776361830625759090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A100493 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100466.P3776361830625759090

namespace A100466

/-- `record[A179312(A100493(n+4))]` -/
def P3776361830625759090.Spec : Prop :=
  ∀ n, P3776361830625759090.a n = A100466 (n + 1)

end A100466

/-! ## A100466.P12656617756913901365

`filter[A100493(n+1), A064911(#)]`
-/

namespace A100466.P12656617756913901365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A100466.P12656617756913901365

namespace A100466

/-- `filter[A100493(n+1), A064911(#)]` -/
def P12656617756913901365.Spec : Prop :=
  ∀ n, P12656617756913901365.a n = A100466 (n + 1)

end A100466

/-! ## A100466.P12482610178242014394

`∩[A001358(n+1), A100493(n+1)]`
-/

namespace A100466.P12482610178242014394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100466.P12482610178242014394

namespace A100466

/-- `∩[A001358(n+1), A100493(n+1)]` -/
def P12482610178242014394.Spec : Prop :=
  ∀ n, (P12482610178242014394.a n : ℤ) = A100466 (n + 1)

end A100466

/-! ## A100466.P8891525532831900935

`∩[A100493(n+1), A176540(n+1)]`
-/

namespace A100466.P8891525532831900935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100466.P8891525532831900935

namespace A100466

/-- `∩[A100493(n+1), A176540(n+1)]` -/
def P8891525532831900935.Spec : Prop :=
  ∀ n, (P8891525532831900935.a n : ℤ) = A100466 (n + 1)

end A100466

/-! ## A100466.P827072887377814353

`∩[A100493(n+1), A186621(n+1)+1]`
-/

namespace A100466.P827072887377814353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100466.P827072887377814353

namespace A100466

/-- `∩[A100493(n+1), A186621(n+1)+1]` -/
def P827072887377814353.Spec : Prop :=
  ∀ n, (P827072887377814353.a n : ℤ) = A100466 (n + 1)

end A100466

/-! ## A100466.P11738314834197008503

`∩[A088707(n+1)-1, A100493(n+1)]`
-/

namespace A100466.P11738314834197008503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100466.P11738314834197008503

namespace A100466

/-- `∩[A088707(n+1)-1, A100493(n+1)]` -/
def P11738314834197008503.Spec : Prop :=
  ∀ n, (P11738314834197008503.a n : ℤ) = A100466 (n + 1)

end A100466

/-!
# A100467: Semiprimes of special form: sum of a semiprime k and the k-th semiprime.

The programs for A100467, there is no canonical definition to state claims against.
-/

/-! ## A100467.P10585656478978016855

`∩[A001358(n+1), A100493(A001358(n+1))]`
-/

namespace A100467.P10585656478978016855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (A001358 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100467.P10585656478978016855

/-! ## A100467.P10275507375957533316

`∩[A176540(n+1), A100493(A176540(n+1))]`
-/

namespace A100467.P10275507375957533316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (A176540 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100467.P10275507375957533316

/-! ## A100467.P4605829651649789975

`A100493(∩[A100915(n+1), A323644(n+1)])`
-/

namespace A100467.P4605829651649789975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A100467.P4605829651649789975

/-! ## A100467.P1234813389368844143

`A100493(∩[A100915(n+1), A186621(n+1)+1])`
-/

namespace A100467.P1234813389368844143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A100467.P1234813389368844143

/-! ## A100467.P12647222073664848445

`A100493(∩[A088707(n+1)-1, A100915(n+1)])`
-/

namespace A100467.P12647222073664848445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100915 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A100467.P12647222073664848445

/-!
# A100468: Numbers k such that k appears in the decimal representation of 1/k.

The programs for A100468, there is no canonical definition to state claims against.
-/

/-! ## A100468.P3752875541492280224

`∪[A056055(n+1), A219112(n+1)]`
-/

namespace A100468.P3752875541492280224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100468.P3752875541492280224

/-! ## A100468.P1206846209331899186

`∪[A056055(n+1), A257969(n+1)]`
-/

namespace A100468.P1206846209331899186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100468.P1206846209331899186

/-!
# A100470: n appears A055642(n) times (appearances equal number of decimal digits).

The programs for A100470, the canonical program `A100470.P5715799717501174216` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100470 has offset 0).

The definition of A100470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100470.P12090215095719514719

`∑[char[A117804(n+1)]]`
-/

namespace A100470.P12090215095719514719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100470.P12090215095719514719

namespace A100470

/-- `∑[char[A117804(n+1)]]` -/
def P12090215095719514719.Spec : Prop :=
  ∀ n, (P12090215095719514719.a n : ℤ) = A100470 n

end A100470

/-! ## A100470.P5557101672032800019

`∑[char[A055642(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A100470.P5557101672032800019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A055642 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100470.P5557101672032800019

namespace A100470

/-- `∑[char[A055642(n)+a(n-1)]]` -/
def P5557101672032800019.Spec : Prop :=
  ∀ n, (P5557101672032800019.a n : ℤ) = A100470 n

end A100470

/-! ## A100470.P5715799717501174216

`a(n-A055642(a(n-1)))+1` with `a(0)=0`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100470

/-- `a(n-A055642(a(n-1)))+1` -/
def P5715799717501174216.Spec : Prop :=
  ∀ n, (P5715799717501174216.a n : ℤ) = A100470 n

theorem P5715799717501174216.correct : P5715799717501174216.Spec := by
  intro n
  simp only [A100470]

end A100470

/-! ## A100470.P15830471794546394871

`A389648(A374011(n+1))`
-/

namespace A100470.P15830471794546394871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389648 (A374011 (n + 1)).toNat

end

end A100470.P15830471794546394871

namespace A100470

/-- `A389648(A374011(n+1))` -/
def P15830471794546394871.Spec : Prop :=
  ∀ n, P15830471794546394871.a n = A100470 n

end A100470

/-!
# A100471: Number of integer partitions of n whose sequence of frequencies is strictly increasing.

The programs for A100471, there is no canonical definition to state claims against.
-/

/-! ## A100471.P17235851333876097306

`A259361(Δ[A005297(n+2)])`
-/

namespace A100471.P17235851333876097306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (f1 (n + 1) - f1 n).toNat

end

end A100471.P17235851333876097306

/-! ## A100471.P1085697164680074405

`Δ[A008638(A077168(n))]-A026816(n)`
-/

namespace A100471.P1085697164680074405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026816 n

end

end A100471.P1085697164680074405

/-! ## A100471.P2340101029744984920

`Δ[A008638(A077168(n))]-A326590(n)`
-/

namespace A100471.P2340101029744984920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326590 n

end

end A100471.P2340101029744984920

/-! ## A100471.P18193253810532862754

`Δ[A008638(A077168(n))]-A326592(n)`
-/

namespace A100471.P18193253810532862754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326592 n

end

end A100471.P18193253810532862754

/-!
# A100472: Inverse modulo 2 modulo transform of 9^n.

The programs for A100472, there is no canonical definition to state claims against.
-/

/-! ## A100472.P15693673633253408965

`A100736(2*n)`
-/

namespace A100472.P15693673633253408965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100736 (2 * n)

end

end A100472.P15693673633253408965

/-! ## A100472.P10744600088380983690

`A100736(Δ[n²])/2`
-/

namespace A100472.P10744600088380983690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A100472.P10744600088380983690

/-! ## A100472.P15568345421094060796

`record[A100736(floor(n/(n%2+1)))]`
-/

namespace A100472.P15568345421094060796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100736 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100472.P15568345421094060796

/-! ## A100472.P15604061115433326101

`record[A100736(A014681(n))]`
-/

namespace A100472.P15604061115433326101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100736 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100472.P15604061115433326101

/-! ## A100472.P641714202034843003

`record[A100736(log2(A084623(n+1)))]`
-/

namespace A100472.P641714202034843003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100736 (SequenceMachineLib.roundAway (Real.logb 2 (A084623 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100472.P641714202034843003

/-!
# A100473: Numbers k such that 9*10^k + R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A100473, there is no canonical definition to state claims against.
-/

/-! ## A100473.P7454567645681770144

`A100999(n+1)+1`
-/

namespace A100473.P7454567645681770144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100999 (n + 1) + 1

end

end A100473.P7454567645681770144

/-! ## A100473.P4068698758215234078

`A004442(A100999(n+1))`
-/

namespace A100473.P4068698758215234078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A100999 (n + 1)).toNat

end

end A100473.P4068698758215234078

/-! ## A100473.P4065064234738162081

`or(1, A100999(A077168(n)))`
-/

namespace A100473.P4065064234738162081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100999 (A077168 n).toNat)

end

end A100473.P4065064234738162081

/-! ## A100473.P5258970683550225819

`or(1, A100999(A291769(n)))`
-/

namespace A100473.P5258970683550225819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100999 (A291769 n).toNat)

end

end A100473.P5258970683550225819

/-! ## A100473.P343126108317564694

`record[or(1, A100999(A000121(n)))]`
-/

namespace A100473.P343126108317564694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100999 (A000121 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100473.P343126108317564694

/-!
# A100475: Prime-th recurrence with reversal at each step.

The programs for A100475, there is no canonical definition to state claims against.
-/

/-! ## A100475.P14345812381022581919

`A004087(a(n-1))` with `a(0)=1`
-/

namespace A100475.P14345812381022581919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004087 (a (n - 1)).toNat

end

end A100475.P14345812381022581919

/-! ## A100475.P2110249622610268829

`record[A004087(a(A035327(n)))]` with `a(0)=1`
-/

namespace A100475.P2110249622610268829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004087 (f1 (A035327 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100475.P2110249622610268829

/-! ## A100475.P6857830901854474530

`record[A004087(a(A080465(n)))]` with `a(0)=1`
-/

namespace A100475.P6857830901854474530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004087 (f1 (A080465 (n + 10)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100475.P6857830901854474530

/-! ## A100475.P8835549655597731470

`record[A004087(a(A277894(n)))]` with `a(0)=1`
-/

namespace A100475.P8835549655597731470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004087 (f1 (A277894 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100475.P8835549655597731470

/-! ## A100475.P1070916719146365994

`record[A004087(a(A330734(n)))]` with `a(0)=1`
-/

namespace A100475.P1070916719146365994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004087 (f1 (A330734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100475.P1070916719146365994

/-!
# A100476: a(n) = A000720(Sum_{j=1..4} a(n-j)) with a(1)=a(2)=a(3)=a(4)=1.

The programs for A100476, the canonical program `A100476.P17529744118180814136` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100476 has offset 1).

The definition of A100476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100476.P17529744118180814136

`A000720(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100476

/-- `A000720(a(n-1)+a(n-2)+a(n-3)+a(n-4))` -/
def P17529744118180814136.Spec : Prop :=
  ∀ n, P17529744118180814136.a n = A100476 (n + 1)

theorem P17529744118180814136.correct : P17529744118180814136.Spec := by
  intro n
  simp only [A100476, Nat.add_sub_cancel]

end A100476

/-!
# A100477: a(n) = 3*a(n-1) + 2*a(n-2) + a(n-3) if n>=3, otherwise a(n) = n.

The programs for A100477, the canonical program `A100477.P3838154944413729847` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100477 has offset 0).

The definition of A100477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)+a(n-3)` (program `A100477.P3838154944413729847`, by `A100477.P3838154944413729847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100477.P3838154944413729847

`3*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100477

/-- `3*a(n-1)+2*a(n-2)+a(n-3)` -/
def P3838154944413729847.Spec : Prop :=
  ∀ n, (P3838154944413729847.a n : ℤ) = A100477 n

theorem P3838154944413729847.correct : P3838154944413729847.Spec := by
  intro n
  simp only [A100477]

end A100477

/-! ## A100477.P862806744784478272

`ogf((-x+x^2)/(-1+3x+2x^2+x^3))`
-/

namespace A100477.P862806744784478272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, -2, -1] n

end

end A100477.P862806744784478272

namespace A100477

/-- `ogf((-x+x^2)/(-1+3x+2x^2+x^3))` -/
def P862806744784478272.Spec : Prop :=
  ∀ n, P862806744784478272.a n = A100477 n

end A100477

/-! ## A100477.P3068503560120630508

`∑[A108136(n+1)]-1`
-/

namespace A100477.P3068503560120630508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A100477.P3068503560120630508

namespace A100477

/-- `∑[A108136(n+1)]-1` -/
def P3068503560120630508.Spec : Prop :=
  ∀ n, P3068503560120630508.a n = A100477 n

end A100477

/-! ## A100477.P16317050253652227556

`∑[A057427(n)*A108136(n+1)]`
-/

namespace A100477.P16317050253652227556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A108136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100477.P16317050253652227556

namespace A100477

/-- `∑[A057427(n)*A108136(n+1)]` -/
def P16317050253652227556.Spec : Prop :=
  ∀ n, P16317050253652227556.a n = A100477 n

end A100477

/-! ## A100477.P567606597327027941

`∑[xor(A000007(n), A108136(n+1))]`
-/

namespace A100477.P567606597327027941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A108136 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100477.P567606597327027941

namespace A100477

/-- `∑[xor(A000007(n), A108136(n+1))]` -/
def P567606597327027941.Spec : Prop :=
  ∀ n, P567606597327027941.a n = A100477 n

end A100477

/-! ## A100477.P34046302133514921

`record[Δ[A108153(floor(n/2))]]`
-/

namespace A100477.P34046302133514921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100477.P34046302133514921

namespace A100477

/-- `record[Δ[A108153(floor(n/2))]]` -/
def P34046302133514921.Spec : Prop :=
  ∀ n, P34046302133514921.a n = A100477 n

end A100477

/-! ## A100477.P9502480858105220395

`A070207(n)-A108136(n+1)`
-/

namespace A100477.P9502480858105220395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070207 n - A108136 (n + 1)

end

end A100477.P9502480858105220395

namespace A100477

/-- `A070207(n)-A108136(n+1)` -/
def P9502480858105220395.Spec : Prop :=
  ∀ n, P9502480858105220395.a n = A100477 n

end A100477

/-! ## A100477.P16214702625037044240

`Δ[A108153(n)]-A108136(n+2)`
-/

namespace A100477.P16214702625037044240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A108136 (n + 2)

end

end A100477.P16214702625037044240

namespace A100477

/-- `Δ[A108153(n)]-A108136(n+2)` -/
def P16214702625037044240.Spec : Prop :=
  ∀ n, P16214702625037044240.a n = A100477 n

end A100477

/-! ## A100477.P10604061632370110189

`A108153(n+1)-(A108152(n+1)+A108152(n))`
-/

namespace A100477.P10604061632370110189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 (n + 1) - (A108152 (n + 1) + A108152 n)

end

end A100477.P10604061632370110189

namespace A100477

/-- `A108153(n+1)-(A108152(n+1)+A108152(n))` -/
def P10604061632370110189.Spec : Prop :=
  ∀ n, P10604061632370110189.a n = A100477 n

end A100477

/-! ## A100477.P14488681746182269767

`A108153(n+1)-(A108153(n)+A108136(n+2))`
-/

namespace A100477.P14488681746182269767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 (n + 1) - (A108153 n + A108136 (n + 2))

end

end A100477.P14488681746182269767

namespace A100477

/-- `A108153(n+1)-(A108153(n)+A108136(n+2))` -/
def P14488681746182269767.Spec : Prop :=
  ∀ n, P14488681746182269767.a n = A100477 n

end A100477

/-! ## A100477.P17869431309447431854

`∑[A108136(n+1)%A000302(n)]`
-/

namespace A100477.P17869431309447431854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108136 (n + 1)) (A000302 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100477.P17869431309447431854

namespace A100477

/-- `∑[A108136(n+1)%A000302(n)]` -/
def P17869431309447431854.Spec : Prop :=
  ∀ n, P17869431309447431854.a n = A100477 n

end A100477

/-!
# A100478: Pentanacci pi function: a(1)=a(2)=a(3)=a(4)=a(5)=1; for n>5, a(n) = pi(Sum_{j=1..5} a(n-j)) where pi = A000720.

The programs for A100478, the canonical program `A100478.P5770263142501456085` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100478 has offset 1).

The definition of A100478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100478.P5770263142501456085

`A000720(a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100478

/-- `A000720(a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5))` -/
def P5770263142501456085.Spec : Prop :=
  ∀ n, P5770263142501456085.a n = A100478 (n + 1)

theorem P5770263142501456085.correct : P5770263142501456085.Spec := by
  intro n
  simp only [A100478, Nat.add_sub_cancel]

end A100478

/-!
# A100479: a(n) = prime(2n-1) + prime(2n).

The programs for A100479, the canonical program `A100479.P2671842593850112912` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100479 has offset 1).

The definition of A100479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)-1)+A000040(2*(n+1))` (program `A100479.P2671842593850112912`, by `A100479.P2671842593850112912.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100479.P8631063086750306693

`A031368(n+1)+A031215(n+1)`
-/

namespace A100479.P8631063086750306693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + A031215 (n + 1)

end

end A100479.P8631063086750306693

namespace A100479

/-- `A031368(n+1)+A031215(n+1)` -/
def P8631063086750306693.Spec : Prop :=
  ∀ n, P8631063086750306693.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P528344171557188665

`A001043(2*n+1)`
-/

namespace A100479.P528344171557188665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * n + 1)

end

end A100479.P528344171557188665

namespace A100479

/-- `A001043(2*n+1)` -/
def P528344171557188665.Spec : Prop :=
  ∀ n, P528344171557188665.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P2671842593850112912

`A000040(2*(n+1)-1)+A000040(2*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100479

/-- `A000040(2*(n+1)-1)+A000040(2*(n+1))` -/
def P2671842593850112912.Spec : Prop :=
  ∀ n, P2671842593850112912.a n = A100479 (n + 1)

theorem P2671842593850112912.correct : P2671842593850112912.Spec := by
  intro n
  simp only [A100479, Nat.add_sub_cancel]

end A100479

/-! ## A100479.P895213221475908321

`Δ[A109722(n)]`
-/

namespace A100479.P895213221475908321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100479.P895213221475908321

namespace A100479

/-- `Δ[A109722(n)]` -/
def P895213221475908321.Spec : Prop :=
  ∀ n, P895213221475908321.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P6003865055021680867

`Δ[A007504(2*n)]`
-/

namespace A100479.P6003865055021680867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100479.P6003865055021680867

namespace A100479

/-- `Δ[A007504(2*n)]` -/
def P6003865055021680867.Spec : Prop :=
  ∀ n, P6003865055021680867.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P13872836780791037932

`ceil(2*sqrt(A089581(n+1)))`
-/

namespace A100479.P13872836780791037932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A089581 (n + 1) : ℝ)⌉

end

end A100479.P13872836780791037932

namespace A100479

/-- `ceil(2*sqrt(A089581(n+1)))` -/
def P13872836780791037932.Spec : Prop :=
  ∀ n, P13872836780791037932.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P8558701218286441714

`A060192(n)+A060191(n)`
-/

namespace A100479.P8558701218286441714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n + A060191 n

end

end A100479.P8558701218286441714

namespace A100479

/-- `A060192(n)+A060191(n)` -/
def P8558701218286441714.Spec : Prop :=
  ∀ n, P8558701218286441714.a n = A100479 (n + 1)

theorem P8558701218286441714.correct : P8558701218286441714.Spec := by
  intro n
  simp only [A100479, Nat.add_sub_cancel, A100479.P8558701218286441714.a, A100479.P2671842593850112912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A060191, A060191.P13050475962778099044.f1, A060191.P13050475962778099044.f2, A060191.P13050475962778099044.a, A060192, A060192.P8871710138267274484.a, A031337, A031337.P9914527934000565798.a, A031385, A031385.P15452940551572154078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100479

/-! ## A100479.P9406727907243895965

`abs(Δ[A007504(A005843(n))])`
-/

namespace A100479.P9406727907243895965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100479.P9406727907243895965

namespace A100479

/-- `abs(Δ[A007504(A005843(n))])` -/
def P9406727907243895965.Spec : Prop :=
  ∀ n, P9406727907243895965.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P14499987441561085689

`A109722(n+1)-A109722(n)`
-/

namespace A100479.P14499987441561085689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (n + 1) - A109722 n

end

end A100479.P14499987441561085689

namespace A100479

/-- `A109722(n+1)-A109722(n)` -/
def P14499987441561085689.Spec : Prop :=
  ∀ n, P14499987441561085689.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P18362084711351679107

`A092163(n+1)-A155067(n+1)`
-/

namespace A100479.P18362084711351679107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A155067 (n + 1)

end

end A100479.P18362084711351679107

namespace A100479

/-- `A092163(n+1)-A155067(n+1)` -/
def P18362084711351679107.Spec : Prop :=
  ∀ n, P18362084711351679107.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P3848246362005676906

`A345071(n+1)-A088680(n+1)`
-/

namespace A100479.P3848246362005676906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345071 (n + 1) - A088680 (n + 1)

end

end A100479.P3848246362005676906

namespace A100479

/-- `A345071(n+1)-A088680(n+1)` -/
def P3848246362005676906.Spec : Prop :=
  ∀ n, P3848246362005676906.a n = A100479 (n + 1)

theorem P3848246362005676906.correct : P3848246362005676906.Spec := by
  intro n
  simp only [A100479, Nat.add_sub_cancel, A100479.P3848246362005676906.a, A100479.P2671842593850112912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A088680, A088680.P2200563258996376312.a, A345071, A345071.P17369145219068528899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100479

/-! ## A100479.P2834822649298414277

`A007504(2*(n+1))-A007504(2*n)`
-/

namespace A100479.P2834822649298414277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * (n + 1)) - A007504 (2 * n)

end

end A100479.P2834822649298414277

namespace A100479

/-- `A007504(2*(n+1))-A007504(2*n)` -/
def P2834822649298414277.Spec : Prop :=
  ∀ n, P2834822649298414277.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P11900897023262981530

`A011974(2*(n+1))`
-/

namespace A100479.P11900897023262981530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (2 * (n + 1))

end

end A100479.P11900897023262981530

namespace A100479

/-- `A011974(2*(n+1))` -/
def P11900897023262981530.Spec : Prop :=
  ∀ n, P11900897023262981530.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P6349449676713233918

`A092949(Δ[n²])-1`
-/

namespace A100479.P6349449676713233918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A100479.P6349449676713233918

namespace A100479

/-- `A092949(Δ[n²])-1` -/
def P6349449676713233918.Spec : Prop :=
  ∀ n, P6349449676713233918.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P15411093595574850607

`record[Δ[A273960(n+1)]]`
-/

namespace A100479.P15411093595574850607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100479.P15411093595574850607

namespace A100479

/-- `record[Δ[A273960(n+1)]]` -/
def P15411093595574850607.Spec : Prop :=
  ∀ n, P15411093595574850607.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P17358518453192247420

`floor(sqrt(2*A048851(2*(n+1))))`
-/

namespace A100479.P17358518453192247420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A048851 (2 * (n + 1)))

end

end A100479.P17358518453192247420

namespace A100479

/-- `floor(sqrt(2*A048851(2*(n+1))))` -/
def P17358518453192247420.Spec : Prop :=
  ∀ n, P17358518453192247420.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P10917062633644366147

`record[A001043(A000265(n+1))]`
-/

namespace A100479.P10917062633644366147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100479.P10917062633644366147

namespace A100479

/-- `record[A001043(A000265(n+1))]` -/
def P10917062633644366147.Spec : Prop :=
  ∀ n, P10917062633644366147.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P10565450967567778497

`A031215(n+1)+A000040(Δ[n²])`
-/

namespace A100479.P10565450967567778497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100479.P10565450967567778497

namespace A100479

/-- `A031215(n+1)+A000040(Δ[n²])` -/
def P10565450967567778497.Spec : Prop :=
  ∀ n, P10565450967567778497.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P12596015728595842342

`A031368(n+1)+A000040(2*(n+1))`
-/

namespace A100479.P12596015728595842342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + A000040 (2 * (n + 1))

end

end A100479.P12596015728595842342

namespace A100479

/-- `A031368(n+1)+A000040(2*(n+1))` -/
def P12596015728595842342.Spec : Prop :=
  ∀ n, P12596015728595842342.a n = A100479 (n + 1)

end A100479

/-! ## A100479.P1013018215362468958

`A031215(n+1)+A008578(2*(n+1))`
-/

namespace A100479.P1013018215362468958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + A008578 (2 * (n + 1))

end

end A100479.P1013018215362468958

namespace A100479

/-- `A031215(n+1)+A008578(2*(n+1))` -/
def P1013018215362468958.Spec : Prop :=
  ∀ n, P1013018215362468958.a n = A100479 (n + 1)

end A100479

/-!
# A100480: a(1)=1 and, for n>1, a(n) is the smallest positive integer such that the subset S(c) of {1,2,3,...,n} defined by S(c)={k|1<=k<=n; a(k)=c} does not contain a 3-term arithmetic progression for any integer c.

The programs for A100480, there is no canonical definition to state claims against.
-/

/-! ## A100480.P3598810049470665236

`A006997(n)+1`
-/

namespace A100480.P3598810049470665236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n + 1

end

end A100480.P3598810049470665236

/-! ## A100480.P10918299620273075782

`A008619(2*A006997(n))`
-/

namespace A100480.P10918299620273075782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A006997 n).toNat

end

end A100480.P10918299620273075782

/-! ## A100480.P15177736540364774502

`A028242(2*A006997(n))`
-/

namespace A100480.P15177736540364774502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A006997 n).toNat

end

end A100480.P15177736540364774502

/-! ## A100480.P9606763510896070630

`A029579(2*A006997(n))`
-/

namespace A100480.P9606763510896070630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A006997 n).toNat

end

end A100480.P9606763510896070630

/-! ## A100480.P13504319540587991841

`A008611(3*A006997(n))`
-/

namespace A100480.P13504319540587991841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A006997 n).toNat

end

end A100480.P13504319540587991841

/-! ## A100480.P11448416450451495138

`A008620(3*A006997(n))`
-/

namespace A100480.P11448416450451495138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A006997 n).toNat

end

end A100480.P11448416450451495138

/-! ## A100480.P1030179638331957849

`A008612(6*A006997(n))`
-/

namespace A100480.P1030179638331957849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A006997 n).toNat

end

end A100480.P1030179638331957849

/-! ## A100480.P12505912638152391305

`A000005(2^A006997(n))`
-/

namespace A100480.P12505912638152391305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006997 n : ℤ))).toNat

end

end A100480.P12505912638152391305

/-! ## A100480.P9962862832112965912

`A286552(2^A006997(n))`
-/

namespace A100480.P9962862832112965912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006997 n : ℤ))).toNat

end

end A100480.P9962862832112965912

/-! ## A100480.P10855893758726438911

`A001511(2^A006997(n))`
-/

namespace A100480.P10855893758726438911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006997 n : ℤ))).toNat

end

end A100480.P10855893758726438911

/-! ## A100480.P8608171162385411854

`A056792(2^A006997(n))`
-/

namespace A100480.P8608171162385411854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A006997 n : ℤ))).toNat

end

end A100480.P8608171162385411854

/-! ## A100480.P126994128685952644

`A054390(3^A006997(n))`
-/

namespace A100480.P126994128685952644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A006997 n : ℤ))).toNat

end

end A100480.P126994128685952644

/-! ## A100480.P16722364660950528716

`A008619(A268811(3*n+1))+A000038(A087680(n+2))`
-/

namespace A100480.P16722364660950528716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A268811 (3 * n + 1)).toNat + A000038 (A087680 (n + 2)).toNat

end

end A100480.P16722364660950528716

/-! ## A100480.P7055421779679122120

`A001065(A215133(n+1))*A008619(A268811(3*n+1))`
-/

namespace A100480.P7055421779679122120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A215133 (n + 1)).toNat * A008619 (A268811 (3 * n + 1)).toNat

end

end A100480.P7055421779679122120

/-! ## A100480.P3181764899218426003

`A008619(A268811(3*n+1))%A000290(A216145(n+1))`
-/

namespace A100480.P3181764899218426003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A268811 (3 * n + 1)).toNat) (A000290 (A216145 (n + 1)).toNat)

end

end A100480.P3181764899218426003

/-! ## A100480.P10343318126491323951

`A001511(A001359(n+1))*A008619(A268811(3*n+1))`
-/

namespace A100480.P10343318126491323951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001359 (n + 1)).toNat * A008619 (A268811 (3 * n + 1)).toNat

end

end A100480.P10343318126491323951

/-! ## A100480.P18217123914337983135

`A001511(A006512(n+1))*A008619(A268811(3*n+1))`
-/

namespace A100480.P18217123914337983135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006512 (n + 1)).toNat * A008619 (A268811 (3 * n + 1)).toNat

end

end A100480.P18217123914337983135

/-! ## A100480.P376345062243194205

`A008619(A268811(3*n+1))*A010121(A108605(n+1))`
-/

namespace A100480.P376345062243194205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A268811 (3 * n + 1)).toNat * A010121 (A108605 (n + 1)).toNat

end

end A100480.P376345062243194205

/-! ## A100480.P6383392222451309209

`A008619(A268811(3*n+1)%A055688(n+1))`
-/

namespace A100480.P6383392222451309209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A268811 (3 * n + 1)) (A055688 (n + 1))).toNat

end

end A100480.P6383392222451309209

/-! ## A100480.P7747529907014925564

`A008619(A268811(3*n+1))%A102206(n)`
-/

namespace A100480.P7747529907014925564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A268811 (3 * n + 1)).toNat) (A102206 n)

end

end A100480.P7747529907014925564

/-!
# A100481: Greatest prime factor in A095117(n).

The programs for A100481, the canonical program `A100481.P9342611058166189309` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100481 has offset 1).

The definition of A100481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100481.P9342611058166189309

`A006530(n+1+A000720(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100481

/-- `A006530(n+1+A000720(n+1))` -/
def P9342611058166189309.Spec : Prop :=
  ∀ n, P9342611058166189309.a n = A100481 (n + 1)

theorem P9342611058166189309.correct : P9342611058166189309.Spec := by
  intro n
  simp only [A100481, Nat.add_sub_cancel]

end A100481

/-! ## A100481.P5241395477443809673

`A006530(∑[∏{p}[n+1, ceil(#/n)]])`
-/

namespace A100481.P5241395477443809673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈(p : ℚ) / (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100481.P5241395477443809673

namespace A100481

/-- `A006530(∑[∏{p}[n+1, ceil(#/n)]])` -/
def P5241395477443809673.Spec : Prop :=
  ∀ n, P5241395477443809673.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P3522365756553371911

`A006530(∑[∑{e}[n+1, #]!%2]+n)`
-/

namespace A100481.P3522365756553371911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A100481.P3522365756553371911

namespace A100481

/-- `A006530(∑[∑{e}[n+1, #]!%2]+n)` -/
def P3522365756553371911.Spec : Prop :=
  ∀ n, P3522365756553371911.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P4812010605032326675

`A006530(∑[∑{p}[n+1, val(#, n+1)]+1])`
-/

namespace A100481.P4812010605032326675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100481.P4812010605032326675

namespace A100481

/-- `A006530(∑[∑{p}[n+1, val(#, n+1)]+1])` -/
def P4812010605032326675.Spec : Prop :=
  ∀ n, P4812010605032326675.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P13873424896700728739

`A006530(∑[∑{p}[n+1, C(#, n+1)]+1])`
-/

namespace A100481.P13873424896700728739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100481.P13873424896700728739

namespace A100481

/-- `A006530(∑[∑{p}[n+1, C(#, n+1)]+1])` -/
def P13873424896700728739.Spec : Prop :=
  ∀ n, P13873424896700728739.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P3547460630706316279

`A006530(∑[C(2, ∑{e}[n+1, #+1])]+n)`
-/

namespace A100481.P3547460630706316279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A100481.P3547460630706316279

namespace A100481

/-- `A006530(∑[C(2, ∑{e}[n+1, #+1])]+n)` -/
def P3547460630706316279.Spec : Prop :=
  ∀ n, P3547460630706316279.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P9471622265918491906

`A006530(∑[∏{p}[n+1, val(#, n+1)]]+n)`
-/

namespace A100481.P9471622265918491906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A100481.P9471622265918491906

namespace A100481

/-- `A006530(∑[∏{p}[n+1, val(#, n+1)]]+n)` -/
def P9471622265918491906.Spec : Prop :=
  ∀ n, P9471622265918491906.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P12810904409140265920

`A006530(∑[floor(n/(∑{d}[n+1, #]-2))+1])`
-/

namespace A100481.P12810904409140265920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 2 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100481.P12810904409140265920

namespace A100481

/-- `A006530(∑[floor(n/(∑{d}[n+1, #]-2))+1])` -/
def P12810904409140265920.Spec : Prop :=
  ∀ n, P12810904409140265920.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P5139706441136738889

`A006530(∑[floor(n/∏{e}[n+1, n*#])+1])`
-/

namespace A100481.P5139706441136738889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p : ℕ) : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100481.P5139706441136738889

namespace A100481

/-- `A006530(∑[floor(n/∏{e}[n+1, n*#])+1])` -/
def P5139706441136738889.Spec : Prop :=
  ∀ n, P5139706441136738889.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P5491522760884655326

`A006530(A036234(n+1)+n)`
-/

namespace A100481.P5491522760884655326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036234 (n + 1) + (n : ℤ)).toNat

end

end A100481.P5491522760884655326

namespace A100481

/-- `A006530(A036234(n+1)+n)` -/
def P5491522760884655326.Spec : Prop :=
  ∀ n, P5491522760884655326.a n = A100481 (n + 1)

theorem P5491522760884655326.correct : P5491522760884655326.Spec := by
  intro n
  simp only [A100481, Nat.add_sub_cancel, A100481.P5491522760884655326.a, A100481.P9342611058166189309.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006530, A006530.P13372528560459906635.a, A036234, A036234.P2906282677021386800.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100481

/-! ## A100481.P1481204716759897181

`A006530(∑[A010051(n+1)+1])`
-/

namespace A100481.P1481204716759897181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100481.P1481204716759897181

namespace A100481

/-- `A006530(∑[A010051(n+1)+1])` -/
def P1481204716759897181.Spec : Prop :=
  ∀ n, P1481204716759897181.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P2407834303457701345

`A006530(A095117(n+1))`
-/

namespace A100481.P2407834303457701345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095117 (n + 1)).toNat

end

end A100481.P2407834303457701345

namespace A100481

/-- `A006530(A095117(n+1))` -/
def P2407834303457701345.Spec : Prop :=
  ∀ n, P2407834303457701345.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P17522643690961817108

`A006530(A064427(n+2)-1)`
-/

namespace A100481.P17522643690961817108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064427 (n + 2) - 1).toNat

end

end A100481.P17522643690961817108

namespace A100481

/-- `A006530(A064427(n+2)-1)` -/
def P17522643690961817108.Spec : Prop :=
  ∀ n, P17522643690961817108.a n = A100481 (n + 1)

end A100481

/-! ## A100481.P3244462168016394592

`A006530(A390375(A151800(n+1))+n)`
-/

namespace A100481.P3244462168016394592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A390375 (A151800 (n + 1)).toNat + (n : ℤ)).toNat

end

end A100481.P3244462168016394592

namespace A100481

/-- `A006530(A390375(A151800(n+1))+n)` -/
def P3244462168016394592.Spec : Prop :=
  ∀ n, P3244462168016394592.a n = A100481 (n + 1)

end A100481

/-!
# A100482: a(1) = 1 thereafter a(n) = Sum_{k=1..n-1} ceiling(a(n-k)/k).

The programs for A100482, there is no canonical definition to state claims against.
-/

/-! ## A100482.P3976696516620526485

`A235945(n)+A003056(A005773(n))`
-/

namespace A100482.P3976696516620526485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 n + A003056 (A005773 n).toNat

end

end A100482.P3976696516620526485

/-! ## A100482.P14325037114435588363

`A240202(n)+A003056(A005773(n))`
-/

namespace A100482.P14325037114435588363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240202 n + A003056 (A005773 n).toNat

end

end A100482.P14325037114435588363

/-! ## A100482.P13938498496665588871

`A257639(A011782(n)*A196719(n))`
-/

namespace A100482.P13938498496665588871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A011782 n * A196719 n).toNat

end

end A100482.P13938498496665588871

/-! ## A100482.P16329221218905437770

`A276581(or(A011858(n), A052960(n)))`
-/

namespace A100482.P16329221218905437770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Int.lor (A011858 n) (A052960 n)).toNat

end

end A100482.P16329221218905437770

/-! ## A100482.P10871957610946407947

`A276581(or(A052960(n), A098978(n)))`
-/

namespace A100482.P10871957610946407947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Int.lor (A052960 n) (A098978 n)).toNat

end

end A100482.P10871957610946407947

/-!
# A100483: a(1) = 2, thereafter a(n) = Sum_{k=1..n-1} floor(a(n-k)/k).

The programs for A100483, there is no canonical definition to state claims against.
-/

/-! ## A100483.P2683700282598555014

`A202304(A374686(n)+A335562(n+1))`
-/

namespace A100483.P2683700282598555014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A374686 n + A335562 (n + 1)).toNat

end

end A100483.P2683700282598555014

/-! ## A100483.P13980956148826675006

`A002024(A352006(n)+∑[A036619(n)])`
-/

namespace A100483.P13980956148826675006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A352006 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100483.P13980956148826675006

/-! ## A100483.P292243778054493722

`A060775(n+1)+A000194(A001333(n))`
-/

namespace A100483.P292243778054493722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (n + 1) + A000194 (A001333 n).toNat

end

end A100483.P292243778054493722

/-! ## A100483.P14375603047565059832

`A003059(A066574(n+1)+A001333(n))`
-/

namespace A100483.P14375603047565059832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A066574 (n + 1) + A001333 n).toNat

end

end A100483.P14375603047565059832

/-! ## A100483.P3574663074949101051

`A126433(n+1)+A000194(A001333(n))`
-/

namespace A100483.P3574663074949101051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1) + A000194 (A001333 n).toNat

end

end A100483.P3574663074949101051

/-!
# A100484: The primes doubled; even semiprimes.

The programs for A100484, the canonical program `A100484.P9678625670825099636` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100484 has offset 1).

The definition of A100484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100484.P9678625670825099636

`2*A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100484

/-- `2*A000040(n+1)` -/
def P9678625670825099636.Spec : Prop :=
  ∀ n, P9678625670825099636.a n = A100484 (n + 1)

theorem P9678625670825099636.correct : P9678625670825099636.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel]

end A100484

/-! ## A100484.P3538760409602592564

`A001747(n+2)`
-/

namespace A100484.P3538760409602592564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

end

end A100484.P3538760409602592564

namespace A100484

/-- `A001747(n+2)` -/
def P3538760409602592564.Spec : Prop :=
  ∀ n, P3538760409602592564.a n = A100484 (n + 1)

end A100484

/-! ## A100484.P9121212790566042427

`2*p?[a(n-1)+2]` with `a(0)=2, a(1)=1`
-/

namespace A100484.P9121212790566042427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A100484.P9121212790566042427

namespace A100484

/-- `2*p?[a(n-1)+2]` -/
def P9121212790566042427.Spec : Prop :=
  ∀ n, (P9121212790566042427.a n : ℤ) = A100484 (n + 1)

theorem P9121212790566042427.correct : P9121212790566042427.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P9121212790566042427.f1, A100484.P9121212790566042427.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P8492634579913785824

`sqrt(A069262(n+1))`
-/

namespace A100484.P8492634579913785824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ)

end

end A100484.P8492634579913785824

namespace A100484

/-- `sqrt(A069262(n+1))` -/
def P8492634579913785824.Spec : Prop :=
  ∀ n, P8492634579913785824.a n = (A100484 (n + 1) : ℝ)

end A100484

/-! ## A100484.P9960999995814324728

`Δ[2*A007504(n)]`
-/

namespace A100484.P9960999995814324728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100484.P9960999995814324728

namespace A100484

/-- `Δ[2*A007504(n)]` -/
def P9960999995814324728.Spec : Prop :=
  ∀ n, P9960999995814324728.a n = A100484 (n + 1)

end A100484

/-! ## A100484.P9050834886711252470

`A037168(n+1)+2`
-/

namespace A100484.P9050834886711252470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + 2

end

end A100484.P9050834886711252470

namespace A100484

/-- `A037168(n+1)+2` -/
def P9050834886711252470.Spec : Prop :=
  ∀ n, P9050834886711252470.a n = A100484 (n + 1)

theorem P9050834886711252470.correct : P9050834886711252470.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P9050834886711252470.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P15747668230608677223

`A072055(n+1)-1`
-/

namespace A100484.P15747668230608677223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 1

end

end A100484.P15747668230608677223

namespace A100484

/-- `A072055(n+1)-1` -/
def P15747668230608677223.Spec : Prop :=
  ∀ n, P15747668230608677223.a n = A100484 (n + 1)

theorem P15747668230608677223.correct : P15747668230608677223.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P15747668230608677223.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P13119303846182616572

`A089241(n+1)-2`
-/

namespace A100484.P13119303846182616572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 2

end

end A100484.P13119303846182616572

namespace A100484

/-- `A089241(n+1)-2` -/
def P13119303846182616572.Spec : Prop :=
  ∀ n, P13119303846182616572.a n = A100484 (n + 1)

theorem P13119303846182616572.correct : P13119303846182616572.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P13119303846182616572.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P6224183650386973896

`A131426(n+1)+3`
-/

namespace A100484.P6224183650386973896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + 3

end

end A100484.P6224183650386973896

namespace A100484

/-- `A131426(n+1)+3` -/
def P6224183650386973896.Spec : Prop :=
  ∀ n, P6224183650386973896.a n = A100484 (n + 1)

theorem P6224183650386973896.correct : P6224183650386973896.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P6224183650386973896.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P6062065053203617440

`A001749(n+1)/2`
-/

namespace A100484.P6062065053203617440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2

end

end A100484.P6062065053203617440

namespace A100484

/-- `A001749(n+1)/2` -/
def P6062065053203617440.Spec : Prop :=
  ∀ n, P6062065053203617440.a n = (A100484 (n + 1) : ℚ)

theorem P6062065053203617440.correct : P6062065053203617440.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P6062065053203617440.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P1386862822809042115

`A142342(n+1)/5`
-/

namespace A100484.P1386862822809042115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142342 (n + 1) : ℚ) / 5

end

end A100484.P1386862822809042115

namespace A100484

/-- `A142342(n+1)/5` -/
def P1386862822809042115.Spec : Prop :=
  ∀ n, P1386862822809042115.a n = (A100484 (n + 1) : ℚ)

theorem P1386862822809042115.correct : P1386862822809042115.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P1386862822809042115.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A142342, A142342.P5141650117013135676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P8707014085566048779

`2*sqrt(A001248(n+1))`
-/

namespace A100484.P8707014085566048779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A100484.P8707014085566048779

namespace A100484

/-- `2*sqrt(A001248(n+1))` -/
def P8707014085566048779.Spec : Prop :=
  ∀ n, P8707014085566048779.a n = (A100484 (n + 1) : ℝ)

end A100484

/-! ## A100484.P14380667497299161286

`∑[2*A054541(n+1)]`
-/

namespace A100484.P14380667497299161286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100484.P14380667497299161286

namespace A100484

/-- `∑[2*A054541(n+1)]` -/
def P14380667497299161286.Spec : Prop :=
  ∀ n, P14380667497299161286.a n = A100484 (n + 1)

end A100484

/-! ## A100484.P1183736520312062977

`2/3*A001748(n+1)`
-/

namespace A100484.P1183736520312062977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A001748 (n + 1) : ℚ)

end

end A100484.P1183736520312062977

namespace A100484

/-- `2/3*A001748(n+1)` -/
def P1183736520312062977.Spec : Prop :=
  ∀ n, P1183736520312062977.a n = (A100484 (n + 1) : ℚ)

theorem P1183736520312062977.correct : P1183736520312062977.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P1183736520312062977.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P15095812684403868062

`4*A000040(2*n-(n-1))/2`
-/

namespace A100484.P15095812684403868062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2)

end

end A100484.P15095812684403868062

namespace A100484

/-- `4*A000040(2*n-(n-1))/2` -/
def P15095812684403868062.Spec : Prop :=
  ∀ n, P15095812684403868062.a n = (A100484 (n + 1) : ℚ)

end A100484

/-! ## A100484.P18350126940880107044

`A059789(n)+A059788(n+1)`
-/

namespace A100484.P18350126940880107044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059789 n + A059788 (n + 1)

end

end A100484.P18350126940880107044

namespace A100484

/-- `A059789(n)+A059788(n+1)` -/
def P18350126940880107044.Spec : Prop :=
  ∀ n, P18350126940880107044.a n = A100484 (n + 1)

theorem P18350126940880107044.correct : P18350126940880107044.Spec := by
  intro n
  simp only [A100484, Nat.add_sub_cancel, A100484.P18350126940880107044.a, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A059788, A059788.P7916108785684957971.a, A059789, A059789.P935066988113703653.a, A007917, A007917.P1836476777957611455.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100484

/-! ## A100484.P14319629620618506607

`A068396(n+1)+A061227(n)`
-/

namespace A100484.P14319629620618506607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068396 (n + 1) + A061227 n

end

end A100484.P14319629620618506607

namespace A100484

/-- `A068396(n+1)+A061227(n)` -/
def P14319629620618506607.Spec : Prop :=
  ∀ n, P14319629620618506607.a n = A100484 (n + 1)

end A100484

/-! ## A100484.P14214027128935581813

`A166496(n+1)-A054977(n)`
-/

namespace A100484.P14214027128935581813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1) - A054977 n

end

end A100484.P14214027128935581813

namespace A100484

/-- `A166496(n+1)-A054977(n)` -/
def P14214027128935581813.Spec : Prop :=
  ∀ n, P14214027128935581813.a n = A100484 (n + 1)

end A100484

/-! ## A100484.P5105114229073758330

`A153480(n)%A089241(n+1)`
-/

namespace A100484.P5105114229073758330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153480 n) (A089241 (n + 1))

end

end A100484.P5105114229073758330

namespace A100484

/-- `A153480(n)%A089241(n+1)` -/
def P5105114229073758330.Spec : Prop :=
  ∀ n, P5105114229073758330.a n = A100484 (n + 1)

end A100484

/-!
# A100486: a(n) = pi(n) + prime(n).

The programs for A100486, the canonical program `A100486.P14505039985477023089` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100486 has offset 1).

The definition of A100486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+1)+A000040(n+1)` (program `A100486.P14505039985477023089`, by `A100486.P14505039985477023089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100486.P14505039985477023089

`A000720(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100486

/-- `A000720(n+1)+A000040(n+1)` -/
def P14505039985477023089.Spec : Prop :=
  ∀ n, P14505039985477023089.a n = A100486 (n + 1)

theorem P14505039985477023089.correct : P14505039985477023089.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel]

end A100486

/-! ## A100486.P13105929024957999170

`A167180(n+1)+1+n`
-/

namespace A100486.P13105929024957999170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167180 (n + 1) + 1 + (n : ℤ)

end

end A100486.P13105929024957999170

namespace A100486

/-- `A167180(n+1)+1+n` -/
def P13105929024957999170.Spec : Prop :=
  ∀ n, P13105929024957999170.a n = A100486 (n + 1)

theorem P13105929024957999170.correct : P13105929024957999170.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P13105929024957999170.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A167180, A167180.P16080205514212626559.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P1613015866961161828

`A000720(n+1)+Δ[A007504(n)]`
-/

namespace A100486.P1613015866961161828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (f1 (n + 1) - f1 n)

end

end A100486.P1613015866961161828

namespace A100486

/-- `A000720(n+1)+Δ[A007504(n)]` -/
def P1613015866961161828.Spec : Prop :=
  ∀ n, P1613015866961161828.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P4735855641889517448

`A036234(n+1)+A006093(n+1)`
-/

namespace A100486.P4735855641889517448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + A006093 (n + 1)

end

end A100486.P4735855641889517448

namespace A100486

/-- `A036234(n+1)+A006093(n+1)` -/
def P4735855641889517448.Spec : Prop :=
  ∀ n, P4735855641889517448.a n = A100486 (n + 1)

theorem P4735855641889517448.correct : P4735855641889517448.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P4735855641889517448.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P2669271362388483570

`A104192(n+1)+A082515(n+1)`
-/

namespace A100486.P2669271362388483570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) + A082515 (n + 1)

end

end A100486.P2669271362388483570

namespace A100486

/-- `A104192(n+1)+A082515(n+1)` -/
def P2669271362388483570.Spec : Prop :=
  ∀ n, P2669271362388483570.a n = A100486 (n + 1)

theorem P2669271362388483570.correct : P2669271362388483570.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P2669271362388483570.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A082515, A082515.P15614925756413171437.a, A104192, A104192.P13256349872724568781.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P9217526544488071687

`A346180(n+1)+A063084(n+1)`
-/

namespace A100486.P9217526544488071687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346180 (n + 1) + A063084 (n + 1)

end

end A100486.P9217526544488071687

namespace A100486

/-- `A346180(n+1)+A063084(n+1)` -/
def P9217526544488071687.Spec : Prop :=
  ∀ n, P9217526544488071687.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P9732076193932028897

`A014688(n+1)-A062298(n+1)`
-/

namespace A100486.P9732076193932028897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A062298 (n + 1)

end

end A100486.P9732076193932028897

namespace A100486

/-- `A014688(n+1)-A062298(n+1)` -/
def P9732076193932028897.Spec : Prop :=
  ∀ n, P9732076193932028897.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P13363638017956590283

`A095116(n+1)-A065855(n+1)`
-/

namespace A100486.P13363638017956590283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A065855 (n + 1)

end

end A100486.P13363638017956590283

namespace A100486

/-- `A095116(n+1)-A065855(n+1)` -/
def P13363638017956590283.Spec : Prop :=
  ∀ n, P13363638017956590283.a n = A100486 (n + 1)

theorem P13363638017956590283.correct : P13363638017956590283.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P13363638017956590283.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A095116, A095116.P2789422422958858773.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P3502214839611312228

`Δ[A007504(n)]+∑[A010051(n+1)]`
-/

namespace A100486.P3502214839611312228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100486.P3502214839611312228

namespace A100486

/-- `Δ[A007504(n)]+∑[A010051(n+1)]` -/
def P3502214839611312228.Spec : Prop :=
  ∀ n, P3502214839611312228.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P17519006043033489987

`A000720(n+1)+sqrt(A001248(n+1))`
-/

namespace A100486.P17519006043033489987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A100486.P17519006043033489987

namespace A100486

/-- `A000720(n+1)+sqrt(A001248(n+1))` -/
def P17519006043033489987.Spec : Prop :=
  ∀ n, P17519006043033489987.a n = (A100486 (n + 1) : ℝ)

end A100486

/-! ## A100486.P15689558113758068796

`A000040(n+1)+∑[A010051(n+1)]`
-/

namespace A100486.P15689558113758068796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100486.P15689558113758068796

namespace A100486

/-- `A000040(n+1)+∑[A010051(n+1)]` -/
def P15689558113758068796.Spec : Prop :=
  ∀ n, P15689558113758068796.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P18298980307038718777

`A000720(n+1)+∑[A054541(n+1)]`
-/

namespace A100486.P18298980307038718777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100486.P18298980307038718777

namespace A100486

/-- `A000720(n+1)+∑[A054541(n+1)]` -/
def P18298980307038718777.Spec : Prop :=
  ∀ n, P18298980307038718777.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P8566976805090271727

`A000720(n+1)+A006093(n+1)+1`
-/

namespace A100486.P8566976805090271727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A006093 (n + 1) + 1)

end

end A100486.P8566976805090271727

namespace A100486

/-- `A000720(n+1)+A006093(n+1)+1` -/
def P8566976805090271727.Spec : Prop :=
  ∀ n, P8566976805090271727.a n = A100486 (n + 1)

theorem P8566976805090271727.correct : P8566976805090271727.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P8566976805090271727.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P952869193865898532

`A000720(n+1)+A008864(n+1)-1`
-/

namespace A100486.P952869193865898532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A008864 (n + 1) - 1)

end

end A100486.P952869193865898532

namespace A100486

/-- `A000720(n+1)+A008864(n+1)-1` -/
def P952869193865898532.Spec : Prop :=
  ∀ n, P952869193865898532.a n = A100486 (n + 1)

theorem P952869193865898532.correct : P952869193865898532.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P952869193865898532.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P1725869447173532922

`A000040(n+1)+A036234(n+1)-1`
-/

namespace A100486.P1725869447173532922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A036234 (n + 1) - 1)

end

end A100486.P1725869447173532922

namespace A100486

/-- `A000040(n+1)+A036234(n+1)-1` -/
def P1725869447173532922.Spec : Prop :=
  ∀ n, P1725869447173532922.a n = A100486 (n + 1)

theorem P1725869447173532922.correct : P1725869447173532922.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P1725869447173532922.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P5993160169894089765

`2*A000040(n+1)-A111181(n+1)`
-/

namespace A100486.P5993160169894089765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A111181 (n + 1)

end

end A100486.P5993160169894089765

namespace A100486

/-- `2*A000040(n+1)-A111181(n+1)` -/
def P5993160169894089765.Spec : Prop :=
  ∀ n, P5993160169894089765.a n = A100486 (n + 1)

theorem P5993160169894089765.correct : P5993160169894089765.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P5993160169894089765.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A111181, A111181.P943142989482477223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P9296471735435161506

`A000040(n+1)-A065855(n+1)+n`
-/

namespace A100486.P9296471735435161506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065855 (n + 1) + (n : ℤ)

end

end A100486.P9296471735435161506

namespace A100486

/-- `A000040(n+1)-A065855(n+1)+n` -/
def P9296471735435161506.Spec : Prop :=
  ∀ n, P9296471735435161506.a n = A100486 (n + 1)

theorem P9296471735435161506.correct : P9296471735435161506.Spec := by
  intro n
  simp only [A100486, Nat.add_sub_cancel, A100486.P9296471735435161506.a, A100486.P14505039985477023089.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100486

/-! ## A100486.P9831481487267816453

`∑[char[A006093(n+1)]]+A000040(n+1)`
-/

namespace A100486.P9831481487267816453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000040 (n + 1)

end

end A100486.P9831481487267816453

namespace A100486

/-- `∑[char[A006093(n+1)]]+A000040(n+1)` -/
def P9831481487267816453.Spec : Prop :=
  ∀ n, P9831481487267816453.a n = A100486 (n + 1)

end A100486

/-! ## A100486.P5550196905116725282

`A230980(n+1)+A000040(n+1)`
-/

namespace A100486.P5550196905116725282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + A000040 (n + 1)

end

end A100486.P5550196905116725282

namespace A100486

/-- `A230980(n+1)+A000040(n+1)` -/
def P5550196905116725282.Spec : Prop :=
  ∀ n, P5550196905116725282.a n = A100486 (n + 1)

end A100486

/-!
# A100487: Melting point of noble gases in degrees Kelvin.

The programs for A100487, there is no canonical definition to state claims against.
-/

/-! ## A100487.P7918557153841449535

`A360998(n+1)+A308493(A250120(3*n))`
-/

namespace A100487.P7918557153841449535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360998 (n + 1) + A308493 (A250120 (3 * n)).toNat

end

end A100487.P7918557153841449535

/-!
# A100488: Boiling point of noble gases in Kelvin.

The programs for A100488, there is no canonical definition to state claims against.
-/

/-! ## A100488.P1337570900976320778

`A357879(A357870(3*n+4))+A357841(n+1)`
-/

namespace A100488.P1337570900976320778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (A357870 (3 * n + 4)).toNat + A357841 (n + 1)

end

end A100488.P1337570900976320778

/-!
# A100490: Odd numbers ending in {1,3,7,9} that are not primes.

The programs for A100490, the canonical program `A100490.P685113412066562622` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100490 has offset 0).

The definition of A100490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100490.P685113412066562622

`eq[gcd(10, n), A292438(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100490

/-- `eq[gcd(10, n), A292438(n)]` -/
def P685113412066562622.Spec : Prop :=
  ∀ n, (P685113412066562622.a n : ℤ) = A100490 n

theorem P685113412066562622.correct : P685113412066562622.Spec := by
  intro n
  simp only [A100490]

end A100490

/-! ## A100490.P9674350042910038353

`∪[A053795(n+1), A008421(n)]`
-/

namespace A100490.P9674350042910038353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008421 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P9674350042910038353

namespace A100490

/-- `∪[A053795(n+1), A008421(n)]` -/
def P9674350042910038353.Spec : Prop :=
  ∀ n, (P9674350042910038353.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P4497946096584825913

`∪[A014730(n), A053795(n+1)]`
-/

namespace A100490.P4497946096584825913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014730 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P4497946096584825913

namespace A100490

/-- `∪[A014730(n), A053795(n+1)]` -/
def P4497946096584825913.Spec : Prop :=
  ∀ n, (P4497946096584825913.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P1637002861911324829

`∪[A053795(n+1), A016759(n)]`
-/

namespace A100490.P1637002861911324829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P1637002861911324829

namespace A100490

/-- `∪[A053795(n+1), A016759(n)]` -/
def P1637002861911324829.Spec : Prop :=
  ∀ n, (P1637002861911324829.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P8226502358915591516

`∪[A053795(n+1), A016760(n)]`
-/

namespace A100490.P8226502358915591516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P8226502358915591516

namespace A100490

/-- `∪[A053795(n+1), A016760(n)]` -/
def P8226502358915591516.Spec : Prop :=
  ∀ n, (P8226502358915591516.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P6698958626360432108

`∪[A053795(n+1), A017080(n)]`
-/

namespace A100490.P6698958626360432108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P6698958626360432108

namespace A100490

/-- `∪[A053795(n+1), A017080(n)]` -/
def P6698958626360432108.Spec : Prop :=
  ∀ n, (P6698958626360432108.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P14343775819481069555

`∪[A053795(n+1), A017284(n)]`
-/

namespace A100490.P14343775819481069555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P14343775819481069555

namespace A100490

/-- `∪[A053795(n+1), A017284(n)]` -/
def P14343775819481069555.Spec : Prop :=
  ∀ n, (P14343775819481069555.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P12655600454006826228

`∪[A053795(n+1), A102909(n)]`
-/

namespace A100490.P12655600454006826228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P12655600454006826228

namespace A100490

/-- `∪[A053795(n+1), A102909(n)]` -/
def P12655600454006826228.Spec : Prop :=
  ∀ n, (P12655600454006826228.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P4499196174506633335

`∪[A052461(n+1), A053795(n+1)]`
-/

namespace A100490.P4499196174506633335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P4499196174506633335

namespace A100490

/-- `∪[A052461(n+1), A053795(n+1)]` -/
def P4499196174506633335.Spec : Prop :=
  ∀ n, (P4499196174506633335.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P1673473413971526693

`filter[A014076(n+1), A011558(#)]`
-/

namespace A100490.P1673473413971526693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A100490.P1673473413971526693

namespace A100490

/-- `filter[A014076(n+1), A011558(#)]` -/
def P1673473413971526693.Spec : Prop :=
  ∀ n, P1673473413971526693.a n = A100490 n

end A100490

/-! ## A100490.P8392818718140891830

`record[A171435(A045572(n+1))]`
-/

namespace A100490.P8392818718140891830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A045572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100490.P8392818718140891830

namespace A100490

/-- `record[A171435(A045572(n+1))]` -/
def P8392818718140891830.Spec : Prop :=
  ∀ n, P8392818718140891830.a n = A100490 n

end A100490

/-! ## A100490.P14673785953755172296

`filter[A045572(n+1), A005171(#)]`
-/

namespace A100490.P14673785953755172296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A100490.P14673785953755172296

namespace A100490

/-- `filter[A045572(n+1), A005171(#)]` -/
def P14673785953755172296.Spec : Prop :=
  ∀ n, P14673785953755172296.a n = A100490 n

end A100490

/-! ## A100490.P3732995683864229375

`filter[A045572(n+1), A292438(#)]`
-/

namespace A100490.P3732995683864229375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A100490.P3732995683864229375

namespace A100490

/-- `filter[A045572(n+1), A292438(#)]` -/
def P3732995683864229375.Spec : Prop :=
  ∀ n, P3732995683864229375.a n = A100490 n

end A100490

/-! ## A100490.P2952882927560413766

`∩[A018252(n+1), A045572(n+1)]`
-/

namespace A100490.P2952882927560413766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100490.P2952882927560413766

namespace A100490

/-- `∩[A018252(n+1), A045572(n+1)]` -/
def P2952882927560413766.Spec : Prop :=
  ∀ n, (P2952882927560413766.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P11077920377438710819

`filter[A075065(2*n+1), A011558(#)]`
-/

namespace A100490.P11077920377438710819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A100490.P11077920377438710819

namespace A100490

/-- `filter[A075065(2*n+1), A011558(#)]` -/
def P11077920377438710819.Spec : Prop :=
  ∀ n, P11077920377438710819.a n = A100490 n

end A100490

/-! ## A100490.P15550189872564800404

`eq[A010211(n), A292438(n)]`
-/

namespace A100490.P15550189872564800404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100490.P15550189872564800404

namespace A100490

/-- `eq[A010211(n), A292438(n)]` -/
def P15550189872564800404.Spec : Prop :=
  ∀ n, (P15550189872564800404.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P11720525724428615550

`eq[A040453(n), A292438(n)]`
-/

namespace A100490.P11720525724428615550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100490.P11720525724428615550

namespace A100490

/-- `eq[A040453(n), A292438(n)]` -/
def P11720525724428615550.Spec : Prop :=
  ∀ n, (P11720525724428615550.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P13223375910777001566

`eq[A040539(n), A292438(n)]`
-/

namespace A100490.P13223375910777001566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040539 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100490.P13223375910777001566

namespace A100490

/-- `eq[A040539(n), A292438(n)]` -/
def P13223375910777001566.Spec : Prop :=
  ∀ n, (P13223375910777001566.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P8939949896285941861

`eq[A040639(n), A292438(n)]`
-/

namespace A100490.P8939949896285941861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100490.P8939949896285941861

namespace A100490

/-- `eq[A040639(n), A292438(n)]` -/
def P8939949896285941861.Spec : Prop :=
  ∀ n, (P8939949896285941861.a n : ℤ) = A100490 n

end A100490

/-! ## A100490.P11390469896983701109

`eq[A040688(n), A292438(n)]`
-/

namespace A100490.P11390469896983701109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100490.P11390469896983701109

namespace A100490

/-- `eq[A040688(n), A292438(n)]` -/
def P11390469896983701109.Spec : Prop :=
  ∀ n, (P11390469896983701109.a n : ℤ) = A100490 n

end A100490

/-!
# A100491: Periodicity of the reciprocal of the Mersenne numbers (A001348).

The programs for A100491, there is no canonical definition to state claims against.
-/

/-! ## A100491.P9506069256477477845

`A136273(eq[1, ∑{e}[n+1, #]])`
-/

namespace A100491.P9506069256477477845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136273 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100491.P9506069256477477845

/-! ## A100491.P6500387897000434732

`A136273(A006093(n+1))`
-/

namespace A100491.P6500387897000434732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136273 (A006093 (n + 1)).toNat

end

end A100491.P6500387897000434732

/-! ## A100491.P4751434728503450202

`A136273(A039915(n+1))`
-/

namespace A100491.P4751434728503450202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136273 (A039915 (n + 1)).toNat

end

end A100491.P4751434728503450202

/-! ## A100491.P17781382232347123812

`A136273(A075728(n+1))`
-/

namespace A100491.P17781382232347123812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136273 (A075728 (n + 1)).toNat

end

end A100491.P17781382232347123812

/-! ## A100491.P2740333397330797870

`A136273(A249427(n+1))`
-/

namespace A100491.P2740333397330797870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136273 (A249427 (n + 1)).toNat

end

end A100491.P2740333397330797870

/-!
# A100493: a(n) = n + n-th semiprime.

The programs for A100493, the canonical program `A100493.P3342029395979233194` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100493 has offset 1).

The definition of A100493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100493.P13497737584612387662

`n+1+A001358(n+1)`
-/

namespace A100493.P13497737584612387662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001358 (n + 1)

end

end A100493.P13497737584612387662

namespace A100493

/-- `n+1+A001358(n+1)` -/
def P13497737584612387662.Spec : Prop :=
  ∀ n, P13497737584612387662.a n = A100493 (n + 1)

theorem P13497737584612387662.correct : P13497737584612387662.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P13497737584612387662.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A001358, A001358.P632087320844056370.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A088707, A088707.P7291141647877559993.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P11491630481969540495

`A088707(n+1)+n`
-/

namespace A100493.P11491630481969540495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + (n : ℤ)

end

end A100493.P11491630481969540495

namespace A100493

/-- `A088707(n+1)+n` -/
def P11491630481969540495.Spec : Prop :=
  ∀ n, P11491630481969540495.a n = A100493 (n + 1)

theorem P11491630481969540495.correct : P11491630481969540495.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P11491630481969540495.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P17267436591129738437

`A186621(n+1)+2+n`
-/

namespace A100493.P17267436591129738437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 2 + (n : ℤ)

end

end A100493.P17267436591129738437

namespace A100493

/-- `A186621(n+1)+2+n` -/
def P17267436591129738437.Spec : Prop :=
  ∀ n, P17267436591129738437.a n = A100493 (n + 1)

theorem P17267436591129738437.correct : P17267436591129738437.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P17267436591129738437.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A186621, A186621.P5089299060388261365.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P14058031366638634509

`sqrt(A074985(n+1))+1+n`
-/

namespace A100493.P14058031366638634509
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A100493.P14058031366638634509

namespace A100493

/-- `sqrt(A074985(n+1))+1+n` -/
def P14058031366638634509.Spec : Prop :=
  ∀ n, P14058031366638634509.a n = (A100493 (n + 1) : ℝ)

end A100493

/-! ## A100493.P3342029395979233194

`comp[A072000(n+1)+n]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100493

/-- `comp[A072000(n+1)+n]+2` -/
def P3342029395979233194.Spec : Prop :=
  ∀ n, (P3342029395979233194.a n : ℤ) = A100493 (n + 1)

theorem P3342029395979233194.correct : P3342029395979233194.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel]

end A100493

/-! ## A100493.P13170674290583211237

`A175708(n+1)+2*(n+1)`
-/

namespace A100493.P13170674290583211237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + (2 * (n + 1) : ℤ)

end

end A100493.P13170674290583211237

namespace A100493

/-- `A175708(n+1)+2*(n+1)` -/
def P13170674290583211237.Spec : Prop :=
  ∀ n, P13170674290583211237.a n = A100493 (n + 1)

theorem P13170674290583211237.correct : P13170674290583211237.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P13170674290583211237.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P7486630411951371134

`A075818(n+1)/2+n+1`
-/

namespace A100493.P7486630411951371134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A100493.P7486630411951371134

namespace A100493

/-- `A075818(n+1)/2+n+1` -/
def P7486630411951371134.Spec : Prop :=
  ∀ n, P7486630411951371134.a n = (A100493 (n + 1) : ℚ)

theorem P7486630411951371134.correct : P7486630411951371134.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P7486630411951371134.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A075818, A075818.P6886237212657486754.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P4208651456001248922

`n+2+eq[1, A064911(n+1)]`
-/

namespace A100493.P4208651456001248922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100493.P4208651456001248922

namespace A100493

/-- `n+2+eq[1, A064911(n+1)]` -/
def P4208651456001248922.Spec : Prop :=
  ∀ n, (P4208651456001248922.a n : ℤ) = A100493 (n + 1)

end A100493

/-! ## A100493.P5544920967991303314

`eq[2, A001222(n+1)]+2+n`
-/

namespace A100493.P5544920967991303314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A100493.P5544920967991303314

namespace A100493

/-- `eq[2, A001222(n+1)]+2+n` -/
def P5544920967991303314.Spec : Prop :=
  ∀ n, (P5544920967991303314.a n : ℤ) = A100493 (n + 1)

end A100493

/-! ## A100493.P15135844260147239810

`n+2+eq[2, A033273(n+1)]`
-/

namespace A100493.P15135844260147239810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100493.P15135844260147239810

namespace A100493

/-- `n+2+eq[2, A033273(n+1)]` -/
def P15135844260147239810.Spec : Prop :=
  ∀ n, (P15135844260147239810.a n : ℤ) = A100493 (n + 1)

end A100493

/-! ## A100493.P12183291879322680746

`A014688(n+1)-A065870(n+1)`
-/

namespace A100493.P12183291879322680746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A065870 (n + 1)

end

end A100493.P12183291879322680746

namespace A100493

/-- `A014688(n+1)-A065870(n+1)` -/
def P12183291879322680746.Spec : Prop :=
  ∀ n, P12183291879322680746.a n = A100493 (n + 1)

end A100493

/-! ## A100493.P5193626203517931156

`A133796(n+1)-A014689(n+1)`
-/

namespace A100493.P5193626203517931156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A014689 (n + 1)

end

end A100493.P5193626203517931156

namespace A100493

/-- `A133796(n+1)-A014689(n+1)` -/
def P5193626203517931156.Spec : Prop :=
  ∀ n, P5193626203517931156.a n = A100493 (n + 1)

theorem P5193626203517931156.correct : P5193626203517931156.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P5193626203517931156.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A014689, A014689.P6286543075765329050.a, A072000, A072000.P3706059858088101648.a, A133796, A133796.P4942108177998988067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P14450283068787194745

`A075818(n+1)-A175708(n+1)`
-/

namespace A100493.P14450283068787194745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) - A175708 (n + 1)

end

end A100493.P14450283068787194745

namespace A100493

/-- `A075818(n+1)-A175708(n+1)` -/
def P14450283068787194745.Spec : Prop :=
  ∀ n, P14450283068787194745.a n = A100493 (n + 1)

theorem P14450283068787194745.correct : P14450283068787194745.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P14450283068787194745.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A075818, A075818.P6886237212657486754.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P14921323918970105876

`A008864(n+1)-A065870(n+1)+n`
-/

namespace A100493.P14921323918970105876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A065870 (n + 1) + (n : ℤ)

end

end A100493.P14921323918970105876

namespace A100493

/-- `A008864(n+1)-A065870(n+1)+n` -/
def P14921323918970105876.Spec : Prop :=
  ∀ n, P14921323918970105876.a n = A100493 (n + 1)

theorem P14921323918970105876.correct : P14921323918970105876.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P14921323918970105876.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A008864, A008864.P9177617808325052279.a, A065870, A065870.P5166953479567254549.a, A072000, A072000.P3706059858088101648.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P14425503740366600841

`A133796(n+1)-A006093(n+1)+n`
-/

namespace A100493.P14425503740366600841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A006093 (n + 1) + (n : ℤ)

end

end A100493.P14425503740366600841

namespace A100493

/-- `A133796(n+1)-A006093(n+1)+n` -/
def P14425503740366600841.Spec : Prop :=
  ∀ n, P14425503740366600841.a n = A100493 (n + 1)

theorem P14425503740366600841.correct : P14425503740366600841.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P14425503740366600841.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A006093, A006093.P2906174024863549003.a, A072000, A072000.P3706059858088101648.a, A133796, A133796.P4942108177998988067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P11411544365483797863

`A000040(n+1)+n+1-A065870(n+1)`
-/

namespace A100493.P11411544365483797863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((n + 1 : ℤ) - A065870 (n + 1))

end

end A100493.P11411544365483797863

namespace A100493

/-- `A000040(n+1)+n+1-A065870(n+1)` -/
def P11411544365483797863.Spec : Prop :=
  ∀ n, P11411544365483797863.a n = A100493 (n + 1)

theorem P11411544365483797863.correct : P11411544365483797863.Spec := by
  intro n
  simp only [A100493, Nat.add_sub_cancel, A100493.P11411544365483797863.a, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065870, A065870.P5166953479567254549.a, A072000, A072000.P3706059858088101648.a, A001358, A001358.P632087320844056370.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088707, A088707.P7291141647877559993.a, A230595, A230595.P9035268919760195541.a, A008615, A008615.P10410393553474300613.a, A305809, A305809.P1603223688838508842.f1, A305809.P1603223688838508842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100493

/-! ## A100493.P13035968035584972370

`eq[2, A000005((n+1)/A006530(n+1))]+n+2`
-/

namespace A100493.P13035968035584972370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)

end

end A100493.P13035968035584972370

namespace A100493

/-- `eq[2, A000005((n+1)/A006530(n+1))]+n+2` -/
def P13035968035584972370.Spec : Prop :=
  ∀ n, (P13035968035584972370.a n : ℤ) = A100493 (n + 1)

end A100493

/-! ## A100493.P4524290737860521001

`Δ[A110208(n)]+n+1`
-/

namespace A100493.P4524290737860521001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A100493.P4524290737860521001

namespace A100493

/-- `Δ[A110208(n)]+n+1` -/
def P4524290737860521001.Spec : Prop :=
  ∀ n, P4524290737860521001.a n = A100493 (n + 1)

end A100493

/-! ## A100493.P12058572967351993298

`A176540(n+2)+n+1`
-/

namespace A100493.P12058572967351993298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + (n + 1 : ℤ)

end

end A100493.P12058572967351993298

namespace A100493

/-- `A176540(n+2)+n+1` -/
def P12058572967351993298.Spec : Prop :=
  ∀ n, P12058572967351993298.a n = A100493 (n + 1)

end A100493

/-! ## A100493.P11742547956473576272

`A023890(A001358(n+1))+n`
-/

namespace A100493.P11742547956473576272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A001358 (n + 1)).toNat + (n : ℤ)

end

end A100493.P11742547956473576272

namespace A100493

/-- `A023890(A001358(n+1))+n` -/
def P11742547956473576272.Spec : Prop :=
  ∀ n, P11742547956473576272.a n = A100493 (n + 1)

end A100493

/-!
# A100494: Primes of the form 47*k + 3.

The programs for A100494, the canonical program `A100494.P1937348515237649626` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100494 has offset 1).

The definition of A100494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100494.P1937348515237649626

`p?[94*n+3]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100494

/-- `p?[94*n+3]` -/
def P1937348515237649626.Spec : Prop :=
  ∀ n, (P1937348515237649626.a n : ℤ) = A100494 (n + 1)

theorem P1937348515237649626.correct : P1937348515237649626.Spec := by
  intro n
  simp only [A100494, Nat.add_sub_cancel]

end A100494

/-! ## A100494.P11323490521996686452

`record[p?[a(n-1)+47]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A100494.P11323490521996686452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3] fun n f2 =>
  f2 (n - 1) + 47

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100494.P11323490521996686452

namespace A100494

/-- `record[p?[a(n-1)+47]]` -/
def P11323490521996686452.Spec : Prop :=
  ∀ n, (P11323490521996686452.a n : ℤ) = A100494 (n + 1)

end A100494

/-! ## A100494.P14000997824223392422

`abs(p?[a(n-1)+47]-n)+n` with `a(0)=3`
-/

namespace A100494.P14000997824223392422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A100494.P14000997824223392422

namespace A100494

/-- `abs(p?[a(n-1)+47]-n)+n` -/
def P14000997824223392422.Spec : Prop :=
  ∀ n, P14000997824223392422.a n = A100494 (n + 1)

end A100494

/-! ## A100494.P18379938508001131873

`A000027(p?[a(n-1)+47])` with `a(0)=3`
-/

namespace A100494.P18379938508001131873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100494.P18379938508001131873

namespace A100494

/-- `A000027(p?[a(n-1)+47])` -/
def P18379938508001131873.Spec : Prop :=
  ∀ n, P18379938508001131873.a n = A100494 (n + 1)

end A100494

/-! ## A100494.P14642069194289164896

`record[A020639(47*n+3)]`
-/

namespace A100494.P14642069194289164896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100494.P14642069194289164896

namespace A100494

/-- `record[A020639(47*n+3)]` -/
def P14642069194289164896.Spec : Prop :=
  ∀ n, P14642069194289164896.a n = A100494 (n + 1)

end A100494

/-! ## A100494.P1040490910958181559

`record[A001414(94*n+3)]`
-/

namespace A100494.P1040490910958181559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (94 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100494.P1040490910958181559

namespace A100494

/-- `record[A001414(94*n+3)]` -/
def P1040490910958181559.Spec : Prop :=
  ∀ n, P1040490910958181559.a n = A100494 (n + 1)

end A100494

/-! ## A100494.P7911305922353268301

`record[A006530(94*n+3)]`
-/

namespace A100494.P7911305922353268301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (94 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100494.P7911305922353268301

namespace A100494

/-- `record[A006530(94*n+3)]` -/
def P7911305922353268301.Spec : Prop :=
  ∀ n, P7911305922353268301.a n = A100494 (n + 1)

end A100494

/-!
# A100497: Numbers n such that (2^n+1)^4-2 is a semiprime.

The programs for A100497, there is no canonical definition to state claims against.
-/

/-! ## A100497.P7720740006424914005

`eq[A005893(A027870(3*n+1)), A006519(n+1)]`
-/

namespace A100497.P7720740006424914005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A027870 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100497.P7720740006424914005

/-! ## A100497.P16883042134263909671

`eq[A092412(n+1), A369694(A027870(3*n+1))]`
-/

namespace A100497.P16883042134263909671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369694 (A027870 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100497.P16883042134263909671

/-!
# A100498: Smallest square that is equal to the sum of n distinct primes plus 1.

The programs for A100498, there is no canonical definition to state claims against.
-/

/-! ## A100498.P1185216743470375133

`A101771(n)²`
-/

namespace A100498.P1185216743470375133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n ^ 2

end

end A100498.P1185216743470375133

/-! ## A100498.P15197710313681582506

`A101771(gcd(n, 2*n))^2`
-/

namespace A100498.P15197710313681582506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 (Nat.gcd n (2 * n)) ^ 2

end

end A100498.P15197710313681582506

/-! ## A100498.P7057826534450267884

`(comp[A101774(n+1)-1]+1)²`
-/

namespace A100498.P7057826534450267884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101774 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A100498.P7057826534450267884

/-! ## A100498.P13348824591640301986

`A002620(2*A101771(n))`
-/

namespace A100498.P13348824591640301986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A101771 n).toNat

end

end A100498.P13348824591640301986

/-! ## A100498.P12690543802971947236

`A000027(A101771(n)^2)`
-/

namespace A100498.P12690543802971947236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A101771 n ^ 2).toNat

end

end A100498.P12690543802971947236

/-!
# A100499: Smallest cube that is the sum of n positive squares.

The programs for A100499, there is no canonical definition to state claims against.
-/

/-! ## A100499.P15574778087693349554

`A102313(n+1)^3`
-/

namespace A100499.P15574778087693349554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102313 (n + 1) ^ 3

end

end A100499.P15574778087693349554

/-! ## A100499.P17934937997079812329

`root(A102313(n+1), A309873(n+1)²/3)`
-/

namespace A100499.P17934937997079812329
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A102313 (n + 1) : ℝ) ^ (1 / ((A309873 (n + 1) ^ 2 : ℚ) / 3 : ℝ))

end

end A100499.P17934937997079812329

