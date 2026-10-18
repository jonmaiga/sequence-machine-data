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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A139500: Primes of the form x^2 + 20x*y + y^2 for x and y nonnegative.

The programs for A139500, there is no canonical definition to state claims against.
-/

/-! ## A139500.P15093781674815679465

`A098025(A006530((2*n)!)+1)`
-/

namespace A139500.P15093781674815679465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098025 (A006530 (Nat.factorial (2 * n)) + 1).toNat

end

end A139500.P15093781674815679465

/-!
# A139501: Primes of the form x^2 + 21x*y + y^2 for x and y nonnegative.

The programs for A139501, there is no canonical definition to state claims against.
-/

/-! ## A139501.P5735452426721860009

`∩[A106863(n+1), A296932(n+1)]`
-/

namespace A139501.P5735452426721860009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139501.P5735452426721860009

/-! ## A139501.P13861214118876131400

`∩[A191019(n+1), A296932(n+1)]`
-/

namespace A139501.P13861214118876131400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139501.P13861214118876131400

/-! ## A139501.P1387216153895871405

`∩[A296932(n+1), A341787(n+1)]`
-/

namespace A139501.P1387216153895871405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139501.P1387216153895871405

/-! ## A139501.P828942780794085856

`∩[A035243(n+1), A296932(n+1)]`
-/

namespace A139501.P828942780794085856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139501.P828942780794085856

/-! ## A139501.P13442301949340131698

`∩[A035240(n+1), A106863(n+1)]`
-/

namespace A139501.P13442301949340131698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139501.P13442301949340131698

/-! ## A139501.P3588358013702707221

`∩[A035240(n+1), A191019(n+1)]`
-/

namespace A139501.P3588358013702707221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139501.P3588358013702707221

/-!
# A139502: Primes of the form x^2 + 22x*y + y^2 for x and y nonnegative.

The programs for A139502, the canonical program `A139502.P15683124104895696879` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139502 has offset 1).

The definition of A139502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4817 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139502.P18197794244296441745

`∩[A107145(n+1), A107152(n+1)]`
-/

namespace A139502.P18197794244296441745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P18197794244296441745

namespace A139502

/-- `∩[A107145(n+1), A107152(n+1)]` -/
def P18197794244296441745.Spec : Prop :=
  ∀ n, (P18197794244296441745.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P5650948288461917153

`∩[A107008(n+1), A107145(n+1)]`
-/

namespace A139502.P5650948288461917153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P5650948288461917153

namespace A139502

/-- `∩[A107008(n+1), A107145(n+1)]` -/
def P5650948288461917153.Spec : Prop :=
  ∀ n, (P5650948288461917153.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P16361360966759928084

`∩[A107008(n+1), A107152(n+1)]`
-/

namespace A139502.P16361360966759928084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P16361360966759928084

namespace A139502

/-- `∩[A107008(n+1), A107152(n+1)]` -/
def P16361360966759928084.Spec : Prop :=
  ∀ n, (P16361360966759928084.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P13495847242962749284

`∩[A033220(n+1), A107008(n+1)]`
-/

namespace A139502.P13495847242962749284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P13495847242962749284

namespace A139502

/-- `∩[A033220(n+1), A107008(n+1)]` -/
def P13495847242962749284.Spec : Prop :=
  ∀ n, (P13495847242962749284.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P5133840025005311470

`∩[A033220(n+1), A107145(n+1)]`
-/

namespace A139502.P5133840025005311470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P5133840025005311470

namespace A139502

/-- `∩[A033220(n+1), A107145(n+1)]` -/
def P5133840025005311470.Spec : Prop :=
  ∀ n, (P5133840025005311470.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P15683124104895696879

`p?[(n+1)²%12+20*n]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139502

/-- `p?[(n+1)²%12+20*n]` -/
def P15683124104895696879.Spec : Prop :=
  ∀ n, (P15683124104895696879.a n : ℤ) = A139502 (n + 1)

theorem P15683124104895696879.correct : P15683124104895696879.Spec := by
  intro n
  simp only [A139502, Nat.add_sub_cancel]

end A139502

/-! ## A139502.P16936900338598368317

`p?[A155708(n+1)]`
-/

namespace A139502.P16936900338598368317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139502.P16936900338598368317

namespace A139502

/-- `p?[A155708(n+1)]` -/
def P16936900338598368317.Spec : Prop :=
  ∀ n, P16936900338598368317.a n = A139502 (n + 1)

end A139502

/-! ## A139502.P7570599977344868351

`p?[A227863(n+1)]`
-/

namespace A139502.P7570599977344868351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139502.P7570599977344868351

namespace A139502

/-- `p?[A227863(n+1)]` -/
def P7570599977344868351.Spec : Prop :=
  ∀ n, P7570599977344868351.a n = A139502 (n + 1)

end A139502

/-! ## A139502.P10015204131410344246

`∩[A033199(n+1), A107145(n+1)]`
-/

namespace A139502.P10015204131410344246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P10015204131410344246

namespace A139502

/-- `∩[A033199(n+1), A107145(n+1)]` -/
def P10015204131410344246.Spec : Prop :=
  ∀ n, (P10015204131410344246.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P6064751521360746515

`∩[A033199(n+1), A107152(n+1)]`
-/

namespace A139502.P6064751521360746515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P6064751521360746515

namespace A139502

/-- `∩[A033199(n+1), A107152(n+1)]` -/
def P6064751521360746515.Spec : Prop :=
  ∀ n, (P6064751521360746515.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P14402091228538077199

`∩[A007519(n+1), A033220(n+1)]`
-/

namespace A139502.P14402091228538077199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P14402091228538077199

namespace A139502

/-- `∩[A007519(n+1), A033220(n+1)]` -/
def P14402091228538077199.Spec : Prop :=
  ∀ n, (P14402091228538077199.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P4765024091759347648

`∩[A033220(n+1), A045390(n+1)]`
-/

namespace A139502.P4765024091759347648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P4765024091759347648

namespace A139502

/-- `∩[A033220(n+1), A045390(n+1)]` -/
def P4765024091759347648.Spec : Prop :=
  ∀ n, (P4765024091759347648.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P10757300746780978372

`∩[A007519(n+1), A107152(n+1)]`
-/

namespace A139502.P10757300746780978372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P10757300746780978372

namespace A139502

/-- `∩[A007519(n+1), A107152(n+1)]` -/
def P10757300746780978372.Spec : Prop :=
  ∀ n, (P10757300746780978372.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P14323668215114813246

`∩[A045390(n+1), A107152(n+1)]`
-/

namespace A139502.P14323668215114813246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P14323668215114813246

namespace A139502

/-- `∩[A045390(n+1), A107152(n+1)]` -/
def P14323668215114813246.Spec : Prop :=
  ∀ n, (P14323668215114813246.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P12142606451012834978

`∩[A007519(n+1), A155708(n+1)]`
-/

namespace A139502.P12142606451012834978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P12142606451012834978

namespace A139502

/-- `∩[A007519(n+1), A155708(n+1)]` -/
def P12142606451012834978.Spec : Prop :=
  ∀ n, (P12142606451012834978.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P15689977615916868123

`∩[A007519(n+1), A033212(n+1)]`
-/

namespace A139502.P15689977615916868123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P15689977615916868123

namespace A139502

/-- `∩[A007519(n+1), A033212(n+1)]` -/
def P15689977615916868123.Spec : Prop :=
  ∀ n, (P15689977615916868123.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P8427613414658065756

`∩[A033212(n+1), A045390(n+1)]`
-/

namespace A139502.P8427613414658065756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P8427613414658065756

namespace A139502

/-- `∩[A033212(n+1), A045390(n+1)]` -/
def P8427613414658065756.Spec : Prop :=
  ∀ n, (P8427613414658065756.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P15125993645970160548

`∩[A033212(n+1), A107008(n+1)]`
-/

namespace A139502.P15125993645970160548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P15125993645970160548

namespace A139502

/-- `∩[A033212(n+1), A107008(n+1)]` -/
def P15125993645970160548.Spec : Prop :=
  ∀ n, (P15125993645970160548.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P2783951539678130059

`∩[A033212(n+1), A155708(n+1)]`
-/

namespace A139502.P2783951539678130059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P2783951539678130059

namespace A139502

/-- `∩[A033212(n+1), A155708(n+1)]` -/
def P2783951539678130059.Spec : Prop :=
  ∀ n, (P2783951539678130059.a n : ℤ) = A139502 (n + 1)

end A139502

/-! ## A139502.P7660513222926801397

`∩[A209544(n+1), A033212(n+1)]`
-/

namespace A139502.P7660513222926801397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139502.P7660513222926801397

namespace A139502

/-- `∩[A209544(n+1), A033212(n+1)]` -/
def P7660513222926801397.Spec : Prop :=
  ∀ n, (P7660513222926801397.a n : ℤ) = A139502 (n + 1)

end A139502

/-!
# A139503: Primes of the form x^2 + 23x*y + y^2 for x and y nonnegative.

The programs for A139503, the canonical program `A139503.P5463424210265189612` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139503 has offset 1).

The definition of A139503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139503.P5463424210265189612

`∩[A033212(n+1), A106881(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139503

/-- `∩[A033212(n+1), A106881(n+1)]` -/
def P5463424210265189612.Spec : Prop :=
  ∀ n, (P5463424210265189612.a n : ℤ) = A139503 (n + 1)

theorem P5463424210265189612.correct : P5463424210265189612.Spec := by
  intro n
  simp only [A139503, Nat.add_sub_cancel]

end A139503

/-! ## A139503.P2940727882496830878

`∩[A033212(n+1), A139492(n+1)]`
-/

namespace A139503.P2940727882496830878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P2940727882496830878

namespace A139503

/-- `∩[A033212(n+1), A139492(n+1)]` -/
def P2940727882496830878.Spec : Prop :=
  ∀ n, (P2940727882496830878.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P1083428667903818407

`∩[A038872(n+1), A139492(n+1)]`
-/

namespace A139503.P1083428667903818407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P1083428667903818407

namespace A139503

/-- `∩[A038872(n+1), A139492(n+1)]` -/
def P1083428667903818407.Spec : Prop :=
  ∀ n, (P1083428667903818407.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P8199298958307757817

`∩[A045468(n+1), A139492(n+1)]`
-/

namespace A139503.P8199298958307757817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P8199298958307757817

namespace A139503

/-- `∩[A045468(n+1), A139492(n+1)]` -/
def P8199298958307757817.Spec : Prop :=
  ∀ n, (P8199298958307757817.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P15141620122485848828

`∩[A064739(n+1), A139492(n+1)]`
-/

namespace A139503.P15141620122485848828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P15141620122485848828

namespace A139503

/-- `∩[A064739(n+1), A139492(n+1)]` -/
def P15141620122485848828.Spec : Prop :=
  ∀ n, (P15141620122485848828.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P3275243700847611768

`∩[A033212(n+1), A191026(n+1)]`
-/

namespace A139503.P3275243700847611768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P3275243700847611768

namespace A139503

/-- `∩[A033212(n+1), A191026(n+1)]` -/
def P3275243700847611768.Spec : Prop :=
  ∀ n, (P3275243700847611768.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P6880626730062733252

`∩[A106881(n+1), A191018(n+1)]`
-/

namespace A139503.P6880626730062733252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P6880626730062733252

namespace A139503

/-- `∩[A106881(n+1), A191018(n+1)]` -/
def P6880626730062733252.Spec : Prop :=
  ∀ n, (P6880626730062733252.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P972235113457476888

`∩[A191026(n+1), A139492(n+1)]`
-/

namespace A139503.P972235113457476888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P972235113457476888

namespace A139503

/-- `∩[A191026(n+1), A139492(n+1)]` -/
def P972235113457476888.Spec : Prop :=
  ∀ n, (P972235113457476888.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P7475854628401487972

`∩[A002476(n+1), A106881(n+1)]`
-/

namespace A139503.P7475854628401487972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P7475854628401487972

namespace A139503

/-- `∩[A002476(n+1), A106881(n+1)]` -/
def P7475854628401487972.Spec : Prop :=
  ∀ n, (P7475854628401487972.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P14773599093388207869

`∩[A007645(n+1), A106881(n+1)]`
-/

namespace A139503.P14773599093388207869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P14773599093388207869

namespace A139503

/-- `∩[A007645(n+1), A106881(n+1)]` -/
def P14773599093388207869.Spec : Prop :=
  ∀ n, (P14773599093388207869.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P13552306000679934352

`∩[A045331(n+1), A106881(n+1)]`
-/

namespace A139503.P13552306000679934352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P13552306000679934352

namespace A139503

/-- `∩[A045331(n+1), A106881(n+1)]` -/
def P13552306000679934352.Spec : Prop :=
  ∀ n, (P13552306000679934352.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P14500705395943228726

`∩[A045375(n+1), A106881(n+1)]`
-/

namespace A139503.P14500705395943228726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P14500705395943228726

namespace A139503

/-- `∩[A045375(n+1), A106881(n+1)]` -/
def P14500705395943228726.Spec : Prop :=
  ∀ n, (P14500705395943228726.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P12418828643409321512

`∩[A076518(n+1), A139492(n+1)]`
-/

namespace A139503.P12418828643409321512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P12418828643409321512

namespace A139503

/-- `∩[A076518(n+1), A139492(n+1)]` -/
def P12418828643409321512.Spec : Prop :=
  ∀ n, (P12418828643409321512.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P13999839143350522340

`∩[A106881(n+1), A123365(n+1)]`
-/

namespace A139503.P13999839143350522340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P13999839143350522340

namespace A139503

/-- `∩[A106881(n+1), A123365(n+1)]` -/
def P13999839143350522340.Spec : Prop :=
  ∀ n, (P13999839143350522340.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P14206550936927418767

`∩[A033207(n+1), A033212(n+1)]`
-/

namespace A139503.P14206550936927418767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P14206550936927418767

namespace A139503

/-- `∩[A033207(n+1), A033212(n+1)]` -/
def P14206550936927418767.Spec : Prop :=
  ∀ n, (P14206550936927418767.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P15100858582405928706

`∩[A033212(n+1), A038893(n+1)]`
-/

namespace A139503.P15100858582405928706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P15100858582405928706

namespace A139503

/-- `∩[A033212(n+1), A038893(n+1)]` -/
def P15100858582405928706.Spec : Prop :=
  ∀ n, (P15100858582405928706.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P7826277307714928173

`∩[A033212(n+1), A045373(n+1)]`
-/

namespace A139503.P7826277307714928173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P7826277307714928173

namespace A139503

/-- `∩[A033212(n+1), A045373(n+1)]` -/
def P7826277307714928173.Spec : Prop :=
  ∀ n, (P7826277307714928173.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P654537104913976516

`∩[A033212(n+1), A045386(n+1)]`
-/

namespace A139503.P654537104913976516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P654537104913976516

namespace A139503

/-- `∩[A033212(n+1), A045386(n+1)]` -/
def P654537104913976516.Spec : Prop :=
  ∀ n, (P654537104913976516.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P2232967751167914700

`∩[A038893(n+1), A106881(n+1)]`
-/

namespace A139503.P2232967751167914700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P2232967751167914700

namespace A139503

/-- `∩[A038893(n+1), A106881(n+1)]` -/
def P2232967751167914700.Spec : Prop :=
  ∀ n, (P2232967751167914700.a n : ℤ) = A139503 (n + 1)

end A139503

/-! ## A139503.P4367966684218008163

`∩[A055664(n+1), A106881(n+1)]`
-/

namespace A139503.P4367966684218008163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139503.P4367966684218008163

namespace A139503

/-- `∩[A055664(n+1), A106881(n+1)]` -/
def P4367966684218008163.Spec : Prop :=
  ∀ n, (P4367966684218008163.a n : ℤ) = A139503 (n + 1)

end A139503

/-!
# A139504: Primes of the form x^2 + 24x*y + y^2 for x and y nonnegative.

The programs for A139504, there is no canonical definition to state claims against.
-/

/-! ## A139504.P4739235809679885033

`∩[A033210(n+1), A141182(n+1)]`
-/

namespace A139504.P4739235809679885033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P4739235809679885033

/-! ## A139504.P9719311163235417006

`∩[A141182(n+1), A296926(n+1)]`
-/

namespace A139504.P9719311163235417006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P9719311163235417006

/-! ## A139504.P2759476806128769181

`∩[A141182(n+1), A296928(n+1)]`
-/

namespace A139504.P2759476806128769181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P2759476806128769181

/-! ## A139504.P14491290003832162848

`∩[A033210(n+1), A038881(n+1)]`
-/

namespace A139504.P14491290003832162848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P14491290003832162848

/-! ## A139504.P4146745707713830599

`∩[A038883(n+1), A141182(n+1)]`
-/

namespace A139504.P4146745707713830599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P4146745707713830599

/-! ## A139504.P6156739595970363156

`∩[A141182(n+1), A296937(n+1)]`
-/

namespace A139504.P6156739595970363156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P6156739595970363156

/-! ## A139504.P6082207508104209223

`∩[A033210(n+1), A056874(n+1)]`
-/

namespace A139504.P6082207508104209223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P6082207508104209223

/-! ## A139504.P10398385271334288496

`∩[A033210(n+1), A296920(n+1)]`
-/

namespace A139504.P10398385271334288496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P10398385271334288496

/-! ## A139504.P10314849331851606500

`∩[A033210(n+1), A296935(n+1)]`
-/

namespace A139504.P10314849331851606500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P10314849331851606500

/-! ## A139504.P11749538528772938975

`∩[A141182(n+1), A270997(n+1)]`
-/

namespace A139504.P11749538528772938975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P11749538528772938975

/-! ## A139504.P1094869613342136652

`∩[A033210(n+1), A341785(n+1)]`
-/

namespace A139504.P1094869613342136652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P1094869613342136652

/-! ## A139504.P12633394394096349520

`∩[A033210(n+1), A243166(n+1)]`
-/

namespace A139504.P12633394394096349520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P12633394394096349520

/-! ## A139504.P5457994015606907335

`∩[A038883(n+1), A243166(n+1)]`
-/

namespace A139504.P5457994015606907335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P5457994015606907335

/-! ## A139504.P1440623038195549272

`∩[A243166(n+1), A296926(n+1)]`
-/

namespace A139504.P1440623038195549272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P1440623038195549272

/-! ## A139504.P6792974660220175336

`∩[A243166(n+1), A296928(n+1)]`
-/

namespace A139504.P6792974660220175336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P6792974660220175336

/-! ## A139504.P10025636991627382457

`∩[A243166(n+1), A296937(n+1)]`
-/

namespace A139504.P10025636991627382457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P10025636991627382457

/-! ## A139504.P5776545777144266559

`∩[A038881(n+1), A247881(n+1)]`
-/

namespace A139504.P5776545777144266559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P5776545777144266559

/-! ## A139504.P16691575842335237778

`∩[A056874(n+1), A247881(n+1)]`
-/

namespace A139504.P16691575842335237778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P16691575842335237778

/-! ## A139504.P15261991578759223338

`∩[A141182(n+1), A247881(n+1)]`
-/

namespace A139504.P15261991578759223338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P15261991578759223338

/-! ## A139504.P1198379438130241759

`∩[A247881(n+1), A296920(n+1)]`
-/

namespace A139504.P1198379438130241759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139504.P1198379438130241759

/-!
# A139506: Primes of the form x^2 + 26x*y + y^2 for x and y nonnegative.

The programs for A139506, the canonical program `A139506.P10279142655047582873` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139506 has offset 1).

The definition of A139506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139506.P10524742316035564108

`∩[A033215(n+1), A139645(n+1)]`
-/

namespace A139506.P10524742316035564108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P10524742316035564108

namespace A139506

/-- `∩[A033215(n+1), A139645(n+1)]` -/
def P10524742316035564108.Spec : Prop :=
  ∀ n, (P10524742316035564108.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P13957486933004349472

`∩[A033215(n+1), A107008(n+1)]`
-/

namespace A139506.P13957486933004349472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P13957486933004349472

namespace A139506

/-- `∩[A033215(n+1), A107008(n+1)]` -/
def P13957486933004349472.Spec : Prop :=
  ∀ n, (P13957486933004349472.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P7147788979355669729

`∩[A033215(n+1), A033229(n+1)]`
-/

namespace A139506.P7147788979355669729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P7147788979355669729

namespace A139506

/-- `∩[A033215(n+1), A033229(n+1)]` -/
def P7147788979355669729.Spec : Prop :=
  ∀ n, (P7147788979355669729.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P9573016307842030752

`∩[A033229(n+1), A107008(n+1)]`
-/

namespace A139506.P9573016307842030752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P9573016307842030752

namespace A139506

/-- `∩[A033229(n+1), A107008(n+1)]` -/
def P9573016307842030752.Spec : Prop :=
  ∀ n, (P9573016307842030752.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P10064048409460490189

`∩[A033229(n+1), A139645(n+1)]`
-/

namespace A139506.P10064048409460490189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P10064048409460490189

namespace A139506

/-- `∩[A033229(n+1), A139645(n+1)]` -/
def P10064048409460490189.Spec : Prop :=
  ∀ n, (P10064048409460490189.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P4244691324514232198

`∩[A033229(n+1), A107134(n+1)]`
-/

namespace A139506.P4244691324514232198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P4244691324514232198

namespace A139506

/-- `∩[A033229(n+1), A107134(n+1)]` -/
def P4244691324514232198.Spec : Prop :=
  ∀ n, (P4244691324514232198.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P9170568637629948132

`∩[A033199(n+1), A033215(n+1)]`
-/

namespace A139506.P9170568637629948132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P9170568637629948132

namespace A139506

/-- `∩[A033199(n+1), A033215(n+1)]` -/
def P9170568637629948132.Spec : Prop :=
  ∀ n, (P9170568637629948132.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P11439279069512650063

`∩[A033199(n+1), A033229(n+1)]`
-/

namespace A139506.P11439279069512650063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P11439279069512650063

namespace A139506

/-- `∩[A033199(n+1), A033229(n+1)]` -/
def P11439279069512650063.Spec : Prop :=
  ∀ n, (P11439279069512650063.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P16348926335741986333

`∩[A033199(n+1), A107134(n+1)]`
-/

namespace A139506.P16348926335741986333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P16348926335741986333

namespace A139506

/-- `∩[A033199(n+1), A107134(n+1)]` -/
def P16348926335741986333.Spec : Prop :=
  ∀ n, (P16348926335741986333.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P10279142655047582873

`∩[A033199(n+1), A139645(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139506

/-- `∩[A033199(n+1), A139645(n+1)]` -/
def P10279142655047582873.Spec : Prop :=
  ∀ n, (P10279142655047582873.a n : ℤ) = A139506 (n + 1)

theorem P10279142655047582873.correct : P10279142655047582873.Spec := by
  intro n
  simp only [A139506, Nat.add_sub_cancel]

end A139506

/-! ## A139506.P12131861589176430151

`∩[A033199(n+1), A141172(n+1)]`
-/

namespace A139506.P12131861589176430151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P12131861589176430151

namespace A139506

/-- `∩[A033199(n+1), A141172(n+1)]` -/
def P12131861589176430151.Spec : Prop :=
  ∀ n, (P12131861589176430151.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P17682507823462974340

`∩[A033229(n+1), A141172(n+1)]`
-/

namespace A139506.P17682507823462974340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P17682507823462974340

namespace A139506

/-- `∩[A033229(n+1), A141172(n+1)]` -/
def P17682507823462974340.Spec : Prop :=
  ∀ n, (P17682507823462974340.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P6261260072355590789

`∩[A007519(n+1), A033215(n+1)]`
-/

namespace A139506.P6261260072355590789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P6261260072355590789

namespace A139506

/-- `∩[A007519(n+1), A033215(n+1)]` -/
def P6261260072355590789.Spec : Prop :=
  ∀ n, (P6261260072355590789.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P16298694795813932907

`∩[A007519(n+1), A033229(n+1)]`
-/

namespace A139506.P16298694795813932907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P16298694795813932907

namespace A139506

/-- `∩[A007519(n+1), A033229(n+1)]` -/
def P16298694795813932907.Spec : Prop :=
  ∀ n, (P16298694795813932907.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P9628624602831903369

`∩[A033215(n+1), A045390(n+1)]`
-/

namespace A139506.P9628624602831903369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P9628624602831903369

namespace A139506

/-- `∩[A033215(n+1), A045390(n+1)]` -/
def P9628624602831903369.Spec : Prop :=
  ∀ n, (P9628624602831903369.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P13509738251214469634

`∩[A033229(n+1), A045390(n+1)]`
-/

namespace A139506.P13509738251214469634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P13509738251214469634

namespace A139506

/-- `∩[A033229(n+1), A045390(n+1)]` -/
def P13509738251214469634.Spec : Prop :=
  ∀ n, (P13509738251214469634.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P12481269893865757336

`∩[A209544(n+1), A033215(n+1)]`
-/

namespace A139506.P12481269893865757336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P12481269893865757336

namespace A139506

/-- `∩[A209544(n+1), A033215(n+1)]` -/
def P12481269893865757336.Spec : Prop :=
  ∀ n, (P12481269893865757336.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P13164411239365466410

`∩[A033229(n+1), A068228(n+1)]`
-/

namespace A139506.P13164411239365466410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P13164411239365466410

namespace A139506

/-- `∩[A033229(n+1), A068228(n+1)]` -/
def P13164411239365466410.Spec : Prop :=
  ∀ n, (P13164411239365466410.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P13906116816089869303

`∩[A007519(n+1), A139492(n+1)]`
-/

namespace A139506.P13906116816089869303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P13906116816089869303

namespace A139506

/-- `∩[A007519(n+1), A139492(n+1)]` -/
def P13906116816089869303.Spec : Prop :=
  ∀ n, (P13906116816089869303.a n : ℤ) = A139506 (n + 1)

end A139506

/-! ## A139506.P18248445177636735237

`∩[A045390(n+1), A139492(n+1)]`
-/

namespace A139506.P18248445177636735237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P18248445177636735237

namespace A139506

/-- `∩[A045390(n+1), A139492(n+1)]` -/
def P18248445177636735237.Spec : Prop :=
  ∀ n, (P18248445177636735237.a n : ℤ) = A139506 (n + 1)

end A139506

/-!
# A139507: Primes of the form x^2 + 27x*y + y^2 for x and y nonnegative.

The programs for A139507, there is no canonical definition to state claims against.
-/

/-! ## A139507.P9302599290971669709

`p?[A001222(3^(n+2))²+25*(n+1)]`
-/

namespace A139507.P9302599290971669709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 ^ (n + 2)) ^ 2 + (25 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139507.P9302599290971669709

/-!
# A139508: Primes of the form x^2 + 28x*y + y^2 for x and y nonnegative.

The programs for A139508, there is no canonical definition to state claims against.
-/

/-! ## A139508.P8144781090174158079

`∩[A033210(n+1), A107152(n+1)]`
-/

namespace A139508.P8144781090174158079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P8144781090174158079

/-! ## A139508.P3060507509315603351

`∩[A107152(n+1), A139494(n+1)]`
-/

namespace A139508.P3060507509315603351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P3060507509315603351

/-! ## A139508.P12580081624239943809

`∩[A107152(n+1), A267455(n+1)]`
-/

namespace A139508.P12580081624239943809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P12580081624239943809

/-! ## A139508.P1830877799224263539

`∩[A033210(n+1), A033212(n+1)]`
-/

namespace A139508.P1830877799224263539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P1830877799224263539

/-! ## A139508.P14687860724613517131

`∩[A068228(n+1), A141111(n+1)]`
-/

namespace A139508.P14687860724613517131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P14687860724613517131

/-! ## A139508.P4259921850849351476

`∩[A107152(n+1), A141111(n+1)]`
-/

namespace A139508.P4259921850849351476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P4259921850849351476

/-! ## A139508.P9933392507453057502

`∩[A139494(n+1), A216815(n+1)]`
-/

namespace A139508.P9933392507453057502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P9933392507453057502

/-! ## A139508.P10485542584995752664

`∩[A216815(n+1), A267455(n+1)]`
-/

namespace A139508.P10485542584995752664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P10485542584995752664

/-! ## A139508.P15641604303398827515

`∩[A033205(n+1), A139494(n+1)]`
-/

namespace A139508.P15641604303398827515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P15641604303398827515

/-! ## A139508.P376638484640592519

`∩[A033205(n+1), A267455(n+1)]`
-/

namespace A139508.P376638484640592519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P376638484640592519

/-! ## A139508.P15007753646053931196

`∩[A091729(n+1), A139494(n+1)]`
-/

namespace A139508.P15007753646053931196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P15007753646053931196

/-! ## A139508.P12335508035256517817

`∩[A091729(n+1), A267455(n+1)]`
-/

namespace A139508.P12335508035256517817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P12335508035256517817

/-! ## A139508.P389272538216403786

`∩[A141111(n+1), A351537(n+1)]`
-/

namespace A139508.P389272538216403786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P389272538216403786

/-! ## A139508.P9173630008002328592

`∩[A141111(n+1), A354467(n+1)]`
-/

namespace A139508.P9173630008002328592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P9173630008002328592

/-! ## A139508.P7853010338252215548

`∩[A033210(n+1), A155570(n+1)]`
-/

namespace A139508.P7853010338252215548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P7853010338252215548

/-! ## A139508.P9699816709826865934

`∩[A139494(n+1), A155570(n+1)]`
-/

namespace A139508.P9699816709826865934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P9699816709826865934

/-! ## A139508.P5083036285962700747

`∩[A141111(n+1), A155570(n+1)]`
-/

namespace A139508.P5083036285962700747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P5083036285962700747

/-! ## A139508.P5564493359194400280

`∩[A155570(n+1), A267455(n+1)]`
-/

namespace A139508.P5564493359194400280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P5564493359194400280

/-! ## A139508.P13234916528255908215

`∩[A107152(n+1), A191029(n+1)]`
-/

namespace A139508.P13234916528255908215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P13234916528255908215

/-! ## A139508.P17897951197131663511

`∩[A155570(n+1), A191029(n+1)]`
-/

namespace A139508.P17897951197131663511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139508.P17897951197131663511

/-!
# A139511: Primes of the form x^2 + 31x*y + y^2 for x and y nonnegative.

The programs for A139511, there is no canonical definition to state claims against.
-/

/-! ## A139511.P9574531466439577587

`∩[A038901(n+1), A107013(n+1)]`
-/

namespace A139511.P9574531466439577587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P9574531466439577587

/-! ## A139511.P11592112972429384092

`∩[A038901(n+1), A141177(n+1)]`
-/

namespace A139511.P11592112972429384092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P11592112972429384092

/-! ## A139511.P10145094190227533749

`∩[A107013(n+1), A191022(n+1)]`
-/

namespace A139511.P10145094190227533749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P10145094190227533749

/-! ## A139511.P11260049015804599782

`∩[A141177(n+1), A191022(n+1)]`
-/

namespace A139511.P11260049015804599782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P11260049015804599782

/-! ## A139511.P10937088428398513538

`∩[A107013(n+1), A191052(n+1)]`
-/

namespace A139511.P10937088428398513538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P10937088428398513538

/-! ## A139511.P7700614619230821482

`∩[A141177(n+1), A191052(n+1)]`
-/

namespace A139511.P7700614619230821482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P7700614619230821482

/-! ## A139511.P2533590820587160433

`∩[A035264(n+1), A107013(n+1)]`
-/

namespace A139511.P2533590820587160433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P2533590820587160433

/-! ## A139511.P7278410048492909863

`∩[A035264(n+1), A141177(n+1)]`
-/

namespace A139511.P7278410048492909863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139511.P7278410048492909863

/-!
# A139512: Primes of the form x^2 + 32*x*y + y^2 for x and y nonnegative.

The programs for A139512, there is no canonical definition to state claims against.
-/

/-! ## A139512.P12996771067481218489

`∩[A033254(n+1), A107152(n+1)]`
-/

namespace A139512.P12996771067481218489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P12996771067481218489

/-! ## A139512.P13113819640066379099

`∩[A033212(n+1), A033254(n+1)]`
-/

namespace A139512.P13113819640066379099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P13113819640066379099

/-! ## A139512.P13703440832522291730

`∩[A033254(n+1), A068228(n+1)]`
-/

namespace A139512.P13703440832522291730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P13703440832522291730

/-! ## A139512.P8699179157287927600

`∩[A033205(n+1), A106904(n+1)]`
-/

namespace A139512.P8699179157287927600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P8699179157287927600

/-! ## A139512.P14711013377368797784

`∩[A033254(n+1), A106904(n+1)]`
-/

namespace A139512.P14711013377368797784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P14711013377368797784

/-! ## A139512.P3252531706863922881

`∩[A106904(n+1), A107152(n+1)]`
-/

namespace A139512.P3252531706863922881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P3252531706863922881

/-! ## A139512.P18337153700602481862

`∩[A106904(n+1), A216815(n+1)]`
-/

namespace A139512.P18337153700602481862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P18337153700602481862

/-! ## A139512.P12657669303899448174

`∩[A068228(n+1), A141773(n+1)]`
-/

namespace A139512.P12657669303899448174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P12657669303899448174

/-! ## A139512.P12839625794636027260

`∩[A107152(n+1), A141773(n+1)]`
-/

namespace A139512.P12839625794636027260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P12839625794636027260

/-! ## A139512.P16389241902427890024

`∩[A091729(n+1), A106904(n+1)]`
-/

namespace A139512.P16389241902427890024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P16389241902427890024

/-! ## A139512.P17455304326090384324

`∩[A033254(n+1), A351537(n+1)]`
-/

namespace A139512.P17455304326090384324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P17455304326090384324

/-! ## A139512.P18072702507923447197

`∩[A141773(n+1), A351537(n+1)]`
-/

namespace A139512.P18072702507923447197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P18072702507923447197

/-! ## A139512.P12447827543920367612

`∩[A033254(n+1), A354467(n+1)]`
-/

namespace A139512.P12447827543920367612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P12447827543920367612

/-! ## A139512.P6755817634430413062

`∩[A141773(n+1), A354467(n+1)]`
-/

namespace A139512.P6755817634430413062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P6755817634430413062

/-! ## A139512.P13897480504208564201

`∩[A033254(n+1), A155570(n+1)]`
-/

namespace A139512.P13897480504208564201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P13897480504208564201

/-! ## A139512.P9386106287942214779

`∩[A106904(n+1), A155570(n+1)]`
-/

namespace A139512.P9386106287942214779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P9386106287942214779

/-! ## A139512.P4884518445507870030

`∩[A141773(n+1), A155570(n+1)]`
-/

namespace A139512.P4884518445507870030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P4884518445507870030

/-! ## A139512.P10308350795834015812

`∩[A033254(n+1), A038874(n+1)]`
-/

namespace A139512.P10308350795834015812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P10308350795834015812

/-! ## A139512.P4157610208674992377

`∩[A033254(n+1), A038929(n+1)]`
-/

namespace A139512.P4157610208674992377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P4157610208674992377

/-! ## A139512.P453209979897104173

`∩[A033254(n+1), A097933(n+1)]`
-/

namespace A139512.P453209979897104173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139512.P453209979897104173

/-!
# A139513: Primes congruent to {1, 3, 7, 9} mod 20.

The programs for A139513, the canonical program `A139513.P838455076749893020` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139513 has offset 1).

The definition of A139513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139513.P838455076749893020

`p?[a(n-4)+20]` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139513

/-- `p?[a(n-4)+20]` -/
def P838455076749893020.Spec : Prop :=
  ∀ n, (P838455076749893020.a n : ℤ) = A139513 (n + 1)

theorem P838455076749893020.correct : P838455076749893020.Spec := by
  intro n
  simp only [A139513, Nat.add_sub_cancel]

end A139513

/-! ## A139513.P3595429792950360474

`A296922(A065475(n+1))`
-/

namespace A139513.P3595429792950360474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (A065475 (n + 1)).toNat

end

end A139513.P3595429792950360474

namespace A139513

/-- `A296922(A065475(n+1))` -/
def P3595429792950360474.Spec : Prop :=
  ∀ n, P3595429792950360474.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P15080734106688495190

`A296922(A181440(n+2))`
-/

namespace A139513.P15080734106688495190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (A181440 (n + 2)).toNat

end

end A139513.P15080734106688495190

namespace A139513

/-- `A296922(A181440(n+2))` -/
def P15080734106688495190.Spec : Prop :=
  ∀ n, P15080734106688495190.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P12458492021094630853

`A296922(A184985(n+2))`
-/

namespace A139513.P12458492021094630853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (A184985 (n + 2)).toNat

end

end A139513.P12458492021094630853

namespace A139513

/-- `A296922(A184985(n+2))` -/
def P12458492021094630853.Spec : Prop :=
  ∀ n, P12458492021094630853.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P2323001588323860931

`A240920(n+3)-A000038(n)`
-/

namespace A139513.P2323001588323860931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 3) - A000038 n

end

end A139513.P2323001588323860931

namespace A139513

/-- `A240920(n+3)-A000038(n)` -/
def P2323001588323860931.Spec : Prop :=
  ∀ n, P2323001588323860931.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P11774294177793962609

`∩[A004139(n+1), A091727(n+1)]`
-/

namespace A139513.P11774294177793962609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139513.P11774294177793962609

namespace A139513

/-- `∩[A004139(n+1), A091727(n+1)]` -/
def P11774294177793962609.Spec : Prop :=
  ∀ n, (P11774294177793962609.a n : ℤ) = A139513 (n + 1)

end A139513

/-! ## A139513.P11506382025224717832

`∩[A045319(n+1), A296922(n+1)]`
-/

namespace A139513.P11506382025224717832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139513.P11506382025224717832

namespace A139513

/-- `∩[A045319(n+1), A296922(n+1)]` -/
def P11506382025224717832.Spec : Prop :=
  ∀ n, (P11506382025224717832.a n : ℤ) = A139513 (n + 1)

end A139513

/-! ## A139513.P549836061244576144

`∩[A091727(n+1), A104381(n+1)]`
-/

namespace A139513.P549836061244576144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139513.P549836061244576144

namespace A139513

/-- `∩[A091727(n+1), A104381(n+1)]` -/
def P549836061244576144.Spec : Prop :=
  ∀ n, (P549836061244576144.a n : ℤ) = A139513 (n + 1)

end A139513

/-! ## A139513.P10549565207477341904

`filter[A296922(n+1), A358847(#)]`
-/

namespace A139513.P10549565207477341904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A139513.P10549565207477341904

namespace A139513

/-- `filter[A296922(n+1), A358847(#)]` -/
def P10549565207477341904.Spec : Prop :=
  ∀ n, P10549565207477341904.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P11585303092610461448

`filter[A240920(n+2), A358847(#)]`
-/

namespace A139513.P11585303092610461448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A139513.P11585303092610461448

namespace A139513

/-- `filter[A240920(n+2), A358847(#)]` -/
def P11585303092610461448.Spec : Prop :=
  ∀ n, P11585303092610461448.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P1505516159644787598

`filter[A296922(n+1), A011558(#)]`
-/

namespace A139513.P1505516159644787598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A139513.P1505516159644787598

namespace A139513

/-- `filter[A296922(n+1), A011558(#)]` -/
def P1505516159644787598.Spec : Prop :=
  ∀ n, P1505516159644787598.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P9033937921544384043

`filter[A240920(n+2), A011558(#)]`
-/

namespace A139513.P9033937921544384043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A139513.P9033937921544384043

namespace A139513

/-- `filter[A240920(n+2), A011558(#)]` -/
def P9033937921544384043.Spec : Prop :=
  ∀ n, P9033937921544384043.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P18071322470431444808

`p?[A045797(n+1)]`
-/

namespace A139513.P18071322470431444808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139513.P18071322470431444808

namespace A139513

/-- `p?[A045797(n+1)]` -/
def P18071322470431444808.Spec : Prop :=
  ∀ n, P18071322470431444808.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P886405117301572833

`p?[A045798(n+1)-10]`
-/

namespace A139513.P886405117301572833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139513.P886405117301572833

namespace A139513

/-- `p?[A045798(n+1)-10]` -/
def P886405117301572833.Spec : Prop :=
  ∀ n, P886405117301572833.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P11322733071758463282

`lt[1, A091728(n+1)]+1`
-/

namespace A139513.P11322733071758463282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A139513.P11322733071758463282

namespace A139513

/-- `lt[1, A091728(n+1)]+1` -/
def P11322733071758463282.Spec : Prop :=
  ∀ n, (P11322733071758463282.a n : ℤ) = A139513 (n + 1)

end A139513

/-! ## A139513.P5645826019542818749

`eq[2, A091728(n+2)]+2`
-/

namespace A139513.P5645826019542818749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091728 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A139513.P5645826019542818749

namespace A139513

/-- `eq[2, A091728(n+2)]+2` -/
def P5645826019542818749.Spec : Prop :=
  ∀ n, (P5645826019542818749.a n : ℤ) = A139513 (n + 1)

end A139513

/-! ## A139513.P12746129758944974749

`record[A006530(A045797(n+2))]`
-/

namespace A139513.P12746129758944974749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045797 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139513.P12746129758944974749

namespace A139513

/-- `record[A006530(A045797(n+2))]` -/
def P12746129758944974749.Spec : Prop :=
  ∀ n, P12746129758944974749.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P4565808502190379653

`filter[A045797(n+1), A010051(#)]`
-/

namespace A139513.P4565808502190379653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A139513.P4565808502190379653

namespace A139513

/-- `filter[A045797(n+1), A010051(#)]` -/
def P4565808502190379653.Spec : Prop :=
  ∀ n, P4565808502190379653.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P1776277801370237218

`filter[A045797(n+1), A323153(#)]`
-/

namespace A139513.P1776277801370237218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A139513.P1776277801370237218

namespace A139513

/-- `filter[A045797(n+1), A323153(#)]` -/
def P1776277801370237218.Spec : Prop :=
  ∀ n, P1776277801370237218.a n = A139513 (n + 1)

end A139513

/-! ## A139513.P647712306983669803

`filter[A045797(n+1), A353670(#)]`
-/

namespace A139513.P647712306983669803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A139513.P647712306983669803

namespace A139513

/-- `filter[A045797(n+1), A353670(#)]` -/
def P647712306983669803.Spec : Prop :=
  ∀ n, P647712306983669803.a n = A139513 (n + 1)

end A139513

/-!
# A139514: Denominators of an Egyptian fraction for Pi, using only prime numbers and allowing repetitions.

The programs for A139514, there is no canonical definition to state claims against.
-/

/-! ## A139514.P15988488465627971590

`A137238(A036421(n)+1)`
-/

namespace A139514.P15988488465627971590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137238 (A036421 n + 1).toNat

end

end A139514.P15988488465627971590

/-! ## A139514.P5833790473891147531

`A137238(A036630(n)+1)`
-/

namespace A139514.P5833790473891147531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137238 (A036630 n + 1).toNat

end

end A139514.P5833790473891147531

/-! ## A139514.P7178750066012090679

`A137238(A036637(n)+1)`
-/

namespace A139514.P7178750066012090679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137238 (A036637 n + 1).toNat

end

end A139514.P7178750066012090679

/-! ## A139514.P4902827407472544808

`A316504(or(3, A000055(n)))`
-/

namespace A139514.P4902827407472544808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316504 (Int.lor 3 (A000055 n)).toNat

end

end A139514.P4902827407472544808

/-! ## A139514.P11124663997301636333

`A316504(or(3, A120036(n)))`
-/

namespace A139514.P11124663997301636333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316504 (Int.lor 3 (A120036 n)).toNat

end

end A139514.P11124663997301636333

/-!
# A139516: Denominators of an Egyptian fraction for "e", using only prime numbers and allowing repetitions.

The programs for A139516, there is no canonical definition to state claims against.
-/

/-! ## A139516.P4880230302630981598

`A131173(A182159(n))+2`
-/

namespace A139516.P4880230302630981598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131173 (A182159 n).toNat + 2

end

end A139516.P4880230302630981598

/-!
# A139518: Denominators of an Egyptian Fraction for phi = (1+sqrt(5))/2, using only prime numbers and allowing repetitions.

The programs for A139518, there is no canonical definition to state claims against.
-/

/-! ## A139518.P1444951354061099341

`p?[lcm(A264393(n), A281012(n+1))]`
-/

namespace A139518.P1444951354061099341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A264393 n) (A281012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139518.P1444951354061099341

/-! ## A139518.P5067382341803163936

`p?[A234750(A330843(n)+A229046(n))]`
-/

namespace A139518.P5067382341803163936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234750 (A330843 n + A229046 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139518.P5067382341803163936

/-!
# A139520: Denominators of an Egyptian fraction for Catalan constant, using only prime numbers and allowing repetitions.

The programs for A139520, there is no canonical definition to state claims against.
-/

/-! ## A139520.P8739915113892610600

`A240028(A177385(n)+n)`
-/

namespace A139520.P8739915113892610600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (A177385 n + (n : ℤ)).toNat

end

end A139520.P8739915113892610600

/-!
# A139521: Denominators of an Egyptian Fraction for sqrt(2), using only prime numbers and allowing repetitions.

The programs for A139521, there is no canonical definition to state claims against.
-/

/-! ## A139521.P18079305911277136256

`A216884(∑[A101390(n+1)²])`
-/

namespace A139521.P18079305911277136256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101390 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139521.P18079305911277136256

/-! ## A139521.P9977764489423812404

`A000040(floor((A189771(2*(n+1))+2)/sqrt(2)))`
-/

namespace A139521.P9977764489423812404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(A189771 (2 * (n + 1)) + 2 : ℝ) / Real.sqrt (2 : ℝ)⌋.toNat

end

end A139521.P9977764489423812404

/-!
# A139524: Triangle T(n,k) read by rows: the coefficient of [x^k] of the polynomial 2*(x+1)^n + 2^n in row n, column k.

The programs for A139524, the canonical program `A139524.P6795429159031582513` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139524 has offset 0).

The definition of A139524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139524.P6795429159031582513

`A130123(A061579(n))+A028326(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139524

/-- `A130123(A061579(n))+A028326(n)` -/
def P6795429159031582513.Spec : Prop :=
  ∀ n, P6795429159031582513.a n = A139524 n

theorem P6795429159031582513.correct : P6795429159031582513.Spec := by
  intro n
  simp only [A139524]

end A139524

/-! ## A139524.P6459922891284825259

`A131572(A198954(n))+A028326(n)`
-/

namespace A139524.P6459922891284825259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A198954 n).toNat + A028326 n

end

end A139524.P6459922891284825259

namespace A139524

/-- `A131572(A198954(n))+A028326(n)` -/
def P6459922891284825259.Spec : Prop :=
  ∀ n, P6459922891284825259.a n = A139524 n

end A139524

/-! ## A139524.P7788455566533440227

`A028326(n)+A010054(n)*A013620(n)`
-/

namespace A139524.P7788455566533440227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A013620 n

end

end A139524.P7788455566533440227

namespace A139524

/-- `A028326(n)+A010054(n)*A013620(n)` -/
def P7788455566533440227.Spec : Prop :=
  ∀ n, P7788455566533440227.a n = A139524 n

end A139524

/-! ## A139524.P11325321692886752703

`A028326(n)+A010054(n)*A036561(n)`
-/

namespace A139524.P11325321692886752703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A036561 n

end

end A139524.P11325321692886752703

namespace A139524

/-- `A028326(n)+A010054(n)*A036561(n)` -/
def P11325321692886752703.Spec : Prop :=
  ∀ n, P11325321692886752703.a n = A139524 n

end A139524

/-! ## A139524.P8203513910627378882

`A028326(n)+A010054(n)*A038207(n)`
-/

namespace A139524.P8203513910627378882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A038207 n

end

end A139524.P8203513910627378882

namespace A139524

/-- `A028326(n)+A010054(n)*A038207(n)` -/
def P8203513910627378882.Spec : Prop :=
  ∀ n, P8203513910627378882.a n = A139524 n

end A139524

/-! ## A139524.P9851602028218036057

`A028326(n)+A010054(n)*A038208(n)`
-/

namespace A139524.P9851602028218036057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A038208 n

end

end A139524.P9851602028218036057

namespace A139524

/-- `A028326(n)+A010054(n)*A038208(n)` -/
def P9851602028218036057.Spec : Prop :=
  ∀ n, P9851602028218036057.a n = A139524 n

end A139524

/-! ## A139524.P10207249327956705788

`A028326(n)+A010054(n)*A054582(n)`
-/

namespace A139524.P10207249327956705788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A054582 n

end

end A139524.P10207249327956705788

namespace A139524

/-- `A028326(n)+A010054(n)*A054582(n)` -/
def P10207249327956705788.Spec : Prop :=
  ∀ n, P10207249327956705788.a n = A139524 n

end A139524

/-! ## A139524.P7811628759150203545

`A028326(n)+A010054(n)*A055248(n)`
-/

namespace A139524.P7811628759150203545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A055248 n

end

end A139524.P7811628759150203545

namespace A139524

/-- `A028326(n)+A010054(n)*A055248(n)` -/
def P7811628759150203545.Spec : Prop :=
  ∀ n, P7811628759150203545.a n = A139524 n

end A139524

/-! ## A139524.P5872449049192716649

`A028326(n)+A010054(n)*A102363(n)`
-/

namespace A139524.P5872449049192716649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A102363 n

end

end A139524.P5872449049192716649

namespace A139524

/-- `A028326(n)+A010054(n)*A102363(n)` -/
def P5872449049192716649.Spec : Prop :=
  ∀ n, P5872449049192716649.a n = A139524 n

end A139524

/-! ## A139524.P15317549919553946477

`A028326(n)+A010054(n)*A130321(n)`
-/

namespace A139524.P15317549919553946477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A010054 n * A130321 n

end

end A139524.P15317549919553946477

namespace A139524

/-- `A028326(n)+A010054(n)*A130321(n)` -/
def P15317549919553946477.Spec : Prop :=
  ∀ n, P15317549919553946477.a n = A139524 n

end A139524

/-! ## A139524.P5337414305680622354

`A028326(n)+∑[A007318(n)]*A010054(n)`
-/

namespace A139524.P5337414305680622354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A010054 n

end

end A139524.P5337414305680622354

namespace A139524

/-- `A028326(n)+∑[A007318(n)]*A010054(n)` -/
def P5337414305680622354.Spec : Prop :=
  ∀ n, P5337414305680622354.a n = A139524 n

end A139524

/-! ## A139524.P3431621284767671112

`A048298(A129143(n+1))+A028326(n)`
-/

namespace A139524.P3431621284767671112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A129143 (n + 1)).toNat + A028326 n

end

end A139524.P3431621284767671112

namespace A139524

/-- `A048298(A129143(n+1))+A028326(n)` -/
def P3431621284767671112.Spec : Prop :=
  ∀ n, P3431621284767671112.a n = A139524 n

end A139524

/-!
# A139525: A trinomial made into a single variable polynomial coefficient triangle form three Pascallike factorial binomials in {x,y},{y,z} and {x,z}: binomials as: g(n,m)= If[m < "is less than" Floor[n/2], m!, (n - m)! ]; f(x,y,n)=Sum[g(n, i)*x^i*y^(n - i), {i, 0, n}]; p(x,y,z,n)=f(x,y,n)+f(y,z,n)+f(x,z,n).

The programs for A139525, there is no canonical definition to state claims against.
-/

/-! ## A139525.P2167568999164156529

`A242460(A242438(n+3)+39)`
-/

namespace A139525.P2167568999164156529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242460 (A242438 (n + 3) + 39).toNat

end

end A139525.P2167568999164156529

/-!
# A139526: Triangle A061356 read right to left.

The programs for A139526, the canonical program `A139526.P8121772475475467117` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139526 has offset 2).

The definition of A139526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139526.P12912999566043153122

`(1-C(∑[char[∑[n]]], 2)+n)*A049323(n)`
-/

namespace A139526.P12912999566043153122
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A049323 n

end

end A139526.P12912999566043153122

namespace A139526

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A049323(n)` -/
def P12912999566043153122.Spec : Prop :=
  ∀ n, P12912999566043153122.a n = A139526 (n + 2)

end A139526

/-! ## A139526.P2165955604335157274

`∑[char[∑[n]]]^(n-C(∑[char[∑[n]]], 2))*A007318(n)`
-/

namespace A139526.P2165955604335157274
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

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ) * (A007318 n : ℚ)

end

end A139526.P2165955604335157274

namespace A139526

/-- `∑[char[∑[n]]]^(n-C(∑[char[∑[n]]], 2))*A007318(n)` -/
def P2165955604335157274.Spec : Prop :=
  ∀ n, P2165955604335157274.a n = (A139526 (n + 2) : ℚ)

end A139526

/-! ## A139526.P8672038223355775570

`A002260(n+1)*A049323(n)`
-/

namespace A139526.P8672038223355775570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A049323 n

end

end A139526.P8672038223355775570

namespace A139526

/-- `A002260(n+1)*A049323(n)` -/
def P8672038223355775570.Spec : Prop :=
  ∀ n, P8672038223355775570.a n = A139526 (n + 2)

end A139526

/-! ## A139526.P8121772475475467117

`A007318(n)*A076112(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139526

/-- `A007318(n)*A076112(n+1)` -/
def P8121772475475467117.Spec : Prop :=
  ∀ n, P8121772475475467117.a n = A139526 (n + 2)

theorem P8121772475475467117.correct : P8121772475475467117.Spec := by
  intro n
  simp only [A139526, Nat.add_sub_cancel]

end A139526

/-! ## A139526.P7664716749217881374

`A058127(n+1)*A074909(n)`
-/

namespace A139526.P7664716749217881374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (n + 1) * A074909 n

end

end A139526.P7664716749217881374

namespace A139526

/-- `A058127(n+1)*A074909(n)` -/
def P7664716749217881374.Spec : Prop :=
  ∀ n, P7664716749217881374.a n = A139526 (n + 2)

end A139526

/-! ## A139526.P5925254095220270723

`A219694(n+1)/(C(comp[∑[n]]-n, 2)-n)!`
-/

namespace A139526.P5925254095220270723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℚ)

end

end A139526.P5925254095220270723

namespace A139526

/-- `A219694(n+1)/(C(comp[∑[n]]-n, 2)-n)!` -/
def P5925254095220270723.Spec : Prop :=
  ∀ n, P5925254095220270723.a n = (A139526 (n + 2) : ℚ)

end A139526

/-! ## A139526.P8044921758701428240

`A061356(∑[char[∑[n]]]²+1-n)`
-/

namespace A139526.P8044921758701428240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - (n : ℤ))).toNat

end

end A139526.P8044921758701428240

namespace A139526

/-- `A061356(∑[char[∑[n]]]²+1-n)` -/
def P8044921758701428240.Spec : Prop :=
  ∀ n, P8044921758701428240.a n = A139526 (n + 2)

end A139526

/-!
# A139527: Numbers n such that numbers 24n+5 are primes.

The programs for A139527, the canonical program `A139527.P8948728843495673632` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139527 has offset 1).

The definition of A139527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139527.P8948728843495673632

`floor(A107003(n+1)/24)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139527

/-- `floor(A107003(n+1)/24)` -/
def P8948728843495673632.Spec : Prop :=
  ∀ n, P8948728843495673632.a n = A139527 (n + 1)

theorem P8948728843495673632.correct : P8948728843495673632.Spec := by
  intro n
  simp only [A139527, Nat.add_sub_cancel]

end A139527

/-! ## A139527.P14696835191923252438

`floor(p?[a(n-1)+24]/24)` with `a(0)=5`
-/

namespace A139527.P14696835191923252438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24⌋

end

end A139527.P14696835191923252438

namespace A139527

/-- `floor(p?[a(n-1)+24]/24)` -/
def P14696835191923252438.Spec : Prop :=
  ∀ n, P14696835191923252438.a n = A139527 (n + 1)

end A139527

/-! ## A139527.P7015552428479292502

`round(p?[a(n-1)+24]/24)` with `a(0)=5`
-/

namespace A139527.P7015552428479292502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24)

end

end A139527.P7015552428479292502

namespace A139527

/-- `round(p?[a(n-1)+24]/24)` -/
def P7015552428479292502.Spec : Prop :=
  ∀ n, P7015552428479292502.a n = A139527 (n + 1)

end A139527

/-! ## A139527.P12199440062088110473

`eq[A016777(2*n), A260165(2*n)]`
-/

namespace A139527.P12199440062088110473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260165 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139527.P12199440062088110473

namespace A139527

/-- `eq[A016777(2*n), A260165(2*n)]` -/
def P12199440062088110473.Spec : Prop :=
  ∀ n, (P12199440062088110473.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P4975150203373060268

`eq[1, A001222(24*n+5)]`
-/

namespace A139527.P4975150203373060268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P4975150203373060268

namespace A139527

/-- `eq[1, A001222(24*n+5)]` -/
def P4975150203373060268.Spec : Prop :=
  ∀ n, (P4975150203373060268.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P3830428793974119415

`eq[2, A000005(2*(12*n+2)+1)]`
-/

namespace A139527.P3830428793974119415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (12 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P3830428793974119415

namespace A139527

/-- `eq[2, A000005(2*(12*n+2)+1)]` -/
def P3830428793974119415.Spec : Prop :=
  ∀ n, (P3830428793974119415.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P1027449294491480286

`eq[1, A101264(2*A016921(n))]`
-/

namespace A139527.P1027449294491480286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * A016921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P1027449294491480286

namespace A139527

/-- `eq[1, A101264(2*A016921(n))]` -/
def P1027449294491480286.Spec : Prop :=
  ∀ n, (P1027449294491480286.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P17317131166471643551

`lt[A000005(Δ[4*(A000567(n)+1)]+1), 3]`
-/

namespace A139527.P17317131166471643551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000567 n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A139527.P17317131166471643551

namespace A139527

/-- `lt[A000005(Δ[4*(A000567(n)+1)]+1), 3]` -/
def P17317131166471643551.Spec : Prop :=
  ∀ n, (P17317131166471643551.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P13587768269762392813

`lt[A008594(2*n), A000010(A017581(2*n))]`
-/

namespace A139527.P13587768269762392813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139527.P13587768269762392813

namespace A139527

/-- `lt[A008594(2*n), A000010(A017581(2*n))]` -/
def P13587768269762392813.Spec : Prop :=
  ∀ n, (P13587768269762392813.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P10500005363029489781

`lt[A017545(2*n), A000010(A017581(2*n))]`
-/

namespace A139527.P10500005363029489781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139527.P10500005363029489781

namespace A139527

/-- `lt[A017545(2*n), A000010(A017581(2*n))]` -/
def P10500005363029489781.Spec : Prop :=
  ∀ n, (P10500005363029489781.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P8679914144500691558

`lt[A000203(A017581(2*n)), A017605(2*n)]`
-/

namespace A139527.P8679914144500691558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139527.P8679914144500691558

namespace A139527

/-- `lt[A000203(A017581(2*n)), A017605(2*n)]` -/
def P8679914144500691558.Spec : Prop :=
  ∀ n, (P8679914144500691558.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P10797844322416277278

`lt[A000203(A017581(2*n)), A017617(2*n)]`
-/

namespace A139527.P10797844322416277278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139527.P10797844322416277278

namespace A139527

/-- `lt[A000203(A017581(2*n)), A017617(2*n)]` -/
def P10797844322416277278.Spec : Prop :=
  ∀ n, (P10797844322416277278.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P16038042270842376541

`lt[A000203(A017581(2*n)), A017641(2*n)]`
-/

namespace A139527.P16038042270842376541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139527.P16038042270842376541

namespace A139527

/-- `lt[A000203(A017581(2*n)), A017641(2*n)]` -/
def P16038042270842376541.Spec : Prop :=
  ∀ n, (P16038042270842376541.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P18113212706226294155

`lt[A000203(A017581(2*n)), A017581(2*n+1)]`
-/

namespace A139527.P18113212706226294155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139527.P18113212706226294155

namespace A139527

/-- `lt[A000203(A017581(2*n)), A017581(2*n+1)]` -/
def P18113212706226294155.Spec : Prop :=
  ∀ n, (P18113212706226294155.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P3906871202921269609

`eq[2, A175462(3*n)]`
-/

namespace A139527.P3906871202921269609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P3906871202921269609

namespace A139527

/-- `eq[2, A175462(3*n)]` -/
def P3906871202921269609.Spec : Prop :=
  ∀ n, (P3906871202921269609.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P10114597845813020781

`eq[2, A278223(12*n+3)]`
-/

namespace A139527.P10114597845813020781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (12 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P10114597845813020781

namespace A139527

/-- `eq[2, A278223(12*n+3)]` -/
def P10114597845813020781.Spec : Prop :=
  ∀ n, (P10114597845813020781.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P10057866896795632288

`record[n/(3-A293892(A259755(n+1)+1))]`
-/

namespace A139527.P10057866896795632288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 - A293892 (A259755 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139527.P10057866896795632288

namespace A139527

/-- `record[n/(3-A293892(A259755(n+1)+1))]` -/
def P10057866896795632288.Spec : Prop :=
  ∀ n, P10057866896795632288.a n = (A139527 (n + 1) : ℚ)

end A139527

/-! ## A139527.P475433125474881005

`eq[1, A167020(4*n+1)]`
-/

namespace A139527.P475433125474881005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P475433125474881005

namespace A139527

/-- `eq[1, A167020(4*n+1)]` -/
def P475433125474881005.Spec : Prop :=
  ∀ n, (P475433125474881005.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P11444241540226187938

`eq[1, A016014(A017557(n)-1)]`
-/

namespace A139527.P11444241540226187938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A017557 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P11444241540226187938

namespace A139527

/-- `eq[1, A016014(A017557(n)-1)]` -/
def P11444241540226187938.Spec : Prop :=
  ∀ n, (P11444241540226187938.a n : ℤ) = A139527 (n + 1)

end A139527

/-! ## A139527.P2707092333554454285

`eq[2, A049716(A017569(n)-1)]`
-/

namespace A139527.P2707092333554454285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (A017569 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139527.P2707092333554454285

namespace A139527

/-- `eq[2, A049716(A017569(n)-1)]` -/
def P2707092333554454285.Spec : Prop :=
  ∀ n, (P2707092333554454285.a n : ℤ) = A139527 (n + 1)

end A139527

/-!
# A139528: Numbers k such that 24*k + 11 is prime.

The programs for A139528, the canonical program `A139528.P15347248445636500749` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139528 has offset 1).

The definition of A139528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139528.P15347248445636500749

`eq[2*n+1, A295012(2*n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139528

/-- `eq[2*n+1, A295012(2*n+1)]` -/
def P15347248445636500749.Spec : Prop :=
  ∀ n, (P15347248445636500749.a n : ℤ) = A139528 (n + 1)

theorem P15347248445636500749.correct : P15347248445636500749.Spec := by
  intro n
  simp only [A139528, Nat.add_sub_cancel]

end A139528

/-! ## A139528.P17885278324317733821

`eq[2*n+1, A260166(n)]`
-/

namespace A139528.P17885278324317733821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P17885278324317733821

namespace A139528

/-- `eq[2*n+1, A260166(n)]` -/
def P17885278324317733821.Spec : Prop :=
  ∀ n, (P17885278324317733821.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P16529152458361833562

`eq[A260166(n), A267872(n)]`
-/

namespace A139528.P16529152458361833562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139528.P16529152458361833562

namespace A139528

/-- `eq[A260166(n), A267872(n)]` -/
def P16529152458361833562.Spec : Prop :=
  ∀ n, (P16529152458361833562.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P3844751527590622281

`eq[A053229(n+1), A053229(A260166(n)-n)]`
-/

namespace A139528.P3844751527590622281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (A260166 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139528.P3844751527590622281

namespace A139528

/-- `eq[A053229(n+1), A053229(A260166(n)-n)]` -/
def P3844751527590622281.Spec : Prop :=
  ∀ n, (P3844751527590622281.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P11748969508317602798

`eq[A089684(n+1), A089684(A260166(n)-n)]`
-/

namespace A139528.P11748969508317602798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (A260166 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139528.P11748969508317602798

namespace A139528

/-- `eq[A089684(n+1), A089684(A260166(n)-n)]` -/
def P11748969508317602798.Spec : Prop :=
  ∀ n, (P11748969508317602798.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P2800854322945960650

`eq[A326835(n+1), A326835(A260166(n)-n)]`
-/

namespace A139528.P2800854322945960650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (A260166 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139528.P2800854322945960650

namespace A139528

/-- `eq[A326835(n+1), A326835(A260166(n)-n)]` -/
def P2800854322945960650.Spec : Prop :=
  ∀ n, (P2800854322945960650.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P10197200468175440661

`eq[0, A294614(2*n+1)]`
-/

namespace A139528.P10197200468175440661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294614 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P10197200468175440661

namespace A139528

/-- `eq[0, A294614(2*n+1)]` -/
def P10197200468175440661.Spec : Prop :=
  ∀ n, (P10197200468175440661.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P11163171749351991559

`eq[2*n+1, A260295(2*n)]`
-/

namespace A139528.P11163171749351991559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260295 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P11163171749351991559

namespace A139528

/-- `eq[2*n+1, A260295(2*n)]` -/
def P11163171749351991559.Spec : Prop :=
  ∀ n, (P11163171749351991559.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P1569412608681881673

`eq[1, A075743(8*n+3)]`
-/

namespace A139528.P1569412608681881673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P1569412608681881673

namespace A139528

/-- `eq[1, A075743(8*n+3)]` -/
def P1569412608681881673.Spec : Prop :=
  ∀ n, (P1569412608681881673.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P8378053610829474058

`lt[A001222(4*6*n+11), 2]`
-/

namespace A139528.P8378053610829474058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (6 * n) + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139528.P8378053610829474058

namespace A139528

/-- `lt[A001222(4*6*n+11), 2]` -/
def P8378053610829474058.Spec : Prop :=
  ∀ n, (P8378053610829474058.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P17950531045428173542

`eq[2, A000005(4*(6*n+2)+3)]`
-/

namespace A139528.P17950531045428173542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (6 * n + 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P17950531045428173542

namespace A139528

/-- `eq[2, A000005(4*(6*n+2)+3)]` -/
def P17950531045428173542.Spec : Prop :=
  ∀ n, (P17950531045428173542.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P9056262693357547609

`eq[1, A001222(A017653(2*n))]`
-/

namespace A139528.P9056262693357547609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017653 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P9056262693357547609

namespace A139528

/-- `eq[1, A001222(A017653(2*n))]` -/
def P9056262693357547609.Spec : Prop :=
  ∀ n, (P9056262693357547609.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P15047937474066491566

`eq[1, A156706(A004767(2*n))²]`
-/

namespace A139528.P15047937474066491566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A004767 (2 * n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P15047937474066491566

namespace A139528

/-- `eq[1, A156706(A004767(2*n))²]` -/
def P15047937474066491566.Spec : Prop :=
  ∀ n, (P15047937474066491566.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P6470299333098163103

`eq[1, A001222(2*A016969(2*n)+1)]`
-/

namespace A139528.P6470299333098163103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A016969 (2 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P6470299333098163103

namespace A139528

/-- `eq[1, A001222(2*A016969(2*n)+1)]` -/
def P6470299333098163103.Spec : Prop :=
  ∀ n, (P6470299333098163103.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P8577277648274344461

`eq[1, A001222(12*A004767(n)/2-7)]`
-/

namespace A139528.P8577277648274344461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((12 * A004767 n : ℚ) / 2 - 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P8577277648274344461

namespace A139528

/-- `eq[1, A001222(12*A004767(n)/2-7)]` -/
def P8577277648274344461.Spec : Prop :=
  ∀ n, (P8577277648274344461.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P16526203289250916722

`lt[A017605(2*n), A000010(A017653(2*n))]`
-/

namespace A139528.P16526203289250916722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017653 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139528.P16526203289250916722

namespace A139528

/-- `lt[A017605(2*n), A000010(A017653(2*n))]` -/
def P16526203289250916722.Spec : Prop :=
  ∀ n, (P16526203289250916722.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P9207766798316327233

`lt[A000203(A017653(2*n)), A017605(2*n+1)]`
-/

namespace A139528.P9207766798316327233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017653 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139528.P9207766798316327233

namespace A139528

/-- `lt[A000203(A017653(2*n)), A017605(2*n+1)]` -/
def P9207766798316327233.Spec : Prop :=
  ∀ n, (P9207766798316327233.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P6986361073624042428

`lt[A000203(A017653(2*n)), A017653(2*n+1)]`
-/

namespace A139528.P6986361073624042428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017653 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139528.P6986361073624042428

namespace A139528

/-- `lt[A000203(A017653(2*n)), A017653(2*n+1)]` -/
def P6986361073624042428.Spec : Prop :=
  ∀ n, (P6986361073624042428.a n : ℤ) = A139528 (n + 1)

end A139528

/-! ## A139528.P6613523712687261197

`eq[3, A136027(3*n+1)]`
-/

namespace A139528.P6613523712687261197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136027 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139528.P6613523712687261197

namespace A139528

/-- `eq[3, A136027(3*n+1)]` -/
def P6613523712687261197.Spec : Prop :=
  ∀ n, (P6613523712687261197.a n : ℤ) = A139528 (n + 1)

end A139528

/-!
# A139529: Numbers k such that 24*k + 13 is prime.

The programs for A139529, the canonical program `A139529.P12100689754848944619` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139529 has offset 1).

The definition of A139529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139529.P12100689754848944619

`(A139530(n+1)-13)/24`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139529

/-- `(A139530(n+1)-13)/24` -/
def P12100689754848944619.Spec : Prop :=
  ∀ n, P12100689754848944619.a n = (A139529 (n + 1) : ℚ)

end A139529

/-! ## A139529.P9870609681442799361

`eq[1, ∑{e}[3*(8*n+4)+1, #]]`
-/

namespace A139529.P9870609681442799361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (8 * n + 4) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139529.P9870609681442799361

namespace A139529

/-- `eq[1, ∑{e}[3*(8*n+4)+1, #]]` -/
def P9870609681442799361.Spec : Prop :=
  ∀ n, (P9870609681442799361.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P12586135134838815571

`eq[1, A075743(8*n+4)]`
-/

namespace A139529.P12586135134838815571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (8 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P12586135134838815571

namespace A139529

/-- `eq[1, A075743(8*n+4)]` -/
def P12586135134838815571.Spec : Prop :=
  ∀ n, (P12586135134838815571.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P8833576460613528588

`eq[1, A001222(24*n+13)]`
-/

namespace A139529.P8833576460613528588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P8833576460613528588

namespace A139529

/-- `eq[1, A001222(24*n+13)]` -/
def P8833576460613528588.Spec : Prop :=
  ∀ n, (P8833576460613528588.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P481078878278100334

`eq[2, A000005(24*n+13)]`
-/

namespace A139529.P481078878278100334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P481078878278100334

namespace A139529

/-- `eq[2, A000005(24*n+13)]` -/
def P481078878278100334.Spec : Prop :=
  ∀ n, (P481078878278100334.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P15069439915418834543

`lt[A000005(12*comp[2*n]+1), 3]`
-/

namespace A139529.P15069439915418834543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A139529.P15069439915418834543

namespace A139529

/-- `lt[A000005(12*comp[2*n]+1), 3]` -/
def P15069439915418834543.Spec : Prop :=
  ∀ n, (P15069439915418834543.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P16213455205510780321

`eq[24*n+13, A006530(24*n+13)]`
-/

namespace A139529.P16213455205510780321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (24 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P16213455205510780321

namespace A139529

/-- `eq[24*n+13, A006530(24*n+13)]` -/
def P16213455205510780321.Spec : Prop :=
  ∀ n, (P16213455205510780321.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P427134514825481919

`eq[24*n+13, A020639(24*n+13)]`
-/

namespace A139529.P427134514825481919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (24 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P427134514825481919

namespace A139529

/-- `eq[24*n+13, A020639(24*n+13)]` -/
def P427134514825481919.Spec : Prop :=
  ∀ n, (P427134514825481919.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P671245244202736148

`eq[1, A156706(A017113(n))]`
-/

namespace A139529.P671245244202736148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A017113 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P671245244202736148

namespace A139529

/-- `eq[1, A156706(A017113(n))]` -/
def P671245244202736148.Spec : Prop :=
  ∀ n, (P671245244202736148.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P18158881477098957892

`lt[A016933(n), A020639(A017533(2*n+1))]`
-/

namespace A139529.P18158881477098957892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139529.P18158881477098957892

namespace A139529

/-- `lt[A016933(n), A020639(A017533(2*n+1))]` -/
def P18158881477098957892.Spec : Prop :=
  ∀ n, (P18158881477098957892.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P11202814132167273913

`lt[A016945(n), A020639(A017533(2*n+1))]`
-/

namespace A139529.P11202814132167273913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139529.P11202814132167273913

namespace A139529

/-- `lt[A016945(n), A020639(A017533(2*n+1))]` -/
def P11202814132167273913.Spec : Prop :=
  ∀ n, (P11202814132167273913.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P7225318149134944991

`lt[A016957(n), A020639(A017533(2*n+1))]`
-/

namespace A139529.P7225318149134944991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139529.P7225318149134944991

namespace A139529

/-- `lt[A016957(n), A020639(A017533(2*n+1))]` -/
def P7225318149134944991.Spec : Prop :=
  ∀ n, (P7225318149134944991.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P15221310165043361305

`lt[A017293(n), A020639(A017533(2*n+1))]`
-/

namespace A139529.P15221310165043361305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139529.P15221310165043361305

namespace A139529

/-- `lt[A017293(n), A020639(A017533(2*n+1))]` -/
def P15221310165043361305.Spec : Prop :=
  ∀ n, (P15221310165043361305.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P13708737276882819271

`lt[A017533(n), A020639(A017533(2*n+1))]`
-/

namespace A139529.P13708737276882819271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139529.P13708737276882819271

namespace A139529

/-- `lt[A017533(n), A020639(A017533(2*n+1))]` -/
def P13708737276882819271.Spec : Prop :=
  ∀ n, (P13708737276882819271.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P8905814548072742267

`lt[A175462(2*n+n+1), 3]`
-/

namespace A139529.P8905814548072742267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (2 * n + (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139529.P8905814548072742267

namespace A139529

/-- `lt[A175462(2*n+n+1), 3]` -/
def P8905814548072742267.Spec : Prop :=
  ∀ n, (P8905814548072742267.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P8092484590289625938

`eq[2, A175462(A016813(n)-n)]`
-/

namespace A139529.P8092484590289625938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (A016813 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P8092484590289625938

namespace A139529

/-- `eq[2, A175462(A016813(n)-n)]` -/
def P8092484590289625938.Spec : Prop :=
  ∀ n, (P8092484590289625938.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P17857530476144808814

`lt[A001222(Δ[(6*n)²]+3), 3]`
-/

namespace A139529.P17857530476144808814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 3).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A139529.P17857530476144808814

namespace A139529

/-- `lt[A001222(Δ[(6*n)²]+3), 3]` -/
def P17857530476144808814.Spec : Prop :=
  ∀ n, (P17857530476144808814.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P5796283351284417858

`eq[3, A002373(A017617(n))]`
-/

namespace A139529.P5796283351284417858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (A017617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P5796283351284417858

namespace A139529

/-- `eq[3, A002373(A017617(n))]` -/
def P5796283351284417858.Spec : Prop :=
  ∀ n, (P5796283351284417858.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P13526768137787983922

`eq[3, A020483(A017581(n))]`
-/

namespace A139529.P13526768137787983922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P13526768137787983922

namespace A139529

/-- `eq[3, A020483(A017581(n))]` -/
def P13526768137787983922.Spec : Prop :=
  ∀ n, (P13526768137787983922.a n : ℤ) = A139529 (n + 1)

end A139529

/-! ## A139529.P7814902204694058857

`eq[1, A211173(A017617(n)-2)]`
-/

namespace A139529.P7814902204694058857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (A017617 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139529.P7814902204694058857

namespace A139529

/-- `eq[1, A211173(A017617(n)-2)]` -/
def P7814902204694058857.Spec : Prop :=
  ∀ n, (P7814902204694058857.a n : ℤ) = A139529 (n + 1)

end A139529

/-!
# A139530: Primes of the form 24*k + 13.

The programs for A139530, the canonical program `A139530.P2484004356892186038` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139530 has offset 1).

The definition of A139530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9832 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139530.P2776335509328761725

`24*A139529(n+1)+13`
-/

namespace A139530.P2776335509328761725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A139529 (n + 1) + 13

end

end A139530.P2776335509328761725

namespace A139530

/-- `24*A139529(n+1)+13` -/
def P2776335509328761725.Spec : Prop :=
  ∀ n, P2776335509328761725.a n = A139530 (n + 1)

end A139530

/-! ## A139530.P15869803361215316578

`∪[A139860(n+1), A139898(n+1)]`
-/

namespace A139530.P15869803361215316578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P15869803361215316578

namespace A139530

/-- `∪[A139860(n+1), A139898(n+1)]` -/
def P15869803361215316578.Spec : Prop :=
  ∀ n, (P15869803361215316578.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P2484004356892186038

`p?[24*n-11]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139530

/-- `p?[24*n-11]` -/
def P2484004356892186038.Spec : Prop :=
  ∀ n, P2484004356892186038.a n = A139530 (n + 1)

theorem P2484004356892186038.correct : P2484004356892186038.Spec := by
  intro n
  simp only [A139530, Nat.add_sub_cancel]

end A139530

/-! ## A139530.P4647726069073154068

`or(1, p?[24*n+13])`
-/

namespace A139530.P4647726069073154068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139530.P4647726069073154068

namespace A139530

/-- `or(1, p?[24*n+13])` -/
def P4647726069073154068.Spec : Prop :=
  ∀ n, (P4647726069073154068.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P15493893039796649673

`∩[A004627(n+1), A038874(n+1)]`
-/

namespace A139530.P15493893039796649673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P15493893039796649673

namespace A139530

/-- `∩[A004627(n+1), A038874(n+1)]` -/
def P15493893039796649673.Spec : Prop :=
  ∀ n, (P15493893039796649673.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P17311875956478334171

`∩[A007521(n+1), A038874(n+1)]`
-/

namespace A139530.P17311875956478334171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P17311875956478334171

namespace A139530

/-- `∩[A007521(n+1), A038874(n+1)]` -/
def P17311875956478334171.Spec : Prop :=
  ∀ n, (P17311875956478334171.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P18115664741258101813

`∩[A097933(n+1), A004627(n+1)]`
-/

namespace A139530.P18115664741258101813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P18115664741258101813

namespace A139530

/-- `∩[A097933(n+1), A004627(n+1)]` -/
def P18115664741258101813.Spec : Prop :=
  ∀ n, (P18115664741258101813.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P16276982298810689982

`∩[A002476(n+1), A004627(n+1)]`
-/

namespace A139530.P16276982298810689982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P16276982298810689982

namespace A139530

/-- `∩[A002476(n+1), A004627(n+1)]` -/
def P16276982298810689982.Spec : Prop :=
  ∀ n, (P16276982298810689982.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P6563335244005251426

`∩[A002476(n+1), A007521(n+1)]`
-/

namespace A139530.P6563335244005251426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P6563335244005251426

namespace A139530

/-- `∩[A002476(n+1), A007521(n+1)]` -/
def P6563335244005251426.Spec : Prop :=
  ∀ n, (P6563335244005251426.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P3408130929003580328

`∩[A004627(n+1), A007645(n+1)]`
-/

namespace A139530.P3408130929003580328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P3408130929003580328

namespace A139530

/-- `∩[A004627(n+1), A007645(n+1)]` -/
def P3408130929003580328.Spec : Prop :=
  ∀ n, (P3408130929003580328.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P17645311942244208873

`∩[A007521(n+1), A007645(n+1)]`
-/

namespace A139530.P17645311942244208873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P17645311942244208873

namespace A139530

/-- `∩[A007521(n+1), A007645(n+1)]` -/
def P17645311942244208873.Spec : Prop :=
  ∀ n, (P17645311942244208873.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P11642395411127227547

`∩[A045366(n+1), A002476(n+1)]`
-/

namespace A139530.P11642395411127227547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P11642395411127227547

namespace A139530

/-- `∩[A045366(n+1), A002476(n+1)]` -/
def P11642395411127227547.Spec : Prop :=
  ∀ n, (P11642395411127227547.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P17317574757574091919

`∩[A123365(n+1), A007521(n+1)]`
-/

namespace A139530.P17317574757574091919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P17317574757574091919

namespace A139530

/-- `∩[A123365(n+1), A007521(n+1)]` -/
def P17317574757574091919.Spec : Prop :=
  ∀ n, (P17317574757574091919.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P10895211056099298676

`∩[A279815(n+1), A004627(n+1)]`
-/

namespace A139530.P10895211056099298676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P10895211056099298676

namespace A139530

/-- `∩[A279815(n+1), A004627(n+1)]` -/
def P10895211056099298676.Spec : Prop :=
  ∀ n, (P10895211056099298676.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P10226725226521483600

`∩[A191059(n+1), A004627(n+1)]`
-/

namespace A139530.P10226725226521483600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P10226725226521483600

namespace A139530

/-- `∩[A191059(n+1), A004627(n+1)]` -/
def P10226725226521483600.Spec : Prop :=
  ∀ n, (P10226725226521483600.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P2449604335124204438

`∩[A045355(n+1), A068228(n+1)]`
-/

namespace A139530.P2449604335124204438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P2449604335124204438

namespace A139530

/-- `∩[A045355(n+1), A068228(n+1)]` -/
def P2449604335124204438.Spec : Prop :=
  ∀ n, (P2449604335124204438.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P8983283884027486573

`∩[A042999(n+1), A068228(n+1)]`
-/

namespace A139530.P8983283884027486573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P8983283884027486573

namespace A139530

/-- `∩[A042999(n+1), A068228(n+1)]` -/
def P8983283884027486573.Spec : Prop :=
  ∀ n, (P8983283884027486573.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P7901716945809230856

`∩[A055664(n+1), A007521(n+1)]`
-/

namespace A139530.P7901716945809230856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P7901716945809230856

namespace A139530

/-- `∩[A055664(n+1), A007521(n+1)]` -/
def P7901716945809230856.Spec : Prop :=
  ∀ n, (P7901716945809230856.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P9438847553981301500

`∩[A133290(n+1), A007521(n+1)]`
-/

namespace A139530.P9438847553981301500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P9438847553981301500

namespace A139530

/-- `∩[A133290(n+1), A007521(n+1)]` -/
def P9438847553981301500.Spec : Prop :=
  ∀ n, (P9438847553981301500.a n : ℤ) = A139530 (n + 1)

end A139530

/-! ## A139530.P12284382146231712596

`∩[A319041(n+1), A068228(n+1)]`
-/

namespace A139530.P12284382146231712596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139530.P12284382146231712596

namespace A139530

/-- `∩[A319041(n+1), A068228(n+1)]` -/
def P12284382146231712596.Spec : Prop :=
  ∀ n, (P12284382146231712596.a n : ℤ) = A139530 (n + 1)

end A139530

/-!
# A139531: Numbers k such that 24*k + 17 is prime.

The programs for A139531, the canonical program `A139531.P10560570213948682589` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139531 has offset 1).

The definition of A139531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139531.P15564809189849558705

`eq[A016777(2*n+1), A260165(2*n+1)]`
-/

namespace A139531.P15564809189849558705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260165 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139531.P15564809189849558705

namespace A139531

/-- `eq[A016777(2*n+1), A260165(2*n+1)]` -/
def P15564809189849558705.Spec : Prop :=
  ∀ n, (P15564809189849558705.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P10560570213948682589

`eq[1, A075743(A004770(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139531

/-- `eq[1, A075743(A004770(n+1))]` -/
def P10560570213948682589.Spec : Prop :=
  ∀ n, (P10560570213948682589.a n : ℤ) = A139531 (n + 1)

theorem P10560570213948682589.correct : P10560570213948682589.Spec := by
  intro n
  simp only [A139531, Nat.add_sub_cancel]

end A139531

/-! ## A139531.P15049289282193302841

`lt[A008594(2*n), A000010(A017581(2*n+1))]`
-/

namespace A139531.P15049289282193302841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139531.P15049289282193302841

namespace A139531

/-- `lt[A008594(2*n), A000010(A017581(2*n+1))]` -/
def P15049289282193302841.Spec : Prop :=
  ∀ n, (P15049289282193302841.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P4164428443203019189

`lt[A017545(2*n), A000010(A017581(2*n+1))]`
-/

namespace A139531.P4164428443203019189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139531.P4164428443203019189

namespace A139531

/-- `lt[A017545(2*n), A000010(A017581(2*n+1))]` -/
def P4164428443203019189.Spec : Prop :=
  ∀ n, (P4164428443203019189.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P15125826969512328218

`lt[A017581(2*n), A000010(A017581(2*n+1))]`
-/

namespace A139531.P15125826969512328218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139531.P15125826969512328218

namespace A139531

/-- `lt[A017581(2*n), A000010(A017581(2*n+1))]` -/
def P15125826969512328218.Spec : Prop :=
  ∀ n, (P15125826969512328218.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P13486331038435228878

`lt[A000203(A017581(2*n+1)), A017605(2*n+1)]`
-/

namespace A139531.P13486331038435228878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139531.P13486331038435228878

namespace A139531

/-- `lt[A000203(A017581(2*n+1)), A017605(2*n+1)]` -/
def P13486331038435228878.Spec : Prop :=
  ∀ n, (P13486331038435228878.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P5554936192887682413

`lt[A000203(A017581(2*n+1)), A017617(2*n+1)]`
-/

namespace A139531.P5554936192887682413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139531.P5554936192887682413

namespace A139531

/-- `lt[A000203(A017581(2*n+1)), A017617(2*n+1)]` -/
def P5554936192887682413.Spec : Prop :=
  ∀ n, (P5554936192887682413.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P891388591656209391

`lt[A000203(A017581(2*n+1)), A017641(2*n+1)]`
-/

namespace A139531.P891388591656209391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139531.P891388591656209391

namespace A139531

/-- `lt[A000203(A017581(2*n+1)), A017641(2*n+1)]` -/
def P891388591656209391.Spec : Prop :=
  ∀ n, (P891388591656209391.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P3308834371493968014

`eq[1, A167020(A004767(n))]`
-/

namespace A139531.P3308834371493968014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139531.P3308834371493968014

namespace A139531

/-- `eq[1, A167020(A004767(n))]` -/
def P3308834371493968014.Spec : Prop :=
  ∀ n, (P3308834371493968014.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P1267273804786362496

`eq[1, A211173(A017617(n))]`
-/

namespace A139531.P1267273804786362496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (A017617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139531.P1267273804786362496

namespace A139531

/-- `eq[1, A211173(A017617(n))]` -/
def P1267273804786362496.Spec : Prop :=
  ∀ n, (P1267273804786362496.a n : ℤ) = A139531 (n + 1)

end A139531

/-! ## A139531.P5905830172682034314

`lt[A016014(A016933(2*n+1)), 2]`
-/

namespace A139531.P5905830172682034314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A016933 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139531.P5905830172682034314

namespace A139531

/-- `lt[A016014(A016933(2*n+1)), 2]` -/
def P5905830172682034314.Spec : Prop :=
  ∀ n, (P5905830172682034314.a n : ℤ) = A139531 (n + 1)

end A139531

/-!
# A139532: Numbers k such that 24*k + 19 is prime.

The programs for A139532, the canonical program `A139532.P2108094528252457204` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139532 has offset 1).

The definition of A139532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139532.P5871076384557772893

`eq[0, char[A240531(n+1)]]`
-/

namespace A139532.P5871076384557772893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240531 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139532.P5871076384557772893

namespace A139532

/-- `eq[0, char[A240531(n+1)]]` -/
def P5871076384557772893.Spec : Prop :=
  ∀ n, (P5871076384557772893.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P2108094528252457204

`eq[1, A245838(2*A004767(n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139532

/-- `eq[1, A245838(2*A004767(n))]` -/
def P2108094528252457204.Spec : Prop :=
  ∀ n, (P2108094528252457204.a n : ℤ) = A139532 (n + 1)

theorem P2108094528252457204.correct : P2108094528252457204.Spec := by
  intro n
  simp only [A139532, Nat.add_sub_cancel]

end A139532

/-! ## A139532.P17839016887560955880

`eq[4*n+3, A260518(2*n+1)]`
-/

namespace A139532.P17839016887560955880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P17839016887560955880

namespace A139532

/-- `eq[4*n+3, A260518(2*n+1)]` -/
def P17839016887560955880.Spec : Prop :=
  ∀ n, (P17839016887560955880.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P5709145406083478094

`eq[n, A260518(n+1+n)%(n+1)]`
-/

namespace A139532.P5709145406083478094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260518 (n + 1 + n)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P5709145406083478094

namespace A139532

/-- `eq[n, A260518(n+1+n)%(n+1)]` -/
def P5709145406083478094.Spec : Prop :=
  ∀ n, (P5709145406083478094.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P5914294480401548744

`eq[1, A075743(8*n+6)]`
-/

namespace A139532.P5914294480401548744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (8 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P5914294480401548744

namespace A139532

/-- `eq[1, A075743(8*n+6)]` -/
def P5914294480401548744.Spec : Prop :=
  ∀ n, (P5914294480401548744.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P12029395017799664969

`eq[1, A001222(24*(n+1)-5)]`
-/

namespace A139532.P12029395017799664969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (24 * (n + 1) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P12029395017799664969

namespace A139532

/-- `eq[1, A001222(24*(n+1)-5)]` -/
def P12029395017799664969.Spec : Prop :=
  ∀ n, (P12029395017799664969.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P13284021833986667150

`eq[2, A000005(24*(n+1)-5)]`
-/

namespace A139532.P13284021833986667150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (24 * (n + 1) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P13284021833986667150

namespace A139532

/-- `eq[2, A000005(24*(n+1)-5)]` -/
def P13284021833986667150.Spec : Prop :=
  ∀ n, (P13284021833986667150.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P13170794188801945849

`lt[A001222(3*(8*n+4)+7), 2]`
-/

namespace A139532.P13170794188801945849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (8 * n + 4) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139532.P13170794188801945849

namespace A139532

/-- `lt[A001222(3*(8*n+4)+7), 2]` -/
def P13170794188801945849.Spec : Prop :=
  ∀ n, (P13170794188801945849.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P13033209387164507220

`eq[1, A156706(A017113(n)+2)]`
-/

namespace A139532.P13033209387164507220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A017113 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P13033209387164507220

namespace A139532

/-- `eq[1, A156706(A017113(n)+2)]` -/
def P13033209387164507220.Spec : Prop :=
  ∀ n, (P13033209387164507220.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P12556984562826989537

`eq[1, A156706(2*A004767(n))]`
-/

namespace A139532.P12556984562826989537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * A004767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P12556984562826989537

namespace A139532

/-- `eq[1, A156706(2*A004767(n))]` -/
def P12556984562826989537.Spec : Prop :=
  ∀ n, (P12556984562826989537.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P15126023665091611624

`lt[A000005(A017605(2*n+1)), 3]`
-/

namespace A139532.P15126023665091611624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017605 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139532.P15126023665091611624

namespace A139532

/-- `lt[A000005(A017605(2*n+1)), 3]` -/
def P15126023665091611624.Spec : Prop :=
  ∀ n, (P15126023665091611624.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P586350983129796817

`lt[A000005(3*Δ[2*A000217(2*n)]+1), 3]`
-/

namespace A139532.P586350983129796817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (f2 (n + 1) - f2 n) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A139532.P586350983129796817

namespace A139532

/-- `lt[A000005(3*Δ[2*A000217(2*n)]+1), 3]` -/
def P586350983129796817.Spec : Prop :=
  ∀ n, (P586350983129796817.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P3908543641962372274

`lt[A017605(2*n), A000010(A017605(2*n+1))]`
-/

namespace A139532.P3908543641962372274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017605 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139532.P3908543641962372274

namespace A139532

/-- `lt[A017605(2*n), A000010(A017605(2*n+1))]` -/
def P3908543641962372274.Spec : Prop :=
  ∀ n, (P3908543641962372274.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P914191014367553594

`lt[A000203(A017605(2*n+1)), A017653(2*n+1)]`
-/

namespace A139532.P914191014367553594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139532.P914191014367553594

namespace A139532

/-- `lt[A000203(A017605(2*n+1)), A017653(2*n+1)]` -/
def P914191014367553594.Spec : Prop :=
  ∀ n, (P914191014367553594.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P15983723391138540930

`eq[3, A060324(6*n+5)]`
-/

namespace A139532.P15983723391138540930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P15983723391138540930

namespace A139532

/-- `eq[3, A060324(6*n+5)]` -/
def P15983723391138540930.Spec : Prop :=
  ∀ n, (P15983723391138540930.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P12225353851317500337

`lt[A004767(n), A014963(A017605(2*n+1))]`
-/

namespace A139532.P12225353851317500337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017605 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139532.P12225353851317500337

namespace A139532

/-- `lt[A004767(n), A014963(A017605(2*n+1))]` -/
def P12225353851317500337.Spec : Prop :=
  ∀ n, (P12225353851317500337.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P1130856065595854431

`lt[A016873(n), A014963(A017605(2*n+1))]`
-/

namespace A139532.P1130856065595854431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017605 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139532.P1130856065595854431

namespace A139532

/-- `lt[A016873(n), A014963(A017605(2*n+1))]` -/
def P1130856065595854431.Spec : Prop :=
  ∀ n, (P1130856065595854431.a n : ℤ) = A139532 (n + 1)

end A139532

/-! ## A139532.P12927138030413695700

`eq[2, A046069(3*(n+1))]`
-/

namespace A139532.P12927138030413695700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046069 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139532.P12927138030413695700

namespace A139532

/-- `eq[2, A046069(3*(n+1))]` -/
def P12927138030413695700.Spec : Prop :=
  ∀ n, (P12927138030413695700.a n : ℤ) = A139532 (n + 1)

end A139532

/-!
# A139533: Numbers k such that numbers 24*k + 11 and 24*k + 13 are twin primes.

The programs for A139533, the canonical program `A139533.P2894381526935310202` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139533 has offset 1).

The definition of A139533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139533.P8028934981967342911

`(A124192(n+2)-1)/3`
-/

namespace A139533.P8028934981967342911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124192 (n + 2) - 1 : ℚ) / 3

end

end A139533.P8028934981967342911

namespace A139533

/-- `(A124192(n+2)-1)/3` -/
def P8028934981967342911.Spec : Prop :=
  ∀ n, P8028934981967342911.a n = (A139533 (n + 1) : ℚ)

end A139533

/-! ## A139533.P2894381526935310202

`∑[A285870(Δ[A124192(n+1)])]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139533

/-- `∑[A285870(Δ[A124192(n+1)])]` -/
def P2894381526935310202.Spec : Prop :=
  ∀ n, P2894381526935310202.a n = A139533 (n + 1)

theorem P2894381526935310202.correct : P2894381526935310202.Spec := by
  intro n
  simp only [A139533, Nat.add_sub_cancel]

end A139533

/-! ## A139533.P2528418246954900020

`∩[A139528(n+1), A139529(n+1)]`
-/

namespace A139533.P2528418246954900020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139533.P2528418246954900020

namespace A139533

/-- `∩[A139528(n+1), A139529(n+1)]` -/
def P2528418246954900020.Spec : Prop :=
  ∀ n, (P2528418246954900020.a n : ℤ) = A139533 (n + 1)

end A139533

/-! ## A139533.P5405758505560830530

`eq[1, A135368(2*n+1)]`
-/

namespace A139533.P5405758505560830530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135368 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139533.P5405758505560830530

namespace A139533

/-- `eq[1, A135368(2*n+1)]` -/
def P5405758505560830530.Spec : Prop :=
  ∀ n, (P5405758505560830530.a n : ℤ) = A139533 (n + 1)

end A139533

/-! ## A139533.P3157329776874311425

`record[A078898(A124519(n+1)-1)]`
-/

namespace A139533.P3157329776874311425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A124519 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139533.P3157329776874311425

namespace A139533

/-- `record[A078898(A124519(n+1)-1)]` -/
def P3157329776874311425.Spec : Prop :=
  ∀ n, P3157329776874311425.a n = A139533 (n + 1)

end A139533

/-! ## A139533.P16897461038393507004

`A002264(A124192(n+2))`
-/

namespace A139533.P16897461038393507004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124192 (n + 2)).toNat

end

end A139533.P16897461038393507004

namespace A139533

/-- `A002264(A124192(n+2))` -/
def P16897461038393507004.Spec : Prop :=
  ∀ n, P16897461038393507004.a n = A139533 (n + 1)

end A139533

/-! ## A139533.P13613683773325331208

`A285870(A124192(n+2)-1)`
-/

namespace A139533.P13613683773325331208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A124192 (n + 2) - 1).toNat

end

end A139533.P13613683773325331208

namespace A139533

/-- `A285870(A124192(n+2)-1)` -/
def P13613683773325331208.Spec : Prop :=
  ∀ n, P13613683773325331208.a n = A139533 (n + 1)

end A139533

/-! ## A139533.P4655824452505789844

`record[A002264(A124192(A328399(n)))]`
-/

namespace A139533.P4655824452505789844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124192 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139533.P4655824452505789844

namespace A139533

/-- `record[A002264(A124192(A328399(n)))]` -/
def P4655824452505789844.Spec : Prop :=
  ∀ n, P4655824452505789844.a n = A139533 (n + 1)

end A139533

/-! ## A139533.P6961358902261776526

`eq[1, A182481(4*n+2)]`
-/

namespace A139533.P6961358902261776526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139533.P6961358902261776526

namespace A139533

/-- `eq[1, A182481(4*n+2)]` -/
def P6961358902261776526.Spec : Prop :=
  ∀ n, (P6961358902261776526.a n : ℤ) = A139533 (n + 1)

end A139533

/-! ## A139533.P3620168825170538323

`eq[2, A145193(4*n+2)]`
-/

namespace A139533.P3620168825170538323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139533.P3620168825170538323

namespace A139533

/-- `eq[2, A145193(4*n+2)]` -/
def P3620168825170538323.Spec : Prop :=
  ∀ n, (P3620168825170538323.a n : ℤ) = A139533 (n + 1)

end A139533

/-!
# A139534: Numbers k such that numbers 24*k + 17 and 24*k + 19 are twin primes.

The programs for A139534, there is no canonical definition to state claims against.
-/

/-! ## A139534.P3801715505093437014

`floor(A125822(n+1)/3)`
-/

namespace A139534.P3801715505093437014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125822 (n + 1) : ℚ) / 3⌋

end

end A139534.P3801715505093437014

/-! ## A139534.P1850942442010412896

`∩[A139531(n+1), A139532(n+1)]`
-/

namespace A139534.P1850942442010412896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139534.P1850942442010412896

/-! ## A139534.P11958162760692293934

`eq[2, A166597(A017581(2*n+1))]`
-/

namespace A139534.P11958162760692293934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A017581 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139534.P11958162760692293934

/-! ## A139534.P16417817368459288874

`A002264(A125822(n+1)-n)+A002264(n)`
-/

namespace A139534.P16417817368459288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A125822 (n + 1) - (n : ℤ)).toNat + A002264 n

end

end A139534.P16417817368459288874

/-! ## A139534.P7566129036592634161

`A002264(A125822(n+1))`
-/

namespace A139534.P7566129036592634161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A125822 (n + 1)).toNat

end

end A139534.P7566129036592634161

/-! ## A139534.P10205583504374523878

`A008611(A125822(n+1)-1)`
-/

namespace A139534.P10205583504374523878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A125822 (n + 1) - 1).toNat

end

end A139534.P10205583504374523878

/-! ## A139534.P13496448729467044209

`A008620(A125822(n+1)+1)-2`
-/

namespace A139534.P13496448729467044209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A125822 (n + 1) + 1).toNat - 2

end

end A139534.P13496448729467044209

/-! ## A139534.P13996014918315141907

`eq[1, A182481(4*n+3)]`
-/

namespace A139534.P13996014918315141907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139534.P13996014918315141907

/-! ## A139534.P11134954082394213581

`eq[2, A145193(4*n+3)]`
-/

namespace A139534.P11134954082394213581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139534.P11134954082394213581

/-!
# A139537: Digit sum of Fibonacci primes.

The programs for A139537, there is no canonical definition to state claims against.
-/

/-! ## A139537.P16378868949249287174

`A004090(A001605(n+1))`
-/

namespace A139537.P16378868949249287174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (A001605 (n + 1)).toNat

end

end A139537.P16378868949249287174

/-! ## A139537.P8728468331495413126

`A004090(A069744(n+1)+1)`
-/

namespace A139537.P8728468331495413126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (A069744 (n + 1) + 1).toNat

end

end A139537.P8728468331495413126

/-! ## A139537.P10349884233138966253

`∑{digits}[A005478(n+1), #]`
-/

namespace A139537.P10349884233138966253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139537.P10349884233138966253

/-! ## A139537.P14061719469470808280

`∑{digits}[A139095(n+3), #]`
-/

namespace A139537.P14061719469470808280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139095 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139537.P14061719469470808280

/-! ## A139537.P117287376757605320

`∑{digits}[record[A139044(n+1)], #]`
-/

namespace A139537.P117287376757605320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139044 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A139537.P117287376757605320

/-!
# A139538: Odd numbers of the form x^2+5y^2 not divisible by 5, with both x and y >== 1.

The programs for A139538, there is no canonical definition to state claims against.
-/

/-! ## A139538.P15109397559641324643

`lt[A077462(n)+1, A033718(n)]`
-/

namespace A139538.P15109397559641324643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139538.P15109397559641324643

/-! ## A139538.P11653627358320714308

`lt[2*A226378(n), A033718(n)]`
-/

namespace A139538.P11653627358320714308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139538.P11653627358320714308

/-! ## A139538.P10153871981562038158

`∩[A045572(n+1), A154778(n+1)]`
-/

namespace A139538.P10153871981562038158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P10153871981562038158

/-! ## A139538.P6168902636703656742

`∩[A045797(n+1), A154778(n+1)]`
-/

namespace A139538.P6168902636703656742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P6168902636703656742

/-! ## A139538.P12872881189538498626

`∩[A090771(n+1), A154778(n+1)]`
-/

namespace A139538.P12872881189538498626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P12872881189538498626

/-! ## A139538.P16065884792149536282

`∩[A154778(n+1), A236208(n+1)]`
-/

namespace A139538.P16065884792149536282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P16065884792149536282

/-! ## A139538.P963189354875336306

`∩[A154778(n+1), A248667(n+1)]`
-/

namespace A139538.P963189354875336306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P963189354875336306

/-! ## A139538.P15549088845283683661

`∩[A154778(n+1), A317633(n+1)]`
-/

namespace A139538.P15549088845283683661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P15549088845283683661

/-! ## A139538.P10690752834153550863

`∩[A154778(n+1), A345019(n+1)]`
-/

namespace A139538.P10690752834153550863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139538.P10690752834153550863

/-! ## A139538.P14943535858473462672

`eq[A010164(n), A010168(A033718(n))]`
-/

namespace A139538.P14943535858473462672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010168 (A033718 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139538.P14943535858473462672

/-!
# A139539: Indices of numbers of form 12k+1 which are prime and have representation x^2+32xy+y^2.

The programs for A139539, there is no canonical definition to state claims against.
-/

/-! ## A139539.P14688778806868721801

`A008647(A139512(n+1))`
-/

namespace A139539.P14688778806868721801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A139512 (n + 1)).toNat

end

end A139539.P14688778806868721801

/-! ## A139539.P10201496243304513134

`A110801(A139540(n+1))`
-/

namespace A139539.P10201496243304513134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (A139540 (n + 1)).toNat

end

end A139539.P10201496243304513134

/-! ## A139539.P9660704198655585258

`floor(p?[A005070(A033254(n+1))]/12)`
-/

namespace A139539.P9660704198655585258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (A033254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 12⌋

end

end A139539.P9660704198655585258

/-! ## A139539.P14722691960175347599

`floor(record[A005070(A033254(n+4))]/12)`
-/

namespace A139539.P14722691960175347599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (A033254 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 12⌋

end

end A139539.P14722691960175347599

/-! ## A139539.P11104741999909308230

`round(p?[A005070(A033254(n+2))]/12)`
-/

namespace A139539.P11104741999909308230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (A033254 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 12)

end

end A139539.P11104741999909308230

/-! ## A139539.P7499514606289517219

`ceil(p?[A005070(A033254(n+3))]/12)-1`
-/

namespace A139539.P7499514606289517219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (A033254 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 12⌉ - 1

end

end A139539.P7499514606289517219

/-! ## A139539.P9626055089719282630

`∑{d}[A068228(A139540(n+1)), A008647(#)]`
-/

namespace A139539.P9626055089719282630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (A139540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008647 d

end

end A139539.P9626055089719282630

/-! ## A139539.P3430622638255141029

`∑{d}[p?[A005070(A033254(n+1))], A008647(#)]`
-/

namespace A139539.P3430622638255141029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (A033254 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008647 d

end

end A139539.P3430622638255141029

/-!
# A139540: Indices of primes of the form 12k+1 which have representation x^2+32xy+y^2.

The programs for A139540, there is no canonical definition to state claims against.
-/

/-! ## A139540.P9430725726976214135

`A313822(A120126(n+2))-A057354(3*n)`
-/

namespace A139540.P9430725726976214135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313822 (A120126 (n + 2)).toNat - A057354 (3 * n)

end

end A139540.P9430725726976214135

/-!
# A139541: There are 4*n players who wish to play bridge at n tables. Each player must have another player as partner and each pair of partners must have another pair as opponents. The choice of partners and opponents can be made in exactly a(n)=(4*n)!/(n!*8^n) different ways.

The programs for A139541, the canonical program `A139541.P17102609727749235083` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139541 has offset 0).

The definition of A139541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139541.P17102609727749235083

`A001147(n)*A001147(2*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139541

/-- `A001147(n)*A001147(2*n)` -/
def P17102609727749235083.Spec : Prop :=
  ∀ n, P17102609727749235083.a n = A139541 n

theorem P17102609727749235083.correct : P17102609727749235083.Spec := by
  intro n
  simp only [A139541]

end A139541

/-! ## A139541.P8216100723718307925

`A008977(n)*(A049606(n)/A001316(n))^3`
-/

namespace A139541.P8216100723718307925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008977 n : ℚ) * ((A049606 n : ℚ) / (A001316 n : ℚ)) ^ 3

end

end A139541.P8216100723718307925

namespace A139541

/-- `A008977(n)*(A049606(n)/A001316(n))^3` -/
def P8216100723718307925.Spec : Prop :=
  ∀ n, P8216100723718307925.a n = (A139541 n : ℚ)

end A139541

/-! ## A139541.P13618889823305946350

`(4*n)!/(n!*8^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139541.P13618889823305946350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (Nat.factorial n * 8 ^ n : ℚ)

end

end A139541.P13618889823305946350

namespace A139541

/-- `(4*n)!/(n!*8^n)` -/
def P13618889823305946350.Spec : Prop :=
  ∀ n, P13618889823305946350.a n = (A139541 n : ℚ)

end A139541

/-! ## A139541.P5295885269457460823

`(2*n-1)*(4*n-3)*(4*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A139541.P5295885269457460823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * (((4 * n : ℤ) - 3) * (((4 * n : ℤ) - 1) * a (n - 1)))

end

end A139541.P5295885269457460823

namespace A139541

/-- `(2*n-1)*(4*n-3)*(4*n-1)*a(n-1)` -/
def P5295885269457460823.Spec : Prop :=
  ∀ n, P5295885269457460823.a n = A139541 n

end A139541

/-! ## A139541.P16477816177050562545

`∏[2*n+1]*A035319(n)`
-/

namespace A139541.P16477816177050562545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035319 n

end

end A139541.P16477816177050562545

namespace A139541

/-- `∏[2*n+1]*A035319(n)` -/
def P16477816177050562545.Spec : Prop :=
  ∀ n, P16477816177050562545.a n = A139541 n

end A139541

/-!
# A139542: a(n) = a(n-1) + largest divisor of a(n-1) <= sqrt(a(n-1)).

The programs for A139542, there is no canonical definition to state claims against.
-/

/-! ## A139542.P902931902154109561

`A033676(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A139542.P902931902154109561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033676 (a (n - 1)).toNat + a (n - 1)

end

end A139542.P902931902154109561

/-! ## A139542.P17429575970868209640

`A046805(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A139542.P17429575970868209640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046805 (a (n - 1)).toNat + a (n - 1)

end

end A139542.P17429575970868209640

/-! ## A139542.P13252772075244212050

`record[A033676(n*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A139542.P13252772075244212050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f1 =>
  A033676 ((n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139542.P13252772075244212050

/-! ## A139542.P12511363576005752218

`record[A046805(a(n-1)*A123108(n))]` with `a(0)=1, a(1)=2`
-/

namespace A139542.P12511363576005752218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A046805 (f1 (n - 1) * A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139542.P12511363576005752218

/-! ## A139542.P7508160120058846616

`∑[A299962(∏[A227481(n)])]`
-/

namespace A139542.P7508160120058846616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299962 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139542.P7508160120058846616

/-!
# A139544: Numbers which are not the difference of two squares of positive integers.

The programs for A139544, the canonical program `A139544.P14839382021005083688` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139544 has offset 1).

The definition of A139544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139544.P14839382021005083688

`record[gcd(n+1, xor(3, n))]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139544

/-- `record[gcd(n+1, xor(3, n))]` -/
def P14839382021005083688.Spec : Prop :=
  ∀ n, (P14839382021005083688.a n : ℤ) = A139544 (n + 1)

theorem P14839382021005083688.correct : P14839382021005083688.Spec := by
  intro n
  simp only [A139544, Nat.add_sub_cancel]

end A139544

/-!
# A139545: Binomial transform of [1, 0, 0, 4, 0, 0, 7, 0, 0, 10, ...].

The programs for A139545, the canonical program `A139545.P2279821964139428983` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139545 has offset 1).

The definition of A139545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139545.P2279821964139428983

`Δ[n/2*A130707(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139545

/-- `Δ[n/2*A130707(n)]` -/
def P2279821964139428983.Spec : Prop :=
  ∀ n, P2279821964139428983.a n = (A139545 (n + 1) : ℚ)

end A139545

/-! ## A139545.P10339151925725171372

`Δ[n*A130781(A289207(n))]`
-/

namespace A139545.P10339151925725171372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130781 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139545.P10339151925725171372

namespace A139545

/-- `Δ[n*A130781(A289207(n))]` -/
def P10339151925725171372.Spec : Prop :=
  ∀ n, P10339151925725171372.a n = A139545 (n + 1)

end A139545

/-! ## A139545.P17621920875420404546

`Δ[n*A024493(log2(A011782(n)))]`
-/

namespace A139545.P17621920875420404546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024493 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139545.P17621920875420404546

namespace A139545

/-- `Δ[n*A024493(log2(A011782(n)))]` -/
def P17621920875420404546.Spec : Prop :=
  ∀ n, P17621920875420404546.a n = A139545 (n + 1)

end A139545

/-! ## A139545.P1633579002627804220

`Δ[A001787(n)-n*A024495(n)]`
-/

namespace A139545.P1633579002627804220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - (n : ℤ) * A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139545.P1633579002627804220

namespace A139545

/-- `Δ[A001787(n)-n*A024495(n)]` -/
def P1633579002627804220.Spec : Prop :=
  ∀ n, P1633579002627804220.a n = A139545 (n + 1)

end A139545

/-! ## A139545.P12059530083392869767

`Δ[n*A306846(A027379(n))]`
-/

namespace A139545.P12059530083392869767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306846 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139545.P12059530083392869767

namespace A139545

/-- `Δ[n*A306846(A027379(n))]` -/
def P12059530083392869767.Spec : Prop :=
  ∀ n, P12059530083392869767.a n = A139545 (n + 1)

end A139545

/-! ## A139545.P8845086861815764348

`Δ[n*A306846(A055998(n))]`
-/

namespace A139545.P8845086861815764348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306846 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139545.P8845086861815764348

namespace A139545

/-- `Δ[n*A306846(A055998(n))]` -/
def P8845086861815764348.Spec : Prop :=
  ∀ n, P8845086861815764348.a n = A139545 (n + 1)

end A139545

/-!
# A139547: Triangle read by rows: T(n,k) = A003418(A010766).

The programs for A139547, the canonical program `A139547.P7585618527842302360` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139547 has offset 0).

The definition of A139547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139547.P5279533360220220997

`A003418(A010766(n+1))`
-/

namespace A139547.P5279533360220220997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A010766 (n + 1)).toNat

end

end A139547.P5279533360220220997

namespace A139547

/-- `A003418(A010766(n+1))` -/
def P5279533360220220997.Spec : Prop :=
  ∀ n, P5279533360220220997.a n = A139547 n

end A139547

/-! ## A139547.P7585618527842302360

`A003418(ceil(ratio[A074909(n)]))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139547

/-- `A003418(ceil(ratio[A074909(n)]))` -/
def P7585618527842302360.Spec : Prop :=
  ∀ n, P7585618527842302360.a n = A139547 n

theorem P7585618527842302360.correct : P7585618527842302360.Spec := by
  intro n
  simp only [A139547]

end A139547

/-! ## A139547.P896380669845496221

`A003418(ceil(ratio[A181971(n)]))`
-/

namespace A139547.P896380669845496221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A139547.P896380669845496221

namespace A139547

/-- `A003418(ceil(ratio[A181971(n)]))` -/
def P896380669845496221.Spec : Prop :=
  ∀ n, P896380669845496221.a n = A139547 n

end A139547

/-! ## A139547.P18287730887590997836

`A003418(abs(A174557(n+1)))`
-/

namespace A139547.P18287730887590997836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 |A174557 (n + 1)|.toNat

end

end A139547.P18287730887590997836

namespace A139547

/-- `A003418(abs(A174557(n+1)))` -/
def P18287730887590997836.Spec : Prop :=
  ∀ n, P18287730887590997836.a n = A139547 n

end A139547

/-! ## A139547.P7729067037822561805

`A139550(2*A010766(n+1))`
-/

namespace A139547.P7729067037822561805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * A010766 (n + 1)).toNat

end

end A139547.P7729067037822561805

namespace A139547

/-- `A139550(2*A010766(n+1))` -/
def P7729067037822561805.Spec : Prop :=
  ∀ n, P7729067037822561805.a n = A139547 n

end A139547

/-! ## A139547.P4630897555078869088

`A003418(ceil(ratio[A029635(n)]))`
-/

namespace A139547.P4630897555078869088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A139547.P4630897555078869088

namespace A139547

/-- `A003418(ceil(ratio[A029635(n)]))` -/
def P4630897555078869088.Spec : Prop :=
  ∀ n, P4630897555078869088.a n = A139547 n

end A139547

/-! ## A139547.P15225377056653183528

`A093919(A128489(n+1))`
-/

namespace A139547.P15225377056653183528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A128489 (n + 1)).toNat

end

end A139547.P15225377056653183528

namespace A139547

/-- `A093919(A128489(n+1))` -/
def P15225377056653183528.Spec : Prop :=
  ∀ n, P15225377056653183528.a n = A139547 n

end A139547

/-!
# A139548: Triangle T(n,k) with the coefficient of [x^k] of the polynomial (2*(x+1)^2)^n in row n, column k, 0<=k<=2n.

The programs for A139548, the canonical program `A139548.P13919224620626575933` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139548 has offset 0).

The definition of A139548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139548.P7578949648035988954

`2^A000196(n)*A034870(n)`
-/

namespace A139548.P7578949648035988954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000196 n : ℤ) * (A034870 n : ℚ)

end

end A139548.P7578949648035988954

namespace A139548

/-- `2^A000196(n)*A034870(n)` -/
def P7578949648035988954.Spec : Prop :=
  ∀ n, P7578949648035988954.a n = (A139548 n : ℚ)

end A139548

/-! ## A139548.P13919224620626575933

`A000079(floor(sqrt(n)))*A034870(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139548

/-- `A000079(floor(sqrt(n)))*A034870(n)` -/
def P13919224620626575933.Spec : Prop :=
  ∀ n, P13919224620626575933.a n = A139548 n

theorem P13919224620626575933.correct : P13919224620626575933.Spec := by
  intro n
  simp only [A139548]

end A139548

/-! ## A139548.P11226246490038855738

`A016116(A000267(n))*A034870(n)`
-/

namespace A139548.P11226246490038855738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A000267 n).toNat * A034870 n

end

end A139548.P11226246490038855738

namespace A139548

/-- `A016116(A000267(n))*A034870(n)` -/
def P11226246490038855738.Spec : Prop :=
  ∀ n, P11226246490038855738.a n = A139548 n

end A139548

/-! ## A139548.P15202828069743011200

`A000079(A000196(n))*A007318(A161983(n))`
-/

namespace A139548.P15202828069743011200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000196 n).toNat * A007318 (A161983 n).toNat

end

end A139548.P15202828069743011200

namespace A139548

/-- `A000079(A000196(n))*A007318(A161983(n))` -/
def P15202828069743011200.Spec : Prop :=
  ∀ n, P15202828069743011200.a n = A139548 n

end A139548

/-! ## A139548.P7378549431062190152

`A007318(A316670(n+1))*A000079(A000196(n))`
-/

namespace A139548.P7378549431062190152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A316670 (n + 1)).toNat * A000079 (A000196 n).toNat

end

end A139548.P7378549431062190152

namespace A139548

/-- `A007318(A316670(n+1))*A000079(A000196(n))` -/
def P7378549431062190152.Spec : Prop :=
  ∀ n, P7378549431062190152.a n = A139548 n

end A139548

/-! ## A139548.P2867471490614078620

`A135838(A007606(n+1))`
-/

namespace A139548.P2867471490614078620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135838 (A007606 (n + 1)).toNat

end

end A139548.P2867471490614078620

namespace A139548

/-- `A135838(A007606(n+1))` -/
def P2867471490614078620.Spec : Prop :=
  ∀ n, P2867471490614078620.a n = A139548 n

end A139548

/-! ## A139548.P2275781078118373703

`A135838(A161983(n)+1)`
-/

namespace A139548.P2275781078118373703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135838 (A161983 n + 1).toNat

end

end A139548.P2275781078118373703

namespace A139548

/-- `A135838(A161983(n)+1)` -/
def P2275781078118373703.Spec : Prop :=
  ∀ n, P2275781078118373703.a n = A139548 n

end A139548

/-!
# A139549: Triangle read by rows: T(n,k) = if n>=2*k and n

The programs for A139549, there is no canonical definition to state claims against.
-/

/-! ## A139549.P4678851376376973151

`A139553(A292564(n))`
-/

namespace A139549.P4678851376376973151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 (A292564 n).toNat

end

end A139549.P4678851376376973151

/-! ## A139549.P4719852275218812744

`A139553(A341706(n))`
-/

namespace A139549.P4719852275218812744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 (A341706 n).toNat

end

end A139549.P4719852275218812744

/-! ## A139549.P1618034474536107657

`A250264(C(A193738(n), A258445(2*n+3)))`
-/

namespace A139549.P1618034474536107657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250264 (Nat.choose (A193738 n).toNat (A258445 (2 * n + 3)).toNat)

end

end A139549.P1618034474536107657

/-! ## A139549.P17756894991084814504

`A250264(C(A002260(n+1), A258445(2*n+3)))`
-/

namespace A139549.P17756894991084814504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250264 (Nat.choose (A002260 (n + 1)).toNat (A258445 (2 * n + 3)).toNat)

end

end A139549.P17756894991084814504

/-! ## A139549.P8210318122500182081

`gcd(A005928(A178514(n+1)), A342148(n+1))`
-/

namespace A139549.P8210318122500182081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005928 (A178514 (n + 1)).toNat) (A342148 (n + 1))

end

end A139549.P8210318122500182081

/-!
# A139550: a(n) = lcm(1..floor(n/2)).

The programs for A139550, the canonical program `A139550.P7288531121830713770` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139550 has offset 0).

The definition of A139550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139550.P7288531121830713770

`A003418(floor(n/2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139550

/-- `A003418(floor(n/2))` -/
def P7288531121830713770.Spec : Prop :=
  ∀ n, P7288531121830713770.a n = A139550 n

theorem P7288531121830713770.correct : P7288531121830713770.Spec := by
  intro n
  simp only [A139550]

end A139550

/-! ## A139550.P6818463777025928750

`A003418(n)/A366369(n)`
-/

namespace A139550.P6818463777025928750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A366369 n : ℚ)

end

end A139550.P6818463777025928750

namespace A139550

/-- `A003418(n)/A366369(n)` -/
def P6818463777025928750.Spec : Prop :=
  ∀ n, P6818463777025928750.a n = (A139550 n : ℚ)

end A139550

/-! ## A139550.P17491655874380543988

`A366368(n)/A003418(n)`
-/

namespace A139550.P17491655874380543988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366368 n : ℚ) / (A003418 n : ℚ)

end

end A139550.P17491655874380543988

namespace A139550

/-- `A366368(n)/A003418(n)` -/
def P17491655874380543988.Spec : Prop :=
  ∀ n, P17491655874380543988.a n = (A139550 n : ℚ)

end A139550

/-! ## A139550.P1288595733246668770

`lcm(floor(n/2), a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A139550.P1288595733246668770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm ⌊(n : ℚ) / 2⌋ (a (n - 1) : ℤ)

end

end A139550.P1288595733246668770

namespace A139550

/-- `lcm(floor(n/2), a(n-1))` -/
def P1288595733246668770.Spec : Prop :=
  ∀ n, (P1288595733246668770.a n : ℤ) = A139550 n

end A139550

/-! ## A139550.P10436424830409510969

`lcm(-a(n-1), ceil(abs((1-n)/2)))` with `a(0)=1, a(1)=1`
-/

namespace A139550.P10436424830409510969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

end

end A139550.P10436424830409510969

namespace A139550

/-- `lcm(-a(n-1), ceil(abs((1-n)/2)))` -/
def P10436424830409510969.Spec : Prop :=
  ∀ n, (P10436424830409510969.a n : ℤ) = A139550 n

end A139550

/-! ## A139550.P13934232587728101759

`A139554(2*n)`
-/

namespace A139550.P13934232587728101759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (2 * n)

end

end A139550.P13934232587728101759

namespace A139550

/-- `A139554(2*n)` -/
def P13934232587728101759.Spec : Prop :=
  ∀ n, P13934232587728101759.a n = A139550 n

end A139550

/-! ## A139550.P2720204267619195600

`A075059(floor(n/2))-1`
-/

namespace A139550.P2720204267619195600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 ⌊(n : ℚ) / 2⌋.toNat - 1

end

end A139550.P2720204267619195600

namespace A139550

/-- `A075059(floor(n/2))-1` -/
def P2720204267619195600.Spec : Prop :=
  ∀ n, P2720204267619195600.a n = A139550 n

end A139550

/-! ## A139550.P6539184295386079447

`gcd(A067391(n+1), A094308(n+1))`
-/

namespace A139550.P6539184295386079447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067391 (n + 1)) (A094308 (n + 1))

end

end A139550.P6539184295386079447

namespace A139550

/-- `gcd(A067391(n+1), A094308(n+1))` -/
def P6539184295386079447.Spec : Prop :=
  ∀ n, (P6539184295386079447.a n : ℤ) = A139550 n

end A139550

/-!
# A139551: Triangle read by rows: T(n,k) = if n>=3*k and n

The programs for A139551, there is no canonical definition to state claims against.
-/

/-! ## A139551.P8481951708827630727

`gcd(A245151(n+1)!, A004197(n))`
-/

namespace A139551.P8481951708827630727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A245151 (n + 1)).toNat : ℤ) (A004197 n)

end

end A139551.P8481951708827630727

/-! ## A139551.P2098867439830819564

`∏{d}[A002262(n)%A211970(n), #]`
-/

namespace A139551.P2098867439830819564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A211970 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A139551.P2098867439830819564

/-! ## A139551.P12217860679535727421

`A000041(A002262(n)%A211970(n))`
-/

namespace A139551.P12217860679535727421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A002262 n) (A211970 n)).toNat

end

end A139551.P12217860679535727421

/-! ## A139551.P9262293190551532133

`A000041(A025668(n+1)%A211970(n))`
-/

namespace A139551.P9262293190551532133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A025668 (n + 1)) (A211970 n)).toNat

end

end A139551.P9262293190551532133

/-! ## A139551.P2465508224477562145

`A248227(A025668(char[2]+1+n)%A211970(n)+1)`
-/

namespace A139551.P2465508224477562145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.tmod (A025668 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A211970 n) + 1).toNat

end

end A139551.P2465508224477562145

/-! ## A139551.P8053405229981076713

`A238157(A125311(n)%A000188(A130321(n)))`
-/

namespace A139551.P8053405229981076713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238157 (Int.tmod (A125311 n) (A000188 (A130321 n).toNat)).toNat

end

end A139551.P8053405229981076713

/-!
# A139552: a(n) = lcm(1..floor(n/3)).

The programs for A139552, there is no canonical definition to state claims against.
-/

/-! ## A139552.P6685802041480194836

`lcm(floor(n/3), a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A139552.P6685802041480194836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lcm ⌊(n : ℚ) / 3⌋ (a (n - 1) : ℤ)

end

end A139552.P6685802041480194836

/-! ## A139552.P16943236662009322280

`lcm(-a(n-2), ceil((n-2)/3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A139552.P16943236662009322280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lcm (-(a (n - 2) : ℤ)) ⌈((n : ℤ) - 2 : ℚ) / 3⌉

end

end A139552.P16943236662009322280

/-! ## A139552.P10725668292268160221

`A003418(floor(n/3))`
-/

namespace A139552.P10725668292268160221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌊(n : ℚ) / 3⌋.toNat

end

end A139552.P10725668292268160221

/-! ## A139552.P7432065871317668813

`A139554(comp[4*n])`
-/

namespace A139552.P7432065871317668813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A139552.P7432065871317668813

/-! ## A139552.P885631940039377149

`A075059(floor(n/3))-1`
-/

namespace A139552.P885631940039377149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 ⌊(n : ℚ) / 3⌋.toNat - 1

end

end A139552.P885631940039377149

/-!
# A139553: Triangle read by rows: T(n,k) = if n>=4*k and n

The programs for A139553, there is no canonical definition to state claims against.
-/

/-! ## A139553.P14669847018263862216

`A096751(A194973(n+1)-1)`
-/

namespace A139553.P14669847018263862216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A194973 (n + 1) - 1).toNat

end

end A139553.P14669847018263862216

/-! ## A139553.P1174401954813227384

`A243631(A194973(n+1)-1)`
-/

namespace A139553.P1174401954813227384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A194973 (n + 1) - 1).toNat

end

end A139553.P1174401954813227384

/-! ## A139553.P11843504491947136449

`A303837(3*A194973(n+1))`
-/

namespace A139553.P11843504491947136449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (3 * A194973 (n + 1)).toNat

end

end A139553.P11843504491947136449

/-! ## A139553.P3664599269213696224

`A007318(A140995(n)%A219347(n))`
-/

namespace A139553.P3664599269213696224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A140995 n) (A219347 n)).toNat

end

end A139553.P3664599269213696224

/-! ## A139553.P11771400877114007356

`A040001(C(A047996(n), A293669(n)))`
-/

namespace A139553.P11771400877114007356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.choose (A047996 n).toNat (A293669 n).toNat)

end

end A139553.P11771400877114007356

/-! ## A139553.P11062642551509617168

`A048766(A381440(n+1)+A350103(n))`
-/

namespace A139553.P11062642551509617168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A381440 (n + 1) + A350103 n).toNat

end

end A139553.P11062642551509617168

/-! ## A139553.P7672800053367831609

`A239550(A194905(n+1)%A255906(n))`
-/

namespace A139553.P7672800053367831609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (Int.tmod (A194905 (n + 1)) (A255906 n)).toNat

end

end A139553.P7672800053367831609

/-! ## A139553.P5456506863900453904

`gcd(A108602(A043569(n+1)), A139551(n))`
-/

namespace A139553.P5456506863900453904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108602 (A043569 (n + 1)).toNat) (A139551 n)

end

end A139553.P5456506863900453904

/-! ## A139553.P12923058563792907610

`A008284(A363946(n)+1)`
-/

namespace A139553.P12923058563792907610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A363946 n + 1).toNat

end

end A139553.P12923058563792907610

/-! ## A139553.P8246218777853052488

`gcd(A040369(n), A229557(n+1))`
-/

namespace A139553.P8246218777853052488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040369 n) (A229557 (n + 1))

end

end A139553.P8246218777853052488

/-!
# A139554: a(n) = lcm(1..floor(n/4)).

The programs for A139554, the canonical program `A139554.P10411335472978282588` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139554 has offset 0).

The definition of A139554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139554.P10411335472978282588

`A003418(floor(n/4))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139554

/-- `A003418(floor(n/4))` -/
def P10411335472978282588.Spec : Prop :=
  ∀ n, P10411335472978282588.a n = A139554 n

theorem P10411335472978282588.correct : P10411335472978282588.Spec := by
  intro n
  simp only [A139554]

end A139554

/-! ## A139554.P3272073283013199593

`A139550(A004524(n))`
-/

namespace A139554.P3272073283013199593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A004524 n).toNat

end

end A139554.P3272073283013199593

namespace A139554

/-- `A139550(A004524(n))` -/
def P3272073283013199593.Spec : Prop :=
  ∀ n, P3272073283013199593.a n = A139554 n

end A139554

/-! ## A139554.P13854978674013873143

`A139550(A004525(n))`
-/

namespace A139554.P13854978674013873143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A004525 n).toNat

end

end A139554.P13854978674013873143

namespace A139554

/-- `A139550(A004525(n))` -/
def P13854978674013873143.Spec : Prop :=
  ∀ n, P13854978674013873143.a n = A139554 n

end A139554

/-! ## A139554.P11909606569321858127

`A139550(A004526(n))`
-/

namespace A139554.P11909606569321858127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A004526 n).toNat

end

end A139554.P11909606569321858127

namespace A139554

/-- `A139550(A004526(n))` -/
def P11909606569321858127.Spec : Prop :=
  ∀ n, P11909606569321858127.a n = A139554 n

end A139554

/-! ## A139554.P3974490204895358071

`A139550(A092533(n))`
-/

namespace A139554.P3974490204895358071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A092533 n).toNat

end

end A139554.P3974490204895358071

namespace A139554

/-- `A139550(A092533(n))` -/
def P3974490204895358071.Spec : Prop :=
  ∀ n, P3974490204895358071.a n = A139554 n

end A139554

/-! ## A139554.P17907749008573455524

`A139550(A122461(n))`
-/

namespace A139554.P17907749008573455524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A122461 n).toNat

end

end A139554.P17907749008573455524

namespace A139554

/-- `A139550(A122461(n))` -/
def P17907749008573455524.Spec : Prop :=
  ∀ n, P17907749008573455524.a n = A139554 n

end A139554

/-! ## A139554.P8468702446372681121

`A139550(A123108(n))`
-/

namespace A139554.P8468702446372681121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A123108 n).toNat

end

end A139554.P8468702446372681121

namespace A139554

/-- `A139550(A123108(n))` -/
def P8468702446372681121.Spec : Prop :=
  ∀ n, P8468702446372681121.a n = A139554 n

end A139554

/-! ## A139554.P1517320665288718889

`A139550(A129756(n))`
-/

namespace A139554.P1517320665288718889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A129756 n).toNat

end

end A139554.P1517320665288718889

namespace A139554

/-- `A139550(A129756(n))` -/
def P1517320665288718889.Spec : Prop :=
  ∀ n, P1517320665288718889.a n = A139554 n

end A139554

/-! ## A139554.P6621810333904625828

`A139550(A008619(n)-1)`
-/

namespace A139554.P6621810333904625828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A008619 n - 1).toNat

end

end A139554.P6621810333904625828

namespace A139554

/-- `A139550(A008619(n)-1)` -/
def P6621810333904625828.Spec : Prop :=
  ∀ n, P6621810333904625828.a n = A139554 n

end A139554

/-! ## A139554.P15101618591440590074

`A139550(A140106(n+2))`
-/

namespace A139554.P15101618591440590074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A140106 (n + 2)).toNat

end

end A139554.P15101618591440590074

namespace A139554

/-- `A139550(A140106(n+2))` -/
def P15101618591440590074.Spec : Prop :=
  ∀ n, P15101618591440590074.a n = A139554 n

end A139554

/-! ## A139554.P6097194592119608394

`A139550(A002265(2*n))`
-/

namespace A139554.P6097194592119608394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A002265 (2 * n)).toNat

end

end A139554.P6097194592119608394

namespace A139554

/-- `A139550(A002265(2*n))` -/
def P6097194592119608394.Spec : Prop :=
  ∀ n, P6097194592119608394.a n = A139554 n

end A139554

/-! ## A139554.P2748125346071670172

`A139550(∑[A040001(n)-1])`
-/

namespace A139554.P2748125346071670172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139554.P2748125346071670172

namespace A139554

/-- `A139550(∑[A040001(n)-1])` -/
def P2748125346071670172.Spec : Prop :=
  ∀ n, P2748125346071670172.a n = A139554 n

end A139554

/-! ## A139554.P6646230452120136047

`A139550(∑[3%A040001(n)])`
-/

namespace A139554.P6646230452120136047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139554.P6646230452120136047

namespace A139554

/-- `A139550(∑[3%A040001(n)])` -/
def P6646230452120136047.Spec : Prop :=
  ∀ n, P6646230452120136047.a n = A139554 n

end A139554

/-!
# A139555: a(n) = number of prime-powers (including 1) that each are <= n and are coprime to n.

The programs for A139555, there is no canonical definition to state claims against.
-/

/-! ## A139555.P3798586215199614673

`A065515(n+1)-A361373(n+1)`
-/

namespace A139555.P3798586215199614673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A361373 (n + 1)

end

end A139555.P3798586215199614673

/-! ## A139555.P14310044146815000922

`A073093(A038610(n+1))`
-/

namespace A139555.P14310044146815000922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A038610 (n + 1)).toNat

end

end A139555.P14310044146815000922

/-! ## A139555.P11113262042676019875

`A065515(n+1)-∑{e}[A064446(n+1), #]`
-/

namespace A139555.P11113262042676019875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A139555.P11113262042676019875

/-! ## A139555.P3846339058872082302

`∑[A010055(n+1)]-∑{e}[A064446(n+1), #]`
-/

namespace A139555.P3846339058872082302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

end

end A139555.P3846339058872082302

/-! ## A139555.P12852957092418033537

`A065515(n+1)-A001222(A064446(n+1))`
-/

namespace A139555.P12852957092418033537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A001222 (A064446 (n + 1)).toNat

end

end A139555.P12852957092418033537

/-! ## A139555.P4660190640953961699

`∑[A010055(n+1)]-A001222(A064446(n+1))`
-/

namespace A139555.P4660190640953961699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (A064446 (n + 1)).toNat

end

end A139555.P4660190640953961699

/-!
# A139556: a(n) = sum of the prime-powers (including 1) that each are <= n and are coprime to n.

The programs for A139556, there is no canonical definition to state claims against.
-/

/-! ## A139556.P15142036838349701415

`A023888(A038610(n+1))`
-/

namespace A139556.P15142036838349701415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A038610 (n + 1)).toNat

end

end A139556.P15142036838349701415

/-!
# A139559: Primes in A139252 (related to the toothpick structure).

The programs for A139559, there is no canonical definition to state claims against.
-/

/-! ## A139559.P9118996910899038118

`p?[A139252(n)]`
-/

namespace A139559.P9118996910899038118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139559.P9118996910899038118

/-! ## A139559.P15594313374155167238

`record[A006530(A139252(n+2))]`
-/

namespace A139559.P15594313374155167238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139559.P15594313374155167238

/-! ## A139559.P15600547833512273232

`filter[A139252(n+1), A010051(#)]`
-/

namespace A139559.P15600547833512273232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A139559.P15600547833512273232

/-! ## A139559.P16356160007960586859

`filter[A139252(n+1), A257531(#)]`
-/

namespace A139559.P16356160007960586859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A139559.P16356160007960586859

/-! ## A139559.P15636484648152392584

`filter[A139252(n+1), A302777(#)]`
-/

namespace A139559.P15636484648152392584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A139559.P15636484648152392584

/-!
# A139560: Number of new segments added to the toothpick structure drawing at the n-th step (extensions of earlier segments are not considered).

The programs for A139560, there is no canonical definition to state claims against.
-/

/-! ## A139560.P8732713562320990275

`A139252(n+1)-A139252(n)`
-/

namespace A139560.P8732713562320990275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1) - A139252 n

end

end A139560.P8732713562320990275

/-! ## A139560.P13082989805862854423

`Δ[A139252(n)]`
-/

namespace A139560.P13082989805862854423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139560.P13082989805862854423

/-! ## A139560.P7553975815163566680

`Δ[A139250(n)]-A160125(n+1)`
-/

namespace A139560.P7553975815163566680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A160125 (n + 1)

end

end A139560.P7553975815163566680

/-! ## A139560.P15668984345137625141

`Δ[A147614(n)%(A139250(n)+1)]`
-/

namespace A139560.P15668984345137625141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147614 n) (A139250 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139560.P15668984345137625141

/-! ## A139560.P6812661511530849302

`A139251(n+1)-A160125(n+1)`
-/

namespace A139560.P6812661511530849302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) - A160125 (n + 1)

end

end A139560.P6812661511530849302

/-! ## A139560.P10944307584194708404

`Δ[A160164(n)/2]-A160125(n+1)`
-/

namespace A139560.P10944307584194708404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A160125 (n + 1) : ℚ)

end

end A139560.P10944307584194708404

/-! ## A139560.P17686994919223894992

`A020639(a(n-1))*A168115(A028310(n))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A139560.P17686994919223894992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A168115 (A028310 n).toNat

end

end A139560.P17686994919223894992

/-! ## A139560.P5405432965131726446

`A139250(n+1)-(A160125(n+1)+A139250(n))`
-/

namespace A139560.P5405432965131726446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) - (A160125 (n + 1) + A139250 n)

end

end A139560.P5405432965131726446

/-! ## A139560.P3986617663929764772

`A020639(A007899(n))*A168115(A028310(n))`
-/

namespace A139560.P3986617663929764772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007899 n).toNat * A168115 (A028310 n).toNat

end

end A139560.P3986617663929764772

/-!
# A139562: Sum of primes < n^2.

The programs for A139562, there is no canonical definition to state claims against.
-/

/-! ## A139562.P5493914560308313662

`A007504(A038107(n))`
-/

namespace A139562.P5493914560308313662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038107 n).toNat

end

end A139562.P5493914560308313662

/-! ## A139562.P12952439382534380566

`A007504(∑[A014085(n)]-A014085(n))`
-/

namespace A139562.P12952439382534380566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j - A014085 n).toNat

end

end A139562.P12952439382534380566

/-! ## A139562.P3178092385094797875

`A007504(A000720(abs(or(1, -n²))))`
-/

namespace A139562.P3178092385094797875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 |Int.lor 1 (-(n ^ 2 : ℤ))|.toNat).toNat

end

end A139562.P3178092385094797875

/-! ## A139562.P12674454450245964314

`A007504(A000720(ceil(n-acot(n))²))`
-/

namespace A139562.P12674454450245964314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (⌈(n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉ ^ 2).toNat).toNat

end

end A139562.P12674454450245964314

/-! ## A139562.P2783376152532110862

`A007504(A000720(n^(2%(n+1))))`
-/

namespace A139562.P2783376152532110862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (n ^ (2 % (n + 1)))).toNat

end

end A139562.P2783376152532110862

/-! ## A139562.P11972380355839898735

`A007504(A084360(A187873(n)))`
-/

namespace A139562.P11972380355839898735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A084360 (A187873 n).toNat).toNat

end

end A139562.P11972380355839898735

/-! ## A139562.P200385875840276702

`A034387(A253909(n))`
-/

namespace A139562.P200385875840276702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A253909 n).toNat

end

end A139562.P200385875840276702

/-! ## A139562.P16556872186917115512

`A034387(A028310(n²))`
-/

namespace A139562.P16556872186917115512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A028310 (n ^ 2)).toNat

end

end A139562.P16556872186917115512

/-! ## A139562.P15609155164402122849

`A034387(or(1, A132411(n)))`
-/

namespace A139562.P15609155164402122849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (Int.lor 1 (A132411 n)).toNat

end

end A139562.P15609155164402122849

/-! ## A139562.P8306799157441185937

`A034387(A137735(n²)²)`
-/

namespace A139562.P8306799157441185937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A137735 (n ^ 2) ^ 2).toNat

end

end A139562.P8306799157441185937

/-! ## A139562.P1876543533287457942

`A034387(floor(sqrt(A002523(n))))`
-/

namespace A139562.P1876543533287457942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (Int.sqrt (A002523 n)).toNat

end

end A139562.P1876543533287457942

/-! ## A139562.P6723955099839677013

`A034387(round(sqrt(A002523(n))))`
-/

namespace A139562.P6723955099839677013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (SequenceMachineLib.roundAway (Real.sqrt (A002523 n : ℝ))).toNat

end

end A139562.P6723955099839677013

/-! ## A139562.P12508823673419876079

`A158662(A028310(n)²)-1`
-/

namespace A139562.P12508823673419876079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (A028310 n ^ 2).toNat - 1

end

end A139562.P12508823673419876079

/-! ## A139562.P3435299802927358781

`A034387(A065033(2*n)²)`
-/

namespace A139562.P3435299802927358781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A065033 (2 * n) ^ 2).toNat

end

end A139562.P3435299802927358781

/-! ## A139562.P1913616435902896202

`A034387((A000007(n)+n)²)`
-/

namespace A139562.P1913616435902896202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 ((A000007 n + (n : ℤ)) ^ 2).toNat

end

end A139562.P1913616435902896202

/-! ## A139562.P15969902554513209832

`A034387((n-A000007(n))²)`
-/

namespace A139562.P15969902554513209832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (((n : ℤ) - A000007 n) ^ 2).toNat

end

end A139562.P15969902554513209832

/-! ## A139562.P3507981476595098039

`A034387((n-A004277(n))²)`
-/

namespace A139562.P3507981476595098039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (((n : ℤ) - A004277 n) ^ 2).toNat

end

end A139562.P3507981476595098039

/-! ## A139562.P2255398759577686841

`A034387(gcd(n, A008574(n))²)`
-/

namespace A139562.P2255398759577686841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (Int.gcd (n : ℤ) (A008574 n) ^ 2)

end

end A139562.P2255398759577686841

/-! ## A139562.P3415483151675394396

`A034387(∏{d}[n, A014963(#)²])`
-/

namespace A139562.P3415483151675394396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (∏ d ∈ Nat.divisors (f1 n), A014963 d ^ 2).toNat

end

end A139562.P3415483151675394396

/-! ## A139562.P14732489694636365219

`A034387(n^(2%A025747(n)))`
-/

namespace A139562.P14732489694636365219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod 2 (A025747 n) : ℤ))).toNat

end

end A139562.P14732489694636365219

/-!
# A139563: Fibonacci numbers whose digit sum is a Lucas number.

The programs for A139563, there is no canonical definition to state claims against.
-/

/-! ## A139563.P18406710155310641220

`record[A035517(A137569(n)²)]`
-/

namespace A139563.P18406710155310641220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (A137569 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139563.P18406710155310641220

/-! ## A139563.P1214228636288939892

`A198155(C(A277075(n+1), 2))`
-/

namespace A139563.P1214228636288939892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (Nat.choose (A277075 (n + 1)).toNat 2)

end

end A139563.P1214228636288939892

/-! ## A139563.P14319317708554061506

`filter[A382082(n+1), A131719(#)]`
-/

namespace A139563.P14319317708554061506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A139563.P14319317708554061506

/-!
# A139564: Number of primes < 10^(2n) - sum of primes < 10^n.

The programs for A139564, there is no canonical definition to state claims against.
-/

/-! ## A139564.P16034739126151151566

`A006880(2*n)-A046731(n)`
-/

namespace A139564.P16034739126151151566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (2 * n) - A046731 n

end

end A139564.P16034739126151151566

/-! ## A139564.P15488224424118916938

`A006880(2*n)-(∑[A077645(n+1)]-A077645(n+1))`
-/

namespace A139564.P15488224424118916938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (2 * n) - (∑ j ∈ Finset.range (n + 1), f1 j - A077645 (n + 1))

end

end A139564.P15488224424118916938

/-! ## A139564.P13857915095571658179

`A006880(2*n)-A007504(A006880(n))`
-/

namespace A139564.P13857915095571658179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (2 * n) - A007504 (A006880 n).toNat

end

end A139564.P13857915095571658179

/-!
# A139566: a(n) is the sum of squares of digits of a(n-1); a(1)=15.

The programs for A139566, the canonical program `A139566.P7906999163141125478` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139566 has offset 1).

The definition of A139566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139566.P7906999163141125478

`A003132(a(n-1))` with `a(0)=15`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139566

/-- `A003132(a(n-1))` -/
def P7906999163141125478.Spec : Prop :=
  ∀ n, P7906999163141125478.a n = A139566 (n + 1)

theorem P7906999163141125478.correct : P7906999163141125478.Spec := by
  intro n
  simp only [A139566, Nat.add_sub_cancel]

end A139566

/-!
# A139567: 

The programs for A139567, there is no canonical definition to state claims against.
-/

/-! ## A139567.P8045404116266264745

`A139306(Δ[n²])`
-/

namespace A139567.P8045404116266264745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139567.P8045404116266264745

/-!
# A139568: 

The programs for A139568, there is no canonical definition to state claims against.
-/

/-! ## A139568.P4125061172172065341

`A139306(2*(n+1))`
-/

namespace A139568.P4125061172172065341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139306 (2 * (n + 1))

end

end A139568.P4125061172172065341

/-!
# A139569: A triangle of coefficients of a Chebyshev T(x,n) polynomials to make pair binomials by in {x,y,z} and x only polynomial reduced: f(x,y,n)=Sum[CoefficientList[ChebyshevT[n, x], x][[i + 1]]*x^i*y^(n - i), {i,0, Length[CoefficientList[ChebyshevT[n, x], x]] - 1}]; p(x,y,z,n)=f(x,y,n)+f(y,z,n)+f(z,x,n).

The programs for A139569, there is no canonical definition to state claims against.
-/

/-! ## A139569.P4624426688870145414

`char[∑[n]]+2*A053120(n)`
-/

namespace A139569.P4624426688870145414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A053120 n

end

end A139569.P4624426688870145414

/-! ## A139569.P7796840695306661323

`char[∑[n]]+A059268(n)*A127672(n)`
-/

namespace A139569.P7796840695306661323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A059268 n * A127672 n

end

end A139569.P7796840695306661323

/-! ## A139569.P15553411891199204764

`A010054(n)+A053120(n)+A053120(n)`
-/

namespace A139569.P15553411891199204764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A053120 n + A053120 n)

end

end A139569.P15553411891199204764

/-! ## A139569.P10532537643188383963

`xor(A059268(n)*A127672(n), A010054(n))`
-/

namespace A139569.P10532537643188383963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059268 n * A127672 n) (A010054 n)

end

end A139569.P10532537643188383963

/-! ## A139569.P14459243618576264174

`A010054(n)+2*A039991(A057428(n)+A038722(n+1))`
-/

namespace A139569.P14459243618576264174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 2 * A039991 (A057428 n + A038722 (n + 1)).toNat

end

end A139569.P14459243618576264174

/-!
# A139570: a(n) = 2*n*(n+3).

The programs for A139570, the canonical program `A139570.P13866681511030402643` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139570 has offset 0).

The definition of A139570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+3)` (program `A139570.P13866681511030402643`, by `A139570.P13866681511030402643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139570.P13866681511030402643

`2*n*(n+3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139570

/-- `2*n*(n+3)` -/
def P13866681511030402643.Spec : Prop :=
  ∀ n, (P13866681511030402643.a n : ℤ) = A139570 n

theorem P13866681511030402643.correct : P13866681511030402643.Spec := by
  intro n
  simp only [A139570]

end A139570

/-! ## A139570.P2343356517913953395

`record[2*n*(n-3)]`
-/

namespace A139570.P2343356517913953395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139570.P2343356517913953395

namespace A139570

/-- `record[2*n*(n-3)]` -/
def P2343356517913953395.Spec : Prop :=
  ∀ n, P2343356517913953395.a n = A139570 n

end A139570

/-! ## A139570.P18438376555162182819

`∑[a(n-1)+4]` with `a(0)=0, a(1)=8`
-/

namespace A139570.P18438376555162182819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139570.P18438376555162182819

namespace A139570

/-- `∑[a(n-1)+4]` -/
def P18438376555162182819.Spec : Prop :=
  ∀ n, (P18438376555162182819.a n : ℤ) = A139570 n

end A139570

/-! ## A139570.P18118656404570597804

`∑[ogf(4/(1-2x+x^2))]-4`
-/

namespace A139570.P18118656404570597804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A139570.P18118656404570597804

namespace A139570

/-- `∑[ogf(4/(1-2x+x^2))]-4` -/
def P18118656404570597804.Spec : Prop :=
  ∀ n, P18118656404570597804.a n = A139570 n

end A139570

/-! ## A139570.P2451367313454897475

`∑[ogf((8x-4x^2)/(1-2x+x^2))]`
-/

namespace A139570.P2451367313454897475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139570.P2451367313454897475

namespace A139570

/-- `∑[ogf((8x-4x^2)/(1-2x+x^2))]` -/
def P2451367313454897475.Spec : Prop :=
  ∀ n, P2451367313454897475.a n = A139570 n

end A139570

/-! ## A139570.P16497147421824348570

`ogf((8x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A139570.P16497147421824348570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -4] [1, -3, 3, -1] n

end

end A139570.P16497147421824348570

namespace A139570

/-- `ogf((8x-4x^2)/(1-3x+3x^2-x^3))` -/
def P16497147421824348570.Spec : Prop :=
  ∀ n, P16497147421824348570.a n = A139570 n

end A139570

/-! ## A139570.P10271885186445861830

`lcm(2, (n+1)²+n)-2`
-/

namespace A139570.P10271885186445861830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2 + n) : ℤ) - 2

end

end A139570.P10271885186445861830

namespace A139570

/-- `lcm(2, (n+1)²+n)-2` -/
def P10271885186445861830.Spec : Prop :=
  ∀ n, P10271885186445861830.a n = A139570 n

end A139570

/-! ## A139570.P10990152829750666223

`4*n-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A139570.P10990152829750666223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139570.P10990152829750666223

namespace A139570

/-- `4*n-∑[a(n-1)-4]` -/
def P10990152829750666223.Spec : Prop :=
  ∀ n, P10990152829750666223.a n = A139570 n

end A139570

/-! ## A139570.P3757254292767135213

`4-(n-5*n-a(n-1))` with `a(0)=0`
-/

namespace A139570.P3757254292767135213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - ((n : ℤ) - (5 * n : ℤ) - a (n - 1))

end

end A139570.P3757254292767135213

namespace A139570

/-- `4-(n-5*n-a(n-1))` -/
def P3757254292767135213.Spec : Prop :=
  ∀ n, P3757254292767135213.a n = A139570 n

theorem P3757254292767135213.correct : P3757254292767135213.Spec := by
  intro n
  induction n with
  | zero => simp [A139570, A139570.P3757254292767135213.a, A139570.P13866681511030402643.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139570, Nat.add_sub_cancel, A139570.P3757254292767135213.a, A139570.P13866681511030402643.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139570

/-! ## A139570.P515752978666897042

`a(n-1)+(n+2)²-n²` with `a(0)=0`
-/

namespace A139570.P515752978666897042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n + 2) ^ 2 : ℤ) - (n ^ 2 : ℤ))

end

end A139570.P515752978666897042

namespace A139570

/-- `a(n-1)+(n+2)²-n²` -/
def P515752978666897042.Spec : Prop :=
  ∀ n, P515752978666897042.a n = A139570 n

theorem P515752978666897042.correct : P515752978666897042.Spec := by
  intro n
  induction n with
  | zero => simp [A139570, A139570.P515752978666897042.a, A139570.P13866681511030402643.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139570, Nat.add_sub_cancel, A139570.P515752978666897042.a, A139570.P13866681511030402643.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139570

/-! ## A139570.P10799287699570334875

`∑[8-(a(n-1)/n-a(n-1))]` with `a(0)=0`
-/

namespace A139570.P10799287699570334875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  8 - (f1 (n - 1) / (n : ℚ) - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139570.P10799287699570334875

namespace A139570

/-- `∑[8-(a(n-1)/n-a(n-1))]` -/
def P10799287699570334875.Spec : Prop :=
  ∀ n, P10799287699570334875.a n = (A139570 n : ℚ)

end A139570

/-! ## A139570.P16926263464393908035

`A059993(n)-1`
-/

namespace A139570.P16926263464393908035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n - 1

end

end A139570.P16926263464393908035

namespace A139570

/-- `A059993(n)-1` -/
def P16926263464393908035.Spec : Prop :=
  ∀ n, P16926263464393908035.a n = A139570 n

end A139570

/-! ## A139570.P12080072914901142429

`A090288(n)-2`
-/

namespace A139570.P12080072914901142429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - 2

end

end A139570.P12080072914901142429

namespace A139570

/-- `A090288(n)-2` -/
def P12080072914901142429.Spec : Prop :=
  ∀ n, P12080072914901142429.a n = A139570 n

end A139570

/-! ## A139570.P14534786467653985393

`A033537(n)+n`
-/

namespace A139570.P14534786467653985393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n + (n : ℤ)

end

end A139570.P14534786467653985393

namespace A139570

/-- `A033537(n)+n` -/
def P14534786467653985393.Spec : Prop :=
  ∀ n, P14534786467653985393.a n = A139570 n

end A139570

/-! ## A139570.P13360749024652212606

`Δ[4*A349417(n)]`
-/

namespace A139570.P13360749024652212606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A349417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139570.P13360749024652212606

namespace A139570

/-- `Δ[4*A349417(n)]` -/
def P13360749024652212606.Spec : Prop :=
  ∀ n, P13360749024652212606.a n = A139570 n

end A139570

/-! ## A139570.P11978713503091250779

`A028560(n)+n²`
-/

namespace A139570.P11978713503091250779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + (n ^ 2 : ℤ)

end

end A139570.P11978713503091250779

namespace A139570

/-- `A028560(n)+n²` -/
def P11978713503091250779.Spec : Prop :=
  ∀ n, P11978713503091250779.a n = A139570 n

end A139570

/-! ## A139570.P4609754581223835820

`A067725(n)-n²`
-/

namespace A139570.P4609754581223835820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - (n ^ 2 : ℤ)

end

end A139570.P4609754581223835820

namespace A139570

/-- `A067725(n)-n²` -/
def P4609754581223835820.Spec : Prop :=
  ∀ n, P4609754581223835820.a n = A139570 n

end A139570

/-! ## A139570.P11934042140550706708

`A059845(n)+∑[n]`
-/

namespace A139570.P11934042140550706708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139570.P11934042140550706708

namespace A139570

/-- `A059845(n)+∑[n]` -/
def P11934042140550706708.Spec : Prop :=
  ∀ n, P11934042140550706708.a n = A139570 n

end A139570

/-! ## A139570.P10931125195219225044

`A302906(n)-∑[n]`
-/

namespace A139570.P10931125195219225044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139570.P10931125195219225044

namespace A139570

/-- `A302906(n)-∑[n]` -/
def P10931125195219225044.Spec : Prop :=
  ∀ n, P10931125195219225044.a n = A139570 n

end A139570

/-! ## A139570.P14708156340523661135

`A142463(n+1)-3`
-/

namespace A139570.P14708156340523661135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 (n + 1) - 3

end

end A139570.P14708156340523661135

namespace A139570

/-- `A142463(n+1)-3` -/
def P14708156340523661135.Spec : Prop :=
  ∀ n, P14708156340523661135.a n = A139570 n

end A139570

/-!
# A139571: 

The programs for A139571, there is no canonical definition to state claims against.
-/

/-! ## A139571.P9336967956931045701

`p?[A056847(n)]^30`
-/

namespace A139571.P9336967956931045701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 30

end

end A139571.P9336967956931045701

/-! ## A139571.P2772035674108083165

`p?[A097858(n)]^30`
-/

namespace A139571.P2772035674108083165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 30

end

end A139571.P2772035674108083165

/-! ## A139571.P7556316167454321679

`A030629(n+1)^3`
-/

namespace A139571.P7556316167454321679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030629 (n + 1) ^ 3

end

end A139571.P7556316167454321679

/-! ## A139571.P15687766038745658678

`A030516(n+1)^5`
-/

namespace A139571.P15687766038745658678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 5

end

end A139571.P15687766038745658678

/-! ## A139571.P5751795168558801692

`A050997(n+1)^6`
-/

namespace A139571.P5751795168558801692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 6

end

end A139571.P5751795168558801692

/-! ## A139571.P1339150710413653348

`A000040(n+1)^30`
-/

namespace A139571.P1339150710413653348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 30

end

end A139571.P1339150710413653348

/-! ## A139571.P11106658365640880021

`(A030078(n+1)^5)²`
-/

namespace A139571.P11106658365640880021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) ^ 5) ^ 2

end

end A139571.P11106658365640880021

/-! ## A139571.P3141465193590927285

`sqrt(A030631(n+1))^5`
-/

namespace A139571.P3141465193590927285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030631 (n + 1) : ℝ) ^ 5

end

end A139571.P3141465193590927285

/-! ## A139571.P2055636346742080591

`p?[A000961(n+1)]^30`
-/

namespace A139571.P2055636346742080591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 30

end

end A139571.P2055636346742080591

/-! ## A139571.P3417486642711069190

`record[A006530(n+2)^30]`
-/

namespace A139571.P3417486642711069190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139571.P3417486642711069190

/-! ## A139571.P11254796379839784976

`record[A014963(n+2)^30]`
-/

namespace A139571.P11254796379839784976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139571.P11254796379839784976

/-! ## A139571.P14263589441426374419

`record[A020639(n+2)^30]`
-/

namespace A139571.P14263589441426374419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139571.P14263589441426374419

/-!
# A139572: 

The programs for A139572, there is no canonical definition to state claims against.
-/

/-! ## A139572.P3688892207741594700

`Δ[A007504(n)]^36`
-/

namespace A139572.P3688892207741594700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 36

end

end A139572.P3688892207741594700

/-! ## A139572.P2016004614108768121

`Δ[A008348(n)]^36`
-/

namespace A139572.P2016004614108768121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 36

end

end A139572.P2016004614108768121

/-! ## A139572.P16172188813206654056

`A030631(n+1)^3`
-/

namespace A139572.P16172188813206654056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030631 (n + 1) ^ 3

end

end A139572.P16172188813206654056

/-! ## A139572.P14277845168418097945

`A179665(n+1)^4`
-/

namespace A139572.P14277845168418097945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179665 (n + 1) ^ 4

end

end A139572.P14277845168418097945

/-! ## A139572.P1646710179259709868

`A030516(n+1)^6`
-/

namespace A139572.P1646710179259709868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 6

end

end A139572.P1646710179259709868

/-! ## A139572.P10096240378379810755

`A030078(n+1)^12`
-/

namespace A139572.P10096240378379810755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 12

end

end A139572.P10096240378379810755

/-! ## A139572.P18011746232309335906

`A001248(n+1)^18`
-/

namespace A139572.P18011746232309335906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 18

end

end A139572.P18011746232309335906

/-! ## A139572.P3812114528060198748

`A000040(n+1)^36`
-/

namespace A139572.P3812114528060198748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 36

end

end A139572.P3812114528060198748

/-! ## A139572.P9071105042703897846

`eq[1, A003415(n)]^36`
-/

namespace A139572.P9071105042703897846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 36

end

end A139572.P9071105042703897846

/-! ## A139572.P15337205743797855834

`record[A006530(n+2)^36]`
-/

namespace A139572.P15337205743797855834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139572.P15337205743797855834

/-! ## A139572.P17839579365166329784

`record[A014963(n+2)^36]`
-/

namespace A139572.P17839579365166329784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139572.P17839579365166329784

/-! ## A139572.P4858795073254193691

`record[A020639(n+2)^36]`
-/

namespace A139572.P4858795073254193691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139572.P4858795073254193691

/-! ## A139572.P9140011329953782459

`record[(A000010(n+1)+1)^36]`
-/

namespace A139572.P9140011329953782459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139572.P9140011329953782459

/-!
# A139573: 

The programs for A139573, there is no canonical definition to state claims against.
-/

/-! ## A139573.P8667278714998784403

`p?[round(8*n/7)]²^20`
-/

namespace A139573.P8667278714998784403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 20

end

end A139573.P8667278714998784403

/-! ## A139573.P9723601967321140405

`Δ[A007504(n)]^40`
-/

namespace A139573.P9723601967321140405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 40

end

end A139573.P9723601967321140405

/-! ## A139573.P3561867046220002360

`A030514(n+1)^10`
-/

namespace A139573.P3561867046220002360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 10

end

end A139573.P3561867046220002360

/-! ## A139573.P2277914796551692359

`A001248(n+1)^20`
-/

namespace A139573.P2277914796551692359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 20

end

end A139573.P2277914796551692359

/-! ## A139573.P2278330980623022978

`A000040(n+1)^40`
-/

namespace A139573.P2278330980623022978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 40

end

end A139573.P2278330980623022978

/-! ## A139573.P5863100050780378136

`record[A006530(n+2)^40]`
-/

namespace A139573.P5863100050780378136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139573.P5863100050780378136

/-! ## A139573.P16375510941642757623

`record[A014963(n+2)^40]`
-/

namespace A139573.P16375510941642757623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139573.P16375510941642757623

/-! ## A139573.P2987884594588356547

`record[A020639(n+2)^40]`
-/

namespace A139573.P2987884594588356547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139573.P2987884594588356547

/-! ## A139573.P1556829704028762067

`record[A000010(n+1)+1]^5^8`
-/

namespace A139573.P1556829704028762067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 5) ^ 8

end

end A139573.P1556829704028762067

/-!
# A139574: 

The programs for A139574, there is no canonical definition to state claims against.
-/

/-! ## A139574.P7035732203420653326

`p?[round(8*n/7)]²^21`
-/

namespace A139574.P7035732203420653326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 21

end

end A139574.P7035732203420653326

/-! ## A139574.P11293238606883847280

`Δ[A007504(n)]^42`
-/

namespace A139574.P11293238606883847280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 42

end

end A139574.P11293238606883847280

/-! ## A139574.P14572152666355794891

`Δ[A008348(n)]^42`
-/

namespace A139574.P14572152666355794891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 42

end

end A139574.P14572152666355794891

/-! ## A139574.P15424232497133014218

`ratio[A002110(n)]^42`
-/

namespace A139574.P15424232497133014218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ 42

end

end A139574.P15424232497133014218

/-! ## A139574.P13784416508168798437

`A001248(n+1)^21`
-/

namespace A139574.P13784416508168798437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 21

end

end A139574.P13784416508168798437

/-! ## A139574.P9943011168068942435

`A000040(n+1)^42`
-/

namespace A139574.P9943011168068942435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 42

end

end A139574.P9943011168068942435

/-! ## A139574.P14034104185856296660

`record[A006530(n+2)^42]`
-/

namespace A139574.P14034104185856296660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139574.P14034104185856296660

/-! ## A139574.P12542779303203705842

`record[A014963(n+2)^42]`
-/

namespace A139574.P12542779303203705842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139574.P12542779303203705842

/-! ## A139574.P13594639930765532903

`record[A020639(n+2)^42]`
-/

namespace A139574.P13594639930765532903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139574.P13594639930765532903

/-! ## A139574.P16105281130330636715

`(p?[A018252(n+1)-7]^21)²`
-/

namespace A139574.P16105281130330636715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 21) ^ 2

end

end A139574.P16105281130330636715

/-!
# A139575: 

The programs for A139575, there is no canonical definition to state claims against.
-/

/-! ## A139575.P2466762571222800726

`A000040(n+1)^46`
-/

namespace A139575.P2466762571222800726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 46

end

end A139575.P2466762571222800726

/-! ## A139575.P16848209996882329939

`record[A006530(n+2)^46]`
-/

namespace A139575.P16848209996882329939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139575.P16848209996882329939

/-! ## A139575.P11902411751810002281

`record[A020639(n+2)^46]`
-/

namespace A139575.P11902411751810002281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 46

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139575.P11902411751810002281

/-! ## A139575.P15925541590995282362

`(p?[A018252(n+1)-7]^23)²`
-/

namespace A139575.P15925541590995282362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 23) ^ 2

end

end A139575.P15925541590995282362

/-!
# A139576: a(n) = n*(2*n + 9).

The programs for A139576, the canonical program `A139576.P8586854319888252032` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139576 has offset 0).

The definition of A139576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+9)` (program `A139576.P8586854319888252032`, by `A139576.P8586854319888252032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139576.P8586854319888252032

`n*(2*n+9)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139576

/-- `n*(2*n+9)` -/
def P8586854319888252032.Spec : Prop :=
  ∀ n, (P8586854319888252032.a n : ℤ) = A139576 n

theorem P8586854319888252032.correct : P8586854319888252032.Spec := by
  intro n
  simp only [A139576]

end A139576

/-! ## A139576.P1827980775438386881

`A277979(n)/2`
-/

namespace A139576.P1827980775438386881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277979 n : ℚ) / 2

end

end A139576.P1827980775438386881

namespace A139576

/-- `A277979(n)/2` -/
def P1827980775438386881.Spec : Prop :=
  ∀ n, P1827980775438386881.a n = (A139576 n : ℚ)

end A139576

/-! ## A139576.P815018770044764611

`∑[a(n-1)+4]` with `a(0)=0, a(1)=11`
-/

namespace A139576.P815018770044764611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139576.P815018770044764611

namespace A139576

/-- `∑[a(n-1)+4]` -/
def P815018770044764611.Spec : Prop :=
  ∀ n, (P815018770044764611.a n : ℤ) = A139576 n

end A139576

/-! ## A139576.P4912189647680891749

`C(Δ[(n+2)²], 2)-10`
-/

namespace A139576.P4912189647680891749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ) - 10

end

end A139576.P4912189647680891749

namespace A139576

/-- `C(Δ[(n+2)²], 2)-10` -/
def P4912189647680891749.Spec : Prop :=
  ∀ n, P4912189647680891749.a n = A139576 n

end A139576

/-! ## A139576.P13439743805244713357

`∑[record[lcm(2, n)+9]]-9`
-/

namespace A139576.P13439743805244713357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 9

end

end A139576.P13439743805244713357

namespace A139576

/-- `∑[record[lcm(2, n)+9]]-9` -/
def P13439743805244713357.Spec : Prop :=
  ∀ n, P13439743805244713357.a n = A139576 n

end A139576

/-! ## A139576.P18044969631090478780

`∑[record[xor(3, n+5)]]-6`
-/

namespace A139576.P18044969631090478780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6

end

end A139576.P18044969631090478780

namespace A139576

/-- `∑[record[xor(3, n+5)]]-6` -/
def P18044969631090478780.Spec : Prop :=
  ∀ n, P18044969631090478780.a n = A139576 n

end A139576

/-! ## A139576.P8972710620799110165

`record[(n-5)*2*n]-n`
-/

namespace A139576.P8972710620799110165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A139576.P8972710620799110165

namespace A139576

/-- `record[(n-5)*2*n]-n` -/
def P8972710620799110165.Spec : Prop :=
  ∀ n, P8972710620799110165.a n = A139576 n

end A139576

/-! ## A139576.P2689588386116838516

`lcm(n+2, Δ[(n+2)²])-10`
-/

namespace A139576.P2689588386116838516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - 10

end

end A139576.P2689588386116838516

namespace A139576

/-- `lcm(n+2, Δ[(n+2)²])-10` -/
def P2689588386116838516.Spec : Prop :=
  ∀ n, P2689588386116838516.a n = A139576 n

end A139576

/-! ## A139576.P7166386819533981982

`7*n-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A139576.P7166386819533981982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139576.P7166386819533981982

namespace A139576

/-- `7*n-∑[a(n-1)-4]` -/
def P7166386819533981982.Spec : Prop :=
  ∀ n, P7166386819533981982.a n = A139576 n

end A139576

/-! ## A139576.P11135186753474143900

`∑[ogf((10x-8x^2)/(1-2x+x^2))]+n²`
-/

namespace A139576.P11135186753474143900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A139576.P11135186753474143900

namespace A139576

/-- `∑[ogf((10x-8x^2)/(1-2x+x^2))]+n²` -/
def P11135186753474143900.Spec : Prop :=
  ∀ n, P11135186753474143900.a n = A139576 n

end A139576

/-! ## A139576.P12235647414798828164

`∑[n]+∑[ogf((10x-7x^2)/(1-2x+x^2))]`
-/

namespace A139576.P12235647414798828164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A139576.P12235647414798828164

namespace A139576

/-- `∑[n]+∑[ogf((10x-7x^2)/(1-2x+x^2))]` -/
def P12235647414798828164.Spec : Prop :=
  ∀ n, P12235647414798828164.a n = A139576 n

end A139576

/-! ## A139576.P1255655028400937988

`4*∑[ogf((3x-2x^2)/(1-2x+x^2))]-n`
-/

namespace A139576.P1255655028400937988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A139576.P1255655028400937988

namespace A139576

/-- `4*∑[ogf((3x-2x^2)/(1-2x+x^2))]-n` -/
def P1255655028400937988.Spec : Prop :=
  ∀ n, P1255655028400937988.a n = A139576 n

end A139576

/-! ## A139576.P5315670097654618485

`n-(5-∑[ogf((5-x^2)/(1-2x+x^2))])`
-/

namespace A139576.P5315670097654618485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (5 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139576.P5315670097654618485

namespace A139576

/-- `n-(5-∑[ogf((5-x^2)/(1-2x+x^2))])` -/
def P5315670097654618485.Spec : Prop :=
  ∀ n, P5315670097654618485.a n = A139576 n

end A139576

/-! ## A139576.P8821514318394472165

`Δ[C(n+3+n, 2)]+a(n-1)` with `a(0)=0`
-/

namespace A139576.P8821514318394472165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3 + n) 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A139576.P8821514318394472165

namespace A139576

/-- `Δ[C(n+3+n, 2)]+a(n-1)` -/
def P8821514318394472165.Spec : Prop :=
  ∀ n, P8821514318394472165.a n = A139576 n

end A139576

/-! ## A139576.P8906604553708199157

`Δ[lcm(n+1, n+3+n)]+a(n-1)` with `a(0)=0`
-/

namespace A139576.P8906604553708199157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A139576.P8906604553708199157

namespace A139576

/-- `Δ[lcm(n+1, n+3+n)]+a(n-1)` -/
def P8906604553708199157.Spec : Prop :=
  ∀ n, P8906604553708199157.a n = A139576 n

end A139576

/-! ## A139576.P9279589906557129516

`A028569(n)+n²`
-/

namespace A139576.P9279589906557129516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n + (n ^ 2 : ℤ)

end

end A139576.P9279589906557129516

namespace A139576

/-- `A028569(n)+n²` -/
def P9279589906557129516.Spec : Prop :=
  ∀ n, P9279589906557129516.a n = A139576 n

end A139576

/-! ## A139576.P2367903039920648338

`A277978(n)-n²`
-/

namespace A139576.P2367903039920648338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n - (n ^ 2 : ℤ)

end

end A139576.P2367903039920648338

namespace A139576

/-- `A277978(n)-n²` -/
def P2367903039920648338.Spec : Prop :=
  ∀ n, P2367903039920648338.a n = A139576 n

end A139576

/-! ## A139576.P9030745397420771086

`A140674(n)+∑[n]`
-/

namespace A139576.P9030745397420771086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139576.P9030745397420771086

namespace A139576

/-- `A140674(n)+∑[n]` -/
def P9030745397420771086.Spec : Prop :=
  ∀ n, P9030745397420771086.a n = A139576 n

end A139576

/-! ## A139576.P5850970812921702247

`A161532(n)-1+n`
-/

namespace A139576.P5850970812921702247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n - 1 + (n : ℤ)

end

end A139576.P5850970812921702247

namespace A139576

/-- `A161532(n)-1+n` -/
def P5850970812921702247.Spec : Prop :=
  ∀ n, P5850970812921702247.a n = A139576 n

end A139576

/-! ## A139576.P8668709712556194362

`A152813(n)-(n+3)`
-/

namespace A139576.P8668709712556194362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 n - (n + 3 : ℤ)

end

end A139576.P8668709712556194362

namespace A139576

/-- `A152813(n)-(n+3)` -/
def P8668709712556194362.Spec : Prop :=
  ∀ n, P8668709712556194362.a n = A139576 n

end A139576

/-!
# A139577: a(n) = n*(2*n + 11).

The programs for A139577, the canonical program `A139577.P2586318961733514048` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139577 has offset 0).

The definition of A139577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+11)` (program `A139577.P2586318961733514048`, by `A139577.P2586318961733514048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139577.P2586318961733514048

`n*(2*n+11)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139577

/-- `n*(2*n+11)` -/
def P2586318961733514048.Spec : Prop :=
  ∀ n, (P2586318961733514048.a n : ℤ) = A139577 n

theorem P2586318961733514048.correct : P2586318961733514048.Spec := by
  intro n
  simp only [A139577]

end A139577

/-! ## A139577.P7948182211010845103

`∑[a(n-1)+4]` with `a(0)=0, a(1)=13`
-/

namespace A139577.P7948182211010845103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139577.P7948182211010845103

namespace A139577

/-- `∑[a(n-1)+4]` -/
def P7948182211010845103.Spec : Prop :=
  ∀ n, (P7948182211010845103.a n : ℤ) = A139577 n

end A139577

/-! ## A139577.P16956260426052664990

`∑[record[lcm(2, n)+11]]-11`
-/

namespace A139577.P16956260426052664990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 11

end

end A139577.P16956260426052664990

namespace A139577

/-- `∑[record[lcm(2, n)+11]]-11` -/
def P16956260426052664990.Spec : Prop :=
  ∀ n, P16956260426052664990.a n = A139577 n

end A139577

/-! ## A139577.P2728866839316899393

`∑[record[xor(3, n)+6]]-9`
-/

namespace A139577.P2728866839316899393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 9

end

end A139577.P2728866839316899393

namespace A139577

/-- `∑[record[xor(3, n)+6]]-9` -/
def P2728866839316899393.Spec : Prop :=
  ∀ n, P2728866839316899393.a n = A139577 n

end A139577

/-! ## A139577.P13834589749740768412

`∑[16*n]-3*C(2*n, 2)`
-/

namespace A139577.P13834589749740768412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (3 * Nat.choose (2 * n) 2 : ℤ)

end

end A139577.P13834589749740768412

namespace A139577

/-- `∑[16*n]-3*C(2*n, 2)` -/
def P13834589749740768412.Spec : Prop :=
  ∀ n, P13834589749740768412.a n = A139577 n

end A139577

/-! ## A139577.P9341163772846599266

`∑[ogf((3+6x-5x^2)/(1-2x+x^2))]-3+n`
-/

namespace A139577.P9341163772846599266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 + (n : ℤ)

end

end A139577.P9341163772846599266

namespace A139577

/-- `∑[ogf((3+6x-5x^2)/(1-2x+x^2))]-3+n` -/
def P9341163772846599266.Spec : Prop :=
  ∀ n, P9341163772846599266.a n = A139577 n

end A139577

/-! ## A139577.P14251236541020625672

`n-(3-∑[ogf((3+6x-5x^2)/(1-2x+x^2))])`
-/

namespace A139577.P14251236541020625672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139577.P14251236541020625672

namespace A139577

/-- `n-(3-∑[ogf((3+6x-5x^2)/(1-2x+x^2))])` -/
def P14251236541020625672.Spec : Prop :=
  ∀ n, P14251236541020625672.a n = A139577 n

end A139577

/-! ## A139577.P15482093168572940917

`Δ[lcm(n+2, n+3+n)]+a(n-1)` with `a(0)=0`
-/

namespace A139577.P15482093168572940917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A139577.P15482093168572940917

namespace A139577

/-- `Δ[lcm(n+2, n+3+n)]+a(n-1)` -/
def P15482093168572940917.Spec : Prop :=
  ∀ n, P15482093168572940917.a n = A139577 n

end A139577

/-! ## A139577.P11496476741652747532

`A119412(n)+n²`
-/

namespace A139577.P11496476741652747532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119412 n + (n ^ 2 : ℤ)

end

end A139577.P11496476741652747532

namespace A139577

/-- `A119412(n)+n²` -/
def P11496476741652747532.Spec : Prop :=
  ∀ n, P11496476741652747532.a n = A139577 n

end A139577

/-! ## A139577.P10751942581929836775

`A151542(n)+∑[n]`
-/

namespace A139577.P10751942581929836775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139577.P10751942581929836775

namespace A139577

/-- `A151542(n)+∑[n]` -/
def P10751942581929836775.Spec : Prop :=
  ∀ n, P10751942581929836775.a n = A139577 n

end A139577

/-! ## A139577.P7327381622377156757

`2*A028557(n)+n`
-/

namespace A139577.P7327381622377156757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028557 n + (n : ℤ)

end

end A139577.P7327381622377156757

namespace A139577

/-- `2*A028557(n)+n` -/
def P7327381622377156757.Spec : Prop :=
  ∀ n, P7327381622377156757.a n = A139577 n

end A139577

/-! ## A139577.P16883725529519760659

`A139576(n)+2*n`
-/

namespace A139577.P16883725529519760659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n + (2 * n : ℤ)

end

end A139577.P16883725529519760659

namespace A139577

/-- `A139576(n)+2*n` -/
def P16883725529519760659.Spec : Prop :=
  ∀ n, P16883725529519760659.a n = A139577 n

end A139577

/-! ## A139577.P16238042728069968146

`A152813(n)-3+n`
-/

namespace A139577.P16238042728069968146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 n - 3 + (n : ℤ)

end

end A139577.P16238042728069968146

namespace A139577

/-- `A152813(n)-3+n` -/
def P16238042728069968146.Spec : Prop :=
  ∀ n, P16238042728069968146.a n = A139577 n

end A139577

/-! ## A139577.P17335371273952593321

`2*A028560(n)-n`
-/

namespace A139577.P17335371273952593321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028560 n - (n : ℤ)

end

end A139577.P17335371273952593321

namespace A139577

/-- `2*A028560(n)-n` -/
def P17335371273952593321.Spec : Prop :=
  ∀ n, P17335371273952593321.a n = A139577 n

end A139577

/-! ## A139577.P16329927769350531057

`A139578(n)-2*n`
-/

namespace A139577.P16329927769350531057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139578 n - (2 * n : ℤ)

end

end A139577.P16329927769350531057

namespace A139577

/-- `A139578(n)-2*n` -/
def P16329927769350531057.Spec : Prop :=
  ∀ n, P16329927769350531057.a n = A139577 n

end A139577

/-! ## A139577.P521404184732127103

`4*A055998(n)+n`
-/

namespace A139577.P521404184732127103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055998 n + (n : ℤ)

end

end A139577.P521404184732127103

namespace A139577

/-- `4*A055998(n)+n` -/
def P521404184732127103.Spec : Prop :=
  ∀ n, P521404184732127103.a n = A139577 n

end A139577

/-! ## A139577.P12785838589667830510

`A139570(n)+5*n`
-/

namespace A139577.P12785838589667830510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n + (5 * n : ℤ)

end

end A139577.P12785838589667830510

namespace A139577

/-- `A139570(n)+5*n` -/
def P12785838589667830510.Spec : Prop :=
  ∀ n, P12785838589667830510.a n = A139577 n

end A139577

/-! ## A139577.P17310167982945513077

`A139579(n)-4*n`
-/

namespace A139577.P17310167982945513077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139579 n - (4 * n : ℤ)

end

end A139577.P17310167982945513077

namespace A139577

/-- `A139579(n)-4*n` -/
def P17310167982945513077.Spec : Prop :=
  ∀ n, P17310167982945513077.a n = A139577 n

end A139577

/-! ## A139577.P9308531071443609188

`A046092(n)+9*n`
-/

namespace A139577.P9308531071443609188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (9 * n : ℤ)

end

end A139577.P9308531071443609188

namespace A139577

/-- `A046092(n)+9*n` -/
def P9308531071443609188.Spec : Prop :=
  ∀ n, P9308531071443609188.a n = A139577 n

end A139577

/-! ## A139577.P9024751453750369525

`A014105(n)+10*n`
-/

namespace A139577.P9024751453750369525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + (10 * n : ℤ)

end

end A139577.P9024751453750369525

namespace A139577

/-- `A014105(n)+10*n` -/
def P9024751453750369525.Spec : Prop :=
  ∀ n, P9024751453750369525.a n = A139577 n

end A139577

/-!
# A139578: a(n) = n*(2*n + 13).

The programs for A139578, the canonical program `A139578.P1798970913824919969` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139578 has offset 0).

The definition of A139578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+13)` (program `A139578.P1798970913824919969`, by `A139578.P1798970913824919969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139578.P1798970913824919969

`n*(2*n+13)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139578

/-- `n*(2*n+13)` -/
def P1798970913824919969.Spec : Prop :=
  ∀ n, (P1798970913824919969.a n : ℤ) = A139578 n

theorem P1798970913824919969.correct : P1798970913824919969.Spec := by
  intro n
  simp only [A139578]

end A139578

/-! ## A139578.P4505171783278037363

`∑[a(n-1)+4]` with `a(0)=0, a(1)=15`
-/

namespace A139578.P4505171783278037363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139578.P4505171783278037363

namespace A139578

/-- `∑[a(n-1)+4]` -/
def P4505171783278037363.Spec : Prop :=
  ∀ n, (P4505171783278037363.a n : ℤ) = A139578 n

end A139578

/-! ## A139578.P15401919826470250771

`∑[ogf((6+3x-5x^2)/(1-2x+x^2))]-6`
-/

namespace A139578.P15401919826470250771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 6

end

end A139578.P15401919826470250771

namespace A139578

/-- `∑[ogf((6+3x-5x^2)/(1-2x+x^2))]-6` -/
def P15401919826470250771.Spec : Prop :=
  ∀ n, P15401919826470250771.a n = A139578 n

end A139578

/-! ## A139578.P11446282502472971244

`record[xor(3, n)]+a(n-1)+8` with `a(0)=0`
-/

namespace A139578.P11446282502472971244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (a (n - 1) + 8)

end

end A139578.P11446282502472971244

namespace A139578

/-- `record[xor(3, n)]+a(n-1)+8` -/
def P11446282502472971244.Spec : Prop :=
  ∀ n, (P11446282502472971244.a n : ℤ) = A139578 n

end A139578

/-! ## A139578.P2573991297546407628

`A132759(n)+n²`
-/

namespace A139578.P2573991297546407628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132759 n + (n ^ 2 : ℤ)

end

end A139578.P2573991297546407628

namespace A139578

/-- `A132759(n)+n²` -/
def P2573991297546407628.Spec : Prop :=
  ∀ n, P2573991297546407628.a n = A139578 n

end A139578

/-! ## A139578.P838509929374628223

`A056237(n+1)-6`
-/

namespace A139578.P838509929374628223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056237 (n + 1) - 6

end

end A139578.P838509929374628223

namespace A139578

/-- `A056237(n+1)-6` -/
def P838509929374628223.Spec : Prop :=
  ∀ n, P838509929374628223.a n = A139578 n

end A139578

/-! ## A139578.P777344590011285441

`A161549(n)-(n+1)`
-/

namespace A139578.P777344590011285441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n - (n + 1 : ℤ)

end

end A139578.P777344590011285441

namespace A139578

/-- `A161549(n)-(n+1)` -/
def P777344590011285441.Spec : Prop :=
  ∀ n, P777344590011285441.a n = A139578 n

end A139578

/-! ## A139578.P5790925691394589015

`2*A028560(n)+n`
-/

namespace A139578.P5790925691394589015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028560 n + (n : ℤ)

end

end A139578.P5790925691394589015

namespace A139578

/-- `2*A028560(n)+n` -/
def P5790925691394589015.Spec : Prop :=
  ∀ n, P5790925691394589015.a n = A139578 n

end A139578

/-! ## A139578.P101028733820538813

`A139577(n)+2*n`
-/

namespace A139578.P101028733820538813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139577 n + (2 * n : ℤ)

end

end A139578.P101028733820538813

namespace A139578

/-- `A139577(n)+2*n` -/
def P101028733820538813.Spec : Prop :=
  ∀ n, P101028733820538813.a n = A139578 n

end A139578

/-! ## A139578.P18344520736146149194

`2*A028563(n)-n`
-/

namespace A139578.P18344520736146149194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028563 n - (n : ℤ)

end

end A139578.P18344520736146149194

namespace A139578

/-- `2*A028563(n)-n` -/
def P18344520736146149194.Spec : Prop :=
  ∀ n, P18344520736146149194.a n = A139578 n

end A139578

/-! ## A139578.P389985644963731946

`A139579(n)-2*n`
-/

namespace A139578.P389985644963731946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139579 n - (2 * n : ℤ)

end

end A139578.P389985644963731946

namespace A139578

/-- `A139579(n)-2*n` -/
def P389985644963731946.Spec : Prop :=
  ∀ n, P389985644963731946.a n = A139578 n

end A139578

/-! ## A139578.P7304323270114036542

`A139576(n)+4*n`
-/

namespace A139578.P7304323270114036542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n + (4 * n : ℤ)

end

end A139578.P7304323270114036542

namespace A139578

/-- `A139576(n)+4*n` -/
def P7304323270114036542.Spec : Prop :=
  ∀ n, P7304323270114036542.a n = A139578 n

end A139578

/-! ## A139578.P15692177219087168314

`4*A055999(n)-n`
-/

namespace A139578.P15692177219087168314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055999 n - (n : ℤ)

end

end A139578.P15692177219087168314

namespace A139578

/-- `4*A055999(n)-n` -/
def P15692177219087168314.Spec : Prop :=
  ∀ n, P15692177219087168314.a n = A139578 n

end A139578

/-! ## A139578.P7962824286824442607

`A139580(n)-4*n`
-/

namespace A139578.P7962824286824442607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139580 n - (4 * n : ℤ)

end

end A139578.P7962824286824442607

namespace A139578

/-- `A139580(n)-4*n` -/
def P7962824286824442607.Spec : Prop :=
  ∀ n, P7962824286824442607.a n = A139578 n

end A139578

/-! ## A139578.P17982933794302412078

`A046092(n)+11*n`
-/

namespace A139578.P17982933794302412078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (11 * n : ℤ)

end

end A139578.P17982933794302412078

namespace A139578

/-- `A046092(n)+11*n` -/
def P17982933794302412078.Spec : Prop :=
  ∀ n, P17982933794302412078.a n = A139578 n

end A139578

/-! ## A139578.P5300906830073146597

`2*A140672(n)-n²`
-/

namespace A139578.P5300906830073146597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140672 n - (n ^ 2 : ℤ)

end

end A139578.P5300906830073146597

namespace A139578

/-- `2*A140672(n)-n²` -/
def P5300906830073146597.Spec : Prop :=
  ∀ n, P5300906830073146597.a n = A139578 n

end A139578

/-! ## A139578.P9239620838616269046

`A140679(n)-∑[2*n]`
-/

namespace A139578.P9239620838616269046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139578.P9239620838616269046

namespace A139578

/-- `A140679(n)-∑[2*n]` -/
def P9239620838616269046.Spec : Prop :=
  ∀ n, P9239620838616269046.a n = A139578 n

end A139578

/-! ## A139578.P16498058588407838774

`n²+A098847(n)+n`
-/

namespace A139578.P16498058588407838774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A098847 n + (n : ℤ))

end

end A139578.P16498058588407838774

namespace A139578

/-- `n²+A098847(n)+n` -/
def P16498058588407838774.Spec : Prop :=
  ∀ n, P16498058588407838774.a n = A139578 n

end A139578

/-! ## A139578.P393194314958455044

`n²+A098848(n)-n`
-/

namespace A139578.P393194314958455044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A098848 n - (n : ℤ))

end

end A139578.P393194314958455044

namespace A139578

/-- `n²+A098848(n)-n` -/
def P393194314958455044.Spec : Prop :=
  ∀ n, P393194314958455044.a n = A139578 n

end A139578

/-! ## A139578.P2076829903433595270

`A212331(n)+n-∑[n]`
-/

namespace A139578.P2076829903433595270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A139578.P2076829903433595270

namespace A139578

/-- `A212331(n)+n-∑[n]` -/
def P2076829903433595270.Spec : Prop :=
  ∀ n, P2076829903433595270.a n = A139578 n

end A139578

/-!
# A139579: a(n) = 2*n^2 + 15*n.

The programs for A139579, the canonical program `A139579.P16497202285890633283` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139579 has offset 0).

The definition of A139579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+15*n` (program `A139579.P16497202285890633283`, by `A139579.P16497202285890633283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139579.P16497202285890633283

`2*n²+15*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139579

/-- `2*n²+15*n` -/
def P16497202285890633283.Spec : Prop :=
  ∀ n, (P16497202285890633283.a n : ℤ) = A139579 n

theorem P16497202285890633283.correct : P16497202285890633283.Spec := by
  intro n
  simp only [A139579]

end A139579

/-! ## A139579.P17971428265287510149

`∑[a(n-1)+4]` with `a(0)=0, a(1)=17`
-/

namespace A139579.P17971428265287510149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 17] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139579.P17971428265287510149

namespace A139579

/-- `∑[a(n-1)+4]` -/
def P17971428265287510149.Spec : Prop :=
  ∀ n, (P17971428265287510149.a n : ℤ) = A139579 n

end A139579

/-!
# A139580: a(n) = n*(2*n + 17).

The programs for A139580, the canonical program `A139580.P14196476466695398530` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139580 has offset 0).

The definition of A139580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+17)` (program `A139580.P14196476466695398530`, by `A139580.P14196476466695398530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139580.P14196476466695398530

`n*(2*n+17)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139580

/-- `n*(2*n+17)` -/
def P14196476466695398530.Spec : Prop :=
  ∀ n, (P14196476466695398530.a n : ℤ) = A139580 n

theorem P14196476466695398530.correct : P14196476466695398530.Spec := by
  intro n
  simp only [A139580]

end A139580

/-! ## A139580.P10188679497993432425

`∑[a(n-1)+4]` with `a(0)=0, a(1)=19`
-/

namespace A139580.P10188679497993432425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 19] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139580.P10188679497993432425

namespace A139580

/-- `∑[a(n-1)+4]` -/
def P10188679497993432425.Spec : Prop :=
  ∀ n, (P10188679497993432425.a n : ℤ) = A139580 n

end A139580

/-! ## A139580.P3601748254895978098

`floor(n/acot(Δ[(n+8)²]))`
-/

namespace A139580.P3601748254895978098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A139580.P3601748254895978098

namespace A139580

/-- `floor(n/acot(Δ[(n+8)²]))` -/
def P3601748254895978098.Spec : Prop :=
  ∀ n, P3601748254895978098.a n = A139580 n

end A139580

/-! ## A139580.P7921350463744096360

`round(n/acot(Δ[(n+8)²]))`
-/

namespace A139580.P7921350463744096360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 8) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))

end

end A139580.P7921350463744096360

namespace A139580

/-- `round(n/acot(Δ[(n+8)²]))` -/
def P7921350463744096360.Spec : Prop :=
  ∀ n, P7921350463744096360.a n = A139580 n

end A139580

/-! ## A139580.P14767466759611660135

`19*n²-34*C(n, 2)`
-/

namespace A139580.P14767466759611660135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n ^ 2 : ℤ) - (34 * Nat.choose n 2 : ℤ)

end

end A139580.P14767466759611660135

namespace A139580

/-- `19*n²-34*C(n, 2)` -/
def P14767466759611660135.Spec : Prop :=
  ∀ n, P14767466759611660135.a n = A139580 n

end A139580

/-! ## A139580.P18310149812552244807

`4*∑[ogf((5x-4x^2)/(1-2x+x^2))]-n`
-/

namespace A139580.P18310149812552244807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A139580.P18310149812552244807

namespace A139580

/-- `4*∑[ogf((5x-4x^2)/(1-2x+x^2))]-n` -/
def P18310149812552244807.Spec : Prop :=
  ∀ n, P18310149812552244807.a n = A139580 n

end A139580

/-! ## A139580.P17850035957036820477

`A132761(n)+n²`
-/

namespace A139580.P17850035957036820477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132761 n + (n ^ 2 : ℤ)

end

end A139580.P17850035957036820477

namespace A139580

/-- `A132761(n)+n²` -/
def P17850035957036820477.Spec : Prop :=
  ∀ n, P17850035957036820477.a n = A139580 n

end A139580

/-! ## A139580.P8699059755323742471

`2*A028566(n)+n`
-/

namespace A139580.P8699059755323742471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028566 n + (n : ℤ)

end

end A139580.P8699059755323742471

namespace A139580

/-- `2*A028566(n)+n` -/
def P8699059755323742471.Spec : Prop :=
  ∀ n, P8699059755323742471.a n = A139580 n

end A139580

/-! ## A139580.P12102145462199835416

`A139579(n)+2*n`
-/

namespace A139580.P12102145462199835416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139579 n + (2 * n : ℤ)

end

end A139580.P12102145462199835416

namespace A139580

/-- `A139579(n)+2*n` -/
def P12102145462199835416.Spec : Prop :=
  ∀ n, P12102145462199835416.a n = A139580 n

end A139580

/-! ## A139580.P5116368096600039567

`2*A028569(n)-n`
-/

namespace A139580.P5116368096600039567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028569 n - (n : ℤ)

end

end A139580.P5116368096600039567

namespace A139580

/-- `2*A028569(n)-n` -/
def P5116368096600039567.Spec : Prop :=
  ∀ n, P5116368096600039567.a n = A139580 n

end A139580

/-! ## A139580.P16983339461289314431

`A139581(n)-2*n`
-/

namespace A139580.P16983339461289314431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139581 n - (2 * n : ℤ)

end

end A139580.P16983339461289314431

namespace A139580

/-- `A139581(n)-2*n` -/
def P16983339461289314431.Spec : Prop :=
  ∀ n, P16983339461289314431.a n = A139580 n

end A139580

/-! ## A139580.P6713254571396889989

`A139578(n)+4*n`
-/

namespace A139580.P6713254571396889989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139578 n + (4 * n : ℤ)

end

end A139580.P6713254571396889989

namespace A139580

/-- `A139578(n)+4*n` -/
def P6713254571396889989.Spec : Prop :=
  ∀ n, P6713254571396889989.a n = A139580 n

end A139580

/-! ## A139580.P6107356291716867640

`4*A056000(n)-n`
-/

namespace A139580.P6107356291716867640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056000 n - (n : ℤ)

end

end A139580.P6107356291716867640

namespace A139580

/-- `4*A056000(n)-n` -/
def P6107356291716867640.Spec : Prop :=
  ∀ n, P6107356291716867640.a n = A139580 n

end A139580

/-! ## A139580.P250707822466152160

`A014106(n)+14*n`
-/

namespace A139580.P250707822466152160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n + (14 * n : ℤ)

end

end A139580.P250707822466152160

namespace A139580

/-- `A014106(n)+14*n` -/
def P250707822466152160.Spec : Prop :=
  ∀ n, P250707822466152160.a n = A139580 n

end A139580

/-! ## A139580.P9560139064255039815

`15*n+A046092(n)`
-/

namespace A139580.P9560139064255039815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n : ℤ) + A046092 n

end

end A139580.P9560139064255039815

namespace A139580

/-- `15*n+A046092(n)` -/
def P9560139064255039815.Spec : Prop :=
  ∀ n, P9560139064255039815.a n = A139580 n

end A139580

/-! ## A139580.P10197430306548325966

`A014105(n)+16*n`
-/

namespace A139580.P10197430306548325966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + (16 * n : ℤ)

end

end A139580.P10197430306548325966

namespace A139580

/-- `A014105(n)+16*n` -/
def P10197430306548325966.Spec : Prop :=
  ∀ n, P10197430306548325966.a n = A139580 n

end A139580

/-! ## A139580.P18155290612562553049

`A000384(n)+18*n`
-/

namespace A139580.P18155290612562553049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + (18 * n : ℤ)

end

end A139580.P18155290612562553049

namespace A139580

/-- `A000384(n)+18*n` -/
def P18155290612562553049.Spec : Prop :=
  ∀ n, P18155290612562553049.a n = A139580 n

end A139580

/-! ## A139580.P1894438679576449770

`A014107(n)+20*n`
-/

namespace A139580.P1894438679576449770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n + (20 * n : ℤ)

end

end A139580.P1894438679576449770

namespace A139580

/-- `A014107(n)+20*n` -/
def P1894438679576449770.Spec : Prop :=
  ∀ n, P1894438679576449770.a n = A139580 n

end A139580

/-! ## A139580.P2188224870596808463

`A153037(n)-23+n`
-/

namespace A139580.P2188224870596808463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153037 n - 23 + (n : ℤ)

end

end A139580.P2188224870596808463

namespace A139580

/-- `A153037(n)-23+n` -/
def P2188224870596808463.Spec : Prop :=
  ∀ n, P2188224870596808463.a n = A139580 n

end A139580

/-! ## A139580.P6731607413297837354

`2*A140674(n)-n²`
-/

namespace A139580.P6731607413297837354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140674 n - (n ^ 2 : ℤ)

end

end A139580.P6731607413297837354

namespace A139580

/-- `2*A140674(n)-n²` -/
def P6731607413297837354.Spec : Prop :=
  ∀ n, P6731607413297837354.a n = A139580 n

end A139580

/-!
# A139581: a(n) = n*(2*n + 19).

The programs for A139581, the canonical program `A139581.P16722424302175688649` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139581 has offset 0).

The definition of A139581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+19)` (program `A139581.P16722424302175688649`, by `A139581.P16722424302175688649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139581.P16722424302175688649

`n*(2*n+19)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139581

/-- `n*(2*n+19)` -/
def P16722424302175688649.Spec : Prop :=
  ∀ n, (P16722424302175688649.a n : ℤ) = A139581 n

theorem P16722424302175688649.correct : P16722424302175688649.Spec := by
  intro n
  simp only [A139581]

end A139581

/-! ## A139581.P17105616443521501040

`∑[a(n-1)+4]` with `a(0)=0, a(1)=21`
-/

namespace A139581.P17105616443521501040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 21] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139581.P17105616443521501040

namespace A139581

/-- `∑[a(n-1)+4]` -/
def P17105616443521501040.Spec : Prop :=
  ∀ n, (P17105616443521501040.a n : ℤ) = A139581 n

end A139581

/-! ## A139581.P7240662853124208106

`record[2*n*(n-10)]-n`
-/

namespace A139581.P7240662853124208106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A139581.P7240662853124208106

namespace A139581

/-- `record[2*n*(n-10)]-n` -/
def P7240662853124208106.Spec : Prop :=
  ∀ n, P7240662853124208106.a n = A139581 n

end A139581

/-! ## A139581.P9375767898910029909

`7*n*Δ[n²]-24*C(n, 2)`
-/

namespace A139581.P9375767898910029909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (24 * Nat.choose n 2 : ℤ)

end

end A139581.P9375767898910029909

namespace A139581

/-- `7*n*Δ[n²]-24*C(n, 2)` -/
def P9375767898910029909.Spec : Prop :=
  ∀ n, P9375767898910029909.a n = A139581 n

end A139581

/-! ## A139581.P13577305461411436725

`A132762(n)+n²`
-/

namespace A139581.P13577305461411436725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132762 n + (n ^ 2 : ℤ)

end

end A139581.P13577305461411436725

namespace A139581

/-- `A132762(n)+n²` -/
def P13577305461411436725.Spec : Prop :=
  ∀ n, P13577305461411436725.a n = A139581 n

end A139581

/-! ## A139581.P17286408739076932481

`2*A028569(n)+n`
-/

namespace A139581.P17286408739076932481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028569 n + (n : ℤ)

end

end A139581.P17286408739076932481

namespace A139581

/-- `2*A028569(n)+n` -/
def P17286408739076932481.Spec : Prop :=
  ∀ n, P17286408739076932481.a n = A139581 n

end A139581

/-! ## A139581.P9663405628121606577

`A139580(n)+2*n`
-/

namespace A139581.P9663405628121606577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139580 n + (2 * n : ℤ)

end

end A139581.P9663405628121606577

namespace A139581

/-- `A139580(n)+2*n` -/
def P9663405628121606577.Spec : Prop :=
  ∀ n, P9663405628121606577.a n = A139581 n

end A139581

/-! ## A139581.P18389181722415939383

`2*A098603(n)-n`
-/

namespace A139581.P18389181722415939383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098603 n - (n : ℤ)

end

end A139581.P18389181722415939383

namespace A139581

/-- `2*A098603(n)-n` -/
def P18389181722415939383.Spec : Prop :=
  ∀ n, P18389181722415939383.a n = A139581 n

end A139581

/-! ## A139581.P5337902332616929781

`4*A056000(n)+n`
-/

namespace A139581.P5337902332616929781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056000 n + (n : ℤ)

end

end A139581.P5337902332616929781

namespace A139581

/-- `4*A056000(n)+n` -/
def P5337902332616929781.Spec : Prop :=
  ∀ n, P5337902332616929781.a n = A139581 n

end A139581

/-! ## A139581.P1299805264468272364

`A139579(n)+4*n`
-/

namespace A139581.P1299805264468272364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139579 n + (4 * n : ℤ)

end

end A139581.P1299805264468272364

namespace A139581

/-- `A139579(n)+4*n` -/
def P1299805264468272364.Spec : Prop :=
  ∀ n, P1299805264468272364.a n = A139581 n

end A139581

/-! ## A139581.P10048860163056455618

`A139576(n)+10*n`
-/

namespace A139581.P10048860163056455618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n + (10 * n : ℤ)

end

end A139581.P10048860163056455618

namespace A139581

/-- `A139576(n)+10*n` -/
def P10048860163056455618.Spec : Prop :=
  ∀ n, P10048860163056455618.a n = A139581 n

end A139581

/-! ## A139581.P1301638951495743687

`A046092(n)+17*n`
-/

namespace A139581.P1301638951495743687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (17 * n : ℤ)

end

end A139581.P1301638951495743687

namespace A139581

/-- `A046092(n)+17*n` -/
def P1301638951495743687.Spec : Prop :=
  ∀ n, P1301638951495743687.a n = A139581 n

end A139581

/-! ## A139581.P929767908437211960

`2*A140675(n)-n²`
-/

namespace A139581.P929767908437211960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140675 n - (n ^ 2 : ℤ)

end

end A139581.P929767908437211960

namespace A139581

/-- `2*A140675(n)-n²` -/
def P929767908437211960.Spec : Prop :=
  ∀ n, P929767908437211960.a n = A139581 n

end A139581

/-! ## A139581.P15508878003925587125

`A140689(n)-∑[2*n]`
-/

namespace A139581.P15508878003925587125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140689 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139581.P15508878003925587125

namespace A139581

/-- `A140689(n)-∑[2*n]` -/
def P15508878003925587125.Spec : Prop :=
  ∀ n, P15508878003925587125.a n = A139581 n

end A139581

/-! ## A139581.P5011619533724899120

`n²+A098850(n)+n`
-/

namespace A139581.P5011619533724899120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A098850 n + (n : ℤ))

end

end A139581.P5011619533724899120

namespace A139581

/-- `n²+A098850(n)+n` -/
def P5011619533724899120.Spec : Prop :=
  ∀ n, P5011619533724899120.a n = A139581 n

end A139581

/-! ## A139581.P9687265751178711550

`n²+A120071(n)-n`
-/

namespace A139581.P9687265751178711550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A120071 n - (n : ℤ))

end

end A139581.P9687265751178711550

namespace A139581

/-- `n²+A120071(n)-n` -/
def P9687265751178711550.Spec : Prop :=
  ∀ n, P9687265751178711550.a n = A139581 n

end A139581

/-! ## A139581.P10973366315284291644

`A140681(n)+n-n²`
-/

namespace A139581.P10973366315284291644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A139581.P10973366315284291644

namespace A139581

/-- `A140681(n)+n-n²` -/
def P10973366315284291644.Spec : Prop :=
  ∀ n, P10973366315284291644.a n = A139581 n

end A139581

/-! ## A139581.P2302433997151011077

`abs(A195026(n)-24*C(n, 2))`
-/

namespace A139581.P2302433997151011077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195026 n - (24 * Nat.choose n 2 : ℤ)|

end

end A139581.P2302433997151011077

namespace A139581

/-- `abs(A195026(n)-24*C(n, 2))` -/
def P2302433997151011077.Spec : Prop :=
  ∀ n, P2302433997151011077.a n = A139581 n

end A139581

/-! ## A139581.P12057231372043947179

`A008602(n)+A000384(n)`
-/

namespace A139581.P12057231372043947179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 n + A000384 n

end

end A139581.P12057231372043947179

namespace A139581

/-- `A008602(n)+A000384(n)` -/
def P12057231372043947179.Spec : Prop :=
  ∀ n, P12057231372043947179.a n = A139581 n

end A139581

/-! ## A139581.P2573492327561917785

`A008601(n)+A001105(n)`
-/

namespace A139581.P2573492327561917785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n + A001105 n

end

end A139581.P2573492327561917785

namespace A139581

/-- `A008601(n)+A001105(n)` -/
def P2573492327561917785.Spec : Prop :=
  ∀ n, P2573492327561917785.a n = A139581 n

end A139581

/-!
# A139582: Twice partition numbers.

The programs for A139582, there is no canonical definition to state claims against.
-/

/-! ## A139582.P9614476134335450242

`2*A000041(n)`
-/

namespace A139582.P9614476134335450242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000041 n

end

end A139582.P9614476134335450242

/-! ## A139582.P5679140720812149488

`∑[2*A002865(n)]`
-/

namespace A139582.P5679140720812149488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139582.P5679140720812149488

/-! ## A139582.P7239044989940368959

`2*(A000065(n)+1)`
-/

namespace A139582.P7239044989940368959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000065 n + 1)

end

end A139582.P7239044989940368959

/-! ## A139582.P2674451551482039093

`2*(A133041(n)-n)`
-/

namespace A139582.P2674451551482039093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133041 n - (n : ℤ))

end

end A139582.P2674451551482039093

/-! ## A139582.P18269203197210847186

`∑[2*A085811(n+3)]`
-/

namespace A139582.P18269203197210847186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139582.P18269203197210847186

/-! ## A139582.P9220154075070838452

`2*(∑[A232697(n)]-n)`
-/

namespace A139582.P9220154075070838452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A139582.P9220154075070838452

/-! ## A139582.P16780504285768016597

`A084376(n)+A002865(n)`
-/

namespace A139582.P16780504285768016597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n + A002865 n

end

end A139582.P16780504285768016597

/-! ## A139582.P3733667653800733466

`∑[A002865(n)]+A000041(n)`
-/

namespace A139582.P3733667653800733466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000041 n

end

end A139582.P3733667653800733466

/-! ## A139582.P7726140204036987005

`A000041(n)+A000065(n)+1`
-/

namespace A139582.P7726140204036987005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A000065 n + 1)

end

end A139582.P7726140204036987005

/-! ## A139582.P18178899808979490830

`A085811(n+3)+A084376(n)`
-/

namespace A139582.P18178899808979490830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) + A084376 n

end

end A139582.P18178899808979490830

/-! ## A139582.P13070938324995236672

`A000041(n-char[1])+A000041(n)`
-/

namespace A139582.P13070938324995236672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n - (if ∃ j, f1 j = n then 1 else 0)) + A000041 n

end

end A139582.P13070938324995236672

/-! ## A139582.P14143692228959712122

`A000041(n)+A295341(n)+A000726(n)`
-/

namespace A139582.P14143692228959712122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A295341 n + A000726 n)

end

end A139582.P14143692228959712122

/-! ## A139582.P4506165259166599689

`A046682(n)+A330644(n)+A046682(n)`
-/

namespace A139582.P4506165259166599689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n + (A330644 n + A046682 n)

end

end A139582.P4506165259166599689

/-! ## A139582.P3997429015625831896

`∑[A002865(n)]+A295341(n)+A000726(n)`
-/

namespace A139582.P3997429015625831896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A295341 n + A000726 n)

end

end A139582.P3997429015625831896

/-! ## A139582.P3494156200549718075

`2/3*A299473(n)`
-/

namespace A139582.P3494156200549718075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A299473 n : ℚ)

end

end A139582.P3494156200549718075

/-! ## A139582.P13336519376532118452

`A299473(n)-A000041(n)`
-/

namespace A139582.P13336519376532118452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 n - A000041 n

end

end A139582.P13336519376532118452

/-! ## A139582.P12559915179724687202

`A299474(n)/2`
-/

namespace A139582.P12559915179724687202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / 2

end

end A139582.P12559915179724687202

/-! ## A139582.P9506585842029457922

`A000070(n)-A058884(n)`
-/

namespace A139582.P9506585842029457922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A058884 n

end

end A139582.P9506585842029457922

/-! ## A139582.P3515306474149627236

`2/(n+1)*A228816(n+1)`
-/

namespace A139582.P3515306474149627236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A228816 (n + 1) : ℚ)

end

end A139582.P3515306474149627236

/-! ## A139582.P2139878502582231933

`2*A183011(n)/A183010(n)`
-/

namespace A139582.P2139878502582231933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A183011 n : ℚ) / (A183010 n : ℚ)

end

end A139582.P2139878502582231933

/-!
# A139586: Non-Fibonacci numbers with Fibonacci number of divisors.

The programs for A139586, there is no canonical definition to state claims against.
-/

/-! ## A139586.P9177731082050514795

`filter[A001690(n+1), A122895(#)]`
-/

namespace A139586.P9177731082050514795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139586.P9177731082050514795

/-! ## A139586.P9925890326822812347

`eq[char[A139587(n+1)], A010056(n)]`
-/

namespace A139586.P9925890326822812347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A139586.P9925890326822812347

/-! ## A139586.P12158372195773395795

`lt[A010056(n), char[A026416(n+1)]]`
-/

namespace A139586.P12158372195773395795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139586.P12158372195773395795

/-! ## A139586.P18193121681191087128

`lt[A010056(n), char[A123193(n+1)]]`
-/

namespace A139586.P18193121681191087128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139586.P18193121681191087128

/-! ## A139586.P3786494161910578477

`A026416(lt[A238745(3*n+5), n])`
-/

namespace A139586.P3786494161910578477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (3 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A139586.P3786494161910578477

/-! ## A139586.P14166443828366844737

`∩[A001690(n+1), A026416(n+1)]`
-/

namespace A139586.P14166443828366844737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139586.P14166443828366844737

/-! ## A139586.P1910326579172550961

`∩[A001690(n+1), A123193(n+1)]`
-/

namespace A139586.P1910326579172550961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139586.P1910326579172550961

/-! ## A139586.P1734671445985568934

`lt[A010056(n), A192687(A032741(n))]`
-/

namespace A139586.P1734671445985568934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139586.P1734671445985568934

/-! ## A139586.P16016896474701453259

`lt[A010056(n), A010056(A032741(n)+1)]`
-/

namespace A139586.P16016896474701453259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139586.P16016896474701453259

/-!
# A139587: Non-Fibonacci numbers with non-Fibonacci number of divisors.

The programs for A139587, the canonical program `A139587.P10239951385813778366` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139587 has offset 1).

The definition of A139587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139587.P10239951385813778366

`∩[A123240(n+1), comp[A000045(n)]]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139587

/-- `∩[A123240(n+1), comp[A000045(n)]]` -/
def P10239951385813778366.Spec : Prop :=
  ∀ n, (P10239951385813778366.a n : ℤ) = A139587 (n + 1)

theorem P10239951385813778366.correct : P10239951385813778366.Spec := by
  intro n
  simp only [A139587, Nat.add_sub_cancel]

end A139587

/-! ## A139587.P9677972107381921400

`∩[A123240(n+1), comp[A098054(n)]]`
-/

namespace A139587.P9677972107381921400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P9677972107381921400

namespace A139587

/-- `∩[A123240(n+1), comp[A098054(n)]]` -/
def P9677972107381921400.Spec : Prop :=
  ∀ n, (P9677972107381921400.a n : ℤ) = A139587 (n + 1)

end A139587

/-! ## A139587.P5347203153036623374

`∩[A123240(n+1), comp[A102875(n)]]`
-/

namespace A139587.P5347203153036623374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P5347203153036623374

namespace A139587

/-- `∩[A123240(n+1), comp[A102875(n)]]` -/
def P5347203153036623374.Spec : Prop :=
  ∀ n, (P5347203153036623374.a n : ℤ) = A139587 (n + 1)

end A139587

/-! ## A139587.P6008134516945643806

`∩[A123240(n+1), comp[A103609(n)]]`
-/

namespace A139587.P6008134516945643806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P6008134516945643806

namespace A139587

/-- `∩[A123240(n+1), comp[A103609(n)]]` -/
def P6008134516945643806.Spec : Prop :=
  ∀ n, (P6008134516945643806.a n : ℤ) = A139587 (n + 1)

end A139587

/-! ## A139587.P6598805902771108253

`∩[A001690(n+1), A123240(n+1)]`
-/

namespace A139587.P6598805902771108253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139587.P6598805902771108253

namespace A139587

/-- `∩[A001690(n+1), A123240(n+1)]` -/
def P6598805902771108253.Spec : Prop :=
  ∀ n, (P6598805902771108253.a n : ℤ) = A139587 (n + 1)

end A139587

/-! ## A139587.P8331958192148878433

`lt[A010056(n)+char[A123193(n+1)], 1]`
-/

namespace A139587.P8331958192148878433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A139587.P8331958192148878433

namespace A139587

/-- `lt[A010056(n)+char[A123193(n+1)], 1]` -/
def P8331958192148878433.Spec : Prop :=
  ∀ n, (P8331958192148878433.a n : ℤ) = A139587 (n + 1)

end A139587

/-! ## A139587.P12539850555117803015

`∩[A001690(n+1), comp[A123193(n+1)]]`
-/

namespace A139587.P12539850555117803015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A139587.P12539850555117803015

namespace A139587

/-- `∩[A001690(n+1), comp[A123193(n+1)]]` -/
def P12539850555117803015.Spec : Prop :=
  ∀ n, (P12539850555117803015.a n : ℤ) = A139587 (n + 1)

end A139587

/-! ## A139587.P14998781220739172094

`∩[comp[A123231(n+1)], A123240(n+1)]`
-/

namespace A139587.P14998781220739172094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A139587.P14998781220739172094

namespace A139587

/-- `∩[comp[A123231(n+1)], A123240(n+1)]` -/
def P14998781220739172094.Spec : Prop :=
  ∀ n, (P14998781220739172094.a n : ℤ) = A139587 (n + 1)

end A139587

/-!
# A139588: Nonprime numbers with Fibonacci number of divisors.

The programs for A139588, the canonical program `A139588.P5307626544462001957` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139588 has offset 1).

The definition of A139588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139588.P7078946919182068092

`filter[A123193(n+1), A005171(#)]`
-/

namespace A139588.P7078946919182068092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A139588.P7078946919182068092

namespace A139588

/-- `filter[A123193(n+1), A005171(#)]` -/
def P7078946919182068092.Spec : Prop :=
  ∀ n, P7078946919182068092.a n = A139588 (n + 1)

end A139588

/-! ## A139588.P5307626544462001957

`filter[A018252(n+1), A122895(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139588

/-- `filter[A018252(n+1), A122895(#)]` -/
def P5307626544462001957.Spec : Prop :=
  ∀ n, P5307626544462001957.a n = A139588 (n + 1)

theorem P5307626544462001957.correct : P5307626544462001957.Spec := by
  intro n
  simp only [A139588, Nat.add_sub_cancel]

end A139588

/-! ## A139588.P154456258990914727

`filter[A289553(n+1), A122895(#)]`
-/

namespace A139588.P154456258990914727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139588.P154456258990914727

namespace A139588

/-- `filter[A289553(n+1), A122895(#)]` -/
def P154456258990914727.Spec : Prop :=
  ∀ n, P154456258990914727.a n = A139588 (n + 1)

end A139588

/-! ## A139588.P18417961416268694297

`filter[A141468(n+2), A122895(#)]`
-/

namespace A139588.P18417961416268694297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139588.P18417961416268694297

namespace A139588

/-- `filter[A141468(n+2), A122895(#)]` -/
def P18417961416268694297.Spec : Prop :=
  ∀ n, P18417961416268694297.a n = A139588 (n + 1)

end A139588

/-! ## A139588.P5248057204976443049

`filter[A073846(2*n+1), A122895(#)]`
-/

namespace A139588.P5248057204976443049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139588.P5248057204976443049

namespace A139588

/-- `filter[A073846(2*n+1), A122895(#)]` -/
def P5248057204976443049.Spec : Prop :=
  ∀ n, P5248057204976443049.a n = A139588 (n + 1)

end A139588

/-! ## A139588.P18129742946085774943

`filter[A222307(2*n+1), A122895(#)]`
-/

namespace A139588.P18129742946085774943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A139588.P18129742946085774943

namespace A139588

/-- `filter[A222307(2*n+1), A122895(#)]` -/
def P18129742946085774943.Spec : Prop :=
  ∀ n, P18129742946085774943.a n = A139588 (n + 1)

end A139588

/-! ## A139588.P11462460214790550286

`∩[A018252(n+1), A123193(n+1)]`
-/

namespace A139588.P11462460214790550286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139588.P11462460214790550286

namespace A139588

/-- `∩[A018252(n+1), A123193(n+1)]` -/
def P11462460214790550286.Spec : Prop :=
  ∀ n, (P11462460214790550286.a n : ℤ) = A139588 (n + 1)

end A139588

/-! ## A139588.P11994179326278495166

`∩[A123193(n+1), A141468(n+1)]`
-/

namespace A139588.P11994179326278495166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139588.P11994179326278495166

namespace A139588

/-- `∩[A123193(n+1), A141468(n+1)]` -/
def P11994179326278495166.Spec : Prop :=
  ∀ n, (P11994179326278495166.a n : ℤ) = A139588 (n + 1)

end A139588

/-! ## A139588.P16335577673828375133

`∩[A123193(n+1), A289553(n+1)]`
-/

namespace A139588.P16335577673828375133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139588.P16335577673828375133

namespace A139588

/-- `∩[A123193(n+1), A289553(n+1)]` -/
def P16335577673828375133.Spec : Prop :=
  ∀ n, (P16335577673828375133.a n : ℤ) = A139588 (n + 1)

end A139588

/-! ## A139588.P14061910846922340006

`record[A122895(n+1)*A191558(n+1)]`
-/

namespace A139588.P14061910846922340006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1) * A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139588.P14061910846922340006

namespace A139588

/-- `record[A122895(n+1)*A191558(n+1)]` -/
def P14061910846922340006.Spec : Prop :=
  ∀ n, P14061910846922340006.a n = A139588 (n + 1)

end A139588

/-! ## A139588.P5154623894462613413

`eq[A010051(n+1)+1, A122895(n+1)]+1`
-/

namespace A139588.P5154623894462613413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A139588.P5154623894462613413

namespace A139588

/-- `eq[A010051(n+1)+1, A122895(n+1)]+1` -/
def P5154623894462613413.Spec : Prop :=
  ∀ n, (P5154623894462613413.a n : ℤ) = A139588 (n + 1)

end A139588

/-! ## A139588.P10999194807427915571

`∩[A289508(A007821(n+1)), A123193(n+1)]`
-/

namespace A139588.P10999194807427915571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A007821 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139588.P10999194807427915571

namespace A139588

/-- `∩[A289508(A007821(n+1)), A123193(n+1)]` -/
def P10999194807427915571.Spec : Prop :=
  ∀ n, (P10999194807427915571.a n : ℤ) = A139588 (n + 1)

end A139588

/-!
# A139589: Fibonacci numbers with Fibonacci number of divisors.

The programs for A139589, there is no canonical definition to state claims against.
-/

/-! ## A139589.P13252660849737412588

`filter[A000045(n+1), A391747(#)]`
-/

namespace A139589.P13252660849737412588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A139589.P13252660849737412588

/-! ## A139589.P12134434000701281595

`filter[A061305(n+1), A391747(#)]`
-/

namespace A139589.P12134434000701281595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A139589.P12134434000701281595

/-! ## A139589.P12669969622122945116

`filter[A238497(n+1), A391747(#)]`
-/

namespace A139589.P12669969622122945116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A139589.P12669969622122945116

/-! ## A139589.P1666708916091178660

`filter[A212804(n+2), A391747(#)]`
-/

namespace A139589.P1666708916091178660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A139589.P1666708916091178660

/-! ## A139589.P7635291005192670212

`filter[A324969(n+2), A391747(#)]`
-/

namespace A139589.P7635291005192670212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A139589.P7635291005192670212

/-!
# A139590: Fibonacci numbers with a non-Fibonacci number of divisors.

The programs for A139590, there is no canonical definition to state claims against.
-/

/-! ## A139590.P16103847864634856621

`filter[A177194(n+3), A359464(#)]`
-/

namespace A139590.P16103847864634856621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177194 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A139590.P16103847864634856621

/-! ## A139590.P18440817187529323415

`A120251(p?[A118957(n+5)])`
-/

namespace A139590.P18440817187529323415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118957 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120251 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A139590.P18440817187529323415

/-! ## A139590.P2307331321787338401

`eq[A010056(n), A010172(A032741(n))]`
-/

namespace A139590.P2307331321787338401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010172 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139590.P2307331321787338401

/-!
# A139591: A139275(n) followed by 18-gonal number A051870(n+1).

The programs for A139591, the canonical program `A139591.P1147052635391378439` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139591 has offset 0).

The definition of A139591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139591.P1147052635391378439

`∑[record[and(n, -7)]]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139591

/-- `∑[record[and(n, -7)]]` -/
def P1147052635391378439.Spec : Prop :=
  ∀ n, P1147052635391378439.a n = A139591 n

theorem P1147052635391378439.correct : P1147052635391378439.Spec := by
  intro n
  simp only [A139591]

end A139591

/-! ## A139591.P18159294203308198866

`∑[record[or(6, n)-6]]`
-/

namespace A139591.P18159294203308198866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P18159294203308198866

namespace A139591

/-- `∑[record[or(6, n)-6]]` -/
def P18159294203308198866.Spec : Prop :=
  ∀ n, P18159294203308198866.a n = A139591 n

end A139591

/-! ## A139591.P2441434481013674846

`∑[record[xor(6, n)-6]]`
-/

namespace A139591.P2441434481013674846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P2441434481013674846

namespace A139591

/-- `∑[record[xor(6, n)-6]]` -/
def P2441434481013674846.Spec : Prop :=
  ∀ n, P2441434481013674846.a n = A139591 n

end A139591

/-! ## A139591.P5619556232552810175

`∑[record[xor(6, or(6, n))]]`
-/

namespace A139591.P5619556232552810175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (Nat.lor 6 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P5619556232552810175

namespace A139591

/-- `∑[record[xor(6, or(6, n))]]` -/
def P5619556232552810175.Spec : Prop :=
  ∀ n, (P5619556232552810175.a n : ℤ) = A139591 n

end A139591

/-! ## A139591.P44416975218111935

`∑[xor(6, record[xor(6, n)])]`
-/

namespace A139591.P44416975218111935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P44416975218111935

namespace A139591

/-- `∑[xor(6, record[xor(6, n)])]` -/
def P44416975218111935.Spec : Prop :=
  ∀ n, (P44416975218111935.a n : ℤ) = A139591 n

end A139591

/-! ## A139591.P8115125247193674255

`∑[lt[or(6, n-2), n]]`
-/

namespace A139591.P8115125247193674255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P8115125247193674255

namespace A139591

/-- `∑[lt[or(6, n-2), n]]` -/
def P8115125247193674255.Spec : Prop :=
  ∀ n, (P8115125247193674255.a n : ℤ) = A139591 n

end A139591

/-! ## A139591.P8947483472711049243

`∑[lt[n+2, xor(6, n)]]`
-/

namespace A139591.P8947483472711049243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P8947483472711049243

namespace A139591

/-- `∑[lt[n+2, xor(6, n)]]` -/
def P8947483472711049243.Spec : Prop :=
  ∀ n, (P8947483472711049243.a n : ℤ) = A139591 n

end A139591

/-! ## A139591.P18012252373210809444

`∑[a(n-2)+8]` with `a(0)=0, a(1)=1`
-/

namespace A139591.P18012252373210809444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P18012252373210809444

namespace A139591

/-- `∑[a(n-2)+8]` -/
def P18012252373210809444.Spec : Prop :=
  ∀ n, (P18012252373210809444.a n : ℤ) = A139591 n

end A139591

/-! ## A139591.P4360509795627529682

`∑[∑[C(7, a(n-1))]]` with `a(0)=0`
-/

namespace A139591.P4360509795627529682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose 7 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P4360509795627529682

namespace A139591

/-- `∑[∑[C(7, a(n-1))]]` -/
def P4360509795627529682.Spec : Prop :=
  ∀ n, (P4360509795627529682.a n : ℤ) = A139591 n

end A139591

/-! ## A139591.P8547847262100702610

`∑[6*floor(n/2)+n]`
-/

namespace A139591.P8547847262100702610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P8547847262100702610

namespace A139591

/-- `∑[6*floor(n/2)+n]` -/
def P8547847262100702610.Spec : Prop :=
  ∀ n, P8547847262100702610.a n = A139591 n

end A139591

/-! ## A139591.P15848841424312025208

`8*n+a(n-2)-7` with `a(0)=0, a(1)=1`
-/

namespace A139591.P15848841424312025208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 7)

end

end A139591.P15848841424312025208

namespace A139591

/-- `8*n+a(n-2)-7` -/
def P15848841424312025208.Spec : Prop :=
  ∀ n, P15848841424312025208.a n = A139591 n

end A139591

/-! ## A139591.P1780545510598931260

`8*n-(7-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A139591.P1780545510598931260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (8 * n : ℤ) - (7 - a (n - 2))

end

end A139591.P1780545510598931260

namespace A139591

/-- `8*n-(7-a(n-2))` -/
def P1780545510598931260.Spec : Prop :=
  ∀ n, P1780545510598931260.a n = A139591 n

end A139591

/-! ## A139591.P13085950399961288173

`floor(∑[∑[8-a(n-1)]-7])` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A139591.P13085950399961288173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139591.P13085950399961288173

namespace A139591

/-- `floor(∑[∑[8-a(n-1)]-7])` -/
def P13085950399961288173.Spec : Prop :=
  ∀ n, P13085950399961288173.a n = A139591 n

end A139591

/-! ## A139591.P7111918104828785249

`∑[1-a(n-1)]-∑[a(n-1)-4]` with `a(0)=2`
-/

namespace A139591.P7111918104828785249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A139591.P7111918104828785249

namespace A139591

/-- `∑[1-a(n-1)]-∑[a(n-1)-4]` -/
def P7111918104828785249.Spec : Prop :=
  ∀ n, P7111918104828785249.a n = A139591 n

end A139591

/-! ## A139591.P13355813295255541931

`(n-1+n)²+n-1-a(n-1)` with `a(0)=0`
-/

namespace A139591.P13355813295255541931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1 + (n : ℤ)) ^ 2 + ((n : ℤ) - 1) - a (n - 1)

end

end A139591.P13355813295255541931

namespace A139591

/-- `(n-1+n)²+n-1-a(n-1)` -/
def P13355813295255541931.Spec : Prop :=
  ∀ n, P13355813295255541931.a n = A139591 n

end A139591

/-! ## A139591.P11538612449153576601

`(2*n+1)*(n+1)-∑[gcd(2, n+1)²]`
-/

namespace A139591.P11538612449153576601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139591.P11538612449153576601

namespace A139591

/-- `(2*n+1)*(n+1)-∑[gcd(2, n+1)²]` -/
def P11538612449153576601.Spec : Prop :=
  ∀ n, P11538612449153576601.a n = A139591 n

end A139591

/-! ## A139591.P4705967084178999609

`A195015(n)-∑[n]`
-/

namespace A139591.P4705967084178999609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139591.P4705967084178999609

namespace A139591

/-- `A195015(n)-∑[n]` -/
def P4705967084178999609.Spec : Prop :=
  ∀ n, P4705967084178999609.a n = A139591 n

end A139591

/-! ## A139591.P10382950043035018920

`(A195146(n)+n)/2`
-/

namespace A139591.P10382950043035018920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195146 n + (n : ℤ) : ℚ) / 2

end

end A139591.P10382950043035018920

namespace A139591

/-- `(A195146(n)+n)/2` -/
def P10382950043035018920.Spec : Prop :=
  ∀ n, P10382950043035018920.a n = (A139591 n : ℚ)

end A139591

/-! ## A139591.P11280878762508746937

`floor(A077221(n)+n/2)`
-/

namespace A139591.P11280878762508746937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077221 n : ℚ) + (n : ℚ) / 2⌋

end

end A139591.P11280878762508746937

namespace A139591

/-- `floor(A077221(n)+n/2)` -/
def P11280878762508746937.Spec : Prop :=
  ∀ n, P11280878762508746937.a n = A139591 n

end A139591

/-! ## A139591.P5630025563036941980

`A319127(n+1)+∑[n]`
-/

namespace A139591.P5630025563036941980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139591.P5630025563036941980

namespace A139591

/-- `A319127(n+1)+∑[n]` -/
def P5630025563036941980.Spec : Prop :=
  ∀ n, P5630025563036941980.a n = A139591 n

end A139591

/-!
# A139592: A033585(n) followed by A139271(n+1).

The programs for A139592, the canonical program `A139592.P14730865792587110132` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139592 has offset 0).

The definition of A139592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139592.P14730865792587110132

`2*floor((n+1/4)²)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139592

/-- `2*floor((n+1/4)²)` -/
def P14730865792587110132.Spec : Prop :=
  ∀ n, P14730865792587110132.a n = A139592 n

theorem P14730865792587110132.correct : P14730865792587110132.Spec := by
  intro n
  simp only [A139592]

end A139592

/-! ## A139592.P12769988248631633283

`∑[record[and(n, -6)]]`
-/

namespace A139592.P12769988248631633283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P12769988248631633283

namespace A139592

/-- `∑[record[and(n, -6)]]` -/
def P12769988248631633283.Spec : Prop :=
  ∀ n, P12769988248631633283.a n = A139592 n

end A139592

/-! ## A139592.P13232611928459383687

`∑[2*comp[or(2, n)]]`
-/

namespace A139592.P13232611928459383687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P13232611928459383687

namespace A139592

/-- `∑[2*comp[or(2, n)]]` -/
def P13232611928459383687.Spec : Prop :=
  ∀ n, (P13232611928459383687.a n : ℤ) = A139592 n

end A139592

/-! ## A139592.P17041082124017761362

`∑[record[or(5, n)-5]]`
-/

namespace A139592.P17041082124017761362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P17041082124017761362

namespace A139592

/-- `∑[record[or(5, n)-5]]` -/
def P17041082124017761362.Spec : Prop :=
  ∀ n, P17041082124017761362.a n = A139592 n

end A139592

/-! ## A139592.P1427882870006228715

`∑[record[xor(5, n)-5]]`
-/

namespace A139592.P1427882870006228715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P1427882870006228715

namespace A139592

/-- `∑[record[xor(5, n)-5]]` -/
def P1427882870006228715.Spec : Prop :=
  ∀ n, P1427882870006228715.a n = A139592 n

end A139592

/-! ## A139592.P16930128415517053897

`and(C(Δ[n²], 2), -2)`
-/

namespace A139592.P16930128415517053897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ) (-2)

end

end A139592.P16930128415517053897

namespace A139592

/-- `and(C(Δ[n²], 2), -2)` -/
def P16930128415517053897.Spec : Prop :=
  ∀ n, P16930128415517053897.a n = A139592 n

end A139592

/-! ## A139592.P15896060264857853281

`∑[2*lt[n, or(2, n)]]`
-/

namespace A139592.P15896060264857853281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P15896060264857853281

namespace A139592

/-- `∑[2*lt[n, or(2, n)]]` -/
def P15896060264857853281.Spec : Prop :=
  ∀ n, (P15896060264857853281.a n : ℤ) = A139592 n

end A139592

/-! ## A139592.P4469788659753498786

`∑[2*lt[n, xor(2, n)]]`
-/

namespace A139592.P4469788659753498786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P4469788659753498786

namespace A139592

/-- `∑[2*lt[n, xor(2, n)]]` -/
def P4469788659753498786.Spec : Prop :=
  ∀ n, (P4469788659753498786.a n : ℤ) = A139592 n

end A139592

/-! ## A139592.P12256646031563254100

`∑[lt[n+3, xor(5, n)]]`
-/

namespace A139592.P12256646031563254100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P12256646031563254100

namespace A139592

/-- `∑[lt[n+3, xor(5, n)]]` -/
def P12256646031563254100.Spec : Prop :=
  ∀ n, (P12256646031563254100.a n : ℤ) = A139592 n

end A139592

/-! ## A139592.P11349410899945070470

`and(n*Δ[n²], -2)`
-/

namespace A139592.P11349410899945070470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (-2)

end

end A139592.P11349410899945070470

namespace A139592

/-- `and(n*Δ[n²], -2)` -/
def P11349410899945070470.Spec : Prop :=
  ∀ n, P11349410899945070470.a n = A139592 n

end A139592

/-! ## A139592.P3553746913261862392

`∑[a(n-2)+8]` with `a(0)=0, a(1)=2`
-/

namespace A139592.P3553746913261862392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P3553746913261862392

namespace A139592

/-- `∑[a(n-2)+8]` -/
def P3553746913261862392.Spec : Prop :=
  ∀ n, (P3553746913261862392.a n : ℤ) = A139592 n

end A139592

/-! ## A139592.P44774024953154062

`and(n, -2)+2*n²`
-/

namespace A139592.P44774024953154062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + (2 * n ^ 2 : ℤ)

end

end A139592.P44774024953154062

namespace A139592

/-- `and(n, -2)+2*n²` -/
def P44774024953154062.Spec : Prop :=
  ∀ n, P44774024953154062.a n = A139592 n

end A139592

/-! ## A139592.P18270580217353528004

`n*Δ[n²]-and(1, n)`
-/

namespace A139592.P18270580217353528004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (Nat.land 1 n : ℤ)

end

end A139592.P18270580217353528004

namespace A139592

/-- `n*Δ[n²]-and(1, n)` -/
def P18270580217353528004.Spec : Prop :=
  ∀ n, P18270580217353528004.a n = A139592 n

end A139592

/-! ## A139592.P10166284673133695831

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A139592.P10166284673133695831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P10166284673133695831

namespace A139592

/-- `∑[∑[8-a(n-1)]]` -/
def P10166284673133695831.Spec : Prop :=
  ∀ n, P10166284673133695831.a n = A139592 n

end A139592

/-! ## A139592.P5674745551853857389

`∑[2*(2*n-n%2)]`
-/

namespace A139592.P5674745551853857389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P5674745551853857389

namespace A139592

/-- `∑[2*(2*n-n%2)]` -/
def P5674745551853857389.Spec : Prop :=
  ∀ n, P5674745551853857389.a n = A139592 n

end A139592

/-! ## A139592.P16208679456646821865

`∑[2*(or(1, n)+n-1)]`
-/

namespace A139592.P16208679456646821865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P16208679456646821865

namespace A139592

/-- `∑[2*(or(1, n)+n-1)]` -/
def P16208679456646821865.Spec : Prop :=
  ∀ n, P16208679456646821865.a n = A139592 n

end A139592

/-! ## A139592.P8884838064889727632

`∑[xor(1, 3*n)+n-1]`
-/

namespace A139592.P8884838064889727632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (3 * n) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P8884838064889727632

namespace A139592

/-- `∑[xor(1, 3*n)+n-1]` -/
def P8884838064889727632.Spec : Prop :=
  ∀ n, P8884838064889727632.a n = A139592 n

end A139592

/-! ## A139592.P4155402395177850290

`∑[2*(2*n-and(1, n))]`
-/

namespace A139592.P4155402395177850290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P4155402395177850290

namespace A139592

/-- `∑[2*(2*n-and(1, n))]` -/
def P4155402395177850290.Spec : Prop :=
  ∀ n, P4155402395177850290.a n = A139592 n

end A139592

/-! ## A139592.P5678451147223961930

`∑[lt[or(5, n-3), n-2]]`
-/

namespace A139592.P5678451147223961930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P5678451147223961930

namespace A139592

/-- `∑[lt[or(5, n-3), n-2]]` -/
def P5678451147223961930.Spec : Prop :=
  ∀ n, (P5678451147223961930.a n : ℤ) = A139592 n

end A139592

/-! ## A139592.P17142906693900344755

`∑[eq[n-3, or(5, n-3)]]`
-/

namespace A139592.P17142906693900344755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139592.P17142906693900344755

namespace A139592

/-- `∑[eq[n-3, or(5, n-3)]]` -/
def P17142906693900344755.Spec : Prop :=
  ∀ n, (P17142906693900344755.a n : ℤ) = A139592 n

end A139592

/-!
# A139593: A139276(n) followed by A139272(n+1).

The programs for A139593, the canonical program `A139593.P3967233417953035939` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139593 has offset 0).

The definition of A139593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139593.P3967233417953035939

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=22`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139593

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P3967233417953035939.Spec : Prop :=
  ∀ n, P3967233417953035939.a n = A139593 n

theorem P3967233417953035939.correct : P3967233417953035939.Spec := by
  intro n
  simp only [A139593]

end A139593

/-! ## A139593.P16325141288388470419

`∑[4*n-n%2]`
-/

namespace A139593.P16325141288388470419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P16325141288388470419

namespace A139593

/-- `∑[4*n-n%2]` -/
def P16325141288388470419.Spec : Prop :=
  ∀ n, P16325141288388470419.a n = A139593 n

end A139593

/-! ## A139593.P11085266588705842936

`∑[4*n-and(1, n)]`
-/

namespace A139593.P11085266588705842936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P11085266588705842936

namespace A139593

/-- `∑[4*n-and(1, n)]` -/
def P11085266588705842936.Spec : Prop :=
  ∀ n, P11085266588705842936.a n = A139593 n

end A139593

/-! ## A139593.P7679086025264700260

`∑[and(3*n, -2)+n]`
-/

namespace A139593.P7679086025264700260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P7679086025264700260

namespace A139593

/-- `∑[and(3*n, -2)+n]` -/
def P7679086025264700260.Spec : Prop :=
  ∀ n, P7679086025264700260.a n = A139593 n

end A139593

/-! ## A139593.P16724509367717912440

`∑[a(n-2)+8]` with `a(0)=0, a(1)=3`
-/

namespace A139593.P16724509367717912440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P16724509367717912440

namespace A139593

/-- `∑[a(n-2)+8]` -/
def P16724509367717912440.Spec : Prop :=
  ∀ n, (P16724509367717912440.a n : ℤ) = A139593 n

end A139593

/-! ## A139593.P1563565535132339040

`floor(2*(3/8+n)²)`
-/

namespace A139593.P1563565535132339040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((3 : ℚ) / 8 + (n : ℚ)) ^ 2⌋

end

end A139593.P1563565535132339040

namespace A139593

/-- `floor(2*(3/8+n)²)` -/
def P1563565535132339040.Spec : Prop :=
  ∀ n, P1563565535132339040.a n = A139593 n

end A139593

/-! ## A139593.P8868867605915185747

`∑[comp[or(2, n)]+2*n]`
-/

namespace A139593.P8868867605915185747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P8868867605915185747

namespace A139593

/-- `∑[comp[or(2, n)]+2*n]` -/
def P8868867605915185747.Spec : Prop :=
  ∀ n, (P8868867605915185747.a n : ℤ) = A139593 n

end A139593

/-! ## A139593.P11152506577432260258

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=3`
-/

namespace A139593.P11152506577432260258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P11152506577432260258

namespace A139593

/-- `∑[∑[8-a(n-1)]]` -/
def P11152506577432260258.Spec : Prop :=
  ∀ n, P11152506577432260258.a n = A139593 n

end A139593

/-! ## A139593.P13234964010865006670

`∑[or(1, 3*n)+n-1]`
-/

namespace A139593.P13234964010865006670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P13234964010865006670

namespace A139593

/-- `∑[or(1, 3*n)+n-1]` -/
def P13234964010865006670.Spec : Prop :=
  ∀ n, P13234964010865006670.a n = A139593 n

end A139593

/-! ## A139593.P14130404580291313677

`∑[∑[∑[ogf((3x+5x^2)/(1+x))]]]`
-/

namespace A139593.P14130404580291313677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P14130404580291313677

namespace A139593

/-- `∑[∑[∑[ogf((3x+5x^2)/(1+x))]]]` -/
def P14130404580291313677.Spec : Prop :=
  ∀ n, P14130404580291313677.a n = A139593 n

end A139593

/-! ## A139593.P18104356930385340853

`ogf((3x+5x^2)/(1-2x+2x^3-x^4))`
-/

namespace A139593.P18104356930385340853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5] [1, -2, 0, 2, -1] n

end

end A139593.P18104356930385340853

namespace A139593

/-- `ogf((3x+5x^2)/(1-2x+2x^3-x^4))` -/
def P18104356930385340853.Spec : Prop :=
  ∀ n, P18104356930385340853.a n = A139593 n

end A139593

/-! ## A139593.P303543880911191531

`8*n+a(n-2)-5` with `a(0)=0, a(1)=3`
-/

namespace A139593.P303543880911191531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 5)

end

end A139593.P303543880911191531

namespace A139593

/-- `8*n+a(n-2)-5` -/
def P303543880911191531.Spec : Prop :=
  ∀ n, P303543880911191531.a n = A139593 n

end A139593

/-! ## A139593.P8279448800681390259

`8*n-(5-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A139593.P8279448800681390259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (8 * n : ℤ) - (5 - a (n - 2))

end

end A139593.P8279448800681390259

namespace A139593

/-- `8*n-(5-a(n-2))` -/
def P8279448800681390259.Spec : Prop :=
  ∀ n, P8279448800681390259.a n = A139593 n

end A139593

/-! ## A139593.P2977480310905305113

`∑[(n+1)²-or(1, (1-n)²)]`
-/

namespace A139593.P2977480310905305113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.lor 1 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P2977480310905305113

namespace A139593

/-- `∑[(n+1)²-or(1, (1-n)²)]` -/
def P2977480310905305113.Spec : Prop :=
  ∀ n, P2977480310905305113.a n = A139593 n

end A139593

/-! ## A139593.P9818891060261449888

`∑[Δ[(n-2)*2*n]+gcd(2, n)]`
-/

namespace A139593.P9818891060261449888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139593.P9818891060261449888

namespace A139593

/-- `∑[Δ[(n-2)*2*n]+gcd(2, n)]` -/
def P9818891060261449888.Spec : Prop :=
  ∀ n, P9818891060261449888.a n = A139593 n

end A139593

/-! ## A139593.P572296130006262360

`((2*n+1)²-or(1, n+1))/2`
-/

namespace A139593.P572296130006262360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) - (Nat.lor 1 (n + 1) : ℤ) : ℚ) / 2

end

end A139593.P572296130006262360

namespace A139593

/-- `((2*n+1)²-or(1, n+1))/2` -/
def P572296130006262360.Spec : Prop :=
  ∀ n, P572296130006262360.a n = (A139593 n : ℚ)

end A139593

/-! ## A139593.P943953500052861352

`ceil(C(2*n+1, 2)+(n-1)/2)`
-/

namespace A139593.P943953500052861352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) 2 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A139593.P943953500052861352

namespace A139593

/-- `ceil(C(2*n+1, 2)+(n-1)/2)` -/
def P943953500052861352.Spec : Prop :=
  ∀ n, P943953500052861352.a n = A139593 n

end A139593

/-! ## A139593.P15186869558785389296

`ceil((n-1)/2)+lcm(n, 2*n+1)`
-/

namespace A139593.P15186869558785389296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 2⌉ + (Nat.lcm n (2 * n + 1) : ℤ)

end

end A139593.P15186869558785389296

namespace A139593

/-- `ceil((n-1)/2)+lcm(n, 2*n+1)` -/
def P15186869558785389296.Spec : Prop :=
  ∀ n, P15186869558785389296.a n = A139593 n

end A139593

/-! ## A139593.P470496379270441571

`(2*n+1)*(n+1)-∑[gcd(n-1, 2*n)]`
-/

namespace A139593.P470496379270441571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139593.P470496379270441571

namespace A139593

/-- `(2*n+1)*(n+1)-∑[gcd(n-1, 2*n)]` -/
def P470496379270441571.Spec : Prop :=
  ∀ n, P470496379270441571.a n = A139593 n

end A139593

/-! ## A139593.P16790345079296984167

`A397976(n)+n`
-/

namespace A139593.P16790345079296984167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397976 n + (n : ℤ)

end

end A139593.P16790345079296984167

namespace A139593

/-- `A397976(n)+n` -/
def P16790345079296984167.Spec : Prop :=
  ∀ n, P16790345079296984167.a n = A139593 n

end A139593

/-!
# A139594: Number of different n X n symmetric matrices with nonnegative entries summing to 4. Also number of symmetric oriented graphs with 4 arcs on n points.

The programs for A139594, the canonical program `A139594.P16898933930820792701` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139594 has offset 0).

The definition of A139594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139594.P16898933930820792701

`n²*(7+5*n²)/12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139594

/-- `n²*(7+5*n²)/12` -/
def P16898933930820792701.Spec : Prop :=
  ∀ n, P16898933930820792701.a n = (A139594 n : ℚ)

end A139594

/-! ## A139594.P83268132458748971

`∑[n]²+n*C(n, 3)`
-/

namespace A139594.P83268132458748971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n * Nat.choose n 3

end

end A139594.P83268132458748971

namespace A139594

/-- `∑[n]²+n*C(n, 3)` -/
def P83268132458748971.Spec : Prop :=
  ∀ n, (P83268132458748971.a n : ℤ) = A139594 n

end A139594

/-! ## A139594.P11410117335505825700

`n²+5*A002415(n)`
-/

namespace A139594.P11410117335505825700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 5 * A002415 n

end

end A139594.P11410117335505825700

namespace A139594

/-- `n²+5*A002415(n)` -/
def P11410117335505825700.Spec : Prop :=
  ∀ n, P11410117335505825700.a n = A139594 n

end A139594

/-! ## A139594.P2370511978276343647

`A071245(n)+∑[∑[n²]]`
-/

namespace A139594.P2370511978276343647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071245 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139594.P2370511978276343647

namespace A139594

/-- `A071245(n)+∑[∑[n²]]` -/
def P2370511978276343647.Spec : Prop :=
  ∀ n, P2370511978276343647.a n = A139594 n

end A139594

/-! ## A139594.P16998402098681586635

`A071246(n)+A006007(n)`
-/

namespace A139594.P16998402098681586635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071246 n + A006007 n

end

end A139594.P16998402098681586635

namespace A139594

/-- `A071246(n)+A006007(n)` -/
def P16998402098681586635.Spec : Prop :=
  ∀ n, P16998402098681586635.a n = A139594 n

end A139594

/-! ## A139594.P8094160415292879775

`A112742(n)+A006008(n)`
-/

namespace A139594.P8094160415292879775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + A006008 n

end

end A139594.P8094160415292879775

namespace A139594

/-- `A112742(n)+A006008(n)` -/
def P8094160415292879775.Spec : Prop :=
  ∀ n, P8094160415292879775.a n = A139594 n

end A139594

/-! ## A139594.P17226319109671409247

`A361099(n)+A085740(n)`
-/

namespace A139594.P17226319109671409247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361099 n + A085740 n

end

end A139594.P17226319109671409247

namespace A139594

/-- `A361099(n)+A085740(n)` -/
def P17226319109671409247.Spec : Prop :=
  ∀ n, P17226319109671409247.a n = A139594 n

end A139594

/-! ## A139594.P10649259418219719196

`A037270(n)-A002415(n)`
-/

namespace A139594.P10649259418219719196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A002415 n

end

end A139594.P10649259418219719196

namespace A139594

/-- `A037270(n)-A002415(n)` -/
def P10649259418219719196.Spec : Prop :=
  ∀ n, P10649259418219719196.a n = A139594 n

end A139594

/-! ## A139594.P14625793416685660739

`A071270(n)-A006011(n)`
-/

namespace A139594.P14625793416685660739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n - A006011 n

end

end A139594.P14625793416685660739

namespace A139594

/-- `A071270(n)-A006011(n)` -/
def P14625793416685660739.Spec : Prop :=
  ∀ n, P14625793416685660739.a n = A139594 n

end A139594

/-! ## A139594.P7642068826764327437

`A027441(n)-A117662(n)`
-/

namespace A139594.P7642068826764327437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n - A117662 n

end

end A139594.P7642068826764327437

namespace A139594

/-- `A027441(n)-A117662(n)` -/
def P7642068826764327437.Spec : Prop :=
  ∀ n, P7642068826764327437.a n = A139594 n

end A139594

/-! ## A139594.P11306396889403967720

`A001846(n)-A132117(n+1)`
-/

namespace A139594.P11306396889403967720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n - A132117 (n + 1)

end

end A139594.P11306396889403967720

namespace A139594

/-- `A001846(n)-A132117(n+1)` -/
def P11306396889403967720.Spec : Prop :=
  ∀ n, P11306396889403967720.a n = A139594 n

end A139594

/-! ## A139594.P11457288968053671543

`A212560(n)-A328152(n+1)`
-/

namespace A139594.P11457288968053671543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 n - A328152 (n + 1)

end

end A139594.P11457288968053671543

namespace A139594

/-- `A212560(n)-A328152(n+1)` -/
def P11457288968053671543.Spec : Prop :=
  ∀ n, P11457288968053671543.a n = A139594 n

end A139594

/-! ## A139594.P13882352921867007781

`A368046(n)-A185788(n+1)`
-/

namespace A139594.P13882352921867007781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n - A185788 (n + 1)

end

end A139594.P13882352921867007781

namespace A139594

/-- `A368046(n)-A185788(n+1)` -/
def P13882352921867007781.Spec : Prop :=
  ∀ n, P13882352921867007781.a n = A139594 n

end A139594

/-! ## A139594.P5254796569653887141

`A037270(n)-A008911(n)/2`
-/

namespace A139594.P5254796569653887141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037270 n : ℚ) - (A008911 n : ℚ) / 2

end

end A139594.P5254796569653887141

namespace A139594

/-- `A037270(n)-A008911(n)/2` -/
def P5254796569653887141.Spec : Prop :=
  ∀ n, P5254796569653887141.a n = (A139594 n : ℚ)

end A139594

/-! ## A139594.P17680319770844114777

`A006528(n)+A257055(n)-n`
-/

namespace A139594.P17680319770844114777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n + (A257055 n - (n : ℤ))

end

end A139594.P17680319770844114777

namespace A139594

/-- `A006528(n)+A257055(n)-n` -/
def P17680319770844114777.Spec : Prop :=
  ∀ n, P17680319770844114777.a n = A139594 n

end A139594

/-! ## A139594.P8538925507752640589

`A002415(n)+n*A006527(n)`
-/

namespace A139594.P8538925507752640589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + (n : ℤ) * A006527 n

end

end A139594.P8538925507752640589

namespace A139594

/-- `A002415(n)+n*A006527(n)` -/
def P8538925507752640589.Spec : Prop :=
  ∀ n, P8538925507752640589.a n = A139594 n

end A139594

/-! ## A139594.P13761720975846003771

`∑[∑[A010001(n)]-A010001(n)]`
-/

namespace A139594.P13761720975846003771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A010001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139594.P13761720975846003771

namespace A139594

/-- `∑[∑[A010001(n)]-A010001(n)]` -/
def P13761720975846003771.Spec : Prop :=
  ∀ n, P13761720975846003771.a n = A139594 n

end A139594

/-! ## A139594.P1157496422612315341

`∑[2*A004068(n)]-A004068(n)`
-/

namespace A139594.P1157496422612315341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004068 n

end

end A139594.P1157496422612315341

namespace A139594

/-- `∑[2*A004068(n)]-A004068(n)` -/
def P1157496422612315341.Spec : Prop :=
  ∀ n, P1157496422612315341.a n = A139594 n

end A139594

/-! ## A139594.P8315112275809811134

`n²+A008911(n)+A006011(n)`
-/

namespace A139594.P8315112275809811134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A008911 n + A006011 n)

end

end A139594.P8315112275809811134

namespace A139594

/-- `n²+A008911(n)+A006011(n)` -/
def P8315112275809811134.Spec : Prop :=
  ∀ n, P8315112275809811134.a n = A139594 n

end A139594

/-! ## A139594.P1965576785843281517

`A006325(n+1)+A006325(n)+A002415(n)`
-/

namespace A139594.P1965576785843281517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + (A006325 n + A002415 n)

end

end A139594.P1965576785843281517

namespace A139594

/-- `A006325(n+1)+A006325(n)+A002415(n)` -/
def P1965576785843281517.Spec : Prop :=
  ∀ n, P1965576785843281517.a n = A139594 n

end A139594

/-!
# A139595: A139277(n) followed by A139273(n+1).

The programs for A139595, the canonical program `A139595.P17522643177409527417` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139595 has offset 0).

The definition of A139595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139595.P17522643177409527417

`∑[n%2+4*n]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139595

/-- `∑[n%2+4*n]` -/
def P17522643177409527417.Spec : Prop :=
  ∀ n, (P17522643177409527417.a n : ℤ) = A139595 n

theorem P17522643177409527417.correct : P17522643177409527417.Spec := by
  intro n
  simp only [A139595]

end A139595

/-! ## A139595.P182916629983039547

`∑[and(1, n)+4*n]`
-/

namespace A139595.P182916629983039547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P182916629983039547

namespace A139595

/-- `∑[and(1, n)+4*n]` -/
def P182916629983039547.Spec : Prop :=
  ∀ n, (P182916629983039547.a n : ℤ) = A139595 n

theorem P182916629983039547.correct : P182916629983039547.Spec := by
  intro n
  simp only [A139595, Nat.add_sub_cancel, A139595.P182916629983039547.f1, A139595.P182916629983039547.a, A139595.P17522643177409527417.f1, A139595.P17522643177409527417.a, SequenceMachineLib.memo_apply]
  try simp

end A139595

/-! ## A139595.P16865438630556531844

`∑[or(4*n, and(1, n))]`
-/

namespace A139595.P16865438630556531844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * n) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P16865438630556531844

namespace A139595

/-- `∑[or(4*n, and(1, n))]` -/
def P16865438630556531844.Spec : Prop :=
  ∀ n, (P16865438630556531844.a n : ℤ) = A139595 n

end A139595

/-! ## A139595.P2424667554232097719

`∑[a(n-2)+8]` with `a(0)=0, a(1)=5`
-/

namespace A139595.P2424667554232097719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P2424667554232097719

namespace A139595

/-- `∑[a(n-2)+8]` -/
def P2424667554232097719.Spec : Prop :=
  ∀ n, (P2424667554232097719.a n : ℤ) = A139595 n

end A139595

/-! ## A139595.P12184413438128589070

`floor(2*(5/8+n)²)`
-/

namespace A139595.P12184413438128589070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((5 : ℚ) / 8 + (n : ℚ)) ^ 2⌋

end

end A139595.P12184413438128589070

namespace A139595

/-- `floor(2*(5/8+n)²)` -/
def P12184413438128589070.Spec : Prop :=
  ∀ n, P12184413438128589070.a n = A139595 n

end A139595

/-! ## A139595.P7182481345421932172

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=5`
-/

namespace A139595.P7182481345421932172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P7182481345421932172

namespace A139595

/-- `∑[∑[8-a(n-1)]]` -/
def P7182481345421932172.Spec : Prop :=
  ∀ n, P7182481345421932172.a n = A139595 n

end A139595

/-! ## A139595.P5800692679164044811

`∑[∑[∑[ogf((5x+3x^2)/(1+x))]]]`
-/

namespace A139595.P5800692679164044811
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P5800692679164044811

namespace A139595

/-- `∑[∑[∑[ogf((5x+3x^2)/(1+x))]]]` -/
def P5800692679164044811.Spec : Prop :=
  ∀ n, P5800692679164044811.a n = A139595 n

end A139595

/-! ## A139595.P1091652857520482394

`ogf((5x+3x^2)/(1-2x+2x^3-x^4))`
-/

namespace A139595.P1091652857520482394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3] [1, -2, 0, 2, -1] n

end

end A139595.P1091652857520482394

namespace A139595

/-- `ogf((5x+3x^2)/(1-2x+2x^3-x^4))` -/
def P1091652857520482394.Spec : Prop :=
  ∀ n, P1091652857520482394.a n = A139595 n

end A139595

/-! ## A139595.P4667275621000853109

`2*(n+1)²-∑[gcd(2, n)]`
-/

namespace A139595.P4667275621000853109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139595.P4667275621000853109

namespace A139595

/-- `2*(n+1)²-∑[gcd(2, n)]` -/
def P4667275621000853109.Spec : Prop :=
  ∀ n, P4667275621000853109.a n = A139595 n

end A139595

/-! ## A139595.P17880008982575135473

`8*n+a(n-2)-3` with `a(0)=0, a(1)=5`
-/

namespace A139595.P17880008982575135473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 3)

end

end A139595.P17880008982575135473

namespace A139595

/-- `8*n+a(n-2)-3` -/
def P17880008982575135473.Spec : Prop :=
  ∀ n, P17880008982575135473.a n = A139595 n

end A139595

/-! ## A139595.P13061844633386988255

`8*n-(3-a(n-2))` with `a(0)=0, a(1)=5`
-/

namespace A139595.P13061844633386988255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  (8 * n : ℤ) - (3 - a (n - 2))

end

end A139595.P13061844633386988255

namespace A139595

/-- `8*n-(3-a(n-2))` -/
def P13061844633386988255.Spec : Prop :=
  ∀ n, P13061844633386988255.a n = A139595 n

end A139595

/-! ## A139595.P2870135367064152204

`∑[or(1, 3*(n+1))+n-3]`
-/

namespace A139595.P2870135367064152204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * (n + 1)) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P2870135367064152204

namespace A139595

/-- `∑[or(1, 3*(n+1))+n-3]` -/
def P2870135367064152204.Spec : Prop :=
  ∀ n, P2870135367064152204.a n = A139595 n

end A139595

/-! ## A139595.P13152449130849126448

`(or(1, n-1)+(2*n+1)²)/2`
-/

namespace A139595.P13152449130849126448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ((n : ℤ) - 1) + ((2 * n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A139595.P13152449130849126448

namespace A139595

/-- `(or(1, n-1)+(2*n+1)²)/2` -/
def P13152449130849126448.Spec : Prop :=
  ∀ n, P13152449130849126448.a n = (A139595 n : ℚ)

end A139595

/-! ## A139595.P9421145048344859075

`lcm(2*n+1, n+1)-(floor(n/2)+1)`
-/

namespace A139595.P9421145048344859075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (n + 1) : ℤ) - (⌊(n : ℚ) / 2⌋ + 1)

end

end A139595.P9421145048344859075

namespace A139595

/-- `lcm(2*n+1, n+1)-(floor(n/2)+1)` -/
def P9421145048344859075.Spec : Prop :=
  ∀ n, P9421145048344859075.a n = A139595 n

end A139595

/-! ## A139595.P13053610522767717648

`∑[2*(2*n+1)-gcd(n+2, ∑[2*n])]`
-/

namespace A139595.P13053610522767717648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n + 1) : ℤ) - (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P13053610522767717648

namespace A139595

/-- `∑[2*(2*n+1)-gcd(n+2, ∑[2*n])]` -/
def P13053610522767717648.Spec : Prop :=
  ∀ n, P13053610522767717648.a n = A139595 n

end A139595

/-! ## A139595.P2531855274816480147

`∑[A047615(n+1)]`
-/

namespace A139595.P2531855274816480147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P2531855274816480147

namespace A139595

/-- `∑[A047615(n+1)]` -/
def P2531855274816480147.Spec : Prop :=
  ∀ n, P2531855274816480147.a n = A139595 n

end A139595

/-! ## A139595.P5296141306619819364

`∑[A146951(n)-n]`
-/

namespace A139595.P5296141306619819364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P5296141306619819364

namespace A139595

/-- `∑[A146951(n)-n]` -/
def P5296141306619819364.Spec : Prop :=
  ∀ n, P5296141306619819364.a n = A139595 n

end A139595

/-! ## A139595.P6029214445778476528

`A397977(n)+2*n`
-/

namespace A139595.P6029214445778476528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397977 n + (2 * n : ℤ)

end

end A139595.P6029214445778476528

namespace A139595

/-- `A397977(n)+2*n` -/
def P6029214445778476528.Spec : Prop :=
  ∀ n, P6029214445778476528.a n = A139595 n

end A139595

/-! ## A139595.P1321166471550490518

`∑[A047452(n+1)-1]`
-/

namespace A139595.P1321166471550490518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P1321166471550490518

namespace A139595

/-- `∑[A047452(n+1)-1]` -/
def P1321166471550490518.Spec : Prop :=
  ∀ n, P1321166471550490518.a n = A139595 n

end A139595

/-! ## A139595.P7592518327021948060

`∑[A047524(n+1)-2]`
-/

namespace A139595.P7592518327021948060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139595.P7592518327021948060

namespace A139595

/-- `∑[A047524(n+1)-2]` -/
def P7592518327021948060.Spec : Prop :=
  ∀ n, P7592518327021948060.a n = A139595 n

end A139595

/-!
# A139596: A033587(n) followed by even hexagonal number A014635(n+1).

The programs for A139596, the canonical program `A139596.P3616204576914108652` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139596 has offset 0).

The definition of A139596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139596.P3616204576914108652

`2*A156859(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139596

/-- `2*A156859(n)` -/
def P3616204576914108652.Spec : Prop :=
  ∀ n, P3616204576914108652.a n = A139596 n

theorem P3616204576914108652.correct : P3616204576914108652.Spec := by
  intro n
  simp only [A139596]

end A139596

/-! ## A139596.P2969566127506065666

`∑[lt[or(5, n-1), n]]`
-/

namespace A139596.P2969566127506065666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P2969566127506065666

namespace A139596

/-- `∑[lt[or(5, n-1), n]]` -/
def P2969566127506065666.Spec : Prop :=
  ∀ n, (P2969566127506065666.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P17871263417433279821

`∑[record[5-or(5, -n)]]`
-/

namespace A139596.P17871263417433279821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.lor 5 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P17871263417433279821

namespace A139596

/-- `∑[record[5-or(5, -n)]]` -/
def P17871263417433279821.Spec : Prop :=
  ∀ n, P17871263417433279821.a n = A139596 n

end A139596

/-! ## A139596.P2419004233070818825

`and(∑[4*n+1], -2)`
-/

namespace A139596.P2419004233070818825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A139596.P2419004233070818825

namespace A139596

/-- `and(∑[4*n+1], -2)` -/
def P2419004233070818825.Spec : Prop :=
  ∀ n, P2419004233070818825.a n = A139596 n

end A139596

/-! ## A139596.P879289920972479598

`∑[a(n-2)+8]` with `a(0)=0, a(1)=6`
-/

namespace A139596.P879289920972479598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P879289920972479598

namespace A139596

/-- `∑[a(n-2)+8]` -/
def P879289920972479598.Spec : Prop :=
  ∀ n, (P879289920972479598.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P10642985896377669986

`2*floor((3/4+n)²)`
-/

namespace A139596.P10642985896377669986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((3 : ℚ) / 4 + (n : ℚ)) ^ 2⌋

end

end A139596.P10642985896377669986

namespace A139596

/-- `2*floor((3/4+n)²)` -/
def P10642985896377669986.Spec : Prop :=
  ∀ n, P10642985896377669986.a n = A139596 n

end A139596

/-! ## A139596.P4598201870933310502

`∑[record[or(5, n-1)+1]]`
-/

namespace A139596.P4598201870933310502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P4598201870933310502

namespace A139596

/-- `∑[record[or(5, n-1)+1]]` -/
def P4598201870933310502.Spec : Prop :=
  ∀ n, P4598201870933310502.a n = A139596 n

end A139596

/-! ## A139596.P3248683340756033309

`or(1, ∑[4*n+1])-1`
-/

namespace A139596.P3248683340756033309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A139596.P3248683340756033309

namespace A139596

/-- `or(1, ∑[4*n+1])-1` -/
def P3248683340756033309.Spec : Prop :=
  ∀ n, P3248683340756033309.a n = A139596 n

end A139596

/-! ## A139596.P15712323498985921593

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=6`
-/

namespace A139596.P15712323498985921593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P15712323498985921593

namespace A139596

/-- `∑[∑[8-a(n-1)]]` -/
def P15712323498985921593.Spec : Prop :=
  ∀ n, P15712323498985921593.a n = A139596 n

end A139596

/-! ## A139596.P7150088998029941380

`∑[2*(n%2+2*n)]`
-/

namespace A139596.P7150088998029941380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 2 + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P7150088998029941380

namespace A139596

/-- `∑[2*(n%2+2*n)]` -/
def P7150088998029941380.Spec : Prop :=
  ∀ n, (P7150088998029941380.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P6824251137263690025

`∑[xor(1, n+1)+3*n]`
-/

namespace A139596.P6824251137263690025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P6824251137263690025

namespace A139596

/-- `∑[xor(1, n+1)+3*n]` -/
def P6824251137263690025.Spec : Prop :=
  ∀ n, (P6824251137263690025.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P17372845298705888926

`∑[eq[n-1, or(5, n-1)]]`
-/

namespace A139596.P17372845298705888926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P17372845298705888926

namespace A139596

/-- `∑[eq[n-1, or(5, n-1)]]` -/
def P17372845298705888926.Spec : Prop :=
  ∀ n, (P17372845298705888926.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P13519010152539788073

`∑[∑[∑[ogf((6x+2x^2)/(1+x))]]]`
-/

namespace A139596.P13519010152539788073
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P13519010152539788073

namespace A139596

/-- `∑[∑[∑[ogf((6x+2x^2)/(1+x))]]]` -/
def P13519010152539788073.Spec : Prop :=
  ∀ n, P13519010152539788073.a n = A139596 n

end A139596

/-! ## A139596.P17985090062335225512

`ogf((6x+2x^2)/(1-2x+2x^3-x^4))`
-/

namespace A139596.P17985090062335225512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2] [1, -2, 0, 2, -1] n

end

end A139596.P17985090062335225512

namespace A139596

/-- `ogf((6x+2x^2)/(1-2x+2x^3-x^4))` -/
def P17985090062335225512.Spec : Prop :=
  ∀ n, P17985090062335225512.a n = A139596 n

end A139596

/-! ## A139596.P15234793681413732394

`and(1, n)+n*(2*n+3)`
-/

namespace A139596.P15234793681413732394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n * (2 * n + 3)

end

end A139596.P15234793681413732394

namespace A139596

/-- `and(1, n)+n*(2*n+3)` -/
def P15234793681413732394.Spec : Prop :=
  ∀ n, (P15234793681413732394.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P7219616747903908155

`8*n+a(n-2)-2` with `a(0)=0, a(1)=6`
-/

namespace A139596.P7219616747903908155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 2)

end

end A139596.P7219616747903908155

namespace A139596

/-- `8*n+a(n-2)-2` -/
def P7219616747903908155.Spec : Prop :=
  ∀ n, P7219616747903908155.a n = A139596 n

end A139596

/-! ## A139596.P1155833544072584443

`8*n-(2-a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A139596.P1155833544072584443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  (8 * n : ℤ) - (2 - a (n - 2))

end

end A139596.P1155833544072584443

namespace A139596

/-- `8*n-(2-a(n-2))` -/
def P1155833544072584443.Spec : Prop :=
  ∀ n, P1155833544072584443.a n = A139596 n

end A139596

/-! ## A139596.P9178250667429036019

`∑[4*(n+1)-2*gcd(2, n)]`
-/

namespace A139596.P9178250667429036019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (2 * Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P9178250667429036019

namespace A139596

/-- `∑[4*(n+1)-2*gcd(2, n)]` -/
def P9178250667429036019.Spec : Prop :=
  ∀ n, P9178250667429036019.a n = A139596 n

end A139596

/-! ## A139596.P7288606744879694311

`∑[2*lt[n+1, or(2, n+1)]]`
-/

namespace A139596.P7288606744879694311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139596.P7288606744879694311

namespace A139596

/-- `∑[2*lt[n+1, or(2, n+1)]]` -/
def P7288606744879694311.Spec : Prop :=
  ∀ n, (P7288606744879694311.a n : ℤ) = A139596 n

end A139596

/-! ## A139596.P14399257074148078895

`xor(1, or(1, (2*n+1)*(n+1)))`
-/

namespace A139596.P14399257074148078895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 ((2 * n + 1) * (n + 1)))

end

end A139596.P14399257074148078895

namespace A139596

/-- `xor(1, or(1, (2*n+1)*(n+1)))` -/
def P14399257074148078895.Spec : Prop :=
  ∀ n, (P14399257074148078895.a n : ℤ) = A139596 n

end A139596

/-!
# A139597: A139278(n) followed by A139274(n+1).

The programs for A139597, the canonical program `A139597.P15683370727240100810` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139597 has offset 0).

The definition of A139597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139597.P594765236264355775

`(3-3*(-1)^n+14*n+8*n²)/4`
-/

namespace A139597.P594765236264355775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - 3 * (-1) ^ n + (14 * n : ℤ) + (8 * n ^ 2 : ℤ) : ℚ) / 4

end

end A139597.P594765236264355775

namespace A139597

/-- `(3-3*(-1)^n+14*n+8*n²)/4` -/
def P594765236264355775.Spec : Prop :=
  ∀ n, P594765236264355775.a n = (A139597 n : ℚ)

theorem P594765236264355775.correct : P594765236264355775.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A139597, Nat.add_sub_cancel, A139597.P594765236264355775.a, A139597.P15683370727240100810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A139597, Nat.add_sub_cancel, A139597.P594765236264355775.a, A139597.P15683370727240100810.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139597

/-! ## A139597.P15683370727240100810

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=7, a(2)=15, a(3)=30`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139597

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P15683370727240100810.Spec : Prop :=
  ∀ n, P15683370727240100810.a n = A139597 n

theorem P15683370727240100810.correct : P15683370727240100810.Spec := by
  intro n
  simp only [A139597]

end A139597

/-! ## A139597.P4071367530835290396

`∑[lt[or(6, n-1), n]]`
-/

namespace A139597.P4071367530835290396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P4071367530835290396

namespace A139597

/-- `∑[lt[or(6, n-1), n]]` -/
def P4071367530835290396.Spec : Prop :=
  ∀ n, (P4071367530835290396.a n : ℤ) = A139597 n

end A139597

/-! ## A139597.P53726643167604302

`∑[record[6-or(6, -n)]]`
-/

namespace A139597.P53726643167604302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.lor 6 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P53726643167604302

namespace A139597

/-- `∑[record[6-or(6, -n)]]` -/
def P53726643167604302.Spec : Prop :=
  ∀ n, P53726643167604302.a n = A139597 n

end A139597

/-! ## A139597.P6653010301519396799

`∑[record[-xor(6, 6-n)]]`
-/

namespace A139597.P6653010301519396799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 6 (6 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P6653010301519396799

namespace A139597

/-- `∑[record[-xor(6, 6-n)]]` -/
def P6653010301519396799.Spec : Prop :=
  ∀ n, P6653010301519396799.a n = A139597 n

end A139597

/-! ## A139597.P5974940787075380079

`∑[a(n-2)+8]` with `a(0)=0, a(1)=7`
-/

namespace A139597.P5974940787075380079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P5974940787075380079

namespace A139597

/-- `∑[a(n-2)+8]` -/
def P5974940787075380079.Spec : Prop :=
  ∀ n, (P5974940787075380079.a n : ℤ) = A139597 n

end A139597

/-! ## A139597.P11965526389293356403

`∑[∑[7^(n%2)]-1]`
-/

namespace A139597.P11965526389293356403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P11965526389293356403

namespace A139597

/-- `∑[∑[7^(n%2)]-1]` -/
def P11965526389293356403.Spec : Prop :=
  ∀ n, P11965526389293356403.a n = A139597 n

end A139597

/-! ## A139597.P970516958232231373

`∑[record[or(6, n-3)+1]]`
-/

namespace A139597.P970516958232231373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P970516958232231373

namespace A139597

/-- `∑[record[or(6, n-3)+1]]` -/
def P970516958232231373.Spec : Prop :=
  ∀ n, P970516958232231373.a n = A139597 n

end A139597

/-! ## A139597.P5264791267550710928

`∑[record[xor(6, n+1)]-7]`
-/

namespace A139597.P5264791267550710928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P5264791267550710928

namespace A139597

/-- `∑[record[xor(6, n+1)]-7]` -/
def P5264791267550710928.Spec : Prop :=
  ∀ n, P5264791267550710928.a n = A139597 n

end A139597

/-! ## A139597.P7483387687558765098

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=7`
-/

namespace A139597.P7483387687558765098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P7483387687558765098

namespace A139597

/-- `∑[∑[8-a(n-1)]]` -/
def P7483387687558765098.Spec : Prop :=
  ∀ n, P7483387687558765098.a n = A139597 n

end A139597

/-! ## A139597.P5377518427526778646

`∑[eq[n-1, or(6, n-1)]]`
-/

namespace A139597.P5377518427526778646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P5377518427526778646

namespace A139597

/-- `∑[eq[n-1, or(6, n-1)]]` -/
def P5377518427526778646.Spec : Prop :=
  ∀ n, (P5377518427526778646.a n : ℤ) = A139597 n

end A139597

/-! ## A139597.P17593178296298559263

`∑[lt[n+3, xor(6, n+1)]]`
-/

namespace A139597.P17593178296298559263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P17593178296298559263

namespace A139597

/-- `∑[lt[n+3, xor(6, n+1)]]` -/
def P17593178296298559263.Spec : Prop :=
  ∀ n, (P17593178296298559263.a n : ℤ) = A139597 n

end A139597

/-! ## A139597.P15011003789840132867

`8*n+a(n-2)-1` with `a(0)=0, a(1)=7`
-/

namespace A139597.P15011003789840132867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 1)

end

end A139597.P15011003789840132867

namespace A139597

/-- `8*n+a(n-2)-1` -/
def P15011003789840132867.Spec : Prop :=
  ∀ n, P15011003789840132867.a n = A139597 n

end A139597

/-! ## A139597.P14039042563261993857

`8*n-(1-a(n-2))` with `a(0)=0, a(1)=7`
-/

namespace A139597.P14039042563261993857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  (8 * n : ℤ) - (1 - a (n - 2))

end

end A139597.P14039042563261993857

namespace A139597

/-- `8*n-(1-a(n-2))` -/
def P14039042563261993857.Spec : Prop :=
  ∀ n, P14039042563261993857.a n = A139597 n

end A139597

/-! ## A139597.P10559888444173279946

`∑[3*or(1, n-1)+n+3]`
-/

namespace A139597.P10559888444173279946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.lor 1 ((n : ℤ) - 1) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P10559888444173279946

namespace A139597

/-- `∑[3*or(1, n-1)+n+3]` -/
def P10559888444173279946.Spec : Prop :=
  ∀ n, P10559888444173279946.a n = A139597 n

end A139597

/-! ## A139597.P8761344991882743617

`(n+1+n)²-(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A139597.P8761344991882743617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1 + n) ^ 2 : ℤ) - (n + 1 : ℤ) - a (n - 1)

end

end A139597.P8761344991882743617

namespace A139597

/-- `(n+1+n)²-(n+1)-a(n-1)` -/
def P8761344991882743617.Spec : Prop :=
  ∀ n, P8761344991882743617.a n = A139597 n

end A139597

/-! ## A139597.P12764040854132874492

`∑[2*n+4-gcd(2, n)²]+∑[2*n]`
-/

namespace A139597.P12764040854132874492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (4 - (Nat.gcd 2 n ^ 2 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A139597.P12764040854132874492

namespace A139597

/-- `∑[2*n+4-gcd(2, n)²]+∑[2*n]` -/
def P12764040854132874492.Spec : Prop :=
  ∀ n, P12764040854132874492.a n = A139597 n

end A139597

/-! ## A139597.P16542014727351404155

`∑[A047521(n+1)]`
-/

namespace A139597.P16542014727351404155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P16542014727351404155

namespace A139597

/-- `∑[A047521(n+1)]` -/
def P16542014727351404155.Spec : Prop :=
  ∀ n, P16542014727351404155.a n = A139597 n

end A139597

/-! ## A139597.P8235897109242290224

`∑[A168328(n+1)+n]`
-/

namespace A139597.P8235897109242290224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168328 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139597.P8235897109242290224

namespace A139597

/-- `∑[A168328(n+1)+n]` -/
def P8235897109242290224.Spec : Prop :=
  ∀ n, P8235897109242290224.a n = A139597 n

end A139597

/-! ## A139597.P579490460803107213

`A139596(n)+∑[n%2]`
-/

namespace A139597.P579490460803107213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139597.P579490460803107213

namespace A139597

/-- `A139596(n)+∑[n%2]` -/
def P579490460803107213.Spec : Prop :=
  ∀ n, P579490460803107213.a n = A139597 n

end A139597

/-!
# A139598: A035008(n) followed by A139098(n+1).

The programs for A139598, the canonical program `A139598.P17692444350708169613` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139598 has offset 0).

The definition of A139598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139598.P17692444350708169613

`1-(-1)^n+4*n+2*n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A139598

/-- `1-(-1)^n+4*n+2*n²` -/
def P17692444350708169613.Spec : Prop :=
  ∀ n, P17692444350708169613.a n = A139598 n

theorem P17692444350708169613.correct : P17692444350708169613.Spec := by
  intro n
  simp only [A139598]

end A139598

/-! ## A139598.P16418741205552639800

`8*A002620(n+1)`
-/

namespace A139598.P16418741205552639800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002620 (n + 1)

end

end A139598.P16418741205552639800

namespace A139598

/-- `8*A002620(n+1)` -/
def P16418741205552639800.Spec : Prop :=
  ∀ n, P16418741205552639800.a n = A139598 n

end A139598

/-! ## A139598.P1140954631741344350

`8*∑[∑[n%2]]`
-/

namespace A139598.P1140954631741344350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139598.P1140954631741344350

namespace A139598

/-- `8*∑[∑[n%2]]` -/
def P1140954631741344350.Spec : Prop :=
  ∀ n, (P1140954631741344350.a n : ℤ) = A139598 n

end A139598

/-! ## A139598.P3352852790305436414

`8*∑[∑[and(1, n)]]`
-/

namespace A139598.P3352852790305436414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139598.P3352852790305436414

namespace A139598

/-- `8*∑[∑[and(1, n)]]` -/
def P3352852790305436414.Spec : Prop :=
  ∀ n, (P3352852790305436414.a n : ℤ) = A139598 n

end A139598

/-! ## A139598.P11794227033438569011

`∑[2*Δ[or(1, n²)]]`
-/

namespace A139598.P11794227033438569011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139598.P11794227033438569011

namespace A139598

/-- `∑[2*Δ[or(1, n²)]]` -/
def P11794227033438569011.Spec : Prop :=
  ∀ n, P11794227033438569011.a n = A139598 n

end A139598

/-! ## A139598.P720893932190239955

`∑[∑[Δ[or(1, n)]^3]]`
-/

namespace A139598.P720893932190239955
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139598.P720893932190239955

namespace A139598

/-- `∑[∑[Δ[or(1, n)]^3]]` -/
def P720893932190239955.Spec : Prop :=
  ∀ n, P720893932190239955.a n = A139598 n

end A139598

/-! ## A139598.P14636325743717099174

`∑[a(n-2)+8]` with `a(0)=0, a(1)=8`
-/

namespace A139598.P14636325743717099174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139598.P14636325743717099174

namespace A139598

/-- `∑[a(n-2)+8]` -/
def P14636325743717099174.Spec : Prop :=
  ∀ n, (P14636325743717099174.a n : ℤ) = A139598 n

end A139598

/-! ## A139598.P2578598274820196573

`2*and(-2, (n+1)²)`
-/

namespace A139598.P2578598274820196573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (-2) ((n + 1) ^ 2 : ℤ)

end

end A139598.P2578598274820196573

namespace A139598

/-- `2*and(-2, (n+1)²)` -/
def P2578598274820196573.Spec : Prop :=
  ∀ n, P2578598274820196573.a n = A139598 n

end A139598

/-! ## A139598.P13076837443625702992

`∑[∑[8-a(n-1)]]` with `a(0)=0`
-/

namespace A139598.P13076837443625702992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139598.P13076837443625702992

namespace A139598

/-- `∑[∑[8-a(n-1)]]` -/
def P13076837443625702992.Spec : Prop :=
  ∀ n, P13076837443625702992.a n = A139598 n

end A139598

/-! ## A139598.P13060720151247767712

`∑[∑[∑[ogf(8x/(1+x))]]]`
-/

namespace A139598.P13060720151247767712
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139598.P13060720151247767712

namespace A139598

/-- `∑[∑[∑[ogf(8x/(1+x))]]]` -/
def P13060720151247767712.Spec : Prop :=
  ∀ n, P13060720151247767712.a n = A139598 n

end A139598

/-! ## A139598.P11811053042830772446

`ogf(8x/(1-2x+2x^3-x^4))`
-/

namespace A139598.P11811053042830772446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -2, 0, 2, -1] n

end

end A139598.P11811053042830772446

namespace A139598

/-- `ogf(8x/(1-2x+2x^3-x^4))` -/
def P11811053042830772446.Spec : Prop :=
  ∀ n, P11811053042830772446.a n = A139598 n

end A139598

/-! ## A139598.P16897321334838942510

`2*(or(1, (n+1)²)-1)`
-/

namespace A139598.P16897321334838942510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor 1 ((n + 1) ^ 2) : ℤ) - 1)

end

end A139598.P16897321334838942510

namespace A139598

/-- `2*(or(1, (n+1)²)-1)` -/
def P16897321334838942510.Spec : Prop :=
  ∀ n, P16897321334838942510.a n = A139598 n

end A139598

/-! ## A139598.P16871089449597195161

`2*xor(1, or(1, (n+1)²))`
-/

namespace A139598.P16871089449597195161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (Nat.lor 1 ((n + 1) ^ 2))

end

end A139598.P16871089449597195161

namespace A139598

/-- `2*xor(1, or(1, (n+1)²))` -/
def P16871089449597195161.Spec : Prop :=
  ∀ n, (P16871089449597195161.a n : ℤ) = A139598 n

end A139598

/-! ## A139598.P7396536760435614451

`4*∑[or(1, n+1)-1]`
-/

namespace A139598.P7396536760435614451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139598.P7396536760435614451

namespace A139598

/-- `4*∑[or(1, n+1)-1]` -/
def P7396536760435614451.Spec : Prop :=
  ∀ n, P7396536760435614451.a n = A139598 n

end A139598

/-! ## A139598.P14374822808110625491

`4*∑[n-gcd(2, n)+2]`
-/

namespace A139598.P14374822808110625491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139598.P14374822808110625491

namespace A139598

/-- `4*∑[n-gcd(2, n)+2]` -/
def P14374822808110625491.Spec : Prop :=
  ∀ n, P14374822808110625491.a n = A139598 n

end A139598

/-! ## A139598.P16826160826672912967

`∑[2*(xor(1, n+1)+n)]`
-/

namespace A139598.P16826160826672912967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 1 (n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139598.P16826160826672912967

namespace A139598

/-- `∑[2*(xor(1, n+1)+n)]` -/
def P16826160826672912967.Spec : Prop :=
  ∀ n, (P16826160826672912967.a n : ℤ) = A139598 n

end A139598

/-! ## A139598.P5821594024066669423

`and(2*record[(n-1)²], -3)`
-/

namespace A139598.P5821594024066669423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (-3)

end

end A139598.P5821594024066669423

namespace A139598

/-- `and(2*record[(n-1)²], -3)` -/
def P5821594024066669423.Spec : Prop :=
  ∀ n, P5821594024066669423.a n = A139598 n

end A139598

/-! ## A139598.P1382583616048345700

`4*floor(record[(1-n)²/2])`
-/

namespace A139598.P1382583616048345700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A139598.P1382583616048345700

namespace A139598

/-- `4*floor(record[(1-n)²/2])` -/
def P1382583616048345700.Spec : Prop :=
  ∀ n, P1382583616048345700.a n = A139598 n

end A139598

/-! ## A139598.P2988297069881264619

`2*(and(1, n)+n*(n+2))`
-/

namespace A139598.P2988297069881264619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.land 1 n + n * (n + 2))

end

end A139598.P2988297069881264619

namespace A139598

/-- `2*(and(1, n)+n*(n+2))` -/
def P2988297069881264619.Spec : Prop :=
  ∀ n, (P2988297069881264619.a n : ℤ) = A139598 n

end A139598

/-! ## A139598.P14316080734777923035

`2*((n+1)²-(n+1)%2)`
-/

namespace A139598.P14316080734777923035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 2 : ℤ) - (((n + 1) % 2 : ℕ) : ℤ))

end

end A139598.P14316080734777923035

namespace A139598

/-- `2*((n+1)²-(n+1)%2)` -/
def P14316080734777923035.Spec : Prop :=
  ∀ n, P14316080734777923035.a n = A139598 n

end A139598

