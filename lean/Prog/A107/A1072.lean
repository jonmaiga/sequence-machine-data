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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A107200: Primes of the form 2x^2 + 43y^2.

The programs for A107200, there is no canonical definition to state claims against.
-/

/-! ## A107200.P8680499644162277326

`A140552(A212767(n+1))`
-/

namespace A107200.P8680499644162277326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140552 (A212767 (n + 1)).toNat

end

end A107200.P8680499644162277326

/-!
# A107201: Primes of the form 8x^2 + 11y^2.

The programs for A107201, the canonical program `A107201.P5879875122809238341` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107201 has offset 1).

The definition of A107201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107201.P5879875122809238341

`p?[or(8*n+11, round(sin((n^5)%11)))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107201

/-- `p?[or(8*n+11, round(sin((n^5)%11)))]` -/
def P5879875122809238341.Spec : Prop :=
  ∀ n, P5879875122809238341.a n = A107201 (n + 1)

theorem P5879875122809238341.correct : P5879875122809238341.Spec := by
  intro n
  simp only [A107201, Nat.add_sub_cancel]

end A107201

/-! ## A107201.P3934554126837917612

`∩[A007520(n+1), A141183(n+1)]`
-/

namespace A107201.P3934554126837917612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P3934554126837917612

namespace A107201

/-- `∩[A007520(n+1), A141183(n+1)]` -/
def P3934554126837917612.Spec : Prop :=
  ∀ n, (P3934554126837917612.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P16040954719637820766

`∩[A007520(n+1), A106984(n+1)]`
-/

namespace A107201.P16040954719637820766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P16040954719637820766

namespace A107201

/-- `∩[A007520(n+1), A106984(n+1)]` -/
def P16040954719637820766.Spec : Prop :=
  ∀ n, (P16040954719637820766.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P6428325713247164809

`∩[A106984(n+1), A332446(n+1)]`
-/

namespace A107201.P6428325713247164809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P6428325713247164809

namespace A107201

/-- `∩[A106984(n+1), A332446(n+1)]` -/
def P6428325713247164809.Spec : Prop :=
  ∀ n, (P6428325713247164809.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P14026924433294882441

`∩[A106984(n+1), A163183(n+1)]`
-/

namespace A107201.P14026924433294882441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P14026924433294882441

namespace A107201

/-- `∩[A106984(n+1), A163183(n+1)]` -/
def P14026924433294882441.Spec : Prop :=
  ∀ n, (P14026924433294882441.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P4319518981078525684

`∩[A007520(n+1), A040122(n+1)]`
-/

namespace A107201.P4319518981078525684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P4319518981078525684

namespace A107201

/-- `∩[A007520(n+1), A040122(n+1)]` -/
def P4319518981078525684.Spec : Prop :=
  ∀ n, (P4319518981078525684.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P13883548233251502998

`∩[A007520(n+1), A038881(n+1)]`
-/

namespace A107201.P13883548233251502998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P13883548233251502998

namespace A107201

/-- `∩[A007520(n+1), A038881(n+1)]` -/
def P13883548233251502998.Spec : Prop :=
  ∀ n, (P13883548233251502998.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P2059343920089155046

`∩[A038881(n+1), A045339(n+1)]`
-/

namespace A107201.P2059343920089155046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P2059343920089155046

namespace A107201

/-- `∩[A038881(n+1), A045339(n+1)]` -/
def P2059343920089155046.Spec : Prop :=
  ∀ n, (P2059343920089155046.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P6796123287715550236

`∩[A038881(n+1), A106984(n+1)]`
-/

namespace A107201.P6796123287715550236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P6796123287715550236

namespace A107201

/-- `∩[A038881(n+1), A106984(n+1)]` -/
def P6796123287715550236.Spec : Prop :=
  ∀ n, (P6796123287715550236.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P13838788426302276494

`∩[A038881(n+1), A192717(n+1)]`
-/

namespace A107201.P13838788426302276494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P13838788426302276494

namespace A107201

/-- `∩[A038881(n+1), A192717(n+1)]` -/
def P13838788426302276494.Spec : Prop :=
  ∀ n, (P13838788426302276494.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P8437890552495866007

`∩[A033200(n+1), A106984(n+1)]`
-/

namespace A107201.P8437890552495866007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P8437890552495866007

namespace A107201

/-- `∩[A033200(n+1), A106984(n+1)]` -/
def P8437890552495866007.Spec : Prop :=
  ∀ n, (P8437890552495866007.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P654143521215638823

`∩[A033200(n+1), A141183(n+1)]`
-/

namespace A107201.P654143521215638823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P654143521215638823

namespace A107201

/-- `∩[A033200(n+1), A141183(n+1)]` -/
def P654143521215638823.Spec : Prop :=
  ∀ n, (P654143521215638823.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P4401907117869489272

`∩[A002145(n+1), A106984(n+1)]`
-/

namespace A107201.P4401907117869489272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P4401907117869489272

namespace A107201

/-- `∩[A002145(n+1), A106984(n+1)]` -/
def P4401907117869489272.Spec : Prop :=
  ∀ n, (P4401907117869489272.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P4130419703792666712

`∩[A003629(n+1), A141183(n+1)]`
-/

namespace A107201.P4130419703792666712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P4130419703792666712

namespace A107201

/-- `∩[A003629(n+1), A141183(n+1)]` -/
def P4130419703792666712.Spec : Prop :=
  ∀ n, (P4130419703792666712.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P1605498663386049500

`∩[A085760(n+1), A106984(n+1)]`
-/

namespace A107201.P1605498663386049500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P1605498663386049500

namespace A107201

/-- `∩[A085760(n+1), A106984(n+1)]` -/
def P1605498663386049500.Spec : Prop :=
  ∀ n, (P1605498663386049500.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P14325684104567499440

`∩[A141183(n+1), A175865(n+1)]`
-/

namespace A107201.P14325684104567499440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P14325684104567499440

namespace A107201

/-- `∩[A141183(n+1), A175865(n+1)]` -/
def P14325684104567499440.Spec : Prop :=
  ∀ n, (P14325684104567499440.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P9037742492242392045

`∩[A319041(n+1), A141183(n+1)]`
-/

namespace A107201.P9037742492242392045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P9037742492242392045

namespace A107201

/-- `∩[A319041(n+1), A141183(n+1)]` -/
def P9037742492242392045.Spec : Prop :=
  ∀ n, (P9037742492242392045.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P13068514153834768866

`∩[A106984(n+1), A197504(n+1)]`
-/

namespace A107201.P13068514153834768866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P13068514153834768866

namespace A107201

/-- `∩[A106984(n+1), A197504(n+1)]` -/
def P13068514153834768866.Spec : Prop :=
  ∀ n, (P13068514153834768866.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P8540992951679737706

`∩[A365082(n+1), A106984(n+1)]`
-/

namespace A107201.P8540992951679737706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P8540992951679737706

namespace A107201

/-- `∩[A365082(n+1), A106984(n+1)]` -/
def P8540992951679737706.Spec : Prop :=
  ∀ n, (P8540992951679737706.a n : ℤ) = A107201 (n + 1)

end A107201

/-! ## A107201.P10031088687308997794

`∩[A141183(n+1), A270699(n+1)]`
-/

namespace A107201.P10031088687308997794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107201.P10031088687308997794

namespace A107201

/-- `∩[A141183(n+1), A270699(n+1)]` -/
def P10031088687308997794.Spec : Prop :=
  ∀ n, (P10031088687308997794.a n : ℤ) = A107201 (n + 1)

end A107201

/-!
# A107202: Primes of the form x^2 + 88y^2.

The programs for A107202, there is no canonical definition to state claims against.
-/

/-! ## A107202.P10216443507696964754

`∩[A141182(n+1), A242663(n+1)]`
-/

namespace A107202.P10216443507696964754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P10216443507696964754

/-! ## A107202.P9098537709917247033

`∩[A008846(n+1), A141776(n+1)]`
-/

namespace A107202.P9098537709917247033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P9098537709917247033

/-! ## A107202.P7817201375475915630

`∩[A141776(n+1), A242663(n+1)]`
-/

namespace A107202.P7817201375475915630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P7817201375475915630

/-! ## A107202.P897138870348099006

`∩[A007519(n+1), A033216(n+1)]`
-/

namespace A107202.P897138870348099006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P897138870348099006

/-! ## A107202.P9335948843663572278

`∩[A008846(n+1), A033216(n+1)]`
-/

namespace A107202.P9335948843663572278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P9335948843663572278

/-! ## A107202.P3635806162280818573

`∩[A033216(n+1), A045390(n+1)]`
-/

namespace A107202.P3635806162280818573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P3635806162280818573

/-! ## A107202.P2519086475449191161

`∩[A033216(n+1), A242663(n+1)]`
-/

namespace A107202.P2519086475449191161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P2519086475449191161

/-! ## A107202.P9950683996565863357

`∩[A033216(n+1), A332226(n+1)]`
-/

namespace A107202.P9950683996565863357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P9950683996565863357

/-! ## A107202.P9854938681425924988

`∩[A141182(n+1), A332226(n+1)]`
-/

namespace A107202.P9854938681425924988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P9854938681425924988

/-! ## A107202.P15964557390473260463

`∩[A141776(n+1), A332226(n+1)]`
-/

namespace A107202.P15964557390473260463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P15964557390473260463

/-! ## A107202.P7889387970231352596

`∩[A004625(n+1), A033216(n+1)]`
-/

namespace A107202.P7889387970231352596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P7889387970231352596

/-! ## A107202.P13797629692120171599

`∩[A033216(n+1), A191218(n+1)]`
-/

namespace A107202.P13797629692120171599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P13797629692120171599

/-! ## A107202.P11848210392080440627

`∩[A141776(n+1), A191218(n+1)]`
-/

namespace A107202.P11848210392080440627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P11848210392080440627

/-! ## A107202.P7048940344015469

`∩[A033216(n+1), A263011(n+1)]`
-/

namespace A107202.P7048940344015469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P7048940344015469

/-! ## A107202.P6328914009180835426

`∩[A191020(n+1), A004625(n+1)]`
-/

namespace A107202.P6328914009180835426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P6328914009180835426

/-! ## A107202.P11241245897613661407

`∩[A191020(n+1), A045390(n+1)]`
-/

namespace A107202.P11241245897613661407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P11241245897613661407

/-! ## A107202.P7836511261715588349

`∩[A191020(n+1), A242663(n+1)]`
-/

namespace A107202.P7836511261715588349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P7836511261715588349

/-! ## A107202.P16797985367741848035

`∩[A191020(n+1), A332226(n+1)]`
-/

namespace A107202.P16797985367741848035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P16797985367741848035

/-! ## A107202.P8955931202327240041

`∩[A004625(n+1), A038881(n+1)]`
-/

namespace A107202.P8955931202327240041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P8955931202327240041

/-! ## A107202.P11521510314859632699

`∩[A007519(n+1), A038881(n+1)]`
-/

namespace A107202.P11521510314859632699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107202.P11521510314859632699

/-!
# A107203: Primes of the form 9x^2 + 10y^2.

The programs for A107203, there is no canonical definition to state claims against.
-/

/-! ## A107203.P7479225274335581346

`p?[A020694(n+1)]`
-/

namespace A107203.P7479225274335581346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107203.P7479225274335581346

/-! ## A107203.P4064991922095058021

`record[p?[A020694(A291766(n))]]`
-/

namespace A107203.P4064991922095058021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107203.P4064991922095058021

/-! ## A107203.P3908767794301208163

`∩[A002476(n+1), A020694(n+1)]`
-/

namespace A107203.P3908767794301208163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P3908767794301208163

/-! ## A107203.P14571272379376377637

`∩[A007645(n+1), A020694(n+1)]`
-/

namespace A107203.P14571272379376377637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P14571272379376377637

/-! ## A107203.P10553520766890609538

`∩[A020694(n+1), A033200(n+1)]`
-/

namespace A107203.P10553520766890609538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P10553520766890609538

/-! ## A107203.P8664908524499087945

`∩[A020694(n+1), A033201(n+1)]`
-/

namespace A107203.P8664908524499087945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P8664908524499087945

/-! ## A107203.P16724999554695192492

`∩[A020694(n+1), A033203(n+1)]`
-/

namespace A107203.P16724999554695192492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P16724999554695192492

/-! ## A107203.P3194115009746958222

`∩[A020694(n+1), A033212(n+1)]`
-/

namespace A107203.P3194115009746958222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P3194115009746958222

/-! ## A107203.P10159387065977124629

`∩[A020694(n+1), A038872(n+1)]`
-/

namespace A107203.P10159387065977124629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P10159387065977124629

/-! ## A107203.P4345849024859467155

`∩[A020694(n+1), A038876(n+1)]`
-/

namespace A107203.P4345849024859467155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P4345849024859467155

/-! ## A107203.P16175321955529889846

`∩[A020694(n+1), A038903(n+1)]`
-/

namespace A107203.P16175321955529889846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P16175321955529889846

/-! ## A107203.P12088747011581636867

`∩[A020694(n+1), A045331(n+1)]`
-/

namespace A107203.P12088747011581636867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P12088747011581636867

/-! ## A107203.P13715366270197820054

`∩[A020694(n+1), A045375(n+1)]`
-/

namespace A107203.P13715366270197820054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P13715366270197820054

/-! ## A107203.P13348164207203190004

`∩[A020694(n+1), A045468(n+1)]`
-/

namespace A107203.P13348164207203190004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P13348164207203190004

/-! ## A107203.P17981855882704948747

`∩[A020694(n+1), A064739(n+1)]`
-/

namespace A107203.P17981855882704948747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P17981855882704948747

/-! ## A107203.P10854582485700667795

`∩[A020694(n+1), A097934(n+1)]`
-/

namespace A107203.P10854582485700667795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P10854582485700667795

/-! ## A107203.P1561992198361152625

`∩[A020694(n+1), A097959(n+1)]`
-/

namespace A107203.P1561992198361152625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P1561992198361152625

/-! ## A107203.P14788896121868421082

`∩[A020694(n+1), A106950(n+1)]`
-/

namespace A107203.P14788896121868421082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P14788896121868421082

/-! ## A107203.P9889620042668669871

`∩[A020694(n+1), A123365(n+1)]`
-/

namespace A107203.P9889620042668669871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P9889620042668669871

/-! ## A107203.P2711245095377833677

`∩[A020694(n+1), A141170(n+1)]`
-/

namespace A107203.P2711245095377833677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107203.P2711245095377833677

/-!
# A107204: Primes of the form 5x^2 + 18y^2.

The programs for A107204, there is no canonical definition to state claims against.
-/

/-! ## A107204.P14085632637933643016

`p?[A020694(n+2)-A006530(A020694(n+2))]`
-/

namespace A107204.P14085632637933643016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020694 (n + 2) - A006530 (A020694 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107204.P14085632637933643016

/-! ## A107204.P16876136740347435228

`p?[A029578(A020694(n+1))]`
-/

namespace A107204.P16876136740347435228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A020694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107204.P16876136740347435228

/-! ## A107204.P12812347164761232104

`p?[A160016(A020694(n+2))]`
-/

namespace A107204.P12812347164761232104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160016 (A020694 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107204.P12812347164761232104

/-!
# A107205: Primes of the form 2x^2 + 45y^2.

The programs for A107205, there is no canonical definition to state claims against.
-/

/-! ## A107205.P13536579014504325236

`A130112(or(n!-1, A130100(n+1)))`
-/

namespace A107205.P13536579014504325236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130112 (Int.lor ((Nat.factorial n : ℤ) - 1) (A130100 (n + 1))).toNat

end

end A107205.P13536579014504325236

/-!
# A107207: Primes of the form 7x^2 + 13y^2.

The programs for A107207, there is no canonical definition to state claims against.
-/

/-! ## A107207.P6815045934556348633

`p?[or(1, ∑[A339921(n+1)])]`
-/

namespace A107207.P6815045934556348633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339921 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107207.P6815045934556348633

/-!
# A107208: Primes of the form 4x^2 + 23y^2.

The programs for A107208, there is no canonical definition to state claims against.
-/

/-! ## A107208.P4975562763958474836

`A033217(lt[1, A033217(n+1)%4]+1)`
-/

namespace A107208.P4975562763958474836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033217 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A107208.P4975562763958474836

/-! ## A107208.P13413274419685919922

`∩[A002145(n+1), A033217(n+1)]`
-/

namespace A107208.P13413274419685919922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P13413274419685919922

/-! ## A107208.P13955783403576725003

`∩[A033217(n+1), A045326(n+1)]`
-/

namespace A107208.P13955783403576725003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P13955783403576725003

/-! ## A107208.P5695750715708239942

`∩[A033217(n+1), A085760(n+1)]`
-/

namespace A107208.P5695750715708239942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P5695750715708239942

/-! ## A107208.P5857950047598166481

`∩[A033217(n+1), A197504(n+1)]`
-/

namespace A107208.P5857950047598166481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P5857950047598166481

/-! ## A107208.P2938472396568952824

`∩[A033217(n+1), A332555(n+1)]`
-/

namespace A107208.P2938472396568952824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P2938472396568952824

/-! ## A107208.P9528708818853077368

`∩[A033217(n+1), A292762(n+1)]`
-/

namespace A107208.P9528708818853077368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P9528708818853077368

/-! ## A107208.P12392455281322703084

`∩[A033217(n+1), A066499(n+1)]`
-/

namespace A107208.P12392455281322703084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P12392455281322703084

/-! ## A107208.P1966704661682820934

`∩[A033217(n+1), A097987(n+1)]`
-/

namespace A107208.P1966704661682820934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P1966704661682820934

/-! ## A107208.P3558429823634340069

`∩[A033217(n+1), A094179(n+1)]`
-/

namespace A107208.P3558429823634340069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P3558429823634340069

/-! ## A107208.P6726216914315534987

`filter[A033217(n+1), A359152(#)]`
-/

namespace A107208.P6726216914315534987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A107208.P6726216914315534987

/-! ## A107208.P12370330082698263201

`∩[A033217(n+1), A380787(n+1)]`
-/

namespace A107208.P12370330082698263201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P12370330082698263201

/-! ## A107208.P10894508699410580241

`∩[A033217(n+1), A120127(n+1)]`
-/

namespace A107208.P10894508699410580241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P10894508699410580241

/-! ## A107208.P2806643306084599576

`∩[A033217(n+1), A167181(n+1)]`
-/

namespace A107208.P2806643306084599576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P2806643306084599576

/-! ## A107208.P6770093712741926333

`∩[A033217(n+1), A359153(n+1)]`
-/

namespace A107208.P6770093712741926333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P6770093712741926333

/-! ## A107208.P10507115831972114393

`∩[A033217(n+1), A309388(n+1)]`
-/

namespace A107208.P10507115831972114393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P10507115831972114393

/-! ## A107208.P1356535466318113687

`∩[A004614(n+1), A033217(n+1)]`
-/

namespace A107208.P1356535466318113687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107208.P1356535466318113687

/-! ## A107208.P5646258569284669415

`filter[A033217(n+1), A347871(#)]`
-/

namespace A107208.P5646258569284669415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A107208.P5646258569284669415

/-! ## A107208.P18166047448420583117

`filter[A033217(n+1), A354028(#)]`
-/

namespace A107208.P18166047448420583117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A107208.P18166047448420583117

/-! ## A107208.P11922480371455277354

`filter[A033217(n+1), A354029(#)]`
-/

namespace A107208.P11922480371455277354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A107208.P11922480371455277354

/-!
# A107209: Primes of the form x^2 + 92y^2.

The programs for A107209, there is no canonical definition to state claims against.
-/

/-! ## A107209.P5098805020765432185

`∩[A008846(n+1), A033217(n+1)]`
-/

namespace A107209.P5098805020765432185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P5098805020765432185

/-! ## A107209.P9469713745709917441

`∩[A033217(n+1), A141336(n+1)]`
-/

namespace A107209.P9469713745709917441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P9469713745709917441

/-! ## A107209.P16386527434981317424

`∩[A033217(n+1), A191218(n+1)]`
-/

namespace A107209.P16386527434981317424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P16386527434981317424

/-! ## A107209.P6332711355832882372

`∩[A191218(n+1), A372898(n+1)]`
-/

namespace A107209.P6332711355832882372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P6332711355832882372

/-! ## A107209.P8282766993566298702

`∩[A002144(n+1), A033217(n+1)]`
-/

namespace A107209.P8282766993566298702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P8282766993566298702

/-! ## A107209.P9390532115153923237

`∩[A002144(n+1), A372898(n+1)]`
-/

namespace A107209.P9390532115153923237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P9390532115153923237

/-! ## A107209.P9238824671450934159

`∩[A002313(n+1), A033217(n+1)]`
-/

namespace A107209.P9238824671450934159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P9238824671450934159

/-! ## A107209.P9676196350653921451

`∩[A033217(n+1), A280084(n+1)]`
-/

namespace A107209.P9676196350653921451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P9676196350653921451

/-! ## A107209.P4736653104711361638

`∩[A033217(n+1), A297177(n+1)]`
-/

namespace A107209.P4736653104711361638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P4736653104711361638

/-! ## A107209.P14255492110292047750

`∩[A297177(n+1), A372898(n+1)]`
-/

namespace A107209.P14255492110292047750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P14255492110292047750

/-! ## A107209.P9335262489395011348

`∩[A033217(n+1), A055025(n+1)]`
-/

namespace A107209.P9335262489395011348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P9335262489395011348

/-! ## A107209.P8813854522458923868

`∩[A033217(n+1), A120960(n+1)]`
-/

namespace A107209.P8813854522458923868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P8813854522458923868

/-! ## A107209.P8828499725141087035

`∩[A033217(n+1), A085759(n+1)]`
-/

namespace A107209.P8828499725141087035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P8828499725141087035

/-! ## A107209.P11685199400048230563

`∩[A033217(n+1), A351535(n+1)]`
-/

namespace A107209.P11685199400048230563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P11685199400048230563

/-! ## A107209.P10848298372098640243

`∩[A351535(n+1), A372898(n+1)]`
-/

namespace A107209.P10848298372098640243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P10848298372098640243

/-! ## A107209.P10712407414440705450

`∩[A033217(n+1), A125018(n+1)]`
-/

namespace A107209.P10712407414440705450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P10712407414440705450

/-! ## A107209.P1557561266925126773

`∩[A033217(n+1), A230779(n+1)]`
-/

namespace A107209.P1557561266925126773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P1557561266925126773

/-! ## A107209.P11193393293441138764

`∩[A033217(n+1), A347877(n+1)]`
-/

namespace A107209.P11193393293441138764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P11193393293441138764

/-! ## A107209.P8769647374200732639

`∩[A033217(n+1), A281292(n+1)]`
-/

namespace A107209.P8769647374200732639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P8769647374200732639

/-! ## A107209.P11457024037285857110

`∩[A033217(n+1), A224450(n+1)]`
-/

namespace A107209.P11457024037285857110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107209.P11457024037285857110

/-!
# A107210: Primes of the form 3x^2 + 31y^2.

The programs for A107210, there is no canonical definition to state claims against.
-/

/-! ## A107210.P11309437949945924303

`∩[A020677(n+1), A038905(n+1)]`
-/

namespace A107210.P11309437949945924303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107210.P11309437949945924303

/-! ## A107210.P12185906447928105246

`∩[A038905(n+1), A092899(n)]`
-/

namespace A107210.P12185906447928105246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107210.P12185906447928105246

/-! ## A107210.P18184487905225536262

`∩[A038905(n+1), A083031(n+1)]`
-/

namespace A107210.P18184487905225536262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107210.P18184487905225536262

/-! ## A107210.P17430691822036467242

`∩[A013574(n+1), A038905(n+1)]`
-/

namespace A107210.P17430691822036467242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107210.P17430691822036467242

/-! ## A107210.P17183052687547037775

`∩[A038905(n+1), A319279(n+1)]`
-/

namespace A107210.P17183052687547037775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107210.P17183052687547037775

/-! ## A107210.P1190396543211107272

`∩[A038905(n+1), A280991(n+1)]`
-/

namespace A107210.P1190396543211107272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107210.P1190396543211107272

/-!
# A107212: Primes of the form 3x^2 + 32y^2.

The programs for A107212, there is no canonical definition to state claims against.
-/

/-! ## A107212.P16709081981899034416

`A261695(A104217(n+1))-1`
-/

namespace A107212.P16709081981899034416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 (A104217 (n + 1)).toNat - 1

end

end A107212.P16709081981899034416

/-!
# A107213: Primes of the form x^2 + 96y^2.

The programs for A107213, there is no canonical definition to state claims against.
-/

/-! ## A107213.P14932343335537495967

`p?[A162282(A158804(n+1))+1]`
-/

namespace A107213.P14932343335537495967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162282 (A158804 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107213.P14932343335537495967

/-!
# A107214: Primes of the form 2x^2 + 49y^2.

The programs for A107214, there is no canonical definition to state claims against.
-/

/-! ## A107214.P2321356224618344174

`A291284(A060693(n)+A008594(n))`
-/

namespace A107214.P2321356224618344174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (A060693 n + A008594 n).toNat

end

end A107214.P2321356224618344174

/-!
# A107216: Primes of the form 9x^2 + 11y^2.

The programs for A107216, there is no canonical definition to state claims against.
-/

/-! ## A107216.P8346564821126416080

`∩[A033209(n+1), A107010(n+1)]`
-/

namespace A107216.P8346564821126416080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P8346564821126416080

/-! ## A107216.P12392699385746040442

`∩[A003627(n+1), A033209(n+1)]`
-/

namespace A107216.P12392699385746040442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P12392699385746040442

/-! ## A107216.P12745725644332826489

`∩[A007528(n+1), A033209(n+1)]`
-/

namespace A107216.P12745725644332826489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P12745725644332826489

/-! ## A107216.P13508080416030619189

`∩[A033209(n+1), A045309(n+1)]`
-/

namespace A107216.P13508080416030619189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P13508080416030619189

/-! ## A107216.P6331722479101576153

`∩[A033209(n+1), A045410(n+1)]`
-/

namespace A107216.P6331722479101576153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P6331722479101576153

/-! ## A107216.P2817752682070625691

`∩[A033209(n+1), A056955(n+1)]`
-/

namespace A107216.P2817752682070625691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P2817752682070625691

/-! ## A107216.P5945413111486702780

`∩[A033209(n+1), A066501(n+1)]`
-/

namespace A107216.P5945413111486702780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P5945413111486702780

/-! ## A107216.P15272750395533987020

`∩[A033209(n+1), A259548(n+1)]`
-/

namespace A107216.P15272750395533987020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P15272750395533987020

/-! ## A107216.P12158422564020602984

`∩[A033209(n+1), A082406(n+1)]`
-/

namespace A107216.P12158422564020602984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P12158422564020602984

/-! ## A107216.P2219203652658624453

`∩[A033209(n+1), A167409(n+1)]`
-/

namespace A107216.P2219203652658624453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P2219203652658624453

/-! ## A107216.P5837808158834995977

`∩[A003627(n+1), A243651(n)]`
-/

namespace A107216.P5837808158834995977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P5837808158834995977

/-! ## A107216.P8079028314007819861

`∩[A007528(n+1), A243651(n)]`
-/

namespace A107216.P8079028314007819861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P8079028314007819861

/-! ## A107216.P6501675354754841543

`∩[A045309(n+1), A243651(n)]`
-/

namespace A107216.P6501675354754841543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P6501675354754841543

/-! ## A107216.P16390257785365406054

`∩[A045410(n+1), A243651(n)]`
-/

namespace A107216.P16390257785365406054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P16390257785365406054

/-! ## A107216.P3544189205944468674

`∩[A056955(n+1), A243651(n)]`
-/

namespace A107216.P3544189205944468674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P3544189205944468674

/-! ## A107216.P12456984169727022632

`∩[A107010(n+1), A243651(n)]`
-/

namespace A107216.P12456984169727022632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P12456984169727022632

/-! ## A107216.P6993901004612760902

`∩[A033209(n+1), A016969(n)]`
-/

namespace A107216.P6993901004612760902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P6993901004612760902

/-! ## A107216.P1764745569402957267

`∩[A033209(n+1), A101328(n+2)]`
-/

namespace A107216.P1764745569402957267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P1764745569402957267

/-! ## A107216.P1471950886146314205

`∩[A033209(n+1), A277571(n+1)]`
-/

namespace A107216.P1471950886146314205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P1471950886146314205

/-! ## A107216.P15769869505338823907

`∩[A033209(n+1), A074243(n+1)]`
-/

namespace A107216.P15769869505338823907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107216.P15769869505338823907

/-!
# A107217: Primes of the form x^2 + 99y^2.

The programs for A107217, there is no canonical definition to state claims against.
-/

/-! ## A107217.P1037487998384389653

`∩[A033209(n+1), A107013(n+1)]`
-/

namespace A107217.P1037487998384389653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P1037487998384389653

/-! ## A107217.P585920679553429678

`∩[A107013(n+1), A232570(n+1)]`
-/

namespace A107217.P585920679553429678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P585920679553429678

/-! ## A107217.P621367443770046044

`∩[A033209(n+1), A141177(n+1)]`
-/

namespace A107217.P621367443770046044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P621367443770046044

/-! ## A107217.P7711836649410450421

`∩[A141177(n+1), A232570(n+1)]`
-/

namespace A107217.P7711836649410450421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P7711836649410450421

/-! ## A107217.P11225691342750508858

`∩[A107013(n+1), A141579(n+1)]`
-/

namespace A107217.P11225691342750508858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P11225691342750508858

/-! ## A107217.P15014445443626212534

`∩[A141177(n+1), A141579(n+1)]`
-/

namespace A107217.P15014445443626212534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P15014445443626212534

/-! ## A107217.P6181608445468843101

`∩[A072874(n+1), A107013(n+1)]`
-/

namespace A107217.P6181608445468843101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P6181608445468843101

/-! ## A107217.P12255378223532494671

`∩[A072874(n+1), A141177(n+1)]`
-/

namespace A107217.P12255378223532494671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P12255378223532494671

/-! ## A107217.P15845819752687298120

`∩[A107013(n+1), A140973(n+1)]`
-/

namespace A107217.P15845819752687298120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P15845819752687298120

/-! ## A107217.P11414478775896444627

`∩[A140973(n+1), A141177(n+1)]`
-/

namespace A107217.P11414478775896444627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P11414478775896444627

/-! ## A107217.P17990900099160810502

`∩[A002476(n+1), A033209(n+1)]`
-/

namespace A107217.P17990900099160810502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P17990900099160810502

/-! ## A107217.P4042930481471218089

`∩[A007645(n+1), A033209(n+1)]`
-/

namespace A107217.P4042930481471218089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P4042930481471218089

/-! ## A107217.P17421617873551288814

`∩[A002476(n+1), A072874(n+1)]`
-/

namespace A107217.P17421617873551288814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P17421617873551288814

/-! ## A107217.P14807302931293691843

`∩[A033209(n+1), A045331(n+1)]`
-/

namespace A107217.P14807302931293691843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P14807302931293691843

/-! ## A107217.P569581128363918414

`∩[A033209(n+1), A045375(n+1)]`
-/

namespace A107217.P569581128363918414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P569581128363918414

/-! ## A107217.P10702580457203215945

`∩[A007645(n+1), A072874(n+1)]`
-/

namespace A107217.P10702580457203215945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P10702580457203215945

/-! ## A107217.P18159105964080694341

`∩[A002476(n+1), A140973(n+1)]`
-/

namespace A107217.P18159105964080694341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P18159105964080694341

/-! ## A107217.P2516904631088535023

`∩[A002476(n+1), A141579(n+1)]`
-/

namespace A107217.P2516904631088535023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P2516904631088535023

/-! ## A107217.P8418165990234517562

`∩[A007645(n+1), A140973(n+1)]`
-/

namespace A107217.P8418165990234517562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P8418165990234517562

/-! ## A107217.P14777723758542313444

`∩[A007645(n+1), A141579(n+1)]`
-/

namespace A107217.P14777723758542313444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107217.P14777723758542313444

/-!
# A107218: Primes of the form 4x^2 + 25y^2.

The programs for A107218, there is no canonical definition to state claims against.
-/

/-! ## A107218.P5239233753145349486

`p?[gcd(A002972(n+1)%5, A002144(n+1))]`
-/

namespace A107218.P5239233753145349486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A002972 (n + 1)) 5) (A002144 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107218.P5239233753145349486

/-! ## A107218.P494807029533898888

`∩[A033205(n+1), A040106(n+1)]`
-/

namespace A107218.P494807029533898888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P494807029533898888

/-! ## A107218.P11640280839640544581

`∩[A038872(n+1), A040106(n+1)]`
-/

namespace A107218.P11640280839640544581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P11640280839640544581

/-! ## A107218.P12477767498711305634

`∩[A040106(n+1), A045468(n+1)]`
-/

namespace A107218.P12477767498711305634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P12477767498711305634

/-! ## A107218.P8458835883687334

`∩[A040106(n+1), A064739(n+1)]`
-/

namespace A107218.P8458835883687334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P8458835883687334

/-! ## A107218.P9507857183384329420

`∩[A040106(n+1), A076518(n+1)]`
-/

namespace A107218.P9507857183384329420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P9507857183384329420

/-! ## A107218.P11094227464683791779

`∩[A040106(n+1), A091729(n+1)]`
-/

namespace A107218.P11094227464683791779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P11094227464683791779

/-! ## A107218.P8477815785647997935

`∩[A040106(n+1), A091730(n+1)]`
-/

namespace A107218.P8477815785647997935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P8477815785647997935

/-! ## A107218.P12971215500703545579

`∩[A040106(n+1), A216815(n+1)]`
-/

namespace A107218.P12971215500703545579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P12971215500703545579

/-! ## A107218.P5459007810545063504

`∩[A040106(n+1), A341783(n+1)]`
-/

namespace A107218.P5459007810545063504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P5459007810545063504

/-! ## A107218.P10678609932664712708

`∩[A040106(n+1), A155565(n+1)]`
-/

namespace A107218.P10678609932664712708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P10678609932664712708

/-! ## A107218.P8276334367109415674

`∩[A040106(n+1), A219612(n+1)]`
-/

namespace A107218.P8276334367109415674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P8276334367109415674

/-! ## A107218.P11189905451183389732

`∩[A023173(n+1), A040106(n+1)]`
-/

namespace A107218.P11189905451183389732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P11189905451183389732

/-! ## A107218.P2144802193188051386

`∩[A040106(n+1), A336403(n+1)]`
-/

namespace A107218.P2144802193188051386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P2144802193188051386

/-! ## A107218.P6486929366092147354

`∩[A020669(n+1), A040106(n+1)]`
-/

namespace A107218.P6486929366092147354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P6486929366092147354

/-! ## A107218.P54521877427102998

`∩[A040106(n+1), A057538(n+1)]`
-/

namespace A107218.P54521877427102998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P54521877427102998

/-! ## A107218.P8582796107878565532

`∩[A031363(n+1), A040106(n+1)]`
-/

namespace A107218.P8582796107878565532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P8582796107878565532

/-! ## A107218.P13528973087658677223

`∩[A040106(n+1), A057762(n+1)]`
-/

namespace A107218.P13528973087658677223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P13528973087658677223

/-! ## A107218.P1236299106557324644

`∩[A040106(n+1), A154778(n+1)]`
-/

namespace A107218.P1236299106557324644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P1236299106557324644

/-! ## A107218.P16739636274492000187

`∩[A040106(n+1), A090771(n+1)]`
-/

namespace A107218.P16739636274492000187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107218.P16739636274492000187

/-!
# A107219: Primes of the form x^2 + 100y^2.

The programs for A107219, there is no canonical definition to state claims against.
-/

/-! ## A107219.P2161001143764003403

`∩[A040105(n+1), A216815(n+1)]`
-/

namespace A107219.P2161001143764003403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P2161001143764003403

/-! ## A107219.P9321163101638207071

`∩[A040105(n+1), A139513(n+1)]`
-/

namespace A107219.P9321163101638207071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P9321163101638207071

/-! ## A107219.P12126746183604802323

`p?[gcd(A002973(n+1)%5, A002144(n+1))]`
-/

namespace A107219.P12126746183604802323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A002973 (n + 1)) 5) (A002144 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A107219.P12126746183604802323

/-! ## A107219.P13127421814827542217

`filter[A040105(n+3), A353812(#)]`
-/

namespace A107219.P13127421814827542217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A107219.P13127421814827542217

/-! ## A107219.P5635303636392107887

`filter[A040105(n+3), A353813(#)]`
-/

namespace A107219.P5635303636392107887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353813 (f1 j).toNat = 1) n)

end

end A107219.P5635303636392107887

/-! ## A107219.P14380346895794510490

`filter[A040105(n+3), A353814(#)]`
-/

namespace A107219.P14380346895794510490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A107219.P14380346895794510490

/-! ## A107219.P9534471627285424678

`filter[A040105(n+3), A358678(#)]`
-/

namespace A107219.P9534471627285424678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A107219.P9534471627285424678

/-! ## A107219.P8813750408231322983

`filter[A040105(n+3), A359150(#)]`
-/

namespace A107219.P8813750408231322983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359150 (f1 j).toNat = 1) n)

end

end A107219.P8813750408231322983

/-! ## A107219.P12169717250813189693

`filter[A040105(n+3), A229062(#)]`
-/

namespace A107219.P12169717250813189693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A107219.P12169717250813189693

/-! ## A107219.P14419043966656132985

`filter[A040105(n+3), A290098(#)]`
-/

namespace A107219.P14419043966656132985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A107219.P14419043966656132985

/-! ## A107219.P17894976480927992779

`filter[A040105(n+3), A347870(#)]`
-/

namespace A107219.P17894976480927992779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347870 (f1 j).toNat = 1) n)

end

end A107219.P17894976480927992779

/-! ## A107219.P2407102564723298181

`filter[A040105(n+3), A354030(#)]`
-/

namespace A107219.P2407102564723298181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354030 (f1 j).toNat = 1) n)

end

end A107219.P2407102564723298181

/-! ## A107219.P10422344830380005594

`filter[A040105(n+3), A354031(#)]`
-/

namespace A107219.P10422344830380005594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354031 (f1 j).toNat = 1) n)

end

end A107219.P10422344830380005594

/-! ## A107219.P363268264277613168

`filter[A040105(n+3), A354035(#)]`
-/

namespace A107219.P363268264277613168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A107219.P363268264277613168

/-! ## A107219.P1952729518950350937

`∩[A040105(n+1), A154778(n+1)]`
-/

namespace A107219.P1952729518950350937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P1952729518950350937

/-! ## A107219.P7907221173276518887

`∩[A040105(n+1), A045797(n+1)]`
-/

namespace A107219.P7907221173276518887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P7907221173276518887

/-! ## A107219.P3509146565116084850

`∩[A018821(n+1), A040105(n+1)]`
-/

namespace A107219.P3509146565116084850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P3509146565116084850

/-! ## A107219.P12131362681108399909

`∩[A040105(n+1), A222945(n)]`
-/

namespace A107219.P12131362681108399909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P12131362681108399909

/-! ## A107219.P4597703925205688523

`∩[A040105(n+1), A072836(n)]`
-/

namespace A107219.P4597703925205688523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072836 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P4597703925205688523

/-! ## A107219.P11341555850535328031

`∩[A040105(n+1), A338763(n+1)]`
-/

namespace A107219.P11341555850535328031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107219.P11341555850535328031

/-!
# A107220: Numbers k such that 1 + (x + x^3 + x^5 + x^7 + ... + x^(2*k+1)) is irreducible over GF(2).

The programs for A107220, there is no canonical definition to state claims against.
-/

/-! ## A107220.P677472370834554858

`∑[A120562(A225546(n+1)+n)]`
-/

namespace A107220.P677472370834554858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A225546 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107220.P677472370834554858

/-! ## A107220.P4632434722740774396

`record[gcd(A007664(n), A133334(n+1))]`
-/

namespace A107220.P4632434722740774396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007664 n) (A133334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107220.P4632434722740774396

/-! ## A107220.P17795799944481510877

`lt[n+1, A040416(A175857(n+1))]`
-/

namespace A107220.P17795799944481510877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040416 (A175857 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107220.P17795799944481510877

/-! ## A107220.P7699611808496576168

`A012265(or(A191275(n+1), A341400(n)))`
-/

namespace A107220.P7699611808496576168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (Int.lor (A191275 (n + 1)) (A341400 n)).toNat

end

end A107220.P7699611808496576168

/-! ## A107220.P3927277965399383641

`record[A196020(n+1)/A261762(n)]`
-/

namespace A107220.P3927277965399383641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196020 (n + 1) : ℚ) / (A261762 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107220.P3927277965399383641

/-!
# A107221: Numbers such that sum of digits is 7 and product of digits is 8.

The programs for A107221, there is no canonical definition to state claims against.
-/

/-! ## A107221.P12670833514982758524

`∩[A199989(n+1), A017245(n)]`
-/

namespace A107221.P12670833514982758524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107221.P12670833514982758524

/-! ## A107221.P2744628219432847886

`∩[A034055(n+1), A052221(n+1)]`
-/

namespace A107221.P2744628219432847886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107221.P2744628219432847886

/-! ## A107221.P2048262694031875118

`∩[A052221(n+1), A081989(n+1)]`
-/

namespace A107221.P2048262694031875118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107221.P2048262694031875118

/-! ## A107221.P9458794709650084117

`∩[A034055(n+1), A119461(n+1)]`
-/

namespace A107221.P9458794709650084117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107221.P9458794709650084117

/-! ## A107221.P5084251464839640285

`∩[A062372(n+1), A119461(n+1)]`
-/

namespace A107221.P5084251464839640285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107221.P5084251464839640285

/-!
# A107222: Number of primitive normal polynomials of degree n over GF(2).

The programs for A107222, there is no canonical definition to state claims against.
-/

/-! ## A107222.P14798280861218001746

`A027362(n+1)-A272033(n+1)`
-/

namespace A107222.P14798280861218001746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027362 (n + 1) - A272033 (n + 1)

end

end A107222.P14798280861218001746

/-! ## A107222.P7620637701449016948

`A003473(n+1)/(n+1)-A272033(n+1)`
-/

namespace A107222.P7620637701449016948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003473 (n + 1) : ℚ) / (n + 1 : ℚ) - (A272033 (n + 1) : ℚ)

end

end A107222.P7620637701449016948

/-! ## A107222.P3263890064690215301

`(2^(n+1)-A086324(n+1))/(n+1)-A272033(n+1)`
-/

namespace A107222.P3263890064690215301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A086324 (n + 1) : ℚ) / (n + 1 : ℚ) - (A272033 (n + 1) : ℚ)

end

end A107222.P3263890064690215301

/-! ## A107222.P2111229610084626096

`A027362(n+1)+A272033(n+1)/A033999(2*n+1)`
-/

namespace A107222.P2111229610084626096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027362 (n + 1) : ℚ) + (A272033 (n + 1) : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A107222.P2111229610084626096

/-! ## A107222.P10213082753249249498

`and(-A086324(n+1), A126646(n))/(n+1)-A272033(n+1)`
-/

namespace A107222.P10213082753249249498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A086324 (n + 1)) (A126646 n) : ℚ) / (n + 1 : ℚ) - (A272033 (n + 1) : ℚ)

end

end A107222.P10213082753249249498

/-!
# A107223: a(n) = floor(Pi*floor(n*Pi)).

The programs for A107223, the canonical program `A107223.P1811295383278374313` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107223 has offset 1).

The definition of A107223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*floor((n+1)*π))` (program `A107223.P1811295383278374313`, by `A107223.P1811295383278374313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107223.P1811295383278374313

`floor(π*floor((n+1)*π))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107223

/-- `floor(π*floor((n+1)*π))` -/
def P1811295383278374313.Spec : Prop :=
  ∀ n, P1811295383278374313.a n = A107223 (n + 1)

theorem P1811295383278374313.correct : P1811295383278374313.Spec := by
  intro n
  simp only [A107223, Nat.add_sub_cancel]

end A107223

/-! ## A107223.P16422926053451469910

`A022844(floor(π*(n+1)))`
-/

namespace A107223.P16422926053451469910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 ⌊Real.pi * (n + 1 : ℝ)⌋.toNat

end

end A107223.P16422926053451469910

namespace A107223

/-- `A022844(floor(π*(n+1)))` -/
def P16422926053451469910.Spec : Prop :=
  ∀ n, P16422926053451469910.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P5772028952086070804

`A004084(A121381(n+1))-1`
-/

namespace A107223.P5772028952086070804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (A121381 (n + 1)).toNat - 1

end

end A107223.P5772028952086070804

namespace A107223

/-- `A004084(A121381(n+1))-1` -/
def P5772028952086070804.Spec : Prop :=
  ∀ n, P5772028952086070804.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P6317851209603202208

`A121381(A022844(n+1))-1`
-/

namespace A107223.P6317851209603202208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (A022844 (n + 1)).toNat - 1

end

end A107223.P6317851209603202208

namespace A107223

/-- `A121381(A022844(n+1))-1` -/
def P6317851209603202208.Spec : Prop :=
  ∀ n, P6317851209603202208.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P1824348926501787874

`A004084(A004084(n+2))-1`
-/

namespace A107223.P1824348926501787874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (A004084 (n + 2)).toNat - 1

end

end A107223.P1824348926501787874

namespace A107223

/-- `A004084(A004084(n+2))-1` -/
def P1824348926501787874.Spec : Prop :=
  ∀ n, P1824348926501787874.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P8397799113358359793

`record[A022844(A022844(abs(1-n)))]`
-/

namespace A107223.P8397799113358359793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A022844 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107223.P8397799113358359793

namespace A107223

/-- `record[A022844(A022844(abs(1-n)))]` -/
def P8397799113358359793.Spec : Prop :=
  ∀ n, P8397799113358359793.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P6004475616915191513

`A057428(n+1)+A004084(A004084(n+2))`
-/

namespace A107223.P6004475616915191513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A004084 (A004084 (n + 2)).toNat

end

end A107223.P6004475616915191513

namespace A107223

/-- `A057428(n+1)+A004084(A004084(n+2))` -/
def P6004475616915191513.Spec : Prop :=
  ∀ n, P6004475616915191513.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P2396373063131672418

`A022844(A022844(n+1))%A005385(n+1)²`
-/

namespace A107223.P2396373063131672418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022844 (A022844 (n + 1)).toNat) (A005385 (n + 1) ^ 2)

end

end A107223.P2396373063131672418

namespace A107223

/-- `A022844(A022844(n+1))%A005385(n+1)²` -/
def P2396373063131672418.Spec : Prop :=
  ∀ n, P2396373063131672418.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P15255246674279022974

`A316341(A022844(2*n+1))+A022844(A022844(n+1))`
-/

namespace A107223.P15255246674279022974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A022844 (2 * n + 1)).toNat + A022844 (A022844 (n + 1)).toNat

end

end A107223.P15255246674279022974

namespace A107223

/-- `A316341(A022844(2*n+1))+A022844(A022844(n+1))` -/
def P15255246674279022974.Spec : Prop :=
  ∀ n, P15255246674279022974.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P12725785316284097025

`A108591(A054386(A108591(A054386(n+1))))`
-/

namespace A107223.P12725785316284097025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A054386 (A108591 (A054386 (n + 1)).toNat).toNat).toNat

end

end A107223.P12725785316284097025

namespace A107223

/-- `A108591(A054386(A108591(A054386(n+1))))` -/
def P12725785316284097025.Spec : Prop :=
  ∀ n, P12725785316284097025.a n = A107223 (n + 1)

end A107223

/-! ## A107223.P7831103602157250721

`A274399(3*A274399(3*(n+1)))`
-/

namespace A107223.P7831103602157250721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (3 * A274399 (3 * (n + 1))).toNat

end

end A107223.P7831103602157250721

namespace A107223

/-- `A274399(3*A274399(3*(n+1)))` -/
def P7831103602157250721.Spec : Prop :=
  ∀ n, P7831103602157250721.a n = A107223 (n + 1)

end A107223

/-!
# A107224: Numbers having in their Zeckendorf representation more odd than even terms.

The programs for A107224, the canonical program `A107224.P12496773883750467258` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107224 has offset 1).

The definition of A107224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107224.P11332583852775402909

`eq[char[A107225(n+1)], A000007(n)]`
-/

namespace A107224.P11332583852775402909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107224.P11332583852775402909

namespace A107224

/-- `eq[char[A107225(n+1)], A000007(n)]` -/
def P11332583852775402909.Spec : Prop :=
  ∀ n, (P11332583852775402909.a n : ℤ) = A107224 (n + 1)

end A107224

/-! ## A107224.P15795956065975923314

`eq[char[A107225(n+1)], A000038(n)]`
-/

namespace A107224.P15795956065975923314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107224.P15795956065975923314

namespace A107224

/-- `eq[char[A107225(n+1)], A000038(n)]` -/
def P15795956065975923314.Spec : Prop :=
  ∀ n, (P15795956065975923314.a n : ℤ) = A107224 (n + 1)

end A107224

/-! ## A107224.P12496773883750467258

`lt[A107015(n+1), A107016(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107224

/-- `lt[A107015(n+1), A107016(n+1)]+1` -/
def P12496773883750467258.Spec : Prop :=
  ∀ n, (P12496773883750467258.a n : ℤ) = A107224 (n + 1)

theorem P12496773883750467258.correct : P12496773883750467258.Spec := by
  intro n
  simp only [A107224, Nat.add_sub_cancel]

end A107224

/-! ## A107224.P11982911805904134811

`eq[char[A107225(n+1)], A209229(2*n+1)]`
-/

namespace A107224.P11982911805904134811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107224.P11982911805904134811

namespace A107224

/-- `eq[char[A107225(n+1)], A209229(2*n+1)]` -/
def P11982911805904134811.Spec : Prop :=
  ∀ n, (P11982911805904134811.a n : ℤ) = A107224 (n + 1)

end A107224

/-! ## A107224.P12118822559824709029

`eq[A061142(n+1)%2, char[A107225(n+1)]]`
-/

namespace A107224.P12118822559824709029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061142 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107225 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A107224.P12118822559824709029

namespace A107224

/-- `eq[A061142(n+1)%2, char[A107225(n+1)]]` -/
def P12118822559824709029.Spec : Prop :=
  ∀ n, (P12118822559824709029.a n : ℤ) = A107224 (n + 1)

end A107224

/-! ## A107224.P5957660921402587234

`eq[A287661(n+1)%3, char[A107225(n+1)]]`
-/

namespace A107224.P5957660921402587234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287661 (n + 1)) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107225 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A107224.P5957660921402587234

namespace A107224

/-- `eq[A287661(n+1)%3, char[A107225(n+1)]]` -/
def P5957660921402587234.Spec : Prop :=
  ∀ n, (P5957660921402587234.a n : ℤ) = A107224 (n + 1)

end A107224

/-!
# A107225: Numbers having in their Zeckendorf representation not more odd than even terms.

The programs for A107225, the canonical program `A107225.P3066246955477926444` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107225 has offset 1).

The definition of A107225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107225.P16948960236610919245

`comp[A107224(n+1)-1]+1`
-/

namespace A107225.P16948960236610919245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107224 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A107225.P16948960236610919245

namespace A107225

/-- `comp[A107224(n+1)-1]+1` -/
def P16948960236610919245.Spec : Prop :=
  ∀ n, (P16948960236610919245.a n : ℤ) = A107225 (n + 1)

end A107225

/-! ## A107225.P3066246955477926444

`eq[char[A107224(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107225

/-- `eq[char[A107224(n+1)], A000007(n)]` -/
def P3066246955477926444.Spec : Prop :=
  ∀ n, (P3066246955477926444.a n : ℤ) = A107225 (n + 1)

theorem P3066246955477926444.correct : P3066246955477926444.Spec := by
  intro n
  simp only [A107225, Nat.add_sub_cancel]

end A107225

/-! ## A107225.P2003364427301926114

`eq[char[A107224(n+1)], A000038(n)]`
-/

namespace A107225.P2003364427301926114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107225.P2003364427301926114

namespace A107225

/-- `eq[char[A107224(n+1)], A000038(n)]` -/
def P2003364427301926114.Spec : Prop :=
  ∀ n, (P2003364427301926114.a n : ℤ) = A107225 (n + 1)

end A107225

/-! ## A107225.P14431832229141098504

`eq[char[A107224(n+1)], A209229(2*n+1)]`
-/

namespace A107225.P14431832229141098504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107225.P14431832229141098504

namespace A107225

/-- `eq[char[A107224(n+1)], A209229(2*n+1)]` -/
def P14431832229141098504.Spec : Prop :=
  ∀ n, (P14431832229141098504.a n : ℤ) = A107225 (n + 1)

end A107225

/-! ## A107225.P5538827794208615206

`eq[char[A107224(n+1)], A117569(2*n)]`
-/

namespace A107225.P5538827794208615206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107225.P5538827794208615206

namespace A107225

/-- `eq[char[A107224(n+1)], A117569(2*n)]` -/
def P5538827794208615206.Spec : Prop :=
  ∀ n, (P5538827794208615206.a n : ℤ) = A107225 (n + 1)

end A107225

/-!
# A107226: Numbers having in their Zeckendorf representation as many odd as even terms.

The programs for A107226, the canonical program `A107226.P6003069831219659432` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107226 has offset 1).

The definition of A107226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107226.P6003069831219659432

`eq[A107015(n+1), A107016(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107226

/-- `eq[A107015(n+1), A107016(n+1)]+1` -/
def P6003069831219659432.Spec : Prop :=
  ∀ n, (P6003069831219659432.a n : ℤ) = A107226 (n + 1)

theorem P6003069831219659432.correct : P6003069831219659432.Spec := by
  intro n
  simp only [A107226, Nat.add_sub_cancel]

end A107226

/-! ## A107226.P16826511737574637921

`A020725(eq[A107015(n+1), A107016(n+1)])`
-/

namespace A107226.P16826511737574637921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A107226.P16826511737574637921

namespace A107226

/-- `A020725(eq[A107015(n+1), A107016(n+1)])` -/
def P16826511737574637921.Spec : Prop :=
  ∀ n, P16826511737574637921.a n = A107226 (n + 1)

end A107226

/-! ## A107226.P5673682729246738505

`A065475(eq[A107015(n+1), A107016(n+1)])`
-/

namespace A107226.P5673682729246738505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A107226.P5673682729246738505

namespace A107226

/-- `A065475(eq[A107015(n+1), A107016(n+1)])` -/
def P5673682729246738505.Spec : Prop :=
  ∀ n, P5673682729246738505.a n = A107226 (n + 1)

end A107226

/-! ## A107226.P4376066866469499234

`A153152(eq[A107015(n+1), A107016(n+1)])`
-/

namespace A107226.P4376066866469499234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A107226.P4376066866469499234

namespace A107226

/-- `A153152(eq[A107015(n+1), A107016(n+1)])` -/
def P4376066866469499234.Spec : Prop :=
  ∀ n, P4376066866469499234.a n = A107226 (n + 1)

end A107226

/-! ## A107226.P8691908051712106508

`eq[A007895(n), A106469(A007504(n))]`
-/

namespace A107226.P8691908051712106508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107226.P8691908051712106508

namespace A107226

/-- `eq[A007895(n), A106469(A007504(n))]` -/
def P8691908051712106508.Spec : Prop :=
  ∀ n, (P8691908051712106508.a n : ℤ) = A107226 (n + 1)

end A107226

/-!
# A107227: Numbers having no odd terms in their Zeckendorf representation.

The programs for A107227, the canonical program `A107227.P15220513421727167996` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107227 has offset 1).

The definition of A107227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107227.P15220513421727167996

`∑[A306672(val(1+n, 2))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107227

/-- `∑[A306672(val(1+n, 2))]` -/
def P15220513421727167996.Spec : Prop :=
  ∀ n, P15220513421727167996.a n = A107227 (n + 1)

theorem P15220513421727167996.correct : P15220513421727167996.Spec := by
  intro n
  simp only [A107227, Nat.add_sub_cancel]

end A107227

/-! ## A107227.P3211581037666712437

`∑[A306672(Δ[A011371(n)])]`
-/

namespace A107227.P3211581037666712437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P3211581037666712437

namespace A107227

/-- `∑[A306672(Δ[A011371(n)])]` -/
def P3211581037666712437.Spec : Prop :=
  ∀ n, P3211581037666712437.a n = A107227 (n + 1)

end A107227

/-! ## A107227.P14547543977422746879

`∑[A306672(A007814(n+1))]`
-/

namespace A107227.P14547543977422746879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P14547543977422746879

namespace A107227

/-- `∑[A306672(A007814(n+1))]` -/
def P14547543977422746879.Spec : Prop :=
  ∀ n, P14547543977422746879.a n = A107227 (n + 1)

end A107227

/-! ## A107227.P4694058639693981328

`∑[A173495(A059132(n)/2)]`
-/

namespace A107227.P4694058639693981328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (SequenceMachineLib.roundAway ((A059132 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P4694058639693981328

namespace A107227

/-- `∑[A173495(A059132(n)/2)]` -/
def P4694058639693981328.Spec : Prop :=
  ∀ n, P4694058639693981328.a n = A107227 (n + 1)

end A107227

/-! ## A107227.P11637255921804268787

`∑[A306672(A001511(n+1)-1)]`
-/

namespace A107227.P11637255921804268787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (A001511 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P11637255921804268787

namespace A107227

/-- `∑[A306672(A001511(n+1)-1)]` -/
def P11637255921804268787.Spec : Prop :=
  ∀ n, P11637255921804268787.a n = A107227 (n + 1)

end A107227

/-! ## A107227.P5281313260667922561

`∑[A173495(A004526(A059132(n)))]`
-/

namespace A107227.P5281313260667922561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (A004526 (A059132 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P5281313260667922561

namespace A107227

/-- `∑[A173495(A004526(A059132(n)))]` -/
def P5281313260667922561.Spec : Prop :=
  ∀ n, P5281313260667922561.a n = A107227 (n + 1)

end A107227

/-! ## A107227.P8580293172647375700

`∑[A306672(A004914(A001511(n+1)))]`
-/

namespace A107227.P8580293172647375700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (A004914 (A001511 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P8580293172647375700

namespace A107227

/-- `∑[A306672(A004914(A001511(n+1)))]` -/
def P8580293172647375700.Spec : Prop :=
  ∀ n, P8580293172647375700.a n = A107227 (n + 1)

end A107227

/-! ## A107227.P17325431915709175417

`eq[0, A107016(n+1)]+1`
-/

namespace A107227.P17325431915709175417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107227.P17325431915709175417

namespace A107227

/-- `eq[0, A107016(n+1)]+1` -/
def P17325431915709175417.Spec : Prop :=
  ∀ n, (P17325431915709175417.a n : ℤ) = A107227 (n + 1)

end A107227

/-!
# A107228: Numbers having no even terms in their Zeckendorf representation.

The programs for A107228, the canonical program `A107228.P2676299887391952317` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107228 has offset 1).

The definition of A107228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107228.P2676299887391952317

`eq[0, A107015(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107228

/-- `eq[0, A107015(n+1)]+1` -/
def P2676299887391952317.Spec : Prop :=
  ∀ n, (P2676299887391952317.a n : ℤ) = A107228 (n + 1)

theorem P2676299887391952317.correct : P2676299887391952317.Spec := by
  intro n
  simp only [A107228, Nat.add_sub_cancel]

end A107228

/-! ## A107228.P17187886093058448660

`record[n+1-A107015(n+1)*A195128(n)]`
-/

namespace A107228.P17187886093058448660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A107015 (n + 1) * A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107228.P17187886093058448660

namespace A107228

/-- `record[n+1-A107015(n+1)*A195128(n)]` -/
def P17187886093058448660.Spec : Prop :=
  ∀ n, P17187886093058448660.a n = A107228 (n + 1)

end A107228

/-! ## A107228.P5061680535454224382

`record[n+1-A107015(n+1)*A265413(n)]`
-/

namespace A107228.P5061680535454224382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A107015 (n + 1) * A265413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107228.P5061680535454224382

namespace A107228

/-- `record[n+1-A107015(n+1)*A265413(n)]` -/
def P5061680535454224382.Spec : Prop :=
  ∀ n, P5061680535454224382.a n = A107228 (n + 1)

end A107228

/-! ## A107228.P12638642774415580940

`record[n+1-A001358(n+1)*A107015(n+1)]`
-/

namespace A107228.P12638642774415580940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001358 (n + 1) * A107015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107228.P12638642774415580940

namespace A107228

/-- `record[n+1-A001358(n+1)*A107015(n+1)]` -/
def P12638642774415580940.Spec : Prop :=
  ∀ n, P12638642774415580940.a n = A107228 (n + 1)

end A107228

/-! ## A107228.P601411346688119117

`A331181(A000040(2*n+5))+lt[A107015(n+1), 1]`
-/

namespace A107228.P601411346688119117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331181 (A000040 (2 * n + 5)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A107228.P601411346688119117

namespace A107228

/-- `A331181(A000040(2*n+5))+lt[A107015(n+1), 1]` -/
def P601411346688119117.Spec : Prop :=
  ∀ n, P601411346688119117.a n = A107228 (n + 1)

end A107228

/-! ## A107228.P17545142976763677927

`A331181(A139645(n+1))+lt[A107015(n+1), 1]`
-/

namespace A107228.P17545142976763677927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331181 (A139645 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A107228.P17545142976763677927

namespace A107228

/-- `A331181(A139645(n+1))+lt[A107015(n+1), 1]` -/
def P17545142976763677927.Spec : Prop :=
  ∀ n, P17545142976763677927.a n = A107228 (n + 1)

end A107228

/-! ## A107228.P8177328364592505934

`record[n+1-A000096(n*A107015(n+1))]`
-/

namespace A107228.P8177328364592505934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000096 ((n : ℤ) * A107015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107228.P8177328364592505934

namespace A107228

/-- `record[n+1-A000096(n*A107015(n+1))]` -/
def P8177328364592505934.Spec : Prop :=
  ∀ n, P8177328364592505934.a n = A107228 (n + 1)

end A107228

/-!
# A107229: a(n) = 2*a(n-2)+5*a(n-3), n>6.

The programs for A107229, the canonical program `A107229.P16324176902532896352` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107229 has offset 0).

The definition of A107229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+5*a(n-3)` (program `A107229.P16324176902532896352`, by `A107229.P16324176902532896352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107229.P11647864009259701394

`ogf((1+x-x^2-4x^3-4x^4-12x^6-30x^7)/(1-2x^2-5x^3))`
-/

namespace A107229.P11647864009259701394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -4, -4, 0, -12, -30] [1, 0, -2, -5] n

end

end A107229.P11647864009259701394

namespace A107229

/-- `ogf((1+x-x^2-4x^3-4x^4-12x^6-30x^7)/(1-2x^2-5x^3))` -/
def P11647864009259701394.Spec : Prop :=
  ∀ n, P11647864009259701394.a n = A107229 n

end A107229

/-! ## A107229.P16324176902532896352

`2*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=11, a(6)=9, a(7)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107229

/-- `2*a(n-2)+5*a(n-3)` -/
def P16324176902532896352.Spec : Prop :=
  ∀ n, (P16324176902532896352.a n : ℤ) = A107229 n

theorem P16324176902532896352.correct : P16324176902532896352.Spec := by
  intro n
  simp only [A107229]

end A107229

/-! ## A107229.P200525131048827247

`or(1, A285707(A151472(n)))`
-/

namespace A107229.P200525131048827247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285707 (A151472 n).toNat)

end

end A107229.P200525131048827247

namespace A107229

/-- `or(1, A285707(A151472(n)))` -/
def P200525131048827247.Spec : Prop :=
  ∀ n, P200525131048827247.a n = A107229 n

end A107229

/-!
# A107230: A number triangle of inverse Chebyshev transforms.

The programs for A107230, the canonical program `A107230.P12967853617686474406` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107230 has offset 0).

The definition of A107230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107230.P12967853617686474406

`C(row(n), col(n))*C(row(n)-col(n), floor((row(n)-col(n))/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107230

/-- `C(row(n), col(n))*C(row(n)-col(n), floor((row(n)-col(n))/2))` -/
def P12967853617686474406.Spec : Prop :=
  ∀ n, (P12967853617686474406.a n : ℤ) = A107230 n

theorem P12967853617686474406.correct : P12967853617686474406.Spec := by
  intro n
  simp only [A107230]

end A107230

/-! ## A107230.P13623169742159820724

`A001405(row(n)-col(n))*A007318(n)`
-/

namespace A107230.P13623169742159820724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A007318 n

end

end A107230.P13623169742159820724

namespace A107230

/-- `A001405(row(n)-col(n))*A007318(n)` -/
def P13623169742159820724.Spec : Prop :=
  ∀ n, P13623169742159820724.a n = A107230 n

end A107230

/-! ## A107230.P8874938179694735189

`A007318(n)*A001405(A025581(n))`
-/

namespace A107230.P8874938179694735189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001405 (A025581 n).toNat

end

end A107230.P8874938179694735189

namespace A107230

/-- `A007318(n)*A001405(A025581(n))` -/
def P8874938179694735189.Spec : Prop :=
  ∀ n, P8874938179694735189.a n = A107230 n

end A107230

/-! ## A107230.P6003493339659393364

`A007318(n)*A210736(A004736(n+1))`
-/

namespace A107230.P6003493339659393364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A210736 (A004736 (n + 1)).toNat

end

end A107230.P6003493339659393364

namespace A107230

/-- `A007318(n)*A210736(A004736(n+1))` -/
def P6003493339659393364.Spec : Prop :=
  ∀ n, P6003493339659393364.a n = A107230 n

end A107230

/-! ## A107230.P7368390544466920178

`A143358(n)/A059268(n)`
-/

namespace A107230.P7368390544466920178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143358 n : ℚ) / (A059268 n : ℚ)

end

end A107230.P7368390544466920178

namespace A107230

/-- `A143358(n)/A059268(n)` -/
def P7368390544466920178.Spec : Prop :=
  ∀ n, P7368390544466920178.a n = (A107230 n : ℚ)

end A107230

/-! ## A107230.P6606776496343390753

`A143358(n)/A000079(A002262(n))`
-/

namespace A107230.P6606776496343390753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143358 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A107230.P6606776496343390753

namespace A107230

/-- `A143358(n)/A000079(A002262(n))` -/
def P6606776496343390753.Spec : Prop :=
  ∀ n, P6606776496343390753.a n = (A107230 n : ℚ)

end A107230

/-! ## A107230.P12029434354121605336

`A143358(n)/A130321(A061579(n))`
-/

namespace A107230.P12029434354121605336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143358 n : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A107230.P12029434354121605336

namespace A107230

/-- `A143358(n)/A130321(A061579(n))` -/
def P12029434354121605336.Spec : Prop :=
  ∀ n, P12029434354121605336.a n = (A107230 n : ℚ)

end A107230

/-!
# A107231: a(n) = C(n+2,2)*C(n,floor(n/2)).

The programs for A107231, the canonical program `A107231.P11469263297408597159` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107231 has offset 0).

The definition of A107231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)*C(n, floor(n/2))` (program `A107231.P11469263297408597159`, by `A107231.P11469263297408597159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107231.P3791281003827057647

`A000217(n+1)*A001405(n)`
-/

namespace A107231.P3791281003827057647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A001405 n

end

end A107231.P3791281003827057647

namespace A107231

/-- `A000217(n+1)*A001405(n)` -/
def P3791281003827057647.Spec : Prop :=
  ∀ n, P3791281003827057647.a n = A107231 n

theorem P3791281003827057647.correct : P3791281003827057647.Spec := by
  intro n
  simp only [A107231, Nat.add_sub_cancel, A107231.P3791281003827057647.a, A107231.P11469263297408597159.a, A000217, A000217.P10269402890581615239.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107231

/-! ## A107231.P11469263297408597159

`C(n+2, 2)*C(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107231

/-- `C(n+2, 2)*C(n, floor(n/2))` -/
def P11469263297408597159.Spec : Prop :=
  ∀ n, (P11469263297408597159.a n : ℤ) = A107231 n

theorem P11469263297408597159.correct : P11469263297408597159.Spec := by
  intro n
  simp only [A107231]

end A107231

/-! ## A107231.P9709602398074124618

`(n+2)/∑[and(1, n)]*a(n-1)` with `a(0)=1`
-/

namespace A107231.P9709602398074124618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * a (n - 1)

end

end A107231.P9709602398074124618

namespace A107231

/-- `(n+2)/∑[and(1, n)]*a(n-1)` -/
def P9709602398074124618.Spec : Prop :=
  ∀ n, P9709602398074124618.a n = (A107231 n : ℚ)

end A107231

/-! ## A107231.P7397172564478768408

`(n+2)/floor((n+1)/2)*a(n-1)` with `a(0)=1`
-/

namespace A107231.P7397172564478768408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ) * a (n - 1)

end

end A107231.P7397172564478768408

namespace A107231

/-- `(n+2)/floor((n+1)/2)*a(n-1)` -/
def P7397172564478768408.Spec : Prop :=
  ∀ n, P7397172564478768408.a n = (A107231 n : ℚ)

end A107231

/-! ## A107231.P17294312273811050320

`∑[n+1]*A001405(n)`
-/

namespace A107231.P17294312273811050320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 n

end

end A107231.P17294312273811050320

namespace A107231

/-- `∑[n+1]*A001405(n)` -/
def P17294312273811050320.Spec : Prop :=
  ∀ n, P17294312273811050320.a n = A107231 n

end A107231

/-! ## A107231.P8009380652418439827

`(A014495(n)+1)*∑[n+1]`
-/

namespace A107231.P8009380652418439827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A107231.P8009380652418439827

namespace A107231

/-- `(A014495(n)+1)*∑[n+1]` -/
def P8009380652418439827.Spec : Prop :=
  ∀ n, P8009380652418439827.a n = A107231 n

end A107231

/-! ## A107231.P5126876845003680768

`∑[n+1]*A210736(n+1)`
-/

namespace A107231.P5126876845003680768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A210736 (n + 1)

end

end A107231.P5126876845003680768

namespace A107231

/-- `∑[n+1]*A210736(n+1)` -/
def P5126876845003680768.Spec : Prop :=
  ∀ n, P5126876845003680768.a n = A107231 n

end A107231

/-! ## A107231.P14851150562983475183

`(n+2)/2*A100071(n+1)`
-/

namespace A107231.P14851150562983475183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A100071 (n + 1) : ℚ)

end

end A107231.P14851150562983475183

namespace A107231

/-- `(n+2)/2*A100071(n+1)` -/
def P14851150562983475183.Spec : Prop :=
  ∀ n, P14851150562983475183.a n = (A107231 n : ℚ)

end A107231

/-! ## A107231.P11808900211653645537

`A008619(n)*A242172(n)`
-/

namespace A107231.P11808900211653645537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A242172 n

end

end A107231.P11808900211653645537

namespace A107231

/-- `A008619(n)*A242172(n)` -/
def P11808900211653645537.Spec : Prop :=
  ∀ n, P11808900211653645537.a n = A107231 n

end A107231

/-! ## A107231.P2422895497742567150

`A001405(n)*A161680(n+2)`
-/

namespace A107231.P2422895497742567150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A161680 (n + 2)

end

end A107231.P2422895497742567150

namespace A107231

/-- `A001405(n)*A161680(n+2)` -/
def P2422895497742567150.Spec : Prop :=
  ∀ n, P2422895497742567150.a n = A107231 n

theorem P2422895497742567150.correct : P2422895497742567150.Spec := by
  intro n
  simp only [A107231, Nat.add_sub_cancel, A107231.P2422895497742567150.a, A107231.P11469263297408597159.a, A001405, A001405.P5205018418992951678.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107231

/-! ## A107231.P16674721735893201574

`A001405(n)*A001972(2*n)`
-/

namespace A107231.P16674721735893201574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A001972 (2 * n)

end

end A107231.P16674721735893201574

namespace A107231

/-- `A001405(n)*A001972(2*n)` -/
def P16674721735893201574.Spec : Prop :=
  ∀ n, P16674721735893201574.a n = A107231 n

end A107231

/-! ## A107231.P8865833595255081594

`abs(A001972(2*n)*A126930(n))`
-/

namespace A107231.P8865833595255081594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001972 (2 * n) * A126930 n|

end

end A107231.P8865833595255081594

namespace A107231

/-- `abs(A001972(2*n)*A126930(n))` -/
def P8865833595255081594.Spec : Prop :=
  ∀ n, P8865833595255081594.a n = A107231 n

end A107231

/-! ## A107231.P13120914305983824900

`A001405(n)*A134519(2*n+1)`
-/

namespace A107231.P13120914305983824900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A134519 (2 * n + 1)

end

end A107231.P13120914305983824900

namespace A107231

/-- `A001405(n)*A134519(2*n+1)` -/
def P13120914305983824900.Spec : Prop :=
  ∀ n, P13120914305983824900.a n = A107231 n

end A107231

/-! ## A107231.P6231436639239643581

`A000217(n+1)/2*A063886(n+1)`
-/

namespace A107231.P6231436639239643581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / 2 * (A063886 (n + 1) : ℚ)

end

end A107231.P6231436639239643581

namespace A107231

/-- `A000217(n+1)/2*A063886(n+1)` -/
def P6231436639239643581.Spec : Prop :=
  ∀ n, P6231436639239643581.a n = (A107231 n : ℚ)

end A107231

/-! ## A107231.P5127771811447292603

`(A191527(n+1)+A001405(n+1))*A008619(n)`
-/

namespace A107231.P5127771811447292603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191527 (n + 1) + A001405 (n + 1)) * A008619 n

end

end A107231.P5127771811447292603

namespace A107231

/-- `(A191527(n+1)+A001405(n+1))*A008619(n)` -/
def P5127771811447292603.Spec : Prop :=
  ∀ n, P5127771811447292603.a n = A107231 n

end A107231

/-! ## A107231.P1548038354219863103

`A000217(n+1)/A109613(n+1)*A242172(n)`
-/

namespace A107231.P1548038354219863103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A109613 (n + 1) : ℚ) * (A242172 n : ℚ)

end

end A107231.P1548038354219863103

namespace A107231

/-- `A000217(n+1)/A109613(n+1)*A242172(n)` -/
def P1548038354219863103.Spec : Prop :=
  ∀ n, P1548038354219863103.a n = (A107231 n : ℚ)

end A107231

/-! ## A107231.P14489416398397364275

`C(n, floor(n/2))*∑[n+1]`
-/

namespace A107231.P14489416398397364275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107231.P14489416398397364275

namespace A107231

/-- `C(n, floor(n/2))*∑[n+1]` -/
def P14489416398397364275.Spec : Prop :=
  ∀ n, (P14489416398397364275.a n : ℤ) = A107231 n

end A107231

/-! ## A107231.P12282674035210000278

`(((-1)^n)²+C(n, ∑[char[2*n+1]])-1)*∑[n+1]`
-/

namespace A107231.P12282674035210000278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((-1) ^ n) ^ 2 + ((Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1)) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A107231.P12282674035210000278

namespace A107231

/-- `(((-1)^n)²+C(n, ∑[char[2*n+1]])-1)*∑[n+1]` -/
def P12282674035210000278.Spec : Prop :=
  ∀ n, P12282674035210000278.a n = A107231 n

end A107231

/-! ## A107231.P9509315093821186771

`A000217(n+1)*A107230(A000217(n))`
-/

namespace A107231.P9509315093821186771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A107230 (A000217 n).toNat

end

end A107231.P9509315093821186771

namespace A107231

/-- `A000217(n+1)*A107230(A000217(n))` -/
def P9509315093821186771.Spec : Prop :=
  ∀ n, P9509315093821186771.a n = A107231 n

end A107231

/-! ## A107231.P10726500657295988698

`A107230(∑[n+2]+3)`
-/

namespace A107231.P10726500657295988698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A107231.P10726500657295988698

namespace A107231

/-- `A107230(∑[n+2]+3)` -/
def P10726500657295988698.Spec : Prop :=
  ∀ n, P10726500657295988698.a n = A107231 n

end A107231

/-!
# A107232: Expansion of (1+x*c(x^2))^3/sqrt(1-4*x^2), c(x) the g.f. of A000108.

The programs for A107232, the canonical program `A107232.P7835727660416448204` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107232 has offset 0).

The definition of A107232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107232.P6166313752387713903

`A037952(n)+A026010(n)`
-/

namespace A107232.P6166313752387713903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + A026010 n

end

end A107232.P6166313752387713903

namespace A107232

/-- `A037952(n)+A026010(n)` -/
def P6166313752387713903.Spec : Prop :=
  ∀ n, P6166313752387713903.a n = A107232 n

end A107232

/-! ## A107232.P7835727660416448204

`A026010(n)+Δ[A001405(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107232

/-- `A026010(n)+Δ[A001405(n)]` -/
def P7835727660416448204.Spec : Prop :=
  ∀ n, P7835727660416448204.a n = A107232 n

theorem P7835727660416448204.correct : P7835727660416448204.Spec := by
  intro n
  simp only [A107232]

end A107232

/-! ## A107232.P13725732009687291052

`A001405(n+2)-A126120(n)`
-/

namespace A107232.P13725732009687291052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) - A126120 n

end

end A107232.P13725732009687291052

namespace A107232

/-- `A001405(n+2)-A126120(n)` -/
def P13725732009687291052.Spec : Prop :=
  ∀ n, P13725732009687291052.a n = A107232 n

end A107232

/-! ## A107232.P14022260752423149538

`A063886(n+2)-A208355(n)`
-/

namespace A107232.P14022260752423149538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 2) - A208355 n

end

end A107232.P14022260752423149538

namespace A107232

/-- `A063886(n+2)-A208355(n)` -/
def P14022260752423149538.Spec : Prop :=
  ∀ n, P14022260752423149538.a n = A107232 n

end A107232

/-! ## A107232.P881606128110633553

`Δ[A001405(n)]+Δ[A208976(n)]`
-/

namespace A107232.P881606128110633553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A107232.P881606128110633553

namespace A107232

/-- `Δ[A001405(n)]+Δ[A208976(n)]` -/
def P881606128110633553.Spec : Prop :=
  ∀ n, P881606128110633553.a n = A107232 n

end A107232

/-! ## A107232.P10838623641359445084

`Δ[A014495(n)]+Δ[A208976(n)]`
-/

namespace A107232.P10838623641359445084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A107232.P10838623641359445084

namespace A107232

/-- `Δ[A014495(n)]+Δ[A208976(n)]` -/
def P10838623641359445084.Spec : Prop :=
  ∀ n, P10838623641359445084.a n = A107232 n

end A107232

/-! ## A107232.P11383704134258382242

`A210628(n+1)+A001405(n+2)`
-/

namespace A107232.P11383704134258382242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1) + A001405 (n + 2)

end

end A107232.P11383704134258382242

namespace A107232

/-- `A210628(n+1)+A001405(n+2)` -/
def P11383704134258382242.Spec : Prop :=
  ∀ n, P11383704134258382242.a n = A107232 n

end A107232

/-! ## A107232.P11065694265098541350

`A001405(n+2)-A097331(n+1)`
-/

namespace A107232.P11065694265098541350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 2) - A097331 (n + 1)

end

end A107232.P11065694265098541350

namespace A107232

/-- `A001405(n+2)-A097331(n+1)` -/
def P11065694265098541350.Spec : Prop :=
  ∀ n, P11065694265098541350.a n = A107232 n

end A107232

/-! ## A107232.P9655613817791503606

`A037952(n+1)+2*A037952(n)`
-/

namespace A107232.P9655613817791503606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + 2 * A037952 n

end

end A107232.P9655613817791503606

namespace A107232

/-- `A037952(n+1)+2*A037952(n)` -/
def P9655613817791503606.Spec : Prop :=
  ∀ n, P9655613817791503606.a n = A107232 n

end A107232

/-! ## A107232.P160342980395366799

`A208976(n+1)+1-A063886(n+1)`
-/

namespace A107232.P160342980395366799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (n + 1) + (1 - A063886 (n + 1))

end

end A107232.P160342980395366799

namespace A107232

/-- `A208976(n+1)+1-A063886(n+1)` -/
def P160342980395366799.Spec : Prop :=
  ∀ n, P160342980395366799.a n = A107232 n

end A107232

/-! ## A107232.P13442101922403958196

`A072100(n+1)+A191307(n)+A037952(n)`
-/

namespace A107232.P13442101922403958196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) + (A191307 n + A037952 n)

end

end A107232.P13442101922403958196

namespace A107232

/-- `A072100(n+1)+A191307(n)+A037952(n)` -/
def P13442101922403958196.Spec : Prop :=
  ∀ n, P13442101922403958196.a n = A107232 n

end A107232

/-! ## A107232.P840025074587257183

`A001405(n+1)+A026010(n)-A001405(n)`
-/

namespace A107232.P840025074587257183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A026010 n - A001405 n)

end

end A107232.P840025074587257183

namespace A107232

/-- `A001405(n+1)+A026010(n)-A001405(n)` -/
def P840025074587257183.Spec : Prop :=
  ∀ n, P840025074587257183.a n = A107232 n

theorem P840025074587257183.correct : P840025074587257183.Spec := by
  intro n
  simp only [A107232, Nat.add_sub_cancel, A107232.P840025074587257183.a, A107232.P7835727660416448204.f1, A107232.P7835727660416448204.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107232

/-! ## A107232.P10141833965366320042

`A014495(n+1)+A026010(n)-A014495(n)`
-/

namespace A107232.P10141833965366320042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + (A026010 n - A014495 n)

end

end A107232.P10141833965366320042

namespace A107232

/-- `A014495(n+1)+A026010(n)-A014495(n)` -/
def P10141833965366320042.Spec : Prop :=
  ∀ n, P10141833965366320042.a n = A107232 n

theorem P10141833965366320042.correct : P10141833965366320042.Spec := by
  intro n
  simp only [A107232, Nat.add_sub_cancel, A107232.P10141833965366320042.a, A107232.P7835727660416448204.f1, A107232.P7835727660416448204.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107232

/-! ## A107232.P5964190685624807029

`A201686(n+1)+A026010(n)-A201686(n)`
-/

namespace A107232.P5964190685624807029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (n + 1) + (A026010 n - A201686 n)

end

end A107232.P5964190685624807029

namespace A107232

/-- `A201686(n+1)+A026010(n)-A201686(n)` -/
def P5964190685624807029.Spec : Prop :=
  ∀ n, P5964190685624807029.a n = A107232 n

theorem P5964190685624807029.correct : P5964190685624807029.Spec := by
  intro n
  simp only [A107232, Nat.add_sub_cancel, A107232.P5964190685624807029.a, A107232.P7835727660416448204.f1, A107232.P7835727660416448204.a, A001405, A001405.P5205018418992951678.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107232

/-! ## A107232.P206039930871268794

`A001405(n+1)+A001405(n+1)-A208355(n)`
-/

namespace A107232.P206039930871268794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A001405 (n + 1) - A208355 n)

end

end A107232.P206039930871268794

namespace A107232

/-- `A001405(n+1)+A001405(n+1)-A208355(n)` -/
def P206039930871268794.Spec : Prop :=
  ∀ n, P206039930871268794.a n = A107232 n

end A107232

/-! ## A107232.P10911827932215785315

`A001405(n+1)+A366108(n+3)-A028303(n)`
-/

namespace A107232.P10911827932215785315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A366108 (n + 3) - A028303 n)

end

end A107232.P10911827932215785315

namespace A107232

/-- `A001405(n+1)+A366108(n+3)-A028303(n)` -/
def P10911827932215785315.Spec : Prop :=
  ∀ n, P10911827932215785315.a n = A107232 n

end A107232

/-! ## A107232.P13364658552469822962

`∪[A001700(n), A051944(n)]`
-/

namespace A107232.P13364658552469822962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107232.P13364658552469822962

namespace A107232

/-- `∪[A001700(n), A051944(n)]` -/
def P13364658552469822962.Spec : Prop :=
  ∀ n, (P13364658552469822962.a n : ℤ) = A107232 n

end A107232

/-! ## A107232.P10645043995175837062

`Δ[A208976(n)+A001405(n)]`
-/

namespace A107232.P10645043995175837062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107232.P10645043995175837062

namespace A107232

/-- `Δ[A208976(n)+A001405(n)]` -/
def P10645043995175837062.Spec : Prop :=
  ∀ n, P10645043995175837062.a n = A107232 n

end A107232

/-! ## A107232.P12182846373903393860

`Δ[A208976(n)+A014495(n)]`
-/

namespace A107232.P12182846373903393860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + A014495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107232.P12182846373903393860

namespace A107232

/-- `Δ[A208976(n)+A014495(n)]` -/
def P12182846373903393860.Spec : Prop :=
  ∀ n, P12182846373903393860.a n = A107232 n

end A107232

/-! ## A107232.P2011207029694439473

`A208976(n+1)+A191531(n)-A191531(n+1)`
-/

namespace A107232.P2011207029694439473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 (n + 1) + A191531 n - A191531 (n + 1)

end

end A107232.P2011207029694439473

namespace A107232

/-- `A208976(n+1)+A191531(n)-A191531(n+1)` -/
def P2011207029694439473.Spec : Prop :=
  ∀ n, P2011207029694439473.a n = A107232 n

end A107232

/-!
# A107233: An inverse Chebyshev transform of n^3.

The programs for A107233, the canonical program `A107233.P5492131324559239441` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107233 has offset 0).

The definition of A107233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107233.P5492131324559239441

`A042948(n)*A100071(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107233

/-- `A042948(n)*A100071(n)` -/
def P5492131324559239441.Spec : Prop :=
  ∀ n, P5492131324559239441.a n = A107233 n

theorem P5492131324559239441.correct : P5492131324559239441.Spec := by
  intro n
  simp only [A107233]

end A107233

/-! ## A107233.P15543398033388734155

`record[A003816(n)]*A100071(n)`
-/

namespace A107233.P15543398033388734155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A100071 n

end

end A107233.P15543398033388734155

namespace A107233

/-- `record[A003816(n)]*A100071(n)` -/
def P15543398033388734155.Spec : Prop :=
  ∀ n, P15543398033388734155.a n = A107233 n

end A107233

/-! ## A107233.P8156581354425295306

`n*A042948(n)*A210736(n)`
-/

namespace A107233.P8156581354425295306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A042948 n * A210736 n)

end

end A107233.P8156581354425295306

namespace A107233

/-- `n*A042948(n)*A210736(n)` -/
def P8156581354425295306.Spec : Prop :=
  ∀ n, P8156581354425295306.a n = A107233 n

end A107233

/-! ## A107233.P1434713327720048814

`A003816(A004273(n))*A100071(n)`
-/

namespace A107233.P1434713327720048814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A004273 n).toNat * A100071 n

end

end A107233.P1434713327720048814

namespace A107233

/-- `A003816(A004273(n))*A100071(n)` -/
def P1434713327720048814.Spec : Prop :=
  ∀ n, P1434713327720048814.a n = A107233 n

end A107233

/-! ## A107233.P10708324165473669943

`A014681(A053438(n))*A100071(n)`
-/

namespace A107233.P10708324165473669943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A053438 n).toNat * A100071 n

end

end A107233.P10708324165473669943

namespace A107233

/-- `A014681(A053438(n))*A100071(n)` -/
def P10708324165473669943.Spec : Prop :=
  ∀ n, P10708324165473669943.a n = A107233 n

end A107233

/-! ## A107233.P2476239854240781387

`A042948(n)*A107230(A000124(n))`
-/

namespace A107233.P2476239854240781387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A107230 (A000124 n).toNat

end

end A107233.P2476239854240781387

namespace A107233

/-- `A042948(n)*A107230(A000124(n))` -/
def P2476239854240781387.Spec : Prop :=
  ∀ n, P2476239854240781387.a n = A107233 n

end A107233

/-!
# A107234: Expansion of 1 / Product_{n>=0} (1-q^(5n+1))(1-q^(5n+2))(1-q^(5n+3)).

The programs for A107234, there is no canonical definition to state claims against.
-/

/-! ## A107234.P7733462298405357514

`A035555(n)-A035565(n)`
-/

namespace A107234.P7733462298405357514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035555 n - A035565 n

end

end A107234.P7733462298405357514

/-! ## A107234.P14553831923014963704

`A035555(n)+A035565(n)*A057428(n)`
-/

namespace A107234.P14553831923014963704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035555 n + A035565 n * A057428 n

end

end A107234.P14553831923014963704

/-! ## A107234.P688307737784494518

`A035555(n)+A035565(n)/(A057428(n)+A000038(n))`
-/

namespace A107234.P688307737784494518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035555 n : ℚ) + (A035565 n : ℚ) / (A057428 n + A000038 n : ℚ)

end

end A107234.P688307737784494518

/-! ## A107234.P11013140969629469923

`A000196(∑[A075349(A238494(n+1))])`
-/

namespace A107234.P11013140969629469923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075349 (A238494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107234.P11013140969629469923

/-! ## A107234.P9895642780083251800

`A233693(n+1)-A285464(A285460(n))`
-/

namespace A107234.P9895642780083251800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233693 (n + 1) - A285464 (A285460 n).toNat

end

end A107234.P9895642780083251800

/-!
# A107235: Expansion of 1 / Product_{n>=0} (1 - q^(5n+1))*(1 - q^(5n+2))*(1 - q^(5n+4)).

The programs for A107235, there is no canonical definition to state claims against.
-/

/-! ## A107235.P8723834203161029188

`A035554(n)-A035564(n)`
-/

namespace A107235.P8723834203161029188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035554 n - A035564 n

end

end A107235.P8723834203161029188

/-! ## A107235.P17285187248459204413

`A035554(n)+A035564(n)*A057428(n)`
-/

namespace A107235.P17285187248459204413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035554 n + A035564 n * A057428 n

end

end A107235.P17285187248459204413

/-! ## A107235.P12052895385547099960

`A035554(n)-A111660(A206557(n+1)+A024793(n+1))`
-/

namespace A107235.P12052895385547099960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035554 n - A111660 (A206557 (n + 1) + A024793 (n + 1)).toNat

end

end A107235.P12052895385547099960

/-! ## A107235.P8691674333475198320

`A112318(A199016(n))`
-/

namespace A107235.P8691674333475198320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A199016 n).toNat

end

end A107235.P8691674333475198320

/-! ## A107235.P11227273060429380613

`A316843(A037955(n+2)-A366738(n))`
-/

namespace A107235.P11227273060429380613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A037955 (n + 2) - A366738 n).toNat

end

end A107235.P11227273060429380613

/-!
# A107236: Expansion of 1 / Product_{n>=0} (1 - q^(5n+1))*(1 - q^(5n+3))*(1 - q^(5n+4)).

The programs for A107236, there is no canonical definition to state claims against.
-/

/-! ## A107236.P4893529391842094518

`A035553(n)-A035563(n)`
-/

namespace A107236.P4893529391842094518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035553 n - A035563 n

end

end A107236.P4893529391842094518

/-! ## A107236.P15439250236234774436

`A035553(n)+A035563(n)*A057428(n)`
-/

namespace A107236.P15439250236234774436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035553 n + A035563 n * A057428 n

end

end A107236.P15439250236234774436

/-! ## A107236.P1598313296439390397

`A035553(n)-(A198317(2*n+3)-A240865(A331410(3*n+1)))`
-/

namespace A107236.P1598313296439390397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035553 n - (A198317 (2 * n + 3) - A240865 (A331410 (3 * n + 1)).toNat)

end

end A107236.P1598313296439390397

/-! ## A107236.P16087789518676418421

`A192184(n)-A066301(A282952(n))`
-/

namespace A107236.P16087789518676418421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192184 n - A066301 (A282952 n).toNat

end

end A107236.P16087789518676418421

/-! ## A107236.P11751151290859134875

`A192184(n)-A210715(A186759(n))`
-/

namespace A107236.P11751151290859134875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192184 n - A210715 (A186759 n).toNat

end

end A107236.P11751151290859134875

/-!
# A107237: Expansion of 1 / Product_{n>=0} (1 - q^(5n+2))*(1 - q^(5n+3))*(1 - q^(5n+4)).

The programs for A107237, there is no canonical definition to state claims against.
-/

/-! ## A107237.P12312459502863175718

`A035552(n)-A035562(n)`
-/

namespace A107237.P12312459502863175718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035552 n - A035562 n

end

end A107237.P12312459502863175718

/-! ## A107237.P18207360226428491441

`A035552(n)+A035562(n)*A057428(n)`
-/

namespace A107237.P18207360226428491441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035552 n + A035562 n * A057428 n

end

end A107237.P18207360226428491441

/-! ## A107237.P13038896449572061058

`A035552(n)+A024000(A035562(n)+2)+1`
-/

namespace A107237.P13038896449572061058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035552 n + (A024000 (A035562 n + 2).toNat + 1)

end

end A107237.P13038896449572061058

/-! ## A107237.P7595973926445723723

`A111660(A266778(n)+ceil(xor(1, n)/4))`
-/

namespace A107237.P7595973926445723723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A266778 n + ⌈(Nat.xor 1 n : ℚ) / 4⌉).toNat

end

end A107237.P7595973926445723723

/-! ## A107237.P16883687567508355785

`A202304(A114901(n))%A329978(3*n+2)`
-/

namespace A107237.P16883687567508355785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202304 (A114901 n).toNat) (A329978 (3 * n + 2))

end

end A107237.P16883687567508355785

/-!
# A107238: A Chebyshev transform of number triangle A107230.

The programs for A107238, there is no canonical definition to state claims against.
-/

/-! ## A107238.P15477359033630383268

`A026692(n+1)%A161409(A064879(n))`
-/

namespace A107238.P15477359033630383268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026692 (n + 1)) (A161409 (A064879 n).toNat)

end

end A107238.P15477359033630383268

/-! ## A107238.P17547459879183954540

`A001222(ceil(2^A073134(n+1)))`
-/

namespace A107238.P17547459879183954540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(2 : ℚ) ^ (A073134 (n + 1) : ℤ)⌉.toNat

end

end A107238.P17547459879183954540

/-! ## A107238.P2596390938331392318

`A116575(A331277(n))+A014473(n)`
-/

namespace A107238.P2596390938331392318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116575 (A331277 n).toNat + A014473 n

end

end A107238.P2596390938331392318

/-! ## A107238.P4094603753780982984

`A181011(A034189(n))+A073134(n+1)`
-/

namespace A107238.P4094603753780982984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A034189 n).toNat + A073134 (n + 1)

end

end A107238.P4094603753780982984

/-! ## A107238.P1819264070390398917

`A202756(n+1)-A358724(A095952(n+3))`
-/

namespace A107238.P1819264070390398917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202756 (n + 1) - A358724 (A095952 (n + 3)).toNat

end

end A107238.P1819264070390398917

/-!
# A107239: Sum of squares of tribonacci numbers (A000073).

The programs for A107239, the canonical program `A107239.P8658449547855472211` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107239 has offset 0).

The definition of A107239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107239.P8658449547855472211

`ogf((x^2-x^3-x^4-x^5)/(1-3x-x^2-3x^3+7x^4-x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107239

/-- `ogf((x^2-x^3-x^4-x^5)/(1-3x-x^2-3x^3+7x^4-x^5+x^6-x^7))` -/
def P8658449547855472211.Spec : Prop :=
  ∀ n, P8658449547855472211.a n = A107239 n

theorem P8658449547855472211.correct : P8658449547855472211.Spec := by
  intro n
  simp only [A107239]

end A107239

/-! ## A107239.P61325148205186055

`∑[∑[2*a(n-1)-a(n-4)]²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A107239.P61325148205186055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P61325148205186055

namespace A107239

/-- `∑[∑[2*a(n-1)-a(n-4)]²]` -/
def P61325148205186055.Spec : Prop :=
  ∀ n, P61325148205186055.a n = A107239 n

end A107239

/-! ## A107239.P17117020222173689593

`∑[A085697(n)]`
-/

namespace A107239.P17117020222173689593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P17117020222173689593

namespace A107239

/-- `∑[A085697(n)]` -/
def P17117020222173689593.Spec : Prop :=
  ∀ n, P17117020222173689593.a n = A107239 n

end A107239

/-! ## A107239.P335045029926293844

`∑[A000073(n)²]`
-/

namespace A107239.P335045029926293844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P335045029926293844

namespace A107239

/-- `∑[A000073(n)²]` -/
def P335045029926293844.Spec : Prop :=
  ∀ n, P335045029926293844.a n = A107239 n

end A107239

/-! ## A107239.P16791492345765712500

`∑[Δ[A192804(n)]²]`
-/

namespace A107239.P16791492345765712500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P16791492345765712500

namespace A107239

/-- `∑[Δ[A192804(n)]²]` -/
def P16791492345765712500.Spec : Prop :=
  ∀ n, P16791492345765712500.a n = A107239 n

end A107239

/-! ## A107239.P17310918227493117393

`∑[(A354784(n)/2)²]`
-/

namespace A107239.P17310918227493117393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A354784 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P17310918227493117393

namespace A107239

/-- `∑[(A354784(n)/2)²]` -/
def P17310918227493117393.Spec : Prop :=
  ∀ n, P17310918227493117393.a n = (A107239 n : ℚ)

end A107239

/-! ## A107239.P3296730031103837971

`∑[Δ[A000213(n)/2]²]`
-/

namespace A107239.P3296730031103837971
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P3296730031103837971

namespace A107239

/-- `∑[Δ[A000213(n)/2]²]` -/
def P3296730031103837971.Spec : Prop :=
  ∀ n, P3296730031103837971.a n = (A107239 n : ℚ)

end A107239

/-! ## A107239.P18301425648201987200

`∑[A114952(A014601(n))²]`
-/

namespace A107239.P18301425648201987200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A014601 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P18301425648201987200

namespace A107239

/-- `∑[A114952(A014601(n))²]` -/
def P18301425648201987200.Spec : Prop :=
  ∀ n, P18301425648201987200.a n = A107239 n

end A107239

/-! ## A107239.P11544136769361335594

`∑[(A000213(n)-A081172(n))²]`
-/

namespace A107239.P11544136769361335594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000213 n - A081172 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P11544136769361335594

namespace A107239

/-- `∑[(A000213(n)-A081172(n))²]` -/
def P11544136769361335594.Spec : Prop :=
  ∀ n, P11544136769361335594.a n = A107239 n

end A107239

/-! ## A107239.P9807471212402456473

`∑[(A033999(n)-A112476(n))²]`
-/

namespace A107239.P9807471212402456473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n - A112476 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P9807471212402456473

namespace A107239

/-- `∑[(A033999(n)-A112476(n))²]` -/
def P9807471212402456473.Spec : Prop :=
  ∀ n, P9807471212402456473.a n = A107239 n

end A107239

/-! ## A107239.P12460893859490954254

`∑[(A000045(n)-A338192(n))²]`
-/

namespace A107239.P12460893859490954254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - A338192 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P12460893859490954254

namespace A107239

/-- `∑[(A000045(n)-A338192(n))²]` -/
def P12460893859490954254.Spec : Prop :=
  ∀ n, P12460893859490954254.a n = A107239 n

end A107239

/-! ## A107239.P8900688948555840621

`∑[Δ[A192804(n)]*A000073(n)]`
-/

namespace A107239.P8900688948555840621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P8900688948555840621

namespace A107239

/-- `∑[Δ[A192804(n)]*A000073(n)]` -/
def P8900688948555840621.Spec : Prop :=
  ∀ n, P8900688948555840621.a n = A107239 n

end A107239

/-! ## A107239.P17496117342143908673

`∑[(A001590(n)-∑[A001590(n)])²]`
-/

namespace A107239.P17496117342143908673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001590 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P17496117342143908673

namespace A107239

/-- `∑[(A001590(n)-∑[A001590(n)])²]` -/
def P17496117342143908673.Spec : Prop :=
  ∀ n, P17496117342143908673.a n = A107239 n

end A107239

/-! ## A107239.P4066320030758394731

`∑[(∑[A000213(n)]-A214727(n))²]`
-/

namespace A107239.P4066320030758394731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - A214727 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P4066320030758394731

namespace A107239

/-- `∑[(∑[A000213(n)]-A214727(n))²]` -/
def P4066320030758394731.Spec : Prop :=
  ∀ n, P4066320030758394731.a n = A107239 n

end A107239

/-! ## A107239.P9550889679479489184

`∑[(A192804(n+1)-A192804(n))²]`
-/

namespace A107239.P9550889679479489184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192804 (n + 1) - A192804 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P9550889679479489184

namespace A107239

/-- `∑[(A192804(n+1)-A192804(n))²]` -/
def P9550889679479489184.Spec : Prop :=
  ∀ n, P9550889679479489184.a n = A107239 n

end A107239

/-! ## A107239.P5452754076062851030

`∑[Δ[A000213(n)/2]*A000073(n)]`
-/

namespace A107239.P5452754076062851030
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (A000073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P5452754076062851030

namespace A107239

/-- `∑[Δ[A000213(n)/2]*A000073(n)]` -/
def P5452754076062851030.Spec : Prop :=
  ∀ n, P5452754076062851030.a n = (A107239 n : ℚ)

end A107239

/-! ## A107239.P15678995203718863117

`∑[(A000213(n+1)-A141036(n+1))²]`
-/

namespace A107239.P15678995203718863117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 1) - A141036 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P15678995203718863117

namespace A107239

/-- `∑[(A000213(n+1)-A141036(n+1))²]` -/
def P15678995203718863117.Spec : Prop :=
  ∀ n, P15678995203718863117.a n = A107239 n

end A107239

/-! ## A107239.P1127926174572355798

`∑[A000073(n)*A000073(A254667(n))]`
-/

namespace A107239.P1127926174572355798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A000073 (A254667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P1127926174572355798

namespace A107239

/-- `∑[A000073(n)*A000073(A254667(n))]` -/
def P1127926174572355798.Spec : Prop :=
  ∀ n, P1127926174572355798.a n = A107239 n

end A107239

/-! ## A107239.P3186154496697783906

`∑[(A169585(n)+A000073(n))*A000073(n)]`
-/

namespace A107239.P3186154496697783906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169585 n + A000073 n) * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107239.P3186154496697783906

namespace A107239

/-- `∑[(A169585(n)+A000073(n))*A000073(n)]` -/
def P3186154496697783906.Spec : Prop :=
  ∀ n, P3186154496697783906.a n = A107239 n

end A107239

/-! ## A107239.P2849588721445786897

`A337283(n+1)-(A337284(n+1)+A085697(n+1))`
-/

namespace A107239.P2849588721445786897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337283 (n + 1) - (A337284 (n + 1) + A085697 (n + 1))

end

end A107239.P2849588721445786897

namespace A107239

/-- `A337283(n+1)-(A337284(n+1)+A085697(n+1))` -/
def P2849588721445786897.Spec : Prop :=
  ∀ n, P2849588721445786897.a n = A107239 n

end A107239

/-!
# A107240: Sum of squares of first n tribonacci numbers (A000213).

The programs for A107240, the canonical program `A107240.P11012278108985614816` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107240 has offset 1).

The definition of A107240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107240.P11012278108985614816

`ogf((1-x-4x^2-2x^3-x^4-x^5)/(1-3x-x^2-3x^3+7x^4-x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107240

/-- `ogf((1-x-4x^2-2x^3-x^4-x^5)/(1-3x-x^2-3x^3+7x^4-x^5+x^6-x^7))` -/
def P11012278108985614816.Spec : Prop :=
  ∀ n, P11012278108985614816.a n = A107240 (n + 1)

theorem P11012278108985614816.correct : P11012278108985614816.Spec := by
  intro n
  simp only [A107240, Nat.add_sub_cancel]

end A107240

/-! ## A107240.P9688559620881821996

`∑[A141583(n)]`
-/

namespace A107240.P9688559620881821996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P9688559620881821996

namespace A107240

/-- `∑[A141583(n)]` -/
def P9688559620881821996.Spec : Prop :=
  ∀ n, P9688559620881821996.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P12176079191628397870

`∑[A000213(n)²]`
-/

namespace A107240.P12176079191628397870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P12176079191628397870

namespace A107240

/-- `∑[A000213(n)²]` -/
def P12176079191628397870.Spec : Prop :=
  ∀ n, P12176079191628397870.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P222127458738729133

`∑[Δ[Δ[A089068(n)]]²]`
-/

namespace A107240.P222127458738729133
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P222127458738729133

namespace A107240

/-- `∑[Δ[Δ[A089068(n)]]²]` -/
def P222127458738729133.Spec : Prop :=
  ∀ n, P222127458738729133.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P18348241671773868343

`∑[Δ[record[A001590(n)]]²]`
-/

namespace A107240.P18348241671773868343
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P18348241671773868343

namespace A107240

/-- `∑[Δ[record[A001590(n)]]²]` -/
def P18348241671773868343.Spec : Prop :=
  ∀ n, P18348241671773868343.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P2685816802718381341

`∑[Δ[A001590(n+2)]²]`
-/

namespace A107240.P2685816802718381341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P2685816802718381341

namespace A107240

/-- `∑[Δ[A001590(n+2)]²]` -/
def P2685816802718381341.Spec : Prop :=
  ∀ n, P2685816802718381341.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P6249679856124869071

`∑[Δ[Δ[A000073(n+2)]]²]`
-/

namespace A107240.P6249679856124869071
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P6249679856124869071

namespace A107240

/-- `∑[Δ[Δ[A000073(n+2)]]²]` -/
def P6249679856124869071.Spec : Prop :=
  ∀ n, P6249679856124869071.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P16482799786810397630

`∑[(A081172(n)+A000073(n))²]`
-/

namespace A107240.P16482799786810397630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081172 n + A000073 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P16482799786810397630

namespace A107240

/-- `∑[(A081172(n)+A000073(n))²]` -/
def P16482799786810397630.Spec : Prop :=
  ∀ n, P16482799786810397630.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P8979685370761258463

`∑[(∑[A001590(n)]-A214727(n))²]`
-/

namespace A107240.P8979685370761258463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - A214727 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P8979685370761258463

namespace A107240

/-- `∑[(∑[A001590(n)]-A214727(n))²]` -/
def P8979685370761258463.Spec : Prop :=
  ∀ n, P8979685370761258463.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P4951161652298870853

`∑[(A001590(n+1)+A001590(n))²]`
-/

namespace A107240.P4951161652298870853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001590 (n + 1) + A001590 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P4951161652298870853

namespace A107240

/-- `∑[(A001590(n+1)+A001590(n))²]` -/
def P4951161652298870853.Spec : Prop :=
  ∀ n, P4951161652298870853.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P4580763667763923910

`∑[A000213(n)^A020639(2*(n+1))]`
-/

namespace A107240.P4580763667763923910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P4580763667763923910

namespace A107240

/-- `∑[A000213(n)^A020639(2*(n+1))]` -/
def P4580763667763923910.Spec : Prop :=
  ∀ n, P4580763667763923910.a n = (A107240 (n + 1) : ℚ)

end A107240

/-! ## A107240.P12281204252099955083

`∑[A027023(∑[2*n])²]`
-/

namespace A107240.P12281204252099955083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P12281204252099955083

namespace A107240

/-- `∑[A027023(∑[2*n])²]` -/
def P12281204252099955083.Spec : Prop :=
  ∀ n, P12281204252099955083.a n = A107240 (n + 1)

end A107240

/-! ## A107240.P353356715482816526

`∑[A027082(∑[2*n])²]`
-/

namespace A107240.P353356715482816526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P353356715482816526

namespace A107240

/-- `∑[A027082(∑[2*n])²]` -/
def P353356715482816526.Spec : Prop :=
  ∀ n, P353356715482816526.a n = A107240 (n + 1)

end A107240

/-!
# A107241: Sum of squares of first n tetranacci numbers (A000288).

The programs for A107241, the canonical program `A107241.P15127800141223441636` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107241 has offset 1).

The definition of A107241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107241.P15127800141223441636

`ogf((1-x-5x^2-11x^3-8x^4-x^5-x^6-7x^7+x^8+4x^9)/(1-3x-2x^2-2x^3-6x^4+16x^5+2x^6-6x^7+2x^8-2x^9-x^10+x^11))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107241

/-- `ogf((1-x-5x^2-11x^3-8x^4-x^5-x^6-7x^7+x^8+4x^9)/(1-3x-2x^2-2x^3-6x^4+16x^5+2x^6-6x^7+2x^8-2x^9-x^10+x^11))` -/
def P15127800141223441636.Spec : Prop :=
  ∀ n, P15127800141223441636.a n = A107241 (n + 1)

theorem P15127800141223441636.correct : P15127800141223441636.Spec := by
  intro n
  simp only [A107241, Nat.add_sub_cancel]

end A107241

/-! ## A107241.P7635625253122821340

`∑[A000288(n)²]`
-/

namespace A107241.P7635625253122821340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P7635625253122821340

namespace A107241

/-- `∑[A000288(n)²]` -/
def P7635625253122821340.Spec : Prop :=
  ∀ n, P7635625253122821340.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P8585113893735400675

`∑[A000288(char[1]+n)^2]`
-/

namespace A107241.P8585113893735400675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 ((if ∃ j, f2 j = n then 1 else 0) + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P8585113893735400675

namespace A107241

/-- `∑[A000288(char[1]+n)^2]` -/
def P8585113893735400675.Spec : Prop :=
  ∀ n, P8585113893735400675.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P1775688303862456233

`∑[(A251705(n)+A000078(n))²]`
-/

namespace A107241.P1775688303862456233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251705 n + A000078 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P1775688303862456233

namespace A107241

/-- `∑[(A251705(n)+A000078(n))²]` -/
def P1775688303862456233.Spec : Prop :=
  ∀ n, P1775688303862456233.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P18266367817830603447

`∑[(A251704(n)+A001631(n))²]`
-/

namespace A107241.P18266367817830603447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251704 n + A001631 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P18266367817830603447

namespace A107241

/-- `∑[(A251704(n)+A001631(n))²]` -/
def P18266367817830603447.Spec : Prop :=
  ∀ n, P18266367817830603447.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P7939108334779084874

`∑[(A251703(n)+∑[A001631(n)])²]`
-/

namespace A107241.P7939108334779084874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251703 n + ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P7939108334779084874

namespace A107241

/-- `∑[(A251703(n)+∑[A001631(n)])²]` -/
def P7939108334779084874.Spec : Prop :=
  ∀ n, P7939108334779084874.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P4222382848542596898

`∑[(A251656(n)+A001631(n+1))^2]`
-/

namespace A107241.P4222382848542596898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251656 n + A001631 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P4222382848542596898

namespace A107241

/-- `∑[(A251656(n)+A001631(n+1))^2]` -/
def P4222382848542596898.Spec : Prop :=
  ∀ n, P4222382848542596898.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P14707170974614461465

`∑[A000288(n)*A000288(n%(n+1))]`
-/

namespace A107241.P14707170974614461465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n * A000288 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P14707170974614461465

namespace A107241

/-- `∑[A000288(n)*A000288(n%(n+1))]` -/
def P14707170974614461465.Spec : Prop :=
  ∀ n, P14707170974614461465.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P8236740188940914844

`∑[(A001648(n+1)-A135492(n+1))²]`
-/

namespace A107241.P8236740188940914844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 1) - A135492 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P8236740188940914844

namespace A107241

/-- `∑[(A001648(n+1)-A135492(n+1))²]` -/
def P8236740188940914844.Spec : Prop :=
  ∀ n, P8236740188940914844.a n = A107241 (n + 1)

end A107241

/-! ## A107241.P11961690134927239515

`∑[A000288(n)*A000288(A028310(n))]`
-/

namespace A107241.P11961690134927239515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n * A000288 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P11961690134927239515

namespace A107241

/-- `∑[A000288(n)*A000288(A028310(n))]` -/
def P11961690134927239515.Spec : Prop :=
  ∀ n, P11961690134927239515.a n = A107241 (n + 1)

end A107241

/-!
# A107242: Sum of squares of tetranacci numbers (A001630).

The programs for A107242, the canonical program `A107242.P778560434958617196` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107242 has offset 0).

The definition of A107242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107242.P778560434958617196

`∑[A001630(n)²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107242

/-- `∑[A001630(n)²]` -/
def P778560434958617196.Spec : Prop :=
  ∀ n, P778560434958617196.a n = A107242 n

theorem P778560434958617196.correct : P778560434958617196.Spec := by
  intro n
  simp only [A107242]

end A107242

/-! ## A107242.P17939646500746860233

`∑[A001630(n)^A036453(n+1)]`
-/

namespace A107242.P17939646500746860233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001630 n : ℚ) ^ (A036453 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P17939646500746860233

namespace A107242

/-- `∑[A001630(n)^A036453(n+1)]` -/
def P17939646500746860233.Spec : Prop :=
  ∀ n, P17939646500746860233.a n = (A107242 n : ℚ)

end A107242

/-! ## A107242.P4619768602720750017

`∑[(A251655(n)-∑[A251655(n)])²]`
-/

namespace A107242.P4619768602720750017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251655 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P4619768602720750017

namespace A107242

/-- `∑[(A251655(n)-∑[A251655(n)])²]` -/
def P4619768602720750017.Spec : Prop :=
  ∀ n, P4619768602720750017.a n = A107242 n

end A107242

/-! ## A107242.P16598538063259082349

`∑[(A000078(n+1)+A000078(n))²]`
-/

namespace A107242.P16598538063259082349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000078 (n + 1) + A000078 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P16598538063259082349

namespace A107242

/-- `∑[(A000078(n+1)+A000078(n))²]` -/
def P16598538063259082349.Spec : Prop :=
  ∀ n, P16598538063259082349.a n = A107242 n

end A107242

/-! ## A107242.P4088952311814420507

`∑[A001630(n)^gcd(2, A002182(n+1))]`
-/

namespace A107242.P4088952311814420507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n ^ Int.gcd 2 (A002182 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P4088952311814420507

namespace A107242

/-- `∑[A001630(n)^gcd(2, A002182(n+1))]` -/
def P4088952311814420507.Spec : Prop :=
  ∀ n, P4088952311814420507.a n = A107242 n

end A107242

/-! ## A107242.P18064119960375502849

`∑[A001630(n)^A020639(A014206(n))]`
-/

namespace A107242.P18064119960375502849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001630 n : ℚ) ^ (A020639 (A014206 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P18064119960375502849

namespace A107242

/-- `∑[A001630(n)^A020639(A014206(n))]` -/
def P18064119960375502849.Spec : Prop :=
  ∀ n, P18064119960375502849.a n = (A107242 n : ℚ)

end A107242

/-! ## A107242.P2716809130058034796

`∑[A001630(A233583(n+1))*A001630(n)]`
-/

namespace A107242.P2716809130058034796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (A233583 (n + 1)).toNat * A001630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P2716809130058034796

namespace A107242

/-- `∑[A001630(A233583(n+1))*A001630(n)]` -/
def P2716809130058034796.Spec : Prop :=
  ∀ n, P2716809130058034796.a n = A107242 n

end A107242

/-! ## A107242.P8603338969079923481

`∑[A001630(n)^A034444(A034444(n+1))]`
-/

namespace A107242.P8603338969079923481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001630 n : ℚ) ^ (A034444 (A034444 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P8603338969079923481

namespace A107242

/-- `∑[A001630(n)^A034444(A034444(n+1))]` -/
def P8603338969079923481.Spec : Prop :=
  ∀ n, P8603338969079923481.a n = (A107242 n : ℚ)

end A107242

/-! ## A107242.P11853853737982097799

`∑[A001630(n)^A020639(A000123(n))]`
-/

namespace A107242.P11853853737982097799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001630 n : ℚ) ^ (A020639 (A000123 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P11853853737982097799

namespace A107242

/-- `∑[A001630(n)^A020639(A000123(n))]` -/
def P11853853737982097799.Spec : Prop :=
  ∀ n, P11853853737982097799.a n = (A107242 n : ℚ)

end A107242

/-!
# A107243: Sum of squares of pentanacci numbers (A001591).

The programs for A107243, the canonical program `A107243.P6046497353442191983` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107243 has offset 0).

The definition of A107243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107243.P6046497353442191983

`∑[A001591(n)²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107243

/-- `∑[A001591(n)²]` -/
def P6046497353442191983.Spec : Prop :=
  ∀ n, P6046497353442191983.a n = A107243 n

theorem P6046497353442191983.correct : P6046497353442191983.Spec := by
  intro n
  simp only [A107243]

end A107243

/-! ## A107243.P13589208563084306621

`∑[Δ[A001949(n)]²]`
-/

namespace A107243.P13589208563084306621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P13589208563084306621

namespace A107243

/-- `∑[Δ[A001949(n)]²]` -/
def P13589208563084306621.Spec : Prop :=
  ∀ n, P13589208563084306621.a n = A107243 n

end A107243

/-! ## A107243.P16994006064287961039

`∑[Δ[A000322(n)/4]²]`
-/

namespace A107243.P16994006064287961039
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000322 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P16994006064287961039

namespace A107243

/-- `∑[Δ[A000322(n)/4]²]` -/
def P16994006064287961039.Spec : Prop :=
  ∀ n, P16994006064287961039.a n = (A107243 n : ℚ)

end A107243

/-! ## A107243.P8498402191463612625

`∑[Δ[A001949(n)]*A001591(n)]`
-/

namespace A107243.P8498402191463612625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P8498402191463612625

namespace A107243

/-- `∑[Δ[A001949(n)]*A001591(n)]` -/
def P8498402191463612625.Spec : Prop :=
  ∀ n, P8498402191463612625.a n = A107243 n

end A107243

/-! ## A107243.P1194415959684208548

`∑[A001591(n)^A036453(n+1)]`
-/

namespace A107243.P1194415959684208548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001591 n : ℚ) ^ (A036453 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P1194415959684208548

namespace A107243

/-- `∑[A001591(n)^A036453(n+1)]` -/
def P1194415959684208548.Spec : Prop :=
  ∀ n, P1194415959684208548.a n = (A107243 n : ℚ)

end A107243

/-! ## A107243.P4954856626966675374

`∑[A001591(n)^(A007051(n)%3)]`
-/

namespace A107243.P4954856626966675374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001591 n : ℚ) ^ (Int.tmod (A007051 n) 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P4954856626966675374

namespace A107243

/-- `∑[A001591(n)^(A007051(n)%3)]` -/
def P4954856626966675374.Spec : Prop :=
  ∀ n, P4954856626966675374.a n = (A107243 n : ℚ)

end A107243

/-! ## A107243.P9163719086191466414

`∑[A001591(n)^(A017293(n)%5)]`
-/

namespace A107243.P9163719086191466414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001591 n : ℚ) ^ (Int.tmod (A017293 n) 5 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P9163719086191466414

namespace A107243

/-- `∑[A001591(n)^(A017293(n)%5)]` -/
def P9163719086191466414.Spec : Prop :=
  ∀ n, P9163719086191466414.a n = (A107243 n : ℚ)

end A107243

/-! ## A107243.P16825351935004817998

`∑[(A001949(n+1)-A001949(n))²]`
-/

namespace A107243.P16825351935004817998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001949 (n + 1) - A001949 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P16825351935004817998

namespace A107243

/-- `∑[(A001949(n+1)-A001949(n))²]` -/
def P16825351935004817998.Spec : Prop :=
  ∀ n, P16825351935004817998.a n = A107243 n

end A107243

/-! ## A107243.P14562973217908701017

`∑[A001591(n)^A020639(2*(n+1))]`
-/

namespace A107243.P14562973217908701017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001591 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P14562973217908701017

namespace A107243

/-- `∑[A001591(n)^A020639(2*(n+1))]` -/
def P14562973217908701017.Spec : Prop :=
  ∀ n, P14562973217908701017.a n = (A107243 n : ℚ)

end A107243

/-!
# A107244: Sum of squares of hexanacci numbers (A001592, Fibonacci 6-step numbers).

The programs for A107244, the canonical program `A107244.P1170527571034993744` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107244 has offset 0).

The definition of A107244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107244.P1170527571034993744

`∑[A001592(n)²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107244

/-- `∑[A001592(n)²]` -/
def P1170527571034993744.Spec : Prop :=
  ∀ n, P1170527571034993744.a n = A107244 n

theorem P1170527571034993744.correct : P1170527571034993744.Spec := by
  intro n
  simp only [A107244]

end A107244

/-! ## A107244.P2143499596646178875

`∑[Δ[A000383(n)/5]²]`
-/

namespace A107244.P2143499596646178875
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P2143499596646178875

namespace A107244

/-- `∑[Δ[A000383(n)/5]²]` -/
def P2143499596646178875.Spec : Prop :=
  ∀ n, P2143499596646178875.a n = (A107244 n : ℚ)

end A107244

/-! ## A107244.P499124161717171169

`∑[∑[A251706(abs(1-n))]²]`
-/

namespace A107244.P499124161717171169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P499124161717171169

namespace A107244

/-- `∑[∑[A251706(abs(1-n))]²]` -/
def P499124161717171169.Spec : Prop :=
  ∀ n, P499124161717171169.a n = A107244 n

end A107244

/-! ## A107244.P8907268453729875242

`∑[A001592(n)^gcd(2, A005843(n))]`
-/

namespace A107244.P8907268453729875242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n ^ Int.gcd 2 (A005843 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P8907268453729875242

namespace A107244

/-- `∑[A001592(n)^gcd(2, A005843(n))]` -/
def P8907268453729875242.Spec : Prop :=
  ∀ n, P8907268453729875242.a n = A107244 n

end A107244

/-! ## A107244.P4605873048586681472

`∑[A001592(n)^(A017293(n)%5)]`
-/

namespace A107244.P4605873048586681472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001592 n : ℚ) ^ (Int.tmod (A017293 n) 5 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P4605873048586681472

namespace A107244

/-- `∑[A001592(n)^(A017293(n)%5)]` -/
def P4605873048586681472.Spec : Prop :=
  ∀ n, P4605873048586681472.a n = (A107244 n : ℚ)

end A107244

/-! ## A107244.P8978840259769668533

`∑[(A251706(n)-∑[A251706(n)])²]`
-/

namespace A107244.P8978840259769668533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251706 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P8978840259769668533

namespace A107244

/-- `∑[(A251706(n)-∑[A251706(n)])²]` -/
def P8978840259769668533.Spec : Prop :=
  ∀ n, P8978840259769668533.a n = A107244 n

end A107244

/-! ## A107244.P16763144790581707893

`∑[A001592(n)^A020639(A008574(n+1))]`
-/

namespace A107244.P16763144790581707893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001592 n : ℚ) ^ (A020639 (A008574 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P16763144790581707893

namespace A107244

/-- `∑[A001592(n)^A020639(A008574(n+1))]` -/
def P16763144790581707893.Spec : Prop :=
  ∀ n, P16763144790581707893.a n = (A107244 n : ℚ)

end A107244

/-!
# A107245: Sum of squares of heptanacci numbers (Fibonacci 7-step numbers).

The programs for A107245, the canonical program `A107245.P15153055423378604384` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107245 has offset 0).

The definition of A107245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107245.P15153055423378604384

`∑[A122189(n)²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107245

/-- `∑[A122189(n)²]` -/
def P15153055423378604384.Spec : Prop :=
  ∀ n, P15153055423378604384.a n = A107245 n

theorem P15153055423378604384.correct : P15153055423378604384.Spec := by
  intro n
  simp only [A107245]

end A107245

/-! ## A107245.P1248975089761387299

`∑[Δ[A060455(n)/6]²]`
-/

namespace A107245.P1248975089761387299
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060455 n : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107245.P1248975089761387299

namespace A107245

/-- `∑[Δ[A060455(n)/6]²]` -/
def P1248975089761387299.Spec : Prop :=
  ∀ n, P1248975089761387299.a n = (A107245 n : ℚ)

end A107245

/-! ## A107245.P5333297098614690292

`∑[∑[A251710(abs(1-n))]²]`
-/

namespace A107245.P5333297098614690292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107245.P5333297098614690292

namespace A107245

/-- `∑[∑[A251710(abs(1-n))]²]` -/
def P5333297098614690292.Spec : Prop :=
  ∀ n, P5333297098614690292.a n = A107245 n

end A107245

/-! ## A107245.P5078542820281924922

`∑[A122189(n)^A036453(n+1)]`
-/

namespace A107245.P5078542820281924922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122189 n : ℚ) ^ (A036453 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107245.P5078542820281924922

namespace A107245

/-- `∑[A122189(n)^A036453(n+1)]` -/
def P5078542820281924922.Spec : Prop :=
  ∀ n, P5078542820281924922.a n = (A107245 n : ℚ)

end A107245

/-! ## A107245.P13769977980269792564

`∑[(A251710(n)-∑[A251710(n)])²]`
-/

namespace A107245.P13769977980269792564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251710 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107245.P13769977980269792564

namespace A107245

/-- `∑[(A251710(n)-∑[A251710(n)])²]` -/
def P13769977980269792564.Spec : Prop :=
  ∀ n, P13769977980269792564.a n = A107245 n

end A107245

/-! ## A107245.P3872574120500552488

`∑[A122189(n)^A020639(A004277(n))]`
-/

namespace A107245.P3872574120500552488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122189 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107245.P3872574120500552488

namespace A107245

/-- `∑[A122189(n)^A020639(A004277(n))]` -/
def P3872574120500552488.Spec : Prop :=
  ∀ n, P3872574120500552488.a n = (A107245 n : ℚ)

end A107245

/-!
# A107246: Sum of squares of octanacci numbers (Fibonacci 8-step numbers).

The programs for A107246, the canonical program `A107246.P7222239587590482686` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107246 has offset 0).

The definition of A107246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107246.P7222239587590482686

`∑[A079262(n)²]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107246

/-- `∑[A079262(n)²]` -/
def P7222239587590482686.Spec : Prop :=
  ∀ n, P7222239587590482686.a n = A107246 n

theorem P7222239587590482686.correct : P7222239587590482686.Spec := by
  intro n
  simp only [A107246]

end A107246

/-! ## A107246.P3152243158068079540

`∑[A079262(n)^A036453(n+1)]`
-/

namespace A107246.P3152243158068079540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079262 n : ℚ) ^ (A036453 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P3152243158068079540

namespace A107246

/-- `∑[A079262(n)^A036453(n+1)]` -/
def P3152243158068079540.Spec : Prop :=
  ∀ n, P3152243158068079540.a n = (A107246 n : ℚ)

end A107246

/-! ## A107246.P4028316703579706861

`∑[A079262(n)^(A007051(n)%3)]`
-/

namespace A107246.P4028316703579706861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079262 n : ℚ) ^ (Int.tmod (A007051 n) 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P4028316703579706861

namespace A107246

/-- `∑[A079262(n)^(A007051(n)%3)]` -/
def P4028316703579706861.Spec : Prop :=
  ∀ n, P4028316703579706861.a n = (A107246 n : ℚ)

end A107246

/-! ## A107246.P6286575536648388825

`∑[(A251672(n)-∑[A251672(n)])²]`
-/

namespace A107246.P6286575536648388825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251672 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P6286575536648388825

namespace A107246

/-- `∑[(A251672(n)-∑[A251672(n)])²]` -/
def P6286575536648388825.Spec : Prop :=
  ∀ n, P6286575536648388825.a n = A107246 n

end A107246

/-! ## A107246.P17014849084136219497

`∑[(A251740(n+1)-A251741(n))²]`
-/

namespace A107246.P17014849084136219497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251740 (n + 1) - A251741 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P17014849084136219497

namespace A107246

/-- `∑[(A251740(n+1)-A251741(n))²]` -/
def P17014849084136219497.Spec : Prop :=
  ∀ n, P17014849084136219497.a n = A107246 n

end A107246

/-! ## A107246.P10668843892488283918

`∑[(A251741(n+1)-A251742(n))²]`
-/

namespace A107246.P10668843892488283918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A251741 (n + 1) - A251742 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P10668843892488283918

namespace A107246

/-- `∑[(A251741(n+1)-A251742(n))²]` -/
def P10668843892488283918.Spec : Prop :=
  ∀ n, P10668843892488283918.a n = A107246 n

end A107246

/-! ## A107246.P14394903531760260124

`∑[A079262(n)*A079262(n%(n+1))]`
-/

namespace A107246.P14394903531760260124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 n * A079262 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P14394903531760260124

namespace A107246

/-- `∑[A079262(n)*A079262(n%(n+1))]` -/
def P14394903531760260124.Spec : Prop :=
  ∀ n, P14394903531760260124.a n = A107246 n

theorem P14394903531760260124.correct : P14394903531760260124.Spec := by
  intro n
  simp only [A107246, Nat.add_sub_cancel, A107246.P14394903531760260124.f1, A107246.P14394903531760260124.a, A107246.P7222239587590482686.f1, A107246.P7222239587590482686.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A107246

/-!
# A107247: Sum of squares of nonacci numbers (Fibonacci 9-step numbers).

The programs for A107247, there is no canonical definition to state claims against.
-/

/-! ## A107247.P11199943267831939603

`∑[A104144(A281873(n+1))²]`
-/

namespace A107247.P11199943267831939603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A281873 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107247.P11199943267831939603

/-! ## A107247.P15666267089293694682

`∑[A104144(A281873(n+1))^(2-A000007(n))]`
-/

namespace A107247.P15666267089293694682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104144 (A281873 (n + 1)).toNat : ℚ) ^ (2 - A000007 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107247.P15666267089293694682

/-! ## A107247.P2503783039502045277

`∑[∑[A001489(A251746(n))]²]`
-/

namespace A107247.P2503783039502045277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A251746 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107247.P2503783039502045277

/-! ## A107247.P6663275407037921905

`∑[A000290(∑[A251746(n)])]`
-/

namespace A107247.P6663275407037921905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107247.P6663275407037921905

/-! ## A107247.P676140175202786605

`∑[A000290(A104144(n+1))]`
-/

namespace A107247.P676140175202786605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A104144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107247.P676140175202786605

/-!
# A107248: a(n) = 4*a(n-2) - 4*a(n-4) + 25*a(n-6).

The programs for A107248, the canonical program `A107248.P15885666677003125775` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107248 has offset 0).

The definition of A107248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-4*a(n-4)+25*a(n-6)` (program `A107248.P15885666677003125775`, by `A107248.P15885666677003125775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107248.P15885666677003125775

`4*a(n-2)-4*a(n-4)+25*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=37, a(4)=37, a(5)=169`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107248

/-- `4*a(n-2)-4*a(n-4)+25*a(n-6)` -/
def P15885666677003125775.Spec : Prop :=
  ∀ n, P15885666677003125775.a n = A107248 n

theorem P15885666677003125775.correct : P15885666677003125775.Spec := by
  intro n
  simp only [A107248]

end A107248

/-! ## A107248.P10002717366752160812

`ogf((1+x-3x^2+33x^3+37x^4+25x^5)/(1-4x^2+4x^4-25x^6))`
-/

namespace A107248.P10002717366752160812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 33, 37, 25] [1, 0, -4, 0, 4, 0, -25] n

end

end A107248.P10002717366752160812

namespace A107248

/-- `ogf((1+x-3x^2+33x^3+37x^4+25x^5)/(1-4x^2+4x^4-25x^6))` -/
def P10002717366752160812.Spec : Prop :=
  ∀ n, P10002717366752160812.a n = A107248 n

end A107248

/-! ## A107248.P15156969454866445160

`A172977(A100746(n+1))`
-/

namespace A107248.P15156969454866445160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172977 (A100746 (n + 1)).toNat

end

end A107248.P15156969454866445160

namespace A107248

/-- `A172977(A100746(n+1))` -/
def P15156969454866445160.Spec : Prop :=
  ∀ n, P15156969454866445160.a n = A107248 n

end A107248

/-!
# A107249: A number triangle with repeated columns of binomial coefficients.

The programs for A107249, there is no canonical definition to state claims against.
-/

/-! ## A107249.P13339177130327050447

`A082647(A136212(n))`
-/

namespace A107249.P13339177130327050447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A136212 n).toNat

end

end A107249.P13339177130327050447

/-! ## A107249.P16803018490517579341

`A046799(A373168(n))`
-/

namespace A107249.P16803018490517579341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A373168 n).toNat

end

end A107249.P16803018490517579341

/-! ## A107249.P17931805120590858083

`A111850(A259703(n+2))`
-/

namespace A107249.P17931805120590858083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A259703 (n + 2)).toNat

end

end A107249.P17931805120590858083

/-! ## A107249.P4496239918124459223

`A085031(xor(2, A249480(n)))`
-/

namespace A107249.P4496239918124459223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085031 (Int.xor 2 (A249480 n)).toNat

end

end A107249.P4496239918124459223

/-! ## A107249.P4850173451028374203

`∑{d}[A135876(n), A288926(#)]`
-/

namespace A107249.P4850173451028374203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A288926 d

end

end A107249.P4850173451028374203

/-!
# A107250: Diagonal sums of number array A107249.

The programs for A107250, there is no canonical definition to state claims against.
-/

/-! ## A107250.P9160579664522899547

`A356939(A120400(n))`
-/

namespace A107250.P9160579664522899547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (A120400 n).toNat

end

end A107250.P9160579664522899547

/-! ## A107250.P7960067641164844835

`A356939(A217283(n))`
-/

namespace A107250.P7960067641164844835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (A217283 n).toNat

end

end A107250.P7960067641164844835

/-! ## A107250.P7678265807438320567

`A002024(∑[A151364(n)])`
-/

namespace A107250.P7678265807438320567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107250.P7678265807438320567

/-! ## A107250.P13018354620222444951

`A356939(A000621(n+2))`
-/

namespace A107250.P13018354620222444951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (A000621 (n + 2)).toNat

end

end A107250.P13018354620222444951

/-! ## A107250.P8840633293211558762

`A120039(n)+A002024(A000108(n))`
-/

namespace A107250.P8840633293211558762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120039 n + A002024 (A000108 n).toNat

end

end A107250.P8840633293211558762

/-!
# A107251: Supercatalan numbers SF(2n)/(SF(n)*SF(n+1)) where SF is the superfactorial function A000178.

The programs for A107251, the canonical program `A107251.P18036125735927967973` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107251 has offset 0).

The definition of A107251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107251.P18036125735927967973

`A079478(n)/A000142(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107251

/-- `A079478(n)/A000142(n+1)` -/
def P18036125735927967973.Spec : Prop :=
  ∀ n, P18036125735927967973.a n = (A107251 n : ℚ)

end A107251

/-! ## A107251.P9028732731802555025

`A156584(2*n²)`
-/

namespace A107251.P9028732731802555025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 (2 * n ^ 2)

end

end A107251.P9028732731802555025

namespace A107251

/-- `A156584(2*n²)` -/
def P9028732731802555025.Spec : Prop :=
  ∀ n, P9028732731802555025.a n = A107251 n

end A107251

/-! ## A107251.P12328868803499453168

`A000108(n)*A107252(n)`
-/

namespace A107251.P12328868803499453168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A107252 n

end

end A107251.P12328868803499453168

namespace A107251

/-- `A000108(n)*A107252(n)` -/
def P12328868803499453168.Spec : Prop :=
  ∀ n, P12328868803499453168.a n = A107251 n

end A107251

/-! ## A107251.P9548735206456887971

`A009963(∑[4*n])/(n+1)!`
-/

namespace A107251.P9548735206456887971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A107251.P9548735206456887971

namespace A107251

/-- `A009963(∑[4*n])/(n+1)!` -/
def P9548735206456887971.Spec : Prop :=
  ∀ n, P9548735206456887971.a n = (A107251 n : ℚ)

end A107251

/-! ## A107251.P16296290495637446958

`A107252(n+1)/A009445(n)`
-/

namespace A107251.P16296290495637446958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107252 (n + 1) : ℚ) / (A009445 n : ℚ)

end

end A107251.P16296290495637446958

namespace A107251

/-- `A107252(n+1)/A009445(n)` -/
def P16296290495637446958.Spec : Prop :=
  ∀ n, P16296290495637446958.a n = (A107251 n : ℚ)

end A107251

/-!
# A107252: a(n) = Product_{k=0..n-1} (n+k)!/(k+1)!.

The programs for A107252, the canonical program `A107252.P9629950069383118717` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107252 has offset 0).

The definition of A107252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107252.P9629950069383118717

`A107251(n)/A000108(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107252

/-- `A107251(n)/A000108(n)` -/
def P9629950069383118717.Spec : Prop :=
  ∀ n, P9629950069383118717.a n = (A107252 n : ℚ)

end A107252

/-! ## A107252.P5312347719222296597

`A009963(2*n²)`
-/

namespace A107252.P5312347719222296597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (2 * n ^ 2)

end

end A107252.P5312347719222296597

namespace A107252

/-- `A009963(2*n²)` -/
def P5312347719222296597.Spec : Prop :=
  ∀ n, P5312347719222296597.a n = A107252 n

end A107252

/-! ## A107252.P13672917231443380715

`A107254(n)/n!`
-/

namespace A107252.P13672917231443380715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107254 n : ℚ) / (Nat.factorial n : ℚ)

end

end A107252.P13672917231443380715

namespace A107252

/-- `A107254(n)/n!` -/
def P13672917231443380715.Spec : Prop :=
  ∀ n, P13672917231443380715.a n = (A107252 n : ℚ)

end A107252

/-! ## A107252.P1145236144131331602

`a(n-1)*A000909(n-1)/n` with `a(0)=1`
-/

namespace A107252.P1145236144131331602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A000909 (n - 1) : ℚ) / (n : ℚ)

end

end A107252.P1145236144131331602

namespace A107252

/-- `a(n-1)*A000909(n-1)/n` -/
def P1145236144131331602.Spec : Prop :=
  ∀ n, P1145236144131331602.a n = (A107252 n : ℚ)

end A107252

/-! ## A107252.P1250969164097186174

`A107254(n)/A000142(n)`
-/

namespace A107252.P1250969164097186174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107254 n : ℚ) / (A000142 n : ℚ)

end

end A107252.P1250969164097186174

namespace A107252

/-- `A107254(n)/A000142(n)` -/
def P1250969164097186174.Spec : Prop :=
  ∀ n, P1250969164097186174.a n = (A107252 n : ℚ)

end A107252

/-!
# A107253: a(n) = n^4 - 15*n + 15.

The programs for A107253, the canonical program `A107253.P7541325312004207507` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107253 has offset 1).

The definition of A107253 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-15*(n+1)+15` (program `A107253.P7541325312004207507`, by `A107253.P7541325312004207507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107253.P7541325312004207507

`(n+1)^4-15*(n+1)+15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107253

/-- `(n+1)^4-15*(n+1)+15` -/
def P7541325312004207507.Spec : Prop :=
  ∀ n, P7541325312004207507.a n = A107253 (n + 1)

theorem P7541325312004207507.correct : P7541325312004207507.Spec := by
  intro n
  simp only [A107253, Nat.add_sub_cancel]

end A107253

/-! ## A107253.P2771854770835908889

`ogf((1-4x+56x^2-44x^3+15x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A107253.P2771854770835908889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 56, -44, 15] [1, -5, 10, -10, 5, -1] n

end

end A107253.P2771854770835908889

namespace A107253

/-- `ogf((1-4x+56x^2-44x^3+15x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2771854770835908889.Spec : Prop :=
  ∀ n, P2771854770835908889.a n = A107253 (n + 1)

end A107253

/-! ## A107253.P1861258198659920704

`abs(14*n-A269657(n))`
-/

namespace A107253.P1861258198659920704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(14 * n : ℤ) - A269657 n|

end

end A107253.P1861258198659920704

namespace A107253

/-- `abs(14*n-A269657(n))` -/
def P1861258198659920704.Spec : Prop :=
  ∀ n, P1861258198659920704.a n = A107253 (n + 1)

end A107253

/-! ## A107253.P3627909212193378275

`abs((n+1)²²-A008597(n))`
-/

namespace A107253.P3627909212193378275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) ^ 2) ^ 2 : ℤ) - A008597 n|

end

end A107253.P3627909212193378275

namespace A107253

/-- `abs((n+1)²²-A008597(n))` -/
def P3627909212193378275.Spec : Prop :=
  ∀ n, P3627909212193378275.a n = A107253 (n + 1)

end A107253

/-! ## A107253.P17718754179826019380

`((n+1)²²-15*n)%A270871(n)`
-/

namespace A107253.P17718754179826019380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((n + 1) ^ 2) ^ 2 : ℤ) - (15 * n : ℤ)) (A270871 n)

end

end A107253.P17718754179826019380

namespace A107253

/-- `((n+1)²²-15*n)%A270871(n)` -/
def P17718754179826019380.Spec : Prop :=
  ∀ n, P17718754179826019380.a n = A107253 (n + 1)

end A107253

/-! ## A107253.P15568851785789571789

`lcm(15*n-(n+1)²², A020985(n))`
-/

namespace A107253.P15568851785789571789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((15 * n : ℤ) - (((n + 1) ^ 2) ^ 2 : ℤ)) (A020985 n)

end

end A107253.P15568851785789571789

namespace A107253

/-- `lcm(15*n-(n+1)²², A020985(n))` -/
def P15568851785789571789.Spec : Prop :=
  ∀ n, (P15568851785789571789.a n : ℤ) = A107253 (n + 1)

end A107253

/-! ## A107253.P2658182362526238913

`15*(A000583(n+1)/15-n)`
-/

namespace A107253.P2658182362526238913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * ((A000583 (n + 1) : ℚ) / 15 - (n : ℚ))

end

end A107253.P2658182362526238913

namespace A107253

/-- `15*(A000583(n+1)/15-n)` -/
def P2658182362526238913.Spec : Prop :=
  ∀ n, P2658182362526238913.a n = (A107253 (n + 1) : ℚ)

theorem P2658182362526238913.correct : P2658182362526238913.Spec := by
  intro n
  simp only [A107253, Nat.add_sub_cancel, A107253.P2658182362526238913.a, A107253.P7541325312004207507.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107253

/-!
# A107254: a(n) = SF(2n-1)/SF(n-1)^2 where SF = A000178.

The programs for A107254, the canonical program `A107254.P8896513998001831719` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107254 has offset 0).

The definition of A107254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107254.P8896513998001831719

`A107252(n)*A000142(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107254

/-- `A107252(n)*A000142(n)` -/
def P8896513998001831719.Spec : Prop :=
  ∀ n, P8896513998001831719.a n = A107254 n

theorem P8896513998001831719.correct : P8896513998001831719.Spec := by
  intro n
  simp only [A107254]

end A107254

/-! ## A107254.P13030489794140864128

`a(n-1)*A000909(n-1)` with `a(0)=1`
-/

namespace A107254.P13030489794140864128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000909 (n - 1)

end

end A107254.P13030489794140864128

namespace A107254

/-- `a(n-1)*A000909(n-1)` -/
def P13030489794140864128.Spec : Prop :=
  ∀ n, P13030489794140864128.a n = A107254 n

end A107254

/-! ## A107254.P2563915122279503792

`∏[n!*C(2*n, n)]/2^n*A112332(n)`
-/

namespace A107254.P2563915122279503792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 ^ n : ℚ) * (A112332 n : ℚ)

end

end A107254.P2563915122279503792

namespace A107254

/-- `∏[n!*C(2*n, n)]/2^n*A112332(n)` -/
def P2563915122279503792.Spec : Prop :=
  ∀ n, P2563915122279503792.a n = (A107254 n : ℚ)

end A107254

/-! ## A107254.P5940244972222293618

`A000142(n)*A107252(n)`
-/

namespace A107254.P5940244972222293618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A107252 n

end

end A107254.P5940244972222293618

namespace A107254

/-- `A000142(n)*A107252(n)` -/
def P5940244972222293618.Spec : Prop :=
  ∀ n, P5940244972222293618.a n = A107254 n

theorem P5940244972222293618.correct : P5940244972222293618.Spec := by
  intro n
  simp only [A107254, Nat.add_sub_cancel, A107254.P5940244972222293618.a, A107254.P8896513998001831719.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107254

/-! ## A107254.P5301383064910890683

`2*∏[A001813(n)/2]*A112332(n)`
-/

namespace A107254.P5301383064910890683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) * (A112332 n : ℚ)

end

end A107254.P5301383064910890683

namespace A107254

/-- `2*∏[A001813(n)/2]*A112332(n)` -/
def P5301383064910890683.Spec : Prop :=
  ∀ n, P5301383064910890683.a n = (A107254 n : ℚ)

end A107254

/-!
# A107255: a(n) = n^5 - 31*n + 31, with n*a(n) + n*( n - 1 )*31 = n^6.

The programs for A107255, the canonical program `A107255.P17419866635270867785` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107255 has offset 1).

The definition of A107255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-31*(n+1)+31` (program `A107255.P17419866635270867785`, by `A107255.P17419866635270867785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107255.P17419866635270867785

`(n+1)^5-31*(n+1)+31`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107255

/-- `(n+1)^5-31*(n+1)+31` -/
def P17419866635270867785.Spec : Prop :=
  ∀ n, P17419866635270867785.a n = A107255 (n + 1)

theorem P17419866635270867785.correct : P17419866635270867785.Spec := by
  intro n
  simp only [A107255, Nat.add_sub_cancel]

end A107255

/-! ## A107255.P474400165057989898

`abs((n+1)^5-A135631(n))`
-/

namespace A107255.P474400165057989898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 5 : ℤ) - A135631 n|

end

end A107255.P474400165057989898

namespace A107255

/-- `abs((n+1)^5-A135631(n))` -/
def P474400165057989898.Spec : Prop :=
  ∀ n, P474400165057989898.a n = A107255 (n + 1)

end A107255

/-! ## A107255.P4496988645468372218

`or(1, A028310(n+1)^5-A135631(n))`
-/

namespace A107255.P4496988645468372218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028310 (n + 1) ^ 5 - A135631 n)

end

end A107255.P4496988645468372218

namespace A107255

/-- `or(1, A028310(n+1)^5-A135631(n))` -/
def P4496988645468372218.Spec : Prop :=
  ∀ n, P4496988645468372218.a n = A107255 (n + 1)

end A107255

/-! ## A107255.P13939713685016176347

`((n+1)^5-A135631(n))^(A000040(n+1)%2)`
-/

namespace A107255.P13939713685016176347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 5 : ℤ) - A135631 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A107255.P13939713685016176347

namespace A107255

/-- `((n+1)^5-A135631(n))^(A000040(n+1)%2)` -/
def P13939713685016176347.Spec : Prop :=
  ∀ n, P13939713685016176347.a n = (A107255 (n + 1) : ℚ)

end A107255

/-! ## A107255.P3350837607521117790

`((n+1)^5-A135631(n))%A000915(n+1)`
-/

namespace A107255.P3350837607521117790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 5 : ℤ) - A135631 n) (A000915 (n + 1))

end

end A107255.P3350837607521117790

namespace A107255

/-- `((n+1)^5-A135631(n))%A000915(n+1)` -/
def P3350837607521117790.Spec : Prop :=
  ∀ n, P3350837607521117790.a n = A107255 (n + 1)

end A107255

/-!
# A107256: a(n) = n^6 - 63*n + 63, with n*a(n) + n*(n-1)*63 = n^7.

The programs for A107256, the canonical program `A107256.P14278476808387478041` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107256 has offset 1).

The definition of A107256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^6-63*(n+1)+63` (program `A107256.P14278476808387478041`, by `A107256.P14278476808387478041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107256.P14278476808387478041

`(n+1)^6-63*(n+1)+63`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107256

/-- `(n+1)^6-63*(n+1)+63` -/
def P14278476808387478041.Spec : Prop :=
  ∀ n, P14278476808387478041.a n = A107256 (n + 1)

theorem P14278476808387478041.correct : P14278476808387478041.Spec := by
  intro n
  simp only [A107256, Nat.add_sub_cancel]

end A107256

/-! ## A107256.P16768584475759741630

`abs(63*n-∑[A022522(n)])`
-/

namespace A107256.P16768584475759741630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(63 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A107256.P16768584475759741630

namespace A107256

/-- `abs(63*n-∑[A022522(n)])` -/
def P16768584475759741630.Spec : Prop :=
  ∀ n, P16768584475759741630.a n = A107256 (n + 1)

end A107256

/-! ## A107256.P6129217877872508046

`∑[A069473(n-1)+a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A107256.P6129217877872508046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A069473 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107256.P6129217877872508046

namespace A107256

/-- `∑[A069473(n-1)+a(n-1)]` -/
def P6129217877872508046.Spec : Prop :=
  ∀ n, P6129217877872508046.a n = A107256 (n + 1)

end A107256

/-! ## A107256.P13355318246016159170

`lcm(63*n-∑[A022522(n)], A020985(n))`
-/

namespace A107256.P13355318246016159170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((63 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A107256.P13355318246016159170

namespace A107256

/-- `lcm(63*n-∑[A022522(n)], A020985(n))` -/
def P13355318246016159170.Spec : Prop :=
  ∀ n, (P13355318246016159170.a n : ℤ) = A107256 (n + 1)

end A107256

/-! ## A107256.P14154007633059292428

`(63*n-∑[A022522(n)])*A008683(A073751(n+2))`
-/

namespace A107256.P14154007633059292428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((63 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * A008683 (A073751 (n + 2)).toNat

end

end A107256.P14154007633059292428

namespace A107256

/-- `(63*n-∑[A022522(n)])*A008683(A073751(n+2))` -/
def P14154007633059292428.Spec : Prop :=
  ∀ n, P14154007633059292428.a n = A107256 (n + 1)

end A107256

/-!
# A107257: Smallest prime p such that for each j <= n there are primes a < b <= p whose difference b - a is 2*j.

The programs for A107257, there is no canonical definition to state claims against.
-/

/-! ## A107257.P6888863532008799977

`A270753(A060265(n+2)+1)`
-/

namespace A107257.P6888863532008799977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A060265 (n + 2) + 1).toNat

end

end A107257.P6888863532008799977

/-! ## A107257.P17881066783297213908

`A270753(A060308(n+2)+1)`
-/

namespace A107257.P17881066783297213908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A060308 (n + 2) + 1).toNat

end

end A107257.P17881066783297213908

/-! ## A107257.P15849229572848080655

`A204894(A060265(n+2)-1)`
-/

namespace A107257.P15849229572848080655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A060265 (n + 2) - 1).toNat

end

end A107257.P15849229572848080655

/-! ## A107257.P13236575068398960767

`A204902(A060265(n+2)-1)`
-/

namespace A107257.P13236575068398960767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204902 (A060265 (n + 2) - 1).toNat

end

end A107257.P13236575068398960767

/-! ## A107257.P6703165818029712382

`A204894(A060308(n+2)-1)`
-/

namespace A107257.P6703165818029712382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A060308 (n + 2) - 1).toNat

end

end A107257.P6703165818029712382

/-! ## A107257.P11346577707550415975

`A270753(A120303(n+2)+2)`
-/

namespace A107257.P11346577707550415975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A120303 (n + 2) + 2).toNat

end

end A107257.P11346577707550415975

/-! ## A107257.P5483523702124386151

`A204894(xor(1, A060265(n+2)))`
-/

namespace A107257.P5483523702124386151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (Int.xor 1 (A060265 (n + 2))).toNat

end

end A107257.P5483523702124386151

/-! ## A107257.P11616302249680583308

`A204894(xor(1, A120303(n+2)))`
-/

namespace A107257.P11616302249680583308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (Int.xor 1 (A120303 (n + 2))).toNat

end

end A107257.P11616302249680583308

/-! ## A107257.P1063104293592723992

`A020484((A060265(n+2)-1)/2)`
-/

namespace A107257.P1063104293592723992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (SequenceMachineLib.roundAway ((A060265 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A107257.P1063104293592723992

/-! ## A107257.P8625699706547365197

`A006530(a(n-1)*A020484(n+1))` with `a(0)=5`
-/

namespace A107257.P8625699706547365197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A006530 (a (n - 1) * A020484 (n + 1)).toNat

end

end A107257.P8625699706547365197

/-!
# A107258: Numbers not representable as Fibonacci(i) + triangular(j), i,j>=0.

The programs for A107258, there is no canonical definition to state claims against.
-/

/-! ## A107258.P4952875865204435641

`eq[0, A107259(n)]`
-/

namespace A107258.P4952875865204435641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107259 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107258.P4952875865204435641

/-! ## A107258.P9853801052357858423

`lt[A107259(n+1), 1]+1`
-/

namespace A107258.P9853801052357858423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107259 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A107258.P9853801052357858423

/-! ## A107258.P5600746361213877838

`A000027(lt[A107259(n), 1])`
-/

namespace A107258.P5600746361213877838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107259 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A107258.P5600746361213877838

/-! ## A107258.P10466575224979287880

`lt[A107259(A028310(n)), 1]`
-/

namespace A107258.P10466575224979287880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107259 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107258.P10466575224979287880

/-! ## A107258.P17299537892678641554

`lt[A107259(n), A158388(n)]`
-/

namespace A107258.P17299537892678641554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107258.P17299537892678641554

/-!
# A107259: Number of ways to represent n as Fibonacci(i) + triangular(j), i,j>=0.

The programs for A107259, there is no canonical definition to state claims against.
-/

/-! ## A107259.P9540621311262446058

`A325169(A299641(n+3)-A065043(3*n+2))`
-/

namespace A107259.P9540621311262446058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A299641 (n + 3) - A065043 (3 * n + 2)).toNat

end

end A107259.P9540621311262446058

/-! ## A107259.P5215764020456953218

`A279316(gcd(A000079(n), A055541(n+1)))`
-/

namespace A107259.P5215764020456953218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279316 (Int.gcd (A000079 n) (A055541 (n + 1)))

end

end A107259.P5215764020456953218

/-! ## A107259.P17459964337263308682

`A090822(A122111(n+1)*A339115(n+2))`
-/

namespace A107259.P17459964337263308682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A122111 (n + 1) * A339115 (n + 2)).toNat

end

end A107259.P17459964337263308682

/-! ## A107259.P5130023944317072063

`gcd(6, A225240(A104275(n+1)))`
-/

namespace A107259.P5130023944317072063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A225240 (A104275 (n + 1)).toNat)

end

end A107259.P5130023944317072063

/-! ## A107259.P17215747771520026982

`A037800(A177510(n+1)+A121036(n+1))`
-/

namespace A107259.P17215747771520026982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A177510 (n + 1) + A121036 (n + 1)).toNat

end

end A107259.P17215747771520026982

/-!
# A107260: Number of Lucas numbers needed to sum up to n.

The programs for A107260, there is no canonical definition to state claims against.
-/

/-! ## A107260.P10833001185097706522

`or(A116543(n+1), A165560(A063008(n)))`
-/

namespace A107260.P10833001185097706522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116543 (n + 1)) (A165560 (A063008 n).toNat)

end

end A107260.P10833001185097706522

/-! ## A107260.P2719096603520146358

`A001221((A330915(n+2)+A000040(n+1))²)`
-/

namespace A107260.P2719096603520146358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A330915 (n + 2) + A000040 (n + 1)) ^ 2).toNat

end

end A107260.P2719096603520146358

/-! ## A107260.P16823069199008947459

`∑{e}[A288497(n)+A182481(n+1), A091258(#)]`
-/

namespace A107260.P16823069199008947459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288497 n + A182481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A091258 (Nat.factorization (f1 n).natAbs p)

end

end A107260.P16823069199008947459

/-! ## A107260.P15722186272326036359

`∑{e}[A288497(n)+A182481(n+1), A179931(#)]`
-/

namespace A107260.P15722186272326036359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288497 n + A182481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A179931 (Nat.factorization (f1 n).natAbs p)

end

end A107260.P15722186272326036359

/-! ## A107260.P17279971259163580827

`∑{e}[A288497(n)+A182481(n+1), A182481(#)]`
-/

namespace A107260.P17279971259163580827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288497 n + A182481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A182481 (Nat.factorization (f1 n).natAbs p)

end

end A107260.P17279971259163580827

/-!
# A107264: Expansion of (1 - 3*x - sqrt((1-3*x)^2 - 4*3*x^2))/(2*3*x^2).

The programs for A107264, the canonical program `A107264.P13208035004381659336` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107264 has offset 0).

The definition of A107264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107264.P13208035004381659336

`∑{#}[n, 1/(#+1)*C(#+1, n-#+1)*C(n, #)*3^#]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107264

/-- `∑{#}[n, 1/(#+1)*C(#+1, n-#+1)*C(n, #)*3^#]` -/
def P13208035004381659336.Spec : Prop :=
  ∀ n, P13208035004381659336.a n = (A107264 n : ℚ)

end A107264

/-! ## A107264.P17391207332667778370

`A156016(n+1)/3`
-/

namespace A107264.P17391207332667778370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156016 (n + 1) : ℚ) / 3

end

end A107264.P17391207332667778370

namespace A107264

/-- `A156016(n+1)/3` -/
def P17391207332667778370.Spec : Prop :=
  ∀ n, P17391207332667778370.a n = (A107264 n : ℚ)

end A107264

/-! ## A107264.P6120557782906550750

`A201638(∑[n])`
-/

namespace A107264.P6120557782906550750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107264.P6120557782906550750

namespace A107264

/-- `A201638(∑[n])` -/
def P6120557782906550750.Spec : Prop :=
  ∀ n, P6120557782906550750.a n = A107264 n

end A107264

/-! ## A107264.P9069842373440613292

`Δ[∑[A156016(n)]/3]`
-/

namespace A107264.P9069842373440613292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156016 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107264.P9069842373440613292

namespace A107264

/-- `Δ[∑[A156016(n)]/3]` -/
def P9069842373440613292.Spec : Prop :=
  ∀ n, P9069842373440613292.a n = (A107264 n : ℚ)

end A107264

/-! ## A107264.P6143616979648704301

`abs(A100239(n+2)/3)`
-/

namespace A107264.P6143616979648704301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A100239 (n + 2) : ℚ) / 3|

end

end A107264.P6143616979648704301

namespace A107264

/-- `abs(A100239(n+2)/3)` -/
def P6143616979648704301.Spec : Prop :=
  ∀ n, P6143616979648704301.a n = (A107264 n : ℚ)

end A107264

/-! ## A107264.P9779891873633208629

`∑{#}[n, C(n, #)*A122871(#)]`
-/

namespace A107264.P9779891873633208629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A122871 k

end

end A107264.P9779891873633208629

namespace A107264

/-- `∑{#}[n, C(n, #)*A122871(#)]` -/
def P9779891873633208629.Spec : Prop :=
  ∀ n, P9779891873633208629.a n = A107264 n

end A107264

/-! ## A107264.P5881088668891060957

`A120983(A001840(n))`
-/

namespace A107264.P5881088668891060957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120983 (A001840 n).toNat

end

end A107264.P5881088668891060957

namespace A107264

/-- `A120983(A001840(n))` -/
def P5881088668891060957.Spec : Prop :=
  ∀ n, P5881088668891060957.a n = A107264 n

end A107264

/-! ## A107264.P4632052800095314321

`A107267(A167614(n+2))`
-/

namespace A107264.P4632052800095314321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (A167614 (n + 2)).toNat

end

end A107264.P4632052800095314321

namespace A107264

/-- `A107267(A167614(n+2))` -/
def P4632052800095314321.Spec : Prop :=
  ∀ n, P4632052800095314321.a n = A107264 n

end A107264

/-! ## A107264.P15035680027641978915

`A107267(A055999(n)+9)`
-/

namespace A107264.P15035680027641978915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (A055999 n + 9).toNat

end

end A107264.P15035680027641978915

namespace A107264

/-- `A107267(A055999(n)+9)` -/
def P15035680027641978915.Spec : Prop :=
  ∀ n, P15035680027641978915.a n = A107264 n

end A107264

/-! ## A107264.P15192909666928217943

`A107267(eq[3, A002262(n)])`
-/

namespace A107264.P15192909666928217943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107264.P15192909666928217943

namespace A107264

/-- `A107267(eq[3, A002262(n)])` -/
def P15192909666928217943.Spec : Prop :=
  ∀ n, P15192909666928217943.a n = A107264 n

end A107264

/-!
# A107265: Expansion of (1-5*x-sqrt((1-5*x)^2-4*5*x^2))/(2*5*x^2).

The programs for A107265, the canonical program `A107265.P6703332981396038541` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107265 has offset 0).

The definition of A107265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107265.P6703332981396038541

`∑{#}[n, 1/(#+1)*C(#+1, n-#+1)*C(n, #)*5^#]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107265

/-- `∑{#}[n, 1/(#+1)*C(#+1, n-#+1)*C(n, #)*5^#]` -/
def P6703332981396038541.Spec : Prop :=
  ∀ n, P6703332981396038541.a n = (A107265 n : ℚ)

end A107265

/-! ## A107265.P7975971884506608468

`A200031(n+1)/5`
-/

namespace A107265.P7975971884506608468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200031 (n + 1) : ℚ) / 5

end

end A107265.P7975971884506608468

namespace A107265

/-- `A200031(n+1)/5` -/
def P7975971884506608468.Spec : Prop :=
  ∀ n, P7975971884506608468.a n = (A107265 n : ℚ)

end A107265

/-! ## A107265.P1445041238918719275

`A107267(A167499(n+4))`
-/

namespace A107265.P1445041238918719275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (A167499 (n + 4)).toNat

end

end A107265.P1445041238918719275

namespace A107265

/-- `A107267(A167499(n+4))` -/
def P1445041238918719275.Spec : Prop :=
  ∀ n, P1445041238918719275.a n = A107265 n

end A107265

/-! ## A107265.P4876241037954416368

`A107267(eq[5, A002262(n)])`
-/

namespace A107265.P4876241037954416368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107265.P4876241037954416368

namespace A107265

/-- `A107267(eq[5, A002262(n)])` -/
def P4876241037954416368.Spec : Prop :=
  ∀ n, P4876241037954416368.a n = A107265 n

end A107265

/-! ## A107265.P11888925149501420689

`A107267(eq[6, A002260(n+1)])`
-/

namespace A107265.P11888925149501420689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107265.P11888925149501420689

namespace A107265

/-- `A107267(eq[6, A002260(n+1)])` -/
def P11888925149501420689.Spec : Prop :=
  ∀ n, P11888925149501420689.a n = A107265 n

end A107265

/-! ## A107265.P16171841277135879956

`record[A107267(A061579(A055999(n)))]`
-/

namespace A107265.P16171841277135879956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (A061579 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107265.P16171841277135879956

namespace A107265

/-- `record[A107267(A061579(A055999(n)))]` -/
def P16171841277135879956.Spec : Prop :=
  ∀ n, P16171841277135879956.a n = A107265 n

end A107265

/-!
# A107266: Expansion of (1-6*x-sqrt((1-6*x)^2-4*6*x^2))/(2*6*x^2).

The programs for A107266, the canonical program `A107266.P15371756700107824430` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107266 has offset 0).

The definition of A107266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107266.P15371756700107824430

`∑{#}[n, 1/(#+1)*C(#+1, n-#+1)*C(n, #)*6^#]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107266

/-- `∑{#}[n, 1/(#+1)*C(#+1, n-#+1)*C(n, #)*6^#]` -/
def P15371756700107824430.Spec : Prop :=
  ∀ n, P15371756700107824430.a n = (A107266 n : ℚ)

end A107266

/-! ## A107266.P3316174483366494050

`A107267(A166136(n+5))`
-/

namespace A107266.P3316174483366494050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (A166136 (n + 5)).toNat

end

end A107266.P3316174483366494050

namespace A107266

/-- `A107267(A166136(n+5))` -/
def P3316174483366494050.Spec : Prop :=
  ∀ n, P3316174483366494050.a n = A107266 n

end A107266

/-! ## A107266.P3063292545487289950

`A107267(eq[6, A002262(n)])`
-/

namespace A107266.P3063292545487289950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107266.P3063292545487289950

namespace A107266

/-- `A107267(eq[6, A002262(n)])` -/
def P3063292545487289950.Spec : Prop :=
  ∀ n, P3063292545487289950.a n = A107266 n

end A107266

/-! ## A107266.P9313595407686812418

`A107267(A000217(n+6)+6)`
-/

namespace A107266.P9313595407686812418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (A000217 (n + 6) + 6).toNat

end

end A107266.P9313595407686812418

namespace A107266

/-- `A107267(A000217(n+6)+6)` -/
def P9313595407686812418.Spec : Prop :=
  ∀ n, P9313595407686812418.a n = A107266 n

end A107266

/-! ## A107266.P7544724395788911432

`A107267(eq[7, A002260(n+1)])`
-/

namespace A107266.P7544724395788911432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107266.P7544724395788911432

namespace A107266

/-- `A107267(eq[7, A002260(n+1)])` -/
def P7544724395788911432.Spec : Prop :=
  ∀ n, P7544724395788911432.a n = A107266 n

end A107266

/-! ## A107266.P8083914572084485697

`A107267(eq[17, A037126(n+1)])`
-/

namespace A107266.P8083914572084485697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107266.P8083914572084485697

namespace A107266

/-- `A107267(eq[17, A037126(n+1)])` -/
def P8083914572084485697.Spec : Prop :=
  ∀ n, P8083914572084485697.a n = A107266 n

end A107266

/-!
# A107267: A square array of Motzkin related transforms, read by antidiagonals.

The programs for A107267, there is no canonical definition to state claims against.
-/

/-! ## A107267.P288270605321103696

`A097805(n)*A163352(A117396(n+1))`
-/

namespace A107267.P288270605321103696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A163352 (A117396 (n + 1)).toNat

end

end A107267.P288270605321103696

/-! ## A107267.P6595484758452338966

`A000602(A004736(n+1))*A307298(A308680(n)²)`
-/

namespace A107267.P6595484758452338966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (A004736 (n + 1)).toNat * A307298 (A308680 n ^ 2).toNat

end

end A107267.P6595484758452338966

/-! ## A107267.P1849652401220340857

`A325678(A062110(n)²)`
-/

namespace A107267.P1849652401220340857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A062110 n ^ 2).toNat

end

end A107267.P1849652401220340857

/-! ## A107267.P14426275851700293301

`A184974(A114197(n))+A122896(n)`
-/

namespace A107267.P14426275851700293301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A114197 n).toNat + A122896 n

end

end A107267.P14426275851700293301

/-! ## A107267.P3876989136342032972

`A227837(A156916(n))+A122896(n)`
-/

namespace A107267.P3876989136342032972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227837 (A156916 n).toNat + A122896 n

end

end A107267.P3876989136342032972

/-!
# A107268: Sums of antidiagonals of A107267.

The programs for A107268, there is no canonical definition to state claims against.
-/

/-! ## A107268.P4320999235727863654

`A026834(A150148(n))`
-/

namespace A107268.P4320999235727863654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150148 n).toNat

end

end A107268.P4320999235727863654

/-! ## A107268.P1615163496790580395

`A051889(A149593(n))`
-/

namespace A107268.P1615163496790580395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149593 n).toNat

end

end A107268.P1615163496790580395

/-! ## A107268.P11675457381631678787

`A130446(A240612(n))`
-/

namespace A107268.P11675457381631678787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A240612 n).toNat

end

end A107268.P11675457381631678787

/-!
# A107269: Diagonal sums of A107267, viewed as a number triangle.

The programs for A107269, there is no canonical definition to state claims against.
-/

/-! ## A107269.P7969280851065617699

`A370457(A144959(n)+1)`
-/

namespace A107269.P7969280851065617699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370457 (A144959 n + 1).toNat

end

end A107269.P7969280851065617699

/-! ## A107269.P3265097346126078803

`A051889(A000150(n)+A000007(n))`
-/

namespace A107269.P3265097346126078803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A000150 n + A000007 n).toNat

end

end A107269.P3265097346126078803

/-! ## A107269.P10610084821824698735

`A051889(A000150(A000038(n)+n))`
-/

namespace A107269.P10610084821824698735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A000150 (A000038 n + (n : ℤ)).toNat).toNat

end

end A107269.P10610084821824698735

/-! ## A107269.P17275883910006395153

`A051889(A119879(n)+A000150(n))`
-/

namespace A107269.P17275883910006395153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A119879 n + A000150 n).toNat

end

end A107269.P17275883910006395153

/-!
# A107270: Multiples of coefficients in asymptotic expansion of the rotational partition function for a heteronuclear diatomic molecule.

The programs for A107270, there is no canonical definition to state claims against.
-/

/-! ## A107270.P14262674165529732576

`∏[round(sqrt(A319644(2*n)))]`
-/

namespace A107270.P14262674165529732576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A319644 (2 * n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107270.P14262674165529732576

/-! ## A107270.P13885258572540957407

`A062401(A005016(n))`
-/

namespace A107270.P13885258572540957407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A005016 n).toNat

end

end A107270.P13885258572540957407

/-!
# A107271: Let M = the 3 X 3 matrix [1 1 1; 3 1 0; 2 0 0]. Perform M^n * [1 0 0] getting (1, 3, 2; 6, 6, 2; 14, 24, 12; 50, 66, 28; ...) which we string together to form the sequence.

The programs for A107271, the canonical program `A107271.P11321143563513190525` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107271 has offset 1).

The definition of A107271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107271.P11321143563513190525

`ogf((1+3x+2x^2+4x^3-2x^5-2x^6)/(1-2x^3-4x^6+2x^9))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107271

/-- `ogf((1+3x+2x^2+4x^3-2x^5-2x^6)/(1-2x^3-4x^6+2x^9))` -/
def P11321143563513190525.Spec : Prop :=
  ∀ n, P11321143563513190525.a n = A107271 (n + 1)

theorem P11321143563513190525.correct : P11321143563513190525.Spec := by
  intro n
  simp only [A107271, Nat.add_sub_cancel]

end A107271

/-!
# A107278: Number of spiro bicyclic skeletons with n carbon atoms.

The programs for A107278, there is no canonical definition to state claims against.
-/

/-! ## A107278.P11060093537771915869

`A113689(A132977(n))+A024916(n+1)`
-/

namespace A107278.P11060093537771915869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113689 (A132977 n).toNat + A024916 (n + 1)

end

end A107278.P11060093537771915869

/-!
# A107279: a(n) = 1 if n is an odd prime, a(n) = 2 if n is a nonzero even number, otherwise a(n) = 0.

The programs for A107279, the canonical program `A107279.P5813486238703992788` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107279 has offset 0).

The definition of A107279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107279.P5813486238703992788

`(A014683(xor(1, n)+1)+1)%(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107279

/-- `(A014683(xor(1, n)+1)+1)%(n+1)` -/
def P5813486238703992788.Spec : Prop :=
  ∀ n, P5813486238703992788.a n = A107279 n

theorem P5813486238703992788.correct : P5813486238703992788.Spec := by
  intro n
  simp only [A107279]

end A107279

/-! ## A107279.P4195161211858864150

`A338713(A266595(n+1))`
-/

namespace A107279.P4195161211858864150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338713 (A266595 (n + 1)).toNat

end

end A107279.P4195161211858864150

namespace A107279

/-- `A338713(A266595(n+1))` -/
def P4195161211858864150.Spec : Prop :=
  ∀ n, P4195161211858864150.a n = A107279 n

end A107279

/-! ## A107279.P12814879476110129184

`A107286(n*A370482(n))`
-/

namespace A107279.P12814879476110129184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((n : ℤ) * A370482 n).toNat

end

end A107279.P12814879476110129184

namespace A107279

/-- `A107286(n*A370482(n))` -/
def P12814879476110129184.Spec : Prop :=
  ∀ n, P12814879476110129184.a n = A107279 n

end A107279

/-! ## A107279.P9591556464314282579

`(A107393(n)²-A107393(n))/A000034(n)`
-/

namespace A107279.P9591556464314282579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107393 n ^ 2 - A107393 n : ℚ) / (A000034 n : ℚ)

end

end A107279.P9591556464314282579

namespace A107279

/-- `(A107393(n)²-A107393(n))/A000034(n)` -/
def P9591556464314282579.Spec : Prop :=
  ∀ n, P9591556464314282579.a n = (A107279 n : ℚ)

end A107279

/-! ## A107279.P11167408897326917063

`A007918(gcd(n, A007918(n)))%A020639(n+1)`
-/

namespace A107279.P11167408897326917063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (Int.gcd (n : ℤ) (A007918 n))) (A020639 (n + 1))

end

end A107279.P11167408897326917063

namespace A107279

/-- `A007918(gcd(n, A007918(n)))%A020639(n+1)` -/
def P11167408897326917063.Spec : Prop :=
  ∀ n, P11167408897326917063.a n = A107279 n

end A107279

/-! ## A107279.P17316911827151180125

`A107393(n^and(2, A107393(n)))`
-/

namespace A107279.P17316911827151180125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land 2 (A107393 n) : ℤ))).toNat

end

end A107279.P17316911827151180125

namespace A107279

/-- `A107393(n^and(2, A107393(n)))` -/
def P17316911827151180125.Spec : Prop :=
  ∀ n, P17316911827151180125.a n = A107279 n

end A107279

/-! ## A107279.P8717402586654817597

`A107393(n^dr(1-A107393(n)))`
-/

namespace A107279.P8717402586654817597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n ^ SequenceMachineLib.digitalRoot (1 - A107393 n))

end

end A107279.P8717402586654817597

namespace A107279

/-- `A107393(n^dr(1-A107393(n)))` -/
def P8717402586654817597.Spec : Prop :=
  ∀ n, P8717402586654817597.a n = A107279 n

end A107279

/-! ## A107279.P9408032774738949194

`A107393((A055672(n)-A107393(n))²)`
-/

namespace A107279.P9408032774738949194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 ((A055672 n - A107393 n) ^ 2).toNat

end

end A107279.P9408032774738949194

namespace A107279

/-- `A107393((A055672(n)-A107393(n))²)` -/
def P9408032774738949194.Spec : Prop :=
  ∀ n, P9408032774738949194.a n = A107279 n

end A107279

/-! ## A107279.P11964981288444922881

`A107393((A055672(n)+A107393(n)²)²)`
-/

namespace A107279.P11964981288444922881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 ((A055672 n + A107393 n ^ 2) ^ 2).toNat

end

end A107279.P11964981288444922881

namespace A107279

/-- `A107393((A055672(n)+A107393(n)²)²)` -/
def P11964981288444922881.Spec : Prop :=
  ∀ n, P11964981288444922881.a n = A107279 n

end A107279

/-! ## A107279.P13431981727426928342

`A327491(A200677(n+2))`
-/

namespace A107279.P13431981727426928342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (A200677 (n + 2)).toNat

end

end A107279.P13431981727426928342

namespace A107279

/-- `A327491(A200677(n+2))` -/
def P13431981727426928342.Spec : Prop :=
  ∀ n, P13431981727426928342.a n = A107279 n

end A107279

/-!
# A107280: Numbers k such that 22446688 * 10^k + 1 is prime.

The programs for A107280, there is no canonical definition to state claims against.
-/

/-! ## A107280.P1071214283914773313

`A106856(2*(n+1))-A010462(A174500(n+1))`
-/

namespace A107280.P1071214283914773313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106856 (2 * (n + 1)) - A010462 (A174500 (n + 1)).toNat

end

end A107280.P1071214283914773313

/-!
# A107283: E.g.f. exp(x)*(x^2+x+2)/(1-x).

The programs for A107283, there is no canonical definition to state claims against.
-/

/-! ## A107283.P17767980005195454415

`2+(a(n-1)+n)*n` with `a(0)=2`
-/

namespace A107283.P17767980005195454415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 + (a (n - 1) + n) * n

end

end A107283.P17767980005195454415

/-! ## A107283.P5492759567300681718

`lcm(n, a(n-1)+n)+2` with `a(0)=2`
-/

namespace A107283.P5492759567300681718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm n (a (n - 1) + n) + 2

end

end A107283.P5492759567300681718

/-! ## A107283.P5975371458850207101

`(a(n-1)+n)/n^(-1)+2` with `a(0)=2`
-/

namespace A107283.P5975371458850207101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + (n : ℚ)) / (n : ℚ) ^ (-1 : ℤ) + 2

end

end A107283.P5975371458850207101

/-! ## A107283.P14058991244112561821

`2-(n*(1-a(n-1)-n)-n)` with `a(0)=2`
-/

namespace A107283.P14058991244112561821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n : ℤ) * (1 - a (n - 1) - (n : ℤ)) - (n : ℤ))

end

end A107283.P14058991244112561821

/-! ## A107283.P13742625911482434084

`2*A111063(n+1)-n`
-/

namespace A107283.P13742625911482434084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111063 (n + 1) - (n : ℤ)

end

end A107283.P13742625911482434084

/-! ## A107283.P5397079771084336753

`4*A007526(n)+2-n`
-/

namespace A107283.P5397079771084336753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007526 n + (2 - (n : ℤ))

end

end A107283.P5397079771084336753

/-! ## A107283.P14748840307184999120

`∑[2*A006183(n+1)]-n`
-/

namespace A107283.P14748840307184999120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A107283.P14748840307184999120

/-! ## A107283.P14982000646057898877

`Δ[2*A285201(n+1)]-n`
-/

namespace A107283.P14982000646057898877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A107283.P14982000646057898877

/-! ## A107283.P550349901567854706

`2*A019461(2*n+1)-n`
-/

namespace A107283.P550349901567854706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019461 (2 * n + 1) - (n : ℤ)

end

end A107283.P550349901567854706

/-! ## A107283.P15107531087976177581

`A059100(n)+n*a(n-1)` with `a(0)=2`
-/

namespace A107283.P15107531087976177581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059100 n + (n : ℤ) * a (n - 1)

end

end A107283.P15107531087976177581

/-!
# A107284: a(n)/4^n is the measure of the subset of [0,1] remaining when all intervals of the form [b/2^m - 1/2^(2m), b/2^m + 1/2^(2m)] have been removed, with b and m positive integers, b < 2^m and m <= n.

The programs for A107284, the canonical program `A107284.P18337938075275077484` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107284 has offset 0).

The definition of A107284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107284.P18337938075275077484

`4*a(n-1)-A003000(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107284

/-- `4*a(n-1)-A003000(n)` -/
def P18337938075275077484.Spec : Prop :=
  ∀ n, P18337938075275077484.a n = A107284 n

theorem P18337938075275077484.correct : P18337938075275077484.Spec := by
  intro n
  simp only [A107284]

end A107284

/-! ## A107284.P1726217877560652747

`4*a(n-1)-a(floor(n/2))*a(n%2)` with `a(0)=1, a(1)=2`
-/

namespace A107284.P1726217877560652747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A107284.P1726217877560652747

namespace A107284

/-- `4*a(n-1)-a(floor(n/2))*a(n%2)` -/
def P1726217877560652747.Spec : Prop :=
  ∀ n, P1726217877560652747.a n = A107284 n

end A107284

/-! ## A107284.P4945811931167491622

`a(n-1)/(1/2)²-gcd(2, n+1)*a(floor(n/2))` with `a(0)=1`
-/

namespace A107284.P4945811931167491622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - (Nat.gcd 2 (n + 1) : ℚ) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A107284.P4945811931167491622

namespace A107284

/-- `a(n-1)/(1/2)²-gcd(2, n+1)*a(floor(n/2))` -/
def P4945811931167491622.Spec : Prop :=
  ∀ n, P4945811931167491622.a n = (A107284 n : ℚ)

end A107284

/-! ## A107284.P9443592581169547561

`A003000(2*n)`
-/

namespace A107284.P9443592581169547561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (2 * n)

end

end A107284.P9443592581169547561

namespace A107284

/-- `A003000(2*n)` -/
def P9443592581169547561.Spec : Prop :=
  ∀ n, P9443592581169547561.a n = A107284 n

end A107284

/-! ## A107284.P3751671266270289892

`A045690(Δ[n²])`
-/

namespace A107284.P3751671266270289892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107284.P3751671266270289892

namespace A107284

/-- `A045690(Δ[n²])` -/
def P3751671266270289892.Spec : Prop :=
  ∀ n, P3751671266270289892.a n = A107284 n

end A107284

/-! ## A107284.P18276299698746957638

`or(A000007(n), A045690(2*n+1))`
-/

namespace A107284.P18276299698746957638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A045690 (2 * n + 1))

end

end A107284.P18276299698746957638

namespace A107284

/-- `or(A000007(n), A045690(2*n+1))` -/
def P18276299698746957638.Spec : Prop :=
  ∀ n, P18276299698746957638.a n = A107284 n

end A107284

/-! ## A107284.P8731665885232550191

`A045690(2*n+1)+A000007(n+1)`
-/

namespace A107284.P8731665885232550191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (2 * n + 1) + A000007 (n + 1)

end

end A107284.P8731665885232550191

namespace A107284

/-- `A045690(2*n+1)+A000007(n+1)` -/
def P8731665885232550191.Spec : Prop :=
  ∀ n, P8731665885232550191.a n = A107284 n

end A107284

/-! ## A107284.P4469896682432399962

`A045690(2*n+1)*A342241(2*n+1)`
-/

namespace A107284.P4469896682432399962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (2 * n + 1) * A342241 (2 * n + 1)

end

end A107284.P4469896682432399962

namespace A107284

/-- `A045690(2*n+1)*A342241(2*n+1)` -/
def P4469896682432399962.Spec : Prop :=
  ∀ n, P4469896682432399962.a n = A107284 n

end A107284

/-! ## A107284.P13769299448450281307

`or(A045690(2*n+1), A108069(2*n+1))`
-/

namespace A107284.P13769299448450281307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045690 (2 * n + 1)) (A108069 (2 * n + 1))

end

end A107284.P13769299448450281307

namespace A107284

/-- `or(A045690(2*n+1), A108069(2*n+1))` -/
def P13769299448450281307.Spec : Prop :=
  ∀ n, P13769299448450281307.a n = A107284 n

end A107284

/-! ## A107284.P18102968808076424966

`A003000(Δ[n²])/2`
-/

namespace A107284.P18102968808076424966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A107284.P18102968808076424966

namespace A107284

/-- `A003000(Δ[n²])/2` -/
def P18102968808076424966.Spec : Prop :=
  ∀ n, P18102968808076424966.a n = (A107284 n : ℚ)

end A107284

/-! ## A107284.P3851216849145665551

`A308528(Δ[n²])/2`
-/

namespace A107284.P3851216849145665551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A107284.P3851216849145665551

namespace A107284

/-- `A308528(Δ[n²])/2` -/
def P3851216849145665551.Spec : Prop :=
  ∀ n, P3851216849145665551.a n = (A107284 n : ℚ)

end A107284

/-! ## A107284.P3033200114845522656

`A000079(n)²-A094536(2*n)`
-/

namespace A107284.P3033200114845522656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A094536 (2 * n)

end

end A107284.P3033200114845522656

namespace A107284

/-- `A000079(n)²-A094536(2*n)` -/
def P3033200114845522656.Spec : Prop :=
  ∀ n, P3033200114845522656.a n = A107284 n

end A107284

/-! ## A107284.P9306520765681595656

`A000079(2*n)-A094536(2*n)`
-/

namespace A107284.P9306520765681595656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A094536 (2 * n)

end

end A107284.P9306520765681595656

namespace A107284

/-- `A000079(2*n)-A094536(2*n)` -/
def P9306520765681595656.Spec : Prop :=
  ∀ n, P9306520765681595656.a n = A107284 n

end A107284

/-! ## A107284.P5993430192324076649

`A000079(n)²-A094537(2*n+1)`
-/

namespace A107284.P5993430192324076649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A094537 (2 * n + 1)

end

end A107284.P5993430192324076649

namespace A107284

/-- `A000079(n)²-A094537(2*n+1)` -/
def P5993430192324076649.Spec : Prop :=
  ∀ n, P5993430192324076649.a n = A107284 n

end A107284

/-! ## A107284.P4889654691131313998

`A000079(2*n)-A094537(2*n+1)`
-/

namespace A107284.P4889654691131313998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A094537 (2 * n + 1)

end

end A107284.P4889654691131313998

namespace A107284

/-- `A000079(2*n)-A094537(2*n+1)` -/
def P4889654691131313998.Spec : Prop :=
  ∀ n, P4889654691131313998.a n = A107284 n

end A107284

/-! ## A107284.P14687929572042974957

`A308528(2*n+1)-A045690(2*n+1)`
-/

namespace A107284.P14687929572042974957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308528 (2 * n + 1) - A045690 (2 * n + 1)

end

end A107284.P14687929572042974957

namespace A107284

/-- `A308528(2*n+1)-A045690(2*n+1)` -/
def P14687929572042974957.Spec : Prop :=
  ∀ n, P14687929572042974957.a n = A107284 n

end A107284

/-!
# A107285: a(n) = 5*401*(10^n + 1).

The programs for A107285, the canonical program `A107285.P6076890483274908222` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107285 has offset 0).

The definition of A107285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*401*(10^n+1)` (program `A107285.P6076890483274908222`, by `A107285.P6076890483274908222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107285.P6076890483274908222

`5*401*(10^n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107285

/-- `5*401*(10^n+1)` -/
def P6076890483274908222.Spec : Prop :=
  ∀ n, (P6076890483274908222.a n : ℤ) = A107285 n

theorem P6076890483274908222.correct : P6076890483274908222.Spec := by
  intro n
  simp only [A107285]

end A107285

/-!
# A107286: a(0) = 0; for n>0, minimal prime factor of n, or 1 if n is 1 or a prime.

The programs for A107286, there is no canonical definition to state claims against.
-/

/-! ## A107286.P3990709119183164525

`n/A117818((2*n)%(n+1)+1)`
-/

namespace A107286.P3990709119183164525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A117818 (2 * n % (n + 1) + 1) : ℚ)

end

end A107286.P3990709119183164525

/-! ## A107286.P2730782227524232846

`sqrt(A020639(xor(1, n)+1)²%(n+1))`
-/

namespace A107286.P2730782227524232846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A020639 (Nat.xor 1 n + 1) ^ 2) (n + 1 : ℤ) : ℝ)

end

end A107286.P2730782227524232846

/-! ## A107286.P4510717738575129929

`n/A117818(A028310(n))`
-/

namespace A107286.P4510717738575129929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A117818 (A028310 n).toNat : ℚ)

end

end A107286.P4510717738575129929

/-! ## A107286.P958124045915592804

`gcd(n, A004275(A175126(n)))`
-/

namespace A107286.P958124045915592804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004275 (A175126 n).toNat)

end

end A107286.P958124045915592804

/-! ## A107286.P15429625892316175809

`n/A117818(A000007(n)+n)`
-/

namespace A107286.P15429625892316175809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A117818 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A107286.P15429625892316175809

/-! ## A107286.P17371579780495460950

`n/A117818(A051176(A008486(n)))`
-/

namespace A107286.P17371579780495460950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A117818 (A051176 (A008486 n).toNat).toNat : ℚ)

end

end A107286.P17371579780495460950

/-! ## A107286.P15438620140095225984

`gcd(a(n-1)*A300951(n), A020639(n))` with `a(0)=0`
-/

namespace A107286.P15438620140095225984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) * A300951 n) (A020639 n)

end

end A107286.P15438620140095225984

/-!
# A107287: a(n) = a(n-1)+a(n-2)-a(n-3)+a(n-5), n>7.

The programs for A107287, the canonical program `A107287.P7312850007801223963` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107287 has offset 0).

The definition of A107287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)+a(n-5)` (program `A107287.P7312850007801223963`, by `A107287.P7312850007801223963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107287.P3451453994849560830

`ogf((1-x+x^3-x^4+2x^5-2x^7)/(1-x-x^2+x^3-x^5))`
-/

namespace A107287.P3451453994849560830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1, -1, 2, 0, -2] [1, -1, -1, 1, 0, -1] n

end

end A107287.P3451453994849560830

namespace A107287

/-- `ogf((1-x+x^3-x^4+2x^5-2x^7)/(1-x-x^2+x^3-x^5))` -/
def P3451453994849560830.Spec : Prop :=
  ∀ n, P3451453994849560830.a n = A107287 n

end A107287

/-! ## A107287.P7312850007801223963

`a(n-1)+a(n-2)-a(n-3)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=4, a(6)=4, a(7)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107287

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-5)` -/
def P7312850007801223963.Spec : Prop :=
  ∀ n, P7312850007801223963.a n = A107287 n

theorem P7312850007801223963.correct : P7312850007801223963.Spec := by
  intro n
  simp only [A107287]

end A107287

/-!
# A107288: Primes whose digit sum is a square.

The programs for A107288, the canonical program `A107288.P2457429078809289937` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107288 has offset 1).

The definition of A107288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107288.P2457429078809289937

`p?[A028839(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107288

/-- `p?[A028839(n+1)]` -/
def P2457429078809289937.Spec : Prop :=
  ∀ n, P2457429078809289937.a n = A107288 (n + 1)

theorem P2457429078809289937.correct : P2457429078809289937.Spec := by
  intro n
  simp only [A107288, Nat.add_sub_cancel]

end A107288

/-! ## A107288.P15498686631078600225

`p?[record[A028839(A292266(n))]]`
-/

namespace A107288.P15498686631078600225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107288.P15498686631078600225

namespace A107288

/-- `p?[record[A028839(A292266(n))]]` -/
def P15498686631078600225.Spec : Prop :=
  ∀ n, P15498686631078600225.a n = A107288 (n + 1)

end A107288

/-! ## A107288.P12642648555982333258

`p?[record[A028839(A292267(n))]]`
-/

namespace A107288.P12642648555982333258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (A292267 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107288.P12642648555982333258

namespace A107288

/-- `p?[record[A028839(A292267(n))]]` -/
def P12642648555982333258.Spec : Prop :=
  ∀ n, P12642648555982333258.a n = A107288 (n + 1)

end A107288

/-! ## A107288.P1842593094978422256

`filter[A028839(n+1), A010051(#)]`
-/

namespace A107288.P1842593094978422256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A107288.P1842593094978422256

namespace A107288

/-- `filter[A028839(n+1), A010051(#)]` -/
def P1842593094978422256.Spec : Prop :=
  ∀ n, P1842593094978422256.a n = A107288 (n + 1)

end A107288

/-! ## A107288.P807980369406036444

`filter[A028839(n+2), A380467(#)]`
-/

namespace A107288.P807980369406036444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A107288.P807980369406036444

namespace A107288

/-- `filter[A028839(n+2), A380467(#)]` -/
def P807980369406036444.Spec : Prop :=
  ∀ n, P807980369406036444.a n = A107288 (n + 1)

end A107288

/-! ## A107288.P10964429985105989622

`∩[A000040(n+1), A028839(n+1)]`
-/

namespace A107288.P10964429985105989622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P10964429985105989622

namespace A107288

/-- `∩[A000040(n+1), A028839(n+1)]` -/
def P10964429985105989622.Spec : Prop :=
  ∀ n, (P10964429985105989622.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P12343236870583926233

`∩[A002476(n+1), A028839(n+1)]`
-/

namespace A107288.P12343236870583926233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P12343236870583926233

namespace A107288

/-- `∩[A002476(n+1), A028839(n+1)]` -/
def P12343236870583926233.Spec : Prop :=
  ∀ n, (P12343236870583926233.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P475371764704222322

`∩[A004139(n+1), A028839(n+1)]`
-/

namespace A107288.P475371764704222322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P475371764704222322

namespace A107288

/-- `∩[A004139(n+1), A028839(n+1)]` -/
def P475371764704222322.Spec : Prop :=
  ∀ n, (P475371764704222322.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P4301913584124636017

`∩[A007645(n+1), A028839(n+1)]`
-/

namespace A107288.P4301913584124636017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P4301913584124636017

namespace A107288

/-- `∩[A007645(n+1), A028839(n+1)]` -/
def P4301913584124636017.Spec : Prop :=
  ∀ n, (P4301913584124636017.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P17103506982478281437

`∩[A028839(n+1), A040116(n+1)]`
-/

namespace A107288.P17103506982478281437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P17103506982478281437

namespace A107288

/-- `∩[A028839(n+1), A040116(n+1)]` -/
def P17103506982478281437.Spec : Prop :=
  ∀ n, (P17103506982478281437.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P1102134913630075407

`∩[A028839(n+1), A045319(n+1)]`
-/

namespace A107288.P1102134913630075407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P1102134913630075407

namespace A107288

/-- `∩[A028839(n+1), A045319(n+1)]` -/
def P1102134913630075407.Spec : Prop :=
  ∀ n, (P1102134913630075407.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P1851213866722011644

`∩[A028839(n+1), A045331(n+1)]`
-/

namespace A107288.P1851213866722011644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P1851213866722011644

namespace A107288

/-- `∩[A028839(n+1), A045331(n+1)]` -/
def P1851213866722011644.Spec : Prop :=
  ∀ n, (P1851213866722011644.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P3628688719335625562

`∩[A028839(n+1), A045344(n+1)]`
-/

namespace A107288.P3628688719335625562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P3628688719335625562

namespace A107288

/-- `∩[A028839(n+1), A045344(n+1)]` -/
def P3628688719335625562.Spec : Prop :=
  ∀ n, (P3628688719335625562.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P17102889266793211454

`∩[A028839(n+1), A045375(n+1)]`
-/

namespace A107288.P17102889266793211454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P17102889266793211454

namespace A107288

/-- `∩[A028839(n+1), A045375(n+1)]` -/
def P17102889266793211454.Spec : Prop :=
  ∀ n, (P17102889266793211454.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P14888142001085100077

`∩[A028839(n+1), A049591(n+1)]`
-/

namespace A107288.P14888142001085100077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P14888142001085100077

namespace A107288

/-- `∩[A028839(n+1), A049591(n+1)]` -/
def P14888142001085100077.Spec : Prop :=
  ∀ n, (P14888142001085100077.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P11080531042040735284

`∩[A028839(n+1), A053176(n+1)]`
-/

namespace A107288.P11080531042040735284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P11080531042040735284

namespace A107288

/-- `∩[A028839(n+1), A053176(n+1)]` -/
def P11080531042040735284.Spec : Prop :=
  ∀ n, (P11080531042040735284.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P1946438160908826562

`∩[A028839(n+1), A053813(n+1)]`
-/

namespace A107288.P1946438160908826562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P1946438160908826562

namespace A107288

/-- `∩[A028839(n+1), A053813(n+1)]` -/
def P1946438160908826562.Spec : Prop :=
  ∀ n, (P1946438160908826562.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P6524876942468186160

`∩[A028839(n+1), A059456(n+1)]`
-/

namespace A107288.P6524876942468186160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P6524876942468186160

namespace A107288

/-- `∩[A028839(n+1), A059456(n+1)]` -/
def P6524876942468186160.Spec : Prop :=
  ∀ n, (P6524876942468186160.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P5205958157768058084

`∩[A028839(n+1), A059500(n+1)]`
-/

namespace A107288.P5205958157768058084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P5205958157768058084

namespace A107288

/-- `∩[A028839(n+1), A059500(n+1)]` -/
def P5205958157768058084.Spec : Prop :=
  ∀ n, (P5205958157768058084.a n : ℤ) = A107288 (n + 1)

end A107288

/-! ## A107288.P6283540371144352667

`∩[A028839(n+1), A065091(n+1)]`
-/

namespace A107288.P6283540371144352667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107288.P6283540371144352667

namespace A107288

/-- `∩[A028839(n+1), A065091(n+1)]` -/
def P6283540371144352667.Spec : Prop :=
  ∀ n, (P6283540371144352667.a n : ℤ) = A107288 (n + 1)

end A107288

/-!
# A107289: Numbers k such that the sum of digits of k^2 is a prime.

The programs for A107289, there is no canonical definition to state claims against.
-/

/-! ## A107289.P14606922832986219037

`sqrt(A065408(n+1))`
-/

namespace A107289.P14606922832986219037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065408 (n + 1) : ℝ)

end

end A107289.P14606922832986219037

/-! ## A107289.P8656379023895564258

`eq[2, ∏{e}[∑{digits}[n², #], #+1]]`
-/

namespace A107289.P8656379023895564258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107289.P8656379023895564258

/-! ## A107289.P4409545202232496934

`lt[abs(∏{e}[∑{digits}[n², #], #+1]-2), 1]`
-/

namespace A107289.P4409545202232496934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 2|

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A107289.P4409545202232496934

/-! ## A107289.P3168957709212069589

`eq[0, A007920(A004159(n))]`
-/

namespace A107289.P3168957709212069589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107289.P3168957709212069589

/-! ## A107289.P10415344847844031760

`eq[2, A032741(A004159(n)²)]`
-/

namespace A107289.P10415344847844031760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107289.P10415344847844031760

/-! ## A107289.P9862274267105572613

`eq[2, A105700(A004159(n)²)]`
-/

namespace A107289.P9862274267105572613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107289.P9862274267105572613

/-! ## A107289.P3697168960513417451

`eq[2, A284289(A004159(n)²)]`
-/

namespace A107289.P3697168960513417451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107289.P3697168960513417451

/-! ## A107289.P11167721292121599505

`eq[3, A073855(A004159(n)²)]`
-/

namespace A107289.P11167721292121599505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A004159 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107289.P11167721292121599505

/-! ## A107289.P6437839895505012520

`eq[2, A000005(A004159(n+1))]+1`
-/

namespace A107289.P6437839895505012520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004159 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107289.P6437839895505012520

/-!
# A107290: a(n) = (M_n + 2)/3 where M_n is the n-th Mersenne prime.

The programs for A107290, there is no canonical definition to state claims against.
-/

/-! ## A107290.P740930096208873826

`(A000668(n+2)+2)/3`
-/

namespace A107290.P740930096208873826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000668 (n + 2) + 2 : ℚ) / 3

end

end A107290.P740930096208873826

/-! ## A107290.P10496006809454985004

`(2^A000043(n+2)+1)/3`
-/

namespace A107290.P10496006809454985004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000043 (n + 2) : ℤ) + 1) / 3

end

end A107290.P10496006809454985004

/-! ## A107290.P5835296538913718832

`A239546(n+2)/3`
-/

namespace A107290.P5835296538913718832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239546 (n + 2) : ℚ) / 3

end

end A107290.P5835296538913718832

/-! ## A107290.P2493419461289835888

`record[ceil(ratio[A049479(n+2)])]`
-/

namespace A107290.P2493419461289835888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107290.P2493419461289835888

/-! ## A107290.P6400545396623768870

`round(2^A000043(n+2)/3)`
-/

namespace A107290.P6400545396623768870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000043 (n + 2) : ℤ) / 3)

end

end A107290.P6400545396623768870

/-!
# A107292: 1-limiting word of the morphism 1->1331, 2->313, 3->2.

The programs for A107292, there is no canonical definition to state claims against.
-/

/-! ## A107292.P17155095147311540533

`or(A010060(A272185(3*(n+1))), A306211(n+2))`
-/

namespace A107292.P17155095147311540533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A272185 (3 * (n + 1))).toNat) (A306211 (n + 2))

end

end A107292.P17155095147311540533

/-! ## A107292.P12613834224354626829

`A040800(A038518(n)+A000161(n))`
-/

namespace A107292.P12613834224354626829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040800 (A038518 n + A000161 n).toNat

end

end A107292.P12613834224354626829

/-! ## A107292.P5321522794034780796

`A007413(or(A104248(n+4), A130534(2*n)))`
-/

namespace A107292.P5321522794034780796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (Int.lor (A104248 (n + 4)) (A130534 (2 * n))).toNat

end

end A107292.P5321522794034780796

/-! ## A107292.P7552175412009256098

`or(A022300(A248822(n+1)), A025143(2*(n+1)))`
-/

namespace A107292.P7552175412009256098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022300 (A248822 (n + 1)).toNat) (A025143 (2 * (n + 1)))

end

end A107292.P7552175412009256098

/-! ## A107292.P7784443861384843939

`A083953(∑[A053592(n)])`
-/

namespace A107292.P7784443861384843939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107292.P7784443861384843939

/-!
# A107293: The (1,1)-entry of the matrix M^n, where M is the 5 X 5 matrix [[0,1,0,0,0],[0,0,1,0,0], [0,0,0,1,0], [0,0,0,0,1], [1,0,-1,1,1]].

The programs for A107293, the canonical program `A107293.P4457205201653759696` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107293 has offset 0).

The definition of A107293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107293.P17730565525438322663

`ogf(x^4/(1-x-x^2+x^3-x^5))`
-/

namespace A107293.P17730565525438322663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -1, -1, 1, 0, -1] n

end

end A107293.P17730565525438322663

namespace A107293

/-- `ogf(x^4/(1-x-x^2+x^3-x^5))` -/
def P17730565525438322663.Spec : Prop :=
  ∀ n, P17730565525438322663.a n = A107293 n

end A107293

/-! ## A107293.P4457205201653759696

`a(n-1)+a(n-2)-a(n-3)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107293

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-5)` -/
def P4457205201653759696.Spec : Prop :=
  ∀ n, P4457205201653759696.a n = A107293 n

theorem P4457205201653759696.correct : P4457205201653759696.Spec := by
  intro n
  simp only [A107293]

end A107293

/-! ## A107293.P14260671443776785243

`∑[A107368(A004278(n+1)-n)]`
-/

namespace A107293.P14260671443776785243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 (A004278 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107293.P14260671443776785243

namespace A107293

/-- `∑[A107368(A004278(n+1)-n)]` -/
def P14260671443776785243.Spec : Prop :=
  ∀ n, P14260671443776785243.a n = A107293 n

end A107293

/-! ## A107293.P7491997940078938079

`A107368(n+3)-A107368(n+1)`
-/

namespace A107293.P7491997940078938079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 (n + 3) - A107368 (n + 1)

end

end A107293.P7491997940078938079

namespace A107293

/-- `A107368(n+3)-A107368(n+1)` -/
def P7491997940078938079.Spec : Prop :=
  ∀ n, P7491997940078938079.a n = A107293 n

end A107293

/-! ## A107293.P17948626900577233400

`Δ[A107368(n+1)+A107368(n+2)]`
-/

namespace A107293.P17948626900577233400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 (n + 1) + A107368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107293.P17948626900577233400

namespace A107293

/-- `Δ[A107368(n+1)+A107368(n+2)]` -/
def P17948626900577233400.Spec : Prop :=
  ∀ n, P17948626900577233400.a n = A107293 n

end A107293

/-! ## A107293.P3459074884376454527

`Δ[A176510(A027379(n))]`
-/

namespace A107293.P3459074884376454527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176510 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107293.P3459074884376454527

namespace A107293

/-- `Δ[A176510(A027379(n))]` -/
def P3459074884376454527.Spec : Prop :=
  ∀ n, P3459074884376454527.a n = A107293 n

end A107293

/-! ## A107293.P7429578448046807055

`Δ[A176510(A034856(n+1)-1)]`
-/

namespace A107293.P7429578448046807055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176510 (A034856 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107293.P7429578448046807055

namespace A107293

/-- `Δ[A176510(A034856(n+1)-1)]` -/
def P7429578448046807055.Spec : Prop :=
  ∀ n, P7429578448046807055.a n = A107293 n

end A107293

/-!
# A107294: GCD of (n + prime(n)) and (n + 1 + prime(n+1)).

The programs for A107294, the canonical program `A107294.P4081841263717079795` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107294 has offset 1).

The definition of A107294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107294.P4081841263717079795

`gcd(n+1+A000040(n+1), n+2+A000040(n+2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A107294

/-- `gcd(n+1+A000040(n+1), n+2+A000040(n+2))` -/
def P4081841263717079795.Spec : Prop :=
  ∀ n, (P4081841263717079795.a n : ℤ) = A107294 (n + 1)

theorem P4081841263717079795.correct : P4081841263717079795.Spec := by
  intro n
  simp only [A107294, Nat.add_sub_cancel]

end A107294

/-! ## A107294.P2899559741915195423

`gcd(A014688(n+1), A062357(n+1))`
-/

namespace A107294.P2899559741915195423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014688 (n + 1)) (A062357 (n + 1))

end

end A107294.P2899559741915195423

namespace A107294

/-- `gcd(A014688(n+1), A062357(n+1))` -/
def P2899559741915195423.Spec : Prop :=
  ∀ n, (P2899559741915195423.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P9452309201492911238

`gcd(A014688(n+2), A176628(n+1))`
-/

namespace A107294.P9452309201492911238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014688 (n + 2)) (A176628 (n + 1))

end

end A107294.P9452309201492911238

namespace A107294

/-- `gcd(A014688(n+2), A176628(n+1))` -/
def P9452309201492911238.Spec : Prop :=
  ∀ n, (P9452309201492911238.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P11045095364093867316

`gcd(-A062357(n+1), A230846(n+2))`
-/

namespace A107294.P11045095364093867316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A062357 (n + 1)) (A230846 (n + 2))

end

end A107294.P11045095364093867316

namespace A107294

/-- `gcd(-A062357(n+1), A230846(n+2))` -/
def P11045095364093867316.Spec : Prop :=
  ∀ n, (P11045095364093867316.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P1860494821815935340

`gcd(A095116(n+1)+1, Δ[A014688(n+1)])`
-/

namespace A107294.P1860494821815935340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095116 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A107294.P1860494821815935340

namespace A107294

/-- `gcd(A095116(n+1)+1, Δ[A014688(n+1)])` -/
def P1860494821815935340.Spec : Prop :=
  ∀ n, (P1860494821815935340.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P11491356660436731344

`gcd(A000040(n+1)+1+n, A230847(n+2))`
-/

namespace A107294.P11491356660436731344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1) + 1 + (n : ℤ)) (A230847 (n + 2))

end

end A107294.P11491356660436731344

namespace A107294

/-- `gcd(A000040(n+1)+1+n, A230847(n+2))` -/
def P11491356660436731344.Spec : Prop :=
  ∀ n, (P11491356660436731344.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P8355073587694659866

`gcd(A008864(n+1)+n, Δ[A008864(n+1)+n])`
-/

namespace A107294.P8355073587694659866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1) + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A107294.P8355073587694659866

namespace A107294

/-- `gcd(A008864(n+1)+n, Δ[A008864(n+1)+n])` -/
def P8355073587694659866.Spec : Prop :=
  ∀ n, (P8355073587694659866.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P15533174295914747726

`gcd(A028815(n+1)+n, Δ[A028815(n+1)+n])`
-/

namespace A107294.P15533174295914747726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028815 (n + 1) + (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A107294.P15533174295914747726

namespace A107294

/-- `gcd(A028815(n+1)+n, Δ[A028815(n+1)+n])` -/
def P15533174295914747726.Spec : Prop :=
  ∀ n, (P15533174295914747726.a n : ℤ) = A107294 (n + 1)

end A107294

/-! ## A107294.P6658475628496710071

`gcd(A167136(n+2), A167136(n+3))`
-/

namespace A107294.P6658475628496710071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167136 (n + 2)) (A167136 (n + 3))

end

end A107294.P6658475628496710071

namespace A107294

/-- `gcd(A167136(n+2), A167136(n+3))` -/
def P6658475628496710071.Spec : Prop :=
  ∀ n, (P6658475628496710071.a n : ℤ) = A107294 (n + 1)

end A107294

/-!
# A107295: Numbers k such that prime(k^2) - k^2 is prime.

The programs for A107295, there is no canonical definition to state claims against.
-/

/-! ## A107295.P3074585519069545740

`eq[2, A000005(A014689((n+1)²))]+1`
-/

namespace A107295.P3074585519069545740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014689 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107295.P3074585519069545740

/-! ## A107295.P14369727635607176822

`eq[1, A001222(A014689(abs(1-n²)+1))]`
-/

namespace A107295.P14369727635607176822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014689 (|1 - (n ^ 2 : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107295.P14369727635607176822

/-! ## A107295.P12409588641395956038

`eq[1, A001222(A014689(n*(n+2)+1))]+1`
-/

namespace A107295.P12409588641395956038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014689 (n * (n + 2) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107295.P12409588641395956038

/-!
# A107296: 1-limiting word of the morphism 1->1311, 2->13, 3->2.

The programs for A107296, there is no canonical definition to state claims against.
-/

/-! ## A107296.P4734590143628972622

`gcd(A002828(A005915(n)), A100802(n))`
-/

namespace A107296.P4734590143628972622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002828 (A005915 n).toNat) (A100802 n)

end

end A107296.P4734590143628972622

/-! ## A107296.P6838522689274251806

`gcd(A035934(3*n+1), A113005(2*(n+2)))`
-/

namespace A107296.P6838522689274251806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035934 (3 * n + 1)) (A113005 (2 * (n + 2)))

end

end A107296.P6838522689274251806

/-! ## A107296.P15141488130057943554

`A005132(A027383(A005132(n)))%4`
-/

namespace A107296.P15141488130057943554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 (A027383 (A005132 n).toNat).toNat) 4

end

end A107296.P15141488130057943554

/-! ## A107296.P10976803638180717050

`A094782(A020639(∑[A076272(n+1)]))`
-/

namespace A107296.P10976803638180717050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094782 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A107296.P10976803638180717050

/-! ## A107296.P922031611046316632

`gcd(A256421(2*n+3), A345486(A113025(n)))`
-/

namespace A107296.P922031611046316632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256421 (2 * n + 3)) (A345486 (A113025 n).toNat)

end

end A107296.P922031611046316632

/-!
# A107297: Limit of the string substitution 1->{1, 3, 1, 1}, 2->{1}, 3->{2}.

The programs for A107297, there is no canonical definition to state claims against.
-/

/-! ## A107297.P13259325103924899809

`gcd(A132476(n), A132682(A132631(n+1)))`
-/

namespace A107297.P13259325103924899809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132476 n) (A132682 (A132631 (n + 1)).toNat)

end

end A107297.P13259325103924899809

/-! ## A107297.P9275523833117257215

`gcd(A260449(A113692(n+1)), A305605(n))`
-/

namespace A107297.P9275523833117257215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260449 (A113692 (n + 1)).toNat) (A305605 n)

end

end A107297.P9275523833117257215

/-! ## A107297.P13915125844250001801

`A095276(A341634(n+1))`
-/

namespace A107297.P13915125844250001801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095276 (A341634 (n + 1)).toNat

end

end A107297.P13915125844250001801

/-! ## A107297.P4596997965632202069

`∏{e}[A367893(A016489(n+4)), #]`
-/

namespace A107297.P4596997965632202069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367893 (A016489 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A107297.P4596997965632202069

/-! ## A107297.P6483950718227596099

`A053797(A291157(2*(n+2))+A002262(n))`
-/

namespace A107297.P6483950718227596099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A291157 (2 * (n + 2)) + A002262 n).toNat

end

end A107297.P6483950718227596099

/-!
# A107298: a(n) = 3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4), n>5.

The programs for A107298, the canonical program `A107298.P4042204388267710538` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107298 has offset 0).

The definition of A107298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` (program `A107298.P4042204388267710538`, by `A107298.P4042204388267710538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107298.P18015881719466217609

`ogf((3-7x+2x^2+3x^3+x^4-x^5)/(1-3x+x^2+2x^3-x^4))`
-/

namespace A107298.P18015881719466217609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7, 2, 3, 1, -1] [1, -3, 1, 2, -1] n

end

end A107298.P18015881719466217609

namespace A107298

/-- `ogf((3-7x+2x^2+3x^3+x^4-x^5)/(1-3x+x^2+2x^3-x^4))` -/
def P18015881719466217609.Spec : Prop :=
  ∀ n, P18015881719466217609.a n = A107298 n

end A107298

/-! ## A107298.P4042204388267710538

`3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=2, a(2)=5, a(3)=10, a(4)=25, a(5)=56`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107298

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` -/
def P4042204388267710538.Spec : Prop :=
  ∀ n, P4042204388267710538.a n = A107298 n

theorem P4042204388267710538.correct : P4042204388267710538.Spec := by
  intro n
  simp only [A107298]

end A107298

/-! ## A107298.P8872363015535505818

`A274975(n)-(1-C(n, n²))`
-/

namespace A107298.P8872363015535505818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A107298.P8872363015535505818

namespace A107298

/-- `A274975(n)-(1-C(n, n²))` -/
def P8872363015535505818.Spec : Prop :=
  ∀ n, P8872363015535505818.a n = A107298 n

end A107298

/-! ## A107298.P12073115170172680358

`A274975(n)-A157928(n)`
-/

namespace A107298.P12073115170172680358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A157928 n

end

end A107298.P12073115170172680358

namespace A107298

/-- `A274975(n)-A157928(n)` -/
def P12073115170172680358.Spec : Prop :=
  ∀ n, P12073115170172680358.a n = A107298 n

end A107298

/-! ## A107298.P2692313825671581827

`A274975(n)-A000007(C(2, n²))`
-/

namespace A107298.P2692313825671581827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A000007 (Nat.choose 2 (n ^ 2))

end

end A107298.P2692313825671581827

namespace A107298

/-- `A274975(n)-A000007(C(2, n²))` -/
def P2692313825671581827.Spec : Prop :=
  ∀ n, P2692313825671581827.a n = A107298 n

end A107298

/-! ## A107298.P9544343264345818373

`A274975(n)-A025854(C(2, n²))`
-/

namespace A107298.P9544343264345818373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A025854 (Nat.choose 2 (n ^ 2))

end

end A107298.P9544343264345818373

namespace A107298

/-- `A274975(n)-A025854(C(2, n²))` -/
def P9544343264345818373.Spec : Prop :=
  ∀ n, P9544343264345818373.a n = A107298 n

end A107298

/-! ## A107298.P15548805914571715541

`A274975(n)-A057427(floor(n/2))`
-/

namespace A107298.P15548805914571715541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A057427 ⌊(n : ℚ) / 2⌋.toNat

end

end A107298.P15548805914571715541

namespace A107298

/-- `A274975(n)-A057427(floor(n/2))` -/
def P15548805914571715541.Spec : Prop :=
  ∀ n, P15548805914571715541.a n = A107298 n

end A107298

/-! ## A107298.P13636168351329479220

`A274975(n)-char[A143097(n+2)]`
-/

namespace A107298.P13636168351329479220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107298.P13636168351329479220

namespace A107298

/-- `A274975(n)-char[A143097(n+2)]` -/
def P13636168351329479220.Spec : Prop :=
  ∀ n, P13636168351329479220.a n = A107298 n

end A107298

/-! ## A107298.P9619061218326129424

`A274975(n)-A052547(C(n, n²))`
-/

namespace A107298.P9619061218326129424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A052547 (Nat.choose n (n ^ 2))

end

end A107298.P9619061218326129424

namespace A107298

/-- `A274975(n)-A052547(C(n, n²))` -/
def P9619061218326129424.Spec : Prop :=
  ∀ n, P9619061218326129424.a n = A107298 n

end A107298

/-! ## A107298.P15393556725193759695

`A274975(n)-A178226(A007590(n))`
-/

namespace A107298.P15393556725193759695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A178226 (A007590 n).toNat

end

end A107298.P15393556725193759695

namespace A107298

/-- `A274975(n)-A178226(A007590(n))` -/
def P15393556725193759695.Spec : Prop :=
  ∀ n, P15393556725193759695.a n = A107298 n

end A107298

/-! ## A107298.P13014016196614189642

`A274975(n)-A178226(A053644(n))`
-/

namespace A107298.P13014016196614189642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A178226 (A053644 n).toNat

end

end A107298.P13014016196614189642

namespace A107298

/-- `A274975(n)-A178226(A053644(n))` -/
def P13014016196614189642.Spec : Prop :=
  ∀ n, P13014016196614189642.a n = A107298 n

end A107298

/-! ## A107298.P12437265104146168001

`A274975(n)-A060763(A008578(n+1))`
-/

namespace A107298.P12437265104146168001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A060763 (A008578 (n + 1)).toNat

end

end A107298.P12437265104146168001

namespace A107298

/-- `A274975(n)-A060763(A008578(n+1))` -/
def P12437265104146168001.Spec : Prop :=
  ∀ n, P12437265104146168001.a n = A107298 n

end A107298

/-! ## A107298.P12792846927789756939

`A274975(n)-A124625(A000010(n+1))`
-/

namespace A107298.P12792846927789756939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A124625 (A000010 (n + 1)).toNat

end

end A107298.P12792846927789756939

namespace A107298

/-- `A274975(n)-A124625(A000010(n+1))` -/
def P12792846927789756939.Spec : Prop :=
  ∀ n, P12792846927789756939.a n = A107298 n

end A107298

/-! ## A107298.P527904036470771878

`A274975(n)-char[A283463(n+1)+1]`
-/

namespace A107298.P527904036470771878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107298.P527904036470771878

namespace A107298

/-- `A274975(n)-char[A283463(n+1)+1]` -/
def P527904036470771878.Spec : Prop :=
  ∀ n, P527904036470771878.a n = A107298 n

end A107298

/-! ## A107298.P8253692411936403255

`A274975(n)-A043545(n²)`
-/

namespace A107298.P8253692411936403255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n - A043545 (n ^ 2)

end

end A107298.P8253692411936403255

namespace A107298

/-- `A274975(n)-A043545(n²)` -/
def P8253692411936403255.Spec : Prop :=
  ∀ n, P8253692411936403255.a n = A107298 n

end A107298

/-!
# A107299: a(n) = 4*a(n-1)-2*a(n-2)-3*a(n-3)+2*a(n-4), n>5.

The programs for A107299, the canonical program `A107299.P13355590431322345008` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107299 has offset 0).

The definition of A107299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-2*a(n-2)-3*a(n-3)+2*a(n-4)` (program `A107299.P13355590431322345008`, by `A107299.P13355590431322345008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107299.P3963906073074099096

`ogf((3-9x+4x^2+4x^3+x^4-2x^5)/(1-4x+2x^2+3x^3-2x^4))`
-/

namespace A107299.P3963906073074099096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, 4, 4, 1, -2] [1, -4, 2, 3, -2] n

end

end A107299.P3963906073074099096

namespace A107299

/-- `ogf((3-9x+4x^2+4x^3+x^4-2x^5)/(1-4x+2x^2+3x^3-2x^4))` -/
def P3963906073074099096.Spec : Prop :=
  ∀ n, P3963906073074099096.a n = A107299 n

end A107299

/-! ## A107299.P13355590431322345008

`4*a(n-1)-2*a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=3, a(1)=3, a(2)=10, a(3)=29, a(4)=94, a(5)=292`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A107299

/-- `4*a(n-1)-2*a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P13355590431322345008.Spec : Prop :=
  ∀ n, P13355590431322345008.a n = A107299 n

theorem P13355590431322345008.correct : P13355590431322345008.Spec := by
  intro n
  simp only [A107299]

end A107299

