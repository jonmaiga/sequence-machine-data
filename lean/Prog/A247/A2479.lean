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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A247900: First differences of A247681.

The programs for A247900, the canonical program `A247900.P2545362560867208788` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247900 has offset 1).

The definition of A247900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247900.P2545362560867208788

`Δ[A247681(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A247900

/-- `Δ[A247681(n+1)]` -/
def P2545362560867208788.Spec : Prop :=
  ∀ n, P2545362560867208788.a n = A247900 (n + 1)

theorem P2545362560867208788.correct : P2545362560867208788.Spec := by
  intro n
  simp only [A247900, Nat.add_sub_cancel]

end A247900

/-! ## A247900.P7631672387042327455

`Δ[record[A247681(A291769(n))]]`
-/

namespace A247900.P7631672387042327455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247681 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247900.P7631672387042327455

namespace A247900

/-- `Δ[record[A247681(A291769(n))]]` -/
def P7631672387042327455.Spec : Prop :=
  ∀ n, P7631672387042327455.a n = A247900 (n + 1)

end A247900

/-! ## A247900.P7858243084634650288

`A247681(n+2)-A247681(n+1)`
-/

namespace A247900.P7858243084634650288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247681 (n + 2) - A247681 (n + 1)

end

end A247900.P7858243084634650288

namespace A247900

/-- `A247681(n+2)-A247681(n+1)` -/
def P7858243084634650288.Spec : Prop :=
  ∀ n, P7858243084634650288.a n = A247900 (n + 1)

theorem P7858243084634650288.correct : P7858243084634650288.Spec := by
  intro n
  simp only [A247900, Nat.add_sub_cancel, A247900.P7858243084634650288.a, A247900.P2545362560867208788.f1, A247900.P2545362560867208788.a, SequenceMachineLib.memo_apply]

end A247900

/-! ## A247900.P7676065648858972288

`Δ[A161705(A153400(n+1))]`
-/

namespace A247900.P7676065648858972288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A153400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247900.P7676065648858972288

namespace A247900

/-- `Δ[A161705(A153400(n+1))]` -/
def P7676065648858972288.Spec : Prop :=
  ∀ n, P7676065648858972288.a n = A247900 (n + 1)

end A247900

/-! ## A247900.P6444914806982430255

`Δ[record[A171435(A161705(n))]]`
-/

namespace A247900.P6444914806982430255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A161705 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247900.P6444914806982430255

namespace A247900

/-- `Δ[record[A171435(A161705(n))]]` -/
def P6444914806982430255.Spec : Prop :=
  ∀ n, P6444914806982430255.a n = A247900 (n + 1)

end A247900

/-! ## A247900.P12629296237188485823

`Δ[record[A171435(A239129(n+1)+2)]]`
-/

namespace A247900.P12629296237188485823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247900.P12629296237188485823

namespace A247900

/-- `Δ[record[A171435(A239129(n+1)+2)]]` -/
def P12629296237188485823.Spec : Prop :=
  ∀ n, P12629296237188485823.a n = A247900 (n + 1)

end A247900

/-!
# A247901: First differences of A247682.

The programs for A247901, the canonical program `A247901.P13824052714345523076` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247901 has offset 1).

The definition of A247901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247901.P13824052714345523076

`Δ[A247682(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A247901

/-- `Δ[A247682(n+1)]` -/
def P13824052714345523076.Spec : Prop :=
  ∀ n, P13824052714345523076.a n = A247901 (n + 1)

theorem P13824052714345523076.correct : P13824052714345523076.Spec := by
  intro n
  simp only [A247901, Nat.add_sub_cancel]

end A247901

/-! ## A247901.P3720900916693078109

`Δ[record[A247682(A291769(n))]]`
-/

namespace A247901.P3720900916693078109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247682 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247901.P3720900916693078109

namespace A247901

/-- `Δ[record[A247682(A291769(n))]]` -/
def P3720900916693078109.Spec : Prop :=
  ∀ n, P3720900916693078109.a n = A247901 (n + 1)

end A247901

/-! ## A247901.P16212326209089698131

`A247682(n+2)-A247682(n+1)`
-/

namespace A247901.P16212326209089698131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247682 (n + 2) - A247682 (n + 1)

end

end A247901.P16212326209089698131

namespace A247901

/-- `A247682(n+2)-A247682(n+1)` -/
def P16212326209089698131.Spec : Prop :=
  ∀ n, P16212326209089698131.a n = A247901 (n + 1)

theorem P16212326209089698131.correct : P16212326209089698131.Spec := by
  intro n
  simp only [A247901, Nat.add_sub_cancel, A247901.P16212326209089698131.a, A247901.P13824052714345523076.f1, A247901.P13824052714345523076.a, SequenceMachineLib.memo_apply]

end A247901

/-! ## A247901.P17166984589964082786

`A247682(A020725(n+1))%A247682(n+1)`
-/

namespace A247901.P17166984589964082786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247682 (A020725 (n + 1)).toNat) (A247682 (n + 1))

end

end A247901.P17166984589964082786

namespace A247901

/-- `A247682(A020725(n+1))%A247682(n+1)` -/
def P17166984589964082786.Spec : Prop :=
  ∀ n, P17166984589964082786.a n = A247901 (n + 1)

end A247901

/-! ## A247901.P1914634941835016789

`Δ[∩[A092256(n+1), A017221(n)]]`
-/

namespace A247901.P1914634941835016789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247901.P1914634941835016789

namespace A247901

/-- `Δ[∩[A092256(n+1), A017221(n)]]` -/
def P1914634941835016789.Spec : Prop :=
  ∀ n, P1914634941835016789.a n = A247901 (n + 1)

end A247901

/-! ## A247901.P4545868915079583643

`Δ[record[A247682(A128227(n))]]`
-/

namespace A247901.P4545868915079583643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247682 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247901.P4545868915079583643

namespace A247901

/-- `Δ[record[A247682(A128227(n))]]` -/
def P4545868915079583643.Spec : Prop :=
  ∀ n, P4545868915079583643.a n = A247901 (n + 1)

end A247901

/-! ## A247901.P3836247620440529650

`Δ[record[A247682(A257212(n))]]`
-/

namespace A247901.P3836247620440529650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247682 (A257212 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247901.P3836247620440529650

namespace A247901

/-- `Δ[record[A247682(A257212(n))]]` -/
def P3836247620440529650.Spec : Prop :=
  ∀ n, P3836247620440529650.a n = A247901 (n + 1)

end A247901

/-!
# A247902: First differences of A247683.

The programs for A247902, the canonical program `A247902.P16639021086398748878` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247902 has offset 1).

The definition of A247902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247902.P16639021086398748878

`Δ[A247683(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A247902

/-- `Δ[A247683(n+1)]` -/
def P16639021086398748878.Spec : Prop :=
  ∀ n, P16639021086398748878.a n = A247902 (n + 1)

theorem P16639021086398748878.correct : P16639021086398748878.Spec := by
  intro n
  simp only [A247902, Nat.add_sub_cancel]

end A247902

/-! ## A247902.P6723911299442189812

`A247683(n+2)-A247683(n+1)`
-/

namespace A247902.P6723911299442189812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247683 (n + 2) - A247683 (n + 1)

end

end A247902.P6723911299442189812

namespace A247902

/-- `A247683(n+2)-A247683(n+1)` -/
def P6723911299442189812.Spec : Prop :=
  ∀ n, P6723911299442189812.a n = A247902 (n + 1)

theorem P6723911299442189812.correct : P6723911299442189812.Spec := by
  intro n
  simp only [A247902, Nat.add_sub_cancel, A247902.P6723911299442189812.a, A247902.P16639021086398748878.f1, A247902.P16639021086398748878.a, SequenceMachineLib.memo_apply]

end A247902

/-! ## A247902.P9686760304268117355

`Δ[record[A247683(A158416(n))]]`
-/

namespace A247902.P9686760304268117355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247683 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247902.P9686760304268117355

namespace A247902

/-- `Δ[record[A247683(A158416(n))]]` -/
def P9686760304268117355.Spec : Prop :=
  ∀ n, P9686760304268117355.a n = A247902 (n + 1)

end A247902

/-! ## A247902.P2070872415571387873

`Δ[record[A171435(A239129(n+1)+8)]]`
-/

namespace A247902.P2070872415571387873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 1) + 8).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247902.P2070872415571387873

namespace A247902

/-- `Δ[record[A171435(A239129(n+1)+8)]]` -/
def P2070872415571387873.Spec : Prop :=
  ∀ n, P2070872415571387873.a n = A247902 (n + 1)

end A247902

/-! ## A247902.P3392898860764735882

`Δ[∩[A091300(n+1), A017245(n)]]`
-/

namespace A247902.P3392898860764735882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A247902.P3392898860764735882

namespace A247902

/-- `Δ[∩[A091300(n+1), A017245(n)]]` -/
def P3392898860764735882.Spec : Prop :=
  ∀ n, P3392898860764735882.a n = A247902 (n + 1)

end A247902

/-! ## A247902.P11621669363300303874

`Δ[record[A171435(A016777(6*n+8))]]`
-/

namespace A247902.P11621669363300303874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A016777 (6 * n + 8)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247902.P11621669363300303874

namespace A247902

/-- `Δ[record[A171435(A016777(6*n+8))]]` -/
def P11621669363300303874.Spec : Prop :=
  ∀ n, P11621669363300303874.a n = A247902 (n + 1)

end A247902

/-! ## A247902.P15267716974189200852

`Δ[record[A191558(A239129(n+1)+8)]]`
-/

namespace A247902.P15267716974189200852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A239129 (n + 1) + 8).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247902.P15267716974189200852

namespace A247902

/-- `Δ[record[A191558(A239129(n+1)+8)]]` -/
def P15267716974189200852.Spec : Prop :=
  ∀ n, P15267716974189200852.a n = A247902 (n + 1)

end A247902

/-! ## A247902.P13293915331744167430

`Δ[record[A288469(A239129(n+1)+8)]]`
-/

namespace A247902.P13293915331744167430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A239129 (n + 1) + 8).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247902.P13293915331744167430

namespace A247902

/-- `Δ[record[A288469(A239129(n+1)+8)]]` -/
def P13293915331744167430.Spec : Prop :=
  ∀ n, P13293915331744167430.a n = A247902 (n + 1)

end A247902

/-!
# A247903: Start with a single square; at n-th generation add a square at each expandable vertex (this is the "vertex to side" version); a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

The programs for A247903, the canonical program `A247903.P6717913669892192534` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247903 has offset 0).

The definition of A247903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247903.P6717913669892192534

`2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=29`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247903

/-- `2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P6717913669892192534.Spec : Prop :=
  ∀ n, P6717913669892192534.a n = A247903 n

theorem P6717913669892192534.correct : P6717913669892192534.Spec := by
  intro n
  simp only [A247903]

end A247903

/-! ## A247903.P13687661246316913790

`∑[2*(a(n-2)+4)]` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A247903.P13687661246316913790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n f1 =>
  2 * (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247903.P13687661246316913790

namespace A247903

/-- `∑[2*(a(n-2)+4)]` -/
def P13687661246316913790.Spec : Prop :=
  ∀ n, (P13687661246316913790.a n : ℤ) = A247903 n

end A247903

/-! ## A247903.P12725604628252399672

`∑[∑[2*a(n-2)]]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A247903.P12725604628252399672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 8] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247903.P12725604628252399672

namespace A247903

/-- `∑[∑[2*a(n-2)]]` -/
def P12725604628252399672.Spec : Prop :=
  ∀ n, (P12725604628252399672.a n : ℤ) = A247903 n

end A247903

/-! ## A247903.P2998675171426896287

`2*(a(n-2)+4*n)-5` with `a(0)=1, a(1)=5`
-/

namespace A247903.P2998675171426896287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (a (n - 2) + (4 * n : ℤ)) - 5

end

end A247903.P2998675171426896287

namespace A247903

/-- `2*(a(n-2)+4*n)-5` -/
def P2998675171426896287.Spec : Prop :=
  ∀ n, P2998675171426896287.a n = A247903 n

end A247903

/-! ## A247903.P17301810512789920587

`∑[a(n-2)+a(n-2)+8]` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A247903.P17301810512789920587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247903.P17301810512789920587

namespace A247903

/-- `∑[a(n-2)+a(n-2)+8]` -/
def P17301810512789920587.Spec : Prop :=
  ∀ n, (P17301810512789920587.a n : ℤ) = A247903 n

end A247903

/-! ## A247903.P621639151867041495

`2*A276677(n+1)-3`
-/

namespace A247903.P621639151867041495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276677 (n + 1) - 3

end

end A247903.P621639151867041495

namespace A247903

/-- `2*A276677(n+1)-3` -/
def P621639151867041495.Spec : Prop :=
  ∀ n, P621639151867041495.a n = A247903 n

end A247903

/-! ## A247903.P10377887876429529444

`∑[2*A347789(n+1)]+1`
-/

namespace A247903.P10377887876429529444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247903.P10377887876429529444

namespace A247903

/-- `∑[2*A347789(n+1)]+1` -/
def P10377887876429529444.Spec : Prop :=
  ∀ n, P10377887876429529444.a n = A247903 n

end A247903

/-! ## A247903.P11534734060371529254

`∑[A288732(2*n)-2]+1`
-/

namespace A247903.P11534734060371529254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288732 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247903.P11534734060371529254

namespace A247903

/-- `∑[A288732(2*n)-2]+1` -/
def P11534734060371529254.Spec : Prop :=
  ∀ n, P11534734060371529254.a n = A247903 n

end A247903

/-! ## A247903.P818868075012895178

`∑[4*(A052955(n)-1)]+1`
-/

namespace A247903.P818868075012895178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A052955 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247903.P818868075012895178

namespace A247903

/-- `∑[4*(A052955(n)-1)]+1` -/
def P818868075012895178.Spec : Prop :=
  ∀ n, P818868075012895178.a n = A247903 n

end A247903

/-! ## A247903.P11024996171868090398

`2*∑[A029744(n+4)-4]+1`
-/

namespace A247903.P11024996171868090398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A247903.P11024996171868090398

namespace A247903

/-- `2*∑[A029744(n+4)-4]+1` -/
def P11024996171868090398.Spec : Prop :=
  ∀ n, P11024996171868090398.a n = A247903 n

end A247903

/-! ## A247903.P7565890226492855188

`2*∑[∑[∑[A131575(n)]]-1]+1`
-/

namespace A247903.P7565890226492855188
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A247903.P7565890226492855188

namespace A247903

/-- `2*∑[∑[∑[A131575(n)]]-1]+1` -/
def P7565890226492855188.Spec : Prop :=
  ∀ n, P7565890226492855188.a n = A247903 n

end A247903

/-! ## A247903.P7997926601069729605

`∑[∑[A029744(A265283(n))]]`
-/

namespace A247903.P7997926601069729605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A265283 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247903.P7997926601069729605

namespace A247903

/-- `∑[∑[A029744(A265283(n))]]` -/
def P7997926601069729605.Spec : Prop :=
  ∀ n, P7997926601069729605.a n = A247903 n

end A247903

/-! ## A247903.P5315428292404136610

`∑[A061776(n)+A347789(n+1)/2]`
-/

namespace A247903.P5315428292404136610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061776 n : ℚ) + (A347789 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247903.P5315428292404136610

namespace A247903

/-- `∑[A061776(n)+A347789(n+1)/2]` -/
def P5315428292404136610.Spec : Prop :=
  ∀ n, P5315428292404136610.a n = (A247903 n : ℚ)

end A247903

/-! ## A247903.P9186357690754000654

`A061777(n)+A247905(n)-A247619(n)`
-/

namespace A247903.P9186357690754000654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061777 n + (A247905 n - A247619 n)

end

end A247903.P9186357690754000654

namespace A247903

/-- `A061777(n)+A247905(n)-A247619(n)` -/
def P9186357690754000654.Spec : Prop :=
  ∀ n, P9186357690754000654.a n = A247903 n

end A247903

/-! ## A247903.P375865023251149805

`(A247619(n)+A061777(n))/2`
-/

namespace A247903.P375865023251149805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247619 n + A061777 n : ℚ) / 2

end

end A247903.P375865023251149805

namespace A247903

/-- `(A247619(n)+A061777(n))/2` -/
def P375865023251149805.Spec : Prop :=
  ∀ n, P375865023251149805.a n = (A247903 n : ℚ)

end A247903

/-! ## A247903.P16880414855622742651

`2*A247619(n)-A247905(n)`
-/

namespace A247903.P16880414855622742651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247619 n - A247905 n

end

end A247903.P16880414855622742651

namespace A247903

/-- `2*A247619(n)-A247905(n)` -/
def P16880414855622742651.Spec : Prop :=
  ∀ n, P16880414855622742651.a n = A247903 n

end A247903

/-!
# A247904: Start with a single pentagon; at n-th generation add a pentagon at each expandable vertex (this is the "vertex to side" version); a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

The programs for A247904, the canonical program `A247904.P15407429314126461153` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247904 has offset 0).

The definition of A247904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247904.P15407429314126461153

`10*2^n-(5*n+9)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247904

/-- `10*2^n-(5*n+9)` -/
def P15407429314126461153.Spec : Prop :=
  ∀ n, P15407429314126461153.a n = A247904 n

theorem P15407429314126461153.correct : P15407429314126461153.Spec := by
  intro n
  simp only [A247904]

end A247904

/-! ## A247904.P16091556117608349700

`∑[or(1, 5*(2^n-1))]`
-/

namespace A247904.P16091556117608349700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (5 * ((2 ^ n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P16091556117608349700

namespace A247904

/-- `∑[or(1, 5*(2^n-1))]` -/
def P16091556117608349700.Spec : Prop :=
  ∀ n, P16091556117608349700.a n = A247904 n

end A247904

/-! ## A247904.P7958421257704449911

`∑[2*a(n-1)+5]` with `a(0)=1, a(1)=5`
-/

namespace A247904.P7958421257704449911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P7958421257704449911

namespace A247904

/-- `∑[2*a(n-1)+5]` -/
def P7958421257704449911.Spec : Prop :=
  ∀ n, (P7958421257704449911.a n : ℤ) = A247904 n

end A247904

/-! ## A247904.P480100562485525761

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A247904.P480100562485525761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P480100562485525761

namespace A247904

/-- `∑[∑[2*a(n-1)]]` -/
def P480100562485525761.Spec : Prop :=
  ∀ n, (P480100562485525761.a n : ℤ) = A247904 n

end A247904

/-! ## A247904.P12384714996756607720

`∑[a(n-1)+a(n-1)+5]` with `a(0)=1, a(1)=5`
-/

namespace A247904.P12384714996756607720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P12384714996756607720

namespace A247904

/-- `∑[a(n-1)+a(n-1)+5]` -/
def P12384714996756607720.Spec : Prop :=
  ∀ n, (P12384714996756607720.a n : ℤ) = A247904 n

end A247904

/-! ## A247904.P626264864006031559

`floor(2*(a(n-1)+2*n)-1+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A247904.P626264864006031559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (2 * n : ℤ)) - 1 + (n : ℤ)

end

end A247904.P626264864006031559

namespace A247904

/-- `floor(2*(a(n-1)+2*n)-1+n)` -/
def P626264864006031559.Spec : Prop :=
  ∀ n, P626264864006031559.a n = A247904 n

end A247904

/-! ## A247904.P8208340981010648643

`∑[A270810(n+2)-1]`
-/

namespace A247904.P8208340981010648643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270810 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P8208340981010648643

namespace A247904

/-- `∑[A270810(n+2)-1]` -/
def P8208340981010648643.Spec : Prop :=
  ∀ n, P8208340981010648643.a n = A247904 n

end A247904

/-! ## A247904.P3145549028890845780

`∑[A164143(n+3)-5]`
-/

namespace A247904.P3145549028890845780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164143 (n + 3) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P3145549028890845780

namespace A247904

/-- `∑[A164143(n+3)-5]` -/
def P3145549028890845780.Spec : Prop :=
  ∀ n, P3145549028890845780.a n = A247904 n

end A247904

/-! ## A247904.P11785286811493483121

`abs(A126284(n+1)-n)`
-/

namespace A247904.P11785286811493483121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126284 (n + 1) - (n : ℤ)|

end

end A247904.P11785286811493483121

namespace A247904

/-- `abs(A126284(n+1)-n)` -/
def P11785286811493483121.Spec : Prop :=
  ∀ n, P11785286811493483121.a n = A247904 n

end A247904

/-! ## A247904.P9764342570373945911

`∑[2*A131051(n+1)-1]`
-/

namespace A247904.P9764342570373945911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131051 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P9764342570373945911

namespace A247904

/-- `∑[2*A131051(n+1)-1]` -/
def P9764342570373945911.Spec : Prop :=
  ∀ n, P9764342570373945911.a n = A247904 n

end A247904

/-! ## A247904.P3015938142872976024

`∑[abs(2-(A134067(n)+A000225(n)))]`
-/

namespace A247904.P3015938142872976024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A134067 n + A000225 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P3015938142872976024

namespace A247904

/-- `∑[abs(2-(A134067(n)+A000225(n)))]` -/
def P3015938142872976024.Spec : Prop :=
  ∀ n, P3015938142872976024.a n = A247904 n

end A247904

/-! ## A247904.P17302896165675443873

`∑[char[A214336(n)]+5*A000225(n)]`
-/

namespace A247904.P17302896165675443873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214336 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 5 * A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P17302896165675443873

namespace A247904

/-- `∑[char[A214336(n)]+5*A000225(n)]` -/
def P17302896165675443873.Spec : Prop :=
  ∀ n, P17302896165675443873.a n = A247904 n

end A247904

/-! ## A247904.P4831980306472721262

`∑[∑[A029746(2*n+1)]-A029746(2*n)]`
-/

namespace A247904.P4831980306472721262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029746 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247904.P4831980306472721262

namespace A247904

/-- `∑[∑[A029746(2*n+1)]-A029746(2*n)]` -/
def P4831980306472721262.Spec : Prop :=
  ∀ n, P4831980306472721262.a n = A247904 n

end A247904

/-!
# A247905: Start with a single hexagon; at n-th generation add a hexagon at each expandable vertex (this is the "vertex to side" version); a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

The programs for A247905, the canonical program `A247905.P5380540676079125116` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247905 has offset 0).

The definition of A247905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247905.P5380540676079125116

`2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=43`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247905

/-- `2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P5380540676079125116.Spec : Prop :=
  ∀ n, P5380540676079125116.a n = A247905 n

theorem P5380540676079125116.correct : P5380540676079125116.Spec := by
  intro n
  simp only [A247905]

end A247905

/-! ## A247905.P12680609883565742109

`2*∑[2*(a(n-2)+3)]-1` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A247905.P12680609883565742109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  2 * (f1 (n - 2) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A247905.P12680609883565742109

namespace A247905

/-- `2*∑[2*(a(n-2)+3)]-1` -/
def P12680609883565742109.Spec : Prop :=
  ∀ n, P12680609883565742109.a n = A247905 n

end A247905

/-! ## A247905.P3701391239396151919

`2*A061777(n)-1`
-/

namespace A247905.P3701391239396151919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061777 n - 1

end

end A247905.P3701391239396151919

namespace A247905

/-- `2*A061777(n)-1` -/
def P3701391239396151919.Spec : Prop :=
  ∀ n, P3701391239396151919.a n = A247905 n

end A247905

/-! ## A247905.P18300194658944758589

`∑[2*A061776(n)]-1`
-/

namespace A247905.P18300194658944758589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A247905.P18300194658944758589

namespace A247905

/-- `∑[2*A061776(n)]-1` -/
def P18300194658944758589.Spec : Prop :=
  ∀ n, P18300194658944758589.a n = A247905 n

end A247905

/-! ## A247905.P12890473599807160657

`∑[∑[A033484(ceil(n/2))]]+n²`
-/

namespace A247905.P12890473599807160657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 ⌈(n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A247905.P12890473599807160657

namespace A247905

/-- `∑[∑[A033484(ceil(n/2))]]+n²` -/
def P12890473599807160657.Spec : Prop :=
  ∀ n, P12890473599807160657.a n = A247905 n

end A247905

/-! ## A247905.P10931692809191866988

`3*∑[∑[∑[A131575(n)]]-1]+1`
-/

namespace A247905.P10931692809191866988
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A247905.P10931692809191866988

namespace A247905

/-- `3*∑[∑[∑[A131575(n)]]-1]+1` -/
def P10931692809191866988.Spec : Prop :=
  ∀ n, P10931692809191866988.a n = A247905 n

end A247905

/-! ## A247905.P14398984539033375134

`∑[A036453(n+1)*A061776(n)]`
-/

namespace A247905.P14398984539033375134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A061776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247905.P14398984539033375134

namespace A247905

/-- `∑[A036453(n+1)*A061776(n)]` -/
def P14398984539033375134.Spec : Prop :=
  ∀ n, P14398984539033375134.a n = A247905 n

end A247905

/-! ## A247905.P10582865993034511219

`∑[A014963(A001316(n))*A061776(n)]`
-/

namespace A247905.P10582865993034511219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A061776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247905.P10582865993034511219

namespace A247905

/-- `∑[A014963(A001316(n))*A061776(n)]` -/
def P10582865993034511219.Spec : Prop :=
  ∀ n, P10582865993034511219.a n = A247905 n

end A247905

/-! ## A247905.P14507256680069375568

`∑[A020639(A008458(n))*A061776(n)]`
-/

namespace A247905.P14507256680069375568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A061776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247905.P14507256680069375568

namespace A247905

/-- `∑[A020639(A008458(n))*A061776(n)]` -/
def P14507256680069375568.Spec : Prop :=
  ∀ n, P14507256680069375568.a n = A247905 n

end A247905

/-! ## A247905.P18417920250476465377

`A247619(n)+A247903(n)-A061777(n)`
-/

namespace A247905.P18417920250476465377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247619 n + (A247903 n - A061777 n)

end

end A247905.P18417920250476465377

namespace A247905

/-- `A247619(n)+A247903(n)-A061777(n)` -/
def P18417920250476465377.Spec : Prop :=
  ∀ n, P18417920250476465377.a n = A247905 n

end A247905

/-! ## A247905.P11767393067587615782

`2*A247619(n)-A247903(n)`
-/

namespace A247905.P11767393067587615782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247619 n - A247903 n

end

end A247905.P11767393067587615782

namespace A247905

/-- `2*A247619(n)-A247903(n)` -/
def P11767393067587615782.Spec : Prop :=
  ∀ n, P11767393067587615782.a n = A247905 n

end A247905

/-!
# A247907: Expansion of (1 + x) / ((1 - x^4) * (1 - x - x^5)) in powers of x.

The programs for A247907, the canonical program `A247907.P10131411900898785144` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247907 has offset 0).

The definition of A247907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247907.P10131411900898785144

`∑[∑[A017899(n)]-a(n-2)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247907

/-- `∑[∑[A017899(n)]-a(n-2)]` -/
def P10131411900898785144.Spec : Prop :=
  ∀ n, P10131411900898785144.a n = A247907 n

theorem P10131411900898785144.correct : P10131411900898785144.Spec := by
  intro n
  simp only [A247907]

end A247907

/-! ## A247907.P4578400077942351771

`2*A233522(n)-A017830(n)`
-/

namespace A247907.P4578400077942351771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233522 n - A017830 n

end

end A247907.P4578400077942351771

namespace A247907

/-- `2*A233522(n)-A017830(n)` -/
def P4578400077942351771.Spec : Prop :=
  ∀ n, P4578400077942351771.a n = A247907 n

end A247907

/-! ## A247907.P9119935999155089406

`∑[A003520(n+1)-Δ[A193771(n)]]`
-/

namespace A247907.P9119935999155089406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247907.P9119935999155089406

namespace A247907

/-- `∑[A003520(n+1)-Δ[A193771(n)]]` -/
def P9119935999155089406.Spec : Prop :=
  ∀ n, P9119935999155089406.a n = A247907 n

end A247907

/-! ## A247907.P17882076702834936754

`∑[A003520(n+1)-A017818(n+1)]`
-/

namespace A247907.P17882076702834936754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 1) - A017818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247907.P17882076702834936754

namespace A247907

/-- `∑[A003520(n+1)-A017818(n+1)]` -/
def P17882076702834936754.Spec : Prop :=
  ∀ n, P17882076702834936754.a n = A247907 n

end A247907

/-! ## A247907.P9574018449329425048

`A003520(n)+A193771(n)-A017818(n)`
-/

namespace A247907.P9574018449329425048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + (A193771 n - A017818 n)

end

end A247907.P9574018449329425048

namespace A247907

/-- `A003520(n)+A193771(n)-A017818(n)` -/
def P9574018449329425048.Spec : Prop :=
  ∀ n, P9574018449329425048.a n = A247907 n

end A247907

/-!
# A247908: Least number k such that e - 2*k/u(2*k) < 1/n^n, where u is defined as in Comments.

The programs for A247908, there is no canonical definition to state claims against.
-/

/-! ## A247908.P10811719324066279389

`floor(A247914(n+1)/2)+1`
-/

namespace A247908.P10811719324066279389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247914 (n + 1) : ℚ) / 2⌋ + 1

end

end A247908.P10811719324066279389

/-! ## A247908.P12550248542561764768

`comp[comp[A247909(n+1)]+n]-n`
-/

namespace A247908.P12550248542561764768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247909 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A247908.P12550248542561764768

/-! ## A247908.P8371304788939150216

`A008619(A247914(n+1))`
-/

namespace A247908.P8371304788939150216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A247914 (n + 1)).toNat

end

end A247908.P8371304788939150216

/-! ## A247908.P6747178536017657818

`A065033(A247914(n+1)+1)`
-/

namespace A247908.P6747178536017657818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A247914 (n + 1) + 1).toNat

end

end A247908.P6747178536017657818

/-! ## A247908.P6521682665898728710

`A004526(A247914(n+1)+2)`
-/

namespace A247908.P6521682665898728710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247914 (n + 1) + 2).toNat

end

end A247908.P6521682665898728710

/-! ## A247908.P2713851657860208670

`A247914(n+1)+1-A247911(n+1)`
-/

namespace A247908.P2713851657860208670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1) + (1 - A247911 (n + 1))

end

end A247908.P2713851657860208670

/-!
# A247909: Numbers k such that A247908(k+1) = A247908(k).

The programs for A247909, there is no canonical definition to state claims against.
-/

/-! ## A247909.P4929330510314792357

`A247915(2*(n+1))`
-/

namespace A247909.P4929330510314792357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (2 * (n + 1))

end

end A247909.P4929330510314792357

/-! ## A247909.P5679005363776734811

`record[A247915(xor(1, n)+1)]`
-/

namespace A247909.P5679005363776734811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247909.P5679005363776734811

/-! ## A247909.P2416784610675442299

`record[A247915(2*A110654(or(2, n)))]`
-/

namespace A247909.P2416784610675442299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (2 * A110654 (Nat.lor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247909.P2416784610675442299

/-! ## A247909.P3256279129022287705

`record[A247915(or(2, n)-A110654(n))]`
-/

namespace A247909.P3256279129022287705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 ((Nat.lor 2 n : ℤ) - A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247909.P3256279129022287705

/-! ## A247909.P9836557509588401927

`A247908(a(n-1)+3)+n` with `a(0)=3`
-/

namespace A247909.P9836557509588401927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A247908 (a (n - 1) + 3).toNat + (n : ℤ)

end

end A247909.P9836557509588401927

/-! ## A247909.P1177639099596830668

`A247908(A247912(n+1)+2)+n`
-/

namespace A247909.P1177639099596830668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A247912 (n + 1) + 2).toNat + (n : ℤ)

end

end A247909.P1177639099596830668

/-! ## A247909.P8118361841810594046

`∩[A247910(n+1)+1, comp[A247910(n+1)]]`
-/

namespace A247909.P8118361841810594046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247909.P8118361841810594046

/-! ## A247909.P11588979490485587378

`∩[A247913(n+1), A247915(n+1)]`
-/

namespace A247909.P11588979490485587378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247909.P11588979490485587378

/-!
# A247910: Numbers k such that A247908(k+1) = A247908(k) + 1.

The programs for A247910, there is no canonical definition to state claims against.
-/

/-! ## A247910.P16801882456445482688

`comp[A247909(n+1)-1]+1`
-/

namespace A247910.P16801882456445482688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247909 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247910.P16801882456445482688

/-! ## A247910.P4846382466340300209

`comp[n%2*A247915(n+1)]`
-/

namespace A247910.P4846382466340300209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A247915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247910.P4846382466340300209

/-! ## A247910.P327249885104718434

`comp[A059841(n)*A247915(n+2)]`
-/

namespace A247910.P327249885104718434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A247915 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247910.P327249885104718434

/-! ## A247910.P14431149899875836461

`record[(n+1)^(A247908(n+2)-A247908(n+1))]`
-/

namespace A247910.P14431149899875836461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A247908 (n + 2) - A247908 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247910.P14431149899875836461

/-! ## A247910.P2411241739109453185

`A247913(n+1)+n+1-A247908(A247913(n+1))`
-/

namespace A247910.P2411241739109453185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (n + 1) + ((n + 1 : ℤ) - A247908 (A247913 (n + 1)).toNat)

end

end A247910.P2411241739109453185

/-!
# A247911: Least number k such that (2*k+1)/u(2*k+1) - e < 1/n^n, where u is defined as in Comments.

The programs for A247911, there is no canonical definition to state claims against.
-/

/-! ## A247911.P4685369756310487858

`ceil(A247914(n+1)/2)`
-/

namespace A247911.P4685369756310487858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247914 (n + 1) : ℚ) / 2⌉

end

end A247911.P4685369756310487858

/-! ## A247911.P5949826278728992923

`A065033(A247914(n+1))`
-/

namespace A247911.P5949826278728992923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A247914 (n + 1)).toNat

end

end A247911.P5949826278728992923

/-! ## A247911.P6864096348245165515

`A004526(A247914(n+1)+1)`
-/

namespace A247911.P6864096348245165515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247914 (n + 1) + 1).toNat

end

end A247911.P6864096348245165515

/-! ## A247911.P7234306492140273242

`A008619(A247914(n+1)-1)`
-/

namespace A247911.P7234306492140273242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A247914 (n + 1) - 1).toNat

end

end A247911.P7234306492140273242

/-! ## A247911.P15853913529858261146

`A247908(A247914(n+1)%2+n)`
-/

namespace A247911.P15853913529858261146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (Int.tmod (A247914 (n + 1)) 2 + (n : ℤ)).toNat

end

end A247911.P15853913529858261146

/-! ## A247911.P3909337701306722755

`A247908(and(1, A247914(n+1))+n)`
-/

namespace A247911.P3909337701306722755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (Int.land 1 (A247914 (n + 1)) + (n : ℤ)).toNat

end

end A247911.P3909337701306722755

/-! ## A247911.P9128552923179584687

`A247914(n+1)+1-A247908(n+1)`
-/

namespace A247911.P9128552923179584687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1) + (1 - A247908 (n + 1))

end

end A247911.P9128552923179584687

/-! ## A247911.P3388659935771661081

`A008621(A233473(n))`
-/

namespace A247911.P3388659935771661081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A233473 n).toNat

end

end A247911.P3388659935771661081

/-!
# A247912: Numbers k such that A247911(k+1) = A247911(k).

The programs for A247912, there is no canonical definition to state claims against.
-/

/-! ## A247912.P9335986130719411084

`A247915(Δ[n²])`
-/

namespace A247912.P9335986130719411084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A247912.P9335986130719411084

/-! ## A247912.P5283781873014361929

`xor(1, xor(1, A247915(2*n+1)))`
-/

namespace A247912.P5283781873014361929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A247915 (2 * n + 1)))

end

end A247912.P5283781873014361929

/-! ## A247912.P9403833060814571707

`A000027(A247915(2*n+1))`
-/

namespace A247912.P9403833060814571707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A247915 (2 * n + 1)).toNat

end

end A247912.P9403833060814571707

/-! ## A247912.P5527710374026922402

`record[A059841(n)*A247915(n+1)]`
-/

namespace A247912.P5527710374026922402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A247915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247912.P5527710374026922402

/-! ## A247912.P15699175069983419169

`A110654(2*A247915(2*n+1))`
-/

namespace A247912.P15699175069983419169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A247915 (2 * n + 1)).toNat

end

end A247912.P15699175069983419169

/-! ## A247912.P14848978455720039485

`A059841(2*n)*A247915(2*n+1)`
-/

namespace A247912.P14848978455720039485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A247915 (2 * n + 1)

end

end A247912.P14848978455720039485

/-! ## A247912.P4960650659411450282

`record[A247915(n+1)/A010873(2*n+1)]`
-/

namespace A247912.P4960650659411450282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247915 (n + 1) : ℚ) / (A010873 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247912.P4960650659411450282

/-! ## A247912.P18013392311017883

`gcd(A247915(2*n+1)*A247915(n+2), A247915(2*n+1))`
-/

namespace A247912.P18013392311017883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247915 (2 * n + 1) * A247915 (n + 2)) (A247915 (2 * n + 1))

end

end A247912.P18013392311017883

/-! ## A247912.P4927009728720651813

`A247911(a(n-1)+3)+n` with `a(0)=2`
-/

namespace A247912.P4927009728720651813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247911 (a (n - 1) + 3).toNat + (n : ℤ)

end

end A247912.P4927009728720651813

/-! ## A247912.P1976059712163160366

`A247911(A247909(n+1)-1)+n`
-/

namespace A247912.P1976059712163160366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A247909 (n + 1) - 1).toNat + (n : ℤ)

end

end A247912.P1976059712163160366

/-! ## A247912.P17131096778041023956

`A247910(A247915(2*n+1)-n)`
-/

namespace A247912.P17131096778041023956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (A247915 (2 * n + 1) - (n : ℤ)).toNat

end

end A247912.P17131096778041023956

/-! ## A247912.P15970911780775458899

`∩[A247915(2*n+1), A247913(n+2)-1]`
-/

namespace A247912.P15970911780775458899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247912.P15970911780775458899

/-! ## A247912.P17917630331041119067

`A247910(A247911(A247909(n+1)-1))`
-/

namespace A247912.P17917630331041119067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (A247911 (A247909 (n + 1) - 1).toNat).toNat

end

end A247912.P17917630331041119067

/-! ## A247912.P11902050417071018887

`A247910(A247908(A247915(n+1+n)))`
-/

namespace A247912.P11902050417071018887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (A247908 (A247915 (n + 1 + n)).toNat).toNat

end

end A247912.P11902050417071018887

/-! ## A247912.P5498368645942577213

`∩[A247910(n+1), A247915(n+1)]`
-/

namespace A247912.P5498368645942577213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247912.P5498368645942577213

/-!
# A247913: Numbers k such that A247911(k+1) = A247911(k) + 1.

The programs for A247913, there is no canonical definition to state claims against.
-/

/-! ## A247913.P14408072525129179984

`comp[A247912(n+1)-1]+1`
-/

namespace A247913.P14408072525129179984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247913.P14408072525129179984

/-! ## A247913.P13283229236121614035

`comp[A059841(n)*A247915(n+1)]`
-/

namespace A247913.P13283229236121614035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A247915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247913.P13283229236121614035

/-! ## A247913.P2109293208641375164

`record[(n+1)^(A247911(n+2)-A247911(n+1))]`
-/

namespace A247913.P2109293208641375164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A247911 (n + 2) - A247911 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247913.P2109293208641375164

/-! ## A247913.P8150245634937993624

`lt[A247911(A000038(n)+n), A247911(n+1)]`
-/

namespace A247913.P8150245634937993624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247913.P8150245634937993624

/-! ## A247913.P11303192874086079904

`A247910(n+1)+val(n+1, A247911(A247910(n+1)+1))`
-/

namespace A247913.P11303192874086079904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (n + 1) + (SequenceMachineLib.valuation (n + 1) (A247911 (A247910 (n + 1) + 1).toNat).toNat : ℤ)

end

end A247913.P11303192874086079904

/-!
# A247914: Least number k such that |(k+1)/u(k+1) - e| < 1/n^n, where u is defined as in Comments.

The programs for A247914, there is no canonical definition to state claims against.
-/

/-! ## A247914.P12426054008091689881

`A247908(n+1)+A247911(n+1)-1`
-/

namespace A247914.P12426054008091689881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (n + 1) + (A247911 (n + 1) - 1)

end

end A247914.P12426054008091689881

/-! ## A247914.P15722832520245397210

`A247908(n+1)+A023443(A247911(n+1))`
-/

namespace A247914.P15722832520245397210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (n + 1) + A023443 (A247911 (n + 1)).toNat

end

end A247914.P15722832520245397210

/-! ## A247914.P14783151396665184936

`A259361(A247911(n+1)²)+A247908(n+1)`
-/

namespace A247914.P14783151396665184936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A247911 (n + 1) ^ 2).toNat + A247908 (n + 1)

end

end A247914.P14783151396665184936

/-! ## A247914.P16762697989534259542

`A259361(A247908(n+1)*A247911(n+1))+A247911(n+1)`
-/

namespace A247914.P16762697989534259542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A247908 (n + 1) * A247911 (n + 1)).toNat + A247911 (n + 1)

end

end A247914.P16762697989534259542

/-! ## A247914.P13453463480331886861

`A247908(n+1)+A002265(A233473(n))`
-/

namespace A247914.P13453463480331886861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (n + 1) + A002265 (A233473 n).toNat

end

end A247914.P13453463480331886861

/-!
# A247915: Numbers k such that A247914(k+1) = A247914(k) + 1.

The programs for A247915, there is no canonical definition to state claims against.
-/

/-! ## A247915.P17335639675778379411

`∪[A247909(n+1), A247912(n+1)]`
-/

namespace A247915.P17335639675778379411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247915.P17335639675778379411

/-! ## A247915.P16959789723003745571

`eq[1, Δ[A247914(n+1)]]+1`
-/

namespace A247915.P16959789723003745571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247915.P16959789723003745571

/-! ## A247915.P1759987372843671982

`eq[1, Δ[A247914(A028310(n))]]`
-/

namespace A247915.P1759987372843671982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247915.P1759987372843671982

/-! ## A247915.P5423875038615244511

`A020725(eq[1, Δ[A247914(n+1)]])`
-/

namespace A247915.P5423875038615244511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247915.P5423875038615244511

/-! ## A247915.P3260910475575465863

`∪[A247909(n+1), A247911(a(n-1)+3)+n]` with `a(0)=2`
-/

namespace A247915.P3260910475575465863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A247911 (f2 (n - 1) + 3).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247915.P3260910475575465863

/-! ## A247915.P1107737103619345958

`eq[1, A247914(n+1)-A247914(A028310(n))]`
-/

namespace A247915.P1107737103619345958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1) - A247914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247915.P1107737103619345958

/-! ## A247915.P2828198174122415081

`eq[1, A247914(n+1)-A247914(A233583(n+1))]`
-/

namespace A247915.P2828198174122415081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1) - A247914 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247915.P2828198174122415081

/-! ## A247915.P11653353561671200074

`eq[1, Δ[A247914(A233583(n+1))]]`
-/

namespace A247915.P11653353561671200074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247915.P11653353561671200074

/-!
# A247916: Numbers k such that A247914(k+1) = A247914(k) + 1.

The programs for A247916, there is no canonical definition to state claims against.
-/

/-! ## A247916.P2112740210280900092

`eq[2, Δ[A247914(A028310(n))]]`
-/

namespace A247916.P2112740210280900092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247916.P2112740210280900092

/-! ## A247916.P18089105083008247555

`∩[A247910(n+1), A247913(n+1)]`
-/

namespace A247916.P18089105083008247555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247916.P18089105083008247555

/-! ## A247916.P9902290784188326421

`∩[A247910(n+1), comp[A247912(n+1)]]`
-/

namespace A247916.P9902290784188326421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247910 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247912 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247916.P9902290784188326421

/-! ## A247916.P11014945086095147503

`eq[2, A247914(n+1)-A247914(A028310(n))]`
-/

namespace A247916.P11014945086095147503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (n + 1) - A247914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247916.P11014945086095147503

/-!
# A247917: Expansion of 1 / (1 + x - x^3) in powers of x.

The programs for A247917, the canonical program `A247917.P1048329276801402457` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247917 has offset 0).

The definition of A247917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247917.P1744514780733922971

`A176971(n+3)`
-/

namespace A247917.P1744514780733922971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (n + 3)

end

end A247917.P1744514780733922971

namespace A247917

/-- `A176971(n+3)` -/
def P1744514780733922971.Spec : Prop :=
  ∀ n, P1744514780733922971.a n = A247917 n

end A247917

/-! ## A247917.P1048329276801402457

`-A104769(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247917

/-- `-A104769(n+1)` -/
def P1048329276801402457.Spec : Prop :=
  ∀ n, P1048329276801402457.a n = A247917 n

theorem P1048329276801402457.correct : P1048329276801402457.Spec := by
  intro n
  simp only [A247917]

end A247917

/-! ## A247917.P16522782284054465709

`(-1)^n*A050935(n+3)`
-/

namespace A247917.P16522782284054465709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050935 (n + 3)

end

end A247917.P16522782284054465709

namespace A247917

/-- `(-1)^n*A050935(n+3)` -/
def P16522782284054465709.Spec : Prop :=
  ∀ n, P16522782284054465709.a n = A247917 n

end A247917

/-! ## A247917.P11671612940125030946

`a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A247917.P11671612940125030946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 3) - a (n - 1)

end

end A247917.P11671612940125030946

namespace A247917

/-- `a(n-3)-a(n-1)` -/
def P11671612940125030946.Spec : Prop :=
  ∀ n, P11671612940125030946.a n = A247917 n

end A247917

/-! ## A247917.P16329016844925765908

`∑[A104769(n+5)]`
-/

namespace A247917.P16329016844925765908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247917.P16329016844925765908

namespace A247917

/-- `∑[A104769(n+5)]` -/
def P16329016844925765908.Spec : Prop :=
  ∀ n, P16329016844925765908.a n = A247917 n

end A247917

/-! ## A247917.P12255496053277708817

`1-A077905(n+4)`
-/

namespace A247917.P12255496053277708817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077905 (n + 4)

end

end A247917.P12255496053277708817

namespace A247917

/-- `1-A077905(n+4)` -/
def P12255496053277708817.Spec : Prop :=
  ∀ n, P12255496053277708817.a n = A247917 n

end A247917

/-! ## A247917.P941032898284878478

`Δ[A077905(abs(1-n))]`
-/

namespace A247917.P941032898284878478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247917.P941032898284878478

namespace A247917

/-- `Δ[A077905(abs(1-n))]` -/
def P941032898284878478.Spec : Prop :=
  ∀ n, P941032898284878478.a n = A247917 n

end A247917

/-! ## A247917.P16828558006077076786

`A176971(n)-a(n-1)` with `a(0)=1`
-/

namespace A247917.P16828558006077076786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176971 n - a (n - 1)

end

end A247917.P16828558006077076786

namespace A247917

/-- `A176971(n)-a(n-1)` -/
def P16828558006077076786.Spec : Prop :=
  ∀ n, P16828558006077076786.a n = A247917 n

end A247917

/-! ## A247917.P9557104631318143303

`A247919(n+3)+A247919(n)`
-/

namespace A247917.P9557104631318143303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247919 (n + 3) + A247919 n

end

end A247917.P9557104631318143303

namespace A247917

/-- `A247919(n+3)+A247919(n)` -/
def P9557104631318143303.Spec : Prop :=
  ∀ n, P9557104631318143303.a n = A247917 n

end A247917

/-! ## A247917.P3505161142146077118

`A104769(n+5)-A104769(n)`
-/

namespace A247917.P3505161142146077118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 5) - A104769 n

end

end A247917.P3505161142146077118

namespace A247917

/-- `A104769(n+5)-A104769(n)` -/
def P3505161142146077118.Spec : Prop :=
  ∀ n, P3505161142146077118.a n = A247917 n

end A247917

/-! ## A247917.P4858340989968420683

`Δ[Δ[A078013(n)]*A033999(n)]`
-/

namespace A247917.P4858340989968420683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247917.P4858340989968420683

namespace A247917

/-- `Δ[Δ[A078013(n)]*A033999(n)]` -/
def P4858340989968420683.Spec : Prop :=
  ∀ n, P4858340989968420683.a n = A247917 n

end A247917

/-! ## A247917.P14171038093342417832

`A050935(n+3)*A156872(2*n)`
-/

namespace A247917.P14171038093342417832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 3) * A156872 (2 * n)

end

end A247917.P14171038093342417832

namespace A247917

/-- `A050935(n+3)*A156872(2*n)` -/
def P14171038093342417832.Spec : Prop :=
  ∀ n, P14171038093342417832.a n = A247917 n

end A247917

/-! ## A247917.P1421288838002175814

`Δ[A104769(n)-A104770(n)]`
-/

namespace A247917.P1421288838002175814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n - A104770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247917.P1421288838002175814

namespace A247917

/-- `Δ[A104769(n)-A104770(n)]` -/
def P1421288838002175814.Spec : Prop :=
  ∀ n, P1421288838002175814.a n = A247917 n

end A247917

/-! ## A247917.P10563597819835032356

`A104770(n+2)+A104769(n+3)`
-/

namespace A247917.P10563597819835032356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 2) + A104769 (n + 3)

end

end A247917.P10563597819835032356

namespace A247917

/-- `A104770(n+2)+A104769(n+3)` -/
def P10563597819835032356.Spec : Prop :=
  ∀ n, P10563597819835032356.a n = A247917 n

end A247917

/-! ## A247917.P13862818477272457327

`Δ[A104771(n)-2*A104770(n)]`
-/

namespace A247917.P13862818477272457327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n - 2 * A104770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247917.P13862818477272457327

namespace A247917

/-- `Δ[A104771(n)-2*A104770(n)]` -/
def P13862818477272457327.Spec : Prop :=
  ∀ n, P13862818477272457327.a n = A247917 n

end A247917

/-! ## A247917.P1390087819623516252

`A104770(n+1)-A104771(n+1)`
-/

namespace A247917.P1390087819623516252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104770 (n + 1) - A104771 (n + 1)

end

end A247917.P1390087819623516252

namespace A247917

/-- `A104770(n+1)-A104771(n+1)` -/
def P1390087819623516252.Spec : Prop :=
  ∀ n, P1390087819623516252.a n = A247917 n

end A247917

/-!
# A247918: Expansion of (1 + x) / ((1 - x^4) * (1 + x^4 - x^5)) in powers of x.

The programs for A247918, the canonical program `A247918.P958938976408860390` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247918 has offset 0).

The definition of A247918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247918.P958938976408860390

`A257543(abs(1-n))+A257543(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247918

/-- `A257543(abs(1-n))+A257543(n)` -/
def P958938976408860390.Spec : Prop :=
  ∀ n, P958938976408860390.a n = A247918 n

theorem P958938976408860390.correct : P958938976408860390.Spec := by
  intro n
  simp only [A247918]

end A247918

/-! ## A247918.P3809647806476035645

`-∑[A257543(abs(2-n))-A257543(n)]`
-/

namespace A247918.P3809647806476035645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257543 |2 - (n : ℤ)|.toNat - A257543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247918.P3809647806476035645

namespace A247918

/-- `-∑[A257543(abs(2-n))-A257543(n)]` -/
def P3809647806476035645.Spec : Prop :=
  ∀ n, P3809647806476035645.a n = A247918 n

end A247918

/-! ## A247918.P1214943275365764494

`A088435(n+1)-A088423(A088405(2*n+5))`
-/

namespace A247918.P1214943275365764494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088435 (n + 1) - A088423 (A088405 (2 * n + 5)).toNat

end

end A247918.P1214943275365764494

namespace A247918

/-- `A088435(n+1)-A088423(A088405(2*n+5))` -/
def P1214943275365764494.Spec : Prop :=
  ∀ n, P1214943275365764494.a n = A247918 n

end A247918

/-! ## A247918.P7699821899973097550

`A157424(2^(comp[∑[n]]-n)-∏{p}[n+1, #])`
-/

namespace A247918.P7699821899973097550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157424 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ))).toNat

end

end A247918.P7699821899973097550

namespace A247918

/-- `A157424(2^(comp[∑[n]]-n)-∏{p}[n+1, #])` -/
def P7699821899973097550.Spec : Prop :=
  ∀ n, P7699821899973097550.a n = A247918 n

end A247918

/-! ## A247918.P14283828084363459703

`A033770(A301594(n+1))`
-/

namespace A247918.P14283828084363459703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033770 (A301594 (n + 1)).toNat

end

end A247918.P14283828084363459703

namespace A247918

/-- `A033770(A301594(n+1))` -/
def P14283828084363459703.Spec : Prop :=
  ∀ n, P14283828084363459703.a n = A247918 n

end A247918

/-!
# A247919: Expansion of 1 / (1 + x^4 - x^5) in powers of x.

The programs for A247919, the canonical program `A247919.P7184146547753263783` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247919 has offset 0).

The definition of A247919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1631 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247919.P7184146547753263783

`a(n-5)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247919

/-- `a(n-5)-a(n-4)` -/
def P7184146547753263783.Spec : Prop :=
  ∀ n, P7184146547753263783.a n = A247919 n

theorem P7184146547753263783.correct : P7184146547753263783.Spec := by
  intro n
  simp only [A247919]

end A247919

/-! ## A247919.P16502956929988682557

`A176971(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A247919.P16502956929988682557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A176971 n - a (n - 3)

end

end A247919.P16502956929988682557

namespace A247919

/-- `A176971(n)-a(n-3)` -/
def P16502956929988682557.Spec : Prop :=
  ∀ n, P16502956929988682557.a n = A247919 n

end A247919

/-! ## A247919.P17628594211368989582

`∑[A257543(n)-A257543(n+4)]`
-/

namespace A247919.P17628594211368989582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257543 n - A257543 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247919.P17628594211368989582

namespace A247919

/-- `∑[A257543(n)-A257543(n+4)]` -/
def P17628594211368989582.Spec : Prop :=
  ∀ n, P17628594211368989582.a n = A247919 n

end A247919

/-! ## A247919.P3213076849688787494

`Δ[A225181(n)+A046080(A318576(n+1))]`
-/

namespace A247919.P3213076849688787494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225181 n + A046080 (A318576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247919.P3213076849688787494

namespace A247919

/-- `Δ[A225181(n)+A046080(A318576(n+1))]` -/
def P3213076849688787494.Spec : Prop :=
  ∀ n, P3213076849688787494.a n = A247919 n

end A247919

/-!
# A247920: Expansion of 1 / (1 + x + x^2 - x^5) in powers of x.

The programs for A247920, the canonical program `A247920.P10833726533720043603` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247920 has offset 0).

The definition of A247920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247920.P10833726533720043603

`a(n-5)-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1, a(4)=-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247920

/-- `a(n-5)-(a(n-1)+a(n-2))` -/
def P10833726533720043603.Spec : Prop :=
  ∀ n, P10833726533720043603.a n = A247920 n

theorem P10833726533720043603.correct : P10833726533720043603.Spec := by
  intro n
  simp only [A247920]

end A247920

/-! ## A247920.P2651986248722794826

`a(n-5)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1, a(4)=-1`
-/

namespace A247920.P2651986248722794826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, 1, -1] fun n a =>
  a (n - 5) - a (n - 1) - a (n - 2)

end

end A247920.P2651986248722794826

namespace A247920

/-- `a(n-5)-a(n-1)-a(n-2)` -/
def P2651986248722794826.Spec : Prop :=
  ∀ n, P2651986248722794826.a n = A247920 n

theorem P2651986248722794826.correct : P2651986248722794826.Spec := by
  intro n
  simp only [A247920, Nat.add_sub_cancel, A247920.P2651986248722794826.a, A247920.P10833726533720043603.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A247920

/-! ## A247920.P12898034833998208266

`Δ[A247918(n)-A247919(n)]`
-/

namespace A247920.P12898034833998208266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247918 n - A247919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247920.P12898034833998208266

namespace A247920

/-- `Δ[A247918(n)-A247919(n)]` -/
def P12898034833998208266.Spec : Prop :=
  ∀ n, P12898034833998208266.a n = A247920 n

end A247920

/-!
# A247921: Number of length n+4 0..2 arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247921, there is no canonical definition to state claims against.
-/

/-! ## A247921.P5535785296962968572

`A247927(∑[n+2])`
-/

namespace A247921.P5535785296962968572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247921.P5535785296962968572

/-! ## A247921.P7874267568070241255

`record[A247927(A000096(A137734(n)))]`
-/

namespace A247921.P7874267568070241255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (A137734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247921.P7874267568070241255

/-! ## A247921.P14673390805875967248

`record[A247927(A000096(A324347(n)))]`
-/

namespace A247921.P14673390805875967248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247921.P14673390805875967248

/-! ## A247921.P18365461949043063583

`record[A247927(A000096(A058933(n+1)))]`
-/

namespace A247921.P18365461949043063583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247921.P18365461949043063583

/-! ## A247921.P9276310620798758634

`record[A247927(A000096(A080786(n+1)))]`
-/

namespace A247921.P9276310620798758634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (A080786 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247921.P9276310620798758634

/-! ## A247921.P568424751572018725

`record[A247927(A000096(A345994(n+1)))]`
-/

namespace A247921.P568424751572018725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (A345994 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247921.P568424751572018725

/-!
# A247922: Number of length n+4 0..3 arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247922, there is no canonical definition to state claims against.
-/

/-! ## A247922.P15168246739524567813

`A247927(∑[n+3]+1)`
-/

namespace A247922.P15168246739524567813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247922.P15168246739524567813

/-! ## A247922.P1469043214397847506

`lcm(2, A247927(A034856(n+2)))`
-/

namespace A247922.P1469043214397847506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247927 (A034856 (n + 2)).toNat)

end

end A247922.P1469043214397847506

/-! ## A247922.P17689490402114229362

`char[A104895(n)]*A247927(A000096(n+2)-1)`
-/

namespace A247922.P17689490402114229362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A247927 (A000096 (n + 2) - 1).toNat

end

end A247922.P17689490402114229362

/-! ## A247922.P4243457091913928797

`A247927(A000096(n+2)-1)+A000007(n+1)`
-/

namespace A247922.P4243457091913928797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 2) - 1).toNat + A000007 (n + 1)

end

end A247922.P4243457091913928797

/-! ## A247922.P5049536213907662307

`A247927(A000096(n+2)-1)+A000038(n+1)`
-/

namespace A247922.P5049536213907662307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 2) - 1).toNat + A000038 (n + 1)

end

end A247922.P5049536213907662307

/-! ## A247922.P3316941775814065391

`A247927(A000096(n+2)-1)+A063524(n+2)`
-/

namespace A247922.P3316941775814065391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 2) - 1).toNat + A063524 (n + 2)

end

end A247922.P3316941775814065391

/-! ## A247922.P13129138421888699931

`A247927(A000096(n+2)-1)%A000108(n+8)`
-/

namespace A247922.P13129138421888699931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247927 (A000096 (n + 2) - 1).toNat) (A000108 (n + 8))

end

end A247922.P13129138421888699931

/-! ## A247922.P3864070683421588748

`A000688(A019565(n))*A247927(A000096(n+2)-1)`
-/

namespace A247922.P3864070683421588748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A019565 n).toNat * A247927 (A000096 (n + 2) - 1).toNat

end

end A247922.P3864070683421588748

/-!
# A247923: Number of length n+4 0..4 arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247923, there is no canonical definition to state claims against.
-/

/-! ## A247923.P7068199458584815700

`A247927(A027379(n+2))`
-/

namespace A247923.P7068199458584815700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A027379 (n + 2)).toNat

end

end A247923.P7068199458584815700

/-! ## A247923.P2209947165138080237

`A247927(A055998(n+2))`
-/

namespace A247923.P2209947165138080237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A055998 (n + 2)).toNat

end

end A247923.P2209947165138080237

/-! ## A247923.P1920529584469181299

`A247927(A155212(n)+5)`
-/

namespace A247923.P1920529584469181299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A155212 n + 5).toNat

end

end A247923.P1920529584469181299

/-! ## A247923.P5973235228063747219

`A247927(A056000(n)+7)`
-/

namespace A247923.P5973235228063747219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A056000 n + 7).toNat

end

end A247923.P5973235228063747219

/-! ## A247923.P6287174882547445207

`A247927(Δ[A006416(n+2)])`
-/

namespace A247923.P6287174882547445207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n).toNat

end

end A247923.P6287174882547445207

/-! ## A247923.P17453528881546836177

`A247927(A052905(n+1)+2)`
-/

namespace A247923.P17453528881546836177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A052905 (n + 1) + 2).toNat

end

end A247923.P17453528881546836177

/-! ## A247923.P17310455099778063142

`A247927(A104675(n+1)/2)`
-/

namespace A247923.P17310455099778063142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (SequenceMachineLib.roundAway ((A104675 (n + 1) : ℚ) / 2)).toNat

end

end A247923.P17310455099778063142

/-! ## A247923.P9885517265560667977

`A247927(A104675(n)-A046691(n))`
-/

namespace A247923.P9885517265560667977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A104675 n - A046691 n).toNat

end

end A247923.P9885517265560667977

/-! ## A247923.P9484278750281453695

`A247927(A167614(n+1)+A005408(n))`
-/

namespace A247923.P9484278750281453695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A167614 (n + 1) + A005408 n).toNat

end

end A247923.P9484278750281453695

/-!
# A247924: Number of length n+4 0..5 arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247924, there is no canonical definition to state claims against.
-/

/-! ## A247924.P10240012001682506531

`A247927(A046691(n+3))`
-/

namespace A247924.P10240012001682506531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A046691 (n + 3)).toNat

end

end A247924.P10240012001682506531

/-! ## A247924.P9658510561180258925

`A247927(Δ[A023545(n+1)])`
-/

namespace A247924.P9658510561180258925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n).toNat

end

end A247924.P9658510561180258925

/-! ## A247924.P4723982436146638390

`A247927(∑[A020710(n)]+6)`
-/

namespace A247924.P4723982436146638390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A247924.P4723982436146638390

/-! ## A247924.P12919875361084617014

`A247927(A052905(n+2)+1)`
-/

namespace A247924.P12919875361084617014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A052905 (n + 2) + 1).toNat

end

end A247924.P12919875361084617014

/-! ## A247924.P3187742712857567592

`A247927(A000096(n+4)-3)`
-/

namespace A247924.P3187742712857567592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 4) - 3).toNat

end

end A247924.P3187742712857567592

/-! ## A247924.P7148489351730671921

`A247927(Δ[A006416(n+3)]-1)`
-/

namespace A247924.P7148489351730671921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n - 1).toNat

end

end A247924.P7148489351730671921

/-!
# A247925: Number of length n+4 0..6 arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247925, there is no canonical definition to state claims against.
-/

/-! ## A247925.P17922126990549197107

`A247927(A052905(n+3))`
-/

namespace A247925.P17922126990549197107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A052905 (n + 3)).toNat

end

end A247925.P17922126990549197107

/-! ## A247925.P11932084470291201980

`A247927(A000124(n+6)-6)`
-/

namespace A247925.P11932084470291201980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000124 (n + 6) - 6).toNat

end

end A247925.P11932084470291201980

/-! ## A247925.P12090074597099443702

`A247927(Δ[Δ[A006504(n+1)]])`
-/

namespace A247925.P12090074597099443702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n).toNat

end

end A247925.P12090074597099443702

/-! ## A247925.P18057110341024957181

`A247927(Δ[A023545(n+2)]-1)`
-/

namespace A247925.P18057110341024957181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n - 1).toNat

end

end A247925.P18057110341024957181

/-! ## A247925.P2255341928280088199

`A247927(Δ[A026054(n+3)]+1)`
-/

namespace A247925.P2255341928280088199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n + 1).toNat

end

end A247925.P2255341928280088199

/-! ## A247925.P9639628560616160987

`A247927(A000096(n+4)+n+2)`
-/

namespace A247925.P9639628560616160987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A247925.P9639628560616160987

/-! ## A247925.P11428729313759666722

`A247927(A167499(n+3)+2*n+1)`
-/

namespace A247925.P11428729313759666722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A247925.P11428729313759666722

/-! ## A247925.P15882005497134076261

`A247927(A005408(n)+A056000(n)+15)`
-/

namespace A247925.P15882005497134076261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A005408 n + (A056000 n + 15)).toNat

end

end A247925.P15882005497134076261

/-!
# A247926: Number of length n+4 0..7 arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247926, there is no canonical definition to state claims against.
-/

/-! ## A247926.P18300866485446926126

`A247927(A055999(n+4))`
-/

namespace A247926.P18300866485446926126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A055999 (n + 4)).toNat

end

end A247926.P18300866485446926126

/-! ## A247926.P18198281270084176003

`A247927(Δ[A026054(n+4)])`
-/

namespace A247926.P18198281270084176003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n).toNat

end

end A247926.P18198281270084176003

/-! ## A247926.P60260756216170545

`A247927(A000217(n+7)-6)`
-/

namespace A247926.P60260756216170545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000217 (n + 7) - 6).toNat

end

end A247926.P60260756216170545

/-! ## A247926.P5928751355932742822

`A247927(A000124(n+7)-7)`
-/

namespace A247926.P5928751355932742822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000124 (n + 7) - 7).toNat

end

end A247926.P5928751355932742822

/-! ## A247926.P12601654853574811250

`A247927(Δ[n²]+A000217(n+5)+6)`
-/

namespace A247926.P12601654853574811250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A247926.P12601654853574811250

/-! ## A247926.P7785560978044682588

`A247927(Δ[n²]+A046691(n+3)+10)`
-/

namespace A247926.P7785560978044682588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A046691 (n + 3) + 10)).toNat

end

end A247926.P7785560978044682588

/-! ## A247926.P12964632284396691052

`A247927(A027379(n+7)-A103517(n+9))`
-/

namespace A247926.P12964632284396691052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A027379 (n + 7) - A103517 (n + 9)).toNat

end

end A247926.P12964632284396691052

/-!
# A247928: Number of length 1+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247928, there is no canonical definition to state claims against.
-/

/-! ## A247928.P1817730048769809022

`(n+2)^5-A247405(n+1)`
-/

namespace A247928.P1817730048769809022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A247405 (n + 1)

end

end A247928.P1817730048769809022

/-! ## A247928.P5059595570182201991

`A247927(∑[n]+1)`
-/

namespace A247928.P5059595570182201991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247928.P5059595570182201991

/-! ## A247928.P5236344896489368878

`record[root(A247927(n+1), A059268(n))]`
-/

namespace A247928.P5236344896489368878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247927 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247928.P5236344896489368878

/-! ## A247928.P11290254171770862015

`record[gcd(A002262(n), A247927(n+1))]`
-/

namespace A247928.P11290254171770862015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A247927 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247928.P11290254171770862015

/-! ## A247928.P7091146711959096446

`record[A247927(n+1)/A340156(n+2)]`
-/

namespace A247928.P7091146711959096446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247927 (n + 1) : ℚ) / (A340156 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247928.P7091146711959096446

/-! ## A247928.P2237089173133306009

`record[(2-A080786(n+1))*A247927(n+1)]`
-/

namespace A247928.P2237089173133306009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A080786 (n + 1)) * A247927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247928.P2237089173133306009

/-!
# A247929: Number of length 2+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247929, there is no canonical definition to state claims against.
-/

/-! ## A247929.P2028650304308748972

`A247927(∑[n+1]+2)`
-/

namespace A247929.P2028650304308748972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A247929.P2028650304308748972

/-! ## A247929.P6412031981939862642

`lcm(A033999(n), A247927(A167499(n)-3))`
-/

namespace A247929.P6412031981939862642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A247927 (A167499 n - 3).toNat)

end

end A247929.P6412031981939862642

/-! ## A247929.P10714470241109055187

`A247927(A167499(n)-3)%A062339(n+1)²`
-/

namespace A247929.P10714470241109055187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247927 (A167499 n - 3).toNat) (A062339 (n + 1) ^ 2)

end

end A247929.P10714470241109055187

/-! ## A247929.P1686700835825021561

`A015811(and(1, -n))²*A247927(A167499(n)-3)`
-/

namespace A247929.P1686700835825021561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 (Int.land 1 (-(n : ℤ))).toNat ^ 2 * A247927 (A167499 n - 3).toNat

end

end A247929.P1686700835825021561

/-! ## A247929.P9192887262656274195

`A007318(A000096(n))*A247927(A167499(n)-3)`
-/

namespace A247929.P9192887262656274195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A247927 (A167499 n - 3).toNat

end

end A247929.P9192887262656274195

/-!
# A247930: Number of length 3+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247930, there is no canonical definition to state claims against.
-/

/-! ## A247930.P12234861705293172303

`A247927(∑[n+2]+4)`
-/

namespace A247930.P12234861705293172303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A247930.P12234861705293172303

/-! ## A247930.P16885004209736050902

`abs(A247927(A167614(n+1))-1)+1`
-/

namespace A247930.P16885004209736050902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247927 (A167614 (n + 1)).toNat - 1| + 1

end

end A247930.P16885004209736050902

/-! ## A247930.P14535798787792250256

`A247927(A167614(n+1))%A017380(n)`
-/

namespace A247930.P14535798787792250256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247927 (A167614 (n + 1)).toNat) (A017380 n)

end

end A247930.P14535798787792250256

/-! ## A247930.P18325046874361206865

`or(A247927(A167614(n+1)), A318880(n+1))`
-/

namespace A247930.P18325046874361206865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A247927 (A167614 (n + 1)).toNat) (A318880 (n + 1))

end

end A247930.P18325046874361206865

/-! ## A247930.P7624320541195414937

`A007318(C(2, n))*A247927(A167614(n+1))`
-/

namespace A247930.P7624320541195414937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A247927 (A167614 (n + 1)).toNat

end

end A247930.P7624320541195414937

/-! ## A247930.P17281594819078458015

`A000010(C(2, n)!)*A247927(A167614(n+1))`
-/

namespace A247930.P17281594819078458015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A247927 (A167614 (n + 1)).toNat

end

end A247930.P17281594819078458015

/-!
# A247931: Number of length 4+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247931, there is no canonical definition to state claims against.
-/

/-! ## A247931.P13676619307368693116

`A247927(A052905(n)+9)`
-/

namespace A247931.P13676619307368693116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A052905 n + 9).toNat

end

end A247931.P13676619307368693116

/-! ## A247931.P5057357447062054982

`A247927(A055999(n)+10)`
-/

namespace A247931.P5057357447062054982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A055999 n + 10).toNat

end

end A247931.P5057357447062054982

/-! ## A247931.P17463385607970834110

`A247927(A167614(n+2)+1)`
-/

namespace A247931.P17463385607970834110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A167614 (n + 2) + 1).toNat

end

end A247931.P17463385607970834110

/-! ## A247931.P15844421737011783570

`A247927(Δ[A023545(n+1)-n²])`
-/

namespace A247931.P15844421737011783570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (f1 (n + 1) - f1 n).toNat

end

end A247931.P15844421737011783570

/-! ## A247931.P18319546046268693420

`A247927(A080036(A167614(n+1)))`
-/

namespace A247931.P18319546046268693420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A247931.P18319546046268693420

/-! ## A247931.P13689808896402742384

`A247927(A020705(A161680(n+4)))`
-/

namespace A247931.P13689808896402742384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A020705 (A161680 (n + 4)).toNat).toNat

end

end A247931.P13689808896402742384

/-!
# A247932: Number of length 5+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247932, there is no canonical definition to state claims against.
-/

/-! ## A247932.P18392259578418240901

`A247927(A167499(n+3))`
-/

namespace A247932.P18392259578418240901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A167499 (n + 3)).toNat

end

end A247932.P18392259578418240901

/-! ## A247932.P183888741103201891

`A247927(A077169(n+5))`
-/

namespace A247932.P183888741103201891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A077169 (n + 5)).toNat

end

end A247932.P183888741103201891

/-! ## A247932.P8541596047617455878

`A247927(A155212(n)+13)`
-/

namespace A247932.P8541596047617455878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A155212 n + 13).toNat

end

end A247932.P8541596047617455878

/-! ## A247932.P10282492149960930848

`A247927(A056000(n)+15)`
-/

namespace A247932.P10282492149960930848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A056000 n + 15).toNat

end

end A247932.P10282492149960930848

/-! ## A247932.P7711608607241095212

`A247927(A055998(n+2)+8)`
-/

namespace A247932.P7711608607241095212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A055998 (n + 2) + 8).toNat

end

end A247932.P7711608607241095212

/-! ## A247932.P18069543135697860720

`A247927(A000096(n+4)-(n-1))`
-/

namespace A247932.P18069543135697860720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A247932.P18069543135697860720

/-!
# A247933: Number of length 6+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247933, there is no canonical definition to state claims against.
-/

/-! ## A247933.P3172943601573835581

`A247927(A167499(n+4)+1)`
-/

namespace A247933.P3172943601573835581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A167499 (n + 4) + 1).toNat

end

end A247933.P3172943601573835581

/-! ## A247933.P8152534685285580312

`A247927(A000096(n+4)+7)`
-/

namespace A247933.P8152534685285580312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 4) + 7).toNat

end

end A247933.P8152534685285580312

/-! ## A247933.P10855529946440580447

`A247927(A000217(n+5)+6)`
-/

namespace A247933.P10855529946440580447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000217 (n + 5) + 6).toNat

end

end A247933.P10855529946440580447

/-! ## A247933.P13885736573997794429

`A247927(A161680(n+6)+6)`
-/

namespace A247933.P13885736573997794429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A161680 (n + 6) + 6).toNat

end

end A247933.P13885736573997794429

/-! ## A247933.P15249480187387632983

`A247927(A002620(n+2)+A002620(n+9))`
-/

namespace A247933.P15249480187387632983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A247933.P15249480187387632983

/-!
# A247934: Number of length 7+4 0..n arrays with some disjoint pairs in every consecutive five terms having the same sum.

The programs for A247934, there is no canonical definition to state claims against.
-/

/-! ## A247934.P9368000259056195360

`A247927(A167499(n+5)+2)`
-/

namespace A247934.P9368000259056195360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A167499 (n + 5) + 2).toNat

end

end A247934.P9368000259056195360

/-! ## A247934.P18184940140307687703

`A247927(A000124(n+6)+6)`
-/

namespace A247934.P18184940140307687703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000124 (n + 6) + 6).toNat

end

end A247934.P18184940140307687703

/-! ## A247934.P15432210769060311670

`A247927(A000217(n+6)+7)`
-/

namespace A247934.P15432210769060311670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000217 (n + 6) + 7).toNat

end

end A247934.P15432210769060311670

/-! ## A247934.P18393948458722647709

`A247927(A161680(n+7)+7)`
-/

namespace A247934.P18393948458722647709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A161680 (n + 7) + 7).toNat

end

end A247934.P18393948458722647709

/-! ## A247934.P15158753819557166615

`A247927(A133263(n+7)-(n+2))`
-/

namespace A247934.P15158753819557166615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A247934.P15158753819557166615

/-! ## A247934.P13895907232293117418

`A247927(A000096(n+7)-(2*n+7))`
-/

namespace A247934.P13895907232293117418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A000096 (n + 7) - (2 * n + 7 : ℤ)).toNat

end

end A247934.P13895907232293117418

/-! ## A247934.P15445033679343797384

`A247927(A005408(n+9)+A000096(n+3))`
-/

namespace A247934.P15445033679343797384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247927 (A005408 (n + 9) + A000096 (n + 3)).toNat

end

end A247934.P15445033679343797384

/-!
# A247936: Riordan array ((1-2x)/(1-3x), 2x).

The programs for A247936, the canonical program `A247936.P14440307049488458075` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247936 has offset 0).

The definition of A247936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247936.P7530968799257796474

`lcm(3, A175840(n))/3`
-/

namespace A247936.P7530968799257796474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A175840 n) : ℚ) / 3

end

end A247936.P7530968799257796474

namespace A247936

/-- `lcm(3, A175840(n))/3` -/
def P7530968799257796474.Spec : Prop :=
  ∀ n, P7530968799257796474.a n = (A247936 n : ℚ)

end A247936

/-! ## A247936.P5747771100292424291

`A038220(n)/A131111(n)`
-/

namespace A247936.P5747771100292424291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A131111 n : ℚ)

end

end A247936.P5747771100292424291

namespace A247936

/-- `A038220(n)/A131111(n)` -/
def P5747771100292424291.Spec : Prop :=
  ∀ n, P5747771100292424291.a n = (A247936 n : ℚ)

end A247936

/-! ## A247936.P9227419123256963328

`lcm(A059268(n), A152570(n))`
-/

namespace A247936.P9227419123256963328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A152570 n)

end

end A247936.P9227419123256963328

namespace A247936

/-- `lcm(A059268(n), A152570(n))` -/
def P9227419123256963328.Spec : Prop :=
  ∀ n, (P9227419123256963328.a n : ℤ) = A247936 n

end A247936

/-! ## A247936.P11671014438272583367

`A356036(n)/A130459(n+1)`
-/

namespace A247936.P11671014438272583367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356036 n : ℚ) / (A130459 (n + 1) : ℚ)

end

end A247936.P11671014438272583367

namespace A247936

/-- `A356036(n)/A130459(n+1)` -/
def P11671014438272583367.Spec : Prop :=
  ∀ n, P11671014438272583367.a n = (A247936 n : ℚ)

end A247936

/-! ## A247936.P14440307049488458075

`A036561(A056942(n+1)%(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A247936

/-- `A036561(A056942(n+1)%(n+1))` -/
def P14440307049488458075.Spec : Prop :=
  ∀ n, P14440307049488458075.a n = A247936 n

theorem P14440307049488458075.correct : P14440307049488458075.Spec := by
  intro n
  simp only [A247936]

end A247936

/-! ## A247936.P8905995650189922594

`A038220(n)/gcd(A038220(n), A134059(n))`
-/

namespace A247936.P8905995650189922594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (Int.gcd (A038220 n) (A134059 n) : ℚ)

end

end A247936.P8905995650189922594

namespace A247936

/-- `A038220(n)/gcd(A038220(n), A134059(n))` -/
def P8905995650189922594.Spec : Prop :=
  ∀ n, P8905995650189922594.a n = (A247936 n : ℚ)

end A247936

/-! ## A247936.P10933377105508350479

`A036561(A056943(n+1))`
-/

namespace A247936.P10933377105508350479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A056943 (n + 1)).toNat

end

end A247936.P10933377105508350479

namespace A247936

/-- `A036561(A056943(n+1))` -/
def P10933377105508350479.Spec : Prop :=
  ∀ n, P10933377105508350479.a n = A247936 n

end A247936

/-! ## A247936.P10907417185738961851

`A175840(n)%A175840(n+1)`
-/

namespace A247936.P10907417185738961851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175840 n) (A175840 (n + 1))

end

end A247936.P10907417185738961851

namespace A247936

/-- `A175840(n)%A175840(n+1)` -/
def P10907417185738961851.Spec : Prop :=
  ∀ n, P10907417185738961851.a n = A247936 n

end A247936

/-! ## A247936.P13461305424292997020

`A153279(A061579(n))`
-/

namespace A247936.P13461305424292997020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153279 (A061579 n).toNat

end

end A247936.P13461305424292997020

namespace A247936

/-- `A153279(A061579(n))` -/
def P13461305424292997020.Spec : Prop :=
  ∀ n, P13461305424292997020.a n = A247936 n

end A247936

/-! ## A247936.P11269381172595945038

`A340368(A099884(n))`
-/

namespace A247936.P11269381172595945038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340368 (A099884 n).toNat

end

end A247936.P11269381172595945038

namespace A247936

/-- `A340368(A099884(n))` -/
def P11269381172595945038.Spec : Prop :=
  ∀ n, P11269381172595945038.a n = A247936 n

end A247936

/-!
# A247938: Sum of divisors of 2^prime(n)-1.

The programs for A247938, there is no canonical definition to state claims against.
-/

/-! ## A247938.P3203307519492441429

`A075708(Δ[A007504(n)])`
-/

namespace A247938.P3203307519492441429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (f1 (n + 1) - f1 n).toNat

end

end A247938.P3203307519492441429

/-! ## A247938.P667184521469869476

`A075708(A000040(n+1))`
-/

namespace A247938.P667184521469869476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (A000040 (n + 1)).toNat

end

end A247938.P667184521469869476

/-! ## A247938.P13500973986125065219

`A075708(A008578(n+2))`
-/

namespace A247938.P13500973986125065219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (A008578 (n + 2)).toNat

end

end A247938.P13500973986125065219

/-! ## A247938.P5685383006634992792

`A075708(A015919(n+2))`
-/

namespace A247938.P5685383006634992792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (A015919 (n + 2)).toNat

end

end A247938.P5685383006634992792

/-! ## A247938.P12344832469765816962

`A075708(record[A006530(n+2)])`
-/

namespace A247938.P12344832469765816962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247938.P12344832469765816962

/-! ## A247938.P754090896027225890

`A075708(record[A014963(n+2)])`
-/

namespace A247938.P754090896027225890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247938.P754090896027225890

/-! ## A247938.P7377941934334042908

`A075708(record[A020639(n+2)])`
-/

namespace A247938.P7377941934334042908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247938.P7377941934334042908

/-! ## A247938.P5554643929356020214

`A075708(A007504(n+1)-A007504(n))`
-/

namespace A247938.P5554643929356020214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (A007504 (n + 1) - A007504 n).toNat

end

end A247938.P5554643929356020214

/-!
# A247939: Sum of divisors of 2^prime(n)+1.

The programs for A247939, there is no canonical definition to state claims against.
-/

/-! ## A247939.P5819252037421455839

`A069061(p?[comp[n²]])`
-/

namespace A247939.P5819252037421455839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A247939.P5819252037421455839

/-! ## A247939.P13188275882800189323

`A069061(A000040(n+1))`
-/

namespace A247939.P13188275882800189323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (A000040 (n + 1)).toNat

end

end A247939.P13188275882800189323

/-! ## A247939.P18083524886697551222

`A069061(A008578(n+2))`
-/

namespace A247939.P18083524886697551222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (A008578 (n + 2)).toNat

end

end A247939.P18083524886697551222

/-! ## A247939.P11495404045174784489

`A069061(A015919(n+2))`
-/

namespace A247939.P11495404045174784489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (A015919 (n + 2)).toNat

end

end A247939.P11495404045174784489

/-! ## A247939.P4665194079757451253

`A069061(eq[0, A007920(n)])`
-/

namespace A247939.P4665194079757451253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247939.P4665194079757451253

/-! ## A247939.P11055532667678288654

`A069061(eq[1, A003415(n)])`
-/

namespace A247939.P11055532667678288654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247939.P11055532667678288654

/-! ## A247939.P11799074102161790843

`A069061(record[A006530(n+2)])`
-/

namespace A247939.P11799074102161790843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247939.P11799074102161790843

/-! ## A247939.P3183350876893082310

`A069061(record[A014963(n+2)])`
-/

namespace A247939.P3183350876893082310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247939.P3183350876893082310

/-! ## A247939.P5351866009313627042

`A069061(record[A020639(n+2)])`
-/

namespace A247939.P5351866009313627042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247939.P5351866009313627042

/-!
# A247941: Primes p such that all of p - m^2, m = 2, 4, 6, 8, 10, are (positive) primes.

The programs for A247941, there is no canonical definition to state claims against.
-/

/-! ## A247941.P7446040303575923915

`∩[A165294(n+1), A246874(n+1)]`
-/

namespace A247941.P7446040303575923915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247941.P7446040303575923915

/-!
# A247944: 2-dimensional array T(n, k) listed by antidiagonals for n >= 2, k >= 1 giving the number of acyclic paths of length k in the graph G(n) whose vertices are the integer lattice points (p, q) with 0 <= p, q < n and with an edge between v and w iff the line segment [v, w] contains no other integer lattice points.

The programs for A247944, there is no canonical definition to state claims against.
-/

/-! ## A247944.P1103663472047624951

`A175181(A058696(2*(n+1))+floor(n/(xor(n, n+1)+1)))`
-/

namespace A247944.P1103663472047624951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A058696 (2 * (n + 1)) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A247944.P1103663472047624951

/-!
# A247945: Lexicographically earliest permutation of the positive integers such that a(n) contains the a(n)-th digit of the sequence, for all n.

The programs for A247945, there is no canonical definition to state claims against.
-/

/-! ## A247945.P17299113620713517021

`∑[∏{p}[A075314(n+1), A232550(#)]]`
-/

namespace A247945.P17299113620713517021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A232550 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247945.P17299113620713517021

/-! ## A247945.P15874589157449911516

`∑[A232550(A006530(A075314(n+1)))]`
-/

namespace A247945.P15874589157449911516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232550 (A006530 (A075314 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247945.P15874589157449911516

/-! ## A247945.P9213938785824654029

`A058183(n+1)-A340988(A216338(n+4))`
-/

namespace A247945.P9213938785824654029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (n + 1) - A340988 ((A216338 (n + 4)).toNat + 91)

end

end A247945.P9213938785824654029

/-! ## A247945.P14007650969911818261

`A240357(A367224(3*(n+1)))+A058183(n+1)`
-/

namespace A247945.P14007650969911818261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240357 (A367224 (3 * (n + 1))).toNat + A058183 (n + 1)

end

end A247945.P14007650969911818261

/-!
# A247946: Primes in the tetranacci sequence A000288.

The programs for A247946, there is no canonical definition to state claims against.
-/

/-! ## A247946.P14732371404853815469

`A000288(A247561(n+1))`
-/

namespace A247946.P14732371404853815469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (A247561 (n + 1)).toNat

end

end A247946.P14732371404853815469

/-! ## A247946.P4009368545933392981

`p?[2*a(n-1)-a(n-5)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A247946.P4009368545933392981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247946.P4009368545933392981

/-! ## A247946.P3096967512404893138

`p?[a(n-1)+a(n-1)-a(n-5)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4`
-/

namespace A247946.P3096967512404893138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - f1 (n - 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247946.P3096967512404893138

/-!
# A247947: Four-digit odd semiprimes with all digits distinct.

The programs for A247947, the canonical program `A247947.P7835137061017546066` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247947 has offset 1).

The definition of A247947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247947.P7835137061017546066

`filter[A031969(n+1), A353480(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A247947

/-- `filter[A031969(n+1), A353480(#)]` -/
def P7835137061017546066.Spec : Prop :=
  ∀ n, P7835137061017546066.a n = A247947 (n + 1)

theorem P7835137061017546066.correct : P7835137061017546066.Spec := by
  intro n
  simp only [A247947, Nat.add_sub_cancel]

end A247947

/-! ## A247947.P5660422531013597411

`∩[A031969(n+1), A046315(n+1)]`
-/

namespace A247947.P5660422531013597411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247947.P5660422531013597411

namespace A247947

/-- `∩[A031969(n+1), A046315(n+1)]` -/
def P5660422531013597411.Spec : Prop :=
  ∀ n, (P5660422531013597411.a n : ℤ) = A247947 (n + 1)

end A247947

/-! ## A247947.P14928353825273524316

`∩[A031969(n+1), A100484(n+1)-A131634(n+1)]`
-/

namespace A247947.P14928353825273524316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A131634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247947.P14928353825273524316

namespace A247947

/-- `∩[A031969(n+1), A100484(n+1)-A131634(n+1)]` -/
def P14928353825273524316.Spec : Prop :=
  ∀ n, (P14928353825273524316.a n : ℤ) = A247947 (n + 1)

end A247947

/-! ## A247947.P12121514329685849939

`∩[A031969(n+1), A282844(n+1)-A100484(n+1)]`
-/

namespace A247947.P12121514329685849939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247947.P12121514329685849939

namespace A247947

/-- `∩[A031969(n+1), A282844(n+1)-A100484(n+1)]` -/
def P12121514329685849939.Spec : Prop :=
  ∀ n, (P12121514329685849939.a n : ℤ) = A247947 (n + 1)

end A247947

/-! ## A247947.P16514776982094256148

`∩[A031969(n+1), A282844(n+1)-A001747(n+2)]`
-/

namespace A247947.P16514776982094256148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - A001747 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247947.P16514776982094256148

namespace A247947

/-- `∩[A031969(n+1), A282844(n+1)-A001747(n+2)]` -/
def P16514776982094256148.Spec : Prop :=
  ∀ n, (P16514776982094256148.a n : ℤ) = A247947 (n + 1)

end A247947

/-! ## A247947.P11192367199321784189

`∩[A031969(n+1), A282844(n+1)-2*A000040(n+1)]`
-/

namespace A247947.P11192367199321784189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282844 (n + 1) - 2 * A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247947.P11192367199321784189

namespace A247947

/-- `∩[A031969(n+1), A282844(n+1)-2*A000040(n+1)]` -/
def P11192367199321784189.Spec : Prop :=
  ∀ n, (P11192367199321784189.a n : ℤ) = A247947 (n + 1)

end A247947

/-!
# A247948: Five-digit odd semiprimes with all digits distinct.

The programs for A247948, there is no canonical definition to state claims against.
-/

/-! ## A247948.P7034013494881060098

`record[A000265(A235693(n+1))]`
-/

namespace A247948.P7034013494881060098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A235693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247948.P7034013494881060098

/-! ## A247948.P831304311984704420

`filter[A235693(n+1), A322980(#)]`
-/

namespace A247948.P831304311984704420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A247948.P831304311984704420

/-! ## A247948.P2871866863310883028

`filter[A235693(n+1), A356163(#)]`
-/

namespace A247948.P2871866863310883028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A247948.P2871866863310883028

/-! ## A247948.P6051943941476789237

`filter[A235693(n+1), A035263(#)]`
-/

namespace A247948.P6051943941476789237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A247948.P6051943941476789237

/-! ## A247948.P5368395753407192514

`filter[A235693(n+1), A093719(#)]`
-/

namespace A247948.P5368395753407192514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A247948.P5368395753407192514

/-! ## A247948.P6069004205142769620

`filter[A235693(n+1), A105234(#)]`
-/

namespace A247948.P6069004205142769620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A247948.P6069004205142769620

/-! ## A247948.P14138002723655150449

`filter[A235693(n+1), A152822(#)]`
-/

namespace A247948.P14138002723655150449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A247948.P14138002723655150449

/-! ## A247948.P3480038336773064424

`filter[A235693(n+1), A353374(#)]`
-/

namespace A247948.P3480038336773064424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A247948.P3480038336773064424

/-! ## A247948.P2065600421162849051

`filter[A235693(n+1), A353480(#)]`
-/

namespace A247948.P2065600421162849051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A247948.P2065600421162849051

/-! ## A247948.P2181956646443156526

`filter[A235693(n+1), A353557(#)]`
-/

namespace A247948.P2181956646443156526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A247948.P2181956646443156526

/-! ## A247948.P5462410335670389732

`record[A090395(A235693(2*n-(n-1)))]`
-/

namespace A247948.P5462410335670389732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A235693 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247948.P5462410335670389732

/-! ## A247948.P16760126179714269453

`A090395(record[A090395(A235693(n+1))])`
-/

namespace A247948.P16760126179714269453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A235693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247948.P16760126179714269453

/-! ## A247948.P656635289645880583

`filter[A031987(n+1), A353480(#)]`
-/

namespace A247948.P656635289645880583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A247948.P656635289645880583

/-!
# A247951: a(n) = Product_{i=1..n} sigma_2(i).

The programs for A247951, there is no canonical definition to state claims against.
-/

/-! ## A247951.P4997831427523441327

`∏[∑{d}[n+1, #²]]`
-/

namespace A247951.P4997831427523441327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247951.P4997831427523441327

/-! ## A247951.P6865052032759972569

`exp(∑[log(∑{d}[n+1, #²])])`
-/

namespace A247951.P6865052032759972569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247951.P6865052032759972569

/-! ## A247951.P11111227023747961047

`2^∑[log2(∑{d}[n+1, #²])]`
-/

namespace A247951.P11111227023747961047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247951.P11111227023747961047

/-! ## A247951.P6873401031274440340

`a(n-1)*∑{d}[n+1, #²]` with `a(0)=1`
-/

namespace A247951.P6873401031274440340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A247951.P6873401031274440340

/-! ## A247951.P4216226957523183338

`∏[A001157(n+1)]`
-/

namespace A247951.P4216226957523183338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247951.P4216226957523183338

/-!
# A247952: Numbers k such that 2^k + 31 is prime.

The programs for A247952, there is no canonical definition to state claims against.
-/

/-! ## A247952.P4881943534217573409

`2*A262971(n+1)`
-/

namespace A247952.P4881943534217573409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262971 (n + 1)

end

end A247952.P4881943534217573409

/-! ## A247952.P8043874277919947666

`record[2*A262971(A134478(n))]`
-/

namespace A247952.P8043874277919947666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262971 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247952.P8043874277919947666

/-! ## A247952.P1115795074244114183

`A262971(n+1)+A262971(A005496(n))`
-/

namespace A247952.P1115795074244114183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262971 (n + 1) + A262971 (A005496 n).toNat

end

end A247952.P1115795074244114183

/-! ## A247952.P14305241097873003791

`A262971(n+1)+A262971(A005555(n))`
-/

namespace A247952.P14305241097873003791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262971 (n + 1) + A262971 (A005555 n).toNat

end

end A247952.P14305241097873003791

/-! ## A247952.P3348147293572286561

`A262971(n+1)+A262971(A077168(n))`
-/

namespace A247952.P3348147293572286561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262971 (n + 1) + A262971 (A077168 n).toNat

end

end A247952.P3348147293572286561

/-!
# A247953: Numbers k such that 2^k + 33 is prime.

The programs for A247953, there is no canonical definition to state claims against.
-/

/-! ## A247953.P7197604024519201944

`val(Δ[A176926(n+1)], 2)`
-/

namespace A247953.P7197604024519201944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A247953.P7197604024519201944

/-!
# A247954: a(n) = sigma(sigma(2n-1)).

The programs for A247954, the canonical program `A247954.P11123436793123845115` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247954 has offset 1).

The definition of A247954 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247954.P3147669815751345927

`A000203(A008438(n))`
-/

namespace A247954.P3147669815751345927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008438 n).toNat

end

end A247954.P3147669815751345927

namespace A247954

/-- `A000203(A008438(n))` -/
def P3147669815751345927.Spec : Prop :=
  ∀ n, P3147669815751345927.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P11123436793123845115

`A051027(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247954

/-- `A051027(2*n+1)` -/
def P11123436793123845115.Spec : Prop :=
  ∀ n, P11123436793123845115.a n = A247954 (n + 1)

theorem P11123436793123845115.correct : P11123436793123845115.Spec := by
  intro n
  simp only [A247954, Nat.add_sub_cancel]

end A247954

/-! ## A247954.P3838834555334558409

`∑{d}[∑{d}[Δ[n²], #], #]`
-/

namespace A247954.P3838834555334558409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A247954.P3838834555334558409

namespace A247954

/-- `∑{d}[∑{d}[Δ[n²], #], #]` -/
def P3838834555334558409.Spec : Prop :=
  ∀ n, (P3838834555334558409.a n : ℤ) = A247954 (n + 1)

end A247954

/-! ## A247954.P504538997894739605

`∑{d}[(-1)^n*∑{d}[2*n+1, #], #]`
-/

namespace A247954.P504538997894739605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247954.P504538997894739605

namespace A247954

/-- `∑{d}[(-1)^n*∑{d}[2*n+1, #], #]` -/
def P504538997894739605.Spec : Prop :=
  ∀ n, (P504538997894739605.a n : ℤ) = A247954 (n + 1)

end A247954

/-! ## A247954.P663555104654974523

`∑{d}[A121613(n), #]`
-/

namespace A247954.P663555104654974523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247954.P663555104654974523

namespace A247954

/-- `∑{d}[A121613(n), #]` -/
def P663555104654974523.Spec : Prop :=
  ∀ n, (P663555104654974523.a n : ℤ) = A247954 (n + 1)

end A247954

/-! ## A247954.P1456452576844663652

`A000203(∑{d}[comp[2*n], #])`
-/

namespace A247954.P1456452576844663652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A247954.P1456452576844663652

namespace A247954

/-- `A000203(∑{d}[comp[2*n], #])` -/
def P1456452576844663652.Spec : Prop :=
  ∀ n, P1456452576844663652.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P16197326983034744658

`∑{d}[A000203(2*n+1), #]`
-/

namespace A247954.P16197326983034744658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247954.P16197326983034744658

namespace A247954

/-- `∑{d}[A000203(2*n+1), #]` -/
def P16197326983034744658.Spec : Prop :=
  ∀ n, (P16197326983034744658.a n : ℤ) = A247954 (n + 1)

end A247954

/-! ## A247954.P14824104923703699280

`∑{d}[A115607(2*n+1), #]`
-/

namespace A247954.P14824104923703699280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247954.P14824104923703699280

namespace A247954

/-- `∑{d}[A115607(2*n+1), #]` -/
def P14824104923703699280.Spec : Prop :=
  ∀ n, (P14824104923703699280.a n : ℤ) = A247954 (n + 1)

end A247954

/-! ## A247954.P3674864654021126079

`A000203(A005880(n)/2)`
-/

namespace A247954.P3674864654021126079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A005880 n : ℚ) / 2)).toNat

end

end A247954.P3674864654021126079

namespace A247954

/-- `A000203(A005880(n)/2)` -/
def P3674864654021126079.Spec : Prop :=
  ∀ n, P3674864654021126079.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P3829829968658577499

`A000203(A000203(Δ[n²]))`
-/

namespace A247954.P3829829968658577499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A247954.P3829829968658577499

namespace A247954

/-- `A000203(A000203(Δ[n²]))` -/
def P3829829968658577499.Spec : Prop :=
  ∀ n, P3829829968658577499.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P13680763322356719635

`A000203(A115607(2*n+1))`
-/

namespace A247954.P13680763322356719635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A115607 (2 * n + 1)).toNat

end

end A247954.P13680763322356719635

namespace A247954

/-- `A000203(A115607(2*n+1))` -/
def P13680763322356719635.Spec : Prop :=
  ∀ n, P13680763322356719635.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P6165266362108240264

`A000203(root(A000203(2*n+1), 2)²)`
-/

namespace A247954.P6165266362108240264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((A000203 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A247954.P6165266362108240264

namespace A247954

/-- `A000203(root(A000203(2*n+1), 2)²)` -/
def P6165266362108240264.Spec : Prop :=
  ∀ n, P6165266362108240264.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P16236581248243899695

`A000203(char[6]+A000203(2*n+1))`
-/

namespace A247954.P16236581248243899695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000203 (2 * n + 1)).toNat

end

end A247954.P16236581248243899695

namespace A247954

/-- `A000203(char[6]+A000203(2*n+1))` -/
def P16236581248243899695.Spec : Prop :=
  ∀ n, P16236581248243899695.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P2880317565584657761

`A000203(A000203(2*(2*n+1))/3)`
-/

namespace A247954.P2880317565584657761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A000203 (2 * (2 * n + 1)) : ℚ) / 3)).toNat

end

end A247954.P2880317565584657761

namespace A247954

/-- `A000203(A000203(2*(2*n+1))/3)` -/
def P2880317565584657761.Spec : Prop :=
  ∀ n, P2880317565584657761.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P2414945852446702867

`A000203(A000203(2*n+1)%(n+2)²)`
-/

namespace A247954.P2414945852446702867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A000203 (2 * n + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A247954.P2414945852446702867

namespace A247954

/-- `A000203(A000203(2*n+1)%(n+2)²)` -/
def P2414945852446702867.Spec : Prop :=
  ∀ n, P2414945852446702867.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P11525907567325364241

`A000203(A000203(2*n+1)+and(2, n²))`
-/

namespace A247954.P11525907567325364241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (2 * n + 1) + (Nat.land 2 (n ^ 2) : ℤ)).toNat

end

end A247954.P11525907567325364241

namespace A247954

/-- `A000203(A000203(2*n+1)+and(2, n²))` -/
def P11525907567325364241.Spec : Prop :=
  ∀ n, P11525907567325364241.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P2243914305301919144

`A000203((ϕ²-ϕ)*A000203(2*n+1))`
-/

namespace A247954.P2243914305301919144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((Real.goldenRatio ^ 2 - Real.goldenRatio) * (A000203 (2 * n + 1) : ℝ))).toNat

end

end A247954.P2243914305301919144

namespace A247954

/-- `A000203((ϕ²-ϕ)*A000203(2*n+1))` -/
def P2243914305301919144.Spec : Prop :=
  ∀ n, P2243914305301919144.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P10249116971060768043

`A000203(A000203(2*n+1)+(2*n)%2)`
-/

namespace A247954.P10249116971060768043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (2 * n + 1) + ((2 * n % 2 : ℕ) : ℤ)).toNat

end

end A247954.P10249116971060768043

namespace A247954

/-- `A000203(A000203(2*n+1)+(2*n)%2)` -/
def P10249116971060768043.Spec : Prop :=
  ∀ n, P10249116971060768043.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P11131694208616342959

`A000203(A000203(2*n+1)+C(2, n+3))`
-/

namespace A247954.P11131694208616342959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (2 * n + 1) + (Nat.choose 2 (n + 3) : ℤ)).toNat

end

end A247954.P11131694208616342959

namespace A247954

/-- `A000203(A000203(2*n+1)+C(2, n+3))` -/
def P11131694208616342959.Spec : Prop :=
  ∀ n, P11131694208616342959.a n = A247954 (n + 1)

end A247954

/-! ## A247954.P5092104540920780657

`A000203(and(ϕ*(1-ϕ), A000203(2*n+1)))`
-/

namespace A247954.P5092104540920780657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.land (SequenceMachineLib.roundAway (Real.goldenRatio * (1 - Real.goldenRatio))) (A000203 (2 * n + 1))).toNat

end

end A247954.P5092104540920780657

namespace A247954

/-- `A000203(and(ϕ*(1-ϕ), A000203(2*n+1)))` -/
def P5092104540920780657.Spec : Prop :=
  ∀ n, P5092104540920780657.a n = A247954 (n + 1)

end A247954

/-!
# A247955: Primes p such that there is prime q with sigma(q+2) = p.

The programs for A247955, there is no canonical definition to state claims against.
-/

/-! ## A247955.P6345249076027963818

`p?[A349162(A053704(n+1))]`
-/

namespace A247955.P6345249076027963818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 (A053704 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247955.P6345249076027963818

/-! ## A247955.P3959934800030841429

`A355934(A171130(n+1)+2)`
-/

namespace A247955.P3959934800030841429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (A171130 (n + 1) + 2).toNat

end

end A247955.P3959934800030841429

/-! ## A247955.P11310567347540040623

`p?[A349162(A028870(n+1)²)]`
-/

namespace A247955.P11310567347540040623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 (A028870 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247955.P11310567347540040623

/-! ## A247955.P7325333545166022917

`A349162(p?[A325436(n+1)-2]+2)`
-/

namespace A247955.P7325333545166022917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325436 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A247955.P7325333545166022917

/-!
# A247956: a(n) is the smallest number k such that sigma(k) = 2^n or 0 if no such k exists.

The programs for A247956, there is no canonical definition to state claims against.
-/

/-! ## A247956.P3340204264198583801

`A180162(n)%2*A180162(n)`
-/

namespace A247956.P3340204264198583801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180162 n) 2 * A180162 n

end

end A247956.P3340204264198583801

/-! ## A247956.P12991481806093601524

`char[A048947(n+1)]*A180162(n)`
-/

namespace A247956.P12991481806093601524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048947 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180162 n

end

end A247956.P12991481806093601524

/-! ## A247956.P8829868373820732333

`A051444(2^n)`
-/

namespace A247956.P8829868373820732333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (2 ^ n)

end

end A247956.P8829868373820732333

/-! ## A247956.P2055602126911672341

`A063972(2^n)`
-/

namespace A247956.P2055602126911672341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (2 ^ n)

end

end A247956.P2055602126911672341

/-! ## A247956.P9342713421896891550

`A071375(2^n)`
-/

namespace A247956.P9342713421896891550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071375 (2 ^ n)

end

end A247956.P9342713421896891550

/-!
# A247957: Numbers k such that 33^k + 2 is prime.

The programs for A247957, there is no canonical definition to state claims against.
-/

/-! ## A247957.P15912407560605325676

`A236330(∑[2^n])%((n+1)*Δ[n^3])`
-/

namespace A247957.P15912407560605325676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236330 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A247957.P15912407560605325676

/-!
# A247958: Numbers k such that 35^k + 2 is prime.

The programs for A247958, there is no canonical definition to state claims against.
-/

/-! ## A247958.P2682913973049403379

`A352483(A355779(n)+A000217(n))`
-/

namespace A247958.P2682913973049403379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352483 (A355779 n + A000217 n).toNat

end

end A247958.P2682913973049403379

/-!
# A247960: Numbers n such that 41^n + 2 is prime.

The programs for A247960, there is no canonical definition to state claims against.
-/

/-! ## A247960.P16339670169193050566

`A056561(A199400(n²))`
-/

namespace A247960.P16339670169193050566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (A199400 (n ^ 2)).toNat

end

end A247960.P16339670169193050566

/-!
# A247961: Numbers k such that 45^k + 2 is prime.

The programs for A247961, there is no canonical definition to state claims against.
-/

/-! ## A247961.P13994000096385396289

`and(A000055(n+4), A048250(A000088(n)))`
-/

namespace A247961.P13994000096385396289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000055 (n + 4)) (A048250 (A000088 n).toNat)

end

end A247961.P13994000096385396289

/-!
# A247964: Beatty sequence for e^(1/3): a(n) = floor(n*(e^(1/3))).

The programs for A247964, the canonical program `A247964.P12160566801561056533` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247964 has offset 0).

The definition of A247964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*e^(1/3))` (program `A247964.P12160566801561056533`, by `A247964.P12160566801561056533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247964.P12160566801561056533

`floor(n*e^(1/3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247964

/-- `floor(n*e^(1/3))` -/
def P12160566801561056533.Spec : Prop :=
  ∀ n, P12160566801561056533.a n = A247964 n

theorem P12160566801561056533.correct : P12160566801561056533.Spec := by
  intro n
  simp only [A247964]

end A247964

/-! ## A247964.P13342810106179501000

`comp[A248522(n+1)]`
-/

namespace A247964.P13342810106179501000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247964.P13342810106179501000

namespace A247964

/-- `comp[A248522(n+1)]` -/
def P13342810106179501000.Spec : Prop :=
  ∀ n, (P13342810106179501000.a n : ℤ) = A247964 n

end A247964

/-! ## A247964.P10528582650342656320

`comp[A335137(3*(n+1))]%A335116(n+1)`
-/

namespace A247964.P10528582650342656320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335137 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A335116 (n + 1))

end

end A247964.P10528582650342656320

namespace A247964

/-- `comp[A335137(3*(n+1))]%A335116(n+1)` -/
def P10528582650342656320.Spec : Prop :=
  ∀ n, P10528582650342656320.a n = A247964 n

end A247964

/-! ## A247964.P13946751599108223297

`A210435(2*n)-A158388(A098859(n))`
-/

namespace A247964.P13946751599108223297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (2 * n) - A158388 (A098859 n).toNat

end

end A247964.P13946751599108223297

namespace A247964

/-- `A210435(2*n)-A158388(A098859(n))` -/
def P13946751599108223297.Spec : Prop :=
  ∀ n, P13946751599108223297.a n = A247964 n

end A247964

/-! ## A247964.P18005688723153663304

`A210435(2*n)-A325975(A070182(n+4))`
-/

namespace A247964.P18005688723153663304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (2 * n) - A325975 (A070182 (n + 4)).toNat

end

end A247964.P18005688723153663304

namespace A247964

/-- `A210435(2*n)-A325975(A070182(n+4))` -/
def P18005688723153663304.Spec : Prop :=
  ∀ n, P18005688723153663304.a n = A247964 n

end A247964

/-!
# A247967: a(n) is the smallest k such that prime(k+i) (mod 6) takes successively the values 5, 5, ... for i = 0, 1, ..., n-1.

The programs for A247967, there is no canonical definition to state claims against.
-/

/-! ## A247967.P12553637113112891562

`A391796(A033621(n+1))`
-/

namespace A247967.P12553637113112891562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391796 (A033621 (n + 1)).toNat

end

end A247967.P12553637113112891562

/-! ## A247967.P14795620340436799005

`A391796(A061729(n+1))`
-/

namespace A247967.P14795620340436799005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391796 (A061729 (n + 1)).toNat

end

end A247967.P14795620340436799005

/-! ## A247967.P8886964751976243783

`A391796(A286126(n+1))`
-/

namespace A247967.P8886964751976243783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391796 (A286126 (n + 1)).toNat

end

end A247967.P8886964751976243783

/-! ## A247967.P16567969711454280767

`A391796(A249157(n+2))`
-/

namespace A247967.P16567969711454280767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391796 (A249157 (n + 2)).toNat

end

end A247967.P16567969711454280767

/-! ## A247967.P15474150563946437972

`A391796(A029970(n+1)+1)`
-/

namespace A247967.P15474150563946437972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391796 (A029970 (n + 1) + 1).toNat

end

end A247967.P15474150563946437972

/-!
# A247968: a(n) = least k such that (k!*e^k)/(sqrt(2*Pi)*k^(k+1/2)) - 1 < 1/2^n.

The programs for A247968, there is no canonical definition to state claims against.
-/

/-! ## A247968.P15588100932627011802

`ceil(2^n/6)`
-/

namespace A247968.P15588100932627011802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / 6⌉

end

end A247968.P15588100932627011802

/-! ## A247968.P10296776710450903479

`round(or(3, 2^n)/6)`
-/

namespace A247968.P10296776710450903479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 (2 ^ n) : ℚ) / 6)

end

end A247968.P10296776710450903479

/-! ## A247968.P5352740812790428777

`floor(or(6, 2^n)/6)`
-/

namespace A247968.P5352740812790428777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 6 (2 ^ n) : ℚ) / 6⌋

end

end A247968.P5352740812790428777

/-!
# A247969: a(n) is the smallest k such that prime(k+i) (mod 6) takes successively the values 1,5,1,5,... for i = 0, 1,...,n-1 ending with 1 or 5.

The programs for A247969, there is no canonical definition to state claims against.
-/

/-! ## A247969.P3823039824089997422

`A392107(A084639(n+1))`
-/

namespace A247969.P3823039824089997422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392107 (A084639 (n + 1)).toNat

end

end A247969.P3823039824089997422

/-! ## A247969.P5205631737333381982

`A220044(ceil(A362269(n+1)/9)+1)`
-/

namespace A247969.P5205631737333381982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220044 (⌈(A362269 (n + 1) : ℚ) / 9⌉ + 1).toNat

end

end A247969.P5205631737333381982

/-! ## A247969.P16634475515919485610

`A090608(A264393(n*A090618(n)))`
-/

namespace A247969.P16634475515919485610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090608 (A264393 ((n : ℤ) * A090618 n).toNat).toNat

end

end A247969.P16634475515919485610

/-! ## A247969.P15958395174213003310

`A090608(A264393(n)^A090618(n))`
-/

namespace A247969.P15958395174213003310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090608 (SequenceMachineLib.roundAway ((A264393 n : ℚ) ^ (A090618 n : ℤ))).toNat

end

end A247969.P15958395174213003310

/-! ## A247969.P11913038094959419728

`A157727(and(A134519(n+1), A230532(n+1)))`
-/

namespace A247969.P11913038094959419728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (Int.land (A134519 (n + 1)) (A230532 (n + 1))).toNat

end

end A247969.P11913038094959419728

/-!
# A247970: a(n) is the smallest k such that prime(k+i) (mod 6) takes successively the values 5,1,5,1... for i = 0, 1,...,n-1 ending with 1 or 5.

The programs for A247970, there is no canonical definition to state claims against.
-/

/-! ## A247970.P14404429274064471342

`A000720(A289119(n+1))`
-/

namespace A247970.P14404429274064471342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A289119 (n + 1)).toNat

end

end A247970.P14404429274064471342

/-! ## A247970.P4642248086733270439

`A003963(p?[A289119(n+1)])`
-/

namespace A247970.P4642248086733270439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247970.P4642248086733270439

/-! ## A247970.P17450814791639078694

`A026233(p?[A289119(n+1)])`
-/

namespace A247970.P17450814791639078694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247970.P17450814791639078694

/-! ## A247970.P7950945897089086933

`A026238(p?[A289119(n+1)])`
-/

namespace A247970.P7950945897089086933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247970.P7950945897089086933

/-! ## A247970.P4428860864006138018

`A049084(p?[A289119(n+1)])`
-/

namespace A247970.P4428860864006138018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247970.P4428860864006138018

/-!
# A247971: Least k such that 4*k/v(2*k)^2 - Pi < 1/n, where the sequence v is defined in Comments.

The programs for A247971, the canonical program `A247971.P7265328738669470030` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247971 has offset 1).

The definition of A247971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247971.P3770536970405880167

`A008621(round(π*(n+1)))`
-/

namespace A247971.P3770536970405880167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway (Real.pi * (n + 1 : ℝ))).toNat

end

end A247971.P3770536970405880167

namespace A247971

/-- `A008621(round(π*(n+1)))` -/
def P3770536970405880167.Spec : Prop :=
  ∀ n, P3770536970405880167.a n = A247971 (n + 1)

end A247971

/-! ## A247971.P7265328738669470030

`A002265(A022853(n+1))+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247971

/-- `A002265(A022853(n+1))+1` -/
def P7265328738669470030.Spec : Prop :=
  ∀ n, P7265328738669470030.a n = A247971 (n + 1)

theorem P7265328738669470030.correct : P7265328738669470030.Spec := by
  intro n
  simp only [A247971, Nat.add_sub_cancel]

end A247971

/-! ## A247971.P4480283148933723523

`A110654(A008619(round(π*(n+1))))`
-/

namespace A247971.P4480283148933723523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008619 (SequenceMachineLib.roundAway (Real.pi * (n + 1 : ℝ))).toNat).toNat

end

end A247971.P4480283148933723523

namespace A247971

/-- `A110654(A008619(round(π*(n+1))))` -/
def P4480283148933723523.Spec : Prop :=
  ∀ n, P4480283148933723523.a n = A247971 (n + 1)

end A247971

/-! ## A247971.P6463597783897091207

`ceil(∑[A004082(n+1)]/A008574(n))`
-/

namespace A247971.P6463597783897091207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008574 n : ℚ)⌉

end

end A247971.P6463597783897091207

namespace A247971

/-- `ceil(∑[A004082(n+1)]/A008574(n))` -/
def P6463597783897091207.Spec : Prop :=
  ∀ n, P6463597783897091207.a n = A247971 (n + 1)

end A247971

/-! ## A247971.P15901394907125969572

`A008619(A008619(round(π*(n+1)))-1)`
-/

namespace A247971.P15901394907125969572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (SequenceMachineLib.roundAway (Real.pi * (n + 1 : ℝ))).toNat - 1).toNat

end

end A247971.P15901394907125969572

namespace A247971

/-- `A008619(A008619(round(π*(n+1)))-1)` -/
def P15901394907125969572.Spec : Prop :=
  ∀ n, P15901394907125969572.a n = A247971 (n + 1)

end A247971

/-! ## A247971.P16042511436845388530

`A003059(∑[A005378(2*n+1)])`
-/

namespace A247971.P16042511436845388530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247971.P16042511436845388530

namespace A247971

/-- `A003059(∑[A005378(2*n+1)])` -/
def P16042511436845388530.Spec : Prop :=
  ∀ n, P16042511436845388530.a n = A247971 (n + 1)

end A247971

/-! ## A247971.P17982343098577426265

`ceil(∑[atan(ratio[tanh(n+1)])])`
-/

namespace A247971.P17982343098577426265
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (f2 (n + 1) / f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A247971.P17982343098577426265

namespace A247971

/-- `ceil(∑[atan(ratio[tanh(n+1)])])` -/
def P17982343098577426265.Spec : Prop :=
  ∀ n, P17982343098577426265.a n = A247971 (n + 1)

end A247971

/-! ## A247971.P4816916874768941284

`A008624(A376457(n+2))`
-/

namespace A247971.P4816916874768941284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A376457 (n + 2)).toNat

end

end A247971.P4816916874768941284

namespace A247971

/-- `A008624(A376457(n+2))` -/
def P4816916874768941284.Spec : Prop :=
  ∀ n, P4816916874768941284.a n = A247971 (n + 1)

end A247971

/-!
# A247972: Numbers k such that A247971(k+1) = A247971(k).

The programs for A247972, the canonical program `A247972.P1506214924061998001` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247972 has offset 1).

The definition of A247972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247972.P1506214924061998001

`A247971(a(n-1)+5)+n` with `a(0)=5`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247972

/-- `A247971(a(n-1)+5)+n` -/
def P1506214924061998001.Spec : Prop :=
  ∀ n, P1506214924061998001.a n = A247972 (n + 1)

theorem P1506214924061998001.correct : P1506214924061998001.Spec := by
  intro n
  simp only [A247972, Nat.add_sub_cancel]

end A247972

/-! ## A247972.P6748297707431021410

`∑[and(5, A257828(n+1))]`
-/

namespace A247972.P6748297707431021410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A257828 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247972.P6748297707431021410

namespace A247972

/-- `∑[and(5, A257828(n+1))]` -/
def P6748297707431021410.Spec : Prop :=
  ∀ n, P6748297707431021410.a n = A247972 (n + 1)

end A247972

/-! ## A247972.P4688410966678115303

`∑[A164360(A051870(n))]`
-/

namespace A247972.P4688410966678115303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 (A051870 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247972.P4688410966678115303

namespace A247972

/-- `∑[A164360(A051870(n))]` -/
def P4688410966678115303.Spec : Prop :=
  ∀ n, P4688410966678115303.a n = A247972 (n + 1)

end A247972

/-! ## A247972.P1360238274894114021

`∑[A161376(A080856(n))]`
-/

namespace A247972.P1360238274894114021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161376 (A080856 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247972.P1360238274894114021

namespace A247972

/-- `∑[A161376(A080856(n))]` -/
def P1360238274894114021.Spec : Prop :=
  ∀ n, P1360238274894114021.a n = A247972 (n + 1)

end A247972

/-! ## A247972.P1194663840407321830

`∑[A164360(A139277(n))]`
-/

namespace A247972.P1194663840407321830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 (A139277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247972.P1194663840407321830

namespace A247972

/-- `∑[A164360(A139277(n))]` -/
def P1194663840407321830.Spec : Prop :=
  ∀ n, P1194663840407321830.a n = A247972 (n + 1)

end A247972

/-!
# A247973: Least k such that Pi - (4*k+2)/v(2*k+2)^2 < 1/n, where the sequence v is defined in Comments.

The programs for A247973, there is no canonical definition to state claims against.
-/

/-! ## A247973.P16831629096768962198

`floor((atan(10)+n)*atan(1))`
-/

namespace A247973.P16831629096768962198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.arctan (10 : ℝ) + (n : ℝ)) * Real.arctan (1 : ℝ)⌋

end

end A247973.P16831629096768962198

/-! ## A247973.P11940704272371516947

`ceil((acot(5)+n)*acot(1))`
-/

namespace A247973.P11940704272371516947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (5 : ℝ) + (n : ℝ)) * SequenceMachineLib.acot (1 : ℝ)⌉

end

end A247973.P11940704272371516947

/-! ## A247973.P12383055894803016421

`round((atan(atan(2))+n)*atan(1))`
-/

namespace A247973.P12383055894803016421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arctan (Real.arctan (2 : ℝ)) + (n : ℝ)) * Real.arctan (1 : ℝ))

end

end A247973.P12383055894803016421

/-! ## A247973.P5853931799907716615

`floor((acot(acot(10))+n)*acot(1))`
-/

namespace A247973.P5853931799907716615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot (SequenceMachineLib.acot (10 : ℝ)) + (n : ℝ)) * SequenceMachineLib.acot (1 : ℝ)⌋

end

end A247973.P5853931799907716615

/-! ## A247973.P15878779279052624294

`ceil((n-1)/root(7, 8))+1`
-/

namespace A247973.P15878779279052624294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / (7 : ℝ) ^ (1 / (8 : ℝ))⌉ + 1

end

end A247973.P15878779279052624294

/-! ## A247973.P5357339892168856995

`round((n+1-acot(6))*acot(1))`
-/

namespace A247973.P5357339892168856995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) - SequenceMachineLib.acot (6 : ℝ)) * SequenceMachineLib.acot (1 : ℝ))

end

end A247973.P5357339892168856995

/-! ## A247973.P6470902683982194957

`∑[val(Δ[A005206(23*n)], 2)]`
-/

namespace A247973.P6470902683982194957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (23 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247973.P6470902683982194957

/-!
# A247974: Numbers k such that A247973(k+1) = A247973(k).

The programs for A247974, there is no canonical definition to state claims against.
-/

/-! ## A247974.P15398275720569778647

`floor((5*n+1)*sqrt(3))-4*n`
-/

namespace A247974.P15398275720569778647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ - (4 * n : ℤ)

end

end A247974.P15398275720569778647

/-! ## A247974.P2176240804943140353

`ceil(A003512(5*n+1)/4)`
-/

namespace A247974.P2176240804943140353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003512 (5 * n + 1) : ℚ) / 4⌉

end

end A247974.P2176240804943140353

/-! ## A247974.P7912754770703366195

`round((A180123(5*n+1)+2)/4)`
-/

namespace A247974.P7912754770703366195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A180123 (5 * n + 1) + 2 : ℚ) / 4)

end

end A247974.P7912754770703366195

/-! ## A247974.P8414538564232269607

`A276571(A069128(n+1))`
-/

namespace A247974.P8414538564232269607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A069128 (n + 1)).toNat

end

end A247974.P8414538564232269607

/-! ## A247974.P1741510803784023995

`A003059(A144312(n)+(3*n+1)²)`
-/

namespace A247974.P1741510803784023995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A144312 n + ((3 * n + 1) ^ 2 : ℤ)).toNat

end

end A247974.P1741510803784023995

/-!
# A247976: Triangle read by rows: T(n,k) generated by m-gon expansions in the case of odd m with "vertex to vertex" version or even m with "vertex to side" version. (See comment for details.)

The programs for A247976, there is no canonical definition to state claims against.
-/

/-! ## A247976.P10156985204314399953

`A334745(Δ[n²])`
-/

namespace A247976.P10156985204314399953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A247976.P10156985204314399953

/-! ## A247976.P3929082918020108248

`A334745(2*n+1)%A027602(n)`
-/

namespace A247976.P3929082918020108248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334745 (2 * n + 1)) (A027602 n)

end

end A247976.P3929082918020108248

/-! ## A247976.P17690723131324749177

`or(A000007(n), A334745(2*n+1))`
-/

namespace A247976.P17690723131324749177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A334745 (2 * n + 1))

end

end A247976.P17690723131324749177

/-! ## A247976.P4116858183977425855

`A005471(n+1)%3*A334745(2*n+1)`
-/

namespace A247976.P4116858183977425855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005471 (n + 1)) 3 * A334745 (2 * n + 1)

end

end A247976.P4116858183977425855

/-! ## A247976.P12603642483978655700

`A334745(A005408(n))%A017356(n)`
-/

namespace A247976.P12603642483978655700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334745 (A005408 n).toNat) (A017356 n)

end

end A247976.P12603642483978655700

/-! ## A247976.P3022203100502836124

`A033999(n)²*A334745(A005408(n))`
-/

namespace A247976.P3022203100502836124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A334745 (A005408 n).toNat

end

end A247976.P3022203100502836124

/-! ## A247976.P7720665705568874389

`A033999(2*n)*A334745(A005408(n))`
-/

namespace A247976.P7720665705568874389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A334745 (A005408 n).toNat

end

end A247976.P7720665705568874389

/-! ## A247976.P8358776000453752296

`A334745(A005408(n))/A033999(A133265(n))²`
-/

namespace A247976.P8358776000453752296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334745 (A005408 n).toNat : ℚ) / (A033999 (A133265 n).toNat ^ 2 : ℚ)

end

end A247976.P8358776000453752296

/-! ## A247976.P2788396007135286639

`A334752(A334751(A334745(2*n+1)))`
-/

namespace A247976.P2788396007135286639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334752 (A334751 (A334745 (2 * n + 1)).toNat).toNat

end

end A247976.P2788396007135286639

/-! ## A247976.P13066861580339110814

`filter[A334745(2*n+1), A102609(#)]`
-/

namespace A247976.P13066861580339110814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334745 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A247976.P13066861580339110814

/-! ## A247976.P8681468259170129654

`A334745(A005408(n))/A334745(A133265(n)²)`
-/

namespace A247976.P8681468259170129654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334745 (A005408 n).toNat : ℚ) / (A334745 (A133265 n ^ 2).toNat : ℚ)

end

end A247976.P8681468259170129654

/-!
# A247977: If n = 1 or prime, then a(n) = 0; otherwise, if n is a preprime of k-th kind, then a(n) = k.

The programs for A247977, there is no canonical definition to state claims against.
-/

/-! ## A247977.P7337966218306527035

`A255326(A053470(n+1))%A224123(2*n+1)`
-/

namespace A247977.P7337966218306527035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255326 (A053470 (n + 1)).toNat) (A224123 (2 * n + 1))

end

end A247977.P7337966218306527035

/-! ## A247977.P2356401357510595746

`A002635(A332294(3*n+5))%A332294(n+1)`
-/

namespace A247977.P2356401357510595746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002635 (A332294 (3 * n + 5)).toNat) (A332294 (n + 1))

end

end A247977.P2356401357510595746

/-! ## A247977.P2438825937304429510

`A355150(((n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1))²²)`
-/

namespace A247977.P2438825937304429510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 ((Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (n + 1 : ℤ) ^ 2) ^ 2).toNat

end

end A247977.P2438825937304429510

/-! ## A247977.P5138323655400227517

`A352513(A353645(n+1)²)`
-/

namespace A247977.P5138323655400227517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A353645 (n + 1) ^ 2).toNat

end

end A247977.P5138323655400227517

/-!
# A247978: Number of permutations of [n] that have no prime fixed points.

The programs for A247978, there is no canonical definition to state claims against.
-/

/-! ## A247978.P6900343401842236027

`A068106(A055998(n)-A095117(n))`
-/

namespace A247978.P6900343401842236027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A055998 n - A095117 n).toNat

end

end A247978.P6900343401842236027

/-! ## A247978.P4098934739637113978

`A068106(A000096(n)-A230980(n))`
-/

namespace A247978.P4098934739637113978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n - A230980 n).toNat

end

end A247978.P4098934739637113978

/-! ## A247978.P10483249559353946716

`A047920(A230980(n)+∑[n])`
-/

namespace A247978.P10483249559353946716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A230980 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A247978.P10483249559353946716

/-! ## A247978.P8227571173800001855

`A116854(C(n+2, 2)-A230980(n))`
-/

namespace A247978.P8227571173800001855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 ((Nat.choose (n + 2) 2 : ℤ) - A230980 n).toNat

end

end A247978.P8227571173800001855

/-! ## A247978.P7007703527785099948

`A047920(∑[A005843(n)-A113638(n)])`
-/

namespace A247978.P7007703527785099948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A113638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247978.P7007703527785099948

/-!
# A247979: Numbers of the form x^2 + 7y^2 with x, y integers, or x^2/4 + 7y^2/4 with x, y odd integers.

The programs for A247979, there is no canonical definition to state claims against.
-/

/-! ## A247979.P713427368151793968

`∪[A035248(n+1), A059721(n)]`
-/

namespace A247979.P713427368151793968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P713427368151793968

/-! ## A247979.P8845928803681756589

`∪[A035248(n+1), A064322(n)]`
-/

namespace A247979.P8845928803681756589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P8845928803681756589

/-! ## A247979.P12049788383341613519

`∪[A035248(n+1), A068325(n)]`
-/

namespace A247979.P12049788383341613519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P12049788383341613519

/-! ## A247979.P1189191168801750273

`∪[A035248(n+1), A179097(n)]`
-/

namespace A247979.P1189191168801750273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179097 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P1189191168801750273

/-! ## A247979.P18154324705043130942

`∪[A035248(n+1), A275916(n)]`
-/

namespace A247979.P18154324705043130942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275916 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P18154324705043130942

/-! ## A247979.P15323557631827000963

`∪[A035248(n+1), A377166(n)]`
-/

namespace A247979.P15323557631827000963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377166 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P15323557631827000963

/-! ## A247979.P10006580849987447231

`∪[A035248(n+1), A129993(n+1)]`
-/

namespace A247979.P10006580849987447231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P10006580849987447231

/-! ## A247979.P13609369005649161865

`∪[A035248(n+1), A165095(n+1)]`
-/

namespace A247979.P13609369005649161865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P13609369005649161865

/-! ## A247979.P16968912240465270376

`∪[A035248(n+1), A165099(n+1)]`
-/

namespace A247979.P16968912240465270376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P16968912240465270376

/-! ## A247979.P4124038806716691847

`∪[A035248(n+1), A344603(n+1)]`
-/

namespace A247979.P4124038806716691847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247979.P4124038806716691847

/-!
# A247980: Least prime whose square contributes to A234429.

The programs for A247980, there is no canonical definition to state claims against.
-/

/-! ## A247980.P6079741063094662454

`p?[∑[A048766(A121875(n+1))]]`
-/

namespace A247980.P6079741063094662454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A121875 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247980.P6079741063094662454

/-! ## A247980.P9986622176690043078

`p?[∑[A103631(A304065(n+1))]]`
-/

namespace A247980.P9986622176690043078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A304065 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247980.P9986622176690043078

/-! ## A247980.P8303630715893423889

`record[p?[A193738(A035447(n+1))]]`
-/

namespace A247980.P8303630715893423889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (A035447 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247980.P8303630715893423889

/-! ## A247980.P10449007145558426610

`p?[A184486(n+1)*A242784(n)]`
-/

namespace A247980.P10449007145558426610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184486 (n + 1) * A242784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247980.P10449007145558426610

/-! ## A247980.P7213076385262089924

`A382151(∑[A272620(n+1)])`
-/

namespace A247980.P7213076385262089924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382151 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247980.P7213076385262089924

/-!
# A247981: Primes dividing nonzero terms in A003095: the iterates of x^2 + 1 starting at 0.

The programs for A247981, there is no canonical definition to state claims against.
-/

/-! ## A247981.P401483985869563786

`p?[A328700(n+1)]`
-/

namespace A247981.P401483985869563786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247981.P401483985869563786

/-! ## A247981.P18126046146486274823

`p?[record[A328700(A263131(n))]]`
-/

namespace A247981.P18126046146486274823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247981.P18126046146486274823

/-! ## A247981.P13675687473316052709

`record[A006530(A328700(n+2))]`
-/

namespace A247981.P13675687473316052709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A328700 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247981.P13675687473316052709

/-! ## A247981.P12407475271488211423

`filter[A328700(n+1), A010051(#)]`
-/

namespace A247981.P12407475271488211423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A247981.P12407475271488211423

/-! ## A247981.P7098689394748052991

`filter[A328700(n+1), A069513(#)]`
-/

namespace A247981.P7098689394748052991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A247981.P7098689394748052991

/-! ## A247981.P11345453364925627192

`filter[A328700(n+1), A358751(#)]`
-/

namespace A247981.P11345453364925627192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A247981.P11345453364925627192

/-! ## A247981.P14219944459295230754

`filter[A328700(n+1), A358769(#)]`
-/

namespace A247981.P14219944459295230754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A247981.P14219944459295230754

/-! ## A247981.P3375003110122363468

`filter[A328700(n+1), A302777(#)]`
-/

namespace A247981.P3375003110122363468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A247981.P3375003110122363468

/-! ## A247981.P17368786446427559691

`filter[A328700(n+1), A323153(#)]`
-/

namespace A247981.P17368786446427559691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A247981.P17368786446427559691

/-! ## A247981.P14944048789937937582

`filter[A328700(n+1), A327861(#)]`
-/

namespace A247981.P14944048789937937582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A247981.P14944048789937937582

/-!
# A247982: Number of inequivalent expressions involving n operands, ignoring sign.

The programs for A247982, there is no canonical definition to state claims against.
-/

/-! ## A247982.P4734567011793494683

`A182173(n+1)/2`
-/

namespace A247982.P4734567011793494683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182173 (n + 1) : ℚ) / 2

end

end A247982.P4734567011793494683

/-! ## A247982.P14842078346611487207

`record[ratio[A182173(A193592(n))]]`
-/

namespace A247982.P14842078346611487207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182173 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247982.P14842078346611487207

/-!
# A247983: Least number k such that log(2) - sum{1/(h*2^h), h=1..k} < 1/2^n.

The programs for A247983, the canonical program `A247983.P11606289969283021175` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247983 has offset 1).

The definition of A247983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247983.P2854392119713821945

`∑[char[floor(log2(n+1))+n]]`
-/

namespace A247983.P2854392119713821945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247983.P2854392119713821945

namespace A247983

/-- `∑[char[floor(log2(n+1))+n]]` -/
def P2854392119713821945.Spec : Prop :=
  ∀ n, (P2854392119713821945.a n : ℤ) = A247983 (n + 1)

end A247983

/-! ## A247983.P11606289969283021175

`n+1-floor(log2(a(n-1)+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A247983

/-- `n+1-floor(log2(a(n-1)+1))` -/
def P11606289969283021175.Spec : Prop :=
  ∀ n, P11606289969283021175.a n = A247983 (n + 1)

theorem P11606289969283021175.correct : P11606289969283021175.Spec := by
  intro n
  simp only [A247983, Nat.add_sub_cancel]

end A247983

/-! ## A247983.P12951853457448960866

`A103354(n+3)-1`
-/

namespace A247983.P12951853457448960866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 3) - 1

end

end A247983.P12951853457448960866

namespace A247983

/-- `A103354(n+3)-1` -/
def P12951853457448960866.Spec : Prop :=
  ∀ n, P12951853457448960866.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P12698347513860220811

`Δ[A006697(n+1)]-1`
-/

namespace A247983.P12698347513860220811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A247983.P12698347513860220811

namespace A247983

/-- `Δ[A006697(n+1)]-1` -/
def P12698347513860220811.Spec : Prop :=
  ∀ n, P12698347513860220811.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P12177475556561383700

`n-A059939(a(n-1))` with `a(0)=1`
-/

namespace A247983.P12177475556561383700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A059939 (a (n - 1)).toNat

end

end A247983.P12177475556561383700

namespace A247983

/-- `n-A059939(a(n-1))` -/
def P12177475556561383700.Spec : Prop :=
  ∀ n, P12177475556561383700.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P3930468611927001905

`n+1-∑[char[∑[A155559(n)+1]]]`
-/

namespace A247983.P3930468611927001905
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247983.P3930468611927001905

namespace A247983

/-- `n+1-∑[char[∑[A155559(n)+1]]]` -/
def P3930468611927001905.Spec : Prop :=
  ∀ n, P3930468611927001905.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P6841897711434169626

`A043529(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A247983.P6841897711434169626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A043529 (a (n - 1)).toNat + a (n - 2)

end

end A247983.P6841897711434169626

namespace A247983

/-- `A043529(a(n-1))+a(n-2)` -/
def P6841897711434169626.Spec : Prop :=
  ∀ n, P6841897711434169626.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P13616024237258488320

`∑[char[∑[A014963(2*(n+1)+2)]]]+1`
-/

namespace A247983.P13616024237258488320
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1) + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247983.P13616024237258488320

namespace A247983

/-- `∑[char[∑[A014963(2*(n+1)+2)]]]+1` -/
def P13616024237258488320.Spec : Prop :=
  ∀ n, (P13616024237258488320.a n : ℤ) = A247983 (n + 1)

end A247983

/-! ## A247983.P15758784702378902059

`abs(∑[char[A000225(n+1)+n]]-1-n)`
-/

namespace A247983.P15758784702378902059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)|

end

end A247983.P15758784702378902059

namespace A247983

/-- `abs(∑[char[A000225(n+1)+n]]-1-n)` -/
def P15758784702378902059.Spec : Prop :=
  ∀ n, P15758784702378902059.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P1667115647985311909

`A116921(A088948(n+2))`
-/

namespace A247983.P1667115647985311909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A088948 (n + 2)).toNat

end

end A247983.P1667115647985311909

namespace A247983

/-- `A116921(A088948(n+2))` -/
def P1667115647985311909.Spec : Prop :=
  ∀ n, P1667115647985311909.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P16335004034045682267

`A004526(record[A080541(n+2)])`
-/

namespace A247983.P16335004034045682267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247983.P16335004034045682267

namespace A247983

/-- `A004526(record[A080541(n+2)])` -/
def P16335004034045682267.Spec : Prop :=
  ∀ n, P16335004034045682267.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P8194611721182351528

`A004526(A088948(n+2)-1)`
-/

namespace A247983.P8194611721182351528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088948 (n + 2) - 1).toNat

end

end A247983.P8194611721182351528

namespace A247983

/-- `A004526(A088948(n+2)-1)` -/
def P8194611721182351528.Spec : Prop :=
  ∀ n, P8194611721182351528.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P3687136072710029890

`∑[A267442(∑[A267442(n)])]+1`
-/

namespace A247983.P3687136072710029890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247983.P3687136072710029890

namespace A247983

/-- `∑[A267442(∑[A267442(n)])]+1` -/
def P3687136072710029890.Spec : Prop :=
  ∀ n, P3687136072710029890.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P18244640186370731896

`n+1-A029837(A006949(n+2))`
-/

namespace A247983.P18244640186370731896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A029837 (A006949 (n + 2)).toNat

end

end A247983.P18244640186370731896

namespace A247983

/-- `n+1-A029837(A006949(n+2))` -/
def P18244640186370731896.Spec : Prop :=
  ∀ n, P18244640186370731896.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P2113707955205805790

`A103354(n+1+Δ[A103354(n+2)])`
-/

namespace A247983.P2113707955205805790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 ((n + 1 : ℤ) + (f1 (n + 1) - f1 n)).toNat

end

end A247983.P2113707955205805790

namespace A247983

/-- `A103354(n+1+Δ[A103354(n+2)])` -/
def P2113707955205805790.Spec : Prop :=
  ∀ n, P2113707955205805790.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P5325321715940217571

`∑[A288132(n+3)]%A288374(n+1)`
-/

namespace A247983.P5325321715940217571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A288374 (n + 1))

end

end A247983.P5325321715940217571

namespace A247983

/-- `∑[A288132(n+3)]%A288374(n+1)` -/
def P5325321715940217571.Spec : Prop :=
  ∀ n, P5325321715940217571.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P8629721598576491204

`n+1-A000523(A083058(n+2)+1)`
-/

namespace A247983.P8629721598576491204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000523 (A083058 (n + 2) + 1).toNat

end

end A247983.P8629721598576491204

namespace A247983

/-- `n+1-A000523(A083058(n+2)+1)` -/
def P8629721598576491204.Spec : Prop :=
  ∀ n, P8629721598576491204.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P3320261116774451362

`A083058(A083058(n+1)+2)+A000523(n+1)`
-/

namespace A247983.P3320261116774451362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A083058 (n + 1) + 2).toNat + A000523 (n + 1)

end

end A247983.P3320261116774451362

namespace A247983

/-- `A083058(A083058(n+1)+2)+A000523(n+1)` -/
def P3320261116774451362.Spec : Prop :=
  ∀ n, P3320261116774451362.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P8175111416815906604

`A293137(A002984(n))`
-/

namespace A247983.P8175111416815906604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A002984 n).toNat

end

end A247983.P8175111416815906604

namespace A247983

/-- `A293137(A002984(n))` -/
def P8175111416815906604.Spec : Prop :=
  ∀ n, P8175111416815906604.a n = A247983 (n + 1)

end A247983

/-! ## A247983.P5619630912669646101

`A293137(A109965(n+1))`
-/

namespace A247983.P5619630912669646101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A109965 (n + 1)).toNat

end

end A247983.P5619630912669646101

namespace A247983

/-- `A293137(A109965(n+1))` -/
def P5619630912669646101.Spec : Prop :=
  ∀ n, P5619630912669646101.a n = A247983 (n + 1)

end A247983

/-!
# A247984: Constant terms of congruences derived from a permutation polynomial motivated by generalized quadrangles.

The programs for A247984, the canonical program `A247984.P15958932547498070819` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247984 has offset 1).

The definition of A247984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247984.P3440743294514063321

`∪[A246800(n+1), A004171(n)]`
-/

namespace A247984.P3440743294514063321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247984.P3440743294514063321

namespace A247984

/-- `∪[A246800(n+1), A004171(n)]` -/
def P3440743294514063321.Spec : Prop :=
  ∀ n, (P3440743294514063321.a n : ℤ) = A247984 (n + 1)

end A247984

/-! ## A247984.P683090108469111521

`2*(A000079(n)+n*A090192(n))`
-/

namespace A247984.P683090108469111521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n + (n : ℤ) * A090192 n)

end

end A247984.P683090108469111521

namespace A247984

/-- `2*(A000079(n)+n*A090192(n))` -/
def P683090108469111521.Spec : Prop :=
  ∀ n, P683090108469111521.a n = A247984 (n + 1)

end A247984

/-! ## A247984.P4079722119077113760

`A000079(n+1)+n*A104624(n+1)`
-/

namespace A247984.P4079722119077113760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (n : ℤ) * A104624 (n + 1)

end

end A247984.P4079722119077113760

namespace A247984

/-- `A000079(n+1)+n*A104624(n+1)` -/
def P4079722119077113760.Spec : Prop :=
  ∀ n, P4079722119077113760.a n = A247984 (n + 1)

end A247984

/-! ## A247984.P9528556030198281562

`A000079(n+1)+n*A182122(n+1)`
-/

namespace A247984.P9528556030198281562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (n : ℤ) * A182122 (n + 1)

end

end A247984.P9528556030198281562

namespace A247984

/-- `A000079(n+1)+n*A182122(n+1)` -/
def P9528556030198281562.Spec : Prop :=
  ∀ n, P9528556030198281562.a n = A247984 (n + 1)

end A247984

/-! ## A247984.P62541306377479690

`2*n*A182492(2*n+1)+A000079(n+1)`
-/

namespace A247984.P62541306377479690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A182492 (2 * n + 1) + A000079 (n + 1)

end

end A247984.P62541306377479690

namespace A247984

/-- `2*n*A182492(2*n+1)+A000079(n+1)` -/
def P62541306377479690.Spec : Prop :=
  ∀ n, P62541306377479690.a n = A247984 (n + 1)

end A247984

/-! ## A247984.P15958932547498070819

`A307768(n+1)+A007877(n+1)*A063886(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247984

/-- `A307768(n+1)+A007877(n+1)*A063886(n+1)` -/
def P15958932547498070819.Spec : Prop :=
  ∀ n, P15958932547498070819.a n = A247984 (n + 1)

theorem P15958932547498070819.correct : P15958932547498070819.Spec := by
  intro n
  simp only [A247984, Nat.add_sub_cancel]

end A247984

/-!
# A247985: Least number k such that product{(k^2 + h)/(k^2 - h), h = 1..k} - e < 1/n.

The programs for A247985, the canonical program `A247985.P168603640335283338` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247985 has offset 1).

The definition of A247985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247985.P168603640335283338

`A002264(A121384(3*(n+1))+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247985

/-- `A002264(A121384(3*(n+1))+4)` -/
def P168603640335283338.Spec : Prop :=
  ∀ n, P168603640335283338.a n = A247985 (n + 1)

theorem P168603640335283338.correct : P168603640335283338.Spec := by
  intro n
  simp only [A247985, Nat.add_sub_cancel]

end A247985

/-! ## A247985.P4468253688515403564

`A002264(A022843(3*(n+1))+5)`
-/

namespace A247985.P4468253688515403564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022843 (3 * (n + 1)) + 5).toNat

end

end A247985.P4468253688515403564

namespace A247985

/-- `A002264(A022843(3*(n+1))+5)` -/
def P4468253688515403564.Spec : Prop :=
  ∀ n, P4468253688515403564.a n = A247985 (n + 1)

end A247985

/-! ## A247985.P653217852241094503

`A004526(A022843(3*(n+1))-A022843(n))`
-/

namespace A247985.P653217852241094503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022843 (3 * (n + 1)) - A022843 n).toNat

end

end A247985.P653217852241094503

namespace A247985

/-- `A004526(A022843(3*(n+1))-A022843(n))` -/
def P653217852241094503.Spec : Prop :=
  ∀ n, P653217852241094503.a n = A247985 (n + 1)

end A247985

/-! ## A247985.P863915867075089111

`A123108(A022843(3*(n+1))-A022843(n))`
-/

namespace A247985.P863915867075089111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022843 (3 * (n + 1)) - A022843 n).toNat

end

end A247985.P863915867075089111

namespace A247985

/-- `A123108(A022843(3*(n+1))-A022843(n))` -/
def P863915867075089111.Spec : Prop :=
  ∀ n, P863915867075089111.a n = A247985 (n + 1)

end A247985

/-! ## A247985.P8661219085062926558

`A004526(A121384(3*(n+1))-A121384(n))`
-/

namespace A247985.P8661219085062926558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A121384 (3 * (n + 1)) - A121384 n).toNat

end

end A247985.P8661219085062926558

namespace A247985

/-- `A004526(A121384(3*(n+1))-A121384(n))` -/
def P8661219085062926558.Spec : Prop :=
  ∀ n, P8661219085062926558.a n = A247985 (n + 1)

end A247985

/-!
# A247986: Numbers k such that A247985(k+1) - A247985(k) = 2.

The programs for A247986, the canonical program `A247986.P10895639339843770612` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247986 has offset 1).

The definition of A247986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247986.P5095053186238481202

`floor(sqrt(7/5)*A016789(n))`
-/

namespace A247986.P5095053186238481202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((7 : ℚ) / 5 : ℝ) * (A016789 n : ℝ)⌋

end

end A247986.P5095053186238481202

namespace A247986

/-- `floor(sqrt(7/5)*A016789(n))` -/
def P5095053186238481202.Spec : Prop :=
  ∀ n, P5095053186238481202.a n = A247986 (n + 1)

end A247986

/-! ## A247986.P10895639339843770612

`floor(A098005(3*n+2)/3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247986

/-- `floor(A098005(3*n+2)/3)` -/
def P10895639339843770612.Spec : Prop :=
  ∀ n, P10895639339843770612.a n = A247986 (n + 1)

theorem P10895639339843770612.correct : P10895639339843770612.Spec := by
  intro n
  simp only [A247986, Nat.add_sub_cancel]

end A247986

/-! ## A247986.P3300036704664509666

`∩[A191103(n+1)-1, A191104(n+1)]`
-/

namespace A247986.P3300036704664509666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191103 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247986.P3300036704664509666

namespace A247986

/-- `∩[A191103(n+1)-1, A191104(n+1)]` -/
def P3300036704664509666.Spec : Prop :=
  ∀ n, (P3300036704664509666.a n : ℤ) = A247986 (n + 1)

end A247986

/-! ## A247986.P7276274312909541611

`A191104(lt[n+1, Δ[A191104(n+1)]+n]+1)`
-/

namespace A247986.P7276274312909541611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A247986.P7276274312909541611

namespace A247986

/-- `A191104(lt[n+1, Δ[A191104(n+1)]+n]+1)` -/
def P7276274312909541611.Spec : Prop :=
  ∀ n, P7276274312909541611.a n = A247986 (n + 1)

end A247986

/-! ## A247986.P3310724576135992401

`eq[1, A190893(n+1)+A190893(A028310(n))]`
-/

namespace A247986.P3310724576135992401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1) + A190893 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247986.P3310724576135992401

namespace A247986

/-- `eq[1, A190893(n+1)+A190893(A028310(n))]` -/
def P3310724576135992401.Spec : Prop :=
  ∀ n, (P3310724576135992401.a n : ℤ) = A247986 (n + 1)

end A247986

/-! ## A247986.P7188045807792192743

`lt[A190893(n+1), A190893(A190893(n+1)+n)]`
-/

namespace A247986.P7188045807792192743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (A190893 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247986.P7188045807792192743

namespace A247986

/-- `lt[A190893(n+1), A190893(A190893(n+1)+n)]` -/
def P7188045807792192743.Spec : Prop :=
  ∀ n, (P7188045807792192743.a n : ℤ) = A247986 (n + 1)

end A247986

/-! ## A247986.P10115221379265425657

`record[(A247987(n+1)+1)%A247987(n+2)]`
-/

namespace A247986.P10115221379265425657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247987 (n + 1) + 1) (A247987 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247986.P10115221379265425657

namespace A247986

/-- `record[(A247987(n+1)+1)%A247987(n+2)]` -/
def P10115221379265425657.Spec : Prop :=
  ∀ n, P10115221379265425657.a n = A247986 (n + 1)

end A247986

/-! ## A247986.P15839318792646218676

`eq[1, A190893(n+1)+A190893(A233583(n+1))]`
-/

namespace A247986.P15839318792646218676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190893 (n + 1) + A190893 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247986.P15839318792646218676

namespace A247986

/-- `eq[1, A190893(n+1)+A190893(A233583(n+1))]` -/
def P15839318792646218676.Spec : Prop :=
  ∀ n, (P15839318792646218676.a n : ℤ) = A247986 (n + 1)

end A247986

/-!
# A247987: Numbers k such that A247985(k+1) - A247985(k) = 3.

The programs for A247987, the canonical program `A247987.P17329123447741709562` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247987 has offset 1).

The definition of A247987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247987.P17329123447741709562

`comp[A247986(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247987

/-- `comp[A247986(n+1)-1]+1` -/
def P17329123447741709562.Spec : Prop :=
  ∀ n, (P17329123447741709562.a n : ℤ) = A247987 (n + 1)

theorem P17329123447741709562.correct : P17329123447741709562.Spec := by
  intro n
  simp only [A247987, Nat.add_sub_cancel]

end A247987

/-! ## A247987.P9921986797918824434

`A070939(A003520(n+4))+n`
-/

namespace A247987.P9921986797918824434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003520 (n + 4)).toNat + (n : ℤ)

end

end A247987.P9921986797918824434

namespace A247987

/-- `A070939(A003520(n+4))+n` -/
def P9921986797918824434.Spec : Prop :=
  ∀ n, P9921986797918824434.a n = A247987 (n + 1)

end A247987

/-! ## A247987.P11438195335329558571

`floor((A088513(2*n+1)/A111710(2*(n+2))+n)*sqrt(2))+1`
-/

namespace A247987.P11438195335329558571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A088513 (2 * n + 1) : ℚ) / (A111710 (2 * (n + 2)) : ℚ) + (n : ℚ) : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1

end

end A247987.P11438195335329558571

namespace A247987

/-- `floor((A088513(2*n+1)/A111710(2*(n+2))+n)*sqrt(2))+1` -/
def P11438195335329558571.Spec : Prop :=
  ∀ n, P11438195335329558571.a n = A247987 (n + 1)

end A247987

/-! ## A247987.P8852439449933828844

`A071625(A001605(n+1))*A248227(2*n+2)`
-/

namespace A247987.P8852439449933828844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A001605 (n + 1)).toNat * A248227 (2 * n + 2)

end

end A247987.P8852439449933828844

namespace A247987

/-- `A071625(A001605(n+1))*A248227(2*n+2)` -/
def P8852439449933828844.Spec : Prop :=
  ∀ n, P8852439449933828844.a n = A247987 (n + 1)

end A247987

/-! ## A247987.P5623909351721925578

`A248227(2*(n+1))+A063524(A373402(2*(n+1)))`
-/

namespace A247987.P5623909351721925578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (2 * (n + 1)) + A063524 (A373402 (2 * (n + 1))).toNat

end

end A247987.P5623909351721925578

namespace A247987

/-- `A248227(2*(n+1))+A063524(A373402(2*(n+1)))` -/
def P5623909351721925578.Spec : Prop :=
  ∀ n, P5623909351721925578.a n = A247987 (n + 1)

end A247987

/-!
# A247988: Least number k such that e - k/(k!)^(1/k) < 1/n.

The programs for A247988, there is no canonical definition to state claims against.
-/

/-! ## A247988.P18186667751108274106

`∑[A029837(A065199(3*n+4))+2]`
-/

namespace A247988.P18186667751108274106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A065199 (3 * n + 4)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247988.P18186667751108274106

/-! ## A247988.P9148628789910366462

`∑[floor(log2(A214790(3*n+4)))]`
-/

namespace A247988.P9148628789910366462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A214790 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247988.P9148628789910366462

/-! ## A247988.P8659738142078138673

`∑[∑[A192977(A048488(n))]]`
-/

namespace A247988.P8659738142078138673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A048488 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247988.P8659738142078138673

/-! ## A247988.P8822594299236319680

`∑[A081288(∑[A121032(n+1)])]`
-/

namespace A247988.P8822594299236319680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121032 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081288 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247988.P8822594299236319680

/-! ## A247988.P13434232674417530935

`∑[∑[A266147(A034729(n+1))]]`
-/

namespace A247988.P13434232674417530935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266147 (A034729 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247988.P13434232674417530935

/-!
# A247989: Number of length n+5 0..2 arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247989, there is no canonical definition to state claims against.
-/

/-! ## A247989.P15394854743919078970

`A247995(∑[n+2])`
-/

namespace A247989.P15394854743919078970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247989.P15394854743919078970

/-! ## A247989.P3518762388691821198

`record[A247995(A000096(A002260(n+1)))]`
-/

namespace A247989.P3518762388691821198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247989.P3518762388691821198

/-! ## A247989.P6391963393142585092

`record[A247995(A000096(A003602(n+1)))]`
-/

namespace A247989.P6391963393142585092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247989.P6391963393142585092

/-! ## A247989.P4393369934162654179

`record[A247995(A000096(A071974(n+1)))]`
-/

namespace A247989.P4393369934162654179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000096 (A071974 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247989.P4393369934162654179

/-! ## A247989.P11576795994532153742

`A247995(A000096(n+1))%A247993(n+1)`
-/

namespace A247989.P11576795994532153742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247995 (A000096 (n + 1)).toNat) (A247993 (n + 1))

end

end A247989.P11576795994532153742

/-!
# A247990: Number of length n+5 0..3 arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247990, there is no canonical definition to state claims against.
-/

/-! ## A247990.P10980379592558505673

`A247995(∑[n+3]+1)`
-/

namespace A247990.P10980379592558505673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247990.P10980379592558505673

/-!
# A247991: Number of length n+5 0..4 arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247991, there is no canonical definition to state claims against.
-/

/-! ## A247991.P12425099971575054516

`A247995(∑[n+4]+3)`
-/

namespace A247991.P12425099971575054516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A247991.P12425099971575054516

/-! ## A247991.P12830343370011800400

`lcm(2, A247995(A027379(n+2)))`
-/

namespace A247991.P12830343370011800400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247995 (A027379 (n + 2)).toNat)

end

end A247991.P12830343370011800400

/-! ## A247991.P7666729786179747906

`A247995(A027379(n+2))+A000007(n+1)`
-/

namespace A247991.P7666729786179747906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A027379 (n + 2)).toNat + A000007 (n + 1)

end

end A247991.P7666729786179747906

/-! ## A247991.P7658120460657619891

`A247995(A027379(n+2))+A000035(2*n)`
-/

namespace A247991.P7658120460657619891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A027379 (n + 2)).toNat + A000035 (2 * n)

end

end A247991.P7658120460657619891

/-! ## A247991.P5865555136617619320

`A014963(A017593(n))*A247995(A027379(n+2))`
-/

namespace A247991.P5865555136617619320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017593 n).toNat * A247995 (A027379 (n + 2)).toNat

end

end A247991.P5865555136617619320

/-!
# A247992: Number of length n+5 0..5 arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247992, there is no canonical definition to state claims against.
-/

/-! ## A247992.P5389848695412767554

`A247995(Δ[A264443(n)])`
-/

namespace A247992.P5389848695412767554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (f1 (n + 1) - f1 n).toNat

end

end A247992.P5389848695412767554

/-! ## A247992.P17818268699142462686

`A247995(A046691(n+3))`
-/

namespace A247992.P17818268699142462686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A046691 (n + 3)).toNat

end

end A247992.P17818268699142462686

/-! ## A247992.P17276238268345256025

`A247995(Δ[A023545(n+1)])`
-/

namespace A247992.P17276238268345256025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (f1 (n + 1) - f1 n).toNat

end

end A247992.P17276238268345256025

/-! ## A247992.P851514426479742410

`A247995(A000096(n+4)-3)`
-/

namespace A247992.P851514426479742410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000096 (n + 4) - 3).toNat

end

end A247992.P851514426479742410

/-! ## A247992.P18008570274254047957

`A247995(A000124(n+5)-5)`
-/

namespace A247992.P18008570274254047957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000124 (n + 5) - 5).toNat

end

end A247992.P18008570274254047957

/-!
# A247993: Number of length n+5 0..6 arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247993, there is no canonical definition to state claims against.
-/

/-! ## A247993.P966971657194314178

`A247995(A052905(n+3))`
-/

namespace A247993.P966971657194314178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A052905 (n + 3)).toNat

end

end A247993.P966971657194314178

/-! ## A247993.P12436489585683708156

`A247995(A055999(n+3)+1)`
-/

namespace A247993.P12436489585683708156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A055999 (n + 3) + 1).toNat

end

end A247993.P12436489585683708156

/-! ## A247993.P6945314653950279070

`A247995(A046691(n+4)-1)`
-/

namespace A247993.P6945314653950279070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A046691 (n + 4) - 1).toNat

end

end A247993.P6945314653950279070

/-! ## A247993.P15298824218802629570

`A247995(A000096(n+5)-4)`
-/

namespace A247993.P15298824218802629570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000096 (n + 5) - 4).toNat

end

end A247993.P15298824218802629570

/-! ## A247993.P15693228488766147746

`A247995(A000124(n+6)-6)`
-/

namespace A247993.P15693228488766147746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000124 (n + 6) - 6).toNat

end

end A247993.P15693228488766147746

/-!
# A247994: Number of length n+5 0..7 arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247994, there is no canonical definition to state claims against.
-/

/-! ## A247994.P16460782267060629392

`A247995(A055999(n+4))`
-/

namespace A247994.P16460782267060629392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A055999 (n + 4)).toNat

end

end A247994.P16460782267060629392

/-! ## A247994.P16347720333456792493

`A247995(eq[4, A219347(n)])`
-/

namespace A247994.P16347720333456792493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247994.P16347720333456792493

/-! ## A247994.P11389666153369048979

`A247995(eq[6, A193592(n)])`
-/

namespace A247994.P11389666153369048979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247994.P11389666153369048979

/-! ## A247994.P16667478298369010848

`A247995(eq[10, A185782(n+1)])`
-/

namespace A247994.P16667478298369010848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247994.P16667478298369010848

/-! ## A247994.P4346069052634755689

`A247995(eq[7, A200370(n+1)])`
-/

namespace A247994.P4346069052634755689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247994.P4346069052634755689

/-!
# A247996: Number of length 1+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247996, there is no canonical definition to state claims against.
-/

/-! ## A247996.P5938843718201231604

`(n+2)^6-A248069(n+1)`
-/

namespace A247996.P5938843718201231604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A248069 (n + 1)

end

end A247996.P5938843718201231604

/-! ## A247996.P8141573616682386073

`A247995(∑[n]+1)`
-/

namespace A247996.P8141573616682386073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247996.P8141573616682386073

/-! ## A247996.P6514815196609575818

`record[A010054(n)*A247995(n+1)]`
-/

namespace A247996.P6514815196609575818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A247995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247996.P6514815196609575818

/-! ## A247996.P8436995303213991647

`record[A247995(n+1)/A001498(n)]`
-/

namespace A247996.P8436995303213991647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247995 (n + 1) : ℚ) / (A001498 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247996.P8436995303213991647

/-! ## A247996.P3072581909235589626

`record[A247995(n+1)/A090642(n)]`
-/

namespace A247996.P3072581909235589626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247995 (n + 1) : ℚ) / (A090642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247996.P3072581909235589626

/-!
# A247997: Number of length 2+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247997, there is no canonical definition to state claims against.
-/

/-! ## A247997.P15894194259406295840

`A247995(∑[n+1]+2)`
-/

namespace A247997.P15894194259406295840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A247997.P15894194259406295840

/-! ## A247997.P4618939206941979447

`lcm(2, A247995(A000096(n)+3))`
-/

namespace A247997.P4618939206941979447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247995 (A000096 n + 3).toNat)

end

end A247997.P4618939206941979447

/-! ## A247997.P12806225957566543261

`A247995(A000096(n)+3)%Δ[A022525(n)]`
-/

namespace A247997.P12806225957566543261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247995 (A000096 n + 3).toNat) (f1 (n + 1) - f1 n)

end

end A247997.P12806225957566543261

/-! ## A247997.P16350841330607830058

`A001222(A000043(n+1))*A247995(A000096(n)+3)`
-/

namespace A247997.P16350841330607830058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A247995 (A000096 n + 3).toNat

end

end A247997.P16350841330607830058

/-!
# A247998: Number of length 3+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247998, there is no canonical definition to state claims against.
-/

/-! ## A247998.P14137482709160843551

`A247995(∑[n+2]+4)`
-/

namespace A247998.P14137482709160843551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A247998.P14137482709160843551

/-! ## A247998.P15845122672164015262

`lcm(2, A247995(A167614(n+1)))`
-/

namespace A247998.P15845122672164015262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247995 (A167614 (n + 1)).toNat)

end

end A247998.P15845122672164015262

/-! ## A247998.P1854287567586517259

`A247995(A167614(n+1))+A025439(n)`
-/

namespace A247998.P1854287567586517259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A167614 (n + 1)).toNat + A025439 n

end

end A247998.P1854287567586517259

/-! ## A247998.P15432477253699884247

`A247995(A167614(n+1))+A185255(n)`
-/

namespace A247998.P15432477253699884247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A167614 (n + 1)).toNat + A185255 n

end

end A247998.P15432477253699884247

/-! ## A247998.P7899821950218442040

`A247995(A167614(n+1))+A185284(n)`
-/

namespace A247998.P7899821950218442040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A167614 (n + 1)).toNat + A185284 n

end

end A247998.P7899821950218442040

/-!
# A247999: Number of length 4+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A247999, there is no canonical definition to state claims against.
-/

/-! ## A247999.P10290149368468759480

`A247995(A145018(n+4))`
-/

namespace A247999.P10290149368468759480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A145018 (n + 4)).toNat

end

end A247999.P10290149368468759480

/-! ## A247999.P9662627106881146656

`A247995(A141214(n)+7)`
-/

namespace A247999.P9662627106881146656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A141214 n + 7).toNat

end

end A247999.P9662627106881146656

/-! ## A247999.P7053085854577486989

`A247995(A052905(n)+9)`
-/

namespace A247999.P7053085854577486989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A052905 n + 9).toNat

end

end A247999.P7053085854577486989

/-! ## A247999.P3800400711165294862

`A247995(A055999(n)+10)`
-/

namespace A247999.P3800400711165294862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A055999 n + 10).toNat

end

end A247999.P3800400711165294862

/-! ## A247999.P6966784715958122682

`A247995(A167614(n+2)+1)`
-/

namespace A247999.P6966784715958122682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A167614 (n + 2) + 1).toNat

end

end A247999.P6966784715958122682

