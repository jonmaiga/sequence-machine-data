import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A176900: a(n) = sin((2*n+5)*Pi/6)*(n+1)*2^(n+1).

The programs for A176900, the canonical program `A176900.P16882127047652168650` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176900 has offset 0).

The definition of A176900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176900.P13303540455738800858

`(n+1)*(-2)^∑[n%3]`
-/

namespace A176900.P13303540455738800858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176900.P13303540455738800858

namespace A176900

/-- `(n+1)*(-2)^∑[n%3]` -/
def P13303540455738800858.Spec : Prop :=
  ∀ n, P13303540455738800858.a n = A176900 n

end A176900

/-! ## A176900.P8642794862940796309

`(n+1)*∏[2-4/a(n-1)]` with `a(0)=1`
-/

namespace A176900.P8642794862940796309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A176900.P8642794862940796309

namespace A176900

/-- `(n+1)*∏[2-4/a(n-1)]` -/
def P8642794862940796309.Spec : Prop :=
  ∀ n, P8642794862940796309.a n = (A176900 n : ℚ)

end A176900

/-! ## A176900.P9219526795470196016

`(n+1)*(-2)^∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A176900.P9219526795470196016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176900.P9219526795470196016

namespace A176900

/-- `(n+1)*(-2)^∑[floor(a(n-3))]` -/
def P9219526795470196016.Spec : Prop :=
  ∀ n, P9219526795470196016.a n = A176900 n

end A176900

/-! ## A176900.P9829438572053465343

`sin((2*n+5)*π/6)*(n+1)*2^(n+1)`
-/

namespace A176900.P9829438572053465343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((2 * n + 5 : ℝ) * (Real.pi / 6)) * ((n + 1) * 2 ^ (n + 1) : ℝ)

end

end A176900.P9829438572053465343

namespace A176900

/-- `sin((2*n+5)*π/6)*(n+1)*2^(n+1)` -/
def P9829438572053465343.Spec : Prop :=
  ∀ n, P9829438572053465343.a n = (A176900 n : ℝ)

end A176900

/-! ## A176900.P16882127047652168650

`(n+1)*A128018(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176900

/-- `(n+1)*A128018(n)` -/
def P16882127047652168650.Spec : Prop :=
  ∀ n, P16882127047652168650.a n = A176900 n

theorem P16882127047652168650.correct : P16882127047652168650.Spec := by
  intro n
  simp only [A176900]

end A176900

/-! ## A176900.P15385297041611243102

`(n+1)*A138230(n+1)`
-/

namespace A176900.P15385297041611243102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138230 (n + 1)

end

end A176900.P15385297041611243102

namespace A176900

/-- `(n+1)*A138230(n+1)` -/
def P15385297041611243102.Spec : Prop :=
  ∀ n, P15385297041611243102.a n = A176900 n

end A176900

/-! ## A176900.P9367570514102886807

`(n+1)*(A157240(n)-1)`
-/

namespace A176900.P9367570514102886807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157240 n - 1)

end

end A176900.P9367570514102886807

namespace A176900

/-- `(n+1)*(A157240(n)-1)` -/
def P9367570514102886807.Spec : Prop :=
  ∀ n, P9367570514102886807.a n = A176900 n

end A176900

/-! ## A176900.P17127071830373580156

`(n+1)*Δ[A088138(n+1)]`
-/

namespace A176900.P17127071830373580156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A176900.P17127071830373580156

namespace A176900

/-- `(n+1)*Δ[A088138(n+1)]` -/
def P17127071830373580156.Spec : Prop :=
  ∀ n, P17127071830373580156.a n = A176900 n

end A176900

/-! ## A176900.P3692866788517351715

`(n+1)*A122803(A130481(n))`
-/

namespace A176900.P3692866788517351715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122803 (A130481 n).toNat

end

end A176900.P3692866788517351715

namespace A176900

/-- `(n+1)*A122803(A130481(n))` -/
def P3692866788517351715.Spec : Prop :=
  ∀ n, P3692866788517351715.a n = A176900 n

end A176900

/-!
# A176902: Primes p such that p-1 and p+1 are both non-semiprime.

The programs for A176902, the canonical program `A176902.P2034357475414807943` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176902 has offset 1).

The definition of A176902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176902.P8312370110492258829

`A060254(n%a(n-1))` with `a(0)=2`
-/

namespace A176902.P8312370110492258829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060254 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A176902.P8312370110492258829

namespace A176902

/-- `A060254(n%a(n-1))` -/
def P8312370110492258829.Spec : Prop :=
  ∀ n, P8312370110492258829.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P2034357475414807943

`p?[A323162(n+1)+2*n]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176902

/-- `p?[A323162(n+1)+2*n]` -/
def P2034357475414807943.Spec : Prop :=
  ∀ n, P2034357475414807943.a n = A176902 (n + 1)

theorem P2034357475414807943.correct : P2034357475414807943.Spec := by
  intro n
  simp only [A176902, Nat.add_sub_cancel]

end A176902

/-! ## A176902.P515194875778887262

`A167915(n+1)%A001539(n)`
-/

namespace A176902.P515194875778887262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167915 (n + 1)) (A001539 n)

end

end A176902.P515194875778887262

namespace A176902

/-- `A167915(n+1)%A001539(n)` -/
def P515194875778887262.Spec : Prop :=
  ∀ n, P515194875778887262.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P8013378123278787343

`∪[A006686(n+1), A060254(n+1)]`
-/

namespace A176902.P8013378123278787343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P8013378123278787343

namespace A176902

/-- `∪[A006686(n+1), A060254(n+1)]` -/
def P8013378123278787343.Spec : Prop :=
  ∀ n, (P8013378123278787343.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P4092254445607687879

`∪[A006935(n+1), A060254(n+1)]`
-/

namespace A176902.P4092254445607687879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P4092254445607687879

namespace A176902

/-- `∪[A006935(n+1), A060254(n+1)]` -/
def P4092254445607687879.Spec : Prop :=
  ∀ n, (P4092254445607687879.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P593352115259972781

`∪[A007352(n+1), A060254(n+1)]`
-/

namespace A176902.P593352115259972781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P593352115259972781

namespace A176902

/-- `∪[A007352(n+1), A060254(n+1)]` -/
def P593352115259972781.Spec : Prop :=
  ∀ n, (P593352115259972781.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P2728375700607741461

`∪[A028883(n+1), A060254(n+1)]`
-/

namespace A176902.P2728375700607741461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P2728375700607741461

namespace A176902

/-- `∪[A028883(n+1), A060254(n+1)]` -/
def P2728375700607741461.Spec : Prop :=
  ∀ n, (P2728375700607741461.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P17302987219450730197

`∪[A037896(n+1), A060254(n+1)]`
-/

namespace A176902.P17302987219450730197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P17302987219450730197

namespace A176902

/-- `∪[A037896(n+1), A060254(n+1)]` -/
def P17302987219450730197.Spec : Prop :=
  ∀ n, (P17302987219450730197.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P10961436152841435413

`∪[A072384(n+1), A060254(n+1)]`
-/

namespace A176902.P10961436152841435413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P10961436152841435413

namespace A176902

/-- `∪[A072384(n+1), A060254(n+1)]` -/
def P10961436152841435413.Spec : Prop :=
  ∀ n, (P10961436152841435413.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P16736446608536576299

`∪[A078624(n+1), A060254(n+1)]`
-/

namespace A176902.P16736446608536576299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P16736446608536576299

namespace A176902

/-- `∪[A078624(n+1), A060254(n+1)]` -/
def P16736446608536576299.Spec : Prop :=
  ∀ n, (P16736446608536576299.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P8270177652993363992

`∩[A059456(n+1), A176897(n+1)]`
-/

namespace A176902.P8270177652993363992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P8270177652993363992

namespace A176902

/-- `∩[A059456(n+1), A176897(n+1)]` -/
def P8270177652993363992.Spec : Prop :=
  ∀ n, (P8270177652993363992.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P10197258549865787945

`record[A020639(A163602(n+3))]`
-/

namespace A176902.P10197258549865787945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A163602 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176902.P10197258549865787945

namespace A176902

/-- `record[A020639(A163602(n+3))]` -/
def P10197258549865787945.Spec : Prop :=
  ∀ n, P10197258549865787945.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P5659975276014663739

`record[A020639(A166037(n+3))]`
-/

namespace A176902.P5659975276014663739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A166037 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176902.P5659975276014663739

namespace A176902

/-- `record[A020639(A166037(n+3))]` -/
def P5659975276014663739.Spec : Prop :=
  ∀ n, P5659975276014663739.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P14339477726601770594

`record[A020639(Δ[A018252(n+2)²])]`
-/

namespace A176902.P14339477726601770594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176902.P14339477726601770594

namespace A176902

/-- `record[A020639(Δ[A018252(n+2)²])]` -/
def P14339477726601770594.Spec : Prop :=
  ∀ n, P14339477726601770594.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P9863528704068781740

`p?[Δ[A394678(n+1)]]`
-/

namespace A176902.P9863528704068781740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176902.P9863528704068781740

namespace A176902

/-- `p?[Δ[A394678(n+1)]]` -/
def P9863528704068781740.Spec : Prop :=
  ∀ n, P9863528704068781740.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P2395738026132940403

`∩[A156657(n+1), A176897(n+1)]`
-/

namespace A176902.P2395738026132940403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176902.P2395738026132940403

namespace A176902

/-- `∩[A156657(n+1), A176897(n+1)]` -/
def P2395738026132940403.Spec : Prop :=
  ∀ n, (P2395738026132940403.a n : ℤ) = A176902 (n + 1)

end A176902

/-! ## A176902.P7660979886518876788

`A181351(A167915(n+1))`
-/

namespace A176902.P7660979886518876788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A167915 (n + 1)).toNat

end

end A176902.P7660979886518876788

namespace A176902

/-- `A181351(A167915(n+1))` -/
def P7660979886518876788.Spec : Prop :=
  ∀ n, P7660979886518876788.a n = A176902 (n + 1)

end A176902

/-! ## A176902.P1822347691551269272

`p?[xor(1, A176462(n+1))+1]`
-/

namespace A176902.P1822347691551269272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A176462 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176902.P1822347691551269272

namespace A176902

/-- `p?[xor(1, A176462(n+1))+1]` -/
def P1822347691551269272.Spec : Prop :=
  ∀ n, P1822347691551269272.a n = A176902 (n + 1)

end A176902

/-!
# A176903: Primes of the form colossally abundant number + 1.

The programs for A176903, there is no canonical definition to state claims against.
-/

/-! ## A176903.P10271099062595671769

`record[A070858(A070879(n)+1)]`
-/

namespace A176903.P10271099062595671769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070858 (A070879 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176903.P10271099062595671769

/-! ## A176903.P3925884652598027751

`A057143(A130293(n+1)+1)+1`
-/

namespace A176903.P3925884652598027751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057143 (A130293 (n + 1) + 1).toNat + 1

end

end A176903.P3925884652598027751

/-!
# A176904: A coding sequence of binary based integers using powers of {2,3} for {0,1}.

The programs for A176904, there is no canonical definition to state claims against.
-/

/-! ## A176904.P10202819316740357539

`A008576(∑[A289373(n)]^A000196(n))`
-/

namespace A176904.P10202819316740357539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000196 n : ℤ))).toNat

end

end A176904.P10202819316740357539

/-!
# A176905: Primes p such that p^p contains the string 'p' as a substring.

The programs for A176905, there is no canonical definition to state claims against.
-/

/-! ## A176905.P4086910486088228232

`p?[A049329(n+1)]`
-/

namespace A176905.P4086910486088228232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176905.P4086910486088228232

/-! ## A176905.P16815956277549684505

`record[A006530(A049329(n+2))]`
-/

namespace A176905.P16815956277549684505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049329 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176905.P16815956277549684505

/-! ## A176905.P8576812503345576892

`filter[A049329(n+1), A010051(#)]`
-/

namespace A176905.P8576812503345576892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176905.P8576812503345576892

/-! ## A176905.P14328991057120875761

`∩[A000040(n+1), A049329(n+1)]`
-/

namespace A176905.P14328991057120875761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P14328991057120875761

/-! ## A176905.P14978970402057926012

`∩[A045344(n+1), A049329(n+1)]`
-/

namespace A176905.P14978970402057926012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P14978970402057926012

/-! ## A176905.P15499393011799075911

`∩[A049329(n+1), A065091(n+1)]`
-/

namespace A176905.P15499393011799075911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P15499393011799075911

/-! ## A176905.P1817585935032967012

`∩[A049329(n+1), A175787(n+1)]`
-/

namespace A176905.P1817585935032967012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P1817585935032967012

/-! ## A176905.P11915443256150004020

`∩[A049329(n+1), A182986(n+1)]`
-/

namespace A176905.P11915443256150004020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P11915443256150004020

/-! ## A176905.P9827740879900940242

`∩[A049329(n+1), A215848(n+1)]`
-/

namespace A176905.P9827740879900940242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P9827740879900940242

/-! ## A176905.P18252666961948845074

`p?[(n+1)%(A236322(n+1)+n+1)]`
-/

namespace A176905.P18252666961948845074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A236322 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176905.P18252666961948845074

/-! ## A176905.P14170881107041838639

`filter[A049329(n+1), A171387(#)]`
-/

namespace A176905.P14170881107041838639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A176905.P14170881107041838639

/-! ## A176905.P690924326390489899

`filter[A049329(n+2), A080339(#)]`
-/

namespace A176905.P690924326390489899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A176905.P690924326390489899

/-! ## A176905.P10476239101345422877

`filter[A049329(n+2), A080545(#)]`
-/

namespace A176905.P10476239101345422877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A176905.P10476239101345422877

/-! ## A176905.P17892625180370966604

`∩[A049329(n+1), A240960(n+1)]`
-/

namespace A176905.P17892625180370966604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176905.P17892625180370966604

/-!
# A176911: Numbers that are the product of 3 distinct primes a,b and c, such that a+b+c, a^2+b^2+c^2 and a^3+b^3+c^3 are prime numbers.

The programs for A176911, there is no canonical definition to state claims against.
-/

/-! ## A176911.P11889168443172026492

`∩[A134618(n+1), A176878(n+1)]`
-/

namespace A176911.P11889168443172026492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176911.P11889168443172026492

/-!
# A176915: Average of n-th twin prime pair minus total number of prime factors of average of n-th twin prime pair.

The programs for A176915, the canonical program `A176915.P10687562346099040879` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176915 has offset 1).

The definition of A176915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A078571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176915.P10687562346099040879

`A014574(n+1)-A078571(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176915

/-- `A014574(n+1)-A078571(n+1)` -/
def P10687562346099040879.Spec : Prop :=
  ∀ n, P10687562346099040879.a n = A176915 (n + 1)

theorem P10687562346099040879.correct : P10687562346099040879.Spec := by
  intro n
  simp only [A176915, Nat.add_sub_cancel]

end A176915

/-! ## A176915.P15167789577725970611

`A069345(A014574(n+1))`
-/

namespace A176915.P15167789577725970611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A014574 (n + 1)).toNat

end

end A176915.P15167789577725970611

namespace A176915

/-- `A069345(A014574(n+1))` -/
def P15167789577725970611.Spec : Prop :=
  ∀ n, P15167789577725970611.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P14876324939315709801

`sqrt(A075369(n+1))-A078571(n+1)`
-/

namespace A176915.P14876324939315709801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) - (A078571 (n + 1) : ℝ)

end

end A176915.P14876324939315709801

namespace A176915

/-- `sqrt(A075369(n+1))-A078571(n+1)` -/
def P14876324939315709801.Spec : Prop :=
  ∀ n, P14876324939315709801.a n = (A176915 (n + 1) : ℝ)

end A176915

/-! ## A176915.P12040535417834435806

`A006512(n+1)-(A078571(n+1)+1)`
-/

namespace A176915.P12040535417834435806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A078571 (n + 1) + 1)

end

end A176915.P12040535417834435806

namespace A176915

/-- `A006512(n+1)-(A078571(n+1)+1)` -/
def P12040535417834435806.Spec : Prop :=
  ∀ n, P12040535417834435806.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P6290841144254565519

`A144834(n+1)+2-A078571(n+1)`
-/

namespace A176915.P6290841144254565519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + (2 - A078571 (n + 1))

end

end A176915.P6290841144254565519

namespace A176915

/-- `A144834(n+1)+2-A078571(n+1)` -/
def P6290841144254565519.Spec : Prop :=
  ∀ n, P6290841144254565519.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P6619720755384547685

`2*A040040(n+1)-A078571(n+1)`
-/

namespace A176915.P6619720755384547685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - A078571 (n + 1)

end

end A176915.P6619720755384547685

namespace A176915

/-- `2*A040040(n+1)-A078571(n+1)` -/
def P6619720755384547685.Spec : Prop :=
  ∀ n, P6619720755384547685.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P14650837562003562615

`A054735(n+1)/2-A078571(n+1)`
-/

namespace A176915.P14650837562003562615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 - (A078571 (n + 1) : ℚ)

end

end A176915.P14650837562003562615

namespace A176915

/-- `A054735(n+1)/2-A078571(n+1)` -/
def P14650837562003562615.Spec : Prop :=
  ∀ n, P14650837562003562615.a n = (A176915 (n + 1) : ℚ)

end A176915

/-! ## A176915.P365542776877882916

`A111046(n+1)/4-A078571(n+1)`
-/

namespace A176915.P365542776877882916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 4 - (A078571 (n + 1) : ℚ)

end

end A176915.P365542776877882916

namespace A176915

/-- `A111046(n+1)/4-A078571(n+1)` -/
def P365542776877882916.Spec : Prop :=
  ∀ n, P365542776877882916.a n = (A176915 (n + 1) : ℚ)

end A176915

/-! ## A176915.P2843019267982788990

`ceil(sqrt(A037074(n+1))-A078571(n+1))`
-/

namespace A176915.P2843019267982788990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A037074 (n + 1) : ℝ) - (A078571 (n + 1) : ℝ)⌉

end

end A176915.P2843019267982788990

namespace A176915

/-- `ceil(sqrt(A037074(n+1))-A078571(n+1))` -/
def P2843019267982788990.Spec : Prop :=
  ∀ n, P2843019267982788990.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P12133906235750641633

`ceil(sqrt(A120875(n+1))-A078571(n+1))`
-/

namespace A176915.P12133906235750641633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A120875 (n + 1) : ℝ) - (A078571 (n + 1) : ℝ)⌉

end

end A176915.P12133906235750641633

namespace A176915

/-- `ceil(sqrt(A120875(n+1))-A078571(n+1))` -/
def P12133906235750641633.Spec : Prop :=
  ∀ n, P12133906235750641633.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P400258069899047720

`A075369(n+1)%A108605(n+1)-A078571(n+1)`
-/

namespace A176915.P400258069899047720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075369 (n + 1)) (A108605 (n + 1)) - A078571 (n + 1)

end

end A176915.P400258069899047720

namespace A176915

/-- `A075369(n+1)%A108605(n+1)-A078571(n+1)` -/
def P400258069899047720.Spec : Prop :=
  ∀ n, P400258069899047720.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P6284635679830079931

`A001359(n+1)-A001222(A040040(n+1))`
-/

namespace A176915.P6284635679830079931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A001222 (A040040 (n + 1)).toNat

end

end A176915.P6284635679830079931

namespace A176915

/-- `A001359(n+1)-A001222(A040040(n+1))` -/
def P6284635679830079931.Spec : Prop :=
  ∀ n, P6284635679830079931.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P13201661915008343154

`A014574(n+1)-A001222(A006512(n+1)-1)`
-/

namespace A176915.P13201661915008343154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A001222 (A006512 (n + 1) - 1).toNat

end

end A176915.P13201661915008343154

namespace A176915

/-- `A014574(n+1)-A001222(A006512(n+1)-1)` -/
def P13201661915008343154.Spec : Prop :=
  ∀ n, P13201661915008343154.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P6055110281751326002

`A144834(n+1)+2-A001222(A001359(n+1)+1)`
-/

namespace A176915.P6055110281751326002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2 - A001222 (A001359 (n + 1) + 1).toNat

end

end A176915.P6055110281751326002

namespace A176915

/-- `A144834(n+1)+2-A001222(A001359(n+1)+1)` -/
def P6055110281751326002.Spec : Prop :=
  ∀ n, P6055110281751326002.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P8414410086729914213

`A144834(n+1)+2-A001222(A006512(n+1)-1)`
-/

namespace A176915.P8414410086729914213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2 - A001222 (A006512 (n + 1) - 1).toNat

end

end A176915.P8414410086729914213

namespace A176915

/-- `A144834(n+1)+2-A001222(A006512(n+1)-1)` -/
def P8414410086729914213.Spec : Prop :=
  ∀ n, P8414410086729914213.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P7136225058728842779

`A144834(n+1)+2-A001222(A144834(n+1)+2)`
-/

namespace A176915.P7136225058728842779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2 - A001222 (A144834 (n + 1) + 2).toNat

end

end A176915.P7136225058728842779

namespace A176915

/-- `A144834(n+1)+2-A001222(A144834(n+1)+2)` -/
def P7136225058728842779.Spec : Prop :=
  ∀ n, P7136225058728842779.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P3154795145262458409

`2*A040040(n+1)-A001222(2*A040040(n+1))`
-/

namespace A176915.P3154795145262458409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - A001222 (2 * A040040 (n + 1)).toNat

end

end A176915.P3154795145262458409

namespace A176915

/-- `2*A040040(n+1)-A001222(2*A040040(n+1))` -/
def P3154795145262458409.Spec : Prop :=
  ∀ n, P3154795145262458409.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P6402903904277848671

`p?[A000040(n+1)+2]-1-A001222(A014574(n+1))`
-/

namespace A176915.P6402903904277848671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 - A001222 (A014574 (n + 1)).toNat

end

end A176915.P6402903904277848671

namespace A176915

/-- `p?[A000040(n+1)+2]-1-A001222(A014574(n+1))` -/
def P6402903904277848671.Spec : Prop :=
  ∀ n, P6402903904277848671.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P16657170189986223508

`p?[A000040(n+1)+2]-1-A001222(A001359(n+1)+1)`
-/

namespace A176915.P16657170189986223508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 - A001222 (A001359 (n + 1) + 1).toNat

end

end A176915.P16657170189986223508

namespace A176915

/-- `p?[A000040(n+1)+2]-1-A001222(A001359(n+1)+1)` -/
def P16657170189986223508.Spec : Prop :=
  ∀ n, P16657170189986223508.a n = A176915 (n + 1)

end A176915

/-! ## A176915.P9384075547594737398

`p?[A000040(n+1)+2]-1-A001222(A006512(n+1)-1)`
-/

namespace A176915.P9384075547594737398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 - A001222 (A006512 (n + 1) - 1).toNat

end

end A176915.P9384075547594737398

namespace A176915

/-- `p?[A000040(n+1)+2]-1-A001222(A006512(n+1)-1)` -/
def P9384075547594737398.Spec : Prop :=
  ∀ n, P9384075547594737398.a n = A176915 (n + 1)

end A176915

/-!
# A176916: a(n) = 5^n + 5*n + 1.

The programs for A176916, the canonical program `A176916.P16252641220105449842` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176916 has offset 0).

The definition of A176916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+5*n+1` (program `A176916.P16252641220105449842`, by `A176916.P16252641220105449842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176916.P16252641220105449842

`5^n+5*n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176916

/-- `5^n+5*n+1` -/
def P16252641220105449842.Spec : Prop :=
  ∀ n, (P16252641220105449842.a n : ℤ) = A176916 n

theorem P16252641220105449842.correct : P16252641220105449842.Spec := by
  intro n
  simp only [A176916]

end A176916

/-! ## A176916.P5568218632119305764

`∑[5*(a(n-1)-4)]` with `a(0)=2, a(1)=9`
-/

namespace A176916.P5568218632119305764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  5 * (f1 (n - 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176916.P5568218632119305764

namespace A176916

/-- `∑[5*(a(n-1)-4)]` -/
def P5568218632119305764.Spec : Prop :=
  ∀ n, P5568218632119305764.a n = A176916 n

end A176916

/-! ## A176916.P17829853647614650517

`gcd(A016861(n)+A000351(n), A000038(n))`
-/

namespace A176916.P17829853647614650517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016861 n + A000351 n) (A000038 n)

end

end A176916.P17829853647614650517

namespace A176916

/-- `gcd(A016861(n)+A000351(n), A000038(n))` -/
def P17829853647614650517.Spec : Prop :=
  ∀ n, (P17829853647614650517.a n : ℤ) = A176916 n

end A176916

/-! ## A176916.P6361753577461426874

`round((2*A221907(n)+1)/2)`
-/

namespace A176916.P6361753577461426874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A221907 n + 1 : ℚ) / 2)

end

end A176916.P6361753577461426874

namespace A176916

/-- `round((2*A221907(n)+1)/2)` -/
def P6361753577461426874.Spec : Prop :=
  ∀ n, P6361753577461426874.a n = A176916 n

end A176916

/-! ## A176916.P14067607245609719111

`abs(Δ[A003463(n)]+5*n+1)`
-/

namespace A176916.P14067607245609719111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (5 * n : ℤ) + 1|

end

end A176916.P14067607245609719111

namespace A176916

/-- `abs(Δ[A003463(n)]+5*n+1)` -/
def P14067607245609719111.Spec : Prop :=
  ∀ n, P14067607245609719111.a n = A176916 n

end A176916

/-! ## A176916.P5314996028172012895

`Δ[A003463(n)+A000566(n)]`
-/

namespace A176916.P5314996028172012895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176916.P5314996028172012895

namespace A176916

/-- `Δ[A003463(n)+A000566(n)]` -/
def P5314996028172012895.Spec : Prop :=
  ∀ n, P5314996028172012895.a n = A176916 n

end A176916

/-!
# A176917: Triangle read by rows, A077049 * the diagonalized version of A002033.

The programs for A176917, there is no canonical definition to state claims against.
-/

/-! ## A176917.P8964438515242168416

`A074206(A127093(comp[∑[n]]))`
-/

namespace A176917.P8964438515242168416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A127093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A176917.P8964438515242168416

/-! ## A176917.P1351522435943091230

`A074206(1-A191904(n+1))`
-/

namespace A176917.P1351522435943091230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (1 - A191904 (n + 1)).toNat

end

end A176917.P1351522435943091230

/-! ## A176917.P12057151031380792412

`A002033(A048158(n+1))*A059841(A171233(n+1))`
-/

namespace A176917.P12057151031380792412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A048158 (n + 1)).toNat * A059841 (A171233 (n + 1)).toNat

end

end A176917.P12057151031380792412

/-! ## A176917.P16830333722725701412

`(1-A035363(A171233(n+1)+1))*A002033(A048158(n+1))`
-/

namespace A176917.P16830333722725701412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035363 (A171233 (n + 1) + 1).toNat) * A002033 (A048158 (n + 1)).toNat

end

end A176917.P16830333722725701412

/-! ## A176917.P833419657950229586

`char[A286101(n+1)-1]*A002033(A048158(n+1))`
-/

namespace A176917.P833419657950229586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286101 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002033 (A048158 (n + 1)).toNat

end

end A176917.P833419657950229586

/-! ## A176917.P3793323760624273062

`A077049(n+1)*A318812(A246279(n+1))`
-/

namespace A176917.P3793323760624273062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (n + 1) * A318812 (A246279 (n + 1)).toNat

end

end A176917.P3793323760624273062

/-!
# A176918: Triangle read by rows, a signed variant of A077049 * A128407; as infinite lower triangular matrices.

The programs for A176918, there is no canonical definition to state claims against.
-/

/-! ## A176918.P16616408030991550870

`-(A054524(n+1)*A176890(n+1))`
-/

namespace A176918.P16616408030991550870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A054524 (n + 1) * A176890 (n + 1))

end

end A176918.P16616408030991550870

/-! ## A176918.P14156388001251634220

`Δ[A143158(n+1)]*A176890(n+1)`
-/

namespace A176918.P14156388001251634220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A176890 (n + 1)

end

end A176918.P14156388001251634220

/-! ## A176918.P250116466235615804

`A128407(n+1)+A000007(n)-A054524(n+1)`
-/

namespace A176918.P250116466235615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (n + 1) + (A000007 n - A054524 (n + 1))

end

end A176918.P250116466235615804

/-! ## A176918.P11518095169324263265

`A035214(n)*A128407(n+1)-A054524(n+1)`
-/

namespace A176918.P11518095169324263265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A128407 (n + 1) - A054524 (n + 1)

end

end A176918.P11518095169324263265

/-! ## A176918.P17952977911046242166

`A128407(n+1)-A054524(n+1)*A057427(n)`
-/

namespace A176918.P17952977911046242166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (n + 1) - A054524 (n + 1) * A057427 n

end

end A176918.P17952977911046242166

/-! ## A176918.P14563457776420124297

`(A128430(n+2)-A128430(n+1))*A176890(n+1)`
-/

namespace A176918.P14563457776420124297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128430 (n + 2) - A128430 (n + 1)) * A176890 (n + 1)

end

end A176918.P14563457776420124297

/-! ## A176918.P11646984108807815792

`-((A175992(n+1)-A008683((n+1)²))*A054534(n+1))`
-/

namespace A176918.P11646984108807815792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A175992 (n + 1) - A008683 ((n + 1) ^ 2)) * A054534 (n + 1))

end

end A176918.P11646984108807815792

/-! ## A176918.P2016265377353146894

`-((A175992(n+1)-∑{d}[n+1, A008683(#)])*A054534(n+1))`
-/

namespace A176918.P2016265377353146894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A175992 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d) * A054534 (n + 1))

end

end A176918.P2016265377353146894

/-!
# A176919: Triangle by columns: (1, 2, 3, ...) in each column interleaved with (0, 1, 2, ...) zeros. Columns > 1 shifted down twice.

The programs for A176919, there is no canonical definition to state claims against.
-/

/-! ## A176919.P4272670367917367382

`floor(A171233(n+1)/2)`
-/

namespace A176919.P4272670367917367382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171233 (n + 1) : ℚ) / 2⌋

end

end A176919.P4272670367917367382

/-! ## A176919.P13388786559300371856

`floor(log2(A168020(n+1)²+1))`
-/

namespace A176919.P13388786559300371856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A168020 (n + 1) ^ 2 + 1).toNat

end

end A176919.P13388786559300371856

/-! ## A176919.P11094104200292267881

`A004526(A171233(n+1))`
-/

namespace A176919.P11094104200292267881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171233 (n + 1)).toNat

end

end A176919.P11094104200292267881

/-! ## A176919.P9251923224398757625

`A225203(A120911(n+1))`
-/

namespace A176919.P9251923224398757625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225203 (A120911 (n + 1)).toNat

end

end A176919.P9251923224398757625

/-! ## A176919.P17835933827114583083

`A064727(A171233(n+1)²)`
-/

namespace A176919.P17835933827114583083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A171233 (n + 1) ^ 2).toNat

end

end A176919.P17835933827114583083

/-! ## A176919.P16099900369315030494

`A274923(A171233(n+1)²)`
-/

namespace A176919.P16099900369315030494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A171233 (n + 1) ^ 2).toNat

end

end A176919.P16099900369315030494

/-! ## A176919.P17296606429772952721

`A004524(A171233(n+1)+1)`
-/

namespace A176919.P17296606429772952721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A171233 (n + 1) + 1).toNat

end

end A176919.P17296606429772952721

/-! ## A176919.P6172144401299934181

`A001057(A171233(n+1)-1)`
-/

namespace A176919.P6172144401299934181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A171233 (n + 1) - 1).toNat

end

end A176919.P6172144401299934181

/-! ## A176919.P1032463801155486045

`A110654(A171233(n+1)-1)`
-/

namespace A176919.P1032463801155486045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A171233 (n + 1) - 1).toNat

end

end A176919.P1032463801155486045

/-! ## A176919.P2985329869327290521

`A140472(A171233(n+1)-1)`
-/

namespace A176919.P2985329869327290521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A171233 (n + 1) - 1).toNat

end

end A176919.P2985329869327290521

/-!
# A176920: Period of decimal representation of 1/n^2.

The programs for A176920, there is no canonical definition to state claims against.
-/

/-! ## A176920.P8811005251769268306

`A007732((n+1)²)`
-/

namespace A176920.P8811005251769268306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 ((n + 1) ^ 2)

end

end A176920.P8811005251769268306

/-! ## A176920.P7105804595556396710

`or(char[3], A007732((n+1)^2))`
-/

namespace A176920.P7105804595556396710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007732 ((n + 1) ^ 2))

end

end A176920.P7105804595556396710

/-! ## A176920.P6257970142599054414

`floor(sqrt(A051626((n+1)²)²+1))`
-/

namespace A176920.P6257970142599054414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A051626 ((n + 1) ^ 2) ^ 2 + 1)

end

end A176920.P6257970142599054414

/-! ## A176920.P2753477775764697817

`A028310(A051626((n+1)²))`
-/

namespace A176920.P2753477775764697817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051626 ((n + 1) ^ 2)).toNat

end

end A176920.P2753477775764697817

/-! ## A176920.P6872826804882978418

`A054710(A132740((n+1)²))`
-/

namespace A176920.P6872826804882978418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (A132740 ((n + 1) ^ 2)).toNat

end

end A176920.P6872826804882978418

/-! ## A176920.P11380524414607066230

`∏{d}[A007732((n+1)^2), A014963(#)]`
-/

namespace A176920.P11380524414607066230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A176920.P11380524414607066230

/-! ## A176920.P2763448568003067601

`∑{d}[A007732(∑[2*n+1]), A000010(#)]`
-/

namespace A176920.P2763448568003067601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A176920.P2763448568003067601

/-! ## A176920.P5413416794875951206

`A007732(∑[2*n+1])%∑[A000032(n)]`
-/

namespace A176920.P5413416794875951206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007732 (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A176920.P5413416794875951206

/-! ## A176920.P12621694724267856439

`A007318(C(2, n)+1)*A007732((n+1)^2)`
-/

namespace A176920.P12621694724267856439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A007732 ((n + 1) ^ 2)

end

end A176920.P12621694724267856439

/-! ## A176920.P5516418999454365577

`A007732((n+1)^2)+A008683(16*n+8)`
-/

namespace A176920.P5516418999454365577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 ((n + 1) ^ 2) + A008683 (16 * n + 8)

end

end A176920.P5516418999454365577

/-!
# A176921: Period of decimal representation of 1/n^3.

The programs for A176921, there is no canonical definition to state claims against.
-/

/-! ## A176921.P5455244321116785533

`A007732((lcm(4, n+1)/4)^3)`
-/

namespace A176921.P5455244321116785533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.roundAway (((Nat.lcm 4 (n + 1) : ℚ) / 4) ^ 3)).toNat

end

end A176921.P5455244321116785533

/-! ## A176921.P16576932439618353379

`A007732(((n+1)/2^val(n+1, 2))^3)`
-/

namespace A176921.P16576932439618353379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ 3)).toNat

end

end A176921.P16576932439618353379

/-! ## A176921.P4865816855111921955

`A007732(((n+1)/(or(n, n+1)-n))^3)`
-/

namespace A176921.P4865816855111921955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)) ^ 3)).toNat

end

end A176921.P4865816855111921955

/-! ## A176921.P18395838837516124064

`A007732(((n+1)/xor(n, or(n, n+1)))^3)`
-/

namespace A176921.P18395838837516124064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)) ^ 3)).toNat

end

end A176921.P18395838837516124064

/-! ## A176921.P4919832234748060900

`A007732(((n+1)*2^-val(n+1, 2))^3)`
-/

namespace A176921.P4919832234748060900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.roundAway (((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)) ^ 3)).toNat

end

end A176921.P4919832234748060900

/-!
# A176923: Squares of A057148 taken as decimal numbers.

The programs for A176923, there is no canonical definition to state claims against.
-/

/-! ## A176923.P18219012025387998616

`A057148(n+1)²`
-/

namespace A176923.P18219012025387998616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1) ^ 2

end

end A176923.P18219012025387998616

/-! ## A176923.P10769599160057848164

`record[and(1, n)*A215256(n)]²`
-/

namespace A176923.P10769599160057848164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A215256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A176923.P10769599160057848164

/-! ## A176923.P3143276995777194367

`A057148(n-log2(1/2))^2`
-/

namespace A176923.P3143276995777194367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A176923.P3143276995777194367

/-! ## A176923.P17196512594650100824

`A063009(A006995(n+1))`
-/

namespace A176923.P17196512594650100824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063009 (A006995 (n + 1)).toNat

end

end A176923.P17196512594650100824

/-! ## A176923.P14752688179973061426

`A063009(eq[n, A030101(n)])`
-/

namespace A176923.P14752688179973061426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176923.P14752688179973061426

/-!
# A176924: Primes of the form 2^k + 37.

The programs for A176924, there is no canonical definition to state claims against.
-/

/-! ## A176924.P16402284681142676165

`p?[2^n+37]`
-/

namespace A176924.P16402284681142676165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176924.P16402284681142676165

/-! ## A176924.P1262482331118418654

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=38, a(1)=1`
-/

namespace A176924.P1262482331118418654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [38, 1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A176924.P1262482331118418654

/-! ## A176924.P9364288823786213339

`A016813(4^n+9)`
-/

namespace A176924.P9364288823786213339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (4 ^ n + 9)

end

end A176924.P9364288823786213339

/-!
# A176925: Primes of the form 2^k + 41.

The programs for A176925, there is no canonical definition to state claims against.
-/

/-! ## A176925.P7681140840791244035

`p?[2^n+41]`
-/

namespace A176925.P7681140840791244035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176925.P7681140840791244035

/-!
# A176926: Primes of the form 2^k + 33.

The programs for A176926, there is no canonical definition to state claims against.
-/

/-! ## A176926.P2360500778932407099

`2^A247953(n+1)+33`
-/

namespace A176926.P2360500778932407099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A247953 (n + 1) : ℤ) + 33

end

end A176926.P2360500778932407099

/-! ## A176926.P106245059615540697

`A000051(A247953(n+1))+32`
-/

namespace A176926.P106245059615540697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A247953 (n + 1)).toNat + 32

end

end A176926.P106245059615540697

/-! ## A176926.P2191050261718087446

`p?[2^n+33]`
-/

namespace A176926.P2191050261718087446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176926.P2191050261718087446

/-!
# A176927: Primes of the form 2^k + 35.

The programs for A176927, there is no canonical definition to state claims against.
-/

/-! ## A176927.P3384824467047216444

`2^A220077(n+1)+35`
-/

namespace A176927.P3384824467047216444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A220077 (n + 1) : ℤ) + 35

end

end A176927.P3384824467047216444

/-! ## A176927.P14721698313743353395

`A000918(A220077(n+1))+37`
-/

namespace A176927.P14721698313743353395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A220077 (n + 1)).toNat + 37

end

end A176927.P14721698313743353395

/-! ## A176927.P11986213188766747167

`A000918(A196241(∑[or(n, n+1)]))+37`
-/

namespace A176927.P11986213188766747167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A196241 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 37

end

end A176927.P11986213188766747167

/-!
# A176928: Primes of the form 3^n + 2^n + 10.

The programs for A176928, there is no canonical definition to state claims against.
-/

/-! ## A176928.P9241268987914574430

`p?[2^n+3^n+10]`
-/

namespace A176928.P9241268987914574430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (3 ^ n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176928.P9241268987914574430

/-!
# A176929: Primes of the form 3^n + 100.

The programs for A176929, there is no canonical definition to state claims against.
-/

/-! ## A176929.P80295684820222942

`A034472(A219618(n+1))+99`
-/

namespace A176929.P80295684820222942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (A219618 (n + 1)).toNat + 99

end

end A176929.P80295684820222942

/-! ## A176929.P18183872509485386605

`or(1, p?[∑[3*a(n-1)]])` with `a(0)=16, a(1)=28, a(2)=28, a(3)=6, a(4)=10, a(5)=10, a(6)=3, a(7)=2`
-/

namespace A176929.P18183872509485386605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [16, 28, 28, 6, 10, 10, 3, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A176929.P18183872509485386605

/-! ## A176929.P11696741469329308116

`record[A006530(ceil(3^(n-1))+4/(1/5)²)]`
-/

namespace A176929.P11696741469329308116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) + 4 / ((1 : ℚ) / 5) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176929.P11696741469329308116

/-! ## A176929.P11781449089115686250

`record[A020639(A168609(n)+96)]`
-/

namespace A176929.P11781449089115686250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A168609 n + 96).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176929.P11781449089115686250

/-!
# A176945: Semiprimes s such that r=(s^2+1)/2 is also a semiprime.

The programs for A176945, there is no canonical definition to state claims against.
-/

/-! ## A176945.P11204990689811462837

`filter[A272078(n+1), A353480(#)]`
-/

namespace A176945.P11204990689811462837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A176945.P11204990689811462837

/-! ## A176945.P14441512949338022866

`∩[A046315(n+1), A050798(n+1)]`
-/

namespace A176945.P14441512949338022866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176945.P14441512949338022866

/-! ## A176945.P2466695504224444925

`∩[A046315(n+1), A272078(n+1)]`
-/

namespace A176945.P2466695504224444925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176945.P2466695504224444925

/-! ## A176945.P7474167192749837931

`∩[A272078(n+1), A332951(n+1)]`
-/

namespace A176945.P7474167192749837931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176945.P7474167192749837931

/-!
# A176949: Composite numbers n for which A176948(n) = n.

The programs for A176949, there is no canonical definition to state claims against.
-/

/-! ## A176949.P16817407599784322011

`∪[A274967(n+1), A274968(n+1)]`
-/

namespace A176949.P16817407599784322011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176949.P16817407599784322011

/-! ## A176949.P16931319992425622704

`filter[A090467(n+1), A066247(#)]`
-/

namespace A176949.P16931319992425622704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A176949.P16931319992425622704

/-! ## A176949.P11817744716787549033

`filter[A090467(n+2), A005171(#)]`
-/

namespace A176949.P11817744716787549033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A176949.P11817744716787549033

/-! ## A176949.P13599329052625596799

`∩[A002808(n+1), A090467(n+1)]`
-/

namespace A176949.P13599329052625596799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176949.P13599329052625596799

/-! ## A176949.P4930302130657907427

`record[A176774(A002808(n+1))]`
-/

namespace A176949.P4930302130657907427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176774 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176949.P4930302130657907427

/-! ## A176949.P2870215211829989185

`record[A176774(A018252(n+2))]`
-/

namespace A176949.P2870215211829989185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176774 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176949.P2870215211829989185

/-! ## A176949.P6658091777122592701

`record[A176774(A014683(n+3))]`
-/

namespace A176949.P6658091777122592701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176774 (A014683 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176949.P6658091777122592701

/-! ## A176949.P17101170100360238357

`eq[A339579(n+1), A364693(n)]`
-/

namespace A176949.P17101170100360238357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176949.P17101170100360238357

/-!
# A176950: G.f.: A(x) = 1 + x/Series_Reversion(eta(x) - 1).

The programs for A176950, there is no canonical definition to state claims against.
-/

/-! ## A176950.P11804104017090005638

`A278639(n)+A008619(A317875(n+1))`
-/

namespace A176950.P11804104017090005638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278639 n + A008619 (A317875 (n + 1)).toNat

end

end A176950.P11804104017090005638

/-! ## A176950.P9565633264133073496

`A000006(A159662(n))`
-/

namespace A176950.P9565633264133073496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A159662 n).toNat

end

end A176950.P9565633264133073496

/-! ## A176950.P16896527245539169148

`A077767(A084480(n))`
-/

namespace A176950.P16896527245539169148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A084480 n).toNat

end

end A176950.P16896527245539169148

/-!
# A176951: Let p = prime(n). Then a(n) = Fibonacci(p+1)/p if this is an integer, otherwise a(n) = Fibonacci(p-1)/p if this is an integer, and fall back to a(n)=0 if both are non-integer.

The programs for A176951, there is no canonical definition to state claims against.
-/

/-! ## A176951.P3222735232918889430

`A092330(n+1)-char[2]`
-/

namespace A176951.P3222735232918889430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092330 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176951.P3222735232918889430

/-! ## A176951.P11802460309820203444

`and(-A261143(n), A092330(n+1))`
-/

namespace A176951.P11802460309820203444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A261143 n) (A092330 (n + 1))

end

end A176951.P11802460309820203444

/-! ## A176951.P11216366602609249307

`char[A238342(n)]*A092330(n+1)`
-/

namespace A176951.P11216366602609249307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A092330 (n + 1)

end

end A176951.P11216366602609249307

/-! ## A176951.P3780618747735274745

`char[A242447(n)]*A092330(n+1)`
-/

namespace A176951.P3780618747735274745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A092330 (n + 1)

end

end A176951.P3780618747735274745

/-! ## A176951.P14933096458992410054

`lcm(Δ[A051699(n)], A092330(n+1))`
-/

namespace A176951.P14933096458992410054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A092330 (n + 1))

end

end A176951.P14933096458992410054

/-!
# A176953: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=1, k=-1 and l=-1.

The programs for A176953, there is no canonical definition to state claims against.
-/

/-! ## A176953.P16019079063285294389

`2-A026819(A150618(n))`
-/

namespace A176953.P16019079063285294389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026819 (A150618 n).toNat

end

end A176953.P16019079063285294389

/-! ## A176953.P14161856348972363280

`2-A349177(A352702(n))`
-/

namespace A176953.P14161856348972363280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A349177 (A352702 n).toNat

end

end A176953.P14161856348972363280

/-! ## A176953.P16902396082183160569

`3-A170887(A000051(n))`
-/

namespace A176953.P16902396082183160569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A170887 (A000051 n).toNat

end

end A176953.P16902396082183160569

/-!
# A176955: Primes p such that q=3//p, r=p//3, R(q) and R(r) are primes.

The programs for A176955, there is no canonical definition to state claims against.
-/

/-! ## A176955.P3175514720690518495

`A090933(A105407(n+1)+1)`
-/

namespace A176955.P3175514720690518495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090933 (A105407 (n + 1) + 1).toNat

end

end A176955.P3175514720690518495

/-!
# A176956: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=-1 and l=-1.

The programs for A176956, there is no canonical definition to state claims against.
-/

/-! ## A176956.P13546901910679782452

`A289559(4^n)`
-/

namespace A176956.P13546901910679782452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289559 (4 ^ n)

end

end A176956.P13546901910679782452

/-! ## A176956.P13372611583509332071

`A081594(∑[ceil(4^n/2)])`
-/

namespace A176956.P13372611583509332071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176956.P13372611583509332071

/-! ## A176956.P16546932754096186898

`A058207((2*4^n+1)/3)`
-/

namespace A176956.P16546932754096186898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (SequenceMachineLib.roundAway ((2 * 4 ^ n + 1 : ℚ) / 3)).toNat

end

end A176956.P16546932754096186898

/-!
# A176957: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=-1 and l=-1.

The programs for A176957, there is no canonical definition to state claims against.
-/

/-! ## A176957.P2863985931328253338

`A228083(A345165(n+1)+A329558(n))`
-/

namespace A176957.P2863985931328253338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228083 (A345165 (n + 1) + A329558 n).toNat

end

end A176957.P2863985931328253338

/-! ## A176957.P5725431707206546612

`A192382(n+1)+A124754(A197950(n+1))`
-/

namespace A176957.P5725431707206546612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A124754 (A197950 (n + 1)).toNat

end

end A176957.P5725431707206546612

/-!
# A176958: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=-1 and l=-1.

The programs for A176958, there is no canonical definition to state claims against.
-/

/-! ## A176958.P12154050542661262557

`A201643(a(n-2)+n)` with `a(0)=1, a(1)=5`
-/

namespace A176958.P12154050542661262557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A201643 (a (n - 2) + (n : ℤ)).toNat

end

end A176958.P12154050542661262557

/-!
# A176960: Primes p such that p^2 - 8, p^2 - 6 and p^2 - 2 are prime.

The programs for A176960, there is no canonical definition to state claims against.
-/

/-! ## A176960.P17221607685702900669

`∩[A062326(n+1), A175238(n+1)]`
-/

namespace A176960.P17221607685702900669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176960.P17221607685702900669

/-!
# A176961: a(n) = (3*2^(n+1) - 8 - (-2)^n)/6.

The programs for A176961, the canonical program `A176961.P7185765968913141600` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176961 has offset 1).

The definition of A176961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*2^(n+2)-8-(-2)^(n+1))/6` (program `A176961.P17815613938115269921`, by `A176961.P17815613938115269921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176961.P9987070057197251552

`2^(n+1)-A084247(n)`
-/

namespace A176961.P9987070057197251552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A084247 n

end

end A176961.P9987070057197251552

namespace A176961

/-- `2^(n+1)-A084247(n)` -/
def P9987070057197251552.Spec : Prop :=
  ∀ n, P9987070057197251552.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P7185765968913141600

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176961

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P7185765968913141600.Spec : Prop :=
  ∀ n, P7185765968913141600.a n = A176961 (n + 1)

theorem P7185765968913141600.correct : P7185765968913141600.Spec := by
  intro n
  simp only [A176961, Nat.add_sub_cancel]

end A176961

/-! ## A176961.P17815613938115269921

`(3*2^(n+2)-8-(-2)^(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176961.P17815613938115269921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 2 ^ (n + 2) : ℤ) - 8 - (-2) ^ (n + 1) : ℚ) / 6

end

end A176961.P17815613938115269921

namespace A176961

/-- `(3*2^(n+2)-8-(-2)^(n+1))/6` -/
def P17815613938115269921.Spec : Prop :=
  ∀ n, P17815613938115269921.a n = (A176961 (n + 1) : ℚ)

theorem P17815613938115269921.correct : P17815613938115269921.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A176961, Nat.add_sub_cancel, A176961.P17815613938115269921.a, A176961.P7185765968913141600.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A176961, Nat.add_sub_cancel, A176961.P17815613938115269921.a, A176961.P7185765968913141600.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176961

/-! ## A176961.P16933056008854065845

`∑[ogf((1+x+2x^2)/(1-4x^2))]`
-/

namespace A176961.P16933056008854065845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176961.P16933056008854065845

namespace A176961

/-- `∑[ogf((1+x+2x^2)/(1-4x^2))]` -/
def P16933056008854065845.Spec : Prop :=
  ∀ n, P16933056008854065845.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P13413398950063882065

`ogf((1+x+2x^2)/(1-x-4x^2+4x^3))`
-/

namespace A176961.P13413398950063882065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -1, -4, 4] n

end

end A176961.P13413398950063882065

namespace A176961

/-- `ogf((1+x+2x^2)/(1-x-4x^2+4x^3))` -/
def P13413398950063882065.Spec : Prop :=
  ∀ n, P13413398950063882065.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P6776243669216908187

`4*(a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A176961.P6776243669216908187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 2) + 1)

end

end A176961.P6776243669216908187

namespace A176961

/-- `4*(a(n-2)+1)` -/
def P6776243669216908187.Spec : Prop :=
  ∀ n, (P6776243669216908187.a n : ℤ) = A176961 (n + 1)

end A176961

/-! ## A176961.P4206223288070956102

`∑[4*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A176961.P4206223288070956102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176961.P4206223288070956102

namespace A176961

/-- `∑[4*a(n-2)]` -/
def P4206223288070956102.Spec : Prop :=
  ∀ n, (P4206223288070956102.a n : ℤ) = A176961 (n + 1)

end A176961

/-! ## A176961.P16966009691597828936

`8-4*(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A176961.P16966009691597828936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  8 - 4 * (1 - a (n - 2))

end

end A176961.P16966009691597828936

namespace A176961

/-- `8-4*(1-a(n-2))` -/
def P16966009691597828936.Spec : Prop :=
  ∀ n, P16966009691597828936.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P6519367291945802861

`a(n-2)/(1-3/4)+4` with `a(0)=1, a(1)=2`
-/

namespace A176961.P6519367291945802861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (1 - (3 : ℚ) / 4) + 4

end

end A176961.P6519367291945802861

namespace A176961

/-- `a(n-2)/(1-3/4)+4` -/
def P6519367291945802861.Spec : Prop :=
  ∀ n, P6519367291945802861.a n = (A176961 (n + 1) : ℚ)

end A176961

/-! ## A176961.P2995805725784706531

`4-a(n-2)/(3/4-1)` with `a(0)=1, a(1)=2`
-/

namespace A176961.P2995805725784706531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A176961.P2995805725784706531

namespace A176961

/-- `4-a(n-2)/(3/4-1)` -/
def P2995805725784706531.Spec : Prop :=
  ∀ n, P2995805725784706531.a n = (A176961 (n + 1) : ℚ)

end A176961

/-! ## A176961.P16751614830767747153

`∑[a(n-1)+a(n-1)+(-2)^n]` with `a(0)=1, a(1)=1`
-/

namespace A176961.P16751614830767747153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176961.P16751614830767747153

namespace A176961

/-- `∑[a(n-1)+a(n-1)+(-2)^n]` -/
def P16751614830767747153.Spec : Prop :=
  ∀ n, P16751614830767747153.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P6481831692929853018

`a(n-2)+a(n-2)+a(n-2)+a(n-2)+4` with `a(0)=1, a(1)=2`
-/

namespace A176961.P6481831692929853018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 2) + 4)))

end

end A176961.P6481831692929853018

namespace A176961

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)+4` -/
def P6481831692929853018.Spec : Prop :=
  ∀ n, (P6481831692929853018.a n : ℤ) = A176961 (n + 1)

end A176961

/-! ## A176961.P2530555458801036865

`∑[A283507(n)]+n`
-/

namespace A176961.P2530555458801036865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A176961.P2530555458801036865

namespace A176961

/-- `∑[A283507(n)]+n` -/
def P2530555458801036865.Spec : Prop :=
  ∀ n, P2530555458801036865.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P1696988200304547362

`A081631(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A176961.P1696988200304547362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081631 (n - 1) + a (n - 1)

end

end A176961.P1696988200304547362

namespace A176961

/-- `A081631(n-1)+a(n-1)` -/
def P1696988200304547362.Spec : Prop :=
  ∀ n, P1696988200304547362.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P13724695964042174242

`2^n+A000975(or(1, n))-1`
-/

namespace A176961.P13724695964042174242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A000975 (Nat.lor 1 n) - 1)

end

end A176961.P13724695964042174242

namespace A176961

/-- `2^n+A000975(or(1, n))-1` -/
def P13724695964042174242.Spec : Prop :=
  ∀ n, P13724695964042174242.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P6384975513657393591

`2*(A095121(n)-a(n-1))` with `a(0)=1`
-/

namespace A176961.P6384975513657393591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A095121 n - a (n - 1))

end

end A176961.P6384975513657393591

namespace A176961

/-- `2*(A095121(n)-a(n-1))` -/
def P6384975513657393591.Spec : Prop :=
  ∀ n, P6384975513657393591.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P232082959281478133

`A084640(n)+and(-(-1)^n, ∑[(-2)^n])`
-/

namespace A176961.P232082959281478133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 n + Int.land (-((-1) ^ n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176961.P232082959281478133

namespace A176961

/-- `A084640(n)+and(-(-1)^n, ∑[(-2)^n])` -/
def P232082959281478133.Spec : Prop :=
  ∀ n, P232082959281478133.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P13444711143898796499

`A052992(n)+A000225(n)`
-/

namespace A176961.P13444711143898796499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n + A000225 n

end

end A176961.P13444711143898796499

namespace A176961

/-- `A052992(n)+A000225(n)` -/
def P13444711143898796499.Spec : Prop :=
  ∀ n, P13444711143898796499.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P6816984537837912910

`A080610(n)+A051049(n)`
-/

namespace A176961.P6816984537837912910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080610 n + A051049 n

end

end A176961.P6816984537837912910

namespace A176961

/-- `A080610(n)+A051049(n)` -/
def P6816984537837912910.Spec : Prop :=
  ∀ n, P6816984537837912910.a n = A176961 (n + 1)

end A176961

/-! ## A176961.P18074415787408354326

`A166752(n)+A084640(n)`
-/

namespace A176961.P18074415787408354326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n + A084640 n

end

end A176961.P18074415787408354326

namespace A176961

/-- `A166752(n)+A084640(n)` -/
def P18074415787408354326.Spec : Prop :=
  ∀ n, P18074415787408354326.a n = A176961 (n + 1)

end A176961

/-!
# A176962: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=2, k=-1 and l=1.

The programs for A176962, there is no canonical definition to state claims against.
-/

/-! ## A176962.P12276195409910796820

`A256938(log2(A011782(n)))+A057427(n)`
-/

namespace A176962.P12276195409910796820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A057427 n

end

end A176962.P12276195409910796820

/-! ## A176962.P16728928199327717542

`A256938(log2(A011782(n)))-A057428(n)`
-/

namespace A176962.P16728928199327717542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A057428 n

end

end A176962.P16728928199327717542

/-! ## A176962.P15597001269282382709

`A256938(n-A057427(n))+A057427(n)`
-/

namespace A176962.P15597001269282382709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A176962.P15597001269282382709

/-! ## A176962.P13909001641631931782

`A256938(A057428(n)+n)-A057428(n)`
-/

namespace A176962.P13909001641631931782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (A057428 n + (n : ℤ)).toNat - A057428 n

end

end A176962.P13909001641631931782

/-! ## A176962.P520937216182336540

`A256938(A337108(n²))+A057427(n)`
-/

namespace A176962.P520937216182336540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (A337108 (n ^ 2)).toNat + A057427 n

end

end A176962.P520937216182336540

/-! ## A176962.P5776950865095286565

`A256938(A337108(n²))+char[A038722(n+1)]`
-/

namespace A176962.P5776950865095286565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (A337108 (n ^ 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A176962.P5776950865095286565

/-! ## A176962.P18258313144708593855

`A256938(A337108(n²))+A059841(A003972(n+1))`
-/

namespace A176962.P18258313144708593855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (A337108 (n ^ 2)).toNat + A059841 (A003972 (n + 1)).toNat

end

end A176962.P18258313144708593855

/-! ## A176962.P985361196989063291

`A256938(A337108(n²))+A059841(A006093(n+1))`
-/

namespace A176962.P985361196989063291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (A337108 (n ^ 2)).toNat + A059841 (A006093 (n + 1)).toNat

end

end A176962.P985361196989063291

/-! ## A176962.P2037835351268265398

`A256938(A337108(n²))+A059841(A039915(n+1))`
-/

namespace A176962.P2037835351268265398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256938 (A337108 (n ^ 2)).toNat + A059841 (A039915 (n + 1)).toNat

end

end A176962.P2037835351268265398

/-! ## A176962.P3586059650037437031

`A256938(A337108(n²))%A000533(n)+1`
-/

namespace A176962.P3586059650037437031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256938 (A337108 (n ^ 2)).toNat) (A000533 n) + 1

end

end A176962.P3586059650037437031

/-!
# A176963: a(n) = (10*4^n - 3*(-4)^n - 22)/30.

The programs for A176963, the canonical program `A176963.P12615328682470765563` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176963 has offset 1).

The definition of A176963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176963.P12615328682470765563

`(10*4^(n+1)-3*(-4)^(n+1)-22)/30`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176963

/-- `(10*4^(n+1)-3*(-4)^(n+1)-22)/30` -/
def P12615328682470765563.Spec : Prop :=
  ∀ n, P12615328682470765563.a n = (A176963 (n + 1) : ℚ)

end A176963

/-! ## A176963.P1137379381152008517

`16*a(n-2)+11` with `a(0)=1, a(1)=3`
-/

namespace A176963.P1137379381152008517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  16 * a (n - 2) + 11

end

end A176963.P1137379381152008517

namespace A176963

/-- `16*a(n-2)+11` -/
def P1137379381152008517.Spec : Prop :=
  ∀ n, (P1137379381152008517.a n : ℤ) = A176963 (n + 1)

end A176963

/-! ## A176963.P8752145797099288018

`lcm(16, a(n-2))+11` with `a(0)=1, a(1)=3`
-/

namespace A176963.P8752145797099288018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 16 (a (n - 2)) + 11

end

end A176963.P8752145797099288018

namespace A176963

/-- `lcm(16, a(n-2))+11` -/
def P8752145797099288018.Spec : Prop :=
  ∀ n, (P8752145797099288018.a n : ℤ) = A176963 (n + 1)

end A176963

/-! ## A176963.P11125949802559141921

`or(11, 16*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A176963.P11125949802559141921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 11 (16 * a (n - 2))

end

end A176963.P11125949802559141921

namespace A176963

/-- `or(11, 16*a(n-2))` -/
def P11125949802559141921.Spec : Prop :=
  ∀ n, (P11125949802559141921.a n : ℤ) = A176963 (n + 1)

end A176963

/-! ## A176963.P131710343829639091

`xor(11, 16*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A176963.P131710343829639091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 11 (16 * a (n - 2))

end

end A176963.P131710343829639091

namespace A176963

/-- `xor(11, 16*a(n-2))` -/
def P131710343829639091.Spec : Prop :=
  ∀ n, (P131710343829639091.a n : ℤ) = A176963 (n + 1)

end A176963

/-! ## A176963.P6224307764148506210

`∑[A266984(n)+n%2]`
-/

namespace A176963.P6224307764148506210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266984 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176963.P6224307764148506210

namespace A176963

/-- `∑[A266984(n)+n%2]` -/
def P6224307764148506210.Spec : Prop :=
  ∀ n, P6224307764148506210.a n = A176963 (n + 1)

end A176963

/-! ## A176963.P9752626423209422873

`floor(A281217(2*n+1)/2)`
-/

namespace A176963.P9752626423209422873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281217 (2 * n + 1) : ℚ) / 2⌋

end

end A176963.P9752626423209422873

namespace A176963

/-- `floor(A281217(2*n+1)/2)` -/
def P9752626423209422873.Spec : Prop :=
  ∀ n, P9752626423209422873.a n = A176963 (n + 1)

end A176963

/-! ## A176963.P7613853011013423046

`or(A007583(n), A112627(n+1))`
-/

namespace A176963.P7613853011013423046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007583 n) (A112627 (n + 1))

end

end A176963.P7613853011013423046

namespace A176963

/-- `or(A007583(n), A112627(n+1))` -/
def P7613853011013423046.Spec : Prop :=
  ∀ n, P7613853011013423046.a n = A176963 (n + 1)

end A176963

/-! ## A176963.P7035797508366620154

`∑[lcm(A009117(n), A029744(n+1))]`
-/

namespace A176963.P7035797508366620154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009117 n) (A029744 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176963.P7035797508366620154

namespace A176963

/-- `∑[lcm(A009117(n), A029744(n+1))]` -/
def P7035797508366620154.Spec : Prop :=
  ∀ n, (P7035797508366620154.a n : ℤ) = A176963 (n + 1)

end A176963

/-! ## A176963.P7006585710968937952

`∑[(A131577(n)+A122803(n))*A122803(n)]`
-/

namespace A176963.P7006585710968937952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A122803 n) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176963.P7006585710968937952

namespace A176963

/-- `∑[(A131577(n)+A122803(n))*A122803(n)]` -/
def P7006585710968937952.Spec : Prop :=
  ∀ n, P7006585710968937952.a n = A176963 (n + 1)

end A176963

/-! ## A176963.P6920336654234650998

`∑[A011782(A053438(n+1))-A011782(2*n)]`
-/

namespace A176963.P6920336654234650998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A053438 (n + 1)).toNat - A011782 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176963.P6920336654234650998

namespace A176963

/-- `∑[A011782(A053438(n+1))-A011782(2*n)]` -/
def P6920336654234650998.Spec : Prop :=
  ∀ n, P6920336654234650998.a n = A176963 (n + 1)

end A176963

/-! ## A176963.P16510205024391675725

`A002450(n+1)+A112627(n+1)-A113876(n+1)`
-/

namespace A176963.P16510205024391675725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) + (A112627 (n + 1) - A113876 (n + 1))

end

end A176963.P16510205024391675725

namespace A176963

/-- `A002450(n+1)+A112627(n+1)-A113876(n+1)` -/
def P16510205024391675725.Spec : Prop :=
  ∀ n, P16510205024391675725.a n = A176963 (n + 1)

end A176963

/-!
# A176964: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=-1 and l=1.

The programs for A176964, there is no canonical definition to state claims against.
-/

/-! ## A176964.P2703643616085512179

`or(1, A007306(A277358(n)))`
-/

namespace A176964.P2703643616085512179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007306 (A277358 n).toNat)

end

end A176964.P2703643616085512179

/-! ## A176964.P10070816146989763040

`or(1, A001462(A364337(n)))`
-/

namespace A176964.P10070816146989763040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001462 (A364337 n).toNat)

end

end A176964.P10070816146989763040

/-!
# A176965: a(n) = 2^(n-1) - (2^n*(-1)^n + 2)/3.

The programs for A176965, the canonical program `A176965.P116604102258624171` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176965 has offset 1).

The definition of A176965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176965.P116604102258624171

`2^n-(2^(n+1)*(-1)^(n+1)+2)/3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176965

/-- `2^n-(2^(n+1)*(-1)^(n+1)+2)/3` -/
def P116604102258624171.Spec : Prop :=
  ∀ n, P116604102258624171.a n = (A176965 (n + 1) : ℚ)

end A176965

/-! ## A176965.P10473305725791317403

`∑[ogf((1-x+2x^2)/(1-4x^2))]`
-/

namespace A176965.P10473305725791317403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176965.P10473305725791317403

namespace A176965

/-- `∑[ogf((1-x+2x^2)/(1-4x^2))]` -/
def P10473305725791317403.Spec : Prop :=
  ∀ n, P10473305725791317403.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P6117404479898603229

`ogf((1-x+2x^2)/(1-x-4x^2+4x^3))`
-/

namespace A176965.P6117404479898603229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -1, -4, 4] n

end

end A176965.P6117404479898603229

namespace A176965

/-- `ogf((1-x+2x^2)/(1-x-4x^2+4x^3))` -/
def P6117404479898603229.Spec : Prop :=
  ∀ n, P6117404479898603229.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P11171452984728354234

`or(2, 4*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A176965.P11171452984728354234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lor 2 (4 * a (n - 2))

end

end A176965.P11171452984728354234

namespace A176965

/-- `or(2, 4*a(n-2))` -/
def P11171452984728354234.Spec : Prop :=
  ∀ n, (P11171452984728354234.a n : ℤ) = A176965 (n + 1)

end A176965

/-! ## A176965.P3232581264754042093

`xor(2, 4*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A176965.P3232581264754042093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor 2 (4 * a (n - 2))

end

end A176965.P3232581264754042093

namespace A176965

/-- `xor(2, 4*a(n-2))` -/
def P3232581264754042093.Spec : Prop :=
  ∀ n, (P3232581264754042093.a n : ℤ) = A176965 (n + 1)

end A176965

/-! ## A176965.P16834433587144530176

`∑[4*a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=6`
-/

namespace A176965.P16834433587144530176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 6] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176965.P16834433587144530176

namespace A176965

/-- `∑[4*a(n-2)]` -/
def P16834433587144530176.Spec : Prop :=
  ∀ n, P16834433587144530176.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P12016747531622511461

`2*(2^n-1-a(n-1))` with `a(0)=1`
-/

namespace A176965.P12016747531622511461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 ^ n : ℤ) - 1 - a (n - 1))

end

end A176965.P12016747531622511461

namespace A176965

/-- `2*(2^n-1-a(n-1))` -/
def P12016747531622511461.Spec : Prop :=
  ∀ n, P12016747531622511461.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P10549163370806636874

`lcm(2, a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=0`
-/

namespace A176965.P10549163370806636874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lcm 2 (a (n - 2) + (a (n - 2) + 1))

end

end A176965.P10549163370806636874

namespace A176965

/-- `lcm(2, a(n-2)+a(n-2)+1)` -/
def P10549163370806636874.Spec : Prop :=
  ∀ n, (P10549163370806636874.a n : ℤ) = A176965 (n + 1)

end A176965

/-! ## A176965.P11731948603945923653

`A061547(xor(1, n)+1)`
-/

namespace A176965.P11731948603945923653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (Nat.xor 1 n + 1)

end

end A176965.P11731948603945923653

namespace A176965

/-- `A061547(xor(1, n)+1)` -/
def P11731948603945923653.Spec : Prop :=
  ∀ n, P11731948603945923653.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P11290089953951154158

`floor(A096773(n+2)/2)`
-/

namespace A176965.P11290089953951154158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096773 (n + 2) : ℚ) / 2⌋

end

end A176965.P11290089953951154158

namespace A176965

/-- `floor(A096773(n+2)/2)` -/
def P11290089953951154158.Spec : Prop :=
  ∀ n, P11290089953951154158.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P40485265380572632

`A061547(A014681(n+1))`
-/

namespace A176965.P40485265380572632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (A014681 (n + 1)).toNat

end

end A176965.P40485265380572632

namespace A176965

/-- `A061547(A014681(n+1))` -/
def P40485265380572632.Spec : Prop :=
  ∀ n, P40485265380572632.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P2669022186168044890

`A061547(A103889(n+1))`
-/

namespace A176965.P2669022186168044890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (A103889 (n + 1)).toNat

end

end A176965.P2669022186168044890

namespace A176965

/-- `A061547(A103889(n+1))` -/
def P2669022186168044890.Spec : Prop :=
  ∀ n, P2669022186168044890.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P16857676961021445089

`A282123(n)%A048573(n)`
-/

namespace A176965.P16857676961021445089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282123 n) (A048573 n)

end

end A176965.P16857676961021445089

namespace A176965

/-- `A282123(n)%A048573(n)` -/
def P16857676961021445089.Spec : Prop :=
  ∀ n, P16857676961021445089.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P5976492230415921454

`A277954(n)%A094361(n)`
-/

namespace A176965.P5976492230415921454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277954 n) (A094361 n)

end

end A176965.P5976492230415921454

namespace A176965

/-- `A277954(n)%A094361(n)` -/
def P5976492230415921454.Spec : Prop :=
  ∀ n, P5976492230415921454.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P13214731636043916548

`and(A277954(n), A282799(n))`
-/

namespace A176965.P13214731636043916548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277954 n) (A282799 n)

end

end A176965.P13214731636043916548

namespace A176965

/-- `and(A277954(n), A282799(n))` -/
def P13214731636043916548.Spec : Prop :=
  ∀ n, P13214731636043916548.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P4727888504808269505

`and(A282123(n), A282799(n))`
-/

namespace A176965.P4727888504808269505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282123 n) (A282799 n)

end

end A176965.P4727888504808269505

namespace A176965

/-- `and(A282123(n), A282799(n))` -/
def P4727888504808269505.Spec : Prop :=
  ∀ n, P4727888504808269505.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P988600779933187343

`xor(A000975(n), A051049(n))`
-/

namespace A176965.P988600779933187343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A051049 n)

end

end A176965.P988600779933187343

namespace A176965

/-- `xor(A000975(n), A051049(n))` -/
def P988600779933187343.Spec : Prop :=
  ∀ n, P988600779933187343.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P11326255929939986890

`xor(A000225(n), A052992(n))`
-/

namespace A176965.P11326255929939986890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A052992 n)

end

end A176965.P11326255929939986890

namespace A176965

/-- `xor(A000225(n), A052992(n))` -/
def P11326255929939986890.Spec : Prop :=
  ∀ n, P11326255929939986890.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P13391186077817506156

`xor(A001045(n), A084181(n))`
-/

namespace A176965.P13391186077817506156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001045 n) (A084181 n)

end

end A176965.P13391186077817506156

namespace A176965

/-- `xor(A001045(n), A084181(n))` -/
def P13391186077817506156.Spec : Prop :=
  ∀ n, P13391186077817506156.a n = A176965 (n + 1)

end A176965

/-! ## A176965.P13499618740502944889

`xor(A084184(n), A092809(n))`
-/

namespace A176965.P13499618740502944889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084184 n) (A092809 n)

end

end A176965.P13499618740502944889

namespace A176965

/-- `xor(A084184(n), A092809(n))` -/
def P13499618740502944889.Spec : Prop :=
  ∀ n, P13499618740502944889.a n = A176965 (n + 1)

end A176965

/-!
# A176966: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=-1 and l=1.

The programs for A176966, there is no canonical definition to state claims against.
-/

/-! ## A176966.P12811337083374696586

`A018752(A340520(n+1))-(floor(acot(n))-1)`
-/

namespace A176966.P12811337083374696586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018752 (A340520 (n + 1)).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A176966.P12811337083374696586

/-! ## A176966.P8143785671613633825

`A001837(n+1)%A248149(A202213(n))`
-/

namespace A176966.P8143785671613633825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001837 (n + 1)) (A248149 (A202213 n).toNat)

end

end A176966.P8143785671613633825

/-!
# A176967: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=-1 and l=1.

The programs for A176967, there is no canonical definition to state claims against.
-/

/-! ## A176967.P338068567815402822

`Δ[n*A000267(A052332(n))]`
-/

namespace A176967.P338068567815402822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000267 (A052332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176967.P338068567815402822

/-!
# A176968: Expansion of x*( 1+2*x-x^2-6*x^3 ) / ( 1-9*x^2+12*x^4 ).

The programs for A176968, the canonical program `A176968.P15182625949628111882` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176968 has offset 1).

The definition of A176968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2-6x^3)/(1-9x^2+12x^4))` (program `A176968.P15182625949628111882`, by `A176968.P15182625949628111882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176968.P15182625949628111882

`ogf((1+2x-x^2-6x^3)/(1-9x^2+12x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176968

/-- `ogf((1+2x-x^2-6x^3)/(1-9x^2+12x^4))` -/
def P15182625949628111882.Spec : Prop :=
  ∀ n, P15182625949628111882.a n = A176968 (n + 1)

theorem P15182625949628111882.correct : P15182625949628111882.Spec := by
  intro n
  simp only [A176968, Nat.add_sub_cancel]

end A176968

/-! ## A176968.P15356991129516376540

`a(n-1)+a(n-2)*A010696(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A176968.P15356991129516376540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) * A010696 (n + 1)

end

end A176968.P15356991129516376540

namespace A176968

/-- `a(n-1)+a(n-2)*A010696(n+1)` -/
def P15356991129516376540.Spec : Prop :=
  ∀ n, P15356991129516376540.a n = A176968 (n + 1)

end A176968

/-! ## A176968.P5563494727236935935

`3*A133640(a(n-2))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A176968.P5563494727236935935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  3 * A133640 (a (n - 2)).toNat

end

end A176968.P5563494727236935935

namespace A176968

/-- `3*A133640(a(n-2))` -/
def P5563494727236935935.Spec : Prop :=
  ∀ n, P5563494727236935935.a n = A176968 (n + 1)

end A176968

/-!
# A176969: Numbers n such that n^2 + 13^2 is prime.

The programs for A176969, there is no canonical definition to state claims against.
-/

/-! ## A176969.P12477170276126502423

`sqrt(A260437(p?[24*(n+1)²-1]))`
-/

namespace A176969.P12477170276126502423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A260437 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℝ)

end

end A176969.P12477170276126502423

/-! ## A176969.P6244020746753355654

`eq[A001222(A096000(n)), A043560(n)]`
-/

namespace A176969.P6244020746753355654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096000 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176969.P6244020746753355654

/-! ## A176969.P8581008153132962229

`eq[A033999(n), A330241(A033581(n))]`
-/

namespace A176969.P8581008153132962229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (A033581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176969.P8581008153132962229

/-! ## A176969.P9908085891469875857

`∩[A056239(A001248(n+1)), A143826(n+1)]`
-/

namespace A176969.P9908085891469875857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001248 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176969.P9908085891469875857

/-!
# A176970: Numbers that are the product of two odd numbers x*y such that 2^x (mod y) = 2^y (mod x) = 2.

The programs for A176970, there is no canonical definition to state claims against.
-/

/-! ## A176970.P13497015107491105988

`∪[A337715(n+1), A001248(n+2)]`
-/

namespace A176970.P13497015107491105988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176970.P13497015107491105988

/-! ## A176970.P15235089912144368816

`A179707(A032555(n+2))`
-/

namespace A176970.P15235089912144368816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (A032555 (n + 2)).toNat

end

end A176970.P15235089912144368816

/-! ## A176970.P11380839954214656762

`A179707(A032559(n+2))`
-/

namespace A176970.P11380839954214656762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (A032559 (n + 2)).toNat

end

end A176970.P11380839954214656762

/-! ## A176970.P5616180586004377111

`A179707(A077739(n+2))`
-/

namespace A176970.P5616180586004377111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (A077739 (n + 2)).toNat

end

end A176970.P5616180586004377111

/-!
# A176971: Expansion of (1+x)/(1+x-x^3) in powers of x.

The programs for A176971, the canonical program `A176971.P7047627818100232272` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176971 has offset 0).

The definition of A176971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+x-x^3))` (program `A176971.P7047627818100232272`, by `A176971.P7047627818100232272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176971.P7047627818100232272

`ogf((1+x)/(1+x-x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176971

/-- `ogf((1+x)/(1+x-x^3))` -/
def P7047627818100232272.Spec : Prop :=
  ∀ n, P7047627818100232272.a n = A176971 n

theorem P7047627818100232272.correct : P7047627818100232272.Spec := by
  intro n
  simp only [A176971]

end A176971

/-! ## A176971.P5920935341150189355

`a(n-3)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A176971.P5920935341150189355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) - a (n - 1)

end

end A176971.P5920935341150189355

namespace A176971

/-- `a(n-3)-a(n-1)` -/
def P5920935341150189355.Spec : Prop :=
  ∀ n, P5920935341150189355.a n = A176971 n

end A176971

/-! ## A176971.P8211565582852989105

`Δ[A050935(n+2)]*A062157(n+1)`
-/

namespace A176971.P8211565582852989105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 (n + 1)

end

end A176971.P8211565582852989105

namespace A176971

/-- `Δ[A050935(n+2)]*A062157(n+1)` -/
def P8211565582852989105.Spec : Prop :=
  ∀ n, P8211565582852989105.a n = A176971 n

end A176971

/-! ## A176971.P15050319103875096056

`∑[A104769(n+2)]`
-/

namespace A176971.P15050319103875096056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176971.P15050319103875096056

namespace A176971

/-- `∑[A104769(n+2)]` -/
def P15050319103875096056.Spec : Prop :=
  ∀ n, P15050319103875096056.a n = A176971 n

end A176971

/-! ## A176971.P12874379844860220006

`1-A077905(n+1)`
-/

namespace A176971.P12874379844860220006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077905 (n + 1)

end

end A176971.P12874379844860220006

namespace A176971

/-- `1-A077905(n+1)` -/
def P12874379844860220006.Spec : Prop :=
  ∀ n, P12874379844860220006.a n = A176971 n

end A176971

/-! ## A176971.P11762449673969721763

`(-1)^n*A078013(n)`
-/

namespace A176971.P11762449673969721763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A078013 n

end

end A176971.P11762449673969721763

namespace A176971

/-- `(-1)^n*A078013(n)` -/
def P11762449673969721763.Spec : Prop :=
  ∀ n, P11762449673969721763.a n = A176971 n

end A176971

/-! ## A176971.P165400849046696418

`A078013(n)/A033999(n)`
-/

namespace A176971.P165400849046696418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078013 n : ℚ) / (A033999 n : ℚ)

end

end A176971.P165400849046696418

namespace A176971

/-- `A078013(n)/A033999(n)` -/
def P165400849046696418.Spec : Prop :=
  ∀ n, P165400849046696418.a n = (A176971 n : ℚ)

end A176971

/-! ## A176971.P9313258927822157492

`A078013(n)/A062157(n+1)`
-/

namespace A176971.P9313258927822157492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078013 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A176971.P9313258927822157492

namespace A176971

/-- `A078013(n)/A062157(n+1)` -/
def P9313258927822157492.Spec : Prop :=
  ∀ n, P9313258927822157492.a n = (A176971 n : ℚ)

end A176971

/-! ## A176971.P1180261147759944352

`A247917(n)-A104769(n)`
-/

namespace A176971.P1180261147759944352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n - A104769 n

end

end A176971.P1180261147759944352

namespace A176971

/-- `A247917(n)-A104769(n)` -/
def P1180261147759944352.Spec : Prop :=
  ∀ n, P1180261147759944352.a n = A176971 n

end A176971

/-! ## A176971.P11416759191661688744

`∑[-A247917(n+1)]`
-/

namespace A176971.P11416759191661688744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A247917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176971.P11416759191661688744

namespace A176971

/-- `∑[-A247917(n+1)]` -/
def P11416759191661688744.Spec : Prop :=
  ∀ n, P11416759191661688744.a n = A176971 n

end A176971

/-! ## A176971.P12288565130993632851

`∑[A007814(2*n+1)-A247917(n+1)]`
-/

namespace A176971.P12288565130993632851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A247917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176971.P12288565130993632851

namespace A176971

/-- `∑[A007814(2*n+1)-A247917(n+1)]` -/
def P12288565130993632851.Spec : Prop :=
  ∀ n, P12288565130993632851.a n = A176971 n

end A176971

/-! ## A176971.P16316895476065386929

`A104770(n)-A247917(n+3)`
-/

namespace A176971.P16316895476065386929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 n - A247917 (n + 3)

end

end A176971.P16316895476065386929

namespace A176971

/-- `A104770(n)-A247917(n+3)` -/
def P16316895476065386929.Spec : Prop :=
  ∀ n, P16316895476065386929.a n = A176971 n

end A176971

/-! ## A176971.P15335297301367120552

`A104770(n+1)+Δ[A104769(n+1)]`
-/

namespace A176971.P15335297301367120552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 1) + (f1 (n + 1) - f1 n)

end

end A176971.P15335297301367120552

namespace A176971

/-- `A104770(n+1)+Δ[A104769(n+1)]` -/
def P15335297301367120552.Spec : Prop :=
  ∀ n, P15335297301367120552.a n = A176971 n

end A176971

/-! ## A176971.P11295022904854060182

`Δ[A104769(n)-A104770(n)]-A104769(n)`
-/

namespace A176971.P11295022904854060182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n - A104770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104769 n

end

end A176971.P11295022904854060182

namespace A176971

/-- `Δ[A104769(n)-A104770(n)]-A104769(n)` -/
def P11295022904854060182.Spec : Prop :=
  ∀ n, P11295022904854060182.a n = A176971 n

end A176971

/-! ## A176971.P15434544446905252791

`A247917(n+1)+A104770(n+2)`
-/

namespace A176971.P15434544446905252791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1) + A104770 (n + 2)

end

end A176971.P15434544446905252791

namespace A176971

/-- `A247917(n+1)+A104770(n+2)` -/
def P15434544446905252791.Spec : Prop :=
  ∀ n, P15434544446905252791.a n = A176971 n

end A176971

/-! ## A176971.P5304093272777312711

`A104770(n+2)-A104769(n+2)`
-/

namespace A176971.P5304093272777312711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 2) - A104769 (n + 2)

end

end A176971.P5304093272777312711

namespace A176971

/-- `A104770(n+2)-A104769(n+2)` -/
def P5304093272777312711.Spec : Prop :=
  ∀ n, P5304093272777312711.a n = A176971 n

end A176971

/-! ## A176971.P948349234173388427

`A104771(n)+A104770(n+4)`
-/

namespace A176971.P948349234173388427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n + A104770 (n + 4)

end

end A176971.P948349234173388427

namespace A176971

/-- `A104771(n)+A104770(n+4)` -/
def P948349234173388427.Spec : Prop :=
  ∀ n, P948349234173388427.a n = A176971 n

end A176971

/-! ## A176971.P629082029458782927

`A247917(n)+∑[A247917(n)-A104771(n)]`
-/

namespace A176971.P629082029458782927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n - A104771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176971.P629082029458782927

namespace A176971

/-- `A247917(n)+∑[A247917(n)-A104771(n)]` -/
def P629082029458782927.Spec : Prop :=
  ∀ n, P629082029458782927.a n = A176971 n

end A176971

/-! ## A176971.P18188269514067135025

`A133037(n)-Δ[A329227(n)]`
-/

namespace A176971.P18188269514067135025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 n - (f1 (n + 1) - f1 n)

end

end A176971.P18188269514067135025

namespace A176971

/-- `A133037(n)-Δ[A329227(n)]` -/
def P18188269514067135025.Spec : Prop :=
  ∀ n, P18188269514067135025.a n = A176971 n

end A176971

/-! ## A176971.P9129999495443116574

`A133037(n)+A329227(n)-A329227(n+1)`
-/

namespace A176971.P9129999495443116574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 n + (A329227 n - A329227 (n + 1))

end

end A176971.P9129999495443116574

namespace A176971

/-- `A133037(n)+A329227(n)-A329227(n+1)` -/
def P9129999495443116574.Spec : Prop :=
  ∀ n, P9129999495443116574.a n = A176971 n

end A176971

/-!
# A176972: a(n) = 7^n + 7*n + 1.

The programs for A176972, the canonical program `A176972.P14187892954267832561` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176972 has offset 0).

The definition of A176972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+7*n+1` (program `A176972.P14187892954267832561`, by `A176972.P14187892954267832561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176972.P14187892954267832561

`7^n+7*n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176972

/-- `7^n+7*n+1` -/
def P14187892954267832561.Spec : Prop :=
  ∀ n, (P14187892954267832561.a n : ℤ) = A176972 n

theorem P14187892954267832561.correct : P14187892954267832561.Spec := by
  intro n
  simp only [A176972]

end A176972

/-! ## A176972.P16005882104586267229

`abs(xor(-1, A221909(n)))`
-/

namespace A176972.P16005882104586267229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A221909 n)|

end

end A176972.P16005882104586267229

namespace A176972

/-- `abs(xor(-1, A221909(n)))` -/
def P16005882104586267229.Spec : Prop :=
  ∀ n, P16005882104586267229.a n = A176972 n

end A176972

/-! ## A176972.P15021233589865038760

`abs(7^n+A017005(n)-1)`
-/

namespace A176972.P15021233589865038760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) + (A017005 n - 1)|

end

end A176972.P15021233589865038760

namespace A176972

/-- `abs(7^n+A017005(n)-1)` -/
def P15021233589865038760.Spec : Prop :=
  ∀ n, P15021233589865038760.a n = A176972 n

end A176972

/-! ## A176972.P16911643244677973544

`abs(abs(7*n-33*n)-A034491(n)-33*n)`
-/

namespace A176972.P16911643244677973544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(7 * n : ℤ) - (33 * n : ℤ)| - A034491 n - (33 * n : ℤ))|

end

end A176972.P16911643244677973544

namespace A176972

/-- `abs(abs(7*n-33*n)-A034491(n)-33*n)` -/
def P16911643244677973544.Spec : Prop :=
  ∀ n, P16911643244677973544.a n = A176972 n

end A176972

/-! ## A176972.P16031644982024394737

`or(A221909(n)+1, A285142(n+2))`
-/

namespace A176972.P16031644982024394737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221909 n + 1) (A285142 (n + 2))

end

end A176972.P16031644982024394737

namespace A176972

/-- `or(A221909(n)+1, A285142(n+2))` -/
def P16031644982024394737.Spec : Prop :=
  ∀ n, P16031644982024394737.a n = A176972 n

end A176972

/-! ## A176972.P6554684813506874682

`or(A221909(n)+1, A101614(2*n))`
-/

namespace A176972.P6554684813506874682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221909 n + 1) (A101614 (2 * n))

end

end A176972.P6554684813506874682

namespace A176972

/-- `or(A221909(n)+1, A101614(2*n))` -/
def P6554684813506874682.Spec : Prop :=
  ∀ n, P6554684813506874682.a n = A176972 n

end A176972

/-! ## A176972.P1860142817952275571

`(A221909(n)+1)%A221894(n+1)`
-/

namespace A176972.P1860142817952275571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221909 n + 1) (A221894 (n + 1))

end

end A176972.P1860142817952275571

namespace A176972

/-- `(A221909(n)+1)%A221894(n+1)` -/
def P1860142817952275571.Spec : Prop :=
  ∀ n, P1860142817952275571.a n = A176972 n

end A176972

/-!
# A176974: First exponent n to generate maximum remainder when (a + 1)^n + (a - 1)^n is divided by a^2 for variable n and a>2.

The programs for A176974, the canonical program `A176974.P1608135254251770516` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176974 has offset 3).

The definition of A176974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176974.P1608135254251770516

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=5, a(4)=3, a(5)=3, a(6)=13, a(7)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176974

/-- `2*a(n-4)-a(n-8)` -/
def P1608135254251770516.Spec : Prop :=
  ∀ n, P1608135254251770516.a n = A176974 (n + 3)

theorem P1608135254251770516.correct : P1608135254251770516.Spec := by
  intro n
  simp only [A176974, Nat.add_sub_cancel]

end A176974

/-! ## A176974.P11786541348613382410

`A002620(A003485(n+1)-n)-∑[A110654(n)]`
-/

namespace A176974.P11786541348613382410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A003485 (n + 1) - (n : ℤ)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176974.P11786541348613382410

namespace A176974

/-- `A002620(A003485(n+1)-n)-∑[A110654(n)]` -/
def P11786541348613382410.Spec : Prop :=
  ∀ n, P11786541348613382410.a n = A176974 (n + 3)

end A176974

/-! ## A176974.P5302864203133535016

`A002620(A003485(n+1)-n)-A002620(n+1)`
-/

namespace A176974.P5302864203133535016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A003485 (n + 1) - (n : ℤ)).toNat - A002620 (n + 1)

end

end A176974.P5302864203133535016

namespace A176974

/-- `A002620(A003485(n+1)-n)-A002620(n+1)` -/
def P5302864203133535016.Spec : Prop :=
  ∀ n, P5302864203133535016.a n = A176974 (n + 3)

end A176974

/-! ## A176974.P4953417445937070004

`(A028387(n+2)%A016825(n+3))%A001651(n+4)`
-/

namespace A176974.P4953417445937070004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A028387 (n + 2)) (A016825 (n + 3))) (A001651 (n + 4))

end

end A176974.P4953417445937070004

namespace A176974

/-- `(A028387(n+2)%A016825(n+3))%A001651(n+4)` -/
def P4953417445937070004.Spec : Prop :=
  ∀ n, P4953417445937070004.a n = A176974 (n + 3)

end A176974

/-! ## A176974.P17675142191077050790

`Δ[A296160(n+5)]+round(n^3/4)%(n+1)`
-/

namespace A176974.P17675142191077050790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296160 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (SequenceMachineLib.roundAway ((n ^ 3 : ℚ) / 4)) (n + 1 : ℤ)

end

end A176974.P17675142191077050790

namespace A176974

/-- `Δ[A296160(n+5)]+round(n^3/4)%(n+1)` -/
def P17675142191077050790.Spec : Prop :=
  ∀ n, P17675142191077050790.a n = A176974 (n + 3)

end A176974

/-! ## A176974.P16341729415513169837

`A026741(∑[A176743(n+1)-(n+1)]-n)`
-/

namespace A176974.P16341729415513169837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A176974.P16341729415513169837

namespace A176974

/-- `A026741(∑[A176743(n+1)-(n+1)]-n)` -/
def P16341729415513169837.Spec : Prop :=
  ∀ n, P16341729415513169837.a n = A176974 (n + 3)

end A176974

/-! ## A176974.P7781312554976830352

`A004526(A127365(n+2)+n+1)+Δ[A296160(n+5)]`
-/

namespace A176974.P7781312554976830352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296160 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A127365 (n + 2) + (n + 1 : ℤ)).toNat + (f1 (n + 1) - f1 n)

end

end A176974.P7781312554976830352

namespace A176974

/-- `A004526(A127365(n+2)+n+1)+Δ[A296160(n+5)]` -/
def P7781312554976830352.Spec : Prop :=
  ∀ n, P7781312554976830352.a n = A176974 (n + 3)

end A176974

/-!
# A176975: Dimension arising in an indefinite quaternion algebra over Q.

The programs for A176975, there is no canonical definition to state claims against.
-/

/-! ## A176975.P7826603080024715922

`A228720(A015723(n+1))-A103469(n+3)`
-/

namespace A176975.P7826603080024715922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A015723 (n + 1)).toNat - A103469 (n + 3)

end

end A176975.P7826603080024715922

/-!
# A176978: Numbers n such that n^2 + 13 and n^2 + 13^2 are primes.

The programs for A176978, there is no canonical definition to state claims against.
-/

/-! ## A176978.P17674519031568491749

`∩[A113536(n+1), A176969(n+1)]`
-/

namespace A176978.P17674519031568491749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176978.P17674519031568491749

/-!
# A176981: Expansion of 2+(1-2*x)/(-1+2*x+x^2).

The programs for A176981, the canonical program `A176981.P6976193817335462170` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176981 has offset 0).

The definition of A176981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-2x^2)/(1-2x-x^2))` (program `A176981.P6976193817335462170`, by `A176981.P6976193817335462170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176981.P6976193817335462170

`ogf((1-2x-2x^2)/(1-2x-x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176981

/-- `ogf((1-2x-2x^2)/(1-2x-x^2))` -/
def P6976193817335462170.Spec : Prop :=
  ∀ n, P6976193817335462170.a n = A176981 n

theorem P6976193817335462170.correct : P6976193817335462170.Spec := by
  intro n
  simp only [A176981]

end A176981

/-! ## A176981.P17221214247668455285

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A176981.P17221214247668455285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A176981.P17221214247668455285

namespace A176981

/-- `2*a(n-1)+a(n-2)` -/
def P17221214247668455285.Spec : Prop :=
  ∀ n, P17221214247668455285.a n = A176981 n

end A176981

/-! ## A176981.P5810169381201158451

`2*a(n-1)-abs(a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A176981.P5810169381201158451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a (n - 1) - |a (n - 2)|

end

end A176981.P5810169381201158451

namespace A176981

/-- `2*a(n-1)-abs(a(n-2))` -/
def P5810169381201158451.Spec : Prop :=
  ∀ n, P5810169381201158451.a n = A176981 n

end A176981

/-! ## A176981.P13000188593054491879

`a(n-1)-abs(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A176981.P13000188593054491879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - |a (n - 1) + a (n - 2)|

end

end A176981.P13000188593054491879

namespace A176981

/-- `a(n-1)-abs(a(n-1)+a(n-2))` -/
def P13000188593054491879.Spec : Prop :=
  ∀ n, P13000188593054491879.a n = A176981 n

end A176981

/-! ## A176981.P12238895862424001266

`a(n-1)-(abs(a(n-2))-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A176981.P12238895862424001266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (|a (n - 2)| - a (n - 1))

end

end A176981.P12238895862424001266

namespace A176981

/-- `a(n-1)-(abs(a(n-2))-a(n-1))` -/
def P12238895862424001266.Spec : Prop :=
  ∀ n, P12238895862424001266.a n = A176981 n

end A176981

/-! ## A176981.P17413608720991369938

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A176981.P17413608720991369938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A176981.P17413608720991369938

namespace A176981

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P17413608720991369938.Spec : Prop :=
  ∀ n, P17413608720991369938.a n = A176981 n

end A176981

/-! ## A176981.P16089242468065934888

`2*a(n-1)-gcd(a(n-2), a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A176981.P16089242468065934888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a (n - 1) - (Int.gcd (a (n - 2)) (a (n - 2)) : ℤ)

end

end A176981.P16089242468065934888

namespace A176981

/-- `2*a(n-1)-gcd(a(n-2), a(n-2))` -/
def P16089242468065934888.Spec : Prop :=
  ∀ n, P16089242468065934888.a n = A176981 n

end A176981

/-! ## A176981.P17765370271875292197

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A176981.P17765370271875292197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A176981.P17765370271875292197

namespace A176981

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P17765370271875292197.Spec : Prop :=
  ∀ n, P17765370271875292197.a n = A176981 n

end A176981

/-! ## A176981.P16501921134175916018

`A052937(n)-A124696(n)`
-/

namespace A176981.P16501921134175916018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n - A124696 n

end

end A176981.P16501921134175916018

namespace A176981

/-- `A052937(n)-A124696(n)` -/
def P16501921134175916018.Spec : Prop :=
  ∀ n, P16501921134175916018.a n = A176981 n

end A176981

/-! ## A176981.P13381483482621092043

`A215928(n)-Δ[A215928(n)]`
-/

namespace A176981.P13381483482621092043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n - (f1 (n + 1) - f1 n)

end

end A176981.P13381483482621092043

namespace A176981

/-- `A215928(n)-Δ[A215928(n)]` -/
def P13381483482621092043.Spec : Prop :=
  ∀ n, P13381483482621092043.a n = A176981 n

end A176981

/-! ## A176981.P14839777339330573000

`2*A215928(n)-∑[A001333(n)]`
-/

namespace A176981.P14839777339330573000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215928 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176981.P14839777339330573000

namespace A176981

/-- `2*A215928(n)-∑[A001333(n)]` -/
def P14839777339330573000.Spec : Prop :=
  ∀ n, P14839777339330573000.a n = A176981 n

end A176981

/-! ## A176981.P8631386758766657916

`A052542(A028310(n))-A000129(n+1)`
-/

namespace A176981.P8631386758766657916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (A028310 n).toNat - A000129 (n + 1)

end

end A176981.P8631386758766657916

namespace A176981

/-- `A052542(A028310(n))-A000129(n+1)` -/
def P8631386758766657916.Spec : Prop :=
  ∀ n, P8631386758766657916.a n = A176981 n

end A176981

/-! ## A176981.P8811269016253783080

`A000007(n)+A052542(n)-A000129(n+1)`
-/

namespace A176981.P8811269016253783080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A052542 n - A000129 (n + 1))

end

end A176981.P8811269016253783080

namespace A176981

/-- `A000007(n)+A052542(n)-A000129(n+1)` -/
def P8811269016253783080.Spec : Prop :=
  ∀ n, P8811269016253783080.a n = A176981 n

end A176981

/-! ## A176981.P14957059552928665205

`A215928(n)+A215928(n)-A000129(n+1)`
-/

namespace A176981.P14957059552928665205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n + (A215928 n - A000129 (n + 1))

end

end A176981.P14957059552928665205

namespace A176981

/-- `A215928(n)+A215928(n)-A000129(n+1)` -/
def P14957059552928665205.Spec : Prop :=
  ∀ n, P14957059552928665205.a n = A176981 n

end A176981

/-! ## A176981.P5514300920602665428

`A215928(n)+A215928(n)-A215928(n+1)`
-/

namespace A176981.P5514300920602665428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n + (A215928 n - A215928 (n + 1))

end

end A176981.P5514300920602665428

namespace A176981

/-- `A215928(n)+A215928(n)-A215928(n+1)` -/
def P5514300920602665428.Spec : Prop :=
  ∀ n, P5514300920602665428.a n = A176981 n

end A176981

/-! ## A176981.P12981864106903577655

`2*A052542(n)-A048654(n)`
-/

namespace A176981.P12981864106903577655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052542 n - A048654 n

end

end A176981.P12981864106903577655

namespace A176981

/-- `2*A052542(n)-A048654(n)` -/
def P12981864106903577655.Spec : Prop :=
  ∀ n, P12981864106903577655.a n = A176981 n

end A176981

/-! ## A176981.P3582187670892542918

`A215928(n)-A001109(n)/A215928(n)`
-/

namespace A176981.P3582187670892542918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 n : ℚ) - (A001109 n : ℚ) / (A215928 n : ℚ)

end

end A176981.P3582187670892542918

namespace A176981

/-- `A215928(n)-A001109(n)/A215928(n)` -/
def P3582187670892542918.Spec : Prop :=
  ∀ n, P3582187670892542918.a n = (A176981 n : ℚ)

end A176981

/-!
# A176982: Sequence defined by the recursion a(n) = (1/2)*((1-signum(abs(b(n))-n))*b(n)+(1+signum(abs(b(n))-n))*a(n-1)), with a(1)=1 and b(n)=1+a(n-1-(n mod a(n-1)))-(-1)^n*a(n-1).

The programs for A176982, there is no canonical definition to state claims against.
-/

/-! ## A176982.P8291361029065978723

`or(A117568(A318052(n+1)), A341945(n+2))`
-/

namespace A176982.P8291361029065978723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117568 (A318052 (n + 1)).toNat) (A341945 (n + 2))

end

end A176982.P8291361029065978723

/-!
# A176983: Primes p such that smallest prime q > p^2 is of form q = p^2 + k^2.

The programs for A176983, there is no canonical definition to state claims against.
-/

/-! ## A176983.P11255449357002901943

`A177828(n)+a(n-1)` with `a(0)=2`
-/

namespace A176983.P11255449357002901943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A177828 n + a (n - 1)

end

end A176983.P11255449357002901943

/-! ## A176983.P7601196497355694523

`∑[A177828(abs(1-n)+1)]`
-/

namespace A176983.P7601196497355694523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176983.P7601196497355694523

/-! ## A176983.P13332601642577262116

`∑[A177828(round(sqrt(n²+1)))]-1`
-/

namespace A176983.P13332601642577262116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A176983.P13332601642577262116

/-! ## A176983.P18321553117422928611

`p?[∑[A177828(A000038(n)+n)]]`
-/

namespace A176983.P18321553117422928611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176983.P18321553117422928611

/-! ## A176983.P16068981784253451629

`A145064(∑[A177828(n+1)]-A177828(n+1))`
-/

namespace A176983.P16068981784253451629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (∑ j ∈ Finset.range (n + 1), f1 j - A177828 (n + 1)).toNat

end

end A176983.P16068981784253451629

/-! ## A176983.P15302196215527178391

`A151800(∑[A177828(n+1)]-A177828(n+1))`
-/

namespace A176983.P15302196215527178391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - A177828 (n + 1)).toNat

end

end A176983.P15302196215527178391

/-!
# A176984: Numbers k such that the k-th average of twin prime pairs is a sum of two successive primes.

The programs for A176984, there is no canonical definition to state claims against.
-/

/-! ## A176984.P16965730138364838586

`A071538(A167597(n+1))`
-/

namespace A176984.P16965730138364838586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A167597 (n + 1)).toNat

end

end A176984.P16965730138364838586

/-! ## A176984.P4451476093276184839

`A071538(A158350(n+1)+A099349(n+1))`
-/

namespace A176984.P4451476093276184839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A158350 (n + 1) + A099349 (n + 1)).toNat

end

end A176984.P4451476093276184839

/-! ## A176984.P11335762242062449106

`eq[A167777(n+1), A247245(A167777(n+1))]`
-/

namespace A176984.P11335762242062449106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (A167777 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176984.P11335762242062449106

/-!
# A176985: Primes p such that sum of digits + 5 is prime.

The programs for A176985, there is no canonical definition to state claims against.
-/

/-! ## A176985.P4933050805688841169

`eq[A005127(n), A276949(A007953(n))]`
-/

namespace A176985.P4933050805688841169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176985.P4933050805688841169

/-! ## A176985.P7823207761149390037

`eq[A078898(n), A353816(A169805(n))]`
-/

namespace A176985.P7823207761149390037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176985.P7823207761149390037

/-! ## A176985.P8732936845141278752

`eq[A053989(n+1), A088534(A169805(n))]`
-/

namespace A176985.P8732936845141278752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176985.P8732936845141278752

/-! ## A176985.P12077942174555057426

`∩[A119474(A119475(3*n+2)), A119449(n+1)]`
-/

namespace A176985.P12077942174555057426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119474 (A119475 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176985.P12077942174555057426

/-! ## A176985.P7702861690848773600

`∩[A119449(n+1), A165334(n+1)]`
-/

namespace A176985.P7702861690848773600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176985.P7702861690848773600

/-!
# A176986: Numbers k such that the k-th sum of two successive primes is a twin prime average.

The programs for A176986, there is no canonical definition to state claims against.
-/

/-! ## A176986.P11550461461417428700

`A000720(A099349(n+1))`
-/

namespace A176986.P11550461461417428700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A099349 (n + 1)).toNat

end

end A176986.P11550461461417428700

/-! ## A176986.P1553464485699472837

`A061395(p?[A099349(n+1)])`
-/

namespace A176986.P1553464485699472837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176986.P1553464485699472837

/-! ## A176986.P10571558232088768201

`A000720(A158350(n+1)-1)`
-/

namespace A176986.P10571558232088768201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A158350 (n + 1) - 1).toNat

end

end A176986.P10571558232088768201

/-! ## A176986.P643510783973817373

`A000720(A167597(n+1)/2)`
-/

namespace A176986.P643510783973817373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A167597 (n + 1) : ℚ) / 2)).toNat

end

end A176986.P643510783973817373

/-! ## A176986.P10598845262518032400

`A000720(xor(1, A158350(n+1)))`
-/

namespace A176986.P10598845262518032400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A158350 (n + 1))).toNat

end

end A176986.P10598845262518032400

/-! ## A176986.P14737172123099769480

`A061395(p?[A158350(n+1)])-1`
-/

namespace A176986.P14737172123099769480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A176986.P14737172123099769480

/-! ## A176986.P14200744924428108346

`A061395(A158350(n+1))-A001221(A045325(n+1))`
-/

namespace A176986.P14200744924428108346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A158350 (n + 1)).toNat - A001221 (A045325 (n + 1)).toNat

end

end A176986.P14200744924428108346

/-! ## A176986.P970163886646434028

`A061395(2*A099349(n+1))`
-/

namespace A176986.P970163886646434028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A099349 (n + 1)).toNat

end

end A176986.P970163886646434028

/-! ## A176986.P9291590176291745956

`A061395(2*A158350(n+1))-1`
-/

namespace A176986.P9291590176291745956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A158350 (n + 1)).toNat - 1

end

end A176986.P9291590176291745956

/-! ## A176986.P790062359888918842

`A316431(2*A099349(n+1))`
-/

namespace A176986.P790062359888918842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A099349 (n + 1)).toNat

end

end A176986.P790062359888918842

/-!
# A176988: Triangle read by rows, which contains Noll's indices of Zernike polynomials in row n sorted along increasing index of the azimuthal quantum number.

The programs for A176988, the canonical program `A176988.P11168993376640129873` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176988 has offset 0).

The definition of A176988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176988.P11168993376640129873

`A064789(A218890(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176988

/-- `A064789(A218890(n+1))` -/
def P11168993376640129873.Spec : Prop :=
  ∀ n, P11168993376640129873.a n = A176988 n

theorem P11168993376640129873.correct : P11168993376640129873.Spec := by
  intro n
  simp only [A176988]

end A176988

/-! ## A176988.P3067262842429966247

`A185180(A218890((n²+1+n)%comp[∑[n]]))`
-/

namespace A176988.P3067262842429966247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A218890 ((n ^ 2 + 1 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A176988.P3067262842429966247

namespace A176988

/-- `A185180(A218890((n²+1+n)%comp[∑[n]]))` -/
def P3067262842429966247.Spec : Prop :=
  ∀ n, P3067262842429966247.a n = A176988 n

end A176988

/-! ## A176988.P8177811869705393237

`A185180(A218890(A038722(n+1)))`
-/

namespace A176988.P8177811869705393237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A218890 (A038722 (n + 1)).toNat).toNat

end

end A176988.P8177811869705393237

namespace A176988

/-- `A185180(A218890(A038722(n+1)))` -/
def P8177811869705393237.Spec : Prop :=
  ∀ n, P8177811869705393237.a n = A176988 n

end A176988

/-! ## A176988.P10732564581446168617

`A130517(A218890(n+1))+A057944(n)`
-/

namespace A176988.P10732564581446168617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A218890 (n + 1)).toNat + A057944 n

end

end A176988.P10732564581446168617

namespace A176988

/-- `A130517(A218890(n+1))+A057944(n)` -/
def P10732564581446168617.Spec : Prop :=
  ∀ n, P10732564581446168617.a n = A176988 n

end A176988

/-! ## A176988.P4757389493528648393

`A265129(n+1)-A064578(A218890(n+1))`
-/

namespace A176988.P4757389493528648393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A064578 (A218890 (n + 1)).toNat

end

end A176988.P4757389493528648393

namespace A176988

/-- `A265129(n+1)-A064578(A218890(n+1))` -/
def P4757389493528648393.Spec : Prop :=
  ∀ n, P4757389493528648393.a n = A176988 n

end A176988

/-! ## A176988.P15261782839667626623

`A185180(A265129(n+1)-A218890(n+1))`
-/

namespace A176988.P15261782839667626623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A265129 (n + 1) - A218890 (n + 1)).toNat

end

end A176988.P15261782839667626623

namespace A176988

/-- `A185180(A265129(n+1)-A218890(n+1))` -/
def P15261782839667626623.Spec : Prop :=
  ∀ n, P15261782839667626623.a n = A176988 n

end A176988

/-! ## A176988.P1839346966796516159

`A185180(A218890(A056023(A056011(n+1))))`
-/

namespace A176988.P1839346966796516159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A218890 (A056023 (A056011 (n + 1)).toNat).toNat).toNat

end

end A176988.P1839346966796516159

namespace A176988

/-- `A185180(A218890(A056023(A056011(n+1))))` -/
def P1839346966796516159.Spec : Prop :=
  ∀ n, P1839346966796516159.a n = A176988 n

end A176988

/-! ## A176988.P6781121962662214653

`A130517(A218890(n+1))+A000217(A003056(n))`
-/

namespace A176988.P6781121962662214653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A218890 (n + 1)).toNat + A000217 (A003056 n).toNat

end

end A176988.P6781121962662214653

namespace A176988

/-- `A130517(A218890(n+1))+A000217(A003056(n))` -/
def P6781121962662214653.Spec : Prop :=
  ∀ n, P6781121962662214653.a n = A176988 n

end A176988

/-! ## A176988.P17156763195296264188

`A130517(A218890(n+1))+A083920(A127739(n+1))`
-/

namespace A176988.P17156763195296264188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A218890 (n + 1)).toNat + A083920 (A127739 (n + 1)).toNat

end

end A176988.P17156763195296264188

namespace A176988

/-- `A130517(A218890(n+1))+A083920(A127739(n+1))` -/
def P17156763195296264188.Spec : Prop :=
  ∀ n, P17156763195296264188.a n = A176988 n

end A176988

/-! ## A176988.P2812279243188532169

`A130517(A218890(n+1))+n+1-A194856(A194857(n+1))`
-/

namespace A176988.P2812279243188532169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A218890 (n + 1)).toNat + ((n + 1 : ℤ) - A194856 (A194857 (n + 1)).toNat)

end

end A176988.P2812279243188532169

namespace A176988

/-- `A130517(A218890(n+1))+n+1-A194856(A194857(n+1))` -/
def P2812279243188532169.Spec : Prop :=
  ∀ n, P2812279243188532169.a n = A176988 n

end A176988

/-!
# A176992: Triangle T(n,k) = binomial(2n-k+1, n+1) read by rows, 0 <= k <= n.

The programs for A176992, the canonical program `A176992.P8811251635075281909` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176992 has offset 0).

The definition of A176992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176992.P12396602632243276830

`A092392(comp[∑[n]])`
-/

namespace A176992.P12396602632243276830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A176992.P12396602632243276830

namespace A176992

/-- `A092392(comp[∑[n]])` -/
def P12396602632243276830.Spec : Prop :=
  ∀ n, P12396602632243276830.a n = A176992 n

end A176992

/-! ## A176992.P16774101196792063952

`A046899(∑[char[∑[n]]]+∑[2*n]%comp[∑[n]])`
-/

namespace A176992.P16774101196792063952
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A176992.P16774101196792063952

namespace A176992

/-- `A046899(∑[char[∑[n]]]+∑[2*n]%comp[∑[n]])` -/
def P16774101196792063952.Spec : Prop :=
  ∀ n, P16774101196792063952.a n = A176992 n

end A176992

/-! ## A176992.P15314966365026342661

`A046899(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)`
-/

namespace A176992.P15314966365026342661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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
  A046899 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A176992.P15314966365026342661

namespace A176992

/-- `A046899(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)` -/
def P15314966365026342661.Spec : Prop :=
  ∀ n, P15314966365026342661.a n = A176992 n

end A176992

/-! ## A176992.P8811251635075281909

`2*A092392(n)-A033184(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176992

/-- `2*A092392(n)-A033184(n+1)` -/
def P8811251635075281909.Spec : Prop :=
  ∀ n, P8811251635075281909.a n = A176992 n

theorem P8811251635075281909.correct : P8811251635075281909.Spec := by
  intro n
  simp only [A176992]

end A176992

/-! ## A176992.P16420842231741707496

`A178300(∑[char[∑[n]]]²-n)`
-/

namespace A176992.P16420842231741707496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A176992.P16420842231741707496

namespace A176992

/-- `A178300(∑[char[∑[n]]]²-n)` -/
def P16420842231741707496.Spec : Prop :=
  ∀ n, P16420842231741707496.a n = A176992 n

end A176992

/-! ## A176992.P4701299828010828662

`C(C(comp[∑[n]]-n, 2)-∑[char[comp[∑[n]]]], ∑[char[∑[n]]])`
-/

namespace A176992.P4701299828010828662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)).toNat (∑ j ∈ Finset.range (n + 1), f7 j)

end

end A176992.P4701299828010828662

namespace A176992

/-- `C(C(comp[∑[n]]-n, 2)-∑[char[comp[∑[n]]]], ∑[char[∑[n]]])` -/
def P4701299828010828662.Spec : Prop :=
  ∀ n, (P4701299828010828662.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P13681627574021909535

`C(A128076(n+1), ∑[char[∑[n]]])`
-/

namespace A176992.P13681627574021909535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128076 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176992.P13681627574021909535

namespace A176992

/-- `C(A128076(n+1), ∑[char[∑[n]]])` -/
def P13681627574021909535.Spec : Prop :=
  ∀ n, (P13681627574021909535.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P6328155005354995311

`C(A294317(n)+1, comp[C(n, 2)]-(n+1))`
-/

namespace A176992.P6328155005354995311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + 1).toNat ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)).toNat

end

end A176992.P6328155005354995311

namespace A176992

/-- `C(A294317(n)+1, comp[C(n, 2)]-(n+1))` -/
def P6328155005354995311.Spec : Prop :=
  ∀ n, (P6328155005354995311.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P13463084397079735187

`C(A094727(∑[char[∑[n]]]²-n), ∑[char[∑[n]]])`
-/

namespace A176992.P13463084397079735187
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

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A176992.P13463084397079735187

namespace A176992

/-- `C(A094727(∑[char[∑[n]]]²-n), ∑[char[∑[n]]])` -/
def P13463084397079735187.Spec : Prop :=
  ∀ n, (P13463084397079735187.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P16004740206310863336

`C(A294317(n)+1, A025581(n))`
-/

namespace A176992.P16004740206310863336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + 1).toNat (A025581 n).toNat

end

end A176992.P16004740206310863336

namespace A176992

/-- `C(A294317(n)+1, A025581(n))` -/
def P16004740206310863336.Spec : Prop :=
  ∀ n, (P16004740206310863336.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P3130983790981890550

`C(A004736(n+1)+A003056(n), A025581(n))`
-/

namespace A176992.P3130983790981890550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) + A003056 n).toNat (A025581 n).toNat

end

end A176992.P3130983790981890550

namespace A176992

/-- `C(A004736(n+1)+A003056(n), A025581(n))` -/
def P3130983790981890550.Spec : Prop :=
  ∀ n, (P3130983790981890550.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P16896661280372814471

`C(A025581(n)+A002024(n+1), A025581(n))`
-/

namespace A176992.P16896661280372814471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n + A002024 (n + 1)).toNat (A025581 n).toNat

end

end A176992.P16896661280372814471

namespace A176992

/-- `C(A025581(n)+A002024(n+1), A025581(n))` -/
def P16896661280372814471.Spec : Prop :=
  ∀ n, (P16896661280372814471.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P16166419034468434752

`C(A004736(n+1)+A003056(n), A002024(n+1))`
-/

namespace A176992.P16166419034468434752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1) + A003056 n).toNat (A002024 (n + 1)).toNat

end

end A176992.P16166419034468434752

namespace A176992

/-- `C(A004736(n+1)+A003056(n), A002024(n+1))` -/
def P16166419034468434752.Spec : Prop :=
  ∀ n, (P16166419034468434752.a n : ℤ) = A176992 n

end A176992

/-! ## A176992.P15615641323366467719

`A014462(A082156(n+1))`
-/

namespace A176992.P15615641323366467719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A082156 (n + 1)).toNat

end

end A176992.P15615641323366467719

namespace A176992

/-- `A014462(A082156(n+1))` -/
def P15615641323366467719.Spec : Prop :=
  ∀ n, P15615641323366467719.a n = A176992 n

end A176992

/-! ## A176992.P15869034803678977044

`A191528(lt[round(sqrt(n+1))²-n, 0])`
-/

namespace A176992.P15869034803678977044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191528 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A176992.P15869034803678977044

namespace A176992

/-- `A191528(lt[round(sqrt(n+1))²-n, 0])` -/
def P15869034803678977044.Spec : Prop :=
  ∀ n, P15869034803678977044.a n = A176992 n

end A176992

/-! ## A176992.P17609463861490236948

`A191528(A189151(n+1))`
-/

namespace A176992.P17609463861490236948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191528 (A189151 (n + 1)).toNat

end

end A176992.P17609463861490236948

namespace A176992

/-- `A191528(A189151(n+1))` -/
def P17609463861490236948.Spec : Prop :=
  ∀ n, P17609463861490236948.a n = A176992 n

end A176992

/-!
# A176994: Least odd prime p such that p#*2^n-1 is prime, with p# the primorial A034386(p).

The programs for A176994, there is no canonical definition to state claims against.
-/

/-! ## A176994.P6075281404948423911

`A301776(A304942(n)+A043537(n+1))`
-/

namespace A176994.P6075281404948423911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301776 (A304942 n + A043537 (n + 1)).toNat

end

end A176994.P6075281404948423911

/-!
# A176995: Numbers that can be written as (m + sum of digits of m) for some m.

The programs for A176995, there is no canonical definition to state claims against.
-/

/-! ## A176995.P8874010895922302085

`∑[char[A163128(n+1)]+1]`
-/

namespace A176995.P8874010895922302085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176995.P8874010895922302085

/-! ## A176995.P7003282563116926388

`comp[A003052(n+1)-1]+1`
-/

namespace A176995.P7003282563116926388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176995.P7003282563116926388

/-! ## A176995.P12951630038476943389

`lt[0, n*A230093(n)]`
-/

namespace A176995.P12951630038476943389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176995.P12951630038476943389

/-! ## A176995.P12666583324808025792

`lt[Δ[n*(char[∑{digits}[n, #]+n]+1)+n], n+2]`
-/

namespace A176995.P12666583324808025792
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f3 j = n then 1 else 0) + 1) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f5 j : ℤ)) n

end

end A176995.P12666583324808025792

/-! ## A176995.P11434998871175962773

`eq[n*A230093(n), A028310(n*A230093(n))]`
-/

namespace A176995.P11434998871175962773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A230093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176995.P11434998871175962773

/-! ## A176995.P15886212012488953682

`lt[0, A096234(n)]`
-/

namespace A176995.P15886212012488953682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176995.P15886212012488953682

/-! ## A176995.P8841511950233488320

`record[A062028(abs(A096234(n+1)))]`
-/

namespace A176995.P8841511950233488320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 |A096234 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176995.P8841511950233488320

/-! ## A176995.P10329004767391168398

`eq[A096234(n), A137735(A096234(n)²)]`
-/

namespace A176995.P10329004767391168398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A096234 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176995.P10329004767391168398

/-! ## A176995.P7980646177204609097

`A282711(A225793(n+1))+n+1`
-/

namespace A176995.P7980646177204609097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (A225793 (n + 1)).toNat + (n + 1 : ℤ)

end

end A176995.P7980646177204609097

/-! ## A176995.P13291873990187778144

`∪[A336983(n+1), A336986(n+1)]`
-/

namespace A176995.P13291873990187778144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176995.P13291873990187778144

/-!
# A176997: Integers k such that 2^(k-1) == 1 (mod k).

The programs for A176997, the canonical program `A176997.P9587439984867558596` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176997 has offset 1).

The definition of A176997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176997.P4811065379317197106

`A015919(ceil(sqrt((n+1)²+n)))`
-/

namespace A176997.P4811065379317197106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 ⌈Real.sqrt ((n + 1) ^ 2 + n : ℝ)⌉.toNat

end

end A176997.P4811065379317197106

namespace A176997

/-- `A015919(ceil(sqrt((n+1)²+n)))` -/
def P4811065379317197106.Spec : Prop :=
  ∀ n, P4811065379317197106.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P9587439984867558596

`A015919(n+2)-C(2, n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176997

/-- `A015919(n+2)-C(2, n+2)` -/
def P9587439984867558596.Spec : Prop :=
  ∀ n, P9587439984867558596.a n = A176997 (n + 1)

theorem P9587439984867558596.correct : P9587439984867558596.Spec := by
  intro n
  simp only [A176997, Nat.add_sub_cancel]

end A176997

/-! ## A176997.P4855736012393169969

`record[A015919(n+1)%(35*n-34)]`
-/

namespace A176997.P4855736012393169969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015919 (n + 1)) ((35 * n : ℤ) - 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176997.P4855736012393169969

namespace A176997

/-- `record[A015919(n+1)%(35*n-34)]` -/
def P4855736012393169969.Spec : Prop :=
  ∀ n, P4855736012393169969.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P18198090772460153673

`A015919(n+2)-A000007(n)`
-/

namespace A176997.P18198090772460153673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2) - A000007 n

end

end A176997.P18198090772460153673

namespace A176997

/-- `A015919(n+2)-A000007(n)` -/
def P18198090772460153673.Spec : Prop :=
  ∀ n, P18198090772460153673.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P2646319171376325528

`A015919(n+2)/A000038(n)!`
-/

namespace A176997.P2646319171376325528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015919 (n + 2) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A176997.P2646319171376325528

namespace A176997

/-- `A015919(n+2)/A000038(n)!` -/
def P2646319171376325528.Spec : Prop :=
  ∀ n, P2646319171376325528.a n = (A176997 (n + 1) : ℚ)

end A176997

/-! ## A176997.P10884211137582858110

`C(A015919(n+2), A055874(A151800(n)))`
-/

namespace A176997.P10884211137582858110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A015919 (n + 2)).toNat (A055874 (A151800 n).toNat).toNat

end

end A176997.P10884211137582858110

namespace A176997

/-- `C(A015919(n+2), A055874(A151800(n)))` -/
def P10884211137582858110.Spec : Prop :=
  ∀ n, (P10884211137582858110.a n : ℤ) = A176997 (n + 1)

end A176997

/-! ## A176997.P15541579154276468632

`A015919(n+2)-A000035(A001223(n+1))`
-/

namespace A176997.P15541579154276468632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2) - A000035 (A001223 (n + 1)).toNat

end

end A176997.P15541579154276468632

namespace A176997

/-- `A015919(n+2)-A000035(A001223(n+1))` -/
def P15541579154276468632.Spec : Prop :=
  ∀ n, P15541579154276468632.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P17211590702178203592

`record[A015919(n+1)-A061397(A061397(n+1)+1)]`
-/

namespace A176997.P17211590702178203592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) - A061397 (A061397 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176997.P17211590702178203592

namespace A176997

/-- `record[A015919(n+1)-A061397(A061397(n+1)+1)]` -/
def P17211590702178203592.Spec : Prop :=
  ∀ n, P17211590702178203592.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P2395727686491079418

`A000265(A015919(n+2))`
-/

namespace A176997.P2395727686491079418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A015919 (n + 2)).toNat

end

end A176997.P2395727686491079418

namespace A176997

/-- `A000265(A015919(n+2))` -/
def P2395727686491079418.Spec : Prop :=
  ∀ n, P2395727686491079418.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P10804998121130013374

`A015919(n+2)^A001222(A008578(n+1))`
-/

namespace A176997.P10804998121130013374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015919 (n + 2) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A176997.P10804998121130013374

namespace A176997

/-- `A015919(n+2)^A001222(A008578(n+1))` -/
def P10804998121130013374.Spec : Prop :=
  ∀ n, P10804998121130013374.a n = (A176997 (n + 1) : ℚ)

end A176997

/-! ## A176997.P12424695089235789101

`A015919(n+2)^A001222(A158611(n+2))`
-/

namespace A176997.P12424695089235789101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015919 (n + 2) : ℚ) ^ (A001222 (A158611 (n + 2)).toNat : ℤ)

end

end A176997.P12424695089235789101

namespace A176997

/-- `A015919(n+2)^A001222(A158611(n+2))` -/
def P12424695089235789101.Spec : Prop :=
  ∀ n, P12424695089235789101.a n = (A176997 (n + 1) : ℚ)

end A176997

/-! ## A176997.P7874180870307474135

`filter[A015919(n+1), A039982(#)]`
-/

namespace A176997.P7874180870307474135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A176997.P7874180870307474135

namespace A176997

/-- `filter[A015919(n+1), A039982(#)]` -/
def P7874180870307474135.Spec : Prop :=
  ∀ n, P7874180870307474135.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P1788823812308097833

`filter[A015919(n+1), A093719(#)]`
-/

namespace A176997.P1788823812308097833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A176997.P1788823812308097833

namespace A176997

/-- `filter[A015919(n+1), A093719(#)]` -/
def P1788823812308097833.Spec : Prop :=
  ∀ n, P1788823812308097833.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P11766978140502497209

`filter[A176176(n+1), A039982(#)]`
-/

namespace A176997.P11766978140502497209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A176997.P11766978140502497209

namespace A176997

/-- `filter[A176176(n+1), A039982(#)]` -/
def P11766978140502497209.Spec : Prop :=
  ∀ n, P11766978140502497209.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P6823056085947376892

`filter[A176176(n+1), A093719(#)]`
-/

namespace A176997.P6823056085947376892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A176997.P6823056085947376892

namespace A176997

/-- `filter[A176176(n+1), A093719(#)]` -/
def P6823056085947376892.Spec : Prop :=
  ∀ n, P6823056085947376892.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P4791748655596257414

`filter[A015919(n+1), A035263(#)]`
-/

namespace A176997.P4791748655596257414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A176997.P4791748655596257414

namespace A176997

/-- `filter[A015919(n+1), A035263(#)]` -/
def P4791748655596257414.Spec : Prop :=
  ∀ n, P4791748655596257414.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P15409265101122811650

`record[A015919(A052938(n))]`
-/

namespace A176997.P15409265101122811650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176997.P15409265101122811650

namespace A176997

/-- `record[A015919(A052938(n))]` -/
def P15409265101122811650.Spec : Prop :=
  ∀ n, P15409265101122811650.a n = A176997 (n + 1)

end A176997

/-! ## A176997.P5297577848374828726

`C(A015919(n+2), A014963(4*n+2))`
-/

namespace A176997.P5297577848374828726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A015919 (n + 2)).toNat (A014963 (4 * n + 2)).toNat

end

end A176997.P5297577848374828726

namespace A176997

/-- `C(A015919(n+2), A014963(4*n+2))` -/
def P5297577848374828726.Spec : Prop :=
  ∀ n, (P5297577848374828726.a n : ℤ) = A176997 (n + 1)

end A176997

/-! ## A176997.P187969499153209536

`∩[A015919(n+1), A004273(n)]`
-/

namespace A176997.P187969499153209536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176997.P187969499153209536

namespace A176997

/-- `∩[A015919(n+1), A004273(n)]` -/
def P187969499153209536.Spec : Prop :=
  ∀ n, (P187969499153209536.a n : ℤ) = A176997 (n + 1)

end A176997

/-! ## A176997.P10057479382942219244

`∩[A015919(n+1), A060747(n)]`
-/

namespace A176997.P10057479382942219244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176997.P10057479382942219244

namespace A176997

/-- `∩[A015919(n+1), A060747(n)]` -/
def P10057479382942219244.Spec : Prop :=
  ∀ n, (P10057479382942219244.a n : ℤ) = A176997 (n + 1)

end A176997

/-!
# A176998: a(n) = binary "k-number" for n-rowed Kayles.

The programs for A176998, there is no canonical definition to state claims against.
-/

/-! ## A176998.P7470204430185772107

`A007088(gcd(n, n+1)*A002186(n+1))`
-/

namespace A176998.P7470204430185772107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((Nat.gcd n (n + 1) : ℤ) * A002186 (n + 1)).toNat

end

end A176998.P7470204430185772107

/-!
# A176999: An encoding of the Collatz iteration of n.

The programs for A176999, there is no canonical definition to state claims against.
-/

/-! ## A176999.P5531370365534072359

`A007088(A397808(n+2))`
-/

namespace A176999.P5531370365534072359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A397808 (n + 2)).toNat

end

end A176999.P5531370365534072359

