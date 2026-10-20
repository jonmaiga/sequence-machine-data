import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A142101: Primes congruent to 5 mod 36.

The programs for A142101, the canonical program `A142101.P13528665498652263920` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142101 has offset 1).

The definition of A142101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142101.P13528665498652263920

`p?[36*n+5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142101

/-- `p?[36*n+5]` -/
def P13528665498652263920.Spec : Prop :=
  ∀ n, (P13528665498652263920.a n : ℤ) = A142101 (n + 1)

theorem P13528665498652263920.correct : P13528665498652263920.Spec := by
  intro n
  simp only [A142101, Nat.add_sub_cancel]

end A142101

/-! ## A142101.P5534356218201907119

`or(1, p?[a(n-1)+36])` with `a(0)=5`
-/

namespace A142101.P5534356218201907119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142101.P5534356218201907119

namespace A142101

/-- `or(1, p?[a(n-1)+36])` -/
def P5534356218201907119.Spec : Prop :=
  ∀ n, (P5534356218201907119.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P10175379658300283024

`∏{d}[p?[a(n-1)+36], #]` with `a(0)=5`
-/

namespace A142101.P10175379658300283024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142101.P10175379658300283024

namespace A142101

/-- `∏{d}[p?[a(n-1)+36], #]` -/
def P10175379658300283024.Spec : Prop :=
  ∀ n, (P10175379658300283024.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P9243907608028793340

`∏{p}[p?[a(n-1)+36], #]` with `a(0)=5`
-/

namespace A142101.P9243907608028793340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142101.P9243907608028793340

namespace A142101

/-- `∏{p}[p?[a(n-1)+36], #]` -/
def P9243907608028793340.Spec : Prop :=
  ∀ n, (P9243907608028793340.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P4131164253233022714

`∩[A040117(n+1), A061240(n+1)]`
-/

namespace A142101.P4131164253233022714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P4131164253233022714

namespace A142101

/-- `∩[A040117(n+1), A061240(n+1)]` -/
def P4131164253233022714.Spec : Prop :=
  ∀ n, (P4131164253233022714.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P18078264813589980170

`∩[A061240(n+1), A243183(n+1)]`
-/

namespace A142101.P18078264813589980170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P18078264813589980170

namespace A142101

/-- `∩[A061240(n+1), A243183(n+1)]` -/
def P18078264813589980170.Spec : Prop :=
  ∀ n, (P18078264813589980170.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P4323612615416479827

`∩[A040117(n+1), A129806(n+1)]`
-/

namespace A142101.P4323612615416479827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P4323612615416479827

namespace A142101

/-- `∩[A040117(n+1), A129806(n+1)]` -/
def P4323612615416479827.Spec : Prop :=
  ∀ n, (P4323612615416479827.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P13379990826265417445

`∩[A129806(n+1), A243183(n+1)]`
-/

namespace A142101.P13379990826265417445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P13379990826265417445

namespace A142101

/-- `∩[A129806(n+1), A243183(n+1)]` -/
def P13379990826265417445.Spec : Prop :=
  ∀ n, (P13379990826265417445.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P1889386380329877494

`∩[A002144(n+1), A061240(n+1)]`
-/

namespace A142101.P1889386380329877494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P1889386380329877494

namespace A142101

/-- `∩[A002144(n+1), A061240(n+1)]` -/
def P1889386380329877494.Spec : Prop :=
  ∀ n, (P1889386380329877494.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P15617128129130099112

`∩[A002313(n+1), A061240(n+1)]`
-/

namespace A142101.P15617128129130099112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P15617128129130099112

namespace A142101

/-- `∩[A002313(n+1), A061240(n+1)]` -/
def P15617128129130099112.Spec : Prop :=
  ∀ n, (P15617128129130099112.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P8540267357594666192

`∩[A061240(n+1), A280084(n+1)]`
-/

namespace A142101.P8540267357594666192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P8540267357594666192

namespace A142101

/-- `∩[A061240(n+1), A280084(n+1)]` -/
def P8540267357594666192.Spec : Prop :=
  ∀ n, (P8540267357594666192.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P16552170174257282900

`∩[A040117(n+1), A079131(n+1)]`
-/

namespace A142101.P16552170174257282900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P16552170174257282900

namespace A142101

/-- `∩[A040117(n+1), A079131(n+1)]` -/
def P16552170174257282900.Spec : Prop :=
  ∀ n, (P16552170174257282900.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P2887786063787946852

`∩[A079131(n+1), A243183(n+1)]`
-/

namespace A142101.P2887786063787946852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P2887786063787946852

namespace A142101

/-- `∩[A079131(n+1), A243183(n+1)]` -/
def P2887786063787946852.Spec : Prop :=
  ∀ n, (P2887786063787946852.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P13036200376301277744

`∩[A055025(n+1), A061240(n+1)]`
-/

namespace A142101.P13036200376301277744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P13036200376301277744

namespace A142101

/-- `∩[A055025(n+1), A061240(n+1)]` -/
def P13036200376301277744.Spec : Prop :=
  ∀ n, (P13036200376301277744.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P483320349154060839

`∩[A003630(n+1), A061240(n+1)]`
-/

namespace A142101.P483320349154060839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P483320349154060839

namespace A142101

/-- `∩[A003630(n+1), A061240(n+1)]` -/
def P483320349154060839.Spec : Prop :=
  ∀ n, (P483320349154060839.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P13124349122334765898

`∩[A038875(n+1), A061240(n+1)]`
-/

namespace A142101.P13124349122334765898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P13124349122334765898

namespace A142101

/-- `∩[A038875(n+1), A061240(n+1)]` -/
def P13124349122334765898.Spec : Prop :=
  ∀ n, (P13124349122334765898.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P13481069496477795300

`∩[A061240(n+1), A120960(n+1)]`
-/

namespace A142101.P13481069496477795300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P13481069496477795300

namespace A142101

/-- `∩[A061240(n+1), A120960(n+1)]` -/
def P13481069496477795300.Spec : Prop :=
  ∀ n, (P13481069496477795300.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P3576357967044426017

`∩[A061240(n+1), A172480(n+1)]`
-/

namespace A142101.P3576357967044426017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P3576357967044426017

namespace A142101

/-- `∩[A061240(n+1), A172480(n+1)]` -/
def P3576357967044426017.Spec : Prop :=
  ∀ n, (P3576357967044426017.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P2559739929233521245

`∩[A061240(n+1), A085759(n+1)]`
-/

namespace A142101.P2559739929233521245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P2559739929233521245

namespace A142101

/-- `∩[A061240(n+1), A085759(n+1)]` -/
def P2559739929233521245.Spec : Prop :=
  ∀ n, (P2559739929233521245.a n : ℤ) = A142101 (n + 1)

end A142101

/-! ## A142101.P7110817088371811378

`∩[A061240(n+1), A351535(n+1)]`
-/

namespace A142101.P7110817088371811378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142101.P7110817088371811378

namespace A142101

/-- `∩[A061240(n+1), A351535(n+1)]` -/
def P7110817088371811378.Spec : Prop :=
  ∀ n, (P7110817088371811378.a n : ℤ) = A142101 (n + 1)

end A142101

/-!
# A142102: Primes congruent to 7 mod 36.

The programs for A142102, the canonical program `A142102.P12293802350160398836` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142102 has offset 1).

The definition of A142102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142102.P12293802350160398836

`p?[36*n+7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142102

/-- `p?[36*n+7]` -/
def P12293802350160398836.Spec : Prop :=
  ∀ n, (P12293802350160398836.a n : ℤ) = A142102 (n + 1)

theorem P12293802350160398836.correct : P12293802350160398836.Spec := by
  intro n
  simp only [A142102, Nat.add_sub_cancel]

end A142102

/-! ## A142102.P8900654472258616813

`∩[A061241(n+1), A068229(n+1)]`
-/

namespace A142102.P8900654472258616813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P8900654472258616813

namespace A142102

/-- `∩[A061241(n+1), A068229(n+1)]` -/
def P8900654472258616813.Spec : Prop :=
  ∀ n, (P8900654472258616813.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P13632192263352637866

`∩[A068229(n+1), A129807(n+1)]`
-/

namespace A142102.P13632192263352637866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P13632192263352637866

namespace A142102

/-- `∩[A068229(n+1), A129807(n+1)]` -/
def P13632192263352637866.Spec : Prop :=
  ∀ n, (P13632192263352637866.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P15232138833163865281

`∩[A061241(n+1), A332514(n+1)]`
-/

namespace A142102.P15232138833163865281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P15232138833163865281

namespace A142102

/-- `∩[A061241(n+1), A332514(n+1)]` -/
def P15232138833163865281.Spec : Prop :=
  ∀ n, (P15232138833163865281.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P7668714978946059709

`∩[A129807(n+1), A332514(n+1)]`
-/

namespace A142102.P7668714978946059709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P7668714978946059709

namespace A142102

/-- `∩[A129807(n+1), A332514(n+1)]` -/
def P7668714978946059709.Spec : Prop :=
  ∀ n, (P7668714978946059709.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P7143336032900417866

`∩[A068229(n+1), A301628(n+1)]`
-/

namespace A142102.P7143336032900417866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P7143336032900417866

namespace A142102

/-- `∩[A068229(n+1), A301628(n+1)]` -/
def P7143336032900417866.Spec : Prop :=
  ∀ n, (P7143336032900417866.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P14601060444815717948

`∩[A068229(n+1), A078403(n+1)]`
-/

namespace A142102.P14601060444815717948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P14601060444815717948

namespace A142102

/-- `∩[A068229(n+1), A078403(n+1)]` -/
def P14601060444815717948.Spec : Prop :=
  ∀ n, (P14601060444815717948.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P16924147512883785718

`∩[A078403(n+1), A332514(n+1)]`
-/

namespace A142102.P16924147512883785718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P16924147512883785718

namespace A142102

/-- `∩[A078403(n+1), A332514(n+1)]` -/
def P16924147512883785718.Spec : Prop :=
  ∀ n, (P16924147512883785718.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P2982598842441125957

`∩[A002145(n+1), A061241(n+1)]`
-/

namespace A142102.P2982598842441125957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P2982598842441125957

namespace A142102

/-- `∩[A002145(n+1), A061241(n+1)]` -/
def P2982598842441125957.Spec : Prop :=
  ∀ n, (P2982598842441125957.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P13409649924248456822

`∩[A045326(n+1), A061241(n+1)]`
-/

namespace A142102.P13409649924248456822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P13409649924248456822

namespace A142102

/-- `∩[A045326(n+1), A061241(n+1)]` -/
def P13409649924248456822.Spec : Prop :=
  ∀ n, (P13409649924248456822.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P8875153271287595267

`∩[A002145(n+1), A301628(n+1)]`
-/

namespace A142102.P8875153271287595267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P8875153271287595267

namespace A142102

/-- `∩[A002145(n+1), A301628(n+1)]` -/
def P8875153271287595267.Spec : Prop :=
  ∀ n, (P8875153271287595267.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P2266225274650040433

`∩[A045326(n+1), A301628(n+1)]`
-/

namespace A142102.P2266225274650040433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P2266225274650040433

namespace A142102

/-- `∩[A045326(n+1), A301628(n+1)]` -/
def P2266225274650040433.Spec : Prop :=
  ∀ n, (P2266225274650040433.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P13414658066086273799

`∩[A003630(n+1), A061241(n+1)]`
-/

namespace A142102.P13414658066086273799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P13414658066086273799

namespace A142102

/-- `∩[A003630(n+1), A061241(n+1)]` -/
def P13414658066086273799.Spec : Prop :=
  ∀ n, (P13414658066086273799.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P16540662668318932070

`∩[A038875(n+1), A061241(n+1)]`
-/

namespace A142102.P16540662668318932070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P16540662668318932070

namespace A142102

/-- `∩[A038875(n+1), A061241(n+1)]` -/
def P16540662668318932070.Spec : Prop :=
  ∀ n, (P16540662668318932070.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P14006956720058162178

`∩[A061241(n+1), A085760(n+1)]`
-/

namespace A142102.P14006956720058162178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P14006956720058162178

namespace A142102

/-- `∩[A061241(n+1), A085760(n+1)]` -/
def P14006956720058162178.Spec : Prop :=
  ∀ n, (P14006956720058162178.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P17935489392358945976

`∩[A003630(n+1), A301628(n+1)]`
-/

namespace A142102.P17935489392358945976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P17935489392358945976

namespace A142102

/-- `∩[A003630(n+1), A301628(n+1)]` -/
def P17935489392358945976.Spec : Prop :=
  ∀ n, (P17935489392358945976.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P15428684380138533182

`∩[A038875(n+1), A301628(n+1)]`
-/

namespace A142102.P15428684380138533182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P15428684380138533182

namespace A142102

/-- `∩[A038875(n+1), A301628(n+1)]` -/
def P15428684380138533182.Spec : Prop :=
  ∀ n, (P15428684380138533182.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P12280319058840806398

`∩[A085760(n+1), A301628(n+1)]`
-/

namespace A142102.P12280319058840806398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P12280319058840806398

namespace A142102

/-- `∩[A085760(n+1), A301628(n+1)]` -/
def P12280319058840806398.Spec : Prop :=
  ∀ n, (P12280319058840806398.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P6437479359867436649

`∩[A061241(n+1), A197504(n+1)]`
-/

namespace A142102.P6437479359867436649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P6437479359867436649

namespace A142102

/-- `∩[A061241(n+1), A197504(n+1)]` -/
def P6437479359867436649.Spec : Prop :=
  ∀ n, (P6437479359867436649.a n : ℤ) = A142102 (n + 1)

end A142102

/-! ## A142102.P11095329377009166604

`∩[A061241(n+1), A332555(n+1)]`
-/

namespace A142102.P11095329377009166604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142102.P11095329377009166604

namespace A142102

/-- `∩[A061241(n+1), A332555(n+1)]` -/
def P11095329377009166604.Spec : Prop :=
  ∀ n, (P11095329377009166604.a n : ℤ) = A142102 (n + 1)

end A142102

/-!
# A142103: Primes congruent to 11 mod 36.

The programs for A142103, the canonical program `A142103.P10005846490017536618` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142103 has offset 1).

The definition of A142103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142103.P10005846490017536618

`p?[6*6*n+11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142103

/-- `p?[6*6*n+11]` -/
def P10005846490017536618.Spec : Prop :=
  ∀ n, (P10005846490017536618.a n : ℤ) = A142103 (n + 1)

theorem P10005846490017536618.correct : P10005846490017536618.Spec := by
  intro n
  simp only [A142103, Nat.add_sub_cancel]

end A142103

/-! ## A142103.P7368566359468246757

`∩[A061238(n+1), A068231(n+1)]`
-/

namespace A142103.P7368566359468246757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P7368566359468246757

namespace A142103

/-- `∩[A061238(n+1), A068231(n+1)]` -/
def P7368566359468246757.Spec : Prop :=
  ∀ n, (P7368566359468246757.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P3258195558572857182

`∩[A061238(n+1), A141187(n+1)]`
-/

namespace A142103.P3258195558572857182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P3258195558572857182

namespace A142103

/-- `∩[A061238(n+1), A141187(n+1)]` -/
def P3258195558572857182.Spec : Prop :=
  ∀ n, (P3258195558572857182.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P17783023459189957152

`∩[A068231(n+1), A129807(n+1)]`
-/

namespace A142103.P17783023459189957152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P17783023459189957152

namespace A142103

/-- `∩[A068231(n+1), A129807(n+1)]` -/
def P17783023459189957152.Spec : Prop :=
  ∀ n, (P17783023459189957152.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P5611154772679259996

`∩[A129807(n+1), A141123(n+1)]`
-/

namespace A142103.P5611154772679259996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P5611154772679259996

namespace A142103

/-- `∩[A129807(n+1), A141123(n+1)]` -/
def P5611154772679259996.Spec : Prop :=
  ∀ n, (P5611154772679259996.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P12790554007965546603

`∩[A129807(n+1), A141187(n+1)]`
-/

namespace A142103.P12790554007965546603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P12790554007965546603

namespace A142103

/-- `∩[A129807(n+1), A141187(n+1)]` -/
def P12790554007965546603.Spec : Prop :=
  ∀ n, (P12790554007965546603.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P7360947677284051372

`∩[A061238(n+1), A332516(n+1)]`
-/

namespace A142103.P7360947677284051372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P7360947677284051372

namespace A142103

/-- `∩[A061238(n+1), A332516(n+1)]` -/
def P7360947677284051372.Spec : Prop :=
  ∀ n, (P7360947677284051372.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P16560317855131737550

`∩[A129807(n+1), A332516(n+1)]`
-/

namespace A142103.P16560317855131737550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P16560317855131737550

namespace A142103

/-- `∩[A129807(n+1), A332516(n+1)]` -/
def P16560317855131737550.Spec : Prop :=
  ∀ n, (P16560317855131737550.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P4094280461884138745

`∩[A061238(n+1), A097933(n+1)]`
-/

namespace A142103.P4094280461884138745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P4094280461884138745

namespace A142103

/-- `∩[A061238(n+1), A097933(n+1)]` -/
def P4094280461884138745.Spec : Prop :=
  ∀ n, (P4094280461884138745.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P5637709178139385000

`∩[A061238(n+1), A296933(n+1)]`
-/

namespace A142103.P5637709178139385000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P5637709178139385000

namespace A142103

/-- `∩[A061238(n+1), A296933(n+1)]` -/
def P5637709178139385000.Spec : Prop :=
  ∀ n, (P5637709178139385000.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P17566781042993377205

`∩[A038874(n+1), A301621(n+1)]`
-/

namespace A142103.P17566781042993377205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P17566781042993377205

namespace A142103

/-- `∩[A038874(n+1), A301621(n+1)]` -/
def P17566781042993377205.Spec : Prop :=
  ∀ n, (P17566781042993377205.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P14915256084688217311

`∩[A068231(n+1), A301621(n+1)]`
-/

namespace A142103.P14915256084688217311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P14915256084688217311

namespace A142103

/-- `∩[A068231(n+1), A301621(n+1)]` -/
def P14915256084688217311.Spec : Prop :=
  ∀ n, (P14915256084688217311.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P4890851915155043459

`∩[A097933(n+1), A301621(n+1)]`
-/

namespace A142103.P4890851915155043459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P4890851915155043459

namespace A142103

/-- `∩[A097933(n+1), A301621(n+1)]` -/
def P4890851915155043459.Spec : Prop :=
  ∀ n, (P4890851915155043459.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P3005318277230472236

`∩[A141123(n+1), A301621(n+1)]`
-/

namespace A142103.P3005318277230472236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P3005318277230472236

namespace A142103

/-- `∩[A141123(n+1), A301621(n+1)]` -/
def P3005318277230472236.Spec : Prop :=
  ∀ n, (P3005318277230472236.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P10328259197863599931

`∩[A141187(n+1), A301621(n+1)]`
-/

namespace A142103.P10328259197863599931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P10328259197863599931

namespace A142103

/-- `∩[A141187(n+1), A301621(n+1)]` -/
def P10328259197863599931.Spec : Prop :=
  ∀ n, (P10328259197863599931.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P12758632224646135821

`∩[A296933(n+1), A301621(n+1)]`
-/

namespace A142103.P12758632224646135821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P12758632224646135821

namespace A142103

/-- `∩[A296933(n+1), A301621(n+1)]` -/
def P12758632224646135821.Spec : Prop :=
  ∀ n, (P12758632224646135821.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P11621015470792027861

`∩[A301621(n+1), A332516(n+1)]`
-/

namespace A142103.P11621015470792027861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P11621015470792027861

namespace A142103

/-- `∩[A301621(n+1), A332516(n+1)]` -/
def P11621015470792027861.Spec : Prop :=
  ∀ n, (P11621015470792027861.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P5727233044010226387

`∩[A301621(n+1), A363215(n+1)]`
-/

namespace A142103.P5727233044010226387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P5727233044010226387

namespace A142103

/-- `∩[A301621(n+1), A363215(n+1)]` -/
def P5727233044010226387.Spec : Prop :=
  ∀ n, (P5727233044010226387.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P11841134882700122737

`∩[A301621(n+1), A385220(n+1)]`
-/

namespace A142103.P11841134882700122737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P11841134882700122737

namespace A142103

/-- `∩[A301621(n+1), A385220(n+1)]` -/
def P11841134882700122737.Spec : Prop :=
  ∀ n, (P11841134882700122737.a n : ℤ) = A142103 (n + 1)

end A142103

/-! ## A142103.P17129324642937598764

`∩[A301621(n+1), A391369(n+1)]`
-/

namespace A142103.P17129324642937598764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142103.P17129324642937598764

namespace A142103

/-- `∩[A301621(n+1), A391369(n+1)]` -/
def P17129324642937598764.Spec : Prop :=
  ∀ n, (P17129324642937598764.a n : ℤ) = A142103 (n + 1)

end A142103

/-!
# A142104: Primes congruent to 13 mod 36.

The programs for A142104, the canonical program `A142104.P2589743799997506154` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142104 has offset 1).

The definition of A142104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142104.P2589743799997506154

`p?[36*n+13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142104

/-- `p?[36*n+13]` -/
def P2589743799997506154.Spec : Prop :=
  ∀ n, (P2589743799997506154.a n : ℤ) = A142104 (n + 1)

theorem P2589743799997506154.correct : P2589743799997506154.Spec := by
  intro n
  simp only [A142104, Nat.add_sub_cancel]

end A142104

/-! ## A142104.P6019012064687833344

`∩[A061239(n+1), A068228(n+1)]`
-/

namespace A142104.P6019012064687833344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P6019012064687833344

namespace A142104

/-- `∩[A061239(n+1), A068228(n+1)]` -/
def P6019012064687833344.Spec : Prop :=
  ∀ n, (P6019012064687833344.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P2389118587190221063

`∩[A061239(n+1), A351537(n+1)]`
-/

namespace A142104.P2389118587190221063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P2389118587190221063

namespace A142104

/-- `∩[A061239(n+1), A351537(n+1)]` -/
def P2389118587190221063.Spec : Prop :=
  ∀ n, (P2389118587190221063.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P8168185722387482689

`∩[A061239(n+1), A354467(n+1)]`
-/

namespace A142104.P8168185722387482689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P8168185722387482689

namespace A142104

/-- `∩[A061239(n+1), A354467(n+1)]` -/
def P8168185722387482689.Spec : Prop :=
  ∀ n, (P8168185722387482689.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P10343922678157639519

`∩[A068228(n+1), A129806(n+1)]`
-/

namespace A142104.P10343922678157639519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P10343922678157639519

namespace A142104

/-- `∩[A068228(n+1), A129806(n+1)]` -/
def P10343922678157639519.Spec : Prop :=
  ∀ n, (P10343922678157639519.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P3218603076210257563

`∩[A129806(n+1), A351537(n+1)]`
-/

namespace A142104.P3218603076210257563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P3218603076210257563

namespace A142104

/-- `∩[A129806(n+1), A351537(n+1)]` -/
def P3218603076210257563.Spec : Prop :=
  ∀ n, (P3218603076210257563.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P4106469232139726954

`∩[A129806(n+1), A354467(n+1)]`
-/

namespace A142104.P4106469232139726954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P4106469232139726954

namespace A142104

/-- `∩[A129806(n+1), A354467(n+1)]` -/
def P4106469232139726954.Spec : Prop :=
  ∀ n, (P4106469232139726954.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P15897527242571516614

`∩[A038874(n+1), A061239(n+1)]`
-/

namespace A142104.P15897527242571516614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P15897527242571516614

namespace A142104

/-- `∩[A038874(n+1), A061239(n+1)]` -/
def P15897527242571516614.Spec : Prop :=
  ∀ n, (P15897527242571516614.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P16569821273119793033

`∩[A061239(n+1), A097933(n+1)]`
-/

namespace A142104.P16569821273119793033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P16569821273119793033

namespace A142104

/-- `∩[A061239(n+1), A097933(n+1)]` -/
def P16569821273119793033.Spec : Prop :=
  ∀ n, (P16569821273119793033.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P16823690340679676765

`∩[A061239(n+1), A296933(n+1)]`
-/

namespace A142104.P16823690340679676765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P16823690340679676765

namespace A142104

/-- `∩[A061239(n+1), A296933(n+1)]` -/
def P16823690340679676765.Spec : Prop :=
  ∀ n, (P16823690340679676765.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P6043080349034804537

`∩[A002144(n+1), A061239(n+1)]`
-/

namespace A142104.P6043080349034804537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P6043080349034804537

namespace A142104

/-- `∩[A002144(n+1), A061239(n+1)]` -/
def P6043080349034804537.Spec : Prop :=
  ∀ n, (P6043080349034804537.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P15148585039511701812

`∩[A002313(n+1), A061239(n+1)]`
-/

namespace A142104.P15148585039511701812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P15148585039511701812

namespace A142104

/-- `∩[A002313(n+1), A061239(n+1)]` -/
def P15148585039511701812.Spec : Prop :=
  ∀ n, (P15148585039511701812.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P6838397183365466637

`∩[A061239(n+1), A280084(n+1)]`
-/

namespace A142104.P6838397183365466637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P6838397183365466637

namespace A142104

/-- `∩[A061239(n+1), A280084(n+1)]` -/
def P6838397183365466637.Spec : Prop :=
  ∀ n, (P6838397183365466637.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P7632537879169156748

`∩[A002144(n+1), A301622(n+1)]`
-/

namespace A142104.P7632537879169156748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P7632537879169156748

namespace A142104

/-- `∩[A002144(n+1), A301622(n+1)]` -/
def P7632537879169156748.Spec : Prop :=
  ∀ n, (P7632537879169156748.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P8428912726136045812

`∩[A002313(n+1), A301622(n+1)]`
-/

namespace A142104.P8428912726136045812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P8428912726136045812

namespace A142104

/-- `∩[A002313(n+1), A301622(n+1)]` -/
def P8428912726136045812.Spec : Prop :=
  ∀ n, (P8428912726136045812.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P10177351987953363059

`∩[A038874(n+1), A301622(n+1)]`
-/

namespace A142104.P10177351987953363059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P10177351987953363059

namespace A142104

/-- `∩[A038874(n+1), A301622(n+1)]` -/
def P10177351987953363059.Spec : Prop :=
  ∀ n, (P10177351987953363059.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P12196966931101318356

`∩[A068228(n+1), A301622(n+1)]`
-/

namespace A142104.P12196966931101318356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P12196966931101318356

namespace A142104

/-- `∩[A068228(n+1), A301622(n+1)]` -/
def P12196966931101318356.Spec : Prop :=
  ∀ n, (P12196966931101318356.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P14381637809590831433

`∩[A097933(n+1), A301622(n+1)]`
-/

namespace A142104.P14381637809590831433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P14381637809590831433

namespace A142104

/-- `∩[A097933(n+1), A301622(n+1)]` -/
def P14381637809590831433.Spec : Prop :=
  ∀ n, (P14381637809590831433.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P11806678622029031424

`∩[A280084(n+1), A301622(n+1)]`
-/

namespace A142104.P11806678622029031424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P11806678622029031424

namespace A142104

/-- `∩[A280084(n+1), A301622(n+1)]` -/
def P11806678622029031424.Spec : Prop :=
  ∀ n, (P11806678622029031424.a n : ℤ) = A142104 (n + 1)

end A142104

/-! ## A142104.P6275356046936902760

`∩[A296933(n+1), A301622(n+1)]`
-/

namespace A142104.P6275356046936902760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142104.P6275356046936902760

namespace A142104

/-- `∩[A296933(n+1), A301622(n+1)]` -/
def P6275356046936902760.Spec : Prop :=
  ∀ n, (P6275356046936902760.a n : ℤ) = A142104 (n + 1)

end A142104

/-!
# A142105: Primes congruent to 17 mod 36.

The programs for A142105, the canonical program `A142105.P18419970149999654724` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142105 has offset 1).

The definition of A142105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142105.P18419970149999654724

`p?[36*n+17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142105

/-- `p?[36*n+17]` -/
def P18419970149999654724.Spec : Prop :=
  ∀ n, (P18419970149999654724.a n : ℤ) = A142105 (n + 1)

theorem P18419970149999654724.correct : P18419970149999654724.Spec := by
  intro n
  simp only [A142105, Nat.add_sub_cancel]

end A142105

/-! ## A142105.P8150182502308485289

`∩[A040117(n+1), A061242(n+1)]`
-/

namespace A142105.P8150182502308485289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P8150182502308485289

namespace A142105

/-- `∩[A040117(n+1), A061242(n+1)]` -/
def P8150182502308485289.Spec : Prop :=
  ∀ n, (P8150182502308485289.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P13567396065188426404

`∩[A061242(n+1), A243183(n+1)]`
-/

namespace A142105.P13567396065188426404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P13567396065188426404

namespace A142105

/-- `∩[A061242(n+1), A243183(n+1)]` -/
def P13567396065188426404.Spec : Prop :=
  ∀ n, (P13567396065188426404.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P703313120242723016

`∩[A040117(n+1), A129805(n+1)]`
-/

namespace A142105.P703313120242723016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P703313120242723016

namespace A142105

/-- `∩[A040117(n+1), A129805(n+1)]` -/
def P703313120242723016.Spec : Prop :=
  ∀ n, (P703313120242723016.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P11573902517598234533

`∩[A129805(n+1), A243183(n+1)]`
-/

namespace A142105.P11573902517598234533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P11573902517598234533

namespace A142105

/-- `∩[A129805(n+1), A243183(n+1)]` -/
def P11573902517598234533.Spec : Prop :=
  ∀ n, (P11573902517598234533.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P10861102457285395945

`∩[A061242(n+1), A096785(n+1)]`
-/

namespace A142105.P10861102457285395945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P10861102457285395945

namespace A142105

/-- `∩[A061242(n+1), A096785(n+1)]` -/
def P10861102457285395945.Spec : Prop :=
  ∀ n, (P10861102457285395945.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P17274921695982589623

`∩[A002144(n+1), A061242(n+1)]`
-/

namespace A142105.P17274921695982589623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P17274921695982589623

namespace A142105

/-- `∩[A002144(n+1), A061242(n+1)]` -/
def P17274921695982589623.Spec : Prop :=
  ∀ n, (P17274921695982589623.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P1219000791046206451

`∩[A002313(n+1), A061242(n+1)]`
-/

namespace A142105.P1219000791046206451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P1219000791046206451

namespace A142105

/-- `∩[A002313(n+1), A061242(n+1)]` -/
def P1219000791046206451.Spec : Prop :=
  ∀ n, (P1219000791046206451.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P3285835393075669740

`∩[A061242(n+1), A280084(n+1)]`
-/

namespace A142105.P3285835393075669740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P3285835393075669740

namespace A142105

/-- `∩[A061242(n+1), A280084(n+1)]` -/
def P3285835393075669740.Spec : Prop :=
  ∀ n, (P3285835393075669740.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P17076395065374035044

`∩[A002144(n+1), A295869(n+1)]`
-/

namespace A142105.P17076395065374035044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P17076395065374035044

namespace A142105

/-- `∩[A002144(n+1), A295869(n+1)]` -/
def P17076395065374035044.Spec : Prop :=
  ∀ n, (P17076395065374035044.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P9502162240502032572

`∩[A002313(n+1), A295869(n+1)]`
-/

namespace A142105.P9502162240502032572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P9502162240502032572

namespace A142105

/-- `∩[A002313(n+1), A295869(n+1)]` -/
def P9502162240502032572.Spec : Prop :=
  ∀ n, (P9502162240502032572.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P9893911620565466975

`∩[A040117(n+1), A295869(n+1)]`
-/

namespace A142105.P9893911620565466975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P9893911620565466975

namespace A142105

/-- `∩[A040117(n+1), A295869(n+1)]` -/
def P9893911620565466975.Spec : Prop :=
  ∀ n, (P9893911620565466975.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P11834611986373438450

`∩[A096785(n+1), A295869(n+1)]`
-/

namespace A142105.P11834611986373438450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P11834611986373438450

namespace A142105

/-- `∩[A096785(n+1), A295869(n+1)]` -/
def P11834611986373438450.Spec : Prop :=
  ∀ n, (P11834611986373438450.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P891194657056789187

`∩[A243183(n+1), A295869(n+1)]`
-/

namespace A142105.P891194657056789187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P891194657056789187

namespace A142105

/-- `∩[A243183(n+1), A295869(n+1)]` -/
def P891194657056789187.Spec : Prop :=
  ∀ n, (P891194657056789187.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P13952391076477344910

`∩[A280084(n+1), A295869(n+1)]`
-/

namespace A142105.P13952391076477344910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P13952391076477344910

namespace A142105

/-- `∩[A280084(n+1), A295869(n+1)]` -/
def P13952391076477344910.Spec : Prop :=
  ∀ n, (P13952391076477344910.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P10857399832948084503

`∩[A003630(n+1), A061242(n+1)]`
-/

namespace A142105.P10857399832948084503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P10857399832948084503

namespace A142105

/-- `∩[A003630(n+1), A061242(n+1)]` -/
def P10857399832948084503.Spec : Prop :=
  ∀ n, (P10857399832948084503.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P12625379622056678602

`∩[A038875(n+1), A061242(n+1)]`
-/

namespace A142105.P12625379622056678602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P12625379622056678602

namespace A142105

/-- `∩[A038875(n+1), A061242(n+1)]` -/
def P12625379622056678602.Spec : Prop :=
  ∀ n, (P12625379622056678602.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P6553091670878777152

`∩[A055025(n+1), A061242(n+1)]`
-/

namespace A142105.P6553091670878777152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P6553091670878777152

namespace A142105

/-- `∩[A055025(n+1), A061242(n+1)]` -/
def P6553091670878777152.Spec : Prop :=
  ∀ n, (P6553091670878777152.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P5469330390814054266

`∩[A061242(n+1), A120960(n+1)]`
-/

namespace A142105.P5469330390814054266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P5469330390814054266

namespace A142105

/-- `∩[A061242(n+1), A120960(n+1)]` -/
def P5469330390814054266.Spec : Prop :=
  ∀ n, (P5469330390814054266.a n : ℤ) = A142105 (n + 1)

end A142105

/-! ## A142105.P11466276975609144687

`∩[A003630(n+1), A295869(n+1)]`
-/

namespace A142105.P11466276975609144687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142105.P11466276975609144687

namespace A142105

/-- `∩[A003630(n+1), A295869(n+1)]` -/
def P11466276975609144687.Spec : Prop :=
  ∀ n, (P11466276975609144687.a n : ℤ) = A142105 (n + 1)

end A142105

/-!
# A142106: Primes congruent to 19 mod 36.

The programs for A142106, the canonical program `A142106.P10105270289269678569` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142106 has offset 1).

The definition of A142106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142106.P10105270289269678569

`p?[6*6*n-17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142106

/-- `p?[6*6*n-17]` -/
def P10105270289269678569.Spec : Prop :=
  ∀ n, P10105270289269678569.a n = A142106 (n + 1)

theorem P10105270289269678569.correct : P10105270289269678569.Spec := by
  intro n
  simp only [A142106, Nat.add_sub_cancel]

end A142106

/-! ## A142106.P788229205570566642

`∩[A061237(n+1), A068229(n+1)]`
-/

namespace A142106.P788229205570566642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P788229205570566642

namespace A142106

/-- `∩[A061237(n+1), A068229(n+1)]` -/
def P788229205570566642.Spec : Prop :=
  ∀ n, (P788229205570566642.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P15500430486026569641

`∩[A068229(n+1), A129805(n+1)]`
-/

namespace A142106.P15500430486026569641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P15500430486026569641

namespace A142106

/-- `∩[A068229(n+1), A129805(n+1)]` -/
def P15500430486026569641.Spec : Prop :=
  ∀ n, (P15500430486026569641.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P11817937961140497576

`∩[A061237(n+1), A332514(n+1)]`
-/

namespace A142106.P11817937961140497576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P11817937961140497576

namespace A142106

/-- `∩[A061237(n+1), A332514(n+1)]` -/
def P11817937961140497576.Spec : Prop :=
  ∀ n, (P11817937961140497576.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P10062655623876354943

`∩[A129805(n+1), A332514(n+1)]`
-/

namespace A142106.P10062655623876354943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P10062655623876354943

namespace A142106

/-- `∩[A129805(n+1), A332514(n+1)]` -/
def P10062655623876354943.Spec : Prop :=
  ∀ n, (P10062655623876354943.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P6478875947756037240

`∩[A068229(n+1), A301617(n+1)]`
-/

namespace A142106.P6478875947756037240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P6478875947756037240

namespace A142106

/-- `∩[A068229(n+1), A301617(n+1)]` -/
def P6478875947756037240.Spec : Prop :=
  ∀ n, (P6478875947756037240.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P15949128472611561711

`∩[A002145(n+1), A061237(n+1)]`
-/

namespace A142106.P15949128472611561711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P15949128472611561711

namespace A142106

/-- `∩[A002145(n+1), A061237(n+1)]` -/
def P15949128472611561711.Spec : Prop :=
  ∀ n, (P15949128472611561711.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P11630689729117675827

`∩[A045326(n+1), A061237(n+1)]`
-/

namespace A142106.P11630689729117675827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P11630689729117675827

namespace A142106

/-- `∩[A045326(n+1), A061237(n+1)]` -/
def P11630689729117675827.Spec : Prop :=
  ∀ n, (P11630689729117675827.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P12497765717954777129

`∩[A002145(n+1), A301617(n+1)]`
-/

namespace A142106.P12497765717954777129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P12497765717954777129

namespace A142106

/-- `∩[A002145(n+1), A301617(n+1)]` -/
def P12497765717954777129.Spec : Prop :=
  ∀ n, (P12497765717954777129.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P7477298653249099453

`∩[A045326(n+1), A301617(n+1)]`
-/

namespace A142106.P7477298653249099453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P7477298653249099453

namespace A142106

/-- `∩[A045326(n+1), A301617(n+1)]` -/
def P7477298653249099453.Spec : Prop :=
  ∀ n, (P7477298653249099453.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P12992047623665956076

`∩[A003630(n+1), A061237(n+1)]`
-/

namespace A142106.P12992047623665956076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P12992047623665956076

namespace A142106

/-- `∩[A003630(n+1), A061237(n+1)]` -/
def P12992047623665956076.Spec : Prop :=
  ∀ n, (P12992047623665956076.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P16252116009453510786

`∩[A038875(n+1), A061237(n+1)]`
-/

namespace A142106.P16252116009453510786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P16252116009453510786

namespace A142106

/-- `∩[A038875(n+1), A061237(n+1)]` -/
def P16252116009453510786.Spec : Prop :=
  ∀ n, (P16252116009453510786.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P3492759422569526561

`∩[A061237(n+1), A085760(n+1)]`
-/

namespace A142106.P3492759422569526561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P3492759422569526561

namespace A142106

/-- `∩[A061237(n+1), A085760(n+1)]` -/
def P3492759422569526561.Spec : Prop :=
  ∀ n, (P3492759422569526561.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P10742896633647065558

`∩[A003630(n+1), A301617(n+1)]`
-/

namespace A142106.P10742896633647065558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P10742896633647065558

namespace A142106

/-- `∩[A003630(n+1), A301617(n+1)]` -/
def P10742896633647065558.Spec : Prop :=
  ∀ n, (P10742896633647065558.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P15239852986763916728

`∩[A038875(n+1), A301617(n+1)]`
-/

namespace A142106.P15239852986763916728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P15239852986763916728

namespace A142106

/-- `∩[A038875(n+1), A301617(n+1)]` -/
def P15239852986763916728.Spec : Prop :=
  ∀ n, (P15239852986763916728.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P18345124399824447977

`∩[A061237(n+1), A197504(n+1)]`
-/

namespace A142106.P18345124399824447977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P18345124399824447977

namespace A142106

/-- `∩[A061237(n+1), A197504(n+1)]` -/
def P18345124399824447977.Spec : Prop :=
  ∀ n, (P18345124399824447977.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P9032970427881912775

`∩[A061237(n+1), A332555(n+1)]`
-/

namespace A142106.P9032970427881912775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P9032970427881912775

namespace A142106

/-- `∩[A061237(n+1), A332555(n+1)]` -/
def P9032970427881912775.Spec : Prop :=
  ∀ n, (P9032970427881912775.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P17294807240776511008

`∩[A002145(n+1), A161705(n)]`
-/

namespace A142106.P17294807240776511008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P17294807240776511008

namespace A142106

/-- `∩[A002145(n+1), A161705(n)]` -/
def P17294807240776511008.Spec : Prop :=
  ∀ n, (P17294807240776511008.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P16933813891228781655

`∩[A003630(n+1), A161705(n)]`
-/

namespace A142106.P16933813891228781655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P16933813891228781655

namespace A142106

/-- `∩[A003630(n+1), A161705(n)]` -/
def P16933813891228781655.Spec : Prop :=
  ∀ n, (P16933813891228781655.a n : ℤ) = A142106 (n + 1)

end A142106

/-! ## A142106.P16826098186193465229

`∩[A038875(n+1), A161705(n)]`
-/

namespace A142106.P16826098186193465229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142106.P16826098186193465229

namespace A142106

/-- `∩[A038875(n+1), A161705(n)]` -/
def P16826098186193465229.Spec : Prop :=
  ∀ n, (P16826098186193465229.a n : ℤ) = A142106 (n + 1)

end A142106

/-!
# A142107: Primes congruent to 23 mod 36.

The programs for A142107, the canonical program `A142107.P12579798865330129615` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142107 has offset 1).

The definition of A142107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142107.P12579798865330129615

`p?[6*6*n+23]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142107

/-- `p?[6*6*n+23]` -/
def P12579798865330129615.Spec : Prop :=
  ∀ n, (P12579798865330129615.a n : ℤ) = A142107 (n + 1)

theorem P12579798865330129615.correct : P12579798865330129615.Spec := by
  intro n
  simp only [A142107, Nat.add_sub_cancel]

end A142107

/-! ## A142107.P6075663788202243373

`∩[A061240(n+1), A141123(n+1)]`
-/

namespace A142107.P6075663788202243373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P6075663788202243373

namespace A142107

/-- `∩[A061240(n+1), A141123(n+1)]` -/
def P6075663788202243373.Spec : Prop :=
  ∀ n, (P6075663788202243373.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P11703635127732889528

`∩[A332516(n+1), A129806(n+1)]`
-/

namespace A142107.P11703635127732889528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P11703635127732889528

namespace A142107

/-- `∩[A332516(n+1), A129806(n+1)]` -/
def P11703635127732889528.Spec : Prop :=
  ∀ n, (P11703635127732889528.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P16596472183118587520

`∩[A040101(n+1), A061240(n+1)]`
-/

namespace A142107.P16596472183118587520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P16596472183118587520

namespace A142107

/-- `∩[A040101(n+1), A061240(n+1)]` -/
def P16596472183118587520.Spec : Prop :=
  ∀ n, (P16596472183118587520.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P11225104660462600145

`∩[A040124(n+1), A061240(n+1)]`
-/

namespace A142107.P11225104660462600145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P11225104660462600145

namespace A142107

/-- `∩[A040124(n+1), A061240(n+1)]` -/
def P11225104660462600145.Spec : Prop :=
  ∀ n, (P11225104660462600145.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P13807740083084614158

`∩[A040994(n+1), A061240(n+1)]`
-/

namespace A142107.P13807740083084614158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P13807740083084614158

namespace A142107

/-- `∩[A040994(n+1), A061240(n+1)]` -/
def P13807740083084614158.Spec : Prop :=
  ∀ n, (P13807740083084614158.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P5144232768551739431

`∩[A045317(n+1), A061240(n+1)]`
-/

namespace A142107.P5144232768551739431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P5144232768551739431

namespace A142107

/-- `∩[A045317(n+1), A061240(n+1)]` -/
def P5144232768551739431.Spec : Prop :=
  ∀ n, (P5144232768551739431.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P13329411897857137619

`∩[A061240(n+1), A097933(n+1)]`
-/

namespace A142107.P13329411897857137619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P13329411897857137619

namespace A142107

/-- `∩[A061240(n+1), A097933(n+1)]` -/
def P13329411897857137619.Spec : Prop :=
  ∀ n, (P13329411897857137619.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P8200381127506718

`∩[A038874(n+1), A061240(n+1)]`
-/

namespace A142107.P8200381127506718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P8200381127506718

namespace A142107

/-- `∩[A038874(n+1), A061240(n+1)]` -/
def P8200381127506718.Spec : Prop :=
  ∀ n, (P8200381127506718.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P17705168836037659720

`∩[A061240(n+1), A296933(n+1)]`
-/

namespace A142107.P17705168836037659720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P17705168836037659720

namespace A142107

/-- `∩[A061240(n+1), A296933(n+1)]` -/
def P17705168836037659720.Spec : Prop :=
  ∀ n, (P17705168836037659720.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P3873280533060892090

`∩[A097933(n+1), A301623(n+1)]`
-/

namespace A142107.P3873280533060892090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P3873280533060892090

namespace A142107

/-- `∩[A097933(n+1), A301623(n+1)]` -/
def P3873280533060892090.Spec : Prop :=
  ∀ n, (P3873280533060892090.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P10429259004712943367

`∩[A296933(n+1), A301623(n+1)]`
-/

namespace A142107.P10429259004712943367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P10429259004712943367

namespace A142107

/-- `∩[A296933(n+1), A301623(n+1)]` -/
def P10429259004712943367.Spec : Prop :=
  ∀ n, (P10429259004712943367.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P3973802344709097348

`∩[A363215(n+1), A301623(n+1)]`
-/

namespace A142107.P3973802344709097348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P3973802344709097348

namespace A142107

/-- `∩[A363215(n+1), A301623(n+1)]` -/
def P3973802344709097348.Spec : Prop :=
  ∀ n, (P3973802344709097348.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P17340036958131079803

`∩[A068231(n+1), A079131(n+1)]`
-/

namespace A142107.P17340036958131079803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P17340036958131079803

namespace A142107

/-- `∩[A068231(n+1), A079131(n+1)]` -/
def P17340036958131079803.Spec : Prop :=
  ∀ n, (P17340036958131079803.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P451193560122492786

`∩[A079131(n+1), A332516(n+1)]`
-/

namespace A142107.P451193560122492786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P451193560122492786

namespace A142107

/-- `∩[A079131(n+1), A332516(n+1)]` -/
def P451193560122492786.Spec : Prop :=
  ∀ n, (P451193560122492786.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P8150050387237103810

`∩[A002145(n+1), A061240(n+1)]`
-/

namespace A142107.P8150050387237103810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P8150050387237103810

namespace A142107

/-- `∩[A002145(n+1), A061240(n+1)]` -/
def P8150050387237103810.Spec : Prop :=
  ∀ n, (P8150050387237103810.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P4373052192301833206

`∩[A002145(n+1), A301623(n+1)]`
-/

namespace A142107.P4373052192301833206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P4373052192301833206

namespace A142107

/-- `∩[A002145(n+1), A301623(n+1)]` -/
def P4373052192301833206.Spec : Prop :=
  ∀ n, (P4373052192301833206.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P1272418149134301433

`∩[A045326(n+1), A061240(n+1)]`
-/

namespace A142107.P1272418149134301433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P1272418149134301433

namespace A142107

/-- `∩[A045326(n+1), A061240(n+1)]` -/
def P1272418149134301433.Spec : Prop :=
  ∀ n, (P1272418149134301433.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P4079039041048481280

`∩[A061240(n+1), A365313(n+1)]`
-/

namespace A142107.P4079039041048481280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P4079039041048481280

namespace A142107

/-- `∩[A061240(n+1), A365313(n+1)]` -/
def P4079039041048481280.Spec : Prop :=
  ∀ n, (P4079039041048481280.a n : ℤ) = A142107 (n + 1)

end A142107

/-! ## A142107.P1451980790090729134

`∩[A061240(n+1), A197504(n+1)]`
-/

namespace A142107.P1451980790090729134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142107.P1451980790090729134

namespace A142107

/-- `∩[A061240(n+1), A197504(n+1)]` -/
def P1451980790090729134.Spec : Prop :=
  ∀ n, (P1451980790090729134.a n : ℤ) = A142107 (n + 1)

end A142107

/-!
# A142108: Primes congruent to 25 mod 36.

The programs for A142108, the canonical program `A142108.P2153401802580103333` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142108 has offset 1).

The definition of A142108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142108.P2153401802580103333

`p?[6*6*n-11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142108

/-- `p?[6*6*n-11]` -/
def P2153401802580103333.Spec : Prop :=
  ∀ n, P2153401802580103333.a n = A142108 (n + 1)

theorem P2153401802580103333.correct : P2153401802580103333.Spec := by
  intro n
  simp only [A142108, Nat.add_sub_cancel]

end A142108

/-! ## A142108.P2563315737326322134

`∩[A061241(n+1), A068228(n+1)]`
-/

namespace A142108.P2563315737326322134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P2563315737326322134

namespace A142108

/-- `∩[A061241(n+1), A068228(n+1)]` -/
def P2563315737326322134.Spec : Prop :=
  ∀ n, (P2563315737326322134.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P1470907883471574412

`∩[A061241(n+1), A351537(n+1)]`
-/

namespace A142108.P1470907883471574412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P1470907883471574412

namespace A142108

/-- `∩[A061241(n+1), A351537(n+1)]` -/
def P1470907883471574412.Spec : Prop :=
  ∀ n, (P1470907883471574412.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P7281554697263429562

`∩[A061241(n+1), A354467(n+1)]`
-/

namespace A142108.P7281554697263429562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P7281554697263429562

namespace A142108

/-- `∩[A061241(n+1), A354467(n+1)]` -/
def P7281554697263429562.Spec : Prop :=
  ∀ n, (P7281554697263429562.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P8053263915395812667

`or(1, p?[A044102(n)-11])`
-/

namespace A142108.P8053263915395812667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142108.P8053263915395812667

namespace A142108

/-- `or(1, p?[A044102(n)-11])` -/
def P8053263915395812667.Spec : Prop :=
  ∀ n, P8053263915395812667.a n = A142108 (n + 1)

end A142108

/-! ## A142108.P17358833360463332438

`p?[A044102(n)-11]%A080124(n+1)`
-/

namespace A142108.P17358833360463332438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A080124 (n + 1))

end

end A142108.P17358833360463332438

namespace A142108

/-- `p?[A044102(n)-11]%A080124(n+1)` -/
def P17358833360463332438.Spec : Prop :=
  ∀ n, P17358833360463332438.a n = A142108 (n + 1)

end A142108

/-! ## A142108.P13337893471782001647

`∩[A068228(n+1), A129807(n+1)]`
-/

namespace A142108.P13337893471782001647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P13337893471782001647

namespace A142108

/-- `∩[A068228(n+1), A129807(n+1)]` -/
def P13337893471782001647.Spec : Prop :=
  ∀ n, (P13337893471782001647.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P11640412478606424805

`∩[A129807(n+1), A351537(n+1)]`
-/

namespace A142108.P11640412478606424805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P11640412478606424805

namespace A142108

/-- `∩[A129807(n+1), A351537(n+1)]` -/
def P11640412478606424805.Spec : Prop :=
  ∀ n, (P11640412478606424805.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P4948637796357451611

`∩[A129807(n+1), A354467(n+1)]`
-/

namespace A142108.P4948637796357451611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P4948637796357451611

namespace A142108

/-- `∩[A129807(n+1), A354467(n+1)]` -/
def P4948637796357451611.Spec : Prop :=
  ∀ n, (P4948637796357451611.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P2621008491222451328

`∩[A038874(n+1), A061241(n+1)]`
-/

namespace A142108.P2621008491222451328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P2621008491222451328

namespace A142108

/-- `∩[A038874(n+1), A061241(n+1)]` -/
def P2621008491222451328.Spec : Prop :=
  ∀ n, (P2621008491222451328.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P11026623864176934903

`∩[A061241(n+1), A097933(n+1)]`
-/

namespace A142108.P11026623864176934903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P11026623864176934903

namespace A142108

/-- `∩[A061241(n+1), A097933(n+1)]` -/
def P11026623864176934903.Spec : Prop :=
  ∀ n, (P11026623864176934903.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P10219133452261761713

`∩[A061241(n+1), A296933(n+1)]`
-/

namespace A142108.P10219133452261761713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P10219133452261761713

namespace A142108

/-- `∩[A061241(n+1), A296933(n+1)]` -/
def P10219133452261761713.Spec : Prop :=
  ∀ n, (P10219133452261761713.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P3828801511822702922

`∩[A002144(n+1), A061241(n+1)]`
-/

namespace A142108.P3828801511822702922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P3828801511822702922

namespace A142108

/-- `∩[A002144(n+1), A061241(n+1)]` -/
def P3828801511822702922.Spec : Prop :=
  ∀ n, (P3828801511822702922.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P515648936647746173

`∩[A002313(n+1), A061241(n+1)]`
-/

namespace A142108.P515648936647746173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P515648936647746173

namespace A142108

/-- `∩[A002313(n+1), A061241(n+1)]` -/
def P515648936647746173.Spec : Prop :=
  ∀ n, (P515648936647746173.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P15105874968881894828

`∩[A061241(n+1), A280084(n+1)]`
-/

namespace A142108.P15105874968881894828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P15105874968881894828

namespace A142108

/-- `∩[A061241(n+1), A280084(n+1)]` -/
def P15105874968881894828.Spec : Prop :=
  ∀ n, (P15105874968881894828.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P3850315119884608588

`∩[A002144(n+1), A301628(n+1)]`
-/

namespace A142108.P3850315119884608588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P3850315119884608588

namespace A142108

/-- `∩[A002144(n+1), A301628(n+1)]` -/
def P3850315119884608588.Spec : Prop :=
  ∀ n, (P3850315119884608588.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P16114102627120691560

`∩[A002313(n+1), A301628(n+1)]`
-/

namespace A142108.P16114102627120691560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P16114102627120691560

namespace A142108

/-- `∩[A002313(n+1), A301628(n+1)]` -/
def P16114102627120691560.Spec : Prop :=
  ∀ n, (P16114102627120691560.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P9793128517267786920

`∩[A038874(n+1), A301628(n+1)]`
-/

namespace A142108.P9793128517267786920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P9793128517267786920

namespace A142108

/-- `∩[A038874(n+1), A301628(n+1)]` -/
def P9793128517267786920.Spec : Prop :=
  ∀ n, (P9793128517267786920.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P5308362794078200706

`∩[A068228(n+1), A301628(n+1)]`
-/

namespace A142108.P5308362794078200706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P5308362794078200706

namespace A142108

/-- `∩[A068228(n+1), A301628(n+1)]` -/
def P5308362794078200706.Spec : Prop :=
  ∀ n, (P5308362794078200706.a n : ℤ) = A142108 (n + 1)

end A142108

/-! ## A142108.P14745124178845428780

`∩[A097933(n+1), A301628(n+1)]`
-/

namespace A142108.P14745124178845428780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142108.P14745124178845428780

namespace A142108

/-- `∩[A097933(n+1), A301628(n+1)]` -/
def P14745124178845428780.Spec : Prop :=
  ∀ n, (P14745124178845428780.a n : ℤ) = A142108 (n + 1)

end A142108

/-!
# A142109: Primes congruent to 29 mod 36.

The programs for A142109, the canonical program `A142109.P4050136104060084803` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142109 has offset 1).

The definition of A142109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142109.P4050136104060084803

`p?[6*6*n-7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142109

/-- `p?[6*6*n-7]` -/
def P4050136104060084803.Spec : Prop :=
  ∀ n, P4050136104060084803.a n = A142109 (n + 1)

theorem P4050136104060084803.correct : P4050136104060084803.Spec := by
  intro n
  simp only [A142109, Nat.add_sub_cancel]

end A142109

/-! ## A142109.P4433541573563349073

`∩[A040117(n+1), A061238(n+1)]`
-/

namespace A142109.P4433541573563349073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P4433541573563349073

namespace A142109

/-- `∩[A040117(n+1), A061238(n+1)]` -/
def P4433541573563349073.Spec : Prop :=
  ∀ n, (P4433541573563349073.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P17872895073607672694

`∩[A040117(n+1), A129807(n+1)]`
-/

namespace A142109.P17872895073607672694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P17872895073607672694

namespace A142109

/-- `∩[A040117(n+1), A129807(n+1)]` -/
def P17872895073607672694.Spec : Prop :=
  ∀ n, (P17872895073607672694.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P13917380318115534411

`∩[A129807(n+1), A243183(n+1)]`
-/

namespace A142109.P13917380318115534411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P13917380318115534411

namespace A142109

/-- `∩[A129807(n+1), A243183(n+1)]` -/
def P13917380318115534411.Spec : Prop :=
  ∀ n, (P13917380318115534411.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P8930226764971611627

`∩[A061238(n+1), A096785(n+1)]`
-/

namespace A142109.P8930226764971611627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P8930226764971611627

namespace A142109

/-- `∩[A061238(n+1), A096785(n+1)]` -/
def P8930226764971611627.Spec : Prop :=
  ∀ n, (P8930226764971611627.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P8178396308303008602

`∩[A002144(n+1), A061238(n+1)]`
-/

namespace A142109.P8178396308303008602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P8178396308303008602

namespace A142109

/-- `∩[A002144(n+1), A061238(n+1)]` -/
def P8178396308303008602.Spec : Prop :=
  ∀ n, (P8178396308303008602.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P98304401983878

`∩[A002144(n+1), A301621(n+1)]`
-/

namespace A142109.P98304401983878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P98304401983878

namespace A142109

/-- `∩[A002144(n+1), A301621(n+1)]` -/
def P98304401983878.Spec : Prop :=
  ∀ n, (P98304401983878.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P8613252249309301723

`∩[A002313(n+1), A301621(n+1)]`
-/

namespace A142109.P8613252249309301723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P8613252249309301723

namespace A142109

/-- `∩[A002313(n+1), A301621(n+1)]` -/
def P8613252249309301723.Spec : Prop :=
  ∀ n, (P8613252249309301723.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P16311728012673535091

`∩[A061238(n+1), A280084(n+1)]`
-/

namespace A142109.P16311728012673535091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P16311728012673535091

namespace A142109

/-- `∩[A061238(n+1), A280084(n+1)]` -/
def P16311728012673535091.Spec : Prop :=
  ∀ n, (P16311728012673535091.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P7941163143185031919

`∩[A040117(n+1), A301621(n+1)]`
-/

namespace A142109.P7941163143185031919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P7941163143185031919

namespace A142109

/-- `∩[A040117(n+1), A301621(n+1)]` -/
def P7941163143185031919.Spec : Prop :=
  ∀ n, (P7941163143185031919.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P3327383539041601452

`∩[A096785(n+1), A301621(n+1)]`
-/

namespace A142109.P3327383539041601452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P3327383539041601452

namespace A142109

/-- `∩[A096785(n+1), A301621(n+1)]` -/
def P3327383539041601452.Spec : Prop :=
  ∀ n, (P3327383539041601452.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P10224027819748402455

`∩[A243183(n+1), A301621(n+1)]`
-/

namespace A142109.P10224027819748402455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P10224027819748402455

namespace A142109

/-- `∩[A243183(n+1), A301621(n+1)]` -/
def P10224027819748402455.Spec : Prop :=
  ∀ n, (P10224027819748402455.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P10345869211228081000

`∩[A280084(n+1), A301621(n+1)]`
-/

namespace A142109.P10345869211228081000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P10345869211228081000

namespace A142109

/-- `∩[A280084(n+1), A301621(n+1)]` -/
def P10345869211228081000.Spec : Prop :=
  ∀ n, (P10345869211228081000.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P10049785918999375652

`∩[A055025(n+1), A301621(n+1)]`
-/

namespace A142109.P10049785918999375652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P10049785918999375652

namespace A142109

/-- `∩[A055025(n+1), A301621(n+1)]` -/
def P10049785918999375652.Spec : Prop :=
  ∀ n, (P10049785918999375652.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P14861324641174292162

`∩[A003630(n+1), A061238(n+1)]`
-/

namespace A142109.P14861324641174292162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P14861324641174292162

namespace A142109

/-- `∩[A003630(n+1), A061238(n+1)]` -/
def P14861324641174292162.Spec : Prop :=
  ∀ n, (P14861324641174292162.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P635691791076937601

`∩[A061238(n+1), A120960(n+1)]`
-/

namespace A142109.P635691791076937601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P635691791076937601

namespace A142109

/-- `∩[A061238(n+1), A120960(n+1)]` -/
def P635691791076937601.Spec : Prop :=
  ∀ n, (P635691791076937601.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P5685909998112243353

`∩[A061238(n+1), A172480(n+1)]`
-/

namespace A142109.P5685909998112243353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P5685909998112243353

namespace A142109

/-- `∩[A061238(n+1), A172480(n+1)]` -/
def P5685909998112243353.Spec : Prop :=
  ∀ n, (P5685909998112243353.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P3150470672305864830

`∩[A003630(n+1), A301621(n+1)]`
-/

namespace A142109.P3150470672305864830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P3150470672305864830

namespace A142109

/-- `∩[A003630(n+1), A301621(n+1)]` -/
def P3150470672305864830.Spec : Prop :=
  ∀ n, (P3150470672305864830.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P13252505141074283932

`∩[A038875(n+1), A301621(n+1)]`
-/

namespace A142109.P13252505141074283932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P13252505141074283932

namespace A142109

/-- `∩[A038875(n+1), A301621(n+1)]` -/
def P13252505141074283932.Spec : Prop :=
  ∀ n, (P13252505141074283932.a n : ℤ) = A142109 (n + 1)

end A142109

/-! ## A142109.P16119449986634040931

`∩[A120960(n+1), A301621(n+1)]`
-/

namespace A142109.P16119449986634040931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142109.P16119449986634040931

namespace A142109

/-- `∩[A120960(n+1), A301621(n+1)]` -/
def P16119449986634040931.Spec : Prop :=
  ∀ n, (P16119449986634040931.a n : ℤ) = A142109 (n + 1)

end A142109

/-!
# A142110: Primes congruent to 31 mod 36.

The programs for A142110, the canonical program `A142110.P8631013865567114222` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142110 has offset 1).

The definition of A142110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142110.P8631013865567114222

`p?[36*n-5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142110

/-- `p?[36*n-5]` -/
def P8631013865567114222.Spec : Prop :=
  ∀ n, P8631013865567114222.a n = A142110 (n + 1)

theorem P8631013865567114222.correct : P8631013865567114222.Spec := by
  intro n
  simp only [A142110, Nat.add_sub_cancel]

end A142110

/-! ## A142110.P16659288595582368420

`∩[A061239(n+1), A068229(n+1)]`
-/

namespace A142110.P16659288595582368420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P16659288595582368420

namespace A142110

/-- `∩[A061239(n+1), A068229(n+1)]` -/
def P16659288595582368420.Spec : Prop :=
  ∀ n, (P16659288595582368420.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P2903215622069244172

`∩[A068229(n+1), A129806(n+1)]`
-/

namespace A142110.P2903215622069244172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P2903215622069244172

namespace A142110

/-- `∩[A068229(n+1), A129806(n+1)]` -/
def P2903215622069244172.Spec : Prop :=
  ∀ n, (P2903215622069244172.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P15119898897450562697

`∩[A061239(n+1), A332514(n+1)]`
-/

namespace A142110.P15119898897450562697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P15119898897450562697

namespace A142110

/-- `∩[A061239(n+1), A332514(n+1)]` -/
def P15119898897450562697.Spec : Prop :=
  ∀ n, (P15119898897450562697.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P18324142897606118663

`∩[A129806(n+1), A332514(n+1)]`
-/

namespace A142110.P18324142897606118663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P18324142897606118663

namespace A142110

/-- `∩[A129806(n+1), A332514(n+1)]` -/
def P18324142897606118663.Spec : Prop :=
  ∀ n, (P18324142897606118663.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P15884029220086779631

`∩[A068229(n+1), A301622(n+1)]`
-/

namespace A142110.P15884029220086779631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P15884029220086779631

namespace A142110

/-- `∩[A068229(n+1), A301622(n+1)]` -/
def P15884029220086779631.Spec : Prop :=
  ∀ n, (P15884029220086779631.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P15506300953482650461

`∩[A068229(n+1), A079132(n+1)]`
-/

namespace A142110.P15506300953482650461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P15506300953482650461

namespace A142110

/-- `∩[A068229(n+1), A079132(n+1)]` -/
def P15506300953482650461.Spec : Prop :=
  ∀ n, (P15506300953482650461.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P4278112087096071549

`∩[A002145(n+1), A061239(n+1)]`
-/

namespace A142110.P4278112087096071549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P4278112087096071549

namespace A142110

/-- `∩[A002145(n+1), A061239(n+1)]` -/
def P4278112087096071549.Spec : Prop :=
  ∀ n, (P4278112087096071549.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P14231262516436401104

`∩[A045326(n+1), A061239(n+1)]`
-/

namespace A142110.P14231262516436401104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P14231262516436401104

namespace A142110

/-- `∩[A045326(n+1), A061239(n+1)]` -/
def P14231262516436401104.Spec : Prop :=
  ∀ n, (P14231262516436401104.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P12942994924187389647

`∩[A002145(n+1), A301622(n+1)]`
-/

namespace A142110.P12942994924187389647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P12942994924187389647

namespace A142110

/-- `∩[A002145(n+1), A301622(n+1)]` -/
def P12942994924187389647.Spec : Prop :=
  ∀ n, (P12942994924187389647.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P3392513409809694654

`∩[A045326(n+1), A301622(n+1)]`
-/

namespace A142110.P3392513409809694654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P3392513409809694654

namespace A142110

/-- `∩[A045326(n+1), A301622(n+1)]` -/
def P3392513409809694654.Spec : Prop :=
  ∀ n, (P3392513409809694654.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P1880596630947143202

`∩[A003630(n+1), A061239(n+1)]`
-/

namespace A142110.P1880596630947143202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P1880596630947143202

namespace A142110

/-- `∩[A003630(n+1), A061239(n+1)]` -/
def P1880596630947143202.Spec : Prop :=
  ∀ n, (P1880596630947143202.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P2574644417157799993

`∩[A003630(n+1), A301622(n+1)]`
-/

namespace A142110.P2574644417157799993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P2574644417157799993

namespace A142110

/-- `∩[A003630(n+1), A301622(n+1)]` -/
def P2574644417157799993.Spec : Prop :=
  ∀ n, (P2574644417157799993.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P16594167939169184305

`∩[A038875(n+1), A061239(n+1)]`
-/

namespace A142110.P16594167939169184305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P16594167939169184305

namespace A142110

/-- `∩[A038875(n+1), A061239(n+1)]` -/
def P16594167939169184305.Spec : Prop :=
  ∀ n, (P16594167939169184305.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P8327245352561526332

`∩[A061239(n+1), A085760(n+1)]`
-/

namespace A142110.P8327245352561526332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P8327245352561526332

namespace A142110

/-- `∩[A061239(n+1), A085760(n+1)]` -/
def P8327245352561526332.Spec : Prop :=
  ∀ n, (P8327245352561526332.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P16083376609358173183

`∩[A038875(n+1), A301622(n+1)]`
-/

namespace A142110.P16083376609358173183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P16083376609358173183

namespace A142110

/-- `∩[A038875(n+1), A301622(n+1)]` -/
def P16083376609358173183.Spec : Prop :=
  ∀ n, (P16083376609358173183.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P17578559401887557143

`∩[A061239(n+1), A197504(n+1)]`
-/

namespace A142110.P17578559401887557143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P17578559401887557143

namespace A142110

/-- `∩[A061239(n+1), A197504(n+1)]` -/
def P17578559401887557143.Spec : Prop :=
  ∀ n, (P17578559401887557143.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P6619827426047390219

`∩[A061239(n+1), A332555(n+1)]`
-/

namespace A142110.P6619827426047390219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P6619827426047390219

namespace A142110

/-- `∩[A061239(n+1), A332555(n+1)]` -/
def P6619827426047390219.Spec : Prop :=
  ∀ n, (P6619827426047390219.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P14859500355613108750

`∩[A061239(n+1), A285015(n+1)]`
-/

namespace A142110.P14859500355613108750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P14859500355613108750

namespace A142110

/-- `∩[A061239(n+1), A285015(n+1)]` -/
def P14859500355613108750.Spec : Prop :=
  ∀ n, (P14859500355613108750.a n : ℤ) = A142110 (n + 1)

end A142110

/-! ## A142110.P5138667856431764652

`∩[A285015(n+1), A301622(n+1)]`
-/

namespace A142110.P5138667856431764652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142110.P5138667856431764652

namespace A142110

/-- `∩[A285015(n+1), A301622(n+1)]` -/
def P5138667856431764652.Spec : Prop :=
  ∀ n, (P5138667856431764652.a n : ℤ) = A142110 (n + 1)

end A142110

/-!
# A142111: Primes congruent to 35 mod 36.

The programs for A142111, the canonical program `A142111.P16602472380021793625` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142111 has offset 1).

The definition of A142111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142111.P16602472380021793625

`p?[36*n-1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142111

/-- `p?[36*n-1]` -/
def P16602472380021793625.Spec : Prop :=
  ∀ n, P16602472380021793625.a n = A142111 (n + 1)

theorem P16602472380021793625.correct : P16602472380021793625.Spec := by
  intro n
  simp only [A142111, Nat.add_sub_cancel]

end A142111

/-! ## A142111.P1915288976122044026

`or(1, p?[6*6*n+35])`
-/

namespace A142111.P1915288976122044026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (6 * n) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142111.P1915288976122044026

namespace A142111

/-- `or(1, p?[6*6*n+35])` -/
def P1915288976122044026.Spec : Prop :=
  ∀ n, (P1915288976122044026.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P11202978811265730212

`∏{d}[p?[a(n-1)+36], #]` with `a(0)=35`
-/

namespace A142111.P11202978811265730212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142111.P11202978811265730212

namespace A142111

/-- `∏{d}[p?[a(n-1)+36], #]` -/
def P11202978811265730212.Spec : Prop :=
  ∀ n, (P11202978811265730212.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P5199293274125863355

`∑{p}[p?[a(n-1)+36], #]` with `a(0)=35`
-/

namespace A142111.P5199293274125863355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142111.P5199293274125863355

namespace A142111

/-- `∑{p}[p?[a(n-1)+36], #]` -/
def P5199293274125863355.Spec : Prop :=
  ∀ n, (P5199293274125863355.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P13785258840598771877

`∏{p}[p?[a(n-1)+36], #]` with `a(0)=35`
-/

namespace A142111.P13785258840598771877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f2 =>
  f2 (n - 1) + 36

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142111.P13785258840598771877

namespace A142111

/-- `∏{p}[p?[a(n-1)+36], #]` -/
def P13785258840598771877.Spec : Prop :=
  ∀ n, (P13785258840598771877.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P2737840149099948650

`∩[A061242(n+1), A068231(n+1)]`
-/

namespace A142111.P2737840149099948650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P2737840149099948650

namespace A142111

/-- `∩[A061242(n+1), A068231(n+1)]` -/
def P2737840149099948650.Spec : Prop :=
  ∀ n, (P2737840149099948650.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P8792309695250345489

`∩[A061242(n+1), A141123(n+1)]`
-/

namespace A142111.P8792309695250345489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P8792309695250345489

namespace A142111

/-- `∩[A061242(n+1), A141123(n+1)]` -/
def P8792309695250345489.Spec : Prop :=
  ∀ n, (P8792309695250345489.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P565191842487035954

`∩[A061242(n+1), A141187(n+1)]`
-/

namespace A142111.P565191842487035954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P565191842487035954

namespace A142111

/-- `∩[A061242(n+1), A141187(n+1)]` -/
def P565191842487035954.Spec : Prop :=
  ∀ n, (P565191842487035954.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P12307856953111266514

`∩[A061242(n+1), A350055(n)]`
-/

namespace A142111.P12307856953111266514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P12307856953111266514

namespace A142111

/-- `∩[A061242(n+1), A350055(n)]` -/
def P12307856953111266514.Spec : Prop :=
  ∀ n, (P12307856953111266514.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P10141700330412294900

`∩[A068231(n+1), A350055(n)]`
-/

namespace A142111.P10141700330412294900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P10141700330412294900

namespace A142111

/-- `∩[A068231(n+1), A350055(n)]` -/
def P10141700330412294900.Spec : Prop :=
  ∀ n, (P10141700330412294900.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P4630353542331299079

`∩[A141123(n+1), A350055(n)]`
-/

namespace A142111.P4630353542331299079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P4630353542331299079

namespace A142111

/-- `∩[A141123(n+1), A350055(n)]` -/
def P4630353542331299079.Spec : Prop :=
  ∀ n, (P4630353542331299079.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P18426856254195959497

`∩[A141187(n+1), A350055(n)]`
-/

namespace A142111.P18426856254195959497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P18426856254195959497

namespace A142111

/-- `∩[A141187(n+1), A350055(n)]` -/
def P18426856254195959497.Spec : Prop :=
  ∀ n, (P18426856254195959497.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P6195670171851373845

`∩[A397410(n+1), A350055(n)]`
-/

namespace A142111.P6195670171851373845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P6195670171851373845

namespace A142111

/-- `∩[A397410(n+1), A350055(n)]` -/
def P6195670171851373845.Spec : Prop :=
  ∀ n, (P6195670171851373845.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P2865812912467707059

`∩[A129805(n+1), A350055(n)]`
-/

namespace A142111.P2865812912467707059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P2865812912467707059

namespace A142111

/-- `∩[A129805(n+1), A350055(n)]` -/
def P2865812912467707059.Spec : Prop :=
  ∀ n, (P2865812912467707059.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P12641533618549568353

`∩[A068231(n+1), A129805(n+1)]`
-/

namespace A142111.P12641533618549568353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P12641533618549568353

namespace A142111

/-- `∩[A068231(n+1), A129805(n+1)]` -/
def P12641533618549568353.Spec : Prop :=
  ∀ n, (P12641533618549568353.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P4309874866800840945

`∩[A129805(n+1), A141187(n+1)]`
-/

namespace A142111.P4309874866800840945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P4309874866800840945

namespace A142111

/-- `∩[A129805(n+1), A141187(n+1)]` -/
def P4309874866800840945.Spec : Prop :=
  ∀ n, (P4309874866800840945.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P15221594000124148823

`∩[A385220(n+1), A350055(n)]`
-/

namespace A142111.P15221594000124148823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P15221594000124148823

namespace A142111

/-- `∩[A385220(n+1), A350055(n)]` -/
def P15221594000124148823.Spec : Prop :=
  ∀ n, (P15221594000124148823.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P10336820841030467476

`∩[A363215(n+1), A350055(n)]`
-/

namespace A142111.P10336820841030467476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P10336820841030467476

namespace A142111

/-- `∩[A363215(n+1), A350055(n)]` -/
def P10336820841030467476.Spec : Prop :=
  ∀ n, (P10336820841030467476.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P6648767311112645060

`∩[A332516(n+1), A061242(n+1)]`
-/

namespace A142111.P6648767311112645060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P6648767311112645060

namespace A142111

/-- `∩[A332516(n+1), A061242(n+1)]` -/
def P6648767311112645060.Spec : Prop :=
  ∀ n, (P6648767311112645060.a n : ℤ) = A142111 (n + 1)

end A142111

/-! ## A142111.P9163376935345668686

`∩[A040101(n+1), A350055(n)]`
-/

namespace A142111.P9163376935345668686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142111.P9163376935345668686

namespace A142111

/-- `∩[A040101(n+1), A350055(n)]` -/
def P9163376935345668686.Spec : Prop :=
  ∀ n, (P9163376935345668686.a n : ℤ) = A142111 (n + 1)

end A142111

/-!
# A142112: Primes congruent to 2 mod 37.

The programs for A142112, the canonical program `A142112.P1921263212343522534` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142112 has offset 1).

The definition of A142112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142112.P1921263212343522534

`p?[37*n+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142112

/-- `p?[37*n+2]` -/
def P1921263212343522534.Spec : Prop :=
  ∀ n, (P1921263212343522534.a n : ℤ) = A142112 (n + 1)

theorem P1921263212343522534.correct : P1921263212343522534.Spec := by
  intro n
  simp only [A142112, Nat.add_sub_cancel]

end A142112

/-! ## A142112.P1677065444436941429

`A000027(p?[A017545(n)+A008607(n)])`
-/

namespace A142112.P1677065444436941429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142112.P1677065444436941429

namespace A142112

/-- `A000027(p?[A017545(n)+A008607(n)])` -/
def P1677065444436941429.Spec : Prop :=
  ∀ n, P1677065444436941429.a n = A142112 (n + 1)

end A142112

/-! ## A142112.P11128138537988185382

`A000027(p?[A128470(n)+A016993(n)])`
-/

namespace A142112.P11128138537988185382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142112.P11128138537988185382

namespace A142112

/-- `A000027(p?[A128470(n)+A016993(n)])` -/
def P11128138537988185382.Spec : Prop :=
  ∀ n, P11128138537988185382.a n = A142112 (n + 1)

end A142112

/-! ## A142112.P7116971528612349958

`p?[A017545(n)+A008607(n)]%A061550(n)²`
-/

namespace A142112.P7116971528612349958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A061550 n ^ 2)

end

end A142112.P7116971528612349958

namespace A142112

/-- `p?[A017545(n)+A008607(n)]%A061550(n)²` -/
def P7116971528612349958.Spec : Prop :=
  ∀ n, P7116971528612349958.a n = A142112 (n + 1)

end A142112

/-! ## A142112.P16915336791258637981

`p?[A249674(n)+A017017(n)-1]%A088784(n+1)`
-/

namespace A142112.P16915336791258637981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017017 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A088784 (n + 1))

end

end A142112.P16915336791258637981

namespace A142112

/-- `p?[A249674(n)+A017017(n)-1]%A088784(n+1)` -/
def P16915336791258637981.Spec : Prop :=
  ∀ n, P16915336791258637981.a n = A142112 (n + 1)

end A142112

/-! ## A142112.P14775989750332228887

`record[A020639(37*(n+2)+2)]`
-/

namespace A142112.P14775989750332228887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * (n + 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142112.P14775989750332228887

namespace A142112

/-- `record[A020639(37*(n+2)+2)]` -/
def P14775989750332228887.Spec : Prop :=
  ∀ n, P14775989750332228887.a n = A142112 (n + 1)

end A142112

/-!
# A142113: Primes congruent to 4 mod 37.

The programs for A142113, the canonical program `A142113.P17289297828169023056` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142113 has offset 1).

The definition of A142113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142113.P17289297828169023056

`p?[37*(n-3)+4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142113

/-- `p?[37*(n-3)+4]` -/
def P17289297828169023056.Spec : Prop :=
  ∀ n, P17289297828169023056.a n = A142113 (n + 1)

theorem P17289297828169023056.correct : P17289297828169023056.Spec := by
  intro n
  simp only [A142113, Nat.add_sub_cancel]

end A142113

/-! ## A142113.P53438515662764617

`or(1, p?[a(n-1)+37])` with `a(0)=4`
-/

namespace A142113.P53438515662764617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142113.P53438515662764617

namespace A142113

/-- `or(1, p?[a(n-1)+37])` -/
def P53438515662764617.Spec : Prop :=
  ∀ n, (P53438515662764617.a n : ℤ) = A142113 (n + 1)

end A142113

/-! ## A142113.P5966535155908709130

`or(1, p?[A154266(n+1)+A017293(n)])`
-/

namespace A142113.P5966535155908709130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142113.P5966535155908709130

namespace A142113

/-- `or(1, p?[A154266(n+1)+A017293(n)])` -/
def P5966535155908709130.Spec : Prop :=
  ∀ n, P5966535155908709130.a n = A142113 (n + 1)

end A142113

/-! ## A142113.P446560570652535795

`∩[A038913(n+1), A169610(n+1)-1]`
-/

namespace A142113.P446560570652535795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142113.P446560570652535795

namespace A142113

/-- `∩[A038913(n+1), A169610(n+1)-1]` -/
def P446560570652535795.Spec : Prop :=
  ∀ n, (P446560570652535795.a n : ℤ) = A142113 (n + 1)

end A142113

/-! ## A142113.P10275666346546601166

`∩[A169610(n+1)-1, A191027(n+1)]`
-/

namespace A142113.P10275666346546601166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142113.P10275666346546601166

namespace A142113

/-- `∩[A169610(n+1)-1, A191027(n+1)]` -/
def P10275666346546601166.Spec : Prop :=
  ∀ n, (P10275666346546601166.a n : ℤ) = A142113 (n + 1)

end A142113

/-! ## A142113.P8012067955478475678

`record[A020639(37*(n+1)+4)]`
-/

namespace A142113.P8012067955478475678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142113.P8012067955478475678

namespace A142113

/-- `record[A020639(37*(n+1)+4)]` -/
def P8012067955478475678.Spec : Prop :=
  ∀ n, P8012067955478475678.a n = A142113 (n + 1)

end A142113

/-! ## A142113.P11749115160675073170

`record[A006530(37*A130823(n+1)+4)]`
-/

namespace A142113.P11749115160675073170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (37 * A130823 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142113.P11749115160675073170

namespace A142113

/-- `record[A006530(37*A130823(n+1)+4)]` -/
def P11749115160675073170.Spec : Prop :=
  ∀ n, P11749115160675073170.a n = A142113 (n + 1)

end A142113

/-! ## A142113.P16083827957469376038

`∏{p}[p?[A016945(6*n)+n+1], #]`
-/

namespace A142113.P16083827957469376038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (6 * n) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142113.P16083827957469376038

namespace A142113

/-- `∏{p}[p?[A016945(6*n)+n+1], #]` -/
def P16083827957469376038.Spec : Prop :=
  ∀ n, (P16083827957469376038.a n : ℤ) = A142113 (n + 1)

end A142113

/-!
# A142114: Primes congruent to 5 mod 37.

The programs for A142114, the canonical program `A142114.P4486760685611646182` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142114 has offset 1).

The definition of A142114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142114.P4486760685611646182

`p?[37*n+5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142114

/-- `p?[37*n+5]` -/
def P4486760685611646182.Spec : Prop :=
  ∀ n, (P4486760685611646182.a n : ℤ) = A142114 (n + 1)

theorem P4486760685611646182.correct : P4486760685611646182.Spec := by
  intro n
  simp only [A142114, Nat.add_sub_cancel]

end A142114

/-! ## A142114.P6188583758367750345

`A000027(p?[A128470(n)+A017029(n)])`
-/

namespace A142114.P6188583758367750345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142114.P6188583758367750345

namespace A142114

/-- `A000027(p?[A128470(n)+A017029(n)])` -/
def P6188583758367750345.Spec : Prop :=
  ∀ n, P6188583758367750345.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P10271272825232772249

`∩[A038914(n+1), A169610(n+1)]`
-/

namespace A142114.P10271272825232772249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P10271272825232772249

namespace A142114

/-- `∩[A038914(n+1), A169610(n+1)]` -/
def P10271272825232772249.Spec : Prop :=
  ∀ n, (P10271272825232772249.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P16232268856336537168

`∩[A242215(2*n)+n, A070957(n+2)]`
-/

namespace A142114.P16232268856336537168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P16232268856336537168

namespace A142114

/-- `∩[A242215(2*n)+n, A070957(n+2)]` -/
def P16232268856336537168.Spec : Prop :=
  ∀ n, (P16232268856336537168.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P13518436516373254705

`∩[A242215(2*n)+n, A261123(n+2)]`
-/

namespace A142114.P13518436516373254705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P13518436516373254705

namespace A142114

/-- `∩[A242215(2*n)+n, A261123(n+2)]` -/
def P13518436516373254705.Spec : Prop :=
  ∀ n, (P13518436516373254705.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P6086145554092540284

`∩[A242215(2*n)+n, A006005(n+2)]`
-/

namespace A142114.P6086145554092540284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P6086145554092540284

namespace A142114

/-- `∩[A242215(2*n)+n, A006005(n+2)]` -/
def P6086145554092540284.Spec : Prop :=
  ∀ n, (P6086145554092540284.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P16089872181347500596

`∩[A242215(2*n)+n, A033946(n+2)]`
-/

namespace A142114.P16089872181347500596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P16089872181347500596

namespace A142114

/-- `∩[A242215(2*n)+n, A033946(n+2)]` -/
def P16089872181347500596.Spec : Prop :=
  ∀ n, (P16089872181347500596.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P8112017409726712893

`∩[A242215(2*n)+n, A051948(n+2)]`
-/

namespace A142114.P8112017409726712893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P8112017409726712893

namespace A142114

/-- `∩[A242215(2*n)+n, A051948(n+2)]` -/
def P8112017409726712893.Spec : Prop :=
  ∀ n, (P8112017409726712893.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P8319691624470365901

`∩[A242215(2*n)+n, A053813(n+2)]`
-/

namespace A142114.P8319691624470365901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142114.P8319691624470365901

namespace A142114

/-- `∩[A242215(2*n)+n, A053813(n+2)]` -/
def P8319691624470365901.Spec : Prop :=
  ∀ n, (P8319691624470365901.a n : ℤ) = A142114 (n + 1)

end A142114

/-! ## A142114.P13364739100377810277

`record[A020639(37*n+5)]`
-/

namespace A142114.P13364739100377810277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142114.P13364739100377810277

namespace A142114

/-- `record[A020639(37*n+5)]` -/
def P13364739100377810277.Spec : Prop :=
  ∀ n, P13364739100377810277.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P12300787278071545876

`filter[A169610(2*n+1), A010051(#)]`
-/

namespace A142114.P12300787278071545876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142114.P12300787278071545876

namespace A142114

/-- `filter[A169610(2*n+1), A010051(#)]` -/
def P12300787278071545876.Spec : Prop :=
  ∀ n, P12300787278071545876.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P14516540860585035995

`filter[A169610(2*n+1), A069513(#)]`
-/

namespace A142114.P14516540860585035995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A142114.P14516540860585035995

namespace A142114

/-- `filter[A169610(2*n+1), A069513(#)]` -/
def P14516540860585035995.Spec : Prop :=
  ∀ n, P14516540860585035995.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P10489238527764305065

`filter[A169610(2*n+1), A355937(#)]`
-/

namespace A142114.P10489238527764305065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142114.P10489238527764305065

namespace A142114

/-- `filter[A169610(2*n+1), A355937(#)]` -/
def P10489238527764305065.Spec : Prop :=
  ∀ n, P10489238527764305065.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P11160128403547033334

`A000265(p?[A128470(n)+A017029(n)])`
-/

namespace A142114.P11160128403547033334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142114.P11160128403547033334

namespace A142114

/-- `A000265(p?[A128470(n)+A017029(n)])` -/
def P11160128403547033334.Spec : Prop :=
  ∀ n, P11160128403547033334.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P12485131985616374972

`filter[A169610(2*n+1), A174897(#)]`
-/

namespace A142114.P12485131985616374972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A142114.P12485131985616374972

namespace A142114

/-- `filter[A169610(2*n+1), A174897(#)]` -/
def P12485131985616374972.Spec : Prop :=
  ∀ n, P12485131985616374972.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P11741771245206349878

`filter[A169610(2*n+1), A302777(#)]`
-/

namespace A142114.P11741771245206349878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142114.P11741771245206349878

namespace A142114

/-- `filter[A169610(2*n+1), A302777(#)]` -/
def P11741771245206349878.Spec : Prop :=
  ∀ n, P11741771245206349878.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P14673387806685553690

`filter[A169610(2*n+1), A323152(#)]`
-/

namespace A142114.P14673387806685553690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142114.P14673387806685553690

namespace A142114

/-- `filter[A169610(2*n+1), A323152(#)]` -/
def P14673387806685553690.Spec : Prop :=
  ∀ n, P14673387806685553690.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P9295394173957759205

`filter[A169610(2*n+1), A323153(#)]`
-/

namespace A142114.P9295394173957759205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142114.P9295394173957759205

namespace A142114

/-- `filter[A169610(2*n+1), A323153(#)]` -/
def P9295394173957759205.Spec : Prop :=
  ∀ n, P9295394173957759205.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P18000260883410926122

`filter[A169610(2*n+1), A345950(#)]`
-/

namespace A142114.P18000260883410926122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A142114.P18000260883410926122

namespace A142114

/-- `filter[A169610(2*n+1), A345950(#)]` -/
def P18000260883410926122.Spec : Prop :=
  ∀ n, P18000260883410926122.a n = A142114 (n + 1)

end A142114

/-! ## A142114.P6710570275902307268

`filter[A169610(2*n+1), A353817(#)]`
-/

namespace A142114.P6710570275902307268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142114.P6710570275902307268

namespace A142114

/-- `filter[A169610(2*n+1), A353817(#)]` -/
def P6710570275902307268.Spec : Prop :=
  ∀ n, P6710570275902307268.a n = A142114 (n + 1)

end A142114

/-!
# A142115: Primes congruent to 6 mod 37.

The programs for A142115, the canonical program `A142115.P4611097270426880112` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142115 has offset 1).

The definition of A142115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142115.P4611097270426880112

`p?[37*n+6]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142115

/-- `p?[37*n+6]` -/
def P4611097270426880112.Spec : Prop :=
  ∀ n, (P4611097270426880112.a n : ℤ) = A142115 (n + 1)

theorem P4611097270426880112.correct : P4611097270426880112.Spec := by
  intro n
  simp only [A142115, Nat.add_sub_cancel]

end A142115

/-! ## A142115.P3201793648145853018

`or(1, p?[a(n-1)+37])` with `a(0)=6`
-/

namespace A142115.P3201793648145853018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142115.P3201793648145853018

namespace A142115

/-- `or(1, p?[a(n-1)+37])` -/
def P3201793648145853018.Spec : Prop :=
  ∀ n, (P3201793648145853018.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P18324005488568623167

`-or(1, -p?[A128470(n)+A017029(n)+1])`
-/

namespace A142115.P18324005488568623167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142115.P18324005488568623167

namespace A142115

/-- `-or(1, -p?[A128470(n)+A017029(n)+1])` -/
def P18324005488568623167.Spec : Prop :=
  ∀ n, P18324005488568623167.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P946487185109260815

`or(1, p?[A155097(n+1+n)])`
-/

namespace A142115.P946487185109260815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142115.P946487185109260815

namespace A142115

/-- `or(1, p?[A155097(n+1+n)])` -/
def P946487185109260815.Spec : Prop :=
  ∀ n, P946487185109260815.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P11659442199886363598

`record[p?[A155097(A064680(n)+1)]]`
-/

namespace A142115.P11659442199886363598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (A064680 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142115.P11659442199886363598

namespace A142115

/-- `record[p?[A155097(A064680(n)+1)]]` -/
def P11659442199886363598.Spec : Prop :=
  ∀ n, P11659442199886363598.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P11442390867390414974

`∩[A169610(2*n+1)+1, A038914(n+2)]`
-/

namespace A142115.P11442390867390414974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038914 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P11442390867390414974

namespace A142115

/-- `∩[A169610(2*n+1)+1, A038914(n+2)]` -/
def P11442390867390414974.Spec : Prop :=
  ∀ n, (P11442390867390414974.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P5931661610320460692

`∩[A306331(2*n+1)-n, A009087(n+2)]`
-/

namespace A142115.P5931661610320460692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P5931661610320460692

namespace A142115

/-- `∩[A306331(2*n+1)-n, A009087(n+2)]` -/
def P5931661610320460692.Spec : Prop :=
  ∀ n, (P5931661610320460692.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P4354630122175810004

`∩[A306331(2*n+1)-n, A000040(n+2)]`
-/

namespace A142115.P4354630122175810004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P4354630122175810004

namespace A142115

/-- `∩[A306331(2*n+1)-n, A000040(n+2)]` -/
def P4354630122175810004.Spec : Prop :=
  ∀ n, (P4354630122175810004.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P18135267019683447944

`∩[A306331(2*n+1)-n, A004139(n+2)]`
-/

namespace A142115.P18135267019683447944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P18135267019683447944

namespace A142115

/-- `∩[A306331(2*n+1)-n, A004139(n+2)]` -/
def P18135267019683447944.Spec : Prop :=
  ∀ n, (P18135267019683447944.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P2960587582524960388

`∩[A306331(2*n+1)-n, A006005(n+2)]`
-/

namespace A142115.P2960587582524960388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P2960587582524960388

namespace A142115

/-- `∩[A306331(2*n+1)-n, A006005(n+2)]` -/
def P2960587582524960388.Spec : Prop :=
  ∀ n, (P2960587582524960388.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P1335242813865268021

`∩[A306331(2*n+1)-n, A008578(n+2)]`
-/

namespace A142115.P1335242813865268021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P1335242813865268021

namespace A142115

/-- `∩[A306331(2*n+1)-n, A008578(n+2)]` -/
def P1335242813865268021.Spec : Prop :=
  ∀ n, (P1335242813865268021.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P12668137262932079034

`∩[A306331(2*n+1)-n, A033946(n+2)]`
-/

namespace A142115.P12668137262932079034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P12668137262932079034

namespace A142115

/-- `∩[A306331(2*n+1)-n, A033946(n+2)]` -/
def P12668137262932079034.Spec : Prop :=
  ∀ n, (P12668137262932079034.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P8881451832766899199

`∩[A306331(2*n+1)-n, A045319(n+2)]`
-/

namespace A142115.P8881451832766899199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P8881451832766899199

namespace A142115

/-- `∩[A306331(2*n+1)-n, A045319(n+2)]` -/
def P8881451832766899199.Spec : Prop :=
  ∀ n, (P8881451832766899199.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P10266683658754631696

`∩[A306331(2*n+1)-n, A000430(n+2)]`
-/

namespace A142115.P10266683658754631696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142115.P10266683658754631696

namespace A142115

/-- `∩[A306331(2*n+1)-n, A000430(n+2)]` -/
def P10266683658754631696.Spec : Prop :=
  ∀ n, (P10266683658754631696.a n : ℤ) = A142115 (n + 1)

end A142115

/-! ## A142115.P3306486825985380278

`record[A006530(37*n+43)]`
-/

namespace A142115.P3306486825985380278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (37 * n + 43)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142115.P3306486825985380278

namespace A142115

/-- `record[A006530(37*n+43)]` -/
def P3306486825985380278.Spec : Prop :=
  ∀ n, P3306486825985380278.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P3156834857465408490

`record[A020639(74*(n+1)-31)]`
-/

namespace A142115.P3156834857465408490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (74 * (n + 1) - 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142115.P3156834857465408490

namespace A142115

/-- `record[A020639(74*(n+1)-31)]` -/
def P3156834857465408490.Spec : Prop :=
  ∀ n, P3156834857465408490.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P2713691392472413078

`filter[A155097(2*n+1), A010051(#)]`
-/

namespace A142115.P2713691392472413078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142115.P2713691392472413078

namespace A142115

/-- `filter[A155097(2*n+1), A010051(#)]` -/
def P2713691392472413078.Spec : Prop :=
  ∀ n, P2713691392472413078.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P16460549472299444318

`filter[A155097(2*n+1), A355937(#)]`
-/

namespace A142115.P16460549472299444318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142115.P16460549472299444318

namespace A142115

/-- `filter[A155097(2*n+1), A355937(#)]` -/
def P16460549472299444318.Spec : Prop :=
  ∀ n, P16460549472299444318.a n = A142115 (n + 1)

end A142115

/-! ## A142115.P12816275036317861246

`filter[A155097(2*n+1), A302777(#)]`
-/

namespace A142115.P12816275036317861246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142115.P12816275036317861246

namespace A142115

/-- `filter[A155097(2*n+1), A302777(#)]` -/
def P12816275036317861246.Spec : Prop :=
  ∀ n, P12816275036317861246.a n = A142115 (n + 1)

end A142115

/-!
# A142116: Primes congruent to 7 mod 37.

The programs for A142116, the canonical program `A142116.P5009298204523367086` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142116 has offset 1).

The definition of A142116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142116.P5009298204523367086

`p?[37*n+7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142116

/-- `p?[37*n+7]` -/
def P5009298204523367086.Spec : Prop :=
  ∀ n, (P5009298204523367086.a n : ℤ) = A142116 (n + 1)

theorem P5009298204523367086.correct : P5009298204523367086.Spec := by
  intro n
  simp only [A142116, Nat.add_sub_cancel]

end A142116

/-! ## A142116.P3910835602612464364

`or(1, p?[a(n-1)+37])` with `a(0)=7`
-/

namespace A142116.P3910835602612464364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142116.P3910835602612464364

namespace A142116

/-- `or(1, p?[a(n-1)+37])` -/
def P3910835602612464364.Spec : Prop :=
  ∀ n, (P3910835602612464364.a n : ℤ) = A142116 (n + 1)

end A142116

/-! ## A142116.P12824461749974035151

`A000027(p?[A139222(n+1)+A017029(n)])`
-/

namespace A142116.P12824461749974035151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142116.P12824461749974035151

namespace A142116

/-- `A000027(p?[A139222(n+1)+A017029(n)])` -/
def P12824461749974035151.Spec : Prop :=
  ∀ n, P12824461749974035151.a n = A142116 (n + 1)

end A142116

/-! ## A142116.P5668157780644061385

`p?[A154266(n)+A017281(n)-6]%A250428(n+1)`
-/

namespace A142116.P5668157780644061385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017281 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A250428 (n + 1))

end

end A142116.P5668157780644061385

namespace A142116

/-- `p?[A154266(n)+A017281(n)-6]%A250428(n+1)` -/
def P5668157780644061385.Spec : Prop :=
  ∀ n, P5668157780644061385.a n = A142116 (n + 1)

end A142116

/-! ## A142116.P6420453070896910151

`∩[A038913(n+1), A169610(n+1)+2]`
-/

namespace A142116.P6420453070896910151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142116.P6420453070896910151

namespace A142116

/-- `∩[A038913(n+1), A169610(n+1)+2]` -/
def P6420453070896910151.Spec : Prop :=
  ∀ n, (P6420453070896910151.a n : ℤ) = A142116 (n + 1)

end A142116

/-! ## A142116.P8672288385545196501

`∩[A169610(n+1)+2, A191027(n+1)]`
-/

namespace A142116.P8672288385545196501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142116.P8672288385545196501

namespace A142116

/-- `∩[A169610(n+1)+2, A191027(n+1)]` -/
def P8672288385545196501.Spec : Prop :=
  ∀ n, (P8672288385545196501.a n : ℤ) = A142116 (n + 1)

end A142116

/-! ## A142116.P7946046520892053047

`record[A020639(37*n+7)]`
-/

namespace A142116.P7946046520892053047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142116.P7946046520892053047

namespace A142116

/-- `record[A020639(37*n+7)]` -/
def P7946046520892053047.Spec : Prop :=
  ∀ n, P7946046520892053047.a n = A142116 (n + 1)

end A142116

/-! ## A142116.P8014473336088708731

`A000265(p?[A154266(n)+A017281(n)-6])`
-/

namespace A142116.P8014473336088708731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017281 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142116.P8014473336088708731

namespace A142116

/-- `A000265(p?[A154266(n)+A017281(n)-6])` -/
def P8014473336088708731.Spec : Prop :=
  ∀ n, P8014473336088708731.a n = A142116 (n + 1)

end A142116

/-! ## A142116.P5727231031323521992

`A001414(p?[A020742(37*n)])`
-/

namespace A142116.P5727231031323521992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (37 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142116.P5727231031323521992

namespace A142116

/-- `A001414(p?[A020742(37*n)])` -/
def P5727231031323521992.Spec : Prop :=
  ∀ n, P5727231031323521992.a n = A142116 (n + 1)

end A142116

/-!
# A142117: Primes congruent to 8 mod 37.

The programs for A142117, the canonical program `A142117.P3270763359279736161` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142117 has offset 1).

The definition of A142117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142117.P3270763359279736161

`p?[37*n+8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142117

/-- `p?[37*n+8]` -/
def P3270763359279736161.Spec : Prop :=
  ∀ n, (P3270763359279736161.a n : ℤ) = A142117 (n + 1)

theorem P3270763359279736161.correct : P3270763359279736161.Spec := by
  intro n
  simp only [A142117, Nat.add_sub_cancel]

end A142117

/-! ## A142117.P5823907998310914335

`A000027(p?[A139279(n+1)-A008585(n)])`
-/

namespace A142117.P5823907998310914335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P5823907998310914335

namespace A142117

/-- `A000027(p?[A139279(n+1)-A008585(n)])` -/
def P5823907998310914335.Spec : Prop :=
  ∀ n, P5823907998310914335.a n = A142117 (n + 1)

end A142117

/-! ## A142117.P10877173428025183051

`A000027(p?[A304205(n+1)-A017569(n)])`
-/

namespace A142117.P10877173428025183051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P10877173428025183051

namespace A142117

/-- `A000027(p?[A304205(n+1)-A017569(n)])` -/
def P10877173428025183051.Spec : Prop :=
  ∀ n, P10877173428025183051.a n = A142117 (n + 1)

end A142117

/-! ## A142117.P14092070117281038950

`∩[A144619(2*n)-n, A000040(n+2)]`
-/

namespace A142117.P14092070117281038950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142117.P14092070117281038950

namespace A142117

/-- `∩[A144619(2*n)-n, A000040(n+2)]` -/
def P14092070117281038950.Spec : Prop :=
  ∀ n, (P14092070117281038950.a n : ℤ) = A142117 (n + 1)

end A142117

/-! ## A142117.P9870957372210492593

`∩[A144619(2*n)-n, A318158(n+2)]`
-/

namespace A142117.P9870957372210492593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142117.P9870957372210492593

namespace A142117

/-- `∩[A144619(2*n)-n, A318158(n+2)]` -/
def P9870957372210492593.Spec : Prop :=
  ∀ n, (P9870957372210492593.a n : ℤ) = A142117 (n + 1)

end A142117

/-! ## A142117.P6188438410079877397

`A000265(p?[A139609(A004442(n))+n])`
-/

namespace A142117.P6188438410079877397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 (A004442 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P6188438410079877397

namespace A142117

/-- `A000265(p?[A139609(A004442(n))+n])` -/
def P6188438410079877397.Spec : Prop :=
  ∀ n, P6188438410079877397.a n = A142117 (n + 1)

end A142117

/-! ## A142117.P6561294893048809392

`A001414(p?[A139609(A004442(n))+n])`
-/

namespace A142117.P6561294893048809392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 (A004442 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P6561294893048809392

namespace A142117

/-- `A001414(p?[A139609(A004442(n))+n])` -/
def P6561294893048809392.Spec : Prop :=
  ∀ n, P6561294893048809392.a n = A142117 (n + 1)

end A142117

/-! ## A142117.P1851761695618153542

`A007947(p?[A139609(A004442(n))+n])`
-/

namespace A142117.P1851761695618153542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 (A004442 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P1851761695618153542

namespace A142117

/-- `A007947(p?[A139609(A004442(n))+n])` -/
def P1851761695618153542.Spec : Prop :=
  ∀ n, P1851761695618153542.a n = A142117 (n + 1)

end A142117

/-! ## A142117.P4684615482743799733

`A000265(p?[A139279(n+1)-A008585(n)])`
-/

namespace A142117.P4684615482743799733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P4684615482743799733

namespace A142117

/-- `A000265(p?[A139279(n+1)-A008585(n)])` -/
def P4684615482743799733.Spec : Prop :=
  ∀ n, P4684615482743799733.a n = A142117 (n + 1)

end A142117

/-! ## A142117.P5373549759787570982

`A299149(p?[A144619(2*n)-n])`
-/

namespace A142117.P5373549759787570982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142117.P5373549759787570982

namespace A142117

/-- `A299149(p?[A144619(2*n)-n])` -/
def P5373549759787570982.Spec : Prop :=
  ∀ n, P5373549759787570982.a n = A142117 (n + 1)

end A142117

/-!
# A142118: Primes congruent to 9 mod 37.

The programs for A142118, the canonical program `A142118.P3005814989632638983` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142118 has offset 1).

The definition of A142118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142118.P3005814989632638983

`p?[37*n+9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142118

/-- `p?[37*n+9]` -/
def P3005814989632638983.Spec : Prop :=
  ∀ n, (P3005814989632638983.a n : ℤ) = A142118 (n + 1)

theorem P3005814989632638983.correct : P3005814989632638983.Spec := by
  intro n
  simp only [A142118, Nat.add_sub_cancel]

end A142118

/-! ## A142118.P12229472765685514548

`lcm(2, p?[A139609(n)+n])/2`
-/

namespace A142118.P12229472765685514548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 2

end

end A142118.P12229472765685514548

namespace A142118

/-- `lcm(2, p?[A139609(n)+n])/2` -/
def P12229472765685514548.Spec : Prop :=
  ∀ n, P12229472765685514548.a n = (A142118 (n + 1) : ℚ)

end A142118

/-! ## A142118.P12700015349250055343

`A000027(p?[A139609(n)+n])`
-/

namespace A142118.P12700015349250055343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142118.P12700015349250055343

namespace A142118

/-- `A000027(p?[A139609(n)+n])` -/
def P12700015349250055343.Spec : Prop :=
  ∀ n, P12700015349250055343.a n = A142118 (n + 1)

end A142118

/-! ## A142118.P10587311981699847246

`A000027(p?[A139249(n+1)+A017017(n)])`
-/

namespace A142118.P10587311981699847246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142118.P10587311981699847246

namespace A142118

/-- `A000027(p?[A139249(n+1)+A017017(n)])` -/
def P10587311981699847246.Spec : Prop :=
  ∀ n, P10587311981699847246.a n = A142118 (n + 1)

end A142118

/-! ## A142118.P6946870129636811486

`record[A020639(A146081(n)-27)]`
-/

namespace A142118.P6946870129636811486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - 27).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142118.P6946870129636811486

namespace A142118

/-- `record[A020639(A146081(n)-27)]` -/
def P6946870129636811486.Spec : Prop :=
  ∀ n, P6946870129636811486.a n = A142118 (n + 1)

end A142118

/-! ## A142118.P8740887338819753424

`record[p?[A007913(A146081(n))]]`
-/

namespace A142118.P8740887338819753424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A146081 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142118.P8740887338819753424

namespace A142118

/-- `record[p?[A007913(A146081(n))]]` -/
def P8740887338819753424.Spec : Prop :=
  ∀ n, P8740887338819753424.a n = A142118 (n + 1)

end A142118

/-! ## A142118.P11024613165364152233

`record[A006530(A146081(2*n+3))]`
-/

namespace A142118.P11024613165364152233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142118.P11024613165364152233

namespace A142118

/-- `record[A006530(A146081(2*n+3))]` -/
def P11024613165364152233.Spec : Prop :=
  ∀ n, P11024613165364152233.a n = A142118 (n + 1)

end A142118

/-!
# A142119: Primes congruent to 10 mod 37.

The programs for A142119, the canonical program `A142119.P4007358293938638831` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142119 has offset 1).

The definition of A142119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142119.P4007358293938638831

`p?[37*n+10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142119

/-- `p?[37*n+10]` -/
def P4007358293938638831.Spec : Prop :=
  ∀ n, (P4007358293938638831.a n : ℤ) = A142119 (n + 1)

theorem P4007358293938638831.correct : P4007358293938638831.Spec := by
  intro n
  simp only [A142119, Nat.add_sub_cancel]

end A142119

/-! ## A142119.P14225811800692067473

`A000027(p?[A139609(n)+1+n])`
-/

namespace A142119.P14225811800692067473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142119.P14225811800692067473

namespace A142119

/-- `A000027(p?[A139609(n)+1+n])` -/
def P14225811800692067473.Spec : Prop :=
  ∀ n, P14225811800692067473.a n = A142119 (n + 1)

end A142119

/-! ## A142119.P12974552217421379585

`p?[A139609(n)+1+n]%A017377(n)²`
-/

namespace A142119.P12974552217421379585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017377 n ^ 2)

end

end A142119.P12974552217421379585

namespace A142119

/-- `p?[A139609(n)+1+n]%A017377(n)²` -/
def P12974552217421379585.Spec : Prop :=
  ∀ n, P12974552217421379585.a n = A142119 (n + 1)

end A142119

/-! ## A142119.P4181858876248832137

`A000027(p?[A082286(n)+A001281(n)])`
-/

namespace A142119.P4181858876248832137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n + A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142119.P4181858876248832137

namespace A142119

/-- `A000027(p?[A082286(n)+A001281(n)])` -/
def P4181858876248832137.Spec : Prop :=
  ∀ n, P4181858876248832137.a n = A142119 (n + 1)

end A142119

/-! ## A142119.P1557951421895762232

`A198954(A053028(n+1))+p?[A139609(n)+1+n]`
-/

namespace A142119.P1557951421895762232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A053028 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142119.P1557951421895762232

namespace A142119

/-- `A198954(A053028(n+1))+p?[A139609(n)+1+n]` -/
def P1557951421895762232.Spec : Prop :=
  ∀ n, P1557951421895762232.a n = A142119 (n + 1)

end A142119

/-!
# A142120: Primes congruent to 11 mod 37.

The programs for A142120, the canonical program `A142120.P13542849916616082003` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142120 has offset 1).

The definition of A142120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142120.P13542849916616082003

`p?[74*n+11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142120

/-- `p?[74*n+11]` -/
def P13542849916616082003.Spec : Prop :=
  ∀ n, (P13542849916616082003.a n : ℤ) = A142120 (n + 1)

theorem P13542849916616082003.correct : P13542849916616082003.Spec := by
  intro n
  simp only [A142120, Nat.add_sub_cancel]

end A142120

/-! ## A142120.P3698878580519111219

`or(1, p?[A269100(n)+A008606(n)])`
-/

namespace A142120.P3698878580519111219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142120.P3698878580519111219

namespace A142120

/-- `or(1, p?[A269100(n)+A008606(n)])` -/
def P3698878580519111219.Spec : Prop :=
  ∀ n, P3698878580519111219.a n = A142120 (n + 1)

end A142120

/-! ## A142120.P6637248411149649845

`p?[A269100(n)+A008606(n)]%A096399(n+1)`
-/

namespace A142120.P6637248411149649845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A096399 (n + 1))

end

end A142120.P6637248411149649845

namespace A142120

/-- `p?[A269100(n)+A008606(n)]%A096399(n+1)` -/
def P6637248411149649845.Spec : Prop :=
  ∀ n, P6637248411149649845.a n = A142120 (n + 1)

end A142120

/-! ## A142120.P15698035987878631945

`record[A020639(74*n+11)]`
-/

namespace A142120.P15698035987878631945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (74 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142120.P15698035987878631945

namespace A142120

/-- `record[A020639(74*n+11)]` -/
def P15698035987878631945.Spec : Prop :=
  ∀ n, P15698035987878631945.a n = A142120 (n + 1)

end A142120

/-! ## A142120.P3560401990913213048

`A000265(p?[A154266(n)+A017281(n)-2])`
-/

namespace A142120.P3560401990913213048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017281 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142120.P3560401990913213048

namespace A142120

/-- `A000265(p?[A154266(n)+A017281(n)-2])` -/
def P3560401990913213048.Spec : Prop :=
  ∀ n, P3560401990913213048.a n = A142120 (n + 1)

end A142120

/-!
# A142121: Primes congruent to 12 mod 37.

The programs for A142121, the canonical program `A142121.P1153352495093081478` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142121 has offset 1).

The definition of A142121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142121.P1153352495093081478

`p?[37*n+12]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142121

/-- `p?[37*n+12]` -/
def P1153352495093081478.Spec : Prop :=
  ∀ n, (P1153352495093081478.a n : ℤ) = A142121 (n + 1)

theorem P1153352495093081478.correct : P1153352495093081478.Spec := by
  intro n
  simp only [A142121, Nat.add_sub_cancel]

end A142121

/-! ## A142121.P12705068337477347753

`A000027(p?[A139249(n+1)+A017053(n)])`
-/

namespace A142121.P12705068337477347753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142121.P12705068337477347753

namespace A142121

/-- `A000027(p?[A139249(n+1)+A017053(n)])` -/
def P12705068337477347753.Spec : Prop :=
  ∀ n, P12705068337477347753.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P4334401338942163475

`A000027(p?[A154266(n)+A017305(n)-3])`
-/

namespace A142121.P4334401338942163475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142121.P4334401338942163475

namespace A142121

/-- `A000027(p?[A154266(n)+A017305(n)-3])` -/
def P4334401338942163475.Spec : Prop :=
  ∀ n, P4334401338942163475.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P16312626549971968070

`A000038(n+1)+p?[A154266(n)+A017305(n)-3]`
-/

namespace A142121.P16312626549971968070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142121.P16312626549971968070

namespace A142121

/-- `A000038(n+1)+p?[A154266(n)+A017305(n)-3]` -/
def P16312626549971968070.Spec : Prop :=
  ∀ n, P16312626549971968070.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P14214704993997150804

`p?[A154266(n)+A017305(n)-3]%A168529(n+1)`
-/

namespace A142121.P14214704993997150804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A168529 (n + 1))

end

end A142121.P14214704993997150804

namespace A142121

/-- `p?[A154266(n)+A017305(n)-3]%A168529(n+1)` -/
def P14214704993997150804.Spec : Prop :=
  ∀ n, P14214704993997150804.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P242998813387404398

`A007947(p?[A139249(n+1)+A017053(n)])`
-/

namespace A142121.P242998813387404398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142121.P242998813387404398

namespace A142121

/-- `A007947(p?[A139249(n+1)+A017053(n)])` -/
def P242998813387404398.Spec : Prop :=
  ∀ n, P242998813387404398.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P5303159871382206575

`A000265(p?[A270296(n+1)+A017005(n)])`
-/

namespace A142121.P5303159871382206575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142121.P5303159871382206575

namespace A142121

/-- `A000265(p?[A270296(n+1)+A017005(n)])` -/
def P5303159871382206575.Spec : Prop :=
  ∀ n, P5303159871382206575.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P17825554387767698639

`A007947(p?[A154266(n)+A017305(n)-3])`
-/

namespace A142121.P17825554387767698639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142121.P17825554387767698639

namespace A142121

/-- `A007947(p?[A154266(n)+A017305(n)-3])` -/
def P17825554387767698639.Spec : Prop :=
  ∀ n, P17825554387767698639.a n = A142121 (n + 1)

end A142121

/-! ## A142121.P14568792365138049608

`∩[A169610(2*n+1)-A169610(n+2), A191027(n+2)]`
-/

namespace A142121.P14568792365138049608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1) - A169610 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142121.P14568792365138049608

namespace A142121

/-- `∩[A169610(2*n+1)-A169610(n+2), A191027(n+2)]` -/
def P14568792365138049608.Spec : Prop :=
  ∀ n, (P14568792365138049608.a n : ℤ) = A142121 (n + 1)

end A142121

/-! ## A142121.P2116558216718769454

`A299149(p?[A008607(n)-A002264(n+2)])`
-/

namespace A142121.P2116558216718769454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n - A002264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142121.P2116558216718769454

namespace A142121

/-- `A299149(p?[A008607(n)-A002264(n+2)])` -/
def P2116558216718769454.Spec : Prop :=
  ∀ n, P2116558216718769454.a n = A142121 (n + 1)

end A142121

/-!
# A142122: Primes congruent to 13 mod 37.

The programs for A142122, the canonical program `A142122.P16262793009237207886` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142122 has offset 1).

The definition of A142122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142122.P16262793009237207886

`p?[37*n+13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142122

/-- `p?[37*n+13]` -/
def P16262793009237207886.Spec : Prop :=
  ∀ n, (P16262793009237207886.a n : ℤ) = A142122 (n + 1)

theorem P16262793009237207886.correct : P16262793009237207886.Spec := by
  intro n
  simp only [A142122, Nat.add_sub_cancel]

end A142122

/-! ## A142122.P5391109214670517503

`A000027(p?[A146081(n)-97])`
-/

namespace A142122.P5391109214670517503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 97

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142122.P5391109214670517503

namespace A142122

/-- `A000027(p?[A146081(n)-97])` -/
def P5391109214670517503.Spec : Prop :=
  ∀ n, P5391109214670517503.a n = A142122 (n + 1)

end A142122

/-! ## A142122.P15886391730987383962

`A000027(p?[A154266(n)+A017281(n)])`
-/

namespace A142122.P15886391730987383962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142122.P15886391730987383962

namespace A142122

/-- `A000027(p?[A154266(n)+A017281(n)])` -/
def P15886391730987383962.Spec : Prop :=
  ∀ n, P15886391730987383962.a n = A142122 (n + 1)

end A142122

/-! ## A142122.P15670351095837181224

`record[A020639(A139608(n)+A017221(n))]`
-/

namespace A142122.P15670351095837181224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139608 n + A017221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142122.P15670351095837181224

namespace A142122

/-- `record[A020639(A139608(n)+A017221(n))]` -/
def P15670351095837181224.Spec : Prop :=
  ∀ n, P15670351095837181224.a n = A142122 (n + 1)

end A142122

/-! ## A142122.P7177190766307756228

`record[A020639(A154266(n)+A017281(n))]`
-/

namespace A142122.P7177190766307756228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154266 n + A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142122.P7177190766307756228

namespace A142122

/-- `record[A020639(A154266(n)+A017281(n))]` -/
def P7177190766307756228.Spec : Prop :=
  ∀ n, P7177190766307756228.a n = A142122 (n + 1)

end A142122

/-! ## A142122.P3343339572878943519

`record[A020639(A139613(n)-A008586(n))]`
-/

namespace A142122.P3343339572878943519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139613 n - A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142122.P3343339572878943519

namespace A142122

/-- `record[A020639(A139613(n)-A008586(n))]` -/
def P3343339572878943519.Spec : Prop :=
  ∀ n, P3343339572878943519.a n = A142122 (n + 1)

end A142122

/-!
# A142123: Primes congruent to 14 mod 37.

The programs for A142123, the canonical program `A142123.P17491403591963953120` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142123 has offset 1).

The definition of A142123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142123.P17491403591963953120

`p?[37*n+14]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142123

/-- `p?[37*n+14]` -/
def P17491403591963953120.Spec : Prop :=
  ∀ n, (P17491403591963953120.a n : ℤ) = A142123 (n + 1)

theorem P17491403591963953120.correct : P17491403591963953120.Spec := by
  intro n
  simp only [A142123, Nat.add_sub_cancel]

end A142123

/-! ## A142123.P12744520604748352353

`A000027(p?[A154266(n)+A017293(n)])`
-/

namespace A142123.P12744520604748352353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142123.P12744520604748352353

namespace A142123

/-- `A000027(p?[A154266(n)+A017293(n)])` -/
def P12744520604748352353.Spec : Prop :=
  ∀ n, P12744520604748352353.a n = A142123 (n + 1)

end A142123

/-! ## A142123.P4543767582613399735

`p?[A154266(n)+A017293(n)]%A000217(n+15)²`
-/

namespace A142123.P4543767582613399735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000217 (n + 15) ^ 2)

end

end A142123.P4543767582613399735

namespace A142123

/-- `p?[A154266(n)+A017293(n)]%A000217(n+15)²` -/
def P4543767582613399735.Spec : Prop :=
  ∀ n, P4543767582613399735.a n = A142123 (n + 1)

end A142123

/-! ## A142123.P17445484809406268136

`A001414(p?[A154266(n)+A017293(n)])`
-/

namespace A142123.P17445484809406268136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142123.P17445484809406268136

namespace A142123

/-- `A001414(p?[A154266(n)+A017293(n)])` -/
def P17445484809406268136.Spec : Prop :=
  ∀ n, P17445484809406268136.a n = A142123 (n + 1)

end A142123

/-! ## A142123.P4324792852426214048

`A008472(p?[A154266(n)+A017293(n)])`
-/

namespace A142123.P4324792852426214048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142123.P4324792852426214048

namespace A142123

/-- `A008472(p?[A154266(n)+A017293(n)])` -/
def P4324792852426214048.Spec : Prop :=
  ∀ n, P4324792852426214048.a n = A142123 (n + 1)

end A142123

/-! ## A142123.P10259042799006303119

`A299149(p?[A158060(n+1)-A002264(n)])`
-/

namespace A142123.P10259042799006303119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142123.P10259042799006303119

namespace A142123

/-- `A299149(p?[A158060(n+1)-A002264(n)])` -/
def P10259042799006303119.Spec : Prop :=
  ∀ n, P10259042799006303119.a n = A142123 (n + 1)

end A142123

/-! ## A142123.P11607489051579317282

`or(1, p?[A016789(A017569(n))+n])`
-/

namespace A142123.P11607489051579317282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A017569 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142123.P11607489051579317282

namespace A142123

/-- `or(1, p?[A016789(A017569(n))+n])` -/
def P11607489051579317282.Spec : Prop :=
  ∀ n, P11607489051579317282.a n = A142123 (n + 1)

end A142123

/-!
# A142124: Primes congruent to 15 mod 37.

The programs for A142124, the canonical program `A142124.P14320464731908662826` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142124 has offset 1).

The definition of A142124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142124.P14320464731908662826

`p?[37*n+15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142124

/-- `p?[37*n+15]` -/
def P14320464731908662826.Spec : Prop :=
  ∀ n, (P14320464731908662826.a n : ℤ) = A142124 (n + 1)

theorem P14320464731908662826.correct : P14320464731908662826.Spec := by
  intro n
  simp only [A142124, Nat.add_sub_cancel]

end A142124

/-! ## A142124.P15806620620178677261

`A000027(p?[A139612(n)+A017101(n)])`
-/

namespace A142124.P15806620620178677261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P15806620620178677261

namespace A142124

/-- `A000027(p?[A139612(n)+A017101(n)])` -/
def P15806620620178677261.Spec : Prop :=
  ∀ n, P15806620620178677261.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P12075000204555380908

`A000027(p?[A154266(n)+A017305(n)])`
-/

namespace A142124.P12075000204555380908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P12075000204555380908

namespace A142124

/-- `A000027(p?[A154266(n)+A017305(n)])` -/
def P12075000204555380908.Spec : Prop :=
  ∀ n, P12075000204555380908.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P10852062740965246236

`A000027(p?[A190991(n)+A142241(n)])`
-/

namespace A142124.P10852062740965246236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A142241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P10852062740965246236

namespace A142124

/-- `A000027(p?[A190991(n)+A142241(n)])` -/
def P10852062740965246236.Spec : Prop :=
  ∀ n, P10852062740965246236.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P7269947142282912777

`A000027(p?[A195140(n)+A125169(n)])`
-/

namespace A142124.P7269947142282912777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P7269947142282912777

namespace A142124

/-- `A000027(p?[A195140(n)+A125169(n)])` -/
def P7269947142282912777.Spec : Prop :=
  ∀ n, P7269947142282912777.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P12469833089146331413

`A000265(p?[A125169(n)+A008603(n)])`
-/

namespace A142124.P12469833089146331413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A008603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P12469833089146331413

namespace A142124

/-- `A000265(p?[A125169(n)+A008603(n)])` -/
def P12469833089146331413.Spec : Prop :=
  ∀ n, P12469833089146331413.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P7958038486454510020

`A001414(p?[A125169(n)+A008603(n)])`
-/

namespace A142124.P7958038486454510020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A008603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P7958038486454510020

namespace A142124

/-- `A001414(p?[A125169(n)+A008603(n)])` -/
def P7958038486454510020.Spec : Prop :=
  ∀ n, P7958038486454510020.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P15338529826778922295

`A001414(p?[A154266(n)+A017305(n)])`
-/

namespace A142124.P15338529826778922295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P15338529826778922295

namespace A142124

/-- `A001414(p?[A154266(n)+A017305(n)])` -/
def P15338529826778922295.Spec : Prop :=
  ∀ n, P15338529826778922295.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P2722062168894273579

`A008472(p?[A154266(n)+A017305(n)])`
-/

namespace A142124.P2722062168894273579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P2722062168894273579

namespace A142124

/-- `A008472(p?[A154266(n)+A017305(n)])` -/
def P2722062168894273579.Spec : Prop :=
  ∀ n, P2722062168894273579.a n = A142124 (n + 1)

end A142124

/-! ## A142124.P1586112314566835995

`A318456(p?[A139612(n)+A017101(n)])`
-/

namespace A142124.P1586112314566835995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142124.P1586112314566835995

namespace A142124

/-- `A318456(p?[A139612(n)+A017101(n)])` -/
def P1586112314566835995.Spec : Prop :=
  ∀ n, P1586112314566835995.a n = A142124 (n + 1)

end A142124

/-!
# A142125: Primes congruent to 16 mod 37.

The programs for A142125, the canonical program `A142125.P12634931141477539271` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142125 has offset 1).

The definition of A142125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142125.P12634931141477539271

`p?[37*n+16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142125

/-- `p?[37*n+16]` -/
def P12634931141477539271.Spec : Prop :=
  ∀ n, (P12634931141477539271.a n : ℤ) = A142125 (n + 1)

theorem P12634931141477539271.correct : P12634931141477539271.Spec := by
  intro n
  simp only [A142125, Nat.add_sub_cancel]

end A142125

/-! ## A142125.P10923673963399026132

`or(1, p?[a(n-1)+37])` with `a(0)=16`
-/

namespace A142125.P10923673963399026132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142125.P10923673963399026132

namespace A142125

/-- `or(1, p?[a(n-1)+37])` -/
def P10923673963399026132.Spec : Prop :=
  ∀ n, (P10923673963399026132.a n : ℤ) = A142125 (n + 1)

end A142125

/-! ## A142125.P10706809313324324265

`record[A006530(2*A144619(n+1)-(n+1))]`
-/

namespace A142125.P10706809313324324265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A144619 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142125.P10706809313324324265

namespace A142125

/-- `record[A006530(2*A144619(n+1)-(n+1))]` -/
def P10706809313324324265.Spec : Prop :=
  ∀ n, P10706809313324324265.a n = A142125 (n + 1)

end A142125

/-! ## A142125.P809326490225286385

`record[A006530(A082369(n+2)+A017017(n+1))]`
-/

namespace A142125.P809326490225286385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 2) + A017017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142125.P809326490225286385

namespace A142125

/-- `record[A006530(A082369(n+2)+A017017(n+1))]` -/
def P809326490225286385.Spec : Prop :=
  ∀ n, P809326490225286385.a n = A142125 (n + 1)

end A142125

/-! ## A142125.P2385723529997949445

`record[A006530(A146081(n)-4)]`
-/

namespace A142125.P2385723529997949445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142125.P2385723529997949445

namespace A142125

/-- `record[A006530(A146081(n)-4)]` -/
def P2385723529997949445.Spec : Prop :=
  ∀ n, P2385723529997949445.a n = A142125 (n + 1)

end A142125

/-!
# A142126: Primes congruent to 17 mod 37.

The programs for A142126, the canonical program `A142126.P10049760971859399161` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142126 has offset 1).

The definition of A142126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142126.P10049760971859399161

`p?[37*n+17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142126

/-- `p?[37*n+17]` -/
def P10049760971859399161.Spec : Prop :=
  ∀ n, (P10049760971859399161.a n : ℤ) = A142126 (n + 1)

theorem P10049760971859399161.correct : P10049760971859399161.Spec := by
  intro n
  simp only [A142126, Nat.add_sub_cancel]

end A142126

/-! ## A142126.P1807669686863603183

`or(1, p?[a(n-1)+37])` with `a(0)=17`
-/

namespace A142126.P1807669686863603183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142126.P1807669686863603183

namespace A142126

/-- `or(1, p?[a(n-1)+37])` -/
def P1807669686863603183.Spec : Prop :=
  ∀ n, (P1807669686863603183.a n : ℤ) = A142126 (n + 1)

end A142126

/-! ## A142126.P17071330985891124552

`p?[A082369(n+1)+A017029(n)]%A014575(n+1)`
-/

namespace A142126.P17071330985891124552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014575 (n + 1))

end

end A142126.P17071330985891124552

namespace A142126

/-- `p?[A082369(n+1)+A017029(n)]%A014575(n+1)` -/
def P17071330985891124552.Spec : Prop :=
  ∀ n, P17071330985891124552.a n = A142126 (n + 1)

end A142126

/-! ## A142126.P7476353171183502073

`∩[A239129(2*n+1)+n, A004139(n+2)]`
-/

namespace A142126.P7476353171183502073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142126.P7476353171183502073

namespace A142126

/-- `∩[A239129(2*n+1)+n, A004139(n+2)]` -/
def P7476353171183502073.Spec : Prop :=
  ∀ n, (P7476353171183502073.a n : ℤ) = A142126 (n + 1)

end A142126

/-! ## A142126.P3483078525028253237

`∩[A239129(2*n+1)+n, A157996(n+2)]`
-/

namespace A142126.P3483078525028253237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142126.P3483078525028253237

namespace A142126

/-- `∩[A239129(2*n+1)+n, A157996(n+2)]` -/
def P3483078525028253237.Spec : Prop :=
  ∀ n, (P3483078525028253237.a n : ℤ) = A142126 (n + 1)

end A142126

/-! ## A142126.P15024323339169380329

`record[A020639(37*n+17)]`
-/

namespace A142126.P15024323339169380329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142126.P15024323339169380329

namespace A142126

/-- `record[A020639(37*n+17)]` -/
def P15024323339169380329.Spec : Prop :=
  ∀ n, P15024323339169380329.a n = A142126 (n + 1)

end A142126

/-! ## A142126.P8185160324312123279

`A007913(p?[A082369(n+1)+A017029(n)])`
-/

namespace A142126.P8185160324312123279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142126.P8185160324312123279

namespace A142126

/-- `A007913(p?[A082369(n+1)+A017029(n)])` -/
def P8185160324312123279.Spec : Prop :=
  ∀ n, P8185160324312123279.a n = A142126 (n + 1)

end A142126

/-! ## A142126.P12366403333237149323

`A106610(p?[A082369(n+1)+A017029(n)])`
-/

namespace A142126.P12366403333237149323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142126.P12366403333237149323

namespace A142126

/-- `A106610(p?[A082369(n+1)+A017029(n)])` -/
def P12366403333237149323.Spec : Prop :=
  ∀ n, P12366403333237149323.a n = A142126 (n + 1)

end A142126

/-!
# A142127: Primes congruent to 18 mod 37.

The programs for A142127, the canonical program `A142127.P18163112966649201267` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142127 has offset 1).

The definition of A142127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142127.P18163112966649201267

`p?[37*n+18]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142127

/-- `p?[37*n+18]` -/
def P18163112966649201267.Spec : Prop :=
  ∀ n, (P18163112966649201267.a n : ℤ) = A142127 (n + 1)

theorem P18163112966649201267.correct : P18163112966649201267.Spec := by
  intro n
  simp only [A142127, Nat.add_sub_cancel]

end A142127

/-! ## A142127.P13339446948964649990

`A000027(p?[A139607(n)+A106839(n)])`
-/

namespace A142127.P13339446948964649990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142127.P13339446948964649990

namespace A142127

/-- `A000027(p?[A139607(n)+A106839(n)])` -/
def P13339446948964649990.Spec : Prop :=
  ∀ n, P13339446948964649990.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P3160340258628891445

`A000265(p?[A154266(n)+A017341(n)])`
-/

namespace A142127.P3160340258628891445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142127.P3160340258628891445

namespace A142127

/-- `A000265(p?[A154266(n)+A017341(n)])` -/
def P3160340258628891445.Spec : Prop :=
  ∀ n, P3160340258628891445.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P2850946499841987051

`A007913(p?[A154266(n)+A017341(n)])`
-/

namespace A142127.P2850946499841987051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142127.P2850946499841987051

namespace A142127

/-- `A007913(p?[A154266(n)+A017341(n)])` -/
def P2850946499841987051.Spec : Prop :=
  ∀ n, P2850946499841987051.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P5061192287033100969

`record[A006530(A146081(n+6))]`
-/

namespace A142127.P5061192287033100969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142127.P5061192287033100969

namespace A142127

/-- `record[A006530(A146081(n+6))]` -/
def P5061192287033100969.Spec : Prop :=
  ∀ n, P5061192287033100969.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P13785387374438950887

`or(1, p?[A014682(A146081(n))])`
-/

namespace A142127.P13785387374438950887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142127.P13785387374438950887

namespace A142127

/-- `or(1, p?[A014682(A146081(n))])` -/
def P13785387374438950887.Spec : Prop :=
  ∀ n, P13785387374438950887.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P11878020336850996928

`A000027(p?[A014682(A146081(n))])`
-/

namespace A142127.P11878020336850996928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142127.P11878020336850996928

namespace A142127

/-- `A000027(p?[A014682(A146081(n))])` -/
def P11878020336850996928.Spec : Prop :=
  ∀ n, P11878020336850996928.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P7958519169892117433

`A000265(p?[A014682(A146081(n))])`
-/

namespace A142127.P7958519169892117433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142127.P7958519169892117433

namespace A142127

/-- `A000265(p?[A014682(A146081(n))])` -/
def P7958519169892117433.Spec : Prop :=
  ∀ n, P7958519169892117433.a n = A142127 (n + 1)

end A142127

/-! ## A142127.P14515374468745726740

`A007913(p?[A014682(A146081(n))])`
-/

namespace A142127.P14515374468745726740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142127.P14515374468745726740

namespace A142127

/-- `A007913(p?[A014682(A146081(n))])` -/
def P14515374468745726740.Spec : Prop :=
  ∀ n, P14515374468745726740.a n = A142127 (n + 1)

end A142127

/-!
# A142128: Primes congruent to 19 mod 37.

The programs for A142128, the canonical program `A142128.P11688080063808048965` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142128 has offset 1).

The definition of A142128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142128.P11688080063808048965

`p?[a(n-1)+37]` with `a(0)=19`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142128

/-- `p?[a(n-1)+37]` -/
def P11688080063808048965.Spec : Prop :=
  ∀ n, (P11688080063808048965.a n : ℤ) = A142128 (n + 1)

theorem P11688080063808048965.correct : P11688080063808048965.Spec := by
  intro n
  simp only [A142128, Nat.add_sub_cancel]

end A142128

/-! ## A142128.P8895286427193287190

`p?[38*n+19-n]`
-/

namespace A142128.P8895286427193287190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (38 * n : ℤ) + (19 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142128.P8895286427193287190

namespace A142128

/-- `p?[38*n+19-n]` -/
def P8895286427193287190.Spec : Prop :=
  ∀ n, P8895286427193287190.a n = A142128 (n + 1)

end A142128

/-! ## A142128.P10879421439385961341

`xor(1, p?[Δ[19*n²]-n]-1)`
-/

namespace A142128.P10879421439385961341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A142128.P10879421439385961341

namespace A142128

/-- `xor(1, p?[Δ[19*n²]-n]-1)` -/
def P10879421439385961341.Spec : Prop :=
  ∀ n, P10879421439385961341.a n = A142128 (n + 1)

end A142128

/-! ## A142128.P11817821468807830435

`record[A020639(37*(n+1)-18)]`
-/

namespace A142128.P11817821468807830435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * (n + 1) - 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142128.P11817821468807830435

namespace A142128

/-- `record[A020639(37*(n+1)-18)]` -/
def P11817821468807830435.Spec : Prop :=
  ∀ n, P11817821468807830435.a n = A142128 (n + 1)

end A142128

/-! ## A142128.P8496202238360165492

`record[A014963(A139609(n)+10+n)]`
-/

namespace A142128.P8496202238360165492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A139609 n + 10 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142128.P8496202238360165492

namespace A142128

/-- `record[A014963(A139609(n)+10+n)]` -/
def P8496202238360165492.Spec : Prop :=
  ∀ n, P8496202238360165492.a n = A142128 (n + 1)

end A142128

/-!
# A142129: Primes congruent to 20 mod 37.

The programs for A142129, the canonical program `A142129.P5453870921160751379` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142129 has offset 1).

The definition of A142129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142129.P5453870921160751379

`p?[37*n-17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142129

/-- `p?[37*n-17]` -/
def P5453870921160751379.Spec : Prop :=
  ∀ n, P5453870921160751379.a n = A142129 (n + 1)

theorem P5453870921160751379.correct : P5453870921160751379.Spec := by
  intro n
  simp only [A142129, Nat.add_sub_cancel]

end A142129

/-! ## A142129.P1236646375990704162

`p?[A124388(n)+A017293(n)]*A057979(2*n)`
-/

namespace A142129.P1236646375990704162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057979 (2 * n)

end

end A142129.P1236646375990704162

namespace A142129

/-- `p?[A124388(n)+A017293(n)]*A057979(2*n)` -/
def P1236646375990704162.Spec : Prop :=
  ∀ n, P1236646375990704162.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P12912811663982899204

`A309873(n+1)²*p?[A124388(n)+A017293(n)]`
-/

namespace A142129.P12912811663982899204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142129.P12912811663982899204

namespace A142129

/-- `A309873(n+1)²*p?[A124388(n)+A017293(n)]` -/
def P12912811663982899204.Spec : Prop :=
  ∀ n, P12912811663982899204.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P6785518545827476822

`A000265(p?[A017185(3*n+5)+10*(n+1)])`
-/

namespace A142129.P6785518545827476822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (3 * n + 5) + (10 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P6785518545827476822

namespace A142129

/-- `A000265(p?[A017185(3*n+5)+10*(n+1)])` -/
def P6785518545827476822.Spec : Prop :=
  ∀ n, P6785518545827476822.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P4648912006594009047

`A000265(p?[A124388(n)+A017293(n)])`
-/

namespace A142129.P4648912006594009047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P4648912006594009047

namespace A142129

/-- `A000265(p?[A124388(n)+A017293(n)])` -/
def P4648912006594009047.Spec : Prop :=
  ∀ n, P4648912006594009047.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P3980866979592443294

`A001414(p?[A124388(n)+A017293(n)])`
-/

namespace A142129.P3980866979592443294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P3980866979592443294

namespace A142129

/-- `A001414(p?[A124388(n)+A017293(n)])` -/
def P3980866979592443294.Spec : Prop :=
  ∀ n, P3980866979592443294.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P5789043569341770637

`A007947(p?[A124388(n)+A017293(n)])`
-/

namespace A142129.P5789043569341770637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P5789043569341770637

namespace A142129

/-- `A007947(p?[A124388(n)+A017293(n)])` -/
def P5789043569341770637.Spec : Prop :=
  ∀ n, P5789043569341770637.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P1551435259457786813

`A007947(p?[A156376(n)+A016993(n)])`
-/

namespace A142129.P1551435259457786813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P1551435259457786813

namespace A142129

/-- `A007947(p?[A156376(n)+A016993(n)])` -/
def P1551435259457786813.Spec : Prop :=
  ∀ n, P1551435259457786813.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P10794217740559954319

`A007913(p?[A017185(4*n+2)+n])`
-/

namespace A142129.P10794217740559954319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (4 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P10794217740559954319

namespace A142129

/-- `A007913(p?[A017185(4*n+2)+n])` -/
def P10794217740559954319.Spec : Prop :=
  ∀ n, P10794217740559954319.a n = A142129 (n + 1)

end A142129

/-! ## A142129.P3643426034968122084

`A006530(2*p?[A124388(n)+A017293(n)])`
-/

namespace A142129.P3643426034968122084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142129.P3643426034968122084

namespace A142129

/-- `A006530(2*p?[A124388(n)+A017293(n)])` -/
def P3643426034968122084.Spec : Prop :=
  ∀ n, P3643426034968122084.a n = A142129 (n + 1)

end A142129

/-!
# A142130: Primes congruent to 21 mod 37.

The programs for A142130, the canonical program `A142130.P14951807227969313191` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142130 has offset 1).

The definition of A142130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142130.P14951807227969313191

`p?[37*n-16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142130

/-- `p?[37*n-16]` -/
def P14951807227969313191.Spec : Prop :=
  ∀ n, P14951807227969313191.a n = A142130 (n + 1)

theorem P14951807227969313191.correct : P14951807227969313191.Spec := by
  intro n
  simp only [A142130, Nat.add_sub_cancel]

end A142130

/-! ## A142130.P2932842768290449356

`A000027(p?[A139612(n)+A004768(n)])`
-/

namespace A142130.P2932842768290449356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P2932842768290449356

namespace A142130

/-- `A000027(p?[A139612(n)+A004768(n)])` -/
def P2932842768290449356.Spec : Prop :=
  ∀ n, P2932842768290449356.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P10835789707615626254

`A000027(p?[A304611(n+1)-A156795(n+1)])`
-/

namespace A142130.P10835789707615626254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304611 (n + 1) - A156795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P10835789707615626254

namespace A142130

/-- `A000027(p?[A304611(n+1)-A156795(n+1)])` -/
def P10835789707615626254.Spec : Prop :=
  ∀ n, P10835789707615626254.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P1325673482963770341

`A000027(p?[A154266(n)+A017377(n)])`
-/

namespace A142130.P1325673482963770341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P1325673482963770341

namespace A142130

/-- `A000027(p?[A154266(n)+A017377(n)])` -/
def P1325673482963770341.Spec : Prop :=
  ∀ n, P1325673482963770341.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P2356527741000489356

`A000265(p?[A154266(n)+A017377(n)])`
-/

namespace A142130.P2356527741000489356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P2356527741000489356

namespace A142130

/-- `A000265(p?[A154266(n)+A017377(n)])` -/
def P2356527741000489356.Spec : Prop :=
  ∀ n, P2356527741000489356.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P8221311515307296180

`A007913(p?[A154266(n)+A017377(n)])`
-/

namespace A142130.P8221311515307296180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P8221311515307296180

namespace A142130

/-- `A007913(p?[A154266(n)+A017377(n)])` -/
def P8221311515307296180.Spec : Prop :=
  ∀ n, P8221311515307296180.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P5091515097297204446

`A007947(p?[A154266(n)+A017377(n)])`
-/

namespace A142130.P5091515097297204446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P5091515097297204446

namespace A142130

/-- `A007947(p?[A154266(n)+A017377(n)])` -/
def P5091515097297204446.Spec : Prop :=
  ∀ n, P5091515097297204446.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P6359414675002260299

`A007913(p?[A269044(n)+A142241(n)])`
-/

namespace A142130.P6359414675002260299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A142241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P6359414675002260299

namespace A142130

/-- `A007913(p?[A269044(n)+A142241(n)])` -/
def P6359414675002260299.Spec : Prop :=
  ∀ n, P6359414675002260299.a n = A142130 (n + 1)

end A142130

/-! ## A142130.P5352466581182007415

`A000265(p?[A306771(2*n+3)+A004525(n)])`
-/

namespace A142130.P5352466581182007415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (2 * n + 3) + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142130.P5352466581182007415

namespace A142130

/-- `A000265(p?[A306771(2*n+3)+A004525(n)])` -/
def P5352466581182007415.Spec : Prop :=
  ∀ n, P5352466581182007415.a n = A142130 (n + 1)

end A142130

/-!
# A142131: Primes congruent to 22 mod 37.

The programs for A142131, the canonical program `A142131.P9998329005519566841` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142131 has offset 1).

The definition of A142131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142131.P9998329005519566841

`p?[37*n-15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142131

/-- `p?[37*n-15]` -/
def P9998329005519566841.Spec : Prop :=
  ∀ n, P9998329005519566841.a n = A142131 (n + 1)

theorem P9998329005519566841.correct : P9998329005519566841.Spec := by
  intro n
  simp only [A142131, Nat.add_sub_cancel]

end A142131

/-! ## A142131.P6560850391796572724

`A000027(p?[A156376(n)+A017017(n)])`
-/

namespace A142131.P6560850391796572724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142131.P6560850391796572724

namespace A142131

/-- `A000027(p?[A156376(n)+A017017(n)])` -/
def P6560850391796572724.Spec : Prop :=
  ∀ n, P6560850391796572724.a n = A142131 (n + 1)

end A142131

/-! ## A142131.P3772760521851760468

`A000265(p?[A156376(n)+A017017(n)])`
-/

namespace A142131.P3772760521851760468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142131.P3772760521851760468

namespace A142131

/-- `A000265(p?[A156376(n)+A017017(n)])` -/
def P3772760521851760468.Spec : Prop :=
  ∀ n, P3772760521851760468.a n = A142131 (n + 1)

end A142131

/-! ## A142131.P4738613515369069702

`A000265(p?[A139607(n)+A125169(n)])`
-/

namespace A142131.P4738613515369069702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142131.P4738613515369069702

namespace A142131

/-- `A000265(p?[A139607(n)+A125169(n)])` -/
def P4738613515369069702.Spec : Prop :=
  ∀ n, P4738613515369069702.a n = A142131 (n + 1)

end A142131

/-! ## A142131.P4142057203509327900

`A001414(p?[A139607(n)+A125169(n)])`
-/

namespace A142131.P4142057203509327900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142131.P4142057203509327900

namespace A142131

/-- `A001414(p?[A139607(n)+A125169(n)])` -/
def P4142057203509327900.Spec : Prop :=
  ∀ n, P4142057203509327900.a n = A142131 (n + 1)

end A142131

/-! ## A142131.P11366599894206661426

`A007947(p?[A139607(n)+A125169(n)])`
-/

namespace A142131.P11366599894206661426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142131.P11366599894206661426

namespace A142131

/-- `A007947(p?[A139607(n)+A125169(n)])` -/
def P11366599894206661426.Spec : Prop :=
  ∀ n, P11366599894206661426.a n = A142131 (n + 1)

end A142131

/-! ## A142131.P1506132703912477639

`record[A020639(A185452(2*n+5)+A017137(4*n+5))]`
-/

namespace A142131.P1506132703912477639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185452 (2 * n + 5) + A017137 (4 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142131.P1506132703912477639

namespace A142131

/-- `record[A020639(A185452(2*n+5)+A017137(4*n+5))]` -/
def P1506132703912477639.Spec : Prop :=
  ∀ n, P1506132703912477639.a n = A142131 (n + 1)

end A142131

/-!
# A142132: Primes congruent to 23 mod 37.

The programs for A142132, the canonical program `A142132.P2584337457914182453` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142132 has offset 1).

The definition of A142132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142132.P2584337457914182453

`p?[37*n-14]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142132

/-- `p?[37*n-14]` -/
def P2584337457914182453.Spec : Prop :=
  ∀ n, P2584337457914182453.a n = A142132 (n + 1)

theorem P2584337457914182453.correct : P2584337457914182453.Spec := by
  intro n
  simp only [A142132, Nat.add_sub_cancel]

end A142132

/-! ## A142132.P17066670654866226456

`∑{p}[p?[37*n+23], #]`
-/

namespace A142132.P17066670654866226456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142132.P17066670654866226456

namespace A142132

/-- `∑{p}[p?[37*n+23], #]` -/
def P17066670654866226456.Spec : Prop :=
  ∀ n, (P17066670654866226456.a n : ℤ) = A142132 (n + 1)

end A142132

/-! ## A142132.P3259218461692229485

`p?[37*n+23]%A016948(n)`
-/

namespace A142132.P3259218461692229485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A016948 n)

end

end A142132.P3259218461692229485

namespace A142132

/-- `p?[37*n+23]%A016948(n)` -/
def P3259218461692229485.Spec : Prop :=
  ∀ n, P3259218461692229485.a n = A142132 (n + 1)

end A142132

/-! ## A142132.P2821988027448640544

`A000027(p?[37*n+23])`
-/

namespace A142132.P2821988027448640544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142132.P2821988027448640544

namespace A142132

/-- `A000027(p?[37*n+23])` -/
def P2821988027448640544.Spec : Prop :=
  ∀ n, P2821988027448640544.a n = A142132 (n + 1)

end A142132

/-! ## A142132.P6260521756606470990

`∩[A242215(2*n+1)+n, A006005(n+2)]`
-/

namespace A142132.P6260521756606470990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142132.P6260521756606470990

namespace A142132

/-- `∩[A242215(2*n+1)+n, A006005(n+2)]` -/
def P6260521756606470990.Spec : Prop :=
  ∀ n, (P6260521756606470990.a n : ℤ) = A142132 (n + 1)

end A142132

/-! ## A142132.P11101112956599736144

`∩[A242215(2*n+1)+n, A033946(n+2)]`
-/

namespace A142132.P11101112956599736144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142132.P11101112956599736144

namespace A142132

/-- `∩[A242215(2*n+1)+n, A033946(n+2)]` -/
def P11101112956599736144.Spec : Prop :=
  ∀ n, (P11101112956599736144.a n : ℤ) = A142132 (n + 1)

end A142132

/-! ## A142132.P5170454952547352315

`record[A020639(37*n+23)]`
-/

namespace A142132.P5170454952547352315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142132.P5170454952547352315

namespace A142132

/-- `record[A020639(37*n+23)]` -/
def P5170454952547352315.Spec : Prop :=
  ∀ n, P5170454952547352315.a n = A142132 (n + 1)

end A142132

/-!
# A142133: Primes congruent to 24 mod 37.

The programs for A142133, the canonical program `A142133.P3400429704081329010` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142133 has offset 1).

The definition of A142133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142133.P3400429704081329010

`p?[37*n-13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142133

/-- `p?[37*n-13]` -/
def P3400429704081329010.Spec : Prop :=
  ∀ n, P3400429704081329010.a n = A142133 (n + 1)

theorem P3400429704081329010.correct : P3400429704081329010.Spec := by
  intro n
  simp only [A142133, Nat.add_sub_cancel]

end A142133

/-! ## A142133.P10646451529937563624

`A000027(p?[A124388(n)+A017341(n)])`
-/

namespace A142133.P10646451529937563624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142133.P10646451529937563624

namespace A142133

/-- `A000027(p?[A124388(n)+A017341(n)])` -/
def P10646451529937563624.Spec : Prop :=
  ∀ n, P10646451529937563624.a n = A142133 (n + 1)

end A142133

/-! ## A142133.P3220972336563611989

`A000027(p?[A053742(n)-A190991(n)])`
-/

namespace A142133.P3220972336563611989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142133.P3220972336563611989

namespace A142133

/-- `A000027(p?[A053742(n)-A190991(n)])` -/
def P3220972336563611989.Spec : Prop :=
  ∀ n, P3220972336563611989.a n = A142133 (n + 1)

end A142133

/-! ## A142133.P2737030420232541948

`record[A006530(37*(n+1)+24)]`
-/

namespace A142133.P2737030420232541948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (37 * (n + 1) + 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142133.P2737030420232541948

namespace A142133

/-- `record[A006530(37*(n+1)+24)]` -/
def P2737030420232541948.Spec : Prop :=
  ∀ n, P2737030420232541948.a n = A142133 (n + 1)

end A142133

/-! ## A142133.P17969484249057916615

`A007913(p?[A124388(n)+A017341(n)])`
-/

namespace A142133.P17969484249057916615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142133.P17969484249057916615

namespace A142133

/-- `A007913(p?[A124388(n)+A017341(n)])` -/
def P17969484249057916615.Spec : Prop :=
  ∀ n, P17969484249057916615.a n = A142133 (n + 1)

end A142133

/-! ## A142133.P4204228285022249070

`A000027(p?[A004770(4*n+3)+5*n+3])`
-/

namespace A142133.P4204228285022249070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (4 * n + 3) + (5 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142133.P4204228285022249070

namespace A142133

/-- `A000027(p?[A004770(4*n+3)+5*n+3])` -/
def P4204228285022249070.Spec : Prop :=
  ∀ n, P4204228285022249070.a n = A142133 (n + 1)

end A142133

/-!
# A142134: Primes congruent to 25 mod 37.

The programs for A142134, the canonical program `A142134.P4536532517590107191` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142134 has offset 1).

The definition of A142134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142134.P4536532517590107191

`p?[37*n-12]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142134

/-- `p?[37*n-12]` -/
def P4536532517590107191.Spec : Prop :=
  ∀ n, P4536532517590107191.a n = A142134 (n + 1)

theorem P4536532517590107191.correct : P4536532517590107191.Spec := by
  intro n
  simp only [A142134, Nat.add_sub_cancel]

end A142134

/-! ## A142134.P17719817667604657261

`A000027(p?[A270296(n+1)+A017041(n)])`
-/

namespace A142134.P17719817667604657261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P17719817667604657261

namespace A142134

/-- `A000027(p?[A270296(n+1)+A017041(n)])` -/
def P17719817667604657261.Spec : Prop :=
  ∀ n, P17719817667604657261.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P15228781189879831051

`record[A020639(A146081(n)+63)]`
-/

namespace A142134.P15228781189879831051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n + 63).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142134.P15228781189879831051

namespace A142134

/-- `record[A020639(A146081(n)+63)]` -/
def P15228781189879831051.Spec : Prop :=
  ∀ n, P15228781189879831051.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P9271400226362559897

`A007947(p?[A124388(n)+A017353(n)])`
-/

namespace A142134.P9271400226362559897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P9271400226362559897

namespace A142134

/-- `A007947(p?[A124388(n)+A017353(n)])` -/
def P9271400226362559897.Spec : Prop :=
  ∀ n, P9271400226362559897.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P980802161465619077

`A000265(p?[A128473(n+1)+A017005(n)])`
-/

namespace A142134.P980802161465619077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P980802161465619077

namespace A142134

/-- `A000265(p?[A128473(n+1)+A017005(n)])` -/
def P980802161465619077.Spec : Prop :=
  ∀ n, P980802161465619077.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P18228334068930112763

`∩[A169610(2*(n+1))-A169610(n+2), A191027(n+2)]`
-/

namespace A142134.P18228334068930112763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1)) - A169610 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142134.P18228334068930112763

namespace A142134

/-- `∩[A169610(2*(n+1))-A169610(n+2), A191027(n+2)]` -/
def P18228334068930112763.Spec : Prop :=
  ∀ n, (P18228334068930112763.a n : ℤ) = A142134 (n + 1)

end A142134

/-! ## A142134.P16500715226872635729

`A125746(p?[A124388(n)+A017353(n)])`
-/

namespace A142134.P16500715226872635729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P16500715226872635729

namespace A142134

/-- `A125746(p?[A124388(n)+A017353(n)])` -/
def P16500715226872635729.Spec : Prop :=
  ∀ n, P16500715226872635729.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P3570451160863870473

`A299149(p?[A008607(n)-A002264(n)])`
-/

namespace A142134.P3570451160863870473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P3570451160863870473

namespace A142134

/-- `A299149(p?[A008607(n)-A002264(n)])` -/
def P3570451160863870473.Spec : Prop :=
  ∀ n, P3570451160863870473.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P5569224526984397848

`A125746(p?[5*A017041(n)+1+A004273(n)])`
-/

namespace A142134.P5569224526984397848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017041 n + 1 + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P5569224526984397848

namespace A142134

/-- `A125746(p?[5*A017041(n)+1+A004273(n)])` -/
def P5569224526984397848.Spec : Prop :=
  ∀ n, P5569224526984397848.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P10099878259080410576

`A006530(2*p?[A124388(n)+A017353(n)])`
-/

namespace A142134.P10099878259080410576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P10099878259080410576

namespace A142134

/-- `A006530(2*p?[A124388(n)+A017353(n)])` -/
def P10099878259080410576.Spec : Prop :=
  ∀ n, P10099878259080410576.a n = A142134 (n + 1)

end A142134

/-! ## A142134.P1116456489645611804

`A093411(p?[A124388(n)+A017353(n)])`
-/

namespace A142134.P1116456489645611804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142134.P1116456489645611804

namespace A142134

/-- `A093411(p?[A124388(n)+A017353(n)])` -/
def P1116456489645611804.Spec : Prop :=
  ∀ n, P1116456489645611804.a n = A142134 (n + 1)

end A142134

/-!
# A142135: Primes congruent to 26 mod 37.

The programs for A142135, the canonical program `A142135.P10852249460790911615` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142135 has offset 1).

The definition of A142135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142135.P10852249460790911615

`p?[74*n-11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142135

/-- `p?[74*n-11]` -/
def P10852249460790911615.Spec : Prop :=
  ∀ n, P10852249460790911615.a n = A142135 (n + 1)

theorem P10852249460790911615.correct : P10852249460790911615.Spec := by
  intro n
  simp only [A142135, Nat.add_sub_cancel]

end A142135

/-! ## A142135.P17732909047865395079

`A000027(p?[A124388(n)+A017365(n)])`
-/

namespace A142135.P17732909047865395079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142135.P17732909047865395079

namespace A142135

/-- `A000027(p?[A124388(n)+A017365(n)])` -/
def P17732909047865395079.Spec : Prop :=
  ∀ n, P17732909047865395079.a n = A142135 (n + 1)

end A142135

/-! ## A142135.P7313567825593452081

`A000265(p?[A124388(n)+A017365(n)])`
-/

namespace A142135.P7313567825593452081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142135.P7313567825593452081

namespace A142135

/-- `A000265(p?[A124388(n)+A017365(n)])` -/
def P7313567825593452081.Spec : Prop :=
  ∀ n, P7313567825593452081.a n = A142135 (n + 1)

end A142135

/-! ## A142135.P2571126505729607870

`A000265(p?[A142241(n)+A004523(n)])`
-/

namespace A142135.P2571126505729607870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 n + A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142135.P2571126505729607870

namespace A142135

/-- `A000265(p?[A142241(n)+A004523(n)])` -/
def P2571126505729607870.Spec : Prop :=
  ∀ n, P2571126505729607870.a n = A142135 (n + 1)

end A142135

/-! ## A142135.P409747901403474000

`A007913(p?[A128473(n+1)+A017017(n)])`
-/

namespace A142135.P409747901403474000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142135.P409747901403474000

namespace A142135

/-- `A007913(p?[A128473(n+1)+A017017(n)])` -/
def P409747901403474000.Spec : Prop :=
  ∀ n, P409747901403474000.a n = A142135 (n + 1)

end A142135

/-! ## A142135.P15664664704819187297

`A325351(p?[A174029(n)+A016885(n)])`
-/

namespace A142135.P15664664704819187297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142135.P15664664704819187297

namespace A142135

/-- `A325351(p?[A174029(n)+A016885(n)])` -/
def P15664664704819187297.Spec : Prop :=
  ∀ n, P15664664704819187297.a n = A142135 (n + 1)

end A142135

/-!
# A142136: Primes congruent to 27 mod 37.

The programs for A142136, the canonical program `A142136.P1428996079723749002` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142136 has offset 1).

The definition of A142136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142136.P1428996079723749002

`p?[37*n-10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142136

/-- `p?[37*n-10]` -/
def P1428996079723749002.Spec : Prop :=
  ∀ n, P1428996079723749002.a n = A142136 (n + 1)

theorem P1428996079723749002.correct : P1428996079723749002.Spec := by
  intro n
  simp only [A142136, Nat.add_sub_cancel]

end A142136

/-! ## A142136.P635633374559164711

`or(p?[A146081(n)-9], A000007(n))`
-/

namespace A142136.P635633374559164711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142136.P635633374559164711

namespace A142136

/-- `or(p?[A146081(n)-9], A000007(n))` -/
def P635633374559164711.Spec : Prop :=
  ∀ n, P635633374559164711.a n = A142136 (n + 1)

end A142136

/-! ## A142136.P16830197609692433366

`or(p?[A146081(n)-9], A010052(n))`
-/

namespace A142136.P16830197609692433366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A010052 n)

end

end A142136.P16830197609692433366

namespace A142136

/-- `or(p?[A146081(n)-9], A010052(n))` -/
def P16830197609692433366.Spec : Prop :=
  ∀ n, P16830197609692433366.a n = A142136 (n + 1)

end A142136

/-! ## A142136.P18038412789129105834

`A016253(n+1+n)+p?[A146081(n)-9]`
-/

namespace A142136.P18038412789129105834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016253 (n + 1 + n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142136.P18038412789129105834

namespace A142136

/-- `A016253(n+1+n)+p?[A146081(n)-9]` -/
def P18038412789129105834.Spec : Prop :=
  ∀ n, P18038412789129105834.a n = A142136 (n + 1)

end A142136

/-! ## A142136.P11176659425525582787

`record[A006530(A146081(n)-9)]`
-/

namespace A142136.P11176659425525582787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142136.P11176659425525582787

namespace A142136

/-- `record[A006530(A146081(n)-9)]` -/
def P11176659425525582787.Spec : Prop :=
  ∀ n, P11176659425525582787.a n = A142136 (n + 1)

end A142136

/-! ## A142136.P13968902335078303157

`record[A020639(A146081(n)-9)]`
-/

namespace A142136.P13968902335078303157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142136.P13968902335078303157

namespace A142136

/-- `record[A020639(A146081(n)-9)]` -/
def P13968902335078303157.Spec : Prop :=
  ∀ n, P13968902335078303157.a n = A142136 (n + 1)

end A142136

/-!
# A142137: Primes congruent to 28 mod 37.

The programs for A142137, the canonical program `A142137.P6420679645146234910` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142137 has offset 1).

The definition of A142137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142137.P6420679645146234910

`p?[74*n-9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142137

/-- `p?[74*n-9]` -/
def P6420679645146234910.Spec : Prop :=
  ∀ n, P6420679645146234910.a n = A142137 (n + 1)

theorem P6420679645146234910.correct : P6420679645146234910.Spec := by
  intro n
  simp only [A142137, Nat.add_sub_cancel]

end A142137

/-! ## A142137.P17901850707467144042

`∩[A169610(2*(n+1))-2, A038913(n+2)]`
-/

namespace A142137.P17901850707467144042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142137.P17901850707467144042

namespace A142137

/-- `∩[A169610(2*(n+1))-2, A038913(n+2)]` -/
def P17901850707467144042.Spec : Prop :=
  ∀ n, (P17901850707467144042.a n : ℤ) = A142137 (n + 1)

end A142137

/-! ## A142137.P3201402637665099863

`∩[A169610(2*(n+1))-2, A191027(n+2)]`
-/

namespace A142137.P3201402637665099863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142137.P3201402637665099863

namespace A142137

/-- `∩[A169610(2*(n+1))-2, A191027(n+2)]` -/
def P3201402637665099863.Spec : Prop :=
  ∀ n, (P3201402637665099863.a n : ℤ) = A142137 (n + 1)

end A142137

/-! ## A142137.P6781391137647786697

`∩[A092226(n+1), A225550(n+1)]`
-/

namespace A142137.P6781391137647786697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142137.P6781391137647786697

namespace A142137

/-- `∩[A092226(n+1), A225550(n+1)]` -/
def P6781391137647786697.Spec : Prop :=
  ∀ n, (P6781391137647786697.a n : ℤ) = A142137 (n + 1)

end A142137

/-! ## A142137.P5819507403547967502

`or(1, p?[A017569(A016789(n))+n])`
-/

namespace A142137.P5819507403547967502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (A016789 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142137.P5819507403547967502

namespace A142137

/-- `or(1, p?[A017569(A016789(n))+n])` -/
def P5819507403547967502.Spec : Prop :=
  ∀ n, P5819507403547967502.a n = A142137 (n + 1)

end A142137

/-! ## A142137.P4284810473342374249

`∩[A049569(n+1), A092226(n+1)]`
-/

namespace A142137.P4284810473342374249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142137.P4284810473342374249

namespace A142137

/-- `∩[A049569(n+1), A092226(n+1)]` -/
def P4284810473342374249.Spec : Prop :=
  ∀ n, (P4284810473342374249.a n : ℤ) = A142137 (n + 1)

end A142137

/-! ## A142137.P15705648325123671887

`record[A006530(A146081(n)+29)]`
-/

namespace A142137.P15705648325123671887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n + 29).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142137.P15705648325123671887

namespace A142137

/-- `record[A006530(A146081(n)+29)]` -/
def P15705648325123671887.Spec : Prop :=
  ∀ n, P15705648325123671887.a n = A142137 (n + 1)

end A142137

/-! ## A142137.P11040338297861131208

`record[A020639(A146081(n)+29)]`
-/

namespace A142137.P11040338297861131208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n + 29).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142137.P11040338297861131208

namespace A142137

/-- `record[A020639(A146081(n)+29)]` -/
def P11040338297861131208.Spec : Prop :=
  ∀ n, P11040338297861131208.a n = A142137 (n + 1)

end A142137

/-! ## A142137.P5448157539303195929

`A000265(p?[A017569(3*n+2)+n])`
-/

namespace A142137.P5448157539303195929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142137.P5448157539303195929

namespace A142137

/-- `A000265(p?[A017569(3*n+2)+n])` -/
def P5448157539303195929.Spec : Prop :=
  ∀ n, P5448157539303195929.a n = A142137 (n + 1)

end A142137

/-! ## A142137.P17840991645978973155

`A125746(p?[5*A017041(n)+1+2*(n+1)])`
-/

namespace A142137.P17840991645978973155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017041 n + 1 + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142137.P17840991645978973155

namespace A142137

/-- `A125746(p?[5*A017041(n)+1+2*(n+1)])` -/
def P17840991645978973155.Spec : Prop :=
  ∀ n, P17840991645978973155.a n = A142137 (n + 1)

end A142137

/-!
# A142138: Primes congruent to 29 mod 37.

The programs for A142138, the canonical program `A142138.P746844966995690464` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142138 has offset 1).

The definition of A142138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142138.P746844966995690464

`p?[37*n-8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142138

/-- `p?[37*n-8]` -/
def P746844966995690464.Spec : Prop :=
  ∀ n, P746844966995690464.a n = A142138 (n + 1)

theorem P746844966995690464.correct : P746844966995690464.Spec := by
  intro n
  simp only [A142138, Nat.add_sub_cancel]

end A142138

/-! ## A142138.P12400869848180963695

`A000027(p?[A085959(n)-8])`
-/

namespace A142138.P12400869848180963695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142138.P12400869848180963695

namespace A142138

/-- `A000027(p?[A085959(n)-8])` -/
def P12400869848180963695.Spec : Prop :=
  ∀ n, P12400869848180963695.a n = A142138 (n + 1)

end A142138

/-! ## A142138.P10227911395296672953

`A000007(n+1)+p?[A085959(n)-8]`
-/

namespace A142138.P10227911395296672953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142138.P10227911395296672953

namespace A142138

/-- `A000007(n+1)+p?[A085959(n)-8]` -/
def P10227911395296672953.Spec : Prop :=
  ∀ n, P10227911395296672953.a n = A142138 (n + 1)

end A142138

/-! ## A142138.P15727202840722894750

`p?[A085959(n)-8]^(A093178(n)%2)`
-/

namespace A142138.P15727202840722894750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (Int.tmod (A093178 n) 2 : ℤ)

end

end A142138.P15727202840722894750

namespace A142138

/-- `p?[A085959(n)-8]^(A093178(n)%2)` -/
def P15727202840722894750.Spec : Prop :=
  ∀ n, P15727202840722894750.a n = (A142138 (n + 1) : ℚ)

end A142138

/-! ## A142138.P2755177734479640446

`∩[A038914(n+1), A169610(n+1)-1]`
-/

namespace A142138.P2755177734479640446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142138.P2755177734479640446

namespace A142138

/-- `∩[A038914(n+1), A169610(n+1)-1]` -/
def P2755177734479640446.Spec : Prop :=
  ∀ n, (P2755177734479640446.a n : ℤ) = A142138 (n + 1)

end A142138

/-! ## A142138.P10868286307606870385

`record[A020639(37*(n+1)-8)]`
-/

namespace A142138.P10868286307606870385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (37 * (n + 1) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142138.P10868286307606870385

namespace A142138

/-- `record[A020639(37*(n+1)-8)]` -/
def P10868286307606870385.Spec : Prop :=
  ∀ n, P10868286307606870385.a n = A142138 (n + 1)

end A142138

/-! ## A142138.P7031372936659905540

`record[A006530(A092242(A092242(n+1))+n)]`
-/

namespace A142138.P7031372936659905540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092242 (A092242 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142138.P7031372936659905540

namespace A142138

/-- `record[A006530(A092242(A092242(n+1))+n)]` -/
def P7031372936659905540.Spec : Prop :=
  ∀ n, P7031372936659905540.a n = A142138 (n + 1)

end A142138

/-!
# A142139: Primes congruent to 30 mod 37.

The programs for A142139, the canonical program `A142139.P4780684413859799696` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142139 has offset 1).

The definition of A142139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142139.P4780684413859799696

`p?[37*n-7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142139

/-- `p?[37*n-7]` -/
def P4780684413859799696.Spec : Prop :=
  ∀ n, P4780684413859799696.a n = A142139 (n + 1)

theorem P4780684413859799696.correct : P4780684413859799696.Spec := by
  intro n
  simp only [A142139, Nat.add_sub_cancel]

end A142139

/-! ## A142139.P16416618830507310424

`A000027(p?[A158060(n+1)+A017569(n)])`
-/

namespace A142139.P16416618830507310424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142139.P16416618830507310424

namespace A142139

/-- `A000027(p?[A158060(n+1)+A017569(n)])` -/
def P16416618830507310424.Spec : Prop :=
  ∀ n, P16416618830507310424.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P8324935450920220817

`p?[A158060(n+1)+A017569(n)]%A063990(2*(n+1))`
-/

namespace A142139.P8324935450920220817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A063990 (2 * (n + 1)))

end

end A142139.P8324935450920220817

namespace A142139

/-- `p?[A158060(n+1)+A017569(n)]%A063990(2*(n+1))` -/
def P8324935450920220817.Spec : Prop :=
  ∀ n, P8324935450920220817.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P14878172078479907199

`or(1, p?[A169610(2*(n+1))])`
-/

namespace A142139.P14878172078479907199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142139.P14878172078479907199

namespace A142139

/-- `or(1, p?[A169610(2*(n+1))])` -/
def P14878172078479907199.Spec : Prop :=
  ∀ n, P14878172078479907199.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P12284823644831259571

`∩[A038913(n+1), A169610(n+1)]`
-/

namespace A142139.P12284823644831259571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142139.P12284823644831259571

namespace A142139

/-- `∩[A038913(n+1), A169610(n+1)]` -/
def P12284823644831259571.Spec : Prop :=
  ∀ n, (P12284823644831259571.a n : ℤ) = A142139 (n + 1)

end A142139

/-! ## A142139.P8003121847148468170

`∩[A169610(n+1), A191027(n+1)]`
-/

namespace A142139.P8003121847148468170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142139.P8003121847148468170

namespace A142139

/-- `∩[A169610(n+1), A191027(n+1)]` -/
def P8003121847148468170.Spec : Prop :=
  ∀ n, (P8003121847148468170.a n : ℤ) = A142139 (n + 1)

end A142139

/-! ## A142139.P7856382984472160972

`record[A020639(74*(n+1)-7)]`
-/

namespace A142139.P7856382984472160972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (74 * (n + 1) - 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142139.P7856382984472160972

namespace A142139

/-- `record[A020639(74*(n+1)-7)]` -/
def P7856382984472160972.Spec : Prop :=
  ∀ n, P7856382984472160972.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P5394334303532047415

`filter[A169610(2*(n+1)), A010051(#)]`
-/

namespace A142139.P5394334303532047415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142139.P5394334303532047415

namespace A142139

/-- `filter[A169610(2*(n+1)), A010051(#)]` -/
def P5394334303532047415.Spec : Prop :=
  ∀ n, P5394334303532047415.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P2746490012605368056

`filter[A169610(2*(n+1)), A323152(#)]`
-/

namespace A142139.P2746490012605368056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142139.P2746490012605368056

namespace A142139

/-- `filter[A169610(2*(n+1)), A323152(#)]` -/
def P2746490012605368056.Spec : Prop :=
  ∀ n, P2746490012605368056.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P15938422683307004919

`filter[A169610(2*(n+1)), A323153(#)]`
-/

namespace A142139.P15938422683307004919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142139.P15938422683307004919

namespace A142139

/-- `filter[A169610(2*(n+1)), A323153(#)]` -/
def P15938422683307004919.Spec : Prop :=
  ∀ n, P15938422683307004919.a n = A142139 (n + 1)

end A142139

/-! ## A142139.P678646396188151434

`filter[A169610(2*(n+1)), A353817(#)]`
-/

namespace A142139.P678646396188151434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142139.P678646396188151434

namespace A142139

/-- `filter[A169610(2*(n+1)), A353817(#)]` -/
def P678646396188151434.Spec : Prop :=
  ∀ n, P678646396188151434.a n = A142139 (n + 1)

end A142139

/-!
# A142140: Primes congruent to 31 mod 37.

The programs for A142140, the canonical program `A142140.P16729906437606079837` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142140 has offset 1).

The definition of A142140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142140.P16729906437606079837

`p?[37*n-6]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142140

/-- `p?[37*n-6]` -/
def P16729906437606079837.Spec : Prop :=
  ∀ n, P16729906437606079837.a n = A142140 (n + 1)

theorem P16729906437606079837.correct : P16729906437606079837.Spec := by
  intro n
  simp only [A142140, Nat.add_sub_cancel]

end A142140

/-! ## A142140.P10975025581801483433

`or(1, p?[74*n+31])`
-/

namespace A142140.P10975025581801483433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  74 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142140.P10975025581801483433

namespace A142140

/-- `or(1, p?[74*n+31])` -/
def P10975025581801483433.Spec : Prop :=
  ∀ n, (P10975025581801483433.a n : ℤ) = A142140 (n + 1)

end A142140

/-! ## A142140.P4086735532129305996

`record[p?[A155097(lcm(2, n+2))]]`
-/

namespace A142140.P4086735532129305996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (Nat.lcm 2 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142140.P4086735532129305996

namespace A142140

/-- `record[p?[A155097(lcm(2, n+2))]]` -/
def P4086735532129305996.Spec : Prop :=
  ∀ n, P4086735532129305996.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P6814285596611612484

`record[p?[A155097(A064680(n+1))]]`
-/

namespace A142140.P6814285596611612484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (A064680 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142140.P6814285596611612484

namespace A142140

/-- `record[p?[A155097(A064680(n+1))]]` -/
def P6814285596611612484.Spec : Prop :=
  ∀ n, P6814285596611612484.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P14167996394195416906

`∩[A169610(2*(n+1))+1, A038914(n+2)]`
-/

namespace A142140.P14167996394195416906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038914 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142140.P14167996394195416906

namespace A142140

/-- `∩[A169610(2*(n+1))+1, A038914(n+2)]` -/
def P14167996394195416906.Spec : Prop :=
  ∀ n, (P14167996394195416906.a n : ℤ) = A142140 (n + 1)

end A142140

/-! ## A142140.P9899917979717173269

`∩[A306331(2*(n+1))-n, A000040(n+2)]`
-/

namespace A142140.P9899917979717173269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142140.P9899917979717173269

namespace A142140

/-- `∩[A306331(2*(n+1))-n, A000040(n+2)]` -/
def P9899917979717173269.Spec : Prop :=
  ∀ n, (P9899917979717173269.a n : ℤ) = A142140 (n + 1)

end A142140

/-! ## A142140.P2828860031410648756

`∩[A306331(2*(n+1))-n, A000430(n+2)]`
-/

namespace A142140.P2828860031410648756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142140.P2828860031410648756

namespace A142140

/-- `∩[A306331(2*(n+1))-n, A000430(n+2)]` -/
def P2828860031410648756.Spec : Prop :=
  ∀ n, (P2828860031410648756.a n : ℤ) = A142140 (n + 1)

end A142140

/-! ## A142140.P18331263007334986595

`record[A020639(74*n+31)]`
-/

namespace A142140.P18331263007334986595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (74 * n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142140.P18331263007334986595

namespace A142140

/-- `record[A020639(74*n+31)]` -/
def P18331263007334986595.Spec : Prop :=
  ∀ n, P18331263007334986595.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P7882838233433824588

`A000265(p?[A155097(2*(n+1))])`
-/

namespace A142140.P7882838233433824588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142140.P7882838233433824588

namespace A142140

/-- `A000265(p?[A155097(2*(n+1))])` -/
def P7882838233433824588.Spec : Prop :=
  ∀ n, P7882838233433824588.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P14506727731073506340

`filter[A155097(2*(n+1)), A010051(#)]`
-/

namespace A142140.P14506727731073506340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142140.P14506727731073506340

namespace A142140

/-- `filter[A155097(2*(n+1)), A010051(#)]` -/
def P14506727731073506340.Spec : Prop :=
  ∀ n, P14506727731073506340.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P14613739984703651796

`filter[A155097(2*(n+1)), A355937(#)]`
-/

namespace A142140.P14613739984703651796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142140.P14613739984703651796

namespace A142140

/-- `filter[A155097(2*(n+1)), A355937(#)]` -/
def P14613739984703651796.Spec : Prop :=
  ∀ n, P14613739984703651796.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P12777241804175035654

`filter[A155097(2*(n+1)), A302777(#)]`
-/

namespace A142140.P12777241804175035654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142140.P12777241804175035654

namespace A142140

/-- `filter[A155097(2*(n+1)), A302777(#)]` -/
def P12777241804175035654.Spec : Prop :=
  ∀ n, P12777241804175035654.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P6522490305507263602

`filter[A155097(2*(n+1)), A323152(#)]`
-/

namespace A142140.P6522490305507263602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142140.P6522490305507263602

namespace A142140

/-- `filter[A155097(2*(n+1)), A323152(#)]` -/
def P6522490305507263602.Spec : Prop :=
  ∀ n, P6522490305507263602.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P11130139831095503289

`filter[A155097(2*(n+1)), A323153(#)]`
-/

namespace A142140.P11130139831095503289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142140.P11130139831095503289

namespace A142140

/-- `filter[A155097(2*(n+1)), A323153(#)]` -/
def P11130139831095503289.Spec : Prop :=
  ∀ n, P11130139831095503289.a n = A142140 (n + 1)

end A142140

/-! ## A142140.P5575441427298006883

`filter[A155097(2*(n+1)), A351957(#)]`
-/

namespace A142140.P5575441427298006883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142140.P5575441427298006883

namespace A142140

/-- `filter[A155097(2*(n+1)), A351957(#)]` -/
def P5575441427298006883.Spec : Prop :=
  ∀ n, P5575441427298006883.a n = A142140 (n + 1)

end A142140

/-!
# A142141: Primes congruent to 32 mod 37.

The programs for A142141, the canonical program `A142141.P4814596461968984392` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142141 has offset 1).

The definition of A142141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142141.P4814596461968984392

`p?[37*n-5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142141

/-- `p?[37*n-5]` -/
def P4814596461968984392.Spec : Prop :=
  ∀ n, P4814596461968984392.a n = A142141 (n + 1)

theorem P4814596461968984392.correct : P4814596461968984392.Spec := by
  intro n
  simp only [A142141, Nat.add_sub_cancel]

end A142141

/-! ## A142141.P3842760330293279419

`∏{p}[p?[A155097(2*(n+1))+1], #]`
-/

namespace A142141.P3842760330293279419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (2 * (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142141.P3842760330293279419

namespace A142141

/-- `∏{p}[p?[A155097(2*(n+1))+1], #]` -/
def P3842760330293279419.Spec : Prop :=
  ∀ n, (P3842760330293279419.a n : ℤ) = A142141 (n + 1)

end A142141

/-! ## A142141.P14223406470248648364

`∩[A038914(n+1), A169610(n+1)+2]`
-/

namespace A142141.P14223406470248648364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142141.P14223406470248648364

namespace A142141

/-- `∩[A038914(n+1), A169610(n+1)+2]` -/
def P14223406470248648364.Spec : Prop :=
  ∀ n, (P14223406470248648364.a n : ℤ) = A142141 (n + 1)

end A142141

/-! ## A142141.P16599136590596169553

`p?[A091216(n+1)+32]*A024940(floor((2/(n+1))²))`
-/

namespace A142141.P16599136590596169553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091216 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A024940 ⌊(2 / (n + 1 : ℚ)) ^ 2⌋.toNat

end

end A142141.P16599136590596169553

namespace A142141

/-- `p?[A091216(n+1)+32]*A024940(floor((2/(n+1))²))` -/
def P16599136590596169553.Spec : Prop :=
  ∀ n, P16599136590596169553.a n = A142141 (n + 1)

end A142141

/-! ## A142141.P8066799079142397331

`A020639(or(1, p?[A091216(n+1)+32]))`
-/

namespace A142141.P8066799079142397331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091216 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A142141.P8066799079142397331

namespace A142141

/-- `A020639(or(1, p?[A091216(n+1)+32]))` -/
def P8066799079142397331.Spec : Prop :=
  ∀ n, P8066799079142397331.a n = A142141 (n + 1)

end A142141

/-! ## A142141.P9769035805196129995

`A006530(2*p?[A091216(n+1)+32])`
-/

namespace A142141.P9769035805196129995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091216 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142141.P9769035805196129995

namespace A142141

/-- `A006530(2*p?[A091216(n+1)+32])` -/
def P9769035805196129995.Spec : Prop :=
  ∀ n, P9769035805196129995.a n = A142141 (n + 1)

end A142141

/-! ## A142141.P1712272800764041383

`A006530(lcm(2, p?[A091216(n+1)+32]))`
-/

namespace A142141.P1712272800764041383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091216 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A142141.P1712272800764041383

namespace A142141

/-- `A006530(lcm(2, p?[A091216(n+1)+32]))` -/
def P1712272800764041383.Spec : Prop :=
  ∀ n, P1712272800764041383.a n = A142141 (n + 1)

end A142141

/-! ## A142141.P2012274992671053215

`p?[A091216(n+1)+32]*A010054(A000217(n))`
-/

namespace A142141.P2012274992671053215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091216 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A010054 (A000217 n).toNat

end

end A142141.P2012274992671053215

namespace A142141

/-- `p?[A091216(n+1)+32]*A010054(A000217(n))` -/
def P2012274992671053215.Spec : Prop :=
  ∀ n, P2012274992671053215.a n = A142141 (n + 1)

end A142141

/-!
# A142142: Primes congruent to 33 mod 37.

The programs for A142142, the canonical program `A142142.P6164594379237733275` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142142 has offset 1).

The definition of A142142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142142.P6164594379237733275

`p?[37*n-4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142142

/-- `p?[37*n-4]` -/
def P6164594379237733275.Spec : Prop :=
  ∀ n, P6164594379237733275.a n = A142142 (n + 1)

theorem P6164594379237733275.correct : P6164594379237733275.Spec := by
  intro n
  simp only [A142142, Nat.add_sub_cancel]

end A142142

/-! ## A142142.P7699751942849212860

`or(p?[A146081(n)-3], A000007(n))`
-/

namespace A142142.P7699751942849212860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142142.P7699751942849212860

namespace A142142

/-- `or(p?[A146081(n)-3], A000007(n))` -/
def P7699751942849212860.Spec : Prop :=
  ∀ n, P7699751942849212860.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P4015484313553224823

`or(p?[A146081(n)-3], A000035(n))`
-/

namespace A142142.P4015484313553224823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A142142.P4015484313553224823

namespace A142142

/-- `or(p?[A146081(n)-3], A000035(n))` -/
def P4015484313553224823.Spec : Prop :=
  ∀ n, P4015484313553224823.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P3740209440193275681

`or(p?[A146081(n)-3], A087049(n))`
-/

namespace A142142.P3740209440193275681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A087049 n)

end

end A142142.P3740209440193275681

namespace A142142

/-- `or(p?[A146081(n)-3], A087049(n))` -/
def P3740209440193275681.Spec : Prop :=
  ∀ n, P3740209440193275681.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P11880379511449824158

`p?[A146081(n)-3]%A095730(n+1)`
-/

namespace A142142.P11880379511449824158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A095730 (n + 1))

end

end A142142.P11880379511449824158

namespace A142142

/-- `p?[A146081(n)-3]%A095730(n+1)` -/
def P11880379511449824158.Spec : Prop :=
  ∀ n, P11880379511449824158.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P12407706928068858661

`or(p?[A146081(n)-3], A005171(n+1))`
-/

namespace A142142.P12407706928068858661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A005171 (n + 1))

end

end A142142.P12407706928068858661

namespace A142142

/-- `or(p?[A146081(n)-3], A005171(n+1))` -/
def P12407706928068858661.Spec : Prop :=
  ∀ n, P12407706928068858661.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P5593530048806785003

`or(p?[A146081(n)-3], A051731(n+1))`
-/

namespace A142142.P5593530048806785003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A051731 (n + 1))

end

end A142142.P5593530048806785003

namespace A142142

/-- `or(p?[A146081(n)-3], A051731(n+1))` -/
def P5593530048806785003.Spec : Prop :=
  ∀ n, P5593530048806785003.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P17130509383511718660

`record[A020639(A146081(n)-3)]`
-/

namespace A142142.P17130509383511718660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142142.P17130509383511718660

namespace A142142

/-- `record[A020639(A146081(n)-3)]` -/
def P17130509383511718660.Spec : Prop :=
  ∀ n, P17130509383511718660.a n = A142142 (n + 1)

end A142142

/-! ## A142142.P4255951497767990170

`∑{d}[p?[A146081(n)-3], A000010(#)]`
-/

namespace A142142.P4255951497767990170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142142.P4255951497767990170

namespace A142142

/-- `∑{d}[p?[A146081(n)-3], A000010(#)]` -/
def P4255951497767990170.Spec : Prop :=
  ∀ n, P4255951497767990170.a n = A142142 (n + 1)

end A142142

/-!
# A142143: Primes congruent to 34 mod 37.

The programs for A142143, the canonical program `A142143.P11226821550673919488` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142143 has offset 1).

The definition of A142143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142143.P11226821550673919488

`p?[37*n-3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142143

/-- `p?[37*n-3]` -/
def P11226821550673919488.Spec : Prop :=
  ∀ n, P11226821550673919488.a n = A142143 (n + 1)

theorem P11226821550673919488.correct : P11226821550673919488.Spec := by
  intro n
  simp only [A142143, Nat.add_sub_cancel]

end A142143

/-! ## A142143.P1881367427313742584

`A000027(p?[A085959(n)-3])`
-/

namespace A142143.P1881367427313742584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142143.P1881367427313742584

namespace A142143

/-- `A000027(p?[A085959(n)-3])` -/
def P1881367427313742584.Spec : Prop :=
  ∀ n, P1881367427313742584.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P10999887197989856063

`record[A020639(74*(n+1)-3)]`
-/

namespace A142143.P10999887197989856063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (74 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142143.P10999887197989856063

namespace A142143

/-- `record[A020639(74*(n+1)-3)]` -/
def P10999887197989856063.Spec : Prop :=
  ∀ n, P10999887197989856063.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P2296942698007806158

`A000265(p?[A085959(n)-3])`
-/

namespace A142143.P2296942698007806158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142143.P2296942698007806158

namespace A142143

/-- `A000265(p?[A085959(n)-3])` -/
def P2296942698007806158.Spec : Prop :=
  ∀ n, P2296942698007806158.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P4849747879470674287

`A006530(abs(1-p?[A085959(n)-3])+1)`
-/

namespace A142143.P4849747879470674287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1).toNat

end

end A142143.P4849747879470674287

namespace A142143

/-- `A006530(abs(1-p?[A085959(n)-3])+1)` -/
def P4849747879470674287.Spec : Prop :=
  ∀ n, P4849747879470674287.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P1804456350177256238

`A272625(∑[n]+1)+p?[A085959(n)-3]`
-/

namespace A142143.P1804456350177256238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272625 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142143.P1804456350177256238

namespace A142143

/-- `A272625(∑[n]+1)+p?[A085959(n)-3]` -/
def P1804456350177256238.Spec : Prop :=
  ∀ n, P1804456350177256238.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P3559858912752570426

`or(1, p?[A004274(37*n)])`
-/

namespace A142143.P3559858912752570426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (37 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142143.P3559858912752570426

namespace A142143

/-- `or(1, p?[A004274(37*n)])` -/
def P3559858912752570426.Spec : Prop :=
  ∀ n, P3559858912752570426.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P15363127008059105302

`or(1, p?[A004280(37*(n+1))])`
-/

namespace A142143.P15363127008059105302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (37 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142143.P15363127008059105302

namespace A142143

/-- `or(1, p?[A004280(37*(n+1))])` -/
def P15363127008059105302.Spec : Prop :=
  ∀ n, P15363127008059105302.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P7564027305721775633

`∑{d}[p?[A004274(37*n)], A000010(#)]`
-/

namespace A142143.P7564027305721775633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (37 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142143.P7564027305721775633

namespace A142143

/-- `∑{d}[p?[A004274(37*n)], A000010(#)]` -/
def P7564027305721775633.Spec : Prop :=
  ∀ n, P7564027305721775633.a n = A142143 (n + 1)

end A142143

/-! ## A142143.P10517383122787291395

`p?[A004274(37*n)]/A007318(C(n, 2))`
-/

namespace A142143.P10517383122787291395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (37 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A142143.P10517383122787291395

namespace A142143

/-- `p?[A004274(37*n)]/A007318(C(n, 2))` -/
def P10517383122787291395.Spec : Prop :=
  ∀ n, P10517383122787291395.a n = (A142143 (n + 1) : ℚ)

end A142143

/-!
# A142144: Primes congruent to 35 mod 37.

The programs for A142144, the canonical program `A142144.P3439492578117216224` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142144 has offset 1).

The definition of A142144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142144.P3439492578117216224

`p?[37*n-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142144

/-- `p?[37*n-2]` -/
def P3439492578117216224.Spec : Prop :=
  ∀ n, P3439492578117216224.a n = A142144 (n + 1)

theorem P3439492578117216224.correct : P3439492578117216224.Spec := by
  intro n
  simp only [A142144, Nat.add_sub_cancel]

end A142144

/-! ## A142144.P4951938705786257739

`A000027(p?[A146081(n)-1])`
-/

namespace A142144.P4951938705786257739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142144.P4951938705786257739

namespace A142144

/-- `A000027(p?[A146081(n)-1])` -/
def P4951938705786257739.Spec : Prop :=
  ∀ n, P4951938705786257739.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P1683129982281504359

`A000027(p?[A158065(n+1)+n-2])`
-/

namespace A142144.P1683129982281504359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142144.P1683129982281504359

namespace A142144

/-- `A000027(p?[A158065(n+1)+n-2])` -/
def P1683129982281504359.Spec : Prop :=
  ∀ n, P1683129982281504359.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P2706382603590169723

`∩[A169610(2*n+1)+A169610(2*(n+1)), A038914(n+2)]`
-/

namespace A142144.P2706382603590169723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (2 * n + 1) + A169610 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038914 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142144.P2706382603590169723

namespace A142144

/-- `∩[A169610(2*n+1)+A169610(2*(n+1)), A038914(n+2)]` -/
def P2706382603590169723.Spec : Prop :=
  ∀ n, (P2706382603590169723.a n : ℤ) = A142144 (n + 1)

end A142144

/-! ## A142144.P7386950124824549007

`∩[A239129(2*(n+1))+n, A004139(n+2)]`
-/

namespace A142144.P7386950124824549007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142144.P7386950124824549007

namespace A142144

/-- `∩[A239129(2*(n+1))+n, A004139(n+2)]` -/
def P7386950124824549007.Spec : Prop :=
  ∀ n, (P7386950124824549007.a n : ℤ) = A142144 (n + 1)

end A142144

/-! ## A142144.P15006013150935871025

`∩[A239129(2*(n+1))+n, A157996(n+2)]`
-/

namespace A142144.P15006013150935871025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142144.P15006013150935871025

namespace A142144

/-- `∩[A239129(2*(n+1))+n, A157996(n+2)]` -/
def P15006013150935871025.Spec : Prop :=
  ∀ n, (P15006013150935871025.a n : ℤ) = A142144 (n + 1)

end A142144

/-! ## A142144.P10238467681006245161

`record[A001414(A146081(n)-1)]`
-/

namespace A142144.P10238467681006245161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A146081 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142144.P10238467681006245161

namespace A142144

/-- `record[A001414(A146081(n)-1)]` -/
def P10238467681006245161.Spec : Prop :=
  ∀ n, P10238467681006245161.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P16057202099422431959

`record[A006530(A146081(n)-1)]`
-/

namespace A142144.P16057202099422431959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142144.P16057202099422431959

namespace A142144

/-- `record[A006530(A146081(n)-1)]` -/
def P16057202099422431959.Spec : Prop :=
  ∀ n, P16057202099422431959.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P15907749495674368139

`record[A008472(A146081(n)-1)]`
-/

namespace A142144.P15907749495674368139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A146081 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142144.P15907749495674368139

namespace A142144

/-- `record[A008472(A146081(n)-1)]` -/
def P15907749495674368139.Spec : Prop :=
  ∀ n, P15907749495674368139.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P15555063023023319529

`record[A020639(A146081(n)-1)]`
-/

namespace A142144.P15555063023023319529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142144.P15555063023023319529

namespace A142144

/-- `record[A020639(A146081(n)-1)]` -/
def P15555063023023319529.Spec : Prop :=
  ∀ n, P15555063023023319529.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P3883184924195040246

`record[p?[A007913(A146081(n)-1)]]`
-/

namespace A142144.P3883184924195040246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A146081 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142144.P3883184924195040246

namespace A142144

/-- `record[p?[A007913(A146081(n)-1)]]` -/
def P3883184924195040246.Spec : Prop :=
  ∀ n, P3883184924195040246.a n = A142144 (n + 1)

end A142144

/-! ## A142144.P10387007078827933379

`∏{d}[p?[A016969(A016969(n))+n], #]`
-/

namespace A142144.P10387007078827933379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A016969 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142144.P10387007078827933379

namespace A142144

/-- `∏{d}[p?[A016969(A016969(n))+n], #]` -/
def P10387007078827933379.Spec : Prop :=
  ∀ n, (P10387007078827933379.a n : ℤ) = A142144 (n + 1)

end A142144

/-!
# A142145: Primes congruent to 36 mod 37.

The programs for A142145, the canonical program `A142145.P10006114690202515084` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142145 has offset 1).

The definition of A142145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142145.P10006114690202515084

`p?[37*n-1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142145

/-- `p?[37*n-1]` -/
def P10006114690202515084.Spec : Prop :=
  ∀ n, P10006114690202515084.a n = A142145 (n + 1)

theorem P10006114690202515084.correct : P10006114690202515084.Spec := by
  intro n
  simp only [A142145, Nat.add_sub_cancel]

end A142145

/-! ## A142145.P6042266012058997456

`or(1, p?[36*(n+1)+n])`
-/

namespace A142145.P6042266012058997456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142145.P6042266012058997456

namespace A142145

/-- `or(1, p?[36*(n+1)+n])` -/
def P6042266012058997456.Spec : Prop :=
  ∀ n, (P6042266012058997456.a n : ℤ) = A142145 (n + 1)

end A142145

/-! ## A142145.P2798599617380749720

`∏{d}[p?[36*(n+1)+n], #]`
-/

namespace A142145.P2798599617380749720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142145.P2798599617380749720

namespace A142145

/-- `∏{d}[p?[36*(n+1)+n], #]` -/
def P2798599617380749720.Spec : Prop :=
  ∀ n, (P2798599617380749720.a n : ℤ) = A142145 (n + 1)

end A142145

/-! ## A142145.P13446218963622494536

`∏{p}[p?[36*(n+1)+n], #]`
-/

namespace A142145.P13446218963622494536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142145.P13446218963622494536

namespace A142145

/-- `∏{p}[p?[36*(n+1)+n], #]` -/
def P13446218963622494536.Spec : Prop :=
  ∀ n, (P13446218963622494536.a n : ℤ) = A142145 (n + 1)

end A142145

/-! ## A142145.P9558075217772160072

`record[A006530(73*(n+1)+n)]`
-/

namespace A142145.P9558075217772160072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (73 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142145.P9558075217772160072

namespace A142145

/-- `record[A006530(73*(n+1)+n)]` -/
def P9558075217772160072.Spec : Prop :=
  ∀ n, P9558075217772160072.a n = A142145 (n + 1)

end A142145

/-! ## A142145.P4420511371526350529

`record[A020639(A158065(n+2)+n)]`
-/

namespace A142145.P4420511371526350529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158065 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142145.P4420511371526350529

namespace A142145

/-- `record[A020639(A158065(n+2)+n)]` -/
def P4420511371526350529.Spec : Prop :=
  ∀ n, P4420511371526350529.a n = A142145 (n + 1)

end A142145

/-!
# A142149: a(n) = XOR{k OR (n-k): 0<=k<=n}.

The programs for A142149, the canonical program `A142149.P16619398115555029434` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142149 has offset 0).

The definition of A142149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142149.P16619398115555029434

`xor(n, n-gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142149

/-- `xor(n, n-gcd(n, ∑[n]))` -/
def P16619398115555029434.Spec : Prop :=
  ∀ n, P16619398115555029434.a n = A142149 n

theorem P16619398115555029434.correct : P16619398115555029434.Spec := by
  intro n
  simp only [A142149]

end A142149

/-! ## A142149.P12653875530888043331

`xor(n, n-lcm(2, n)/2)`
-/

namespace A142149.P12653875530888043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2))

end

end A142149.P12653875530888043331

namespace A142149

/-- `xor(n, n-lcm(2, n)/2)` -/
def P12653875530888043331.Spec : Prop :=
  ∀ n, P12653875530888043331.a n = A142149 n

end A142149

/-! ## A142149.P15417606647428297961

`xor(n, n*char[2*n]/2)`
-/

namespace A142149.P15417606647428297961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℚ) / 2))

end

end A142149.P15417606647428297961

namespace A142149

/-- `xor(n, n*char[2*n]/2)` -/
def P15417606647428297961.Spec : Prop :=
  ∀ n, P15417606647428297961.a n = A142149 n

end A142149

/-! ## A142149.P9284024401514684866

`xor(n*(n-1)%2, 2*n)/2`
-/

namespace A142149.P9284024401514684866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor ((n : ℤ) * Int.tmod ((n : ℤ) - 1) 2) (2 * n : ℤ) : ℚ) / 2

end

end A142149.P9284024401514684866

namespace A142149

/-- `xor(n*(n-1)%2, 2*n)/2` -/
def P9284024401514684866.Spec : Prop :=
  ∀ n, P9284024401514684866.a n = (A142149 n : ℚ)

end A142149

/-! ## A142149.P16564595191199477089

`xor(2*n+1, A093178(n+1))/2`
-/

namespace A142149.P16564595191199477089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n + 1 : ℤ) (A093178 (n + 1)) : ℚ) / 2

end

end A142149.P16564595191199477089

namespace A142149

/-- `xor(2*n+1, A093178(n+1))/2` -/
def P16564595191199477089.Spec : Prop :=
  ∀ n, P16564595191199477089.a n = (A142149 n : ℚ)

end A142149

/-! ## A142149.P5697918208216212291

`xor(A093178(n+1), A141310(2*n))/2`
-/

namespace A142149.P5697918208216212291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A093178 (n + 1)) (A141310 (2 * n)) : ℚ) / 2

end

end A142149.P5697918208216212291

namespace A142149

/-- `xor(A093178(n+1), A141310(2*n))/2` -/
def P5697918208216212291.Spec : Prop :=
  ∀ n, P5697918208216212291.a n = (A142149 n : ℚ)

end A142149

/-! ## A142149.P8437418082847459677

`A142150(2*xor(n, A142150(n)))`
-/

namespace A142149.P8437418082847459677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * Int.xor (n : ℤ) (A142150 n)).toNat

end

end A142149.P8437418082847459677

namespace A142149

/-- `A142150(2*xor(n, A142150(n)))` -/
def P8437418082847459677.Spec : Prop :=
  ∀ n, P8437418082847459677.a n = A142149 n

end A142149

/-! ## A142149.P1647923313857760375

`A014682(xor(n*A260393(3*n+4), 2*n))`
-/

namespace A142149.P1647923313857760375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor ((n : ℤ) * A260393 (3 * n + 4)) (2 * n : ℤ)).toNat

end

end A142149.P1647923313857760375

namespace A142149

/-- `A014682(xor(n*A260393(3*n+4), 2*n))` -/
def P1647923313857760375.Spec : Prop :=
  ∀ n, P1647923313857760375.a n = A142149 n

end A142149

/-! ## A142149.P16266850534285759128

`A002265(xor(A004275(2*n+1), A266073(n)))`
-/

namespace A142149.P16266850534285759128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (A004275 (2 * n + 1)) (A266073 n)).toNat

end

end A142149.P16266850534285759128

namespace A142149

/-- `A002265(xor(A004275(2*n+1), A266073(n)))` -/
def P16266850534285759128.Spec : Prop :=
  ∀ n, P16266850534285759128.a n = A142149 n

end A142149

/-! ## A142149.P8339383735273369158

`A002265(xor(A004275(2*n+1), A266258(n+2)))`
-/

namespace A142149.P8339383735273369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (A004275 (2 * n + 1)) (A266258 (n + 2))).toNat

end

end A142149.P8339383735273369158

namespace A142149

/-- `A002265(xor(A004275(2*n+1), A266258(n+2)))` -/
def P8339383735273369158.Spec : Prop :=
  ∀ n, P8339383735273369158.a n = A142149 n

end A142149

/-!
# A142150: The nonnegative integers interleaved with 0's.

The programs for A142150, the canonical program `A142150.P17187063318547882225` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142150 has offset 0).

The definition of A142150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142150.P227363332378424173

`n*(1+(-1)^n)/4`
-/

namespace A142150.P227363332378424173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4

end

end A142150.P227363332378424173

namespace A142150

/-- `n*(1+(-1)^n)/4` -/
def P227363332378424173.Spec : Prop :=
  ∀ n, P227363332378424173.a n = (A142150 n : ℚ)

theorem P227363332378424173.correct : P227363332378424173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A142150, Nat.add_sub_cancel, A142150.P227363332378424173.a, A142150.P17187063318547882225.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A142150, Nat.add_sub_cancel, A142150.P227363332378424173.a, A142150.P17187063318547882225.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A142150

/-! ## A142150.P17187063318547882225

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142150

/-- `2*a(n-2)-a(n-4)` -/
def P17187063318547882225.Spec : Prop :=
  ∀ n, P17187063318547882225.a n = A142150 n

theorem P17187063318547882225.correct : P17187063318547882225.Spec := by
  intro n
  simp only [A142150]

end A142150

/-! ## A142150.P3848142872928743907

`A158416(n)-1`
-/

namespace A142150.P3848142872928743907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n - 1

end

end A142150.P3848142872928743907

namespace A142150

/-- `A158416(n)-1` -/
def P3848142872928743907.Spec : Prop :=
  ∀ n, P3848142872928743907.a n = A142150 n

end A142150

/-! ## A142150.P13765307011540704963

`A000007(a(n-1))+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A142150.P13765307011540704963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000007 (a (n - 1)).toNat + a (n - 2)

end

end A142150.P13765307011540704963

namespace A142150

/-- `A000007(a(n-1))+a(n-2)` -/
def P13765307011540704963.Spec : Prop :=
  ∀ n, P13765307011540704963.a n = A142150 n

end A142150

/-! ## A142150.P10935345819398247888

`A000326(n)-A191967(n)`
-/

namespace A142150.P10935345819398247888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A191967 n

end

end A142150.P10935345819398247888

namespace A142150

/-- `A000326(n)-A191967(n)` -/
def P10935345819398247888.Spec : Prop :=
  ∀ n, P10935345819398247888.a n = A142150 n

end A142150

/-! ## A142150.P14152524355662805341

`n-gcd(n, ∑[n])`
-/

namespace A142150.P14152524355662805341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A142150.P14152524355662805341

namespace A142150

/-- `n-gcd(n, ∑[n])` -/
def P14152524355662805341.Spec : Prop :=
  ∀ n, P14152524355662805341.a n = A142150 n

end A142150

/-! ## A142150.P3568793558898810355

`n-lcm(2, n)/2`
-/

namespace A142150.P3568793558898810355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

end

end A142150.P3568793558898810355

namespace A142150

/-- `n-lcm(2, n)/2` -/
def P3568793558898810355.Spec : Prop :=
  ∀ n, P3568793558898810355.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P7817485262008063228

`Δ[C(ceil(n/2), 2)]`
-/

namespace A142150.P7817485262008063228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A142150.P7817485262008063228

namespace A142150

/-- `Δ[C(ceil(n/2), 2)]` -/
def P7817485262008063228.Spec : Prop :=
  ∀ n, P7817485262008063228.a n = A142150 n

end A142150

/-! ## A142150.P17303333314887968630

`floor(C(xor(1, n), n)/2)`
-/

namespace A142150.P17303333314887968630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (Nat.xor 1 n) n : ℚ) / 2⌋

end

end A142150.P17303333314887968630

namespace A142150

/-- `floor(C(xor(1, n), n)/2)` -/
def P17303333314887968630.Spec : Prop :=
  ∀ n, P17303333314887968630.a n = A142150 n

end A142150

/-! ## A142150.P62075884520554771

`n/or(n, -2)+n`
-/

namespace A142150.P62075884520554771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ) + (n : ℚ)

end

end A142150.P62075884520554771

namespace A142150

/-- `n/or(n, -2)+n` -/
def P62075884520554771.Spec : Prop :=
  ∀ n, P62075884520554771.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P13936216997300766120

`∑{p}[or(n, -2), n/#]`
-/

namespace A142150.P13936216997300766120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℚ) / (p : ℚ)

end

end A142150.P13936216997300766120

namespace A142150

/-- `∑{p}[or(n, -2), n/#]` -/
def P13936216997300766120.Spec : Prop :=
  ∀ n, P13936216997300766120.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P13224434045066960269

`∑{p}[and(n, -n), n/#]`
-/

namespace A142150.P13224434045066960269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n : ℚ) / (p : ℚ)

end

end A142150.P13224434045066960269

namespace A142150

/-- `∑{p}[and(n, -n), n/#]` -/
def P13224434045066960269.Spec : Prop :=
  ∀ n, P13224434045066960269.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P16055501201685607042

`(n+1)%2*n/2`
-/

namespace A142150.P16055501201685607042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℚ) * ((n : ℚ) / 2)

end

end A142150.P16055501201685607042

namespace A142150

/-- `(n+1)%2*n/2` -/
def P16055501201685607042.Spec : Prop :=
  ∀ n, P16055501201685607042.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P13224407849859419573

`Δ[or(1, n-1)²/8]`
-/

namespace A142150.P13224407849859419573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ((n : ℤ) - 1) ^ 2 : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142150.P13224407849859419573

namespace A142150

/-- `Δ[or(1, n-1)²/8]` -/
def P13224407849859419573.Spec : Prop :=
  ∀ n, P13224407849859419573.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P6111052988872805649

`n-n/gcd(2, n+2)`
-/

namespace A142150.P6111052988872805649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n : ℚ) / (Nat.gcd 2 (n + 2) : ℚ)

end

end A142150.P6111052988872805649

namespace A142150

/-- `n-n/gcd(2, n+2)` -/
def P6111052988872805649.Spec : Prop :=
  ∀ n, P6111052988872805649.a n = (A142150 n : ℚ)

end A142150

/-! ## A142150.P576569425468337295

`∑[n]%(abs(1-n)+1)`
-/

namespace A142150.P576569425468337295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (|1 - (n : ℤ)| + 1)

end

end A142150.P576569425468337295

namespace A142150

/-- `∑[n]%(abs(1-n)+1)` -/
def P576569425468337295.Spec : Prop :=
  ∀ n, P576569425468337295.a n = A142150 n

end A142150

/-! ## A142150.P16805054569632358727

`n-A026741(n)`
-/

namespace A142150.P16805054569632358727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 n

end

end A142150.P16805054569632358727

namespace A142150

/-- `n-A026741(n)` -/
def P16805054569632358727.Spec : Prop :=
  ∀ n, P16805054569632358727.a n = A142150 n

end A142150

/-! ## A142150.P3606343515063540124

`n/2*A059841(n)`
-/

namespace A142150.P3606343515063540124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A059841 n : ℚ)

end

end A142150.P3606343515063540124

namespace A142150

/-- `n/2*A059841(n)` -/
def P3606343515063540124.Spec : Prop :=
  ∀ n, P3606343515063540124.a n = (A142150 n : ℚ)

end A142150

/-!
# A142151: a(n) = OR{k XOR (n-k): 0<=k<=n}.

The programs for A142151, the canonical program `A142151.P14339158606082977722` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142151 has offset 0).

The definition of A142151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142151.P14339158606082977722

`or(n, and(-(n+2), a(n-1)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142151

/-- `or(n, and(-(n+2), a(n-1)))` -/
def P14339158606082977722.Spec : Prop :=
  ∀ n, P14339158606082977722.a n = A142151 n

theorem P14339158606082977722.correct : P14339158606082977722.Spec := by
  intro n
  simp only [A142151]

end A142151

/-! ## A142151.P9085308788234226142

`or(n, or(n+1, a(n-1))-(n+1))` with `a(0)=0`
-/

namespace A142151.P9085308788234226142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (Int.lor (n + 1 : ℤ) (a (n - 1)) - (n + 1 : ℤ))

end

end A142151.P9085308788234226142

namespace A142151

/-- `or(n, or(n+1, a(n-1))-(n+1))` -/
def P9085308788234226142.Spec : Prop :=
  ∀ n, P9085308788234226142.a n = A142151 n

end A142151

/-! ## A142151.P1537064583130381179

`∑[Δ[and(-(n+1), -n)]%(n+1)]+n`
-/

namespace A142151.P1537064583130381179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A142151.P1537064583130381179

namespace A142151

/-- `∑[Δ[and(-(n+1), -n)]%(n+1)]+n` -/
def P1537064583130381179.Spec : Prop :=
  ∀ n, P1537064583130381179.a n = A142151 n

end A142151

/-! ## A142151.P4199335213414164819

`∑[Δ[or(n, -n)-(n+1)]%(n+1)]+n`
-/

namespace A142151.P4199335213414164819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A142151.P4199335213414164819

namespace A142151

/-- `∑[Δ[or(n, -n)-(n+1)]%(n+1)]+n` -/
def P4199335213414164819.Spec : Prop :=
  ∀ n, P4199335213414164819.a n = A142151 n

end A142151

/-! ## A142151.P1647819547815115854

`or(n, A035327(n+1))`
-/

namespace A142151.P1647819547815115854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A035327 (n + 1))

end

end A142151.P1647819547815115854

namespace A142151

/-- `or(n, A035327(n+1))` -/
def P1647819547815115854.Spec : Prop :=
  ∀ n, P1647819547815115854.a n = A142151 n

end A142151

/-! ## A142151.P7480496973980879247

`or(n, 2*A086099(n))`
-/

namespace A142151.P7480496973980879247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (2 * A086099 n)

end

end A142151.P7480496973980879247

namespace A142151

/-- `or(n, 2*A086099(n))` -/
def P7480496973980879247.Spec : Prop :=
  ∀ n, P7480496973980879247.a n = A142151 n

end A142151

/-! ## A142151.P7163555070193037041

`or(n, abs(1-A035327(n)))`
-/

namespace A142151.P7163555070193037041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) |1 - A035327 n|

end

end A142151.P7163555070193037041

namespace A142151

/-- `or(n, abs(1-A035327(n)))` -/
def P7163555070193037041.Spec : Prop :=
  ∀ n, P7163555070193037041.a n = A142151 n

end A142151

/-! ## A142151.P10258975788222420058

`or(n, A080079(n+1)-1)`
-/

namespace A142151.P10258975788222420058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A080079 (n + 1) - 1)

end

end A142151.P10258975788222420058

namespace A142151

/-- `or(n, A080079(n+1)-1)` -/
def P10258975788222420058.Spec : Prop :=
  ∀ n, P10258975788222420058.a n = A142151 n

end A142151

/-! ## A142151.P3444638535206221900

`or(n, A283165(n+1)-1)`
-/

namespace A142151.P3444638535206221900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A283165 (n + 1) - 1)

end

end A142151.P3444638535206221900

namespace A142151

/-- `or(n, A283165(n+1)-1)` -/
def P3444638535206221900.Spec : Prop :=
  ∀ n, P3444638535206221900.a n = A142151 n

end A142151

/-! ## A142151.P13192193620984102765

`or(n+1, A003817(n)-n)-1`
-/

namespace A142151.P13192193620984102765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A003817 n - (n : ℤ)) - 1

end

end A142151.P13192193620984102765

namespace A142151

/-- `or(n+1, A003817(n)-n)-1` -/
def P13192193620984102765.Spec : Prop :=
  ∀ n, P13192193620984102765.a n = A142151 n

end A142151

/-! ## A142151.P14379291580126853465

`or(n, A005843(A086099(n)))`
-/

namespace A142151.P14379291580126853465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A005843 (A086099 n).toNat)

end

end A142151.P14379291580126853465

namespace A142151

/-- `or(n, A005843(A086099(n)))` -/
def P14379291580126853465.Spec : Prop :=
  ∀ n, P14379291580126853465.a n = A142151 n

end A142151

/-! ## A142151.P16411776755057695697

`A092323(n+1)+A086099(n)`
-/

namespace A142151.P16411776755057695697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (n + 1) + A086099 n

end

end A142151.P16411776755057695697

namespace A142151

/-- `A092323(n+1)+A086099(n)` -/
def P16411776755057695697.Spec : Prop :=
  ∀ n, P16411776755057695697.a n = A142151 n

end A142151

/-! ## A142151.P3900169079683679165

`A129760(A080079(n+1))+n`
-/

namespace A142151.P3900169079683679165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A080079 (n + 1)).toNat + (n : ℤ)

end

end A142151.P3900169079683679165

namespace A142151

/-- `A129760(A080079(n+1))+n` -/
def P3900169079683679165.Spec : Prop :=
  ∀ n, P3900169079683679165.a n = A142151 n

end A142151

/-! ## A142151.P9074998625117847020

`A003817(n)-A080940(n+1)`
-/

namespace A142151.P9074998625117847020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A080940 (n + 1)

end

end A142151.P9074998625117847020

namespace A142151

/-- `A003817(n)-A080940(n+1)` -/
def P9074998625117847020.Spec : Prop :=
  ∀ n, P9074998625117847020.a n = A142151 n

end A142151

/-! ## A142151.P7113441579030062012

`A135481(n)+2*A086099(n)`
-/

namespace A142151.P7113441579030062012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n + 2 * A086099 n

end

end A142151.P7113441579030062012

namespace A142151

/-- `A135481(n)+2*A086099(n)` -/
def P7113441579030062012.Spec : Prop :=
  ∀ n, P7113441579030062012.a n = A142151 n

end A142151

/-! ## A142151.P1318128443084318019

`A129760(n+1)+A035327(n+1)`
-/

namespace A142151.P1318128443084318019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1) + A035327 (n + 1)

end

end A142151.P1318128443084318019

namespace A142151

/-- `A129760(n+1)+A035327(n+1)` -/
def P1318128443084318019.Spec : Prop :=
  ∀ n, P1318128443084318019.a n = A142151 n

end A142151

/-! ## A142151.P15033983239263111624

`A003817(n+1)-A006519(n+1)`
-/

namespace A142151.P15033983239263111624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A006519 (n + 1)

end

end A142151.P15033983239263111624

namespace A142151

/-- `A003817(n+1)-A006519(n+1)` -/
def P15033983239263111624.Spec : Prop :=
  ∀ n, P15033983239263111624.a n = A142151 n

end A142151

/-! ## A142151.P16136914219182224584

`2*A092323(n+1)-A135481(n)`
-/

namespace A142151.P16136914219182224584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092323 (n + 1) - A135481 n

end

end A142151.P16136914219182224584

namespace A142151

/-- `2*A092323(n+1)-A135481(n)` -/
def P16136914219182224584.Spec : Prop :=
  ∀ n, P16136914219182224584.a n = A142151 n

end A142151

/-! ## A142151.P3888072122249127579

`xor(A080079(n+1), A086799(n+1))`
-/

namespace A142151.P3888072122249127579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080079 (n + 1)) (A086799 (n + 1))

end

end A142151.P3888072122249127579

namespace A142151

/-- `xor(A080079(n+1), A086799(n+1))` -/
def P3888072122249127579.Spec : Prop :=
  ∀ n, P3888072122249127579.a n = A142151 n

end A142151

/-! ## A142151.P176453839452665306

`A086099(n)-A053645(n+1)+n`
-/

namespace A142151.P176453839452665306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 n - A053645 (n + 1) + (n : ℤ)

end

end A142151.P176453839452665306

namespace A142151

/-- `A086099(n)-A053645(n+1)+n` -/
def P176453839452665306.Spec : Prop :=
  ∀ n, P176453839452665306.a n = A142151 n

end A142151

/-!
# A142152: Primes congruent to 21 mod 38.

The programs for A142152, the canonical program `A142152.P16073057327435580899` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142152 has offset 1).

The definition of A142152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142152.P16073057327435580899

`A141869(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142152

/-- `A141869(n+2)` -/
def P16073057327435580899.Spec : Prop :=
  ∀ n, P16073057327435580899.a n = A142152 (n + 1)

theorem P16073057327435580899.correct : P16073057327435580899.Spec := by
  intro n
  simp only [A142152, Nat.add_sub_cancel]

end A142152

/-! ## A142152.P11654735866154202551

`∩[A215393(n+2), A215209(n+1)]`
-/

namespace A142152.P11654735866154202551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P11654735866154202551

namespace A142152

/-- `∩[A215393(n+2), A215209(n+1)]` -/
def P11654735866154202551.Spec : Prop :=
  ∀ n, (P11654735866154202551.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P17499849027687607303

`∩[A215101(n+2), A215209(n+1)]`
-/

namespace A142152.P17499849027687607303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P17499849027687607303

namespace A142152

/-- `∩[A215101(n+2), A215209(n+1)]` -/
def P17499849027687607303.Spec : Prop :=
  ∀ n, (P17499849027687607303.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P13098101188941707556

`∩[A215101(n+2), A215393(n+1)]`
-/

namespace A142152.P13098101188941707556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P13098101188941707556

namespace A142152

/-- `∩[A215101(n+2), A215393(n+1)]` -/
def P13098101188941707556.Spec : Prop :=
  ∀ n, (P13098101188941707556.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P6300291524148516888

`∩[A215101(n+1), A215170(n+2)]`
-/

namespace A142152.P6300291524148516888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P6300291524148516888

namespace A142152

/-- `∩[A215101(n+1), A215170(n+2)]` -/
def P6300291524148516888.Spec : Prop :=
  ∀ n, (P6300291524148516888.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P9304301572732209235

`∩[A215170(n+1), A215209(n+2)]`
-/

namespace A142152.P9304301572732209235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P9304301572732209235

namespace A142152

/-- `∩[A215170(n+1), A215209(n+2)]` -/
def P9304301572732209235.Spec : Prop :=
  ∀ n, (P9304301572732209235.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P661838570026551656

`∩[A215170(n+1), A215393(n+2)]`
-/

namespace A142152.P661838570026551656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P661838570026551656

namespace A142152

/-- `∩[A215170(n+1), A215393(n+2)]` -/
def P661838570026551656.Spec : Prop :=
  ∀ n, (P661838570026551656.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P1053217721589442547

`p?[38*n-17]`
-/

namespace A142152.P1053217721589442547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (38 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142152.P1053217721589442547

namespace A142152

/-- `p?[38*n-17]` -/
def P1053217721589442547.Spec : Prop :=
  ∀ n, P1053217721589442547.a n = A142152 (n + 1)

end A142152

/-! ## A142152.P1967686443260997545

`∩[A215101(n+1), A215274(n+2)]`
-/

namespace A142152.P1967686443260997545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P1967686443260997545

namespace A142152

/-- `∩[A215101(n+1), A215274(n+2)]` -/
def P1967686443260997545.Spec : Prop :=
  ∀ n, (P1967686443260997545.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P14889120545223795405

`∩[A215209(n+1), A215274(n+2)]`
-/

namespace A142152.P14889120545223795405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P14889120545223795405

namespace A142152

/-- `∩[A215209(n+1), A215274(n+2)]` -/
def P14889120545223795405.Spec : Prop :=
  ∀ n, (P14889120545223795405.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P3278426286285844661

`∩[A215154(n+1), A215170(n+2)]`
-/

namespace A142152.P3278426286285844661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P3278426286285844661

namespace A142152

/-- `∩[A215154(n+1), A215170(n+2)]` -/
def P3278426286285844661.Spec : Prop :=
  ∀ n, (P3278426286285844661.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P684868279194561289

`∩[A215154(n+1), A215209(n+2)]`
-/

namespace A142152.P684868279194561289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P684868279194561289

namespace A142152

/-- `∩[A215154(n+1), A215209(n+2)]` -/
def P684868279194561289.Spec : Prop :=
  ∀ n, (P684868279194561289.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P6759325495801882753

`∩[A215393(n+1), A215389(n+2)]`
-/

namespace A142152.P6759325495801882753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P6759325495801882753

namespace A142152

/-- `∩[A215393(n+1), A215389(n+2)]` -/
def P6759325495801882753.Spec : Prop :=
  ∀ n, (P6759325495801882753.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P15316603106112950423

`∩[A215101(n+1), A215213(n+2)]`
-/

namespace A142152.P15316603106112950423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P15316603106112950423

namespace A142152

/-- `∩[A215101(n+1), A215213(n+2)]` -/
def P15316603106112950423.Spec : Prop :=
  ∀ n, (P15316603106112950423.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P17365005318003193830

`∩[A215154(n+1), A215213(n+2)]`
-/

namespace A142152.P17365005318003193830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P17365005318003193830

namespace A142152

/-- `∩[A215154(n+1), A215213(n+2)]` -/
def P17365005318003193830.Spec : Prop :=
  ∀ n, (P17365005318003193830.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P2284461529798693118

`∩[A215105(n+2), A215209(n+2)]`
-/

namespace A142152.P2284461529798693118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P2284461529798693118

namespace A142152

/-- `∩[A215105(n+2), A215209(n+2)]` -/
def P2284461529798693118.Spec : Prop :=
  ∀ n, (P2284461529798693118.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P9803568222357885301

`∩[A215105(n+2), A215393(n+2)]`
-/

namespace A142152.P9803568222357885301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P9803568222357885301

namespace A142152

/-- `∩[A215105(n+2), A215393(n+2)]` -/
def P9803568222357885301.Spec : Prop :=
  ∀ n, (P9803568222357885301.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P10513493890584117992

`∩[A215170(n+1), A215282(n+2)]`
-/

namespace A142152.P10513493890584117992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P10513493890584117992

namespace A142152

/-- `∩[A215170(n+1), A215282(n+2)]` -/
def P10513493890584117992.Spec : Prop :=
  ∀ n, (P10513493890584117992.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P11784776440268735795

`∩[A215393(n+1), A215361(n+2)]`
-/

namespace A142152.P11784776440268735795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P11784776440268735795

namespace A142152

/-- `∩[A215393(n+1), A215361(n+2)]` -/
def P11784776440268735795.Spec : Prop :=
  ∀ n, (P11784776440268735795.a n : ℤ) = A142152 (n + 1)

end A142152

/-! ## A142152.P13136870440613110239

`∩[A215209(n+2), A215282(n+2)]`
-/

namespace A142152.P13136870440613110239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142152.P13136870440613110239

namespace A142152

/-- `∩[A215209(n+2), A215282(n+2)]` -/
def P13136870440613110239.Spec : Prop :=
  ∀ n, (P13136870440613110239.a n : ℤ) = A142152 (n + 1)

end A142152

/-!
# A142153: a(n) is the "highest smallest" positive integer that cannot be obtained from the (n-1) optimized integers (to be defined for each n) using each number at most once and the operators +, -, *, /.

The programs for A142153, there is no canonical definition to state claims against.
-/

/-! ## A142153.P12683872257152951327

`floor(∑[A076025(n)+1]/2)`
-/

namespace A142153.P12683872257152951327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076025 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A142153.P12683872257152951327

/-!
# A142155: Expansion of x/( 1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10 ).

The programs for A142155, the canonical program `A142155.P17775820889566757954` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142155 has offset 1).

The definition of A142155 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10))` (program `A142155.P17775820889566757954`, by `A142155.P17775820889566757954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142155.P17775820889566757954

`ogf(1/(1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142155

/-- `ogf(1/(1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10))` -/
def P17775820889566757954.Spec : Prop :=
  ∀ n, P17775820889566757954.a n = A142155 (n + 1)

theorem P17775820889566757954.correct : P17775820889566757954.Spec := by
  intro n
  simp only [A142155, Nat.add_sub_cancel]

end A142155

/-! ## A142155.P11413467459470898920

`(-1)^n*A322847(A275548(n))`
-/

namespace A142155.P11413467459470898920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A322847 (A275548 n).toNat

end

end A142155.P11413467459470898920

namespace A142155

/-- `(-1)^n*A322847(A275548(n))` -/
def P11413467459470898920.Spec : Prop :=
  ∀ n, P11413467459470898920.a n = A142155 (n + 1)

end A142155

/-!
# A142157: Last digit of A003319(n).

The programs for A142157, there is no canonical definition to state claims against.
-/

/-! ## A142157.P1516768797127317960

`A003319(n+1)%10`
-/

namespace A142157.P1516768797127317960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003319 (n + 1)) 10

end

end A142157.P1516768797127317960

/-!
# A142159: Primes congruent to 1 mod 39.

The programs for A142159, the canonical program `A142159.P13823873694496372423` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142159 has offset 1).

The definition of A142159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142159.P13823873694496372423

`p?[39*n+1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142159

/-- `p?[39*n+1]` -/
def P13823873694496372423.Spec : Prop :=
  ∀ n, (P13823873694496372423.a n : ℤ) = A142159 (n + 1)

theorem P13823873694496372423.correct : P13823873694496372423.Spec := by
  intro n
  simp only [A142159, Nat.add_sub_cancel]

end A142159

/-! ## A142159.P16524028075174332178

`or(1, p?[or(1, 39*n)])`
-/

namespace A142159.P16524028075174332178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (39 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142159.P16524028075174332178

namespace A142159

/-- `or(1, p?[or(1, 39*n)])` -/
def P16524028075174332178.Spec : Prop :=
  ∀ n, (P16524028075174332178.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P2222112889095173089

`∩[A139494(n+1), A215391(n+1)]`
-/

namespace A142159.P2222112889095173089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P2222112889095173089

namespace A142159

/-- `∩[A139494(n+1), A215391(n+1)]` -/
def P2222112889095173089.Spec : Prop :=
  ∀ n, (P2222112889095173089.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P6168578334198903264

`∩[A139494(n+1), A268753(n+1)]`
-/

namespace A142159.P6168578334198903264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P6168578334198903264

namespace A142159

/-- `∩[A139494(n+1), A268753(n+1)]` -/
def P6168578334198903264.Spec : Prop :=
  ∀ n, (P6168578334198903264.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P934389369287149887

`∩[A215391(n+1), A267455(n+1)]`
-/

namespace A142159.P934389369287149887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P934389369287149887

namespace A142159

/-- `∩[A215391(n+1), A267455(n+1)]` -/
def P934389369287149887.Spec : Prop :=
  ∀ n, (P934389369287149887.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P7678199947410418624

`∩[A267455(n+1), A268753(n+1)]`
-/

namespace A142159.P7678199947410418624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P7678199947410418624

namespace A142159

/-- `∩[A267455(n+1), A268753(n+1)]` -/
def P7678199947410418624.Spec : Prop :=
  ∀ n, (P7678199947410418624.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P11114892974236579403

`∩[A191029(n+1), A268753(n+1)]`
-/

namespace A142159.P11114892974236579403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P11114892974236579403

namespace A142159

/-- `∩[A191029(n+1), A268753(n+1)]` -/
def P11114892974236579403.Spec : Prop :=
  ∀ n, (P11114892974236579403.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P16315978870123586555

`∩[A002476(n+1), A268753(n+1)]`
-/

namespace A142159.P16315978870123586555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P16315978870123586555

namespace A142159

/-- `∩[A002476(n+1), A268753(n+1)]` -/
def P16315978870123586555.Spec : Prop :=
  ∀ n, (P16315978870123586555.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P8309091791682831364

`∩[A007645(n+1), A268753(n+1)]`
-/

namespace A142159.P8309091791682831364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P8309091791682831364

namespace A142159

/-- `∩[A007645(n+1), A268753(n+1)]` -/
def P8309091791682831364.Spec : Prop :=
  ∀ n, (P8309091791682831364.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P6741952435328985922

`∩[A045331(n+1), A268753(n+1)]`
-/

namespace A142159.P6741952435328985922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P6741952435328985922

namespace A142159

/-- `∩[A045331(n+1), A268753(n+1)]` -/
def P6741952435328985922.Spec : Prop :=
  ∀ n, (P6741952435328985922.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P1908779197537698650

`∩[A045375(n+1), A268753(n+1)]`
-/

namespace A142159.P1908779197537698650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P1908779197537698650

namespace A142159

/-- `∩[A045375(n+1), A268753(n+1)]` -/
def P1908779197537698650.Spec : Prop :=
  ∀ n, (P1908779197537698650.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P10944667726480180489

`∩[A123365(n+1), A268753(n+1)]`
-/

namespace A142159.P10944667726480180489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P10944667726480180489

namespace A142159

/-- `∩[A123365(n+1), A268753(n+1)]` -/
def P10944667726480180489.Spec : Prop :=
  ∀ n, (P10944667726480180489.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P10164230804606891650

`∩[A268753(n+1), A279815(n+1)]`
-/

namespace A142159.P10164230804606891650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P10164230804606891650

namespace A142159

/-- `∩[A268753(n+1), A279815(n+1)]` -/
def P10164230804606891650.Spec : Prop :=
  ∀ n, (P10164230804606891650.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P13389481691853349989

`∩[A055664(n+1), A268753(n+1)]`
-/

namespace A142159.P13389481691853349989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P13389481691853349989

namespace A142159

/-- `∩[A055664(n+1), A268753(n+1)]` -/
def P13389481691853349989.Spec : Prop :=
  ∀ n, (P13389481691853349989.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P10303577783214237985

`∩[A133290(n+1), A268753(n+1)]`
-/

namespace A142159.P10303577783214237985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P10303577783214237985

namespace A142159

/-- `∩[A133290(n+1), A268753(n+1)]` -/
def P10303577783214237985.Spec : Prop :=
  ∀ n, (P10303577783214237985.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P9015215035660625632

`∩[A137827(n+1), A268753(n+1)]`
-/

namespace A142159.P9015215035660625632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P9015215035660625632

namespace A142159

/-- `∩[A137827(n+1), A268753(n+1)]` -/
def P9015215035660625632.Spec : Prop :=
  ∀ n, (P9015215035660625632.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P14384431634725038257

`filter[A268753(n+1), A070563(#)]`
-/

namespace A142159.P14384431634725038257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142159.P14384431634725038257

namespace A142159

/-- `filter[A268753(n+1), A070563(#)]` -/
def P14384431634725038257.Spec : Prop :=
  ∀ n, P14384431634725038257.a n = A142159 (n + 1)

end A142159

/-! ## A142159.P528656037767284253

`∩[A002476(n+1), A190991(n)]`
-/

namespace A142159.P528656037767284253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P528656037767284253

namespace A142159

/-- `∩[A002476(n+1), A190991(n)]` -/
def P528656037767284253.Spec : Prop :=
  ∀ n, (P528656037767284253.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P14326230687857155911

`∩[A007645(n+1), A190991(n)]`
-/

namespace A142159.P14326230687857155911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P14326230687857155911

namespace A142159

/-- `∩[A007645(n+1), A190991(n)]` -/
def P14326230687857155911.Spec : Prop :=
  ∀ n, (P14326230687857155911.a n : ℤ) = A142159 (n + 1)

end A142159

/-! ## A142159.P2752469433408878868

`∩[A045331(n+1), A190991(n)]`
-/

namespace A142159.P2752469433408878868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142159.P2752469433408878868

namespace A142159

/-- `∩[A045331(n+1), A190991(n)]` -/
def P2752469433408878868.Spec : Prop :=
  ∀ n, (P2752469433408878868.a n : ℤ) = A142159 (n + 1)

end A142159

/-!
# A142160: Primes congruent to 2 mod 39.

The programs for A142160, the canonical program `A142160.P16505545814807861863` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142160 has offset 1).

The definition of A142160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142160.P16505545814807861863

`p?[39*n+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142160

/-- `p?[39*n+2]` -/
def P16505545814807861863.Spec : Prop :=
  ∀ n, (P16505545814807861863.a n : ℤ) = A142160 (n + 1)

theorem P16505545814807861863.correct : P16505545814807861863.Spec := by
  intro n
  simp only [A142160, Nat.add_sub_cancel]

end A142160

/-! ## A142160.P2685884797410281863

`∩[A106886(n+1), A141858(n+1)]`
-/

namespace A142160.P2685884797410281863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P2685884797410281863

namespace A142160

/-- `∩[A106886(n+1), A141858(n+1)]` -/
def P2685884797410281863.Spec : Prop :=
  ∀ n, (P2685884797410281863.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P17959277925727768470

`∩[A106886(n+1), A214889(n+1)]`
-/

namespace A142160.P17959277925727768470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P17959277925727768470

namespace A142160

/-- `∩[A106886(n+1), A214889(n+1)]` -/
def P17959277925727768470.Spec : Prop :=
  ∀ n, (P17959277925727768470.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P8670834356017849753

`∩[A106886(n+1), A215280(n+1)]`
-/

namespace A142160.P8670834356017849753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P8670834356017849753

namespace A142160

/-- `∩[A106886(n+1), A215280(n+1)]` -/
def P8670834356017849753.Spec : Prop :=
  ∀ n, (P8670834356017849753.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P14229361953586117376

`∩[A106886(n+1), A215359(n+1)]`
-/

namespace A142160.P14229361953586117376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P14229361953586117376

namespace A142160

/-- `∩[A106886(n+1), A215359(n+1)]` -/
def P14229361953586117376.Spec : Prop :=
  ∀ n, (P14229361953586117376.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P18067358865659882256

`∩[A106886(n+1), A215375(n+1)]`
-/

namespace A142160.P18067358865659882256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P18067358865659882256

namespace A142160

/-- `∩[A106886(n+1), A215375(n+1)]` -/
def P18067358865659882256.Spec : Prop :=
  ∀ n, (P18067358865659882256.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P14038861895882377735

`∩[A106886(n+1), A215391(n+1)]`
-/

namespace A142160.P14038861895882377735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P14038861895882377735

namespace A142160

/-- `∩[A106886(n+1), A215391(n+1)]` -/
def P14038861895882377735.Spec : Prop :=
  ∀ n, (P14038861895882377735.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P15141141220864222486

`∩[A106886(n+1), A215135(n+1)]`
-/

namespace A142160.P15141141220864222486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P15141141220864222486

namespace A142160

/-- `∩[A106886(n+1), A215135(n+1)]` -/
def P15141141220864222486.Spec : Prop :=
  ∀ n, (P15141141220864222486.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P18241531292827817107

`∩[A106886(n+1), A215379(n+1)]`
-/

namespace A142160.P18241531292827817107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P18241531292827817107

namespace A142160

/-- `∩[A106886(n+1), A215379(n+1)]` -/
def P18241531292827817107.Spec : Prop :=
  ∀ n, (P18241531292827817107.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P5218834478464799656

`∩[A106886(n+1), A215303(n+1)]`
-/

namespace A142160.P5218834478464799656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P5218834478464799656

namespace A142160

/-- `∩[A106886(n+1), A215303(n+1)]` -/
def P5218834478464799656.Spec : Prop :=
  ∀ n, (P5218834478464799656.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P17796408285416244181

`∩[A141858(n+1), A191029(n+1)]`
-/

namespace A142160.P17796408285416244181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P17796408285416244181

namespace A142160

/-- `∩[A141858(n+1), A191029(n+1)]` -/
def P17796408285416244181.Spec : Prop :=
  ∀ n, (P17796408285416244181.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P15398765896110505014

`∩[A003627(n+1), A141858(n+1)]`
-/

namespace A142160.P15398765896110505014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P15398765896110505014

namespace A142160

/-- `∩[A003627(n+1), A141858(n+1)]` -/
def P15398765896110505014.Spec : Prop :=
  ∀ n, (P15398765896110505014.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P6905378210326289852

`∩[A045309(n+1), A141858(n+1)]`
-/

namespace A142160.P6905378210326289852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P6905378210326289852

namespace A142160

/-- `∩[A045309(n+1), A141858(n+1)]` -/
def P6905378210326289852.Spec : Prop :=
  ∀ n, (P6905378210326289852.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P14271805534641698494

`∩[A066501(n+1), A141858(n+1)]`
-/

namespace A142160.P14271805534641698494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P14271805534641698494

namespace A142160

/-- `∩[A066501(n+1), A141858(n+1)]` -/
def P14271805534641698494.Spec : Prop :=
  ∀ n, (P14271805534641698494.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P16131511136443932294

`or(and(1, n), p?[A153080(3*n)])`
-/

namespace A142160.P16131511136443932294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142160.P16131511136443932294

namespace A142160

/-- `or(and(1, n), p?[A153080(3*n)])` -/
def P16131511136443932294.Spec : Prop :=
  ∀ n, P16131511136443932294.a n = A142160 (n + 1)

end A142160

/-! ## A142160.P8147968134751889058

`∩[A003627(n+1), A153080(n)]`
-/

namespace A142160.P8147968134751889058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P8147968134751889058

namespace A142160

/-- `∩[A003627(n+1), A153080(n)]` -/
def P8147968134751889058.Spec : Prop :=
  ∀ n, (P8147968134751889058.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P6729861825439662892

`∩[A045309(n+1), A153080(n)]`
-/

namespace A142160.P6729861825439662892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P6729861825439662892

namespace A142160

/-- `∩[A045309(n+1), A153080(n)]` -/
def P6729861825439662892.Spec : Prop :=
  ∀ n, (P6729861825439662892.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P18344085667851077673

`∩[A106886(n+1), A153080(n)]`
-/

namespace A142160.P18344085667851077673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P18344085667851077673

namespace A142160

/-- `∩[A106886(n+1), A153080(n)]` -/
def P18344085667851077673.Spec : Prop :=
  ∀ n, (P18344085667851077673.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P17542185260882064282

`∩[A191029(n+1), A153080(n)]`
-/

namespace A142160.P17542185260882064282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P17542185260882064282

namespace A142160

/-- `∩[A191029(n+1), A153080(n)]` -/
def P17542185260882064282.Spec : Prop :=
  ∀ n, (P17542185260882064282.a n : ℤ) = A142160 (n + 1)

end A142160

/-! ## A142160.P17387036708732903670

`∩[A003627(n+1), A190991(n)+1]`
-/

namespace A142160.P17387036708732903670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142160.P17387036708732903670

namespace A142160

/-- `∩[A003627(n+1), A190991(n)+1]` -/
def P17387036708732903670.Spec : Prop :=
  ∀ n, (P17387036708732903670.a n : ℤ) = A142160 (n + 1)

end A142160

/-!
# A142161: Primes congruent to 4 mod 39.

The programs for A142161, the canonical program `A142161.P15009882708745755107` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142161 has offset 1).

The definition of A142161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142161.P15009882708745755107

`p?[39*n+4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142161

/-- `p?[39*n+4]` -/
def P15009882708745755107.Spec : Prop :=
  ∀ n, (P15009882708745755107.a n : ℤ) = A142161 (n + 1)

theorem P15009882708745755107.correct : P15009882708745755107.Spec := by
  intro n
  simp only [A142161, Nat.add_sub_cancel]

end A142161

/-! ## A142161.P9471060406112524997

`∩[A093191(n+1), A139494(n+1)]`
-/

namespace A142161.P9471060406112524997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P9471060406112524997

namespace A142161

/-- `∩[A093191(n+1), A139494(n+1)]` -/
def P9471060406112524997.Spec : Prop :=
  ∀ n, (P9471060406112524997.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P15795602681048178836

`∩[A093191(n+1), A267455(n+1)]`
-/

namespace A142161.P15795602681048178836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P15795602681048178836

namespace A142161

/-- `∩[A093191(n+1), A267455(n+1)]` -/
def P15795602681048178836.Spec : Prop :=
  ∀ n, (P15795602681048178836.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P17135822347934662943

`∩[A139494(n+1), A215276(n+1)]`
-/

namespace A142161.P17135822347934662943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P17135822347934662943

namespace A142161

/-- `∩[A139494(n+1), A215276(n+1)]` -/
def P17135822347934662943.Spec : Prop :=
  ∀ n, (P17135822347934662943.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P2914932318078950254

`∩[A215276(n+1), A267455(n+1)]`
-/

namespace A142161.P2914932318078950254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P2914932318078950254

namespace A142161

/-- `∩[A215276(n+1), A267455(n+1)]` -/
def P2914932318078950254.Spec : Prop :=
  ∀ n, (P2914932318078950254.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P12223540277275846963

`∩[A093191(n+1), A191029(n+1)]`
-/

namespace A142161.P12223540277275846963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P12223540277275846963

namespace A142161

/-- `∩[A093191(n+1), A191029(n+1)]` -/
def P12223540277275846963.Spec : Prop :=
  ∀ n, (P12223540277275846963.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P15608525406219365485

`∩[A002476(n+1), A093191(n+1)]`
-/

namespace A142161.P15608525406219365485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P15608525406219365485

namespace A142161

/-- `∩[A002476(n+1), A093191(n+1)]` -/
def P15608525406219365485.Spec : Prop :=
  ∀ n, (P15608525406219365485.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P11547507733437519221

`∩[A007645(n+1), A093191(n+1)]`
-/

namespace A142161.P11547507733437519221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P11547507733437519221

namespace A142161

/-- `∩[A007645(n+1), A093191(n+1)]` -/
def P11547507733437519221.Spec : Prop :=
  ∀ n, (P11547507733437519221.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P11087145344155696619

`∩[A045331(n+1), A093191(n+1)]`
-/

namespace A142161.P11087145344155696619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P11087145344155696619

namespace A142161

/-- `∩[A045331(n+1), A093191(n+1)]` -/
def P11087145344155696619.Spec : Prop :=
  ∀ n, (P11087145344155696619.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P4298519168799090230

`∩[A045375(n+1), A093191(n+1)]`
-/

namespace A142161.P4298519168799090230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P4298519168799090230

namespace A142161

/-- `∩[A045375(n+1), A093191(n+1)]` -/
def P4298519168799090230.Spec : Prop :=
  ∀ n, (P4298519168799090230.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P11021358369948360612

`∩[A093191(n+1), A123365(n+1)]`
-/

namespace A142161.P11021358369948360612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P11021358369948360612

namespace A142161

/-- `∩[A093191(n+1), A123365(n+1)]` -/
def P11021358369948360612.Spec : Prop :=
  ∀ n, (P11021358369948360612.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P17382511949908131870

`∩[A093191(n+1), A279815(n+1)]`
-/

namespace A142161.P17382511949908131870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P17382511949908131870

namespace A142161

/-- `∩[A093191(n+1), A279815(n+1)]` -/
def P17382511949908131870.Spec : Prop :=
  ∀ n, (P17382511949908131870.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P13960714296093558025

`∩[A055664(n+1), A093191(n+1)]`
-/

namespace A142161.P13960714296093558025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P13960714296093558025

namespace A142161

/-- `∩[A055664(n+1), A093191(n+1)]` -/
def P13960714296093558025.Spec : Prop :=
  ∀ n, (P13960714296093558025.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P2845309970875123291

`∩[A093191(n+1), A133290(n+1)]`
-/

namespace A142161.P2845309970875123291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P2845309970875123291

namespace A142161

/-- `∩[A093191(n+1), A133290(n+1)]` -/
def P2845309970875123291.Spec : Prop :=
  ∀ n, (P2845309970875123291.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P4470764935034715620

`∩[A093191(n+1), A137827(n+1)]`
-/

namespace A142161.P4470764935034715620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P4470764935034715620

namespace A142161

/-- `∩[A093191(n+1), A137827(n+1)]` -/
def P4470764935034715620.Spec : Prop :=
  ∀ n, (P4470764935034715620.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P6428393100702761049

`filter[A093191(n+1), A070563(#)]`
-/

namespace A142161.P6428393100702761049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142161.P6428393100702761049

namespace A142161

/-- `filter[A093191(n+1), A070563(#)]` -/
def P6428393100702761049.Spec : Prop :=
  ∀ n, P6428393100702761049.a n = A142161 (n + 1)

end A142161

/-! ## A142161.P14296433951571005120

`∩[A002476(n+1), A127547(n)]`
-/

namespace A142161.P14296433951571005120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P14296433951571005120

namespace A142161

/-- `∩[A002476(n+1), A127547(n)]` -/
def P14296433951571005120.Spec : Prop :=
  ∀ n, (P14296433951571005120.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P14088993330961970642

`∩[A007645(n+1), A127547(n)]`
-/

namespace A142161.P14088993330961970642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P14088993330961970642

namespace A142161

/-- `∩[A007645(n+1), A127547(n)]` -/
def P14088993330961970642.Spec : Prop :=
  ∀ n, (P14088993330961970642.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P18364400668368038270

`∩[A045331(n+1), A127547(n)]`
-/

namespace A142161.P18364400668368038270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P18364400668368038270

namespace A142161

/-- `∩[A045331(n+1), A127547(n)]` -/
def P18364400668368038270.Spec : Prop :=
  ∀ n, (P18364400668368038270.a n : ℤ) = A142161 (n + 1)

end A142161

/-! ## A142161.P5677904651178011042

`∩[A045375(n+1), A127547(n)]`
-/

namespace A142161.P5677904651178011042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142161.P5677904651178011042

namespace A142161

/-- `∩[A045375(n+1), A127547(n)]` -/
def P5677904651178011042.Spec : Prop :=
  ∀ n, (P5677904651178011042.a n : ℤ) = A142161 (n + 1)

end A142161

/-!
# A142162: Primes congruent to 5 mod 39.

The programs for A142162, the canonical program `A142162.P17850514868329960176` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142162 has offset 1).

The definition of A142162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142162.P17850514868329960176

`p?[39*n+5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142162

/-- `p?[39*n+5]` -/
def P17850514868329960176.Spec : Prop :=
  ∀ n, (P17850514868329960176.a n : ℤ) = A142162 (n + 1)

theorem P17850514868329960176.correct : P17850514868329960176.Spec := by
  intro n
  simp only [A142162, Nat.add_sub_cancel]

end A142162

/-! ## A142162.P3936349994802317231

`∩[A102732(n+1), A106886(n+1)]`
-/

namespace A142162.P3936349994802317231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P3936349994802317231

namespace A142162

/-- `∩[A102732(n+1), A106886(n+1)]` -/
def P3936349994802317231.Spec : Prop :=
  ∀ n, (P3936349994802317231.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P11951191121715061902

`p?[A128470(n)+A017209(n)]%A163303(n)`
-/

namespace A142162.P11951191121715061902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A163303 n)

end

end A142162.P11951191121715061902

namespace A142162

/-- `p?[A128470(n)+A017209(n)]%A163303(n)` -/
def P11951191121715061902.Spec : Prop :=
  ∀ n, P11951191121715061902.a n = A142162 (n + 1)

end A142162

/-! ## A142162.P47271917281061536

`∩[A102732(n+1), A191029(n+1)]`
-/

namespace A142162.P47271917281061536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P47271917281061536

namespace A142162

/-- `∩[A102732(n+1), A191029(n+1)]` -/
def P47271917281061536.Spec : Prop :=
  ∀ n, (P47271917281061536.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P14875806740068080509

`∩[A003627(n+1), A102732(n+1)]`
-/

namespace A142162.P14875806740068080509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P14875806740068080509

namespace A142162

/-- `∩[A003627(n+1), A102732(n+1)]` -/
def P14875806740068080509.Spec : Prop :=
  ∀ n, (P14875806740068080509.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P15198650607763593050

`∩[A007528(n+1), A102732(n+1)]`
-/

namespace A142162.P15198650607763593050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P15198650607763593050

namespace A142162

/-- `∩[A007528(n+1), A102732(n+1)]` -/
def P15198650607763593050.Spec : Prop :=
  ∀ n, (P15198650607763593050.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P9347020269728542481

`∩[A045309(n+1), A102732(n+1)]`
-/

namespace A142162.P9347020269728542481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P9347020269728542481

namespace A142162

/-- `∩[A045309(n+1), A102732(n+1)]` -/
def P9347020269728542481.Spec : Prop :=
  ∀ n, (P9347020269728542481.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P15600755278061201239

`∩[A045410(n+1), A102732(n+1)]`
-/

namespace A142162.P15600755278061201239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P15600755278061201239

namespace A142162

/-- `∩[A045410(n+1), A102732(n+1)]` -/
def P15600755278061201239.Spec : Prop :=
  ∀ n, (P15600755278061201239.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P4232152477136074514

`∩[A056955(n+1), A102732(n+1)]`
-/

namespace A142162.P4232152477136074514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P4232152477136074514

namespace A142162

/-- `∩[A056955(n+1), A102732(n+1)]` -/
def P4232152477136074514.Spec : Prop :=
  ∀ n, (P4232152477136074514.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P8468928847036343216

`∩[A066501(n+1), A102732(n+1)]`
-/

namespace A142162.P8468928847036343216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P8468928847036343216

namespace A142162

/-- `∩[A066501(n+1), A102732(n+1)]` -/
def P8468928847036343216.Spec : Prop :=
  ∀ n, (P8468928847036343216.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P11553190793229439869

`∩[A003627(n+1), A154609(n)]`
-/

namespace A142162.P11553190793229439869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P11553190793229439869

namespace A142162

/-- `∩[A003627(n+1), A154609(n)]` -/
def P11553190793229439869.Spec : Prop :=
  ∀ n, (P11553190793229439869.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P11478395615241653557

`∩[A007528(n+1), A154609(n)]`
-/

namespace A142162.P11478395615241653557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P11478395615241653557

namespace A142162

/-- `∩[A007528(n+1), A154609(n)]` -/
def P11478395615241653557.Spec : Prop :=
  ∀ n, (P11478395615241653557.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P14494125225945556231

`∩[A045309(n+1), A154609(n)]`
-/

namespace A142162.P14494125225945556231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P14494125225945556231

namespace A142162

/-- `∩[A045309(n+1), A154609(n)]` -/
def P14494125225945556231.Spec : Prop :=
  ∀ n, (P14494125225945556231.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P9048534509141271613

`∩[A045410(n+1), A154609(n)]`
-/

namespace A142162.P9048534509141271613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P9048534509141271613

namespace A142162

/-- `∩[A045410(n+1), A154609(n)]` -/
def P9048534509141271613.Spec : Prop :=
  ∀ n, (P9048534509141271613.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P16867550707018941386

`∩[A056955(n+1), A154609(n)]`
-/

namespace A142162.P16867550707018941386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P16867550707018941386

namespace A142162

/-- `∩[A056955(n+1), A154609(n)]` -/
def P16867550707018941386.Spec : Prop :=
  ∀ n, (P16867550707018941386.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P12266340923819293643

`∩[A106886(n+1), A154609(n)]`
-/

namespace A142162.P12266340923819293643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P12266340923819293643

namespace A142162

/-- `∩[A106886(n+1), A154609(n)]` -/
def P12266340923819293643.Spec : Prop :=
  ∀ n, (P12266340923819293643.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P5654226596612159325

`∩[A191029(n+1), A154609(n)]`
-/

namespace A142162.P5654226596612159325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P5654226596612159325

namespace A142162

/-- `∩[A191029(n+1), A154609(n)]` -/
def P5654226596612159325.Spec : Prop :=
  ∀ n, (P5654226596612159325.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P365962949486365340

`∩[A003627(n+1), A127547(n)+1]`
-/

namespace A142162.P365962949486365340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P365962949486365340

namespace A142162

/-- `∩[A003627(n+1), A127547(n)+1]` -/
def P365962949486365340.Spec : Prop :=
  ∀ n, (P365962949486365340.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P7711258977831171381

`∩[A007528(n+1), A127547(n)+1]`
-/

namespace A142162.P7711258977831171381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P7711258977831171381

namespace A142162

/-- `∩[A007528(n+1), A127547(n)+1]` -/
def P7711258977831171381.Spec : Prop :=
  ∀ n, (P7711258977831171381.a n : ℤ) = A142162 (n + 1)

end A142162

/-! ## A142162.P2652211092937588484

`∩[A045309(n+1), A127547(n)+1]`
-/

namespace A142162.P2652211092937588484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142162.P2652211092937588484

namespace A142162

/-- `∩[A045309(n+1), A127547(n)+1]` -/
def P2652211092937588484.Spec : Prop :=
  ∀ n, (P2652211092937588484.a n : ℤ) = A142162 (n + 1)

end A142162

/-!
# A142163: Primes congruent to 7 mod 39.

The programs for A142163, the canonical program `A142163.P353492255387975206` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142163 has offset 1).

The definition of A142163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142163.P353492255387975206

`p?[39*n+7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142163

/-- `p?[39*n+7]` -/
def P353492255387975206.Spec : Prop :=
  ∀ n, (P353492255387975206.a n : ℤ) = A142163 (n + 1)

theorem P353492255387975206.correct : P353492255387975206.Spec := by
  intro n
  simp only [A142163, Nat.add_sub_cancel]

end A142163

/-! ## A142163.P16078674951473652302

`∩[A002476(n+1), A140371(n+1)]`
-/

namespace A142163.P16078674951473652302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P16078674951473652302

namespace A142163

/-- `∩[A002476(n+1), A140371(n+1)]` -/
def P16078674951473652302.Spec : Prop :=
  ∀ n, (P16078674951473652302.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P12552889686168439284

`∩[A007645(n+1), A140371(n+1)]`
-/

namespace A142163.P12552889686168439284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P12552889686168439284

namespace A142163

/-- `∩[A007645(n+1), A140371(n+1)]` -/
def P12552889686168439284.Spec : Prop :=
  ∀ n, (P12552889686168439284.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P448559367816393046

`∩[A045331(n+1), A140371(n+1)]`
-/

namespace A142163.P448559367816393046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P448559367816393046

namespace A142163

/-- `∩[A045331(n+1), A140371(n+1)]` -/
def P448559367816393046.Spec : Prop :=
  ∀ n, (P448559367816393046.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P6242287352362801738

`∩[A045375(n+1), A140371(n+1)]`
-/

namespace A142163.P6242287352362801738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P6242287352362801738

namespace A142163

/-- `∩[A045375(n+1), A140371(n+1)]` -/
def P6242287352362801738.Spec : Prop :=
  ∀ n, (P6242287352362801738.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P5711109277962499682

`∩[A123365(n+1), A140371(n+1)]`
-/

namespace A142163.P5711109277962499682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P5711109277962499682

namespace A142163

/-- `∩[A123365(n+1), A140371(n+1)]` -/
def P5711109277962499682.Spec : Prop :=
  ∀ n, (P5711109277962499682.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P13278640359196156819

`∩[A140371(n+1), A279815(n+1)]`
-/

namespace A142163.P13278640359196156819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P13278640359196156819

namespace A142163

/-- `∩[A140371(n+1), A279815(n+1)]` -/
def P13278640359196156819.Spec : Prop :=
  ∀ n, (P13278640359196156819.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P440170737059718979

`∩[A055664(n+1), A140371(n+1)]`
-/

namespace A142163.P440170737059718979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P440170737059718979

namespace A142163

/-- `∩[A055664(n+1), A140371(n+1)]` -/
def P440170737059718979.Spec : Prop :=
  ∀ n, (P440170737059718979.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P16656809903525685104

`∩[A133290(n+1), A140371(n+1)]`
-/

namespace A142163.P16656809903525685104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P16656809903525685104

namespace A142163

/-- `∩[A133290(n+1), A140371(n+1)]` -/
def P16656809903525685104.Spec : Prop :=
  ∀ n, (P16656809903525685104.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P13108426616519539678

`∩[A140371(n+1), A191070(n+1)]`
-/

namespace A142163.P13108426616519539678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P13108426616519539678

namespace A142163

/-- `∩[A140371(n+1), A191070(n+1)]` -/
def P13108426616519539678.Spec : Prop :=
  ∀ n, (P13108426616519539678.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P16314888992289926214

`∩[A137827(n+1), A140371(n+1)]`
-/

namespace A142163.P16314888992289926214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P16314888992289926214

namespace A142163

/-- `∩[A137827(n+1), A140371(n+1)]` -/
def P16314888992289926214.Spec : Prop :=
  ∀ n, (P16314888992289926214.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P15967816691032202062

`filter[A140371(n+1), A070563(#)]`
-/

namespace A142163.P15967816691032202062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142163.P15967816691032202062

namespace A142163

/-- `filter[A140371(n+1), A070563(#)]` -/
def P15967816691032202062.Spec : Prop :=
  ∀ n, P15967816691032202062.a n = A142163 (n + 1)

end A142163

/-! ## A142163.P13262665416880931619

`or(1, p?[A269044(3*n)])`
-/

namespace A142163.P13262665416880931619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142163.P13262665416880931619

namespace A142163

/-- `or(1, p?[A269044(3*n)])` -/
def P13262665416880931619.Spec : Prop :=
  ∀ n, P13262665416880931619.a n = A142163 (n + 1)

end A142163

/-! ## A142163.P16725028806784983317

`∩[A002476(n+1), A269044(n)]`
-/

namespace A142163.P16725028806784983317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P16725028806784983317

namespace A142163

/-- `∩[A002476(n+1), A269044(n)]` -/
def P16725028806784983317.Spec : Prop :=
  ∀ n, (P16725028806784983317.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P9812968993560423936

`∩[A007645(n+1), A269044(n)]`
-/

namespace A142163.P9812968993560423936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P9812968993560423936

namespace A142163

/-- `∩[A007645(n+1), A269044(n)]` -/
def P9812968993560423936.Spec : Prop :=
  ∀ n, (P9812968993560423936.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P11052023447708798317

`∩[A045331(n+1), A269044(n)]`
-/

namespace A142163.P11052023447708798317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P11052023447708798317

namespace A142163

/-- `∩[A045331(n+1), A269044(n)]` -/
def P11052023447708798317.Spec : Prop :=
  ∀ n, (P11052023447708798317.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P13165780570411328668

`∩[A045375(n+1), A269044(n)]`
-/

namespace A142163.P13165780570411328668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P13165780570411328668

namespace A142163

/-- `∩[A045375(n+1), A269044(n)]` -/
def P13165780570411328668.Spec : Prop :=
  ∀ n, (P13165780570411328668.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P4592591765649881471

`∩[A055664(n+1), A269044(n)]`
-/

namespace A142163.P4592591765649881471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P4592591765649881471

namespace A142163

/-- `∩[A055664(n+1), A269044(n)]` -/
def P4592591765649881471.Spec : Prop :=
  ∀ n, (P4592591765649881471.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P3629493496937231629

`∩[A123365(n+1), A269044(n)]`
-/

namespace A142163.P3629493496937231629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P3629493496937231629

namespace A142163

/-- `∩[A123365(n+1), A269044(n)]` -/
def P3629493496937231629.Spec : Prop :=
  ∀ n, (P3629493496937231629.a n : ℤ) = A142163 (n + 1)

end A142163

/-! ## A142163.P15611263707234882857

`∩[A133290(n+1), A269044(n)]`
-/

namespace A142163.P15611263707234882857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142163.P15611263707234882857

namespace A142163

/-- `∩[A133290(n+1), A269044(n)]` -/
def P15611263707234882857.Spec : Prop :=
  ∀ n, (P15611263707234882857.a n : ℤ) = A142163 (n + 1)

end A142163

/-!
# A142164: Primes congruent to 8 mod 39.

The programs for A142164, the canonical program `A142164.P11559206218273394558` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142164 has offset 1).

The definition of A142164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142164.P11559206218273394558

`p?[39*n+8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142164

/-- `p?[39*n+8]` -/
def P11559206218273394558.Spec : Prop :=
  ∀ n, (P11559206218273394558.a n : ℤ) = A142164 (n + 1)

theorem P11559206218273394558.correct : P11559206218273394558.Spec := by
  intro n
  simp only [A142164, Nat.add_sub_cancel]

end A142164

/-! ## A142164.P5127898413412073754

`∩[A092178(n+1), A106886(n+1)]`
-/

namespace A142164.P5127898413412073754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P5127898413412073754

namespace A142164

/-- `∩[A092178(n+1), A106886(n+1)]` -/
def P5127898413412073754.Spec : Prop :=
  ∀ n, (P5127898413412073754.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P995198814641227768

`A000027(p?[A139279(n+1)-n])`
-/

namespace A142164.P995198814641227768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142164.P995198814641227768

namespace A142164

/-- `A000027(p?[A139279(n+1)-n])` -/
def P995198814641227768.Spec : Prop :=
  ∀ n, P995198814641227768.a n = A142164 (n + 1)

end A142164

/-! ## A142164.P12523441798363180826

`p?[A139279(n+1)-n]/A000010(gcd(n, n+1))`
-/

namespace A142164.P12523441798363180826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000010 (Nat.gcd n (n + 1)) : ℚ)

end

end A142164.P12523441798363180826

namespace A142164

/-- `p?[A139279(n+1)-n]/A000010(gcd(n, n+1))` -/
def P12523441798363180826.Spec : Prop :=
  ∀ n, P12523441798363180826.a n = (A142164 (n + 1) : ℚ)

end A142164

/-! ## A142164.P298224703669685832

`∩[A092178(n+1), A191029(n+1)]`
-/

namespace A142164.P298224703669685832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P298224703669685832

namespace A142164

/-- `∩[A092178(n+1), A191029(n+1)]` -/
def P298224703669685832.Spec : Prop :=
  ∀ n, (P298224703669685832.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P8339666226435957278

`∩[A003627(n+1), A092178(n+1)]`
-/

namespace A142164.P8339666226435957278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P8339666226435957278

namespace A142164

/-- `∩[A003627(n+1), A092178(n+1)]` -/
def P8339666226435957278.Spec : Prop :=
  ∀ n, (P8339666226435957278.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P16802008043053007430

`∩[A007528(n+1), A092178(n+1)]`
-/

namespace A142164.P16802008043053007430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P16802008043053007430

namespace A142164

/-- `∩[A007528(n+1), A092178(n+1)]` -/
def P16802008043053007430.Spec : Prop :=
  ∀ n, (P16802008043053007430.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P15738763212550661772

`∩[A045309(n+1), A092178(n+1)]`
-/

namespace A142164.P15738763212550661772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P15738763212550661772

namespace A142164

/-- `∩[A045309(n+1), A092178(n+1)]` -/
def P15738763212550661772.Spec : Prop :=
  ∀ n, (P15738763212550661772.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P7127538073377219695

`∩[A045410(n+1), A092178(n+1)]`
-/

namespace A142164.P7127538073377219695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P7127538073377219695

namespace A142164

/-- `∩[A045410(n+1), A092178(n+1)]` -/
def P7127538073377219695.Spec : Prop :=
  ∀ n, (P7127538073377219695.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P7026440036832397766

`∩[A056955(n+1), A092178(n+1)]`
-/

namespace A142164.P7026440036832397766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P7026440036832397766

namespace A142164

/-- `∩[A056955(n+1), A092178(n+1)]` -/
def P7026440036832397766.Spec : Prop :=
  ∀ n, (P7026440036832397766.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P12638757315466459413

`∩[A066501(n+1), A092178(n+1)]`
-/

namespace A142164.P12638757315466459413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P12638757315466459413

namespace A142164

/-- `∩[A066501(n+1), A092178(n+1)]` -/
def P12638757315466459413.Spec : Prop :=
  ∀ n, (P12638757315466459413.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P17832184813557887836

`∩[A003627(n+1), A269044(n)+1]`
-/

namespace A142164.P17832184813557887836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P17832184813557887836

namespace A142164

/-- `∩[A003627(n+1), A269044(n)+1]` -/
def P17832184813557887836.Spec : Prop :=
  ∀ n, (P17832184813557887836.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P3357399144889863498

`∩[A007528(n+1), A269044(n)+1]`
-/

namespace A142164.P3357399144889863498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P3357399144889863498

namespace A142164

/-- `∩[A007528(n+1), A269044(n)+1]` -/
def P3357399144889863498.Spec : Prop :=
  ∀ n, (P3357399144889863498.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P13426385907853564706

`∩[A003627(n+1), A306285(n+1)]`
-/

namespace A142164.P13426385907853564706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P13426385907853564706

namespace A142164

/-- `∩[A003627(n+1), A306285(n+1)]` -/
def P13426385907853564706.Spec : Prop :=
  ∀ n, (P13426385907853564706.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P7994660546520619195

`∩[A007528(n+1), A306285(n+1)]`
-/

namespace A142164.P7994660546520619195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P7994660546520619195

namespace A142164

/-- `∩[A007528(n+1), A306285(n+1)]` -/
def P7994660546520619195.Spec : Prop :=
  ∀ n, (P7994660546520619195.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P18422083438129097621

`∩[A045309(n+1), A269044(n)+1]`
-/

namespace A142164.P18422083438129097621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P18422083438129097621

namespace A142164

/-- `∩[A045309(n+1), A269044(n)+1]` -/
def P18422083438129097621.Spec : Prop :=
  ∀ n, (P18422083438129097621.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P11962315454601846882

`∩[A045410(n+1), A269044(n)+1]`
-/

namespace A142164.P11962315454601846882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P11962315454601846882

namespace A142164

/-- `∩[A045410(n+1), A269044(n)+1]` -/
def P11962315454601846882.Spec : Prop :=
  ∀ n, (P11962315454601846882.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P12319334238873711328

`∩[A045309(n+1), A306285(n+1)]`
-/

namespace A142164.P12319334238873711328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P12319334238873711328

namespace A142164

/-- `∩[A045309(n+1), A306285(n+1)]` -/
def P12319334238873711328.Spec : Prop :=
  ∀ n, (P12319334238873711328.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P3101048336281146620

`∩[A045410(n+1), A306285(n+1)]`
-/

namespace A142164.P3101048336281146620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P3101048336281146620

namespace A142164

/-- `∩[A045410(n+1), A306285(n+1)]` -/
def P3101048336281146620.Spec : Prop :=
  ∀ n, (P3101048336281146620.a n : ℤ) = A142164 (n + 1)

end A142164

/-! ## A142164.P14217538162195554876

`∩[A056955(n+1), A306285(n+1)]`
-/

namespace A142164.P14217538162195554876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142164.P14217538162195554876

namespace A142164

/-- `∩[A056955(n+1), A306285(n+1)]` -/
def P14217538162195554876.Spec : Prop :=
  ∀ n, (P14217538162195554876.a n : ℤ) = A142164 (n + 1)

end A142164

/-!
# A142165: Primes congruent to 10 mod 39.

The programs for A142165, the canonical program `A142165.P3575926549960295279` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142165 has offset 1).

The definition of A142165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142165.P3575926549960295279

`p?[39*n+10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142165

/-- `p?[39*n+10]` -/
def P3575926549960295279.Spec : Prop :=
  ∀ n, (P3575926549960295279.a n : ℤ) = A142165 (n + 1)

theorem P3575926549960295279.correct : P3575926549960295279.Spec := by
  intro n
  simp only [A142165, Nat.add_sub_cancel]

end A142165

/-! ## A142165.P4895607073844281322

`∩[A139494(n+1), A140375(n+1)]`
-/

namespace A142165.P4895607073844281322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P4895607073844281322

namespace A142165

/-- `∩[A139494(n+1), A140375(n+1)]` -/
def P4895607073844281322.Spec : Prop :=
  ∀ n, (P4895607073844281322.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P8052266092364869177

`∩[A140375(n+1), A267455(n+1)]`
-/

namespace A142165.P8052266092364869177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P8052266092364869177

namespace A142165

/-- `∩[A140375(n+1), A267455(n+1)]` -/
def P8052266092364869177.Spec : Prop :=
  ∀ n, (P8052266092364869177.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P17700901588870506279

`or(1, p?[A304840(n+1)-A190991(n)])`
-/

namespace A142165.P17700901588870506279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) - A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142165.P17700901588870506279

namespace A142165

/-- `or(1, p?[A304840(n+1)-A190991(n)])` -/
def P17700901588870506279.Spec : Prop :=
  ∀ n, P17700901588870506279.a n = A142165 (n + 1)

end A142165

/-! ## A142165.P3788751821611341041

`A000027(p?[A304840(n+1)-A190991(n)])`
-/

namespace A142165.P3788751821611341041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) - A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142165.P3788751821611341041

namespace A142165

/-- `A000027(p?[A304840(n+1)-A190991(n)])` -/
def P3788751821611341041.Spec : Prop :=
  ∀ n, P3788751821611341041.a n = A142165 (n + 1)

end A142165

/-! ## A142165.P9932088225776007218

`p?[A139609(n)+A016777(n)]+A005843(n)%2`
-/

namespace A142165.P9932088225776007218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142165.P9932088225776007218

namespace A142165

/-- `p?[A139609(n)+A016777(n)]+A005843(n)%2` -/
def P9932088225776007218.Spec : Prop :=
  ∀ n, P9932088225776007218.a n = A142165 (n + 1)

end A142165

/-! ## A142165.P8328663945014511034

`∩[A140375(n+1), A191029(n+1)]`
-/

namespace A142165.P8328663945014511034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P8328663945014511034

namespace A142165

/-- `∩[A140375(n+1), A191029(n+1)]` -/
def P8328663945014511034.Spec : Prop :=
  ∀ n, (P8328663945014511034.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P12394649409983966945

`∩[A002476(n+1), A140375(n+1)]`
-/

namespace A142165.P12394649409983966945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P12394649409983966945

namespace A142165

/-- `∩[A002476(n+1), A140375(n+1)]` -/
def P12394649409983966945.Spec : Prop :=
  ∀ n, (P12394649409983966945.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P9132498540911846264

`∩[A007645(n+1), A140375(n+1)]`
-/

namespace A142165.P9132498540911846264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P9132498540911846264

namespace A142165

/-- `∩[A007645(n+1), A140375(n+1)]` -/
def P9132498540911846264.Spec : Prop :=
  ∀ n, (P9132498540911846264.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P17552418373598280099

`∩[A045331(n+1), A140375(n+1)]`
-/

namespace A142165.P17552418373598280099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P17552418373598280099

namespace A142165

/-- `∩[A045331(n+1), A140375(n+1)]` -/
def P17552418373598280099.Spec : Prop :=
  ∀ n, (P17552418373598280099.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P11183567024279668903

`∩[A045375(n+1), A140375(n+1)]`
-/

namespace A142165.P11183567024279668903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P11183567024279668903

namespace A142165

/-- `∩[A045375(n+1), A140375(n+1)]` -/
def P11183567024279668903.Spec : Prop :=
  ∀ n, (P11183567024279668903.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P12368054099985897234

`∩[A123365(n+1), A140375(n+1)]`
-/

namespace A142165.P12368054099985897234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P12368054099985897234

namespace A142165

/-- `∩[A123365(n+1), A140375(n+1)]` -/
def P12368054099985897234.Spec : Prop :=
  ∀ n, (P12368054099985897234.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P17424206443786034038

`∩[A140375(n+1), A279815(n+1)]`
-/

namespace A142165.P17424206443786034038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P17424206443786034038

namespace A142165

/-- `∩[A140375(n+1), A279815(n+1)]` -/
def P17424206443786034038.Spec : Prop :=
  ∀ n, (P17424206443786034038.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P11680773573977749633

`∩[A055664(n+1), A140375(n+1)]`
-/

namespace A142165.P11680773573977749633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P11680773573977749633

namespace A142165

/-- `∩[A055664(n+1), A140375(n+1)]` -/
def P11680773573977749633.Spec : Prop :=
  ∀ n, (P11680773573977749633.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P1287679295680542604

`∩[A133290(n+1), A140375(n+1)]`
-/

namespace A142165.P1287679295680542604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P1287679295680542604

namespace A142165

/-- `∩[A133290(n+1), A140375(n+1)]` -/
def P1287679295680542604.Spec : Prop :=
  ∀ n, (P1287679295680542604.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P10840950758491981885

`∩[A137827(n+1), A140375(n+1)]`
-/

namespace A142165.P10840950758491981885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P10840950758491981885

namespace A142165

/-- `∩[A137827(n+1), A140375(n+1)]` -/
def P10840950758491981885.Spec : Prop :=
  ∀ n, (P10840950758491981885.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P14251447830325232357

`filter[A140375(n+1), A070563(#)]`
-/

namespace A142165.P14251447830325232357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142165.P14251447830325232357

namespace A142165

/-- `filter[A140375(n+1), A070563(#)]` -/
def P14251447830325232357.Spec : Prop :=
  ∀ n, P14251447830325232357.a n = A142165 (n + 1)

end A142165

/-! ## A142165.P14667504606573965991

`∩[A002476(n+1), A269100(n)-1]`
-/

namespace A142165.P14667504606573965991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P14667504606573965991

namespace A142165

/-- `∩[A002476(n+1), A269100(n)-1]` -/
def P14667504606573965991.Spec : Prop :=
  ∀ n, (P14667504606573965991.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P11588643322681312713

`∩[A007645(n+1), A269100(n)-1]`
-/

namespace A142165.P11588643322681312713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P11588643322681312713

namespace A142165

/-- `∩[A007645(n+1), A269100(n)-1]` -/
def P11588643322681312713.Spec : Prop :=
  ∀ n, (P11588643322681312713.a n : ℤ) = A142165 (n + 1)

end A142165

/-! ## A142165.P8701563997950270630

`∩[A045331(n+1), A269100(n)-1]`
-/

namespace A142165.P8701563997950270630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142165.P8701563997950270630

namespace A142165

/-- `∩[A045331(n+1), A269100(n)-1]` -/
def P8701563997950270630.Spec : Prop :=
  ∀ n, (P8701563997950270630.a n : ℤ) = A142165 (n + 1)

end A142165

/-!
# A142166: Primes congruent to 11 mod 39.

The programs for A142166, the canonical program `A142166.P17748124684229174715` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142166 has offset 1).

The definition of A142166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142166.P17748124684229174715

`p?[a(n-1)+39]` with `a(0)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142166

/-- `p?[a(n-1)+39]` -/
def P17748124684229174715.Spec : Prop :=
  ∀ n, (P17748124684229174715.a n : ℤ) = A142166 (n + 1)

theorem P17748124684229174715.correct : P17748124684229174715.Spec := by
  intro n
  simp only [A142166, Nat.add_sub_cancel]

end A142166

/-! ## A142166.P12621705113724912238

`p?[38*n+11+n]`
-/

namespace A142166.P12621705113724912238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * n + 11 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142166.P12621705113724912238

namespace A142166

/-- `p?[38*n+11+n]` -/
def P12621705113724912238.Spec : Prop :=
  ∀ n, (P12621705113724912238.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P8159009730852795414

`∩[A106886(n+1), A140373(n+1)]`
-/

namespace A142166.P8159009730852795414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P8159009730852795414

namespace A142166

/-- `∩[A106886(n+1), A140373(n+1)]` -/
def P8159009730852795414.Spec : Prop :=
  ∀ n, (P8159009730852795414.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P15064540965144735096

`∩[A140373(n+1), A191029(n+1)]`
-/

namespace A142166.P15064540965144735096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P15064540965144735096

namespace A142166

/-- `∩[A140373(n+1), A191029(n+1)]` -/
def P15064540965144735096.Spec : Prop :=
  ∀ n, (P15064540965144735096.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P10660466476100758331

`∩[A003627(n+1), A140373(n+1)]`
-/

namespace A142166.P10660466476100758331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P10660466476100758331

namespace A142166

/-- `∩[A003627(n+1), A140373(n+1)]` -/
def P10660466476100758331.Spec : Prop :=
  ∀ n, (P10660466476100758331.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P10880692677751142266

`∩[A007528(n+1), A140373(n+1)]`
-/

namespace A142166.P10880692677751142266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P10880692677751142266

namespace A142166

/-- `∩[A007528(n+1), A140373(n+1)]` -/
def P10880692677751142266.Spec : Prop :=
  ∀ n, (P10880692677751142266.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P7242389686747312278

`∩[A045309(n+1), A140373(n+1)]`
-/

namespace A142166.P7242389686747312278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P7242389686747312278

namespace A142166

/-- `∩[A045309(n+1), A140373(n+1)]` -/
def P7242389686747312278.Spec : Prop :=
  ∀ n, (P7242389686747312278.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P17211609173321118573

`∩[A045410(n+1), A140373(n+1)]`
-/

namespace A142166.P17211609173321118573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P17211609173321118573

namespace A142166

/-- `∩[A045410(n+1), A140373(n+1)]` -/
def P17211609173321118573.Spec : Prop :=
  ∀ n, (P17211609173321118573.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P11996804674469957095

`∩[A056955(n+1), A140373(n+1)]`
-/

namespace A142166.P11996804674469957095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P11996804674469957095

namespace A142166

/-- `∩[A056955(n+1), A140373(n+1)]` -/
def P11996804674469957095.Spec : Prop :=
  ∀ n, (P11996804674469957095.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P5350910313517066038

`∩[A066501(n+1), A140373(n+1)]`
-/

namespace A142166.P5350910313517066038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P5350910313517066038

namespace A142166

/-- `∩[A066501(n+1), A140373(n+1)]` -/
def P5350910313517066038.Spec : Prop :=
  ∀ n, (P5350910313517066038.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P560800355316798759

`∩[A003627(n+1), A269100(n)]`
-/

namespace A142166.P560800355316798759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P560800355316798759

namespace A142166

/-- `∩[A003627(n+1), A269100(n)]` -/
def P560800355316798759.Spec : Prop :=
  ∀ n, (P560800355316798759.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P14735032974451265662

`∩[A007528(n+1), A269100(n)]`
-/

namespace A142166.P14735032974451265662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P14735032974451265662

namespace A142166

/-- `∩[A007528(n+1), A269100(n)]` -/
def P14735032974451265662.Spec : Prop :=
  ∀ n, (P14735032974451265662.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P16880992379857828164

`∩[A045309(n+1), A269100(n)]`
-/

namespace A142166.P16880992379857828164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P16880992379857828164

namespace A142166

/-- `∩[A045309(n+1), A269100(n)]` -/
def P16880992379857828164.Spec : Prop :=
  ∀ n, (P16880992379857828164.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P9797769912236213001

`∩[A045410(n+1), A269100(n)]`
-/

namespace A142166.P9797769912236213001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P9797769912236213001

namespace A142166

/-- `∩[A045410(n+1), A269100(n)]` -/
def P9797769912236213001.Spec : Prop :=
  ∀ n, (P9797769912236213001.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P11643628441078257677

`∩[A056955(n+1), A269100(n)]`
-/

namespace A142166.P11643628441078257677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P11643628441078257677

namespace A142166

/-- `∩[A056955(n+1), A269100(n)]` -/
def P11643628441078257677.Spec : Prop :=
  ∀ n, (P11643628441078257677.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P2946719577588598791

`∩[A106886(n+1), A269100(n)]`
-/

namespace A142166.P2946719577588598791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P2946719577588598791

namespace A142166

/-- `∩[A106886(n+1), A269100(n)]` -/
def P2946719577588598791.Spec : Prop :=
  ∀ n, (P2946719577588598791.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P4149316198268389662

`∩[A191029(n+1), A269100(n)]`
-/

namespace A142166.P4149316198268389662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P4149316198268389662

namespace A142166

/-- `∩[A191029(n+1), A269100(n)]` -/
def P4149316198268389662.Spec : Prop :=
  ∀ n, (P4149316198268389662.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P13161732851754530288

`∩[A003627(n+1), A017653(n)+n]`
-/

namespace A142166.P13161732851754530288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P13161732851754530288

namespace A142166

/-- `∩[A003627(n+1), A017653(n)+n]` -/
def P13161732851754530288.Spec : Prop :=
  ∀ n, (P13161732851754530288.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P308950242758602865

`∩[A007528(n+1), A017653(n)+n]`
-/

namespace A142166.P308950242758602865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P308950242758602865

namespace A142166

/-- `∩[A007528(n+1), A017653(n)+n]` -/
def P308950242758602865.Spec : Prop :=
  ∀ n, (P308950242758602865.a n : ℤ) = A142166 (n + 1)

end A142166

/-! ## A142166.P15311954085958522655

`∩[A056955(n+1), A017653(n)+n]`
-/

namespace A142166.P15311954085958522655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142166.P15311954085958522655

namespace A142166

/-- `∩[A056955(n+1), A017653(n)+n]` -/
def P15311954085958522655.Spec : Prop :=
  ∀ n, (P15311954085958522655.a n : ℤ) = A142166 (n + 1)

end A142166

/-!
# A142167: Primes congruent to 14 mod 39.

The programs for A142167, the canonical program `A142167.P5362429052921519213` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142167 has offset 1).

The definition of A142167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142167.P5362429052921519213

`p?[39*n+14]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142167

/-- `p?[39*n+14]` -/
def P5362429052921519213.Spec : Prop :=
  ∀ n, (P5362429052921519213.a n : ℤ) = A142167 (n + 1)

theorem P5362429052921519213.correct : P5362429052921519213.Spec := by
  intro n
  simp only [A142167, Nat.add_sub_cancel]

end A142167

/-! ## A142167.P1447789808103431026

`record[p?[lcm(27, n+1)-n]]`
-/

namespace A142167.P1447789808103431026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 27 (n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142167.P1447789808103431026

namespace A142167

/-- `record[p?[lcm(27, n+1)-n]]` -/
def P1447789808103431026.Spec : Prop :=
  ∀ n, P1447789808103431026.a n = A142167 (n + 1)

end A142167

/-! ## A142167.P11110374005789123334

`∩[A003627(n+1), A268753(n+1)]`
-/

namespace A142167.P11110374005789123334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P11110374005789123334

namespace A142167

/-- `∩[A003627(n+1), A268753(n+1)]` -/
def P11110374005789123334.Spec : Prop :=
  ∀ n, (P11110374005789123334.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P939075609391493195

`∩[A007528(n+1), A268753(n+1)]`
-/

namespace A142167.P939075609391493195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P939075609391493195

namespace A142167

/-- `∩[A007528(n+1), A268753(n+1)]` -/
def P939075609391493195.Spec : Prop :=
  ∀ n, (P939075609391493195.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P11734769731646619459

`∩[A045410(n+1), A268753(n+1)]`
-/

namespace A142167.P11734769731646619459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P11734769731646619459

namespace A142167

/-- `∩[A045410(n+1), A268753(n+1)]` -/
def P11734769731646619459.Spec : Prop :=
  ∀ n, (P11734769731646619459.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P10257637459016688138

`∩[A056955(n+1), A268753(n+1)]`
-/

namespace A142167.P10257637459016688138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P10257637459016688138

namespace A142167

/-- `∩[A056955(n+1), A268753(n+1)]` -/
def P10257637459016688138.Spec : Prop :=
  ∀ n, (P10257637459016688138.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P8065370795378412612

`∩[A045309(n+1), A268753(n+1)]`
-/

namespace A142167.P8065370795378412612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P8065370795378412612

namespace A142167

/-- `∩[A045309(n+1), A268753(n+1)]` -/
def P8065370795378412612.Spec : Prop :=
  ∀ n, (P8065370795378412612.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P12278902791716255132

`∩[A191070(n+1), A268753(n+1)]`
-/

namespace A142167.P12278902791716255132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P12278902791716255132

namespace A142167

/-- `∩[A191070(n+1), A268753(n+1)]` -/
def P12278902791716255132.Spec : Prop :=
  ∀ n, (P12278902791716255132.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P14341229920333880970

`∩[A066501(n+1), A268753(n+1)]`
-/

namespace A142167.P14341229920333880970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P14341229920333880970

namespace A142167

/-- `∩[A066501(n+1), A268753(n+1)]` -/
def P14341229920333880970.Spec : Prop :=
  ∀ n, (P14341229920333880970.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P12875665130672487048

`record[p?[A190991(A006370(n))]]`
-/

namespace A142167.P12875665130672487048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A006370 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142167.P12875665130672487048

namespace A142167

/-- `record[p?[A190991(A006370(n))]]` -/
def P12875665130672487048.Spec : Prop :=
  ∀ n, P12875665130672487048.a n = A142167 (n + 1)

end A142167

/-! ## A142167.P15516536781459715681

`or(1, p?[A190991(A016777(n))])`
-/

namespace A142167.P15516536781459715681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142167.P15516536781459715681

namespace A142167

/-- `or(1, p?[A190991(A016777(n))])` -/
def P15516536781459715681.Spec : Prop :=
  ∀ n, P15516536781459715681.a n = A142167 (n + 1)

end A142167

/-! ## A142167.P4619107556840274190

`∩[A003627(n+1), A190991(n)]`
-/

namespace A142167.P4619107556840274190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P4619107556840274190

namespace A142167

/-- `∩[A003627(n+1), A190991(n)]` -/
def P4619107556840274190.Spec : Prop :=
  ∀ n, (P4619107556840274190.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P2849316337973723989

`∩[A007528(n+1), A190991(n)]`
-/

namespace A142167.P2849316337973723989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P2849316337973723989

namespace A142167

/-- `∩[A007528(n+1), A190991(n)]` -/
def P2849316337973723989.Spec : Prop :=
  ∀ n, (P2849316337973723989.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P10028159273252909918

`∩[A045309(n+1), A190991(n)]`
-/

namespace A142167.P10028159273252909918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P10028159273252909918

namespace A142167

/-- `∩[A045309(n+1), A190991(n)]` -/
def P10028159273252909918.Spec : Prop :=
  ∀ n, (P10028159273252909918.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P14207413745156160891

`∩[A045410(n+1), A190991(n)]`
-/

namespace A142167.P14207413745156160891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P14207413745156160891

namespace A142167

/-- `∩[A045410(n+1), A190991(n)]` -/
def P14207413745156160891.Spec : Prop :=
  ∀ n, (P14207413745156160891.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P5425193004502288492

`∩[A056955(n+1), A190991(n)]`
-/

namespace A142167.P5425193004502288492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P5425193004502288492

namespace A142167

/-- `∩[A056955(n+1), A190991(n)]` -/
def P5425193004502288492.Spec : Prop :=
  ∀ n, (P5425193004502288492.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P17816870562781366223

`∩[A191070(n+1), A190991(n)]`
-/

namespace A142167.P17816870562781366223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P17816870562781366223

namespace A142167

/-- `∩[A191070(n+1), A190991(n)]` -/
def P17816870562781366223.Spec : Prop :=
  ∀ n, (P17816870562781366223.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P3856187650452597570

`∩[A003627(n+1), A153080(n)-1]`
-/

namespace A142167.P3856187650452597570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P3856187650452597570

namespace A142167

/-- `∩[A003627(n+1), A153080(n)-1]` -/
def P3856187650452597570.Spec : Prop :=
  ∀ n, (P3856187650452597570.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P14002952930332385286

`∩[A045309(n+1), A153080(n)-1]`
-/

namespace A142167.P14002952930332385286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P14002952930332385286

namespace A142167

/-- `∩[A045309(n+1), A153080(n)-1]` -/
def P14002952930332385286.Spec : Prop :=
  ∀ n, (P14002952930332385286.a n : ℤ) = A142167 (n + 1)

end A142167

/-! ## A142167.P5880561508003950026

`∩[A003627(n+1), A131877(n)-n]`
-/

namespace A142167.P5880561508003950026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142167.P5880561508003950026

namespace A142167

/-- `∩[A003627(n+1), A131877(n)-n]` -/
def P5880561508003950026.Spec : Prop :=
  ∀ n, (P5880561508003950026.a n : ℤ) = A142167 (n + 1)

end A142167

/-!
# A142168: Primes congruent to 16 mod 39.

The programs for A142168, the canonical program `A142168.P8355987088283848788` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142168 has offset 1).

The definition of A142168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142168.P8355987088283848788

`A100202(eq[1, A100202(n+1)%3]+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142168

/-- `A100202(eq[1, A100202(n+1)%3]+1)` -/
def P8355987088283848788.Spec : Prop :=
  ∀ n, P8355987088283848788.a n = A142168 (n + 1)

theorem P8355987088283848788.correct : P8355987088283848788.Spec := by
  intro n
  simp only [A142168, Nat.add_sub_cancel]

end A142168

/-! ## A142168.P10424237633240852337

`p?[39*n+16]`
-/

namespace A142168.P10424237633240852337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142168.P10424237633240852337

namespace A142168

/-- `p?[39*n+16]` -/
def P10424237633240852337.Spec : Prop :=
  ∀ n, (P10424237633240852337.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P10742061781696086179

`∩[A100202(n+1), A139494(n+1)]`
-/

namespace A142168.P10742061781696086179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P10742061781696086179

namespace A142168

/-- `∩[A100202(n+1), A139494(n+1)]` -/
def P10742061781696086179.Spec : Prop :=
  ∀ n, (P10742061781696086179.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P10659494434047610201

`∩[A139494(n+1), A214889(n+1)]`
-/

namespace A142168.P10659494434047610201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P10659494434047610201

namespace A142168

/-- `∩[A139494(n+1), A214889(n+1)]` -/
def P10659494434047610201.Spec : Prop :=
  ∀ n, (P10659494434047610201.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P10047966345135984712

`∩[A139494(n+1), A215387(n+1)]`
-/

namespace A142168.P10047966345135984712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P10047966345135984712

namespace A142168

/-- `∩[A139494(n+1), A215387(n+1)]` -/
def P10047966345135984712.Spec : Prop :=
  ∀ n, (P10047966345135984712.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P16225205990273642195

`∩[A139494(n+1), A215103(n+1)]`
-/

namespace A142168.P16225205990273642195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P16225205990273642195

namespace A142168

/-- `∩[A139494(n+1), A215103(n+1)]` -/
def P16225205990273642195.Spec : Prop :=
  ∀ n, (P16225205990273642195.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P16558578977087012396

`∩[A139494(n+1), A215131(n+1)]`
-/

namespace A142168.P16558578977087012396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P16558578977087012396

namespace A142168

/-- `∩[A139494(n+1), A215131(n+1)]` -/
def P16558578977087012396.Spec : Prop :=
  ∀ n, (P16558578977087012396.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P157486081811533761

`A000027(p?[A154267(n)+A017533(n)])`
-/

namespace A142168.P157486081811533761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142168.P157486081811533761

namespace A142168

/-- `A000027(p?[A154267(n)+A017533(n)])` -/
def P157486081811533761.Spec : Prop :=
  ∀ n, P157486081811533761.a n = A142168 (n + 1)

end A142168

/-! ## A142168.P15710292432872642801

`A000027(p?[A154266(n)+A017569(n)])`
-/

namespace A142168.P15710292432872642801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142168.P15710292432872642801

namespace A142168

/-- `A000027(p?[A154266(n)+A017569(n)])` -/
def P15710292432872642801.Spec : Prop :=
  ∀ n, P15710292432872642801.a n = A142168 (n + 1)

end A142168

/-! ## A142168.P7118357123034325590

`A000027(p?[A053741(n)-A017437(n)])`
-/

namespace A142168.P7118357123034325590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142168.P7118357123034325590

namespace A142168

/-- `A000027(p?[A053741(n)-A017437(n)])` -/
def P7118357123034325590.Spec : Prop :=
  ∀ n, P7118357123034325590.a n = A142168 (n + 1)

end A142168

/-! ## A142168.P2589349651382416947

`A000027(p?[A053742(n)-A017497(n)])`
-/

namespace A142168.P2589349651382416947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142168.P2589349651382416947

namespace A142168

/-- `A000027(p?[A053742(n)-A017497(n)])` -/
def P2589349651382416947.Spec : Prop :=
  ∀ n, P2589349651382416947.a n = A142168 (n + 1)

end A142168

/-! ## A142168.P3062774091184578281

`∩[A139494(n+1), A215155(n+1)]`
-/

namespace A142168.P3062774091184578281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P3062774091184578281

namespace A142168

/-- `∩[A139494(n+1), A215155(n+1)]` -/
def P3062774091184578281.Spec : Prop :=
  ∀ n, (P3062774091184578281.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P9678252063838410138

`∩[A139494(n+1), A167119(n+1)]`
-/

namespace A142168.P9678252063838410138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P9678252063838410138

namespace A142168

/-- `∩[A139494(n+1), A167119(n+1)]` -/
def P9678252063838410138.Spec : Prop :=
  ∀ n, (P9678252063838410138.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P8340354620568999850

`∩[A100202(n+1), A191029(n+1)]`
-/

namespace A142168.P8340354620568999850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P8340354620568999850

namespace A142168

/-- `∩[A100202(n+1), A191029(n+1)]` -/
def P8340354620568999850.Spec : Prop :=
  ∀ n, (P8340354620568999850.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P15294724219811449751

`∩[A002476(n+1), A100202(n+1)]`
-/

namespace A142168.P15294724219811449751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P15294724219811449751

namespace A142168

/-- `∩[A002476(n+1), A100202(n+1)]` -/
def P15294724219811449751.Spec : Prop :=
  ∀ n, (P15294724219811449751.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P10080930124961851412

`∩[A045375(n+1), A100202(n+1)]`
-/

namespace A142168.P10080930124961851412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P10080930124961851412

namespace A142168

/-- `∩[A045375(n+1), A100202(n+1)]` -/
def P10080930124961851412.Spec : Prop :=
  ∀ n, (P10080930124961851412.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P729295167349205995

`∩[A100202(n+1), A123365(n+1)]`
-/

namespace A142168.P729295167349205995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P729295167349205995

namespace A142168

/-- `∩[A100202(n+1), A123365(n+1)]` -/
def P729295167349205995.Spec : Prop :=
  ∀ n, (P729295167349205995.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P11376178593776733649

`∩[A100202(n+1), A133290(n+1)]`
-/

namespace A142168.P11376178593776733649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P11376178593776733649

namespace A142168

/-- `∩[A100202(n+1), A133290(n+1)]` -/
def P11376178593776733649.Spec : Prop :=
  ∀ n, (P11376178593776733649.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P7153947765019645801

`∩[A100202(n+1), A137827(n+1)]`
-/

namespace A142168.P7153947765019645801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142168.P7153947765019645801

namespace A142168

/-- `∩[A100202(n+1), A137827(n+1)]` -/
def P7153947765019645801.Spec : Prop :=
  ∀ n, (P7153947765019645801.a n : ℤ) = A142168 (n + 1)

end A142168

/-! ## A142168.P80743093516934271

`filter[A100202(n+1), A070563(#)]`
-/

namespace A142168.P80743093516934271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142168.P80743093516934271

namespace A142168

/-- `filter[A100202(n+1), A070563(#)]` -/
def P80743093516934271.Spec : Prop :=
  ∀ n, P80743093516934271.a n = A142168 (n + 1)

end A142168

/-!
# A142169: Primes congruent to 17 mod 39.

The programs for A142169, the canonical program `A142169.P15279442436490851081` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142169 has offset 1).

The definition of A142169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142169.P15279442436490851081

`p?[39*n+17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142169

/-- `p?[39*n+17]` -/
def P15279442436490851081.Spec : Prop :=
  ∀ n, (P15279442436490851081.a n : ℤ) = A142169 (n + 1)

theorem P15279442436490851081.correct : P15279442436490851081.Spec := by
  intro n
  simp only [A142169, Nat.add_sub_cancel]

end A142169

/-! ## A142169.P13038857559088185771

`∩[A003627(n+1), A093191(n+1)]`
-/

namespace A142169.P13038857559088185771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P13038857559088185771

namespace A142169

/-- `∩[A003627(n+1), A093191(n+1)]` -/
def P13038857559088185771.Spec : Prop :=
  ∀ n, (P13038857559088185771.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P13668014631118801382

`∩[A007528(n+1), A093191(n+1)]`
-/

namespace A142169.P13668014631118801382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P13668014631118801382

namespace A142169

/-- `∩[A007528(n+1), A093191(n+1)]` -/
def P13668014631118801382.Spec : Prop :=
  ∀ n, (P13668014631118801382.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P2205575644969225201

`∩[A045309(n+1), A093191(n+1)]`
-/

namespace A142169.P2205575644969225201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P2205575644969225201

namespace A142169

/-- `∩[A045309(n+1), A093191(n+1)]` -/
def P2205575644969225201.Spec : Prop :=
  ∀ n, (P2205575644969225201.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P17938142909522218745

`∩[A045410(n+1), A093191(n+1)]`
-/

namespace A142169.P17938142909522218745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P17938142909522218745

namespace A142169

/-- `∩[A045410(n+1), A093191(n+1)]` -/
def P17938142909522218745.Spec : Prop :=
  ∀ n, (P17938142909522218745.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P3799766955582971703

`∩[A056955(n+1), A093191(n+1)]`
-/

namespace A142169.P3799766955582971703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P3799766955582971703

namespace A142169

/-- `∩[A056955(n+1), A093191(n+1)]` -/
def P3799766955582971703.Spec : Prop :=
  ∀ n, (P3799766955582971703.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P8897375590058503411

`∩[A093191(n+1), A191070(n+1)]`
-/

namespace A142169.P8897375590058503411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P8897375590058503411

namespace A142169

/-- `∩[A093191(n+1), A191070(n+1)]` -/
def P8897375590058503411.Spec : Prop :=
  ∀ n, (P8897375590058503411.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P2302517807486650328

`∩[A066501(n+1), A093191(n+1)]`
-/

namespace A142169.P2302517807486650328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P2302517807486650328

namespace A142169

/-- `∩[A066501(n+1), A093191(n+1)]` -/
def P2302517807486650328.Spec : Prop :=
  ∀ n, (P2302517807486650328.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P6150323972264463886

`∩[A003627(n+1), A127547(n)]`
-/

namespace A142169.P6150323972264463886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P6150323972264463886

namespace A142169

/-- `∩[A003627(n+1), A127547(n)]` -/
def P6150323972264463886.Spec : Prop :=
  ∀ n, (P6150323972264463886.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P14583748034278633474

`∩[A007528(n+1), A127547(n)]`
-/

namespace A142169.P14583748034278633474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P14583748034278633474

namespace A142169

/-- `∩[A007528(n+1), A127547(n)]` -/
def P14583748034278633474.Spec : Prop :=
  ∀ n, (P14583748034278633474.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P7267736791078498309

`∩[A045309(n+1), A127547(n)]`
-/

namespace A142169.P7267736791078498309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P7267736791078498309

namespace A142169

/-- `∩[A045309(n+1), A127547(n)]` -/
def P7267736791078498309.Spec : Prop :=
  ∀ n, (P7267736791078498309.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P2865985603325504435

`∩[A045410(n+1), A127547(n)]`
-/

namespace A142169.P2865985603325504435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P2865985603325504435

namespace A142169

/-- `∩[A045410(n+1), A127547(n)]` -/
def P2865985603325504435.Spec : Prop :=
  ∀ n, (P2865985603325504435.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P6779899997754133109

`∩[A056955(n+1), A127547(n)]`
-/

namespace A142169.P6779899997754133109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P6779899997754133109

namespace A142169

/-- `∩[A056955(n+1), A127547(n)]` -/
def P6779899997754133109.Spec : Prop :=
  ∀ n, (P6779899997754133109.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P4587370500560884394

`∩[A191070(n+1), A127547(n)]`
-/

namespace A142169.P4587370500560884394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P4587370500560884394

namespace A142169

/-- `∩[A191070(n+1), A127547(n)]` -/
def P4587370500560884394.Spec : Prop :=
  ∀ n, (P4587370500560884394.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P9995501706299318265

`∩[A003627(n+1), A153080(n)+2]`
-/

namespace A142169.P9995501706299318265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P9995501706299318265

namespace A142169

/-- `∩[A003627(n+1), A153080(n)+2]` -/
def P9995501706299318265.Spec : Prop :=
  ∀ n, (P9995501706299318265.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P6106691903539959727

`∩[A003627(n+1), A154609(n)-1]`
-/

namespace A142169.P6106691903539959727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P6106691903539959727

namespace A142169

/-- `∩[A003627(n+1), A154609(n)-1]` -/
def P6106691903539959727.Spec : Prop :=
  ∀ n, (P6106691903539959727.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P14034047320801737557

`∩[A007528(n+1), A154609(n)-1]`
-/

namespace A142169.P14034047320801737557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P14034047320801737557

namespace A142169

/-- `∩[A007528(n+1), A154609(n)-1]` -/
def P14034047320801737557.Spec : Prop :=
  ∀ n, (P14034047320801737557.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P17415539485651046013

`∩[A045309(n+1), A153080(n)+2]`
-/

namespace A142169.P17415539485651046013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P17415539485651046013

namespace A142169

/-- `∩[A045309(n+1), A153080(n)+2]` -/
def P17415539485651046013.Spec : Prop :=
  ∀ n, (P17415539485651046013.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P11584465496569823553

`∩[A045309(n+1), A154609(n)-1]`
-/

namespace A142169.P11584465496569823553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P11584465496569823553

namespace A142169

/-- `∩[A045309(n+1), A154609(n)-1]` -/
def P11584465496569823553.Spec : Prop :=
  ∀ n, (P11584465496569823553.a n : ℤ) = A142169 (n + 1)

end A142169

/-! ## A142169.P12441106485984626896

`∩[A045410(n+1), A154609(n)-1]`
-/

namespace A142169.P12441106485984626896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142169.P12441106485984626896

namespace A142169

/-- `∩[A045410(n+1), A154609(n)-1]` -/
def P12441106485984626896.Spec : Prop :=
  ∀ n, (P12441106485984626896.a n : ℤ) = A142169 (n + 1)

end A142169

/-!
# A142170: Primes congruent to 19 mod 39.

The programs for A142170, the canonical program `A142170.P17066317394588974081` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142170 has offset 1).

The definition of A142170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142170.P17066317394588974081

`p?[39*n+19]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142170

/-- `p?[39*n+19]` -/
def P17066317394588974081.Spec : Prop :=
  ∀ n, (P17066317394588974081.a n : ℤ) = A142170 (n + 1)

theorem P17066317394588974081.correct : P17066317394588974081.Spec := by
  intro n
  simp only [A142170, Nat.add_sub_cancel]

end A142170

/-! ## A142170.P15539097783923676674

`∩[A002476(n+1), A093350(n+1)]`
-/

namespace A142170.P15539097783923676674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P15539097783923676674

namespace A142170

/-- `∩[A002476(n+1), A093350(n+1)]` -/
def P15539097783923676674.Spec : Prop :=
  ∀ n, (P15539097783923676674.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P16942095090953952321

`∩[A007645(n+1), A093350(n+1)]`
-/

namespace A142170.P16942095090953952321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P16942095090953952321

namespace A142170

/-- `∩[A007645(n+1), A093350(n+1)]` -/
def P16942095090953952321.Spec : Prop :=
  ∀ n, (P16942095090953952321.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P2445605658524986288

`∩[A045331(n+1), A093350(n+1)]`
-/

namespace A142170.P2445605658524986288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P2445605658524986288

namespace A142170

/-- `∩[A045331(n+1), A093350(n+1)]` -/
def P2445605658524986288.Spec : Prop :=
  ∀ n, (P2445605658524986288.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P12366954778165819827

`∩[A045375(n+1), A093350(n+1)]`
-/

namespace A142170.P12366954778165819827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P12366954778165819827

namespace A142170

/-- `∩[A045375(n+1), A093350(n+1)]` -/
def P12366954778165819827.Spec : Prop :=
  ∀ n, (P12366954778165819827.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P6966047785345845146

`∩[A093350(n+1), A123365(n+1)]`
-/

namespace A142170.P6966047785345845146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P6966047785345845146

namespace A142170

/-- `∩[A093350(n+1), A123365(n+1)]` -/
def P6966047785345845146.Spec : Prop :=
  ∀ n, (P6966047785345845146.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P3969176485927968923

`∩[A093350(n+1), A279815(n+1)]`
-/

namespace A142170.P3969176485927968923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P3969176485927968923

namespace A142170

/-- `∩[A093350(n+1), A279815(n+1)]` -/
def P3969176485927968923.Spec : Prop :=
  ∀ n, (P3969176485927968923.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P4046741691496046701

`∩[A055664(n+1), A093350(n+1)]`
-/

namespace A142170.P4046741691496046701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P4046741691496046701

namespace A142170

/-- `∩[A055664(n+1), A093350(n+1)]` -/
def P4046741691496046701.Spec : Prop :=
  ∀ n, (P4046741691496046701.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P7233521753406709321

`∩[A093350(n+1), A133290(n+1)]`
-/

namespace A142170.P7233521753406709321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P7233521753406709321

namespace A142170

/-- `∩[A093350(n+1), A133290(n+1)]` -/
def P7233521753406709321.Spec : Prop :=
  ∀ n, (P7233521753406709321.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P8864689571501550704

`∩[A093350(n+1), A191070(n+1)]`
-/

namespace A142170.P8864689571501550704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P8864689571501550704

namespace A142170

/-- `∩[A093350(n+1), A191070(n+1)]` -/
def P8864689571501550704.Spec : Prop :=
  ∀ n, (P8864689571501550704.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P4886495138170494042

`∩[A093350(n+1), A137827(n+1)]`
-/

namespace A142170.P4886495138170494042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P4886495138170494042

namespace A142170

/-- `∩[A093350(n+1), A137827(n+1)]` -/
def P4886495138170494042.Spec : Prop :=
  ∀ n, (P4886495138170494042.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P7940574189497795256

`filter[A093350(n+1), A070563(#)]`
-/

namespace A142170.P7940574189497795256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142170.P7940574189497795256

namespace A142170

/-- `filter[A093350(n+1), A070563(#)]` -/
def P7940574189497795256.Spec : Prop :=
  ∀ n, P7940574189497795256.a n = A142170 (n + 1)

end A142170

/-! ## A142170.P288989462119323513

`∩[A002476(n+1), A186113(n)]`
-/

namespace A142170.P288989462119323513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P288989462119323513

namespace A142170

/-- `∩[A002476(n+1), A186113(n)]` -/
def P288989462119323513.Spec : Prop :=
  ∀ n, (P288989462119323513.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P7999453108257568870

`∩[A007645(n+1), A186113(n)]`
-/

namespace A142170.P7999453108257568870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P7999453108257568870

namespace A142170

/-- `∩[A007645(n+1), A186113(n)]` -/
def P7999453108257568870.Spec : Prop :=
  ∀ n, (P7999453108257568870.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P513352287723284420

`∩[A045331(n+1), A186113(n)]`
-/

namespace A142170.P513352287723284420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P513352287723284420

namespace A142170

/-- `∩[A045331(n+1), A186113(n)]` -/
def P513352287723284420.Spec : Prop :=
  ∀ n, (P513352287723284420.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P610870077794527048

`∩[A045375(n+1), A186113(n)]`
-/

namespace A142170.P610870077794527048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P610870077794527048

namespace A142170

/-- `∩[A045375(n+1), A186113(n)]` -/
def P610870077794527048.Spec : Prop :=
  ∀ n, (P610870077794527048.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P14864569625646013512

`∩[A055664(n+1), A186113(n)]`
-/

namespace A142170.P14864569625646013512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P14864569625646013512

namespace A142170

/-- `∩[A055664(n+1), A186113(n)]` -/
def P14864569625646013512.Spec : Prop :=
  ∀ n, (P14864569625646013512.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P9990733169948927815

`∩[A123365(n+1), A186113(n)]`
-/

namespace A142170.P9990733169948927815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P9990733169948927815

namespace A142170

/-- `∩[A123365(n+1), A186113(n)]` -/
def P9990733169948927815.Spec : Prop :=
  ∀ n, (P9990733169948927815.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P12461230386837307060

`∩[A133290(n+1), A186113(n)]`
-/

namespace A142170.P12461230386837307060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P12461230386837307060

namespace A142170

/-- `∩[A133290(n+1), A186113(n)]` -/
def P12461230386837307060.Spec : Prop :=
  ∀ n, (P12461230386837307060.a n : ℤ) = A142170 (n + 1)

end A142170

/-! ## A142170.P6938489221991898773

`∩[A137827(n+1), A186113(n)]`
-/

namespace A142170.P6938489221991898773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142170.P6938489221991898773

namespace A142170

/-- `∩[A137827(n+1), A186113(n)]` -/
def P6938489221991898773.Spec : Prop :=
  ∀ n, (P6938489221991898773.a n : ℤ) = A142170 (n + 1)

end A142170

/-!
# A142171: Primes congruent to 20 mod 39.

The programs for A142171, the canonical program `A142171.P2901914737085389780` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142171 has offset 1).

The definition of A142171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142171.P2901914737085389780

`p?[39*n-19]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142171

/-- `p?[39*n-19]` -/
def P2901914737085389780.Spec : Prop :=
  ∀ n, P2901914737085389780.a n = A142171 (n + 1)

theorem P2901914737085389780.correct : P2901914737085389780.Spec := by
  intro n
  simp only [A142171, Nat.add_sub_cancel]

end A142171

/-! ## A142171.P11711917434905508836

`∩[A106886(n+1), A140371(n+1)]`
-/

namespace A142171.P11711917434905508836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P11711917434905508836

namespace A142171

/-- `∩[A106886(n+1), A140371(n+1)]` -/
def P11711917434905508836.Spec : Prop :=
  ∀ n, (P11711917434905508836.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P4750430346730883917

`∩[A140371(n+1), A191029(n+1)]`
-/

namespace A142171.P4750430346730883917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P4750430346730883917

namespace A142171

/-- `∩[A140371(n+1), A191029(n+1)]` -/
def P4750430346730883917.Spec : Prop :=
  ∀ n, (P4750430346730883917.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P1077002923751301202

`∩[A007528(n+1), A140371(n+1)]`
-/

namespace A142171.P1077002923751301202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P1077002923751301202

namespace A142171

/-- `∩[A007528(n+1), A140371(n+1)]` -/
def P1077002923751301202.Spec : Prop :=
  ∀ n, (P1077002923751301202.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P16135611520541266022

`∩[A003627(n+1), A140371(n+1)]`
-/

namespace A142171.P16135611520541266022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P16135611520541266022

namespace A142171

/-- `∩[A003627(n+1), A140371(n+1)]` -/
def P16135611520541266022.Spec : Prop :=
  ∀ n, (P16135611520541266022.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P13523495630903881007

`∩[A045309(n+1), A140371(n+1)]`
-/

namespace A142171.P13523495630903881007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P13523495630903881007

namespace A142171

/-- `∩[A045309(n+1), A140371(n+1)]` -/
def P13523495630903881007.Spec : Prop :=
  ∀ n, (P13523495630903881007.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P2082453630654640498

`∩[A045410(n+1), A140371(n+1)]`
-/

namespace A142171.P2082453630654640498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P2082453630654640498

namespace A142171

/-- `∩[A045410(n+1), A140371(n+1)]` -/
def P2082453630654640498.Spec : Prop :=
  ∀ n, (P2082453630654640498.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P8860211041578521759

`∩[A056955(n+1), A140371(n+1)]`
-/

namespace A142171.P8860211041578521759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P8860211041578521759

namespace A142171

/-- `∩[A056955(n+1), A140371(n+1)]` -/
def P8860211041578521759.Spec : Prop :=
  ∀ n, (P8860211041578521759.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P6051335805675514474

`∩[A066501(n+1), A140371(n+1)]`
-/

namespace A142171.P6051335805675514474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P6051335805675514474

namespace A142171

/-- `∩[A066501(n+1), A140371(n+1)]` -/
def P6051335805675514474.Spec : Prop :=
  ∀ n, (P6051335805675514474.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P7564716706357584399

`∏{d}[p?[A269044(3*n+1)], #]`
-/

namespace A142171.P7564716706357584399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142171.P7564716706357584399

namespace A142171

/-- `∏{d}[p?[A269044(3*n+1)], #]` -/
def P7564716706357584399.Spec : Prop :=
  ∀ n, (P7564716706357584399.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P13599418306519492876

`∩[A003627(n+1), A269044(n)]`
-/

namespace A142171.P13599418306519492876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P13599418306519492876

namespace A142171

/-- `∩[A003627(n+1), A269044(n)]` -/
def P13599418306519492876.Spec : Prop :=
  ∀ n, (P13599418306519492876.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P9886884599928087667

`∩[A007528(n+1), A269044(n)]`
-/

namespace A142171.P9886884599928087667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P9886884599928087667

namespace A142171

/-- `∩[A007528(n+1), A269044(n)]` -/
def P9886884599928087667.Spec : Prop :=
  ∀ n, (P9886884599928087667.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P5164329215948928913

`∩[A045309(n+1), A269044(n)]`
-/

namespace A142171.P5164329215948928913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P5164329215948928913

namespace A142171

/-- `∩[A045309(n+1), A269044(n)]` -/
def P5164329215948928913.Spec : Prop :=
  ∀ n, (P5164329215948928913.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P13535321628462700040

`∩[A045410(n+1), A269044(n)]`
-/

namespace A142171.P13535321628462700040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P13535321628462700040

namespace A142171

/-- `∩[A045410(n+1), A269044(n)]` -/
def P13535321628462700040.Spec : Prop :=
  ∀ n, (P13535321628462700040.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P6379012974979763929

`∩[A056955(n+1), A269044(n)]`
-/

namespace A142171.P6379012974979763929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P6379012974979763929

namespace A142171

/-- `∩[A056955(n+1), A269044(n)]` -/
def P6379012974979763929.Spec : Prop :=
  ∀ n, (P6379012974979763929.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P4302317468396127538

`∩[A106886(n+1), A269044(n)]`
-/

namespace A142171.P4302317468396127538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P4302317468396127538

namespace A142171

/-- `∩[A106886(n+1), A269044(n)]` -/
def P4302317468396127538.Spec : Prop :=
  ∀ n, (P4302317468396127538.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P1000943016660532798

`∩[A191029(n+1), A269044(n)]`
-/

namespace A142171.P1000943016660532798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P1000943016660532798

namespace A142171

/-- `∩[A191029(n+1), A269044(n)]` -/
def P1000943016660532798.Spec : Prop :=
  ∀ n, (P1000943016660532798.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P12997574632269458871

`∩[A003627(n+1), A186113(n)+1]`
-/

namespace A142171.P12997574632269458871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P12997574632269458871

namespace A142171

/-- `∩[A003627(n+1), A186113(n)+1]` -/
def P12997574632269458871.Spec : Prop :=
  ∀ n, (P12997574632269458871.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P4427662218434097155

`∩[A007528(n+1), A186113(n)+1]`
-/

namespace A142171.P4427662218434097155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P4427662218434097155

namespace A142171

/-- `∩[A007528(n+1), A186113(n)+1]` -/
def P4427662218434097155.Spec : Prop :=
  ∀ n, (P4427662218434097155.a n : ℤ) = A142171 (n + 1)

end A142171

/-! ## A142171.P16808946504694872182

`∩[A045309(n+1), A186113(n)+1]`
-/

namespace A142171.P16808946504694872182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142171.P16808946504694872182

namespace A142171

/-- `∩[A045309(n+1), A186113(n)+1]` -/
def P16808946504694872182.Spec : Prop :=
  ∀ n, (P16808946504694872182.a n : ℤ) = A142171 (n + 1)

end A142171

/-!
# A142172: Primes congruent to 22 mod 39.

The programs for A142172, the canonical program `A142172.P9325815831726527394` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142172 has offset 1).

The definition of A142172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142172.P9325815831726527394

`p?[39*n-17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142172

/-- `p?[39*n-17]` -/
def P9325815831726527394.Spec : Prop :=
  ∀ n, P9325815831726527394.a n = A142172 (n + 1)

theorem P9325815831726527394.correct : P9325815831726527394.Spec := by
  intro n
  simp only [A142172, Nat.add_sub_cancel]

end A142172

/-! ## A142172.P13008193908873362080

`∩[A139494(n+1), A140372(n+1)]`
-/

namespace A142172.P13008193908873362080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P13008193908873362080

namespace A142172

/-- `∩[A139494(n+1), A140372(n+1)]` -/
def P13008193908873362080.Spec : Prop :=
  ∀ n, (P13008193908873362080.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P2102469595853706225

`∩[A140372(n+1), A267455(n+1)]`
-/

namespace A142172.P2102469595853706225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P2102469595853706225

namespace A142172

/-- `∩[A140372(n+1), A267455(n+1)]` -/
def P2102469595853706225.Spec : Prop :=
  ∀ n, (P2102469595853706225.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P16473222217108893568

`p?[A128468(n)+A017221(n)]+A002262(n)%-1`
-/

namespace A142172.P16473222217108893568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A002262 n) (-1)

end

end A142172.P16473222217108893568

namespace A142172

/-- `p?[A128468(n)+A017221(n)]+A002262(n)%-1` -/
def P16473222217108893568.Spec : Prop :=
  ∀ n, P16473222217108893568.a n = A142172 (n + 1)

end A142172

/-! ## A142172.P10197262713851497650

`p?[A128468(n)+A017221(n)]+A005206(n)%-1`
-/

namespace A142172.P10197262713851497650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005206 n) (-1)

end

end A142172.P10197262713851497650

namespace A142172

/-- `p?[A128468(n)+A017221(n)]+A005206(n)%-1` -/
def P10197262713851497650.Spec : Prop :=
  ∀ n, P10197262713851497650.a n = A142172 (n + 1)

end A142172

/-! ## A142172.P13820485886147561119

`p?[A128468(n)+A017221(n)]+A006996(n)%-1`
-/

namespace A142172.P13820485886147561119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A006996 n) (-1)

end

end A142172.P13820485886147561119

namespace A142172

/-- `p?[A128468(n)+A017221(n)]+A006996(n)%-1` -/
def P13820485886147561119.Spec : Prop :=
  ∀ n, P13820485886147561119.a n = A142172 (n + 1)

end A142172

/-! ## A142172.P17646165592100903185

`p?[A128468(n)+A017221(n)]+A105700(n)%-1`
-/

namespace A142172.P17646165592100903185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A105700 n) (-1)

end

end A142172.P17646165592100903185

namespace A142172

/-- `p?[A128468(n)+A017221(n)]+A105700(n)%-1` -/
def P17646165592100903185.Spec : Prop :=
  ∀ n, P17646165592100903185.a n = A142172 (n + 1)

end A142172

/-! ## A142172.P6827511449172824864

`A110494(n+1)%2*p?[A128468(n)+A017221(n)]`
-/

namespace A142172.P6827511449172824864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110494 (n + 1)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142172.P6827511449172824864

namespace A142172

/-- `A110494(n+1)%2*p?[A128468(n)+A017221(n)]` -/
def P6827511449172824864.Spec : Prop :=
  ∀ n, P6827511449172824864.a n = A142172 (n + 1)

end A142172

/-! ## A142172.P9739751680877978017

`p?[A128468(n)+A017221(n)]+A011757(n+1)%-1`
-/

namespace A142172.P9739751680877978017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A011757 (n + 1)) (-1)

end

end A142172.P9739751680877978017

namespace A142172

/-- `p?[A128468(n)+A017221(n)]+A011757(n+1)%-1` -/
def P9739751680877978017.Spec : Prop :=
  ∀ n, P9739751680877978017.a n = A142172 (n + 1)

end A142172

/-! ## A142172.P2404417451568180289

`∩[A140372(n+1), A191029(n+1)]`
-/

namespace A142172.P2404417451568180289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P2404417451568180289

namespace A142172

/-- `∩[A140372(n+1), A191029(n+1)]` -/
def P2404417451568180289.Spec : Prop :=
  ∀ n, (P2404417451568180289.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P9274318028970714526

`∩[A002476(n+1), A140372(n+1)]`
-/

namespace A142172.P9274318028970714526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P9274318028970714526

namespace A142172

/-- `∩[A002476(n+1), A140372(n+1)]` -/
def P9274318028970714526.Spec : Prop :=
  ∀ n, (P9274318028970714526.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P18146928196617135703

`∩[A007645(n+1), A140372(n+1)]`
-/

namespace A142172.P18146928196617135703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P18146928196617135703

namespace A142172

/-- `∩[A007645(n+1), A140372(n+1)]` -/
def P18146928196617135703.Spec : Prop :=
  ∀ n, (P18146928196617135703.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P1851395407313632885

`∩[A045331(n+1), A140372(n+1)]`
-/

namespace A142172.P1851395407313632885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P1851395407313632885

namespace A142172

/-- `∩[A045331(n+1), A140372(n+1)]` -/
def P1851395407313632885.Spec : Prop :=
  ∀ n, (P1851395407313632885.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P17229803453197187765

`∩[A045375(n+1), A140372(n+1)]`
-/

namespace A142172.P17229803453197187765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P17229803453197187765

namespace A142172

/-- `∩[A045375(n+1), A140372(n+1)]` -/
def P17229803453197187765.Spec : Prop :=
  ∀ n, (P17229803453197187765.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P12372614248456363656

`∩[A123365(n+1), A140372(n+1)]`
-/

namespace A142172.P12372614248456363656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P12372614248456363656

namespace A142172

/-- `∩[A123365(n+1), A140372(n+1)]` -/
def P12372614248456363656.Spec : Prop :=
  ∀ n, (P12372614248456363656.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P4745482214239396215

`∩[A140372(n+1), A279815(n+1)]`
-/

namespace A142172.P4745482214239396215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P4745482214239396215

namespace A142172

/-- `∩[A140372(n+1), A279815(n+1)]` -/
def P4745482214239396215.Spec : Prop :=
  ∀ n, (P4745482214239396215.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P961805318128704148

`∩[A055664(n+1), A140372(n+1)]`
-/

namespace A142172.P961805318128704148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P961805318128704148

namespace A142172

/-- `∩[A055664(n+1), A140372(n+1)]` -/
def P961805318128704148.Spec : Prop :=
  ∀ n, (P961805318128704148.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P7181741705364520812

`∩[A133290(n+1), A140372(n+1)]`
-/

namespace A142172.P7181741705364520812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P7181741705364520812

namespace A142172

/-- `∩[A133290(n+1), A140372(n+1)]` -/
def P7181741705364520812.Spec : Prop :=
  ∀ n, (P7181741705364520812.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P2901275965981812883

`∩[A137827(n+1), A140372(n+1)]`
-/

namespace A142172.P2901275965981812883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142172.P2901275965981812883

namespace A142172

/-- `∩[A137827(n+1), A140372(n+1)]` -/
def P2901275965981812883.Spec : Prop :=
  ∀ n, (P2901275965981812883.a n : ℤ) = A142172 (n + 1)

end A142172

/-! ## A142172.P11509490414089064569

`filter[A140372(n+1), A070563(#)]`
-/

namespace A142172.P11509490414089064569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142172.P11509490414089064569

namespace A142172

/-- `filter[A140372(n+1), A070563(#)]` -/
def P11509490414089064569.Spec : Prop :=
  ∀ n, P11509490414089064569.a n = A142172 (n + 1)

end A142172

/-!
# A142173: Primes congruent to 23 mod 39.

The programs for A142173, the canonical program `A142173.P16811257775198313937` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142173 has offset 1).

The definition of A142173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142173.P16811257775198313937

`p?[39*n-16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142173

/-- `p?[39*n-16]` -/
def P16811257775198313937.Spec : Prop :=
  ∀ n, P16811257775198313937.a n = A142173 (n + 1)

theorem P16811257775198313937.correct : P16811257775198313937.Spec := by
  intro n
  simp only [A142173, Nat.add_sub_cancel]

end A142173

/-! ## A142173.P12072494873949644479

`∩[A003627(n+1), A140375(n+1)]`
-/

namespace A142173.P12072494873949644479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P12072494873949644479

namespace A142173

/-- `∩[A003627(n+1), A140375(n+1)]` -/
def P12072494873949644479.Spec : Prop :=
  ∀ n, (P12072494873949644479.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P12073248636148592820

`∩[A007528(n+1), A140375(n+1)]`
-/

namespace A142173.P12073248636148592820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P12073248636148592820

namespace A142173

/-- `∩[A007528(n+1), A140375(n+1)]` -/
def P12073248636148592820.Spec : Prop :=
  ∀ n, (P12073248636148592820.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P2671728060703392951

`∩[A045309(n+1), A140375(n+1)]`
-/

namespace A142173.P2671728060703392951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P2671728060703392951

namespace A142173

/-- `∩[A045309(n+1), A140375(n+1)]` -/
def P2671728060703392951.Spec : Prop :=
  ∀ n, (P2671728060703392951.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P17016660109406082789

`∩[A045410(n+1), A140375(n+1)]`
-/

namespace A142173.P17016660109406082789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P17016660109406082789

namespace A142173

/-- `∩[A045410(n+1), A140375(n+1)]` -/
def P17016660109406082789.Spec : Prop :=
  ∀ n, (P17016660109406082789.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P7493905066776186125

`∩[A056955(n+1), A140375(n+1)]`
-/

namespace A142173.P7493905066776186125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P7493905066776186125

namespace A142173

/-- `∩[A056955(n+1), A140375(n+1)]` -/
def P7493905066776186125.Spec : Prop :=
  ∀ n, (P7493905066776186125.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P17200015675748508928

`∩[A140375(n+1), A191070(n+1)]`
-/

namespace A142173.P17200015675748508928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P17200015675748508928

namespace A142173

/-- `∩[A140375(n+1), A191070(n+1)]` -/
def P17200015675748508928.Spec : Prop :=
  ∀ n, (P17200015675748508928.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P11926907538599286910

`∩[A066501(n+1), A140375(n+1)]`
-/

namespace A142173.P11926907538599286910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P11926907538599286910

namespace A142173

/-- `∩[A066501(n+1), A140375(n+1)]` -/
def P11926907538599286910.Spec : Prop :=
  ∀ n, (P11926907538599286910.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P10867690386992786403

`∩[A003627(n+1), A269100(n)-1]`
-/

namespace A142173.P10867690386992786403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P10867690386992786403

namespace A142173

/-- `∩[A003627(n+1), A269100(n)-1]` -/
def P10867690386992786403.Spec : Prop :=
  ∀ n, (P10867690386992786403.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P5165298434501678644

`∩[A007528(n+1), A269100(n)-1]`
-/

namespace A142173.P5165298434501678644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P5165298434501678644

namespace A142173

/-- `∩[A007528(n+1), A269100(n)-1]` -/
def P5165298434501678644.Spec : Prop :=
  ∀ n, (P5165298434501678644.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P11291736761524145942

`∩[A045309(n+1), A269100(n)-1]`
-/

namespace A142173.P11291736761524145942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P11291736761524145942

namespace A142173

/-- `∩[A045309(n+1), A269100(n)-1]` -/
def P11291736761524145942.Spec : Prop :=
  ∀ n, (P11291736761524145942.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P7654359829917261375

`∩[A045410(n+1), A269100(n)-1]`
-/

namespace A142173.P7654359829917261375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P7654359829917261375

namespace A142173

/-- `∩[A045410(n+1), A269100(n)-1]` -/
def P7654359829917261375.Spec : Prop :=
  ∀ n, (P7654359829917261375.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P1206921423446702316

`∩[A056955(n+1), A269100(n)-1]`
-/

namespace A142173.P1206921423446702316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P1206921423446702316

namespace A142173

/-- `∩[A056955(n+1), A269100(n)-1]` -/
def P1206921423446702316.Spec : Prop :=
  ∀ n, (P1206921423446702316.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P1117475535334714882

`∩[A191070(n+1), A269100(n)-1]`
-/

namespace A142173.P1117475535334714882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P1117475535334714882

namespace A142173

/-- `∩[A191070(n+1), A269100(n)-1]` -/
def P1117475535334714882.Spec : Prop :=
  ∀ n, (P1117475535334714882.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P4079129376049022696

`∩[A003627(n+1), A306285(n+1)+2]`
-/

namespace A142173.P4079129376049022696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P4079129376049022696

namespace A142173

/-- `∩[A003627(n+1), A306285(n+1)+2]` -/
def P4079129376049022696.Spec : Prop :=
  ∀ n, (P4079129376049022696.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P5488120201318995597

`∩[A007528(n+1), A306285(n+1)+2]`
-/

namespace A142173.P5488120201318995597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P5488120201318995597

namespace A142173

/-- `∩[A007528(n+1), A306285(n+1)+2]` -/
def P5488120201318995597.Spec : Prop :=
  ∀ n, (P5488120201318995597.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P3631488915927508324

`∩[A045309(n+1), A306285(n+1)+2]`
-/

namespace A142173.P3631488915927508324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P3631488915927508324

namespace A142173

/-- `∩[A045309(n+1), A306285(n+1)+2]` -/
def P3631488915927508324.Spec : Prop :=
  ∀ n, (P3631488915927508324.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P3730551455062959860

`∩[A045410(n+1), A306285(n+1)+2]`
-/

namespace A142173.P3730551455062959860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P3730551455062959860

namespace A142173

/-- `∩[A045410(n+1), A306285(n+1)+2]` -/
def P3730551455062959860.Spec : Prop :=
  ∀ n, (P3730551455062959860.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P11364898051182376881

`∩[A056955(n+1), A306285(n+1)+2]`
-/

namespace A142173.P11364898051182376881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P11364898051182376881

namespace A142173

/-- `∩[A056955(n+1), A306285(n+1)+2]` -/
def P11364898051182376881.Spec : Prop :=
  ∀ n, (P11364898051182376881.a n : ℤ) = A142173 (n + 1)

end A142173

/-! ## A142173.P4201274068979666088

`∩[A140375(n+1), A259548(n+1)]`
-/

namespace A142173.P4201274068979666088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142173.P4201274068979666088

namespace A142173

/-- `∩[A140375(n+1), A259548(n+1)]` -/
def P4201274068979666088.Spec : Prop :=
  ∀ n, (P4201274068979666088.a n : ℤ) = A142173 (n + 1)

end A142173

/-!
# A142174: Primes congruent to 25 mod 39.

The programs for A142174, the canonical program `A142174.P10215529743714880878` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142174 has offset 1).

The definition of A142174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142174.P10215529743714880878

`p?[39*n-14]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142174

/-- `p?[39*n-14]` -/
def P10215529743714880878.Spec : Prop :=
  ∀ n, P10215529743714880878.a n = A142174 (n + 1)

theorem P10215529743714880878.correct : P10215529743714880878.Spec := by
  intro n
  simp only [A142174, Nat.add_sub_cancel]

end A142174

/-! ## A142174.P9957996470712056967

`A000027(p?[A139613(n)+12])`
-/

namespace A142174.P9957996470712056967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142174.P9957996470712056967

namespace A142174

/-- `A000027(p?[A139613(n)+12])` -/
def P9957996470712056967.Spec : Prop :=
  ∀ n, P9957996470712056967.a n = A142174 (n + 1)

end A142174

/-! ## A142174.P15168148951891486314

`∩[A139494(n+1), A141859(n+1)]`
-/

namespace A142174.P15168148951891486314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P15168148951891486314

namespace A142174

/-- `∩[A139494(n+1), A141859(n+1)]` -/
def P15168148951891486314.Spec : Prop :=
  ∀ n, (P15168148951891486314.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P15371927594679746731

`∩[A141859(n+1), A267455(n+1)]`
-/

namespace A142174.P15371927594679746731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P15371927594679746731

namespace A142174

/-- `∩[A141859(n+1), A267455(n+1)]` -/
def P15371927594679746731.Spec : Prop :=
  ∀ n, (P15371927594679746731.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P11174335979138372283

`∩[A141859(n+1), A191029(n+1)]`
-/

namespace A142174.P11174335979138372283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P11174335979138372283

namespace A142174

/-- `∩[A141859(n+1), A191029(n+1)]` -/
def P11174335979138372283.Spec : Prop :=
  ∀ n, (P11174335979138372283.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P8478743989379849643

`∩[A002476(n+1), A141859(n+1)]`
-/

namespace A142174.P8478743989379849643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P8478743989379849643

namespace A142174

/-- `∩[A002476(n+1), A141859(n+1)]` -/
def P8478743989379849643.Spec : Prop :=
  ∀ n, (P8478743989379849643.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P8345773770299707772

`∩[A007645(n+1), A141859(n+1)]`
-/

namespace A142174.P8345773770299707772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P8345773770299707772

namespace A142174

/-- `∩[A007645(n+1), A141859(n+1)]` -/
def P8345773770299707772.Spec : Prop :=
  ∀ n, (P8345773770299707772.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P6593056261218151153

`∩[A045331(n+1), A141859(n+1)]`
-/

namespace A142174.P6593056261218151153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P6593056261218151153

namespace A142174

/-- `∩[A045331(n+1), A141859(n+1)]` -/
def P6593056261218151153.Spec : Prop :=
  ∀ n, (P6593056261218151153.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P13223573960137487349

`∩[A045375(n+1), A141859(n+1)]`
-/

namespace A142174.P13223573960137487349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P13223573960137487349

namespace A142174

/-- `∩[A045375(n+1), A141859(n+1)]` -/
def P13223573960137487349.Spec : Prop :=
  ∀ n, (P13223573960137487349.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P4993206955808873631

`∩[A123365(n+1), A141859(n+1)]`
-/

namespace A142174.P4993206955808873631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P4993206955808873631

namespace A142174

/-- `∩[A123365(n+1), A141859(n+1)]` -/
def P4993206955808873631.Spec : Prop :=
  ∀ n, (P4993206955808873631.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P14287796166973341647

`∩[A141859(n+1), A279815(n+1)]`
-/

namespace A142174.P14287796166973341647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P14287796166973341647

namespace A142174

/-- `∩[A141859(n+1), A279815(n+1)]` -/
def P14287796166973341647.Spec : Prop :=
  ∀ n, (P14287796166973341647.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P13712063289960829879

`∩[A055664(n+1), A141859(n+1)]`
-/

namespace A142174.P13712063289960829879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P13712063289960829879

namespace A142174

/-- `∩[A055664(n+1), A141859(n+1)]` -/
def P13712063289960829879.Spec : Prop :=
  ∀ n, (P13712063289960829879.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P6762124021435898284

`∩[A133290(n+1), A141859(n+1)]`
-/

namespace A142174.P6762124021435898284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P6762124021435898284

namespace A142174

/-- `∩[A133290(n+1), A141859(n+1)]` -/
def P6762124021435898284.Spec : Prop :=
  ∀ n, (P6762124021435898284.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P5664789754715597299

`∩[A137827(n+1), A141859(n+1)]`
-/

namespace A142174.P5664789754715597299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P5664789754715597299

namespace A142174

/-- `∩[A137827(n+1), A141859(n+1)]` -/
def P5664789754715597299.Spec : Prop :=
  ∀ n, (P5664789754715597299.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P6059343843657131465

`filter[A141859(n+1), A070563(#)]`
-/

namespace A142174.P6059343843657131465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142174.P6059343843657131465

namespace A142174

/-- `filter[A141859(n+1), A070563(#)]` -/
def P6059343843657131465.Spec : Prop :=
  ∀ n, P6059343843657131465.a n = A142174 (n + 1)

end A142174

/-! ## A142174.P14480118650520192323

`∩[A002476(n+1), A269100(n)+1]`
-/

namespace A142174.P14480118650520192323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P14480118650520192323

namespace A142174

/-- `∩[A002476(n+1), A269100(n)+1]` -/
def P14480118650520192323.Spec : Prop :=
  ∀ n, (P14480118650520192323.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P538648462846402254

`∩[A007645(n+1), A269100(n)+1]`
-/

namespace A142174.P538648462846402254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P538648462846402254

namespace A142174

/-- `∩[A007645(n+1), A269100(n)+1]` -/
def P538648462846402254.Spec : Prop :=
  ∀ n, (P538648462846402254.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P8191198324289417307

`∩[A045331(n+1), A269100(n)+1]`
-/

namespace A142174.P8191198324289417307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P8191198324289417307

namespace A142174

/-- `∩[A045331(n+1), A269100(n)+1]` -/
def P8191198324289417307.Spec : Prop :=
  ∀ n, (P8191198324289417307.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P5327057250170063146

`∩[A045375(n+1), A269100(n)+1]`
-/

namespace A142174.P5327057250170063146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P5327057250170063146

namespace A142174

/-- `∩[A045375(n+1), A269100(n)+1]` -/
def P5327057250170063146.Spec : Prop :=
  ∀ n, (P5327057250170063146.a n : ℤ) = A142174 (n + 1)

end A142174

/-! ## A142174.P10902226262348454982

`∩[A123365(n+1), A269100(n)+1]`
-/

namespace A142174.P10902226262348454982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142174.P10902226262348454982

namespace A142174

/-- `∩[A123365(n+1), A269100(n)+1]` -/
def P10902226262348454982.Spec : Prop :=
  ∀ n, (P10902226262348454982.a n : ℤ) = A142174 (n + 1)

end A142174

/-!
# A142175: Triangle read by rows: T(n,k) = (1/4)*(A007318(n,k) - 6*A008292(n+1,k+1) + 9*A060187(n+1,k+1)).

The programs for A142175, there is no canonical definition to state claims against.
-/

/-! ## A142175.P3390381091892673398

`A002821(A157221(n))`
-/

namespace A142175.P3390381091892673398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A157221 n).toNat

end

end A142175.P3390381091892673398

/-! ## A142175.P463321150865041682

`A274829(A174527(n))`
-/

namespace A142175.P463321150865041682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (A174527 n).toNat

end

end A142175.P463321150865041682

/-! ## A142175.P16114023490361141980

`A359267(A178346(n))`
-/

namespace A142175.P16114023490361141980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359267 (A178346 n).toNat

end

end A142175.P16114023490361141980

/-! ## A142175.P15736562550581036837

`A276877(A395150(n))`
-/

namespace A142175.P15736562550581036837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276877 (A395150 n).toNat

end

end A142175.P15736562550581036837

/-! ## A142175.P11893865081584988035

`A115839(A029847(n+1))`
-/

namespace A142175.P11893865081584988035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115839 (A029847 (n + 1)).toNat

end

end A142175.P11893865081584988035

/-!
# A142176: Primes congruent to 29 mod 39.

The programs for A142176, the canonical program `A142176.P10933006531157663640` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142176 has offset 1).

The definition of A142176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142176.P10933006531157663640

`A100202(eq[2, A100202(n+1)%3]+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142176

/-- `A100202(eq[2, A100202(n+1)%3]+1)` -/
def P10933006531157663640.Spec : Prop :=
  ∀ n, P10933006531157663640.a n = A142176 (n + 1)

theorem P10933006531157663640.correct : P10933006531157663640.Spec := by
  intro n
  simp only [A142176, Nat.add_sub_cancel]

end A142176

/-! ## A142176.P855234618811820570

`p?[39*n-10]`
-/

namespace A142176.P855234618811820570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142176.P855234618811820570

namespace A142176

/-- `p?[39*n-10]` -/
def P855234618811820570.Spec : Prop :=
  ∀ n, P855234618811820570.a n = A142176 (n + 1)

end A142176

/-! ## A142176.P5116230059174448747

`∩[A003627(n+1), A100202(n+1)]`
-/

namespace A142176.P5116230059174448747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P5116230059174448747

namespace A142176

/-- `∩[A003627(n+1), A100202(n+1)]` -/
def P5116230059174448747.Spec : Prop :=
  ∀ n, (P5116230059174448747.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P3519421233593149669

`∩[A007528(n+1), A100202(n+1)]`
-/

namespace A142176.P3519421233593149669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P3519421233593149669

namespace A142176

/-- `∩[A007528(n+1), A100202(n+1)]` -/
def P3519421233593149669.Spec : Prop :=
  ∀ n, (P3519421233593149669.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P10837345581108196838

`∩[A056955(n+1), A100202(n+1)]`
-/

namespace A142176.P10837345581108196838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P10837345581108196838

namespace A142176

/-- `∩[A056955(n+1), A100202(n+1)]` -/
def P10837345581108196838.Spec : Prop :=
  ∀ n, (P10837345581108196838.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P1971335309385591359

`∩[A281546(n+1)-n, A003627(n+2)]`
-/

namespace A142176.P1971335309385591359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P1971335309385591359

namespace A142176

/-- `∩[A281546(n+1)-n, A003627(n+2)]` -/
def P1971335309385591359.Spec : Prop :=
  ∀ n, (P1971335309385591359.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P8435312928668928337

`∩[A281546(n+1)-n, A007528(n+2)]`
-/

namespace A142176.P8435312928668928337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P8435312928668928337

namespace A142176

/-- `∩[A281546(n+1)-n, A007528(n+2)]` -/
def P8435312928668928337.Spec : Prop :=
  ∀ n, (P8435312928668928337.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P833205920489053178

`∩[A281546(n+1)-n, A045309(n+2)]`
-/

namespace A142176.P833205920489053178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P833205920489053178

namespace A142176

/-- `∩[A281546(n+1)-n, A045309(n+2)]` -/
def P833205920489053178.Spec : Prop :=
  ∀ n, (P833205920489053178.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P4864657252217110867

`∩[A281546(n+1)-n, A045410(n+2)]`
-/

namespace A142176.P4864657252217110867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P4864657252217110867

namespace A142176

/-- `∩[A281546(n+1)-n, A045410(n+2)]` -/
def P4864657252217110867.Spec : Prop :=
  ∀ n, (P4864657252217110867.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P189044949796047217

`∩[A281546(n+1)-n, A056955(n+2)]`
-/

namespace A142176.P189044949796047217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281546 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P189044949796047217

namespace A142176

/-- `∩[A281546(n+1)-n, A056955(n+2)]` -/
def P189044949796047217.Spec : Prop :=
  ∀ n, (P189044949796047217.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P14412233075677922648

`∩[A100202(n+1), A191070(n+1)]`
-/

namespace A142176.P14412233075677922648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P14412233075677922648

namespace A142176

/-- `∩[A100202(n+1), A191070(n+1)]` -/
def P14412233075677922648.Spec : Prop :=
  ∀ n, (P14412233075677922648.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P12633930024217965522

`∩[A003627(n+1), A153080(n)+1]`
-/

namespace A142176.P12633930024217965522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P12633930024217965522

namespace A142176

/-- `∩[A003627(n+1), A153080(n)+1]` -/
def P12633930024217965522.Spec : Prop :=
  ∀ n, (P12633930024217965522.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P2333304185469236071

`∩[A003627(n+1), A127547(n)-1]`
-/

namespace A142176.P2333304185469236071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P2333304185469236071

namespace A142176

/-- `∩[A003627(n+1), A127547(n)-1]` -/
def P2333304185469236071.Spec : Prop :=
  ∀ n, (P2333304185469236071.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P6670036607394668090

`∩[A007528(n+1), A127547(n)-1]`
-/

namespace A142176.P6670036607394668090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P6670036607394668090

namespace A142176

/-- `∩[A007528(n+1), A127547(n)-1]` -/
def P6670036607394668090.Spec : Prop :=
  ∀ n, (P6670036607394668090.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P18019373827936741340

`∩[A056955(n+1), A127547(n)-1]`
-/

namespace A142176.P18019373827936741340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P18019373827936741340

namespace A142176

/-- `∩[A056955(n+1), A127547(n)-1]` -/
def P18019373827936741340.Spec : Prop :=
  ∀ n, (P18019373827936741340.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P4895755308486800784

`∩[A003627(n+1), A190991(n)+2]`
-/

namespace A142176.P4895755308486800784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P4895755308486800784

namespace A142176

/-- `∩[A003627(n+1), A190991(n)+2]` -/
def P4895755308486800784.Spec : Prop :=
  ∀ n, (P4895755308486800784.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P9596573068358832396

`∩[A007528(n+1), A190991(n)+2]`
-/

namespace A142176.P9596573068358832396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P9596573068358832396

namespace A142176

/-- `∩[A007528(n+1), A190991(n)+2]` -/
def P9596573068358832396.Spec : Prop :=
  ∀ n, (P9596573068358832396.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P12002135194300484817

`∩[A056955(n+1), A190991(n)+2]`
-/

namespace A142176.P12002135194300484817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P12002135194300484817

namespace A142176

/-- `∩[A056955(n+1), A190991(n)+2]` -/
def P12002135194300484817.Spec : Prop :=
  ∀ n, (P12002135194300484817.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P2802994319145617915

`∩[A191070(n+1), A127547(n)-1]`
-/

namespace A142176.P2802994319145617915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P2802994319145617915

namespace A142176

/-- `∩[A191070(n+1), A127547(n)-1]` -/
def P2802994319145617915.Spec : Prop :=
  ∀ n, (P2802994319145617915.a n : ℤ) = A142176 (n + 1)

end A142176

/-! ## A142176.P3711841199481053464

`∩[A191070(n+1), A190991(n)+2]`
-/

namespace A142176.P3711841199481053464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142176.P3711841199481053464

namespace A142176

/-- `∩[A191070(n+1), A190991(n)+2]` -/
def P3711841199481053464.Spec : Prop :=
  ∀ n, (P3711841199481053464.a n : ℤ) = A142176 (n + 1)

end A142176

/-!
# A142177: Primes congruent to 31 mod 39.

The programs for A142177, the canonical program `A142177.P14973679103742064160` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142177 has offset 1).

The definition of A142177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142177.P14973679103742064160

`p?[39*n-8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142177

/-- `p?[39*n-8]` -/
def P14973679103742064160.Spec : Prop :=
  ∀ n, P14973679103742064160.a n = A142177 (n + 1)

theorem P14973679103742064160.correct : P14973679103742064160.Spec := by
  intro n
  simp only [A142177, Nat.add_sub_cancel]

end A142177

/-! ## A142177.P8328681383301088602

`∩[A002476(n+1), A102732(n+1)]`
-/

namespace A142177.P8328681383301088602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P8328681383301088602

namespace A142177

/-- `∩[A002476(n+1), A102732(n+1)]` -/
def P8328681383301088602.Spec : Prop :=
  ∀ n, (P8328681383301088602.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P14807625519643407427

`∩[A007645(n+1), A102732(n+1)]`
-/

namespace A142177.P14807625519643407427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P14807625519643407427

namespace A142177

/-- `∩[A007645(n+1), A102732(n+1)]` -/
def P14807625519643407427.Spec : Prop :=
  ∀ n, (P14807625519643407427.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P7024845699519922721

`∩[A045331(n+1), A102732(n+1)]`
-/

namespace A142177.P7024845699519922721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P7024845699519922721

namespace A142177

/-- `∩[A045331(n+1), A102732(n+1)]` -/
def P7024845699519922721.Spec : Prop :=
  ∀ n, (P7024845699519922721.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P18171841274726720993

`∩[A045375(n+1), A102732(n+1)]`
-/

namespace A142177.P18171841274726720993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P18171841274726720993

namespace A142177

/-- `∩[A045375(n+1), A102732(n+1)]` -/
def P18171841274726720993.Spec : Prop :=
  ∀ n, (P18171841274726720993.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P5118154295855564197

`∩[A102732(n+1), A123365(n+1)]`
-/

namespace A142177.P5118154295855564197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P5118154295855564197

namespace A142177

/-- `∩[A102732(n+1), A123365(n+1)]` -/
def P5118154295855564197.Spec : Prop :=
  ∀ n, (P5118154295855564197.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P16465083251603834665

`∩[A102732(n+1), A279815(n+1)]`
-/

namespace A142177.P16465083251603834665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P16465083251603834665

namespace A142177

/-- `∩[A102732(n+1), A279815(n+1)]` -/
def P16465083251603834665.Spec : Prop :=
  ∀ n, (P16465083251603834665.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P14492240032079086715

`∩[A055664(n+1), A102732(n+1)]`
-/

namespace A142177.P14492240032079086715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P14492240032079086715

namespace A142177

/-- `∩[A055664(n+1), A102732(n+1)]` -/
def P14492240032079086715.Spec : Prop :=
  ∀ n, (P14492240032079086715.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P450850410610466808

`∩[A102732(n+1), A133290(n+1)]`
-/

namespace A142177.P450850410610466808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P450850410610466808

namespace A142177

/-- `∩[A102732(n+1), A133290(n+1)]` -/
def P450850410610466808.Spec : Prop :=
  ∀ n, (P450850410610466808.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P10217439745759261758

`∩[A102732(n+1), A191070(n+1)]`
-/

namespace A142177.P10217439745759261758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P10217439745759261758

namespace A142177

/-- `∩[A102732(n+1), A191070(n+1)]` -/
def P10217439745759261758.Spec : Prop :=
  ∀ n, (P10217439745759261758.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P4636007369827086633

`∩[A102732(n+1), A137827(n+1)]`
-/

namespace A142177.P4636007369827086633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P4636007369827086633

namespace A142177

/-- `∩[A102732(n+1), A137827(n+1)]` -/
def P4636007369827086633.Spec : Prop :=
  ∀ n, (P4636007369827086633.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P694103459058670708

`filter[A102732(n+1), A070563(#)]`
-/

namespace A142177.P694103459058670708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142177.P694103459058670708

namespace A142177

/-- `filter[A102732(n+1), A070563(#)]` -/
def P694103459058670708.Spec : Prop :=
  ∀ n, P694103459058670708.a n = A142177 (n + 1)

end A142177

/-! ## A142177.P15885719561259569915

`∩[A002476(n+1), A154609(n)]`
-/

namespace A142177.P15885719561259569915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P15885719561259569915

namespace A142177

/-- `∩[A002476(n+1), A154609(n)]` -/
def P15885719561259569915.Spec : Prop :=
  ∀ n, (P15885719561259569915.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P4387263819896021010

`∩[A007645(n+1), A154609(n)]`
-/

namespace A142177.P4387263819896021010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P4387263819896021010

namespace A142177

/-- `∩[A007645(n+1), A154609(n)]` -/
def P4387263819896021010.Spec : Prop :=
  ∀ n, (P4387263819896021010.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P10184079113729941057

`∩[A045331(n+1), A154609(n)]`
-/

namespace A142177.P10184079113729941057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P10184079113729941057

namespace A142177

/-- `∩[A045331(n+1), A154609(n)]` -/
def P10184079113729941057.Spec : Prop :=
  ∀ n, (P10184079113729941057.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P18242405465191201011

`∩[A045375(n+1), A154609(n)]`
-/

namespace A142177.P18242405465191201011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P18242405465191201011

namespace A142177

/-- `∩[A045375(n+1), A154609(n)]` -/
def P18242405465191201011.Spec : Prop :=
  ∀ n, (P18242405465191201011.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P11774566878416535741

`∩[A055664(n+1), A154609(n)]`
-/

namespace A142177.P11774566878416535741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P11774566878416535741

namespace A142177

/-- `∩[A055664(n+1), A154609(n)]` -/
def P11774566878416535741.Spec : Prop :=
  ∀ n, (P11774566878416535741.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P16708254901880166314

`∩[A123365(n+1), A154609(n)]`
-/

namespace A142177.P16708254901880166314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P16708254901880166314

namespace A142177

/-- `∩[A123365(n+1), A154609(n)]` -/
def P16708254901880166314.Spec : Prop :=
  ∀ n, (P16708254901880166314.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P12425753480573949732

`∩[A191070(n+1), A154609(n)]`
-/

namespace A142177.P12425753480573949732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P12425753480573949732

namespace A142177

/-- `∩[A191070(n+1), A154609(n)]` -/
def P12425753480573949732.Spec : Prop :=
  ∀ n, (P12425753480573949732.a n : ℤ) = A142177 (n + 1)

end A142177

/-! ## A142177.P9848697698402259529

`∩[A279815(n+1), A154609(n)]`
-/

namespace A142177.P9848697698402259529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142177.P9848697698402259529

namespace A142177

/-- `∩[A279815(n+1), A154609(n)]` -/
def P9848697698402259529.Spec : Prop :=
  ∀ n, (P9848697698402259529.a n : ℤ) = A142177 (n + 1)

end A142177

/-!
# A142178: Primes congruent to 32 mod 39.

The programs for A142178, the canonical program `A142178.P10660009293154848687` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142178 has offset 1).

The definition of A142178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142178.P10660009293154848687

`p?[78*n-7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142178

/-- `p?[78*n-7]` -/
def P10660009293154848687.Spec : Prop :=
  ∀ n, P10660009293154848687.a n = A142178 (n + 1)

theorem P10660009293154848687.correct : P10660009293154848687.Spec := by
  intro n
  simp only [A142178, Nat.add_sub_cancel]

end A142178

/-! ## A142178.P18063117540915697797

`∩[A093350(n+1), A106886(n+1)]`
-/

namespace A142178.P18063117540915697797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P18063117540915697797

namespace A142178

/-- `∩[A093350(n+1), A106886(n+1)]` -/
def P18063117540915697797.Spec : Prop :=
  ∀ n, (P18063117540915697797.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P15410755392264430536

`∩[A093350(n+1), A275770(n+1)]`
-/

namespace A142178.P15410755392264430536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P15410755392264430536

namespace A142178

/-- `∩[A093350(n+1), A275770(n+1)]` -/
def P15410755392264430536.Spec : Prop :=
  ∀ n, (P15410755392264430536.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P11339681340997711993

`∩[A093350(n+1), A191029(n+1)]`
-/

namespace A142178.P11339681340997711993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P11339681340997711993

namespace A142178

/-- `∩[A093350(n+1), A191029(n+1)]` -/
def P11339681340997711993.Spec : Prop :=
  ∀ n, (P11339681340997711993.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P15354760874008528469

`∩[A003627(n+1), A093350(n+1)]`
-/

namespace A142178.P15354760874008528469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P15354760874008528469

namespace A142178

/-- `∩[A003627(n+1), A093350(n+1)]` -/
def P15354760874008528469.Spec : Prop :=
  ∀ n, (P15354760874008528469.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P17770479350714274020

`∩[A007528(n+1), A093350(n+1)]`
-/

namespace A142178.P17770479350714274020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P17770479350714274020

namespace A142178

/-- `∩[A007528(n+1), A093350(n+1)]` -/
def P17770479350714274020.Spec : Prop :=
  ∀ n, (P17770479350714274020.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P11743437568019434165

`∩[A045309(n+1), A093350(n+1)]`
-/

namespace A142178.P11743437568019434165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P11743437568019434165

namespace A142178

/-- `∩[A045309(n+1), A093350(n+1)]` -/
def P11743437568019434165.Spec : Prop :=
  ∀ n, (P11743437568019434165.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P4059854609146882905

`∩[A045410(n+1), A093350(n+1)]`
-/

namespace A142178.P4059854609146882905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P4059854609146882905

namespace A142178

/-- `∩[A045410(n+1), A093350(n+1)]` -/
def P4059854609146882905.Spec : Prop :=
  ∀ n, (P4059854609146882905.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P16472872487202513881

`∩[A056955(n+1), A093350(n+1)]`
-/

namespace A142178.P16472872487202513881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P16472872487202513881

namespace A142178

/-- `∩[A056955(n+1), A093350(n+1)]` -/
def P16472872487202513881.Spec : Prop :=
  ∀ n, (P16472872487202513881.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P10144224982631262005

`or(1, p?[A155097(n+1)+n])`
-/

namespace A142178.P10144224982631262005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142178.P10144224982631262005

namespace A142178

/-- `or(1, p?[A155097(n+1)+n])` -/
def P10144224982631262005.Spec : Prop :=
  ∀ n, P10144224982631262005.a n = A142178 (n + 1)

end A142178

/-! ## A142178.P16659276042323028774

`A000027(p?[A155097(n+1)+n])`
-/

namespace A142178.P16659276042323028774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142178.P16659276042323028774

namespace A142178

/-- `A000027(p?[A155097(n+1)+n])` -/
def P16659276042323028774.Spec : Prop :=
  ∀ n, P16659276042323028774.a n = A142178 (n + 1)

end A142178

/-! ## A142178.P9746153140263270930

`∩[A066501(n+1), A093350(n+1)]`
-/

namespace A142178.P9746153140263270930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P9746153140263270930

namespace A142178

/-- `∩[A066501(n+1), A093350(n+1)]` -/
def P9746153140263270930.Spec : Prop :=
  ∀ n, (P9746153140263270930.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P17979362090752064831

`∩[A003627(n+1), A186113(n)]`
-/

namespace A142178.P17979362090752064831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P17979362090752064831

namespace A142178

/-- `∩[A003627(n+1), A186113(n)]` -/
def P17979362090752064831.Spec : Prop :=
  ∀ n, (P17979362090752064831.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P256082795722905730

`∩[A007528(n+1), A186113(n)]`
-/

namespace A142178.P256082795722905730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P256082795722905730

namespace A142178

/-- `∩[A007528(n+1), A186113(n)]` -/
def P256082795722905730.Spec : Prop :=
  ∀ n, (P256082795722905730.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P8636733911264123566

`∩[A045309(n+1), A186113(n)]`
-/

namespace A142178.P8636733911264123566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P8636733911264123566

namespace A142178

/-- `∩[A045309(n+1), A186113(n)]` -/
def P8636733911264123566.Spec : Prop :=
  ∀ n, (P8636733911264123566.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P16951294290404027562

`∩[A045410(n+1), A186113(n)]`
-/

namespace A142178.P16951294290404027562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P16951294290404027562

namespace A142178

/-- `∩[A045410(n+1), A186113(n)]` -/
def P16951294290404027562.Spec : Prop :=
  ∀ n, (P16951294290404027562.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P7299701672672600994

`∩[A056955(n+1), A186113(n)]`
-/

namespace A142178.P7299701672672600994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P7299701672672600994

namespace A142178

/-- `∩[A056955(n+1), A186113(n)]` -/
def P7299701672672600994.Spec : Prop :=
  ∀ n, (P7299701672672600994.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P14022784317805938432

`∩[A106886(n+1), A186113(n)]`
-/

namespace A142178.P14022784317805938432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P14022784317805938432

namespace A142178

/-- `∩[A106886(n+1), A186113(n)]` -/
def P14022784317805938432.Spec : Prop :=
  ∀ n, (P14022784317805938432.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P4555660168091831945

`∩[A191029(n+1), A186113(n)]`
-/

namespace A142178.P4555660168091831945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P4555660168091831945

namespace A142178

/-- `∩[A191029(n+1), A186113(n)]` -/
def P4555660168091831945.Spec : Prop :=
  ∀ n, (P4555660168091831945.a n : ℤ) = A142178 (n + 1)

end A142178

/-! ## A142178.P13215720455305158426

`∩[A275770(n+1), A186113(n)]`
-/

namespace A142178.P13215720455305158426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142178.P13215720455305158426

namespace A142178

/-- `∩[A275770(n+1), A186113(n)]` -/
def P13215720455305158426.Spec : Prop :=
  ∀ n, (P13215720455305158426.a n : ℤ) = A142178 (n + 1)

end A142178

/-!
# A142179: Primes congruent to 34 mod 39.

The programs for A142179, the canonical program `A142179.P15953761654610747245` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142179 has offset 1).

The definition of A142179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142179.P15953761654610747245

`p?[39*n-5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142179

/-- `p?[39*n-5]` -/
def P15953761654610747245.Spec : Prop :=
  ∀ n, P15953761654610747245.a n = A142179 (n + 1)

theorem P15953761654610747245.correct : P15953761654610747245.Spec := by
  intro n
  simp only [A142179, Nat.add_sub_cancel]

end A142179

/-! ## A142179.P9139462304478241739

`∩[A002476(n+1), A092178(n+1)]`
-/

namespace A142179.P9139462304478241739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P9139462304478241739

namespace A142179

/-- `∩[A002476(n+1), A092178(n+1)]` -/
def P9139462304478241739.Spec : Prop :=
  ∀ n, (P9139462304478241739.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P16136272255864230070

`∩[A007645(n+1), A092178(n+1)]`
-/

namespace A142179.P16136272255864230070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P16136272255864230070

namespace A142179

/-- `∩[A007645(n+1), A092178(n+1)]` -/
def P16136272255864230070.Spec : Prop :=
  ∀ n, (P16136272255864230070.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P13965631679716564695

`∩[A045331(n+1), A092178(n+1)]`
-/

namespace A142179.P13965631679716564695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P13965631679716564695

namespace A142179

/-- `∩[A045331(n+1), A092178(n+1)]` -/
def P13965631679716564695.Spec : Prop :=
  ∀ n, (P13965631679716564695.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P2895401585297752590

`∩[A045375(n+1), A092178(n+1)]`
-/

namespace A142179.P2895401585297752590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P2895401585297752590

namespace A142179

/-- `∩[A045375(n+1), A092178(n+1)]` -/
def P2895401585297752590.Spec : Prop :=
  ∀ n, (P2895401585297752590.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P5479094195617323415

`∩[A092178(n+1), A123365(n+1)]`
-/

namespace A142179.P5479094195617323415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P5479094195617323415

namespace A142179

/-- `∩[A092178(n+1), A123365(n+1)]` -/
def P5479094195617323415.Spec : Prop :=
  ∀ n, (P5479094195617323415.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P10583651527244200831

`∩[A092178(n+1), A279815(n+1)]`
-/

namespace A142179.P10583651527244200831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P10583651527244200831

namespace A142179

/-- `∩[A092178(n+1), A279815(n+1)]` -/
def P10583651527244200831.Spec : Prop :=
  ∀ n, (P10583651527244200831.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P10787954129880083876

`∩[A055664(n+1), A092178(n+1)]`
-/

namespace A142179.P10787954129880083876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P10787954129880083876

namespace A142179

/-- `∩[A055664(n+1), A092178(n+1)]` -/
def P10787954129880083876.Spec : Prop :=
  ∀ n, (P10787954129880083876.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P7441783120838670842

`∩[A092178(n+1), A133290(n+1)]`
-/

namespace A142179.P7441783120838670842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P7441783120838670842

namespace A142179

/-- `∩[A092178(n+1), A133290(n+1)]` -/
def P7441783120838670842.Spec : Prop :=
  ∀ n, (P7441783120838670842.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P15991652164256549052

`∩[A092178(n+1), A191070(n+1)]`
-/

namespace A142179.P15991652164256549052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P15991652164256549052

namespace A142179

/-- `∩[A092178(n+1), A191070(n+1)]` -/
def P15991652164256549052.Spec : Prop :=
  ∀ n, (P15991652164256549052.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P5173400011944807666

`∩[A092178(n+1), A137827(n+1)]`
-/

namespace A142179.P5173400011944807666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P5173400011944807666

namespace A142179

/-- `∩[A092178(n+1), A137827(n+1)]` -/
def P5173400011944807666.Spec : Prop :=
  ∀ n, (P5173400011944807666.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P2017448747679714061

`filter[A092178(n+1), A070563(#)]`
-/

namespace A142179.P2017448747679714061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142179.P2017448747679714061

namespace A142179

/-- `filter[A092178(n+1), A070563(#)]` -/
def P2017448747679714061.Spec : Prop :=
  ∀ n, P2017448747679714061.a n = A142179 (n + 1)

end A142179

/-! ## A142179.P15829110056693171231

`∩[A002476(n+1), A269044(n)+1]`
-/

namespace A142179.P15829110056693171231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P15829110056693171231

namespace A142179

/-- `∩[A002476(n+1), A269044(n)+1]` -/
def P15829110056693171231.Spec : Prop :=
  ∀ n, (P15829110056693171231.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P6861396714758949996

`∩[A007645(n+1), A269044(n)+1]`
-/

namespace A142179.P6861396714758949996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P6861396714758949996

namespace A142179

/-- `∩[A007645(n+1), A269044(n)+1]` -/
def P6861396714758949996.Spec : Prop :=
  ∀ n, (P6861396714758949996.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P10823855885471146586

`∩[A002476(n+1), A306285(n+1)]`
-/

namespace A142179.P10823855885471146586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P10823855885471146586

namespace A142179

/-- `∩[A002476(n+1), A306285(n+1)]` -/
def P10823855885471146586.Spec : Prop :=
  ∀ n, (P10823855885471146586.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P11530011004182921166

`∩[A007645(n+1), A306285(n+1)]`
-/

namespace A142179.P11530011004182921166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P11530011004182921166

namespace A142179

/-- `∩[A007645(n+1), A306285(n+1)]` -/
def P11530011004182921166.Spec : Prop :=
  ∀ n, (P11530011004182921166.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P2223754318169171217

`∩[A045331(n+1), A269044(n)+1]`
-/

namespace A142179.P2223754318169171217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P2223754318169171217

namespace A142179

/-- `∩[A045331(n+1), A269044(n)+1]` -/
def P2223754318169171217.Spec : Prop :=
  ∀ n, (P2223754318169171217.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P12628561247613094486

`∩[A045375(n+1), A269044(n)+1]`
-/

namespace A142179.P12628561247613094486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P12628561247613094486

namespace A142179

/-- `∩[A045375(n+1), A269044(n)+1]` -/
def P12628561247613094486.Spec : Prop :=
  ∀ n, (P12628561247613094486.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P13441066841636474062

`∩[A055664(n+1), A269044(n)+1]`
-/

namespace A142179.P13441066841636474062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P13441066841636474062

namespace A142179

/-- `∩[A055664(n+1), A269044(n)+1]` -/
def P13441066841636474062.Spec : Prop :=
  ∀ n, (P13441066841636474062.a n : ℤ) = A142179 (n + 1)

end A142179

/-! ## A142179.P3109780724677528501

`∩[A045331(n+1), A306285(n+1)]`
-/

namespace A142179.P3109780724677528501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142179.P3109780724677528501

namespace A142179

/-- `∩[A045331(n+1), A306285(n+1)]` -/
def P3109780724677528501.Spec : Prop :=
  ∀ n, (P3109780724677528501.a n : ℤ) = A142179 (n + 1)

end A142179

/-!
# A142180: Primes congruent to 35 mod 39.

The programs for A142180, the canonical program `A142180.P1182943201805809202` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142180 has offset 1).

The definition of A142180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142180.P1182943201805809202

`p?[39*n-4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142180

/-- `p?[39*n-4]` -/
def P1182943201805809202.Spec : Prop :=
  ∀ n, P1182943201805809202.a n = A142180 (n + 1)

theorem P1182943201805809202.correct : P1182943201805809202.Spec := by
  intro n
  simp only [A142180, Nat.add_sub_cancel]

end A142180

/-! ## A142180.P2883985323068176888

`∑{p}[p?[78*(n+1)+35], #]`
-/

namespace A142180.P2883985323068176888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  78 * (n + 1) + 35

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142180.P2883985323068176888

namespace A142180

/-- `∑{p}[p?[78*(n+1)+35], #]` -/
def P2883985323068176888.Spec : Prop :=
  ∀ n, (P2883985323068176888.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P18392297327970768075

`A000027(p?[A305068(n+1)+A183010(n)])`
-/

namespace A142180.P18392297327970768075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A183010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142180.P18392297327970768075

namespace A142180

/-- `A000027(p?[A305068(n+1)+A183010(n)])` -/
def P18392297327970768075.Spec : Prop :=
  ∀ n, P18392297327970768075.a n = A142180 (n + 1)

end A142180

/-! ## A142180.P1689606889288259427

`∩[A003627(n+1), A140372(n+1)]`
-/

namespace A142180.P1689606889288259427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P1689606889288259427

namespace A142180

/-- `∩[A003627(n+1), A140372(n+1)]` -/
def P1689606889288259427.Spec : Prop :=
  ∀ n, (P1689606889288259427.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P10464202451711464476

`∩[A007528(n+1), A140372(n+1)]`
-/

namespace A142180.P10464202451711464476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P10464202451711464476

namespace A142180

/-- `∩[A007528(n+1), A140372(n+1)]` -/
def P10464202451711464476.Spec : Prop :=
  ∀ n, (P10464202451711464476.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P7483494638527908754

`∩[A045309(n+1), A140372(n+1)]`
-/

namespace A142180.P7483494638527908754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P7483494638527908754

namespace A142180

/-- `∩[A045309(n+1), A140372(n+1)]` -/
def P7483494638527908754.Spec : Prop :=
  ∀ n, (P7483494638527908754.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P16860812926090772041

`∩[A045410(n+1), A140372(n+1)]`
-/

namespace A142180.P16860812926090772041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P16860812926090772041

namespace A142180

/-- `∩[A045410(n+1), A140372(n+1)]` -/
def P16860812926090772041.Spec : Prop :=
  ∀ n, (P16860812926090772041.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P28977145863895813

`∩[A056955(n+1), A140372(n+1)]`
-/

namespace A142180.P28977145863895813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P28977145863895813

namespace A142180

/-- `∩[A056955(n+1), A140372(n+1)]` -/
def P28977145863895813.Spec : Prop :=
  ∀ n, (P28977145863895813.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P9605206080564696056

`∩[A140372(n+1), A191070(n+1)]`
-/

namespace A142180.P9605206080564696056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P9605206080564696056

namespace A142180

/-- `∩[A140372(n+1), A191070(n+1)]` -/
def P9605206080564696056.Spec : Prop :=
  ∀ n, (P9605206080564696056.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P7423796712550831721

`∩[A066501(n+1), A140372(n+1)]`
-/

namespace A142180.P7423796712550831721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P7423796712550831721

namespace A142180

/-- `∩[A066501(n+1), A140372(n+1)]` -/
def P7423796712550831721.Spec : Prop :=
  ∀ n, (P7423796712550831721.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P1380959235410991115

`∩[A003627(n+1), A269044(n)+2]`
-/

namespace A142180.P1380959235410991115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P1380959235410991115

namespace A142180

/-- `∩[A003627(n+1), A269044(n)+2]` -/
def P1380959235410991115.Spec : Prop :=
  ∀ n, (P1380959235410991115.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P12842560103402991756

`∩[A007528(n+1), A269044(n)+2]`
-/

namespace A142180.P12842560103402991756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P12842560103402991756

namespace A142180

/-- `∩[A007528(n+1), A269044(n)+2]` -/
def P12842560103402991756.Spec : Prop :=
  ∀ n, (P12842560103402991756.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P6864310031473975944

`∩[A045309(n+1), A269044(n)+2]`
-/

namespace A142180.P6864310031473975944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P6864310031473975944

namespace A142180

/-- `∩[A045309(n+1), A269044(n)+2]` -/
def P6864310031473975944.Spec : Prop :=
  ∀ n, (P6864310031473975944.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P15847044847654327428

`∩[A045410(n+1), A269044(n)+2]`
-/

namespace A142180.P15847044847654327428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P15847044847654327428

namespace A142180

/-- `∩[A045410(n+1), A269044(n)+2]` -/
def P15847044847654327428.Spec : Prop :=
  ∀ n, (P15847044847654327428.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P11484149307951078046

`∩[A056955(n+1), A269044(n)+2]`
-/

namespace A142180.P11484149307951078046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P11484149307951078046

namespace A142180

/-- `∩[A056955(n+1), A269044(n)+2]` -/
def P11484149307951078046.Spec : Prop :=
  ∀ n, (P11484149307951078046.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P3931766111247278354

`∩[A003627(n+1), A269100(n)-2]`
-/

namespace A142180.P3931766111247278354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P3931766111247278354

namespace A142180

/-- `∩[A003627(n+1), A269100(n)-2]` -/
def P3931766111247278354.Spec : Prop :=
  ∀ n, (P3931766111247278354.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P6344311223450226226

`∩[A007528(n+1), A269100(n)-2]`
-/

namespace A142180.P6344311223450226226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P6344311223450226226

namespace A142180

/-- `∩[A007528(n+1), A269100(n)-2]` -/
def P6344311223450226226.Spec : Prop :=
  ∀ n, (P6344311223450226226.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P3469250327356664405

`∩[A045309(n+1), A269100(n)-2]`
-/

namespace A142180.P3469250327356664405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P3469250327356664405

namespace A142180

/-- `∩[A045309(n+1), A269100(n)-2]` -/
def P3469250327356664405.Spec : Prop :=
  ∀ n, (P3469250327356664405.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P10998931070922906588

`∩[A045410(n+1), A269100(n)-2]`
-/

namespace A142180.P10998931070922906588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P10998931070922906588

namespace A142180

/-- `∩[A045410(n+1), A269100(n)-2]` -/
def P10998931070922906588.Spec : Prop :=
  ∀ n, (P10998931070922906588.a n : ℤ) = A142180 (n + 1)

end A142180

/-! ## A142180.P12997568738578111539

`∩[A056955(n+1), A269100(n)-2]`
-/

namespace A142180.P12997568738578111539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142180.P12997568738578111539

namespace A142180

/-- `∩[A056955(n+1), A269100(n)-2]` -/
def P12997568738578111539.Spec : Prop :=
  ∀ n, (P12997568738578111539.a n : ℤ) = A142180 (n + 1)

end A142180

/-!
# A142181: Primes congruent to 37 mod 39.

The programs for A142181, the canonical program `A142181.P12862546500836666871` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142181 has offset 1).

The definition of A142181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142181.P12862546500836666871

`p?[39*n-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142181

/-- `p?[39*n-2]` -/
def P12862546500836666871.Spec : Prop :=
  ∀ n, P12862546500836666871.a n = A142181 (n + 1)

theorem P12862546500836666871.correct : P12862546500836666871.Spec := by
  intro n
  simp only [A142181, Nat.add_sub_cancel]

end A142181

/-! ## A142181.P7819947011154275119

`∩[A002476(n+1), A140373(n+1)]`
-/

namespace A142181.P7819947011154275119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P7819947011154275119

namespace A142181

/-- `∩[A002476(n+1), A140373(n+1)]` -/
def P7819947011154275119.Spec : Prop :=
  ∀ n, (P7819947011154275119.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P1122296231036868522

`∩[A007645(n+1), A140373(n+1)]`
-/

namespace A142181.P1122296231036868522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P1122296231036868522

namespace A142181

/-- `∩[A007645(n+1), A140373(n+1)]` -/
def P1122296231036868522.Spec : Prop :=
  ∀ n, (P1122296231036868522.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P4067323551719384287

`∩[A045331(n+1), A140373(n+1)]`
-/

namespace A142181.P4067323551719384287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P4067323551719384287

namespace A142181

/-- `∩[A045331(n+1), A140373(n+1)]` -/
def P4067323551719384287.Spec : Prop :=
  ∀ n, (P4067323551719384287.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P13440888639850722007

`∩[A045375(n+1), A140373(n+1)]`
-/

namespace A142181.P13440888639850722007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P13440888639850722007

namespace A142181

/-- `∩[A045375(n+1), A140373(n+1)]` -/
def P13440888639850722007.Spec : Prop :=
  ∀ n, (P13440888639850722007.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P2238762877430872266

`∩[A123365(n+1), A140373(n+1)]`
-/

namespace A142181.P2238762877430872266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P2238762877430872266

namespace A142181

/-- `∩[A123365(n+1), A140373(n+1)]` -/
def P2238762877430872266.Spec : Prop :=
  ∀ n, (P2238762877430872266.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P4191940938320825808

`∩[A140373(n+1), A279815(n+1)]`
-/

namespace A142181.P4191940938320825808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P4191940938320825808

namespace A142181

/-- `∩[A140373(n+1), A279815(n+1)]` -/
def P4191940938320825808.Spec : Prop :=
  ∀ n, (P4191940938320825808.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P6783456624551669645

`∩[A055664(n+1), A140373(n+1)]`
-/

namespace A142181.P6783456624551669645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P6783456624551669645

namespace A142181

/-- `∩[A055664(n+1), A140373(n+1)]` -/
def P6783456624551669645.Spec : Prop :=
  ∀ n, (P6783456624551669645.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P5562559210331984238

`∩[A133290(n+1), A140373(n+1)]`
-/

namespace A142181.P5562559210331984238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P5562559210331984238

namespace A142181

/-- `∩[A133290(n+1), A140373(n+1)]` -/
def P5562559210331984238.Spec : Prop :=
  ∀ n, (P5562559210331984238.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P8997569864139937173

`∩[A140373(n+1), A191070(n+1)]`
-/

namespace A142181.P8997569864139937173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P8997569864139937173

namespace A142181

/-- `∩[A140373(n+1), A191070(n+1)]` -/
def P8997569864139937173.Spec : Prop :=
  ∀ n, (P8997569864139937173.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P7593876871307380971

`∩[A137827(n+1), A140373(n+1)]`
-/

namespace A142181.P7593876871307380971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P7593876871307380971

namespace A142181

/-- `∩[A137827(n+1), A140373(n+1)]` -/
def P7593876871307380971.Spec : Prop :=
  ∀ n, (P7593876871307380971.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P7765385137820419157

`filter[A140373(n+1), A070563(#)]`
-/

namespace A142181.P7765385137820419157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142181.P7765385137820419157

namespace A142181

/-- `filter[A140373(n+1), A070563(#)]` -/
def P7765385137820419157.Spec : Prop :=
  ∀ n, P7765385137820419157.a n = A142181 (n + 1)

end A142181

/-! ## A142181.P11403371667002812534

`∩[A002476(n+1), A269100(n)]`
-/

namespace A142181.P11403371667002812534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P11403371667002812534

namespace A142181

/-- `∩[A002476(n+1), A269100(n)]` -/
def P11403371667002812534.Spec : Prop :=
  ∀ n, (P11403371667002812534.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P5917144786626580302

`∩[A007645(n+1), A269100(n)]`
-/

namespace A142181.P5917144786626580302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P5917144786626580302

namespace A142181

/-- `∩[A007645(n+1), A269100(n)]` -/
def P5917144786626580302.Spec : Prop :=
  ∀ n, (P5917144786626580302.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P11889805037433907649

`∩[A045331(n+1), A269100(n)]`
-/

namespace A142181.P11889805037433907649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P11889805037433907649

namespace A142181

/-- `∩[A045331(n+1), A269100(n)]` -/
def P11889805037433907649.Spec : Prop :=
  ∀ n, (P11889805037433907649.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P3533284690413576457

`∩[A045375(n+1), A269100(n)]`
-/

namespace A142181.P3533284690413576457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P3533284690413576457

namespace A142181

/-- `∩[A045375(n+1), A269100(n)]` -/
def P3533284690413576457.Spec : Prop :=
  ∀ n, (P3533284690413576457.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P3122578724162212007

`∩[A055664(n+1), A269100(n)]`
-/

namespace A142181.P3122578724162212007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P3122578724162212007

namespace A142181

/-- `∩[A055664(n+1), A269100(n)]` -/
def P3122578724162212007.Spec : Prop :=
  ∀ n, (P3122578724162212007.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P9519035906085326652

`∩[A123365(n+1), A269100(n)]`
-/

namespace A142181.P9519035906085326652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P9519035906085326652

namespace A142181

/-- `∩[A123365(n+1), A269100(n)]` -/
def P9519035906085326652.Spec : Prop :=
  ∀ n, (P9519035906085326652.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P13762645942881996710

`∩[A191070(n+1), A269100(n)]`
-/

namespace A142181.P13762645942881996710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P13762645942881996710

namespace A142181

/-- `∩[A191070(n+1), A269100(n)]` -/
def P13762645942881996710.Spec : Prop :=
  ∀ n, (P13762645942881996710.a n : ℤ) = A142181 (n + 1)

end A142181

/-! ## A142181.P4505523450286603138

`∩[A279815(n+1), A269100(n)]`
-/

namespace A142181.P4505523450286603138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142181.P4505523450286603138

namespace A142181

/-- `∩[A279815(n+1), A269100(n)]` -/
def P4505523450286603138.Spec : Prop :=
  ∀ n, (P4505523450286603138.a n : ℤ) = A142181 (n + 1)

end A142181

/-!
# A142182: Primes congruent to 38 mod 39.

The programs for A142182, the canonical program `A142182.P6033792183540617985` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142182 has offset 1).

The definition of A142182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142182.P6033792183540617985

`p?[39*n-1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142182

/-- `p?[39*n-1]` -/
def P6033792183540617985.Spec : Prop :=
  ∀ n, P6033792183540617985.a n = A142182 (n + 1)

theorem P6033792183540617985.correct : P6033792183540617985.Spec := by
  intro n
  simp only [A142182, Nat.add_sub_cancel]

end A142182

/-! ## A142182.P7558762578489365158

`or(1, p?[38*(n+1)+n])`
-/

namespace A142182.P7558762578489365158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142182.P7558762578489365158

namespace A142182

/-- `or(1, p?[38*(n+1)+n])` -/
def P7558762578489365158.Spec : Prop :=
  ∀ n, (P7558762578489365158.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P13054453273195732537

`∏{p}[p?[38*(n+1)+n], #]`
-/

namespace A142182.P13054453273195732537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142182.P13054453273195732537

namespace A142182

/-- `∏{p}[p?[38*(n+1)+n], #]` -/
def P13054453273195732537.Spec : Prop :=
  ∀ n, (P13054453273195732537.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P350729833809904104

`∑{p}[p?[77*(n+1)+n], #]`
-/

namespace A142182.P350729833809904104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  77 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142182.P350729833809904104

namespace A142182

/-- `∑{p}[p?[77*(n+1)+n], #]` -/
def P350729833809904104.Spec : Prop :=
  ∀ n, (P350729833809904104.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P17992543317182096217

`A000027(p?[38*(n+1)+n])`
-/

namespace A142182.P17992543317182096217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142182.P17992543317182096217

namespace A142182

/-- `A000027(p?[38*(n+1)+n])` -/
def P17992543317182096217.Spec : Prop :=
  ∀ n, P17992543317182096217.a n = A142182 (n + 1)

end A142182

/-! ## A142182.P4488409882356810948

`∩[A003627(n+1), A141859(n+1)]`
-/

namespace A142182.P4488409882356810948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P4488409882356810948

namespace A142182

/-- `∩[A003627(n+1), A141859(n+1)]` -/
def P4488409882356810948.Spec : Prop :=
  ∀ n, (P4488409882356810948.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P1637072115757595329

`∩[A007528(n+1), A141859(n+1)]`
-/

namespace A142182.P1637072115757595329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P1637072115757595329

namespace A142182

/-- `∩[A007528(n+1), A141859(n+1)]` -/
def P1637072115757595329.Spec : Prop :=
  ∀ n, (P1637072115757595329.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P2900026673312149203

`∩[A045309(n+1), A141859(n+1)]`
-/

namespace A142182.P2900026673312149203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P2900026673312149203

namespace A142182

/-- `∩[A045309(n+1), A141859(n+1)]` -/
def P2900026673312149203.Spec : Prop :=
  ∀ n, (P2900026673312149203.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P4976280125043741753

`∩[A045410(n+1), A141859(n+1)]`
-/

namespace A142182.P4976280125043741753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P4976280125043741753

namespace A142182

/-- `∩[A045410(n+1), A141859(n+1)]` -/
def P4976280125043741753.Spec : Prop :=
  ∀ n, (P4976280125043741753.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P11540677046318688329

`∩[A056955(n+1), A141859(n+1)]`
-/

namespace A142182.P11540677046318688329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P11540677046318688329

namespace A142182

/-- `∩[A056955(n+1), A141859(n+1)]` -/
def P11540677046318688329.Spec : Prop :=
  ∀ n, (P11540677046318688329.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P3404694772450373900

`∩[A141859(n+1), A191070(n+1)]`
-/

namespace A142182.P3404694772450373900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P3404694772450373900

namespace A142182

/-- `∩[A141859(n+1), A191070(n+1)]` -/
def P3404694772450373900.Spec : Prop :=
  ∀ n, (P3404694772450373900.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P11840005351995450950

`∩[A066501(n+1), A141859(n+1)]`
-/

namespace A142182.P11840005351995450950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P11840005351995450950

namespace A142182

/-- `∩[A066501(n+1), A141859(n+1)]` -/
def P11840005351995450950.Spec : Prop :=
  ∀ n, (P11840005351995450950.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P18298748635000106467

`∩[A003627(n+1), A269100(n)+1]`
-/

namespace A142182.P18298748635000106467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P18298748635000106467

namespace A142182

/-- `∩[A003627(n+1), A269100(n)+1]` -/
def P18298748635000106467.Spec : Prop :=
  ∀ n, (P18298748635000106467.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P4326495945916220817

`∩[A007528(n+1), A269100(n)+1]`
-/

namespace A142182.P4326495945916220817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P4326495945916220817

namespace A142182

/-- `∩[A007528(n+1), A269100(n)+1]` -/
def P4326495945916220817.Spec : Prop :=
  ∀ n, (P4326495945916220817.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P6135657748749048787

`∩[A045309(n+1), A269100(n)+1]`
-/

namespace A142182.P6135657748749048787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P6135657748749048787

namespace A142182

/-- `∩[A045309(n+1), A269100(n)+1]` -/
def P6135657748749048787.Spec : Prop :=
  ∀ n, (P6135657748749048787.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P3982536649932854958

`∩[A045410(n+1), A269100(n)+1]`
-/

namespace A142182.P3982536649932854958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P3982536649932854958

namespace A142182

/-- `∩[A045410(n+1), A269100(n)+1]` -/
def P3982536649932854958.Spec : Prop :=
  ∀ n, (P3982536649932854958.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P9562111344375047971

`∩[A056955(n+1), A269100(n)+1]`
-/

namespace A142182.P9562111344375047971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P9562111344375047971

namespace A142182

/-- `∩[A056955(n+1), A269100(n)+1]` -/
def P9562111344375047971.Spec : Prop :=
  ∀ n, (P9562111344375047971.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P10286943457095536799

`∩[A191070(n+1), A269100(n)+1]`
-/

namespace A142182.P10286943457095536799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P10286943457095536799

namespace A142182

/-- `∩[A191070(n+1), A269100(n)+1]` -/
def P10286943457095536799.Spec : Prop :=
  ∀ n, (P10286943457095536799.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P1153550102768084801

`∩[A003627(n+1), A190991(n)-2]`
-/

namespace A142182.P1153550102768084801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P1153550102768084801

namespace A142182

/-- `∩[A003627(n+1), A190991(n)-2]` -/
def P1153550102768084801.Spec : Prop :=
  ∀ n, (P1153550102768084801.a n : ℤ) = A142182 (n + 1)

end A142182

/-! ## A142182.P7833926561343431153

`∩[A007528(n+1), A190991(n)-2]`
-/

namespace A142182.P7833926561343431153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142182.P7833926561343431153

namespace A142182

/-- `∩[A007528(n+1), A190991(n)-2]` -/
def P7833926561343431153.Spec : Prop :=
  ∀ n, (P7833926561343431153.a n : ℤ) = A142182 (n + 1)

end A142182

/-!
# A142183: Primes congruent to 1 mod 40.

The programs for A142183, the canonical program `A142183.P16426145862585851646` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142183 has offset 1).

The definition of A142183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142183.P12595097357358708672

`∩[A030430(n+1), A107145(n+1)]`
-/

namespace A142183.P12595097357358708672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P12595097357358708672

namespace A142183

/-- `∩[A030430(n+1), A107145(n+1)]` -/
def P12595097357358708672.Spec : Prop :=
  ∀ n, (P12595097357358708672.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P16426145862585851646

`∩[A107145(n+1), A141881(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142183

/-- `∩[A107145(n+1), A141881(n+1)]` -/
def P16426145862585851646.Spec : Prop :=
  ∀ n, (P16426145862585851646.a n : ℤ) = A142183 (n + 1)

theorem P16426145862585851646.correct : P16426145862585851646.Spec := by
  intro n
  simp only [A142183, Nat.add_sub_cancel]

end A142183

/-! ## A142183.P1994643954079478931

`p?[40*n+1]`
-/

namespace A142183.P1994643954079478931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142183.P1994643954079478931

namespace A142183

/-- `p?[40*n+1]` -/
def P1994643954079478931.Spec : Prop :=
  ∀ n, (P1994643954079478931.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P11991595809831858774

`or(1, p?[or(1, 40*n)])`
-/

namespace A142183.P11991595809831858774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (40 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142183.P11991595809831858774

namespace A142183

/-- `or(1, p?[or(1, 40*n)])` -/
def P11991595809831858774.Spec : Prop :=
  ∀ n, (P11991595809831858774.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P3776634409382879149

`∏{d}[p?[40*n-39], #]`
-/

namespace A142183.P3776634409382879149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 39

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142183.P3776634409382879149

namespace A142183

/-- `∏{d}[p?[40*n-39], #]` -/
def P3776634409382879149.Spec : Prop :=
  ∀ n, (P3776634409382879149.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P3691498892568579755

`∩[A030430(n+1), A332227(n+1)]`
-/

namespace A142183.P3691498892568579755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P3691498892568579755

namespace A142183

/-- `∩[A030430(n+1), A332227(n+1)]` -/
def P3691498892568579755.Spec : Prop :=
  ∀ n, (P3691498892568579755.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P16088254360079107709

`∩[A107145(n+1), A179446(n+1)]`
-/

namespace A142183.P16088254360079107709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P16088254360079107709

namespace A142183

/-- `∩[A107145(n+1), A179446(n+1)]` -/
def P16088254360079107709.Spec : Prop :=
  ∀ n, (P16088254360079107709.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P7770058715799392411

`∩[A030430(n+1), A242663(n+1)]`
-/

namespace A142183.P7770058715799392411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P7770058715799392411

namespace A142183

/-- `∩[A030430(n+1), A242663(n+1)]` -/
def P7770058715799392411.Spec : Prop :=
  ∀ n, (P7770058715799392411.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P10223263547427059465

`∩[A141180(n+1), A141881(n+1)]`
-/

namespace A142183.P10223263547427059465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P10223263547427059465

namespace A142183

/-- `∩[A141180(n+1), A141881(n+1)]` -/
def P10223263547427059465.Spec : Prop :=
  ∀ n, (P10223263547427059465.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P5736617359062747186

`∩[A007519(n+1), A030430(n+1)]`
-/

namespace A142183.P5736617359062747186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P5736617359062747186

namespace A142183

/-- `∩[A007519(n+1), A030430(n+1)]` -/
def P5736617359062747186.Spec : Prop :=
  ∀ n, (P5736617359062747186.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P4744798237806354616

`∩[A007519(n+1), A141881(n+1)]`
-/

namespace A142183.P4744798237806354616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P4744798237806354616

namespace A142183

/-- `∩[A007519(n+1), A141881(n+1)]` -/
def P4744798237806354616.Spec : Prop :=
  ∀ n, (P4744798237806354616.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P14840581202551574840

`∩[A007519(n+1), A179446(n+1)]`
-/

namespace A142183.P14840581202551574840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P14840581202551574840

namespace A142183

/-- `∩[A007519(n+1), A179446(n+1)]` -/
def P14840581202551574840.Spec : Prop :=
  ∀ n, (P14840581202551574840.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P5904767192703234784

`∩[A030430(n+1), A045390(n+1)]`
-/

namespace A142183.P5904767192703234784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P5904767192703234784

namespace A142183

/-- `∩[A030430(n+1), A045390(n+1)]` -/
def P5904767192703234784.Spec : Prop :=
  ∀ n, (P5904767192703234784.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P8751095776437941361

`∩[A045390(n+1), A141881(n+1)]`
-/

namespace A142183.P8751095776437941361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P8751095776437941361

namespace A142183

/-- `∩[A045390(n+1), A141881(n+1)]` -/
def P8751095776437941361.Spec : Prop :=
  ∀ n, (P8751095776437941361.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P18208597647346933326

`∩[A045390(n+1), A179446(n+1)]`
-/

namespace A142183.P18208597647346933326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P18208597647346933326

namespace A142183

/-- `∩[A045390(n+1), A179446(n+1)]` -/
def P18208597647346933326.Spec : Prop :=
  ∀ n, (P18208597647346933326.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P1481567318811662574

`∩[A209544(n+1), A030430(n+1)]`
-/

namespace A142183.P1481567318811662574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P1481567318811662574

namespace A142183

/-- `∩[A209544(n+1), A030430(n+1)]` -/
def P1481567318811662574.Spec : Prop :=
  ∀ n, (P1481567318811662574.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P9857147849377514502

`∩[A033201(n+1), A141881(n+1)]`
-/

namespace A142183.P9857147849377514502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P9857147849377514502

namespace A142183

/-- `∩[A033201(n+1), A141881(n+1)]` -/
def P9857147849377514502.Spec : Prop :=
  ∀ n, (P9857147849377514502.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P11942351514994638517

`∩[A007519(n+1), A045453(n+1)]`
-/

namespace A142183.P11942351514994638517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P11942351514994638517

namespace A142183

/-- `∩[A007519(n+1), A045453(n+1)]` -/
def P11942351514994638517.Spec : Prop :=
  ∀ n, (P11942351514994638517.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P17944763886552100745

`∩[A045390(n+1), A045453(n+1)]`
-/

namespace A142183.P17944763886552100745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P17944763886552100745

namespace A142183

/-- `∩[A045390(n+1), A045453(n+1)]` -/
def P17944763886552100745.Spec : Prop :=
  ∀ n, (P17944763886552100745.a n : ℤ) = A142183 (n + 1)

end A142183

/-! ## A142183.P4008943375398270811

`∩[A045453(n+1), A107145(n+1)]`
-/

namespace A142183.P4008943375398270811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142183.P4008943375398270811

namespace A142183

/-- `∩[A045453(n+1), A107145(n+1)]` -/
def P4008943375398270811.Spec : Prop :=
  ∀ n, (P4008943375398270811.a n : ℤ) = A142183 (n + 1)

end A142183

/-!
# A142184: Primes congruent to 3 mod 40.

The programs for A142184, the canonical program `A142184.P2814003219085699518` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142184 has offset 1).

The definition of A142184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142184.P17044309664466367069

`∩[A030431(n+1), A332446(n+1)]`
-/

namespace A142184.P17044309664466367069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P17044309664466367069

namespace A142184

/-- `∩[A030431(n+1), A332446(n+1)]` -/
def P17044309664466367069.Spec : Prop :=
  ∀ n, (P17044309664466367069.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P16937691475999609393

`∩[A105854(n+1), A332446(n+1)]`
-/

namespace A142184.P16937691475999609393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P16937691475999609393

namespace A142184

/-- `∩[A105854(n+1), A332446(n+1)]` -/
def P16937691475999609393.Spec : Prop :=
  ∀ n, (P16937691475999609393.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P2814003219085699518

`p?[40*n+3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142184

/-- `p?[40*n+3]` -/
def P2814003219085699518.Spec : Prop :=
  ∀ n, (P2814003219085699518.a n : ℤ) = A142184 (n + 1)

theorem P2814003219085699518.correct : P2814003219085699518.Spec := by
  intro n
  simp only [A142184, Nat.add_sub_cancel]

end A142184

/-! ## A142184.P2457679193354204740

`∑{d}[p?[a(n-1)+40], #]-1` with `a(0)=3`
-/

namespace A142184.P2457679193354204740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 40

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A142184.P2457679193354204740

namespace A142184

/-- `∑{d}[p?[a(n-1)+40], #]-1` -/
def P2457679193354204740.Spec : Prop :=
  ∀ n, P2457679193354204740.a n = A142184 (n + 1)

end A142184

/-! ## A142184.P2245338421047083760

`∩[A105854(n+1), A141179(n+1)]`
-/

namespace A142184.P2245338421047083760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P2245338421047083760

namespace A142184

/-- `∩[A105854(n+1), A141179(n+1)]` -/
def P2245338421047083760.Spec : Prop :=
  ∀ n, (P2245338421047083760.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P566553243614533843

`∩[A045414(n+1), A332446(n+1)]`
-/

namespace A142184.P566553243614533843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P566553243614533843

namespace A142184

/-- `∩[A045414(n+1), A332446(n+1)]` -/
def P566553243614533843.Spec : Prop :=
  ∀ n, (P566553243614533843.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P72622472811995962

`∩[A007520(n+1), A030431(n+1)]`
-/

namespace A142184.P72622472811995962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P72622472811995962

namespace A142184

/-- `∩[A007520(n+1), A030431(n+1)]` -/
def P72622472811995962.Spec : Prop :=
  ∀ n, (P72622472811995962.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P7776573739940952653

`∩[A007520(n+1), A045414(n+1)]`
-/

namespace A142184.P7776573739940952653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P7776573739940952653

namespace A142184

/-- `∩[A007520(n+1), A045414(n+1)]` -/
def P7776573739940952653.Spec : Prop :=
  ∀ n, (P7776573739940952653.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P6054847486846271823

`∩[A030431(n+1), A045339(n+1)]`
-/

namespace A142184.P6054847486846271823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P6054847486846271823

namespace A142184

/-- `∩[A030431(n+1), A045339(n+1)]` -/
def P6054847486846271823.Spec : Prop :=
  ∀ n, (P6054847486846271823.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P4600463877600867675

`∩[A045339(n+1), A045414(n+1)]`
-/

namespace A142184.P4600463877600867675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P4600463877600867675

namespace A142184

/-- `∩[A045339(n+1), A045414(n+1)]` -/
def P4600463877600867675.Spec : Prop :=
  ∀ n, (P4600463877600867675.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P17358113368275189134

`∩[A007520(n+1), A105854(n+1)]`
-/

namespace A142184.P17358113368275189134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P17358113368275189134

namespace A142184

/-- `∩[A007520(n+1), A105854(n+1)]` -/
def P17358113368275189134.Spec : Prop :=
  ∀ n, (P17358113368275189134.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P7078533036766913577

`∩[A045339(n+1), A105854(n+1)]`
-/

namespace A142184.P7078533036766913577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P7078533036766913577

namespace A142184

/-- `∩[A045339(n+1), A105854(n+1)]` -/
def P7078533036766913577.Spec : Prop :=
  ∀ n, (P7078533036766913577.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P733436115361710849

`∩[A105854(n+1), A163183(n+1)]`
-/

namespace A142184.P733436115361710849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P733436115361710849

namespace A142184

/-- `∩[A105854(n+1), A163183(n+1)]` -/
def P733436115361710849.Spec : Prop :=
  ∀ n, (P733436115361710849.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P15453478079888496398

`∩[A105854(n+1), A128288(n+2)]`
-/

namespace A142184.P15453478079888496398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P15453478079888496398

namespace A142184

/-- `∩[A105854(n+1), A128288(n+2)]` -/
def P15453478079888496398.Spec : Prop :=
  ∀ n, (P15453478079888496398.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P8457380339066724305

`∩[A030431(n+1), A192717(n+1)]`
-/

namespace A142184.P8457380339066724305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P8457380339066724305

namespace A142184

/-- `∩[A030431(n+1), A192717(n+1)]` -/
def P8457380339066724305.Spec : Prop :=
  ∀ n, (P8457380339066724305.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P8580730579354135518

`∩[A045414(n+1), A192717(n+1)]`
-/

namespace A142184.P8580730579354135518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P8580730579354135518

namespace A142184

/-- `∩[A045414(n+1), A192717(n+1)]` -/
def P8580730579354135518.Spec : Prop :=
  ∀ n, (P8580730579354135518.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P6690598869483356134

`∩[A105854(n+1), A192717(n+1)]`
-/

namespace A142184.P6690598869483356134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P6690598869483356134

namespace A142184

/-- `∩[A105854(n+1), A192717(n+1)]` -/
def P6690598869483356134.Spec : Prop :=
  ∀ n, (P6690598869483356134.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P6207287923263428319

`∩[A040119(n+1), A105854(n+1)]`
-/

namespace A142184.P6207287923263428319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P6207287923263428319

namespace A142184

/-- `∩[A040119(n+1), A105854(n+1)]` -/
def P6207287923263428319.Spec : Prop :=
  ∀ n, (P6207287923263428319.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P16016604702766619257

`∩[A051071(n+1), A105854(n+1)]`
-/

namespace A142184.P16016604702766619257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P16016604702766619257

namespace A142184

/-- `∩[A051071(n+1), A105854(n+1)]` -/
def P16016604702766619257.Spec : Prop :=
  ∀ n, (P16016604702766619257.a n : ℤ) = A142184 (n + 1)

end A142184

/-! ## A142184.P12090845859293387104

`∩[A051073(n+1), A105854(n+1)]`
-/

namespace A142184.P12090845859293387104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142184.P12090845859293387104

namespace A142184

/-- `∩[A051073(n+1), A105854(n+1)]` -/
def P12090845859293387104.Spec : Prop :=
  ∀ n, (P12090845859293387104.a n : ℤ) = A142184 (n + 1)

end A142184

/-!
# A142185: Primes congruent to 7 mod 40.

The programs for A142185, the canonical program `A142185.P9581591015941482446` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142185 has offset 1).

The definition of A142185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142185.P16237521547385619395

`∩[A030432(n+1), A139830(n+1)]`
-/

namespace A142185.P16237521547385619395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P16237521547385619395

namespace A142185

/-- `∩[A030432(n+1), A139830(n+1)]` -/
def P16237521547385619395.Spec : Prop :=
  ∀ n, (P16237521547385619395.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P9581591015941482446

`∩[A139830(n+1), A141882(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142185

/-- `∩[A139830(n+1), A141882(n+1)]` -/
def P9581591015941482446.Spec : Prop :=
  ∀ n, (P9581591015941482446.a n : ℤ) = A142185 (n + 1)

theorem P9581591015941482446.correct : P9581591015941482446.Spec := by
  intro n
  simp only [A142185, Nat.add_sub_cancel]

end A142185

/-! ## A142185.P8848054594982638905

`p?[40*n+7]`
-/

namespace A142185.P8848054594982638905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142185.P8848054594982638905

namespace A142185

/-- `p?[40*n+7]` -/
def P8848054594982638905.Spec : Prop :=
  ∀ n, (P8848054594982638905.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P6008591818941698008

`∑{d}[p?[a(n-1)+40], #]-1` with `a(0)=7`
-/

namespace A142185.P6008591818941698008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) + 40

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A142185.P6008591818941698008

namespace A142185

/-- `∑{d}[p?[a(n-1)+40], #]-1` -/
def P6008591818941698008.Spec : Prop :=
  ∀ n, P6008591818941698008.a n = A142185 (n + 1)

end A142185

/-! ## A142185.P4564739137692469020

`∩[A007522(n+1), A030432(n+1)]`
-/

namespace A142185.P4564739137692469020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P4564739137692469020

namespace A142185

/-- `∩[A007522(n+1), A030432(n+1)]` -/
def P4564739137692469020.Spec : Prop :=
  ∀ n, (P4564739137692469020.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P4586866675142498574

`∩[A007522(n+1), A045380(n+1)]`
-/

namespace A142185.P4586866675142498574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P4586866675142498574

namespace A142185

/-- `∩[A007522(n+1), A045380(n+1)]` -/
def P4586866675142498574.Spec : Prop :=
  ∀ n, (P4586866675142498574.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P3134613066779637123

`∩[A030432(n+1), A045382(n+1)]`
-/

namespace A142185.P3134613066779637123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P3134613066779637123

namespace A142185

/-- `∩[A030432(n+1), A045382(n+1)]` -/
def P3134613066779637123.Spec : Prop :=
  ∀ n, (P3134613066779637123.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P2959817617062552887

`∩[A007522(n+1), A141882(n+1)]`
-/

namespace A142185.P2959817617062552887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P2959817617062552887

namespace A142185

/-- `∩[A007522(n+1), A141882(n+1)]` -/
def P2959817617062552887.Spec : Prop :=
  ∀ n, (P2959817617062552887.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P189779516959704636

`∩[A045380(n+1), A139830(n+1)]`
-/

namespace A142185.P189779516959704636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P189779516959704636

namespace A142185

/-- `∩[A045380(n+1), A139830(n+1)]` -/
def P189779516959704636.Spec : Prop :=
  ∀ n, (P189779516959704636.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P2492347496261236751

`∩[A045382(n+1), A141882(n+1)]`
-/

namespace A142185.P2492347496261236751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P2492347496261236751

namespace A142185

/-- `∩[A045382(n+1), A141882(n+1)]` -/
def P2492347496261236751.Spec : Prop :=
  ∀ n, (P2492347496261236751.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P4491845488304423724

`∩[A007522(n+1), A045357(n+1)]`
-/

namespace A142185.P4491845488304423724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P4491845488304423724

namespace A142185

/-- `∩[A007522(n+1), A045357(n+1)]` -/
def P4491845488304423724.Spec : Prop :=
  ∀ n, (P4491845488304423724.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P10494200472003369735

`∩[A045357(n+1), A139830(n+1)]`
-/

namespace A142185.P10494200472003369735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P10494200472003369735

namespace A142185

/-- `∩[A045357(n+1), A139830(n+1)]` -/
def P10494200472003369735.Spec : Prop :=
  ∀ n, (P10494200472003369735.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P7329300258301752392

`∩[A094712(n+1), A141882(n+1)]`
-/

namespace A142185.P7329300258301752392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P7329300258301752392

namespace A142185

/-- `∩[A094712(n+1), A141882(n+1)]` -/
def P7329300258301752392.Spec : Prop :=
  ∀ n, (P7329300258301752392.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P5512496481081403872

`∩[A106889(n+1), A141882(n+1)]`
-/

namespace A142185.P5512496481081403872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P5512496481081403872

namespace A142185

/-- `∩[A106889(n+1), A141882(n+1)]` -/
def P5512496481081403872.Spec : Prop :=
  ∀ n, (P5512496481081403872.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P6259791592128476948

`∩[A014663(n+1), A141882(n+1)]`
-/

namespace A142185.P6259791592128476948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P6259791592128476948

namespace A142185

/-- `∩[A014663(n+1), A141882(n+1)]` -/
def P6259791592128476948.Spec : Prop :=
  ∀ n, (P6259791592128476948.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P5034717198917514876

`∩[A040098(n+1), A141882(n+1)]`
-/

namespace A142185.P5034717198917514876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P5034717198917514876

namespace A142185

/-- `∩[A040098(n+1), A141882(n+1)]` -/
def P5034717198917514876.Spec : Prop :=
  ∀ n, (P5034717198917514876.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P1427494195175233435

`∩[A004628(n+1), A030432(n+1)]`
-/

namespace A142185.P1427494195175233435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P1427494195175233435

namespace A142185

/-- `∩[A004628(n+1), A030432(n+1)]` -/
def P1427494195175233435.Spec : Prop :=
  ∀ n, (P1427494195175233435.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P11709450393638545532

`∩[A004628(n+1), A045357(n+1)]`
-/

namespace A142185.P11709450393638545532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P11709450393638545532

namespace A142185

/-- `∩[A004628(n+1), A045357(n+1)]` -/
def P11709450393638545532.Spec : Prop :=
  ∀ n, (P11709450393638545532.a n : ℤ) = A142185 (n + 1)

end A142185

/-! ## A142185.P11104000434155719530

`∩[A004628(n+1), A045380(n+1)]`
-/

namespace A142185.P11104000434155719530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142185.P11104000434155719530

namespace A142185

/-- `∩[A004628(n+1), A045380(n+1)]` -/
def P11104000434155719530.Spec : Prop :=
  ∀ n, (P11104000434155719530.a n : ℤ) = A142185 (n + 1)

end A142185

/-!
# A142186: Primes congruent to 9 mod 40.

The programs for A142186, the canonical program `A142186.P9454557174782430913` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142186 has offset 1).

The definition of A142186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142186.P16529448919819221770

`∩[A030433(n+1), A107145(n+1)]`
-/

namespace A142186.P16529448919819221770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P16529448919819221770

namespace A142186

/-- `∩[A030433(n+1), A107145(n+1)]` -/
def P16529448919819221770.Spec : Prop :=
  ∀ n, (P16529448919819221770.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P9454557174782430913

`∩[A107145(n+1), A141883(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142186

/-- `∩[A107145(n+1), A141883(n+1)]` -/
def P9454557174782430913.Spec : Prop :=
  ∀ n, (P9454557174782430913.a n : ℤ) = A142186 (n + 1)

theorem P9454557174782430913.correct : P9454557174782430913.Spec := by
  intro n
  simp only [A142186, Nat.add_sub_cancel]

end A142186

/-! ## A142186.P9263060578397016075

`p?[5*8*n+9]`
-/

namespace A142186.P9263060578397016075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (8 * n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142186.P9263060578397016075

namespace A142186

/-- `p?[5*8*n+9]` -/
def P9263060578397016075.Spec : Prop :=
  ∀ n, (P9263060578397016075.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P7882014119068146705

`∩[A030433(n+1), A332227(n+1)]`
-/

namespace A142186.P7882014119068146705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P7882014119068146705

namespace A142186

/-- `∩[A030433(n+1), A332227(n+1)]` -/
def P7882014119068146705.Spec : Prop :=
  ∀ n, (P7882014119068146705.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P9836085201307488053

`A000027(p?[a(n-1)+40])` with `a(0)=9`
-/

namespace A142186.P9836085201307488053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142186.P9836085201307488053

namespace A142186

/-- `A000027(p?[a(n-1)+40])` -/
def P9836085201307488053.Spec : Prop :=
  ∀ n, P9836085201307488053.a n = A142186 (n + 1)

end A142186

/-! ## A142186.P13859406872837714144

`∩[A030433(n+1), A242663(n+1)]`
-/

namespace A142186.P13859406872837714144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P13859406872837714144

namespace A142186

/-- `∩[A030433(n+1), A242663(n+1)]` -/
def P13859406872837714144.Spec : Prop :=
  ∀ n, (P13859406872837714144.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P12649144389598459915

`∩[A141180(n+1), A141883(n+1)]`
-/

namespace A142186.P12649144389598459915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P12649144389598459915

namespace A142186

/-- `∩[A141180(n+1), A141883(n+1)]` -/
def P12649144389598459915.Spec : Prop :=
  ∀ n, (P12649144389598459915.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P1988303204814275759

`∩[A007519(n+1), A030433(n+1)]`
-/

namespace A142186.P1988303204814275759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P1988303204814275759

namespace A142186

/-- `∩[A007519(n+1), A030433(n+1)]` -/
def P1988303204814275759.Spec : Prop :=
  ∀ n, (P1988303204814275759.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P11064196557871131273

`∩[A030433(n+1), A045390(n+1)]`
-/

namespace A142186.P11064196557871131273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P11064196557871131273

namespace A142186

/-- `∩[A030433(n+1), A045390(n+1)]` -/
def P11064196557871131273.Spec : Prop :=
  ∀ n, (P11064196557871131273.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P10339367241171676192

`∩[A007519(n+1), A141883(n+1)]`
-/

namespace A142186.P10339367241171676192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P10339367241171676192

namespace A142186

/-- `∩[A007519(n+1), A141883(n+1)]` -/
def P10339367241171676192.Spec : Prop :=
  ∀ n, (P10339367241171676192.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P3523812072263689781

`∩[A045390(n+1), A141883(n+1)]`
-/

namespace A142186.P3523812072263689781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P3523812072263689781

namespace A142186

/-- `∩[A045390(n+1), A141883(n+1)]` -/
def P3523812072263689781.Spec : Prop :=
  ∀ n, (P3523812072263689781.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P10419457182588943165

`∩[A030433(n+1), A209544(n+1)]`
-/

namespace A142186.P10419457182588943165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P10419457182588943165

namespace A142186

/-- `∩[A030433(n+1), A209544(n+1)]` -/
def P10419457182588943165.Spec : Prop :=
  ∀ n, (P10419457182588943165.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P7203094384842321772

`∩[A007519(n+1), A045457(n+1)]`
-/

namespace A142186.P7203094384842321772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P7203094384842321772

namespace A142186

/-- `∩[A007519(n+1), A045457(n+1)]` -/
def P7203094384842321772.Spec : Prop :=
  ∀ n, (P7203094384842321772.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P10330099167651340891

`∩[A045390(n+1), A045457(n+1)]`
-/

namespace A142186.P10330099167651340891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P10330099167651340891

namespace A142186

/-- `∩[A045390(n+1), A045457(n+1)]` -/
def P10330099167651340891.Spec : Prop :=
  ∀ n, (P10330099167651340891.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P9965534299922828232

`∩[A045457(n+1), A107145(n+1)]`
-/

namespace A142186.P9965534299922828232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P9965534299922828232

namespace A142186

/-- `∩[A045457(n+1), A107145(n+1)]` -/
def P9965534299922828232.Spec : Prop :=
  ∀ n, (P9965534299922828232.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P11843181740018440571

`∩[A045457(n+1), A209544(n+1)]`
-/

namespace A142186.P11843181740018440571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P11843181740018440571

namespace A142186

/-- `∩[A045457(n+1), A209544(n+1)]` -/
def P11843181740018440571.Spec : Prop :=
  ∀ n, (P11843181740018440571.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P4154983683592622114

`∩[A033201(n+1), A141883(n+1)]`
-/

namespace A142186.P4154983683592622114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P4154983683592622114

namespace A142186

/-- `∩[A033201(n+1), A141883(n+1)]` -/
def P4154983683592622114.Spec : Prop :=
  ∀ n, (P4154983683592622114.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P4946723270186970472

`∩[A007519(n+1), A327753(n+1)]`
-/

namespace A142186.P4946723270186970472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P4946723270186970472

namespace A142186

/-- `∩[A007519(n+1), A327753(n+1)]` -/
def P4946723270186970472.Spec : Prop :=
  ∀ n, (P4946723270186970472.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P15435808269244212059

`∩[A209544(n+1), A327753(n+1)]`
-/

namespace A142186.P15435808269244212059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P15435808269244212059

namespace A142186

/-- `∩[A209544(n+1), A327753(n+1)]` -/
def P15435808269244212059.Spec : Prop :=
  ∀ n, (P15435808269244212059.a n : ℤ) = A142186 (n + 1)

end A142186

/-! ## A142186.P2137211107338786949

`∩[A030433(n+1), A332226(n+1)]`
-/

namespace A142186.P2137211107338786949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142186.P2137211107338786949

namespace A142186

/-- `∩[A030433(n+1), A332226(n+1)]` -/
def P2137211107338786949.Spec : Prop :=
  ∀ n, (P2137211107338786949.a n : ℤ) = A142186 (n + 1)

end A142186

/-!
# A142187: Primes congruent to 11 mod 40.

The programs for A142187, the canonical program `A142187.P9189449944067263993` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142187 has offset 1).

The definition of A142187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142187.P7276006816945299896

`∩[A030430(n+1), A332446(n+1)]`
-/

namespace A142187.P7276006816945299896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P7276006816945299896

namespace A142187

/-- `∩[A030430(n+1), A332446(n+1)]` -/
def P7276006816945299896.Spec : Prop :=
  ∀ n, (P7276006816945299896.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P10667653763148897976

`∩[A030430(n+1), A139829(n+1)]`
-/

namespace A142187.P10667653763148897976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P10667653763148897976

namespace A142187

/-- `∩[A030430(n+1), A139829(n+1)]` -/
def P10667653763148897976.Spec : Prop :=
  ∀ n, (P10667653763148897976.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P2497411431621239085

`∩[A139829(n+1), A141884(n+1)]`
-/

namespace A142187.P2497411431621239085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P2497411431621239085

namespace A142187

/-- `∩[A139829(n+1), A141884(n+1)]` -/
def P2497411431621239085.Spec : Prop :=
  ∀ n, (P2497411431621239085.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P9189449944067263993

`p?[40*n+11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142187

/-- `p?[40*n+11]` -/
def P9189449944067263993.Spec : Prop :=
  ∀ n, (P9189449944067263993.a n : ℤ) = A142187 (n + 1)

theorem P9189449944067263993.correct : P9189449944067263993.Spec := by
  intro n
  simp only [A142187, Nat.add_sub_cancel]

end A142187

/-! ## A142187.P3105738681896484632

`∩[A033201(n+1), A141884(n+1)]`
-/

namespace A142187.P3105738681896484632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P3105738681896484632

namespace A142187

/-- `∩[A033201(n+1), A141884(n+1)]` -/
def P3105738681896484632.Spec : Prop :=
  ∀ n, (P3105738681896484632.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P7749597496253731558

`∩[A045453(n+1), A139829(n+1)]`
-/

namespace A142187.P7749597496253731558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P7749597496253731558

namespace A142187

/-- `∩[A045453(n+1), A139829(n+1)]` -/
def P7749597496253731558.Spec : Prop :=
  ∀ n, (P7749597496253731558.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P10685339622697885595

`∩[A007520(n+1), A030430(n+1)]`
-/

namespace A142187.P10685339622697885595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P10685339622697885595

namespace A142187

/-- `∩[A007520(n+1), A030430(n+1)]` -/
def P10685339622697885595.Spec : Prop :=
  ∀ n, (P10685339622697885595.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P4601442005372956471

`∩[A007520(n+1), A045453(n+1)]`
-/

namespace A142187.P4601442005372956471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P4601442005372956471

namespace A142187

/-- `∩[A007520(n+1), A045453(n+1)]` -/
def P4601442005372956471.Spec : Prop :=
  ∀ n, (P4601442005372956471.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P9130207881005725672

`∩[A030430(n+1), A045339(n+1)]`
-/

namespace A142187.P9130207881005725672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P9130207881005725672

namespace A142187

/-- `∩[A030430(n+1), A045339(n+1)]` -/
def P9130207881005725672.Spec : Prop :=
  ∀ n, (P9130207881005725672.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P10860975399247346099

`∩[A045339(n+1), A045453(n+1)]`
-/

namespace A142187.P10860975399247346099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P10860975399247346099

namespace A142187

/-- `∩[A045339(n+1), A045453(n+1)]` -/
def P10860975399247346099.Spec : Prop :=
  ∀ n, (P10860975399247346099.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P5784653924754372241

`∩[A007520(n+1), A141884(n+1)]`
-/

namespace A142187.P5784653924754372241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P5784653924754372241

namespace A142187

/-- `∩[A007520(n+1), A141884(n+1)]` -/
def P5784653924754372241.Spec : Prop :=
  ∀ n, (P5784653924754372241.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P10292740843446932295

`∩[A045339(n+1), A141884(n+1)]`
-/

namespace A142187.P10292740843446932295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P10292740843446932295

namespace A142187

/-- `∩[A045339(n+1), A141884(n+1)]` -/
def P10292740843446932295.Spec : Prop :=
  ∀ n, (P10292740843446932295.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P11310484258958525860

`∩[A007520(n+1), A090756(n+1)]`
-/

namespace A142187.P11310484258958525860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P11310484258958525860

namespace A142187

/-- `∩[A007520(n+1), A090756(n+1)]` -/
def P11310484258958525860.Spec : Prop :=
  ∀ n, (P11310484258958525860.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P8303454878997489954

`∩[A045339(n+1), A090756(n+1)]`
-/

namespace A142187.P8303454878997489954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P8303454878997489954

namespace A142187

/-- `∩[A045339(n+1), A090756(n+1)]` -/
def P8303454878997489954.Spec : Prop :=
  ∀ n, (P8303454878997489954.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P3784384674929519012

`∩[A090756(n+1), A139829(n+1)]`
-/

namespace A142187.P3784384674929519012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P3784384674929519012

namespace A142187

/-- `∩[A090756(n+1), A139829(n+1)]` -/
def P3784384674929519012.Spec : Prop :=
  ∀ n, (P3784384674929519012.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P4852323332191147570

`∩[A007520(n+1), A327752(n+1)]`
-/

namespace A142187.P4852323332191147570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P4852323332191147570

namespace A142187

/-- `∩[A007520(n+1), A327752(n+1)]` -/
def P4852323332191147570.Spec : Prop :=
  ∀ n, (P4852323332191147570.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P16867277711424837235

`∩[A163183(n+1), A141884(n+1)]`
-/

namespace A142187.P16867277711424837235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P16867277711424837235

namespace A142187

/-- `∩[A163183(n+1), A141884(n+1)]` -/
def P16867277711424837235.Spec : Prop :=
  ∀ n, (P16867277711424837235.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P17529833346398943528

`∑{p}[p?[2*A019433(n)-45], #]`
-/

namespace A142187.P17529833346398943528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019433 n - 45

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142187.P17529833346398943528

namespace A142187

/-- `∑{p}[p?[2*A019433(n)-45], #]` -/
def P17529833346398943528.Spec : Prop :=
  ∀ n, (P17529833346398943528.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P4807292137324313223

`∩[A030430(n+1), A192717(n+1)]`
-/

namespace A142187.P4807292137324313223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P4807292137324313223

namespace A142187

/-- `∩[A030430(n+1), A192717(n+1)]` -/
def P4807292137324313223.Spec : Prop :=
  ∀ n, (P4807292137324313223.a n : ℤ) = A142187 (n + 1)

end A142187

/-! ## A142187.P15295553516713971875

`∩[A045453(n+1), A192717(n+1)]`
-/

namespace A142187.P15295553516713971875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142187.P15295553516713971875

namespace A142187

/-- `∩[A045453(n+1), A192717(n+1)]` -/
def P15295553516713971875.Spec : Prop :=
  ∀ n, (P15295553516713971875.a n : ℤ) = A142187 (n + 1)

end A142187

/-!
# A142188: Primes congruent to 13 mod 40.

The programs for A142188, the canonical program `A142188.P7306125609912037089` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142188 has offset 1).

The definition of A142188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142188.P9721652181213501768

`∩[A030431(n+1), A107144(n+1)]`
-/

namespace A142188.P9721652181213501768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P9721652181213501768

namespace A142188

/-- `∩[A030431(n+1), A107144(n+1)]` -/
def P9721652181213501768.Spec : Prop :=
  ∀ n, (P9721652181213501768.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P2903272709480615841

`∩[A107144(n+1), A141885(n+1)]`
-/

namespace A142188.P2903272709480615841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P2903272709480615841

namespace A142188

/-- `∩[A107144(n+1), A141885(n+1)]` -/
def P2903272709480615841.Spec : Prop :=
  ∀ n, (P2903272709480615841.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P7306125609912037089

`p?[5*8*n+13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142188

/-- `p?[5*8*n+13]` -/
def P7306125609912037089.Spec : Prop :=
  ∀ n, (P7306125609912037089.a n : ℤ) = A142188 (n + 1)

theorem P7306125609912037089.correct : P7306125609912037089.Spec := by
  intro n
  simp only [A142188, Nat.add_sub_cancel]

end A142188

/-! ## A142188.P4592708175285780217

`∩[A141179(n+1), A141885(n+1)]`
-/

namespace A142188.P4592708175285780217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P4592708175285780217

namespace A142188

/-- `∩[A141179(n+1), A141885(n+1)]` -/
def P4592708175285780217.Spec : Prop :=
  ∀ n, (P4592708175285780217.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P6553042769624606756

`∩[A007521(n+1), A030431(n+1)]`
-/

namespace A142188.P6553042769624606756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P6553042769624606756

namespace A142188

/-- `∩[A007521(n+1), A030431(n+1)]` -/
def P6553042769624606756.Spec : Prop :=
  ∀ n, (P6553042769624606756.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P13492776111065488586

`∩[A030431(n+1), A045366(n+1)]`
-/

namespace A142188.P13492776111065488586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P13492776111065488586

namespace A142188

/-- `∩[A030431(n+1), A045366(n+1)]` -/
def P13492776111065488586.Spec : Prop :=
  ∀ n, (P13492776111065488586.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P6830856692932097580

`∩[A007521(n+1), A141885(n+1)]`
-/

namespace A142188.P6830856692932097580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P6830856692932097580

namespace A142188

/-- `∩[A007521(n+1), A141885(n+1)]` -/
def P6830856692932097580.Spec : Prop :=
  ∀ n, (P6830856692932097580.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P4814613396503069927

`∩[A045366(n+1), A141885(n+1)]`
-/

namespace A142188.P4814613396503069927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P4814613396503069927

namespace A142188

/-- `∩[A045366(n+1), A141885(n+1)]` -/
def P4814613396503069927.Spec : Prop :=
  ∀ n, (P4814613396503069927.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P18202470499000805678

`∩[A106889(n+1), A141885(n+1)]`
-/

namespace A142188.P18202470499000805678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P18202470499000805678

namespace A142188

/-- `∩[A106889(n+1), A141885(n+1)]` -/
def P18202470499000805678.Spec : Prop :=
  ∀ n, (P18202470499000805678.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P812638733649826400

`∩[A141885(n+1), A128288(n+2)]`
-/

namespace A142188.P812638733649826400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P812638733649826400

namespace A142188

/-- `∩[A141885(n+1), A128288(n+2)]` -/
def P812638733649826400.Spec : Prop :=
  ∀ n, (P812638733649826400.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P1517755605318493486

`∩[A141885(n+1), A395264(n+1)]`
-/

namespace A142188.P1517755605318493486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P1517755605318493486

namespace A142188

/-- `∩[A141885(n+1), A395264(n+1)]` -/
def P1517755605318493486.Spec : Prop :=
  ∀ n, (P1517755605318493486.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P2230938974185388039

`∩[A004627(n+1), A030431(n+1)]`
-/

namespace A142188.P2230938974185388039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P2230938974185388039

namespace A142188

/-- `∩[A004627(n+1), A030431(n+1)]` -/
def P2230938974185388039.Spec : Prop :=
  ∀ n, (P2230938974185388039.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P6270012621621492069

`∩[A004627(n+1), A141885(n+1)]`
-/

namespace A142188.P6270012621621492069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P6270012621621492069

namespace A142188

/-- `∩[A004627(n+1), A141885(n+1)]` -/
def P6270012621621492069.Spec : Prop :=
  ∀ n, (P6270012621621492069.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P4983901179371902396

`∩[A141885(n+1), A293859(n+1)]`
-/

namespace A142188.P4983901179371902396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P4983901179371902396

namespace A142188

/-- `∩[A141885(n+1), A293859(n+1)]` -/
def P4983901179371902396.Spec : Prop :=
  ∀ n, (P4983901179371902396.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P487016199349133056

`∩[A045429(n+1), A107144(n+1)]`
-/

namespace A142188.P487016199349133056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P487016199349133056

namespace A142188

/-- `∩[A045429(n+1), A107144(n+1)]` -/
def P487016199349133056.Spec : Prop :=
  ∀ n, (P487016199349133056.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P16319366825470115508

`∩[A038879(n+1), A141885(n+1)]`
-/

namespace A142188.P16319366825470115508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P16319366825470115508

namespace A142188

/-- `∩[A038879(n+1), A141885(n+1)]` -/
def P16319366825470115508.Spec : Prop :=
  ∀ n, (P16319366825470115508.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P6874050531796329390

`∩[A097955(n+1), A141885(n+1)]`
-/

namespace A142188.P6874050531796329390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P6874050531796329390

namespace A142188

/-- `∩[A097955(n+1), A141885(n+1)]` -/
def P6874050531796329390.Spec : Prop :=
  ∀ n, (P6874050531796329390.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P5732724267231194250

`∩[A003628(n+1), A141885(n+1)]`
-/

namespace A142188.P5732724267231194250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P5732724267231194250

namespace A142188

/-- `∩[A003628(n+1), A141885(n+1)]` -/
def P5732724267231194250.Spec : Prop :=
  ∀ n, (P5732724267231194250.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P9187658652205911614

`∩[A003629(n+1), A141885(n+1)]`
-/

namespace A142188.P9187658652205911614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P9187658652205911614

namespace A142188

/-- `∩[A003629(n+1), A141885(n+1)]` -/
def P9187658652205911614.Spec : Prop :=
  ∀ n, (P9187658652205911614.a n : ℤ) = A142188 (n + 1)

end A142188

/-! ## A142188.P10165920011676680073

`∩[A045435(n+1), A107144(n+1)]`
-/

namespace A142188.P10165920011676680073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142188.P10165920011676680073

namespace A142188

/-- `∩[A045435(n+1), A107144(n+1)]` -/
def P10165920011676680073.Spec : Prop :=
  ∀ n, (P10165920011676680073.a n : ℤ) = A142188 (n + 1)

end A142188

/-!
# A142189: Primes congruent to 17 mod 40.

The programs for A142189, the canonical program `A142189.P12715870842719578700` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142189 has offset 1).

The definition of A142189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142189.P12715870842719578700

`p?[5*8*n-23]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142189

/-- `p?[5*8*n-23]` -/
def P12715870842719578700.Spec : Prop :=
  ∀ n, P12715870842719578700.a n = A142189 (n + 1)

theorem P12715870842719578700.correct : P12715870842719578700.Spec := by
  intro n
  simp only [A142189, Nat.add_sub_cancel]

end A142189

/-! ## A142189.P7557773381394628309

`∏{p}[p?[40*n+17], #]`
-/

namespace A142189.P7557773381394628309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 17

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142189.P7557773381394628309

namespace A142189

/-- `∏{p}[p?[40*n+17], #]` -/
def P7557773381394628309.Spec : Prop :=
  ∀ n, (P7557773381394628309.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P12897013756209718088

`∩[A030432(n+1), A332227(n+1)]`
-/

namespace A142189.P12897013756209718088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P12897013756209718088

namespace A142189

/-- `∩[A030432(n+1), A332227(n+1)]` -/
def P12897013756209718088.Spec : Prop :=
  ∀ n, (P12897013756209718088.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P1008950604129870533

`∩[A030432(n+1), A242663(n+1)]`
-/

namespace A142189.P1008950604129870533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P1008950604129870533

namespace A142189

/-- `∩[A030432(n+1), A242663(n+1)]` -/
def P1008950604129870533.Spec : Prop :=
  ∀ n, (P1008950604129870533.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P17892034323018080913

`∩[A007519(n+1), A030432(n+1)]`
-/

namespace A142189.P17892034323018080913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P17892034323018080913

namespace A142189

/-- `∩[A007519(n+1), A030432(n+1)]` -/
def P17892034323018080913.Spec : Prop :=
  ∀ n, (P17892034323018080913.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P17208035163247664234

`∩[A030432(n+1), A045390(n+1)]`
-/

namespace A142189.P17208035163247664234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P17208035163247664234

namespace A142189

/-- `∩[A030432(n+1), A045390(n+1)]` -/
def P17208035163247664234.Spec : Prop :=
  ∀ n, (P17208035163247664234.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P13276984642627777848

`∩[A007519(n+1), A141886(n+1)]`
-/

namespace A142189.P13276984642627777848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P13276984642627777848

namespace A142189

/-- `∩[A007519(n+1), A141886(n+1)]` -/
def P13276984642627777848.Spec : Prop :=
  ∀ n, (P13276984642627777848.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P14250079783024038446

`∩[A045390(n+1), A141886(n+1)]`
-/

namespace A142189.P14250079783024038446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P14250079783024038446

namespace A142189

/-- `∩[A045390(n+1), A141886(n+1)]` -/
def P14250079783024038446.Spec : Prop :=
  ∀ n, (P14250079783024038446.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P7016985229666203782

`∩[A030432(n+1), A209544(n+1)]`
-/

namespace A142189.P7016985229666203782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P7016985229666203782

namespace A142189

/-- `∩[A030432(n+1), A209544(n+1)]` -/
def P7016985229666203782.Spec : Prop :=
  ∀ n, (P7016985229666203782.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P941357981634645791

`∩[A141886(n+1), A209544(n+1)]`
-/

namespace A142189.P941357981634645791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P941357981634645791

namespace A142189

/-- `∩[A141886(n+1), A209544(n+1)]` -/
def P941357981634645791.Spec : Prop :=
  ∀ n, (P941357981634645791.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P17861266383619175971

`∩[A007519(n+1), A045357(n+1)]`
-/

namespace A142189.P17861266383619175971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P17861266383619175971

namespace A142189

/-- `∩[A007519(n+1), A045357(n+1)]` -/
def P17861266383619175971.Spec : Prop :=
  ∀ n, (P17861266383619175971.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P14039261865670543164

`∩[A007519(n+1), A045380(n+1)]`
-/

namespace A142189.P14039261865670543164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P14039261865670543164

namespace A142189

/-- `∩[A007519(n+1), A045380(n+1)]` -/
def P14039261865670543164.Spec : Prop :=
  ∀ n, (P14039261865670543164.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P7970149681945936912

`∩[A045357(n+1), A209544(n+1)]`
-/

namespace A142189.P7970149681945936912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P7970149681945936912

namespace A142189

/-- `∩[A045357(n+1), A209544(n+1)]` -/
def P7970149681945936912.Spec : Prop :=
  ∀ n, (P7970149681945936912.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P597097730052518171

`∩[A045380(n+1), A209544(n+1)]`
-/

namespace A142189.P597097730052518171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P597097730052518171

namespace A142189

/-- `∩[A045380(n+1), A209544(n+1)]` -/
def P597097730052518171.Spec : Prop :=
  ∀ n, (P597097730052518171.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P13543739127877564389

`∩[A045357(n+1), A332227(n+1)]`
-/

namespace A142189.P13543739127877564389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P13543739127877564389

namespace A142189

/-- `∩[A045357(n+1), A332227(n+1)]` -/
def P13543739127877564389.Spec : Prop :=
  ∀ n, (P13543739127877564389.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P11143056596438901033

`∩[A030432(n+1), A332226(n+1)]`
-/

namespace A142189.P11143056596438901033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P11143056596438901033

namespace A142189

/-- `∩[A030432(n+1), A332226(n+1)]` -/
def P11143056596438901033.Spec : Prop :=
  ∀ n, (P11143056596438901033.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P7279265684735339922

`∩[A004625(n+1), A030432(n+1)]`
-/

namespace A142189.P7279265684735339922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P7279265684735339922

namespace A142189

/-- `∩[A004625(n+1), A030432(n+1)]` -/
def P7279265684735339922.Spec : Prop :=
  ∀ n, (P7279265684735339922.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P12637257110617640490

`∩[A004625(n+1), A045357(n+1)]`
-/

namespace A142189.P12637257110617640490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P12637257110617640490

namespace A142189

/-- `∩[A004625(n+1), A045357(n+1)]` -/
def P12637257110617640490.Spec : Prop :=
  ∀ n, (P12637257110617640490.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P10049307438434874694

`∩[A004625(n+1), A045380(n+1)]`
-/

namespace A142189.P10049307438434874694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P10049307438434874694

namespace A142189

/-- `∩[A004625(n+1), A045380(n+1)]` -/
def P10049307438434874694.Spec : Prop :=
  ∀ n, (P10049307438434874694.a n : ℤ) = A142189 (n + 1)

end A142189

/-! ## A142189.P10126245080067683650

`∩[A004625(n+1), A141886(n+1)]`
-/

namespace A142189.P10126245080067683650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142189.P10126245080067683650

namespace A142189

/-- `∩[A004625(n+1), A141886(n+1)]` -/
def P10126245080067683650.Spec : Prop :=
  ∀ n, (P10126245080067683650.a n : ℤ) = A142189 (n + 1)

end A142189

/-!
# A142190: Primes congruent to 19 mod 40.

The programs for A142190, the canonical program `A142190.P13230639613033854165` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142190 has offset 1).

The definition of A142190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142190.P11976052194408207051

`∩[A030433(n+1), A139829(n+1)]`
-/

namespace A142190.P11976052194408207051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P11976052194408207051

namespace A142190

/-- `∩[A030433(n+1), A139829(n+1)]` -/
def P11976052194408207051.Spec : Prop :=
  ∀ n, (P11976052194408207051.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P13230639613033854165

`p?[40*n+19]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142190

/-- `p?[40*n+19]` -/
def P13230639613033854165.Spec : Prop :=
  ∀ n, (P13230639613033854165.a n : ℤ) = A142190 (n + 1)

theorem P13230639613033854165.correct : P13230639613033854165.Spec := by
  intro n
  simp only [A142190, Nat.add_sub_cancel]

end A142190

/-! ## A142190.P2491319448845936162

`∩[A045457(n+1), A139829(n+1)]`
-/

namespace A142190.P2491319448845936162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P2491319448845936162

namespace A142190

/-- `∩[A045457(n+1), A139829(n+1)]` -/
def P2491319448845936162.Spec : Prop :=
  ∀ n, (P2491319448845936162.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P6623234942614649386

`∩[A033201(n+1), A141887(n+1)]`
-/

namespace A142190.P6623234942614649386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P6623234942614649386

namespace A142190

/-- `∩[A033201(n+1), A141887(n+1)]` -/
def P6623234942614649386.Spec : Prop :=
  ∀ n, (P6623234942614649386.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P7039536968094856171

`∩[A007520(n+1), A030433(n+1)]`
-/

namespace A142190.P7039536968094856171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P7039536968094856171

namespace A142190

/-- `∩[A007520(n+1), A030433(n+1)]` -/
def P7039536968094856171.Spec : Prop :=
  ∀ n, (P7039536968094856171.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P12730627689171024588

`∩[A007520(n+1), A045457(n+1)]`
-/

namespace A142190.P12730627689171024588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P12730627689171024588

namespace A142190

/-- `∩[A007520(n+1), A045457(n+1)]` -/
def P12730627689171024588.Spec : Prop :=
  ∀ n, (P12730627689171024588.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P1971373328073935035

`∩[A007520(n+1), A141887(n+1)]`
-/

namespace A142190.P1971373328073935035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P1971373328073935035

namespace A142190

/-- `∩[A007520(n+1), A141887(n+1)]` -/
def P1971373328073935035.Spec : Prop :=
  ∀ n, (P1971373328073935035.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P1591576516741327539

`∩[A030433(n+1), A045339(n+1)]`
-/

namespace A142190.P1591576516741327539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P1591576516741327539

namespace A142190

/-- `∩[A030433(n+1), A045339(n+1)]` -/
def P1591576516741327539.Spec : Prop :=
  ∀ n, (P1591576516741327539.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P14230348598614126692

`∩[A045339(n+1), A045457(n+1)]`
-/

namespace A142190.P14230348598614126692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P14230348598614126692

namespace A142190

/-- `∩[A045339(n+1), A045457(n+1)]` -/
def P14230348598614126692.Spec : Prop :=
  ∀ n, (P14230348598614126692.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P12606889661996458981

`∩[A045339(n+1), A141887(n+1)]`
-/

namespace A142190.P12606889661996458981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P12606889661996458981

namespace A142190

/-- `∩[A045339(n+1), A141887(n+1)]` -/
def P12606889661996458981.Spec : Prop :=
  ∀ n, (P12606889661996458981.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P5706308113894810218

`∩[A007520(n+1), A327753(n+1)]`
-/

namespace A142190.P5706308113894810218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P5706308113894810218

namespace A142190

/-- `∩[A007520(n+1), A327753(n+1)]` -/
def P5706308113894810218.Spec : Prop :=
  ∀ n, (P5706308113894810218.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P15183450278068052500

`∩[A139829(n+1), A327753(n+1)]`
-/

namespace A142190.P15183450278068052500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P15183450278068052500

namespace A142190

/-- `∩[A139829(n+1), A327753(n+1)]` -/
def P15183450278068052500.Spec : Prop :=
  ∀ n, (P15183450278068052500.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P3855364644760102365

`∩[A163183(n+1), A141887(n+1)]`
-/

namespace A142190.P3855364644760102365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P3855364644760102365

namespace A142190

/-- `∩[A163183(n+1), A141887(n+1)]` -/
def P3855364644760102365.Spec : Prop :=
  ∀ n, (P3855364644760102365.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P17020176226600585441

`or(1, p?[A250024(n+1)])`
-/

namespace A142190.P17020176226600585441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142190.P17020176226600585441

namespace A142190

/-- `or(1, p?[A250024(n+1)])` -/
def P17020176226600585441.Spec : Prop :=
  ∀ n, P17020176226600585441.a n = A142190 (n + 1)

end A142190

/-! ## A142190.P13605669860970254015

`∩[A250024(n+1), A007520(n+1)]`
-/

namespace A142190.P13605669860970254015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P13605669860970254015

namespace A142190

/-- `∩[A250024(n+1), A007520(n+1)]` -/
def P13605669860970254015.Spec : Prop :=
  ∀ n, (P13605669860970254015.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P367248715546139298

`∩[A030433(n+1), A250024(n+1)]`
-/

namespace A142190.P367248715546139298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P367248715546139298

namespace A142190

/-- `∩[A030433(n+1), A250024(n+1)]` -/
def P367248715546139298.Spec : Prop :=
  ∀ n, (P367248715546139298.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P7157213206601472971

`∩[A250024(n+1), A045339(n+1)]`
-/

namespace A142190.P7157213206601472971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P7157213206601472971

namespace A142190

/-- `∩[A250024(n+1), A045339(n+1)]` -/
def P7157213206601472971.Spec : Prop :=
  ∀ n, (P7157213206601472971.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P13420509066102108782

`∩[A045457(n+1), A250024(n+1)]`
-/

namespace A142190.P13420509066102108782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P13420509066102108782

namespace A142190

/-- `∩[A045457(n+1), A250024(n+1)]` -/
def P13420509066102108782.Spec : Prop :=
  ∀ n, (P13420509066102108782.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P2186101025654355179

`∩[A004618(n+1), A007520(n+1)]`
-/

namespace A142190.P2186101025654355179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P2186101025654355179

namespace A142190

/-- `∩[A004618(n+1), A007520(n+1)]` -/
def P2186101025654355179.Spec : Prop :=
  ∀ n, (P2186101025654355179.a n : ℤ) = A142190 (n + 1)

end A142190

/-! ## A142190.P5893225704948423456

`∩[A004618(n+1), A045339(n+1)]`
-/

namespace A142190.P5893225704948423456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142190.P5893225704948423456

namespace A142190

/-- `∩[A004618(n+1), A045339(n+1)]` -/
def P5893225704948423456.Spec : Prop :=
  ∀ n, (P5893225704948423456.a n : ℤ) = A142190 (n + 1)

end A142190

/-!
# A142191: Primes congruent to 21 mod 40.

The programs for A142191, the canonical program `A142191.P13342722853951144925` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142191 has offset 1).

The definition of A142191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142191.P13342722853951144925

`p?[40*n+21]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142191

/-- `p?[40*n+21]` -/
def P13342722853951144925.Spec : Prop :=
  ∀ n, (P13342722853951144925.a n : ℤ) = A142191 (n + 1)

theorem P13342722853951144925.correct : P13342722853951144925.Spec := by
  intro n
  simp only [A142191, Nat.add_sub_cancel]

end A142191

/-! ## A142191.P17592765420204217471

`∩[A007521(n+1), A030430(n+1)]`
-/

namespace A142191.P17592765420204217471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P17592765420204217471

namespace A142191

/-- `∩[A007521(n+1), A030430(n+1)]` -/
def P17592765420204217471.Spec : Prop :=
  ∀ n, (P17592765420204217471.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P5024601515002878572

`∩[A030430(n+1), A045366(n+1)]`
-/

namespace A142191.P5024601515002878572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P5024601515002878572

namespace A142191

/-- `∩[A030430(n+1), A045366(n+1)]` -/
def P5024601515002878572.Spec : Prop :=
  ∀ n, (P5024601515002878572.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P17263054799375136490

`∩[A007521(n+1), A141881(n+1)]`
-/

namespace A142191.P17263054799375136490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P17263054799375136490

namespace A142191

/-- `∩[A007521(n+1), A141881(n+1)]` -/
def P17263054799375136490.Spec : Prop :=
  ∀ n, (P17263054799375136490.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P17987575091240874070

`∩[A007521(n+1), A179446(n+1)]`
-/

namespace A142191.P17987575091240874070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P17987575091240874070

namespace A142191

/-- `∩[A007521(n+1), A179446(n+1)]` -/
def P17987575091240874070.Spec : Prop :=
  ∀ n, (P17987575091240874070.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P6865132474270906629

`∩[A045366(n+1), A141881(n+1)]`
-/

namespace A142191.P6865132474270906629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P6865132474270906629

namespace A142191

/-- `∩[A045366(n+1), A141881(n+1)]` -/
def P6865132474270906629.Spec : Prop :=
  ∀ n, (P6865132474270906629.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P7407232319371030877

`∩[A045366(n+1), A179446(n+1)]`
-/

namespace A142191.P7407232319371030877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P7407232319371030877

namespace A142191

/-- `∩[A045366(n+1), A179446(n+1)]` -/
def P7407232319371030877.Spec : Prop :=
  ∀ n, (P7407232319371030877.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P6774112084294252274

`∩[A007521(n+1), A090756(n+1)]`
-/

namespace A142191.P6774112084294252274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P6774112084294252274

namespace A142191

/-- `∩[A007521(n+1), A090756(n+1)]` -/
def P6774112084294252274.Spec : Prop :=
  ∀ n, (P6774112084294252274.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P15457556855768476745

`∩[A045366(n+1), A090756(n+1)]`
-/

namespace A142191.P15457556855768476745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P15457556855768476745

namespace A142191

/-- `∩[A045366(n+1), A090756(n+1)]` -/
def P15457556855768476745.Spec : Prop :=
  ∀ n, (P15457556855768476745.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P12800496633987404237

`∩[A007521(n+1), A327752(n+1)]`
-/

namespace A142191.P12800496633987404237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P12800496633987404237

namespace A142191

/-- `∩[A007521(n+1), A327752(n+1)]` -/
def P12800496633987404237.Spec : Prop :=
  ∀ n, (P12800496633987404237.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P8796940601016181013

`∩[A045366(n+1), A327752(n+1)]`
-/

namespace A142191.P8796940601016181013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P8796940601016181013

namespace A142191

/-- `∩[A045366(n+1), A327752(n+1)]` -/
def P8796940601016181013.Spec : Prop :=
  ∀ n, (P8796940601016181013.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P17832221347179172552

`∩[A004615(n+1), A007521(n+1)]`
-/

namespace A142191.P17832221347179172552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P17832221347179172552

namespace A142191

/-- `∩[A004615(n+1), A007521(n+1)]` -/
def P17832221347179172552.Spec : Prop :=
  ∀ n, (P17832221347179172552.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P12679557466333581724

`∩[A004615(n+1), A045366(n+1)]`
-/

namespace A142191.P12679557466333581724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P12679557466333581724

namespace A142191

/-- `∩[A004615(n+1), A045366(n+1)]` -/
def P12679557466333581724.Spec : Prop :=
  ∀ n, (P12679557466333581724.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P17855154226725215661

`∩[A004627(n+1), A030430(n+1)]`
-/

namespace A142191.P17855154226725215661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P17855154226725215661

namespace A142191

/-- `∩[A004627(n+1), A030430(n+1)]` -/
def P17855154226725215661.Spec : Prop :=
  ∀ n, (P17855154226725215661.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P9356565603894562765

`∩[A004627(n+1), A090756(n+1)]`
-/

namespace A142191.P9356565603894562765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P9356565603894562765

namespace A142191

/-- `∩[A004627(n+1), A090756(n+1)]` -/
def P9356565603894562765.Spec : Prop :=
  ∀ n, (P9356565603894562765.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P7721612973261095694

`∩[A004627(n+1), A141881(n+1)]`
-/

namespace A142191.P7721612973261095694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P7721612973261095694

namespace A142191

/-- `∩[A004627(n+1), A141881(n+1)]` -/
def P7721612973261095694.Spec : Prop :=
  ∀ n, (P7721612973261095694.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P17897051440447477399

`∩[A004627(n+1), A179446(n+1)]`
-/

namespace A142191.P17897051440447477399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P17897051440447477399

namespace A142191

/-- `∩[A004627(n+1), A179446(n+1)]` -/
def P17897051440447477399.Spec : Prop :=
  ∀ n, (P17897051440447477399.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P14710604662851896838

`∩[A038880(n+1), A141881(n+1)]`
-/

namespace A142191.P14710604662851896838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P14710604662851896838

namespace A142191

/-- `∩[A038880(n+1), A141881(n+1)]` -/
def P14710604662851896838.Spec : Prop :=
  ∀ n, (P14710604662851896838.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P11682975228771996265

`∩[A003628(n+1), A141881(n+1)]`
-/

namespace A142191.P11682975228771996265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P11682975228771996265

namespace A142191

/-- `∩[A003628(n+1), A141881(n+1)]` -/
def P11682975228771996265.Spec : Prop :=
  ∀ n, (P11682975228771996265.a n : ℤ) = A142191 (n + 1)

end A142191

/-! ## A142191.P4112283974305642093

`∩[A045355(n+1), A141881(n+1)]`
-/

namespace A142191.P4112283974305642093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142191.P4112283974305642093

namespace A142191

/-- `∩[A045355(n+1), A141881(n+1)]` -/
def P4112283974305642093.Spec : Prop :=
  ∀ n, (P4112283974305642093.a n : ℤ) = A142191 (n + 1)

end A142191

/-!
# A142192: Primes congruent to 23 mod 40.

The programs for A142192, the canonical program `A142192.P10851158806898131788` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142192 has offset 1).

The definition of A142192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142192.P6329293069406731128

`∩[A030431(n+1), A139830(n+1)]`
-/

namespace A142192.P6329293069406731128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P6329293069406731128

namespace A142192

/-- `∩[A030431(n+1), A139830(n+1)]` -/
def P6329293069406731128.Spec : Prop :=
  ∀ n, (P6329293069406731128.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P10851158806898131788

`∩[A105854(n+1), A139830(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142192

/-- `∩[A105854(n+1), A139830(n+1)]` -/
def P10851158806898131788.Spec : Prop :=
  ∀ n, (P10851158806898131788.a n : ℤ) = A142192 (n + 1)

theorem P10851158806898131788.correct : P10851158806898131788.Spec := by
  intro n
  simp only [A142192, Nat.add_sub_cancel]

end A142192

/-! ## A142192.P3887418349609654641

`p?[40*n+23]`
-/

namespace A142192.P3887418349609654641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142192.P3887418349609654641

namespace A142192

/-- `p?[40*n+23]` -/
def P3887418349609654641.Spec : Prop :=
  ∀ n, (P3887418349609654641.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P3841044534531851894

`∏{p}[p?[40*n-17], #]`
-/

namespace A142192.P3841044534531851894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142192.P3841044534531851894

namespace A142192

/-- `∏{p}[p?[40*n-17], #]` -/
def P3841044534531851894.Spec : Prop :=
  ∀ n, (P3841044534531851894.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P8025715970292099536

`∩[A045414(n+1), A139830(n+1)]`
-/

namespace A142192.P8025715970292099536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P8025715970292099536

namespace A142192

/-- `∩[A045414(n+1), A139830(n+1)]` -/
def P8025715970292099536.Spec : Prop :=
  ∀ n, (P8025715970292099536.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P11995578444855091934

`∩[A007522(n+1), A030431(n+1)]`
-/

namespace A142192.P11995578444855091934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P11995578444855091934

namespace A142192

/-- `∩[A007522(n+1), A030431(n+1)]` -/
def P11995578444855091934.Spec : Prop :=
  ∀ n, (P11995578444855091934.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P11138268443186118865

`∩[A007522(n+1), A045414(n+1)]`
-/

namespace A142192.P11138268443186118865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P11138268443186118865

namespace A142192

/-- `∩[A007522(n+1), A045414(n+1)]` -/
def P11138268443186118865.Spec : Prop :=
  ∀ n, (P11138268443186118865.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P18396188654521328185

`∩[A007522(n+1), A105854(n+1)]`
-/

namespace A142192.P18396188654521328185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P18396188654521328185

namespace A142192

/-- `∩[A007522(n+1), A105854(n+1)]` -/
def P18396188654521328185.Spec : Prop :=
  ∀ n, (P18396188654521328185.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P12974591317767211227

`∩[A030431(n+1), A045382(n+1)]`
-/

namespace A142192.P12974591317767211227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P12974591317767211227

namespace A142192

/-- `∩[A030431(n+1), A045382(n+1)]` -/
def P12974591317767211227.Spec : Prop :=
  ∀ n, (P12974591317767211227.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P10527021079115226166

`∩[A045382(n+1), A045414(n+1)]`
-/

namespace A142192.P10527021079115226166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P10527021079115226166

namespace A142192

/-- `∩[A045382(n+1), A045414(n+1)]` -/
def P10527021079115226166.Spec : Prop :=
  ∀ n, (P10527021079115226166.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P3818351373884074183

`∩[A045382(n+1), A105854(n+1)]`
-/

namespace A142192.P3818351373884074183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P3818351373884074183

namespace A142192

/-- `∩[A045382(n+1), A105854(n+1)]` -/
def P3818351373884074183.Spec : Prop :=
  ∀ n, (P3818351373884074183.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P16951136567099797705

`∩[A094712(n+1), A105854(n+1)]`
-/

namespace A142192.P16951136567099797705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P16951136567099797705

namespace A142192

/-- `∩[A094712(n+1), A105854(n+1)]` -/
def P16951136567099797705.Spec : Prop :=
  ∀ n, (P16951136567099797705.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P2143659229752414116

`∩[A105854(n+1), A106889(n+1)]`
-/

namespace A142192.P2143659229752414116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P2143659229752414116

namespace A142192

/-- `∩[A105854(n+1), A106889(n+1)]` -/
def P2143659229752414116.Spec : Prop :=
  ∀ n, (P2143659229752414116.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P6139702657185484158

`∩[A014663(n+1), A105854(n+1)]`
-/

namespace A142192.P6139702657185484158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P6139702657185484158

namespace A142192

/-- `∩[A014663(n+1), A105854(n+1)]` -/
def P6139702657185484158.Spec : Prop :=
  ∀ n, (P6139702657185484158.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P5281757062852780624

`∩[A040098(n+1), A105854(n+1)]`
-/

namespace A142192.P5281757062852780624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P5281757062852780624

namespace A142192

/-- `∩[A040098(n+1), A105854(n+1)]` -/
def P5281757062852780624.Spec : Prop :=
  ∀ n, (P5281757062852780624.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P6620804726732848798

`∩[A004628(n+1), A030431(n+1)]`
-/

namespace A142192.P6620804726732848798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P6620804726732848798

namespace A142192

/-- `∩[A004628(n+1), A030431(n+1)]` -/
def P6620804726732848798.Spec : Prop :=
  ∀ n, (P6620804726732848798.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P2674036767357123832

`∩[A004628(n+1), A045414(n+1)]`
-/

namespace A142192.P2674036767357123832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P2674036767357123832

namespace A142192

/-- `∩[A004628(n+1), A045414(n+1)]` -/
def P2674036767357123832.Spec : Prop :=
  ∀ n, (P2674036767357123832.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P2505439465234653308

`∩[A004628(n+1), A105854(n+1)]`
-/

namespace A142192.P2505439465234653308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P2505439465234653308

namespace A142192

/-- `∩[A004628(n+1), A105854(n+1)]` -/
def P2505439465234653308.Spec : Prop :=
  ∀ n, (P2505439465234653308.a n : ℤ) = A142192 (n + 1)

end A142192

/-! ## A142192.P8356269833567193675

`∩[A036259(n+1), A105854(n+1)]`
-/

namespace A142192.P8356269833567193675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142192.P8356269833567193675

namespace A142192

/-- `∩[A036259(n+1), A105854(n+1)]` -/
def P8356269833567193675.Spec : Prop :=
  ∀ n, (P8356269833567193675.a n : ℤ) = A142192 (n + 1)

end A142192

/-!
# A142193: Primes congruent to 27 mod 40.

The programs for A142193, the canonical program `A142193.P14033784844832074451` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142193 has offset 1).

The definition of A142193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142193.P6214858234170507400

`∩[A030432(n+1), A332446(n+1)]`
-/

namespace A142193.P6214858234170507400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P6214858234170507400

namespace A142193

/-- `∩[A030432(n+1), A332446(n+1)]` -/
def P6214858234170507400.Spec : Prop :=
  ∀ n, (P6214858234170507400.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P3259647911903061712

`∩[A141882(n+1), A332446(n+1)]`
-/

namespace A142193.P3259647911903061712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P3259647911903061712

namespace A142193

/-- `∩[A141882(n+1), A332446(n+1)]` -/
def P3259647911903061712.Spec : Prop :=
  ∀ n, (P3259647911903061712.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P14033784844832074451

`p?[40*n-13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142193

/-- `p?[40*n-13]` -/
def P14033784844832074451.Spec : Prop :=
  ∀ n, P14033784844832074451.a n = A142193 (n + 1)

theorem P14033784844832074451.correct : P14033784844832074451.Spec := by
  intro n
  simp only [A142193, Nat.add_sub_cancel]

end A142193

/-! ## A142193.P11152905751429518877

`∩[A141179(n+1), A141882(n+1)]`
-/

namespace A142193.P11152905751429518877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P11152905751429518877

namespace A142193

/-- `∩[A141179(n+1), A141882(n+1)]` -/
def P11152905751429518877.Spec : Prop :=
  ∀ n, (P11152905751429518877.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P15131519264424412211

`∩[A045357(n+1), A332446(n+1)]`
-/

namespace A142193.P15131519264424412211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P15131519264424412211

namespace A142193

/-- `∩[A045357(n+1), A332446(n+1)]` -/
def P15131519264424412211.Spec : Prop :=
  ∀ n, (P15131519264424412211.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P16655756776442315157

`∩[A045380(n+1), A332446(n+1)]`
-/

namespace A142193.P16655756776442315157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P16655756776442315157

namespace A142193

/-- `∩[A045380(n+1), A332446(n+1)]` -/
def P16655756776442315157.Spec : Prop :=
  ∀ n, (P16655756776442315157.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P12392906813191169457

`∩[A007520(n+1), A030432(n+1)]`
-/

namespace A142193.P12392906813191169457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P12392906813191169457

namespace A142193

/-- `∩[A007520(n+1), A030432(n+1)]` -/
def P12392906813191169457.Spec : Prop :=
  ∀ n, (P12392906813191169457.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P11554150399191645713

`∩[A007520(n+1), A045357(n+1)]`
-/

namespace A142193.P11554150399191645713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P11554150399191645713

namespace A142193

/-- `∩[A007520(n+1), A045357(n+1)]` -/
def P11554150399191645713.Spec : Prop :=
  ∀ n, (P11554150399191645713.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P88231399981063620

`∩[A007520(n+1), A045380(n+1)]`
-/

namespace A142193.P88231399981063620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P88231399981063620

namespace A142193

/-- `∩[A007520(n+1), A045380(n+1)]` -/
def P88231399981063620.Spec : Prop :=
  ∀ n, (P88231399981063620.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P1746712135102298414

`∩[A030432(n+1), A045339(n+1)]`
-/

namespace A142193.P1746712135102298414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P1746712135102298414

namespace A142193

/-- `∩[A030432(n+1), A045339(n+1)]` -/
def P1746712135102298414.Spec : Prop :=
  ∀ n, (P1746712135102298414.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P12749557158756818288

`∩[A007520(n+1), A141882(n+1)]`
-/

namespace A142193.P12749557158756818288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P12749557158756818288

namespace A142193

/-- `∩[A007520(n+1), A141882(n+1)]` -/
def P12749557158756818288.Spec : Prop :=
  ∀ n, (P12749557158756818288.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P4282568283587822104

`∩[A045339(n+1), A141882(n+1)]`
-/

namespace A142193.P4282568283587822104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P4282568283587822104

namespace A142193

/-- `∩[A045339(n+1), A141882(n+1)]` -/
def P4282568283587822104.Spec : Prop :=
  ∀ n, (P4282568283587822104.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P7627542656564414508

`∩[A141882(n+1), A163183(n+1)]`
-/

namespace A142193.P7627542656564414508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P7627542656564414508

namespace A142193

/-- `∩[A141882(n+1), A163183(n+1)]` -/
def P7627542656564414508.Spec : Prop :=
  ∀ n, (P7627542656564414508.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P13179566619978844637

`or(1, p?[A250024(n+1)+8])`
-/

namespace A142193.P13179566619978844637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142193.P13179566619978844637

namespace A142193

/-- `or(1, p?[A250024(n+1)+8])` -/
def P13179566619978844637.Spec : Prop :=
  ∀ n, P13179566619978844637.a n = A142193 (n + 1)

end A142193

/-! ## A142193.P2801432444162191294

`∩[A141882(n+1), A128288(n+2)]`
-/

namespace A142193.P2801432444162191294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P2801432444162191294

namespace A142193

/-- `∩[A141882(n+1), A128288(n+2)]` -/
def P2801432444162191294.Spec : Prop :=
  ∀ n, (P2801432444162191294.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P16498560229707979483

`∩[A030432(n+1), A192717(n+1)]`
-/

namespace A142193.P16498560229707979483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P16498560229707979483

namespace A142193

/-- `∩[A030432(n+1), A192717(n+1)]` -/
def P16498560229707979483.Spec : Prop :=
  ∀ n, (P16498560229707979483.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P15210557542318062993

`∩[A045357(n+1), A192717(n+1)]`
-/

namespace A142193.P15210557542318062993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P15210557542318062993

namespace A142193

/-- `∩[A045357(n+1), A192717(n+1)]` -/
def P15210557542318062993.Spec : Prop :=
  ∀ n, (P15210557542318062993.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P17088581087215506476

`∩[A045380(n+1), A192717(n+1)]`
-/

namespace A142193.P17088581087215506476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P17088581087215506476

namespace A142193

/-- `∩[A045380(n+1), A192717(n+1)]` -/
def P17088581087215506476.Spec : Prop :=
  ∀ n, (P17088581087215506476.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P4883044647095234506

`∩[A141882(n+1), A192717(n+1)]`
-/

namespace A142193.P4883044647095234506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P4883044647095234506

namespace A142193

/-- `∩[A141882(n+1), A192717(n+1)]` -/
def P4883044647095234506.Spec : Prop :=
  ∀ n, (P4883044647095234506.a n : ℤ) = A142193 (n + 1)

end A142193

/-! ## A142193.P8439625186993663765

`∩[A040119(n+1), A141882(n+1)]`
-/

namespace A142193.P8439625186993663765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142193.P8439625186993663765

namespace A142193

/-- `∩[A040119(n+1), A141882(n+1)]` -/
def P8439625186993663765.Spec : Prop :=
  ∀ n, (P8439625186993663765.a n : ℤ) = A142193 (n + 1)

end A142193

/-!
# A142194: Primes congruent to 29 mod 40.

The programs for A142194, the canonical program `A142194.P2163652759226913528` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142194 has offset 1).

The definition of A142194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142194.P2163652759226913528

`p?[40*n-11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142194

/-- `p?[40*n-11]` -/
def P2163652759226913528.Spec : Prop :=
  ∀ n, P2163652759226913528.a n = A142194 (n + 1)

theorem P2163652759226913528.correct : P2163652759226913528.Spec := by
  intro n
  simp only [A142194, Nat.add_sub_cancel]

end A142194

/-! ## A142194.P15490573401959459720

`∩[A007521(n+1), A030433(n+1)]`
-/

namespace A142194.P15490573401959459720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P15490573401959459720

namespace A142194

/-- `∩[A007521(n+1), A030433(n+1)]` -/
def P15490573401959459720.Spec : Prop :=
  ∀ n, (P15490573401959459720.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P3418487581562330642

`∩[A007521(n+1), A141883(n+1)]`
-/

namespace A142194.P3418487581562330642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P3418487581562330642

namespace A142194

/-- `∩[A007521(n+1), A141883(n+1)]` -/
def P3418487581562330642.Spec : Prop :=
  ∀ n, (P3418487581562330642.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P15469861264707803609

`∩[A030433(n+1), A045366(n+1)]`
-/

namespace A142194.P15469861264707803609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P15469861264707803609

namespace A142194

/-- `∩[A030433(n+1), A045366(n+1)]` -/
def P15469861264707803609.Spec : Prop :=
  ∀ n, (P15469861264707803609.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P9653756692906635282

`∩[A045366(n+1), A141883(n+1)]`
-/

namespace A142194.P9653756692906635282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P9653756692906635282

namespace A142194

/-- `∩[A045366(n+1), A141883(n+1)]` -/
def P9653756692906635282.Spec : Prop :=
  ∀ n, (P9653756692906635282.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P12901308047863299036

`∩[A007521(n+1), A327753(n+1)]`
-/

namespace A142194.P12901308047863299036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P12901308047863299036

namespace A142194

/-- `∩[A007521(n+1), A327753(n+1)]` -/
def P12901308047863299036.Spec : Prop :=
  ∀ n, (P12901308047863299036.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P3998314823217686072

`∩[A045366(n+1), A327753(n+1)]`
-/

namespace A142194.P3998314823217686072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P3998314823217686072

namespace A142194

/-- `∩[A045366(n+1), A327753(n+1)]` -/
def P3998314823217686072.Spec : Prop :=
  ∀ n, (P3998314823217686072.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P3632658808338016086

`∩[A004618(n+1), A007521(n+1)]`
-/

namespace A142194.P3632658808338016086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P3632658808338016086

namespace A142194

/-- `∩[A004618(n+1), A007521(n+1)]` -/
def P3632658808338016086.Spec : Prop :=
  ∀ n, (P3632658808338016086.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P13781073640634765976

`∩[A004618(n+1), A045366(n+1)]`
-/

namespace A142194.P13781073640634765976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P13781073640634765976

namespace A142194

/-- `∩[A004618(n+1), A045366(n+1)]` -/
def P13781073640634765976.Spec : Prop :=
  ∀ n, (P13781073640634765976.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P3525710922970158500

`∩[A004627(n+1), A030433(n+1)]`
-/

namespace A142194.P3525710922970158500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P3525710922970158500

namespace A142194

/-- `∩[A004627(n+1), A030433(n+1)]` -/
def P3525710922970158500.Spec : Prop :=
  ∀ n, (P3525710922970158500.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P11157661511853501719

`∩[A004627(n+1), A141883(n+1)]`
-/

namespace A142194.P11157661511853501719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P11157661511853501719

namespace A142194

/-- `∩[A004627(n+1), A141883(n+1)]` -/
def P11157661511853501719.Spec : Prop :=
  ∀ n, (P11157661511853501719.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P5309111082526287472

`∩[A038880(n+1), A141883(n+1)]`
-/

namespace A142194.P5309111082526287472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P5309111082526287472

namespace A142194

/-- `∩[A038880(n+1), A141883(n+1)]` -/
def P5309111082526287472.Spec : Prop :=
  ∀ n, (P5309111082526287472.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P16976295243184250132

`∩[A003628(n+1), A141883(n+1)]`
-/

namespace A142194.P16976295243184250132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P16976295243184250132

namespace A142194

/-- `∩[A003628(n+1), A141883(n+1)]` -/
def P16976295243184250132.Spec : Prop :=
  ∀ n, (P16976295243184250132.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P3323881673910077519

`∩[A003629(n+1), A141883(n+1)]`
-/

namespace A142194.P3323881673910077519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P3323881673910077519

namespace A142194

/-- `∩[A003629(n+1), A141883(n+1)]` -/
def P3323881673910077519.Spec : Prop :=
  ∀ n, (P3323881673910077519.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P16126633498947149275

`∩[A045355(n+1), A141883(n+1)]`
-/

namespace A142194.P16126633498947149275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P16126633498947149275

namespace A142194

/-- `∩[A045355(n+1), A141883(n+1)]` -/
def P16126633498947149275.Spec : Prop :=
  ∀ n, (P16126633498947149275.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P11718706813170134794

`∩[A141883(n+1), A228228(n+1)]`
-/

namespace A142194.P11718706813170134794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P11718706813170134794

namespace A142194

/-- `∩[A141883(n+1), A228228(n+1)]` -/
def P11718706813170134794.Spec : Prop :=
  ∀ n, (P11718706813170134794.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P823769964374999927

`∩[A141883(n+1), A296925(n+1)]`
-/

namespace A142194.P823769964374999927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P823769964374999927

namespace A142194

/-- `∩[A141883(n+1), A296925(n+1)]` -/
def P823769964374999927.Spec : Prop :=
  ∀ n, (P823769964374999927.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P13633363251807289627

`∩[A042999(n+1), A141883(n+1)]`
-/

namespace A142194.P13633363251807289627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P13633363251807289627

namespace A142194

/-- `∩[A042999(n+1), A141883(n+1)]` -/
def P13633363251807289627.Spec : Prop :=
  ∀ n, (P13633363251807289627.a n : ℤ) = A142194 (n + 1)

end A142194

/-! ## A142194.P4723090929230833592

`∩[A141883(n+1), A319041(n+1)]`
-/

namespace A142194.P4723090929230833592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142194.P4723090929230833592

namespace A142194

/-- `∩[A141883(n+1), A319041(n+1)]` -/
def P4723090929230833592.Spec : Prop :=
  ∀ n, (P4723090929230833592.a n : ℤ) = A142194 (n + 1)

end A142194

/-!
# A142195: Primes congruent to 31 mod 40.

The programs for A142195, the canonical program `A142195.P9314822424547242044` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142195 has offset 1).

The definition of A142195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142195.P9314822424547242044

`p?[5*8*n-9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142195

/-- `p?[5*8*n-9]` -/
def P9314822424547242044.Spec : Prop :=
  ∀ n, P9314822424547242044.a n = A142195 (n + 1)

theorem P9314822424547242044.correct : P9314822424547242044.Spec := by
  intro n
  simp only [A142195, Nat.add_sub_cancel]

end A142195

/-! ## A142195.P9648324342516101358

`∩[A141180(n+1), A141884(n+1)]`
-/

namespace A142195.P9648324342516101358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P9648324342516101358

namespace A142195

/-- `∩[A141180(n+1), A141884(n+1)]` -/
def P9648324342516101358.Spec : Prop :=
  ∀ n, (P9648324342516101358.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P11252175258975110119

`∩[A007522(n+1), A030430(n+1)]`
-/

namespace A142195.P11252175258975110119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P11252175258975110119

namespace A142195

/-- `∩[A007522(n+1), A030430(n+1)]` -/
def P11252175258975110119.Spec : Prop :=
  ∀ n, (P11252175258975110119.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P2976995306591298859

`∩[A007522(n+1), A045453(n+1)]`
-/

namespace A142195.P2976995306591298859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P2976995306591298859

namespace A142195

/-- `∩[A007522(n+1), A045453(n+1)]` -/
def P2976995306591298859.Spec : Prop :=
  ∀ n, (P2976995306591298859.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P1396501737024215966

`∩[A030430(n+1), A045382(n+1)]`
-/

namespace A142195.P1396501737024215966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P1396501737024215966

namespace A142195

/-- `∩[A030430(n+1), A045382(n+1)]` -/
def P1396501737024215966.Spec : Prop :=
  ∀ n, (P1396501737024215966.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P3633697117546557157

`∩[A045382(n+1), A045453(n+1)]`
-/

namespace A142195.P3633697117546557157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P3633697117546557157

namespace A142195

/-- `∩[A045382(n+1), A045453(n+1)]` -/
def P3633697117546557157.Spec : Prop :=
  ∀ n, (P3633697117546557157.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P11268084442741005132

`∩[A007522(n+1), A141884(n+1)]`
-/

namespace A142195.P11268084442741005132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P11268084442741005132

namespace A142195

/-- `∩[A007522(n+1), A141884(n+1)]` -/
def P11268084442741005132.Spec : Prop :=
  ∀ n, (P11268084442741005132.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P15919709850084653818

`∩[A045382(n+1), A141884(n+1)]`
-/

namespace A142195.P15919709850084653818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P15919709850084653818

namespace A142195

/-- `∩[A045382(n+1), A141884(n+1)]` -/
def P15919709850084653818.Spec : Prop :=
  ∀ n, (P15919709850084653818.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P9924588324023708175

`∩[A030430(n+1), A094712(n+1)]`
-/

namespace A142195.P9924588324023708175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P9924588324023708175

namespace A142195

/-- `∩[A030430(n+1), A094712(n+1)]` -/
def P9924588324023708175.Spec : Prop :=
  ∀ n, (P9924588324023708175.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P299181766685498212

`∩[A094712(n+1), A141884(n+1)]`
-/

namespace A142195.P299181766685498212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P299181766685498212

namespace A142195

/-- `∩[A094712(n+1), A141884(n+1)]` -/
def P299181766685498212.Spec : Prop :=
  ∀ n, (P299181766685498212.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P337785974614971270

`∩[A007522(n+1), A090756(n+1)]`
-/

namespace A142195.P337785974614971270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P337785974614971270

namespace A142195

/-- `∩[A007522(n+1), A090756(n+1)]` -/
def P337785974614971270.Spec : Prop :=
  ∀ n, (P337785974614971270.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P14446417629464279895

`∩[A045382(n+1), A090756(n+1)]`
-/

namespace A142195.P14446417629464279895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P14446417629464279895

namespace A142195

/-- `∩[A045382(n+1), A090756(n+1)]` -/
def P14446417629464279895.Spec : Prop :=
  ∀ n, (P14446417629464279895.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P16192457008708825715

`∩[A090756(n+1), A094712(n+1)]`
-/

namespace A142195.P16192457008708825715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P16192457008708825715

namespace A142195

/-- `∩[A090756(n+1), A094712(n+1)]` -/
def P16192457008708825715.Spec : Prop :=
  ∀ n, (P16192457008708825715.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P3746820919614295537

`∩[A007522(n+1), A327752(n+1)]`
-/

namespace A142195.P3746820919614295537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P3746820919614295537

namespace A142195

/-- `∩[A007522(n+1), A327752(n+1)]` -/
def P3746820919614295537.Spec : Prop :=
  ∀ n, (P3746820919614295537.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P13032710673168667281

`∩[A045382(n+1), A327752(n+1)]`
-/

namespace A142195.P13032710673168667281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P13032710673168667281

namespace A142195

/-- `∩[A045382(n+1), A327752(n+1)]` -/
def P13032710673168667281.Spec : Prop :=
  ∀ n, (P13032710673168667281.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P18357507714869081864

`∩[A094712(n+1), A327752(n+1)]`
-/

namespace A142195.P18357507714869081864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P18357507714869081864

namespace A142195

/-- `∩[A094712(n+1), A327752(n+1)]` -/
def P18357507714869081864.Spec : Prop :=
  ∀ n, (P18357507714869081864.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P6935102898933151674

`∩[A014663(n+1), A141884(n+1)]`
-/

namespace A142195.P6935102898933151674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P6935102898933151674

namespace A142195

/-- `∩[A014663(n+1), A141884(n+1)]` -/
def P6935102898933151674.Spec : Prop :=
  ∀ n, (P6935102898933151674.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P12978519475901749585

`∩[A004615(n+1), A007522(n+1)]`
-/

namespace A142195.P12978519475901749585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P12978519475901749585

namespace A142195

/-- `∩[A004615(n+1), A007522(n+1)]` -/
def P12978519475901749585.Spec : Prop :=
  ∀ n, (P12978519475901749585.a n : ℤ) = A142195 (n + 1)

end A142195

/-! ## A142195.P2111239771315365393

`∩[A004615(n+1), A045382(n+1)]`
-/

namespace A142195.P2111239771315365393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142195.P2111239771315365393

namespace A142195

/-- `∩[A004615(n+1), A045382(n+1)]` -/
def P2111239771315365393.Spec : Prop :=
  ∀ n, (P2111239771315365393.a n : ℤ) = A142195 (n + 1)

end A142195

/-!
# A142196: Primes congruent to 33 mod 40.

The programs for A142196, the canonical program `A142196.P1243520336392400460` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142196 has offset 1).

The definition of A142196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142196.P1243520336392400460

`p?[40*n-7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142196

/-- `p?[40*n-7]` -/
def P1243520336392400460.Spec : Prop :=
  ∀ n, P1243520336392400460.a n = A142196 (n + 1)

theorem P1243520336392400460.correct : P1243520336392400460.Spec := by
  intro n
  simp only [A142196, Nat.add_sub_cancel]

end A142196

/-! ## A142196.P4785062026221146583

`∩[A030431(n+1), A332227(n+1)]`
-/

namespace A142196.P4785062026221146583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P4785062026221146583

namespace A142196

/-- `∩[A030431(n+1), A332227(n+1)]` -/
def P4785062026221146583.Spec : Prop :=
  ∀ n, (P4785062026221146583.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P4179619846657770264

`∩[A141885(n+1), A332227(n+1)]`
-/

namespace A142196.P4179619846657770264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P4179619846657770264

namespace A142196

/-- `∩[A141885(n+1), A332227(n+1)]` -/
def P4179619846657770264.Spec : Prop :=
  ∀ n, (P4179619846657770264.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P11197374321715989072

`∩[A030431(n+1), A242663(n+1)]`
-/

namespace A142196.P11197374321715989072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P11197374321715989072

namespace A142196

/-- `∩[A030431(n+1), A242663(n+1)]` -/
def P11197374321715989072.Spec : Prop :=
  ∀ n, (P11197374321715989072.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P15446300858103401346

`∩[A007519(n+1), A030431(n+1)]`
-/

namespace A142196.P15446300858103401346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P15446300858103401346

namespace A142196

/-- `∩[A007519(n+1), A030431(n+1)]` -/
def P15446300858103401346.Spec : Prop :=
  ∀ n, (P15446300858103401346.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P9679499272903901629

`∩[A030431(n+1), A045390(n+1)]`
-/

namespace A142196.P9679499272903901629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P9679499272903901629

namespace A142196

/-- `∩[A030431(n+1), A045390(n+1)]` -/
def P9679499272903901629.Spec : Prop :=
  ∀ n, (P9679499272903901629.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P15468783763220876415

`∩[A007519(n+1), A141885(n+1)]`
-/

namespace A142196.P15468783763220876415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P15468783763220876415

namespace A142196

/-- `∩[A007519(n+1), A141885(n+1)]` -/
def P15468783763220876415.Spec : Prop :=
  ∀ n, (P15468783763220876415.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P9177979319683924289

`∩[A045390(n+1), A141885(n+1)]`
-/

namespace A142196.P9177979319683924289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P9177979319683924289

namespace A142196

/-- `∩[A045390(n+1), A141885(n+1)]` -/
def P9177979319683924289.Spec : Prop :=
  ∀ n, (P9177979319683924289.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P6667014848755471061

`∩[A141885(n+1), A209544(n+1)]`
-/

namespace A142196.P6667014848755471061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P6667014848755471061

namespace A142196

/-- `∩[A141885(n+1), A209544(n+1)]` -/
def P6667014848755471061.Spec : Prop :=
  ∀ n, (P6667014848755471061.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P8562544582443732602

`∩[A007519(n+1), A045414(n+1)]`
-/

namespace A142196.P8562544582443732602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P8562544582443732602

namespace A142196

/-- `∩[A007519(n+1), A045414(n+1)]` -/
def P8562544582443732602.Spec : Prop :=
  ∀ n, (P8562544582443732602.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P16932815640495615903

`∩[A045390(n+1), A045414(n+1)]`
-/

namespace A142196.P16932815640495615903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P16932815640495615903

namespace A142196

/-- `∩[A045390(n+1), A045414(n+1)]` -/
def P16932815640495615903.Spec : Prop :=
  ∀ n, (P16932815640495615903.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P3631133825929232696

`∩[A045414(n+1), A332227(n+1)]`
-/

namespace A142196.P3631133825929232696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P3631133825929232696

namespace A142196

/-- `∩[A045414(n+1), A332227(n+1)]` -/
def P3631133825929232696.Spec : Prop :=
  ∀ n, (P3631133825929232696.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P3114478118172917738

`∩[A030431(n+1), A332226(n+1)]`
-/

namespace A142196.P3114478118172917738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P3114478118172917738

namespace A142196

/-- `∩[A030431(n+1), A332226(n+1)]` -/
def P3114478118172917738.Spec : Prop :=
  ∀ n, (P3114478118172917738.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P342083083660435333

`∩[A004625(n+1), A030431(n+1)]`
-/

namespace A142196.P342083083660435333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P342083083660435333

namespace A142196

/-- `∩[A004625(n+1), A030431(n+1)]` -/
def P342083083660435333.Spec : Prop :=
  ∀ n, (P342083083660435333.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P3125372840941506222

`∩[A004625(n+1), A045414(n+1)]`
-/

namespace A142196.P3125372840941506222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P3125372840941506222

namespace A142196

/-- `∩[A004625(n+1), A045414(n+1)]` -/
def P3125372840941506222.Spec : Prop :=
  ∀ n, (P3125372840941506222.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P7012682971386512176

`∩[A004625(n+1), A141885(n+1)]`
-/

namespace A142196.P7012682971386512176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P7012682971386512176

namespace A142196

/-- `∩[A004625(n+1), A141885(n+1)]` -/
def P7012682971386512176.Spec : Prop :=
  ∀ n, (P7012682971386512176.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P16256465839350027042

`∩[A030431(n+1), A263011(n+1)]`
-/

namespace A142196.P16256465839350027042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P16256465839350027042

namespace A142196

/-- `∩[A030431(n+1), A263011(n+1)]` -/
def P16256465839350027042.Spec : Prop :=
  ∀ n, (P16256465839350027042.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P6083925148900059080

`∩[A045414(n+1), A263011(n+1)]`
-/

namespace A142196.P6083925148900059080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P6083925148900059080

namespace A142196

/-- `∩[A045414(n+1), A263011(n+1)]` -/
def P6083925148900059080.Spec : Prop :=
  ∀ n, (P6083925148900059080.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P2642819761890447203

`∩[A141885(n+1), A263011(n+1)]`
-/

namespace A142196.P2642819761890447203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P2642819761890447203

namespace A142196

/-- `∩[A141885(n+1), A263011(n+1)]` -/
def P2642819761890447203.Spec : Prop :=
  ∀ n, (P2642819761890447203.a n : ℤ) = A142196 (n + 1)

end A142196

/-! ## A142196.P12927261819844295787

`∩[A051074(n+1), A141885(n+1)]`
-/

namespace A142196.P12927261819844295787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142196.P12927261819844295787

namespace A142196

/-- `∩[A051074(n+1), A141885(n+1)]` -/
def P12927261819844295787.Spec : Prop :=
  ∀ n, (P12927261819844295787.a n : ℤ) = A142196 (n + 1)

end A142196

/-!
# A142197: Primes congruent to 37 mod 40.

The programs for A142197, the canonical program `A142197.P12169617643097122472` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142197 has offset 1).

The definition of A142197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142197.P10300193107011158388

`∩[A030432(n+1), A107144(n+1)]`
-/

namespace A142197.P10300193107011158388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P10300193107011158388

namespace A142197

/-- `∩[A030432(n+1), A107144(n+1)]` -/
def P10300193107011158388.Spec : Prop :=
  ∀ n, (P10300193107011158388.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P3779554205330141565

`∩[A107144(n+1), A141886(n+1)]`
-/

namespace A142197.P3779554205330141565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P3779554205330141565

namespace A142197

/-- `∩[A107144(n+1), A141886(n+1)]` -/
def P3779554205330141565.Spec : Prop :=
  ∀ n, (P3779554205330141565.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P12169617643097122472

`p?[40*n-3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142197

/-- `p?[40*n-3]` -/
def P12169617643097122472.Spec : Prop :=
  ∀ n, P12169617643097122472.a n = A142197 (n + 1)

theorem P12169617643097122472.correct : P12169617643097122472.Spec := by
  intro n
  simp only [A142197, Nat.add_sub_cancel]

end A142197

/-! ## A142197.P11156307270658396114

`∩[A141179(n+1), A141886(n+1)]`
-/

namespace A142197.P11156307270658396114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P11156307270658396114

namespace A142197

/-- `∩[A141179(n+1), A141886(n+1)]` -/
def P11156307270658396114.Spec : Prop :=
  ∀ n, (P11156307270658396114.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P14664728953286500271

`∩[A007521(n+1), A030432(n+1)]`
-/

namespace A142197.P14664728953286500271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P14664728953286500271

namespace A142197

/-- `∩[A007521(n+1), A030432(n+1)]` -/
def P14664728953286500271.Spec : Prop :=
  ∀ n, (P14664728953286500271.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P18304849318033173651

`∩[A030432(n+1), A045366(n+1)]`
-/

namespace A142197.P18304849318033173651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P18304849318033173651

namespace A142197

/-- `∩[A030432(n+1), A045366(n+1)]` -/
def P18304849318033173651.Spec : Prop :=
  ∀ n, (P18304849318033173651.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P5557891038776087142

`∩[A007521(n+1), A141886(n+1)]`
-/

namespace A142197.P5557891038776087142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P5557891038776087142

namespace A142197

/-- `∩[A007521(n+1), A141886(n+1)]` -/
def P5557891038776087142.Spec : Prop :=
  ∀ n, (P5557891038776087142.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P12147109457157237667

`∩[A045366(n+1), A141886(n+1)]`
-/

namespace A142197.P12147109457157237667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P12147109457157237667

namespace A142197

/-- `∩[A045366(n+1), A141886(n+1)]` -/
def P12147109457157237667.Spec : Prop :=
  ∀ n, (P12147109457157237667.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P15804405353106081312

`∩[A007521(n+1), A045380(n+1)]`
-/

namespace A142197.P15804405353106081312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P15804405353106081312

namespace A142197

/-- `∩[A007521(n+1), A045380(n+1)]` -/
def P15804405353106081312.Spec : Prop :=
  ∀ n, (P15804405353106081312.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P12485434782400151009

`∩[A045380(n+1), A107144(n+1)]`
-/

namespace A142197.P12485434782400151009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P12485434782400151009

namespace A142197

/-- `∩[A045380(n+1), A107144(n+1)]` -/
def P12485434782400151009.Spec : Prop :=
  ∀ n, (P12485434782400151009.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P15956295772764981983

`∩[A106889(n+1), A141886(n+1)]`
-/

namespace A142197.P15956295772764981983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P15956295772764981983

namespace A142197

/-- `∩[A106889(n+1), A141886(n+1)]` -/
def P15956295772764981983.Spec : Prop :=
  ∀ n, (P15956295772764981983.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P4187636514031957461

`∩[A141886(n+1), A128288(n+2)]`
-/

namespace A142197.P4187636514031957461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P4187636514031957461

namespace A142197

/-- `∩[A141886(n+1), A128288(n+2)]` -/
def P4187636514031957461.Spec : Prop :=
  ∀ n, (P4187636514031957461.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P6539859053587937825

`∩[A007521(n+1), A090652(n+1)]`
-/

namespace A142197.P6539859053587937825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P6539859053587937825

namespace A142197

/-- `∩[A007521(n+1), A090652(n+1)]` -/
def P6539859053587937825.Spec : Prop :=
  ∀ n, (P6539859053587937825.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P13887144513288545092

`∩[A045366(n+1), A090652(n+1)]`
-/

namespace A142197.P13887144513288545092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P13887144513288545092

namespace A142197

/-- `∩[A045366(n+1), A090652(n+1)]` -/
def P13887144513288545092.Spec : Prop :=
  ∀ n, (P13887144513288545092.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P11069956520215753871

`∩[A090652(n+1), A107144(n+1)]`
-/

namespace A142197.P11069956520215753871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P11069956520215753871

namespace A142197

/-- `∩[A090652(n+1), A107144(n+1)]` -/
def P11069956520215753871.Spec : Prop :=
  ∀ n, (P11069956520215753871.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P1494050935528870550

`∩[A141886(n+1), A395264(n+1)]`
-/

namespace A142197.P1494050935528870550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P1494050935528870550

namespace A142197

/-- `∩[A141886(n+1), A395264(n+1)]` -/
def P1494050935528870550.Spec : Prop :=
  ∀ n, (P1494050935528870550.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P13114922239709548509

`∩[A004627(n+1), A030432(n+1)]`
-/

namespace A142197.P13114922239709548509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P13114922239709548509

namespace A142197

/-- `∩[A004627(n+1), A030432(n+1)]` -/
def P13114922239709548509.Spec : Prop :=
  ∀ n, (P13114922239709548509.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P7233160807461601604

`∩[A004627(n+1), A045380(n+1)]`
-/

namespace A142197.P7233160807461601604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P7233160807461601604

namespace A142197

/-- `∩[A004627(n+1), A045380(n+1)]` -/
def P7233160807461601604.Spec : Prop :=
  ∀ n, (P7233160807461601604.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P2857685918424196262

`∩[A004627(n+1), A141886(n+1)]`
-/

namespace A142197.P2857685918424196262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P2857685918424196262

namespace A142197

/-- `∩[A004627(n+1), A141886(n+1)]` -/
def P2857685918424196262.Spec : Prop :=
  ∀ n, (P2857685918424196262.a n : ℤ) = A142197 (n + 1)

end A142197

/-! ## A142197.P17461073170679459537

`∩[A141886(n+1), A293859(n+1)]`
-/

namespace A142197.P17461073170679459537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142197.P17461073170679459537

namespace A142197

/-- `∩[A141886(n+1), A293859(n+1)]` -/
def P17461073170679459537.Spec : Prop :=
  ∀ n, (P17461073170679459537.a n : ℤ) = A142197 (n + 1)

end A142197

/-!
# A142198: Primes congruent to 39 mod 40.

The programs for A142198, the canonical program `A142198.P1079602201654401913` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142198 has offset 1).

The definition of A142198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142198.P1079602201654401913

`p?[40*n-1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142198

/-- `p?[40*n-1]` -/
def P1079602201654401913.Spec : Prop :=
  ∀ n, P1079602201654401913.a n = A142198 (n + 1)

theorem P1079602201654401913.correct : P1079602201654401913.Spec := by
  intro n
  simp only [A142198, Nat.add_sub_cancel]

end A142198

/-! ## A142198.P7534042768174436992

`∏{d}[p?[40*n+39], #]`
-/

namespace A142198.P7534042768174436992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 39

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142198.P7534042768174436992

namespace A142198

/-- `∏{d}[p?[40*n+39], #]` -/
def P7534042768174436992.Spec : Prop :=
  ∀ n, (P7534042768174436992.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P1848505958411221693

`or(1, p?[5*8*n+39])`
-/

namespace A142198.P1848505958411221693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (8 * n) + 39

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142198.P1848505958411221693

namespace A142198

/-- `or(1, p?[5*8*n+39])` -/
def P1848505958411221693.Spec : Prop :=
  ∀ n, (P1848505958411221693.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P6629931243784971716

`∑{p}[p?[5*8*n+39], #]`
-/

namespace A142198.P6629931243784971716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (8 * n) + 39

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142198.P6629931243784971716

namespace A142198

/-- `∑{p}[p?[5*8*n+39], #]` -/
def P6629931243784971716.Spec : Prop :=
  ∀ n, (P6629931243784971716.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P11458053698124762275

`∏{p}[p?[39*(n+2)+1+n], #]`
-/

namespace A142198.P11458053698124762275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * (n + 2) + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142198.P11458053698124762275

namespace A142198

/-- `∏{p}[p?[39*(n+2)+1+n], #]` -/
def P11458053698124762275.Spec : Prop :=
  ∀ n, (P11458053698124762275.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P11661103450231896343

`∩[A141180(n+1), A141887(n+1)]`
-/

namespace A142198.P11661103450231896343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P11661103450231896343

namespace A142198

/-- `∩[A141180(n+1), A141887(n+1)]` -/
def P11661103450231896343.Spec : Prop :=
  ∀ n, (P11661103450231896343.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P1004522335911153696

`∩[A007522(n+1), A030433(n+1)]`
-/

namespace A142198.P1004522335911153696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P1004522335911153696

namespace A142198

/-- `∩[A007522(n+1), A030433(n+1)]` -/
def P1004522335911153696.Spec : Prop :=
  ∀ n, (P1004522335911153696.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P184083414734356858

`∩[A007522(n+1), A045457(n+1)]`
-/

namespace A142198.P184083414734356858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P184083414734356858

namespace A142198

/-- `∩[A007522(n+1), A045457(n+1)]` -/
def P184083414734356858.Spec : Prop :=
  ∀ n, (P184083414734356858.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P16348433175176329590

`∩[A030433(n+1), A045382(n+1)]`
-/

namespace A142198.P16348433175176329590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P16348433175176329590

namespace A142198

/-- `∩[A030433(n+1), A045382(n+1)]` -/
def P16348433175176329590.Spec : Prop :=
  ∀ n, (P16348433175176329590.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P8147815134891432066

`∩[A045382(n+1), A045457(n+1)]`
-/

namespace A142198.P8147815134891432066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P8147815134891432066

namespace A142198

/-- `∩[A045382(n+1), A045457(n+1)]` -/
def P8147815134891432066.Spec : Prop :=
  ∀ n, (P8147815134891432066.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P14615231603805755782

`∩[A007522(n+1), A141887(n+1)]`
-/

namespace A142198.P14615231603805755782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P14615231603805755782

namespace A142198

/-- `∩[A007522(n+1), A141887(n+1)]` -/
def P14615231603805755782.Spec : Prop :=
  ∀ n, (P14615231603805755782.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P3409389034036323208

`∩[A045382(n+1), A141887(n+1)]`
-/

namespace A142198.P3409389034036323208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P3409389034036323208

namespace A142198

/-- `∩[A045382(n+1), A141887(n+1)]` -/
def P3409389034036323208.Spec : Prop :=
  ∀ n, (P3409389034036323208.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P3796969561070371158

`∩[A030433(n+1), A094712(n+1)]`
-/

namespace A142198.P3796969561070371158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P3796969561070371158

namespace A142198

/-- `∩[A030433(n+1), A094712(n+1)]` -/
def P3796969561070371158.Spec : Prop :=
  ∀ n, (P3796969561070371158.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P6748792220444625121

`∩[A094712(n+1), A141887(n+1)]`
-/

namespace A142198.P6748792220444625121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P6748792220444625121

namespace A142198

/-- `∩[A094712(n+1), A141887(n+1)]` -/
def P6748792220444625121.Spec : Prop :=
  ∀ n, (P6748792220444625121.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P17761930698462913833

`∩[A007522(n+1), A327753(n+1)]`
-/

namespace A142198.P17761930698462913833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P17761930698462913833

namespace A142198

/-- `∩[A007522(n+1), A327753(n+1)]` -/
def P17761930698462913833.Spec : Prop :=
  ∀ n, (P17761930698462913833.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P3476491255819690810

`∩[A045382(n+1), A327753(n+1)]`
-/

namespace A142198.P3476491255819690810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P3476491255819690810

namespace A142198

/-- `∩[A045382(n+1), A327753(n+1)]` -/
def P3476491255819690810.Spec : Prop :=
  ∀ n, (P3476491255819690810.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P11015056048033464763

`∩[A094712(n+1), A327753(n+1)]`
-/

namespace A142198.P11015056048033464763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P11015056048033464763

namespace A142198

/-- `∩[A094712(n+1), A327753(n+1)]` -/
def P11015056048033464763.Spec : Prop :=
  ∀ n, (P11015056048033464763.a n : ℤ) = A142198 (n + 1)

end A142198

/-! ## A142198.P13428835809973166017

`A327753(eq[6, and(6, A327753(n+1))]+1)`
-/

namespace A142198.P13428835809973166017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A327753 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142198.P13428835809973166017

namespace A142198

/-- `A327753(eq[6, and(6, A327753(n+1))]+1)` -/
def P13428835809973166017.Spec : Prop :=
  ∀ n, P13428835809973166017.a n = A142198 (n + 1)

end A142198

/-! ## A142198.P6176044936994576320

`∩[A014663(n+1), A141887(n+1)]`
-/

namespace A142198.P6176044936994576320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142198.P6176044936994576320

namespace A142198

/-- `∩[A014663(n+1), A141887(n+1)]` -/
def P6176044936994576320.Spec : Prop :=
  ∀ n, (P6176044936994576320.a n : ℤ) = A142198 (n + 1)

end A142198

/-!
# A142199: Primes congruent to 2 mod 41.

The programs for A142199, the canonical program `A142199.P6837506524554160366` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142199 has offset 1).

The definition of A142199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142199.P6837506524554160366

`p?[41*n+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142199

/-- `p?[41*n+2]` -/
def P6837506524554160366.Spec : Prop :=
  ∀ n, (P6837506524554160366.a n : ℤ) = A142199 (n + 1)

theorem P6837506524554160366.correct : P6837506524554160366.Spec := by
  intro n
  simp only [A142199, Nat.add_sub_cancel]

end A142199

/-! ## A142199.P3219522882892236548

`∏{d}[p?[a(n-1)+41], #]` with `a(0)=2`
-/

namespace A142199.P3219522882892236548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142199.P3219522882892236548

namespace A142199

/-- `∏{d}[p?[a(n-1)+41], #]` -/
def P3219522882892236548.Spec : Prop :=
  ∀ n, (P3219522882892236548.a n : ℤ) = A142199 (n + 1)

end A142199

/-! ## A142199.P13062983279708187090

`abs(2-p?[a(n-1)+41])+2` with `a(0)=2`
-/

namespace A142199.P13062983279708187090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 2

end

end A142199.P13062983279708187090

namespace A142199

/-- `abs(2-p?[a(n-1)+41])+2` -/
def P13062983279708187090.Spec : Prop :=
  ∀ n, P13062983279708187090.a n = A142199 (n + 1)

end A142199

/-! ## A142199.P7476999098869350819

`round(sqrt(p?[a(n-1)+41]²+1))` with `a(0)=1, a(1)=2`
-/

namespace A142199.P7476999098869350819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A142199.P7476999098869350819

namespace A142199

/-- `round(sqrt(p?[a(n-1)+41]²+1))` -/
def P7476999098869350819.Spec : Prop :=
  ∀ n, P7476999098869350819.a n = A142199 (n + 1)

end A142199

/-! ## A142199.P14016232513578575735

`A000027(p?[A128470(n)+A017401(n)])`
-/

namespace A142199.P14016232513578575735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142199.P14016232513578575735

namespace A142199

/-- `A000027(p?[A128470(n)+A017401(n)])` -/
def P14016232513578575735.Spec : Prop :=
  ∀ n, P14016232513578575735.a n = A142199 (n + 1)

end A142199

/-! ## A142199.P3809525770426119540

`record[A020639(41*n+2)]`
-/

namespace A142199.P3809525770426119540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142199.P3809525770426119540

namespace A142199

/-- `record[A020639(41*n+2)]` -/
def P3809525770426119540.Spec : Prop :=
  ∀ n, P3809525770426119540.a n = A142199 (n + 1)

end A142199

/-! ## A142199.P8235421921448262090

`A001414(p?[A128470(n)+A017401(n)])`
-/

namespace A142199.P8235421921448262090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142199.P8235421921448262090

namespace A142199

/-- `A001414(p?[A128470(n)+A017401(n)])` -/
def P8235421921448262090.Spec : Prop :=
  ∀ n, P8235421921448262090.a n = A142199 (n + 1)

end A142199

/-! ## A142199.P17594373149928222244

`A008472(p?[A128470(n)+A017401(n)])`
-/

namespace A142199.P17594373149928222244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142199.P17594373149928222244

namespace A142199

/-- `A008472(p?[A128470(n)+A017401(n)])` -/
def P17594373149928222244.Spec : Prop :=
  ∀ n, P17594373149928222244.a n = A142199 (n + 1)

end A142199

