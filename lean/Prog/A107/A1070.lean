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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
# A107000: Primes of the form 2x^2-xy+12y^2, with x and y nonnegative.

The programs for A107000, there is no canonical definition to state claims against.
-/

/-! ## A107000.P8296458160042049264

`A140550(A305091(n+1))`
-/

namespace A107000.P8296458160042049264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140550 (A305091 (n + 1)).toNat

end

end A107000.P8296458160042049264

/-!
# A107001: Primes of the form x^2+xy+24y^2, with x and y nonnegative.

The programs for A107001, there is no canonical definition to state claims against.
-/

/-! ## A107001.P7109115907539004382

`A033206(n+2-A093384(n+9))`
-/

namespace A107001.P7109115907539004382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033206 ((n + 2 : ℤ) - A093384 (n + 9)).toNat

end

end A107001.P7109115907539004382

/-! ## A107001.P16303916309183162806

`A033206(∑[A352496((n-and(n, 3*n))/2)])`
-/

namespace A107001.P16303916309183162806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352496 (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.land n (3 * n) : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033206 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107001.P16303916309183162806

/-!
# A107002: Primes of the form 5x^2+2xy+5y^2, with x and y nonnegative.

The programs for A107002, there is no canonical definition to state claims against.
-/

/-! ## A107002.P18077533337144920388

`A086523(A014709(n)*A182828(n+1))`
-/

namespace A107002.P18077533337144920388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086523 (A014709 n * A182828 (n + 1)).toNat

end

end A107002.P18077533337144920388

/-! ## A107002.P14471383378942639387

`A086523(A054482(n+2)*A182828(n+1))`
-/

namespace A107002.P14471383378942639387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086523 (A054482 (n + 2) * A182828 (n + 1)).toNat

end

end A107002.P14471383378942639387

/-!
# A107003: Primes of the form 24*k + 5.

The programs for A107003, the canonical program `A107003.P5855654401320172036` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107003 has offset 1).

The definition of A107003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107003.P5855654401320172036

`p?[4*6*n+5]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107003

/-- `p?[4*6*n+5]` -/
def P5855654401320172036.Spec : Prop :=
  ∀ n, (P5855654401320172036.a n : ℤ) = A107003 (n + 1)

theorem P5855654401320172036.correct : P5855654401320172036.Spec := by
  intro n
  simp only [A107003, Nat.add_sub_cancel]

end A107003

/-! ## A107003.P13412368801094052210

`A007521(eq[2, A007521(n+1)%3]+1)`
-/

namespace A107003.P13412368801094052210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007521 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107003.P13412368801094052210

namespace A107003

/-- `A007521(eq[2, A007521(n+1)%3]+1)` -/
def P13412368801094052210.Spec : Prop :=
  ∀ n, P13412368801094052210.a n = A107003 (n + 1)

end A107003

/-! ## A107003.P10271095099706844302

`∩[A008846(n+1), A084865(n+1)]`
-/

namespace A107003.P10271095099706844302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P10271095099706844302

namespace A107003

/-- `∩[A008846(n+1), A084865(n+1)]` -/
def P10271095099706844302.Spec : Prop :=
  ∀ n, (P10271095099706844302.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P9234701332341867248

`∩[A008846(n+1), A141171(n+1)]`
-/

namespace A107003.P9234701332341867248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P9234701332341867248

namespace A107003

/-- `∩[A008846(n+1), A141171(n+1)]` -/
def P9234701332341867248.Spec : Prop :=
  ∀ n, (P9234701332341867248.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P16650538854920227558

`A135659(A139527(n+1))-2`
-/

namespace A107003.P16650538854920227558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A139527 (n + 1)).toNat - 2

end

end A107003.P16650538854920227558

namespace A107003

/-- `A135659(A139527(n+1))-2` -/
def P16650538854920227558.Spec : Prop :=
  ∀ n, P16650538854920227558.a n = A107003 (n + 1)

end A107003

/-! ## A107003.P13084552402522794228

`∩[A038876(n+1), A007521(n+1)]`
-/

namespace A107003.P13084552402522794228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P13084552402522794228

namespace A107003

/-- `∩[A038876(n+1), A007521(n+1)]` -/
def P13084552402522794228.Spec : Prop :=
  ∀ n, (P13084552402522794228.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P12766004245136429758

`∩[A097934(n+1), A004627(n+1)]`
-/

namespace A107003.P12766004245136429758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P12766004245136429758

namespace A107003

/-- `∩[A097934(n+1), A004627(n+1)]` -/
def P12766004245136429758.Spec : Prop :=
  ∀ n, (P12766004245136429758.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P5721883332899100577

`∩[A002144(n+1), A084865(n+1)]`
-/

namespace A107003.P5721883332899100577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P5721883332899100577

namespace A107003

/-- `∩[A002144(n+1), A084865(n+1)]` -/
def P5721883332899100577.Spec : Prop :=
  ∀ n, (P5721883332899100577.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P2037671687574045692

`∩[A007528(n+1), A004627(n+1)]`
-/

namespace A107003.P2037671687574045692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P2037671687574045692

namespace A107003

/-- `∩[A007528(n+1), A004627(n+1)]` -/
def P2037671687574045692.Spec : Prop :=
  ∀ n, (P2037671687574045692.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P11760132962950635098

`∩[A003627(n+1), A004627(n+1)]`
-/

namespace A107003.P11760132962950635098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P11760132962950635098

namespace A107003

/-- `∩[A003627(n+1), A004627(n+1)]` -/
def P11760132962950635098.Spec : Prop :=
  ∀ n, (P11760132962950635098.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P8474448351706158978

`∩[A045309(n+1), A004627(n+1)]`
-/

namespace A107003.P8474448351706158978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P8474448351706158978

namespace A107003

/-- `∩[A045309(n+1), A004627(n+1)]` -/
def P8474448351706158978.Spec : Prop :=
  ∀ n, (P8474448351706158978.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P5289932074833858063

`∩[A045410(n+1), A004627(n+1)]`
-/

namespace A107003.P5289932074833858063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P5289932074833858063

namespace A107003

/-- `∩[A045410(n+1), A004627(n+1)]` -/
def P5289932074833858063.Spec : Prop :=
  ∀ n, (P5289932074833858063.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P8358050959458569135

`∩[A056955(n+1), A004627(n+1)]`
-/

namespace A107003.P8358050959458569135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P8358050959458569135

namespace A107003

/-- `∩[A056955(n+1), A004627(n+1)]` -/
def P8358050959458569135.Spec : Prop :=
  ∀ n, (P8358050959458569135.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P12234017482895525412

`∩[A045355(n+1), A040117(n+1)]`
-/

namespace A107003.P12234017482895525412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P12234017482895525412

namespace A107003

/-- `∩[A045355(n+1), A040117(n+1)]` -/
def P12234017482895525412.Spec : Prop :=
  ∀ n, (P12234017482895525412.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P364100827732843774

`∩[A003630(n+1), A004627(n+1)]`
-/

namespace A107003.P364100827732843774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P364100827732843774

namespace A107003

/-- `∩[A003630(n+1), A004627(n+1)]` -/
def P364100827732843774.Spec : Prop :=
  ∀ n, (P364100827732843774.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P12999237908711576666

`∩[A141171(n+1), A003630(n+1)]`
-/

namespace A107003.P12999237908711576666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P12999237908711576666

namespace A107003

/-- `∩[A141171(n+1), A003630(n+1)]` -/
def P12999237908711576666.Spec : Prop :=
  ∀ n, (P12999237908711576666.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P14151558987736020690

`∩[A319041(n+1), A040117(n+1)]`
-/

namespace A107003.P14151558987736020690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P14151558987736020690

namespace A107003

/-- `∩[A319041(n+1), A040117(n+1)]` -/
def P14151558987736020690.Spec : Prop :=
  ∀ n, (P14151558987736020690.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P4831619189545323166

`∩[A040144(n+1), A141171(n+1)]`
-/

namespace A107003.P4831619189545323166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P4831619189545323166

namespace A107003

/-- `∩[A040144(n+1), A141171(n+1)]` -/
def P4831619189545323166.Spec : Prop :=
  ∀ n, (P4831619189545323166.a n : ℤ) = A107003 (n + 1)

end A107003

/-! ## A107003.P8254859184400030037

`∩[A045318(n+1), A084865(n+1)]`
-/

namespace A107003.P8254859184400030037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107003.P8254859184400030037

namespace A107003

/-- `∩[A045318(n+1), A084865(n+1)]` -/
def P8254859184400030037.Spec : Prop :=
  ∀ n, (P8254859184400030037.a n : ℤ) = A107003 (n + 1)

end A107003

/-!
# A107004: Primes of the form 5x^2-2xy+5y^2, with x and y nonnegative.

The programs for A107004, there is no canonical definition to state claims against.
-/

/-! ## A107004.P8060829501914353132

`A107003(lt[A000726(n), A222946(n+2)]+1)`
-/

namespace A107004.P8060829501914353132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A107004.P8060829501914353132

/-! ## A107004.P1453286335452477148

`A107003(lt[A025487(n+1), A222946(n+2)]+1)`
-/

namespace A107004.P1453286335452477148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A107004.P1453286335452477148

/-!
# A107005: Primes of the form 4x^2+4xy+7y^2, with x and y nonnegative.

The programs for A107005, there is no canonical definition to state claims against.
-/

/-! ## A107005.P17044596877358538636

`p?[A259752(n+1)+A193330(A252890(n+1)^6)]`
-/

namespace A107005.P17044596877358538636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259752 (n + 1) + A193330 (A252890 (n + 1) ^ 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107005.P17044596877358538636

/-! ## A107005.P12324750455801886364

`∩[A086472(n+1), A135659(n)]`
-/

namespace A107005.P12324750455801886364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107005.P12324750455801886364

/-! ## A107005.P3475735961891563178

`∩[A086472(n+1), A107006(n+1)]`
-/

namespace A107005.P3475735961891563178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107005.P3475735961891563178

/-!
# A107006: Primes of the form 4x^2-4xy+7y^2, with x and y nonnegative.

The programs for A107006, the canonical program `A107006.P955908448269712890` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107006 has offset 1).

The definition of A107006 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139483, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107006.P955908448269712890

`24*A139483(n+1)+7`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107006

/-- `24*A139483(n+1)+7` -/
def P955908448269712890.Spec : Prop :=
  ∀ n, P955908448269712890.a n = A107006 (n + 1)

theorem P955908448269712890.correct : P955908448269712890.Spec := by
  intro n
  simp only [A107006, Nat.add_sub_cancel]

end A107006

/-! ## A107006.P4001517977228416152

`p?[24*n+7]`
-/

namespace A107006.P4001517977228416152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107006.P4001517977228416152

namespace A107006

/-- `p?[24*n+7]` -/
def P4001517977228416152.Spec : Prop :=
  ∀ n, (P4001517977228416152.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P8078976256339610811

`∩[A014663(n+1), A332514(n+1)]`
-/

namespace A107006.P8078976256339610811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P8078976256339610811

namespace A107006

/-- `∩[A014663(n+1), A332514(n+1)]` -/
def P8078976256339610811.Spec : Prop :=
  ∀ n, (P8078976256339610811.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P8641085981734530360

`∩[A033199(n+1), A332514(n+1)]`
-/

namespace A107006.P8641085981734530360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P8641085981734530360

namespace A107006

/-- `∩[A033199(n+1), A332514(n+1)]` -/
def P8641085981734530360.Spec : Prop :=
  ∀ n, (P8641085981734530360.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P18352594720948131984

`A135659(A139483(n+1))`
-/

namespace A107006.P18352594720948131984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A139483 (n + 1)).toNat

end

end A107006.P18352594720948131984

namespace A107006

/-- `A135659(A139483(n+1))` -/
def P18352594720948131984.Spec : Prop :=
  ∀ n, P18352594720948131984.a n = A107006 (n + 1)

end A107006

/-! ## A107006.P3808111595225693296

`∩[A040141(n+1), A135659(n)]`
-/

namespace A107006.P3808111595225693296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P3808111595225693296

namespace A107006

/-- `∩[A040141(n+1), A135659(n)]` -/
def P3808111595225693296.Spec : Prop :=
  ∀ n, (P3808111595225693296.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P16087452266723105860

`∩[A001132(n+1), A135659(n)]`
-/

namespace A107006.P16087452266723105860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P16087452266723105860

namespace A107006

/-- `∩[A001132(n+1), A135659(n)]` -/
def P16087452266723105860.Spec : Prop :=
  ∀ n, (P16087452266723105860.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P11787634202751274175

`∩[A097958(n+1), A135659(n)]`
-/

namespace A107006.P11787634202751274175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P11787634202751274175

namespace A107006

/-- `∩[A097958(n+1), A135659(n)]` -/
def P11787634202751274175.Spec : Prop :=
  ∀ n, (P11787634202751274175.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P16599693182016282937

`∩[A038873(n+1), A068229(n+1)]`
-/

namespace A107006.P16599693182016282937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P16599693182016282937

namespace A107006

/-- `∩[A038873(n+1), A068229(n+1)]` -/
def P16599693182016282937.Spec : Prop :=
  ∀ n, (P16599693182016282937.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P4354269336524484040

`∩[A002476(n+1), A007522(n+1)]`
-/

namespace A107006.P4354269336524484040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P4354269336524484040

namespace A107006

/-- `∩[A002476(n+1), A007522(n+1)]` -/
def P4354269336524484040.Spec : Prop :=
  ∀ n, (P4354269336524484040.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P17407778653296339001

`∩[A007522(n+1), A045375(n+1)]`
-/

namespace A107006.P17407778653296339001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P17407778653296339001

namespace A107006

/-- `∩[A007522(n+1), A045375(n+1)]` -/
def P17407778653296339001.Spec : Prop :=
  ∀ n, (P17407778653296339001.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P5037930536033834333

`∩[A002145(n+1), A135659(n)]`
-/

namespace A107006.P5037930536033834333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P5037930536033834333

namespace A107006

/-- `∩[A002145(n+1), A135659(n)]` -/
def P5037930536033834333.Spec : Prop :=
  ∀ n, (P5037930536033834333.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P14328476818086171361

`∩[A003628(n+1), A135659(n)]`
-/

namespace A107006.P14328476818086171361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P14328476818086171361

namespace A107006

/-- `∩[A003628(n+1), A135659(n)]` -/
def P14328476818086171361.Spec : Prop :=
  ∀ n, (P14328476818086171361.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P7434535451833939609

`∩[A045326(n+1), A135659(n)]`
-/

namespace A107006.P7434535451833939609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P7434535451833939609

namespace A107006

/-- `∩[A045326(n+1), A135659(n)]` -/
def P7434535451833939609.Spec : Prop :=
  ∀ n, (P7434535451833939609.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P18433456770299607233

`∩[A045355(n+1), A033199(n+1)]`
-/

namespace A107006.P18433456770299607233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P18433456770299607233

namespace A107006

/-- `∩[A045355(n+1), A033199(n+1)]` -/
def P18433456770299607233.Spec : Prop :=
  ∀ n, (P18433456770299607233.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P11539037529016818924

`∩[A055664(n+1), A135659(n)]`
-/

namespace A107006.P11539037529016818924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P11539037529016818924

namespace A107006

/-- `∩[A055664(n+1), A135659(n)]` -/
def P11539037529016818924.Spec : Prop :=
  ∀ n, (P11539037529016818924.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P1771236549228077145

`∩[A007522(n+1), A133290(n+1)]`
-/

namespace A107006.P1771236549228077145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P1771236549228077145

namespace A107006

/-- `∩[A007522(n+1), A133290(n+1)]` -/
def P1771236549228077145.Spec : Prop :=
  ∀ n, (P1771236549228077145.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P9249314806043545124

`∩[A003630(n+1), A135659(n)]`
-/

namespace A107006.P9249314806043545124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P9249314806043545124

namespace A107006

/-- `∩[A003630(n+1), A135659(n)]` -/
def P9249314806043545124.Spec : Prop :=
  ∀ n, (P9249314806043545124.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P17255164240483892537

`∩[A001132(n+1), A267432(n+1)]`
-/

namespace A107006.P17255164240483892537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P17255164240483892537

namespace A107006

/-- `∩[A001132(n+1), A267432(n+1)]` -/
def P17255164240483892537.Spec : Prop :=
  ∀ n, (P17255164240483892537.a n : ℤ) = A107006 (n + 1)

end A107006

/-! ## A107006.P9937260720513787345

`∩[A097958(n+1), A267432(n+1)]`
-/

namespace A107006.P9937260720513787345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107006.P9937260720513787345

namespace A107006

/-- `∩[A097958(n+1), A267432(n+1)]` -/
def P9937260720513787345.Spec : Prop :=
  ∀ n, (P9937260720513787345.a n : ℤ) = A107006 (n + 1)

end A107006

/-!
# A107007: Primes of the form 3*x^2+8*y^2.

The programs for A107007, the canonical program `A107007.P6466861092490144513` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107007 has offset 1).

The definition of A107007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107007.P17908325530636058091

`∪[A139859(n+1), A139897(n+1)]`
-/

namespace A107007.P17908325530636058091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P17908325530636058091

namespace A107007

/-- `∪[A139859(n+1), A139897(n+1)]` -/
def P17908325530636058091.Spec : Prop :=
  ∀ n, (P17908325530636058091.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P6466861092490144513

`p?[or(4, 12*n)-1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107007

/-- `p?[or(4, 12*n)-1]` -/
def P6466861092490144513.Spec : Prop :=
  ∀ n, P6466861092490144513.a n = A107007 (n + 1)

theorem P6466861092490144513.correct : P6466861092490144513.Spec := by
  intro n
  simp only [A107007, Nat.add_sub_cancel]

end A107007

/-! ## A107007.P5098402490632883151

`p?[xor(4, or(7, 12*n))]`
-/

namespace A107007.P5098402490632883151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (Nat.lor 7 (12 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107007.P5098402490632883151

namespace A107007

/-- `p?[xor(4, or(7, 12*n))]` -/
def P5098402490632883151.Spec : Prop :=
  ∀ n, (P5098402490632883151.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P11576212092742617684

`p?[xor(1, a(n-2)+12)]` with `a(0)=3, a(1)=11`
-/

namespace A107007.P11576212092742617684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n f1 =>
  Nat.xor 1 (f1 (n - 2) + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107007.P11576212092742617684

namespace A107007

/-- `p?[xor(1, a(n-2)+12)]` -/
def P11576212092742617684.Spec : Prop :=
  ∀ n, (P11576212092742617684.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P12507677198527562751

`p?[abs(6*n-and(3, 3-n))]`
-/

namespace A107007.P12507677198527562751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) - Int.land 3 (3 - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107007.P12507677198527562751

namespace A107007

/-- `p?[abs(6*n-and(3, 3-n))]` -/
def P12507677198527562751.Spec : Prop :=
  ∀ n, P12507677198527562751.a n = A107007 (n + 1)

end A107007

/-! ## A107007.P7243171637722191377

`p?[ogf((3x+2x^2+x^3+6x^4)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A107007.P7243171637722191377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 1, 6] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107007.P7243171637722191377

namespace A107007

/-- `p?[ogf((3x+2x^2+x^3+6x^4)/(1-2x+2x^2-2x^3+x^4))]` -/
def P7243171637722191377.Spec : Prop :=
  ∀ n, P7243171637722191377.a n = A107007 (n + 1)

end A107007

/-! ## A107007.P2149429151935457058

`∩[A007520(n+1), A084865(n+1)]`
-/

namespace A107007.P2149429151935457058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P2149429151935457058

namespace A107007

/-- `∩[A007520(n+1), A084865(n+1)]` -/
def P2149429151935457058.Spec : Prop :=
  ∀ n, (P2149429151935457058.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P16378418994334931114

`∩[A007520(n+1), A040101(n+1)]`
-/

namespace A107007.P16378418994334931114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P16378418994334931114

namespace A107007

/-- `∩[A007520(n+1), A040101(n+1)]` -/
def P16378418994334931114.Spec : Prop :=
  ∀ n, (P16378418994334931114.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P3836212771413937596

`∩[A007520(n+1), A040124(n+1)]`
-/

namespace A107007.P3836212771413937596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P3836212771413937596

namespace A107007

/-- `∩[A007520(n+1), A040124(n+1)]` -/
def P3836212771413937596.Spec : Prop :=
  ∀ n, (P3836212771413937596.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P2483548956029626121

`∩[A007520(n+1), A040994(n+1)]`
-/

namespace A107007.P2483548956029626121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P2483548956029626121

namespace A107007

/-- `∩[A007520(n+1), A040994(n+1)]` -/
def P2483548956029626121.Spec : Prop :=
  ∀ n, (P2483548956029626121.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P11542644147455964487

`∩[A007520(n+1), A045317(n+1)]`
-/

namespace A107007.P11542644147455964487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P11542644147455964487

namespace A107007

/-- `∩[A007520(n+1), A045317(n+1)]` -/
def P11542644147455964487.Spec : Prop :=
  ∀ n, (P11542644147455964487.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P9172949839755544061

`∩[A007520(n+1), A038874(n+1)]`
-/

namespace A107007.P9172949839755544061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P9172949839755544061

namespace A107007

/-- `∩[A007520(n+1), A038874(n+1)]` -/
def P9172949839755544061.Spec : Prop :=
  ∀ n, (P9172949839755544061.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P8113971418584797788

`∩[A033200(n+1), A084865(n+1)]`
-/

namespace A107007.P8113971418584797788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P8113971418584797788

namespace A107007

/-- `∩[A033200(n+1), A084865(n+1)]` -/
def P8113971418584797788.Spec : Prop :=
  ∀ n, (P8113971418584797788.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P14891343201062650817

`∩[A033203(n+1), A141187(n+1)]`
-/

namespace A107007.P14891343201062650817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P14891343201062650817

namespace A107007

/-- `∩[A033203(n+1), A141187(n+1)]` -/
def P14891343201062650817.Spec : Prop :=
  ∀ n, (P14891343201062650817.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P14341950281560424684

`∩[A007520(n+1), A045309(n+1)]`
-/

namespace A107007.P14341950281560424684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P14341950281560424684

namespace A107007

/-- `∩[A007520(n+1), A045309(n+1)]` -/
def P14341950281560424684.Spec : Prop :=
  ∀ n, (P14341950281560424684.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P16274766750085912648

`∩[A007520(n+1), A045410(n+1)]`
-/

namespace A107007.P16274766750085912648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P16274766750085912648

namespace A107007

/-- `∩[A007520(n+1), A045410(n+1)]` -/
def P16274766750085912648.Spec : Prop :=
  ∀ n, (P16274766750085912648.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P6896038686953395871

`∩[A045339(n+1), A045410(n+1)]`
-/

namespace A107007.P6896038686953395871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P6896038686953395871

namespace A107007

/-- `∩[A045339(n+1), A045410(n+1)]` -/
def P6896038686953395871.Spec : Prop :=
  ∀ n, (P6896038686953395871.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P15085280513356032972

`∩[A045410(n+1), A332446(n+1)]`
-/

namespace A107007.P15085280513356032972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P15085280513356032972

namespace A107007

/-- `∩[A045410(n+1), A332446(n+1)]` -/
def P15085280513356032972.Spec : Prop :=
  ∀ n, (P15085280513356032972.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P13422095081083930459

`∩[A002145(n+1), A084865(n+1)]`
-/

namespace A107007.P13422095081083930459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P13422095081083930459

namespace A107007

/-- `∩[A002145(n+1), A084865(n+1)]` -/
def P13422095081083930459.Spec : Prop :=
  ∀ n, (P13422095081083930459.a n : ℤ) = A107007 (n + 1)

end A107007

/-! ## A107007.P15368993059192715828

`∩[A042999(n+1), A141187(n+1)]`
-/

namespace A107007.P15368993059192715828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107007.P15368993059192715828

namespace A107007

/-- `∩[A042999(n+1), A141187(n+1)]` -/
def P15368993059192715828.Spec : Prop :=
  ∀ n, (P15368993059192715828.a n : ℤ) = A107007 (n + 1)

end A107007

/-!
# A107008: Primes of the form x^2 + 24*y^2.

The programs for A107008, the canonical program `A107008.P760394337563700980` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107008 has offset 1).

The definition of A107008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9732 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107008.P760394337563700980

`p?[24*n+1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107008

/-- `p?[24*n+1]` -/
def P760394337563700980.Spec : Prop :=
  ∀ n, (P760394337563700980.a n : ℤ) = A107008 (n + 1)

theorem P760394337563700980.correct : P760394337563700980.Spec := by
  intro n
  simp only [A107008, Nat.add_sub_cancel]

end A107008

/-! ## A107008.P4124167718185062186

`or(1, p?[or(1, 24*n)])`
-/

namespace A107008.P4124167718185062186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (24 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A107008.P4124167718185062186

namespace A107008

/-- `or(1, p?[or(1, 24*n)])` -/
def P4124167718185062186.Spec : Prop :=
  ∀ n, (P4124167718185062186.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P14309492937090322513

`or(1, p?[a(n-1)+24])` with `a(0)=1`
-/

namespace A107008.P14309492937090322513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A107008.P14309492937090322513

namespace A107008

/-- `or(1, p?[a(n-1)+24])` -/
def P14309492937090322513.Spec : Prop :=
  ∀ n, (P14309492937090322513.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P7193338955945518355

`∩[A008846(n+1), A033199(n+1)]`
-/

namespace A107008.P7193338955945518355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P7193338955945518355

namespace A107008

/-- `∩[A008846(n+1), A033199(n+1)]` -/
def P7193338955945518355.Spec : Prop :=
  ∀ n, (P7193338955945518355.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P7719179653391928560

`∩[A008846(n+1), A130063(n+1)]`
-/

namespace A107008.P7719179653391928560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P7719179653391928560

namespace A107008

/-- `∩[A008846(n+1), A130063(n+1)]` -/
def P7719179653391928560.Spec : Prop :=
  ∀ n, (P7719179653391928560.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P9380888786484085210

`∩[A008846(n+1), A106950(n+1)]`
-/

namespace A107008.P9380888786484085210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P9380888786484085210

namespace A107008

/-- `∩[A008846(n+1), A106950(n+1)]` -/
def P9380888786484085210.Spec : Prop :=
  ∀ n, (P9380888786484085210.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P14488211855679133797

`∩[A008846(n+1), A141170(n+1)]`
-/

namespace A107008.P14488211855679133797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P14488211855679133797

namespace A107008

/-- `∩[A008846(n+1), A141170(n+1)]` -/
def P14488211855679133797.Spec : Prop :=
  ∀ n, (P14488211855679133797.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P2127069759999775298

`∩[A033199(n+1), A332226(n+1)]`
-/

namespace A107008.P2127069759999775298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P2127069759999775298

namespace A107008

/-- `∩[A033199(n+1), A332226(n+1)]` -/
def P2127069759999775298.Spec : Prop :=
  ∀ n, (P2127069759999775298.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P5144633408142772676

`∩[A033199(n+1), A191218(n+1)]`
-/

namespace A107008.P5144633408142772676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P5144633408142772676

namespace A107008

/-- `∩[A033199(n+1), A191218(n+1)]` -/
def P5144633408142772676.Spec : Prop :=
  ∀ n, (P5144633408142772676.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P6255562730078190568

`∩[A106950(n+1), A191218(n+1)]`
-/

namespace A107008.P6255562730078190568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P6255562730078190568

namespace A107008

/-- `∩[A106950(n+1), A191218(n+1)]` -/
def P6255562730078190568.Spec : Prop :=
  ∀ n, (P6255562730078190568.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P6797124211821984411

`∩[A130063(n+1), A191218(n+1)]`
-/

namespace A107008.P6797124211821984411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P6797124211821984411

namespace A107008

/-- `∩[A130063(n+1), A191218(n+1)]` -/
def P6797124211821984411.Spec : Prop :=
  ∀ n, (P6797124211821984411.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P9607233396077623558

`∩[A141170(n+1), A191218(n+1)]`
-/

namespace A107008.P9607233396077623558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P9607233396077623558

namespace A107008

/-- `∩[A141170(n+1), A191218(n+1)]` -/
def P9607233396077623558.Spec : Prop :=
  ∀ n, (P9607233396077623558.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P5381870715981107135

`or(1, p?[A103214(n)])`
-/

namespace A107008.P5381870715981107135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A107008.P5381870715981107135

namespace A107008

/-- `or(1, p?[A103214(n)])` -/
def P5381870715981107135.Spec : Prop :=
  ∀ n, P5381870715981107135.a n = A107008 (n + 1)

end A107008

/-! ## A107008.P1068048548675775374

`A103214(A111174(n+1))`
-/

namespace A107008.P1068048548675775374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A111174 (n + 1)).toNat

end

end A107008.P1068048548675775374

namespace A107008

/-- `A103214(A111174(n+1))` -/
def P1068048548675775374.Spec : Prop :=
  ∀ n, P1068048548675775374.a n = A107008 (n + 1)

end A107008

/-! ## A107008.P6873557041008584658

`∩[A007519(n+1), A103214(n)]`
-/

namespace A107008.P6873557041008584658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P6873557041008584658

namespace A107008

/-- `∩[A007519(n+1), A103214(n)]` -/
def P6873557041008584658.Spec : Prop :=
  ∀ n, (P6873557041008584658.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P5127091899876166931

`∩[A033199(n+1), A103214(n)]`
-/

namespace A107008.P5127091899876166931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P5127091899876166931

namespace A107008

/-- `∩[A033199(n+1), A103214(n)]` -/
def P5127091899876166931.Spec : Prop :=
  ∀ n, (P5127091899876166931.a n : ℤ) = A107008 (n + 1)

end A107008

/-! ## A107008.P10240694688541254217

`∩[A103214(n), A068228(n+1)]`
-/

namespace A107008.P10240694688541254217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107008.P10240694688541254217

namespace A107008

/-- `∩[A103214(n), A068228(n+1)]` -/
def P10240694688541254217.Spec : Prop :=
  ∀ n, (P10240694688541254217.a n : ℤ) = A107008 (n + 1)

end A107008

/-!
# A107009: Primes of the form 5x^2+xy+5y^2, with x and y nonnegative.

The programs for A107009, there is no canonical definition to state claims against.
-/

/-! ## A107009.P11752841239555707437

`p?[record[A259556(A065091(n+1))]]`
-/

namespace A107009.P11752841239555707437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259556 (A065091 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107009.P11752841239555707437

/-!
# A107010: Primes of the form 5x^2+xy+5y^2, with x and y any integer.

The programs for A107010, there is no canonical definition to state claims against.
-/

/-! ## A107010.P3599468315496833491

`∪[A107009(n+1), A107011(n+1)]`
-/

namespace A107010.P3599468315496833491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P3599468315496833491

/-! ## A107010.P4423710218524058613

`∩[A003627(n+1), A056874(n+1)]`
-/

namespace A107010.P4423710218524058613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P4423710218524058613

/-! ## A107010.P15219307439127942865

`∩[A007528(n+1), A056874(n+1)]`
-/

namespace A107010.P15219307439127942865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P15219307439127942865

/-! ## A107010.P5863826604622880659

`∩[A056874(n+1), A056955(n+1)]`
-/

namespace A107010.P5863826604622880659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P5863826604622880659

/-! ## A107010.P328512580159380728

`∩[A003627(n+1), A341785(n+1)]`
-/

namespace A107010.P328512580159380728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P328512580159380728

/-! ## A107010.P2932410418417875587

`∩[A007528(n+1), A341785(n+1)]`
-/

namespace A107010.P2932410418417875587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P2932410418417875587

/-! ## A107010.P11429039095672745485

`∩[A056955(n+1), A341785(n+1)]`
-/

namespace A107010.P11429039095672745485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P11429039095672745485

/-! ## A107010.P10540476264328643764

`∩[A056874(n+1), A259548(n+1)]`
-/

namespace A107010.P10540476264328643764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P10540476264328643764

/-! ## A107010.P8658488243159085253

`∩[A056874(n+1), A082406(n+1)]`
-/

namespace A107010.P8658488243159085253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P8658488243159085253

/-! ## A107010.P13573855576550312309

`∩[A082406(n+1), A341785(n+1)]`
-/

namespace A107010.P13573855576550312309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P13573855576550312309

/-! ## A107010.P9877532541644545414

`∩[A056874(n+1), A167409(n+1)]`
-/

namespace A107010.P9877532541644545414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P9877532541644545414

/-! ## A107010.P3880281610165702023

`∩[A167409(n+1), A341785(n+1)]`
-/

namespace A107010.P3880281610165702023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P3880281610165702023

/-! ## A107010.P7175336058160933508

`∩[A056874(n+1), A016969(n)]`
-/

namespace A107010.P7175336058160933508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P7175336058160933508

/-! ## A107010.P16098515929625060308

`∩[A341785(n+1), A016969(n)]`
-/

namespace A107010.P16098515929625060308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P16098515929625060308

/-! ## A107010.P6253900189250678433

`∩[A056874(n+1), A101328(n+2)]`
-/

namespace A107010.P6253900189250678433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P6253900189250678433

/-! ## A107010.P5687732616816639650

`∩[A341785(n+1), A101328(n+2)]`
-/

namespace A107010.P5687732616816639650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P5687732616816639650

/-! ## A107010.P9247429381732691387

`∩[A056874(n+1), A016921(n)-2]`
-/

namespace A107010.P9247429381732691387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P9247429381732691387

/-! ## A107010.P14520514085774853405

`∩[A056874(n+1), A277571(n+1)]`
-/

namespace A107010.P14520514085774853405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P14520514085774853405

/-! ## A107010.P17519336798142188350

`∩[A277571(n+1), A341785(n+1)]`
-/

namespace A107010.P17519336798142188350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P17519336798142188350

/-! ## A107010.P17218642545236481588

`∩[A056874(n+1), A348934(n+1)]`
-/

namespace A107010.P17218642545236481588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107010.P17218642545236481588

/-!
# A107011: Primes of the form 5x^2-xy+5y^2, with x and y nonnegative.

The programs for A107011, there is no canonical definition to state claims against.
-/

/-! ## A107011.P2954773478125228774

`A164930(∑[A070977(∏{p}[n+1, #])])`
-/

namespace A107011.P2954773478125228774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070977 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107011.P2954773478125228774

/-! ## A107011.P12841794904291431799

`A298538(or(A076577(n+2), A242290(n+1)))`
-/

namespace A107011.P12841794904291431799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (Int.lor (A076577 (n + 2)) (A242290 (n + 1))).toNat

end

end A107011.P12841794904291431799

/-!
# A107012: Primes of the form x^2+xy+25y^2, with x and y nonnegative.

The programs for A107012, there is no canonical definition to state claims against.
-/

/-! ## A107012.P662005027421105745

`A107013(A254329(n+1)%A254329(n+5))`
-/

namespace A107012.P662005027421105745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (Int.tmod (A254329 (n + 1)) (A254329 (n + 5))).toNat

end

end A107012.P662005027421105745

/-! ## A107012.P5886035958453349947

`∩[A087685(n+1), A243185(n+1)]`
-/

namespace A107012.P5886035958453349947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107012.P5886035958453349947

/-!
# A107013: Primes of the form x^2-xy+25y^2, with x and y nonnegative.

The programs for A107013, there is no canonical definition to state claims against.
-/

/-! ## A107013.P2846795844919334104

`A141177(n+2)`
-/

namespace A107013.P2846795844919334104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 2)

end

end A107013.P2846795844919334104

/-! ## A107013.P3330469349000696022

`∩[A002476(n+1), A038907(n+1)]`
-/

namespace A107013.P3330469349000696022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P3330469349000696022

/-! ## A107013.P1606021909928840237

`∩[A038907(n+1), A123365(n+1)]`
-/

namespace A107013.P1606021909928840237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P1606021909928840237

/-! ## A107013.P12603175599482578777

`∩[A038907(n+1), A007645(n+2)]`
-/

namespace A107013.P12603175599482578777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P12603175599482578777

/-! ## A107013.P8451051095098859912

`∩[A038907(n+2), A279815(n+2)]`
-/

namespace A107013.P8451051095098859912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P8451051095098859912

/-! ## A107013.P14046975356759982690

`∩[A007645(n+2), A296920(n+2)]`
-/

namespace A107013.P14046975356759982690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P14046975356759982690

/-! ## A107013.P9407456692877014473

`∩[A038907(n+2), A296920(n+2)]`
-/

namespace A107013.P9407456692877014473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P9407456692877014473

/-! ## A107013.P9186263945310229537

`∩[A002476(n+1), A056874(n+1)]`
-/

namespace A107013.P9186263945310229537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P9186263945310229537

/-! ## A107013.P1235474087720979443

`∩[A045375(n+1), A056874(n+1)]`
-/

namespace A107013.P1235474087720979443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P1235474087720979443

/-! ## A107013.P3759551260710998062

`∩[A007645(n+1), A056874(n+2)]`
-/

namespace A107013.P3759551260710998062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P3759551260710998062

/-! ## A107013.P3018261699851503654

`∩[A045331(n+1), A056874(n+2)]`
-/

namespace A107013.P3018261699851503654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P3018261699851503654

/-! ## A107013.P2616388788780095

`∩[A038907(n+1), A055664(n+2)]`
-/

namespace A107013.P2616388788780095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P2616388788780095

/-! ## A107013.P4869498100096772419

`∩[A055664(n+1), A056874(n+2)]`
-/

namespace A107013.P4869498100096772419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P4869498100096772419

/-! ## A107013.P7825599397822078333

`∩[A296920(n+2), A055664(n+2)]`
-/

namespace A107013.P7825599397822078333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P7825599397822078333

/-! ## A107013.P13981015058051977919

`∩[A038907(n+1), A133290(n+1)]`
-/

namespace A107013.P13981015058051977919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P13981015058051977919

/-! ## A107013.P14132355094584928692

`∩[A038907(n+1), A137827(n+1)]`
-/

namespace A107013.P14132355094584928692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107013.P14132355094584928692

/-! ## A107013.P8957285718940582588

`filter[A038907(n+1), A070563(#)]`
-/

namespace A107013.P8957285718940582588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A107013.P8957285718940582588

/-! ## A107013.P1887243596487952948

`filter[A056874(n+1), A070563(#)]`
-/

namespace A107013.P1887243596487952948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A107013.P1887243596487952948

/-! ## A107013.P16867977287702475046

`filter[A296920(n+1), A070563(#)]`
-/

namespace A107013.P16867977287702475046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A107013.P16867977287702475046

/-!
# A107015: Number of even terms in Zeckendorf representation of n.

The programs for A107015, the canonical program `A107015.P10636807577461555633` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107015 has offset 1).

The definition of A107015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107015.P10028303230038593991

`Δ[A179180(n)]-A107016(n+1)`
-/

namespace A107015.P10028303230038593991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107016 (n + 1)

end

end A107015.P10028303230038593991

namespace A107015

/-- `Δ[A179180(n)]-A107016(n+1)` -/
def P10028303230038593991.Spec : Prop :=
  ∀ n, P10028303230038593991.a n = A107015 (n + 1)

theorem P10028303230038593991.correct : P10028303230038593991.Spec := by
  intro n
  simp only [A107015, Nat.add_sub_cancel, A107015.P10028303230038593991.f1, A107015.P10028303230038593991.a, A107015.P10636807577461555633.f1, A107015.P10636807577461555633.a, A003849, A003849.P15070805603138295355.a, A008612, A008612.P16648533606768999186.a, A035612, A035612.P7106491847305260424.a, A107016, A107016.P14660521387021692450.f1, A107016.P14660521387021692450.a, A179180, A179180.P10718591488616343433.f1, A179180.P10718591488616343433.a, A022340, A022340.P3334581410869230776.a, A143299, A143299.P15563677956109418683.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107015

/-! ## A107015.P4658427616446275620

`A007895(n+1)-A107016(n+1)`
-/

namespace A107015.P4658427616446275620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) - A107016 (n + 1)

end

end A107015.P4658427616446275620

namespace A107015

/-- `A007895(n+1)-A107016(n+1)` -/
def P4658427616446275620.Spec : Prop :=
  ∀ n, P4658427616446275620.a n = A107015 (n + 1)

end A107015

/-! ## A107015.P5707038029605518990

`dr(A014417(n+1))-A107016(n+1)`
-/

namespace A107015.P5707038029605518990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A014417 (n + 1)) : ℤ) - A107016 (n + 1)

end

end A107015.P5707038029605518990

namespace A107015

/-- `dr(A014417(n+1))-A107016(n+1)` -/
def P5707038029605518990.Spec : Prop :=
  ∀ n, P5707038029605518990.a n = A107015 (n + 1)

end A107015

/-! ## A107015.P10636807577461555633

`∑[A003849(n)-A008612(A035612(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107015

/-- `∑[A003849(n)-A008612(A035612(n+1))]` -/
def P10636807577461555633.Spec : Prop :=
  ∀ n, P10636807577461555633.a n = A107015 (n + 1)

theorem P10636807577461555633.correct : P10636807577461555633.Spec := by
  intro n
  simp only [A107015, Nat.add_sub_cancel]

end A107015

/-! ## A107015.P6909144294765040886

`A213911(A026274(n+1))-A107016(n+1)`
-/

namespace A107015.P6909144294765040886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A026274 (n + 1)).toNat - A107016 (n + 1)

end

end A107015.P6909144294765040886

namespace A107015

/-- `A213911(A026274(n+1))-A107016(n+1)` -/
def P6909144294765040886.Spec : Prop :=
  ∀ n, P6909144294765040886.a n = A107015 (n + 1)

end A107015

/-!
# A107016: Number of odd terms in Zeckendorf representation of n.

The programs for A107016, the canonical program `A107016.P14660521387021692450` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107016 has offset 1).

The definition of A107016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107016.P14660521387021692450

`Δ[A179180(n)]-A107015(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107016

/-- `Δ[A179180(n)]-A107015(n+1)` -/
def P14660521387021692450.Spec : Prop :=
  ∀ n, P14660521387021692450.a n = A107016 (n + 1)

theorem P14660521387021692450.correct : P14660521387021692450.Spec := by
  intro n
  simp only [A107016, Nat.add_sub_cancel]

end A107016

/-! ## A107016.P13278148930760370623

`A007895(n+1)-A107015(n+1)`
-/

namespace A107016.P13278148930760370623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) - A107015 (n + 1)

end

end A107016.P13278148930760370623

namespace A107016

/-- `A007895(n+1)-A107015(n+1)` -/
def P13278148930760370623.Spec : Prop :=
  ∀ n, P13278148930760370623.a n = A107016 (n + 1)

end A107016

/-! ## A107016.P15529675700942912557

`dr(A014417(n+1))-A107015(n+1)`
-/

namespace A107016.P15529675700942912557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A014417 (n + 1)) : ℤ) - A107015 (n + 1)

end

end A107016.P15529675700942912557

namespace A107016

/-- `dr(A014417(n+1))-A107015(n+1)` -/
def P15529675700942912557.Spec : Prop :=
  ∀ n, P15529675700942912557.a n = A107016 (n + 1)

end A107016

/-! ## A107016.P219722114896821321

`A007895(n+1)-∑[A003849(n)-A008612(A035612(n+1))]`
-/

namespace A107016.P219722114896821321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n - A008612 (A035612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107016.P219722114896821321

namespace A107016

/-- `A007895(n+1)-∑[A003849(n)-A008612(A035612(n+1))]` -/
def P219722114896821321.Spec : Prop :=
  ∀ n, P219722114896821321.a n = A107016 (n + 1)

end A107016

/-! ## A107016.P6239062805548905488

`A213911(A026274(n+1))-A107015(n+1)`
-/

namespace A107016.P6239062805548905488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A026274 (n + 1)).toNat - A107015 (n + 1)

end

end A107016.P6239062805548905488

namespace A107016

/-- `A213911(A026274(n+1))-A107015(n+1)` -/
def P6239062805548905488.Spec : Prop :=
  ∀ n, P6239062805548905488.a n = A107016 (n + 1)

end A107016

/-!
# A107017: Second largest term in Zeckendorf representation of n, a(n)=0 if n itself is a Fibonacci number.

The programs for A107017, there is no canonical definition to state claims against.
-/

/-! ## A107017.P5859499326735956059

`A087172(n%A087172(n+1)+1)%(n+1)`
-/

namespace A107017.P5859499326735956059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087172 (Int.tmod (n : ℤ) (A087172 (n + 1)) + 1).toNat) (n + 1 : ℤ)

end

end A107017.P5859499326735956059

/-! ## A107017.P2239846169884054241

`A000045(A130233(A066628(n+1)))`
-/

namespace A107017.P2239846169884054241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (A066628 (n + 1)).toNat).toNat

end

end A107017.P2239846169884054241

/-! ## A107017.P522153849510278933

`A066628(n+1-A066628(A066628(n+1)))`
-/

namespace A107017.P522153849510278933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 ((n + 1 : ℤ) - A066628 (A066628 (n + 1)).toNat).toNat

end

end A107017.P522153849510278933

/-! ## A107017.P4501703814070581240

`A000045(A130233(n+1-A087172(n+1)))`
-/

namespace A107017.P4501703814070581240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 ((n + 1 : ℤ) - A087172 (n + 1)).toNat).toNat

end

end A107017.P4501703814070581240

/-! ## A107017.P917043330690096477

`A194029(n+1)-A194029(A194029(A028310(n)))`
-/

namespace A107017.P917043330690096477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (n + 1) - A194029 (A194029 (A028310 n).toNat).toNat

end

end A107017.P917043330690096477

/-! ## A107017.P6687298471407573278

`A194029(n+1)-A194029(A194029(A160755(n+1)))`
-/

namespace A107017.P6687298471407573278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (n + 1) - A194029 (A194029 (A160755 (n + 1)).toNat).toNat

end

end A107017.P6687298471407573278

/-!
# A107019: Records in A074928.

The programs for A107019, there is no canonical definition to state claims against.
-/

/-! ## A107019.P1395308104900659247

`record[A074928(n+1)]`
-/

namespace A107019.P1395308104900659247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107019.P1395308104900659247

/-! ## A107019.P1828409778748251180

`A074928(A107057(n+1))`
-/

namespace A107019.P1828409778748251180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074928 (A107057 (n + 1)).toNat

end

end A107019.P1828409778748251180

/-! ## A107019.P3457904425582559768

`record[A144871(∑[(2-n)²+1]-1)]`
-/

namespace A107019.P3457904425582559768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107019.P3457904425582559768

/-!
# A107020: Primes p such that 2p+1, 4p+3, 6p+5 are all primes.

The programs for A107020, there is no canonical definition to state claims against.
-/

/-! ## A107020.P12773730463054072535

`p?[A124486(n+1)-1]`
-/

namespace A107020.P12773730463054072535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124486 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107020.P12773730463054072535

/-! ## A107020.P4002088064576592462

`p?[floor(A067256(n+1)/2)]`
-/

namespace A107020.P4002088064576592462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067256 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107020.P4002088064576592462

/-! ## A107020.P15536302703888339391

`p?[A153881(n+2)+A124486(n+1)]`
-/

namespace A107020.P15536302703888339391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A124486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107020.P15536302703888339391

/-! ## A107020.P6770430523197967097

`p?[A067256(n+1)%A124486(n+1)]`
-/

namespace A107020.P6770430523197967097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067256 (n + 1)) (A124486 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107020.P6770430523197967097

/-! ## A107020.P11421790862589689845

`p?[A343785(A016789(n))+A124486(n+1)]`
-/

namespace A107020.P11421790862589689845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A016789 n).toNat + A124486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107020.P11421790862589689845

/-! ## A107020.P5381333021763130659

`p?[A320836(A020639(2*(n+1)))+A124486(n+1)]`
-/

namespace A107020.P5381333021763130659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320836 (A020639 (2 * (n + 1))).toNat + A124486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107020.P5381333021763130659

/-! ## A107020.P9539071567355113374

`∩[A007700(n+1), A023221(n+1)]`
-/

namespace A107020.P9539071567355113374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107020.P9539071567355113374

/-!
# A107021: Primes p such that 2p+1, 4p+3, 6p+5, 8p+7 are all primes.

The programs for A107021, there is no canonical definition to state claims against.
-/

/-! ## A107021.P16142457731474304711

`∩[A023272(n+1), A329551(n+1)]`
-/

namespace A107021.P16142457731474304711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107021.P16142457731474304711

/-! ## A107021.P11236466034609327288

`∩[A007700(n+1), A329551(n+1)]`
-/

namespace A107021.P11236466034609327288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107021.P11236466034609327288

/-! ## A107021.P8973684933047523486

`∩[A023272(n+1), A107020(n+1)]`
-/

namespace A107021.P8973684933047523486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107021.P8973684933047523486

/-! ## A107021.P12548577664222077773

`∩[A107020(n+1), A329551(n+1)]`
-/

namespace A107021.P12548577664222077773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107021.P12548577664222077773

/-! ## A107021.P3128644252727843312

`p?[A124487(n+1)-1]`
-/

namespace A107021.P3128644252727843312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124487 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107021.P3128644252727843312

/-!
# A107022: Primes p such that 2p+1, 4p+3, 6p+5, 8p+7, 10p+9 are all primes.

The programs for A107022, there is no canonical definition to state claims against.
-/

/-! ## A107022.P18031768514241670631

`p?[A124488(n+1)-1]`
-/

namespace A107022.P18031768514241670631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124488 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107022.P18031768514241670631

/-! ## A107022.P9115095934102479000

`p?[floor(A067258(n+1)/2)]`
-/

namespace A107022.P9115095934102479000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067258 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107022.P9115095934102479000

/-! ## A107022.P8072308318648365234

`p?[A067258(n+1)%A124488(n+1)]`
-/

namespace A107022.P8072308318648365234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067258 (n + 1)) (A124488 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107022.P8072308318648365234

/-!
# A107025: Binomial transform of the expansion of 1/(1-x^5-x^6).

The programs for A107025, the canonical program `A107025.P4940430506206915883` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107025 has offset 0).

The definition of A107025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107025.P4940430506206915883

`A017837(6*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107025

/-- `A017837(6*n)` -/
def P4940430506206915883.Spec : Prop :=
  ∀ n, P4940430506206915883.a n = A107025 n

theorem P4940430506206915883.correct : P4940430506206915883.Spec := by
  intro n
  simp only [A107025]

end A107025

/-! ## A107025.P15643988038424975810

`∑[A369794(n)]`
-/

namespace A107025.P15643988038424975810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107025.P15643988038424975810

namespace A107025

/-- `∑[A369794(n)]` -/
def P15643988038424975810.Spec : Prop :=
  ∀ n, P15643988038424975810.a n = A107025 n

end A107025

/-! ## A107025.P10295521617484370133

`A392271(2*n)`
-/

namespace A107025.P10295521617484370133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392271 (2 * n)

end

end A107025.P10295521617484370133

namespace A107025

/-- `A392271(2*n)` -/
def P10295521617484370133.Spec : Prop :=
  ∀ n, P10295521617484370133.a n = A107025 n

end A107025

/-! ## A107025.P16780776127058914105

`A391265(3*n)`
-/

namespace A107025.P16780776127058914105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391265 (3 * n)

end

end A107025.P16780776127058914105

namespace A107025

/-- `A391265(3*n)` -/
def P16780776127058914105.Spec : Prop :=
  ∀ n, P16780776127058914105.a n = A107025 n

end A107025

/-! ## A107025.P1052143749549954510

`A127840(6*n+7)`
-/

namespace A107025.P1052143749549954510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (6 * n + 7)

end

end A107025.P1052143749549954510

namespace A107025

/-- `A127840(6*n+7)` -/
def P1052143749549954510.Spec : Prop :=
  ∀ n, P1052143749549954510.a n = A107025 n

end A107025

/-! ## A107025.P2954464922888576216

`Δ[A127840(Δ[A003215(n)])]`
-/

namespace A107025.P2954464922888576216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107025.P2954464922888576216

namespace A107025

/-- `Δ[A127840(Δ[A003215(n)])]` -/
def P2954464922888576216.Spec : Prop :=
  ∀ n, P2954464922888576216.a n = A107025 n

end A107025

/-! ## A107025.P11165800955442758373

`∑[A017837(record[A019426(n)])]`
-/

namespace A107025.P11165800955442758373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107025.P11165800955442758373

namespace A107025

/-- `∑[A017837(record[A019426(n)])]` -/
def P11165800955442758373.Spec : Prop :=
  ∀ n, P11165800955442758373.a n = A107025 n

end A107025

/-! ## A107025.P10919424271867039781

`Δ[A127840(A008458(n+1))]`
-/

namespace A107025.P10919424271867039781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A008458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107025.P10919424271867039781

namespace A107025

/-- `Δ[A127840(A008458(n+1))]` -/
def P10919424271867039781.Spec : Prop :=
  ∀ n, P10919424271867039781.a n = A107025 n

end A107025

/-! ## A107025.P14814762778860237230

`gcd(C(2, n), A017837(A008458(n)))`
-/

namespace A107025.P14814762778860237230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A017837 (A008458 n).toNat)

end

end A107025.P14814762778860237230

namespace A107025

/-- `gcd(C(2, n), A017837(A008458(n)))` -/
def P14814762778860237230.Spec : Prop :=
  ∀ n, (P14814762778860237230.a n : ℤ) = A107025 n

end A107025

/-! ## A107025.P9120966983171965297

`Δ[A017837(A113127(n)+A005408(n))]`
-/

namespace A107025.P9120966983171965297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (A113127 n + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107025.P9120966983171965297

namespace A107025

/-- `Δ[A017837(A113127(n)+A005408(n))]` -/
def P9120966983171965297.Spec : Prop :=
  ∀ n, P9120966983171965297.a n = A107025 n

end A107025

/-! ## A107025.P3092149463538752870

`A373961(n+2)-(A373961(n+1)+A369794(n+1))`
-/

namespace A107025.P3092149463538752870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373961 (n + 2) - (A373961 (n + 1) + A369794 (n + 1))

end

end A107025.P3092149463538752870

namespace A107025

/-- `A373961(n+2)-(A373961(n+1)+A369794(n+1))` -/
def P3092149463538752870.Spec : Prop :=
  ∀ n, P3092149463538752870.a n = A107025 n

end A107025

/-!
# A107026: Row sums of inverse of Riordan array (1/(1+x),x/(1+x)^4).

The programs for A107026, there is no canonical definition to state claims against.
-/

/-! ## A107026.P8911873613442985434

`A369592(4*n)`
-/

namespace A107026.P8911873613442985434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (4 * n)

end

end A107026.P8911873613442985434

/-! ## A107026.P14509970229402783971

`record[A107027(A055999(n)+1)]`
-/

namespace A107026.P14509970229402783971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107026.P14509970229402783971

/-! ## A107026.P9311083378739289136

`A047100(C(4*n+2, 2)-(n+1))`
-/

namespace A107026.P9311083378739289136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (Nat.choose (4 * n + 2) 2 - (n + 1))

end

end A107026.P9311083378739289136

/-! ## A107026.P4860367227226115188

`A047100(A139277(n))`
-/

namespace A107026.P4860367227226115188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A139277 n).toNat

end

end A107026.P4860367227226115188

/-! ## A107026.P16982607834382241676

`A047100(A033586(n)+n)`
-/

namespace A107026.P16982607834382241676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A033586 n + (n : ℤ)).toNat

end

end A107026.P16982607834382241676

/-!
# A107027: Number triangle associated to the Riordan arrays (1/(1+x),x/(1+x)^k),k>=0.

The programs for A107027, there is no canonical definition to state claims against.
-/

/-! ## A107027.P3645147485272597663

`A107030(char[A014132(n+1)]*A061579(n))`
-/

namespace A107027.P3645147485272597663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A107027.P3645147485272597663

/-! ## A107027.P11105770656261734414

`A107030(∑[2*n]%comp[∑[n]])`
-/

namespace A107027.P11105770656261734414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A107027.P11105770656261734414

/-! ## A107027.P1949692899289511407

`A107030(∑[char[∑[n]]]²-(n+1))`
-/

namespace A107027.P1949692899289511407
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A107027.P1949692899289511407

/-! ## A107027.P16942028116936791224

`A107030(A061579(n))%A276586(3*(n+1))`
-/

namespace A107027.P16942028116936791224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107030 (A061579 n).toNat) (A276586 (3 * (n + 1)))

end

end A107027.P16942028116936791224

/-! ## A107027.P2413077174852377733

`(2-char[∑[n]])*A382100(n)`
-/

namespace A107027.P2413077174852377733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A382100 n

end

end A107027.P2413077174852377733

/-!
# A107028: Row sums of number triangle A107027.

The programs for A107028, there is no canonical definition to state claims against.
-/

/-! ## A107028.P17253669048229495228

`ceil(sqrt(∑[A225738(3*n+1)]))`
-/

namespace A107028.P17253669048229495228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225738 (3 * n + 1 + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A107028.P17253669048229495228

/-! ## A107028.P17171357345276347202

`A193832(A265058(n²))`
-/

namespace A107028.P17171357345276347202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A265058 (n ^ 2)).toNat

end

end A107028.P17171357345276347202

/-! ## A107028.P17594266203152151371

`A276581(A259438(n)²)`
-/

namespace A107028.P17594266203152151371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A259438 n ^ 2).toNat

end

end A107028.P17594266203152151371

/-!
# A107029: Diagonal sums of number triangle A107027.

The programs for A107029, there is no canonical definition to state claims against.
-/

/-! ## A107029.P333577224820208842

`A344022(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A107029.P333577224820208842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A344022 (a (n - 1) + a (n - 2)).toNat

end

end A107029.P333577224820208842

/-! ## A107029.P12778835874355848359

`or(1, A003059(A229046(n)))`
-/

namespace A107029.P12778835874355848359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003059 (A229046 n).toNat)

end

end A107029.P12778835874355848359

/-! ## A107029.P17275250704475958060

`or(1, A137734(A272064(n)))`
-/

namespace A107029.P17275250704475958060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A137734 (A272064 n).toNat)

end

end A107029.P17275250704475958060

/-! ## A107029.P13210199386790617177

`or(1, A343822(A254729(n)))`
-/

namespace A107029.P13210199386790617177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A343822 (A254729 n).toNat)

end

end A107029.P13210199386790617177

/-! ## A107029.P8700818670355487917

`or(1, A003059(A010359(n+1)))`
-/

namespace A107029.P8700818670355487917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003059 (A010359 (n + 1)).toNat)

end

end A107029.P8700818670355487917

/-!
# A107030: Number triangle associated with the Riordan arrays (1/(1+x),x/(1+x)^k),k>=0.

The programs for A107030, there is no canonical definition to state claims against.
-/

/-! ## A107030.P13824997068559530337

`A107027(∑[2*n]%comp[∑[n]])`
-/

namespace A107030.P13824997068559530337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A107030.P13824997068559530337

/-! ## A107030.P17743865556288903412

`A107027(∑[char[∑[n]]]²-(n+1))`
-/

namespace A107030.P17743865556288903412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A107030.P17743865556288903412

/-! ## A107030.P16355123921045186234

`or(char[2], A107027(A061579(n)))`
-/

namespace A107030.P16355123921045186234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A107027 (A061579 n).toNat)

end

end A107030.P16355123921045186234

/-! ## A107030.P10865553548739188304

`or(char[2], A107027(A114327(n)+n))`
-/

namespace A107030.P10865553548739188304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A107027 (A114327 n + (n : ℤ)).toNat)

end

end A107030.P10865553548739188304

/-! ## A107030.P16953677511814678992

`A000108(gcd(n, n+1))*A107027(A061579(n))`
-/

namespace A107030.P16953677511814678992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A107027 (A061579 n).toNat

end

end A107030.P16953677511814678992

/-! ## A107030.P1332031072305418938

`A107027(A061579(n))^A008683(2*A000040(n+1))`
-/

namespace A107030.P1332031072305418938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107027 (A061579 n).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A107030.P1332031072305418938

/-! ## A107030.P16335405433623354315

`A107027(A061579(n))%A000032(n+2)`
-/

namespace A107030.P16335405433623354315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107027 (A061579 n).toNat) (A000032 (n + 2))

end

end A107030.P16335405433623354315

/-!
# A107031: Diagonal sums of number triangle A107030.

The programs for A107031, there is no canonical definition to state claims against.
-/

/-! ## A107031.P8734162793627177835

`∑[A056813(A232864(n))]`
-/

namespace A107031.P8734162793627177835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A232864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107031.P8734162793627177835

/-! ## A107031.P17240555043240983446

`∑[A056813(A274739(n))]`
-/

namespace A107031.P17240555043240983446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A274739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107031.P17240555043240983446

/-! ## A107031.P17885500819378258078

`∑[A056813(A306523(n))]`
-/

namespace A107031.P17885500819378258078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A306523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107031.P17885500819378258078

/-! ## A107031.P665111400583359446

`A003056(A020009(n))+n`
-/

namespace A107031.P665111400583359446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A020009 n).toNat + (n : ℤ)

end

end A107031.P665111400583359446

/-!
# A107032: Belgian-8 numbers.

The programs for A107032, there is no canonical definition to state claims against.
-/

/-! ## A107032.P10255784356902048161

`lt[A356935(n+1), A057815(A000041(n+1))]`
-/

namespace A107032.P10255784356902048161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (A000041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107032.P10255784356902048161

/-! ## A107032.P14446199976161700546

`lt[A082720(n+3), A057815(A000041(n+1))]`
-/

namespace A107032.P14446199976161700546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082720 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (A000041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107032.P14446199976161700546

/-!
# A107033: Expansion of f(x, x) * f(x, -x^2) in powers of x where f(,) is a Ramanujan theta function.

The programs for A107033, there is no canonical definition to state claims against.
-/

/-! ## A107033.P13854324953428939066

`(-1)^n*A115110(n)`
-/

namespace A107033.P13854324953428939066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A115110 n

end

end A107033.P13854324953428939066

/-! ## A107033.P3214792930861998800

`A115110(n)/A033999(n)`
-/

namespace A107033.P3214792930861998800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115110 n : ℚ) / (A033999 n : ℚ)

end

end A107033.P3214792930861998800

/-! ## A107033.P17941469285372753058

`A115110(n)/A062157(n+1)`
-/

namespace A107033.P17941469285372753058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115110 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A107033.P17941469285372753058

/-! ## A107033.P2693637078200744818

`A115110(n)/A057428(n)^n`
-/

namespace A107033.P2693637078200744818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115110 n : ℚ) / (A057428 n ^ n : ℚ)

end

end A107033.P2693637078200744818

/-! ## A107033.P269614132970308530

`A115110(n)/(A014681(n+1)-(n+1))`
-/

namespace A107033.P269614132970308530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115110 n : ℚ) / (A014681 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A107033.P269614132970308530

/-! ## A107033.P5110701536983642866

`A115110(n)/A073592(∑[A062157(n)])`
-/

namespace A107033.P5110701536983642866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115110 n : ℚ) / (A073592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A107033.P5110701536983642866

/-! ## A107033.P13025675435443659250

`A115110(n)/A097807(Δ[A008619(n)])`
-/

namespace A107033.P13025675435443659250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115110 n : ℚ) / (A097807 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A107033.P13025675435443659250

/-! ## A107033.P5539607071939449161

`A115110(n)*A309873(A088835(n+1))`
-/

namespace A107033.P5539607071939449161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115110 n * A309873 (A088835 (n + 1)).toNat

end

end A107033.P5539607071939449161

/-! ## A107033.P2101394915697225967

`A115110(n)*A309873(n²+1)`
-/

namespace A107033.P2101394915697225967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115110 n * A309873 (n ^ 2 + 1)

end

end A107033.P2101394915697225967

/-!
# A107034: Expansion of f(-x) * f(-x^4) in powers of x where f() is a Ramanujan theta function.

The programs for A107034, there is no canonical definition to state claims against.
-/

/-! ## A107034.P4214772043952225392

`(-1)^n*A117410(n)`
-/

namespace A107034.P4214772043952225392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A117410 n

end

end A107034.P4214772043952225392

/-! ## A107034.P2551522098040470564

`A117410(n)/A033999(n)`
-/

namespace A107034.P2551522098040470564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117410 n : ℚ) / (A033999 n : ℚ)

end

end A107034.P2551522098040470564

/-! ## A107034.P10842858441052598218

`A117410(n)/(1-A010673(n))`
-/

namespace A107034.P10842858441052598218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117410 n : ℚ) / (1 - A010673 n : ℚ)

end

end A107034.P10842858441052598218

/-! ## A107034.P17450087735988760138

`A117410(n)*A152163(Δ[A004526(n)])`
-/

namespace A107034.P17450087735988760138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117410 n * A152163 (f1 (n + 1) - f1 n).toNat

end

end A107034.P17450087735988760138

/-! ## A107034.P12985452241825918494

`A117410(n)/A054354(A054353(n+1))`
-/

namespace A107034.P12985452241825918494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117410 n : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A107034.P12985452241825918494

/-!
# A107035: Expansion of q * (psi(q^4) / phi(-q))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A107035, there is no canonical definition to state claims against.
-/

/-! ## A107035.P13120675677184941174

`A123655(2*(n+1))/2`
-/

namespace A107035.P13120675677184941174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123655 (2 * (n + 1)) : ℚ) / 2

end

end A107035.P13120675677184941174

/-! ## A107035.P10246795088776030516

`A131126(n+1)/4`
-/

namespace A107035.P10246795088776030516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 (n + 1) : ℚ) / 4

end

end A107035.P10246795088776030516

/-! ## A107035.P1098130587712415340

`A215348(2*(n+1))/4`
-/

namespace A107035.P1098130587712415340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215348 (2 * (n + 1)) : ℚ) / 4

end

end A107035.P1098130587712415340

/-! ## A107035.P12212232623117817023

`A014969(n+1)/8`
-/

namespace A107035.P12212232623117817023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (n + 1) : ℚ) / 8

end

end A107035.P12212232623117817023

/-! ## A107035.P14583911695700859482

`abs(A260145(n+1))`
-/

namespace A107035.P14583911695700859482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260145 (n + 1)|

end

end A107035.P14583911695700859482

/-! ## A107035.P6452542314557206903

`A033999(n)*A260145(n+1)`
-/

namespace A107035.P6452542314557206903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A260145 (n + 1)

end

end A107035.P6452542314557206903

/-! ## A107035.P17979325537887041408

`gcd(A000038(n), A260145(n+1))`
-/

namespace A107035.P17979325537887041408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260145 (n + 1))

end

end A107035.P17979325537887041408

/-! ## A107035.P2823074171885517919

`lcm(A000034(n), A260145(n+1))`
-/

namespace A107035.P2823074171885517919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260145 (n + 1))

end

end A107035.P2823074171885517919

/-! ## A107035.P5824715832311377895

`abs(A208605(2*(n+1))/2)`
-/

namespace A107035.P5824715832311377895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A208605 (2 * (n + 1)) : ℚ) / 2|

end

end A107035.P5824715832311377895

/-! ## A107035.P17545739662470154352

`A208605(2*n+2)/(A000038(n+1)-2)`
-/

namespace A107035.P17545739662470154352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (2 * n + 2) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A107035.P17545739662470154352

/-! ## A107035.P5667587768151369906

`A208605(2*n+2)/(2-A010713(2*n))`
-/

namespace A107035.P5667587768151369906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (2 * n + 2) : ℚ) / (2 - A010713 (2 * n) : ℚ)

end

end A107035.P5667587768151369906

/-! ## A107035.P6606570751059338644

`lcm(A000034(n+1), A208605(2*(n+1)))/2`
-/

namespace A107035.P6606570751059338644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A208605 (2 * (n + 1))) : ℚ) / 2

end

end A107035.P6606570751059338644

/-! ## A107035.P17225543986506549996

`gcd(A208605(2*n+2)/2, A000038(2*n))`
-/

namespace A107035.P17225543986506549996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A208605 (2 * n + 2) : ℚ) / 2)) (A000038 (2 * n))

end

end A107035.P17225543986506549996

/-! ## A107035.P7313769879984130513

`A208605(2*(n+1))/(A033999(2*n+1)-1)`
-/

namespace A107035.P7313769879984130513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (2 * (n + 1)) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A107035.P7313769879984130513

/-! ## A107035.P2172378132669705666

`A208605(2*(n+1))/A000034(2*n+1)-A208605(2*(n+1))`
-/

namespace A107035.P2172378132669705666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (2 * (n + 1)) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A208605 (2 * (n + 1)) : ℚ)

end

end A107035.P2172378132669705666

/-! ## A107035.P6228333891693796657

`A210066(n+1)/(2*A280560(n+1))`
-/

namespace A107035.P6228333891693796657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 (n + 1) : ℚ) / (2 * A280560 (n + 1) : ℚ)

end

end A107035.P6228333891693796657

/-! ## A107035.P9660288663843019175

`A112128(2*(n+1))/4`
-/

namespace A107035.P9660288663843019175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (2 * (n + 1)) : ℚ) / 4

end

end A107035.P9660288663843019175

/-! ## A107035.P7527798365758326169

`record[A232358(n+2)/8]`
-/

namespace A107035.P7527798365758326169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (n + 2) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107035.P7527798365758326169

/-! ## A107035.P15699714914541445422

`A189925(2*(n+1))/8`
-/

namespace A107035.P15699714914541445422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 (2 * (n + 1)) : ℚ) / 8

end

end A107035.P15699714914541445422

/-! ## A107035.P211442172765889382

`Δ[∑[A131126(n)]/4]`
-/

namespace A107035.P211442172765889382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107035.P211442172765889382

/-!
# A107036: Indices of prime Jacobsthal numbers.

The programs for A107036, there is no canonical definition to state claims against.
-/

/-! ## A107036.P2996576438077871367

`A000978(n%a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A107036.P2996576438077871367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A000978 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A107036.P2996576438077871367

/-! ## A107036.P18099655093960488277

`A000978(A028310(n))+char[1]`
-/

namespace A107036.P18099655093960488277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107036.P18099655093960488277

/-! ## A107036.P11039600476163287929

`A000978(A065033(2*n))+char[1]`
-/

namespace A107036.P11039600476163287929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (A065033 (2 * n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107036.P11039600476163287929

/-! ## A107036.P9992522393627647086

`A000978(A000007(n)+n)+char[1]`
-/

namespace A107036.P9992522393627647086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (A000007 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A107036.P9992522393627647086

/-! ## A107036.P16658203046400352104

`A063524(n)+A000978(A028310(n))`
-/

namespace A107036.P16658203046400352104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A000978 (A028310 n).toNat

end

end A107036.P16658203046400352104

/-!
# A107037: Indices of squarefree Jacobsthal numbers.

The programs for A107037, there is no canonical definition to state claims against.
-/

/-! ## A107037.P17259892814395542742

`A107039(n)+a(n-1)` with `a(0)=1`
-/

namespace A107037.P17259892814395542742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107039 n + a (n - 1)

end

end A107037.P17259892814395542742

/-! ## A107037.P4919551444298235139

`∑[A107039(A028310(n))]`
-/

namespace A107037.P4919551444298235139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107039 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107037.P4919551444298235139

/-! ## A107037.P7587282268216155061

`eq[1, A051724(gcd(n, A001045(n)))]`
-/

namespace A107037.P7587282268216155061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Int.gcd (n : ℤ) (A001045 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107037.P7587282268216155061

/-! ## A107037.P5048427704939542013

`lt[A337243(2*(n+1)), dr(n+1)]`
-/

namespace A107037.P5048427704939542013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107037.P5048427704939542013

/-! ## A107037.P15737147210721131592

`eq[A083891(A333627(2*(n+1))), A114099(n)]`
-/

namespace A107037.P15737147210721131592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A333627 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107037.P15737147210721131592

/-!
# A107038: First differences of indices of squarefree Fibonacci numbers.

The programs for A107038, the canonical program `A107038.P1274454564014350472` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107038 has offset 0).

The definition of A107038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107038.P1274454564014350472

`Δ[A037918(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107038

/-- `Δ[A037918(n+1)]` -/
def P1274454564014350472.Spec : Prop :=
  ∀ n, P1274454564014350472.a n = A107038 n

theorem P1274454564014350472.correct : P1274454564014350472.Spec := by
  intro n
  simp only [A107038]

end A107038

/-! ## A107038.P4271992325924824341

`abs(Δ[A037918(1-(n-2*n))])`
-/

namespace A107038.P4271992325924824341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A107038.P4271992325924824341

namespace A107038

/-- `abs(Δ[A037918(1-(n-2*n))])` -/
def P4271992325924824341.Spec : Prop :=
  ∀ n, P4271992325924824341.a n = A107038 n

end A107038

/-! ## A107038.P13654008480444982785

`Δ[eq[A104714(n), A109009(n)]]`
-/

namespace A107038.P13654008480444982785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107038.P13654008480444982785

namespace A107038

/-- `Δ[eq[A104714(n), A109009(n)]]` -/
def P13654008480444982785.Spec : Prop :=
  ∀ n, P13654008480444982785.a n = A107038 n

theorem P13654008480444982785.correct : P13654008480444982785.Spec := by
  intro n
  simp only [A107038, Nat.add_sub_cancel, A107038.P13654008480444982785.f2, A107038.P13654008480444982785.f3, A107038.P13654008480444982785.f1, A107038.P13654008480444982785.a, A107038.P1274454564014350472.f1, A107038.P1274454564014350472.a, A037918, A037918.P7428307511424955456.f1, A037918.P7428307511424955456.f2, A037918.P7428307511424955456.a, A104714, A104714.P3939111547358435727.a, A109009, A109009.P7417354479421455813.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107038

/-! ## A107038.P17878781684223101193

`A037918(n+2)-A037918(n+1)`
-/

namespace A107038.P17878781684223101193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 2) - A037918 (n + 1)

end

end A107038.P17878781684223101193

namespace A107038

/-- `A037918(n+2)-A037918(n+1)` -/
def P17878781684223101193.Spec : Prop :=
  ∀ n, P17878781684223101193.a n = A107038 n

theorem P17878781684223101193.correct : P17878781684223101193.Spec := by
  intro n
  simp only [A107038, Nat.add_sub_cancel, A107038.P17878781684223101193.a, A107038.P1274454564014350472.f1, A107038.P1274454564014350472.a, SequenceMachineLib.memo_apply]

end A107038

/-! ## A107038.P12416091231514237239

`Δ[eq[A174340(n+1), A174351(n+1)]]`
-/

namespace A107038.P12416091231514237239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174351 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107038.P12416091231514237239

namespace A107038

/-- `Δ[eq[A174340(n+1), A174351(n+1)]]` -/
def P12416091231514237239.Spec : Prop :=
  ∀ n, P12416091231514237239.a n = A107038 n

end A107038

/-!
# A107039: First differences of indices of squarefree Jacobsthal numbers.

The programs for A107039, there is no canonical definition to state claims against.
-/

/-! ## A107039.P15016768397867281835

`Δ[A107037(n+1)]`
-/

namespace A107039.P15016768397867281835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107039.P15016768397867281835

/-! ## A107039.P16003179899385415123

`A107037(n+2)-A107037(n+1)`
-/

namespace A107039.P16003179899385415123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (n + 2) - A107037 (n + 1)

end

end A107039.P16003179899385415123

/-! ## A107039.P15294013264642462940

`A000041(A107037(n+2)%A107037(n+1))`
-/

namespace A107039.P15294013264642462940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A107037 (n + 2)) (A107037 (n + 1))).toNat

end

end A107039.P15294013264642462940

/-! ## A107039.P5026025581374384011

`Δ[record[A107037(A134478(n))]]`
-/

namespace A107039.P5026025581374384011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107039.P5026025581374384011

/-!
# A107040: Indices of squarefree Pell numbers.

The programs for A107040, there is no canonical definition to state claims against.
-/

/-! ## A107040.P10219200939701611884

`∑[A107041(floor(acot(n)+n))]`
-/

namespace A107040.P10219200939701611884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107041 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107040.P10219200939701611884

/-! ## A107040.P13439189959742295451

`∑[A107041(round(acot(n)+n))]`
-/

namespace A107040.P13439189959742295451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107041 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107040.P13439189959742295451

/-! ## A107040.P4881214763077010889

`A107041(n)+a(n-1)` with `a(0)=1`
-/

namespace A107040.P4881214763077010889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107041 n + a (n - 1)

end

end A107040.P4881214763077010889

/-! ## A107040.P553138011474087347

`∑[A107041(round(sqrt(n²+1)))]`
-/

namespace A107040.P553138011474087347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107041 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107040.P553138011474087347

/-! ## A107040.P9741388118217329477

`∑[A107041(n)*A304569(a(n-1))]` with `a(0)=1`
-/

namespace A107040.P9741388118217329477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A107041 n * A304569 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107040.P9741388118217329477

/-! ## A107040.P11680065548614722219

`∑[A107041(n+1)]+1-A107041(n+1)`
-/

namespace A107040.P11680065548614722219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A107041 (n + 1))

end

end A107040.P11680065548614722219

/-!
# A107041: First differences of indices of squarefree Pell numbers.

The programs for A107041, there is no canonical definition to state claims against.
-/

/-! ## A107041.P11539617679787858009

`A107040(n+2)-A107040(n+1)`
-/

namespace A107041.P11539617679787858009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (n + 2) - A107040 (n + 1)

end

end A107041.P11539617679787858009

/-! ## A107041.P16397791297197615425

`Δ[A107040(n+1)]`
-/

namespace A107041.P16397791297197615425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107041.P16397791297197615425

/-! ## A107041.P2936474162855058057

`abs(Δ[A107040(ϕ²-(ϕ-n))])`
-/

namespace A107041.P2936474162855058057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A107041.P2936474162855058057

/-! ## A107041.P6392142924288877654

`A000027(Δ[A107040(ϕ²-(ϕ-n))])`
-/

namespace A107041.P6392142924288877654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A107041.P6392142924288877654

/-! ## A107041.P13972309312874004372

`A001096(Δ[A107040(ϕ²-(ϕ-n))])`
-/

namespace A107041.P13972309312874004372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 (f1 (n + 1) - f1 n).toNat

end

end A107041.P13972309312874004372

/-! ## A107041.P16007208222133768883

`A072438(Δ[A107040(ϕ²-(ϕ-n))])`
-/

namespace A107041.P16007208222133768883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (f1 (n + 1) - f1 n).toNat

end

end A107041.P16007208222133768883

/-! ## A107041.P3617871039296362905

`Δ[A107040(ϕ²-(ϕ-n))-(2%A007318(n)²)%2]`
-/

namespace A107041.P3617871039296362905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - Int.tmod (Int.tmod 2 (A007318 n ^ 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107041.P3617871039296362905

/-! ## A107041.P3902198840934985380

`Δ[record[A107040(A134478(n))]]`
-/

namespace A107041.P3902198840934985380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107041.P3902198840934985380

/-! ## A107041.P6416170555017051342

`A001222(ratio[A000079(A107040(n+1))])`
-/

namespace A107041.P6416170555017051342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A107040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A107041.P6416170555017051342

/-! ## A107041.P15516949289234958169

`A007318(∑[n])*Δ[A107040(ϕ²-(ϕ-n))]`
-/

namespace A107041.P15516949289234958169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A107041.P15516949289234958169

/-!
# A107043: Belgian-9 numbers.

The programs for A107043, there is no canonical definition to state claims against.
-/

/-! ## A107043.P13606955604720182876

`lt[8, A257779(n)]`
-/

namespace A107043.P13606955604720182876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107043.P13606955604720182876

/-! ## A107043.P12906777010628998690

`A000027(eq[9, A257779(n)])`
-/

namespace A107043.P12906777010628998690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107043.P12906777010628998690

/-! ## A107043.P13999049541036738158

`eq[9, A257779(A028310(n))]`
-/

namespace A107043.P13999049541036738158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107043.P13999049541036738158

/-! ## A107043.P5721080587627231388

`eq[A100401(n), A257779(n)]`
-/

namespace A107043.P5721080587627231388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P5721080587627231388

/-! ## A107043.P16158062548956124454

`eq[A100403(n), A257779(n)]`
-/

namespace A107043.P16158062548956124454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P16158062548956124454

/-! ## A107043.P13419079600413558360

`eq[A168094(n), A257779(n)]`
-/

namespace A107043.P13419079600413558360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P13419079600413558360

/-! ## A107043.P6377337014238955693

`eq[A122553(n)², A257779(n)]`
-/

namespace A107043.P6377337014238955693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P6377337014238955693

/-! ## A107043.P2743538269612670730

`eq[A066586(n+1), A257779(n)]`
-/

namespace A107043.P2743538269612670730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P2743538269612670730

/-! ## A107043.P5254476935866673221

`eq[A094327(n+1), A257779(n)]`
-/

namespace A107043.P5254476935866673221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P5254476935866673221

/-! ## A107043.P5826719410049943723

`eq[A257779(n), A291092(n+1)]`
-/

namespace A107043.P5826719410049943723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107043.P5826719410049943723

/-!
# A107044: A symmetric factorial triangle, read by rows: T(n,k) = min(k,n-k)!; n>=2, 1<=k<=n-1.

The programs for A107044, the canonical program `A107044.P8623084784960979862` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107044 has offset 2).

The definition of A107044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107044.P8623084784960979862

`A003983(n+1)!`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107044

/-- `A003983(n+1)!` -/
def P8623084784960979862.Spec : Prop :=
  ∀ n, (P8623084784960979862.a n : ℤ) = A107044 (n + 2)

theorem P8623084784960979862.correct : P8623084784960979862.Spec := by
  intro n
  simp only [A107044, Nat.add_sub_cancel]

end A107044

/-! ## A107044.P6632215784950235195

`(A004197(n)+1)!`
-/

namespace A107044.P6632215784950235195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004197 n + 1).toNat

end

end A107044.P6632215784950235195

namespace A107044

/-- `(A004197(n)+1)!` -/
def P6632215784950235195.Spec : Prop :=
  ∀ n, (P6632215784950235195.a n : ℤ) = A107044 (n + 2)

theorem P6632215784950235195.correct : P6632215784950235195.Spec := by
  intro n
  simp only [A107044, Nat.add_sub_cancel, A107044.P6632215784950235195.a, A107044.P8623084784960979862.a, A003983, A003983.P15269842853270651919.a, A004197, A004197.P2905520585302697030.a, A157458, A157458.P16856629470642738053.a, A003982, A003982.P6136202056268562101.a, A157454, A157454.P17958483760181188644.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P10108526043471454015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107044

/-! ## A107044.P7035124954124768875

`A053616(comp[∑[n]])!`
-/

namespace A107044.P7035124954124768875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053616 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A107044.P7035124954124768875

namespace A107044

/-- `A053616(comp[∑[n]])!` -/
def P7035124954124768875.Spec : Prop :=
  ∀ n, (P7035124954124768875.a n : ℤ) = A107044 (n + 2)

end A107044

/-! ## A107044.P15248827876320616977

`sqrt(A106314(n+1))!`
-/

namespace A107044.P15248827876320616977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A106314 (n + 1) : ℝ))).toNat

end

end A107044.P15248827876320616977

namespace A107044

/-- `sqrt(A106314(n+1))!` -/
def P15248827876320616977.Spec : Prop :=
  ∀ n, (P15248827876320616977.a n : ℤ) = A107044 (n + 2)

end A107044

/-! ## A107044.P5437994835585092692

`ceil(A210535(n+1)/2)!`
-/

namespace A107044.P5437994835585092692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(A210535 (n + 1) : ℚ) / 2⌉.toNat

end

end A107044.P5437994835585092692

namespace A107044

/-- `ceil(A210535(n+1)/2)!` -/
def P5437994835585092692.Spec : Prop :=
  ∀ n, (P5437994835585092692.a n : ℤ) = A107044 (n + 2)

end A107044

/-! ## A107044.P13256879695754995736

`A000142(A004197(n)+1)`
-/

namespace A107044.P13256879695754995736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004197 n + 1).toNat

end

end A107044.P13256879695754995736

namespace A107044

/-- `A000142(A004197(n)+1)` -/
def P13256879695754995736.Spec : Prop :=
  ∀ n, P13256879695754995736.a n = A107044 (n + 2)

theorem P13256879695754995736.correct : P13256879695754995736.Spec := by
  intro n
  simp only [A107044, Nat.add_sub_cancel, A107044.P13256879695754995736.a, A107044.P8623084784960979862.a, A000142, A000142.P3272619076580183195.a, A003983, A003983.P15269842853270651919.a, A004197, A004197.P2905520585302697030.a, A157458, A157458.P16856629470642738053.a, A003982, A003982.P6136202056268562101.a, A157454, A157454.P17958483760181188644.a, A002024, A002024.P11700297927830783882.a, A049581, A049581.P10108526043471454015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107044

/-! ## A107044.P14702352652159968842

`A132369(A138139(n+1))`
-/

namespace A107044.P14702352652159968842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132369 (A138139 (n + 1)).toNat

end

end A107044.P14702352652159968842

namespace A107044

/-- `A132369(A138139(n+1))` -/
def P14702352652159968842.Spec : Prop :=
  ∀ n, P14702352652159968842.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P17586160312872603728

`A187741(A157454(n+1))`
-/

namespace A107044.P17586160312872603728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (A157454 (n + 1)).toNat

end

end A107044.P17586160312872603728

namespace A107044

/-- `A187741(A157454(n+1))` -/
def P17586160312872603728.Spec : Prop :=
  ∀ n, P17586160312872603728.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P9324751179215081908

`A081123(A157458(n)+2)`
-/

namespace A107044.P9324751179215081908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A157458 n + 2).toNat

end

end A107044.P9324751179215081908

namespace A107044

/-- `A081123(A157458(n)+2)` -/
def P9324751179215081908.Spec : Prop :=
  ∀ n, P9324751179215081908.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P152052975982840281

`A081123(A157454(n+1)+1)`
-/

namespace A107044.P152052975982840281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A157454 (n + 1) + 1).toNat

end

end A107044.P152052975982840281

namespace A107044

/-- `A081123(A157454(n+1)+1)` -/
def P152052975982840281.Spec : Prop :=
  ∀ n, P152052975982840281.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P849379309888002258

`A081123(A053615(2*n+1)+1)`
-/

namespace A107044.P849379309888002258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A053615 (2 * n + 1) + 1).toNat

end

end A107044.P849379309888002258

namespace A107044

/-- `A081123(A053615(2*n+1)+1)` -/
def P849379309888002258.Spec : Prop :=
  ∀ n, P849379309888002258.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P13404573242067738439

`gcd((n+1-C(∑[char[∑[n]]], 2))!, (C(comp[∑[n]]-n, 2)-n)!)`
-/

namespace A107044.P13404573242067738439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat) (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat)

end

end A107044.P13404573242067738439

namespace A107044

/-- `gcd((n+1-C(∑[char[∑[n]]], 2))!, (C(comp[∑[n]]-n, 2)-n)!)` -/
def P13404573242067738439.Spec : Prop :=
  ∀ n, (P13404573242067738439.a n : ℤ) = A107044 (n + 2)

end A107044

/-! ## A107044.P7756267982037426840

`gcd(A166350(n+1), A256589(n+1))`
-/

namespace A107044.P7756267982037426840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166350 (n + 1)) (A256589 (n + 1))

end

end A107044.P7756267982037426840

namespace A107044

/-- `gcd(A166350(n+1), A256589(n+1))` -/
def P7756267982037426840.Spec : Prop :=
  ∀ n, (P7756267982037426840.a n : ℤ) = A107044 (n + 2)

end A107044

/-! ## A107044.P13769825906788868758

`A008305(A106255(n+1))`
-/

namespace A107044.P13769825906788868758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A106255 (n + 1)).toNat

end

end A107044.P13769825906788868758

namespace A107044

/-- `A008305(A106255(n+1))` -/
def P13769825906788868758.Spec : Prop :=
  ∀ n, P13769825906788868758.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P6102878796225987153

`A112624(2*A144464(n))`
-/

namespace A107044.P6102878796225987153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (2 * A144464 n).toNat

end

end A107044.P6102878796225987153

namespace A107044

/-- `A112624(2*A144464(n))` -/
def P6102878796225987153.Spec : Prop :=
  ∀ n, P6102878796225987153.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P8051439176733754353

`A130674(A152714(n))`
-/

namespace A107044.P8051439176733754353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130674 (A152714 n).toNat

end

end A107044.P8051439176733754353

namespace A107044

/-- `A130674(A152714(n))` -/
def P8051439176733754353.Spec : Prop :=
  ∀ n, P8051439176733754353.a n = A107044 (n + 2)

end A107044

/-! ## A107044.P6924894095342935133

`A093659(A131816(n))`
-/

namespace A107044.P6924894095342935133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A131816 n).toNat

end

end A107044.P6924894095342935133

namespace A107044

/-- `A093659(A131816(n))` -/
def P6924894095342935133.Spec : Prop :=
  ∀ n, P6924894095342935133.a n = A107044 (n + 2)

end A107044

/-!
# A107045: Numerators of the triangle of coefficients T(n,k), read by rows, that satisfy: y^x = Sum_{n=0..x} R_n(y)*x^n for all nonnegative integers x, y, where R_n(y) = Sum_{k=0..n} T(n,k)*y^k and T(n,k) = a(n,k)/A107046(n,k).

The programs for A107045, there is no canonical definition to state claims against.
-/

/-! ## A107045.P10913700841628339659

`A144221(A058710(n+1)*A058710(n+3))`
-/

namespace A107045.P10913700841628339659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144221 (A058710 (n + 1) * A058710 (n + 3)).toNat

end

end A107045.P10913700841628339659

/-! ## A107045.P5171134541302077543

`A118400(A038699(n+1)-n)`
-/

namespace A107045.P5171134541302077543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118400 (A038699 (n + 1) - (n : ℤ)).toNat

end

end A107045.P5171134541302077543

/-! ## A107045.P15932891444099770706

`A195588(and(A195584(n), A195588(n+3)))`
-/

namespace A107045.P15932891444099770706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195588 (Int.land (A195584 n) (A195588 (n + 3))).toNat

end

end A107045.P15932891444099770706

/-! ## A107045.P8187018936490225676

`A370331(A091867(2*(n+2))*A237048(n+1))`
-/

namespace A107045.P8187018936490225676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370331 (A091867 (2 * (n + 2)) * A237048 (n + 1)).toNat

end

end A107045.P8187018936490225676

/-!
# A107046: Denominators of the triangle of coefficients T(n,k), read by rows, that satisfy: y^x = Sum_{n=0..x} R_n(y)*x^n for all nonnegative integers x, y, where R_n(y) = Sum_{k=0..n} T(n,k)*y^k and T(n,k) = A107045(n,k)/a(n,k).

The programs for A107046, there is no canonical definition to state claims against.
-/

/-! ## A107046.P11599893138044223422

`A060223(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=2`
-/

namespace A107046.P11599893138044223422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4, 2] fun n a =>
  A060223 (a (n - 1) + 1).toNat

end

end A107046.P11599893138044223422

/-! ## A107046.P10810311574390988570

`A378379(A091807(n))`
-/

namespace A107046.P10810311574390988570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378379 (A091807 n).toNat

end

end A107046.P10810311574390988570

/-! ## A107046.P11897946560985657493

`A353762(A328358(n)²)`
-/

namespace A107046.P11897946560985657493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353762 (A328358 n ^ 2).toNat

end

end A107046.P11897946560985657493

/-!
# A107048: Denominators of coefficients that satisfy: 2^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = A107047(k)/a(k).

The programs for A107048, there is no canonical definition to state claims against.
-/

/-! ## A107048.P15951476284764883201

`A107046(∑[n])`
-/

namespace A107048.P15951476284764883201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107048.P15951476284764883201

/-! ## A107048.P8872302285076816137

`lcm(n²*a(n-1), A000312(n))` with `a(0)=1`
-/

namespace A107048.P8872302285076816137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (n ^ 2 * a (n - 1) : ℤ) (A000312 n)

end

end A107048.P8872302285076816137

/-! ## A107048.P14121319843915996226

`lcm(A107050(n), A107052(n))`
-/

namespace A107048.P14121319843915996226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107050 n) (A107052 n)

end

end A107048.P14121319843915996226

/-! ## A107048.P16026259234633958842

`A061464(n)*A232597(A060632(n))`
-/

namespace A107048.P16026259234633958842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061464 n * A232597 (A060632 n).toNat

end

end A107048.P16026259234633958842

/-! ## A107048.P2995117317460789970

`lcm(A107052(A028310(n)), A107054(n))`
-/

namespace A107048.P2995117317460789970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107052 (A028310 n).toNat) (A107054 n)

end

end A107048.P2995117317460789970

/-!
# A107049: Numerators of coefficients that satisfy: 3^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = a(k)/A107050(k).

The programs for A107049, there is no canonical definition to state claims against.
-/

/-! ## A107049.P13731009858365601122

`A296150(9^n+3)`
-/

namespace A107049.P13731009858365601122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (9 ^ n + 3)

end

end A107049.P13731009858365601122

/-!
# A107050: Denominators of coefficients that satisfy: 3^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = A107049(k)/a(k).

The programs for A107050, there is no canonical definition to state claims against.
-/

/-! ## A107050.P643289226298552792

`gcd(4, A107054(n))*A107054(n)`
-/

namespace A107050.P643289226298552792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A107054 n) : ℤ) * A107054 n

end

end A107050.P643289226298552792

/-! ## A107050.P15675540158995737708

`A107053(floor(n/4))*A107054(n)`
-/

namespace A107050.P15675540158995737708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107053 ⌊(n : ℚ) / 4⌋.toNat * A107054 n

end

end A107050.P15675540158995737708

/-! ## A107050.P4373757311172440856

`A107054(n)*A219347(A055999(n))`
-/

namespace A107050.P4373757311172440856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107054 n * A219347 (A055999 n).toNat

end

end A107050.P4373757311172440856

/-! ## A107050.P6321298708537098154

`ceil(A107048(n)/2^ceil(log2(n+1)))`
-/

namespace A107050.P6321298708537098154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107048 n : ℚ) / (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)⌉

end

end A107050.P6321298708537098154

/-!
# A107051: Numerators of coefficients that satisfy: 4^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = a(k)/A107052(k).

The programs for A107051, there is no canonical definition to state claims against.
-/

/-! ## A107051.P7610237685946910281

`a(n-1)!+7` with `a(0)=1, a(1)=3, a(2)=9, a(3)=5`
-/

namespace A107051.P7610237685946910281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 5] fun n a =>
  Nat.factorial (a (n - 1)) + 7

end

end A107051.P7610237685946910281

/-!
# A107052: Denominators of coefficients that satisfy: 4^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = A107051(k)/a(k).

The programs for A107052, there is no canonical definition to state claims against.
-/

/-! ## A107052.P889729273648494075

`∏{p}[A279561(n), A225213(#)]`
-/

namespace A107052.P889729273648494075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A225213 p

end

end A107052.P889729273648494075

/-! ## A107052.P18094484345492337633

`∏[n^A014081(A028657(∑[4*n]))]`
-/

namespace A107052.P18094484345492337633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A014081 (A028657 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107052.P18094484345492337633

/-!
# A107053: Numerators of coefficients that satisfy: 5^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = a(k)/A107054(k).

The programs for A107053, there is no canonical definition to state claims against.
-/

/-! ## A107053.P2407371500678107041

`A002266(A112034(n²))`
-/

namespace A107053.P2407371500678107041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A112034 (n ^ 2)).toNat

end

end A107053.P2407371500678107041

/-!
# A107054: Denominators of coefficients that satisfy: 5^n = Sum_{k=0..n} c(k)*x^k for n>=0, where c(k) = A107053(k)/a(k).

The programs for A107054, there is no canonical definition to state claims against.
-/

/-! ## A107054.P11114665244951752516

`lcm(4, A107050(n))/4`
-/

namespace A107054.P11114665244951752516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A107050 n) : ℚ) / 4

end

end A107054.P11114665244951752516

/-! ## A107054.P11798824845707277881

`A107050(n)/A107053(floor(n/4))`
-/

namespace A107054.P11798824845707277881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107050 n : ℚ) / (A107053 ⌊(n : ℚ) / 4⌋.toNat : ℚ)

end

end A107054.P11798824845707277881

/-! ## A107054.P12227994710519090100

`A107050(n)/A196222(A265429(n))`
-/

namespace A107054.P12227994710519090100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107050 n : ℚ) / (A196222 (A265429 n).toNat : ℚ)

end

end A107054.P12227994710519090100

/-! ## A107054.P17358371143921897679

`A107050(n)/A196222(A276624(n))`
-/

namespace A107054.P17358371143921897679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107050 n : ℚ) / (A196222 (A276624 n).toNat : ℚ)

end

end A107054.P17358371143921897679

/-! ## A107054.P2146913216487128746

`A107050(n)/A000010(A105960(n+2))`
-/

namespace A107054.P2146913216487128746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107050 n : ℚ) / (A000010 (A105960 (n + 2)).toNat : ℚ)

end

end A107054.P2146913216487128746

/-!
# A107055: Integer part of Sum_{k>=0} Sum_{j=0..k} n^j*A107045(k,j)/A107046(k,j).

The programs for A107055, there is no canonical definition to state claims against.
-/

/-! ## A107055.P573848665574197120

`A000006(A293732(n+1)+A293732(n))`
-/

namespace A107055.P573848665574197120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A293732 (n + 1) + A293732 n).toNat

end

end A107055.P573848665574197120

/-! ## A107055.P12517661691028912441

`A202304((∑[n+1]+3)*2^(n-2)-round(2^(n-2)))`
-/

namespace A107055.P12517661691028912441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) : ℚ))).toNat

end

end A107055.P12517661691028912441

/-! ## A107055.P8052545943771711325

`A216256(A084264(n))`
-/

namespace A107055.P8052545943771711325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A084264 n).toNat

end

end A107055.P8052545943771711325

/-! ## A107055.P7621962079380420971

`A276581(A084625(n))`
-/

namespace A107055.P7621962079380420971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A084625 n).toNat

end

end A107055.P7621962079380420971

/-! ## A107055.P4719559226296797515

`A175812(n)+A002024(A147704(n))`
-/

namespace A107055.P4719559226296797515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n + A002024 (A147704 n).toNat

end

end A107055.P4719559226296797515

/-!
# A107056: Matrix inverse of A103247, so that T(n,k) = C(n,k)*A010842(n-k), read by rows.

The programs for A107056, the canonical program `A107056.P12766487077633153041` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107056 has offset 0).

The definition of A107056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107056.P12766487077633153041

`C(row(n), col(n))*A010842(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107056

/-- `C(row(n), col(n))*A010842(row(n)-col(n))` -/
def P12766487077633153041.Spec : Prop :=
  ∀ n, P12766487077633153041.a n = A107056 n

theorem P12766487077633153041.correct : P12766487077633153041.Spec := by
  intro n
  simp only [A107056]

end A107056

/-! ## A107056.P17652316729188266754

`A007318(n)*A010842(A025581(n))`
-/

namespace A107056.P17652316729188266754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A010842 (A025581 n).toNat

end

end A107056.P17652316729188266754

namespace A107056

/-- `A007318(n)*A010842(A025581(n))` -/
def P17652316729188266754.Spec : Prop :=
  ∀ n, P17652316729188266754.a n = A107056 n

end A107056

/-! ## A107056.P4110945179354578274

`Δ[A102363(n)]*A010842(A025581(n))`
-/

namespace A107056.P4110945179354578274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010842 (A025581 n).toNat

end

end A107056.P4110945179354578274

namespace A107056

/-- `Δ[A102363(n)]*A010842(A025581(n))` -/
def P4110945179354578274.Spec : Prop :=
  ∀ n, P4110945179354578274.a n = A107056 n

end A107056

/-! ## A107056.P13690353301106924553

`A007318(n)*A010842(A025660(n+1))`
-/

namespace A107056.P13690353301106924553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A010842 (A025660 (n + 1)).toNat

end

end A107056.P13690353301106924553

namespace A107056

/-- `A007318(n)*A010842(A025660(n+1))` -/
def P13690353301106924553.Spec : Prop :=
  ∀ n, P13690353301106924553.a n = A107056 n

end A107056

/-! ## A107056.P11057326635032228342

`(A014473(n)+1)*A010842(A025581(n))`
-/

namespace A107056.P11057326635032228342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A010842 (A025581 n).toNat

end

end A107056.P11057326635032228342

namespace A107056

/-- `(A014473(n)+1)*A010842(A025581(n))` -/
def P11057326635032228342.Spec : Prop :=
  ∀ n, P11057326635032228342.a n = A107056 n

end A107056

/-! ## A107056.P15256860702328913662

`A010842(A025581(n))/2*A028326(n)`
-/

namespace A107056.P15256860702328913662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010842 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A107056.P15256860702328913662

namespace A107056

/-- `A010842(A025581(n))/2*A028326(n)` -/
def P15256860702328913662.Spec : Prop :=
  ∀ n, P15256860702328913662.a n = (A107056 n : ℚ)

end A107056

/-! ## A107056.P8087504583563476999

`A004525(A028326(n))*A010842(A025581(n))`
-/

namespace A107056.P8087504583563476999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A010842 (A025581 n).toNat

end

end A107056.P8087504583563476999

namespace A107056

/-- `A004525(A028326(n))*A010842(A025581(n))` -/
def P8087504583563476999.Spec : Prop :=
  ∀ n, P8087504583563476999.a n = A107056 n

end A107056

/-! ## A107056.P17299911955408031022

`A010842(A025581(n))*A056926(A008459(n))`
-/

namespace A107056.P17299911955408031022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 (A025581 n).toNat * A056926 (A008459 n).toNat

end

end A107056.P17299911955408031022

namespace A107056

/-- `A010842(A025581(n))*A056926(A008459(n))` -/
def P17299911955408031022.Spec : Prop :=
  ∀ n, P17299911955408031022.a n = A107056 n

end A107056

/-! ## A107056.P14366902685770879081

`A010842(A025660(n+1))*A056926(A008459(n))`
-/

namespace A107056.P14366902685770879081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 (A025660 (n + 1)).toNat * A056926 (A008459 n).toNat

end

end A107056.P14366902685770879081

namespace A107056

/-- `A010842(A025660(n+1))*A056926(A008459(n))` -/
def P14366902685770879081.Spec : Prop :=
  ∀ n, P14366902685770879081.a n = A107056 n

end A107056

/-!
# A107058: a(n) = smallest number m>0 such that prime(n)*prime(n+1)-m is a prime.

The programs for A107058, there is no canonical definition to state claims against.
-/

/-! ## A107058.P13236781967563327250

`A006094(n+1)-A391805(n+1)`
-/

namespace A107058.P13236781967563327250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A391805 (n + 1)

end

end A107058.P13236781967563327250

/-! ## A107058.P369174380113898663

`A000040(n+1)*A000040(n+2)-A391805(n+1)`
-/

namespace A107058.P369174380113898663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) - A391805 (n + 1)

end

end A107058.P369174380113898663

/-! ## A107058.P10959090716093974249

`A006094(n+1)-A000040(A120941(n+1)+n)`
-/

namespace A107058.P10959090716093974249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A000040 (A120941 (n + 1) + (n : ℤ)).toNat

end

end A107058.P10959090716093974249

/-!
# A107059: Records in A107058.

The programs for A107059, there is no canonical definition to state claims against.
-/

/-! ## A107059.P16324243682476650161

`record[A107058(n+1)]`
-/

namespace A107059.P16324243682476650161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107059.P16324243682476650161

/-! ## A107059.P6233581908878838182

`A107058(A106172(n+1))`
-/

namespace A107059.P6233581908878838182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107058 (A106172 (n + 1)).toNat

end

end A107059.P6233581908878838182

/-! ## A107059.P8761044466782698184

`eq[A010676(A017899(n)), A063918(n+1)]`
-/

namespace A107059.P8761044466782698184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 (A017899 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107059.P8761044466782698184

/-! ## A107059.P13293663346138668317

`eq[A094206(A326192(n+1)), A094217(n+1)]`
-/

namespace A107059.P13293663346138668317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094206 (A326192 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107059.P13293663346138668317

/-!
# A107060: a(n) = smallest number m >=0 such that n*prime(n)-m is a prime.

The programs for A107060, the canonical program `A107060.P14100999910005735281` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107060 has offset 1).

The definition of A107060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107060.P14100999910005735281

`(n*A079780(n+1))%(2*(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A107060

/-- `(n*A079780(n+1))%(2*(n+1))` -/
def P14100999910005735281.Spec : Prop :=
  ∀ n, P14100999910005735281.a n = A107060 (n + 1)

theorem P14100999910005735281.correct : P14100999910005735281.Spec := by
  intro n
  simp only [A107060, Nat.add_sub_cancel]

end A107060

/-! ## A107060.P12211590970609353195

`A033286(n+1)-A079780(n+1)`
-/

namespace A107060.P12211590970609353195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A079780 (n + 1)

end

end A107060.P12211590970609353195

namespace A107060

/-- `A033286(n+1)-A079780(n+1)` -/
def P12211590970609353195.Spec : Prop :=
  ∀ n, P12211590970609353195.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P6053356419291421195

`∑[A090942(n+1)]-A079780(n+1)`
-/

namespace A107060.P6053356419291421195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079780 (n + 1)

end

end A107060.P6053356419291421195

namespace A107060

/-- `∑[A090942(n+1)]-A079780(n+1)` -/
def P6053356419291421195.Spec : Prop :=
  ∀ n, P6053356419291421195.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P762615209129917444

`(n+1)*A000040(n+1)-A079780(n+1)`
-/

namespace A107060.P762615209129917444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1) - A079780 (n + 1)

end

end A107060.P762615209129917444

namespace A107060

/-- `(n+1)*A000040(n+1)-A079780(n+1)` -/
def P762615209129917444.Spec : Prop :=
  ∀ n, P762615209129917444.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P16193069474539385068

`lcm(n+1, A000040(C(n+1, n)))-A079780(n+1)`
-/

namespace A107060.P16193069474539385068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000040 (Nat.choose (n + 1) n)) : ℤ) - A079780 (n + 1)

end

end A107060.P16193069474539385068

namespace A107060

/-- `lcm(n+1, A000040(C(n+1, n)))-A079780(n+1)` -/
def P16193069474539385068.Spec : Prop :=
  ∀ n, P16193069474539385068.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P9982446990278769863

`A033286(n+1)-A000040(A057855(n+1))`
-/

namespace A107060.P9982446990278769863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A000040 (A057855 (n + 1)).toNat

end

end A107060.P9982446990278769863

namespace A107060

/-- `A033286(n+1)-A000040(A057855(n+1))` -/
def P9982446990278769863.Spec : Prop :=
  ∀ n, P9982446990278769863.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P491812495211162918

`A175851(A033286(n+1))-1`
-/

namespace A107060.P491812495211162918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A033286 (n + 1)).toNat - 1

end

end A107060.P491812495211162918

namespace A107060

/-- `A175851(A033286(n+1))-1` -/
def P491812495211162918.Spec : Prop :=
  ∀ n, P491812495211162918.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P17452462976838343798

`A175851(∑[A090942(n+1)])-1`
-/

namespace A107060.P17452462976838343798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A107060.P17452462976838343798

namespace A107060

/-- `A175851(∑[A090942(n+1)])-1` -/
def P17452462976838343798.Spec : Prop :=
  ∀ n, P17452462976838343798.a n = A107060 (n + 1)

end A107060

/-! ## A107060.P11222743000832791439

`A175851((n+1)*A000040(n+1))-1`
-/

namespace A107060.P11222743000832791439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 ((n + 1 : ℤ) * A000040 (n + 1)).toNat - 1

end

end A107060.P11222743000832791439

namespace A107060

/-- `A175851((n+1)*A000040(n+1))-1` -/
def P11222743000832791439.Spec : Prop :=
  ∀ n, P11222743000832791439.a n = A107060 (n + 1)

end A107060

/-!
# A107061: a(n) = smallest number m > 0 such that n*prime(n)+m is a prime.

The programs for A107061, there is no canonical definition to state claims against.
-/

/-! ## A107061.P6585379952083115925

`A079779(n+1)-A033286(n+1)`
-/

namespace A107061.P6585379952083115925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079779 (n + 1) - A033286 (n + 1)

end

end A107061.P6585379952083115925

/-! ## A107061.P16663328499367326859

`A079779(n+1)%A000040(n+1)`
-/

namespace A107061.P16663328499367326859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079779 (n + 1)) (A000040 (n + 1))

end

end A107061.P16663328499367326859

/-! ## A107061.P10476688126717521596

`A079779(n+1)-∑[A090942(n+1)]`
-/

namespace A107061.P10476688126717521596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079779 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107061.P10476688126717521596

/-! ## A107061.P10983802685836773667

`A065091(A057855(n+1))%p?[A006370(n)]`
-/

namespace A107061.P10983802685836773667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (A057855 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A107061.P10983802685836773667

/-! ## A107061.P16076123615855792173

`A151800(A079780(n+1))-A033286(n+1)`
-/

namespace A107061.P16076123615855792173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A079780 (n + 1)).toNat - A033286 (n + 1)

end

end A107061.P16076123615855792173

/-! ## A107061.P3513114407205267529

`A151800(A033286(n+1))%A000040(n+1)`
-/

namespace A107061.P3513114407205267529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A033286 (n + 1)).toNat) (A000040 (n + 1))

end

end A107061.P3513114407205267529

/-! ## A107061.P9402730770799875990

`A151800(A079780(n+1))%A000040(n+1)`
-/

namespace A107061.P9402730770799875990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A079780 (n + 1)).toNat) (A000040 (n + 1))

end

end A107061.P9402730770799875990

/-! ## A107061.P12748444150532894621

`A151800(∑[A090942(n+1)])%A000040(n+1)`
-/

namespace A107061.P12748444150532894621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000040 (n + 1))

end

end A107061.P12748444150532894621

/-! ## A107061.P1919884929924093505

`A000040(A057855(n+1)+1)%Δ[A007504(n)]`
-/

namespace A107061.P1919884929924093505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A057855 (n + 1) + 1).toNat) (f1 (n + 1) - f1 n)

end

end A107061.P1919884929924093505

/-! ## A107061.P17626922490815752686

`A000040(A057855(n+1)+1)-A033286(n+1)`
-/

namespace A107061.P17626922490815752686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057855 (n + 1) + 1).toNat - A033286 (n + 1)

end

end A107061.P17626922490815752686

/-!
# A107062: Union of set of Belgian-k numbers for k = 0..9 which begin with k.

The programs for A107062, there is no canonical definition to state claims against.
-/

/-! ## A107062.P8069854404283845263

`lt[A347121(A288327(n)), A119678(2*n+1)]`
-/

namespace A107062.P8069854404283845263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347121 (A288327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119678 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107062.P8069854404283845263

/-! ## A107062.P17353395976781536081

`lt[A230614(A053577(n+1)), A100878(3*n+4)]`
-/

namespace A107062.P17353395976781536081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (A053577 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107062.P17353395976781536081

/-!
# A107063: Expansion of q^(-1/24) * (eta(q^2) * eta(q^3)^4) / (eta(q) * eta(q^6)^2) in powers of q.

The programs for A107063, there is no canonical definition to state claims against.
-/

/-! ## A107063.P9166452403631902603

`A030204(3*n)`
-/

namespace A107063.P9166452403631902603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (3 * n)

end

end A107063.P9166452403631902603

/-! ## A107063.P9368421176286784414

`A083650(3*n)*A087960(n)`
-/

namespace A107063.P9368421176286784414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 (3 * n) * A087960 n

end

end A107063.P9368421176286784414

/-! ## A107063.P8177536649499332506

`A030204(n+n+n)+A000038(n+1)`
-/

namespace A107063.P8177536649499332506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (n + n + n) + A000038 (n + 1)

end

end A107063.P8177536649499332506

/-! ## A107063.P12888099341422274978

`A033999(n)*A138514(A008486(n))`
-/

namespace A107063.P12888099341422274978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138514 (A008486 n).toNat

end

end A107063.P12888099341422274978

/-! ## A107063.P9349972054939700240

`(A004442(n)-n)*A138514(A008486(n))`
-/

namespace A107063.P9349972054939700240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A138514 (A008486 n).toNat

end

end A107063.P9349972054939700240

/-!
# A107064: Expansion of q^(-17/24) * (eta(q) * eta(q^6)^4) / (eta(q^2) * eta(q^3)^2) in powers of q.

The programs for A107064, there is no canonical definition to state claims against.
-/

/-! ## A107064.P16576121379947763692

`-(A030204(3*n+2)/2)`
-/

namespace A107064.P16576121379947763692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A030204 (3 * n + 2) : ℚ) / 2)

end

end A107064.P16576121379947763692

/-! ## A107064.P13670703100700503729

`A030204(3*n+2)/A030204(A014673(4*(n+1)))`
-/

namespace A107064.P13670703100700503729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030204 (3 * n + 2) : ℚ) / (A030204 (A014673 (4 * (n + 1))).toNat : ℚ)

end

end A107064.P13670703100700503729

/-! ## A107064.P7197562107889559284

`A030204(3*n+2)/2*A328310(A033216(n+1))`
-/

namespace A107064.P7197562107889559284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030204 (3 * n + 2) : ℚ) / 2 * (A328310 (A033216 (n + 1)).toNat : ℚ)

end

end A107064.P7197562107889559284

/-! ## A107064.P696366007411778677

`Δ[A176811(n+1)]^A176807(3*n+1)`
-/

namespace A107064.P696366007411778677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176811 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A176807 (3 * n + 1) : ℤ)

end

end A107064.P696366007411778677

/-!
# A107065: Riordan array (1/(1-x),x(1+x+x^2+x^3)).

The programs for A107065, there is no canonical definition to state claims against.
-/

/-! ## A107065.P2980123650143754381

`A007318(n)-A137579(A137758(n+1))`
-/

namespace A107065.P2980123650143754381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A137579 (A137758 (n + 1)).toNat

end

end A107065.P2980123650143754381

/-! ## A107065.P8689606994900788199

`A180180(n+1)+A164056(A008277(n+3))`
-/

namespace A107065.P8689606994900788199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180180 (n + 1) + A164056 (A008277 (n + 3)).toNat

end

end A107065.P8689606994900788199

/-! ## A107065.P18031247163618989549

`A028326(n)-A020753(A051137(n))`
-/

namespace A107065.P18031247163618989549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A020753 (A051137 n).toNat

end

end A107065.P18031247163618989549

/-! ## A107065.P3165297202994874518

`A007318(n)-A125005(A326323(n+3))`
-/

namespace A107065.P3165297202994874518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A125005 (A326323 (n + 3)).toNat

end

end A107065.P3165297202994874518

/-! ## A107065.P10778110122854823983

`A007318(n)-A185213(A048004(n))`
-/

namespace A107065.P10778110122854823983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A185213 (A048004 n).toNat

end

end A107065.P10778110122854823983

/-!
# A107066: Expansion of 1/(1-2*x+x^5).

The programs for A107066, the canonical program `A107066.P414598722604872096` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107066 has offset 0).

The definition of A107066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^5))` (program `A107066.P414598722604872096`, by `A107066.P414598722604872096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107066.P414598722604872096

`ogf(1/(1-2x+x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107066

/-- `ogf(1/(1-2x+x^5))` -/
def P414598722604872096.Spec : Prop :=
  ∀ n, P414598722604872096.a n = A107066 n

theorem P414598722604872096.correct : P414598722604872096.Spec := by
  intro n
  simp only [A107066]

end A107066

/-! ## A107066.P11554450062368818795

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A107066.P11554450062368818795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A107066.P11554450062368818795

namespace A107066

/-- `2*a(n-1)-a(n-5)` -/
def P11554450062368818795.Spec : Prop :=
  ∀ n, P11554450062368818795.a n = A107066 n

end A107066

/-! ## A107066.P7777666935716330384

`∑[A000078(n+3)]`
-/

namespace A107066.P7777666935716330384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107066.P7777666935716330384

namespace A107066

/-- `∑[A000078(n+3)]` -/
def P7777666935716330384.Spec : Prop :=
  ∀ n, P7777666935716330384.a n = A107066 n

end A107066

/-! ## A107066.P11249637163212220400

`∑[∑[A001631(n+2)]]`
-/

namespace A107066.P11249637163212220400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107066.P11249637163212220400

namespace A107066

/-- `∑[∑[A001631(n+2)]]` -/
def P11249637163212220400.Spec : Prop :=
  ∀ n, P11249637163212220400.a n = A107066 n

end A107066

/-! ## A107066.P1438193947935251770

`∑[A274759(3*n+1)]`
-/

namespace A107066.P1438193947935251770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107066.P1438193947935251770

namespace A107066

/-- `∑[A274759(3*n+1)]` -/
def P1438193947935251770.Spec : Prop :=
  ∀ n, P1438193947935251770.a n = A107066 n

end A107066

/-! ## A107066.P10530733918425123750

`Δ[A145112(n)]`
-/

namespace A107066.P10530733918425123750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107066.P10530733918425123750

namespace A107066

/-- `Δ[A145112(n)]` -/
def P10530733918425123750.Spec : Prop :=
  ∀ n, P10530733918425123750.a n = A107066 n

end A107066

/-! ## A107066.P7155622027932222746

`A145112(n+1)-A145112(n)`
-/

namespace A107066.P7155622027932222746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 (n + 1) - A145112 n

end

end A107066.P7155622027932222746

namespace A107066

/-- `A145112(n+1)-A145112(n)` -/
def P7155622027932222746.Spec : Prop :=
  ∀ n, P7155622027932222746.a n = A107066 n

end A107066

/-! ## A107066.P6595327071693376784

`∑[A089074(n)+1]-A089074(n)`
-/

namespace A107066.P6595327071693376784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089074 n

end

end A107066.P6595327071693376784

namespace A107066

/-- `∑[A089074(n)+1]-A089074(n)` -/
def P6595327071693376784.Spec : Prop :=
  ∀ n, P6595327071693376784.a n = A107066 n

end A107066

/-! ## A107066.P2261500182284364757

`A018922(n)-Δ[Δ[A018922(n)]]`
-/

namespace A107066.P2261500182284364757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018922 n - (f1 (n + 1) - f1 n)

end

end A107066.P2261500182284364757

namespace A107066

/-- `A018922(n)-Δ[Δ[A018922(n)]]` -/
def P2261500182284364757.Spec : Prop :=
  ∀ n, P2261500182284364757.a n = A107066 n

end A107066

/-! ## A107066.P5486978493196157501

`∑[A048887(∑[n+3])]`
-/

namespace A107066.P5486978493196157501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107066.P5486978493196157501

namespace A107066

/-- `∑[A048887(∑[n+3])]` -/
def P5486978493196157501.Spec : Prop :=
  ∀ n, P5486978493196157501.a n = A107066 n

end A107066

/-! ## A107066.P9781330672110067324

`record[ratio[A140996(n)]]`
-/

namespace A107066.P9781330672110067324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107066.P9781330672110067324

namespace A107066

/-- `record[ratio[A140996(n)]]` -/
def P9781330672110067324.Spec : Prop :=
  ∀ n, P9781330672110067324.a n = (A107066 n : ℚ)

end A107066

/-! ## A107066.P13318486584834461625

`A140996(∑[n+1]+1)`
-/

namespace A107066.P13318486584834461625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A107066.P13318486584834461625

namespace A107066

/-- `A140996(∑[n+1]+1)` -/
def P13318486584834461625.Spec : Prop :=
  ∀ n, P13318486584834461625.a n = A107066 n

end A107066

/-! ## A107066.P2102016680866047355

`record[A140996(A001972(n)+1)]`
-/

namespace A107066.P2102016680866047355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A001972 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107066.P2102016680866047355

namespace A107066

/-- `record[A140996(A001972(n)+1)]` -/
def P2102016680866047355.Spec : Prop :=
  ∀ n, P2102016680866047355.a n = A107066 n

end A107066

/-! ## A107066.P1438805231976068272

`record[A140996(A008801(n)+1)]`
-/

namespace A107066.P1438805231976068272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A008801 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107066.P1438805231976068272

namespace A107066

/-- `record[A140996(A008801(n)+1)]` -/
def P1438805231976068272.Spec : Prop :=
  ∀ n, P1438805231976068272.a n = A107066 n

end A107066

/-! ## A107066.P11565117629329550891

`record[A140996(record[A008801(n)]-n)]`
-/

namespace A107066.P11565117629329550891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107066.P11565117629329550891

namespace A107066

/-- `record[A140996(record[A008801(n)]-n)]` -/
def P11565117629329550891.Spec : Prop :=
  ∀ n, P11565117629329550891.a n = A107066 n

end A107066

/-! ## A107066.P6021809369145288977

`record[A140996(n+1)/A140996(n)]`
-/

namespace A107066.P6021809369145288977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140996 (n + 1) : ℚ) / (A140996 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107066.P6021809369145288977

namespace A107066

/-- `record[A140996(n+1)/A140996(n)]` -/
def P6021809369145288977.Spec : Prop :=
  ∀ n, P6021809369145288977.a n = (A107066 n : ℚ)

end A107066

/-!
# A107067: Number of polynomials with coefficients in {0,1} and which divide x^n - 1.

The programs for A107067, there is no canonical definition to state claims against.
-/

/-! ## A107067.P4886967087891320422

`A334032(n+1)+A318559(A293514(n+1))`
-/

namespace A107067.P4886967087891320422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (n + 1) + A318559 (A293514 (n + 1)).toNat

end

end A107067.P4886967087891320422

/-! ## A107067.P6734142822615648323

`A346132(A320389(n+1)-A065202(n+1))`
-/

namespace A107067.P6734142822615648323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A320389 (n + 1) - A065202 (n + 1)).toNat

end

end A107067.P6734142822615648323

/-! ## A107067.P2082284743957076956

`A335510(A000712(n))+A071364(n+1)`
-/

namespace A107067.P2082284743957076956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335510 (A000712 n).toNat + A071364 (n + 1)

end

end A107067.P2082284743957076956

/-! ## A107067.P7944589771320128943

`A086971(A019320(n))+A067824(n+1)`
-/

namespace A107067.P7944589771320128943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A019320 n).toNat + A067824 (n + 1)

end

end A107067.P7944589771320128943

/-! ## A107067.P8744295286737385061

`A067824(n+1)-A014135(A129838(n)²)`
-/

namespace A107067.P8744295286737385061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1) - A014135 (A129838 n ^ 2).toNat

end

end A107067.P8744295286737385061

/-!
# A107068: Expansion of 1/((1+x)^3-x^4).

The programs for A107068, the canonical program `A107068.P2245090773416341326` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107068 has offset 0).

The definition of A107068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+3x+3x^2+x^3-x^4))` (program `A107068.P2245090773416341326`, by `A107068.P2245090773416341326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107068.P2245090773416341326

`ogf(1/(1+3x+3x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107068

/-- `ogf(1/(1+3x+3x^2+x^3-x^4))` -/
def P2245090773416341326.Spec : Prop :=
  ∀ n, P2245090773416341326.a n = A107068 n

theorem P2245090773416341326.correct : P2245090773416341326.Spec := by
  intro n
  simp only [A107068]

end A107068

/-! ## A107068.P6111804930617495569

`(-1)^n*A017817(3*n+8)`
-/

namespace A107068.P6111804930617495569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A017817 (3 * n + 8)

end

end A107068.P6111804930617495569

namespace A107068

/-- `(-1)^n*A017817(3*n+8)` -/
def P6111804930617495569.Spec : Prop :=
  ∀ n, P6111804930617495569.a n = A107068 n

end A107068

/-! ## A107068.P11741387573228509604

`A017817(3*n+8)*A033999(n)`
-/

namespace A107068.P11741387573228509604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (3 * n + 8) * A033999 n

end

end A107068.P11741387573228509604

namespace A107068

/-- `A017817(3*n+8)*A033999(n)` -/
def P11741387573228509604.Spec : Prop :=
  ∀ n, P11741387573228509604.a n = A107068 n

end A107068

/-! ## A107068.P2628952535775641916

`∑[∑[A017817(3*n)]]*A033999(n)`
-/

namespace A107068.P2628952535775641916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A107068.P2628952535775641916

namespace A107068

/-- `∑[∑[A017817(3*n)]]*A033999(n)` -/
def P2628952535775641916.Spec : Prop :=
  ∀ n, P2628952535775641916.a n = A107068 n

end A107068

/-! ## A107068.P15221957634990739563

`A017817(3*n+8)*A094267(n²)`
-/

namespace A107068.P15221957634990739563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (3 * n + 8) * A094267 (n ^ 2)

end

end A107068.P15221957634990739563

namespace A107068

/-- `A017817(3*n+8)*A094267(n²)` -/
def P15221957634990739563.Spec : Prop :=
  ∀ n, P15221957634990739563.a n = A107068 n

end A107068

/-!
# A107069: Number of self-avoiding walks of length n on an infinite triangular prism starting at the origin.

The programs for A107069, there is no canonical definition to state claims against.
-/

/-! ## A107069.P15010454440188358488

`∑[∑[A181819(2^n*n!)]]`
-/

namespace A107069.P15010454440188358488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (2 ^ n * Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107069.P15010454440188358488

/-! ## A107069.P5464961174746996594

`∑[∑[A181819(2^(log2(n!)+n))]]`
-/

namespace A107069.P5464961174746996594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ)))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107069.P5464961174746996594

/-!
# A107070: Numbers m with the following property. Suppose m = d1 d2 ... dk in base 10. Construct the sequence with first term d1 and successive differences d1 d2 ... dk d1 d2 ... dk d1 d2 ...; then this sequence has as its initial k digits d1 d2 ... dk and also contains the number m.

The programs for A107070, there is no canonical definition to state claims against.
-/

/-! ## A107070.P14363481395044533495

`A384132(A068407(n+2))`
-/

namespace A107070.P14363481395044533495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384132 (A068407 (n + 2)).toNat

end

end A107070.P14363481395044533495

/-! ## A107070.P11356254989497080978

`A035062(A162234(n+1)+2)`
-/

namespace A107070.P11356254989497080978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035062 (A162234 (n + 1) + 2).toNat

end

end A107070.P11356254989497080978

/-! ## A107070.P10721368929298679688

`lt[A087019(A057846(n)), 2*n]`
-/

namespace A107070.P10721368929298679688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A057846 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107070.P10721368929298679688

/-! ## A107070.P6338519440877984724

`record[∑[A278839(A095331(n+1))]]`
-/

namespace A107070.P6338519440877984724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278839 (A095331 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107070.P6338519440877984724

/-! ## A107070.P1874322621974486058

`A004086(∑[7^A103168(n+1)])`
-/

namespace A107070.P1874322621974486058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A103168 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A107070.P1874322621974486058

/-!
# A107073: Numbers k such that the string 35k is prime.

The programs for A107073, there is no canonical definition to state claims against.
-/

/-! ## A107073.P15832527350496866447

`lt[A002487(A192112(n+5)), A028920(n)]`
-/

namespace A107073.P15832527350496866447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A192112 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107073.P15832527350496866447

/-! ## A107073.P15277885580888671902

`eq[A066262(n+2), A099636(A008778(n+1))]`
-/

namespace A107073.P15277885580888671902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066262 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (A008778 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107073.P15277885580888671902

/-! ## A107073.P14969549862001333968

`lt[A272085(n+1), A014963(A272100(n+3))]`
-/

namespace A107073.P14969549862001333968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A272100 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107073.P14969549862001333968

/-! ## A107073.P13401026530778762897

`eq[A000089(A324110(3*(n+1))), A226173(n+5)]`
-/

namespace A107073.P13401026530778762897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A324110 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226173 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107073.P13401026530778762897

/-!
# A107075: Centered square numbers that are also centered pentagonal numbers.

The programs for A107075, the canonical program `A107075.P14488408968509504326` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107075 has offset 1).

The definition of A107075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107075.P14488408968509504326

`(14+(9-4*sqrt(5))^(2*(n+1)-1)+(9+4*sqrt(5))^(2*(n+1)-1))/32`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107075

/-- `(14+(9-4*sqrt(5))^(2*(n+1)-1)+(9+4*sqrt(5))^(2*(n+1)-1))/32` -/
def P14488408968509504326.Spec : Prop :=
  ∀ n, P14488408968509504326.a n = (A107075 (n + 1) : ℝ)

end A107075

/-! ## A107075.P8618151767687000028

`4*A201004(n)+1`
-/

namespace A107075.P8618151767687000028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A201004 n + 1

end

end A107075.P8618151767687000028

namespace A107075

/-- `4*A201004(n)+1` -/
def P8618151767687000028.Spec : Prop :=
  ∀ n, P8618151767687000028.a n = A107075 (n + 1)

end A107075

/-! ## A107075.P16250149643661414492

`5*A201003(n)+1`
-/

namespace A107075.P16250149643661414492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A201003 n + 1

end

end A107075.P16250149643661414492

namespace A107075

/-- `5*A201003(n)+1` -/
def P16250149643661414492.Spec : Prop :=
  ∀ n, P16250149643661414492.a n = A107075 (n + 1)

end A107075

/-! ## A107075.P315883271745557688

`round(A049629(n)²/2)`
-/

namespace A107075.P315883271745557688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049629 n ^ 2 : ℚ) / 2)

end

end A107075.P315883271745557688

namespace A107075

/-- `round(A049629(n)²/2)` -/
def P315883271745557688.Spec : Prop :=
  ∀ n, P315883271745557688.a n = A107075 (n + 1)

end A107075

/-! ## A107075.P10617703658562595419

`5*∑[A000045(12*n)/4]+1`
-/

namespace A107075.P10617703658562595419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (12 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A107075.P10617703658562595419

namespace A107075

/-- `5*∑[A000045(12*n)/4]+1` -/
def P10617703658562595419.Spec : Prop :=
  ∀ n, P10617703658562595419.a n = (A107075 (n + 1) : ℚ)

end A107075

/-!
# A107076: Odd-digit semiprimes, divisors of which are odd-digit primes.

The programs for A107076, there is no canonical definition to state claims against.
-/

/-! ## A107076.P13048988131711727305

`filter[A062016(n+1), A064911(#)]`
-/

namespace A107076.P13048988131711727305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107076.P13048988131711727305

/-! ## A107076.P11492127841230770118

`filter[A066640(n+1), A064911(#)]`
-/

namespace A107076.P11492127841230770118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107076.P11492127841230770118

/-! ## A107076.P13605864186855990984

`filter[A062016(n+1), A101040(#)]`
-/

namespace A107076.P13605864186855990984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A107076.P13605864186855990984

/-! ## A107076.P1288066797848877917

`filter[A062016(n+1), A123927(#)]`
-/

namespace A107076.P1288066797848877917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A107076.P1288066797848877917

/-! ## A107076.P4190220605012548428

`filter[A062016(n+1), A353480(#)]`
-/

namespace A107076.P4190220605012548428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A107076.P4190220605012548428

/-! ## A107076.P15274750648301586797

`filter[A062016(n+1), A353799(#)]`
-/

namespace A107076.P15274750648301586797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A107076.P15274750648301586797

/-! ## A107076.P18032378435913710884

`filter[A066640(n+1), A353480(#)]`
-/

namespace A107076.P18032378435913710884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A107076.P18032378435913710884

/-! ## A107076.P17372894131423998696

`filter[A062016(n+1), A359828(#)]`
-/

namespace A107076.P17372894131423998696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A107076.P17372894131423998696

/-! ## A107076.P12697712471756232686

`filter[A062016(n+1), A373481(#)]`
-/

namespace A107076.P12697712471756232686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A107076.P12697712471756232686

/-! ## A107076.P15701221807881306308

`filter[A066640(n+2), A065043(#)]`
-/

namespace A107076.P15701221807881306308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A107076.P15701221807881306308

/-!
# A107077: Odd-digit products of three odd-digit primes p*q*r.

The programs for A107077, there is no canonical definition to state claims against.
-/

/-! ## A107077.P15933411199708211031

`filter[A062016(n+1), A377988(#)]`
-/

namespace A107077.P15933411199708211031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A107077.P15933411199708211031

/-! ## A107077.P12611106103282852975

`filter[A320062(n+1), A377988(#)]`
-/

namespace A107077.P12611106103282852975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A107077.P12611106103282852975

/-!
# A107078: Whether n has non-unitary prime divisors.

The programs for A107078, the canonical program `A107078.P17495564514640749054` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107078 has offset 1).

The definition of A107078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107078.P17495564514640749054

`1-A008966(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107078

/-- `1-A008966(n+1)` -/
def P17495564514640749054.Spec : Prop :=
  ∀ n, P17495564514640749054.a n = A107078 (n + 1)

theorem P17495564514640749054.correct : P17495564514640749054.Spec := by
  intro n
  simp only [A107078, Nat.add_sub_cancel]

end A107078

/-! ## A107078.P8152232067890291163

`1-A008683(n+1)²`
-/

namespace A107078.P8152232067890291163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (n + 1) ^ 2

end

end A107078.P8152232067890291163

namespace A107078

/-- `1-A008683(n+1)²` -/
def P8152232067890291163.Spec : Prop :=
  ∀ n, P8152232067890291163.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P6025169307829898527

`A107079(n+1)-A013928(n+2)`
-/

namespace A107078.P6025169307829898527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A013928 (n + 2)

end

end A107078.P6025169307829898527

namespace A107078

/-- `A107079(n+1)-A013928(n+2)` -/
def P6025169307829898527.Spec : Prop :=
  ∀ n, P6025169307829898527.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P671180197592482542

`abs(A008683(n+1)-(-1)^A001221(n+1))`
-/

namespace A107078.P671180197592482542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008683 (n + 1) : ℚ) - (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)|

end

end A107078.P671180197592482542

namespace A107078

/-- `abs(A008683(n+1)-(-1)^A001221(n+1))` -/
def P671180197592482542.Spec : Prop :=
  ∀ n, P671180197592482542.a n = (A107078 (n + 1) : ℚ)

end A107078

/-! ## A107078.P9662622595643828186

`floor(atan(∏{e}[n+1, #]))`
-/

namespace A107078.P9662622595643828186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋

end

end A107078.P9662622595643828186

namespace A107078

/-- `floor(atan(∏{e}[n+1, #]))` -/
def P9662622595643828186.Spec : Prop :=
  ∀ n, P9662622595643828186.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P12822502235199710497

`char[lt[1, ∏{e}[n+1, #]]]`
-/

namespace A107078.P12822502235199710497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A107078.P12822502235199710497

namespace A107078

/-- `char[lt[1, ∏{e}[n+1, #]]]` -/
def P12822502235199710497.Spec : Prop :=
  ∀ n, (P12822502235199710497.a n : ℤ) = A107078 (n + 1)

end A107078

/-! ## A107078.P8644543352289728082

`char[lt[∏{p}[n+1, #], n]]`
-/

namespace A107078.P8644543352289728082
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A107078.P8644543352289728082

namespace A107078

/-- `char[lt[∏{p}[n+1, #], n]]` -/
def P8644543352289728082.Spec : Prop :=
  ∀ n, (P8644543352289728082.a n : ℤ) = A107078 (n + 1)

end A107078

/-! ## A107078.P2130713810492477843

`log2(ceil(atan(∏{e}[n+1, #])))`
-/

namespace A107078.P2130713810492477843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌉ : ℝ)

end

end A107078.P2130713810492477843

namespace A107078

/-- `log2(ceil(atan(∏{e}[n+1, #])))` -/
def P2130713810492477843.Spec : Prop :=
  ∀ n, P2130713810492477843.a n = (A107078 (n + 1) : ℝ)

end A107078

/-! ## A107078.P11993791451291496544

`floor(tan(tanh(∏{e}[n+1, #])))`
-/

namespace A107078.P11993791451291496544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A107078.P11993791451291496544

namespace A107078

/-- `floor(tan(tanh(∏{e}[n+1, #])))` -/
def P11993791451291496544.Spec : Prop :=
  ∀ n, P11993791451291496544.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P7240829734124602736

`floor(acos(acot(∏{e}[n+1, #])))`
-/

namespace A107078.P7240829734124602736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A107078.P7240829734124602736

namespace A107078

/-- `floor(acos(acot(∏{e}[n+1, #])))` -/
def P7240829734124602736.Spec : Prop :=
  ∀ n, P7240829734124602736.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P16069619944153441428

`floor(acot(acot(∏{e}[n+1, #])))`
-/

namespace A107078.P16069619944153441428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A107078.P16069619944153441428

namespace A107078

/-- `floor(acot(acot(∏{e}[n+1, #])))` -/
def P16069619944153441428.Spec : Prop :=
  ∀ n, P16069619944153441428.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P15059149904792110035

`C(n, C(∏{p}[n+1, #], n))`
-/

namespace A107078.P15059149904792110035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n)

end

end A107078.P15059149904792110035

namespace A107078

/-- `C(n, C(∏{p}[n+1, #], n))` -/
def P15059149904792110035.Spec : Prop :=
  ∀ n, (P15059149904792110035.a n : ℤ) = A107078 (n + 1)

end A107078

/-! ## A107078.P5032321119680876445

`2%∏{e}[n+1, #²]/2`
-/

namespace A107078.P5032321119680876445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 % (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) : ℕ) : ℚ) / 2

end

end A107078.P5032321119680876445

namespace A107078

/-- `2%∏{e}[n+1, #²]/2` -/
def P5032321119680876445.Spec : Prop :=
  ∀ n, P5032321119680876445.a n = (A107078 (n + 1) : ℚ)

end A107078

/-! ## A107078.P13718952944990599744

`1-floor(1/∏{e}[n+1, #])`
-/

namespace A107078.P13718952944990599744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A107078.P13718952944990599744

namespace A107078

/-- `1-floor(1/∏{e}[n+1, #])` -/
def P13718952944990599744.Spec : Prop :=
  ∀ n, P13718952944990599744.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P11925417109059257414

`2-ceil(2/∏{e}[n+1, #])`
-/

namespace A107078.P11925417109059257414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈2 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌉

end

end A107078.P11925417109059257414

namespace A107078

/-- `2-ceil(2/∏{e}[n+1, #])` -/
def P11925417109059257414.Spec : Prop :=
  ∀ n, P11925417109059257414.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P14942883483582319224

`(3%∏{e}[n+1, #²])%2`
-/

namespace A107078.P14942883483582319224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) % 2

end

end A107078.P14942883483582319224

namespace A107078

/-- `(3%∏{e}[n+1, #²])%2` -/
def P14942883483582319224.Spec : Prop :=
  ∀ n, (P14942883483582319224.a n : ℤ) = A107078 (n + 1)

end A107078

/-! ## A107078.P13038044407400494783

`C(2, C(3, ∏{e}[n+1, #²]))`
-/

namespace A107078.P13038044407400494783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 3 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2))

end

end A107078.P13038044407400494783

namespace A107078

/-- `C(2, C(3, ∏{e}[n+1, #²]))` -/
def P13038044407400494783.Spec : Prop :=
  ∀ n, (P13038044407400494783.a n : ℤ) = A107078 (n + 1)

end A107078

/-! ## A107078.P12896651789163686251

`round(n/(∏{p}[n+1, #]+n))`
-/

namespace A107078.P12896651789163686251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p + n : ℕ) : ℚ))

end

end A107078.P12896651789163686251

namespace A107078

/-- `round(n/(∏{p}[n+1, #]+n))` -/
def P12896651789163686251.Spec : Prop :=
  ∀ n, P12896651789163686251.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P16727949388091463426

`1-floor(∏{p}[n+1, #]/(n+1))`
-/

namespace A107078.P16727949388091463426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A107078.P16727949388091463426

namespace A107078

/-- `1-floor(∏{p}[n+1, #]/(n+1))` -/
def P16727949388091463426.Spec : Prop :=
  ∀ n, P16727949388091463426.a n = A107078 (n + 1)

end A107078

/-! ## A107078.P9804451493122561410

`n²%((n+1)/∏{p}[n+1, #])`
-/

namespace A107078.P9804451493122561410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))

end

end A107078.P9804451493122561410

namespace A107078

/-- `n²%((n+1)/∏{p}[n+1, #])` -/
def P9804451493122561410.Spec : Prop :=
  ∀ n, P9804451493122561410.a n = A107078 (n + 1)

end A107078

/-!
# A107079: Minimal number of squared primes in a squarefree gap of length n.

The programs for A107079, the canonical program `A107079.P8145768499534566836` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107079 has offset 1).

The definition of A107079 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107079.P8145768499534566836

`1+A013928(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A107079

/-- `1+A013928(n+1)` -/
def P8145768499534566836.Spec : Prop :=
  ∀ n, P8145768499534566836.a n = A107079 (n + 1)

theorem P8145768499534566836.correct : P8145768499534566836.Spec := by
  intro n
  simp only [A107079, Nat.add_sub_cancel]

end A107079

/-! ## A107079.P7468122049144395690

`∑[C(∏{p}[n, #], n)]`
-/

namespace A107079.P7468122049144395690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P7468122049144395690

namespace A107079

/-- `∑[C(∏{p}[n, #], n)]` -/
def P7468122049144395690.Spec : Prop :=
  ∀ n, (P7468122049144395690.a n : ℤ) = A107079 (n + 1)

theorem P7468122049144395690.correct : P7468122049144395690.Spec := by
  intro n
  simp only [A107079, Nat.add_sub_cancel, A107079.P7468122049144395690.f2, A107079.P7468122049144395690.f1, A107079.P7468122049144395690.a, A107079.P8145768499534566836.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107079

/-! ## A107079.P6939274972558408787

`∑[round(acot(∏{e}[n, #]))]`
-/

namespace A107079.P6939274972558408787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P6939274972558408787

namespace A107079

/-- `∑[round(acot(∏{e}[n, #]))]` -/
def P6939274972558408787.Spec : Prop :=
  ∀ n, P6939274972558408787.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P10790846074900444519

`∑[floor(1/∏{e}[n, #])]`
-/

namespace A107079.P10790846074900444519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P10790846074900444519

namespace A107079

/-- `∑[floor(1/∏{e}[n, #])]` -/
def P10790846074900444519.Spec : Prop :=
  ∀ n, P10790846074900444519.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P4624802415938647824

`∑[C(2, ∏{e}[n, #]+1)]`
-/

namespace A107079.P4624802415938647824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P4624802415938647824

namespace A107079

/-- `∑[C(2, ∏{e}[n, #]+1)]` -/
def P4624802415938647824.Spec : Prop :=
  ∀ n, (P4624802415938647824.a n : ℤ) = A107079 (n + 1)

end A107079

/-! ## A107079.P1532123613713693601

`∑[C(2, 2*∏{e}[n, #])]`
-/

namespace A107079.P1532123613713693601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P1532123613713693601

namespace A107079

/-- `∑[C(2, 2*∏{e}[n, #])]` -/
def P1532123613713693601.Spec : Prop :=
  ∀ n, (P1532123613713693601.a n : ℤ) = A107079 (n + 1)

end A107079

/-! ## A107079.P8124321621009172347

`∑[C(2, 2^∏{e}[n, #])]`
-/

namespace A107079.P8124321621009172347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P8124321621009172347

namespace A107079

/-- `∑[C(2, 2^∏{e}[n, #])]` -/
def P8124321621009172347.Spec : Prop :=
  ∀ n, (P8124321621009172347.a n : ℤ) = A107079 (n + 1)

end A107079

/-! ## A107079.P5854297021319583675

`∑[C(C(2, ∏{e}[n, #]), 2)]`
-/

namespace A107079.P5854297021319583675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P5854297021319583675

namespace A107079

/-- `∑[C(C(2, ∏{e}[n, #]), 2)]` -/
def P5854297021319583675.Spec : Prop :=
  ∀ n, (P5854297021319583675.a n : ℤ) = A107079 (n + 1)

end A107079

/-! ## A107079.P7642066535235254326

`∑[round(1/∏{e}[n, #²])]`
-/

namespace A107079.P7642066535235254326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2 : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P7642066535235254326

namespace A107079

/-- `∑[round(1/∏{e}[n, #²])]` -/
def P7642066535235254326.Spec : Prop :=
  ∀ n, P7642066535235254326.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P17852582448397453968

`∑[round(∏{p}[n, #]/(n+1))]`
-/

namespace A107079.P17852582448397453968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P17852582448397453968

namespace A107079

/-- `∑[round(∏{p}[n, #]/(n+1))]` -/
def P17852582448397453968.Spec : Prop :=
  ∀ n, P17852582448397453968.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P13162431613190347615

`∑[C(2, A105570(n))]`
-/

namespace A107079.P13162431613190347615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P13162431613190347615

namespace A107079

/-- `∑[C(2, A105570(n))]` -/
def P13162431613190347615.Spec : Prop :=
  ∀ n, (P13162431613190347615.a n : ℤ) = A107079 (n + 1)

end A107079

/-! ## A107079.P7937436886394539944

`∑[A063524(∏{e}[n, #])]`
-/

namespace A107079.P7937436886394539944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P7937436886394539944

namespace A107079

/-- `∑[A063524(∏{e}[n, #])]` -/
def P7937436886394539944.Spec : Prop :=
  ∀ n, P7937436886394539944.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P6346285864380118120

`∑[∏{d}[n, abs(A008683(#))]]`
-/

namespace A107079.P6346285864380118120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), |A008683 d|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P6346285864380118120

namespace A107079

/-- `∑[∏{d}[n, abs(A008683(#))]]` -/
def P6346285864380118120.Spec : Prop :=
  ∀ n, P6346285864380118120.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P16478886740705981610

`∑[A008683(∏{e}[n, #²])]`
-/

namespace A107079.P16478886740705981610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107079.P16478886740705981610

namespace A107079

/-- `∑[A008683(∏{e}[n, #²])]` -/
def P16478886740705981610.Spec : Prop :=
  ∀ n, P16478886740705981610.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P10576950205075365518

`a(n-1)+A008966(n)` with `a(0)=1`
-/

namespace A107079.P10576950205075365518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008966 n

end

end A107079.P10576950205075365518

namespace A107079

/-- `a(n-1)+A008966(n)` -/
def P10576950205075365518.Spec : Prop :=
  ∀ n, P10576950205075365518.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P4850841855623229444

`a(n-1)+A008683(n)²` with `a(0)=1`
-/

namespace A107079.P4850841855623229444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008683 n ^ 2

end

end A107079.P4850841855623229444

namespace A107079

/-- `a(n-1)+A008683(n)²` -/
def P4850841855623229444.Spec : Prop :=
  ∀ n, P4850841855623229444.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P5208078842533235910

`a(n-1)+A069158(n)²` with `a(0)=1`
-/

namespace A107079.P5208078842533235910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069158 n ^ 2

end

end A107079.P5208078842533235910

namespace A107079

/-- `a(n-1)+A069158(n)²` -/
def P5208078842533235910.Spec : Prop :=
  ∀ n, P5208078842533235910.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P15052073371584630974

`a(n-1)+A080323(n)²` with `a(0)=1`
-/

namespace A107079.P15052073371584630974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A080323 n ^ 2

end

end A107079.P15052073371584630974

namespace A107079

/-- `a(n-1)+A080323(n)²` -/
def P15052073371584630974.Spec : Prop :=
  ∀ n, P15052073371584630974.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P11295718920106767800

`a(n-1)+A157657(n)²` with `a(0)=1`
-/

namespace A107079.P11295718920106767800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A157657 n ^ 2

end

end A107079.P11295718920106767800

namespace A107079

/-- `a(n-1)+A157657(n)²` -/
def P11295718920106767800.Spec : Prop :=
  ∀ n, P11295718920106767800.a n = A107079 (n + 1)

end A107079

/-! ## A107079.P8786021098030074700

`a(n-1)+A359155(n)²` with `a(0)=1`
-/

namespace A107079.P8786021098030074700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A359155 n ^ 2

end

end A107079.P8786021098030074700

namespace A107079

/-- `a(n-1)+A359155(n)²` -/
def P8786021098030074700.Spec : Prop :=
  ∀ n, P8786021098030074700.a n = A107079 (n + 1)

end A107079

/-!
# A107081: Add 12, 3, 45, 67, 89 (note the difference sequence uses each digit once). Start with 1 for no particular reason; would seem more natural to start with 0.

The programs for A107081, there is no canonical definition to state claims against.
-/

/-! ## A107081.P2408347173767405449

`∑{d}[n+1, A041689(#-1)*A092528((n+1)/#)]`
-/

namespace A107081.P2408347173767405449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A041689 (d - 1) * A092528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A107081.P2408347173767405449

/-!
# A107082: Put in lexicographic order and concatenate all sequences that start with 0 and have difference sequences that use the digits 1 through 9 in order.

The programs for A107082, there is no canonical definition to state claims against.
-/

/-! ## A107082.P6160495901501510039

`C(A020753(n+1)%11, 2)`
-/

namespace A107082.P6160495901501510039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A020753 (n + 1)) 11).toNat 2

end

end A107082.P6160495901501510039

/-! ## A107082.P3123165806361245552

`A000217(∏{digits}[n, #])%A058068(n)`
-/

namespace A107082.P3123165806361245552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod) (A058068 n)

end

end A107082.P3123165806361245552

/-! ## A107082.P6152048626452121813

`A037123(∏{digits}[n, #])%A190881(n+1)`
-/

namespace A107082.P6152048626452121813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037123 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod) (A190881 (n + 1))

end

end A107082.P6152048626452121813

/-! ## A107082.P684380302137657741

`C(A349315(n), 2)%A124786(3*n+2)`
-/

namespace A107082.P684380302137657741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A349315 n).toNat 2 : ℤ) (A124786 (3 * n + 2))

end

end A107082.P684380302137657741

/-! ## A107082.P15518549963036271307

`A000217(A007954(n)%A029873(n))`
-/

namespace A107082.P15518549963036271307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A007954 n) (A029873 n)).toNat

end

end A107082.P15518549963036271307

/-!
# A107085: Numbers whose largest digit in its decimal representation is equal to its digital root.

The programs for A107085, the canonical program `A107085.P11711300005954803242` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107085 has offset 1).

The definition of A107085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1089 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107085.P11711300005954803242

`eq[dr(n), A054055(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107085

/-- `eq[dr(n), A054055(n)]` -/
def P11711300005954803242.Spec : Prop :=
  ∀ n, (P11711300005954803242.a n : ℤ) = A107085 (n + 1)

theorem P11711300005954803242.correct : P11711300005954803242.Spec := by
  intro n
  simp only [A107085, Nat.add_sub_cancel]

end A107085

/-! ## A107085.P17232004419006792392

`eq[A010888(n), A054055(n)]`
-/

namespace A107085.P17232004419006792392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107085.P17232004419006792392

namespace A107085

/-- `eq[A010888(n), A054055(n)]` -/
def P17232004419006792392.Spec : Prop :=
  ∀ n, (P17232004419006792392.a n : ℤ) = A107085 (n + 1)

end A107085

/-! ## A107085.P14987920334150924298

`eq[A007953(A007953(n)), A054055(n)]`
-/

namespace A107085.P14987920334150924298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107085.P14987920334150924298

namespace A107085

/-- `eq[A007953(A007953(n)), A054055(n)]` -/
def P14987920334150924298.Spec : Prop :=
  ∀ n, (P14987920334150924298.a n : ℤ) = A107085 (n + 1)

end A107085

/-! ## A107085.P12312520830179828716

`eq[A004185(n)%10, A007953(A007953(n))]`
-/

namespace A107085.P12312520830179828716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107085.P12312520830179828716

namespace A107085

/-- `eq[A004185(n)%10, A007953(A007953(n))]` -/
def P12312520830179828716.Spec : Prop :=
  ∀ n, (P12312520830179828716.a n : ℤ) = A107085 (n + 1)

end A107085

/-! ## A107085.P7599466463295039341

`eq[A061486(n), A061816(n)]`
-/

namespace A107085.P7599466463295039341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107085.P7599466463295039341

namespace A107085

/-- `eq[A061486(n), A061816(n)]` -/
def P7599466463295039341.Spec : Prop :=
  ∀ n, (P7599466463295039341.a n : ℤ) = A107085 (n + 1)

end A107085

/-!
# A107087: G.f. A(x) satisfies: A(x)^2 = A(x^2) + 4*x.

The programs for A107087, there is no canonical definition to state claims against.
-/

/-! ## A107087.P11621603983819927335

`A107088(2*n)`
-/

namespace A107087.P11621603983819927335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107088 (2 * n)

end

end A107087.P11621603983819927335

/-! ## A107087.P8718608518032911620

`or(char[2], A107088(A005843(n)))`
-/

namespace A107087.P8718608518032911620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A107088 (A005843 n).toNat)

end

end A107087.P8718608518032911620

/-! ## A107087.P9882722107113213210

`A107088(A005843(n))+A000007(n+3)`
-/

namespace A107087.P9882722107113213210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107088 (A005843 n).toNat + A000007 (n + 3)

end

end A107087.P9882722107113213210

/-! ## A107087.P1143252278202440569

`A107088(A005843(n))/A007318(∑[n])`
-/

namespace A107087.P1143252278202440569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107088 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A107087.P1143252278202440569

/-!
# A107089: G.f. A(x) satisfies: A(x)^9 = A(x^3)^3 + 9*x.

The programs for A107089, there is no canonical definition to state claims against.
-/

/-! ## A107089.P4728304837766646347

`A352412(n)+A002264(A361149(n))`
-/

namespace A107089.P4728304837766646347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352412 n + A002264 (A361149 n).toNat

end

end A107089.P4728304837766646347

/-!
# A107090: G.f. A(x) satisfies: A(x)^3 = A(x^3) + 9*x.

The programs for A107090, there is no canonical definition to state claims against.
-/

/-! ## A107090.P4177676285596254754

`A107091(3*n)`
-/

namespace A107090.P4177676285596254754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107091 (3 * n)

end

end A107090.P4177676285596254754

/-! ## A107090.P15383332187321373522

`or(A000007(n), A107091(A008585(n)))`
-/

namespace A107090.P15383332187321373522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A107091 (A008585 n).toNat)

end

end A107090.P15383332187321373522

/-! ## A107090.P11478377658658171108

`A107091(A008585(n))/A007318(∑[n])`
-/

namespace A107090.P11478377658658171108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107091 (A008585 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A107090.P11478377658658171108

/-! ## A107090.P17131633783897913798

`xor(A000007(n+2), A107091(A008585(n)))`
-/

namespace A107090.P17131633783897913798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 2)) (A107091 (A008585 n).toNat)

end

end A107090.P17131633783897913798

/-! ## A107090.P2985535239672610871

`A107091(A008585(n))-A010892(A333199(n+2))`
-/

namespace A107090.P2985535239672610871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107091 (A008585 n).toNat - A010892 (A333199 (n + 2)).toNat

end

end A107090.P2985535239672610871

/-!
# A107092: G.f. A(x) satisfies A(x)^3 = A(x^3) + 3*x.

The programs for A107092, there is no canonical definition to state claims against.
-/

/-! ## A107092.P8742503927142909224

`A107093(3*n)`
-/

namespace A107092.P8742503927142909224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107093 (3 * n)

end

end A107092.P8742503927142909224

/-! ## A107092.P5533791149899666896

`A107093(A008486(n))-A000038(n)`
-/

namespace A107092.P5533791149899666896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107093 (A008486 n).toNat - A000038 n

end

end A107092.P5533791149899666896

/-! ## A107092.P16635267055362632575

`A107093(A008486(n))^A178334(n)`
-/

namespace A107092.P16635267055362632575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107093 (A008486 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A107092.P16635267055362632575

/-! ## A107092.P10160705026289741859

`A107093(A008585(n))^A178334(n)`
-/

namespace A107092.P10160705026289741859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107093 (A008585 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A107092.P10160705026289741859

/-! ## A107092.P11725150353012553949

`A196307(A004881(n+1))`
-/

namespace A107092.P11725150353012553949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196307 (A004881 (n + 1)).toNat

end

end A107092.P11725150353012553949

/-!
# A107095: G.f. satisfies: A(A(x)) = (1+x)^2*A(x).

The programs for A107095, there is no canonical definition to state claims against.
-/

/-! ## A107095.P15495713635946435275

`A129501(A107104(n))-A352850(n)`
-/

namespace A107095.P15495713635946435275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129501 (A107104 n).toNat - A352850 n

end

end A107095.P15495713635946435275

/-! ## A107095.P15859240303262993333

`A006966(n)*A369068(A000165(n))`
-/

namespace A107095.P15859240303262993333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 n * A369068 (A000165 n).toNat

end

end A107095.P15859240303262993333

/-!
# A107097: G.f. satisfies: A(A(x)) = A(x)/(1-x), so that the self-COMPOSE transform generates partial sums (A107098).

The programs for A107097, there is no canonical definition to state claims against.
-/

/-! ## A107097.P16361042885318191400

`Δ[A107098(n)]`
-/

namespace A107097.P16361042885318191400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107097.P16361042885318191400

/-! ## A107097.P5389381042606346142

`A107098(n+1)-A107098(n)`
-/

namespace A107097.P5389381042606346142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107098 (n + 1) - A107098 n

end

end A107097.P5389381042606346142

/-!
# A107098: The self-COMPOSE transform of A107097 and also the partial sums of A107097: g.f. A(x) = G(G(x)) = G(x)/(1-x) where G(x) is the g.f. of A107097.

The programs for A107098, there is no canonical definition to state claims against.
-/

/-! ## A107098.P10200001354462265992

`A107097(n)+a(n-1)` with `a(0)=0`
-/

namespace A107098.P10200001354462265992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107097 n + a (n - 1)

end

end A107098.P10200001354462265992

/-! ## A107098.P15578184999839001399

`∑[A107097(n+1)]-A107097(n+1)`
-/

namespace A107098.P15578184999839001399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A107097 (n + 1)

end

end A107098.P15578184999839001399

