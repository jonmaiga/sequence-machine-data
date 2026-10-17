import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A108400: a(n) = Product_{k = 0..n} (2^k * k!).

The programs for A108400, the canonical program `A108400.P2826040634695423638` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108400 has offset 0).

The definition of A108400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108400.P2826040634695423638

`A006125(n+1)*A000178(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108400

/-- `A006125(n+1)*A000178(n)` -/
def P2826040634695423638.Spec : Prop :=
  ∀ n, P2826040634695423638.a n = A108400 n

theorem P2826040634695423638.correct : P2826040634695423638.Spec := by
  intro n
  simp only [A108400]

end A108400

/-! ## A108400.P10880751502492656613

`∏[2^n*n!]`
-/

namespace A108400.P10880751502492656613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108400.P10880751502492656613

namespace A108400

/-- `∏[2^n*n!]` -/
def P10880751502492656613.Spec : Prop :=
  ∀ n, (P10880751502492656613.a n : ℤ) = A108400 n

end A108400

/-! ## A108400.P12374046324210945535

`∏[∏[floor(2/acot(n))]]`
-/

namespace A108400.P12374046324210945535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108400.P12374046324210945535

namespace A108400

/-- `∏[∏[floor(2/acot(n))]]` -/
def P12374046324210945535.Spec : Prop :=
  ∀ n, P12374046324210945535.a n = A108400 n

end A108400

/-! ## A108400.P17892829018548882672

`∏[∏[log2(lcm(2, 4^n))]]`
-/

namespace A108400.P17892829018548882672
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108400.P17892829018548882672

namespace A108400

/-- `∏[∏[log2(lcm(2, 4^n))]]` -/
def P17892829018548882672.Spec : Prop :=
  ∀ n, P17892829018548882672.a n = (A108400 n : ℝ)

end A108400

/-!
# A108402: Largest prime factor of A023199(n).

The programs for A108402, there is no canonical definition to state claims against.
-/

/-! ## A108402.P18169559186691963858

`A389810(A116848(n+2))`
-/

namespace A108402.P18169559186691963858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389810 (A116848 (n + 2)).toNat

end

end A108402.P18169559186691963858

/-! ## A108402.P15662392270729756240

`A063905(A026757(n+3)+A005056(n))`
-/

namespace A108402.P15662392270729756240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A026757 (n + 3) + A005056 n).toNat

end

end A108402.P15662392270729756240

/-! ## A108402.P13413845530188666093

`A070864(A209239(n+1))`
-/

namespace A108402.P13413845530188666093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (A209239 (n + 1)).toNat

end

end A108402.P13413845530188666093

/-! ## A108402.P16415943096891717808

`A319181(A144023(n+2))`
-/

namespace A108402.P16415943096891717808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319181 (A144023 (n + 2)).toNat

end

end A108402.P16415943096891717808

/-!
# A108403: Numbers n such that n^2-6 and n^2+6 are both prime.

The programs for A108403, there is no canonical definition to state claims against.
-/

/-! ## A108403.P862563612988571616

`∩[A028879(n+1), A114269(n+1)]`
-/

namespace A108403.P862563612988571616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108403.P862563612988571616

/-! ## A108403.P11292251592293829059

`5*A336366(A210068(n))`
-/

namespace A108403.P11292251592293829059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A336366 (A210068 n).toNat

end

end A108403.P11292251592293829059

/-!
# A108404: Expansion of (1-4x)/(1-8x+11x^2).

The programs for A108404, the canonical program `A108404.P10378077055178270622` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108404 has offset 0).

The definition of A108404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108404.P10378077055178270622

`8*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108404

/-- `8*a(n-1)-11*a(n-2)` -/
def P10378077055178270622.Spec : Prop :=
  ∀ n, P10378077055178270622.a n = A108404 n

theorem P10378077055178270622.correct : P10378077055178270622.Spec := by
  intro n
  simp only [A108404]

end A108404

/-! ## A108404.P5133052092311694924

`A091870(n+1)-4*A091870(n)`
-/

namespace A108404.P5133052092311694924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091870 (n + 1) - 4 * A091870 n

end

end A108404.P5133052092311694924

namespace A108404

/-- `A091870(n+1)-4*A091870(n)` -/
def P5133052092311694924.Spec : Prop :=
  ∀ n, P5133052092311694924.a n = A108404 n

end A108404

/-! ## A108404.P18355102224367663855

`A292466(∑[n+2]-1)`
-/

namespace A108404.P18355102224367663855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A108404.P18355102224367663855

namespace A108404

/-- `A292466(∑[n+2]-1)` -/
def P18355102224367663855.Spec : Prop :=
  ∀ n, P18355102224367663855.a n = A108404 n

end A108404

/-! ## A108404.P12833534094090066098

`A292466(∑[A065475(n+1)])+A000007(n+1)`
-/

namespace A108404.P12833534094090066098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292466 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A108404.P12833534094090066098

namespace A108404

/-- `A292466(∑[A065475(n+1)])+A000007(n+1)` -/
def P12833534094090066098.Spec : Prop :=
  ∀ n, P12833534094090066098.a n = A108404 n

end A108404

/-! ## A108404.P4809617959347241138

`A131729(2*n+1)*A292466(∑[A065475(n+1)])`
-/

namespace A108404.P4809617959347241138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 (2 * n + 1) * A292466 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108404.P4809617959347241138

namespace A108404

/-- `A131729(2*n+1)*A292466(∑[A065475(n+1)])` -/
def P4809617959347241138.Spec : Prop :=
  ∀ n, P4809617959347241138.a n = A108404 n

end A108404

/-! ## A108404.P9382819365803254933

`((4+sqrt(5))^n+(4-sqrt(5))^n)/2`
-/

namespace A108404.P9382819365803254933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (5 : ℝ)) ^ n + (4 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A108404.P9382819365803254933

namespace A108404

/-- `((4+sqrt(5))^n+(4-sqrt(5))^n)/2` -/
def P9382819365803254933.Spec : Prop :=
  ∀ n, P9382819365803254933.a n = (A108404 n : ℝ)

end A108404

/-! ## A108404.P8087080784200791120

`A163073(n)-A091870(n)`
-/

namespace A108404.P8087080784200791120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163073 n - A091870 n

end

end A108404.P8087080784200791120

namespace A108404

/-- `A163073(n)-A091870(n)` -/
def P8087080784200791120.Spec : Prop :=
  ∀ n, P8087080784200791120.a n = A108404 n

end A108404

/-! ## A108404.P10037298286009113751

`A162772(n)-A162769(n)`
-/

namespace A108404.P10037298286009113751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162772 n - A162769 n

end

end A108404.P10037298286009113751

namespace A108404

/-- `A162772(n)-A162769(n)` -/
def P10037298286009113751.Spec : Prop :=
  ∀ n, P10037298286009113751.a n = A108404 n

end A108404

/-! ## A108404.P15510969090090899458

`A163064(n)-A162772(n)`
-/

namespace A108404.P15510969090090899458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163064 n - A162772 n

end

end A108404.P15510969090090899458

namespace A108404

/-- `A163064(n)-A162772(n)` -/
def P15510969090090899458.Spec : Prop :=
  ∀ n, P15510969090090899458.a n = A108404 n

end A108404

/-! ## A108404.P5993933616322137237

`A162772(n+1)%A162772(n)`
-/

namespace A108404.P5993933616322137237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162772 (n + 1)) (A162772 n)

end

end A108404.P5993933616322137237

namespace A108404

/-- `A162772(n+1)%A162772(n)` -/
def P5993933616322137237.Spec : Prop :=
  ∀ n, P5993933616322137237.a n = A108404 n

end A108404

/-!
# A108407: Number of added unique known entries when going from the n X n to the (n+1) X (n+1) multiplication table.

The programs for A108407, there is no canonical definition to state claims against.
-/

/-! ## A108407.P12562507751844200580

`n-Δ[A373716(n+1)]`
-/

namespace A108407.P12562507751844200580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A108407.P12562507751844200580

/-! ## A108407.P17042404150706272495

`A062855(n+2)-(n+1)`
-/

namespace A108407.P17042404150706272495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062855 (n + 2) - (n + 1 : ℤ)

end

end A108407.P17042404150706272495

/-! ## A108407.P15859293515146478819

`2-A062854(n+2)+n`
-/

namespace A108407.P15859293515146478819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062854 (n + 2) + (n : ℤ)

end

end A108407.P15859293515146478819

/-! ## A108407.P3978057672588736368

`Δ[A062851(n+1)]-(n+1)`
-/

namespace A108407.P3978057672588736368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A108407.P3978057672588736368

/-! ## A108407.P2054222071432749038

`n+2-Δ[A027384(n+1)]`
-/

namespace A108407.P2054222071432749038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A108407.P2054222071432749038

/-! ## A108407.P7240027596590506315

`2-Δ[A027424(n+1)]+n`
-/

namespace A108407.P7240027596590506315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A108407.P7240027596590506315

/-! ## A108407.P8156516574515568909

`Δ[A000096(n)-A027384(n+1)]`
-/

namespace A108407.P8156516574515568909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A027384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108407.P8156516574515568909

/-! ## A108407.P12628213753748761455

`Δ[A000096(n)-A027424(n+1)]`
-/

namespace A108407.P12628213753748761455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A027424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108407.P12628213753748761455

/-! ## A108407.P13038830683984890546

`A014684(n+2)-A333995(n+2)`
-/

namespace A108407.P13038830683984890546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 2) - A333995 (n + 2)

end

end A108407.P13038830683984890546

/-! ## A108407.P17825738606300507844

`A027384(n+1)+n+1-A027424(n+2)`
-/

namespace A108407.P17825738606300507844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) + ((n + 1 : ℤ) - A027424 (n + 2))

end

end A108407.P17825738606300507844

/-! ## A108407.P7460619093124625649

`A256885(n+2)-(A333995(n+2)+A256885(n+1))`
-/

namespace A108407.P7460619093124625649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 2) - (A333995 (n + 2) + A256885 (n + 1))

end

end A108407.P7460619093124625649

/-! ## A108407.P15122505565654192078

`A333996(n+2)-(A333996(n+1)+A333995(n+2))`
-/

namespace A108407.P15122505565654192078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333996 (n + 2) - (A333996 (n + 1) + A333995 (n + 2))

end

end A108407.P15122505565654192078

/-!
# A108408: Unique values found in A108407. Complement of A108409.

The programs for A108408, there is no canonical definition to state claims against.
-/

/-! ## A108408.P1022891642332785612

`comp[A108409(n+1)-1]+1`
-/

namespace A108408.P1022891642332785612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108409 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A108408.P1022891642332785612

/-! ## A108408.P1614359833725121891

`comp[A014598(n)*A108409(n+1)]`
-/

namespace A108408.P1614359833725121891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A108409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108408.P1614359833725121891

/-! ## A108408.P1220548343469775166

`eq[char[A108407(n+1)], A057427(n)]`
-/

namespace A108408.P1220548343469775166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108408.P1220548343469775166

/-! ## A108408.P10286341303969734684

`eq[char[A108409(n+1)], A151878(n)]`
-/

namespace A108408.P10286341303969734684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108409 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108408.P10286341303969734684

/-! ## A108408.P18084281179366352265

`eq[char[A108407(n+1)], A178334(n)]`
-/

namespace A108408.P18084281179366352265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108408.P18084281179366352265

/-! ## A108408.P4352094257088303735

`record[char[A108407(n+1)]*A028310(n)]`
-/

namespace A108408.P4352094257088303735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108408.P4352094257088303735

/-! ## A108408.P14118176500285792230

`eq[A000038(n)!, char[A108407(n+1)]]`
-/

namespace A108408.P14118176500285792230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108408.P14118176500285792230

/-! ## A108408.P14958349867659542565

`eq[A000040(n+1)%2, char[A108407(n+1)]]`
-/

namespace A108408.P14958349867659542565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A108408.P14958349867659542565

/-! ## A108408.P8144563344106526241

`eq[A197905(n+3)%2, char[A108407(n+1)]]`
-/

namespace A108408.P8144563344106526241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197905 (n + 3)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A108408.P8144563344106526241

/-! ## A108408.P508376821965474974

`lt[A066247(n+1), n*char[A108407(n+1)]]`
-/

namespace A108408.P508376821965474974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108408.P508376821965474974

/-!
# A108409: Complement of A108408. Missing values in A108407.

The programs for A108409, there is no canonical definition to state claims against.
-/

/-! ## A108409.P17264171033808615236

`comp[A108407(n+1)]`
-/

namespace A108409.P17264171033808615236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108409.P17264171033808615236

/-! ## A108409.P2745664505986130748

`eq[0, char[A108407(n+2)]]`
-/

namespace A108409.P2745664505986130748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108409.P2745664505986130748

/-! ## A108409.P17536276146751880910

`lt[char[A108407(n+1)], A057427(n)]`
-/

namespace A108409.P17536276146751880910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A108409.P17536276146751880910

/-! ## A108409.P52401516916596275

`lt[char[A108407(n+1)], A066247(n+1)]`
-/

namespace A108409.P52401516916596275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A108409.P52401516916596275

/-! ## A108409.P3237861997150516648

`eq[0, char[A027384(n+1)+n+1-A027424(n+2)]]`
-/

namespace A108409.P3237861997150516648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) + ((n + 1 : ℤ) - A027424 (n + 2))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108409.P3237861997150516648

/-!
# A108410: Triangle T(n,k) read by rows: number of 12312-avoiding matchings on [2n] with exactly k crossings (n >= 1, 0 <= k <= n-1).

The programs for A108410, the canonical program `A108410.P12596715825883234350` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108410 has offset 1).

The definition of A108410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108410.P12596715825883234350

`A126216(n+1)/A001263(n+1)*A088617(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A108410

/-- `A126216(n+1)/A001263(n+1)*A088617(n)` -/
def P12596715825883234350.Spec : Prop :=
  ∀ n, P12596715825883234350.a n = (A108410 (n + 1) : ℚ)

end A108410

/-!
# A108411: a(n) = 3^floor(n/2). Powers of 3 repeated.

The programs for A108411, the canonical program `A108411.P9799689297515495700` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108411 has offset 0).

The definition of A108411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108411.P9799689297515495700

`3^floor(n/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108411

/-- `3^floor(n/2)` -/
def P9799689297515495700.Spec : Prop :=
  ∀ n, P9799689297515495700.a n = (A108411 n : ℚ)

end A108411

/-! ## A108411.P4450945318257951611

`3*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A108411.P4450945318257951611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2)

end

end A108411.P4450945318257951611

namespace A108411

/-- `3*a(n-2)` -/
def P4450945318257951611.Spec : Prop :=
  ∀ n, (P4450945318257951611.a n : ℤ) = A108411 n

end A108411

/-! ## A108411.P11486304524084945030

`∏[ceil(exp((n-1)%2))]`
-/

namespace A108411.P11486304524084945030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Int.tmod ((n : ℤ) - 1) 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108411.P11486304524084945030

namespace A108411

/-- `∏[ceil(exp((n-1)%2))]` -/
def P11486304524084945030.Spec : Prop :=
  ∀ n, P11486304524084945030.a n = A108411 n

end A108411

/-! ## A108411.P6336933751015961185

`∏[4-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A108411.P6336933751015961185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108411.P6336933751015961185

namespace A108411

/-- `∏[4-a(n-1)]` -/
def P6336933751015961185.Spec : Prop :=
  ∀ n, P6336933751015961185.a n = A108411 n

end A108411

/-! ## A108411.P12823360068149869567

`∏[abs((1-2*n)%4)]`
-/

namespace A108411.P12823360068149869567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - (2 * n : ℤ)) 4|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108411.P12823360068149869567

namespace A108411

/-- `∏[abs((1-2*n)%4)]` -/
def P12823360068149869567.Spec : Prop :=
  ∀ n, P12823360068149869567.a n = A108411 n

end A108411

/-! ## A108411.P4478741997332103281

`-∏[(2*n-1)%4]`
-/

namespace A108411.P4478741997332103281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A108411.P4478741997332103281

namespace A108411

/-- `-∏[(2*n-1)%4]` -/
def P4478741997332103281.Spec : Prop :=
  ∀ n, P4478741997332103281.a n = A108411 n

end A108411

/-! ## A108411.P17705796599816558862

`abs(∏[(n-1+n)%4])`
-/

namespace A108411.P17705796599816558862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1 + (n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A108411.P17705796599816558862

namespace A108411

/-- `abs(∏[(n-1+n)%4])` -/
def P17705796599816558862.Spec : Prop :=
  ∀ n, P17705796599816558862.a n = A108411 n

end A108411

/-! ## A108411.P9525357227170917931

`or(1, 3^ceil((n-1)/2))`
-/

namespace A108411.P9525357227170917931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌈((n : ℤ) - 1 : ℚ) / 2⌉ : ℤ)))

end

end A108411.P9525357227170917931

namespace A108411

/-- `or(1, 3^ceil((n-1)/2))` -/
def P9525357227170917931.Spec : Prop :=
  ∀ n, P9525357227170917931.a n = A108411 n

end A108411

/-! ## A108411.P5773931686842827364

`a(n-2)/(1-2/3)` with `a(0)=1, a(1)=1`
-/

namespace A108411.P5773931686842827364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A108411.P5773931686842827364

namespace A108411

/-- `a(n-2)/(1-2/3)` -/
def P5773931686842827364.Spec : Prop :=
  ∀ n, P5773931686842827364.a n = (A108411 n : ℚ)

end A108411

/-! ## A108411.P8346876033429978355

`a(n-2)+lcm(2, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A108411.P8346876033429978355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 2))

end

end A108411.P8346876033429978355

namespace A108411

/-- `a(n-2)+lcm(2, a(n-2))` -/
def P8346876033429978355.Spec : Prop :=
  ∀ n, (P8346876033429978355.a n : ℤ) = A108411 n

end A108411

/-! ## A108411.P18074554278434439476

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A108411.P18074554278434439476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A108411.P18074554278434439476

namespace A108411

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P18074554278434439476.Spec : Prop :=
  ∀ n, (P18074554278434439476.a n : ℤ) = A108411 n

end A108411

/-! ## A108411.P12677954629979296434

`A111575(2*n)`
-/

namespace A108411.P12677954629979296434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (2 * n)

end

end A108411.P12677954629979296434

namespace A108411

/-- `A111575(2*n)` -/
def P12677954629979296434.Spec : Prop :=
  ∀ n, P12677954629979296434.a n = A108411 n

end A108411

/-!
# A108412: Expansion of (1 + x + x^2)/(1 - 4x^2 + x^4).

The programs for A108412, the canonical program `A108412.P11109404776230230951` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108412 has offset 0).

The definition of A108412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108412.P11109404776230230951

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108412

/-- `4*a(n-2)-a(n-4)` -/
def P11109404776230230951.Spec : Prop :=
  ∀ n, P11109404776230230951.a n = A108412 n

theorem P11109404776230230951.correct : P11109404776230230951.Spec := by
  intro n
  simp only [A108412]

end A108412

/-! ## A108412.P17510081343411000878

`A077237(n)-a(n-1)` with `a(0)=1`
-/

namespace A108412.P17510081343411000878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077237 n - a (n - 1)

end

end A108412.P17510081343411000878

namespace A108412

/-- `A077237(n)-a(n-1)` -/
def P17510081343411000878.Spec : Prop :=
  ∀ n, P17510081343411000878.a n = A108412 n

end A108412

/-! ## A108412.P10724241945519315560

`A082630(n+1)/A000034(n)`
-/

namespace A108412.P10724241945519315560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082630 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A108412.P10724241945519315560

namespace A108412

/-- `A082630(n+1)/A000034(n)` -/
def P10724241945519315560.Spec : Prop :=
  ∀ n, P10724241945519315560.a n = (A108412 n : ℚ)

end A108412

/-! ## A108412.P15436045397040547003

`A048788(n)+A002530(xor(1, n))`
-/

namespace A108412.P15436045397040547003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 n + A002530 (Nat.xor 1 n)

end

end A108412.P15436045397040547003

namespace A108412

/-- `A048788(n)+A002530(xor(1, n))` -/
def P15436045397040547003.Spec : Prop :=
  ∀ n, P15436045397040547003.a n = A108412 n

end A108412

/-! ## A108412.P2313194781398426551

`A048788(n+2)-A005246(n+2)`
-/

namespace A108412.P2313194781398426551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (n + 2) - A005246 (n + 2)

end

end A108412.P2313194781398426551

namespace A108412

/-- `A048788(n+2)-A005246(n+2)` -/
def P2313194781398426551.Spec : Prop :=
  ∀ n, P2313194781398426551.a n = A108412 n

end A108412

/-! ## A108412.P13183292473815579711

`A002530(2*A028242(n))+A002530(n)`
-/

namespace A108412.P13183292473815579711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (2 * A028242 n).toNat + A002530 n

end

end A108412.P13183292473815579711

namespace A108412

/-- `A002530(2*A028242(n))+A002530(n)` -/
def P13183292473815579711.Spec : Prop :=
  ∀ n, P13183292473815579711.a n = A108412 n

end A108412

/-! ## A108412.P10530553890826371301

`A254308(A294732(n+3))/Δ[A294732(n+3)]`
-/

namespace A108412.P10530553890826371301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254308 (A294732 (n + 3)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A108412.P10530553890826371301

namespace A108412

/-- `A254308(A294732(n+3))/Δ[A294732(n+3)]` -/
def P10530553890826371301.Spec : Prop :=
  ∀ n, P10530553890826371301.a n = (A108412 n : ℚ)

end A108412

/-! ## A108412.P5083573919695000670

`A143643(n+1)/A010684(n)`
-/

namespace A108412.P5083573919695000670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143643 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A108412.P5083573919695000670

namespace A108412

/-- `A143643(n+1)/A010684(n)` -/
def P5083573919695000670.Spec : Prop :=
  ∀ n, P5083573919695000670.a n = (A108412 n : ℚ)

end A108412

/-! ## A108412.P16659224440087160222

`gcd(A082630(n+1), A143643(n+1))`
-/

namespace A108412.P16659224440087160222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082630 (n + 1)) (A143643 (n + 1))

end

end A108412.P16659224440087160222

namespace A108412

/-- `gcd(A082630(n+1), A143643(n+1))` -/
def P16659224440087160222.Spec : Prop :=
  ∀ n, (P16659224440087160222.a n : ℤ) = A108412 n

end A108412

/-! ## A108412.P3728009365289184485

`A131887(n+1)-A237250(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A108412.P3728009365289184485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131887 (n + 1) - A237250 (n + 1) - a (n - 1)

end

end A108412.P3728009365289184485

namespace A108412

/-- `A131887(n+1)-A237250(n+1)-a(n-1)` -/
def P3728009365289184485.Spec : Prop :=
  ∀ n, P3728009365289184485.a n = A108412 n

end A108412

/-! ## A108412.P1445620090053164843

`A002531(n+1)+A259593(n)-A259592(n+1)`
-/

namespace A108412.P1445620090053164843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (n + 1) + (A259593 n - A259592 (n + 1))

end

end A108412.P1445620090053164843

namespace A108412

/-- `A002531(n+1)+A259593(n)-A259592(n+1)` -/
def P1445620090053164843.Spec : Prop :=
  ∀ n, P1445620090053164843.a n = A108412 n

end A108412

/-! ## A108412.P8489016983493551146

`A143643(n+2)-A259592(n+1)`
-/

namespace A108412.P8489016983493551146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (n + 2) - A259592 (n + 1)

end

end A108412.P8489016983493551146

namespace A108412

/-- `A143643(n+2)-A259592(n+1)` -/
def P8489016983493551146.Spec : Prop :=
  ∀ n, P8489016983493551146.a n = A108412 n

end A108412

/-! ## A108412.P7284040232424394473

`A143643(n+2)-(A143643(n+1)+A005246(n+1))`
-/

namespace A108412.P7284040232424394473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143643 (n + 2) - (A143643 (n + 1) + A005246 (n + 1))

end

end A108412.P7284040232424394473

namespace A108412

/-- `A143643(n+2)-(A143643(n+1)+A005246(n+1))` -/
def P7284040232424394473.Spec : Prop :=
  ∀ n, P7284040232424394473.a n = A108412 n

end A108412

/-! ## A108412.P17326609419052473563

`A061278(n)/a(n-1)` with `a(0)=1`
-/

namespace A108412.P17326609419052473563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A061278 n : ℚ) / a (n - 1)

end

end A108412.P17326609419052473563

namespace A108412

/-- `A061278(n)/a(n-1)` -/
def P17326609419052473563.Spec : Prop :=
  ∀ n, P17326609419052473563.a n = (A108412 n : ℚ)

end A108412

/-! ## A108412.P118089179890234621

`gcd(A061278(n), A072110(n))`
-/

namespace A108412.P118089179890234621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061278 n) (A072110 n)

end

end A108412.P118089179890234621

namespace A108412

/-- `gcd(A061278(n), A072110(n))` -/
def P118089179890234621.Spec : Prop :=
  ∀ n, (P118089179890234621.a n : ℤ) = A108412 n

end A108412

/-! ## A108412.P6300507154760333033

`gcd(A082630(n+1), A102871(n))`
-/

namespace A108412.P6300507154760333033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082630 (n + 1)) (A102871 n)

end

end A108412.P6300507154760333033

namespace A108412

/-- `gcd(A082630(n+1), A102871(n))` -/
def P6300507154760333033.Spec : Prop :=
  ∀ n, (P6300507154760333033.a n : ℤ) = A108412 n

end A108412

/-! ## A108412.P5148381148860667260

`gcd(A071954(n), A143643(n+1))`
-/

namespace A108412.P5148381148860667260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071954 n) (A143643 (n + 1))

end

end A108412.P5148381148860667260

namespace A108412

/-- `gcd(A071954(n), A143643(n+1))` -/
def P5148381148860667260.Spec : Prop :=
  ∀ n, (P5148381148860667260.a n : ℤ) = A108412 n

end A108412

/-! ## A108412.P6718480436233446174

`gcd(A001353(n)+1, ∑[A001353(n)])`
-/

namespace A108412.P6718480436233446174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001353 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108412.P6718480436233446174

namespace A108412

/-- `gcd(A001353(n)+1, ∑[A001353(n)])` -/
def P6718480436233446174.Spec : Prop :=
  ∀ n, (P6718480436233446174.a n : ℤ) = A108412 n

end A108412

/-! ## A108412.P8205126978600807090

`gcd(A102871(n), A110294(n))`
-/

namespace A108412.P8205126978600807090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102871 n) (A110294 n)

end

end A108412.P8205126978600807090

namespace A108412

/-- `gcd(A102871(n), A110294(n))` -/
def P8205126978600807090.Spec : Prop :=
  ∀ n, (P8205126978600807090.a n : ℤ) = A108412 n

end A108412

/-!
# A108413: Expansion of (1+x+5x^2+2x^3) / (1-4x^2+x^4).

The programs for A108413, the canonical program `A108413.P5960869483060626997` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108413 has offset 0).

The definition of A108413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108413.P5960869483060626997

`(2-3*and(1, n))*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108413

/-- `(2-3*and(1, n))*a(n-1)-a(n-2)` -/
def P5960869483060626997.Spec : Prop :=
  ∀ n, P5960869483060626997.a n = A108413 n

theorem P5960869483060626997.correct : P5960869483060626997.Spec := by
  intro n
  simp only [A108413]

end A108413

/-! ## A108413.P11933814137766655818

`a(n-1)/(1-ratio[2/a(n-1)])-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A108413.P11933814137766655818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (1 - f1 (n + 1) / f1 n) - a (n - 2)

end

end A108413.P11933814137766655818

namespace A108413

/-- `a(n-1)/(1-ratio[2/a(n-1)])-a(n-2)` -/
def P11933814137766655818.Spec : Prop :=
  ∀ n, P11933814137766655818.a n = (A108413 n : ℚ)

end A108413

/-! ## A108413.P15983772643658348379

`(a(n-1)*a(n-2)-3)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A108413.P15983772643658348379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) * a (n - 2) - 3) / a (n - 3)

end

end A108413.P15983772643658348379

namespace A108413

/-- `(a(n-1)*a(n-2)-3)/a(n-3)` -/
def P15983772643658348379.Spec : Prop :=
  ∀ n, P15983772643658348379.a n = (A108413 n : ℚ)

end A108413

/-! ## A108413.P9854349695472356030

`A213369(A113835(n+1))`
-/

namespace A108413.P9854349695472356030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213369 (A113835 (n + 1)).toNat

end

end A108413.P9854349695472356030

namespace A108413

/-- `A213369(A113835(n+1))` -/
def P9854349695472356030.Spec : Prop :=
  ∀ n, P9854349695472356030.a n = A108413 n

end A108413

/-!
# A108414: Number of integer k:s for which max{x^(k-x) | x integer, 0

The programs for A108414, there is no canonical definition to state claims against.
-/

/-! ## A108414.P9438563507025485179

`Δ[A031435(round(sqrt(n²+1)))]+1`
-/

namespace A108414.P9438563507025485179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031435 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A108414.P9438563507025485179

/-!
# A108415: a(n) = 1, 2 or 3 (resp.) if prime(n) is weak, balanced or strong (resp.).

The programs for A108415, the canonical program `A108415.P14242309755812235254` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108415 has offset 2).

The definition of A108415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108415.P14242309755812235254

`A079054(n+2)+2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A108415

/-- `A079054(n+2)+2` -/
def P14242309755812235254.Spec : Prop :=
  ∀ n, P14242309755812235254.a n = A108415 (n + 2)

theorem P14242309755812235254.correct : P14242309755812235254.Spec := by
  intro n
  simp only [A108415, Nat.add_sub_cancel]

end A108415

/-! ## A108415.P3042449231941362073

`2-Δ[A092243(n+1)]`
-/

namespace A108415.P3042449231941362073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A108415.P3042449231941362073

namespace A108415

/-- `2-Δ[A092243(n+1)]` -/
def P3042449231941362073.Spec : Prop :=
  ∀ n, P3042449231941362073.a n = A108415 (n + 2)

end A108415

/-! ## A108415.P10030874178437116765

`2-round(tanh(Δ[A001223(n+1)]))`
-/

namespace A108415.P10030874178437116765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (Real.tanh (f1 (n + 1) - f1 n : ℝ))

end

end A108415.P10030874178437116765

namespace A108415

/-- `2-round(tanh(Δ[A001223(n+1)]))` -/
def P10030874178437116765.Spec : Prop :=
  ∀ n, P10030874178437116765.a n = A108415 (n + 2)

end A108415

/-! ## A108415.P10979918911485390601

`A167489(Δ[A092243(n+1)]+9)`
-/

namespace A108415.P10979918911485390601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (f1 (n + 1) - f1 n + 9).toNat

end

end A108415.P10979918911485390601

namespace A108415

/-- `A167489(Δ[A092243(n+1)]+9)` -/
def P10979918911485390601.Spec : Prop :=
  ∀ n, P10979918911485390601.a n = A108415 (n + 2)

end A108415

/-! ## A108415.P331782492157343170

`A092243(n+1)-A092243(n+2)+2`
-/

namespace A108415.P331782492157343170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1) - A092243 (n + 2) + 2

end

end A108415.P331782492157343170

namespace A108415

/-- `A092243(n+1)-A092243(n+2)+2` -/
def P331782492157343170.Spec : Prop :=
  ∀ n, P331782492157343170.a n = A108415 (n + 2)

end A108415

/-! ## A108415.P4729534709691167735

`3-A107599(n+2)`
-/

namespace A108415.P4729534709691167735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A107599 (n + 2)

end

end A108415.P4729534709691167735

namespace A108415

/-- `3-A107599(n+2)` -/
def P4729534709691167735.Spec : Prop :=
  ∀ n, P4729534709691167735.a n = A108415 (n + 2)

end A108415

/-!
# A108416: Triangle read by rows: T(n,k) counts the k-subsets of the n-th roots of 1 with absolute value of sum=1.

The programs for A108416, there is no canonical definition to state claims against.
-/

/-! ## A108416.P18138226890038777608

`A142150(A000523(A209816(n+1)))`
-/

namespace A108416.P18138226890038777608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A000523 (A209816 (n + 1)).toNat).toNat

end

end A108416.P18138226890038777608

/-! ## A108416.P10283405589567072065

`and(A002411(A296010(n)), A004526(n))`
-/

namespace A108416.P10283405589567072065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002411 (A296010 n).toNat) (A004526 n)

end

end A108416.P10283405589567072065

/-! ## A108416.P12743553985608973884

`A115720(gcd(n, A277043(n)))`
-/

namespace A108416.P12743553985608973884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (Int.gcd (n : ℤ) (A277043 n))

end

end A108416.P12743553985608973884

/-! ## A108416.P596981263546873791

`floor(Δ[A084558(A037952(n))²]/2)`
-/

namespace A108416.P596981263546873791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A037952 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 2⌋

end

end A108416.P596981263546873791

/-! ## A108416.P7071936618019331590

`A095190(A114226(n))*A115720(n)`
-/

namespace A108416.P7071936618019331590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A114226 n).toNat * A115720 n

end

end A108416.P7071936618019331590

/-!
# A108417: Number of subsets of the n-th roots of 1 with absolute value of sum = 1.

The programs for A108417, there is no canonical definition to state claims against.
-/

/-! ## A108417.P2565688788632759159

`n*A001227(A071738(n))`
-/

namespace A108417.P2565688788632759159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001227 (A071738 n).toNat

end

end A108417.P2565688788632759159

/-! ## A108417.P2295958018205782456

`n*A053695(A228917(n+1))`
-/

namespace A108417.P2295958018205782456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053695 (A228917 (n + 1)).toNat

end

end A108417.P2295958018205782456

/-! ## A108417.P3860666474947799909

`n*gcd(2*n, A001221(n!)!)`
-/

namespace A108417.P3860666474947799909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd (2 * n) (Nat.factorial (A001221 (Nat.factorial n)).toNat)

end

end A108417.P3860666474947799909

/-! ## A108417.P16506900756350283355

`n*A057467(A097597(n))`
-/

namespace A108417.P16506900756350283355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057467 (A097597 n).toNat

end

end A108417.P16506900756350283355

/-! ## A108417.P13615588569469690989

`n*A330241(A047974(n))`
-/

namespace A108417.P13615588569469690989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A330241 (A047974 n).toNat

end

end A108417.P13615588569469690989

/-!
# A108418: Primes with at least one of each odd digit and no even digits.

The programs for A108418, there is no canonical definition to state claims against.
-/

/-! ## A108418.P2751247906354232316

`A155045(n+55)`
-/

namespace A108418.P2751247906354232316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155045 (n + 55)

end

end A108418.P2751247906354232316

/-! ## A108418.P777192230091687453

`A000265(A232447(n+1))`
-/

namespace A108418.P777192230091687453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A232447 (n + 1)).toNat

end

end A108418.P777192230091687453

/-! ## A108418.P13332062229218836364

`A232447(A071669(n)+1)`
-/

namespace A108418.P13332062229218836364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232447 (A071669 n + 1).toNat

end

end A108418.P13332062229218836364

/-! ## A108418.P185705520627415591

`A232447(A071670(n)+1)`
-/

namespace A108418.P185705520627415591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232447 (A071670 n + 1).toNat

end

end A108418.P185705520627415591

/-! ## A108418.P17722993100196326856

`A001414(or(1, A232447(n+1)))`
-/

namespace A108418.P17722993100196326856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.lor 1 (A232447 (n + 1))).toNat

end

end A108418.P17722993100196326856

/-!
# A108419: Primes with at least one of each prime digit.

The programs for A108419, there is no canonical definition to state claims against.
-/

/-! ## A108419.P1601997072664063737

`A134966(n+1)`
-/

namespace A108419.P1601997072664063737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134966 (n + 1)

end

end A108419.P1601997072664063737

/-! ## A108419.P17101631101197311875

`A124674(n+11)`
-/

namespace A108419.P17101631101197311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124674 (n + 11)

end

end A108419.P17101631101197311875

/-! ## A108419.P17304925491650995877

`∑{digits}[lt[0, ∏{digits}[n, #]], A134966(#)]`
-/

namespace A108419.P17304925491650995877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A134966 x).sum

end

end A108419.P17304925491650995877

/-! ## A108419.P5474042676813107648

`A006530(A124674(∑[gcd(11, n)]))`
-/

namespace A108419.P5474042676813107648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124674 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108419.P5474042676813107648

/-!
# A108420: Numbers k such that k!! - prime(k) is prime.

The programs for A108420, there is no canonical definition to state claims against.
-/

/-! ## A108420.P17411697188034413731

`∩[A034884(n+1), A074851(n+1)]`
-/

namespace A108420.P17411697188034413731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108420.P17411697188034413731

/-!
# A108421: Smallest number of ones needed to write in binary representation 2*n as sum of two primes.

The programs for A108421, there is no canonical definition to state claims against.
-/

/-! ## A108421.P10892438573279931452

`A108422(n+2)-A108423(n+2)`
-/

namespace A108421.P10892438573279931452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108422 (n + 2) - A108423 (n + 2)

end

end A108421.P10892438573279931452

/-! ## A108421.P6403474652482564701

`A241856(n+2)+A000120(n+2)`
-/

namespace A108421.P6403474652482564701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241856 (n + 2) + A000120 (n + 2)

end

end A108421.P6403474652482564701

/-! ## A108421.P15271531819587233203

`A241856(n+2)+A048881(A004766(n+2))`
-/

namespace A108421.P15271531819587233203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241856 (n + 2) + A048881 (A004766 (n + 2)).toNat

end

end A108421.P15271531819587233203

/-! ## A108421.P5699088467484243846

`A108422(n+2)-A102679(lcm(A178378(n+1), A181325(n)))`
-/

namespace A108421.P5699088467484243846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108422 (n + 2) - A102679 (Int.lcm (A178378 (n + 1)) (A181325 n))

end

end A108421.P5699088467484243846

/-! ## A108421.P1119775706246298297

`A323014(A004277(n)*A081351(3*n+2))`
-/

namespace A108421.P1119775706246298297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A004277 n * A081351 (3 * n + 2)).toNat

end

end A108421.P1119775706246298297

/-!
# A108422: Greatest number of ones that can be used to write in binary representation 2*n as sum of two primes.

The programs for A108422, there is no canonical definition to state claims against.
-/

/-! ## A108422.P11532104413330338157

`A108423(n+2)+A108421(n+2)`
-/

namespace A108422.P11532104413330338157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108423 (n + 2) + A108421 (n + 2)

end

end A108422.P11532104413330338157

/-! ## A108422.P2581671008942850692

`A108423(n+2)+A241856(n+2)+A000120(n+2)`
-/

namespace A108422.P2581671008942850692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108423 (n + 2) + (A241856 (n + 2) + A000120 (n + 2))

end

end A108422.P2581671008942850692

/-! ## A108422.P4948001157975512030

`A108423(n+2)+A241856(n+2)+A048881(A004766(n+2))`
-/

namespace A108422.P4948001157975512030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108423 (n + 2) + (A241856 (n + 2) + A048881 (A004766 (n + 2)).toNat)

end

end A108422.P4948001157975512030

/-! ## A108422.P10672639071872796275

`A064415(A330122(3*(n+1))+round((lcm(3, n)+n)/3))`
-/

namespace A108422.P10672639071872796275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A330122 (3 * (n + 1)) + SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)).toNat

end

end A108422.P10672639071872796275

/-! ## A108422.P4031080065520830733

`A108421(n+2)+A102679(lcm(A178378(n+1), A181325(n)))`
-/

namespace A108422.P4031080065520830733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108421 (n + 2) + A102679 (Int.lcm (A178378 (n + 1)) (A181325 n))

end

end A108422.P4031080065520830733

/-!
# A108423: a(n) = A108422(n) - A108421(n).

The programs for A108423, there is no canonical definition to state claims against.
-/

/-! ## A108423.P12423059745771078502

`A108422(n+2)-A108421(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108423.P12423059745771078502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108422 (n + 2) - A108421 (n + 2)

end

end A108423.P12423059745771078502

/-! ## A108423.P11735164104849789315

`A108422(n+2)-(A241856(n+2)+A000120(n+2))`
-/

namespace A108423.P11735164104849789315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108422 (n + 2) - (A241856 (n + 2) + A000120 (n + 2))

end

end A108423.P11735164104849789315

/-! ## A108423.P13629841474744859956

`(A108422(n+2)%A108421(n+2))%A095766(n+1)`
-/

namespace A108423.P13629841474744859956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A108422 (n + 2)) (A108421 (n + 2))) (A095766 (n + 1))

end

end A108423.P13629841474744859956

/-! ## A108423.P11655748335081503681

`A102679(lcm(A178378(n+1), A181325(n)))`
-/

namespace A108423.P11655748335081503681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (Int.lcm (A178378 (n + 1)) (A181325 n))

end

end A108423.P11655748335081503681

/-! ## A108423.P16072437167013790470

`A008616(A245704(n+1))%A122941(3*n+4)`
-/

namespace A108423.P16072437167013790470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008616 (A245704 (n + 1)).toNat) (A122941 (3 * n + 4))

end

end A108423.P16072437167013790470

/-!
# A108424: Number of paths from (0,0) to (3n,0) that stay in the first quadrant, consist of steps u=(2,1), U=(1,2), or d=(1,-1) and do not touch the x-axis, except at the endpoints.

The programs for A108424, there is no canonical definition to state claims against.
-/

/-! ## A108424.P16750118923607503917

`2*A344553(n+1)`
-/

namespace A108424.P16750118923607503917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344553 (n + 1)

end

end A108424.P16750118923607503917

/-! ## A108424.P4659976140579963926

`abs(A364394(n+1))`
-/

namespace A108424.P4659976140579963926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364394 (n + 1)|

end

end A108424.P4659976140579963926

/-! ## A108424.P5134144917433808641

`A108435(∑[n]+1)`
-/

namespace A108424.P5134144917433808641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A108424.P5134144917433808641

/-! ## A108424.P12613500126116021278

`record[A108435(n+1)]`
-/

namespace A108424.P12613500126116021278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108424.P12613500126116021278

/-! ## A108424.P4446668187883197299

`A032349(n+1)+A027307(n)`
-/

namespace A108424.P4446668187883197299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 1) + A027307 n

end

end A108424.P4446668187883197299

/-! ## A108424.P4827836282118942341

`A084078(2*n)+A027307(n)`
-/

namespace A108424.P4827836282118942341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (2 * n) + A027307 n

end

end A108424.P4827836282118942341

/-! ## A108424.P8973089950978849935

`A110682(∑[n])+A032349(n+1)`
-/

namespace A108424.P8973089950978849935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (∑ j ∈ Finset.range (n + 1), f1 j) + A032349 (n + 1)

end

end A108424.P8973089950978849935

/-! ## A108424.P18076501303756905451

`A032349(n+1)+record[A110682(n)]`
-/

namespace A108424.P18076501303756905451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108424.P18076501303756905451

/-! ## A108424.P4856486996667223034

`A027307(n)+record[A257532(n+1)]`
-/

namespace A108424.P4856486996667223034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027307 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108424.P4856486996667223034

/-! ## A108424.P4021237044211736686

`A137842(2*n+1)+A027307(n)`
-/

namespace A108424.P4021237044211736686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 (2 * n + 1) + A027307 n

end

end A108424.P4021237044211736686

/-!
# A108426: Triangle read by rows: T(n,k) is number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) and have k peaks of the form Ud.

The programs for A108426, there is no canonical definition to state claims against.
-/

/-! ## A108426.P17346192816998503705

`A104978(A061579(n))`
-/

namespace A108426.P17346192816998503705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A061579 n).toNat

end

end A108426.P17346192816998503705

/-! ## A108426.P2335564424219084382

`A073187(A082153(n+1))`
-/

namespace A108426.P2335564424219084382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073187 (A082153 (n + 1)).toNat

end

end A108426.P2335564424219084382

/-! ## A108426.P9406445319021292430

`A104978(A114327(n)+n)`
-/

namespace A108426.P9406445319021292430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A114327 n + (n : ℤ)).toNat

end

end A108426.P9406445319021292430

/-! ## A108426.P15998375181565187062

`A104978(A038722(n+1)-1)`
-/

namespace A108426.P15998375181565187062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A038722 (n + 1) - 1).toNat

end

end A108426.P15998375181565187062

/-! ## A108426.P3342700764913399465

`A104978(A093995(n+1)-(n+1))`
-/

namespace A108426.P3342700764913399465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A108426.P3342700764913399465

/-! ## A108426.P147069084930691465

`A104978(A023443(A038722(n+1)))`
-/

namespace A108426.P147069084930691465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A108426.P147069084930691465

/-! ## A108426.P4814336006048386855

`A104978(A057428(n)+A038722(n+1))`
-/

namespace A108426.P4814336006048386855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A057428 n + A038722 (n + 1)).toNat

end

end A108426.P4814336006048386855

/-! ## A108426.P17383695471459792539

`A104978(A002378(n)%A014132(n+1))`
-/

namespace A108426.P17383695471459792539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A108426.P17383695471459792539

/-! ## A108426.P7287708613260835326

`A104978(A259361(A038722(n+1)²))`
-/

namespace A108426.P7287708613260835326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A259361 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A108426.P7287708613260835326

/-!
# A108427: Number of peaks of the form Ud in all paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1).

The programs for A108427, there is no canonical definition to state claims against.
-/

/-! ## A108427.P5116654251735322667

`Δ[n²]*A344553(n+1)`
-/

namespace A108427.P5116654251735322667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A344553 (n + 1)

end

end A108427.P5116654251735322667

/-! ## A108427.P6776152910076422510

`A108424(n+1)/2*A005408(n)`
-/

namespace A108427.P6776152910076422510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108424 (n + 1) : ℚ) / 2 * (A005408 n : ℚ)

end

end A108427.P6776152910076422510

/-! ## A108427.P12997761009263369072

`A210754(∑[4*n]+1)`
-/

namespace A108427.P12997761009263369072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210754 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A108427.P12997761009263369072

/-! ## A108427.P4331991832416917116

`A056242(2*(n+1)²)`
-/

namespace A108427.P4331991832416917116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056242 (2 * (n + 1) ^ 2)

end

end A108427.P4331991832416917116

/-! ## A108427.P13724225064952129095

`A114123(2*(n+1)²)`
-/

namespace A108427.P13724225064952129095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (2 * (n + 1) ^ 2)

end

end A108427.P13724225064952129095

/-! ## A108427.P972664644011544013

`A117317(2*(n+1)²)`
-/

namespace A108427.P972664644011544013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117317 (2 * (n + 1) ^ 2)

end

end A108427.P972664644011544013

/-! ## A108427.P3937904276495189979

`A142992(A056220(n+1))`
-/

namespace A108427.P3937904276495189979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142992 (A056220 (n + 1)).toNat

end

end A108427.P3937904276495189979

/-! ## A108427.P17634378757901434824

`A165241(A004273((n+1)²))`
-/

namespace A108427.P17634378757901434824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165241 (A004273 ((n + 1) ^ 2)).toNat

end

end A108427.P17634378757901434824

/-! ## A108427.P4688390476408923627

`A142992(A054000(n+1)+1)`
-/

namespace A108427.P4688390476408923627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142992 (A054000 (n + 1) + 1).toNat

end

end A108427.P4688390476408923627

/-! ## A108427.P5581021241096164242

`record[gcd(A114123(n+1), A184883(n))]`
-/

namespace A108427.P5581021241096164242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114123 (n + 1)) (A184883 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108427.P5581021241096164242

/-!
# A108430: Number of d steps in all paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1).

The programs for A108430, there is no canonical definition to state claims against.
-/

/-! ## A108430.P4926359892756543529

`A026000(n+1)-A027307(n+1)`
-/

namespace A108430.P4926359892756543529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026000 (n + 1) - A027307 (n + 1)

end

end A108430.P4926359892756543529

/-! ## A108430.P18290682564794535978

`A210192(∑[9*n+8]+2)`
-/

namespace A108430.P18290682564794535978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A108430.P18290682564794535978

/-!
# A108432: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) and have no hills (a hill is either a ud or a Udd starting at the x-axis).

The programs for A108432, there is no canonical definition to state claims against.
-/

/-! ## A108432.P17564735340329888519

`A108431(∑[n])`
-/

namespace A108432.P17564735340329888519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108432.P17564735340329888519

/-! ## A108432.P15637313201526851853

`gcd(A000038(n), A108431(A000217(n)))`
-/

namespace A108432.P15637313201526851853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108431 (A000217 n).toNat)

end

end A108432.P15637313201526851853

/-! ## A108432.P1387408481940327889

`A108431(A000217(n))%Δ[A002280(n)]`
-/

namespace A108432.P1387408481940327889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108431 (A000217 n).toNat) (f1 (n + 1) - f1 n)

end

end A108432.P1387408481940327889

/-! ## A108432.P7356757906899471033

`A108431(A000217(n))+A000007(n+1)`
-/

namespace A108432.P7356757906899471033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108431 (A000217 n).toNat + A000007 (n + 1)

end

end A108432.P7356757906899471033

/-! ## A108432.P9228282929317783169

`A108431(A000217(n))+A000038(A005408(n))`
-/

namespace A108432.P9228282929317783169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108431 (A000217 n).toNat + A000038 (A005408 n).toNat

end

end A108432.P9228282929317783169

/-! ## A108432.P6432755908555011817

`A108431(A000217(n))+A000038(A035607(n))`
-/

namespace A108432.P6432755908555011817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108431 (A000217 n).toNat + A000038 (A035607 n).toNat

end

end A108432.P6432755908555011817

/-! ## A108432.P12242377720354299219

`A108431(A000217(n))^A178489(n)`
-/

namespace A108432.P12242377720354299219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108431 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A108432.P12242377720354299219

/-! ## A108432.P5858310158367817665

`A108431(A000217(n))+A000038(A316265(n+1))`
-/

namespace A108432.P5858310158367817665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108431 (A000217 n).toNat + A000038 (A316265 (n + 1)).toNat

end

end A108432.P5858310158367817665

/-!
# A108434: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) and have no hills of the form ud (a hill is either a ud or a Udd starting at the x-axis).

The programs for A108434, there is no canonical definition to state claims against.
-/

/-! ## A108434.P11266667270197846173

`A108433(∑[n])`
-/

namespace A108434.P11266667270197846173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108434.P11266667270197846173

/-! ## A108434.P3997875421012535166

`or(1, A108433(A000217(n)))`
-/

namespace A108434.P3997875421012535166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108433 (A000217 n).toNat)

end

end A108434.P3997875421012535166

/-! ## A108434.P18354339981628364857

`gcd(A000038(n), A108433(A000217(n)))`
-/

namespace A108434.P18354339981628364857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108433 (A000217 n).toNat)

end

end A108434.P18354339981628364857

/-! ## A108434.P16848103155678442854

`A108433(A000217(n))+A000038(A005408(n))`
-/

namespace A108434.P16848103155678442854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108433 (A000217 n).toNat + A000038 (A005408 n).toNat

end

end A108434.P16848103155678442854

/-! ## A108434.P10061023037065518137

`A108433(A000217(n))/A001221(A051698(n))`
-/

namespace A108434.P10061023037065518137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108433 (A000217 n).toNat : ℚ) / (A001221 (A051698 n).toNat : ℚ)

end

end A108434.P10061023037065518137

/-! ## A108434.P2049922780613752983

`A108433(A000217(n))%A108424(n+1)`
-/

namespace A108434.P2049922780613752983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108433 (A000217 n).toNat) (A108424 (n + 1))

end

end A108434.P2049922780613752983

/-! ## A108434.P13615277175850446970

`A108433(A000217(n))+A000038(A035607(n))`
-/

namespace A108434.P13615277175850446970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108433 (A000217 n).toNat + A000038 (A035607 n).toNat

end

end A108434.P13615277175850446970

/-! ## A108434.P13673332710281705992

`A108433(A000217(n))^A178489(n)`
-/

namespace A108434.P13673332710281705992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108433 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A108434.P13673332710281705992

/-!
# A108436: Number of returns to the x-axis in all paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1).

The programs for A108436, there is no canonical definition to state claims against.
-/

/-! ## A108436.P9399225811866854077

`A032349(n+2)-A027307(n+1)`
-/

namespace A108436.P9399225811866854077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 2) - A027307 (n + 1)

end

end A108436.P9399225811866854077

/-! ## A108436.P5591333668890409462

`A032349(n+2)-2*A034015(n)`
-/

namespace A108436.P5591333668890409462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 2) - 2 * A034015 n

end

end A108436.P5591333668890409462

/-! ## A108436.P7548785114358638870

`A032349(n+2)-record[A110682(n+1)]`
-/

namespace A108436.P7548785114358638870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108436.P7548785114358638870

/-! ## A108436.P14025827223055762608

`record[A257532(n+2)]-A027307(n+1)`
-/

namespace A108436.P14025827223055762608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257532 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A027307 (n + 1)

end

end A108436.P14025827223055762608

/-! ## A108436.P9387128253234193990

`A032349(n+2)-A084078(2*n+1)`
-/

namespace A108436.P9387128253234193990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 2) - A084078 (2 * n + 1)

end

end A108436.P9387128253234193990

/-! ## A108436.P13190533411559061297

`A108424(n+2)-2*A027307(n+1)`
-/

namespace A108436.P13190533411559061297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108424 (n + 2) - 2 * A027307 (n + 1)

end

end A108436.P13190533411559061297

/-! ## A108436.P16276947411617599942

`2*(A344553(n+2)-A027307(n+1))`
-/

namespace A108436.P16276947411617599942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A344553 (n + 2) - A027307 (n + 1))

end

end A108436.P16276947411617599942

/-! ## A108436.P1346738831746156295

`2*A032349(n+2)-A108424(n+2)`
-/

namespace A108436.P1346738831746156295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032349 (n + 2) - A108424 (n + 2)

end

end A108436.P1346738831746156295

/-! ## A108436.P7279574620533581781

`A108424(n+2)-2*A084078(2*n+1)`
-/

namespace A108436.P7279574620533581781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108424 (n + 2) - 2 * A084078 (2 * n + 1)

end

end A108436.P7279574620533581781

/-! ## A108436.P239914084651127461

`A032349(n+2)-(A033296(n+1)+A032349(n+1))`
-/

namespace A108436.P239914084651127461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 2) - (A033296 (n + 1) + A032349 (n + 1))

end

end A108436.P239914084651127461

/-!
# A108439: Triangle read by rows: T(n,k) is number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1) and having abscissa of first return equal to 3k.

The programs for A108439, there is no canonical definition to state claims against.
-/

/-! ## A108439.P12485467405163948163

`A025581(A022635(n))+A000010(A027379(n))`
-/

namespace A108439.P12485467405163948163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A022635 n).toNat + A000010 (A027379 n).toNat

end

end A108439.P12485467405163948163

/-!
# A108442: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1) and having only u steps among the steps leading to the first d step.

The programs for A108442, there is no canonical definition to state claims against.
-/

/-! ## A108442.P10665618664256302108

`A108441(∑[n])`
-/

namespace A108442.P10665618664256302108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108442.P10665618664256302108

/-! ## A108442.P10799718743506058681

`or(1, A108441(A000217(n)))`
-/

namespace A108442.P10799718743506058681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108441 (A000217 n).toNat)

end

end A108442.P10799718743506058681

/-! ## A108442.P13216015567920030913

`lcm(A097807(n), A108441(A000217(n)))`
-/

namespace A108442.P13216015567920030913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A108441 (A000217 n).toNat)

end

end A108442.P13216015567920030913

/-! ## A108442.P10378892806056127410

`A108441(A000096(n))*A108441(A000217(n))`
-/

namespace A108442.P10378892806056127410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108441 (A000096 n).toNat * A108441 (A000217 n).toNat

end

end A108442.P10378892806056127410

/-! ## A108442.P3920442688993946400

`A108441(A000217(n))%A108450(n+1)`
-/

namespace A108442.P3920442688993946400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108441 (A000217 n).toNat) (A108450 (n + 1))

end

end A108442.P3920442688993946400

/-!
# A108447: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) and have no peaks of the form ud.

The programs for A108447, there is no canonical definition to state claims against.
-/

/-! ## A108447.P3403416713882788872

`A336706(∑[n+4]+2)`
-/

namespace A108447.P3403416713882788872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336706 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A108447.P3403416713882788872

/-! ## A108447.P9602064043096939714

`A118340(∑[4*n])`
-/

namespace A108447.P9602064043096939714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108447.P9602064043096939714

/-! ## A108447.P18114905943654102377

`A118340(A046092(n))^(n²%(n+1))`
-/

namespace A108447.P18114905943654102377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 (A046092 n).toNat ^ (n ^ 2 % (n + 1))

end

end A108447.P18114905943654102377

/-! ## A108447.P644328618546619953

`A118340(A046092(n))%(A169604(2*n)+1)`
-/

namespace A108447.P644328618546619953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118340 (A046092 n).toNat) (A169604 (2 * n) + 1)

end

end A108447.P644328618546619953

/-! ## A108447.P9605563869224099747

`A118340(A046092(n))^A001221(A008578(n+1))`
-/

namespace A108447.P9605563869224099747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118340 (A046092 n).toNat : ℚ) ^ (A001221 (A008578 (n + 1)).toNat : ℤ)

end

end A108447.P9605563869224099747

/-! ## A108447.P18286071249416966921

`A118343(∑[n+2]-1)`
-/

namespace A108447.P18286071249416966921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118343 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A108447.P18286071249416966921

/-!
# A108448: Number of peaks of the form ud in all paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1).

The programs for A108448, there is no canonical definition to state claims against.
-/

/-! ## A108448.P7379920820614281584

`A026000(n)+n*A027307(n)`
-/

namespace A108448.P7379920820614281584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026000 n + (n : ℤ) * A027307 n

end

end A108448.P7379920820614281584

/-! ## A108448.P3421788473648989903

`A216182(∑[4*n])`
-/

namespace A108448.P3421788473648989903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108448.P3421788473648989903

/-! ## A108448.P14545543215556867642

`A210753((n+1)²+n²)`
-/

namespace A108448.P14545543215556867642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210753 ((n + 1) ^ 2 + n ^ 2)

end

end A108448.P14545543215556867642

/-! ## A108448.P13546576824532889235

`A388052(∑[n+3])`
-/

namespace A108448.P13546576824532889235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108448.P13546576824532889235

/-! ## A108448.P4635054240278019771

`A008288(∑[a(n-1)+9])` with `a(0)=1`
-/

namespace A108448.P4635054240278019771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108448.P4635054240278019771

/-!
# A108449: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) and having no pyramids (a pyramid is a sequence u^pd^p or U^pd^(2p) for some positive integer p, starting at the x-axis).

The programs for A108449, there is no canonical definition to state claims against.
-/

/-! ## A108449.P13131754491808588760

`A108445(∑[n])`
-/

namespace A108449.P13131754491808588760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108445 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108449.P13131754491808588760

/-! ## A108449.P4480569263357090503

`and(record[A108445(n)], -3)`
-/

namespace A108449.P4480569263357090503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (-3)

end

end A108449.P4480569263357090503

/-! ## A108449.P11682177061520688901

`and(-1, A108445(A000217(n)))`
-/

namespace A108449.P11682177061520688901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A108445 (A000217 n).toNat)

end

end A108449.P11682177061520688901

/-! ## A108449.P12554845564399927178

`record[A108445(n)]*A060576(n)`
-/

namespace A108449.P12554845564399927178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A060576 n

end

end A108449.P12554845564399927178

/-! ## A108449.P9172800523586944747

`lcm(record[A108445(n)], A103221(n))`
-/

namespace A108449.P9172800523586944747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A103221 n)

end

end A108449.P9172800523586944747

/-!
# A108450: Number of pyramids in all paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1), U=(1,2), or d=(1,-1) (a pyramid is a sequence u^pd^p or U^pd^(2p) for some positive integer p, starting at the x-axis).

The programs for A108450, there is no canonical definition to state claims against.
-/

/-! ## A108450.P17224390690395822786

`2*A108453(n+1)`
-/

namespace A108450.P17224390690395822786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108453 (n + 1)

end

end A108450.P17224390690395822786

/-! ## A108450.P6251207375269230397

`∑[2*A032349(n+1)]`
-/

namespace A108450.P6251207375269230397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108450.P6251207375269230397

/-! ## A108450.P3524024669261023486

`∑[A121703(2*(n+1))]`
-/

namespace A108450.P3524024669261023486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121703 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108450.P3524024669261023486

/-! ## A108450.P10122705946973923166

`∑[2*A084078(2*n)]`
-/

namespace A108450.P10122705946973923166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084078 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108450.P10122705946973923166

/-! ## A108450.P11676348403990705868

`∑[record[2*A257532(n+1)]]`
-/

namespace A108450.P11676348403990705868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108450.P11676348403990705868

/-! ## A108450.P3917188734846372694

`∑[2*A137842(2*n+1)]`
-/

namespace A108450.P3917188734846372694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137842 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108450.P3917188734846372694

/-! ## A108450.P4473310120993012471

`2*∑[A110682(∑[n+1]+1)]`
-/

namespace A108450.P4473310120993012471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108450.P4473310120993012471

/-! ## A108450.P11891022109783538029

`lcm(2, A108453(A000027(n+1)))`
-/

namespace A108450.P11891022109783538029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A108453 (A000027 (n + 1)).toNat)

end

end A108450.P11891022109783538029

/-! ## A108450.P3370983501702408904

`∑[2*(A108424(n+1)-A027307(n))]`
-/

namespace A108450.P3370983501702408904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108424 (n + 1) - A027307 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108450.P3370983501702408904

/-! ## A108450.P9972951034848905533

`A108453(A000027(n+1))+A108453(n+1)`
-/

namespace A108450.P9972951034848905533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108453 (A000027 (n + 1)).toNat + A108453 (n + 1)

end

end A108450.P9972951034848905533

/-!
# A108452: Number of paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) and having no pyramids of the first kind (a pyramid of the first kind is a sequence u^pd^p for some positive integer p, starting at the x-axis).

The programs for A108452, there is no canonical definition to state claims against.
-/

/-! ## A108452.P9569474072238329271

`A108451(∑[n])`
-/

namespace A108452.P9569474072238329271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108452.P9569474072238329271

/-! ## A108452.P2387491426506736485

`and(-1, A108451(A000217(n)))`
-/

namespace A108452.P2387491426506736485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A108451 (A000217 n).toNat)

end

end A108452.P2387491426506736485

/-! ## A108452.P3549480230912486784

`lcm(A108451((n²+n)/2), A280863(n))`
-/

namespace A108452.P3549480230912486784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108451 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A280863 n)

end

end A108452.P3549480230912486784

/-! ## A108452.P3026595018654604561

`A138471(n)+A108451(A000217(n))`
-/

namespace A108452.P3026595018654604561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n + A108451 (A000217 n).toNat

end

end A108452.P3026595018654604561

/-! ## A108452.P9382045127294487301

`A151795(n)+A108451(A000217(n))`
-/

namespace A108452.P9382045127294487301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 n + A108451 (A000217 n).toNat

end

end A108452.P9382045127294487301

/-!
# A108453: Number of pyramids of the first kind in all paths from (0,0) to (3n,0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u=(2,1),U=(1,2), or d=(1,-1) (a pyramid of the first kind is a sequence u^pd^p for some positive integer p, starting at the x-axis).

The programs for A108453, there is no canonical definition to state claims against.
-/

/-! ## A108453.P370633737775704712

`∑[A032349(n+1)]`
-/

namespace A108453.P370633737775704712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P370633737775704712

/-! ## A108453.P4952200432599709824

`∑[A084078(2*n)]`
-/

namespace A108453.P4952200432599709824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084078 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P4952200432599709824

/-! ## A108453.P7399249888076976272

`∑[A137842(Δ[n²])]`
-/

namespace A108453.P7399249888076976272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P7399249888076976272

/-! ## A108453.P9633981924852700152

`A108450(n+1)/2`
-/

namespace A108453.P9633981924852700152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108450 (n + 1) : ℚ) / 2

end

end A108453.P9633981924852700152

/-! ## A108453.P14200655713290756117

`∑[A257532(∑[n]+1)]`
-/

namespace A108453.P14200655713290756117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257532 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P14200655713290756117

/-! ## A108453.P14919319300587834505

`∑[A110682(∑[n+1]+1)]`
-/

namespace A108453.P14919319300587834505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P14919319300587834505

/-! ## A108453.P15815834210035853785

`∑[A108424(n+1)-A027307(n)]`
-/

namespace A108453.P15815834210035853785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108424 (n + 1) - A027307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P15815834210035853785

/-! ## A108453.P3936130275397035006

`∑[2*A344553(n+1)-A027307(n)]`
-/

namespace A108453.P3936130275397035006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344553 (n + 1) - A027307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108453.P3936130275397035006

/-!
# A108454: Numbers n such that both 151*n + 149 and 149*n + 151 are primes.

The programs for A108454, there is no canonical definition to state claims against.
-/

/-! ## A108454.P13724147821489172820

`∩[A108029(n+1), A108030(n+2)]`
-/

namespace A108454.P13724147821489172820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108454.P13724147821489172820

/-!
# A108455: Table read by antidiagonals: T(n,k) = number of factorizations of (n,k) into any number of pairs (i,j) with i > 0, j > 0 (and if i=1 then j=1).

The programs for A108455, there is no canonical definition to state claims against.
-/

/-! ## A108455.P13232165098103253298

`A348157(n+1)+A277165(A277198(n))`
-/

namespace A108455.P13232165098103253298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348157 (n + 1) + A277165 (A277198 n).toNat

end

end A108455.P13232165098103253298

/-! ## A108455.P10333462091985816027

`or(A196096(A034514(n+1)), A348157(n+1))`
-/

namespace A108455.P10333462091985816027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196096 (A034514 (n + 1)).toNat) (A348157 (n + 1))

end

end A108455.P10333462091985816027

/-! ## A108455.P13834521981637799274

`A348157(n+1)+A196096(A196096(n)+A034514(n+1))`
-/

namespace A108455.P13834521981637799274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348157 (n + 1) + A196096 (A196096 n + A034514 (n + 1)).toNat

end

end A108455.P13834521981637799274

/-! ## A108455.P9702563890085096119

`A348157(n+1)+A185284(A064916(n+2))`
-/

namespace A108455.P9702563890085096119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348157 (n + 1) + A185284 (A064916 (n + 2)).toNat

end

end A108455.P9702563890085096119

/-! ## A108455.P15225478904903272814

`or(A000035(A034559(n+1)), A348157(n+1))`
-/

namespace A108455.P15225478904903272814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A034559 (n + 1)).toNat) (A348157 (n + 1))

end

end A108455.P15225478904903272814

/-!
# A108456: Table read by antidiagonals: T(n,k) = number of partitions of (n,k) into pairs (i,j) with i>0, j>=0.

The programs for A108456, there is no canonical definition to state claims against.
-/

/-! ## A108456.P15142904812819003754

`A320439(A175840(n))`
-/

namespace A108456.P15142904812819003754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A175840 n).toNat

end

end A108456.P15142904812819003754

/-! ## A108456.P13833766609928943291

`A349906(A175840(2*n-n))`
-/

namespace A108456.P13833766609928943291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A175840 (2 * n - n)).toNat

end

end A108456.P13833766609928943291

/-! ## A108456.P15606556821642479234

`A320439(A036561(A061579(n)))`
-/

namespace A108456.P15606556821642479234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A036561 (A061579 n).toNat).toNat

end

end A108456.P15606556821642479234

/-! ## A108456.P1499510060088301448

`A349906(A175840(n)+A000007(n))`
-/

namespace A108456.P1499510060088301448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A175840 n + A000007 n).toNat

end

end A108456.P1499510060088301448

/-! ## A108456.P746526333197829729

`A349906(A175840(n))%A000032(n)`
-/

namespace A108456.P746526333197829729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349906 (A175840 n).toNat) (A000032 n)

end

end A108456.P746526333197829729

/-! ## A108456.P7395713338641703614

`∑{d}[A349906(A175840(n)), A000010(#)]`
-/

namespace A108456.P7395713338641703614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A175840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A108456.P7395713338641703614

/-! ## A108456.P9166797870256479066

`A007318(∑[n])*A349906(A175840(n))`
-/

namespace A108456.P9166797870256479066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A349906 (A175840 n).toNat

end

end A108456.P9166797870256479066

/-! ## A108456.P16990680229237202738

`A349906(A175840(n))^A007318(C(2, n))`
-/

namespace A108456.P16990680229237202738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349906 (A175840 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A108456.P16990680229237202738

/-! ## A108456.P3914676196535981232

`A000040(n+10)%2*A349906(A175840(n))`
-/

namespace A108456.P3914676196535981232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 10)) 2 * A349906 (A175840 n).toNat

end

end A108456.P3914676196535981232

/-! ## A108456.P12223428702426625945

`A000045(gcd(n, n+1))*A349906(A175840(n))`
-/

namespace A108456.P12223428702426625945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A349906 (A175840 n).toNat

end

end A108456.P12223428702426625945

/-!
# A108457: Number of partitions of (n,n) into pairs (i,j) with i>0, j>=0.

The programs for A108457, there is no canonical definition to state claims against.
-/

/-! ## A108457.P13260114804948991455

`A091438(A004277(n²))`
-/

namespace A108457.P13260114804948991455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (A004277 (n ^ 2)).toNat

end

end A108457.P13260114804948991455

/-! ## A108457.P7482242986145996716

`A091438(A028310(2*n²))`
-/

namespace A108457.P7482242986145996716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (A028310 (2 * n ^ 2)).toNat

end

end A108457.P7482242986145996716

/-! ## A108457.P9136322375642980040

`A091438(n²+A028310(n²))`
-/

namespace A108457.P9136322375642980040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A108457.P9136322375642980040

/-! ## A108457.P13043475356623579357

`A091438(A007607(A028310(n²)))`
-/

namespace A108457.P13043475356623579357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (A007607 (A028310 (n ^ 2)).toNat).toNat

end

end A108457.P13043475356623579357

/-! ## A108457.P1867699189687194355

`A091438(A028310(n)+A000384(n))`
-/

namespace A108457.P1867699189687194355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (A028310 n + A000384 n).toNat

end

end A108457.P1867699189687194355

/-! ## A108457.P2114883977031573736

`A091438(A004277(n)*A028310(n))`
-/

namespace A108457.P2114883977031573736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 (A004277 n * A028310 n).toNat

end

end A108457.P2114883977031573736

/-! ## A108457.P6257239562963384388

`A091438((A004277(n)-n)*A004277(n))`
-/

namespace A108457.P6257239562963384388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091438 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A108457.P6257239562963384388

/-!
# A108458: Triangle read by rows: T(n,k) is the number of set partitions of {1,2,...,n} in which the last block is the singleton {k}, 1<=k<=n; the blocks are ordered with increasing least elements.

The programs for A108458, there is no canonical definition to state claims against.
-/

/-! ## A108458.P137685123038339112

`A143396(n)/A007318(n)`
-/

namespace A108458.P137685123038339112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (A007318 n : ℚ)

end

end A108458.P137685123038339112

/-! ## A108458.P13983938599667126970

`A143396(n)/A091918(n)`
-/

namespace A108458.P13983938599667126970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (A091918 n : ℚ)

end

end A108458.P13983938599667126970

/-! ## A108458.P17516396514105040624

`A143396(n)/A132749(n)`
-/

namespace A108458.P17516396514105040624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (A132749 n : ℚ)

end

end A108458.P17516396514105040624

/-! ## A108458.P3512684631088783031

`A143396(n)/A135227(n)`
-/

namespace A108458.P3512684631088783031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (A135227 n : ℚ)

end

end A108458.P3512684631088783031

/-! ## A108458.P5217404471779986025

`A143396(n)/A183154(n)`
-/

namespace A108458.P5217404471779986025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (A183154 n : ℚ)

end

end A108458.P5217404471779986025

/-! ## A108458.P8856671856568827104

`abs(A143396(n)/A117440(n))`
-/

namespace A108458.P8856671856568827104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143396 n : ℚ) / (A117440 n : ℚ)|

end

end A108458.P8856671856568827104

/-! ## A108458.P8414800761904105621

`A143396(n)/sqrt(A008459(n))`
-/

namespace A108458.P8414800761904105621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A108458.P8414800761904105621

/-! ## A108458.P3045372418213966546

`A143396(n)/Δ[A102363(n)]`
-/

namespace A108458.P3045372418213966546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A108458.P3045372418213966546

/-! ## A108458.P6208235619253664432

`A143396(n)/(A014473(n)+1)`
-/

namespace A108458.P6208235619253664432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143396 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A108458.P6208235619253664432

/-!
# A108459: Number of labeled partitions of (n,n) into pairs (i,j).

The programs for A108459, there is no canonical definition to state claims against.
-/

/-! ## A108459.P896817179943858064

`A124421(2*n)`
-/

namespace A108459.P896817179943858064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124421 (2 * n)

end

end A108459.P896817179943858064

/-! ## A108459.P13318401140534589871

`A124423(2*n)`
-/

namespace A108459.P13318401140534589871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124423 (2 * n)

end

end A108459.P13318401140534589871

/-! ## A108459.P15820492323559019158

`A124422(∑[2*n])`
-/

namespace A108459.P15820492323559019158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108459.P15820492323559019158

/-! ## A108459.P8047862495049112586

`A124420(n*(n+2))`
-/

namespace A108459.P8047862495049112586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124420 (n * (n + 2))

end

end A108459.P8047862495049112586

/-! ## A108459.P15117598693090142008

`A108458((n+1)²+n²)`
-/

namespace A108459.P15117598693090142008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 ((n + 1) ^ 2 + n ^ 2)

end

end A108459.P15117598693090142008

/-!
# A108460: a(n) = A051707(A025487).

The programs for A108460, there is no canonical definition to state claims against.
-/

/-! ## A108460.P17493351921575152205

`A051707(A025487(n+1))`
-/

namespace A108460.P17493351921575152205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (A025487 (n + 1)).toNat

end

end A108460.P17493351921575152205

/-! ## A108460.P2599244340654400242

`A051707(A333964(n+1))`
-/

namespace A108460.P2599244340654400242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (A333964 (n + 1)).toNat

end

end A108460.P2599244340654400242

/-! ## A108460.P8710336828727374926

`A051707(record[A046523(n+1)])`
-/

namespace A108460.P8710336828727374926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108460.P8710336828727374926

/-! ## A108460.P4879819303089460834

`A051707(record[A329899(n+1)])`
-/

namespace A108460.P4879819303089460834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108460.P4879819303089460834

/-! ## A108460.P3302842943908894950

`A051707(record[A051466(n+2)])`
-/

namespace A108460.P3302842943908894950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108460.P3302842943908894950

/-!
# A108461: Table read by antidiagonals: T(n,k) = number of factorizations of (n,k) into pairs (i,j) with i,j>=1, not both 1.

The programs for A108461, there is no canonical definition to state claims against.
-/

/-! ## A108461.P160842322229937032

`A001055(A308503(n+1))`
-/

namespace A108461.P160842322229937032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A308503 (n + 1)).toNat

end

end A108461.P160842322229937032

/-! ## A108461.P9320206722465211906

`∑{d}[A308503(n+1), A050370(#)]`
-/

namespace A108461.P9320206722465211906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A108461.P9320206722465211906

/-! ## A108461.P18197573413063788063

`A001055(A319523(n+1))`
-/

namespace A108461.P18197573413063788063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A319523 (n + 1)).toNat

end

end A108461.P18197573413063788063

/-! ## A108461.P13649247160781254001

`A347438(A319523(n+1)²)`
-/

namespace A108461.P13649247160781254001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A319523 (n + 1) ^ 2).toNat

end

end A108461.P13649247160781254001

/-! ## A108461.P769325077434807889

`A347438(A319523(n+1)^2)`
-/

namespace A108461.P769325077434807889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A319523 (n + 1) ^ 2).toNat

end

end A108461.P769325077434807889

/-! ## A108461.P18250838831668875496

`∑{d}[A319523(n+1), A050370(#)]`
-/

namespace A108461.P18250838831668875496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A108461.P18250838831668875496

/-!
# A108462: Number of factorizations of (n,n) into pairs (i,j) with i,j >= 1, not both 1.

The programs for A108462, there is no canonical definition to state claims against.
-/

/-! ## A108462.P637638450405489826

`A108463(A101296(n+1))`
-/

namespace A108462.P637638450405489826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108463 (A101296 (n + 1)).toNat

end

end A108462.P637638450405489826

/-! ## A108462.P1342331691437442386

`A318284(A181819(n+1)²)`
-/

namespace A108462.P1342331691437442386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1) ^ 2).toNat

end

end A108462.P1342331691437442386

/-! ## A108462.P17025200941006041890

`A318284(A181819(n+1)^2)`
-/

namespace A108462.P17025200941006041890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1) ^ 2).toNat

end

end A108462.P17025200941006041890

/-! ## A108462.P1411909039533472099

`A318284(∏{e}[n+1, A000040(#)]²)`
-/

namespace A108462.P1411909039533472099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 ((∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)) ^ 2).toNat

end

end A108462.P1411909039533472099

/-! ## A108462.P17025927798580972329

`A318284(∏{e}[n+1, A000040(#)]^2)`
-/

namespace A108462.P17025927798580972329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 ((∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)) ^ 2).toNat

end

end A108462.P17025927798580972329

/-! ## A108462.P7453460035408607411

`A318284(∏{e}[n+1, A109611(#)]^2)`
-/

namespace A108462.P7453460035408607411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 ((∏ p ∈ Nat.primeFactors (f1 n), A109611 (Nat.factorization (f1 n) p)) ^ 2).toNat

end

end A108462.P7453460035408607411

/-! ## A108462.P14860195760647080818

`A318284(∏{p}[n+1, A000040(val(n+1, #))]²)`
-/

namespace A108462.P14860195760647080818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 ((∏ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.valuation (n + 1) p)) ^ 2).toNat

end

end A108462.P14860195760647080818

/-! ## A108462.P10487366030110956629

`A318284(∏{e}[A064988(n+1), A001248(#)])`
-/

namespace A108462.P10487366030110956629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001248 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A108462.P10487366030110956629

/-! ## A108462.P6926983071106628748

`A318284(A181819(n+1)*A181819(n+1))`
-/

namespace A108462.P6926983071106628748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1) * A181819 (n + 1)).toNat

end

end A108462.P6926983071106628748

/-!
# A108463: a(n) = A108462(A025487(n)).

The programs for A108463, there is no canonical definition to state claims against.
-/

/-! ## A108463.P5422354461170270080

`A108462(A025487(n+1))`
-/

namespace A108463.P5422354461170270080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108462 (A025487 (n + 1)).toNat

end

end A108463.P5422354461170270080

/-! ## A108463.P49983980472645527

`A108462(A333964(n+1))`
-/

namespace A108463.P49983980472645527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108462 (A333964 (n + 1)).toNat

end

end A108463.P49983980472645527

/-! ## A108463.P10014867091076253433

`A108462(record[A046523(n+1)])`
-/

namespace A108463.P10014867091076253433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108463.P10014867091076253433

/-! ## A108463.P11554407566168066310

`A108462(record[A083260(n+1)])`
-/

namespace A108463.P11554407566168066310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108463.P11554407566168066310

/-! ## A108463.P5911556987847011992

`A108462(record[A328479(n+1)])`
-/

namespace A108463.P5911556987847011992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108463.P5911556987847011992

/-!
# A108464: a(n) = A057567(A025487(n)).

The programs for A108464, there is no canonical definition to state claims against.
-/

/-! ## A108464.P8666633943826364513

`A318284(2*A181820(n+1))`
-/

namespace A108464.P8666633943826364513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (2 * A181820 (n + 1)).toNat

end

end A108464.P8666633943826364513

/-! ## A108464.P1192490637020375022

`A057567(A025487(n+1))`
-/

namespace A108464.P1192490637020375022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (A025487 (n + 1)).toNat

end

end A108464.P1192490637020375022

/-! ## A108464.P3111438095661246523

`A057567(record[A046523(n+1)])`
-/

namespace A108464.P3111438095661246523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108464.P3111438095661246523

/-! ## A108464.P12162252237298531412

`A057567(record[A328479(n+1)])`
-/

namespace A108464.P12162252237298531412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108464.P12162252237298531412

/-! ## A108464.P5869305905757968043

`A057567(record[A329899(n+1)])`
-/

namespace A108464.P5869305905757968043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108464.P5869305905757968043

/-! ## A108464.P257495090482186082

`A057567(record[A051466(n+2)])`
-/

namespace A108464.P257495090482186082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108464.P257495090482186082

/-! ## A108464.P13948192245398000686

`∑{d}[A025487(n+1), A001055(#)]`
-/

namespace A108464.P13948192245398000686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001055 d

end

end A108464.P13948192245398000686

/-!
# A108465: Table read by antidiagonals: T(n,k) (n>=2) = number of factorizations of (n,k) into pairs (i,j) with i,j>1.

The programs for A108465, there is no canonical definition to state claims against.
-/

/-! ## A108465.P8393589354107029435

`gcd(A139038(n), A350391(n))`
-/

namespace A108465.P8393589354107029435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139038 n) (A350391 n)

end

end A108465.P8393589354107029435

/-! ## A108465.P2977544021362797674

`A049419(gcd(A316622(n), A349039(n)))`
-/

namespace A108465.P2977544021362797674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (Int.gcd (A316622 n) (A349039 n))

end

end A108465.P2977544021362797674

/-! ## A108465.P10104909647101196859

`A051064(A359887(n+1)+A164288(n+1))`
-/

namespace A108465.P10104909647101196859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A359887 (n + 1) + A164288 (n + 1)).toNat

end

end A108465.P10104909647101196859

/-! ## A108465.P2177616282525078476

`gcd(A229417(n+1), A261461(A261430(n)))`
-/

namespace A108465.P2177616282525078476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229417 (n + 1)) (A261461 (A261430 n).toNat)

end

end A108465.P2177616282525078476

/-! ## A108465.P2844646288557403259

`A337259(A119326(n)^A372287(2*(n+2)))`
-/

namespace A108465.P2844646288557403259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 (SequenceMachineLib.roundAway ((A119326 n : ℚ) ^ (A372287 (2 * (n + 2)) : ℤ))).toNat

end

end A108465.P2844646288557403259

/-!
# A108466: Number of factorizations of (n,n) into pairs (i,j) with i,j>1.

The programs for A108466, there is no canonical definition to state claims against.
-/

/-! ## A108466.P11682612238594615593

`A108467(A101296(n+1)-1)`
-/

namespace A108466.P11682612238594615593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (A101296 (n + 1) - 1).toNat

end

end A108466.P11682612238594615593

/-! ## A108466.P5763678283634812208

`A303639(A343390(n+1))`
-/

namespace A108466.P5763678283634812208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303639 (A343390 (n + 1)).toNat

end

end A108466.P5763678283634812208

/-! ## A108466.P14318032754443539196

`A038548(A330972(A347464(n+1)))`
-/

namespace A108466.P14318032754443539196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A330972 (A347464 (n + 1)).toNat).toNat

end

end A108466.P14318032754443539196

/-! ## A108466.P1479517605071018547

`A342496(A342520(A057567(n+1)))`
-/

namespace A108466.P1479517605071018547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 (A342520 (A057567 (n + 1)).toNat).toNat

end

end A108466.P1479517605071018547

/-!
# A108467: a(n) = A108466(A025487).

The programs for A108467, there is no canonical definition to state claims against.
-/

/-! ## A108467.P5878287878745479817

`A108466(A025487(n+1))`
-/

namespace A108467.P5878287878745479817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108466 (A025487 (n + 1)).toNat

end

end A108467.P5878287878745479817

/-! ## A108467.P13221441022351926686

`A108466(A279537(n+1))`
-/

namespace A108467.P13221441022351926686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108466 (A279537 (n + 1)).toNat

end

end A108467.P13221441022351926686

/-! ## A108467.P8024630384781993979

`A108466(A333964(n+1))`
-/

namespace A108467.P8024630384781993979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108466 (A333964 (n + 1)).toNat

end

end A108467.P8024630384781993979

/-! ## A108467.P5197517641448326690

`A108466(A385722(n+1))`
-/

namespace A108467.P5197517641448326690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108466 (A385722 (n + 1)).toNat

end

end A108467.P5197517641448326690

/-! ## A108467.P6845987800768527253

`A108466(record[A046523(n+1)])`
-/

namespace A108467.P6845987800768527253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108467.P6845987800768527253

/-!
# A108468: Numbers k such that (1/9)*(-1 + 10^k) + k is prime.

The programs for A108468, there is no canonical definition to state claims against.
-/

/-! ## A108468.P12338851891195031717

`A306017(n)+A061395(A345749(n+1))`
-/

namespace A108468.P12338851891195031717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306017 n + A061395 (A345749 (n + 1)).toNat

end

end A108468.P12338851891195031717

/-! ## A108468.P8759996760565374240

`A066452(A001685(n)*A260056(3*n+4))`
-/

namespace A108468.P8759996760565374240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066452 (A001685 n * A260056 (3 * n + 4)).toNat

end

end A108468.P8759996760565374240

/-!
# A108469: Main diagonal of A090806.

The programs for A108469, there is no canonical definition to state claims against.
-/

/-! ## A108469.P9792875076995772467

`A108467(eq[1, A050329(n+1)])`
-/

namespace A108469.P9792875076995772467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108469.P9792875076995772467

/-! ## A108469.P14766497614676057115

`A108467(eq[1, A181816(n+1)])`
-/

namespace A108469.P14766497614676057115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108469.P14766497614676057115

/-! ## A108469.P1639736256657561762

`A108467(lt[A337475(n+1), 1])`
-/

namespace A108469.P1639736256657561762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337475 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A108469.P1639736256657561762

/-! ## A108469.P5386643506231105947

`A108467(lt[A050329(n+1), 2])`
-/

namespace A108469.P5386643506231105947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A108469.P5386643506231105947

/-! ## A108469.P11134171288670685440

`A108467(lt[A061394(n+1), 2])`
-/

namespace A108469.P11134171288670685440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A108469.P11134171288670685440

/-!
# A108470: Table read by antidiagonals: T(n,k) = number of labeled partitions of (n,k) into pairs (i,j).

The programs for A108470, there is no canonical definition to state claims against.
-/

/-! ## A108470.P5107358905230236584

`A005408(A299904(n))-A338333(A174544(n)+5)`
-/

namespace A108470.P5107358905230236584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A299904 n).toNat - A338333 (A174544 n + 5).toNat

end

end A108470.P5107358905230236584

/-! ## A108470.P988221258985257380

`A005408(A299904(n))-A145196(2^A145153(n))`
-/

namespace A108470.P988221258985257380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A299904 n).toNat - A145196 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A145153 n : ℤ))).toNat

end

end A108470.P988221258985257380

/-! ## A108470.P10900536676785576014

`A005408(A299904(n))-50%A129163(A270061(n))`
-/

namespace A108470.P10900536676785576014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A299904 n).toNat - Int.tmod 50 (A129163 (A270061 n).toNat)

end

end A108470.P10900536676785576014

/-! ## A108470.P3401761205103669807

`A005408(A099594(n)-1)-A338333(A174544(n)+5)`
-/

namespace A108470.P3401761205103669807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A099594 n - 1).toNat - A338333 (A174544 n + 5).toNat

end

end A108470.P3401761205103669807

/-! ## A108470.P3956688488471780152

`A005408(A099594(n)-1)-A145196(2^A145153(n))`
-/

namespace A108470.P3956688488471780152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A099594 n - 1).toNat - A145196 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A145153 n : ℤ))).toNat

end

end A108470.P3956688488471780152

/-!
# A108473: Numbers n such that 4*prime(n)+prime(n+1) is composite.

The programs for A108473, there is no canonical definition to state claims against.
-/

/-! ## A108473.P14902679699117355599

`comp[A108472(n+1)-1]+1`
-/

namespace A108473.P14902679699117355599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108472 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A108473.P14902679699117355599

/-! ## A108473.P14705791002233996495

`eq[char[A108472(n+1)], A000007(n)]`
-/

namespace A108473.P14705791002233996495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108473.P14705791002233996495

/-! ## A108473.P3807355921896756294

`eq[char[A108472(n+1)], A000038(n)]`
-/

namespace A108473.P3807355921896756294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108473.P3807355921896756294

/-! ## A108473.P4619888042473285356

`eq[char[A108472(n+1)], A127802(n²)]`
-/

namespace A108473.P4619888042473285356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108473.P4619888042473285356

/-! ## A108473.P4082832523422637864

`eq[char[A108472(n+1)], A019590(n+2)]`
-/

namespace A108473.P4082832523422637864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108473.P4082832523422637864

/-! ## A108473.P2235707225439842705

`eq[char[A108472(n+1)], A010051(2*(n+1))]`
-/

namespace A108473.P2235707225439842705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A108473.P2235707225439842705

/-!
# A108474: Expansion of 1/((1-2*x)*(1+4*x^2)).

The programs for A108474, the canonical program `A108474.P11631832210094604205` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108474 has offset 0).

The definition of A108474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108474.P11631832210094604205

`2*a(n-1)-4*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108474

/-- `2*a(n-1)-4*a(n-2)+8*a(n-3)` -/
def P11631832210094604205.Spec : Prop :=
  ∀ n, P11631832210094604205.a n = A108474 n

theorem P11631832210094604205.correct : P11631832210094604205.Spec := by
  intro n
  simp only [A108474]

end A108474

/-! ## A108474.P15943330124402975483

`2^n*A133872(n)`
-/

namespace A108474.P15943330124402975483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A133872 n

end

end A108474.P15943330124402975483

namespace A108474

/-- `2^n*A133872(n)` -/
def P15943330124402975483.Spec : Prop :=
  ∀ n, P15943330124402975483.a n = A108474 n

end A108474

/-! ## A108474.P11287935465709174051

`and(2, n+2)^n`
-/

namespace A108474.P11287935465709174051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 2) ^ n

end

end A108474.P11287935465709174051

namespace A108474

/-- `and(2, n+2)^n` -/
def P11287935465709174051.Spec : Prop :=
  ∀ n, (P11287935465709174051.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P14373536338268943166

`(2-and(2, n))^n`
-/

namespace A108474.P14373536338268943166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 2 n : ℤ)) ^ n

end

end A108474.P14373536338268943166

namespace A108474

/-- `(2-and(2, n))^n` -/
def P14373536338268943166.Spec : Prop :=
  ∀ n, P14373536338268943166.a n = A108474 n

end A108474

/-! ## A108474.P7268973146911494792

`xor(2, and(2, n))^n`
-/

namespace A108474.P7268973146911494792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.land 2 n) ^ n

end

end A108474.P7268973146911494792

namespace A108474

/-- `xor(2, and(2, n))^n` -/
def P7268973146911494792.Spec : Prop :=
  ∀ n, (P7268973146911494792.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P4386668237643589881

`(or(2, n)-n)^n`
-/

namespace A108474.P4386668237643589881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n : ℤ) - (n : ℤ)) ^ n

end

end A108474.P4386668237643589881

namespace A108474

/-- `(or(2, n)-n)^n` -/
def P4386668237643589881.Spec : Prop :=
  ∀ n, P4386668237643589881.a n = A108474 n

end A108474

/-! ## A108474.P7067072895405120851

`xor(n, or(2, n))^n`
-/

namespace A108474.P7067072895405120851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor 2 n) ^ n

end

end A108474.P7067072895405120851

namespace A108474

/-- `xor(n, or(2, n))^n` -/
def P7067072895405120851.Spec : Prop :=
  ∀ n, (P7067072895405120851.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P13281533663670465375

`Δ[Δ[or(1, ∑[n])]]^n`
-/

namespace A108474.P13281533663670465375
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A108474.P13281533663670465375

namespace A108474

/-- `Δ[Δ[or(1, ∑[n])]]^n` -/
def P13281533663670465375.Spec : Prop :=
  ∀ n, P13281533663670465375.a n = A108474 n

end A108474

/-! ## A108474.P6963143469729159909

`C(2, and(2, n)²!)^n`
-/

namespace A108474.P6963143469729159909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.factorial (Nat.land 2 n ^ 2)) ^ n

end

end A108474.P6963143469729159909

namespace A108474

/-- `C(2, and(2, n)²!)^n` -/
def P6963143469729159909.Spec : Prop :=
  ∀ n, (P6963143469729159909.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P3506456756878026057

`16*a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A108474.P3506456756878026057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 0] fun n a =>
  16 * a (n - 4)

end

end A108474.P3506456756878026057

namespace A108474

/-- `16*a(n-4)` -/
def P3506456756878026057.Spec : Prop :=
  ∀ n, (P3506456756878026057.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P2871492286813295901

`(2*∑[n+1]%2)^n`
-/

namespace A108474.P2871492286813295901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2)) ^ n

end

end A108474.P2871492286813295901

namespace A108474

/-- `(2*∑[n+1]%2)^n` -/
def P2871492286813295901.Spec : Prop :=
  ∀ n, (P2871492286813295901.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P15531293701350545969

`C(2, (2*and(2, n))!)^n`
-/

namespace A108474.P15531293701350545969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.factorial (2 * Nat.land 2 n)) ^ n

end

end A108474.P15531293701350545969

namespace A108474

/-- `C(2, (2*and(2, n))!)^n` -/
def P15531293701350545969.Spec : Prop :=
  ∀ n, (P15531293701350545969.a n : ℤ) = A108474 n

end A108474

/-! ## A108474.P13070584372387330903

`∑[-a(n-2)]^n` with `a(0)=2, a(1)=0`
-/

namespace A108474.P13070584372387330903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  -f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A108474.P13070584372387330903

namespace A108474

/-- `∑[-a(n-2)]^n` -/
def P13070584372387330903.Spec : Prop :=
  ∀ n, P13070584372387330903.a n = A108474 n

end A108474

/-! ## A108474.P5267316076429012279

`sqrt(xor(2, n)-(n-2))^n`
-/

namespace A108474.P5267316076429012279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.xor 2 n : ℤ) - ((n : ℤ) - 2) : ℝ) ^ n

end

end A108474.P5267316076429012279

namespace A108474

/-- `sqrt(xor(2, n)-(n-2))^n` -/
def P5267316076429012279.Spec : Prop :=
  ∀ n, P5267316076429012279.a n = (A108474 n : ℝ)

end A108474

/-! ## A108474.P16724041021891836164

`floor((4/xor(n, n+2))^n)`
-/

namespace A108474.P16724041021891836164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 / (Nat.xor n (n + 2) : ℚ)) ^ n⌋

end

end A108474.P16724041021891836164

namespace A108474

/-- `floor((4/xor(n, n+2))^n)` -/
def P16724041021891836164.Spec : Prop :=
  ∀ n, P16724041021891836164.a n = A108474 n

end A108474

/-! ## A108474.P3063893160683725098

`round((4/xor(n, n+2))^n)`
-/

namespace A108474.P3063893160683725098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 / (Nat.xor n (n + 2) : ℚ)) ^ n)

end

end A108474.P3063893160683725098

namespace A108474

/-- `round((4/xor(n, n+2))^n)` -/
def P3063893160683725098.Spec : Prop :=
  ∀ n, P3063893160683725098.a n = A108474 n

end A108474

/-! ## A108474.P1809567630581998669

`((-1)^floor(n/2)+1)^n`
-/

namespace A108474.P1809567630581998669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 1) ^ n

end

end A108474.P1809567630581998669

namespace A108474

/-- `((-1)^floor(n/2)+1)^n` -/
def P1809567630581998669.Spec : Prop :=
  ∀ n, P1809567630581998669.a n = (A108474 n : ℚ)

end A108474

/-! ## A108474.P14909956092560276527

`a(n-4)/(1/4)²` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A108474.P14909956092560276527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0, 0] fun n a =>
  a (n - 4) / ((1 : ℚ) / 4) ^ 2

end

end A108474.P14909956092560276527

namespace A108474

/-- `a(n-4)/(1/4)²` -/
def P14909956092560276527.Spec : Prop :=
  ∀ n, P14909956092560276527.a n = (A108474 n : ℚ)

end A108474

/-! ## A108474.P6347676730985074837

`floor(2^(n-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A108474.P6347676730985074837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 0] fun n a =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - a (n - 2) : ℤ)⌋

end

end A108474.P6347676730985074837

namespace A108474

/-- `floor(2^(n-a(n-2)))` -/
def P6347676730985074837.Spec : Prop :=
  ∀ n, P6347676730985074837.a n = A108474 n

end A108474

/-!
# A108475: Expansion of (1-3*x) / (1-5*x-5*x^2+x^3).

The programs for A108475, the canonical program `A108475.P11261569798285203277` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108475 has offset 0).

The definition of A108475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108475.P11261569798285203277

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108475

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P11261569798285203277.Spec : Prop :=
  ∀ n, P11261569798285203277.a n = A108475 n

theorem P11261569798285203277.correct : P11261569798285203277.Spec := by
  intro n
  simp only [A108475]

end A108475

/-! ## A108475.P18047273360842415414

`A116404(2*n)`
-/

namespace A108475.P18047273360842415414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 (2 * n)

end

end A108475.P18047273360842415414

namespace A108475

/-- `A116404(2*n)` -/
def P18047273360842415414.Spec : Prop :=
  ∀ n, P18047273360842415414.a n = A108475 n

end A108475

/-! ## A108475.P10350548185699463561

`A011900(n)-n%2`
-/

namespace A108475.P10350548185699463561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n - ((n % 2 : ℕ) : ℤ)

end

end A108475.P10350548185699463561

namespace A108475

/-- `A011900(n)-n%2` -/
def P10350548185699463561.Spec : Prop :=
  ∀ n, P10350548185699463561.a n = A108475 n

end A108475

/-! ## A108475.P16032056665501319254

`A053141(n)+log2(gcd(2, n))`
-/

namespace A108475.P16032056665501319254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053141 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A108475.P16032056665501319254

namespace A108475

/-- `A053141(n)+log2(gcd(2, n))` -/
def P16032056665501319254.Spec : Prop :=
  ∀ n, P16032056665501319254.a n = (A108475 n : ℝ)

end A108475

/-! ## A108475.P17868866097299989816

`A001541(n)-a(n-1)` with `a(0)=1`
-/

namespace A108475.P17868866097299989816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001541 n - a (n - 1)

end

end A108475.P17868866097299989816

namespace A108475

/-- `A001541(n)-a(n-1)` -/
def P17868866097299989816.Spec : Prop :=
  ∀ n, P17868866097299989816.a n = A108475 n

end A108475

/-! ## A108475.P15440727732505528204

`char[2*n]+∑[A001542(n)]`
-/

namespace A108475.P15440727732505528204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A108475.P15440727732505528204

namespace A108475

/-- `char[2*n]+∑[A001542(n)]` -/
def P15440727732505528204.Spec : Prop :=
  ∀ n, P15440727732505528204.a n = A108475 n

end A108475

/-! ## A108475.P15844064624632032153

`A105058(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A108475.P15844064624632032153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105058 (n - 1) + a (n - 1)

end

end A108475.P15844064624632032153

namespace A108475

/-- `A105058(n-1)+a(n-1)` -/
def P15844064624632032153.Spec : Prop :=
  ∀ n, P15844064624632032153.a n = A108475 n

end A108475

/-! ## A108475.P10892360410627763487

`A001333(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A108475.P10892360410627763487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001333 (2 * n) - a (n - 1)

end

end A108475.P10892360410627763487

namespace A108475

/-- `A001333(2*n)-a(n-1)` -/
def P10892360410627763487.Spec : Prop :=
  ∀ n, P10892360410627763487.a n = A108475 n

end A108475

/-! ## A108475.P13121781999744324931

`A079496(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A108475.P13121781999744324931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079496 (2 * n) - a (n - 1)

end

end A108475.P13121781999744324931

namespace A108475

/-- `A079496(2*n)-a(n-1)` -/
def P13121781999744324931.Spec : Prop :=
  ∀ n, P13121781999744324931.a n = A108475 n

end A108475

/-! ## A108475.P8277369245907117949

`A123335(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A108475.P8277369245907117949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123335 (2 * n) - a (n - 1)

end

end A108475.P8277369245907117949

namespace A108475

/-- `A123335(2*n)-a(n-1)` -/
def P8277369245907117949.Spec : Prop :=
  ∀ n, P8277369245907117949.a n = A108475 n

end A108475

/-! ## A108475.P8691773792517693453

`A331101(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A108475.P8691773792517693453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331101 (3 * n) - a (n - 1)

end

end A108475.P8691773792517693453

namespace A108475

/-- `A331101(3*n)-a(n-1)` -/
def P8691773792517693453.Spec : Prop :=
  ∀ n, P8691773792517693453.a n = A108475 n

end A108475

/-! ## A108475.P1915275582439945721

`A082766(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A108475.P1915275582439945721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082766 (4 * n) - a (n - 1)

end

end A108475.P1915275582439945721

namespace A108475

/-- `A082766(4*n)-a(n-1)` -/
def P1915275582439945721.Spec : Prop :=
  ∀ n, P1915275582439945721.a n = A108475 n

end A108475

/-! ## A108475.P13036383331843146010

`A099938(n+1)-1-a(n-1)` with `a(0)=1`
-/

namespace A108475.P13036383331843146010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099938 (n + 1) - 1 - a (n - 1)

end

end A108475.P13036383331843146010

namespace A108475

/-- `A099938(n+1)-1-a(n-1)` -/
def P13036383331843146010.Spec : Prop :=
  ∀ n, P13036383331843146010.a n = A108475 n

end A108475

/-! ## A108475.P14746318681149890134

`round((sqrt(2)+1)^n/2)*A000129(n+1)`
-/

namespace A108475.P14746318681149890134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2) * A000129 (n + 1)

end

end A108475.P14746318681149890134

namespace A108475

/-- `round((sqrt(2)+1)^n/2)*A000129(n+1)` -/
def P14746318681149890134.Spec : Prop :=
  ∀ n, P14746318681149890134.a n = A108475 n

end A108475

/-! ## A108475.P9652397916621396207

`record[A116404(A265667(n))]`
-/

namespace A108475.P9652397916621396207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116404 (A265667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108475.P9652397916621396207

namespace A108475

/-- `record[A116404(A265667(n))]` -/
def P9652397916621396207.Spec : Prop :=
  ∀ n, P9652397916621396207.a n = A108475 n

end A108475

/-! ## A108475.P17117341229416003739

`A090390(n)+A001109(n)`
-/

namespace A108475.P17117341229416003739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n + A001109 n

end

end A108475.P17117341229416003739

namespace A108475

/-- `A090390(n)+A001109(n)` -/
def P17117341229416003739.Spec : Prop :=
  ∀ n, P17117341229416003739.a n = A108475 n

end A108475

/-! ## A108475.P17587897245414025202

`A011900(n)-A000035(n)`
-/

namespace A108475.P17587897245414025202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n - A000035 n

end

end A108475.P17587897245414025202

namespace A108475

/-- `A011900(n)-A000035(n)` -/
def P17587897245414025202.Spec : Prop :=
  ∀ n, P17587897245414025202.a n = A108475 n

end A108475

/-! ## A108475.P10887714292922849729

`A077985(n)*A123335(n)`
-/

namespace A108475.P10887714292922849729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n * A123335 n

end

end A108475.P10887714292922849729

namespace A108475

/-- `A077985(n)*A123335(n)` -/
def P10887714292922849729.Spec : Prop :=
  ∀ n, P10887714292922849729.a n = A108475 n

end A108475

/-! ## A108475.P17155786764879981275

`lcm(A001333(n), A077985(n))`
-/

namespace A108475.P17155786764879981275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001333 n) (A077985 n)

end

end A108475.P17155786764879981275

namespace A108475

/-- `lcm(A001333(n), A077985(n))` -/
def P17155786764879981275.Spec : Prop :=
  ∀ n, (P17155786764879981275.a n : ℤ) = A108475 n

end A108475

/-!
# A108476: Expansion of (1-4*x)/(1-6*x-12*x^2+8*x^3).

The programs for A108476, the canonical program `A108476.P9651566209816594386` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108476 has offset 0).

The definition of A108476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108476.P9651566209816594386

`6*a(n-1)+12*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108476

/-- `6*a(n-1)+12*a(n-2)-8*a(n-3)` -/
def P9651566209816594386.Spec : Prop :=
  ∀ n, P9651566209816594386.a n = A108476 n

theorem P9651566209816594386.correct : P9651566209816594386.Spec := by
  intro n
  simp only [A108476]

end A108476

/-! ## A108476.P3176968369020813376

`(A061278(n)+1-n%2)*2^n`
-/

namespace A108476.P3176968369020813376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061278 n + 1 - ((n % 2 : ℕ) : ℤ)) * (2 ^ n : ℤ)

end

end A108476.P3176968369020813376

namespace A108476

/-- `(A061278(n)+1-n%2)*2^n` -/
def P3176968369020813376.Spec : Prop :=
  ∀ n, P3176968369020813376.a n = A108476 n

end A108476

/-! ## A108476.P5043112367927777810

`A099156(n)+A026150(n)²`
-/

namespace A108476.P5043112367927777810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099156 n + A026150 n ^ 2

end

end A108476.P5043112367927777810

namespace A108476

/-- `A099156(n)+A026150(n)²` -/
def P5043112367927777810.Spec : Prop :=
  ∀ n, P5043112367927777810.a n = A108476 n

end A108476

/-! ## A108476.P13441621387873989548

`A002605(n+1)*A026150(n)`
-/

namespace A108476.P13441621387873989548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) * A026150 n

end

end A108476.P13441621387873989548

namespace A108476

/-- `A002605(n+1)*A026150(n)` -/
def P13441621387873989548.Spec : Prop :=
  ∀ n, P13441621387873989548.a n = A108476 n

end A108476

/-! ## A108476.P6704732080304775886

`(A005665(n)+1)*A026150(n)`
-/

namespace A108476.P6704732080304775886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005665 n + 1) * A026150 n

end

end A108476.P6704732080304775886

namespace A108476

/-- `(A005665(n)+1)*A026150(n)` -/
def P6704732080304775886.Spec : Prop :=
  ∀ n, P6704732080304775886.a n = A108476 n

end A108476

/-! ## A108476.P1596601236609004850

`A099156(n)+Δ[A002605(n)]²`
-/

namespace A108476.P1596601236609004850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099156 n + (f1 (n + 1) - f1 n) ^ 2

end

end A108476.P1596601236609004850

namespace A108476

/-- `A099156(n)+Δ[A002605(n)]²` -/
def P1596601236609004850.Spec : Prop :=
  ∀ n, P1596601236609004850.a n = A108476 n

end A108476

/-! ## A108476.P7675469900594098245

`A099177(2*n)+A077957(n)²`
-/

namespace A108476.P7675469900594098245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099177 (2 * n) + A077957 n ^ 2

end

end A108476.P7675469900594098245

namespace A108476

/-- `A099177(2*n)+A077957(n)²` -/
def P7675469900594098245.Spec : Prop :=
  ∀ n, P7675469900594098245.a n = A108476 n

end A108476

/-! ## A108476.P9531516150648153038

`Δ[A002605(n)]*A002605(n+1)`
-/

namespace A108476.P9531516150648153038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002605 (n + 1)

end

end A108476.P9531516150648153038

namespace A108476

/-- `Δ[A002605(n)]*A002605(n+1)` -/
def P9531516150648153038.Spec : Prop :=
  ∀ n, P9531516150648153038.a n = A108476 n

end A108476

/-! ## A108476.P12025592401545493120

`A026150(n)*A160572(2*(n+2))`
-/

namespace A108476.P12025592401545493120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n * A160572 (2 * (n + 2))

end

end A108476.P12025592401545493120

namespace A108476

/-- `A026150(n)*A160572(2*(n+2))` -/
def P12025592401545493120.Spec : Prop :=
  ∀ n, P12025592401545493120.a n = A108476 n

end A108476

/-! ## A108476.P5299796734329617446

`A026150(n)*A160444(2*n+3)`
-/

namespace A108476.P5299796734329617446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n * A160444 (2 * n + 3)

end

end A108476.P5299796734329617446

namespace A108476

/-- `A026150(n)*A160444(2*n+3)` -/
def P5299796734329617446.Spec : Prop :=
  ∀ n, P5299796734329617446.a n = A108476 n

end A108476

/-! ## A108476.P13237938461380132272

`A002605(n+1)*A160444(2*(n+1))`
-/

namespace A108476.P13237938461380132272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) * A160444 (2 * (n + 1))

end

end A108476.P13237938461380132272

namespace A108476

/-- `A002605(n+1)*A160444(2*(n+1))` -/
def P13237938461380132272.Spec : Prop :=
  ∀ n, P13237938461380132272.a n = A108476 n

end A108476

/-! ## A108476.P8576727413356193075

`A002605(n+1)*A160572(2*n+1)`
-/

namespace A108476.P8576727413356193075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) * A160572 (2 * n + 1)

end

end A108476.P8576727413356193075

namespace A108476

/-- `A002605(n+1)*A160572(2*n+1)` -/
def P8576727413356193075.Spec : Prop :=
  ∀ n, P8576727413356193075.a n = A108476 n

end A108476

/-! ## A108476.P3209027873328992709

`A160572(2*n+1)*A160572(2*(n+2))`
-/

namespace A108476.P3209027873328992709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 (2 * n + 1) * A160572 (2 * (n + 2))

end

end A108476.P3209027873328992709

namespace A108476

/-- `A160572(2*n+1)*A160572(2*(n+2))` -/
def P3209027873328992709.Spec : Prop :=
  ∀ n, P3209027873328992709.a n = A108476 n

end A108476

/-! ## A108476.P13944369389416887208

`A160444(2*(n+1))*A160444(2*n+3)`
-/

namespace A108476.P13944369389416887208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * (n + 1)) * A160444 (2 * n + 3)

end

end A108476.P13944369389416887208

namespace A108476

/-- `A160444(2*(n+1))*A160444(2*n+3)` -/
def P13944369389416887208.Spec : Prop :=
  ∀ n, P13944369389416887208.a n = A108476 n

end A108476

/-! ## A108476.P7775792472127520563

`(A028859(n)-A002605(n))*A026150(n)`
-/

namespace A108476.P7775792472127520563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028859 n - A002605 n) * A026150 n

end

end A108476.P7775792472127520563

namespace A108476

/-- `(A028859(n)-A002605(n))*A026150(n)` -/
def P7775792472127520563.Spec : Prop :=
  ∀ n, P7775792472127520563.a n = A108476 n

end A108476

/-! ## A108476.P8439371306580216863

`(A083337(n)-A028860(n))*A026150(n)`
-/

namespace A108476.P8439371306580216863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083337 n - A028860 n) * A026150 n

end

end A108476.P8439371306580216863

namespace A108476

/-- `(A083337(n)-A028860(n))*A026150(n)` -/
def P8439371306580216863.Spec : Prop :=
  ∀ n, P8439371306580216863.a n = A108476 n

end A108476

/-! ## A108476.P8234315108120200646

`(A052945(n+1)-A028859(n))*A026150(n)`
-/

namespace A108476.P8234315108120200646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052945 (n + 1) - A028859 n) * A026150 n

end

end A108476.P8234315108120200646

namespace A108476

/-- `(A052945(n+1)-A028859(n))*A026150(n)` -/
def P8234315108120200646.Spec : Prop :=
  ∀ n, P8234315108120200646.a n = A108476 n

end A108476

/-! ## A108476.P6914000818513162959

`(A080040(n)-A028860(n+1))*A026150(n)`
-/

namespace A108476.P6914000818513162959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080040 n - A028860 (n + 1)) * A026150 n

end

end A108476.P6914000818513162959

namespace A108476

/-- `(A080040(n)-A028860(n+1))*A026150(n)` -/
def P6914000818513162959.Spec : Prop :=
  ∀ n, P6914000818513162959.a n = A108476 n

end A108476

/-! ## A108476.P13234041072673748093

`(A028860(n+1)+A002605(n))*A002605(n+1)`
-/

namespace A108476.P13234041072673748093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028860 (n + 1) + A002605 n) * A002605 (n + 1)

end

end A108476.P13234041072673748093

namespace A108476

/-- `(A028860(n+1)+A002605(n))*A002605(n+1)` -/
def P13234041072673748093.Spec : Prop :=
  ∀ n, P13234041072673748093.a n = A108476 n

end A108476

/-!
# A108477: A symmetric number triangle based on 2^n.

The programs for A108477, there is no canonical definition to state claims against.
-/

/-! ## A108477.P8694166920122474992

`A297191(comp[comp[∑[n]]+n])`
-/

namespace A108477.P8694166920122474992
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A108477.P8694166920122474992

/-! ## A108477.P16590142534064002431

`or(1, A297191(A133280(n)))`
-/

namespace A108477.P16590142534064002431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297191 (A133280 n).toNat)

end

end A108477.P16590142534064002431

/-! ## A108477.P1490926160459531754

`A008288(A185868(n+1)-1)`
-/

namespace A108477.P1490926160459531754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A185868 (n + 1) - 1).toNat

end

end A108477.P1490926160459531754

/-! ## A108477.P13144183459642252559

`A008288(eq[0, A053398(n+1)])`
-/

namespace A108477.P13144183459642252559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108477.P13144183459642252559

/-! ## A108477.P15785776952977846036

`A112475(round(sqrt(2*(n+1)))²+2*(n+1)-1)`
-/

namespace A108477.P15785776952977846036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ) - 1).toNat

end

end A108477.P15785776952977846036

/-! ## A108477.P535104675578511337

`A008288(eq[0, A155998(n)])`
-/

namespace A108477.P535104675578511337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108477.P535104675578511337

/-! ## A108477.P9587535303269329863

`A008288(lt[A155998(n), 1])`
-/

namespace A108477.P9587535303269329863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A108477.P9587535303269329863

/-! ## A108477.P4344629607980937110

`A008288(eq[0, A099390(n+1)])`
-/

namespace A108477.P4344629607980937110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108477.P4344629607980937110

/-! ## A108477.P5311174480750644532

`A297191(n²)*A297191(A133280(n))`
-/

namespace A108477.P5311174480750644532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (n ^ 2) * A297191 (A133280 n).toNat

end

end A108477.P5311174480750644532

/-!
# A108478: Diagonal sums of number triangle A108477.

The programs for A108478, there is no canonical definition to state claims against.
-/

/-! ## A108478.P6031904047379197754

`A129850(A091175(n)-n)`
-/

namespace A108478.P6031904047379197754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129850 (A091175 n - (n : ℤ)).toNat

end

end A108478.P6031904047379197754

/-! ## A108478.P5224156885372501193

`A089554(A274052(n)-n)`
-/

namespace A108478.P5224156885372501193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089554 (A274052 n - (n : ℤ)).toNat

end

end A108478.P5224156885372501193

/-!
# A108479: Antidiagonal sums of number triangle A086645.

The programs for A108479, the canonical program `A108479.P3495565561315379585` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108479 has offset 0).

The definition of A108479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108479.P3495565561315379585

`A005252(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108479

/-- `A005252(2*n)` -/
def P3495565561315379585.Spec : Prop :=
  ∀ n, P3495565561315379585.a n = A108479 n

theorem P3495565561315379585.correct : P3495565561315379585.Spec := by
  intro n
  simp only [A108479]

end A108479

/-! ## A108479.P13614248541048179266

`xor(1, 3*a(n-1))-xor(1, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A108479.P13614248541048179266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 (3 * a (n - 1)) - Int.xor 1 (a (n - 2))

end

end A108479.P13614248541048179266

namespace A108479

/-- `xor(1, 3*a(n-1))-xor(1, a(n-2))` -/
def P13614248541048179266.Spec : Prop :=
  ∀ n, P13614248541048179266.a n = A108479 n

end A108479

/-! ## A108479.P3206933183752808562

`xor(1, a(n-1))+a(n-1)+a(n-1)-xor(1, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A108479.P3206933183752808562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 1 (a (n - 1)) + (a (n - 1) + (a (n - 1) - Int.xor 1 (a (n - 2))))

end

end A108479.P3206933183752808562

namespace A108479

/-- `xor(1, a(n-1))+a(n-1)+a(n-1)-xor(1, a(n-2))` -/
def P3206933183752808562.Spec : Prop :=
  ∀ n, P3206933183752808562.a n = A108479 n

end A108479

/-! ## A108479.P15150700811840650732

`A094686(2*n)`
-/

namespace A108479.P15150700811840650732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n)

end

end A108479.P15150700811840650732

namespace A108479

/-- `A094686(2*n)` -/
def P15150700811840650732.Spec : Prop :=
  ∀ n, P15150700811840650732.a n = A108479 n

end A108479

/-! ## A108479.P18371696134128725346

`A174618(4*n+2)`
-/

namespace A108479.P18371696134128725346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (4 * n + 2)

end

end A108479.P18371696134128725346

namespace A108479

/-- `A174618(4*n+2)` -/
def P18371696134128725346.Spec : Prop :=
  ∀ n, P18371696134128725346.a n = A108479 n

end A108479

/-! ## A108479.P12808758629068928056

`A111282(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A108479.P12808758629068928056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A111282 n + a (n - 3)

end

end A108479.P12808758629068928056

namespace A108479

/-- `A111282(n)+a(n-3)` -/
def P12808758629068928056.Spec : Prop :=
  ∀ n, P12808758629068928056.a n = A108479 n

end A108479

/-! ## A108479.P14079647486279447195

`A182899(n)+A051286(n)`
-/

namespace A108479.P14079647486279447195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182899 n + A051286 n

end

end A108479.P14079647486279447195

namespace A108479

/-- `A182899(n)+A051286(n)` -/
def P14079647486279447195.Spec : Prop :=
  ∀ n, P14079647486279447195.a n = A108479 n

end A108479

/-! ## A108479.P1473758382332692738

`A164267(n)+A106511(n)`
-/

namespace A108479.P1473758382332692738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 n + A106511 n

end

end A108479.P1473758382332692738

namespace A108479

/-- `A164267(n)+A106511(n)` -/
def P1473758382332692738.Spec : Prop :=
  ∀ n, P1473758382332692738.a n = A108479 n

end A108479

/-! ## A108479.P14332539302704369430

`A173673(A029739(2*(n+1)))`
-/

namespace A108479.P14332539302704369430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A029739 (2 * (n + 1))).toNat

end

end A108479.P14332539302704369430

namespace A108479

/-- `A173673(A029739(2*(n+1)))` -/
def P14332539302704369430.Spec : Prop :=
  ∀ n, P14332539302704369430.a n = A108479 n

end A108479

/-! ## A108479.P12621711148758753513

`A173673(A047231(2*(n+1)))`
-/

namespace A108479.P12621711148758753513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047231 (2 * (n + 1))).toNat

end

end A108479.P12621711148758753513

namespace A108479

/-- `A173673(A047231(2*(n+1)))` -/
def P12621711148758753513.Spec : Prop :=
  ∀ n, P12621711148758753513.a n = A108479 n

end A108479

/-! ## A108479.P13145835622311082695

`A051286(n)+2*A182897(n)`
-/

namespace A108479.P13145835622311082695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + 2 * A182897 n

end

end A108479.P13145835622311082695

namespace A108479

/-- `A051286(n)+2*A182897(n)` -/
def P13145835622311082695.Spec : Prop :=
  ∀ n, P13145835622311082695.a n = A108479 n

end A108479

/-! ## A108479.P1139963485366150598

`A079978(n)+A004695(2*n+1)`
-/

namespace A108479.P1139963485366150598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + A004695 (2 * n + 1)

end

end A108479.P1139963485366150598

namespace A108479

/-- `A079978(n)+A004695(2*n+1)` -/
def P1139963485366150598.Spec : Prop :=
  ∀ n, P1139963485366150598.a n = A108479 n

end A108479

/-! ## A108479.P13954804848925754539

`A147997(2*n+1)-A011655(n)`
-/

namespace A108479.P13954804848925754539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (2 * n + 1) - A011655 n

end

end A108479.P13954804848925754539

namespace A108479

/-- `A147997(2*n+1)-A011655(n)` -/
def P13954804848925754539.Spec : Prop :=
  ∀ n, P13954804848925754539.a n = A108479 n

end A108479

/-! ## A108479.P5557123938207487804

`A079962(2*n)-A293553(2*n)`
-/

namespace A108479.P5557123938207487804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (2 * n) - A293553 (2 * n)

end

end A108479.P5557123938207487804

namespace A108479

/-- `A079962(2*n)-A293553(2*n)` -/
def P5557123938207487804.Spec : Prop :=
  ∀ n, P5557123938207487804.a n = A108479 n

end A108479

/-! ## A108479.P13964924577284951864

`A141325(2*n)-A293014(2*n)`
-/

namespace A108479.P13964924577284951864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (2 * n) - A293014 (2 * n)

end

end A108479.P13964924577284951864

namespace A108479

/-- `A141325(2*n)-A293014(2*n)` -/
def P13964924577284951864.Spec : Prop :=
  ∀ n, P13964924577284951864.a n = A108479 n

end A108479

/-! ## A108479.P789664053512015092

`A004695(2*n+1)+1-A011655(n)`
-/

namespace A108479.P789664053512015092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * n + 1) + (1 - A011655 n)

end

end A108479.P789664053512015092

namespace A108479

/-- `A004695(2*n+1)+1-A011655(n)` -/
def P789664053512015092.Spec : Prop :=
  ∀ n, P789664053512015092.a n = A108479 n

end A108479

/-! ## A108479.P13630779756782481940

`A201864(2*n+1)+1-A022003(n)`
-/

namespace A108479.P13630779756782481940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (2 * n + 1) + (1 - A022003 n)

end

end A108479.P13630779756782481940

namespace A108479

/-- `A201864(2*n+1)+1-A022003(n)` -/
def P13630779756782481940.Spec : Prop :=
  ∀ n, P13630779756782481940.a n = A108479 n

end A108479

/-! ## A108479.P16015094621716995388

`A147997(2*n+1)+A079978(n)-1`
-/

namespace A108479.P16015094621716995388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (2 * n + 1) + (A079978 n - 1)

end

end A108479.P16015094621716995388

namespace A108479

/-- `A147997(2*n+1)+A079978(n)-1` -/
def P16015094621716995388.Spec : Prop :=
  ∀ n, P16015094621716995388.a n = A108479 n

end A108479

/-! ## A108479.P13557873579364351871

`A173173(2*n+1)-A079978(n+1)`
-/

namespace A108479.P13557873579364351871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (2 * n + 1) - A079978 (n + 1)

end

end A108479.P13557873579364351871

namespace A108479

/-- `A173173(2*n+1)-A079978(n+1)` -/
def P13557873579364351871.Spec : Prop :=
  ∀ n, P13557873579364351871.a n = A108479 n

end A108479

/-!
# A108480: Expansion of (1-x-2*x^2)/(1-2*x-3*x^2-4*x^3+4*x^4).

The programs for A108480, the canonical program `A108480.P16359209356879304782` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108480 has offset 0).

The definition of A108480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108480.P16359209356879304782

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108480

/-- `2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P16359209356879304782.Spec : Prop :=
  ∀ n, P16359209356879304782.a n = A108480 n

theorem P16359209356879304782.correct : P16359209356879304782.Spec := by
  intro n
  simp only [A108480]

end A108480

/-! ## A108480.P3068504307919358962

`A098575(2*n)`
-/

namespace A108480.P3068504307919358962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 (2 * n)

end

end A108480.P3068504307919358962

namespace A108480

/-- `A098575(2*n)` -/
def P3068504307919358962.Spec : Prop :=
  ∀ n, P3068504307919358962.a n = A108480 n

end A108480

/-! ## A108480.P5786618158185526736

`xor(1, A098575(n+n))+1`
-/

namespace A108480.P5786618158185526736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A098575 (n + n)) + 1

end

end A108480.P5786618158185526736

namespace A108480

/-- `xor(1, A098575(n+n))+1` -/
def P5786618158185526736.Spec : Prop :=
  ∀ n, P5786618158185526736.a n = A108480 n

end A108480

/-! ## A108480.P4819239313966096531

`or(1, A098575(A004277(n)))`
-/

namespace A108480.P4819239313966096531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098575 (A004277 n).toNat)

end

end A108480.P4819239313966096531

namespace A108480

/-- `or(1, A098575(A004277(n)))` -/
def P4819239313966096531.Spec : Prop :=
  ∀ n, P4819239313966096531.a n = A108480 n

end A108480

/-! ## A108480.P10973044799774734874

`or(1, A098575(A005843(n)))`
-/

namespace A108480.P10973044799774734874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098575 (A005843 n).toNat)

end

end A108480.P10973044799774734874

namespace A108480

/-- `or(1, A098575(A005843(n)))` -/
def P10973044799774734874.Spec : Prop :=
  ∀ n, P10973044799774734874.a n = A108480 n

end A108480

/-! ## A108480.P6045774302970573958

`or(1, A098575(A233583(A005408(n))))`
-/

namespace A108480.P6045774302970573958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098575 (A233583 (A005408 n).toNat).toNat)

end

end A108480.P6045774302970573958

namespace A108480

/-- `or(1, A098575(A233583(A005408(n))))` -/
def P6045774302970573958.Spec : Prop :=
  ∀ n, P6045774302970573958.a n = A108480 n

end A108480

/-! ## A108480.P15354749064489717536

`A098575(A005843(n))/A211110(A000040(n+1))`
-/

namespace A108480.P15354749064489717536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098575 (A005843 n).toNat : ℚ) / (A211110 (A000040 (n + 1)).toNat : ℚ)

end

end A108480.P15354749064489717536

namespace A108480

/-- `A098575(A005843(n))/A211110(A000040(n+1))` -/
def P15354749064489717536.Spec : Prop :=
  ∀ n, P15354749064489717536.a n = (A108480 n : ℚ)

end A108480

/-! ## A108480.P11772383450299703436

`A098575(A005843(n))/A057979(A020639(n+2)+1)`
-/

namespace A108480.P11772383450299703436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098575 (A005843 n).toNat : ℚ) / (A057979 (A020639 (n + 2) + 1).toNat : ℚ)

end

end A108480.P11772383450299703436

namespace A108480

/-- `A098575(A005843(n))/A057979(A020639(n+2)+1)` -/
def P11772383450299703436.Spec : Prop :=
  ∀ n, P11772383450299703436.a n = (A108480 n : ℚ)

end A108480

/-! ## A108480.P7372902318683522101

`A098575(A005843(n))%A000051(n)²`
-/

namespace A108480.P7372902318683522101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098575 (A005843 n).toNat) (A000051 n ^ 2)

end

end A108480.P7372902318683522101

namespace A108480

/-- `A098575(A005843(n))%A000051(n)²` -/
def P7372902318683522101.Spec : Prop :=
  ∀ n, P7372902318683522101.a n = A108480 n

end A108480

/-!
# A108483: Expansion of f(-x^2, -x^5) / f(-x, -x^6) in powers of x where f() is a Ramanujan theta function.

The programs for A108483, there is no canonical definition to state claims against.
-/

/-! ## A108483.P17363825251436236545

`A229894(7*n)`
-/

namespace A108483.P17363825251436236545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229894 (7 * n)

end

end A108483.P17363825251436236545

/-!
# A108484: a(n) = Sum_{k=0..floor(n/2)} binomial(2n-2k,2k) * 3^(n-k).

The programs for A108484, the canonical program `A108484.P11891643305751534373` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108484 has offset 0).

The definition of A108484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108484.P11891643305751534373

`2*a(n-1)+5*a(n-2)+6*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=19`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108484

/-- `2*a(n-1)+5*a(n-2)+6*a(n-3)-9*a(n-4)` -/
def P11891643305751534373.Spec : Prop :=
  ∀ n, P11891643305751534373.a n = A108484 n

theorem P11891643305751534373.correct : P11891643305751534373.Spec := by
  intro n
  simp only [A108484]

end A108484

/-! ## A108484.P16183528795849086137

`A098576(2*n)`
-/

namespace A108484.P16183528795849086137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098576 (2 * n)

end

end A108484.P16183528795849086137

namespace A108484

/-- `A098576(2*n)` -/
def P16183528795849086137.Spec : Prop :=
  ∀ n, P16183528795849086137.a n = A108484 n

end A108484

/-! ## A108484.P11976452845787893168

`abs(A098576(A005843(n))-1)+1`
-/

namespace A108484.P11976452845787893168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098576 (A005843 n).toNat - 1| + 1

end

end A108484.P11976452845787893168

namespace A108484

/-- `abs(A098576(A005843(n))-1)+1` -/
def P11976452845787893168.Spec : Prop :=
  ∀ n, P11976452845787893168.a n = A108484 n

end A108484

/-! ## A108484.P11600079427659413721

`gcd(A000038(n), A098576(A005843(n)))`
-/

namespace A108484.P11600079427659413721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A098576 (A005843 n).toNat)

end

end A108484.P11600079427659413721

namespace A108484

/-- `gcd(A000038(n), A098576(A005843(n)))` -/
def P11600079427659413721.Spec : Prop :=
  ∀ n, (P11600079427659413721.a n : ℤ) = A108484 n

end A108484

/-! ## A108484.P12362719999825300704

`lcm(A033999(n), A098576(A005843(n)))`
-/

namespace A108484.P12362719999825300704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A098576 (A005843 n).toNat)

end

end A108484.P12362719999825300704

namespace A108484

/-- `lcm(A033999(n), A098576(A005843(n)))` -/
def P12362719999825300704.Spec : Prop :=
  ∀ n, (P12362719999825300704.a n : ℤ) = A108484 n

end A108484

/-! ## A108484.P5130461563688023053

`A098576(A005843(n))+A000007(n+1)`
-/

namespace A108484.P5130461563688023053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098576 (A005843 n).toNat + A000007 (n + 1)

end

end A108484.P5130461563688023053

namespace A108484

/-- `A098576(A005843(n))+A000007(n+1)` -/
def P5130461563688023053.Spec : Prop :=
  ∀ n, P5130461563688023053.a n = A108484 n

end A108484

/-! ## A108484.P15316605117979642017

`A209229(A004959(n))+A098576(A005843(n))`
-/

namespace A108484.P15316605117979642017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A004959 n).toNat + A098576 (A005843 n).toNat

end

end A108484.P15316605117979642017

namespace A108484

/-- `A209229(A004959(n))+A098576(A005843(n))` -/
def P15316605117979642017.Spec : Prop :=
  ∀ n, P15316605117979642017.a n = A108484 n

end A108484

/-! ## A108484.P6416839257212746943

`A098576(A005843(n))%A000108(n+2)`
-/

namespace A108484.P6416839257212746943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098576 (A005843 n).toNat) (A000108 (n + 2))

end

end A108484.P6416839257212746943

namespace A108484

/-- `A098576(A005843(n))%A000108(n+2)` -/
def P6416839257212746943.Spec : Prop :=
  ∀ n, P6416839257212746943.a n = A108484 n

end A108484

/-! ## A108484.P1027355771142187260

`A098576(A005843(n))/A014963(A000217(n+5))`
-/

namespace A108484.P1027355771142187260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098576 (A005843 n).toNat : ℚ) / (A014963 (A000217 (n + 5)).toNat : ℚ)

end

end A108484.P1027355771142187260

namespace A108484

/-- `A098576(A005843(n))/A014963(A000217(n+5))` -/
def P1027355771142187260.Spec : Prop :=
  ∀ n, P1027355771142187260.a n = (A108484 n : ℚ)

end A108484

/-!
# A108485: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n-2*k,2*k)*2^(n-k).

The programs for A108485, the canonical program `A108485.P2590849821659180317` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108485 has offset 0).

The definition of A108485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108485.P2590849821659180317

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=32`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108485

/-- `4*a(n-1)+8*a(n-3)-4*a(n-4)` -/
def P2590849821659180317.Spec : Prop :=
  ∀ n, P2590849821659180317.a n = A108485 n

theorem P2590849821659180317.correct : P2590849821659180317.Spec := by
  intro n
  simp only [A108485]

end A108485

/-! ## A108485.P4112081260830524084

`A374512(2*n)`
-/

namespace A108485.P4112081260830524084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374512 (2 * n)

end

end A108485.P4112081260830524084

namespace A108485

/-- `A374512(2*n)` -/
def P4112081260830524084.Spec : Prop :=
  ∀ n, P4112081260830524084.a n = A108485 n

end A108485

/-! ## A108485.P7779459386845012750

`(n+1)*A100196(A322208(n))`
-/

namespace A108485.P7779459386845012750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100196 (A322208 n).toNat

end

end A108485.P7779459386845012750

namespace A108485

/-- `(n+1)*A100196(A322208(n))` -/
def P7779459386845012750.Spec : Prop :=
  ∀ n, P7779459386845012750.a n = A108485 n

end A108485

/-!
# A108486: a(n) = Sum_{k=0..floor(n/2)} binomial(2n-2k,2k)3^k*2^(n-k).

The programs for A108486, the canonical program `A108486.P15176079256677463321` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108486 has offset 0).

The definition of A108486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108486.P15176079256677463321

`4*a(n-1)+8*a(n-2)+24*a(n-3)-36*a(n-4)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=80`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A108486

/-- `4*a(n-1)+8*a(n-2)+24*a(n-3)-36*a(n-4)` -/
def P15176079256677463321.Spec : Prop :=
  ∀ n, P15176079256677463321.a n = A108486 n

theorem P15176079256677463321.correct : P15176079256677463321.Spec := by
  intro n
  simp only [A108486]

end A108486

/-!
# A108488: Expansion of 1/sqrt(1 -2*x -3*x^2 -4*x^3 +4*x^4).

The programs for A108488, there is no canonical definition to state claims against.
-/

/-! ## A108488.P15049526026180553850

`or(A099545(A020127(n)), A349977(2*n+1))`
-/

namespace A108488.P15049526026180553850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099545 (A020127 n).toNat) (A349977 (2 * n + 1))

end

end A108488.P15049526026180553850

/-! ## A108488.P8183752722061042808

`A256555(A150865(n))`
-/

namespace A108488.P8183752722061042808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256555 (A150865 n).toNat

end

end A108488.P8183752722061042808

/-! ## A108488.P16432259822842972376

`A277487(A172061(n))+n`
-/

namespace A108488.P16432259822842972376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277487 (A172061 n).toNat + (n : ℤ)

end

end A108488.P16432259822842972376

/-!
# A108489: Expansion of 1/sqrt(1-2x-5x^2-6x^3+9x^4).

The programs for A108489, there is no canonical definition to state claims against.
-/

/-! ## A108489.P3365802679996364829

`A083382(A000108(n)*A127577(3*n+2))`
-/

namespace A108489.P3365802679996364829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A000108 n * A127577 (3 * n + 2)).toNat

end

end A108489.P3365802679996364829

/-! ## A108489.P17616882972311680168

`A164903(A071716(n))`
-/

namespace A108489.P17616882972311680168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (A071716 n).toNat

end

end A108489.P17616882972311680168

/-!
# A108490: Expansion of 1/sqrt(1-4x-8x^2-24x^3+36x^4).

The programs for A108490, there is no canonical definition to state claims against.
-/

/-! ## A108490.P4269815541089020159

`A354038(a(n-1)+n-1)` with `a(0)=1, a(1)=2`
-/

namespace A108490.P4269815541089020159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A354038 (a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A108490.P4269815541089020159

/-!
# A108492: Sum of NumberOfParts!/NumberOfDifferentParts! for all integer partitions of n.

The programs for A108492, there is no canonical definition to state claims against.
-/

/-! ## A108492.P18046923672614678845

`A226644(A006882(n))+A000142(n)`
-/

namespace A108492.P18046923672614678845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226644 (A006882 n).toNat + A000142 n

end

end A108492.P18046923672614678845

/-! ## A108492.P31616925869252830

`A333348(A319731(n)+A005408(n))`
-/

namespace A108492.P31616925869252830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A319731 n + A005408 n).toNat

end

end A108492.P31616925869252830

/-! ## A108492.P17020728717229702582

`A002620(n)+A002265(A312933(n!))`
-/

namespace A108492.P17020728717229702582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + A002265 (A312933 (Nat.factorial n)).toNat

end

end A108492.P17020728717229702582

/-!
# A108494: Expansion of f(-q) / f(q) in powers of q where f() is a Ramanujan theta function.

The programs for A108494, there is no canonical definition to state claims against.
-/

/-! ## A108494.P10106093794788103400

`(-1)^n*A080054(n)`
-/

namespace A108494.P10106093794788103400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A080054 n

end

end A108494.P10106093794788103400

/-! ## A108494.P17421089103239491236

`A080015(n)*A087960(n)`
-/

namespace A108494.P17421089103239491236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080015 n * A087960 n

end

end A108494.P17421089103239491236

/-! ## A108494.P16048173227696941205

`A057077(n)*A210030(n)`
-/

namespace A108494.P16048173227696941205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A210030 n

end

end A108494.P16048173227696941205

/-! ## A108494.P13015613685954181308

`A115671(n)*A280560(n)`
-/

namespace A108494.P13015613685954181308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 n * A280560 n

end

end A108494.P13015613685954181308

/-! ## A108494.P17515760404767111314

`A080054(n)/A033999(n)`
-/

namespace A108494.P17515760404767111314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A033999 n : ℚ)

end

end A108494.P17515760404767111314

/-! ## A108494.P2238895960870557991

`A080054(n)/A057077(A057077(n)+n)`
-/

namespace A108494.P2238895960870557991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A108494.P2238895960870557991

/-! ## A108494.P5646517901014877516

`A080015(n)/A080054(n)*A210030(n)`
-/

namespace A108494.P5646517901014877516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A080054 n : ℚ) * (A210030 n : ℚ)

end

end A108494.P5646517901014877516

/-! ## A108494.P4731665808065514941

`A057077(n+1)*A080015(n)`
-/

namespace A108494.P4731665808065514941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A080015 n

end

end A108494.P4731665808065514941

/-! ## A108494.P12251682490063171488

`A080015(n+1)/A080054(n+1)*A080015(n)`
-/

namespace A108494.P12251682490063171488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 (n + 1) : ℚ) / (A080054 (n + 1) : ℚ) * (A080015 n : ℚ)

end

end A108494.P12251682490063171488

/-! ## A108494.P2634328183063784434

`A080054(n)*A087960(2*n)`
-/

namespace A108494.P2634328183063784434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 n * A087960 (2 * n)

end

end A108494.P2634328183063784434

/-! ## A108494.P1984972705820942195

`A080054(n)/A057077(2*n)`
-/

namespace A108494.P1984972705820942195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A108494.P1984972705820942195

/-! ## A108494.P16164883593683476518

`A080054(n)/A320098(n)*A320968(n)`
-/

namespace A108494.P16164883593683476518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A320098 n : ℚ) * (A320968 n : ℚ)

end

end A108494.P16164883593683476518

/-! ## A108494.P8380630384583819043

`A007096(n)*A080054(n)/A189925(n)`
-/

namespace A108494.P8380630384583819043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n * A080054 n : ℚ) / (A189925 n : ℚ)

end

end A108494.P8380630384583819043

/-! ## A108494.P2014507071939189422

`A080054(n)/A262811(n)*A284628(n)`
-/

namespace A108494.P2014507071939189422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A262811 n : ℚ) * (A284628 n : ℚ)

end

end A108494.P2014507071939189422

/-! ## A108494.P12477063927868066617

`A292929(∑[n]+n)`
-/

namespace A108494.P12477063927868066617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292929 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A108494.P12477063927868066617

/-! ## A108494.P17391969455521888776

`A080054(n)/A087960(n²)`
-/

namespace A108494.P17391969455521888776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A108494.P17391969455521888776

/-!
# A108495: a(n) = (n^7 - n)/6.

The programs for A108495, the canonical program `A108495.P10044637329903708727` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108495 has offset 0).

The definition of A108495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108495.P13919376169891115763

`(n^7-n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108495.P13919376169891115763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 7 : ℤ) - (n : ℤ) : ℚ) / 6

end

end A108495.P13919376169891115763

namespace A108495

/-- `(n^7-n)/6` -/
def P13919376169891115763.Spec : Prop :=
  ∀ n, P13919376169891115763.a n = (A108495 n : ℚ)

end A108495

/-! ## A108495.P10044637329903708727

`(n-1)*A059721(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108495

/-- `(n-1)*A059721(n)` -/
def P10044637329903708727.Spec : Prop :=
  ∀ n, P10044637329903708727.a n = A108495 n

theorem P10044637329903708727.correct : P10044637329903708727.Spec := by
  intro n
  simp only [A108495]

end A108495

/-! ## A108495.P5626612563541149357

`7*A030180(n)`
-/

namespace A108495.P5626612563541149357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A030180 n

end

end A108495.P5626612563541149357

namespace A108495

/-- `7*A030180(n)` -/
def P5626612563541149357.Spec : Prop :=
  ∀ n, P5626612563541149357.a n = A108495 n

end A108495

/-! ## A108495.P4058710883513820323

`(n-1)*A228290(n)/6`
-/

namespace A108495.P4058710883513820323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((A228290 n : ℚ) / 6)

end

end A108495.P4058710883513820323

namespace A108495

/-- `(n-1)*A228290(n)/6` -/
def P4058710883513820323.Spec : Prop :=
  ∀ n, P4058710883513820323.a n = (A108495 n : ℚ)

end A108495

/-! ## A108495.P9714935531619213212

`A006325(n)*A069778(n)`
-/

namespace A108495.P9714935531619213212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n * A069778 n

end

end A108495.P9714935531619213212

namespace A108495

/-- `A006325(n)*A069778(n)` -/
def P9714935531619213212.Spec : Prop :=
  ∀ n, P9714935531619213212.a n = A108495 n

end A108495

/-! ## A108495.P7967188669130559031

`A208537(n+1)+A030180(n)`
-/

namespace A108495.P7967188669130559031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208537 (n + 1) + A030180 n

end

end A108495.P7967188669130559031

namespace A108495

/-- `A208537(n+1)+A030180(n)` -/
def P7967188669130559031.Spec : Prop :=
  ∀ n, P7967188669130559031.a n = A108495 n

end A108495

/-! ## A108495.P14381670340511043453

`7*∑[A002061(n)*A006325(n)]`
-/

namespace A108495.P14381670340511043453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108495.P14381670340511043453

namespace A108495

/-- `7*∑[A002061(n)*A006325(n)]` -/
def P14381670340511043453.Spec : Prop :=
  ∀ n, P14381670340511043453.a n = A108495 n

end A108495

/-! ## A108495.P2959067246435872790

`(n-1)*∑[A005900(n)]*A002061(n)`
-/

namespace A108495.P2959067246435872790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j) * A002061 n)

end

end A108495.P2959067246435872790

namespace A108495

/-- `(n-1)*∑[A005900(n)]*A002061(n)` -/
def P2959067246435872790.Spec : Prop :=
  ∀ n, P2959067246435872790.a n = A108495 n

end A108495

/-!
# A108496: 

The programs for A108496, there is no canonical definition to state claims against.
-/

/-! ## A108496.P4048316513935483500

`n*(n^42-1)/42`
-/

namespace A108496.P4048316513935483500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n ^ 42 : ℤ) - 1 : ℚ) / 42)

end

end A108496.P4048316513935483500

/-!
# A108497: Triangle read by rows: T(n,k) = k^(n+1)-k mod n, showing 1<=k<=n.

The programs for A108497, there is no canonical definition to state claims against.
-/

/-! ## A108497.P16525107228378716129

`∑[2*n]%A007895(A005994(n))`
-/

namespace A108497.P16525107228378716129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A007895 (A005994 n).toNat)

end

end A108497.P16525107228378716129

/-! ## A108497.P17644373896609093073

`A008441(n)*A159689(A229510(n+1))`
-/

namespace A108497.P17644373896609093073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A159689 (A229510 (n + 1)).toNat

end

end A108497.P17644373896609093073

/-! ## A108497.P12488354977726420472

`A053603(n)%A100565(A220718(n+1))`
-/

namespace A108497.P12488354977726420472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053603 n) (A100565 (A220718 (n + 1)).toNat)

end

end A108497.P12488354977726420472

/-! ## A108497.P15514882391057745325

`lcm(A001285(n), A194923(A220725(n+1)))`
-/

namespace A108497.P15514882391057745325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A194923 (A220725 (n + 1)).toNat)

end

end A108497.P15514882391057745325

/-! ## A108497.P17272894790586337879

`and(A305392(n+1), A359362(A157154(n)))`
-/

namespace A108497.P17272894790586337879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305392 (n + 1)) (A359362 (A157154 n).toNat)

end

end A108497.P17272894790586337879

/-!
# A108498: Triangle read by rows: T(n,k) = sum_i{1<=i<=n} k^i mod n, showing 1<=k<=n.

The programs for A108498, there is no canonical definition to state claims against.
-/

/-! ## A108498.P17104644469975877466

`lcm(A002260(n+1), A052344(A157109(n)))`
-/

namespace A108498.P17104644469975877466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A052344 (A157109 n).toNat)

end

end A108498.P17104644469975877466

/-! ## A108498.P3590044731415394192

`A002260(n+1)*A285080(A228832(n))`
-/

namespace A108498.P3590044731415394192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A285080 (A228832 n).toNat

end

end A108498.P3590044731415394192

/-! ## A108498.P17928793549308432717

`A207801(A008517(n+1))%A277227(n+1)`
-/

namespace A108498.P17928793549308432717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207801 (A008517 (n + 1)).toNat) (A277227 (n + 1))

end

end A108498.P17928793549308432717

/-! ## A108498.P13313499043021687583

`A319420(lcm(n+2, A108497(n+1)))`
-/

namespace A108498.P13313499043021687583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (Int.lcm (n + 2 : ℤ) (A108497 (n + 1)))

end

end A108498.P13313499043021687583

/-! ## A108498.P7544717075905389996

`A001222(A006288(n)^A108497(n+1))`
-/

namespace A108498.P7544717075905389996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A006288 n : ℚ) ^ (A108497 (n + 1) : ℤ))).toNat

end

end A108498.P7544717075905389996

/-!
# A108499: Number of values of k (1<=k<=n) where k^(n+1) = k mod n, or equivalently where sum_i{1<=i<=n} k^i = 0 mod n.

The programs for A108499, there is no canonical definition to state claims against.
-/

/-! ## A108499.P4058803101734200630

`1-A108500(n+1)+n`
-/

namespace A108499.P4058803101734200630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108500 (n + 1) + (n : ℤ)

end

end A108499.P4058803101734200630

/-! ## A108499.P12897160247040117553

`1-(A108500(-xor(n, -1))-n)`
-/

namespace A108499.P12897160247040117553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A108500 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ))

end

end A108499.P12897160247040117553

/-! ## A108499.P2529320163050445161

`2*n-(n-1)-A108500(2*n-(n-1))`
-/

namespace A108499.P2529320163050445161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1) - A108500 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A108499.P2529320163050445161

/-! ## A108499.P1504554214372704312

`A024000(A108500(n+1))+n`
-/

namespace A108499.P1504554214372704312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A108500 (n + 1)).toNat + (n : ℤ)

end

end A108499.P1504554214372704312

/-! ## A108499.P18208016934669390374

`abs(A108500(n+1)+A001478(n+1))`
-/

namespace A108499.P18208016934669390374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108500 (n + 1) + A001478 (n + 1)|

end

end A108499.P18208016934669390374

/-! ## A108499.P12669177026093648799

`A004736(A108500(n+1)+A000124(n))`
-/

namespace A108499.P12669177026093648799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A108500 (n + 1) + A000124 n).toNat

end

end A108499.P12669177026093648799

