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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B011.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A246300: Numbers k such that cos(k) < cos(k+1) > cos(k+2).

The programs for A246300, the canonical program `A246300.P2506155480122633123` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246300 has offset 1).

The definition of A246300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246300.P2506155480122633123

`round(2*(n+1)*π)-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246300

/-- `round(2*(n+1)*π)-1` -/
def P2506155480122633123.Spec : Prop :=
  ∀ n, P2506155480122633123.a n = A246300 (n + 1)

theorem P2506155480122633123.correct : P2506155480122633123.Spec := by
  intro n
  simp only [A246300, Nat.add_sub_cancel]

end A246300

/-! ## A246300.P6133498070375302206

`round(atan(A008574(n+1))*A008574(n+1))`
-/

namespace A246300.P6133498070375302206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A008574 (n + 1) : ℝ) * (A008574 (n + 1) : ℝ))

end

end A246300.P6133498070375302206

namespace A246300

/-- `round(atan(A008574(n+1))*A008574(n+1))` -/
def P6133498070375302206.Spec : Prop :=
  ∀ n, P6133498070375302206.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P14410517842853746096

`lt[cos(1/2), cos(n+1)]`
-/

namespace A246300.P14410517842853746096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246300.P14410517842853746096

namespace A246300

/-- `lt[cos(1/2), cos(n+1)]` -/
def P14410517842853746096.Spec : Prop :=
  ∀ n, (P14410517842853746096.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P14382433578939477565

`Δ[∑[A022853(2*n)]-n]`
-/

namespace A246300.P14382433578939477565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246300.P14382433578939477565

namespace A246300

/-- `Δ[∑[A022853(2*n)]-n]` -/
def P14382433578939477565.Spec : Prop :=
  ∀ n, P14382433578939477565.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P4169647935280384864

`∩[A022853(n)-1, A246395(n)]`
-/

namespace A246300.P4169647935280384864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P4169647935280384864

namespace A246300

/-- `∩[A022853(n)-1, A246395(n)]` -/
def P4169647935280384864.Spec : Prop :=
  ∀ n, (P4169647935280384864.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P16075008597755237944

`A246405(3*(n+1))`
-/

namespace A246300.P16075008597755237944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (3 * (n + 1))

end

end A246300.P16075008597755237944

namespace A246300

/-- `A246405(3*(n+1))` -/
def P16075008597755237944.Spec : Prop :=
  ∀ n, P16075008597755237944.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P1142915358875784663

`∩[A246405(n+1), A246395(n)]`
-/

namespace A246300.P1142915358875784663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P1142915358875784663

namespace A246300

/-- `∩[A246405(n+1), A246395(n)]` -/
def P1142915358875784663.Spec : Prop :=
  ∀ n, (P1142915358875784663.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P653338808509954559

`∩[A246405(n+1), A277095(n+1)]`
-/

namespace A246300.P653338808509954559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P653338808509954559

namespace A246300

/-- `∩[A246405(n+1), A277095(n+1)]` -/
def P653338808509954559.Spec : Prop :=
  ∀ n, (P653338808509954559.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P9024576099338065401

`∩[A246405(n+1), A277136(n+1)]`
-/

namespace A246300.P9024576099338065401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P9024576099338065401

namespace A246300

/-- `∩[A246405(n+1), A277136(n+1)]` -/
def P9024576099338065401.Spec : Prop :=
  ∀ n, (P9024576099338065401.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P16901071198490735841

`∩[A246405(n+1), A332482(n+1)]`
-/

namespace A246300.P16901071198490735841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P16901071198490735841

namespace A246300

/-- `∩[A246405(n+1), A332482(n+1)]` -/
def P16901071198490735841.Spec : Prop :=
  ∀ n, (P16901071198490735841.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P787785889555461205

`∩[A246405(n+1), A246441(n+1)]`
-/

namespace A246300.P787785889555461205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P787785889555461205

namespace A246300

/-- `∩[A246405(n+1), A246441(n+1)]` -/
def P787785889555461205.Spec : Prop :=
  ∀ n, (P787785889555461205.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P4559083789595422219

`∩[A026309(n+1), A022853(n)-1]`
-/

namespace A246300.P4559083789595422219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P4559083789595422219

namespace A246300

/-- `∩[A026309(n+1), A022853(n)-1]` -/
def P4559083789595422219.Spec : Prop :=
  ∀ n, (P4559083789595422219.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P17669263380381109900

`∩[A131503(n+1), A022853(n)-1]`
-/

namespace A246300.P17669263380381109900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P17669263380381109900

namespace A246300

/-- `∩[A131503(n+1), A022853(n)-1]` -/
def P17669263380381109900.Spec : Prop :=
  ∀ n, (P17669263380381109900.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P2938539670705833769

`∩[A246441(n+1), A022853(n)-1]`
-/

namespace A246300.P2938539670705833769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246300.P2938539670705833769

namespace A246300

/-- `∩[A246441(n+1), A022853(n)-1]` -/
def P2938539670705833769.Spec : Prop :=
  ∀ n, (P2938539670705833769.a n : ℤ) = A246300 (n + 1)

end A246300

/-! ## A246300.P9521790764271547271

`A009056(A246302(n+1))`
-/

namespace A246300.P9521790764271547271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A246302 (n + 1)).toNat

end

end A246300.P9521790764271547271

namespace A246300

/-- `A009056(A246302(n+1))` -/
def P9521790764271547271.Spec : Prop :=
  ∀ n, P9521790764271547271.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P1789667075913426715

`A020725(A246301(n+1))`
-/

namespace A246300.P1789667075913426715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246301 (n + 1)).toNat

end

end A246300.P1789667075913426715

namespace A246300

/-- `A020725(A246301(n+1))` -/
def P1789667075913426715.Spec : Prop :=
  ∀ n, P1789667075913426715.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P10080323207847397678

`A023443(A075727(n+2))`
-/

namespace A246300.P10080323207847397678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075727 (n + 2)).toNat

end

end A246300.P10080323207847397678

namespace A246300

/-- `A023443(A075727(n+2))` -/
def P10080323207847397678.Spec : Prop :=
  ∀ n, P10080323207847397678.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P17045172964132751448

`A020725(A246302(n+1)+1)`
-/

namespace A246300.P17045172964132751448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246302 (n + 1) + 1).toNat

end

end A246300.P17045172964132751448

namespace A246300

/-- `A020725(A246302(n+1)+1)` -/
def P17045172964132751448.Spec : Prop :=
  ∀ n, P17045172964132751448.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P92470617755090502

`A023444(A075727(n+2)+1)`
-/

namespace A246300.P92470617755090502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A075727 (n + 2) + 1).toNat

end

end A246300.P92470617755090502

namespace A246300

/-- `A023444(A075727(n+2)+1)` -/
def P92470617755090502.Spec : Prop :=
  ∀ n, P92470617755090502.a n = A246300 (n + 1)

end A246300

/-! ## A246300.P8326076674883728737

`A023443(A246301(n+1)+2)`
-/

namespace A246300.P8326076674883728737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246301 (n + 1) + 2).toNat

end

end A246300.P8326076674883728737

namespace A246300

/-- `A023443(A246301(n+1)+2)` -/
def P8326076674883728737.Spec : Prop :=
  ∀ n, P8326076674883728737.a n = A246300 (n + 1)

end A246300

/-!
# A246301: Numbers k such that cos(k) < cos(k+1) < cos(k+2) > cos(k+3).

The programs for A246301, the canonical program `A246301.P13922313721428758824` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246301 has offset 1).

The definition of A246301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246301.P13922313721428758824

`abs(round(2*π*(n+1))-3)+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246301

/-- `abs(round(2*π*(n+1))-3)+1` -/
def P13922313721428758824.Spec : Prop :=
  ∀ n, P13922313721428758824.a n = A246301 (n + 1)

theorem P13922313721428758824.correct : P13922313721428758824.Spec := by
  intro n
  simp only [A246301, Nat.add_sub_cancel]

end A246301

/-! ## A246301.P14958710057292247704

`abs(1-A246300(n+1))`
-/

namespace A246301.P14958710057292247704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246300 (n + 1)|

end

end A246301.P14958710057292247704

namespace A246301

/-- `abs(1-A246300(n+1))` -/
def P14958710057292247704.Spec : Prop :=
  ∀ n, P14958710057292247704.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P3470045493405277882

`abs(A246405(3*(n+1))-1)`
-/

namespace A246301.P3470045493405277882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246405 (3 * (n + 1)) - 1|

end

end A246301.P3470045493405277882

namespace A246301

/-- `abs(A246405(3*(n+1))-1)` -/
def P3470045493405277882.Spec : Prop :=
  ∀ n, P3470045493405277882.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P11824555163668621064

`∩[A246441(n+1), A022853(n)-2]`
-/

namespace A246301.P11824555163668621064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246301.P11824555163668621064

namespace A246301

/-- `∩[A246441(n+1), A022853(n)-2]` -/
def P11824555163668621064.Spec : Prop :=
  ∀ n, (P11824555163668621064.a n : ℤ) = A246301 (n + 1)

end A246301

/-! ## A246301.P6613875991477729569

`A020725(A246302(n+1))`
-/

namespace A246301.P6613875991477729569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246302 (n + 1)).toNat

end

end A246301.P6613875991477729569

namespace A246301

/-- `A020725(A246302(n+1))` -/
def P6613875991477729569.Spec : Prop :=
  ∀ n, P6613875991477729569.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P2911298851251760514

`A009056(A246302(n+1)-1)`
-/

namespace A246301.P2911298851251760514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A246302 (n + 1) - 1).toNat

end

end A246301.P2911298851251760514

namespace A246301

/-- `A009056(A246302(n+1)-1)` -/
def P2911298851251760514.Spec : Prop :=
  ∀ n, P2911298851251760514.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P12653031314278235060

`A023443(A246300(n+1))`
-/

namespace A246301.P12653031314278235060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246300 (n + 1)).toNat

end

end A246301.P12653031314278235060

namespace A246301

/-- `A023443(A246300(n+1))` -/
def P12653031314278235060.Spec : Prop :=
  ∀ n, P12653031314278235060.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P14184224457509802453

`A023444(A075727(n+2))`
-/

namespace A246301.P14184224457509802453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A075727 (n + 2)).toNat

end

end A246301.P14184224457509802453

namespace A246301

/-- `A023444(A075727(n+2))` -/
def P14184224457509802453.Spec : Prop :=
  ∀ n, P14184224457509802453.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P1083366934270489211

`A023444(A246300(n+1)+1)`
-/

namespace A246301.P1083366934270489211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246300 (n + 1) + 1).toNat

end

end A246301.P1083366934270489211

namespace A246301

/-- `A023444(A246300(n+1)+1)` -/
def P1083366934270489211.Spec : Prop :=
  ∀ n, P1083366934270489211.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P11841106477805678084

`A023445(A075727(n+2)+1)`
-/

namespace A246301.P11841106477805678084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A075727 (n + 2) + 1).toNat

end

end A246301.P11841106477805678084

namespace A246301

/-- `A023445(A075727(n+2)+1)` -/
def P11841106477805678084.Spec : Prop :=
  ∀ n, P11841106477805678084.a n = A246301 (n + 1)

end A246301

/-! ## A246301.P15113740555053475124

`A009056(2*A246302(n+1))/2`
-/

namespace A246301.P15113740555053475124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009056 (2 * A246302 (n + 1)).toNat : ℚ) / 2

end

end A246301.P15113740555053475124

namespace A246301

/-- `A009056(2*A246302(n+1))/2` -/
def P15113740555053475124.Spec : Prop :=
  ∀ n, P15113740555053475124.a n = (A246301 (n + 1) : ℚ)

end A246301

/-!
# A246302: Numbers k such that cos(k) < cos(k+1) < cos(k+2) < cos(k+3) > cos(k+4).

The programs for A246302, the canonical program `A246302.P4390895032775024967` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246302 has offset 1).

The definition of A246302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246302.P12203331880410335099

`round(2*π*(n+1))-3`
-/

namespace A246302.P12203331880410335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.pi * (n + 1 : ℝ))) - 3

end

end A246302.P12203331880410335099

namespace A246302

/-- `round(2*π*(n+1))-3` -/
def P12203331880410335099.Spec : Prop :=
  ∀ n, P12203331880410335099.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P4390895032775024967

`abs(1-A246301(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246302

/-- `abs(1-A246301(n+1))` -/
def P4390895032775024967.Spec : Prop :=
  ∀ n, P4390895032775024967.a n = A246302 (n + 1)

theorem P4390895032775024967.correct : P4390895032775024967.Spec := by
  intro n
  simp only [A246302, Nat.add_sub_cancel]

end A246302

/-! ## A246302.P7359367485343096079

`abs(2-A246300(n+1))`
-/

namespace A246302.P7359367485343096079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A246300 (n + 1)|

end

end A246302.P7359367485343096079

namespace A246302

/-- `abs(2-A246300(n+1))` -/
def P7359367485343096079.Spec : Prop :=
  ∀ n, P7359367485343096079.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P1460278041720943728

`record[A022853(n+1)-A022853(A124625(n+1))]`
-/

namespace A246302.P1460278041720943728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n + 1) - A022853 (A124625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246302.P1460278041720943728

namespace A246302

/-- `record[A022853(n+1)-A022853(A124625(n+1))]` -/
def P1460278041720943728.Spec : Prop :=
  ∀ n, P1460278041720943728.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P5058908259526668081

`abs(A246405(3*(n+1))-2)`
-/

namespace A246302.P5058908259526668081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246405 (3 * (n + 1)) - 2|

end

end A246302.P5058908259526668081

namespace A246302

/-- `abs(A246405(3*(n+1))-2)` -/
def P5058908259526668081.Spec : Prop :=
  ∀ n, P5058908259526668081.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P3681198927395820754

`A020725(A246301(n+1)-2)`
-/

namespace A246302.P3681198927395820754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246301 (n + 1) - 2).toNat

end

end A246302.P3681198927395820754

namespace A246302

/-- `A020725(A246301(n+1)-2)` -/
def P3681198927395820754.Spec : Prop :=
  ∀ n, P3681198927395820754.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P11923249172361792410

`A023444(A246300(n+1))`
-/

namespace A246302.P11923249172361792410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246300 (n + 1)).toNat

end

end A246302.P11923249172361792410

namespace A246302

/-- `A023444(A246300(n+1))` -/
def P11923249172361792410.Spec : Prop :=
  ∀ n, P11923249172361792410.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P11766105541082584537

`A023443(A246301(n+1))`
-/

namespace A246302.P11766105541082584537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246301 (n + 1)).toNat

end

end A246302.P11766105541082584537

namespace A246302

/-- `A023443(A246301(n+1))` -/
def P11766105541082584537.Spec : Prop :=
  ∀ n, P11766105541082584537.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P5616109403145910074

`A023445(A075727(n+2))`
-/

namespace A246302.P5616109403145910074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A075727 (n + 2)).toNat

end

end A246302.P5616109403145910074

namespace A246302

/-- `A023445(A075727(n+2))` -/
def P5616109403145910074.Spec : Prop :=
  ∀ n, P5616109403145910074.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P49471308738444320

`A023443(A246300(n+1)-1)`
-/

namespace A246302.P49471308738444320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246300 (n + 1) - 1).toNat

end

end A246302.P49471308738444320

namespace A246302

/-- `A023443(A246300(n+1)-1)` -/
def P49471308738444320.Spec : Prop :=
  ∀ n, P49471308738444320.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P11151178392072300044

`A023444(A075727(n+2)-1)`
-/

namespace A246302.P11151178392072300044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A075727 (n + 2) - 1).toNat

end

end A246302.P11151178392072300044

namespace A246302

/-- `A023444(A075727(n+2)-1)` -/
def P11151178392072300044.Spec : Prop :=
  ∀ n, P11151178392072300044.a n = A246302 (n + 1)

end A246302

/-! ## A246302.P16317990716014741171

`A023443(A075727(n+2)-2)`
-/

namespace A246302.P16317990716014741171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075727 (n + 2) - 2).toNat

end

end A246302.P16317990716014741171

namespace A246302

/-- `A023443(A075727(n+2)-2)` -/
def P16317990716014741171.Spec : Prop :=
  ∀ n, P16317990716014741171.a n = A246302 (n + 1)

end A246302

/-!
# A246303: Numbers k such that cos(k) < cos(k+1).

The programs for A246303, the canonical program `A246303.P12164871249589581901` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246303 has offset 1).

The definition of A246303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246303.P12164871249589581901

`lt[cos(n), cos(n+1)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246303

/-- `lt[cos(n), cos(n+1)]` -/
def P12164871249589581901.Spec : Prop :=
  ∀ n, (P12164871249589581901.a n : ℤ) = A246303 (n + 1)

theorem P12164871249589581901.correct : P12164871249589581901.Spec := by
  intro n
  simp only [A246303, Nat.add_sub_cancel]

end A246303

/-! ## A246303.P4315726672962891982

`lt[tan((2*n+1)/4), 0]`
-/

namespace A246303.P4315726672962891982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((2 * n + 1 : ℚ) / 4 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246303.P4315726672962891982

namespace A246303

/-- `lt[tan((2*n+1)/4), 0]` -/
def P4315726672962891982.Spec : Prop :=
  ∀ n, (P4315726672962891982.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P9127684961041670719

`lt[cot((2*n+1)/4), 0]`
-/

namespace A246303.P9127684961041670719
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((2 * n + 1 : ℚ) / 4 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246303.P9127684961041670719

namespace A246303

/-- `lt[cot((2*n+1)/4), 0]` -/
def P9127684961041670719.Spec : Prop :=
  ∀ n, (P9127684961041670719.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P12063834608909100318

`lt[0, -sin((2*n+1)/2)]`
-/

namespace A246303.P12063834608909100318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.sin ((2 * n + 1 : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246303.P12063834608909100318

namespace A246303

/-- `lt[0, -sin((2*n+1)/2)]` -/
def P12063834608909100318.Spec : Prop :=
  ∀ n, (P12063834608909100318.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P16929293823159885466

`comp[A026311(n+1)]`
-/

namespace A246303.P16929293823159885466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246303.P16929293823159885466

namespace A246303

/-- `comp[A026311(n+1)]` -/
def P16929293823159885466.Spec : Prop :=
  ∀ n, (P16929293823159885466.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P8420945196843426663

`lt[0, Δ[cos(n)]]`
-/

namespace A246303.P8420945196843426663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246303.P8420945196843426663

namespace A246303

/-- `lt[0, Δ[cos(n)]]` -/
def P8420945196843426663.Spec : Prop :=
  ∀ n, (P8420945196843426663.a n : ℤ) = A246303 (n + 1)

theorem P8420945196843426663.correct : P8420945196843426663.Spec := by
  intro n
  simp only [A246303, Nat.add_sub_cancel, A246303.P8420945196843426663.f1, A246303.P8420945196843426663.f3, A246303.P8420945196843426663.f2, A246303.P8420945196843426663.a, A246303.P12164871249589581901.f1, A246303.P12164871249589581901.f2, A246303.P12164871249589581901.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A246303

/-! ## A246303.P7289087663942434905

`lt[1, ratio[exp(cos(n))]]`
-/

namespace A246303.P7289087663942434905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246303.P7289087663942434905

namespace A246303

/-- `lt[1, ratio[exp(cos(n))]]` -/
def P7289087663942434905.Spec : Prop :=
  ∀ n, (P7289087663942434905.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P8335394803433326537

`lt[∑[2*cos(n)], 1]`
-/

namespace A246303.P8335394803433326537
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246303.P8335394803433326537

namespace A246303

/-- `lt[∑[2*cos(n)], 1]` -/
def P8335394803433326537.Spec : Prop :=
  ∀ n, (P8335394803433326537.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P15315789496738419945

`lt[∑[cos(n)], 1/2]`
-/

namespace A246303.P15315789496738419945
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246303.P15315789496738419945

namespace A246303

/-- `lt[∑[cos(n)], 1/2]` -/
def P15315789496738419945.Spec : Prop :=
  ∀ n, (P15315789496738419945.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P6083205767099837706

`lt[sin(sqrt(∑[2*n])), 0]`
-/

namespace A246303.P6083205767099837706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246303.P6083205767099837706

namespace A246303

/-- `lt[sin(sqrt(∑[2*n])), 0]` -/
def P6083205767099837706.Spec : Prop :=
  ∀ n, (P6083205767099837706.a n : ℤ) = A246303 (n + 1)

end A246303

/-! ## A246303.P12815091205182506017

`lt[(2^∑[cos(n)])², 2]`
-/

namespace A246303.P12815091205182506017
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246303.P12815091205182506017

namespace A246303

/-- `lt[(2^∑[cos(n)])², 2]` -/
def P12815091205182506017.Spec : Prop :=
  ∀ n, (P12815091205182506017.a n : ℤ) = A246303 (n + 1)

end A246303

/-!
# A246304: Numbers k such that cos(k) > cos(k+1) < cos(k+2).

The programs for A246304, the canonical program `A246304.P2312142281888456401` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246304 has offset 1).

The definition of A246304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246304.P2312142281888456401

`round(Δ[π*n²])-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246304

/-- `round(Δ[π*n²])-1` -/
def P2312142281888456401.Spec : Prop :=
  ∀ n, P2312142281888456401.a n = A246304 (n + 1)

theorem P2312142281888456401.correct : P2312142281888456401.Spec := by
  intro n
  simp only [A246304, Nat.add_sub_cancel]

end A246304

/-! ## A246304.P8615487039374215579

`round(atan(A016825(n))*A016825(n))`
-/

namespace A246304.P8615487039374215579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A016825 n : ℝ) * (A016825 n : ℝ))

end

end A246304.P8615487039374215579

namespace A246304

/-- `round(atan(A016825(n))*A016825(n))` -/
def P8615487039374215579.Spec : Prop :=
  ∀ n, P8615487039374215579.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P17238489501820060979

`abs(1-A022853(2*n+1))`
-/

namespace A246304.P17238489501820060979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A022853 (2 * n + 1)|

end

end A246304.P17238489501820060979

namespace A246304

/-- `abs(1-A022853(2*n+1))` -/
def P17238489501820060979.Spec : Prop :=
  ∀ n, P17238489501820060979.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P11283802449683929026

`A000027(A022853(2*n+1)-1)`
-/

namespace A246304.P11283802449683929026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022853 (2 * n + 1) - 1).toNat

end

end A246304.P11283802449683929026

namespace A246304

/-- `A000027(A022853(2*n+1)-1)` -/
def P11283802449683929026.Spec : Prop :=
  ∀ n, P11283802449683929026.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P2326639275810699231

`A246408(3*n+2)`
-/

namespace A246304.P2326639275810699231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (3 * n + 2)

end

end A246304.P2326639275810699231

namespace A246304

/-- `A246408(3*n+2)` -/
def P2326639275810699231.Spec : Prop :=
  ∀ n, P2326639275810699231.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P2356577104977286997

`∩[A246408(n+1), A246396(n)]`
-/

namespace A246304.P2356577104977286997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P2356577104977286997

namespace A246304

/-- `∩[A246408(n+1), A246396(n)]` -/
def P2356577104977286997.Spec : Prop :=
  ∀ n, (P2356577104977286997.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P4719018698134968308

`∩[A246408(n+1), A277094(n+1)]`
-/

namespace A246304.P4719018698134968308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P4719018698134968308

namespace A246304

/-- `∩[A246408(n+1), A277094(n+1)]` -/
def P4719018698134968308.Spec : Prop :=
  ∀ n, (P4719018698134968308.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P1125787555415485511

`∩[A246408(n+1), A277139(n+1)]`
-/

namespace A246304.P1125787555415485511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P1125787555415485511

namespace A246304

/-- `∩[A246408(n+1), A277139(n+1)]` -/
def P1125787555415485511.Spec : Prop :=
  ∀ n, (P1125787555415485511.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P6156165280539532550

`∩[A246408(n+1), A332481(n+1)]`
-/

namespace A246304.P6156165280539532550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P6156165280539532550

namespace A246304

/-- `∩[A246408(n+1), A332481(n+1)]` -/
def P6156165280539532550.Spec : Prop :=
  ∀ n, (P6156165280539532550.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P4649810298242566941

`∩[A246408(n+1), A246390(n)-2]`
-/

namespace A246304.P4649810298242566941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P4649810298242566941

namespace A246304

/-- `∩[A246408(n+1), A246390(n)-2]` -/
def P4649810298242566941.Spec : Prop :=
  ∀ n, (P4649810298242566941.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P11625978496183308868

`∩[A246408(n+1), A277138(n+1)-2]`
-/

namespace A246304.P11625978496183308868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P11625978496183308868

namespace A246304

/-- `∩[A246408(n+1), A277138(n+1)-2]` -/
def P11625978496183308868.Spec : Prop :=
  ∀ n, (P11625978496183308868.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P13135022868775859116

`∩[A246408(n+1), A246440(n+1)]`
-/

namespace A246304.P13135022868775859116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P13135022868775859116

namespace A246304

/-- `∩[A246408(n+1), A246440(n+1)]` -/
def P13135022868775859116.Spec : Prop :=
  ∀ n, (P13135022868775859116.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P10594536768721228701

`∩[A026311(n+1), A022853(n)-1]`
-/

namespace A246304.P10594536768721228701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P10594536768721228701

namespace A246304

/-- `∩[A026311(n+1), A022853(n)-1]` -/
def P10594536768721228701.Spec : Prop :=
  ∀ n, (P10594536768721228701.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P6031612674056395909

`∩[A246404(n+1), A022853(n)-1]`
-/

namespace A246304.P6031612674056395909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246304.P6031612674056395909

namespace A246304

/-- `∩[A246404(n+1), A022853(n)-1]` -/
def P6031612674056395909.Spec : Prop :=
  ∀ n, (P6031612674056395909.a n : ℤ) = A246304 (n + 1)

end A246304

/-! ## A246304.P8331720655073419343

`floor(A246411(A016945(n))/2)`
-/

namespace A246304.P8331720655073419343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246411 (A016945 n).toNat : ℚ) / 2⌋

end

end A246304.P8331720655073419343

namespace A246304

/-- `floor(A246411(A016945(n))/2)` -/
def P8331720655073419343.Spec : Prop :=
  ∀ n, P8331720655073419343.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P16891293863366148238

`A020725(A246305(n+1))`
-/

namespace A246304.P16891293863366148238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246305 (n + 1)).toNat

end

end A246304.P16891293863366148238

namespace A246304

/-- `A020725(A246305(n+1))` -/
def P16891293863366148238.Spec : Prop :=
  ∀ n, P16891293863366148238.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P15143932193999191285

`A020725(A246306(n+1)+1)`
-/

namespace A246304.P15143932193999191285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246306 (n + 1) + 1).toNat

end

end A246304.P15143932193999191285

namespace A246304

/-- `A020725(A246306(n+1)+1)` -/
def P15143932193999191285.Spec : Prop :=
  ∀ n, P15143932193999191285.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P17289374648081970561

`A028310(A022853(2*n+1)-1)`
-/

namespace A246304.P17289374648081970561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022853 (2 * n + 1) - 1).toNat

end

end A246304.P17289374648081970561

namespace A246304

/-- `A028310(A022853(2*n+1)-1)` -/
def P17289374648081970561.Spec : Prop :=
  ∀ n, P17289374648081970561.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P1725546331186997667

`A004396(A022853(2*n+1)+A022853(n))`
-/

namespace A246304.P1725546331186997667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022853 (2 * n + 1) + A022853 n).toNat

end

end A246304.P1725546331186997667

namespace A246304

/-- `A004396(A022853(2*n+1)+A022853(n))` -/
def P1725546331186997667.Spec : Prop :=
  ∀ n, P1725546331186997667.a n = A246304 (n + 1)

end A246304

/-! ## A246304.P10264758157463813227

`A032615(A004084(A022853(2*n+1)))`
-/

namespace A246304.P10264758157463813227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A004084 (A022853 (2 * n + 1)).toNat).toNat

end

end A246304.P10264758157463813227

namespace A246304

/-- `A032615(A004084(A022853(2*n+1)))` -/
def P10264758157463813227.Spec : Prop :=
  ∀ n, P10264758157463813227.a n = A246304 (n + 1)

end A246304

/-!
# A246305: Numbers k such that cos(k) > cos(k+1) > cos(k+2) < cos(k+3).

The programs for A246305, the canonical program `A246305.P8271741949091332252` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246305 has offset 1).

The definition of A246305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246305.P17585491559074500911

`round(Δ[π*n²])-2`
-/

namespace A246305.P17585491559074500911
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n) - 2

end

end A246305.P17585491559074500911

namespace A246305

/-- `round(Δ[π*n²])-2` -/
def P17585491559074500911.Spec : Prop :=
  ∀ n, P17585491559074500911.a n = A246305 (n + 1)

end A246305

/-! ## A246305.P8271741949091332252

`abs(1-A246304(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246305

/-- `abs(1-A246304(n+1))` -/
def P8271741949091332252.Spec : Prop :=
  ∀ n, P8271741949091332252.a n = A246305 (n + 1)

theorem P8271741949091332252.correct : P8271741949091332252.Spec := by
  intro n
  simp only [A246305, Nat.add_sub_cancel]

end A246305

/-! ## A246305.P4867332664322451999

`abs(2-A022853(2*n+1))`
-/

namespace A246305.P4867332664322451999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A022853 (2 * n + 1)|

end

end A246305.P4867332664322451999

namespace A246305

/-- `abs(2-A022853(2*n+1))` -/
def P4867332664322451999.Spec : Prop :=
  ∀ n, P4867332664322451999.a n = A246305 (n + 1)

theorem P4867332664322451999.correct : P4867332664322451999.Spec := by
  intro n
  simp only [A246305, Nat.add_sub_cancel, A246305.P4867332664322451999.a, A246305.P8271741949091332252.a, A022853, A022853.P734346419560010823.a, A246304, A246304.P2312142281888456401.f1, A246304.P2312142281888456401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246305

/-! ## A246305.P14282756216834502743

`A000027(A022853(2*n+1)-2)`
-/

namespace A246305.P14282756216834502743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022853 (2 * n + 1) - 2).toNat

end

end A246305.P14282756216834502743

namespace A246305

/-- `A000027(A022853(2*n+1)-2)` -/
def P14282756216834502743.Spec : Prop :=
  ∀ n, P14282756216834502743.a n = A246305 (n + 1)

end A246305

/-! ## A246305.P14076319441633939971

`∩[A026311(n+1), A022853(n)-2]`
-/

namespace A246305.P14076319441633939971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246305.P14076319441633939971

namespace A246305

/-- `∩[A026311(n+1), A022853(n)-2]` -/
def P14076319441633939971.Spec : Prop :=
  ∀ n, (P14076319441633939971.a n : ℤ) = A246305 (n + 1)

end A246305

/-! ## A246305.P16552840729590830547

`A023443(A246304(n+1))`
-/

namespace A246305.P16552840729590830547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246304 (n + 1)).toNat

end

end A246305.P16552840729590830547

namespace A246305

/-- `A023443(A246304(n+1))` -/
def P16552840729590830547.Spec : Prop :=
  ∀ n, P16552840729590830547.a n = A246305 (n + 1)

end A246305

/-! ## A246305.P780866157862094163

`A028310(A022853(2*n+1)-2)`
-/

namespace A246305.P780866157862094163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022853 (2 * n + 1) - 2).toNat

end

end A246305.P780866157862094163

namespace A246305

/-- `A028310(A022853(2*n+1)-2)` -/
def P780866157862094163.Spec : Prop :=
  ∀ n, P780866157862094163.a n = A246305 (n + 1)

end A246305

/-! ## A246305.P5709104700340563549

`A023444(A246304(n+1)+1)`
-/

namespace A246305.P5709104700340563549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246304 (n + 1) + 1).toNat

end

end A246305.P5709104700340563549

namespace A246305

/-- `A023444(A246304(n+1)+1)` -/
def P5709104700340563549.Spec : Prop :=
  ∀ n, P5709104700340563549.a n = A246305 (n + 1)

end A246305

/-!
# A246306: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) < cos(k+4).

The programs for A246306, the canonical program `A246306.P12951552392633180147` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246306 has offset 1).

The definition of A246306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246306.P17623385031298059046

`round(Δ[π*n²])-3`
-/

namespace A246306.P17623385031298059046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n) - 3

end

end A246306.P17623385031298059046

namespace A246306

/-- `round(Δ[π*n²])-3` -/
def P17623385031298059046.Spec : Prop :=
  ∀ n, P17623385031298059046.a n = A246306 (n + 1)

end A246306

/-! ## A246306.P12951552392633180147

`abs(1-A246305(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246306

/-- `abs(1-A246305(n+1))` -/
def P12951552392633180147.Spec : Prop :=
  ∀ n, P12951552392633180147.a n = A246306 (n + 1)

theorem P12951552392633180147.correct : P12951552392633180147.Spec := by
  intro n
  simp only [A246306, Nat.add_sub_cancel]

end A246306

/-! ## A246306.P2099978215213443716

`abs(2-A246304(n+1))`
-/

namespace A246306.P2099978215213443716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A246304 (n + 1)|

end

end A246306.P2099978215213443716

namespace A246306

/-- `abs(2-A246304(n+1))` -/
def P2099978215213443716.Spec : Prop :=
  ∀ n, P2099978215213443716.a n = A246306 (n + 1)

end A246306

/-! ## A246306.P11952596435849346712

`record[A246305(A068962(n+1))-1]`
-/

namespace A246306.P11952596435849346712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246305 (A068962 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246306.P11952596435849346712

namespace A246306

/-- `record[A246305(A068962(n+1))-1]` -/
def P11952596435849346712.Spec : Prop :=
  ∀ n, P11952596435849346712.a n = A246306 (n + 1)

end A246306

/-! ## A246306.P14659022029515334361

`A023444(A246304(n+1))`
-/

namespace A246306.P14659022029515334361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246304 (n + 1)).toNat

end

end A246306.P14659022029515334361

namespace A246306

/-- `A023444(A246304(n+1))` -/
def P14659022029515334361.Spec : Prop :=
  ∀ n, P14659022029515334361.a n = A246306 (n + 1)

end A246306

/-! ## A246306.P12184130709969211687

`A023443(A246305(n+1))`
-/

namespace A246306.P12184130709969211687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246305 (n + 1)).toNat

end

end A246306.P12184130709969211687

namespace A246306

/-- `A023443(A246305(n+1))` -/
def P12184130709969211687.Spec : Prop :=
  ∀ n, P12184130709969211687.a n = A246306 (n + 1)

end A246306

/-!
# A246307: Numerator of Z^(2)(n), where Z^(2)(n) = n for n=0,1; thereafter Z^(2)(n) = (1/3)*Sum_{k=1..n-1} Stirling_2(n,k)*Z^(2)(k).

The programs for A246307, there is no canonical definition to state claims against.
-/

/-! ## A246307.P11219111957064192122

`20^(a(n-1)-4)-1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=6`
-/

namespace A246307.P11219111957064192122
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1, 5, 6] fun n a =>
  (20 : ℝ) ^ (a (n - 1) - 4) - 1

end

end A246307.P11219111957064192122

/-! ## A246307.P4856339267944012643

`A027540(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=6`
-/

namespace A246307.P4856339267944012643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 5, 6] fun n a =>
  A027540 (a (n - 1)).toNat

end

end A246307.P4856339267944012643

/-!
# A246313: G.f.: (-1+6*x)/(1-3*x-2*x^2).

The programs for A246313, the canonical program `A246313.P17421018869796444675` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246313 has offset 0).

The definition of A246313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246313.P17421018869796444675

`3*a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246313

/-- `3*a(n-1)+2*a(n-2)` -/
def P17421018869796444675.Spec : Prop :=
  ∀ n, P17421018869796444675.a n = A246313 n

theorem P17421018869796444675.correct : P17421018869796444675.Spec := by
  intro n
  simp only [A246313]

end A246313

/-! ## A246313.P8454676528693100680

`ogf((1-6x)/(-1+3x+2x^2))`
-/

namespace A246313.P8454676528693100680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6] [1, -3, -2] n

end

end A246313.P8454676528693100680

namespace A246313

/-- `ogf((1-6x)/(-1+3x+2x^2))` -/
def P8454676528693100680.Spec : Prop :=
  ∀ n, P8454676528693100680.a n = A246313 n

end A246313

/-! ## A246313.P11540271943992975708

`Δ[A206776(n)]-A007484(n)`
-/

namespace A246313.P11540271943992975708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007484 n

end

end A246313.P11540271943992975708

namespace A246313

/-- `Δ[A206776(n)]-A007484(n)` -/
def P11540271943992975708.Spec : Prop :=
  ∀ n, P11540271943992975708.a n = A246313 n

end A246313

/-! ## A246313.P5435214857209620810

`Δ[A104934(n)]-A206776(n)`
-/

namespace A246313.P5435214857209620810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A206776 n

end

end A246313.P5435214857209620810

namespace A246313

/-- `Δ[A104934(n)]-A206776(n)` -/
def P5435214857209620810.Spec : Prop :=
  ∀ n, P5435214857209620810.a n = A246313 n

end A246313

/-! ## A246313.P3255031268705792296

`A189604(n+1)-A206776(n)`
-/

namespace A246313.P3255031268705792296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 1) - A206776 n

end

end A246313.P3255031268705792296

namespace A246313

/-- `A189604(n+1)-A206776(n)` -/
def P3255031268705792296.Spec : Prop :=
  ∀ n, P3255031268705792296.a n = A246313 n

end A246313

/-! ## A246313.P11229733993839332139

`Δ[2*A104934(n)-A180144(n)]`
-/

namespace A246313.P11229733993839332139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104934 n - A180144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246313.P11229733993839332139

namespace A246313

/-- `Δ[2*A104934(n)-A180144(n)]` -/
def P11229733993839332139.Spec : Prop :=
  ∀ n, P11229733993839332139.a n = A246313 n

end A246313

/-! ## A246313.P7550083651053886382

`3*A106434(n+1)-A007482(n)`
-/

namespace A246313.P7550083651053886382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106434 (n + 1) - A007482 n

end

end A246313.P7550083651053886382

namespace A246313

/-- `3*A106434(n+1)-A007482(n)` -/
def P7550083651053886382.Spec : Prop :=
  ∀ n, P7550083651053886382.a n = A246313 n

end A246313

/-! ## A246313.P29047959517528567

`A206776(n+1)-(A206776(n)+A007484(n))`
-/

namespace A246313.P29047959517528567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) - (A206776 n + A007484 n)

end

end A246313.P29047959517528567

namespace A246313

/-- `A206776(n+1)-(A206776(n)+A007484(n))` -/
def P29047959517528567.Spec : Prop :=
  ∀ n, P29047959517528567.a n = A246313 n

end A246313

/-! ## A246313.P14695228126694240603

`4*A007483(n)-A007483(n+1)`
-/

namespace A246313.P14695228126694240603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007483 n - A007483 (n + 1)

end

end A246313.P14695228126694240603

namespace A246313

/-- `4*A007483(n)-A007483(n+1)` -/
def P14695228126694240603.Spec : Prop :=
  ∀ n, P14695228126694240603.a n = A246313 n

end A246313

/-!
# A246315: A246314(2^n-1).

The programs for A246315, there is no canonical definition to state claims against.
-/

/-! ## A246315.P4182388371592157746

`A246314(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246315.P4182388371592157746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246314 (2 ^ n - 1)

end

end A246315.P4182388371592157746

/-! ## A246315.P3879519337095067525

`record[A246314(A006068(n))]`
-/

namespace A246315.P3879519337095067525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246314 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246315.P3879519337095067525

/-! ## A246315.P7654716006811430291

`record[A246314(A304083(n))]`
-/

namespace A246315.P7654716006811430291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246314 (A304083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246315.P7654716006811430291

/-! ## A246315.P9200951874102825530

`or(1, A246314(A000225(n)))`
-/

namespace A246315.P9200951874102825530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246314 (A000225 n).toNat)

end

end A246315.P9200951874102825530

/-! ## A246315.P15223608061925510903

`record[A246314(A023758(n+1))]`
-/

namespace A246315.P15223608061925510903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246314 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246315.P15223608061925510903

/-!
# A246316: Total number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 452".

The programs for A246316, there is no canonical definition to state claims against.
-/

/-! ## A246316.P13651446069850985181

`∑[A271258(abs(1-n))]`
-/

namespace A246316.P13651446069850985181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271258 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246316.P13651446069850985181

/-! ## A246316.P11771328619474658945

`A271258(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A246316.P11771328619474658945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271258 (n - 1) + a (n - 1)

end

end A246316.P11771328619474658945

/-! ## A246316.P4120925492495696927

`Δ[A271257(n)]-A271258(n)`
-/

namespace A246316.P4120925492495696927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271258 n

end

end A246316.P4120925492495696927

/-! ## A246316.P14204633113518901413

`(2*n+3)²-A273602(n+1)`
-/

namespace A246316.P14204633113518901413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A273602 (n + 1)

end

end A246316.P14204633113518901413

/-! ## A246316.P15419707080485313663

`(2*n+3)²-Δ[A273604(n)]`
-/

namespace A246316.P15419707080485313663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A246316.P15419707080485313663

/-! ## A246316.P4012284706259184513

`∑[Δ[A016754(n)]-A273605(n)]`
-/

namespace A246316.P4012284706259184513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A273605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246316.P4012284706259184513

/-!
# A246317: A246316(2^n-1).

The programs for A246317, there is no canonical definition to state claims against.
-/

/-! ## A246317.P14199370734541781231

`A246316(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246317.P14199370734541781231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 (2 ^ n - 1)

end

end A246317.P14199370734541781231

/-! ## A246317.P3507840270005930180

`record[A246316(A173787(n))]`
-/

namespace A246317.P3507840270005930180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246317.P3507840270005930180

/-! ## A246317.P7925356363025604682

`record[A246316(A218616(n))]`
-/

namespace A246317.P7925356363025604682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246317.P7925356363025604682

/-! ## A246317.P3662882567521461343

`record[A246316(A303763(n))]`
-/

namespace A246317.P3662882567521461343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246317.P3662882567521461343

/-! ## A246317.P10513761088857612680

`record[A246316(Δ[A228693(n)])]`
-/

namespace A246317.P10513761088857612680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246316 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246317.P10513761088857612680

/-!
# A246318: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 451".

The programs for A246318, there is no canonical definition to state claims against.
-/

/-! ## A246318.P16234017104492311098

`A272256(2*n)`
-/

namespace A246318.P16234017104492311098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (2 * n)

end

end A246318.P16234017104492311098

/-! ## A246318.P13459492629395118119

`A272256(n+n)/(1/2+1/2)`
-/

namespace A246318.P13459492629395118119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272256 (n + n) : ℚ) / ((1 : ℚ) / 2 + (1 : ℚ) / 2)

end

end A246318.P13459492629395118119

/-! ## A246318.P14736299799889602920

`A000027(A272256(n+n))`
-/

namespace A246318.P14736299799889602920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272256 (n + n)).toNat

end

end A246318.P14736299799889602920

/-! ## A246318.P8557176736439689269

`and(-1, A272256(A005843(n)))`
-/

namespace A246318.P8557176736439689269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272256 (A005843 n).toNat)

end

end A246318.P8557176736439689269

/-! ## A246318.P10758376709689198443

`A272256(n+n)+A000007(n+1)`
-/

namespace A246318.P10758376709689198443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (n + n) + A000007 (n + 1)

end

end A246318.P10758376709689198443

/-! ## A246318.P12026393382218075801

`A272256(A005843(n))^A000041(C(2, n+1))`
-/

namespace A246318.P12026393382218075801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272256 (A005843 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 1)) : ℤ)

end

end A246318.P12026393382218075801

/-! ## A246318.P18339309794551371492

`A272256(n+n)+A008683(A046796(n+1))`
-/

namespace A246318.P18339309794551371492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (n + n) + A008683 (A046796 (n + 1)).toNat

end

end A246318.P18339309794551371492

/-! ## A246318.P11259351911279988691

`A272256(n+n)+A008683(A126706(n+1))`
-/

namespace A246318.P11259351911279988691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (n + n) + A008683 (A126706 (n + 1)).toNat

end

end A246318.P11259351911279988691

/-!
# A246319: Number of Steinhaus graphs of order n and diameter 2.

The programs for A246319, there is no canonical definition to state claims against.
-/

/-! ## A246319.P17846005935100058614

`A205720(A018902(n))-A205725(n+1)`
-/

namespace A246319.P17846005935100058614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205720 (A018902 n).toNat - A205725 (n + 1)

end

end A246319.P17846005935100058614

/-! ## A246319.P12074279836867594986

`A182805(n+4)+A111338(A115909(n+1))`
-/

namespace A246319.P12074279836867594986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182805 (n + 4) + A111338 (A115909 (n + 1)).toNat

end

end A246319.P12074279836867594986

/-!
# A246320: Number of Steinhaus graphs of order n and diameter 3.

The programs for A246320, there is no canonical definition to state claims against.
-/

/-! ## A246320.P17626191475359985200

`A157271(A295057(n+1)-A045680(n))`
-/

namespace A246320.P17626191475359985200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A295057 (n + 1) - A045680 n).toNat

end

end A246320.P17626191475359985200

/-! ## A246320.P1374652361064776057

`A020898(A301554(n)+A072233(3*(n+1)))`
-/

namespace A246320.P1374652361064776057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020898 (A301554 n + A072233 (3 * (n + 1))).toNat

end

end A246320.P1374652361064776057

/-!
# A246325: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 453".

The programs for A246325, there is no canonical definition to state claims against.
-/

/-! ## A246325.P1443723459638159708

`A272273(2*n)`
-/

namespace A246325.P1443723459638159708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (2 * n)

end

end A246325.P1443723459638159708

/-! ## A246325.P4236135490524467556

`A272273(n+n)-and(2, char[2])`
-/

namespace A246325.P4236135490524467556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (n + n) - (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A246325.P4236135490524467556

/-! ## A246325.P11654562886574355531

`or(1, A272273(A005843(n)))`
-/

namespace A246325.P11654562886574355531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272273 (A005843 n).toNat)

end

end A246325.P11654562886574355531

/-! ## A246325.P7021283347136477271

`A000027(A272273(n+n))`
-/

namespace A246325.P7021283347136477271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272273 (n + n)).toNat

end

end A246325.P7021283347136477271

/-! ## A246325.P15706298581175928654

`filter[A272273(n), A039982(#)]`
-/

namespace A246325.P15706298581175928654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A246325.P15706298581175928654

/-! ## A246325.P11937660829722005973

`filter[A272273(n), A098725(#)]`
-/

namespace A246325.P11937660829722005973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A246325.P11937660829722005973

/-! ## A246325.P13152562819223450524

`filter[A272273(n), A166486(#)]`
-/

namespace A246325.P13152562819223450524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A246325.P13152562819223450524

/-! ## A246325.P13093272595218347472

`filter[A272273(n), A374134(#)]`
-/

namespace A246325.P13093272595218347472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A246325.P13093272595218347472

/-! ## A246325.P9769572973470522189

`filter[A272273(n), A379952(#)]`
-/

namespace A246325.P9769572973470522189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A246325.P9769572973470522189

/-! ## A246325.P17022335154908057764

`or(1, A272273(record[A018838(n)]))`
-/

namespace A246325.P17022335154908057764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A246325.P17022335154908057764

/-!
# A246326: Total number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 454".

The programs for A246326, there is no canonical definition to state claims against.
-/

/-! ## A246326.P1344411920010822918

`A272279(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A246326.P1344411920010822918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272279 (n - 1) + a (n - 1)

end

end A246326.P1344411920010822918

/-! ## A246326.P2037095173263658382

`Δ[A272278(n)]-A272279(n)`
-/

namespace A246326.P2037095173263658382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272279 n

end

end A246326.P2037095173263658382

/-! ## A246326.P6381891812312750886

`A272278(n+1)-(A272279(n)+A272278(n))`
-/

namespace A246326.P6381891812312750886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272278 (n + 1) - (A272279 n + A272278 n)

end

end A246326.P6381891812312750886

/-! ## A246326.P9865949482800628623

`Δ[n²]²-A273270(n)%A273272(n)`
-/

namespace A246326.P9865949482800628623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - Int.tmod (A273270 n) (A273272 n)

end

end A246326.P9865949482800628623

/-! ## A246326.P8305689653040298155

`A000007(n)+A016754(n)-A273270(n)`
-/

namespace A246326.P8305689653040298155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A273270 n)

end

end A246326.P8305689653040298155

/-! ## A246326.P590145745478791264

`A272506(n)+A273208(n)-A273270(n)`
-/

namespace A246326.P590145745478791264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 n + (A273208 n - A273270 n)

end

end A246326.P590145745478791264

/-! ## A246326.P5556123050393731205

`A016754(n)*A054977(n)-A273270(n)`
-/

namespace A246326.P5556123050393731205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A054977 n - A273270 n

end

end A246326.P5556123050393731205

/-! ## A246326.P10196134632249881993

`A181385(A016825(n))-A273270(n)`
-/

namespace A246326.P10196134632249881993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273270 n

end

end A246326.P10196134632249881993

/-! ## A246326.P6820736582357005383

`A008740(A008458(n))-A273270(n)`
-/

namespace A246326.P6820736582357005383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273270 n

end

end A246326.P6820736582357005383

/-!
# A246327: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 457".

The programs for A246327, there is no canonical definition to state claims against.
-/

/-! ## A246327.P5610378896463617757

`A272280(2*n)`
-/

namespace A246327.P5610378896463617757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 (2 * n)

end

end A246327.P5610378896463617757

/-! ## A246327.P13297145752175257337

`or(1, A272280(Δ[n²]-1))`
-/

namespace A246327.P13297145752175257337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat)

end

end A246327.P13297145752175257337

/-! ## A246327.P1829319824435807126

`A000027(A272280(n+n))`
-/

namespace A246327.P1829319824435807126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272280 (n + n)).toNat

end

end A246327.P1829319824435807126

/-! ## A246327.P2281697540049018647

`filter[A272280(n), A039982(#)]`
-/

namespace A246327.P2281697540049018647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A246327.P2281697540049018647

/-! ## A246327.P15587109234956033137

`filter[A272280(n), A098725(#)]`
-/

namespace A246327.P15587109234956033137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A246327.P15587109234956033137

/-! ## A246327.P17231736578021347294

`filter[A272280(n), A166486(#)]`
-/

namespace A246327.P17231736578021347294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A246327.P17231736578021347294

/-! ## A246327.P3409284560949535896

`A272280(Δ[n²]-1)/A007318(∑[n])`
-/

namespace A246327.P3409284560949535896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A246327.P3409284560949535896

/-! ## A246327.P4187211478953895005

`A272280(Δ[n²]-1)^cos(A000038(n))`
-/

namespace A246327.P4187211478953895005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A272280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℝ) ^ (Real.cos (A000038 n : ℝ))

end

end A246327.P4187211478953895005

/-! ## A246327.P14573942749978757172

`A272280(Δ[n²]-1)+A000007(n+1)`
-/

namespace A246327.P14573942749978757172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat + A000007 (n + 1)

end

end A246327.P14573942749978757172

/-!
# A246328: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 459".

The programs for A246328, there is no canonical definition to state claims against.
-/

/-! ## A246328.P315414117641859073

`A272287(2*n)`
-/

namespace A246328.P315414117641859073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (2 * n)

end

end A246328.P315414117641859073

/-! ## A246328.P14066242435452392964

`A000027(A272287(n+n))`
-/

namespace A246328.P14066242435452392964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272287 (n + n)).toNat

end

end A246328.P14066242435452392964

/-! ## A246328.P6851876225307843085

`and(-3, A272287(A005843(n)))`
-/

namespace A246328.P6851876225307843085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A272287 (A005843 n).toNat)

end

end A246328.P6851876225307843085

/-!
# A246329: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 461".

The programs for A246329, there is no canonical definition to state claims against.
-/

/-! ## A246329.P7518919386105120582

`A272291(2*n)`
-/

namespace A246329.P7518919386105120582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (2 * n)

end

end A246329.P7518919386105120582

/-! ## A246329.P9150559151856379940

`or(1, A272291(n+n))`
-/

namespace A246329.P9150559151856379940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272291 (n + n))

end

end A246329.P9150559151856379940

/-! ## A246329.P15765864563142448455

`A000027(A272291(n+n))`
-/

namespace A246329.P15765864563142448455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272291 (n + n)).toNat

end

end A246329.P15765864563142448455

/-! ## A246329.P15570528137754805072

`filter[A272291(n), A039982(#)]`
-/

namespace A246329.P15570528137754805072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A246329.P15570528137754805072

/-! ## A246329.P12317926090995016686

`filter[A272291(n), A098725(#)]`
-/

namespace A246329.P12317926090995016686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A246329.P12317926090995016686

/-! ## A246329.P4004213599023442704

`filter[A272291(n), A166486(#)]`
-/

namespace A246329.P4004213599023442704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A246329.P4004213599023442704

/-! ## A246329.P4803546045771162254

`filter[A272291(n), A379952(#)]`
-/

namespace A246329.P4803546045771162254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A246329.P4803546045771162254

/-! ## A246329.P8340012336821325260

`A272291(n+n)%A000040(n+1)²`
-/

namespace A246329.P8340012336821325260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272291 (n + n)) (A000040 (n + 1) ^ 2)

end

end A246329.P8340012336821325260

/-! ## A246329.P4429530807055762047

`A272291(n+n)+(n+2)%A020639(n+2)`
-/

namespace A246329.P4429530807055762047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (n + n) + Int.tmod (n + 2 : ℤ) (A020639 (n + 2))

end

end A246329.P4429530807055762047

/-! ## A246329.P7639075690533878777

`A272291(Δ[A002061(n)])+A000007(n+1)`
-/

namespace A246329.P7639075690533878777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A246329.P7639075690533878777

/-!
# A246330: Total number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 462".

The programs for A246330, there is no canonical definition to state claims against.
-/

/-! ## A246330.P2422577464483586944

`A272312(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A246330.P2422577464483586944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272312 (n - 1) + a (n - 1)

end

end A246330.P2422577464483586944

/-! ## A246330.P9927756309483802248

`Δ[A272311(n)]-A272312(n)`
-/

namespace A246330.P9927756309483802248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272312 n

end

end A246330.P9927756309483802248

/-! ## A246330.P9026729749052989167

`A272311(n+1)-(A272312(n)+A272311(n))`
-/

namespace A246330.P9026729749052989167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272311 (n + 1) - (A272312 n + A272311 n)

end

end A246330.P9026729749052989167

/-! ## A246330.P1704834371452918621

`A016754(n)*A054977(n)-A272769(n)`
-/

namespace A246330.P1704834371452918621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A054977 n - A272769 n

end

end A246330.P1704834371452918621

/-! ## A246330.P16563650128515529892

`A181385(4*n+2)-A272769(n)`
-/

namespace A246330.P16563650128515529892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A272769 n

end

end A246330.P16563650128515529892

/-! ## A246330.P420485776109165552

`A008740(A008458(n))-A272769(n)`
-/

namespace A246330.P420485776109165552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272769 n

end

end A246330.P420485776109165552

/-!
# A246331: Total number of ON cells at stage 2n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 465".

The programs for A246331, the canonical program `A246331.P1220208335490983304` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246331 has offset 0).

The definition of A246331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246331.P1220208335490983304

`A151920(4*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246331

/-- `A151920(4*n)` -/
def P1220208335490983304.Spec : Prop :=
  ∀ n, P1220208335490983304.a n = A246331 n

theorem P1220208335490983304.correct : P1220208335490983304.Spec := by
  intro n
  simp only [A246331]

end A246331

/-! ## A246331.P16873703665661470717

`A147562(Δ[n²])`
-/

namespace A246331.P16873703665661470717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246331.P16873703665661470717

namespace A246331

/-- `A147562(Δ[n²])` -/
def P16873703665661470717.Spec : Prop :=
  ∀ n, P16873703665661470717.a n = A246331 n

end A246331

/-! ## A246331.P13825013717389581874

`A160410(n)+A147562(n+1)`
-/

namespace A246331.P13825013717389581874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n + A147562 (n + 1)

end

end A246331.P13825013717389581874

namespace A246331

/-- `A160410(n)+A147562(n+1)` -/
def P13825013717389581874.Spec : Prop :=
  ∀ n, P13825013717389581874.a n = A246331 n

end A246331

/-! ## A246331.P18116844815618517407

`A147582(n+1)+A147562(2*n)`
-/

namespace A246331.P18116844815618517407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1) + A147562 (2 * n)

end

end A246331.P18116844815618517407

namespace A246331

/-- `A147582(n+1)+A147562(2*n)` -/
def P18116844815618517407.Spec : Prop :=
  ∀ n, P18116844815618517407.a n = A246331 n

end A246331

/-! ## A246331.P17053333761457303516

`A147562(2*n)+A079315(2*n+1)`
-/

namespace A246331.P17053333761457303516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (2 * n) + A079315 (2 * n + 1)

end

end A246331.P17053333761457303516

namespace A246331

/-- `A147562(2*n)+A079315(2*n+1)` -/
def P17053333761457303516.Spec : Prop :=
  ∀ n, P17053333761457303516.a n = A246331 n

end A246331

/-! ## A246331.P15175236376480549780

`A323651(2*n+1)+A147562(2*n)`
-/

namespace A246331.P15175236376480549780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323651 (2 * n + 1) + A147562 (2 * n)

end

end A246331.P15175236376480549780

namespace A246331

/-- `A323651(2*n+1)+A147562(2*n)` -/
def P15175236376480549780.Spec : Prop :=
  ∀ n, P15175236376480549780.a n = A246331 n

end A246331

/-! ## A246331.P12847326613495018539

`A187223(2*n+1)+A187220(2*n+1)`
-/

namespace A246331.P12847326613495018539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187223 (2 * n + 1) + A187220 (2 * n + 1)

end

end A246331.P12847326613495018539

namespace A246331

/-- `A187223(2*n+1)+A187220(2*n+1)` -/
def P12847326613495018539.Spec : Prop :=
  ∀ n, P12847326613495018539.a n = A246331 n

end A246331

/-! ## A246331.P15582840352651953551

`A160164(2*n+1)-A255166(2*n+1)`
-/

namespace A246331.P15582840352651953551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (2 * n + 1) - A255166 (2 * n + 1)

end

end A246331.P15582840352651953551

namespace A246331

/-- `A160164(2*n+1)-A255166(2*n+1)` -/
def P15582840352651953551.Spec : Prop :=
  ∀ n, P15582840352651953551.a n = A246331 n

end A246331

/-! ## A246331.P14974208005436423395

`A272928(2*n+1)-A272928(2*n)`
-/

namespace A246331.P14974208005436423395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272928 (2 * n + 1) - A272928 (2 * n)

end

end A246331.P14974208005436423395

namespace A246331

/-- `A272928(2*n+1)-A272928(2*n)` -/
def P14974208005436423395.Spec : Prop :=
  ∀ n, P14974208005436423395.a n = A246331 n

end A246331

/-! ## A246331.P16493531468509753218

`A272313(2*n)`
-/

namespace A246331.P16493531468509753218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (2 * n)

end

end A246331.P16493531468509753218

namespace A246331

/-- `A272313(2*n)` -/
def P16493531468509753218.Spec : Prop :=
  ∀ n, P16493531468509753218.a n = A246331 n

end A246331

/-! ## A246331.P17282746482717610004

`A079317(4*n)`
-/

namespace A246331.P17282746482717610004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 (4 * n)

end

end A246331.P17282746482717610004

namespace A246331

/-- `A079317(4*n)` -/
def P17282746482717610004.Spec : Prop :=
  ∀ n, P17282746482717610004.a n = A246331 n

end A246331

/-! ## A246331.P12038282539139276659

`A162795(2*n+1)-A288775(2*n+1)`
-/

namespace A246331.P12038282539139276659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (2 * n + 1) - A288775 (2 * n + 1)

end

end A246331.P12038282539139276659

namespace A246331

/-- `A162795(2*n+1)-A288775(2*n+1)` -/
def P12038282539139276659.Spec : Prop :=
  ∀ n, P12038282539139276659.a n = A246331 n

end A246331

/-! ## A246331.P10462622956622136625

`A272416(4*n)`
-/

namespace A246331.P10462622956622136625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (4 * n)

end

end A246331.P10462622956622136625

namespace A246331

/-- `A272416(4*n)` -/
def P10462622956622136625.Spec : Prop :=
  ∀ n, P10462622956622136625.a n = A246331 n

end A246331

/-! ## A246331.P14256407143730377952

`A270217(4*n)`
-/

namespace A246331.P14256407143730377952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (4 * n)

end

end A246331.P14256407143730377952

namespace A246331

/-- `A270217(4*n)` -/
def P14256407143730377952.Spec : Prop :=
  ∀ n, P14256407143730377952.a n = A246331 n

end A246331

/-! ## A246331.P2503760731812528258

`A271285(4*n)`
-/

namespace A246331.P2503760731812528258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271285 (4 * n)

end

end A246331.P2503760731812528258

namespace A246331

/-- `A271285(4*n)` -/
def P2503760731812528258.Spec : Prop :=
  ∀ n, P2503760731812528258.a n = A246331 n

end A246331

/-! ## A246331.P5196430633979818615

`∩[A017077(n), A147562(n)]`
-/

namespace A246331.P5196430633979818615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246331.P5196430633979818615

namespace A246331

/-- `∩[A017077(n), A147562(n)]` -/
def P5196430633979818615.Spec : Prop :=
  ∀ n, (P5196430633979818615.a n : ℤ) = A246331 n

end A246331

/-! ## A246331.P12787229527573081738

`∩[A017077(n), A151920(n)]`
-/

namespace A246331.P12787229527573081738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246331.P12787229527573081738

namespace A246331

/-- `∩[A017077(n), A151920(n)]` -/
def P12787229527573081738.Spec : Prop :=
  ∀ n, (P12787229527573081738.a n : ℤ) = A246331 n

end A246331

/-! ## A246331.P5787713240292090161

`∩[A147562(n), A234000(n+1)]`
-/

namespace A246331.P5787713240292090161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246331.P5787713240292090161

namespace A246331

/-- `∩[A147562(n), A234000(n+1)]` -/
def P5787713240292090161.Spec : Prop :=
  ∀ n, (P5787713240292090161.a n : ℤ) = A246331 n

end A246331

/-! ## A246331.P2400389735838032471

`∩[A047452(n+1), A147562(n)]`
-/

namespace A246331.P2400389735838032471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246331.P2400389735838032471

namespace A246331

/-- `∩[A047452(n+1), A147562(n)]` -/
def P2400389735838032471.Spec : Prop :=
  ∀ n, (P2400389735838032471.a n : ℤ) = A246331 n

end A246331

/-! ## A246331.P4537747181466139891

`∩[A047461(n+1), A147562(n)]`
-/

namespace A246331.P4537747181466139891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246331.P4537747181466139891

namespace A246331

/-- `∩[A047461(n+1), A147562(n)]` -/
def P4537747181466139891.Spec : Prop :=
  ∀ n, (P4537747181466139891.a n : ℤ) = A246331 n

end A246331

/-!
# A246334: First bisection of A246333.

The programs for A246334, there is no canonical definition to state claims against.
-/

/-! ## A246334.P8559185499075790860

`A272543(2*n)`
-/

namespace A246334.P8559185499075790860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (2 * n)

end

end A246334.P8559185499075790860

/-! ## A246334.P11444547119890735656

`or(1, A272543(A005843(n)))`
-/

namespace A246334.P11444547119890735656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272543 (A005843 n).toNat)

end

end A246334.P11444547119890735656

/-! ## A246334.P8553025407910363046

`A000027(A272543(n+n))`
-/

namespace A246334.P8553025407910363046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272543 (n + n)).toNat

end

end A246334.P8553025407910363046

/-! ## A246334.P13219241916324229338

`filter[A272543(n), A039982(#)]`
-/

namespace A246334.P13219241916324229338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A246334.P13219241916324229338

/-! ## A246334.P8860960542986006790

`filter[A272543(n), A098725(#)]`
-/

namespace A246334.P8860960542986006790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A246334.P8860960542986006790

/-!
# A246335: Second bisection of A246333.

The programs for A246335, there is no canonical definition to state claims against.
-/

/-! ## A246335.P927766755626959358

`A271125(2*n)`
-/

namespace A246335.P927766755626959358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 (2 * n)

end

end A246335.P927766755626959358

/-! ## A246335.P5109653831505834776

`or(1, A271125(Δ[n²]-1))`
-/

namespace A246335.P5109653831505834776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271125 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat)

end

end A246335.P5109653831505834776

/-! ## A246335.P7091459209220553990

`gcd(n+1, n²)+A271125(n+n)-1`
-/

namespace A246335.P7091459209220553990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n ^ 2) : ℤ) + (A271125 (n + n) - 1)

end

end A246335.P7091459209220553990

/-! ## A246335.P6640201304680956764

`A000265(A271125(n+n))`
-/

namespace A246335.P6640201304680956764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A271125 (n + n)).toNat

end

end A246335.P6640201304680956764

/-! ## A246335.P11876296387170434445

`filter[A271125(n), A039982(#)]`
-/

namespace A246335.P11876296387170434445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A246335.P11876296387170434445

/-! ## A246335.P2929369685285536957

`filter[A271125(n), A098725(#)]`
-/

namespace A246335.P2929369685285536957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A246335.P2929369685285536957

/-! ## A246335.P11881381240669550425

`filter[A271125(n), A166486(#)]`
-/

namespace A246335.P11881381240669550425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A246335.P11881381240669550425

/-! ## A246335.P13673800617146600807

`filter[A271125(n), A341625(#)]`
-/

namespace A246335.P13673800617146600807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A246335.P13673800617146600807

/-! ## A246335.P3977909571628486118

`filter[A271125(n), A359550(#)]`
-/

namespace A246335.P3977909571628486118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A246335.P3977909571628486118

/-! ## A246335.P4697931126292410149

`A000027(A271125(Δ[n²]-1))`
-/

namespace A246335.P4697931126292410149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A271125 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat).toNat

end

end A246335.P4697931126292410149

/-!
# A246336: Partial sums of A151548.

The programs for A246336, there is no canonical definition to state claims against.
-/

/-! ## A246336.P8346373548414410928

`∑[A151548(n)]`
-/

namespace A246336.P8346373548414410928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P8346373548414410928

/-! ## A246336.P4713680757405168767

`∑[A151866(n)-A151864(n)]`
-/

namespace A246336.P4713680757405168767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151866 n - A151864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P4713680757405168767

/-! ## A246336.P12076971796859417518

`A255747(n)+A139250(n+1)`
-/

namespace A246336.P12076971796859417518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n + A139250 (n + 1)

end

end A246336.P12076971796859417518

/-! ## A246336.P9626873687184989250

`∑[A160552(n)+A139251(n+1)]`
-/

namespace A246336.P9626873687184989250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + A139251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P9626873687184989250

/-! ## A246336.P15632642098380869010

`∑[A160552(n+1)+2*A160552(n)]`
-/

namespace A246336.P15632642098380869010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) + 2 * A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P15632642098380869010

/-! ## A246336.P15368157646827916495

`A160164(n)+A139250(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A246336.P15368157646827916495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160164 n + A139250 (n + 1) - a (n - 1)

end

end A246336.P15368157646827916495

/-! ## A246336.P3649978519791310367

`∑[A151704(n+1)+A151568(n)]`
-/

namespace A246336.P3649978519791310367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151704 (n + 1) + A151568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P3649978519791310367

/-! ## A246336.P10177590183094590876

`A255747(n+1)+2*A255747(n)`
-/

namespace A246336.P10177590183094590876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (n + 1) + 2 * A255747 n

end

end A246336.P10177590183094590876

/-! ## A246336.P197715060239207200

`A159795(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A246336.P197715060239207200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159795 n + 1 - a (n - 1)

end

end A246336.P197715060239207200

/-! ## A246336.P3775837717099907266

`∑[A160552(A004760(n+2))]`
-/

namespace A246336.P3775837717099907266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A004760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P3775837717099907266

/-! ## A246336.P10372412933704012685

`∑[A160552(A206332(n+1))]`
-/

namespace A246336.P10372412933704012685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A206332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P10372412933704012685

/-! ## A246336.P12858328024760110711

`A194811(n)-a(n-1)` with `a(0)=1`
-/

namespace A246336.P12858328024760110711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194811 n - a (n - 1)

end

end A246336.P12858328024760110711

/-! ## A246336.P17625006743156457878

`∑[A147646(n)-a(n-1)]` with `a(0)=1`
-/

namespace A246336.P17625006743156457878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A147646 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P17625006743156457878

/-! ## A246336.P18441587620455390795

`A139250(n+1)+A266530(2*(n+1))/2`
-/

namespace A246336.P18441587620455390795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 (n + 1) : ℚ) + (A266530 (2 * (n + 1)) : ℚ) / 2

end

end A246336.P18441587620455390795

/-! ## A246336.P17857016681698168114

`∑[A266529(A079946(2*n+1)/2)]`
-/

namespace A246336.P17857016681698168114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (SequenceMachineLib.roundAway ((A079946 (2 * n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P17857016681698168114

/-! ## A246336.P11833422878518395612

`∑[A266529(A079946(n+1))]`
-/

namespace A246336.P11833422878518395612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (A079946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P11833422878518395612

/-! ## A246336.P13975333354097957551

`A255046(n)+A159793(n)`
-/

namespace A246336.P13975333354097957551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255046 n + A159793 n

end

end A246336.P13975333354097957551

/-! ## A246336.P1082291733387481829

`A255747(n+1)+A005843(A255747(n))`
-/

namespace A246336.P1082291733387481829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (n + 1) + A005843 (A255747 n).toNat

end

end A246336.P1082291733387481829

/-! ## A246336.P7962836771067095146

`A064680(A266530(2*(n+1)))+∑[A139251(n+1)]`
-/

namespace A246336.P7962836771067095146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A266530 (2 * (n + 1))).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246336.P7962836771067095146

/-!
# A246337: Numbers n which when expressed in base 16 are palindromes whose digit sum and digit product both divide n.

The programs for A246337, there is no canonical definition to state claims against.
-/

/-! ## A246337.P8328989326306155488

`record[C(A285773(n)+1, n²)+n]`
-/

namespace A246337.P8328989326306155488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285773 n + 1).toNat (n ^ 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246337.P8328989326306155488

/-! ## A246337.P12981179361772279668

`A109284(A184955(n))+n`
-/

namespace A246337.P12981179361772279668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109284 (A184955 n).toNat + (n : ℤ)

end

end A246337.P12981179361772279668

/-! ## A246337.P7827753862806173600

`A218435(A213003(n))+n`
-/

namespace A246337.P7827753862806173600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218435 (A213003 n).toNat + (n : ℤ)

end

end A246337.P7827753862806173600

/-! ## A246337.P10184285752194061650

`A044917(record[A291581(n+1)])`
-/

namespace A246337.P10184285752194061650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A246337.P10184285752194061650

/-! ## A246337.P11679702135734478632

`A048340(∑[C(A048326(n), n)])`
-/

namespace A246337.P11679702135734478632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048326 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246337.P11679702135734478632

/-!
# A246338: Numbers n which when expressed in base 8 are palindromes whose digit sum and digit product both divide n.

The programs for A246338, there is no canonical definition to state claims against.
-/

/-! ## A246338.P12646090725188015167

`A319782(C(n, 6))+n`
-/

namespace A246338.P12646090725188015167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319782 (Nat.choose n 6) + (n : ℤ)

end

end A246338.P12646090725188015167

/-! ## A246338.P9267337362093167202

`A186075(a(n-1))+1+n` with `a(0)=1`
-/

namespace A246338.P9267337362093167202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186075 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A246338.P9267337362093167202

/-! ## A246338.P294037903998901905

`A113899(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A246338.P294037903998901905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  A113899 (a (n - 1)).toNat

end

end A246338.P294037903998901905

/-! ## A246338.P16347121799251498685

`A153665(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A246338.P16347121799251498685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  A153665 (a (n - 1)).toNat

end

end A246338.P16347121799251498685

/-!
# A246339: Positions of 0 in base-2 representation of 1/sqrt(2).

The programs for A246339, there is no canonical definition to state claims against.
-/

/-! ## A246339.P11405754838529295355

`A320985(1+n)+1`
-/

namespace A246339.P11405754838529295355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (1 + n) + 1

end

end A246339.P11405754838529295355

/-! ## A246339.P5714487093481721138

`∪[A293761(n+1), A293762(n+1)]`
-/

namespace A246339.P5714487093481721138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246339.P5714487093481721138

/-! ## A246339.P639852041548461340

`∪[A293761(n+1), A293763(n+1)]+1`
-/

namespace A246339.P639852041548461340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A246339.P639852041548461340

/-! ## A246339.P9627459511006429735

`eq[0, A004539(n+1)]+1`
-/

namespace A246339.P9627459511006429735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246339.P9627459511006429735

/-! ## A246339.P4566801381032924645

`A020725(A320985(n+1))`
-/

namespace A246339.P4566801381032924645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A320985 (n + 1)).toNat

end

end A246339.P4566801381032924645

/-! ## A246339.P17242505667521385175

`eq[0, A004539(A028310(n))]`
-/

namespace A246339.P17242505667521385175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246339.P17242505667521385175

/-! ## A246339.P1358349565417612135

`lt[n*char[A004713(n+1)], n]`
-/

namespace A246339.P1358349565417612135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246339.P1358349565417612135

/-! ## A246339.P287127962142503499

`A000720(p?[A000040(n+1)-A004539(n+1)])`
-/

namespace A246339.P287127962142503499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A004539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246339.P287127962142503499

/-! ## A246339.P8494560967547372910

`A000720(p?[A004539(n+2)+A000040(n+2)])`
-/

namespace A246339.P8494560967547372910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246339.P8494560967547372910

/-! ## A246339.P12143937227653308125

`A056239(p?[A000040(n+1)-A004539(n+1)])`
-/

namespace A246339.P12143937227653308125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A004539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246339.P12143937227653308125

/-! ## A246339.P14438663062856570865

`A056239(p?[A004539(n+2)+A000040(n+2)])`
-/

namespace A246339.P14438663062856570865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246339.P14438663062856570865

/-! ## A246339.P6944372539195743409

`lt[A238455(n), 1]+2`
-/

namespace A246339.P6944372539195743409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A246339.P6944372539195743409

/-! ## A246339.P9979091156519507484

`lt[A201125(n+1)%2, 1]+1`
-/

namespace A246339.P9979091156519507484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201125 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246339.P9979091156519507484

/-! ## A246339.P15422720329760561895

`lt[A084188(n)%2, 1]+1`
-/

namespace A246339.P15422720329760561895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246339.P15422720329760561895

/-! ## A246339.P16718287538867559914

`lt[A017910(2*n+1), A056008(2*n+1)]+2`
-/

namespace A246339.P16718287538867559914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246339.P16718287538867559914

/-! ## A246339.P13052907258859668548

`lt[A056007(2*n+1), A056008(2*n+1)]+2`
-/

namespace A246339.P13052907258859668548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246339.P13052907258859668548

/-!
# A246340: Rectangular array: T(n,k) is the position in s = A004713 at which the block s(1)..s(n) occurs for the k-th time.

The programs for A246340, there is no canonical definition to state claims against.
-/

/-! ## A246340.P410811453962093098

`A347065(n+1)+A128174(A004801(n+1))`
-/

namespace A246340.P410811453962093098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347065 (n + 1) + A128174 (A004801 (n + 1)).toNat

end

end A246340.P410811453962093098

/-!
# A246342: a(0) = 12, after which, if a(n-1) = product_{k >= 1} (p_k)^(c_k), then a(n) = (1/2) * (1 + product_{k >= 1} (p_{k+1})^(c_k)), where p_k indicates the k-th prime, A000040(k).

The programs for A246342, the canonical program `A246342.P4380619750639108041` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246342 has offset 0).

The definition of A246342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246342.P4380619750639108041

`A048673(a(n-1))` with `a(0)=12`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A246342

/-- `A048673(a(n-1))` -/
def P4380619750639108041.Spec : Prop :=
  ∀ n, P4380619750639108041.a n = A246342 n

theorem P4380619750639108041.correct : P4380619750639108041.Spec := by
  intro n
  simp only [A246342]

end A246342

/-! ## A246342.P10126420436216071055

`A245447(a(n-2))` with `a(0)=12, a(1)=23`
-/

namespace A246342.P10126420436216071055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 23] fun n a =>
  A245447 (a (n - 2)).toNat

end

end A246342.P10126420436216071055

namespace A246342

/-- `A245447(a(n-2))` -/
def P10126420436216071055.Spec : Prop :=
  ∀ n, P10126420436216071055.a n = A246342 n

end A246342

/-! ## A246342.P2955380771877344307

`A243501(a(n-1))/2` with `a(0)=12`
-/

namespace A246342.P2955380771877344307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  (A243501 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A246342.P2955380771877344307

namespace A246342

/-- `A243501(a(n-1))/2` -/
def P2955380771877344307.Spec : Prop :=
  ∀ n, P2955380771877344307.a n = (A246342 n : ℚ)

end A246342

/-! ## A246342.P1710580882702087853

`ceil(A003961(a(n-1))/2)` with `a(0)=12`
-/

namespace A246342.P1710580882702087853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  ⌈(A003961 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A246342.P1710580882702087853

namespace A246342

/-- `ceil(A003961(a(n-1))/2)` -/
def P1710580882702087853.Spec : Prop :=
  ∀ n, P1710580882702087853.a n = A246342 n

end A246342

/-! ## A246342.P6576770408158602571

`ceil(A045965(a(n-1))/2)` with `a(0)=12`
-/

namespace A246342.P6576770408158602571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  ⌈(A045965 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A246342.P6576770408158602571

namespace A246342

/-- `ceil(A045965(a(n-1))/2)` -/
def P6576770408158602571.Spec : Prop :=
  ∀ n, P6576770408158602571.a n = A246342 n

end A246342

/-!
# A246343: a(0) = 12, after which, if (2*a(n-1)) - 1 = product_{k >= 1} (p_k)^(c_k) then a(n) = product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

The programs for A246343, the canonical program `A246343.P4277634324789432662` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246343 has offset 0).

The definition of A246343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246343.P4277634324789432662

`A064216(a(n-1))` with `a(0)=12`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246343

/-- `A064216(a(n-1))` -/
def P4277634324789432662.Spec : Prop :=
  ∀ n, P4277634324789432662.a n = A246343 n

theorem P4277634324789432662.correct : P4277634324789432662.Spec := by
  intro n
  simp only [A246343]

end A246343

/-! ## A246343.P2311720688415138678

`A243502(a(n-1))/2` with `a(0)=12`
-/

namespace A246343.P2311720688415138678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  (A243502 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A246343.P2311720688415138678

namespace A246343

/-- `A243502(a(n-1))/2` -/
def P2311720688415138678.Spec : Prop :=
  ∀ n, P2311720688415138678.a n = (A246343 n : ℚ)

end A246343

/-! ## A246343.P16997111718900175407

`A064216(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A246343.P16997111718900175407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A064216 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A246343.P16997111718900175407

namespace A246343

/-- `A064216(floor(n*a(floor(n²/(n+1))))/n)` -/
def P16997111718900175407.Spec : Prop :=
  ∀ n, P16997111718900175407.a n = A246343 n

end A246343

/-! ## A246343.P13801840297719682562

`A014682(A243502(a(n-1)))` with `a(0)=12`
-/

namespace A246343.P13801840297719682562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A014682 (A243502 (a (n - 1)).toNat).toNat

end

end A246343.P13801840297719682562

namespace A246343

/-- `A014682(A243502(a(n-1)))` -/
def P13801840297719682562.Spec : Prop :=
  ∀ n, P13801840297719682562.a n = A246343 n

end A246343

/-! ## A246343.P7957738042607935120

`A349122(A004273(a(n-1)))` with `a(0)=12`
-/

namespace A246343.P7957738042607935120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A349122 (A004273 (a (n - 1)).toNat).toNat

end

end A246343.P7957738042607935120

namespace A246343

/-- `A349122(A004273(a(n-1)))` -/
def P7957738042607935120.Spec : Prop :=
  ∀ n, P7957738042607935120.a n = A246343 n

end A246343

/-!
# A246344: a(0) = 16, after which, if a(n-1) = product_{k >= 1} (p_k)^(c_k), then a(n) = (1/2) * (1 + product_{k >= 1} (p_{k+1})^(c_k)), where p_k indicates the k-th prime, A000040(k).

The programs for A246344, the canonical program `A246344.P8517610500674386477` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246344 has offset 0).

The definition of A246344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246344.P8517610500674386477

`A048673(a(n-1))` with `a(0)=16`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A246344

/-- `A048673(a(n-1))` -/
def P8517610500674386477.Spec : Prop :=
  ∀ n, P8517610500674386477.a n = A246344 n

theorem P8517610500674386477.correct : P8517610500674386477.Spec := by
  intro n
  simp only [A246344]

end A246344

/-! ## A246344.P3328155791076304140

`A245447(a(n-2))` with `a(0)=16, a(1)=41`
-/

namespace A246344.P3328155791076304140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 41] fun n a =>
  A245447 (a (n - 2)).toNat

end

end A246344.P3328155791076304140

namespace A246344

/-- `A245447(a(n-2))` -/
def P3328155791076304140.Spec : Prop :=
  ∀ n, P3328155791076304140.a n = A246344 n

end A246344

/-! ## A246344.P16085917156264550724

`A243501(a(n-1))/2` with `a(0)=16`
-/

namespace A246344.P16085917156264550724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [16] fun n a =>
  (A243501 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A246344.P16085917156264550724

namespace A246344

/-- `A243501(a(n-1))/2` -/
def P16085917156264550724.Spec : Prop :=
  ∀ n, P16085917156264550724.a n = (A246344 n : ℚ)

end A246344

/-! ## A246344.P4675571051956502786

`ceil(A003961(a(n-1))/2)` with `a(0)=16`
-/

namespace A246344.P4675571051956502786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  ⌈(A003961 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A246344.P4675571051956502786

namespace A246344

/-- `ceil(A003961(a(n-1))/2)` -/
def P4675571051956502786.Spec : Prop :=
  ∀ n, P4675571051956502786.a n = A246344 n

end A246344

/-! ## A246344.P15949841048233632923

`ceil(A045965(a(n-1))/2)` with `a(0)=16`
-/

namespace A246344.P15949841048233632923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  ⌈(A045965 (a (n - 1)).toNat : ℚ) / 2⌉

end

end A246344.P15949841048233632923

namespace A246344

/-- `ceil(A045965(a(n-1))/2)` -/
def P15949841048233632923.Spec : Prop :=
  ∀ n, P15949841048233632923.a n = A246344 n

end A246344

/-!
# A246345: a(0) = 16, after which, if (2*a(n-1)) - 1 = product_{k >= 1} (p_k)^(c_k) then a(n) = product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

The programs for A246345, the canonical program `A246345.P13437629481216293027` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246345 has offset 0).

The definition of A246345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246345.P13437629481216293027

`A064216(a(n-1))` with `a(0)=16`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246345

/-- `A064216(a(n-1))` -/
def P13437629481216293027.Spec : Prop :=
  ∀ n, P13437629481216293027.a n = A246345 n

theorem P13437629481216293027.correct : P13437629481216293027.Spec := by
  intro n
  simp only [A246345]

end A246345

/-! ## A246345.P16874310644036471079

`A243502(a(n-1))/2` with `a(0)=16`
-/

namespace A246345.P16874310644036471079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [16] fun n a =>
  (A243502 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A246345.P16874310644036471079

namespace A246345

/-- `A243502(a(n-1))/2` -/
def P16874310644036471079.Spec : Prop :=
  ∀ n, P16874310644036471079.a n = (A246345 n : ℚ)

end A246345

/-! ## A246345.P10373309465660122117

`A064216(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A246345.P10373309465660122117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A064216 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A246345.P10373309465660122117

namespace A246345

/-- `A064216(floor(n*a(floor(n²/(n+1))))/n)` -/
def P10373309465660122117.Spec : Prop :=
  ∀ n, P10373309465660122117.a n = A246345 n

end A246345

/-! ## A246345.P13759347600945374514

`A014682(A243502(a(n-1)))` with `a(0)=16`
-/

namespace A246345.P13759347600945374514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A014682 (A243502 (a (n - 1)).toNat).toNat

end

end A246345.P13759347600945374514

namespace A246345

/-- `A014682(A243502(a(n-1)))` -/
def P13759347600945374514.Spec : Prop :=
  ∀ n, P13759347600945374514.a n = A246345 n

end A246345

/-! ## A246345.P3967542564649202610

`A349122(A004273(a(n-1)))` with `a(0)=16`
-/

namespace A246345.P3967542564649202610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A349122 (A004273 (a (n - 1)).toNat).toNat

end

end A246345.P3967542564649202610

namespace A246345

/-- `A349122(A004273(a(n-1)))` -/
def P3967542564649202610.Spec : Prop :=
  ∀ n, P3967542564649202610.a n = A246345 n

end A246345

/-!
# A246346: Positions of records in A135141.

The programs for A246346, there is no canonical definition to state claims against.
-/

/-! ## A246346.P14376553502712923275

`A227413(A246347(n+1))`
-/

namespace A246346.P14376553502712923275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A246347 (n + 1)).toNat

end

end A246346.P14376553502712923275

/-! ## A246346.P3944057501166548336

`A002808(a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A246346.P3944057501166548336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A002808 (a (n - 2)).toNat

end

end A246346.P3944057501166548336

/-! ## A246346.P16230199316107343437

`A018252(a(n-2)+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A246346.P16230199316107343437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A018252 (a (n - 2) + 1).toNat

end

end A246346.P16230199316107343437

/-! ## A246346.P5558169431198751774

`A141468(a(n-2)+2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A246346.P5558169431198751774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A141468 (a (n - 2) + 2).toNat

end

end A246346.P5558169431198751774

/-! ## A246346.P8152643440390943484

`A056653(a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A246346.P8152643440390943484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A056653 (a (n - 2)).toNat

end

end A246346.P8152643440390943484

/-! ## A246346.P17779369456634004291

`record[A135141(n+1)+n+1]-A246347(n+1)`
-/

namespace A246346.P17779369456634004291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A246347 (n + 1)

end

end A246346.P17779369456634004291

/-! ## A246346.P5556290695335724267

`A067747(2*a(n-2))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A246346.P5556290695335724267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A067747 (2 * a (n - 2)).toNat

end

end A246346.P5556290695335724267

/-!
# A246347: Record values in A135141.

The programs for A246347, the canonical program `A246347.P10614845833550129286` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246347 has offset 1).

The definition of A246347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246347.P4360454034309376577

`A135141(A246346(n+1))`
-/

namespace A246347.P4360454034309376577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A246346 (n + 1)).toNat

end

end A246347.P4360454034309376577

namespace A246347

/-- `A135141(A246346(n+1))` -/
def P4360454034309376577.Spec : Prop :=
  ∀ n, P4360454034309376577.a n = A246347 (n + 1)

end A246347

/-! ## A246347.P11624029188967013417

`ogf((1+x+2x^3-3x^4)/(1-x-2x^2+2x^3))`
-/

namespace A246347.P11624029188967013417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2, -3] [1, -1, -2, 2] n

end

end A246347.P11624029188967013417

namespace A246347

/-- `ogf((1+x+2x^3-3x^4)/(1-x-2x^2+2x^3))` -/
def P11624029188967013417.Spec : Prop :=
  ∀ n, P11624029188967013417.a n = A246347 (n + 1)

end A246347

/-! ## A246347.P10614845833550129286

`2*a(n-2)+1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246347

/-- `2*a(n-2)+1` -/
def P10614845833550129286.Spec : Prop :=
  ∀ n, (P10614845833550129286.a n : ℤ) = A246347 (n + 1)

theorem P10614845833550129286.correct : P10614845833550129286.Spec := by
  intro n
  simp only [A246347, Nat.add_sub_cancel]

end A246347

/-! ## A246347.P3896407166876601638

`or(1, 2*a(n-2))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A246347.P3896407166876601638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  Nat.lor 1 (2 * a (n - 2))

end

end A246347.P3896407166876601638

namespace A246347

/-- `or(1, 2*a(n-2))` -/
def P3896407166876601638.Spec : Prop :=
  ∀ n, (P3896407166876601638.a n : ℤ) = A246347 (n + 1)

end A246347

/-! ## A246347.P11456152788497818242

`∑[2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=1`
-/

namespace A246347.P11456152788497818242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246347.P11456152788497818242

namespace A246347

/-- `∑[2*a(n-2)]` -/
def P11456152788497818242.Spec : Prop :=
  ∀ n, (P11456152788497818242.a n : ℤ) = A246347 (n + 1)

end A246347

/-! ## A246347.P5549173332251263208

`a(n-2)+a(n-2)+1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A246347.P5549173332251263208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 2) + (a (n - 2) + 1)

end

end A246347.P5549173332251263208

namespace A246347

/-- `a(n-2)+a(n-2)+1` -/
def P5549173332251263208.Spec : Prop :=
  ∀ n, (P5549173332251263208.a n : ℤ) = A246347 (n + 1)

theorem P5549173332251263208.correct : P5549173332251263208.Spec := by
  intro n
  simp only [A246347, Nat.add_sub_cancel, A246347.P5549173332251263208.a, A246347.P10614845833550129286.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A246347

/-! ## A246347.P17086573770695046048

`A052955(n)+A274230(n)%A052551(n+1)`
-/

namespace A246347.P17086573770695046048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + Int.tmod (A274230 n) (A052551 (n + 1))

end

end A246347.P17086573770695046048

namespace A246347

/-- `A052955(n)+A274230(n)%A052551(n+1)` -/
def P17086573770695046048.Spec : Prop :=
  ∀ n, P17086573770695046048.a n = A246347 (n + 1)

end A246347

/-! ## A246347.P11139217546966578568

`record[A135141(n+1)]`
-/

namespace A246347.P11139217546966578568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246347.P11139217546966578568

namespace A246347

/-- `record[A135141(n+1)]` -/
def P11139217546966578568.Spec : Prop :=
  ∀ n, P11139217546966578568.a n = A246347 (n + 1)

end A246347

/-! ## A246347.P16140384336023732078

`record[A246363(A064216(n+1))]`
-/

namespace A246347.P16140384336023732078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246363 (A064216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246347.P16140384336023732078

namespace A246347

/-- `record[A246363(A064216(n+1))]` -/
def P16140384336023732078.Spec : Prop :=
  ∀ n, P16140384336023732078.a n = A246347 (n + 1)

end A246347

/-!
# A246348: a(1)=1, a(p_n) = 1 + a(n), a(c_n) = 1 + a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n); Also binary width of terms of A135141.

The programs for A246348, the canonical program `A246348.P15441118046010307260` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246348 has offset 1).

The definition of A246348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246348.P8913463463119677257

`1+floor(log2(A135141(n+1)))`
-/

namespace A246348.P8913463463119677257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.log 2 (A135141 (n + 1)).toNat

end

end A246348.P8913463463119677257

namespace A246348

/-- `1+floor(log2(A135141(n+1)))` -/
def P8913463463119677257.Spec : Prop :=
  ∀ n, (P8913463463119677257.a n : ℤ) = A246348 (n + 1)

end A246348

/-! ## A246348.P9465031954028268459

`A070939(A135141(n+1))`
-/

namespace A246348.P9465031954028268459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A135141 (n + 1)).toNat

end

end A246348.P9465031954028268459

namespace A246348

/-- `A070939(A135141(n+1))` -/
def P9465031954028268459.Spec : Prop :=
  ∀ n, P9465031954028268459.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P5096720769974649075

`A070939(A246377(n+1))`
-/

namespace A246348.P5096720769974649075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A246377 (n + 1)).toNat

end

end A246348.P5096720769974649075

namespace A246348

/-- `A070939(A246377(n+1))` -/
def P5096720769974649075.Spec : Prop :=
  ∀ n, P5096720769974649075.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P15441118046010307260

`a(A066136(n+1)-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A246348

/-- `a(A066136(n+1)-1)+1` -/
def P15441118046010307260.Spec : Prop :=
  ∀ n, (P15441118046010307260.a n : ℤ) = A246348 (n + 1)

theorem P15441118046010307260.correct : P15441118046010307260.Spec := by
  intro n
  simp only [A246348, Nat.add_sub_cancel]

end A246348

/-! ## A246348.P894316071862643066

`A246369(n+1)+A246370(n+1)+1`
-/

namespace A246348.P894316071862643066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246369 (n + 1) + (A246370 (n + 1) + 1)

end

end A246348.P894316071862643066

namespace A246348

/-- `A246369(n+1)+A246370(n+1)+1` -/
def P894316071862643066.Spec : Prop :=
  ∀ n, P894316071862643066.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P18126998622705282779

`A246370(n+1)+A246369(A002808(n+1))`
-/

namespace A246348.P18126998622705282779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246370 (n + 1) + A246369 (A002808 (n + 1)).toNat

end

end A246348.P18126998622705282779

namespace A246348

/-- `A246370(n+1)+A246369(A002808(n+1))` -/
def P18126998622705282779.Spec : Prop :=
  ∀ n, P18126998622705282779.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P13564062319087562608

`A252464(A246681(n+1))`
-/

namespace A246348.P13564062319087562608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A246681 (n + 1)).toNat

end

end A246348.P13564062319087562608

namespace A246348

/-- `A252464(A246681(n+1))` -/
def P13564062319087562608.Spec : Prop :=
  ∀ n, P13564062319087562608.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P17718568411330408734

`A246370(n+1)+A000120(A135141(n+1))`
-/

namespace A246348.P17718568411330408734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246370 (n + 1) + A000120 (A135141 (n + 1)).toNat

end

end A246348.P17718568411330408734

namespace A246348

/-- `A246370(n+1)+A000120(A135141(n+1))` -/
def P17718568411330408734.Spec : Prop :=
  ∀ n, P17718568411330408734.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P14505345036019511587

`A080791(A135141(n+1))+A246369(n+1)+1`
-/

namespace A246348.P14505345036019511587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A135141 (n + 1)).toNat + (A246369 (n + 1) + 1)

end

end A246348.P14505345036019511587

namespace A246348

/-- `A080791(A135141(n+1))+A246369(n+1)+1` -/
def P14505345036019511587.Spec : Prop :=
  ∀ n, P14505345036019511587.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P3833149564000399899

`A246369(n+1)+A000120(A246377(n+1))`
-/

namespace A246348.P3833149564000399899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246369 (n + 1) + A000120 (A246377 (n + 1)).toNat

end

end A246348.P3833149564000399899

namespace A246348

/-- `A246369(n+1)+A000120(A246377(n+1))` -/
def P3833149564000399899.Spec : Prop :=
  ∀ n, P3833149564000399899.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P14489030269097513794

`A059939(2*A246377(n+1))+1`
-/

namespace A246348.P14489030269097513794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (2 * A246377 (n + 1)).toNat + 1

end

end A246348.P14489030269097513794

namespace A246348

/-- `A059939(2*A246377(n+1))+1` -/
def P14489030269097513794.Spec : Prop :=
  ∀ n, P14489030269097513794.a n = A246348 (n + 1)

end A246348

/-! ## A246348.P11068841150529521886

`A000120(A246377(n+1)+A135141(n+1))`
-/

namespace A246348.P11068841150529521886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A246377 (n + 1) + A135141 (n + 1)).toNat

end

end A246348.P11068841150529521886

namespace A246348

/-- `A000120(A246377(n+1)+A135141(n+1))` -/
def P11068841150529521886.Spec : Prop :=
  ∀ n, P11068841150529521886.a n = A246348 (n + 1)

end A246348

/-!
# A246349: Positions of records in A246272.

The programs for A246349, there is no canonical definition to state claims against.
-/

/-! ## A246349.P18037643430346525607

`record[A225821(A046816(n))]`
-/

namespace A246349.P18037643430346525607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A046816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246349.P18037643430346525607

/-! ## A246349.P4840398353443527481

`record[A275735(A348565(n+1))]`
-/

namespace A246349.P4840398353443527481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (A348565 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246349.P4840398353443527481

/-! ## A246349.P7081116196847187414

`record[gcd(A006955(n), A133314(n))]`
-/

namespace A246349.P7081116196847187414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006955 n) (A133314 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246349.P7081116196847187414

/-! ## A246349.P3040310552531318800

`record[gcd(A087651(n), A088902(n+1))]`
-/

namespace A246349.P3040310552531318800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087651 n) (A088902 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246349.P3040310552531318800

/-! ## A246349.P5605717307291639565

`A019565(lt[A330099(n+1), A048883(n)])`
-/

namespace A246349.P5605717307291639565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246349.P5605717307291639565

/-!
# A246350: Record values in A246272.

The programs for A246350, there is no canonical definition to state claims against.
-/

/-! ## A246350.P17627986002930073147

`A246272(A246349(n+1))`
-/

namespace A246350.P17627986002930073147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (A246349 (n + 1)).toNat

end

end A246350.P17627986002930073147

/-! ## A246350.P17576016959746868449

`record[A246272(n+1)]`
-/

namespace A246350.P17576016959746868449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246350.P17576016959746868449

/-! ## A246350.P14995445753032636221

`record[A246272(A046816(n))]-char[17]`
-/

namespace A246350.P14995445753032636221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (A046816 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A246350.P14995445753032636221

/-! ## A246350.P70713074945651620

`record[A246272(A328571(n))/gcd(2, n)]`
-/

namespace A246350.P70713074945651620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246272 (A328571 n).toNat : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246350.P70713074945651620

/-! ## A246350.P1676874881961991597

`record[A246272(A046816(n))]*A054977(n)`
-/

namespace A246350.P1676874881961991597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (A046816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A054977 n

end

end A246350.P1676874881961991597

/-!
# A246351: Numbers k such that A048673(k) < k.

The programs for A246351, the canonical program `A246351.P15656602069744410068` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246351 has offset 1).

The definition of A246351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7569 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246351.P15656602069744410068

`lt[A336853(n+1), n]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A246351

/-- `lt[A336853(n+1), n]+1` -/
def P15656602069744410068.Spec : Prop :=
  ∀ n, (P15656602069744410068.a n : ℤ) = A246351 (n + 1)

theorem P15656602069744410068.correct : P15656602069744410068.Spec := by
  intro n
  simp only [A246351, Nat.add_sub_cancel]

end A246351

/-! ## A246351.P2320528355865198930

`lt[A253885(n), 2*n]+1`
-/

namespace A246351.P2320528355865198930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P2320528355865198930

namespace A246351

/-- `lt[A253885(n), 2*n]+1` -/
def P2320528355865198930.Spec : Prop :=
  ∀ n, (P2320528355865198930.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P12440269397634272277

`lt[A253885(n+1)/2, n+1]+2`
-/

namespace A246351.P12440269397634272277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 2

end

end A246351.P12440269397634272277

namespace A246351

/-- `lt[A253885(n+1)/2, n+1]+2` -/
def P12440269397634272277.Spec : Prop :=
  ∀ n, (P12440269397634272277.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P765237613042192642

`lt[A048673(abs(1-n)+1), n]`
-/

namespace A246351.P765237613042192642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246351.P765237613042192642

namespace A246351

/-- `lt[A048673(abs(1-n)+1), n]` -/
def P765237613042192642.Spec : Prop :=
  ∀ n, (P765237613042192642.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P10713629891846005852

`lt[A048673(n+1), n+1]+1`
-/

namespace A246351.P10713629891846005852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P10713629891846005852

namespace A246351

/-- `lt[A048673(n+1), n+1]+1` -/
def P10713629891846005852.Spec : Prop :=
  ∀ n, (P10713629891846005852.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P15988749357252364867

`lt[A003961(n+1), 2*n]+1`
-/

namespace A246351.P15988749357252364867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P15988749357252364867

namespace A246351

/-- `lt[A003961(n+1), 2*n]+1` -/
def P15988749357252364867.Spec : Prop :=
  ∀ n, (P15988749357252364867.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P13420286958745118587

`lt[A045965(n+1), 2*n]+1`
-/

namespace A246351.P13420286958745118587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P13420286958745118587

namespace A246351

/-- `lt[A045965(n+1), 2*n]+1` -/
def P13420286958745118587.Spec : Prop :=
  ∀ n, (P13420286958745118587.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P15187182461110181844

`lt[A349573(2*(n+1)), n]+1`
-/

namespace A246351.P15187182461110181844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P15187182461110181844

namespace A246351

/-- `lt[A349573(2*(n+1)), n]+1` -/
def P15187182461110181844.Spec : Prop :=
  ∀ n, (P15187182461110181844.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P11288513369768089207

`A326178(lt[A003961(n+1), 2*n])`
-/

namespace A246351.P11288513369768089207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A246351.P11288513369768089207

namespace A246351

/-- `A326178(lt[A003961(n+1), 2*n])` -/
def P11288513369768089207.Spec : Prop :=
  ∀ n, P11288513369768089207.a n = A246351 (n + 1)

end A246351

/-! ## A246351.P11042461184266095415

`A326178(lt[A003961(n+1)/2, n])`
-/

namespace A246351.P11042461184266095415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A246351.P11042461184266095415

namespace A246351

/-- `A326178(lt[A003961(n+1)/2, n])` -/
def P11042461184266095415.Spec : Prop :=
  ∀ n, P11042461184266095415.a n = A246351 (n + 1)

end A246351

/-! ## A246351.P9289365125867889472

`A326178(lt[A003961(n+1)-n, n])`
-/

namespace A246351.P9289365125867889472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A246351.P9289365125867889472

namespace A246351

/-- `A326178(lt[A003961(n+1)-n, n])` -/
def P9289365125867889472.Spec : Prop :=
  ∀ n, P9289365125867889472.a n = A246351 (n + 1)

end A246351

/-! ## A246351.P7361092383012929711

`lt[A297166(2*(n+1)), 2*n]+1`
-/

namespace A246351.P7361092383012929711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246351.P7361092383012929711

namespace A246351

/-- `lt[A297166(2*(n+1)), 2*n]+1` -/
def P7361092383012929711.Spec : Prop :=
  ∀ n, (P7361092383012929711.a n : ℤ) = A246351 (n + 1)

end A246351

/-! ## A246351.P8141520707970841461

`lt[A297166(A004277(n))+1, A004277(n)]`
-/

namespace A246351.P8141520707970841461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (A004277 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246351.P8141520707970841461

namespace A246351

/-- `lt[A297166(A004277(n))+1, A004277(n)]` -/
def P8141520707970841461.Spec : Prop :=
  ∀ n, (P8141520707970841461.a n : ℤ) = A246351 (n + 1)

end A246351

/-!
# A246352: Numbers n such that A048673(n) >= n.

The programs for A246352, the canonical program `A246352.P420064894490892469` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246352 has offset 1).

The definition of A246352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246352.P420064894490892469

`lt[n, A336853(n+1)+1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A246352

/-- `lt[n, A336853(n+1)+1]+1` -/
def P420064894490892469.Spec : Prop :=
  ∀ n, (P420064894490892469.a n : ℤ) = A246352 (n + 1)

theorem P420064894490892469.correct : P420064894490892469.Spec := by
  intro n
  simp only [A246352, Nat.add_sub_cancel]

end A246352

/-! ## A246352.P9633055049005374444

`lt[n, A048673(n+1)]+1`
-/

namespace A246352.P9633055049005374444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P9633055049005374444

namespace A246352

/-- `lt[n, A048673(n+1)]+1` -/
def P9633055049005374444.Spec : Prop :=
  ∀ n, (P9633055049005374444.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P3781862004114179525

`lt[1-A252748(n+1), 3]+1`
-/

namespace A246352.P3781862004114179525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A252748 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246352.P3781862004114179525

namespace A246352

/-- `lt[1-A252748(n+1), 3]+1` -/
def P3781862004114179525.Spec : Prop :=
  ∀ n, (P3781862004114179525.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P12669355299838066381

`lt[n, A108228(n+1)+1]+1`
-/

namespace A246352.P12669355299838066381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P12669355299838066381

namespace A246352

/-- `lt[n, A108228(n+1)+1]+1` -/
def P12669355299838066381.Spec : Prop :=
  ∀ n, (P12669355299838066381.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P10528937966247014256

`lt[2*n, A003961(n+1)]+1`
-/

namespace A246352.P10528937966247014256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P10528937966247014256

namespace A246352

/-- `lt[2*n, A003961(n+1)]+1` -/
def P10528937966247014256.Spec : Prop :=
  ∀ n, (P10528937966247014256.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P9195241682278180549

`lt[2*n, A045965(n+1)]+1`
-/

namespace A246352.P9195241682278180549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P9195241682278180549

namespace A246352

/-- `lt[2*n, A045965(n+1)]+1` -/
def P9195241682278180549.Spec : Prop :=
  ∀ n, (P9195241682278180549.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P1303682695606254334

`lt[2*n, A243501(n+1)]+1`
-/

namespace A246352.P1303682695606254334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P1303682695606254334

namespace A246352

/-- `lt[2*n, A243501(n+1)]+1` -/
def P1303682695606254334.Spec : Prop :=
  ∀ n, (P1303682695606254334.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P7839896905297674145

`lt[2*n, A253885(n)+1]+1`
-/

namespace A246352.P7839896905297674145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P7839896905297674145

namespace A246352

/-- `lt[2*n, A253885(n)+1]+1` -/
def P7839896905297674145.Spec : Prop :=
  ∀ n, (P7839896905297674145.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P1264341458390915721

`lt[n, A249810(2*(n+1))]+1`
-/

namespace A246352.P1264341458390915721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P1264341458390915721

namespace A246352

/-- `lt[n, A249810(2*(n+1))]+1` -/
def P1264341458390915721.Spec : Prop :=
  ∀ n, (P1264341458390915721.a n : ℤ) = A246352 (n + 1)

end A246352

/-! ## A246352.P2195187821957963201

`lt[2*n, A297166(2*(n+1))]+1`
-/

namespace A246352.P2195187821957963201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246352.P2195187821957963201

namespace A246352

/-- `lt[2*n, A297166(2*(n+1))]+1` -/
def P2195187821957963201.Spec : Prop :=
  ∀ n, (P2195187821957963201.a n : ℤ) = A246352 (n + 1)

end A246352

/-!
# A246353: If n = Sum 2^e_i, e_i distinct, then a(n) = Position of (product prime_{e_i+1}) among squarefree numbers (A005117).

The programs for A246353, there is no canonical definition to state claims against.
-/

/-! ## A246353.P8414827111635178200

`A064273(n)+1`
-/

namespace A246353.P8414827111635178200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064273 n + 1

end

end A246353.P8414827111635178200

/-! ## A246353.P8524839571129915870

`A013928(1+A019565(n))`
-/

namespace A246353.P8524839571129915870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (1 + A019565 n).toNat

end

end A246353.P8524839571129915870

/-! ## A246353.P5966528961884595111

`1-A057428(n)*A064273(n)`
-/

namespace A246353.P5966528961884595111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A064273 n

end

end A246353.P5966528961884595111

/-! ## A246353.P4994634262799707964

`A005408(n)-(2*n-A064273(n))`
-/

namespace A246353.P4994634262799707964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A064273 n)

end

end A246353.P4994634262799707964

/-! ## A246353.P3771475633641757223

`A040000(n)-(A057427(n)-A064273(n))`
-/

namespace A246353.P3771475633641757223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - (A057427 n - A064273 n)

end

end A246353.P3771475633641757223

/-! ## A246353.P17723782256440007275

`A040001(2*n)-(A057427(n)-A064273(n))`
-/

namespace A246353.P17723782256440007275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) - (A057427 n - A064273 n)

end

end A246353.P17723782256440007275

/-! ## A246353.P3229951620715360099

`A020639(A005899(n))-(A057427(n)-A064273(n))`
-/

namespace A246353.P3229951620715360099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005899 n).toNat - (A057427 n - A064273 n)

end

end A246353.P3229951620715360099

/-! ## A246353.P13100084768685792363

`A107079(A019565(n))`
-/

namespace A246353.P13100084768685792363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A019565 n).toNat

end

end A246353.P13100084768685792363

/-! ## A246353.P2705543437950926272

`A013928(A339809(n)+2)`
-/

namespace A246353.P2705543437950926272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A339809 n + 2).toNat

end

end A246353.P2705543437950926272

/-! ## A246353.P11913089256051462285

`A107079(root(A334110(n), 2))`
-/

namespace A246353.P11913089256051462285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (SequenceMachineLib.roundAway ((A334110 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A246353.P11913089256051462285

/-! ## A246353.P1186851169475044276

`1-A013928(A019565(n))*A057428(n)`
-/

namespace A246353.P1186851169475044276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A013928 (A019565 n).toNat * A057428 n

end

end A246353.P1186851169475044276

/-! ## A246353.P3148501415562145763

`A013928(A019565(n))-A057428(A070939(n))`
-/

namespace A246353.P3148501415562145763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A019565 n).toNat - A057428 (A070939 n).toNat

end

end A246353.P3148501415562145763

/-! ## A246353.P12871753456905952930

`A322590(A019565(2*n-n))`
-/

namespace A246353.P12871753456905952930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A019565 (2 * n - n)).toNat

end

end A246353.P12871753456905952930

/-! ## A246353.P1835249175226605354

`A277196(A048680(n))`
-/

namespace A246353.P1835249175226605354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277196 (A048680 n).toNat

end

end A246353.P1835249175226605354

/-!
# A246354: Rectangular array: T(n,k) is the position in the infinite Fibonacci word s = A003849 at which the block s(1)..s(n) occurs for the k-th time.

The programs for A246354, there is no canonical definition to state claims against.
-/

/-! ## A246354.P4297286458489159113

`A246337(A321537(n)+A246340(n+1))`
-/

namespace A246354.P4297286458489159113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246337 (A321537 n + A246340 (n + 1)).toNat

end

end A246354.P4297286458489159113

/-! ## A246354.P12233314047840111470

`A246337(A246340(n+1)+A024153(n+1))`
-/

namespace A246354.P12233314047840111470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246337 (A246340 (n + 1) + A024153 (n + 1)).toNat

end

end A246354.P12233314047840111470

/-! ## A246354.P9206937741572598518

`A246340(n+1)+A025469(A316220(n+1))`
-/

namespace A246354.P9206937741572598518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246340 (n + 1) + A025469 (A316220 (n + 1)).toNat

end

end A246354.P9206937741572598518

/-! ## A246354.P11958200290012456135

`A316869(A001333(n))+A246340(n+1)`
-/

namespace A246354.P11958200290012456135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A001333 n).toNat + A246340 (n + 1)

end

end A246354.P11958200290012456135

/-!
# A246355: Rectangular array: T(n,k) is the position in the infinite Fibonacci word s = A003849 at which the block s(2)..s(n+1) occurs for the k-th time.

The programs for A246355, there is no canonical definition to state claims against.
-/

/-! ## A246355.P1387410911633877586

`A057347(A255238(n)^A119335(3*n+4))`
-/

namespace A246355.P1387410911633877586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057347 (SequenceMachineLib.roundAway ((A255238 n : ℚ) ^ (A119335 (3 * n + 4) : ℤ))).toNat

end

end A246355.P1387410911633877586

/-!
# A246356: Numbers k such that d(r,k) = 0 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(3)}, and { } = fractional part.

The programs for A246356, there is no canonical definition to state claims against.
-/

/-! ## A246356.P8317212354646391946

`∩[A247454(n+1), A320985(n+1)]`
-/

namespace A246356.P8317212354646391946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246356.P8317212354646391946

/-! ## A246356.P14437327842097410109

`eq[sin(A004539(n+1)), A004547(n+1)]`
-/

namespace A246356.P14437327842097410109
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A004539 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A246356.P14437327842097410109

/-! ## A246356.P9193905701495929054

`lt[A004547(n+1), char[A246339(n+1)-1]]`
-/

namespace A246356.P9193905701495929054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246356.P9193905701495929054

/-! ## A246356.P10949109316251761792

`A028310(eq[2*A004539(n+1), A004547(n+1)])`
-/

namespace A246356.P10949109316251761792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246356.P10949109316251761792

/-! ## A246356.P10950799364956926730

`A028310(eq[A004539(n+1)/2, A004547(n+1)])`
-/

namespace A246356.P10950799364956926730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004539 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A246356.P10950799364956926730

/-! ## A246356.P5611831506247386764

`eq[A004547(n+1)+A004539(n+1), A000007(n)]`
-/

namespace A246356.P5611831506247386764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1) + A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P5611831506247386764

/-! ## A246356.P835568769913712333

`eq[A000217(n*A004539(n+1)), A004547(n+1)]`
-/

namespace A246356.P835568769913712333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) * A004539 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P835568769913712333

/-! ## A246356.P3540075679286902372

`eq[A000290(n*A004539(n+1)), A004547(n+1)]`
-/

namespace A246356.P3540075679286902372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n : ℤ) * A004539 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P3540075679286902372

/-! ## A246356.P5903353462698591959

`eq[A000788(n)*A004539(n+1), A004547(n+1)]`
-/

namespace A246356.P5903353462698591959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n * A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P5903353462698591959

/-! ## A246356.P15572778390142043746

`eq[A004539(n+1), A008586(n*A004547(n+1))]`
-/

namespace A246356.P15572778390142043746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 ((n : ℤ) * A004547 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P15572778390142043746

/-! ## A246356.P2561156374100046895

`eq[A004539(n+1)*A246358(n+1), A004547(n+1)]`
-/

namespace A246356.P2561156374100046895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) * A246358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P2561156374100046895

/-! ## A246356.P1631679545222476457

`eq[A004539(n+1)*A247356(n+1), A004547(n+1)]`
-/

namespace A246356.P1631679545222476457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) * A247356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P1631679545222476457

/-! ## A246356.P8795720121369188701

`eq[A004539(n+1)*A247456(n+1), A004547(n+1)]`
-/

namespace A246356.P8795720121369188701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) * A247456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P8795720121369188701

/-! ## A246356.P15368932884350469372

`eq[A004539(n+1)*A247457(n+1), A004547(n+1)]`
-/

namespace A246356.P15368932884350469372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) * A247457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P15368932884350469372

/-! ## A246356.P13146815292688071611

`eq[A004539(n+1)*A247458(n+1), A004547(n+1)]`
-/

namespace A246356.P13146815292688071611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) * A247458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P13146815292688071611

/-! ## A246356.P17203055718101863706

`eq[A004539(n+1)*A247758(n+1), A004547(n+1)]`
-/

namespace A246356.P17203055718101863706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) * A247758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246356.P17203055718101863706

/-!
# A246357: Numbers k such that d(r,k) = 0 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(3)}, and { } = fractional part.

The programs for A246357, there is no canonical definition to state claims against.
-/

/-! ## A246357.P14749276697522586837

`∩[A247324(n+1), A320985(n+1)]`
-/

namespace A246357.P14749276697522586837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246357.P14749276697522586837

/-! ## A246357.P11324114876293192031

`lt[A004539(n+1), A004547(n+1)]`
-/

namespace A246357.P11324114876293192031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246357.P11324114876293192031

/-! ## A246357.P11241901974912432396

`eq[char[A246356(n+1)], A004539(n+1)]`
-/

namespace A246357.P11241901974912432396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246357.P11241901974912432396

/-! ## A246357.P11993420903278707219

`lt[A004539(n+1), char[A247324(n+1)]]`
-/

namespace A246357.P11993420903278707219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246357.P11993420903278707219

/-! ## A246357.P12726698235006068413

`lt[1, A004547(n+1)+char[A247324(n+1)]]`
-/

namespace A246357.P12726698235006068413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246357.P12726698235006068413

/-! ## A246357.P14826126254531196169

`lt[char[A004713(n+1)-1], A004547(n+1)]`
-/

namespace A246357.P14826126254531196169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A246357.P14826126254531196169

/-! ## A246357.P4308656656064119126

`lt[1-char[A246339(n+1)-1], A004547(n+1)]`
-/

namespace A246357.P4308656656064119126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246357.P4308656656064119126

/-! ## A246357.P17791823849563933260

`eq[A267936(n)+A004539(n+1), A004547(n+1)]`
-/

namespace A246357.P17791823849563933260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 n + A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246357.P17791823849563933260

/-!
# A246358: Numbers k such that d(r,k) = 1 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(3)}, and { } = fractional part.

The programs for A246358, there is no canonical definition to state claims against.
-/

/-! ## A246358.P7003015182290656663

`∩[A092855(n+1), A247324(n+1)]`
-/

namespace A246358.P7003015182290656663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246358.P7003015182290656663

/-! ## A246358.P8774150435835586771

`lt[A004547(n+1), A004539(n+1)]`
-/

namespace A246358.P8774150435835586771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246358.P8774150435835586771

/-! ## A246358.P15758223870222796043

`lt[A004547(n+1), char[A247324(n+1)]]`
-/

namespace A246358.P15758223870222796043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246358.P15758223870222796043

/-! ## A246358.P9722075942846847160

`lt[1, A004539(n+1)+char[A247324(n+1)]]`
-/

namespace A246358.P9722075942846847160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247324 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246358.P9722075942846847160

/-! ## A246358.P16062544697838127289

`lt[A004547(n+1), char[A004713(n+1)-1]]`
-/

namespace A246358.P16062544697838127289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246358.P16062544697838127289

/-! ## A246358.P17189454377170007965

`lt[A004547(n+1), 1-char[A246339(n+1)-1]]`
-/

namespace A246358.P17189454377170007965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1) - 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246358.P17189454377170007965

/-! ## A246358.P6344632276682374598

`eq[val(A201125(n+1), 2), A004547(n+1)]`
-/

namespace A246358.P6344632276682374598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A201125 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246358.P6344632276682374598

/-! ## A246358.P5267062275595381900

`lt[A004547(n+1), gcd(2, A017912(2*n+1))-1]`
-/

namespace A246358.P5267062275595381900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A017912 (2 * n + 1)) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246358.P5267062275595381900

/-!
# A246359: Maximum digit in the factorial base expansion of n (A007623).

The programs for A246359, there is no canonical definition to state claims against.
-/

/-! ## A246359.P9030215143988898149

`1+a(A257684(n))` with `a(0)=0, a(1)=1`
-/

namespace A246359.P9030215143988898149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A257684 n).toNat

end

end A246359.P9030215143988898149

/-! ## A246359.P4001733329832200883

`A051903(A276076(n))`
-/

namespace A246359.P4001733329832200883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A276076 n).toNat

end

end A246359.P4001733329832200883

/-! ## A246359.P15517012162522736364

`val(A278236(n), 2)`
-/

namespace A246359.P15517012162522736364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278236 n).toNat 2

end

end A246359.P15517012162522736364

/-! ## A246359.P623312352925697246

`a(A257684(n))+1` with `a(0)=0`
-/

namespace A246359.P623312352925697246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A257684 n).toNat + 1

end

end A246359.P623312352925697246

/-! ## A246359.P8236266098418101636

`a(A276009(n))+1` with `a(0)=0`
-/

namespace A246359.P8236266098418101636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A276009 n).toNat + 1

end

end A246359.P8236266098418101636

/-! ## A246359.P8616656977290432948

`a(n-A276008(n))+1` with `a(0)=0`
-/

namespace A246359.P8616656977290432948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A276008 n).toNat + 1

end

end A246359.P8616656977290432948

/-! ## A246359.P12078078299982410512

`A061395(A275735(n))`
-/

namespace A246359.P12078078299982410512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A275735 n).toNat

end

end A246359.P12078078299982410512

/-! ## A246359.P9666629966128004735

`log2(gcd(A140513(n), A278236(n)))`
-/

namespace A246359.P9666629966128004735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A140513 n) (A278236 n) : ℝ)

end

end A246359.P9666629966128004735

/-! ## A246359.P2328895884974898825

`A007814(and(A003817(n+1), A278236(n)))`
-/

namespace A246359.P2328895884974898825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land (A003817 (n + 1)) (A278236 n)).toNat

end

end A246359.P2328895884974898825

/-! ## A246359.P14982902765090604450

`A099563(A351988(n))`
-/

namespace A246359.P14982902765090604450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A351988 n).toNat

end

end A246359.P14982902765090604450

/-! ## A246359.P16098144740262751237

`A328114(A351576(n))`
-/

namespace A246359.P16098144740262751237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A351576 n).toNat

end

end A246359.P16098144740262751237

/-! ## A246359.P10160102076933036707

`A051903(A278236(n))`
-/

namespace A246359.P10160102076933036707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278236 n).toNat

end

end A246359.P10160102076933036707

/-! ## A246359.P2470337166063482164

`A054055(A007623(n))`
-/

namespace A246359.P2470337166063482164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007623 n).toNat

end

end A246359.P2470337166063482164

/-! ## A246359.P213227810817644890

`A054055(A064039(n+1))`
-/

namespace A246359.P213227810817644890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A064039 (n + 1)).toNat

end

end A246359.P213227810817644890

/-!
# A246360: a(1) = 1, then A007051 ((3^n)+1)/2 interleaved with A057198 (5*3^(n-1)+1)/2.

The programs for A246360, the canonical program `A246360.P7980695317397057140` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246360 has offset 1).

The definition of A246360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246360.P2631398538043511835

`ogf((1+x-2x^2-x^3)/(1-x-3x^2+3x^3))`
-/

namespace A246360.P2631398538043511835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, -1, -3, 3] n

end

end A246360.P2631398538043511835

namespace A246360

/-- `ogf((1+x-2x^2-x^3)/(1-x-3x^2+3x^3))` -/
def P2631398538043511835.Spec : Prop :=
  ∀ n, P2631398538043511835.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P7980695317397057140

`A048673(A029744(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A246360

/-- `A048673(A029744(n+1))` -/
def P7980695317397057140.Spec : Prop :=
  ∀ n, P7980695317397057140.a n = A246360 (n + 1)

theorem P7980695317397057140.correct : P7980695317397057140.Spec := by
  intro n
  simp only [A246360, Nat.add_sub_cancel]

end A246360

/-! ## A246360.P1990821709091254941

`∑[ogf((1+x-2x^2-x^3)/(1-3x^2))]`
-/

namespace A246360.P1990821709091254941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246360.P1990821709091254941

namespace A246360

/-- `∑[ogf((1+x-2x^2-x^3)/(1-3x^2))]` -/
def P1990821709091254941.Spec : Prop :=
  ∀ n, P1990821709091254941.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P4776876682474776669

`3*a(n-2)-1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A246360.P4776876682474776669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * a (n - 2) - 1

end

end A246360.P4776876682474776669

namespace A246360

/-- `3*a(n-2)-1` -/
def P4776876682474776669.Spec : Prop :=
  ∀ n, P4776876682474776669.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P16453757588030184969

`lcm(3, 1-a(n-2))+2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A246360.P16453757588030184969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.lcm 3 (1 - (a (n - 2) : ℤ)) + 2

end

end A246360.P16453757588030184969

namespace A246360

/-- `lcm(3, 1-a(n-2))+2` -/
def P16453757588030184969.Spec : Prop :=
  ∀ n, (P16453757588030184969.a n : ℤ) = A246360 (n + 1)

end A246360

/-! ## A246360.P17002302586120277428

`∑[∑[floor(3^∑[a(n-2)²])]]` with `a(0)=0, a(1)=-1`
-/

namespace A246360.P17002302586120277428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f3 =>
  f3 (n - 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f3 j : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246360.P17002302586120277428

namespace A246360

/-- `∑[∑[floor(3^∑[a(n-2)²])]]` -/
def P17002302586120277428.Spec : Prop :=
  ∀ n, P17002302586120277428.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P15826602615520318157

`∑[∑[round(3^(ceil((n-2)/2)-1))]+1]`
-/

namespace A246360.P15826602615520318157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌈((n : ℤ) - 2 : ℚ) / 2⌉ - 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246360.P15826602615520318157

namespace A246360

/-- `∑[∑[round(3^(ceil((n-2)/2)-1))]+1]` -/
def P15826602615520318157.Spec : Prop :=
  ∀ n, P15826602615520318157.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P16580651019723667919

`a(n-2)-1+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A246360.P16580651019723667919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - 1 + (a (n - 2) + a (n - 2))

end

end A246360.P16580651019723667919

namespace A246360

/-- `a(n-2)-1+a(n-2)+a(n-2)` -/
def P16580651019723667919.Spec : Prop :=
  ∀ n, P16580651019723667919.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P13266078979369484557

`a(n-2)-(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A246360.P13266078979369484557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2) - a (n - 2))

end

end A246360.P13266078979369484557

namespace A246360

/-- `a(n-2)-(1-a(n-2)-a(n-2))` -/
def P13266078979369484557.Spec : Prop :=
  ∀ n, P13266078979369484557.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P4775729294857177164

`A182522(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A246360.P4775729294857177164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182522 (n - 1) + a (n - 1)

end

end A246360.P4775729294857177164

namespace A246360

/-- `A182522(n-1)+a(n-1)` -/
def P4775729294857177164.Spec : Prop :=
  ∀ n, P4775729294857177164.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P85033486414821768

`A038754(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A246360.P85033486414821768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A038754 (n - 2) + a (n - 1)

end

end A246360.P85033486414821768

namespace A246360

/-- `A038754(n-2)+a(n-1)` -/
def P85033486414821768.Spec : Prop :=
  ∀ n, P85033486414821768.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P13312913846047482328

`A120463(n)+A040001(n)`
-/

namespace A246360.P13312913846047482328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 n + A040001 n

end

end A246360.P13312913846047482328

namespace A246360

/-- `A120463(n)+A040001(n)` -/
def P13312913846047482328.Spec : Prop :=
  ∀ n, P13312913846047482328.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P8087784293692128902

`record[(A213933(n)+1)/2]`
-/

namespace A246360.P8087784293692128902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213933 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246360.P8087784293692128902

namespace A246360

/-- `record[(A213933(n)+1)/2]` -/
def P8087784293692128902.Spec : Prop :=
  ∀ n, P8087784293692128902.a n = (A246360 (n + 1) : ℚ)

end A246360

/-! ## A246360.P16690349679901918370

`(A083658(n+1)+1)/2`
-/

namespace A246360.P16690349679901918370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083658 (n + 1) + 1 : ℚ) / 2

end

end A246360.P16690349679901918370

namespace A246360

/-- `(A083658(n+1)+1)/2` -/
def P16690349679901918370.Spec : Prop :=
  ∀ n, P16690349679901918370.a n = (A246360 (n + 1) : ℚ)

end A246360

/-! ## A246360.P6322897239678814421

`∪[A007051(n), A057198(n+1)]`
-/

namespace A246360.P6322897239678814421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246360.P6322897239678814421

namespace A246360

/-- `∪[A007051(n), A057198(n+1)]` -/
def P6322897239678814421.Spec : Prop :=
  ∀ n, (P6322897239678814421.a n : ℤ) = A246360 (n + 1)

end A246360

/-! ## A246360.P2200025955368693138

`∑[A182522(n)]+1-A182522(n)`
-/

namespace A246360.P2200025955368693138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A182522 n)

end

end A246360.P2200025955368693138

namespace A246360

/-- `∑[A182522(n)]+1-A182522(n)` -/
def P2200025955368693138.Spec : Prop :=
  ∀ n, P2200025955368693138.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P9313764495216102228

`record[A191450(n+1)]`
-/

namespace A246360.P9313764495216102228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246360.P9313764495216102228

namespace A246360

/-- `record[A191450(n+1)]` -/
def P9313764495216102228.Spec : Prop :=
  ∀ n, P9313764495216102228.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P10706979385288644932

`record[A254051(A038722(n+1))]`
-/

namespace A246360.P10706979385288644932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246360.P10706979385288644932

namespace A246360

/-- `record[A254051(A038722(n+1))]` -/
def P10706979385288644932.Spec : Prop :=
  ∀ n, P10706979385288644932.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P5199160260961378040

`record[A279724(n+1)]`
-/

namespace A246360.P5199160260961378040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246360.P5199160260961378040

namespace A246360

/-- `record[A279724(n+1)]` -/
def P5199160260961378040.Spec : Prop :=
  ∀ n, P5199160260961378040.a n = A246360 (n + 1)

end A246360

/-! ## A246360.P12952859152098598745

`A279724(A101881(n))`
-/

namespace A246360.P12952859152098598745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279724 (A101881 n).toNat

end

end A246360.P12952859152098598745

namespace A246360

/-- `A279724(A101881(n))` -/
def P12952859152098598745.Spec : Prop :=
  ∀ n, P12952859152098598745.a n = A246360 (n + 1)

end A246360

/-!
# A246361: Numbers n such that if 2n-1 = product_{k >= 1} (p_k)^(c_k), then n >= product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

The programs for A246361, the canonical program `A246361.P10337352389696373962` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246361 has offset 1).

The definition of A246361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3027 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246361.P2309851603650772007

`comp[A246362(n+1)-1]+1`
-/

namespace A246361.P2309851603650772007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246362 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246361.P2309851603650772007

namespace A246361

/-- `comp[A246362(n+1)-1]+1` -/
def P2309851603650772007.Spec : Prop :=
  ∀ n, (P2309851603650772007.a n : ℤ) = A246361 (n + 1)

end A246361

/-! ## A246361.P10337352389696373962

`lt[A064216(n+1), n+2]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246361

/-- `lt[A064216(n+1), n+2]+1` -/
def P10337352389696373962.Spec : Prop :=
  ∀ n, (P10337352389696373962.a n : ℤ) = A246361 (n + 1)

theorem P10337352389696373962.correct : P10337352389696373962.Spec := by
  intro n
  simp only [A246361, Nat.add_sub_cancel]

end A246361

/-! ## A246361.P17039463833180398561

`lt[A064216(A028310(n)), n+1]`
-/

namespace A246361.P17039463833180398561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246361.P17039463833180398561

namespace A246361

/-- `lt[A064216(A028310(n)), n+1]` -/
def P17039463833180398561.Spec : Prop :=
  ∀ n, (P17039463833180398561.a n : ℤ) = A246361 (n + 1)

end A246361

/-! ## A246361.P9672551008039739175

`eq[char[A246362(n+1)], A000007(n)]`
-/

namespace A246361.P9672551008039739175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246362 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246361.P9672551008039739175

namespace A246361

/-- `eq[char[A246362(n+1)], A000007(n)]` -/
def P9672551008039739175.Spec : Prop :=
  ∀ n, (P9672551008039739175.a n : ℤ) = A246361 (n + 1)

end A246361

/-! ## A246361.P11045129899010994504

`eq[char[A246362(n+1)], A000038(n)]`
-/

namespace A246361.P11045129899010994504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246362 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246361.P11045129899010994504

namespace A246361

/-- `eq[char[A246362(n+1)], A000038(n)]` -/
def P11045129899010994504.Spec : Prop :=
  ∀ n, (P11045129899010994504.a n : ℤ) = A246361 (n + 1)

end A246361

/-! ## A246361.P13600782056185363261

`eq[1, char[A048673(A246352(n+1))]]`
-/

namespace A246361.P13600782056185363261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246352 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246361.P13600782056185363261

namespace A246361

/-- `eq[1, char[A048673(A246352(n+1))]]` -/
def P13600782056185363261.Spec : Prop :=
  ∀ n, (P13600782056185363261.a n : ℤ) = A246361 (n + 1)

end A246361

/-! ## A246361.P249211002319861952

`lt[A283463(A004277(n)), n+1]`
-/

namespace A246361.P249211002319861952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246361.P249211002319861952

namespace A246361

/-- `lt[A283463(A004277(n)), n+1]` -/
def P249211002319861952.Spec : Prop :=
  ∀ n, (P249211002319861952.a n : ℤ) = A246361 (n + 1)

end A246361

/-! ## A246361.P14050709538094651669

`lt[A266645(A004277(n)), A246676(2*n+1)]`
-/

namespace A246361.P14050709538094651669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246361.P14050709538094651669

namespace A246361

/-- `lt[A266645(A004277(n)), A246676(2*n+1)]` -/
def P14050709538094651669.Spec : Prop :=
  ∀ n, (P14050709538094651669.a n : ℤ) = A246361 (n + 1)

end A246361

/-!
# A246362: Numbers n such that if 2n-1 = Product_{k >= 1} (p_k)^(c_k), then n < Product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

The programs for A246362, the canonical program `A246362.P6210630733213019729` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246362 has offset 1).

The definition of A246362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246362.P6210630733213019729

`lt[n+1, A064216(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246362

/-- `lt[n+1, A064216(n+1)]+1` -/
def P6210630733213019729.Spec : Prop :=
  ∀ n, (P6210630733213019729.a n : ℤ) = A246362 (n + 1)

theorem P6210630733213019729.correct : P6210630733213019729.Spec := by
  intro n
  simp only [A246362, Nat.add_sub_cancel]

end A246362

/-! ## A246362.P13120015587754824454

`lt[A028310(n), A064216(A028310(n))]`
-/

namespace A246362.P13120015587754824454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246362.P13120015587754824454

namespace A246362

/-- `lt[A028310(n), A064216(A028310(n))]` -/
def P13120015587754824454.Spec : Prop :=
  ∀ n, (P13120015587754824454.a n : ℤ) = A246362 (n + 1)

end A246362

/-! ## A246362.P10547614662351680044

`lt[n+1, A064989(2*n+1)]+1`
-/

namespace A246362.P10547614662351680044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246362.P10547614662351680044

namespace A246362

/-- `lt[n+1, A064989(2*n+1)]+1` -/
def P10547614662351680044.Spec : Prop :=
  ∀ n, (P10547614662351680044.a n : ℤ) = A246362 (n + 1)

end A246362

/-! ## A246362.P16966930327644373356

`lt[n+1, A252463(2*n+1)]+1`
-/

namespace A246362.P16966930327644373356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246362.P16966930327644373356

namespace A246362

/-- `lt[n+1, A252463(2*n+1)]+1` -/
def P16966930327644373356.Spec : Prop :=
  ∀ n, (P16966930327644373356.a n : ℤ) = A246362 (n + 1)

end A246362

/-! ## A246362.P6966013144597762383

`lt[n+1, A283463(2*(n+1))]+1`
-/

namespace A246362.P6966013144597762383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246362.P6966013144597762383

namespace A246362

/-- `lt[n+1, A283463(2*(n+1))]+1` -/
def P6966013144597762383.Spec : Prop :=
  ∀ n, (P6966013144597762383.a n : ℤ) = A246362 (n + 1)

end A246362

/-! ## A246362.P7798379873126825500

`record[(A008619(n)+3)%A064989(n+7)]`
-/

namespace A246362.P7798379873126825500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n + 3) (A064989 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246362.P7798379873126825500

namespace A246362

/-- `record[(A008619(n)+3)%A064989(n+7)]` -/
def P7798379873126825500.Spec : Prop :=
  ∀ n, P7798379873126825500.a n = A246362 (n + 1)

end A246362

/-! ## A246362.P17217067682417652531

`record[(A004526(n)+4)%A064989(n+7)]`
-/

namespace A246362.P17217067682417652531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 n + 4) (A064989 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246362.P17217067682417652531

namespace A246362

/-- `record[(A004526(n)+4)%A064989(n+7)]` -/
def P17217067682417652531.Spec : Prop :=
  ∀ n, P17217067682417652531.a n = A246362 (n + 1)

end A246362

/-! ## A246362.P10167914546690862414

`lt[A004277(n+1), A266645(2*(n+1))]+1`
-/

namespace A246362.P10167914546690862414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246362.P10167914546690862414

namespace A246362

/-- `lt[A004277(n+1), A266645(2*(n+1))]+1` -/
def P10167914546690862414.Spec : Prop :=
  ∀ n, (P10167914546690862414.a n : ℤ) = A246362 (n + 1)

end A246362

/-! ## A246362.P12871391201421737994

`lt[A004277(n), A266645(A004277(n))]`
-/

namespace A246362.P12871391201421737994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246362.P12871391201421737994

namespace A246362

/-- `lt[A004277(n), A266645(A004277(n))]` -/
def P12871391201421737994.Spec : Prop :=
  ∀ n, (P12871391201421737994.a n : ℤ) = A246362 (n + 1)

end A246362

/-! ## A246362.P15126348883049553188

`A008619(lt[A008619(n), A252463(n+1)])`
-/

namespace A246362.P15126348883049553188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246362.P15126348883049553188

namespace A246362

/-- `A008619(lt[A008619(n), A252463(n+1)])` -/
def P15126348883049553188.Spec : Prop :=
  ∀ n, P15126348883049553188.a n = A246362 (n + 1)

end A246362

/-!
# A246363: Permutation of natural numbers: a(n) = A135141(A048673(n)).

The programs for A246363, there is no canonical definition to state claims against.
-/

/-! ## A246363.P14840037102739067853

`A135141(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246363.P14840037102739067853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A048673 (n + 1)).toNat

end

end A246363.P14840037102739067853

/-! ## A246363.P4023577224879489100

`A135141(A108228(n+1)+1)`
-/

namespace A246363.P4023577224879489100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A108228 (n + 1) + 1).toNat

end

end A246363.P4023577224879489100

/-! ## A246363.P15908850668035516142

`A135141(A243501(n+1)/2)`
-/

namespace A246363.P15908850668035516142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A246363.P15908850668035516142

/-! ## A246363.P2316686983811522234

`A135141(ceil(A003961(n+1)/2))`
-/

namespace A246363.P2316686983811522234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A246363.P2316686983811522234

/-! ## A246363.P517924001108746036

`A135141(round(A003961(n+1)/2))`
-/

namespace A246363.P517924001108746036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A246363.P517924001108746036

/-! ## A246363.P9385214761170601346

`A135141((A003961(n+1)+1)/2)`
-/

namespace A246363.P9385214761170601346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A246363.P9385214761170601346

/-! ## A246363.P6074651538933414113

`A135141(A003602(A003961(n+1)))`
-/

namespace A246363.P6074651538933414113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A246363.P6074651538933414113

/-!
# A246364: Permutation of natural numbers: a(n) = A064216(A227413(n)).

The programs for A246364, there is no canonical definition to state claims against.
-/

/-! ## A246364.P15972100670778970440

`A064216(A227413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246364.P15972100670778970440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A227413 (n + 1)).toNat

end

end A246364.P15972100670778970440

/-! ## A246364.P6330931532175835041

`A283463(2*A227413(1+n))`
-/

namespace A246364.P6330931532175835041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * A227413 (1 + n)).toNat

end

end A246364.P6330931532175835041

/-! ## A246364.P5228882658121508633

`A064989(2*A227413(1+n)-1)`
-/

namespace A246364.P5228882658121508633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A227413 (1 + n) - 1).toNat

end

end A246364.P5228882658121508633

/-! ## A246364.P402316236446351546

`A252463(2*A227413(n+1)-1)`
-/

namespace A246364.P402316236446351546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * A227413 (n + 1) - 1).toNat

end

end A246364.P402316236446351546

/-! ## A246364.P7331771800719663622

`A283463(A227413(n+1)+A227413(n+1))`
-/

namespace A246364.P7331771800719663622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A227413 (n + 1) + A227413 (n + 1)).toNat

end

end A246364.P7331771800719663622

/-! ## A246364.P11261702361693762939

`A064989(A227413(n+1)+A227413(n+1)-1)`
-/

namespace A246364.P11261702361693762939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A227413 (n + 1) + (A227413 (n + 1) - 1)).toNat

end

end A246364.P11261702361693762939

/-!
# A246365: Permutation of natural numbers: a(n) = A135141(A005940(n)).

The programs for A246365, there is no canonical definition to state claims against.
-/

/-! ## A246365.P10144821324756250826

`A135141(A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246365.P10144821324756250826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A005940 (n + 1)).toNat

end

end A246365.P10144821324756250826

/-! ## A246365.P11520041890969065646

`A135141(A324394(n)*A324395(n))`
-/

namespace A246365.P11520041890969065646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A324394 n * A324395 n).toNat

end

end A246365.P11520041890969065646

/-! ## A246365.P7764429147398466518

`A135141(A337375(n)*A337376(n))`
-/

namespace A246365.P7764429147398466518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A337375 n * A337376 n).toNat

end

end A246365.P7764429147398466518

/-! ## A246365.P10141322743253392260

`A135141((A324055(n)+A324054(n))/2)`
-/

namespace A246365.P10141322743253392260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A246365.P10141322743253392260

/-! ## A246365.P10602298818369450018

`A135141(A340362(n+1)+A324106(n+1))`
-/

namespace A246365.P10602298818369450018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A246365.P10602298818369450018

/-! ## A246365.P5517484913805642583

`A135141(A324641(n+1)-A324640(n+1))`
-/

namespace A246365.P5517484913805642583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A246365.P5517484913805642583

/-! ## A246365.P15369595596422823632

`A135141(A340364(n+1)*A340365(n+1))`
-/

namespace A246365.P15369595596422823632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A246365.P15369595596422823632

/-! ## A246365.P2296711802713105599

`A135141(A246367(A227413(n+1)))`
-/

namespace A246365.P2296711802713105599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A246367 (A227413 (n + 1)).toNat).toNat

end

end A246365.P2296711802713105599

/-! ## A246365.P2662441993942296124

`A135141(A246367(A048673(A246364(n+1))))`
-/

namespace A246365.P2662441993942296124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A246367 (A048673 (A246364 (n + 1)).toNat).toNat).toNat

end

end A246365.P2662441993942296124

/-!
# A246366: Permutation of natural numbers: a(n) = A005941(A227413(n)).

The programs for A246366, there is no canonical definition to state claims against.
-/

/-! ## A246366.P12532253700406307121

`A005941(A227413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246366.P12532253700406307121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A227413 (n + 1)).toNat

end

end A246366.P12532253700406307121

/-! ## A246366.P13013951980682981083

`A005941(A048673(A246364(n+1)))`
-/

namespace A246366.P13013951980682981083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A048673 (A246364 (n + 1)).toNat).toNat

end

end A246366.P13013951980682981083

/-! ## A246366.P3194991302649612081

`A156552(A227413(n+1))+A065357(n)²`
-/

namespace A246366.P3194991302649612081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A227413 (n + 1)).toNat + A065357 n ^ 2

end

end A246366.P3194991302649612081

/-! ## A246366.P3254209849897099409

`A160338(n+1)+A156552(A227413(n+1))`
-/

namespace A246366.P3254209849897099409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (n + 1) + A156552 (A227413 (n + 1)).toNat

end

end A246366.P3254209849897099409

/-! ## A246366.P1862992472848419459

`A156552(A227413(n+1))+A007318(A000217(n))`
-/

namespace A246366.P1862992472848419459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A227413 (n + 1)).toNat + A007318 (A000217 n).toNat

end

end A246366.P1862992472848419459

/-! ## A246366.P17443126868375048519

`A156552(A227413(n+1))+A057979(A317440(n+1))`
-/

namespace A246366.P17443126868375048519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A227413 (n + 1)).toNat + A057979 (A317440 (n + 1)).toNat

end

end A246366.P17443126868375048519

/-!
# A246367: Permutation of natural numbers: a(n) = A005940(A135141(n)).

The programs for A246367, there is no canonical definition to state claims against.
-/

/-! ## A246367.P2802070210600298625

`A005940(A135141(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246367.P2802070210600298625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A135141 (n + 1)).toNat

end

end A246367.P2802070210600298625

/-! ## A246367.P15072894493133876376

`A005940(A246363(A064216(n+1)))`
-/

namespace A246367.P15072894493133876376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A246363 (A064216 (n + 1)).toNat).toNat

end

end A246367.P15072894493133876376

/-! ## A246367.P269809950569375434

`A297166(A246681(n+1))`
-/

namespace A246367.P269809950569375434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (A246681 (n + 1)).toNat

end

end A246367.P269809950569375434

/-! ## A246367.P7657434465884587755

`A005940(A246365(A005941(n+1)))`
-/

namespace A246367.P7657434465884587755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A246365 (A005941 (n + 1)).toNat).toNat

end

end A246367.P7657434465884587755

/-!
# A246368: Permutation of natural numbers: a(n) = A227413(A005941(n)).

The programs for A246368, there is no canonical definition to state claims against.
-/

/-! ## A246368.P4386902508994253383

`A227413(A005941(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246368.P4386902508994253383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A005941 (n + 1)).toNat

end

end A246368.P4386902508994253383

/-! ## A246368.P6792251164003815150

`A227413(1+A156552(n+1))`
-/

namespace A246368.P6792251164003815150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (1 + A156552 (n + 1)).toNat

end

end A246368.P6792251164003815150

/-! ## A246368.P4548114147400992667

`A227413(A364559(n+1)+n+1)`
-/

namespace A246368.P4548114147400992667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A364559 (n + 1) + (n : ℤ) + 1).toNat

end

end A246368.P4548114147400992667

/-! ## A246368.P8181950451100348564

`A227413((A322993(2*(n+1))+1)/2)`
-/

namespace A246368.P8181950451100348564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) + 1 : ℚ) / 2)).toNat

end

end A246368.P8181950451100348564

/-! ## A246368.P10257915560967834218

`A227413(A246366(A135141(n+1)))`
-/

namespace A246368.P10257915560967834218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A246366 (A135141 (n + 1)).toNat).toNat

end

end A246368.P10257915560967834218

/-!
# A246369: a(1)=0, a(p_n) = a(n), a(c_n) = 1 + a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n); Also one less than the binary weight of terms of A135141.

The programs for A246369, there is no canonical definition to state claims against.
-/

/-! ## A246369.P6574106199848865676

`A246348(n+1)-A246370(n+1)-1`
-/

namespace A246369.P6574106199848865676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (n + 1) - A246370 (n + 1) - 1

end

end A246369.P6574106199848865676

/-! ## A246369.P3890088740769333030

`A000120(A135141(n+1))-1`
-/

namespace A246369.P3890088740769333030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A135141 (n + 1)).toNat - 1

end

end A246369.P3890088740769333030

/-! ## A246369.P2122565809376918005

`A080791(A246377(n+1))`
-/

namespace A246369.P2122565809376918005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A246377 (n + 1)).toNat

end

end A246369.P2122565809376918005

/-! ## A246369.P17822706039975554187

`A001222(A246681(n+1))-1`
-/

namespace A246369.P17822706039975554187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246681 (n + 1)).toNat - 1

end

end A246369.P17822706039975554187

/-! ## A246369.P8749502056642228929

`A252736(A246681(n+1))`
-/

namespace A246369.P8749502056642228929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A246681 (n + 1)).toNat

end

end A246369.P8749502056642228929

/-! ## A246369.P8883634165553514641

`A246348(n+1)-(A080791(A135141(n+1))+1)`
-/

namespace A246369.P8883634165553514641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (n + 1) - (A080791 (A135141 (n + 1)).toNat + 1)

end

end A246369.P8883634165553514641

/-! ## A246369.P15292706380216606468

`A023416(A246377(n+1))`
-/

namespace A246369.P15292706380216606468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A246377 (n + 1)).toNat

end

end A246369.P15292706380216606468

/-! ## A246369.P13940179252499349228

`A256479(A233276(A135141(n+1)))`
-/

namespace A246369.P13940179252499349228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A233276 (A135141 (n + 1)).toNat).toNat

end

end A246369.P13940179252499349228

/-! ## A246369.P5812228521305460742

`A246348(n+1)-A000120(A246377(n+1))`
-/

namespace A246369.P5812228521305460742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (n + 1) - A000120 (A246377 (n + 1)).toNat

end

end A246369.P5812228521305460742

/-! ## A246369.P10221006061416946494

`A087436(A246367(n+1))`
-/

namespace A246369.P10221006061416946494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A246367 (n + 1)).toNat

end

end A246369.P10221006061416946494

/-!
# A246370: a(1)=0, a(p_n) = 1 + a(n), a(c_n) = a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n); Also number of nonleading 0-bits in the binary representation of A135141(n).

The programs for A246370, there is no canonical definition to state claims against.
-/

/-! ## A246370.P10910842375858518964

`A246348(n+1)-A246369(n+1)-1`
-/

namespace A246370.P10910842375858518964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (n + 1) - A246369 (n + 1) - 1

end

end A246370.P10910842375858518964

/-! ## A246370.P8927021745740498685

`A080791(A135141(n+1))`
-/

namespace A246370.P8927021745740498685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A135141 (n + 1)).toNat

end

end A246370.P8927021745740498685

/-! ## A246370.P2018872982145427397

`A000120(A246377(n+1))-1`
-/

namespace A246370.P2018872982145427397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A246377 (n + 1)).toNat - 1

end

end A246370.P2018872982145427397

/-! ## A246370.P10617060055580432528

`A246348(n+1)-A246369(A002808(n+1))`
-/

namespace A246370.P10617060055580432528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (n + 1) - A246369 (A002808 (n + 1)).toNat

end

end A246370.P10617060055580432528

/-! ## A246370.P10618956823405763003

`A061395(A246681(n+1))-1`
-/

namespace A246370.P10618956823405763003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246681 (n + 1)).toNat - 1

end

end A246370.P10618956823405763003

/-! ## A246370.P9699720406298407671

`A023416(A135141(n+1))`
-/

namespace A246370.P9699720406298407671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A135141 (n + 1)).toNat

end

end A246370.P9699720406298407671

/-! ## A246370.P14757519738075003497

`A252735(A246681(n+1))`
-/

namespace A246370.P14757519738075003497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A246681 (n + 1)).toNat

end

end A246370.P14757519738075003497

/-! ## A246370.P15668766999466079042

`A279346(A080100(A135141(n+1))²)`
-/

namespace A246370.P15668766999466079042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279346 (A080100 (A135141 (n + 1)).toNat ^ 2).toNat

end

end A246370.P15668766999466079042

/-! ## A246370.P5421028655825495728

`A246348(n+1)-A000120(A135141(n+1))`
-/

namespace A246370.P5421028655825495728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (n + 1) - A000120 (A135141 (n + 1)).toNat

end

end A246370.P5421028655825495728

/-! ## A246370.P1508443060393695990

`A080791(A054429(A246377(n+1)))`
-/

namespace A246370.P1508443060393695990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A054429 (A246377 (n + 1)).toNat).toNat

end

end A246370.P1508443060393695990

/-!
# A246371: Numbers n such that, if 2n-1 = Product_{k >= 1} (p_k)^(c_k) then n > Product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

The programs for A246371, the canonical program `A246371.P17744205781761790015` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246371 has offset 1).

The definition of A246371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246371.P9559907822082380846

`comp[A246372(n+1)-1]+1`
-/

namespace A246371.P9559907822082380846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246371.P9559907822082380846

namespace A246371

/-- `comp[A246372(n+1)-1]+1` -/
def P9559907822082380846.Spec : Prop :=
  ∀ n, (P9559907822082380846.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P17137544720342213822

`lt[A302847(a(n-1)+1), n]` with `a(0)=0, a(1)=1`
-/

namespace A246371.P17137544720342213822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A302847 (f1 (n - 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246371.P17137544720342213822

namespace A246371

/-- `lt[A302847(a(n-1)+1), n]` -/
def P17137544720342213822.Spec : Prop :=
  ∀ n, (P17137544720342213822.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P2614033367219307463

`lt[A302849(a(n-2)+2), n]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A246371.P2614033367219307463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A302849 (f1 (n - 2) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246371.P2614033367219307463

namespace A246371

/-- `lt[A302849(a(n-2)+2), n]` -/
def P2614033367219307463.Spec : Prop :=
  ∀ n, (P2614033367219307463.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P17744205781761790015

`lt[A064216(n+1), n+1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246371

/-- `lt[A064216(n+1), n+1]+1` -/
def P17744205781761790015.Spec : Prop :=
  ∀ n, (P17744205781761790015.a n : ℤ) = A246371 (n + 1)

theorem P17744205781761790015.correct : P17744205781761790015.Spec := by
  intro n
  simp only [A246371, Nat.add_sub_cancel]

end A246371

/-! ## A246371.P5019681155338377336

`lt[A064216(A028310(n)), n]`
-/

namespace A246371.P5019681155338377336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246371.P5019681155338377336

namespace A246371

/-- `lt[A064216(A028310(n)), n]` -/
def P5019681155338377336.Spec : Prop :=
  ∀ n, (P5019681155338377336.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P41388688215112745

`eq[char[A246372(n+1)], A000007(n)]`
-/

namespace A246371.P41388688215112745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246371.P41388688215112745

namespace A246371

/-- `eq[char[A246372(n+1)], A000007(n)]` -/
def P41388688215112745.Spec : Prop :=
  ∀ n, (P41388688215112745.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P11126415201527441255

`eq[char[A246372(n+1)], A000038(n)]`
-/

namespace A246371.P11126415201527441255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246371.P11126415201527441255

namespace A246371

/-- `eq[char[A246372(n+1)], A000038(n)]` -/
def P11126415201527441255.Spec : Prop :=
  ∀ n, (P11126415201527441255.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P17114430255588952170

`eq[1, char[A048673(A246282(n+1))]]`
-/

namespace A246371.P17114430255588952170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246282 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246371.P17114430255588952170

namespace A246371

/-- `eq[1, char[A048673(A246282(n+1))]]` -/
def P17114430255588952170.Spec : Prop :=
  ∀ n, (P17114430255588952170.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P681807499047527303

`lt[A064989(2*n+1), n+1]+1`
-/

namespace A246371.P681807499047527303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246371.P681807499047527303

namespace A246371

/-- `lt[A064989(2*n+1), n+1]+1` -/
def P681807499047527303.Spec : Prop :=
  ∀ n, (P681807499047527303.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P1729000809396766239

`lt[A252463(2*n+1), n+1]+1`
-/

namespace A246371.P1729000809396766239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246371.P1729000809396766239

namespace A246371

/-- `lt[A252463(2*n+1), n+1]+1` -/
def P1729000809396766239.Spec : Prop :=
  ∀ n, (P1729000809396766239.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P9106670499880815689

`lt[A266645(2*(n+1)), 2*n+1]+1`
-/

namespace A246371.P9106670499880815689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246371.P9106670499880815689

namespace A246371

/-- `lt[A266645(2*(n+1)), 2*n+1]+1` -/
def P9106670499880815689.Spec : Prop :=
  ∀ n, (P9106670499880815689.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P2172781382605223305

`lt[A283463(A004277(n)), n]`
-/

namespace A246371.P2172781382605223305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A246371.P2172781382605223305

namespace A246371

/-- `lt[A283463(A004277(n)), n]` -/
def P2172781382605223305.Spec : Prop :=
  ∀ n, (P2172781382605223305.a n : ℤ) = A246371 (n + 1)

end A246371

/-! ## A246371.P5637573331815352455

`A008619(lt[A252463(n+1), A008619(n)])`
-/

namespace A246371.P5637573331815352455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246371.P5637573331815352455

namespace A246371

/-- `A008619(lt[A252463(n+1), A008619(n)])` -/
def P5637573331815352455.Spec : Prop :=
  ∀ n, P5637573331815352455.a n = A246371 (n + 1)

end A246371

/-!
# A246372: Numbers n such that 2n-1 = product_{k >= 1} (p_k)^(c_k), then n <= product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

The programs for A246372, the canonical program `A246372.P17904493122065009010` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246372 has offset 1).

The definition of A246372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246372.P17904493122065009010

`comp[A246371(n+1)-1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246372

/-- `comp[A246371(n+1)-1]+1` -/
def P17904493122065009010.Spec : Prop :=
  ∀ n, (P17904493122065009010.a n : ℤ) = A246372 (n + 1)

theorem P17904493122065009010.correct : P17904493122065009010.Spec := by
  intro n
  simp only [A246372, Nat.add_sub_cancel]

end A246372

/-! ## A246372.P11046631896328161611

`lt[n, A064216(1+n)]+1`
-/

namespace A246372.P11046631896328161611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246372.P11046631896328161611

namespace A246372

/-- `lt[n, A064216(1+n)]+1` -/
def P11046631896328161611.Spec : Prop :=
  ∀ n, (P11046631896328161611.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P14485746059007903176

`eq[char[A246371(n+1)], A000007(n)]`
-/

namespace A246372.P14485746059007903176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246372.P14485746059007903176

namespace A246372

/-- `eq[char[A246371(n+1)], A000007(n)]` -/
def P14485746059007903176.Spec : Prop :=
  ∀ n, (P14485746059007903176.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P17561208272374428995

`lt[n, A064989(2*n+1)]+1`
-/

namespace A246372.P17561208272374428995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246372.P17561208272374428995

namespace A246372

/-- `lt[n, A064989(2*n+1)]+1` -/
def P17561208272374428995.Spec : Prop :=
  ∀ n, (P17561208272374428995.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P11214146358751015811

`lt[n, A252463(2*n+1)]+1`
-/

namespace A246372.P11214146358751015811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246372.P11214146358751015811

namespace A246372

/-- `lt[n, A252463(2*n+1)]+1` -/
def P11214146358751015811.Spec : Prop :=
  ∀ n, (P11214146358751015811.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P2911157256252975157

`lt[n, A283463(2*(n+1))]+1`
-/

namespace A246372.P2911157256252975157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246372.P2911157256252975157

namespace A246372

/-- `lt[n, A283463(2*(n+1))]+1` -/
def P2911157256252975157.Spec : Prop :=
  ∀ n, (P2911157256252975157.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P13985908035956442366

`lt[2*n+1, A266645(2*(n+1))]+1`
-/

namespace A246372.P13985908035956442366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246372.P13985908035956442366

namespace A246372

/-- `lt[2*n+1, A266645(2*(n+1))]+1` -/
def P13985908035956442366.Spec : Prop :=
  ∀ n, (P13985908035956442366.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P10114887264529047804

`record[∑[(n+1)%2]%(A283463(n+2)+1)]`
-/

namespace A246372.P10114887264529047804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A283463 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246372.P10114887264529047804

namespace A246372

/-- `record[∑[(n+1)%2]%(A283463(n+2)+1)]` -/
def P10114887264529047804.Spec : Prop :=
  ∀ n, P10114887264529047804.a n = A246372 (n + 1)

end A246372

/-! ## A246372.P17802913921256805323

`∪[A246362(n+1), A349622(n+1)]`
-/

namespace A246372.P17802913921256805323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246372.P17802913921256805323

namespace A246372

/-- `∪[A246362(n+1), A349622(n+1)]` -/
def P17802913921256805323.Spec : Prop :=
  ∀ n, (P17802913921256805323.a n : ℤ) = A246372 (n + 1)

end A246372

/-! ## A246372.P7240071760696912253

`lt[n, A246277(6*n+3)]+1`
-/

namespace A246372.P7240071760696912253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (6 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246372.P7240071760696912253

namespace A246372

/-- `lt[n, A246277(6*n+3)]+1` -/
def P7240071760696912253.Spec : Prop :=
  ∀ n, (P7240071760696912253.a n : ℤ) = A246372 (n + 1)

end A246372

/-!
# A246373: Primes p such that if 2p-1 = product_{k >= 1} A000040(k)^(c_k), then p <= product_{k >= 1} A000040(k-1)^(c_k).

The programs for A246373, the canonical program `A246373.P10250968539175568684` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246373 has offset 1).

The definition of A246373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246373.P10250968539175568684

`p?[A246372(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246373

/-- `p?[A246372(n+1)]` -/
def P10250968539175568684.Spec : Prop :=
  ∀ n, P10250968539175568684.a n = A246373 (n + 1)

theorem P10250968539175568684.correct : P10250968539175568684.Spec := by
  intro n
  simp only [A246373, Nat.add_sub_cancel]

end A246373

/-! ## A246373.P12353999670855930228

`record[A006530(A246362(n+1))]`
-/

namespace A246373.P12353999670855930228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246373.P12353999670855930228

namespace A246373

/-- `record[A006530(A246362(n+1))]` -/
def P12353999670855930228.Spec : Prop :=
  ∀ n, P12353999670855930228.a n = A246373 (n + 1)

end A246373

/-! ## A246373.P14151239161907524969

`record[A006530(A246372(n+2))]`
-/

namespace A246373.P14151239161907524969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246372 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246373.P14151239161907524969

namespace A246373

/-- `record[A006530(A246372(n+2))]` -/
def P14151239161907524969.Spec : Prop :=
  ∀ n, P14151239161907524969.a n = A246373 (n + 1)

end A246373

/-! ## A246373.P111838338463069734

`filter[A246372(n+1), A010051(#)]`
-/

namespace A246373.P111838338463069734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A246373.P111838338463069734

namespace A246373

/-- `filter[A246372(n+1), A010051(#)]` -/
def P111838338463069734.Spec : Prop :=
  ∀ n, P111838338463069734.a n = A246373 (n + 1)

end A246373

/-! ## A246373.P12103713761456073524

`∩[A000040(n+1), A246372(n+1)]`
-/

namespace A246373.P12103713761456073524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246373.P12103713761456073524

namespace A246373

/-- `∩[A000040(n+1), A246372(n+1)]` -/
def P12103713761456073524.Spec : Prop :=
  ∀ n, (P12103713761456073524.a n : ℤ) = A246373 (n + 1)

end A246373

/-! ## A246373.P10104199629012073653

`∩[A045319(n+1), A246372(n+1)]`
-/

namespace A246373.P10104199629012073653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246373.P10104199629012073653

namespace A246373

/-- `∩[A045319(n+1), A246372(n+1)]` -/
def P10104199629012073653.Spec : Prop :=
  ∀ n, (P10104199629012073653.a n : ℤ) = A246373 (n + 1)

end A246373

/-! ## A246373.P15306991541203309516

`∩[A182986(n+1), A246372(n+1)]`
-/

namespace A246373.P15306991541203309516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246373.P15306991541203309516

namespace A246373

/-- `∩[A182986(n+1), A246372(n+1)]` -/
def P15306991541203309516.Spec : Prop :=
  ∀ n, (P15306991541203309516.a n : ℤ) = A246373 (n + 1)

end A246373

/-! ## A246373.P18135994121152650040

`∩[A197636(n+1), A246372(n+1)]`
-/

namespace A246373.P18135994121152650040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246373.P18135994121152650040

namespace A246373

/-- `∩[A197636(n+1), A246372(n+1)]` -/
def P18135994121152650040.Spec : Prop :=
  ∀ n, (P18135994121152650040.a n : ℤ) = A246373 (n + 1)

end A246373

/-! ## A246373.P13090986685082971408

`p?[lt[n, A064216(n+1)]+1]`
-/

namespace A246373.P13090986685082971408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A246373.P13090986685082971408

namespace A246373

/-- `p?[lt[n, A064216(n+1)]+1]` -/
def P13090986685082971408.Spec : Prop :=
  ∀ n, (P13090986685082971408.a n : ℤ) = A246373 (n + 1)

end A246373

/-! ## A246373.P11503378365032253818

`record[A033677(A246372(n+4))]`
-/

namespace A246373.P11503378365032253818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A246372 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246373.P11503378365032253818

namespace A246373

/-- `record[A033677(A246372(n+4))]` -/
def P11503378365032253818.Spec : Prop :=
  ∀ n, P11503378365032253818.a n = A246373 (n + 1)

end A246373

/-! ## A246373.P2866838100874321286

`filter[A246372(n+2), A080339(#)]`
-/

namespace A246373.P2866838100874321286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A246373.P2866838100874321286

namespace A246373

/-- `filter[A246372(n+2), A080339(#)]` -/
def P2866838100874321286.Spec : Prop :=
  ∀ n, P2866838100874321286.a n = A246373 (n + 1)

end A246373

/-!
# A246374: Primes p such that if 2p-1 = product_{k >= 1} A000040(k)^(c_k), then p > product_{k >= 1} A000040(k-1)^(c_k).

The programs for A246374, the canonical program `A246374.P3655400840395935868` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246374 has offset 1).

The definition of A246374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246374.P3655400840395935868

`p?[A246371(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A246374

/-- `p?[A246371(n+1)]` -/
def P3655400840395935868.Spec : Prop :=
  ∀ n, P3655400840395935868.a n = A246374 (n + 1)

theorem P3655400840395935868.correct : P3655400840395935868.Spec := by
  intro n
  simp only [A246374, Nat.add_sub_cancel]

end A246374

/-! ## A246374.P15846268174476926270

`p?[A246361(n+4)]`
-/

namespace A246374.P15846268174476926270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246361 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246374.P15846268174476926270

namespace A246374

/-- `p?[A246361(n+4)]` -/
def P15846268174476926270.Spec : Prop :=
  ∀ n, P15846268174476926270.a n = A246374 (n + 1)

end A246374

/-! ## A246374.P12460598205423062257

`filter[A246371(n+1), A001222(#)]`
-/

namespace A246374.P12460598205423062257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A246374.P12460598205423062257

namespace A246374

/-- `filter[A246371(n+1), A001222(#)]` -/
def P12460598205423062257.Spec : Prop :=
  ∀ n, P12460598205423062257.a n = A246374 (n + 1)

end A246374

/-! ## A246374.P8775373371671743773

`filter[A246371(1+n), A010051(#)]`
-/

namespace A246374.P8775373371671743773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A246374.P8775373371671743773

namespace A246374

/-- `filter[A246371(1+n), A010051(#)]` -/
def P8775373371671743773.Spec : Prop :=
  ∀ n, P8775373371671743773.a n = A246374 (n + 1)

end A246374

/-! ## A246374.P7101267871997108047

`record[A006530(2*A246371(n+1))]`
-/

namespace A246374.P7101267871997108047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A246371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246374.P7101267871997108047

namespace A246374

/-- `record[A006530(2*A246371(n+1))]` -/
def P7101267871997108047.Spec : Prop :=
  ∀ n, P7101267871997108047.a n = A246374 (n + 1)

end A246374

/-! ## A246374.P8811377871035923594

`∩[A000040(n+1), A246371(n+1)]`
-/

namespace A246374.P8811377871035923594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P8811377871035923594

namespace A246374

/-- `∩[A000040(n+1), A246371(n+1)]` -/
def P8811377871035923594.Spec : Prop :=
  ∀ n, (P8811377871035923594.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P11915775954348151139

`∩[A006005(n+1), A246371(n+1)]`
-/

namespace A246374.P11915775954348151139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P11915775954348151139

namespace A246374

/-- `∩[A006005(n+1), A246371(n+1)]` -/
def P11915775954348151139.Spec : Prop :=
  ∀ n, (P11915775954348151139.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P14501475326506166252

`∩[A008578(n+1), A246371(n+1)]`
-/

namespace A246374.P14501475326506166252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P14501475326506166252

namespace A246374

/-- `∩[A008578(n+1), A246371(n+1)]` -/
def P14501475326506166252.Spec : Prop :=
  ∀ n, (P14501475326506166252.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P11644010558405737794

`∩[A033946(n+1), A246371(n+1)]`
-/

namespace A246374.P11644010558405737794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P11644010558405737794

namespace A246374

/-- `∩[A033946(n+1), A246371(n+1)]` -/
def P11644010558405737794.Spec : Prop :=
  ∀ n, (P11644010558405737794.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P10754220799138099665

`∩[A045344(n+1), A246371(n+1)]`
-/

namespace A246374.P10754220799138099665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P10754220799138099665

namespace A246374

/-- `∩[A045344(n+1), A246371(n+1)]` -/
def P10754220799138099665.Spec : Prop :=
  ∀ n, (P10754220799138099665.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P2004654996413989422

`∩[A046022(n+1), A246371(n+1)]`
-/

namespace A246374.P2004654996413989422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P2004654996413989422

namespace A246374

/-- `∩[A046022(n+1), A246371(n+1)]` -/
def P2004654996413989422.Spec : Prop :=
  ∀ n, (P2004654996413989422.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P3208737207459008054

`∩[A051948(n+1), A246371(n+1)]`
-/

namespace A246374.P3208737207459008054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P3208737207459008054

namespace A246374

/-- `∩[A051948(n+1), A246371(n+1)]` -/
def P3208737207459008054.Spec : Prop :=
  ∀ n, (P3208737207459008054.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P16701675964529519845

`∩[A065091(n+1), A246371(n+1)]`
-/

namespace A246374.P16701675964529519845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P16701675964529519845

namespace A246374

/-- `∩[A065091(n+1), A246371(n+1)]` -/
def P16701675964529519845.Spec : Prop :=
  ∀ n, (P16701675964529519845.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P6839818038096382443

`∩[A066050(n+1), A246371(n+1)]`
-/

namespace A246374.P6839818038096382443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P6839818038096382443

namespace A246374

/-- `∩[A066050(n+1), A246371(n+1)]` -/
def P6839818038096382443.Spec : Prop :=
  ∀ n, (P6839818038096382443.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P10522766322051429585

`∩[A067126(n+1), A246371(n+1)]`
-/

namespace A246374.P10522766322051429585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P10522766322051429585

namespace A246374

/-- `∩[A067126(n+1), A246371(n+1)]` -/
def P10522766322051429585.Spec : Prop :=
  ∀ n, (P10522766322051429585.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P17534318388976638108

`∩[A083249(n+1), A246361(n+1)]`
-/

namespace A246374.P17534318388976638108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P17534318388976638108

namespace A246374

/-- `∩[A083249(n+1), A246361(n+1)]` -/
def P17534318388976638108.Spec : Prop :=
  ∀ n, (P17534318388976638108.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P9065295358046491117

`∩[A116974(n+1), A246371(n+1)]`
-/

namespace A246374.P9065295358046491117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246374.P9065295358046491117

namespace A246374

/-- `∩[A116974(n+1), A246371(n+1)]` -/
def P9065295358046491117.Spec : Prop :=
  ∀ n, (P9065295358046491117.a n : ℤ) = A246374 (n + 1)

end A246374

/-! ## A246374.P16619200744877074521

`record[A006530(A246371(n+1)+A246371(n+1))]`
-/

namespace A246374.P16619200744877074521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246371 (n + 1) + A246371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246374.P16619200744877074521

namespace A246374

/-- `record[A006530(A246371(n+1)+A246371(n+1))]` -/
def P16619200744877074521.Spec : Prop :=
  ∀ n, P16619200744877074521.a n = A246374 (n + 1)

end A246374

/-! ## A246374.P6487064104549381239

`record[A020639(A246371(n+1)%A137188(n+1))]`
-/

namespace A246374.P6487064104549381239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A246371 (n + 1)) (A137188 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246374.P6487064104549381239

namespace A246374

/-- `record[A020639(A246371(n+1)%A137188(n+1))]` -/
def P6487064104549381239.Spec : Prop :=
  ∀ n, P6487064104549381239.a n = A246374 (n + 1)

end A246374

/-! ## A246374.P13047490104138648781

`filter[A246371(n+1), A080339(#)]`
-/

namespace A246374.P13047490104138648781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A246374.P13047490104138648781

namespace A246374

/-- `filter[A246371(n+1), A080339(#)]` -/
def P13047490104138648781.Spec : Prop :=
  ∀ n, P13047490104138648781.a n = A246374 (n + 1)

end A246374

/-!
# A246375: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A003961(1+a(n)). [Where A003961(n) shifts the prime factorization of n one step towards larger primes].

The programs for A246375, there is no canonical definition to state claims against.
-/

/-! ## A246375.P16471691388322146135

`A246379(A246378(n+1))`
-/

namespace A246375.P16471691388322146135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246379 (A246378 (n + 1)).toNat

end

end A246375.P16471691388322146135

/-! ## A246375.P16285469322543047810

`A250246(A269865(n+1))%A219602(A053263(n))`
-/

namespace A246375.P16285469322543047810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250246 (A269865 (n + 1)).toNat) (A219602 (A053263 n).toNat)

end

end A246375.P16285469322543047810

/-! ## A246375.P3758533417844323003

`A269864(A269359(A269359(A245605(A269865(n+1)))))`
-/

namespace A246375.P3758533417844323003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269864 (A269359 (A269359 (A245605 (A269865 (n + 1)).toNat).toNat).toNat).toNat

end

end A246375.P3758533417844323003

/-! ## A246375.P14026793176010812541

`A250245(A269865(n+1)%A106506(3*n+4))`
-/

namespace A246375.P14026793176010812541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (Int.tmod (A269865 (n + 1)) (A106506 (3 * n + 4))).toNat

end

end A246375.P14026793176010812541

/-! ## A246375.P18297921574818358255

`A250246(A269865(n+1)%A219602(3*(n+1)))`
-/

namespace A246375.P18297921574818358255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (Int.tmod (A269865 (n + 1)) (A219602 (3 * (n + 1)))).toNat

end

end A246375.P18297921574818358255

/-!
# A246376: Permutation of natural numbers: a(1) = 1, a(2n) = 2 * a(n), a(2n-1) = 1 + (2 * a(A064989(2n-1)-1)).

The programs for A246376, there is no canonical definition to state claims against.
-/

/-! ## A246376.P15564256649514640230

`A246377(A246380(n+1))`
-/

namespace A246376.P15564256649514640230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (A246380 (n + 1)).toNat

end

end A246376.P15564256649514640230

/-! ## A246376.P9547313708624414800

`A252755(A252756(A269866(A250246(n+1))))`
-/

namespace A246376.P9547313708624414800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A252756 (A269866 (A250246 (n + 1)).toNat).toNat).toNat

end

end A246376.P9547313708624414800

/-! ## A246376.P16389350442678903484

`A269866(A246375(A005940(A005941(A269866(n+1)))))`
-/

namespace A246376.P16389350442678903484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269866 (A246375 (A005940 (A005941 (A269866 (n + 1)).toNat).toNat).toNat).toNat

end

end A246376.P16389350442678903484

/-! ## A246376.P14301014748106669616

`∏{e}[2^n, A269866(#+1)]`
-/

namespace A246376.P14301014748106669616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A269866 (Nat.factorization (f1 n) p + 1)

end

end A246376.P14301014748106669616

/-! ## A246376.P615955256649042041

`A269866(n+1)%A179800(n+1)`
-/

namespace A246376.P615955256649042041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269866 (n + 1)) (A179800 (n + 1))

end

end A246376.P615955256649042041

/-!
# A246377: Permutation of natural numbers: a(1) = 1, a(p_n) = 2*a(n)+1, a(c_n) = 2*a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n).

The programs for A246377, there is no canonical definition to state claims against.
-/

/-! ## A246377.P3247143050817334722

`A246201(A245703(n+1))`
-/

namespace A246377.P3247143050817334722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A245703 (n + 1)).toNat

end

end A246377.P3247143050817334722

/-! ## A246377.P8248834806145496955

`A054429(A135141(n+1))`
-/

namespace A246377.P8248834806145496955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A135141 (n + 1)).toNat

end

end A246377.P8248834806145496955

/-! ## A246377.P6575579843777048166

`A246376(A246379(n+1))`
-/

namespace A246377.P6575579843777048166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (A246379 (n + 1)).toNat

end

end A246377.P6575579843777048166

/-! ## A246377.P2456598590625859013

`A243071(A246681(n+1))`
-/

namespace A246377.P2456598590625859013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A246681 (n + 1)).toNat

end

end A246377.P2456598590625859013

/-! ## A246377.P5344815676218996823

`A135141(A236854(n+1))`
-/

namespace A246377.P5344815676218996823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135141 (A236854 (n + 1)).toNat

end

end A246377.P5344815676218996823

/-! ## A246377.P993372387387273075

`A237427(A255421(n+1))`
-/

namespace A246377.P993372387387273075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237427 (A255421 (n + 1)).toNat

end

end A246377.P993372387387273075

/-! ## A246377.P7056527977127593833

`A260421(A260423(n+1))`
-/

namespace A246377.P7056527977127593833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260421 (A260423 (n + 1)).toNat

end

end A246377.P7056527977127593833

/-! ## A246377.P4151291958899191808

`A257727(A257729(n+1))`
-/

namespace A246377.P4151291958899191808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257727 (A257729 (n + 1)).toNat

end

end A246377.P4151291958899191808

/-! ## A246377.P12445846483506841237

`A246201(A245819(n+2)-1)`
-/

namespace A246377.P12445846483506841237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A245819 (n + 2) - 1).toNat

end

end A246377.P12445846483506841237

/-! ## A246377.P8644867935846372732

`A246201(A260426(A260423(A260426(A260425(n+1)))))`
-/

namespace A246377.P8644867935846372732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246201 (A260426 (A260423 (A260426 (A260425 (n + 1)).toNat).toNat).toNat).toNat

end

end A246377.P8644867935846372732

/-! ## A246377.P10750733784065166182

`A257725(A257731(n+1))`
-/

namespace A246377.P10750733784065166182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257731 (n + 1)).toNat

end

end A246377.P10750733784065166182

/-! ## A246377.P851900536444930963

`A257725(A257801(A257729(A257802(A257801(n+1)))))`
-/

namespace A246377.P851900536444930963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257801 (A257729 (A257802 (A257801 (n + 1)).toNat).toNat).toNat).toNat

end

end A246377.P851900536444930963

/-! ## A246377.P11891778012873616521

`A257727(A257802(A257731(A257801(A257802(n+1)))))`
-/

namespace A246377.P11891778012873616521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257727 (A257802 (A257731 (A257801 (A257802 (n + 1)).toNat).toNat).toNat).toNat

end

end A246377.P11891778012873616521

/-! ## A246377.P6121512709946016264

`A243343(A243346(A135141(A193231(A193231(n+1)))))`
-/

namespace A246377.P6121512709946016264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243343 (A243346 (A135141 (A193231 (A193231 (n + 1)).toNat).toNat).toNat).toNat

end

end A246377.P6121512709946016264

/-! ## A246377.P1716718617975272022

`A243343(A243346(A135141(A243346(A243345(n+1)))))`
-/

namespace A246377.P1716718617975272022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243343 (A243346 (A135141 (A243346 (A243345 (n + 1)).toNat).toNat).toNat).toNat

end

end A246377.P1716718617975272022

/-!
# A246378: Permutation of natural numbers: a(1) = 1, a(2n) = nthcomposite(a(n)), a(2n+1) = nthprime(a(n)), where nthcomposite = A002808, nthprime = A000040.

The programs for A246378, there is no canonical definition to state claims against.
-/

/-! ## A246378.P16754837371665432449

`A227413(A054429(n+1))`
-/

namespace A246378.P16754837371665432449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A054429 (n + 1)).toNat

end

end A246378.P16754837371665432449

/-! ## A246378.P9000962494369809064

`A246380(A246375(n+1))`
-/

namespace A246378.P9000962494369809064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246380 (A246375 (n + 1)).toNat

end

end A246378.P9000962494369809064

/-! ## A246378.P16570850432350810330

`A236854(A227413(n+1))`
-/

namespace A246378.P16570850432350810330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236854 (A227413 (n + 1)).toNat

end

end A246378.P16570850432350810330

/-! ## A246378.P144015376178196044

`A246682(A163511(n+1))`
-/

namespace A246378.P144015376178196044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246682 (A163511 (n + 1)).toNat

end

end A246378.P144015376178196044

/-! ## A246378.P11093525583634578685

`A260424(A260422(n+1))`
-/

namespace A246378.P11093525583634578685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260424 (A260422 (n + 1)).toNat

end

end A246378.P11093525583634578685

/-! ## A246378.P6285105478691664069

`A227413(xor(n+1, 2^floor(log2(n+1))-1))`
-/

namespace A246378.P6285105478691664069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat

end

end A246378.P6285105478691664069

/-! ## A246378.P13507386845326313113

`A227413(lt[2*n+1, xor(n, 2*n)]-A053645(2*n+3))`
-/

namespace A246378.P13507386845326313113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A053645 (2 * n + 3)).toNat

end

end A246378.P13507386845326313113

/-! ## A246378.P4211286041033026008

`A227413(A006068(A233280(n+1)))`
-/

namespace A246378.P4211286041033026008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A006068 (A233280 (n + 1)).toNat).toNat

end

end A246378.P4211286041033026008

/-! ## A246378.P6369401942625768682

`A227413(A233277(A233276(n+1)))`
-/

namespace A246378.P6369401942625768682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A233277 (A233276 (n + 1)).toNat).toNat

end

end A246378.P6369401942625768682

/-! ## A246378.P5578861806120749960

`A227413(A243345(A243344(n+1)))`
-/

namespace A246378.P5578861806120749960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A243345 (A243344 (n + 1)).toNat).toNat

end

end A246378.P5578861806120749960

/-! ## A246378.P17164736937345431451

`A227413(A243343(A243346(n+1)))`
-/

namespace A246378.P17164736937345431451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A243343 (A243346 (n + 1)).toNat).toNat

end

end A246378.P17164736937345431451

/-! ## A246378.P1367069048058703293

`A227413(A004756(n+1)-A144396(n+1))`
-/

namespace A246378.P1367069048058703293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A004756 (n + 1) - A144396 (n + 1)).toNat

end

end A246378.P1367069048058703293

/-! ## A246378.P8943616093733908872

`A257730(A257728(n+1))`
-/

namespace A246378.P8943616093733908872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257730 (A257728 (n + 1)).toNat

end

end A246378.P8943616093733908872

/-! ## A246378.P13639756454101580317

`A257732(A257726(n+1))`
-/

namespace A246378.P13639756454101580317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (A257726 (n + 1)).toNat

end

end A246378.P13639756454101580317

/-! ## A246378.P9910227250219069075

`A257730(A257802(A257726(A257802(A257801(n+1)))))`
-/

namespace A246378.P9910227250219069075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257730 (A257802 (A257726 (A257802 (A257801 (n + 1)).toNat).toNat).toNat).toNat

end

end A246378.P9910227250219069075

/-! ## A246378.P14626559489589253336

`A257732(A257801(A257728(A257801(A257802(n+1)))))`
-/

namespace A246378.P14626559489589253336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257732 (A257801 (A257728 (A257801 (A257802 (n + 1)).toNat).toNat).toNat).toNat

end

end A246378.P14626559489589253336

/-! ## A246378.P7193583343730840578

`A255422(A237126(n+1))`
-/

namespace A246378.P7193583343730840578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255422 (A237126 (n + 1)).toNat

end

end A246378.P7193583343730840578

/-!
# A246379: Permutation of natural numbers: a(1) = 1, a(p_n) = A003961(1+a(n)), a(c_n) = 2*a(n), where p_n = n-th prime = A000040(n), c_n = n-th composite number = A002808(n), and A003961(n) shifts the prime factorization of n one step towards larger primes.

The programs for A246379, there is no canonical definition to state claims against.
-/

/-! ## A246379.P3045585611952256561

`A246375(A246377(n+1))`
-/

namespace A246379.P3045585611952256561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246375 (A246377 (n + 1)).toNat

end

end A246379.P3045585611952256561

/-!
# A246380: Permutation of natural numbers: a(1) = 1, a(2n) = nthcomposite(a(n)), a(2n-1) = nthprime(a(A064989(2n-1)-1)), where nthprime = A000040, nthcomposite = A002808, and A064989(n) shifts the prime factorization of n one step towards smaller primes.

The programs for A246380, there is no canonical definition to state claims against.
-/

/-! ## A246380.P13524014403191499557

`A246378(A246376(n+1))`
-/

namespace A246380.P13524014403191499557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A246376 (n + 1)).toNat

end

end A246380.P13524014403191499557

/-! ## A246380.P10882210755906071332

`A246378(A269866(n+1))%A348256(2*(n+2))`
-/

namespace A246380.P10882210755906071332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246378 (A269866 (n + 1)).toNat) (A348256 (2 * (n + 2)))

end

end A246380.P10882210755906071332

/-! ## A246380.P2817146416421600794

`A246682(A163511(A246375(A246375(A246375(n+1)))))`
-/

namespace A246380.P2817146416421600794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246682 (A163511 (A246375 (A246375 (A246375 (n + 1)).toNat).toNat).toNat).toNat

end

end A246380.P2817146416421600794

/-!
# A246382: Column 0 of triangular matrix A246381 = exp(L) where L(n,k) = C(2*n, 2*k+1)/2.

The programs for A246382, there is no canonical definition to state claims against.
-/

/-! ## A246382.P12597814536146841570

`A246381(∑[n])`
-/

namespace A246382.P12597814536146841570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246382.P12597814536146841570

/-! ## A246382.P5635666161194115390

`and(-1, A246381(A000217(n)))`
-/

namespace A246382.P5635666161194115390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A246381 (A000217 n).toNat)

end

end A246382.P5635666161194115390

/-! ## A246382.P8272981497458268604

`A246381(C(n+1, 2))*A318191(n)`
-/

namespace A246382.P8272981497458268604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (Nat.choose (n + 1) 2) * A318191 n

end

end A246382.P8272981497458268604

/-! ## A246382.P7147912493179298713

`A246381(C(n+1, 2))*A275215(n+1)`
-/

namespace A246382.P7147912493179298713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (Nat.choose (n + 1) 2) * A275215 (n + 1)

end

end A246382.P7147912493179298713

/-! ## A246382.P8780571572447320555

`A246381(C(n+1, 2))%A001109(n+2)`
-/

namespace A246382.P8780571572447320555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246381 (Nat.choose (n + 1) 2)) (A001109 (n + 2))

end

end A246382.P8780571572447320555

/-!
# A246383: Column 1 of triangular matrix A246381 = exp(L) where L(n,k) = C(2*n, 2*k+1)/2.

The programs for A246383, there is no canonical definition to state claims against.
-/

/-! ## A246383.P7393158952226071008

`record[A246381(comp[∑[n]])]`
-/

namespace A246383.P7393158952226071008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246383.P7393158952226071008

/-! ## A246383.P2422560038833638943

`A246381(∑[n+1]+1)`
-/

namespace A246383.P2422560038833638943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246383.P2422560038833638943

/-! ## A246383.P4132758070996480448

`record[A110247(n)*A246381(n)]`
-/

namespace A246383.P4132758070996480448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110247 n * A246381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246383.P4132758070996480448

/-! ## A246383.P13045432774625979208

`record[gcd(A053200(n), A246381(n))]`
-/

namespace A246383.P13045432774625979208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053200 n) (A246381 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246383.P13045432774625979208

/-! ## A246383.P14832231140461999675

`record[or(A103452(n), A246381(n))]`
-/

namespace A246383.P14832231140461999675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A246381 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246383.P14832231140461999675

/-!
# A246384: Column 2 of triangular matrix A246381 = exp(L) where L(n,k) = C(2*n, 2*k+1)/2.

The programs for A246384, there is no canonical definition to state claims against.
-/

/-! ## A246384.P7493126061723074785

`record[A246381(∑[n]+2)]`
-/

namespace A246384.P7493126061723074785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246384.P7493126061723074785

/-! ## A246384.P7287351790560233803

`A246381(∑[n+2]+3)`
-/

namespace A246384.P7287351790560233803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246381 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A246384.P7287351790560233803

/-! ## A246384.P13277373413293725876

`record[A010054(n)*A246381(n+2)]`
-/

namespace A246384.P13277373413293725876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A246381 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246384.P13277373413293725876

/-! ## A246384.P16192074770062519850

`record[root(A246381(n+2), A103406(n))]`
-/

namespace A246384.P16192074770062519850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A246381 (n + 2) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246384.P16192074770062519850

/-!
# A246385: Row sums of triangular matrix A246381 = exp(L) where L(n,k) = C(2*n, 2*k+1)/2.

The programs for A246385, there is no canonical definition to state claims against.
-/

/-! ## A246385.P16151783158849146997

`A184117(∑[A177402(n)])`
-/

namespace A246385.P16151783158849146997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246385.P16151783158849146997

/-! ## A246385.P1825723991477596522

`A285420(A321515(n)+n)-1`
-/

namespace A246385.P1825723991477596522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (A321515 n + (n : ℤ)).toNat - 1

end

end A246385.P1825723991477596522

/-!
# A246386: Column 0 of triangular matrix defined by exp(L) where L(n,k) = C(2*n, 2*k+1).

The programs for A246386, there is no canonical definition to state claims against.
-/

/-! ## A246386.P15206252471013347840

`A115392(A001147(n))+A003462(n)`
-/

namespace A246386.P15206252471013347840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (A001147 n).toNat + A003462 n

end

end A246386.P15206252471013347840

/-! ## A246386.P9158707671244591984

`A173711(A187006(n+1))+A135082(n)`
-/

namespace A246386.P9158707671244591984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A187006 (n + 1)).toNat + A135082 n

end

end A246386.P9158707671244591984

/-!
# A246387: Row sums of triangular matrix defined by exp(L) where L(n,k) = C(2*n, 2*k+1) for n>=0, k=0..n.

The programs for A246387, there is no canonical definition to state claims against.
-/

/-! ## A246387.P16075777437587229488

`A109613(A307524(n)+A192951(n))`
-/

namespace A246387.P16075777437587229488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A307524 n + A192951 n).toNat

end

end A246387.P16075777437587229488

/-!
# A246388: Nonnegative integers k satisfying sin(k) >= 0 and sin(k+1) <= 0.

The programs for A246388, the canonical program `A246388.P8549268326510551473` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246388 has offset 0).

The definition of A246388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246388.P8549268326510551473

`floor(Δ[π*n²])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246388

/-- `floor(Δ[π*n²])` -/
def P8549268326510551473.Spec : Prop :=
  ∀ n, P8549268326510551473.a n = A246388 n

theorem P8549268326510551473.correct : P8549268326510551473.Spec := by
  intro n
  simp only [A246388]

end A246388

/-! ## A246388.P11678821394545482562

`comp[floor(n-sin(n))]`
-/

namespace A246388.P11678821394545482562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.sin (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246388.P11678821394545482562

namespace A246388

/-- `comp[floor(n-sin(n))]` -/
def P11678821394545482562.Spec : Prop :=
  ∀ n, (P11678821394545482562.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P17954615452097049327

`comp[n-ceil(sin(n))]`
-/

namespace A246388.P17954615452097049327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈Real.sin (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246388.P17954615452097049327

namespace A246388

/-- `comp[n-ceil(sin(n))]` -/
def P17954615452097049327.Spec : Prop :=
  ∀ n, (P17954615452097049327.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P7502320079859855865

`A327139(n+1)+A257984(n+1)`
-/

namespace A246388.P7502320079859855865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327139 (n + 1) + A257984 (n + 1)

end

end A246388.P7502320079859855865

namespace A246388

/-- `A327139(n+1)+A257984(n+1)` -/
def P7502320079859855865.Spec : Prop :=
  ∀ n, P7502320079859855865.a n = A246388 n

end A246388

/-! ## A246388.P15121432595397498793

`lt[sin(n+1), floor(sin(n))]`
-/

namespace A246388.P15121432595397498793
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246388.P15121432595397498793

namespace A246388

/-- `lt[sin(n+1), floor(sin(n))]` -/
def P15121432595397498793.Spec : Prop :=
  ∀ n, (P15121432595397498793.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P3444964559822951439

`lt[ceil(sin(n+1)), sin(n)]`
-/

namespace A246388.P3444964559822951439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n + 1 : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246388.P3444964559822951439

namespace A246388

/-- `lt[ceil(sin(n+1)), sin(n)]` -/
def P3444964559822951439.Spec : Prop :=
  ∀ n, (P3444964559822951439.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P18425871531624708253

`lt[sin(1)+sin(n+1), sin(n)]`
-/

namespace A246388.P18425871531624708253
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ) + Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246388.P18425871531624708253

namespace A246388

/-- `lt[sin(1)+sin(n+1), sin(n)]` -/
def P18425871531624708253.Spec : Prop :=
  ∀ n, (P18425871531624708253.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P7958187445005510324

`A022844(Δ[n²])`
-/

namespace A246388.P7958187445005510324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246388.P7958187445005510324

namespace A246388

/-- `A022844(Δ[n²])` -/
def P7958187445005510324.Spec : Prop :=
  ∀ n, P7958187445005510324.a n = A246388 n

end A246388

/-! ## A246388.P15461456970822465383

`A277094(2*(n+1))`
-/

namespace A246388.P15461456970822465383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (2 * (n + 1))

end

end A246388.P15461456970822465383

namespace A246388

/-- `A277094(2*(n+1))` -/
def P15461456970822465383.Spec : Prop :=
  ∀ n, P15461456970822465383.a n = A246388 n

end A246388

/-! ## A246388.P17942997316261564515

`A277094(Δ[n²])+1`
-/

namespace A246388.P17942997316261564515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A246388.P17942997316261564515

namespace A246388

/-- `A277094(Δ[n²])+1` -/
def P17942997316261564515.Spec : Prop :=
  ∀ n, P17942997316261564515.a n = A246388 n

end A246388

/-! ## A246388.P5393614106129915799

`A121381(Δ[n²])-1`
-/

namespace A246388.P5393614106129915799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A246388.P5393614106129915799

namespace A246388

/-- `A121381(Δ[n²])-1` -/
def P5393614106129915799.Spec : Prop :=
  ∀ n, P5393614106129915799.a n = A246388 n

end A246388

/-! ## A246388.P17901032710186563397

`A004084(2*(n+1))-1`
-/

namespace A246388.P17901032710186563397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (2 * (n + 1)) - 1

end

end A246388.P17901032710186563397

namespace A246388

/-- `A004084(2*(n+1))-1` -/
def P17901032710186563397.Spec : Prop :=
  ∀ n, P17901032710186563397.a n = A246388 n

end A246388

/-! ## A246388.P17603253032964424726

`A063459(2*n+1)+Δ[n²]`
-/

namespace A246388.P17603253032964424726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A246388.P17603253032964424726

namespace A246388

/-- `A063459(2*n+1)+Δ[n²]` -/
def P17603253032964424726.Spec : Prop :=
  ∀ n, P17603253032964424726.a n = A246388 n

theorem P17603253032964424726.correct : P17603253032964424726.Spec := by
  intro n
  simp only [A246388, Nat.add_sub_cancel, A246388.P17603253032964424726.f1, A246388.P17603253032964424726.a, A246388.P8549268326510551473.f1, A246388.P8549268326510551473.a, A063459, A063459.P17423234819915296512.a, A022844, A022844.P11976428228251050705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246388

/-! ## A246388.P285397564697373965

`abs(A022844(2*n+1)-1)+1`
-/

namespace A246388.P285397564697373965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022844 (2 * n + 1) - 1| + 1

end

end A246388.P285397564697373965

namespace A246388

/-- `abs(A022844(2*n+1)-1)+1` -/
def P285397564697373965.Spec : Prop :=
  ∀ n, P285397564697373965.a n = A246388 n

end A246388

/-! ## A246388.P6686077572299425316

`A184591(2*n+1)+2*(n+1)`
-/

namespace A246388.P6686077572299425316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (2 * n + 1) + (2 * (n + 1) : ℤ)

end

end A246388.P6686077572299425316

namespace A246388

/-- `A184591(2*n+1)+2*(n+1)` -/
def P6686077572299425316.Spec : Prop :=
  ∀ n, P6686077572299425316.a n = A246388 n

end A246388

/-! ## A246388.P8544806779080249639

`A059532(2*n+1)-(2*n+1)`
-/

namespace A246388.P8544806779080249639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059532 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A246388.P8544806779080249639

namespace A246388

/-- `A059532(2*n+1)-(2*n+1)` -/
def P8544806779080249639.Spec : Prop :=
  ∀ n, P8544806779080249639.a n = A246388 n

theorem P8544806779080249639.correct : P8544806779080249639.Spec := by
  intro n
  simp only [A246388, Nat.add_sub_cancel, A246388.P8544806779080249639.a, A246388.P8549268326510551473.f1, A246388.P8549268326510551473.a, A059532, A059532.P6901203589356187192.a, A022844, A022844.P11976428228251050705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246388

/-! ## A246388.P7380926668645716831

`∩[A277094(n+1), A022844(n)]`
-/

namespace A246388.P7380926668645716831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246388.P7380926668645716831

namespace A246388

/-- `∩[A277094(n+1), A022844(n)]` -/
def P7380926668645716831.Spec : Prop :=
  ∀ n, (P7380926668645716831.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P7984303594158019456

`∩[A332481(n+1), A022844(n)]`
-/

namespace A246388.P7984303594158019456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246388.P7984303594158019456

namespace A246388

/-- `∩[A332481(n+1), A022844(n)]` -/
def P7984303594158019456.Spec : Prop :=
  ∀ n, (P7984303594158019456.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P12214721688839528674

`∩[A022844(n), A246396(n)]`
-/

namespace A246388.P12214721688839528674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246388.P12214721688839528674

namespace A246388

/-- `∩[A022844(n), A246396(n)]` -/
def P12214721688839528674.Spec : Prop :=
  ∀ n, (P12214721688839528674.a n : ℤ) = A246388 n

end A246388

/-! ## A246388.P4067626175053199494

`A108591(A054386(2*n+1))`
-/

namespace A246388.P4067626175053199494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A054386 (2 * n + 1)).toNat

end

end A246388.P4067626175053199494

namespace A246388

/-- `A108591(A054386(2*n+1))` -/
def P4067626175053199494.Spec : Prop :=
  ∀ n, P4067626175053199494.a n = A246388 n

end A246388

/-!
# A246389: Nonnegative integers k satisfying sin(k) >= 0 and sin(k+1) >= 0.

The programs for A246389, the canonical program `A246389.P893148227588508086` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246389 has offset 0).

The definition of A246389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246389.P15150732018217032139

`comp[lt[∑[cos(n)], 1]]`
-/

namespace A246389.P15150732018217032139
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℝ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246389.P15150732018217032139

namespace A246389

/-- `comp[lt[∑[cos(n)], 1]]` -/
def P15150732018217032139.Spec : Prop :=
  ∀ n, (P15150732018217032139.a n : ℤ) = A246389 n

end A246389

/-! ## A246389.P599078799169899780

`eq[1, Δ[acos(cos(n))]]`
-/

namespace A246389.P599078799169899780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A246389.P599078799169899780

namespace A246389

/-- `eq[1, Δ[acos(cos(n))]]` -/
def P599078799169899780.Spec : Prop :=
  ∀ n, (P599078799169899780.a n : ℤ) = A246389 n

end A246389

/-! ## A246389.P7853356906680482429

`lt[tanh(6), ∑[cos(n)]]`
-/

namespace A246389.P7853356906680482429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (6 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246389.P7853356906680482429

namespace A246389

/-- `lt[tanh(6), ∑[cos(n)]]` -/
def P7853356906680482429.Spec : Prop :=
  ∀ n, (P7853356906680482429.a n : ℤ) = A246389 n

end A246389

/-! ## A246389.P10460964474755543887

`lt[cos(1/(n+1)), ∑[cos(n)]]`
-/

namespace A246389.P10460964474755543887
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 / (n + 1 : ℚ) : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246389.P10460964474755543887

namespace A246389

/-- `lt[cos(1/(n+1)), ∑[cos(n)]]` -/
def P10460964474755543887.Spec : Prop :=
  ∀ n, (P10460964474755543887.a n : ℤ) = A246389 n

end A246389

/-! ## A246389.P1433726817308336005

`A246395(n+3)-11`
-/

namespace A246389.P1433726817308336005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 (n + 3) - 11

end

end A246389.P1433726817308336005

namespace A246389

/-- `A246395(n+3)-11` -/
def P1433726817308336005.Spec : Prop :=
  ∀ n, P1433726817308336005.a n = A246389 n

end A246389

/-! ## A246389.P893148227588508086

`eq[n*A000493(n+1), A000493(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246389

/-- `eq[n*A000493(n+1), A000493(n)]` -/
def P893148227588508086.Spec : Prop :=
  ∀ n, (P893148227588508086.a n : ℤ) = A246389 n

theorem P893148227588508086.correct : P893148227588508086.Spec := by
  intro n
  simp only [A246389]

end A246389

/-! ## A246389.P6861878603594078870

`eq[A000493(n+1)/A000196(n+1), A000493(n)]`
-/

namespace A246389.P6861878603594078870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000493 (n + 1) : ℚ) / (A000196 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A246389.P6861878603594078870

namespace A246389

/-- `eq[A000493(n+1)/A000196(n+1), A000493(n)]` -/
def P6861878603594078870.Spec : Prop :=
  ∀ n, (P6861878603594078870.a n : ℤ) = A246389 n

end A246389

/-!
# A246390: Nonnegative integers k satisfying sin(k) <= 0 and sin(k+1) <= 0.

The programs for A246390, the canonical program `A246390.P11775606840383392850` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246390 has offset 0).

The definition of A246390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246390.P11775606840383392850

`∪[A277096(n+1)+1, A277096(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246390

/-- `∪[A277096(n+1)+1, A277096(n+1)]` -/
def P11775606840383392850.Spec : Prop :=
  ∀ n, (P11775606840383392850.a n : ℤ) = A246390 n

theorem P11775606840383392850.correct : P11775606840383392850.Spec := by
  intro n
  simp only [A246390]

end A246390

/-! ## A246390.P5861279652695937485

`∪[A277095(n+1)-1, A332483(n+1)]`
-/

namespace A246390.P5861279652695937485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P5861279652695937485

namespace A246390

/-- `∪[A277095(n+1)-1, A332483(n+1)]` -/
def P5861279652695937485.Spec : Prop :=
  ∀ n, (P5861279652695937485.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P3671107907477653334

`∪[A332482(n+1)-1, A332483(n+1)]`
-/

namespace A246390.P3671107907477653334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P3671107907477653334

namespace A246390

/-- `∪[A332482(n+1)-1, A332483(n+1)]` -/
def P3671107907477653334.Spec : Prop :=
  ∀ n, (P3671107907477653334.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P8465211224981193381

`A246396(n+4)-11`
-/

namespace A246390.P8465211224981193381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 (n + 4) - 11

end

end A246390.P8465211224981193381

namespace A246390

/-- `A246396(n+4)-11` -/
def P8465211224981193381.Spec : Prop :=
  ∀ n, P8465211224981193381.a n = A246390 n

end A246390

/-! ## A246390.P9803746101220524933

`∩[A054386(n+1), A070751(n+1)]`
-/

namespace A246390.P9803746101220524933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P9803746101220524933

namespace A246390

/-- `∩[A054386(n+1), A070751(n+1)]` -/
def P9803746101220524933.Spec : Prop :=
  ∀ n, (P9803746101220524933.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P12233953191365678507

`∩[A054386(n+1), A246303(n+1)]`
-/

namespace A246390.P12233953191365678507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P12233953191365678507

namespace A246390

/-- `∩[A054386(n+1), A246303(n+1)]` -/
def P12233953191365678507.Spec : Prop :=
  ∀ n, (P12233953191365678507.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P7671870247110427970

`∩[A070751(n+1), A108586(n+1)]`
-/

namespace A246390.P7671870247110427970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P7671870247110427970

namespace A246390

/-- `∩[A070751(n+1), A108586(n+1)]` -/
def P7671870247110427970.Spec : Prop :=
  ∀ n, (P7671870247110427970.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P2518911221763873050

`lt[∑[cos(n)], 0]`
-/

namespace A246390.P2518911221763873050
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246390.P2518911221763873050

namespace A246390

/-- `lt[∑[cos(n)], 0]` -/
def P2518911221763873050.Spec : Prop :=
  ∀ n, (P2518911221763873050.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P18431310664330545234

`lt[∏[exp(cos(n))], 1]`
-/

namespace A246390.P18431310664330545234
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (n : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A246390.P18431310664330545234

namespace A246390

/-- `lt[∏[exp(cos(n))], 1]` -/
def P18431310664330545234.Spec : Prop :=
  ∀ n, (P18431310664330545234.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P4300502541400525463

`eq[1, Δ[asin(cos(n))]]`
-/

namespace A246390.P4300502541400525463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.cos (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A246390.P4300502541400525463

namespace A246390

/-- `eq[1, Δ[asin(cos(n))]]` -/
def P4300502541400525463.Spec : Prop :=
  ∀ n, (P4300502541400525463.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P5060695380761806107

`lt[sin(n), sin(A126564(n))]`
-/

namespace A246390.P5060695380761806107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A126564 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246390.P5060695380761806107

namespace A246390

/-- `lt[sin(n), sin(A126564(n))]` -/
def P5060695380761806107.Spec : Prop :=
  ∀ n, (P5060695380761806107.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P10598513680049454324

`eq[A296357(n+1)+A000493(n), A032615(n)]`
-/

namespace A246390.P10598513680049454324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (n + 1) + A000493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246390.P10598513680049454324

namespace A246390

/-- `eq[A296357(n+1)+A000493(n), A032615(n)]` -/
def P10598513680049454324.Spec : Prop :=
  ∀ n, (P10598513680049454324.a n : ℤ) = A246390 n

end A246390

/-! ## A246390.P7992479728665549291

`lt[sin(n), sin(A000493(2*n))]`
-/

namespace A246390.P7992479728665549291
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A000493 (2 * n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246390.P7992479728665549291

namespace A246390

/-- `lt[sin(n), sin(A000493(2*n))]` -/
def P7992479728665549291.Spec : Prop :=
  ∀ n, (P7992479728665549291.a n : ℤ) = A246390 n

end A246390

/-!
# A246392: Numbers n such that Phi(10, n) is prime, where Phi is the cyclotomic polynomial.

The programs for A246392, there is no canonical definition to state claims against.
-/

/-! ## A246392.P12606262205582996107

`ceil(root(A259257(n+1), 4))`
-/

namespace A246392.P12606262205582996107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A246392.P12606262205582996107

/-! ## A246392.P3097313117265723380

`A000027(round(root(A259257(n+1), 4)))`
-/

namespace A246392.P3097313117265723380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A246392.P3097313117265723380

/-! ## A246392.P4628575479045649399

`round(root(A259257(n+1), A040000(n)+2))`
-/

namespace A246392.P4628575479045649399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (A040000 n + 2 : ℝ)))

end

end A246392.P4628575479045649399

/-! ## A246392.P9443051183909313295

`A000038(n+1)+round(root(A259257(n+1), 4))`
-/

namespace A246392.P9443051183909313295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A246392.P9443051183909313295

/-! ## A246392.P14285566121633605148

`round(root(A259257(n+1), 4))/A016813(n)%2`
-/

namespace A246392.P14285566121633605148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) : ℚ) / (Int.tmod (A016813 n) 2 : ℚ)

end

end A246392.P14285566121633605148

/-! ## A246392.P4548303756544693655

`A158765(n+1)%2*round(root(A259257(n+1), 4))`
-/

namespace A246392.P4548303756544693655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158765 (n + 1)) 2 * SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A246392.P4548303756544693655

/-! ## A246392.P5021109303349814055

`2*n+round(root(A259257(n+1), 4))-A005843(n)`
-/

namespace A246392.P5021109303349814055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) - A005843 n)

end

end A246392.P5021109303349814055

/-! ## A246392.P11901992909873450763

`(A005408(n)-2*n)*round(root(A259257(n+1), 4))`
-/

namespace A246392.P11901992909873450763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A246392.P11901992909873450763

/-! ## A246392.P16504827717213506226

`(A008619(2*n)-n)*round(root(A259257(n+1), 4))`
-/

namespace A246392.P16504827717213506226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ)) * SequenceMachineLib.roundAway ((A259257 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A246392.P16504827717213506226

/-! ## A246392.P17917185143602625870

`eq[A060884(n), A240548(A233583(n+1))]`
-/

namespace A246392.P17917185143602625870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240548 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246392.P17917185143602625870

/-!
# A246393: Nonnegative integers k satisfying cos(k) >= 0 and cos(k+1) <= 0.

The programs for A246393, the canonical program `A246393.P11006917697096325102` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246393 has offset 0).

The definition of A246393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246393.P11006917697096325102

`comp[floor(n-cos(n))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246393

/-- `comp[floor(n-cos(n))]` -/
def P11006917697096325102.Spec : Prop :=
  ∀ n, (P11006917697096325102.a n : ℤ) = A246393 n

theorem P11006917697096325102.correct : P11006917697096325102.Spec := by
  intro n
  simp only [A246393]

end A246393

/-! ## A246393.P5221937199592366995

`comp[n-ceil(cos(n))]`
-/

namespace A246393.P5221937199592366995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈Real.cos (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246393.P5221937199592366995

namespace A246393

/-- `comp[n-ceil(cos(n))]` -/
def P5221937199592366995.Spec : Prop :=
  ∀ n, (P5221937199592366995.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P10651629650418356057

`floor(2*(4*n+1)*atan(1))`
-/

namespace A246393.P10651629650418356057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (4 * n + 1) : ℝ) * Real.arctan (1 : ℝ)⌋

end

end A246393.P10651629650418356057

namespace A246393

/-- `floor(2*(4*n+1)*atan(1))` -/
def P10651629650418356057.Spec : Prop :=
  ∀ n, P10651629650418356057.a n = A246393 n

end A246393

/-! ## A246393.P12920558549777707219

`floor((2*n+2*n+1)*acos(0))`
-/

namespace A246393.P12920558549777707219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + (2 * n + 1) : ℝ) * Real.arccos (0 : ℝ)⌋

end

end A246393.P12920558549777707219

namespace A246393

/-- `floor((2*n+2*n+1)*acos(0))` -/
def P12920558549777707219.Spec : Prop :=
  ∀ n, P12920558549777707219.a n = A246393 n

end A246393

/-! ## A246393.P676562130649073859

`floor((2*n+2*n+1)*asin(1))`
-/

namespace A246393.P676562130649073859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + (2 * n + 1) : ℝ) * Real.arcsin (1 : ℝ)⌋

end

end A246393.P676562130649073859

namespace A246393

/-- `floor((2*n+2*n+1)*asin(1))` -/
def P676562130649073859.Spec : Prop :=
  ∀ n, P676562130649073859.a n = A246393 n

end A246393

/-! ## A246393.P16943355978310933625

`lt[ceil(cos(n+1)), cos(n)]`
-/

namespace A246393.P16943355978310933625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n + 1 : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246393.P16943355978310933625

namespace A246393

/-- `lt[ceil(cos(n+1)), cos(n)]` -/
def P16943355978310933625.Spec : Prop :=
  ∀ n, (P16943355978310933625.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P7834222670882543335

`A062389(Δ[n²])`
-/

namespace A246393.P7834222670882543335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246393.P7834222670882543335

namespace A246393

/-- `A062389(Δ[n²])` -/
def P7834222670882543335.Spec : Prop :=
  ∀ n, P7834222670882543335.a n = A246393 n

end A246393

/-! ## A246393.P11676432344738045812

`A277137(Δ[n²])`
-/

namespace A246393.P11676432344738045812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A246393.P11676432344738045812

namespace A246393

/-- `A277137(Δ[n²])` -/
def P11676432344738045812.Spec : Prop :=
  ∀ n, P11676432344738045812.a n = A246393 n

end A246393

/-! ## A246393.P15793892545433574720

`A257984(Δ[n²])-1`
-/

namespace A246393.P15793892545433574720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A246393.P15793892545433574720

namespace A246393

/-- `A257984(Δ[n²])-1` -/
def P15793892545433574720.Spec : Prop :=
  ∀ n, P15793892545433574720.a n = A246393 n

end A246393

/-! ## A246393.P4871141520711383674

`∩[A062389(n+1), A277137(n+1)]`
-/

namespace A246393.P4871141520711383674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P4871141520711383674

namespace A246393

/-- `∩[A062389(n+1), A277137(n+1)]` -/
def P4871141520711383674.Spec : Prop :=
  ∀ n, (P4871141520711383674.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P4135745579842663003

`∩[A062389(n+1), A332480(n+1)]`
-/

namespace A246393.P4135745579842663003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P4135745579842663003

namespace A246393

/-- `∩[A062389(n+1), A332480(n+1)]` -/
def P4135745579842663003.Spec : Prop :=
  ∀ n, (P4135745579842663003.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P18366299120142916463

`A246405(3*n+1)`
-/

namespace A246393.P18366299120142916463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (3 * n + 1)

end

end A246393.P18366299120142916463

namespace A246393

/-- `A246405(3*n+1)` -/
def P18366299120142916463.Spec : Prop :=
  ∀ n, P18366299120142916463.a n = A246393 n

end A246393

/-! ## A246393.P1372443652083624122

`∩[A062389(n+1), A246405(n+1)]`
-/

namespace A246393.P1372443652083624122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P1372443652083624122

namespace A246393

/-- `∩[A062389(n+1), A246405(n+1)]` -/
def P1372443652083624122.Spec : Prop :=
  ∀ n, (P1372443652083624122.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P13817727639955861641

`∩[A246405(n+1), A277137(n+1)]`
-/

namespace A246393.P13817727639955861641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P13817727639955861641

namespace A246393

/-- `∩[A246405(n+1), A277137(n+1)]` -/
def P13817727639955861641.Spec : Prop :=
  ∀ n, (P13817727639955861641.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P357371142416638125

`∩[A026310(n+1), A062389(n+1)]`
-/

namespace A246393.P357371142416638125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P357371142416638125

namespace A246393

/-- `∩[A026310(n+1), A062389(n+1)]` -/
def P357371142416638125.Spec : Prop :=
  ∀ n, (P357371142416638125.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P7732480487628387049

`∩[A062389(n+1), A070752(n+1)]`
-/

namespace A246393.P7732480487628387049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P7732480487628387049

namespace A246393

/-- `∩[A062389(n+1), A070752(n+1)]` -/
def P7732480487628387049.Spec : Prop :=
  ∀ n, (P7732480487628387049.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P11176357915743371116

`∩[A062389(n+1), A246440(n+1)]`
-/

namespace A246393.P11176357915743371116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P11176357915743371116

namespace A246393

/-- `∩[A062389(n+1), A246440(n+1)]` -/
def P11176357915743371116.Spec : Prop :=
  ∀ n, (P11176357915743371116.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P1018050412327163465

`∩[A246440(n+1), A332480(n+1)]`
-/

namespace A246393.P1018050412327163465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P1018050412327163465

namespace A246393

/-- `∩[A246440(n+1), A332480(n+1)]` -/
def P1018050412327163465.Spec : Prop :=
  ∀ n, (P1018050412327163465.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P6704371053219948354

`∩[A026311(n+1), A062389(n+1)]`
-/

namespace A246393.P6704371053219948354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P6704371053219948354

namespace A246393

/-- `∩[A026311(n+1), A062389(n+1)]` -/
def P6704371053219948354.Spec : Prop :=
  ∀ n, (P6704371053219948354.a n : ℤ) = A246393 n

end A246393

/-! ## A246393.P4167348311007946405

`∩[A062389(n+1), A131503(n+1)]`
-/

namespace A246393.P4167348311007946405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246393.P4167348311007946405

namespace A246393

/-- `∩[A062389(n+1), A131503(n+1)]` -/
def P4167348311007946405.Spec : Prop :=
  ∀ n, (P4167348311007946405.a n : ℤ) = A246393 n

end A246393

/-!
# A246394: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) >= 0.

The programs for A246394, the canonical program `A246394.P5096704532663512882` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246394 has offset 0).

The definition of A246394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246394.P2494131846904925593

`comp[ceil(cos(n)+n-1)]`
-/

namespace A246394.P2494131846904925593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246394.P2494131846904925593

namespace A246394

/-- `comp[ceil(cos(n)+n-1)]` -/
def P2494131846904925593.Spec : Prop :=
  ∀ n, (P2494131846904925593.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P17635137686118941858

`record[ceil(xor(3, n)*acos(0))]-1`
-/

namespace A246394.P17635137686118941858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 n : ℝ) * Real.arccos (0 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A246394.P17635137686118941858

namespace A246394

/-- `record[ceil(xor(3, n)*acos(0))]-1` -/
def P17635137686118941858.Spec : Prop :=
  ∀ n, P17635137686118941858.a n = A246394 n

theorem P17635137686118941858.correct : P17635137686118941858.Spec := by
  intro n
  simp only [A246394, Nat.add_sub_cancel, A246394.P17635137686118941858.f1, A246394.P17635137686118941858.a, A246394.P5096704532663512882.a, A004083, A004083.P6881247767696671398.f1, A004083.P6881247767696671398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246394

/-! ## A246394.P10805422720930905577

`floor(2*(4*n+3)*atan(1))`
-/

namespace A246394.P10805422720930905577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (4 * n + 3) : ℝ) * Real.arctan (1 : ℝ)⌋

end

end A246394.P10805422720930905577

namespace A246394

/-- `floor(2*(4*n+3)*atan(1))` -/
def P10805422720930905577.Spec : Prop :=
  ∀ n, P10805422720930905577.a n = A246394 n

end A246394

/-! ## A246394.P5096704532663512882

`A004083(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246394

/-- `A004083(n+1)-1` -/
def P5096704532663512882.Spec : Prop :=
  ∀ n, P5096704532663512882.a n = A246394 n

theorem P5096704532663512882.correct : P5096704532663512882.Spec := by
  intro n
  simp only [A246394]

end A246394

/-! ## A246394.P8940542725097342283

`lt[cos(n), floor(cos(n+1))]`
-/

namespace A246394.P8940542725097342283
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A246394.P8940542725097342283

namespace A246394

/-- `lt[cos(n), floor(cos(n+1))]` -/
def P8940542725097342283.Spec : Prop :=
  ∀ n, (P8940542725097342283.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P6508482353459935661

`lt[ceil(cos(n)), cos(n+1)]`
-/

namespace A246394.P6508482353459935661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246394.P6508482353459935661

namespace A246394

/-- `lt[ceil(cos(n)), cos(n+1)]` -/
def P6508482353459935661.Spec : Prop :=
  ∀ n, (P6508482353459935661.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P11128573394835977872

`A062389(2*(n+1))`
-/

namespace A246394.P11128573394835977872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * (n + 1))

end

end A246394.P11128573394835977872

namespace A246394

/-- `A062389(2*(n+1))` -/
def P11128573394835977872.Spec : Prop :=
  ∀ n, P11128573394835977872.a n = A246394 n

end A246394

/-! ## A246394.P4030591537435999772

`A277138(2*(n+1))`
-/

namespace A246394.P4030591537435999772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (2 * (n + 1))

end

end A246394.P4030591537435999772

namespace A246394

/-- `A277138(2*(n+1))` -/
def P4030591537435999772.Spec : Prop :=
  ∀ n, P4030591537435999772.a n = A246394 n

end A246394

/-! ## A246394.P9780416053657820347

`A277138(Δ[n²])+1`
-/

namespace A246394.P9780416053657820347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A246394.P9780416053657820347

namespace A246394

/-- `A277138(Δ[n²])+1` -/
def P9780416053657820347.Spec : Prop :=
  ∀ n, P9780416053657820347.a n = A246394 n

end A246394

/-! ## A246394.P2015509694454315789

`A257984(2*(n+1))-1`
-/

namespace A246394.P2015509694454315789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (2 * (n + 1)) - 1

end

end A246394.P2015509694454315789

namespace A246394

/-- `A257984(2*(n+1))-1` -/
def P2015509694454315789.Spec : Prop :=
  ∀ n, P2015509694454315789.a n = A246394 n

end A246394

/-! ## A246394.P7668570094771665679

`∩[A062389(n+1), A277138(n+1)]`
-/

namespace A246394.P7668570094771665679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P7668570094771665679

namespace A246394

/-- `∩[A062389(n+1), A277138(n+1)]` -/
def P7668570094771665679.Spec : Prop :=
  ∀ n, (P7668570094771665679.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P10824986319836781573

`∩[A062389(n+1), A332483(n+1)]`
-/

namespace A246394.P10824986319836781573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P10824986319836781573

namespace A246394

/-- `∩[A062389(n+1), A332483(n+1)]` -/
def P10824986319836781573.Spec : Prop :=
  ∀ n, (P10824986319836781573.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P10405304025731860029

`∩[A062389(n+1), A246390(n)]`
-/

namespace A246394.P10405304025731860029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P10405304025731860029

namespace A246394

/-- `∩[A062389(n+1), A246390(n)]` -/
def P10405304025731860029.Spec : Prop :=
  ∀ n, (P10405304025731860029.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P1906879993838382729

`A246408(3*(n+1))`
-/

namespace A246394.P1906879993838382729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (3 * (n + 1))

end

end A246394.P1906879993838382729

namespace A246394

/-- `A246408(3*(n+1))` -/
def P1906879993838382729.Spec : Prop :=
  ∀ n, P1906879993838382729.a n = A246394 n

end A246394

/-! ## A246394.P16851054430320035062

`∩[A246408(n+1), A246390(n)]`
-/

namespace A246394.P16851054430320035062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P16851054430320035062

namespace A246394

/-- `∩[A246408(n+1), A246390(n)]` -/
def P16851054430320035062.Spec : Prop :=
  ∀ n, (P16851054430320035062.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P8889341159329024537

`∩[A062389(n+1), A246408(n+1)]`
-/

namespace A246394.P8889341159329024537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P8889341159329024537

namespace A246394

/-- `∩[A062389(n+1), A246408(n+1)]` -/
def P8889341159329024537.Spec : Prop :=
  ∀ n, (P8889341159329024537.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P10531535625752150541

`∩[A246408(n+1), A277138(n+1)]`
-/

namespace A246394.P10531535625752150541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P10531535625752150541

namespace A246394

/-- `∩[A246408(n+1), A277138(n+1)]` -/
def P10531535625752150541.Spec : Prop :=
  ∀ n, (P10531535625752150541.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P8603646429947932232

`∩[A246404(n+1), A246390(n)]`
-/

namespace A246394.P8603646429947932232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P8603646429947932232

namespace A246394

/-- `∩[A246404(n+1), A246390(n)]` -/
def P8603646429947932232.Spec : Prop :=
  ∀ n, (P8603646429947932232.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P2505158572454808949

`∩[A026312(n+1), A062389(n+1)]`
-/

namespace A246394.P2505158572454808949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P2505158572454808949

namespace A246394

/-- `∩[A026312(n+1), A062389(n+1)]` -/
def P2505158572454808949.Spec : Prop :=
  ∀ n, (P2505158572454808949.a n : ℤ) = A246394 n

end A246394

/-! ## A246394.P8533687296914021408

`∩[A062389(n+1), A070751(n+1)]`
-/

namespace A246394.P8533687296914021408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246394.P8533687296914021408

namespace A246394

/-- `∩[A062389(n+1), A070751(n+1)]` -/
def P8533687296914021408.Spec : Prop :=
  ∀ n, (P8533687296914021408.a n : ℤ) = A246394 n

end A246394

/-!
# A246395: Nonnegative integers k satisfying cos(k) >= 0 and cos(k+1) >= 0.

The programs for A246395, the canonical program `A246395.P14052496915260855021` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246395 has offset 0).

The definition of A246395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246395.P14052496915260855021

`lt[floor(cos(n+1))², cos(n)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A246395

/-- `lt[floor(cos(n+1))², cos(n)]` -/
def P14052496915260855021.Spec : Prop :=
  ∀ n, (P14052496915260855021.a n : ℤ) = A246395 n

theorem P14052496915260855021.correct : P14052496915260855021.Spec := by
  intro n
  simp only [A246395]

end A246395

/-! ## A246395.P14296767977893316902

`lt[1, cos(n+1)+ceil(cos(n))]`
-/

namespace A246395.P14296767977893316902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ) + (⌈Real.cos (n : ℝ)⌉ : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246395.P14296767977893316902

namespace A246395

/-- `lt[1, cos(n+1)+ceil(cos(n))]` -/
def P14296767977893316902.Spec : Prop :=
  ∀ n, (P14296767977893316902.a n : ℤ) = A246395 n

end A246395

/-! ## A246395.P11260286940280030722

`lt[sin(n)+a(n-1), sqrt(2)]` with `a(0)=1`
-/

namespace A246395.P11260286940280030722
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.sin (n : ℝ) + f1 (n - 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246395.P11260286940280030722

namespace A246395

/-- `lt[sin(n)+a(n-1), sqrt(2)]` -/
def P11260286940280030722.Spec : Prop :=
  ∀ n, (P11260286940280030722.a n : ℤ) = A246395 n

end A246395

/-! ## A246395.P3781541940111873100

`∩[A131503(n+1), A246441(n+1)]`
-/

namespace A246395.P3781541940111873100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246395.P3781541940111873100

namespace A246395

/-- `∩[A131503(n+1), A246441(n+1)]` -/
def P3781541940111873100.Spec : Prop :=
  ∀ n, (P3781541940111873100.a n : ℤ) = A246395 n

end A246395

/-! ## A246395.P12300020583938398498

`eq[1, Δ[asin(sin(n))]]`
-/

namespace A246395.P12300020583938398498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A246395.P12300020583938398498

namespace A246395

/-- `eq[1, Δ[asin(sin(n))]]` -/
def P12300020583938398498.Spec : Prop :=
  ∀ n, (P12300020583938398498.a n : ℤ) = A246395 n

end A246395

/-! ## A246395.P11375617885020934068

`lt[∑[sin(n)], sin(9)]`
-/

namespace A246395.P11375617885020934068
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (9 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246395.P11375617885020934068

namespace A246395

/-- `lt[∑[sin(n)], sin(9)]` -/
def P11375617885020934068.Spec : Prop :=
  ∀ n, (P11375617885020934068.a n : ℤ) = A246395 n

end A246395

/-! ## A246395.P12881361905439419188

`lt[A126565(n), asin(cos(n))]`
-/

namespace A246395.P12881361905439419188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.cos (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246395.P12881361905439419188

namespace A246395

/-- `lt[A126565(n), asin(cos(n))]` -/
def P12881361905439419188.Spec : Prop :=
  ∀ n, (P12881361905439419188.a n : ℤ) = A246395 n

end A246395

/-!
# A246396: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) <= 0.

The programs for A246396, the canonical program `A246396.P8897349307038480004` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246396 has offset 0).

The definition of A246396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246396.P8897349307038480004

`∪[A277139(n+1)+1, A277139(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A246396

/-- `∪[A277139(n+1)+1, A277139(n+1)]` -/
def P8897349307038480004.Spec : Prop :=
  ∀ n, (P8897349307038480004.a n : ℤ) = A246396 n

theorem P8897349307038480004.correct : P8897349307038480004.Spec := by
  intro n
  simp only [A246396]

end A246396

/-! ## A246396.P12298851605950086028

`∩[A246440(n+1), A332487(n+1)]`
-/

namespace A246396.P12298851605950086028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246396.P12298851605950086028

namespace A246396

/-- `∩[A246440(n+1), A332487(n+1)]` -/
def P12298851605950086028.Spec : Prop :=
  ∀ n, (P12298851605950086028.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P6889811915131797096

`lt[2, ∑[sin(n)]²]`
-/

namespace A246396.P6889811915131797096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A246396.P6889811915131797096

namespace A246396

/-- `lt[2, ∑[sin(n)]²]` -/
def P6889811915131797096.Spec : Prop :=
  ∀ n, (P6889811915131797096.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P7948690031256631610

`lt[sqrt(2), ∑[sin(n)]]`
-/

namespace A246396.P7948690031256631610
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246396.P7948690031256631610

namespace A246396

/-- `lt[sqrt(2), ∑[sin(n)]]` -/
def P7948690031256631610.Spec : Prop :=
  ∀ n, (P7948690031256631610.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P5955044655489389188

`eq[1, Δ[acos(sin(n))]]`
-/

namespace A246396.P5955044655489389188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A246396.P5955044655489389188

namespace A246396

/-- `eq[1, Δ[acos(sin(n))]]` -/
def P5955044655489389188.Spec : Prop :=
  ∀ n, (P5955044655489389188.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P12647079594731055004

`lt[Δ[sin(n)], cot(2)]`
-/

namespace A246396.P12647079594731055004
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A246396.P12647079594731055004

namespace A246396

/-- `lt[Δ[sin(n)], cot(2)]` -/
def P12647079594731055004.Spec : Prop :=
  ∀ n, (P12647079594731055004.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P2564338432926337789

`lt[ϕ, ∑[sinh(sin(n))]]`
-/

namespace A246396.P2564338432926337789
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (Real.sin (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246396.P2564338432926337789

namespace A246396

/-- `lt[ϕ, ∑[sinh(sin(n))]]` -/
def P2564338432926337789.Spec : Prop :=
  ∀ n, (P2564338432926337789.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P8416205848157221619

`eq[A344858(n+1)², A344858(n)]`
-/

namespace A246396.P8416205848157221619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246396.P8416205848157221619

namespace A246396

/-- `eq[A344858(n+1)², A344858(n)]` -/
def P8416205848157221619.Spec : Prop :=
  ∀ n, (P8416205848157221619.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P8278251281641691667

`∩[A246440(n+1), A246444(n+1)]`
-/

namespace A246396.P8278251281641691667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246396.P8278251281641691667

namespace A246396

/-- `∩[A246440(n+1), A246444(n+1)]` -/
def P8278251281641691667.Spec : Prop :=
  ∀ n, (P8278251281641691667.a n : ℤ) = A246396 n

end A246396

/-! ## A246396.P8637191604071753269

`lt[A054672(n), Δ[A054674(n+2)]]`
-/

namespace A246396.P8637191604071753269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054672 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246396.P8637191604071753269

namespace A246396

/-- `lt[A054672(n), Δ[A054674(n+2)]]` -/
def P8637191604071753269.Spec : Prop :=
  ∀ n, (P8637191604071753269.a n : ℤ) = A246396 n

end A246396

/-!
# A246397: Numbers n such that Phi(12, n) is prime, where Phi is the cyclotomic polynomial.

The programs for A246397, there is no canonical definition to state claims against.
-/

/-! ## A246397.P21759681920594438

`record[ceil(root(A125258(n+2), 4))]`
-/

namespace A246397.P21759681920594438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125258 (n + 2) : ℝ) ^ (1 / (4 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246397.P21759681920594438

/-! ## A246397.P9572409013035619958

`lt[A000292(n), A125258(n+2)]+2`
-/

namespace A246397.P9572409013035619958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P9572409013035619958

/-! ## A246397.P7785739626663995186

`lt[A000330(n), A125258(n+2)]+2`
-/

namespace A246397.P7785739626663995186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P7785739626663995186

/-! ## A246397.P9864950319712994885

`lt[A000578(n), A125258(n+2)]+2`
-/

namespace A246397.P9864950319712994885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P9864950319712994885

/-! ## A246397.P12819626534116737015

`lt[A000583(n), A125258(n+2)]+2`
-/

namespace A246397.P12819626534116737015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P12819626534116737015

/-! ## A246397.P16915484336610868655

`lt[A001105(n), A125258(n+2)]+2`
-/

namespace A246397.P16915484336610868655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P16915484336610868655

/-! ## A246397.P9515200753587160172

`lt[A028908(n), A125258(n+2)]+2`
-/

namespace A246397.P9515200753587160172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P9515200753587160172

/-! ## A246397.P2078127214918881373

`lt[A051673(n), A125258(n+2)]+2`
-/

namespace A246397.P2078127214918881373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P2078127214918881373

/-! ## A246397.P4542729252810998613

`lt[A084367(n), A125258(n+2)]+2`
-/

namespace A246397.P4542729252810998613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P4542729252810998613

/-! ## A246397.P9208992152732700097

`lt[A084378(n), A125258(n+2)]+2`
-/

namespace A246397.P9208992152732700097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P9208992152732700097

/-! ## A246397.P15761891709090389249

`lt[A213486(n), A125258(n+2)]+2`
-/

namespace A246397.P15761891709090389249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P15761891709090389249

/-! ## A246397.P13940164645642167016

`lt[A253663(n), A125258(n+2)]+2`
-/

namespace A246397.P13940164645642167016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P13940164645642167016

/-! ## A246397.P7452477420293841596

`lt[A264443(n), A125258(n+2)]+2`
-/

namespace A246397.P7452477420293841596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P7452477420293841596

/-! ## A246397.P14555774882556029082

`lt[A273559(n), A125258(n+2)]+2`
-/

namespace A246397.P14555774882556029082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P14555774882556029082

/-! ## A246397.P6157905130831436211

`lt[A135405(n)², A125258(n+2)]+2`
-/

namespace A246397.P6157905130831436211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135405 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P6157905130831436211

/-! ## A246397.P4710038108671272901

`lt[A002496(n+1), A125258(n+2)]+2`
-/

namespace A246397.P4710038108671272901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P4710038108671272901

/-! ## A246397.P19070599988074592

`lt[A125308(n+1), A125258(n+2)]+2`
-/

namespace A246397.P19070599988074592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P19070599988074592

/-! ## A246397.P13662217726084994089

`lt[A179125(n+1), A125258(n+2)]+2`
-/

namespace A246397.P13662217726084994089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P13662217726084994089

/-! ## A246397.P9640359852510861321

`lt[A000040(n+1)², A125258(n+2)]+2`
-/

namespace A246397.P9640359852510861321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P9640359852510861321

/-! ## A246397.P7466960866668330633

`lt[A000203(n+1)², A125258(n+2)]+2`
-/

namespace A246397.P7466960866668330633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125258 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A246397.P7466960866668330633

/-!
# A246398: Smallest number of digits that have to be inserted into or prepended to decimal representation of n, to get a prime.

The programs for A246398, there is no canonical definition to state claims against.
-/

/-! ## A246398.P16501322160537530801

`and(A127587(n), A127598(n+1))%3`
-/

namespace A246398.P16501322160537530801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A127587 n) (A127598 (n + 1))) 3

end

end A246398.P16501322160537530801

/-! ## A246398.P2324658519991838328

`ceil(A007920(n)/A182576(A028421(n)))`
-/

namespace A246398.P2324658519991838328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007920 n : ℚ) / (A182576 (A028421 n).toNat : ℚ)⌉

end

end A246398.P2324658519991838328

/-! ## A246398.P10269228451539151152

`2-A127587(and(A127587(n), A127598(n+1)))`
-/

namespace A246398.P10269228451539151152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A127587 (Int.land (A127587 n) (A127598 (n + 1))).toNat

end

end A246398.P10269228451539151152

/-! ## A246398.P13003188710189348077

`(A304572(A000045(n)+1)-a(A001222(n))²)%2+1` with `a(0)=2`
-/

namespace A246398.P13003188710189348077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A304572 (A000045 n + 1).toNat - a (A001222 n).toNat ^ 2) 2 + 1

end

end A246398.P13003188710189348077

/-! ## A246398.P5784725705301117678

`A008619(A394190(n+2))%A053989(n+1)`
-/

namespace A246398.P5784725705301117678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A394190 (n + 2)).toNat) (A053989 (n + 1))

end

end A246398.P5784725705301117678

/-!
# A246399: Least k such that A249783(k) = n.

The programs for A246399, there is no canonical definition to state claims against.
-/

/-! ## A246399.P15799767006097366982

`∑[A105047(A056450(n)+A003022(n+2))]`
-/

namespace A246399.P15799767006097366982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (A056450 n + A003022 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246399.P15799767006097366982

