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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A114400: Square roots of A114399.

The programs for A114400, there is no canonical definition to state claims against.
-/

/-! ## A114400.P7082751478671063035

`sqrt(A114399(n))`
-/

namespace A114400.P7082751478671063035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A114399 n : ℝ)

end

end A114400.P7082751478671063035

/-! ## A114400.P12919401318295401985

`A114398(n)-A114401(n)`
-/

namespace A114400.P12919401318295401985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 n - A114401 n

end

end A114400.P12919401318295401985

/-! ## A114400.P9196300287912724945

`A114398(n)-2*A114402(n)`
-/

namespace A114400.P9196300287912724945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 n - 2 * A114402 n

end

end A114400.P9196300287912724945

/-! ## A114400.P8717017410848313784

`sqrt(∩[n², A000695(n)])`
-/

namespace A114400.P8717017410848313784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A114400.P8717017410848313784

/-! ## A114400.P11362614998978017420

`sqrt(∩[n², A098871(n)-1])`
-/

namespace A114400.P11362614998978017420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A114400.P11362614998978017420

/-!
# A114401: a(n) = A114398(n)-A114400(n).

The programs for A114401, there is no canonical definition to state claims against.
-/

/-! ## A114401.P3156968468569039581

`A114398(n)-A114400(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114401.P3156968468569039581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 n - A114400 n

end

end A114401.P3156968468569039581

/-! ## A114401.P1702011066196991951

`2*A114402(n)`
-/

namespace A114401.P1702011066196991951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114402 n

end

end A114401.P1702011066196991951

/-! ## A114401.P3915599752224753732

`A114402(abs(1-n)+1)/sqrt(1-3/4)`
-/

namespace A114401.P3915599752224753732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114402 (|1 - (n : ℤ)| + 1).toNat : ℝ) / Real.sqrt (1 - (3 : ℚ) / 4 : ℝ)

end

end A114401.P3915599752224753732

/-! ## A114401.P9368066760265893908

`A114398(n)-sqrt(A114399(n))`
-/

namespace A114401.P9368066760265893908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114398 n : ℝ) - Real.sqrt (A114399 n : ℝ)

end

end A114401.P9368066760265893908

/-! ## A114401.P17779905520570952573

`A114402(char[1]+n)+A114402(n)`
-/

namespace A114401.P17779905520570952573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114402 ((if ∃ j, f1 j = n then 1 else 0) + n) + A114402 n

end

end A114401.P17779905520570952573

/-! ## A114401.P7060132095877925457

`A005843(A114402(n))`
-/

namespace A114401.P7060132095877925457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A114402 n).toNat

end

end A114401.P7060132095877925457

/-!
# A114402: a(n) = A114401(n)/2.

The programs for A114402, there is no canonical definition to state claims against.
-/

/-! ## A114402.P18369713588035623317

`A114401(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114402.P18369713588035623317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114401 n : ℚ) / 2

end

end A114402.P18369713588035623317

/-! ## A114402.P4765898266374301585

`(A114398(n)-A114400(n))/2`
-/

namespace A114402.P4765898266374301585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114398 n - A114400 n : ℚ) / 2

end

end A114402.P4765898266374301585

/-! ## A114402.P1406781599252775242

`log2(sqrt(A020639(2*(n+1))))*A114401(n)`
-/

namespace A114402.P1406781599252775242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (A020639 (2 * (n + 1)) : ℝ)) * (A114401 n : ℝ)

end

end A114402.P1406781599252775242

/-! ## A114402.P13143126491776225639

`log2(sqrt(2))*A114401(n)%A000045(n+1)`
-/

namespace A114402.P13143126491776225639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (Int.tmod (A114401 n) (A000045 (n + 1)) : ℝ)

end

end A114402.P13143126491776225639

/-! ## A114402.P10314716431046813627

`A001281(A114401(n))`
-/

namespace A114402.P10314716431046813627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A114401 n).toNat

end

end A114402.P10314716431046813627

/-! ## A114402.P3245000969713206623

`A004524(A114401(n)+1)`
-/

namespace A114402.P3245000969713206623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A114401 n + 1).toNat

end

end A114402.P3245000969713206623

/-! ## A114402.P9236394239883530592

`A004526(A114401(n)+1)`
-/

namespace A114402.P9236394239883530592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A114401 n + 1).toNat

end

end A114402.P9236394239883530592

/-! ## A114402.P17257459784136416139

`A028242(A114401(n)+1)`
-/

namespace A114402.P17257459784136416139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A114401 n + 1).toNat

end

end A114402.P17257459784136416139

/-! ## A114402.P11744114402111833209

`A004525(lcm(2, A114401(n)))`
-/

namespace A114402.P11744114402111833209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A114401 n))

end

end A114402.P11744114402111833209

/-! ## A114402.P266946526523103566

`A004526(or(1, A114401(n)))`
-/

namespace A114402.P266946526523103566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A114401 n)).toNat

end

end A114402.P266946526523103566

/-!
# A114403: Triprime gaps. First differences of A014612.

The programs for A114403, the canonical program `A114403.P7554247449644843870` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114403 has offset 1).

The definition of A114403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114403.P7554247449644843870

`A014612(n+2)-A014612(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114403

/-- `A014612(n+2)-A014612(n+1)` -/
def P7554247449644843870.Spec : Prop :=
  ∀ n, P7554247449644843870.a n = A114403 (n + 1)

theorem P7554247449644843870.correct : P7554247449644843870.Spec := by
  intro n
  simp only [A114403, Nat.add_sub_cancel]

end A114403

/-! ## A114403.P1589767122703684401

`A110934(n)-a(n-1)` with `a(0)=4`
-/

namespace A114403.P1589767122703684401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A110934 n - a (n - 1)

end

end A114403.P1589767122703684401

namespace A114403

/-- `A110934(n)-a(n-1)` -/
def P1589767122703684401.Spec : Prop :=
  ∀ n, P1589767122703684401.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P2316336945001770838

`Δ[∪[A217856(n+1), A033477(n)]]`
-/

namespace A114403.P2316336945001770838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P2316336945001770838

namespace A114403

/-- `Δ[∪[A217856(n+1), A033477(n)]]` -/
def P2316336945001770838.Spec : Prop :=
  ∀ n, P2316336945001770838.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P814413553876341657

`Δ[∪[A046316(n+1), A075818(n+1)]]`
-/

namespace A114403.P814413553876341657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P814413553876341657

namespace A114403

/-- `Δ[∪[A046316(n+1), A075818(n+1)]]` -/
def P814413553876341657.Spec : Prop :=
  ∀ n, P814413553876341657.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P17884609215258527806

`Δ[A014612(n+1)]`
-/

namespace A114403.P17884609215258527806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P17884609215258527806

namespace A114403

/-- `Δ[A014612(n+1)]` -/
def P17884609215258527806.Spec : Prop :=
  ∀ n, P17884609215258527806.a n = A114403 (n + 1)

theorem P17884609215258527806.correct : P17884609215258527806.Spec := by
  intro n
  simp only [A114403, Nat.add_sub_cancel, A114403.P17884609215258527806.f1, A114403.P17884609215258527806.a, A114403.P7554247449644843870.a, SequenceMachineLib.memo_apply]

end A114403

/-! ## A114403.P12156227426431906543

`Δ[eq[3, A001222(n+1)]]`
-/

namespace A114403.P12156227426431906543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P12156227426431906543

namespace A114403

/-- `Δ[eq[3, A001222(n+1)]]` -/
def P12156227426431906543.Spec : Prop :=
  ∀ n, P12156227426431906543.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P15895092755252263928

`Δ[eq[1, A001222(2*n-(n-1))-2]]`
-/

namespace A114403.P15895092755252263928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P15895092755252263928

namespace A114403

/-- `Δ[eq[1, A001222(2*n-(n-1))-2]]` -/
def P15895092755252263928.Spec : Prop :=
  ∀ n, P15895092755252263928.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P10126709501762386588

`A115402(n+1)-A110934(n+2)`
-/

namespace A114403.P10126709501762386588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115402 (n + 1) - A110934 (n + 2)

end

end A114403.P10126709501762386588

namespace A114403

/-- `A115402(n+1)-A110934(n+2)` -/
def P10126709501762386588.Spec : Prop :=
  ∀ n, P10126709501762386588.a n = A114403 (n + 1)

theorem P10126709501762386588.correct : P10126709501762386588.Spec := by
  intro n
  simp only [A114403, Nat.add_sub_cancel, A114403.P10126709501762386588.a, A114403.P7554247449644843870.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A110934, A110934.P9568083779091695448.a, A115402, A115402.P3622041107575865208.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114403

/-! ## A114403.P2021860317709451748

`A014612(n+2)%A014612(A000027(n+1))`
-/

namespace A114403.P2021860317709451748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (n + 2)) (A014612 (A000027 (n + 1)).toNat)

end

end A114403.P2021860317709451748

namespace A114403

/-- `A014612(n+2)%A014612(A000027(n+1))` -/
def P2021860317709451748.Spec : Prop :=
  ∀ n, P2021860317709451748.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P8333939214465084311

`Δ[Δ[A110209(n)]]`
-/

namespace A114403.P8333939214465084311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P8333939214465084311

namespace A114403

/-- `Δ[Δ[A110209(n)]]` -/
def P8333939214465084311.Spec : Prop :=
  ∀ n, P8333939214465084311.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P16096144286070614229

`Δ[A165712(a(n-1))]` with `a(0)=8`
-/

namespace A114403.P16096144286070614229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P16096144286070614229

namespace A114403

/-- `Δ[A165712(a(n-1))]` -/
def P16096144286070614229.Spec : Prop :=
  ∀ n, P16096144286070614229.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P2022810164490510461

`Δ[eq[1, A086436(n+1)-2]]`
-/

namespace A114403.P2022810164490510461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P2022810164490510461

namespace A114403

/-- `Δ[eq[1, A086436(n+1)-2]]` -/
def P2022810164490510461.Spec : Prop :=
  ∀ n, P2022810164490510461.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P8884349680924193822

`Δ[eq[1, A144494(n+1)-2]]`
-/

namespace A114403.P8884349680924193822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P8884349680924193822

namespace A114403

/-- `Δ[eq[1, A144494(n+1)-2]]` -/
def P8884349680924193822.Spec : Prop :=
  ∀ n, P8884349680924193822.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P12019895509406859584

`Δ[eq[1, A257091(n+1)-2]]`
-/

namespace A114403.P12019895509406859584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (n + 1) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P12019895509406859584

namespace A114403

/-- `Δ[eq[1, A257091(n+1)-2]]` -/
def P12019895509406859584.Spec : Prop :=
  ∀ n, P12019895509406859584.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P16206832042409585658

`Δ[eq[A038548(n+1)+1, A001055(n+1)]]`
-/

namespace A114403.P16206832042409585658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114403.P16206832042409585658

namespace A114403

/-- `Δ[eq[A038548(n+1)+1, A001055(n+1)]]` -/
def P16206832042409585658.Spec : Prop :=
  ∀ n, P16206832042409585658.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P14030275175831954094

`Δ[A000720(A124268(n+1))]`
-/

namespace A114403.P14030275175831954094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P14030275175831954094

namespace A114403

/-- `Δ[A000720(A124268(n+1))]` -/
def P14030275175831954094.Spec : Prop :=
  ∀ n, P14030275175831954094.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P18403787279225565957

`Δ[A058933(A105346(n+1))]`
-/

namespace A114403.P18403787279225565957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A105346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P18403787279225565957

namespace A114403

/-- `Δ[A058933(A105346(n+1))]` -/
def P18403787279225565957.Spec : Prop :=
  ∀ n, P18403787279225565957.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P12212211329097145441

`Δ[A058933(A124317(n+1))]`
-/

namespace A114403.P12212211329097145441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A124317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P12212211329097145441

namespace A114403

/-- `Δ[A058933(A124317(n+1))]` -/
def P12212211329097145441.Spec : Prop :=
  ∀ n, P12212211329097145441.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P5929923848341626224

`Δ[A207790(8*n+5)]`
-/

namespace A114403.P5929923848341626224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P5929923848341626224

namespace A114403

/-- `Δ[A207790(8*n+5)]` -/
def P5929923848341626224.Spec : Prop :=
  ∀ n, P5929923848341626224.a n = A114403 (n + 1)

end A114403

/-! ## A114403.P11022245005122443878

`Δ[A078840(A167614(n+1))]`
-/

namespace A114403.P11022245005122443878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114403.P11022245005122443878

namespace A114403

/-- `Δ[A078840(A167614(n+1))]` -/
def P11022245005122443878.Spec : Prop :=
  ∀ n, P11022245005122443878.a n = A114403 (n + 1)

end A114403

/-!
# A114404: 4-almost prime gaps. First differences of A014613.

The programs for A114404, the canonical program `A114404.P5917876743805946203` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114404 has offset 1).

The definition of A114404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014613, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114404.P5917876743805946203

`A014613(n+2)-A014613(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A114404

/-- `A014613(n+2)-A014613(n+1)` -/
def P5917876743805946203.Spec : Prop :=
  ∀ n, P5917876743805946203.a n = A114404 (n + 1)

theorem P5917876743805946203.correct : P5917876743805946203.Spec := by
  intro n
  simp only [A114404, Nat.add_sub_cancel]

end A114404

/-! ## A114404.P17071167498918764100

`Δ[A014613(n+1)]`
-/

namespace A114404.P17071167498918764100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114404.P17071167498918764100

namespace A114404

/-- `Δ[A014613(n+1)]` -/
def P17071167498918764100.Spec : Prop :=
  ∀ n, P17071167498918764100.a n = A114404 (n + 1)

theorem P17071167498918764100.correct : P17071167498918764100.Spec := by
  intro n
  simp only [A114404, Nat.add_sub_cancel, A114404.P17071167498918764100.f1, A114404.P17071167498918764100.a, A114404.P5917876743805946203.a, SequenceMachineLib.memo_apply]

end A114404

/-! ## A114404.P2200761714518611909

`A014613(n+2)%A014613(A000027(n+1))`
-/

namespace A114404.P2200761714518611909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014613 (n + 2)) (A014613 (A000027 (n + 1)).toNat)

end

end A114404.P2200761714518611909

namespace A114404

/-- `A014613(n+2)%A014613(A000027(n+1))` -/
def P2200761714518611909.Spec : Prop :=
  ∀ n, P2200761714518611909.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P5303789914483167733

`A014613(A028310(n+2))%A014613(n+1)`
-/

namespace A114404.P5303789914483167733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014613 (A028310 (n + 2)).toNat) (A014613 (n + 1))

end

end A114404.P5303789914483167733

namespace A114404

/-- `A014613(A028310(n+2))%A014613(n+1)` -/
def P5303789914483167733.Spec : Prop :=
  ∀ n, P5303789914483167733.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P5664052935342064320

`Δ[Δ[A110226(n)]]`
-/

namespace A114404.P5664052935342064320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114404.P5664052935342064320

namespace A114404

/-- `Δ[Δ[A110226(n)]]` -/
def P5664052935342064320.Spec : Prop :=
  ∀ n, P5664052935342064320.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P2483888560339052828

`Δ[eq[4, A001222(n+1)]]`
-/

namespace A114404.P2483888560339052828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114404.P2483888560339052828

namespace A114404

/-- `Δ[eq[4, A001222(n+1)]]` -/
def P2483888560339052828.Spec : Prop :=
  ∀ n, P2483888560339052828.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P12003712271666033139

`Δ[eq[2, A001222(2*n-(n-1))-2]]`
-/

namespace A114404.P12003712271666033139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114404.P12003712271666033139

namespace A114404

/-- `Δ[eq[2, A001222(2*n-(n-1))-2]]` -/
def P12003712271666033139.Spec : Prop :=
  ∀ n, P12003712271666033139.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P7183068165435611020

`Δ[record[A033987(n+1)*A101637(A033987(n+1))]]`
-/

namespace A114404.P7183068165435611020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1) * A101637 (A033987 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114404.P7183068165435611020

namespace A114404

/-- `Δ[record[A033987(n+1)*A101637(A033987(n+1))]]` -/
def P7183068165435611020.Spec : Prop :=
  ∀ n, P7183068165435611020.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P17555031128304657132

`Δ[eq[4, A000005(A061142(n+1))-1]]`
-/

namespace A114404.P17555031128304657132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061142 (n + 1)).toNat - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114404.P17555031128304657132

namespace A114404

/-- `Δ[eq[4, A000005(A061142(n+1))-1]]` -/
def P17555031128304657132.Spec : Prop :=
  ∀ n, P17555031128304657132.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P2987259852475880056

`Δ[eq[4, A086436(n+1)]]`
-/

namespace A114404.P2987259852475880056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114404.P2987259852475880056

namespace A114404

/-- `Δ[eq[4, A086436(n+1)]]` -/
def P2987259852475880056.Spec : Prop :=
  ∀ n, P2987259852475880056.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P5963857598978381811

`Δ[eq[4, A257091(n+1)]]`
-/

namespace A114404.P5963857598978381811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114404.P5963857598978381811

namespace A114404

/-- `Δ[eq[4, A257091(n+1)]]` -/
def P5963857598978381811.Spec : Prop :=
  ∀ n, P5963857598978381811.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P15208301204400903794

`Δ[eq[2, A144494(n+1)-2]]`
-/

namespace A114404.P15208301204400903794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114404.P15208301204400903794

namespace A114404

/-- `Δ[eq[2, A144494(n+1)-2]]` -/
def P15208301204400903794.Spec : Prop :=
  ∀ n, P15208301204400903794.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P12352313270672849336

`Δ[A000720(A124282(n+1))]`
-/

namespace A114404.P12352313270672849336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114404.P12352313270672849336

namespace A114404

/-- `Δ[A000720(A124282(n+1))]` -/
def P12352313270672849336.Spec : Prop :=
  ∀ n, P12352313270672849336.a n = A114404 (n + 1)

end A114404

/-! ## A114404.P14883372978536133656

`Δ[A078840(A167614(n+2)+1)]`
-/

namespace A114404.P14883372978536133656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114404.P14883372978536133656

namespace A114404

/-- `Δ[A078840(A167614(n+2)+1)]` -/
def P14883372978536133656.Spec : Prop :=
  ∀ n, P14883372978536133656.a n = A114404 (n + 1)

end A114404

/-!
# A114405: 5-almost prime gaps. First differences of A014614.

The programs for A114405, the canonical program `A114405.P5429345471271901955` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114405 has offset 1).

The definition of A114405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114405.P5429345471271901955

`A014614(n+2)-A014614(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114405

/-- `A014614(n+2)-A014614(n+1)` -/
def P5429345471271901955.Spec : Prop :=
  ∀ n, P5429345471271901955.a n = A114405 (n + 1)

theorem P5429345471271901955.correct : P5429345471271901955.Spec := by
  intro n
  simp only [A114405, Nat.add_sub_cancel]

end A114405

/-! ## A114405.P3084081967446159738

`Δ[∪[A110229(n+1), A110230(n+1)]]`
-/

namespace A114405.P3084081967446159738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110229 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114405.P3084081967446159738

namespace A114405

/-- `Δ[∪[A110229(n+1), A110230(n+1)]]` -/
def P3084081967446159738.Spec : Prop :=
  ∀ n, P3084081967446159738.a n = A114405 (n + 1)

end A114405

/-! ## A114405.P6736540768071878271

`Δ[A014614(n+1)]`
-/

namespace A114405.P6736540768071878271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114405.P6736540768071878271

namespace A114405

/-- `Δ[A014614(n+1)]` -/
def P6736540768071878271.Spec : Prop :=
  ∀ n, P6736540768071878271.a n = A114405 (n + 1)

theorem P6736540768071878271.correct : P6736540768071878271.Spec := by
  intro n
  simp only [A114405, Nat.add_sub_cancel, A114405.P6736540768071878271.f1, A114405.P6736540768071878271.a, A114405.P5429345471271901955.a, SequenceMachineLib.memo_apply]

end A114405

/-! ## A114405.P12924151509669990821

`Δ[A114966(n+1)-A114944(n+1)]`
-/

namespace A114405.P12924151509669990821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - A114944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114405.P12924151509669990821

namespace A114405

/-- `Δ[A114966(n+1)-A114944(n+1)]` -/
def P12924151509669990821.Spec : Prop :=
  ∀ n, P12924151509669990821.a n = A114405 (n + 1)

theorem P12924151509669990821.correct : P12924151509669990821.Spec := by
  intro n
  simp only [A114405, Nat.add_sub_cancel, A114405.P12924151509669990821.f1, A114405.P12924151509669990821.a, A114405.P5429345471271901955.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A114944, A114944.P5745295539132009725.a, A114966, A114966.P15379347381698072828.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114405

/-! ## A114405.P15617191758543551248

`A014614(A020725(n+1))%A014614(n+1)`
-/

namespace A114405.P15617191758543551248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014614 (A020725 (n + 1)).toNat) (A014614 (n + 1))

end

end A114405.P15617191758543551248

namespace A114405

/-- `A014614(A020725(n+1))%A014614(n+1)` -/
def P15617191758543551248.Spec : Prop :=
  ∀ n, P15617191758543551248.a n = A114405 (n + 1)

end A114405

/-! ## A114405.P14443168049574744161

`Δ[eq[5, A001222(n+1)]]`
-/

namespace A114405.P14443168049574744161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114405.P14443168049574744161

namespace A114405

/-- `Δ[eq[5, A001222(n+1)]]` -/
def P14443168049574744161.Spec : Prop :=
  ∀ n, P14443168049574744161.a n = A114405 (n + 1)

theorem P14443168049574744161.correct : P14443168049574744161.Spec := by
  intro n
  simp only [A114405, Nat.add_sub_cancel, A114405.P14443168049574744161.f2, A114405.P14443168049574744161.f3, A114405.P14443168049574744161.f1, A114405.P14443168049574744161.a, A114405.P5429345471271901955.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114405

/-! ## A114405.P1341537153605729314

`Δ[eq[5, A001222(3*n-(n-2))-1]]`
-/

namespace A114405.P1341537153605729314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114405.P1341537153605729314

namespace A114405

/-- `Δ[eq[5, A001222(3*n-(n-2))-1]]` -/
def P1341537153605729314.Spec : Prop :=
  ∀ n, P1341537153605729314.a n = A114405 (n + 1)

end A114405

/-! ## A114405.P3640703586610273472

`Δ[eq[5, A144494(n+3)]]`
-/

namespace A114405.P3640703586610273472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114405.P3640703586610273472

namespace A114405

/-- `Δ[eq[5, A144494(n+3)]]` -/
def P3640703586610273472.Spec : Prop :=
  ∀ n, P3640703586610273472.a n = A114405 (n + 1)

end A114405

/-! ## A114405.P2245936487366021028

`Δ[record[A032742(A046306(n+1))]]`
-/

namespace A114405.P2245936487366021028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A046306 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114405.P2245936487366021028

namespace A114405

/-- `Δ[record[A032742(A046306(n+1))]]` -/
def P2245936487366021028.Spec : Prop :=
  ∀ n, P2245936487366021028.a n = A114405 (n + 1)

end A114405

/-!
# A114406: 6-almost prime gaps. First differences of A046306.

The programs for A114406, there is no canonical definition to state claims against.
-/

/-! ## A114406.P3625626245735071674

`A046306(n+2)-A046306(n+1)`
-/

namespace A114406.P3625626245735071674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 2) - A046306 (n + 1)

end

end A114406.P3625626245735071674

/-! ## A114406.P13219802278599498420

`Δ[∪[A110231(n+1), A110232(n+1)]]`
-/

namespace A114406.P13219802278599498420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110231 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110232 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A114406.P13219802278599498420

/-! ## A114406.P9393287899852739262

`Δ[A046306(n+1)]`
-/

namespace A114406.P9393287899852739262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114406.P9393287899852739262

/-! ## A114406.P8863330515257696681

`A046306(A020725(n+1))%A046306(n+1)`
-/

namespace A114406.P8863330515257696681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046306 (A020725 (n + 1)).toNat) (A046306 (n + 1))

end

end A114406.P8863330515257696681

/-! ## A114406.P18215531042697938378

`A046306(A000027(n+2))%A046306(n+1)`
-/

namespace A114406.P18215531042697938378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046306 (A000027 (n + 2)).toNat) (A046306 (n + 1))

end

end A114406.P18215531042697938378

/-! ## A114406.P6412430532058708560

`abs(Δ[A046306(A080513(2*n))])`
-/

namespace A114406.P6412430532058708560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (A080513 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A114406.P6412430532058708560

/-! ## A114406.P17822124209699372069

`Δ[record[A046306(A126759(n))]]`
-/

namespace A114406.P17822124209699372069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114406.P17822124209699372069

/-! ## A114406.P13193168647929948961

`Δ[record[A046308(n+1)/A020639(A046308(n+1))]]`
-/

namespace A114406.P13193168647929948961
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046308 (n + 1) : ℚ) / (A020639 (A046308 (n + 1)).toNat : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114406.P13193168647929948961

/-! ## A114406.P259657260319527274

`Δ[A207790(Δ[A158575(n)]+1)]`
-/

namespace A114406.P259657260319527274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114406.P259657260319527274

/-! ## A114406.P5313712294293692754

`Δ[record[A054576(A046310(n+1))]]`
-/

namespace A114406.P5313712294293692754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A046310 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114406.P5313712294293692754

/-!
# A114407: 7-almost prime gaps. First differences of A046308.

The programs for A114407, there is no canonical definition to state claims against.
-/

/-! ## A114407.P2704997320463480503

`A046308(n+2)-A046308(n+1)`
-/

namespace A114407.P2704997320463480503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 2) - A046308 (n + 1)

end

end A114407.P2704997320463480503

/-! ## A114407.P14597502421671388770

`Δ[A046308(n+1)]`
-/

namespace A114407.P14597502421671388770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114407.P14597502421671388770

/-! ## A114407.P16407435486346648789

`A046308(A020725(n+1))%A046308(n+1)`
-/

namespace A114407.P16407435486346648789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046308 (A020725 (n + 1)).toNat) (A046308 (n + 1))

end

end A114407.P16407435486346648789

/-! ## A114407.P17178566712071356503

`A046308(A000027(n+2))%A046308(n+1)`
-/

namespace A114407.P17178566712071356503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046308 (A000027 (n + 2)).toNat) (A046308 (n + 1))

end

end A114407.P17178566712071356503

/-! ## A114407.P2539574389433109940

`Δ[record[A046308(A126759(n))]]`
-/

namespace A114407.P2539574389433109940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114407.P2539574389433109940

/-! ## A114407.P13995126215015536297

`Δ[record[A273943(A046310(n+1))]]`
-/

namespace A114407.P13995126215015536297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046310 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114407.P13995126215015536297

/-! ## A114407.P657958227313455424

`Δ[record[A117358(A046314(n+1))]]`
-/

namespace A114407.P657958227313455424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046314 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114407.P657958227313455424

/-! ## A114407.P11236082869098781839

`A046308(A135227(∑[n+1]))%A046308(n+1)`
-/

namespace A114407.P11236082869098781839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046308 (A135227 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A046308 (n + 1))

end

end A114407.P11236082869098781839

/-!
# A114408: 8-almost prime gaps. First differences of A046310.

The programs for A114408, there is no canonical definition to state claims against.
-/

/-! ## A114408.P8518592651743806260

`A046310(n+2)-A046310(n+1)`
-/

namespace A114408.P8518592651743806260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 2) - A046310 (n + 1)

end

end A114408.P8518592651743806260

/-! ## A114408.P10998543466424372248

`Δ[A046310(n+1)]`
-/

namespace A114408.P10998543466424372248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114408.P10998543466424372248

/-! ## A114408.P8808074137140560565

`abs(Δ[A046310(A008619(2*n))])`
-/

namespace A114408.P8808074137140560565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A114408.P8808074137140560565

/-! ## A114408.P14975717794779556914

`abs(Δ[A046310(A080513(2*n))])`
-/

namespace A114408.P14975717794779556914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A080513 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A114408.P14975717794779556914

/-! ## A114408.P726090177009195243

`Δ[record[A046310(A126759(n))]]`
-/

namespace A114408.P726090177009195243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114408.P726090177009195243

/-! ## A114408.P1100613919069977008

`A001281(Δ[lcm(2, A046312(n+1))])`
-/

namespace A114408.P1100613919069977008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046312 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114408.P1100613919069977008

/-! ## A114408.P9354303154225083674

`Δ[A046312(n+1)/2]%A130179(n+1)`
-/

namespace A114408.P9354303154225083674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A130179 (n + 1))

end

end A114408.P9354303154225083674

/-! ## A114408.P11187038842178442060

`Δ[A046312(A000196((n+1)²))/2]`
-/

namespace A114408.P11187038842178442060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (A000196 ((n + 1) ^ 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114408.P11187038842178442060

/-! ## A114408.P18305634541668649419

`A004526(A321694(n)+Δ[A046312(n+1)])`
-/

namespace A114408.P18305634541668649419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A321694 n + (f1 (n + 1) - f1 n)).toNat

end

end A114408.P18305634541668649419

/-!
# A114409: Length of all-prime chain of prime[n] + successive even pentagonal numbers.

The programs for A114409, there is no canonical definition to state claims against.
-/

/-! ## A114409.P12262162990777578556

`gcd(A039162(n+1), A039174(A144186(n)))`
-/

namespace A114409.P12262162990777578556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039162 (n + 1)) (A039174 (A144186 n).toNat)

end

end A114409.P12262162990777578556

/-! ## A114409.P3618655236630279576

`gcd(A066182(A050879(n+1)), A073956(n+1))`
-/

namespace A114409.P3618655236630279576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066182 (A050879 (n + 1)).toNat) (A073956 (n + 1))

end

end A114409.P3618655236630279576

/-! ## A114409.P9793023718263457611

`gcd(A133031(n+1), A155469(A348705(n+1)))`
-/

namespace A114409.P9793023718263457611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133031 (n + 1)) (A155469 (A348705 (n + 1)).toNat)

end

end A114409.P9793023718263457611

/-! ## A114409.P9526617988385303906

`gcd(eq[1, A054868(n)], A252495(A172508(n+2)))`
-/

namespace A114409.P9526617988385303906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A252495 (A172508 (n + 2)).toNat)

end

end A114409.P9526617988385303906

/-! ## A114409.P11601664003571377301

`gcd(A034448(3*n+4), A057889(A073956(n+1)))`
-/

namespace A114409.P11601664003571377301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (3 * n + 4)) (A057889 (A073956 (n + 1)).toNat)

end

end A114409.P11601664003571377301

/-!
# A114410: Cumulative sum of double primorials (A079078).

The programs for A114410, there is no canonical definition to state claims against.
-/

/-! ## A114410.P13193692396624782095

`∑[A079078(n)]`
-/

namespace A114410.P13193692396624782095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114410.P13193692396624782095

/-! ## A114410.P17444470998837313984

`∑[a(n-2)*A000040(n)]` with `a(0)=1, a(1)=2`
-/

namespace A114410.P17444470998837313984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) * A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114410.P17444470998837313984

/-! ## A114410.P5332353517500739072

`∑[a(n-2)*A006005(n)]` with `a(0)=1, a(1)=2`
-/

namespace A114410.P5332353517500739072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) * A006005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114410.P5332353517500739072

/-! ## A114410.P2905818519772118610

`∑[A002110(n)/a(n-1)]` with `a(0)=1`
-/

namespace A114410.P2905818519772118610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A002110 n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114410.P2905818519772118610

/-! ## A114410.P10665121317284702222

`∑[A019565(ceil(2*(2^n-1)/3))]`
-/

namespace A114410.P10665121317284702222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114410.P10665121317284702222

/-!
# A114411: Triple primorial n### = n#3.

The programs for A114411, the canonical program `A114411.P1982010667208140232` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114411 has offset 0).

The definition of A114411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114411.P1982010667208140232

`a(n-3)*A000040(n)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114411

/-- `a(n-3)*A000040(n)` -/
def P1982010667208140232.Spec : Prop :=
  ∀ n, P1982010667208140232.a n = A114411 n

theorem P1982010667208140232.correct : P1982010667208140232.Spec := by
  intro n
  simp only [A114411]

end A114411

/-! ## A114411.P2549711317990693837

`a(n-3)*A095313(n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A114411.P2549711317990693837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) * A095313 n

end

end A114411.P2549711317990693837

namespace A114411

/-- `a(n-3)*A095313(n)` -/
def P2549711317990693837.Spec : Prop :=
  ∀ n, P2549711317990693837.a n = A114411 n

end A114411

/-! ## A114411.P3316398908269698038

`a(n-3)*A008578(n+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A114411.P3316398908269698038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) * A008578 (n + 1)

end

end A114411.P3316398908269698038

namespace A114411

/-- `a(n-3)*A008578(n+1)` -/
def P3316398908269698038.Spec : Prop :=
  ∀ n, P3316398908269698038.a n = A114411 n

end A114411

/-! ## A114411.P3466811985071660986

`a(n-3)*A182986(n+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A114411.P3466811985071660986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) * A182986 (n + 1)

end

end A114411.P3466811985071660986

namespace A114411

/-- `a(n-3)*A182986(n+1)` -/
def P3466811985071660986.Spec : Prop :=
  ∀ n, P3466811985071660986.a n = A114411 n

end A114411

/-! ## A114411.P5177823066699083555

`a(n-3)*record[A006530(n+1)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A114411.P5177823066699083555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114411.P5177823066699083555

namespace A114411

/-- `a(n-3)*record[A006530(n+1)]` -/
def P5177823066699083555.Spec : Prop :=
  ∀ n, P5177823066699083555.a n = A114411 n

end A114411

/-!
# A114416: Records in 6-almost prime gaps ordered by merit.

The programs for A114416, there is no canonical definition to state claims against.
-/

/-! ## A114416.P7655960705904260080

`record[A114406(n+1)]`
-/

namespace A114416.P7655960705904260080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114416.P7655960705904260080

/-!
# A114417: Records in 7-almost prime gaps, ordered by merit.

The programs for A114417, there is no canonical definition to state claims against.
-/

/-! ## A114417.P13588645473302263195

`record[A114407(n+1)]`
-/

namespace A114417.P13588645473302263195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114417.P13588645473302263195

/-!
# A114418: Records in 8-almost prime gaps ordered by merit.

The programs for A114418, there is no canonical definition to state claims against.
-/

/-! ## A114418.P17503707859032851799

`record[A114408(n+1)]`
-/

namespace A114418.P17503707859032851799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114418.P17503707859032851799

/-!
# A114419: a(n) is the smallest number k such that Fibonacci(k) is a multiple of primorial(n).

The programs for A114419, there is no canonical definition to state claims against.
-/

/-! ## A114419.P6902887664364266011

`a(n-1)*A267095(n)` with `a(0)=3`
-/

namespace A114419.P6902887664364266011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A267095 n

end

end A114419.P6902887664364266011

/-! ## A114419.P10999585996139630093

`lcm(a(n-1), A001602(n+1))` with `a(0)=3`
-/

namespace A114419.P10999585996139630093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A001602 (n + 1))

end

end A114419.P10999585996139630093

/-! ## A114419.P4131829985149075177

`∏[A001086(∑[A329034(n+1)])]`
-/

namespace A114419.P4131829985149075177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329034 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001086 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114419.P4131829985149075177

/-! ## A114419.P10907456595759812054

`A233287(p?[A339502(2*n+3)+n+1])`
-/

namespace A114419.P10907456595759812054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339502 (2 * n + 3) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114419.P10907456595759812054

/-! ## A114419.P3582493244603395039

`A233287(A317644(∑[n]))`
-/

namespace A114419.P3582493244603395039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (A317644 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A114419.P3582493244603395039

/-!
# A114420: Quadruple primorial n#### = n#4.

The programs for A114420, there is no canonical definition to state claims against.
-/

/-! ## A114420.P1584961644486264002

`a(n-4)*A000040(n)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114420.P1584961644486264002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 4) * A000040 n

end

end A114420.P1584961644486264002

/-! ## A114420.P3210837004987600629

`sqrt(A001248(n))*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114420.P3210837004987600629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  Real.sqrt (A001248 n : ℝ) * a (n - 4)

end

end A114420.P3210837004987600629

/-! ## A114420.P2680526896555698667

`a(n-4)*A008578(n+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114420.P2680526896555698667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 4) * A008578 (n + 1)

end

end A114420.P2680526896555698667

/-! ## A114420.P1844366713305462711

`a(n-4)*record[A006530(n+1)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114420.P1844366713305462711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 4) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114420.P1844366713305462711

/-! ## A114420.P11288601080877469567

`a(n-4)*comp[A018252(n+1)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A114420.P11288601080877469567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 4) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A114420.P11288601080877469567

/-!
# A114421: Quintuple primorial n##### = n#5.

The programs for A114421, there is no canonical definition to state claims against.
-/

/-! ## A114421.P5276975742986189429

`a(n-5)*A015919(n+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A114421.P5276975742986189429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 7] fun n a =>
  a (n - 5) * A015919 (n + 1)

end

end A114421.P5276975742986189429

/-! ## A114421.P4058090098923539731

`a(n-5)*record[A014963(n+1)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A114421.P4058090098923539731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 7] fun n a =>
  a (n - 5) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114421.P4058090098923539731

/-! ## A114421.P5256561630062653997

`lcm(A045965(a(n-1)), A321724(n+1))` with `a(0)=1`
-/

namespace A114421.P5256561630062653997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A045965 (a (n - 1))) (A321724 (n + 1))

end

end A114421.P5256561630062653997

/-! ## A114421.P7232118345404611869

`A302033(A224521(n))`
-/

namespace A114421.P7232118345404611869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A224521 n).toNat

end

end A114421.P7232118345404611869

/-! ## A114421.P10600776139372795557

`∏{e}[∏[A214080(n+3)], A000040(#)]`
-/

namespace A114421.P10600776139372795557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A114421.P10600776139372795557

/-!
# A114423: Multifactorial array read by ascending antidiagonals.

The programs for A114423, there is no canonical definition to state claims against.
-/

/-! ## A114423.P7106466148145623284

`gcd(A035544(A154537(n)), A119502(n))`
-/

namespace A114423.P7106466148145623284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035544 (A154537 n).toNat) (A119502 n)

end

end A114423.P7106466148145623284

/-! ## A114423.P5215529632733992191

`A268340(A271839(3*n+1))+A216919(n+1)`
-/

namespace A114423.P5215529632733992191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A271839 (3 * n + 1)).toNat + A216919 (n + 1)

end

end A114423.P5215529632733992191

/-! ## A114423.P4169995015253223367

`A181502(A136170(n))+A152656(n)`
-/

namespace A114423.P4169995015253223367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181502 (A136170 n).toNat + A152656 n

end

end A114423.P4169995015253223367

/-! ## A114423.P4288600595139841844

`A152656(n)+A025426(A001644(n+2))`
-/

namespace A114423.P4288600595139841844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 n + A025426 (A001644 (n + 2)).toNat

end

end A114423.P4288600595139841844

/-! ## A114423.P937739988969925956

`A265537(gcd(A109971(n+1), A127631(n)))`
-/

namespace A114423.P937739988969925956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 (Int.gcd (A109971 (n + 1)) (A127631 n))

end

end A114423.P937739988969925956

/-!
# A114425: Product of the first n 3-almost primes (A014612).

The programs for A114425, there is no canonical definition to state claims against.
-/

/-! ## A114425.P8917119338884176544

`∏[eq[3, ∑{e}[n, #]]]`
-/

namespace A114425.P8917119338884176544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P8917119338884176544

/-! ## A114425.P12189671779639780332

`∏[Δ[A110209(n)]]`
-/

namespace A114425.P12189671779639780332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P12189671779639780332

/-! ## A114425.P9134563150212566805

`∏[A014612(n+1)]`
-/

namespace A114425.P9134563150212566805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P9134563150212566805

/-! ## A114425.P17092903149856419295

`∏[A165712(a(n-1))]` with `a(0)=8`
-/

namespace A114425.P17092903149856419295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P17092903149856419295

/-! ## A114425.P10742720315269729322

`∏[eq[3, A001222(n+1)]+1]`
-/

namespace A114425.P10742720315269729322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P10742720315269729322

/-! ## A114425.P13501533678302562330

`∏[eq[n, n-a(A001222(n))]]` with `a(0)=1, a(1)=3`
-/

namespace A114425.P13501533678302562330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  (n : ℤ) - f3 (A001222 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P13501533678302562330

/-! ## A114425.P16182820771191021825

`a(n-1)*A014612(n%a(n-1)+1)` with `a(0)=8`
-/

namespace A114425.P16182820771191021825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * A014612 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A114425.P16182820771191021825

/-! ## A114425.P15787492027916446307

`∏[eq[4, A001222(A004277(n))]]`
-/

namespace A114425.P15787492027916446307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P15787492027916446307

/-! ## A114425.P12218885891311135682

`∏[eq[4, A001222(A008486(n))]]`
-/

namespace A114425.P12218885891311135682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114425.P12218885891311135682

/-!
# A114426: Product of the first n 4-almost primes (A014613).

The programs for A114426, there is no canonical definition to state claims against.
-/

/-! ## A114426.P14199563734040771296

`∏[Δ[A110226(n)]]`
-/

namespace A114426.P14199563734040771296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114426.P14199563734040771296

/-! ## A114426.P5428331986123382858

`∏[A014613(n+1)]`
-/

namespace A114426.P5428331986123382858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114426.P5428331986123382858

/-! ## A114426.P16551846908444669687

`∏[A323350(n+1)]`
-/

namespace A114426.P16551846908444669687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114426.P16551846908444669687

/-! ## A114426.P309359798245270070

`∏[eq[4, A001222(n+1)]+1]`
-/

namespace A114426.P309359798245270070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114426.P309359798245270070

/-! ## A114426.P15186872254937959686

`∏[eq[5, A001222(A008486(n))]]`
-/

namespace A114426.P15186872254937959686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A114426.P15186872254937959686

/-!
# A114428: Primes of the form 1 + product of the first n semiprimes.

The programs for A114428, there is no canonical definition to state claims against.
-/

/-! ## A114428.P18195697950979487230

`A112141(A224081(n+1))+1`
-/

namespace A114428.P18195697950979487230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112141 (A224081 (n + 1)).toNat + 1

end

end A114428.P18195697950979487230

/-!
# A114429: Larger of the greatest twin prime pair with n digits.

The programs for A114429, there is no canonical definition to state claims against.
-/

/-! ## A114429.P6256992366060079474

`A092250(n+1)+2`
-/

namespace A114429.P6256992366060079474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092250 (n + 1) + 2

end

end A114429.P6256992366060079474

/-! ## A114429.P15965462036123114598

`A011557(n+1)-A327133(n+1)+2`
-/

namespace A114429.P15965462036123114598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A327133 (n + 1) + 2

end

end A114429.P15965462036123114598

/-! ## A114429.P13211335348878782747

`A178500(n+1)-A327133(n+1)+2`
-/

namespace A114429.P13211335348878782747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) - A327133 (n + 1) + 2

end

end A114429.P13211335348878782747

/-! ## A114429.P1988666685254389724

`A178501(n+2)-A327133(n+1)+2`
-/

namespace A114429.P1988666685254389724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 2) - A327133 (n + 1) + 2

end

end A114429.P1988666685254389724

/-! ## A114429.P4916190775903336709

`Δ[A002275(n+1)]-A327133(n+1)+2`
-/

namespace A114429.P4916190775903336709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A327133 (n + 1) + 2

end

end A114429.P4916190775903336709

/-!
# A114434: To obtain a(n), write the n-th composite number as a product of primes, add 1 to each prime and multiply.

The programs for A114434, the canonical program `A114434.P1157299861730347010` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114434 has offset 1).

The definition of A114434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114434.P1157299861730347010

`A003959(A002808(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114434

/-- `A003959(A002808(n+1))` -/
def P1157299861730347010.Spec : Prop :=
  ∀ n, P1157299861730347010.a n = A114434 (n + 1)

theorem P1157299861730347010.correct : P1157299861730347010.Spec := by
  intro n
  simp only [A114434, Nat.add_sub_cancel]

end A114434

/-! ## A114434.P15579618601746494087

`A003959(A018252(n+2))`
-/

namespace A114434.P15579618601746494087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A018252 (n + 2)).toNat

end

end A114434.P15579618601746494087

namespace A114434

/-- `A003959(A018252(n+2))` -/
def P15579618601746494087.Spec : Prop :=
  ∀ n, P15579618601746494087.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P7155419772996255987

`A003959(lt[1, A074206(n)])`
-/

namespace A114434.P7155419772996255987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114434.P7155419772996255987

namespace A114434

/-- `A003959(lt[1, A074206(n)])` -/
def P7155419772996255987.Spec : Prop :=
  ∀ n, P7155419772996255987.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P13850970723100994558

`A003959(comp[A158611(n+1)])`
-/

namespace A114434.P13850970723100994558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A114434.P13850970723100994558

namespace A114434

/-- `A003959(comp[A158611(n+1)])` -/
def P13850970723100994558.Spec : Prop :=
  ∀ n, P13850970723100994558.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P3216070306215391092

`A003959(A072668(n+1)+1)`
-/

namespace A114434.P3216070306215391092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A072668 (n + 1) + 1).toNat

end

end A114434.P3216070306215391092

namespace A114434

/-- `A003959(A072668(n+1)+1)` -/
def P3216070306215391092.Spec : Prop :=
  ∀ n, P3216070306215391092.a n = A114434 (n + 1)

theorem P3216070306215391092.correct : P3216070306215391092.Spec := by
  intro n
  simp only [A114434, Nat.add_sub_cancel, A114434.P3216070306215391092.a, A114434.P1157299861730347010.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A072668, A072668.P5648318357023435289.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A014963, A014963.P5975177236000282614.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114434

/-! ## A114434.P3508951990316762411

`A003959(A067563(n+1)/A000040(n+1))`
-/

namespace A114434.P3508951990316762411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A067563 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A114434.P3508951990316762411

namespace A114434

/-- `A003959(A067563(n+1)/A000040(n+1))` -/
def P3508951990316762411.Spec : Prop :=
  ∀ n, P3508951990316762411.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P5723629577044446893

`A003959(∪[A091212(n+1), A270574(n+1)])`
-/

namespace A114434.P5723629577044446893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A114434.P5723629577044446893

namespace A114434

/-- `A003959(∪[A091212(n+1), A270574(n+1)])` -/
def P5723629577044446893.Spec : Prop :=
  ∀ n, P5723629577044446893.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P18321388682598889074

`A003959(lt[1, A003415(n)])`
-/

namespace A114434.P18321388682598889074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114434.P18321388682598889074

namespace A114434

/-- `A003959(lt[1, A003415(n)])` -/
def P18321388682598889074.Spec : Prop :=
  ∀ n, P18321388682598889074.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P7399742354239659050

`∏{d}[A018252(n+2), A000203(A014963(#))]`
-/

namespace A114434.P7399742354239659050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000203 (A014963 d).toNat

end

end A114434.P7399742354239659050

namespace A114434

/-- `∏{d}[A018252(n+2), A000203(A014963(#))]` -/
def P7399742354239659050.Spec : Prop :=
  ∀ n, P7399742354239659050.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P2915651873912092523

`A167344(A002808(n+1))/A249140(n+1)`
-/

namespace A114434.P2915651873912092523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (A002808 (n + 1)).toNat : ℚ) / (A249140 (n + 1) : ℚ)

end

end A114434.P2915651873912092523

namespace A114434

/-- `A167344(A002808(n+1))/A249140(n+1)` -/
def P2915651873912092523.Spec : Prop :=
  ∀ n, P2915651873912092523.a n = (A114434 (n + 1) : ℚ)

end A114434

/-! ## A114434.P6533757280963092357

`A064478(lt[n+1, A064478(n)])`
-/

namespace A114434.P6533757280963092357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114434.P6533757280963092357

namespace A114434

/-- `A064478(lt[n+1, A064478(n)])` -/
def P6533757280963092357.Spec : Prop :=
  ∀ n, P6533757280963092357.a n = A114434 (n + 1)

end A114434

/-! ## A114434.P11066994383388393233

`A064478(lt[1, A064478(n)-n])`
-/

namespace A114434.P11066994383388393233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114434.P11066994383388393233

namespace A114434

/-- `A064478(lt[1, A064478(n)-n])` -/
def P11066994383388393233.Spec : Prop :=
  ∀ n, P11066994383388393233.a n = A114434 (n + 1)

end A114434

/-!
# A114435: Indices of 4-almost prime triangular numbers.

The programs for A114435, the canonical program `A114435.P3528622552500104111` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114435 has offset 1).

The definition of A114435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114435.P3528622552500104111

`eq[4, A069904(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114435

/-- `eq[4, A069904(n+1)]+1` -/
def P3528622552500104111.Spec : Prop :=
  ∀ n, (P3528622552500104111.a n : ℤ) = A114435 (n + 1)

theorem P3528622552500104111.correct : P3528622552500104111.Spec := by
  intro n
  simp only [A114435, Nat.add_sub_cancel]

end A114435

/-! ## A114435.P7592097152532475646

`eq[5-∑{e}[n, #], A001222(n+1)]`
-/

namespace A114435.P7592097152532475646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A114435.P7592097152532475646

namespace A114435

/-- `eq[5-∑{e}[n, #], A001222(n+1)]` -/
def P7592097152532475646.Spec : Prop :=
  ∀ n, (P7592097152532475646.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P5528672769078827860

`eq[4, A069904(A028310(n))]`
-/

namespace A114435.P5528672769078827860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P5528672769078827860

namespace A114435

/-- `eq[4, A069904(A028310(n))]` -/
def P5528672769078827860.Spec : Prop :=
  ∀ n, (P5528672769078827860.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P16729019611369038676

`eq[4, A069904(A000007(n)+n)]`
-/

namespace A114435.P16729019611369038676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P16729019611369038676

namespace A114435

/-- `eq[4, A069904(A000007(n)+n)]` -/
def P16729019611369038676.Spec : Prop :=
  ∀ n, (P16729019611369038676.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P7255305446672106616

`eq[4, A069904(A065033(2*n))]`
-/

namespace A114435.P7255305446672106616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P7255305446672106616

namespace A114435

/-- `eq[4, A069904(A065033(2*n))]` -/
def P7255305446672106616.Spec : Prop :=
  ∀ n, (P7255305446672106616.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P8862782209716850031

`eq[4, A069904(A123108(2*n))]`
-/

namespace A114435.P8862782209716850031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P8862782209716850031

namespace A114435

/-- `eq[4, A069904(A123108(2*n))]` -/
def P8862782209716850031.Spec : Prop :=
  ∀ n, (P8862782209716850031.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P5524204316430878207

`eq[4, ∑{e}[∑[n], #]]`
-/

namespace A114435.P5524204316430878207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114435.P5524204316430878207

namespace A114435

/-- `eq[4, ∑{e}[∑[n], #]]` -/
def P5524204316430878207.Spec : Prop :=
  ∀ n, (P5524204316430878207.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P5306064758523063023

`eq[3, A138750(∑{e}[n²+n, #])]`
-/

namespace A114435.P5306064758523063023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138750 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P5306064758523063023

namespace A114435

/-- `eq[3, A138750(∑{e}[n²+n, #])]` -/
def P5306064758523063023.Spec : Prop :=
  ∀ n, (P5306064758523063023.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P1186092000984840155

`eq[4, A069904(A233583(n+1))]`
-/

namespace A114435.P1186092000984840155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P1186092000984840155

namespace A114435

/-- `eq[4, A069904(A233583(n+1))]` -/
def P1186092000984840155.Spec : Prop :=
  ∀ n, (P1186092000984840155.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P4991524409759982358

`A080098(A076578(n+1))`
-/

namespace A114435.P4991524409759982358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A076578 (n + 1)).toNat

end

end A114435.P4991524409759982358

namespace A114435

/-- `A080098(A076578(n+1))` -/
def P4991524409759982358.Spec : Prop :=
  ∀ n, P4991524409759982358.a n = A114435 (n + 1)

end A114435

/-! ## A114435.P17995447166100047668

`eq[4, A001222(∑[n+1])]+1`
-/

namespace A114435.P17995447166100047668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114435.P17995447166100047668

namespace A114435

/-- `eq[4, A001222(∑[n+1])]+1` -/
def P17995447166100047668.Spec : Prop :=
  ∀ n, (P17995447166100047668.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P18199979890363820481

`eq[4, A001222(A179865(n+1))]`
-/

namespace A114435.P18199979890363820481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P18199979890363820481

namespace A114435

/-- `eq[4, A001222(A179865(n+1))]` -/
def P18199979890363820481.Spec : Prop :=
  ∀ n, (P18199979890363820481.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P15134476539944515160

`eq[4, A001222(A000217(abs(1-n)+1))]`
-/

namespace A114435.P15134476539944515160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000217 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P15134476539944515160

namespace A114435

/-- `eq[4, A001222(A000217(abs(1-n)+1))]` -/
def P15134476539944515160.Spec : Prop :=
  ∀ n, (P15134476539944515160.a n : ℤ) = A114435 (n + 1)

end A114435

/-! ## A114435.P5351985781090610546

`eq[4, A001222(A027379(n)-A005843(n))]`
-/

namespace A114435.P5351985781090610546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027379 n - A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114435.P5351985781090610546

namespace A114435

/-- `eq[4, A001222(A027379(n)-A005843(n))]` -/
def P5351985781090610546.Spec : Prop :=
  ∀ n, (P5351985781090610546.a n : ℤ) = A114435 (n + 1)

end A114435

/-!
# A114436: Indices of 5-almost prime triangular numbers.

The programs for A114436, the canonical program `A114436.P7426552047952799500` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114436 has offset 1).

The definition of A114436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114436.P7426552047952799500

`eq[5, A069904(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114436

/-- `eq[5, A069904(n+1)]+1` -/
def P7426552047952799500.Spec : Prop :=
  ∀ n, (P7426552047952799500.a n : ℤ) = A114436 (n + 1)

theorem P7426552047952799500.correct : P7426552047952799500.Spec := by
  intro n
  simp only [A114436, Nat.add_sub_cancel]

end A114436

/-! ## A114436.P12175893522551245401

`A153152(eq[5, A069904(n+1)])`
-/

namespace A114436.P12175893522551245401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114436.P12175893522551245401

namespace A114436

/-- `A153152(eq[5, A069904(n+1)])` -/
def P12175893522551245401.Spec : Prop :=
  ∀ n, P12175893522551245401.a n = A114436 (n + 1)

end A114436

/-! ## A114436.P14364544299996997485

`eq[6, A001222(n+1)+A001222(A257143(n))]`
-/

namespace A114436.P14364544299996997485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A257143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114436.P14364544299996997485

namespace A114436

/-- `eq[6, A001222(n+1)+A001222(A257143(n))]` -/
def P14364544299996997485.Spec : Prop :=
  ∀ n, (P14364544299996997485.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P10815365914799500690

`eq[7, A001222(n+1)+A001222(A008486(n))]`
-/

namespace A114436.P10815365914799500690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114436.P10815365914799500690

namespace A114436

/-- `eq[7, A001222(n+1)+A001222(A008486(n))]` -/
def P10815365914799500690.Spec : Prop :=
  ∀ n, (P10815365914799500690.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P7025900670150998460

`eq[8, A001222(n+1)+A001222(A008458(n))]`
-/

namespace A114436.P7025900670150998460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114436.P7025900670150998460

namespace A114436

/-- `eq[8, A001222(n+1)+A001222(A008458(n))]` -/
def P7025900670150998460.Spec : Prop :=
  ∀ n, (P7025900670150998460.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P2001231405746824011

`eq[8, A001222(n+1)+A001222(A008574(n))]`
-/

namespace A114436.P2001231405746824011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114436.P2001231405746824011

namespace A114436

/-- `eq[8, A001222(n+1)+A001222(A008574(n))]` -/
def P2001231405746824011.Spec : Prop :=
  ∀ n, (P2001231405746824011.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P14614226156372421113

`eq[5, A069904(A233583(n+1))]`
-/

namespace A114436.P14614226156372421113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114436.P14614226156372421113

namespace A114436

/-- `eq[5, A069904(A233583(n+1))]` -/
def P14614226156372421113.Spec : Prop :=
  ∀ n, (P14614226156372421113.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P16944108998807540202

`A080098(A076579(n+1))`
-/

namespace A114436.P16944108998807540202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A076579 (n + 1)).toNat

end

end A114436.P16944108998807540202

namespace A114436

/-- `A080098(A076579(n+1))` -/
def P16944108998807540202.Spec : Prop :=
  ∀ n, P16944108998807540202.a n = A114436 (n + 1)

end A114436

/-! ## A114436.P1237102083004783869

`eq[5, A001222(C(n+2, 2))]+1`
-/

namespace A114436.P1237102083004783869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114436.P1237102083004783869

namespace A114436

/-- `eq[5, A001222(C(n+2, 2))]+1` -/
def P1237102083004783869.Spec : Prop :=
  ∀ n, (P1237102083004783869.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P15677945621039409228

`eq[5, A001222(A179865(n+1))]`
-/

namespace A114436.P15677945621039409228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114436.P15677945621039409228

namespace A114436

/-- `eq[5, A001222(A179865(n+1))]` -/
def P15677945621039409228.Spec : Prop :=
  ∀ n, (P15677945621039409228.a n : ℤ) = A114436 (n + 1)

end A114436

/-! ## A114436.P12078805873262496680

`eq[5, A001222(A000217(n+1))]+1`
-/

namespace A114436.P12078805873262496680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114436.P12078805873262496680

namespace A114436

/-- `eq[5, A001222(A000217(n+1))]+1` -/
def P12078805873262496680.Spec : Prop :=
  ∀ n, (P12078805873262496680.a n : ℤ) = A114436 (n + 1)

end A114436

/-!
# A114437: Indices of 6-almost prime triangular numbers.

The programs for A114437, there is no canonical definition to state claims against.
-/

/-! ## A114437.P12323365787408208808

`floor(sqrt(2*A076580(n+1)))`
-/

namespace A114437.P12323365787408208808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A076580 (n + 1))

end

end A114437.P12323365787408208808

/-! ## A114437.P14604852038303647520

`eq[A069904(n+1), A267259(A069904(n+1))]+1`
-/

namespace A114437.P14604852038303647520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 (A069904 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114437.P14604852038303647520

/-! ## A114437.P5795668334407727482

`A028242(ceil(2*sqrt(2*A076580(n+1))))`
-/

namespace A114437.P5795668334407727482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ⌈2 * Real.sqrt (2 * A076580 (n + 1) : ℝ)⌉.toNat

end

end A114437.P5795668334407727482

/-! ## A114437.P2020181134186756219

`A080098(A076580(n+1))`
-/

namespace A114437.P2020181134186756219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A076580 (n + 1)).toNat

end

end A114437.P2020181134186756219

/-! ## A114437.P4981122270549607336

`eq[6, A001222(A179865(n+1))]`
-/

namespace A114437.P4981122270549607336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114437.P4981122270549607336

/-!
# A114438: Number of Barlow packings that repeat after n (or a divisor of n) layers.

The programs for A114438, there is no canonical definition to state claims against.
-/

/-! ## A114438.P13506501668398477892

`∑{d}[n+1, A011768(#)]`
-/

namespace A114438.P13506501668398477892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011768 d

end

end A114438.P13506501668398477892

/-!
# A114439: Indices of semiprime pentagonal numbers.

The programs for A114439, the canonical program `A114439.P10768737933069284621` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114439 has offset 1).

The definition of A114439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114439.P13932134749292802398

`eq[2, A259652(n+1)]+1`
-/

namespace A114439.P13932134749292802398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114439.P13932134749292802398

namespace A114439

/-- `eq[2, A259652(n+1)]+1` -/
def P13932134749292802398.Spec : Prop :=
  ∀ n, (P13932134749292802398.a n : ℤ) = A114439 (n + 1)

end A114439

/-! ## A114439.P10768737933069284621

`eq[4, A276678(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114439

/-- `eq[4, A276678(n+1)]+1` -/
def P10768737933069284621.Spec : Prop :=
  ∀ n, (P10768737933069284621.a n : ℤ) = A114439 (n + 1)

theorem P10768737933069284621.correct : P10768737933069284621.Spec := by
  intro n
  simp only [A114439, Nat.add_sub_cancel]

end A114439

/-! ## A114439.P13454109580657413515

`eq[8, A278255(n+1)+2]+1`
-/

namespace A114439.P13454109580657413515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278255 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114439.P13454109580657413515

namespace A114439

/-- `eq[8, A278255(n+1)+2]+1` -/
def P13454109580657413515.Spec : Prop :=
  ∀ n, (P13454109580657413515.a n : ℤ) = A114439 (n + 1)

end A114439

/-! ## A114439.P13195130913909603605

`record[root((n+2)², A259652(n+2))]`
-/

namespace A114439.P13195130913909603605
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℝ) ^ (1 / (A259652 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114439.P13195130913909603605

namespace A114439

/-- `record[root((n+2)², A259652(n+2))]` -/
def P13195130913909603605.Spec : Prop :=
  ∀ n, P13195130913909603605.a n = (A114439 (n + 1) : ℝ)

end A114439

/-! ## A114439.P4318859433441416930

`eq[6, A278255(A028310(n))]`
-/

namespace A114439.P4318859433441416930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278255 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114439.P4318859433441416930

namespace A114439

/-- `eq[6, A278255(A028310(n))]` -/
def P4318859433441416930.Spec : Prop :=
  ∀ n, (P4318859433441416930.a n : ℤ) = A114439 (n + 1)

end A114439

/-! ## A114439.P13404634905206489561

`A065475(eq[2, A259652(n+1)])`
-/

namespace A114439.P13404634905206489561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114439.P13404634905206489561

namespace A114439

/-- `A065475(eq[2, A259652(n+1)])` -/
def P13404634905206489561.Spec : Prop :=
  ∀ n, P13404634905206489561.a n = A114439 (n + 1)

end A114439

/-! ## A114439.P4171364782700248206

`eq[2, A259652(A233583(n+1))]`
-/

namespace A114439.P4171364782700248206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114439.P4171364782700248206

namespace A114439

/-- `eq[2, A259652(A233583(n+1))]` -/
def P4171364782700248206.Spec : Prop :=
  ∀ n, (P4171364782700248206.a n : ℤ) = A114439 (n + 1)

end A114439

/-!
# A114440: Numbers which divided by the sum of their digits (Harshad or Niven numbers) give integers which are also divisible by the sum of their digits (until a single-digit Harshad remains).

The programs for A114440, there is no canonical definition to state claims against.
-/

/-! ## A114440.P12894788938665660789

`eq[1, A385105(n+1)]+1`
-/

namespace A114440.P12894788938665660789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114440.P12894788938665660789

/-! ## A114440.P14948643762673209367

`∩[A229301(n+1), A235697(n+1)]`
-/

namespace A114440.P14948643762673209367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114440.P14948643762673209367

/-! ## A114440.P4838844435523352145

`record[A004151(A168234(n+1)%2*A235697(n+1))]`
-/

namespace A114440.P4838844435523352145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (Int.tmod (A168234 (n + 1)) 2 * A235697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114440.P4838844435523352145

/-! ## A114440.P6631728249966168153

`A343680(A328617(n+1))`
-/

namespace A114440.P6631728249966168153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343680 (A328617 (n + 1)).toNat

end

end A114440.P6631728249966168153

/-! ## A114440.P678797591201978981

`A343680(A351831(n+2))`
-/

namespace A114440.P678797591201978981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343680 (A351831 (n + 2)).toNat

end

end A114440.P678797591201978981

/-!
# A114441: Indices of 3-almost prime pentagonal numbers.

The programs for A114441, the canonical program `A114441.P1366112869479398456` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114441 has offset 1).

The definition of A114441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114441.P17012634255421406601

`eq[3, A259652(n+1)]+1`
-/

namespace A114441.P17012634255421406601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114441.P17012634255421406601

namespace A114441

/-- `eq[3, A259652(n+1)]+1` -/
def P17012634255421406601.Spec : Prop :=
  ∀ n, (P17012634255421406601.a n : ℤ) = A114441 (n + 1)

end A114441

/-! ## A114441.P11467126155029362379

`eq[3, A259652(A028310(n))]`
-/

namespace A114441.P11467126155029362379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114441.P11467126155029362379

namespace A114441

/-- `eq[3, A259652(A028310(n))]` -/
def P11467126155029362379.Spec : Prop :=
  ∀ n, (P11467126155029362379.a n : ℤ) = A114441 (n + 1)

end A114441

/-! ## A114441.P3680981403249636247

`A065475(eq[3, A259652(n+1)])`
-/

namespace A114441.P3680981403249636247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114441.P3680981403249636247

namespace A114441

/-- `A065475(eq[3, A259652(n+1)])` -/
def P3680981403249636247.Spec : Prop :=
  ∀ n, P3680981403249636247.a n = A114441 (n + 1)

end A114441

/-! ## A114441.P217419046777173859

`eq[4, A069904(3*n+2)]+1`
-/

namespace A114441.P217419046777173859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114441.P217419046777173859

namespace A114441

/-- `eq[4, A069904(3*n+2)]+1` -/
def P217419046777173859.Spec : Prop :=
  ∀ n, (P217419046777173859.a n : ℤ) = A114441 (n + 1)

end A114441

/-! ## A114441.P1366112869479398456

`record[A025480(A114634(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A114441

/-- `record[A025480(A114634(n+1))]` -/
def P1366112869479398456.Spec : Prop :=
  ∀ n, P1366112869479398456.a n = A114441 (n + 1)

theorem P1366112869479398456.correct : P1366112869479398456.Spec := by
  intro n
  simp only [A114441, Nat.add_sub_cancel]

end A114441

/-! ## A114441.P4482324937255447886

`eq[3, A259652(A233583(n+1))]`
-/

namespace A114441.P4482324937255447886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114441.P4482324937255447886

namespace A114441

/-- `eq[3, A259652(A233583(n+1))]` -/
def P4482324937255447886.Spec : Prop :=
  ∀ n, (P4482324937255447886.a n : ℤ) = A114441 (n + 1)

end A114441

/-! ## A114441.P14253917504570420553

`eq[4, ∑{e}[C(3*n, 2), #]]`
-/

namespace A114441.P14253917504570420553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114441.P14253917504570420553

namespace A114441

/-- `eq[4, ∑{e}[C(3*n, 2), #]]` -/
def P14253917504570420553.Spec : Prop :=
  ∀ n, (P14253917504570420553.a n : ℤ) = A114441 (n + 1)

end A114441

/-! ## A114441.P1204501869228493385

`eq[3, A001222(∑[3*n+1])]+1`
-/

namespace A114441.P1204501869228493385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114441.P1204501869228493385

namespace A114441

/-- `eq[3, A001222(∑[3*n+1])]+1` -/
def P1204501869228493385.Spec : Prop :=
  ∀ n, (P1204501869228493385.a n : ℤ) = A114441 (n + 1)

end A114441

/-! ## A114441.P2311271517252725092

`eq[2, A001222((n+1)*A016789(n))/2]+1`
-/

namespace A114441.P2311271517252725092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 ((n + 1 : ℤ) * A016789 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A114441.P2311271517252725092

namespace A114441

/-- `eq[2, A001222((n+1)*A016789(n))/2]+1` -/
def P2311271517252725092.Spec : Prop :=
  ∀ n, (P2311271517252725092.a n : ℤ) = A114441 (n + 1)

end A114441

/-!
# A114443: Indices of 4-almost prime pentagonal numbers.

The programs for A114443, the canonical program `A114443.P4676283259358560286` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114443 has offset 1).

The definition of A114443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114443.P4676283259358560286

`eq[4, A259652(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114443

/-- `eq[4, A259652(n+1)]+1` -/
def P4676283259358560286.Spec : Prop :=
  ∀ n, (P4676283259358560286.a n : ℤ) = A114443 (n + 1)

theorem P4676283259358560286.correct : P4676283259358560286.Spec := by
  intro n
  simp only [A114443, Nat.add_sub_cancel]

end A114443

/-! ## A114443.P5216790807401358460

`eq[2, A259652(A028310(n))-2]`
-/

namespace A114443.P5216790807401358460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114443.P5216790807401358460

namespace A114443

/-- `eq[2, A259652(A028310(n))-2]` -/
def P5216790807401358460.Spec : Prop :=
  ∀ n, (P5216790807401358460.a n : ℤ) = A114443 (n + 1)

end A114443

/-! ## A114443.P371187011224711578

`eq[4, A001222(∑[3*n+1])]+1`
-/

namespace A114443.P371187011224711578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114443.P371187011224711578

namespace A114443

/-- `eq[4, A001222(∑[3*n+1])]+1` -/
def P371187011224711578.Spec : Prop :=
  ∀ n, (P371187011224711578.a n : ℤ) = A114443 (n + 1)

end A114443

/-! ## A114443.P16921888699052441694

`A114635(n+1)/A000034(A069605(2*n+1))`
-/

namespace A114443.P16921888699052441694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114635 (n + 1) : ℚ) / (A000034 (A069605 (2 * n + 1)).toNat : ℚ)

end

end A114443.P16921888699052441694

namespace A114443

/-- `A114635(n+1)/A000034(A069605(2*n+1))` -/
def P16921888699052441694.Spec : Prop :=
  ∀ n, P16921888699052441694.a n = (A114443 (n + 1) : ℚ)

end A114443

/-! ## A114443.P6867917390731116057

`A114635(n+1)/A044050(A118755(n))`
-/

namespace A114443.P6867917390731116057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114635 (n + 1) : ℚ) / (A044050 (A118755 n).toNat : ℚ)

end

end A114443.P6867917390731116057

namespace A114443

/-- `A114635(n+1)/A044050(A118755(n))` -/
def P6867917390731116057.Spec : Prop :=
  ∀ n, P6867917390731116057.a n = (A114443 (n + 1) : ℚ)

end A114443

/-!
# A114444: a(n) = 16*n*(n+2).

The programs for A114444, the canonical program `A114444.P13670265799180391886` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114444 has offset 0).

The definition of A114444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n*(n+2)` (program `A114444.P13670265799180391886`, by `A114444.P13670265799180391886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114444.P13670265799180391886

`16*n*(n+2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114444

/-- `16*n*(n+2)` -/
def P13670265799180391886.Spec : Prop :=
  ∀ n, (P13670265799180391886.a n : ℤ) = A114444 n

theorem P13670265799180391886.correct : P13670265799180391886.Spec := by
  intro n
  simp only [A114444]

end A114444

/-! ## A114444.P1737826536889482146

`∑[xor(16, 32*n)]-16`
-/

namespace A114444.P1737826536889482146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 16 (32 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 16

end

end A114444.P1737826536889482146

namespace A114444

/-- `∑[xor(16, 32*n)]-16` -/
def P1737826536889482146.Spec : Prop :=
  ∀ n, P1737826536889482146.a n = A114444 n

end A114444

/-! ## A114444.P283097095000112837

`record[16*n*(n-2)]`
-/

namespace A114444.P283097095000112837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114444.P283097095000112837

namespace A114444

/-- `record[16*n*(n-2)]` -/
def P283097095000112837.Spec : Prop :=
  ∀ n, P283097095000112837.a n = A114444 n

end A114444

/-! ## A114444.P434227436264367034

`record[xor(n, -4)²]-16`
-/

namespace A114444.P434227436264367034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 16

end

end A114444.P434227436264367034

namespace A114444

/-- `record[xor(n, -4)²]-16` -/
def P434227436264367034.Spec : Prop :=
  ∀ n, P434227436264367034.a n = A114444 n

end A114444

/-! ## A114444.P8379379345211805753

`∑[a(n-1)+32]` with `a(0)=0, a(1)=48`
-/

namespace A114444.P8379379345211805753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 48] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114444.P8379379345211805753

namespace A114444

/-- `∑[a(n-1)+32]` -/
def P8379379345211805753.Spec : Prop :=
  ∀ n, (P8379379345211805753.a n : ℤ) = A114444 n

end A114444

/-! ## A114444.P8687603696669725601

`abs(16-record[(gcd(4, n)+n)²])`
-/

namespace A114444.P8687603696669725601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 n + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |16 - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)|

end

end A114444.P8687603696669725601

namespace A114444

/-- `abs(16-record[(gcd(4, n)+n)²])` -/
def P8687603696669725601.Spec : Prop :=
  ∀ n, P8687603696669725601.a n = A114444 n

end A114444

/-! ## A114444.P16456252717367409952

`A141759(n)-15`
-/

namespace A114444.P16456252717367409952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n - 15

end

end A114444.P16456252717367409952

namespace A114444

/-- `A141759(n)-15` -/
def P16456252717367409952.Spec : Prop :=
  ∀ n, P16456252717367409952.a n = A114444 n

theorem P16456252717367409952.correct : P16456252717367409952.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P16456252717367409952.a, A114444.P13670265799180391886.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P13462200749823230232

`A010006(n+1)-18`
-/

namespace A114444.P13462200749823230232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 (n + 1) - 18

end

end A114444.P13462200749823230232

namespace A114444

/-- `A010006(n+1)-18` -/
def P13462200749823230232.Spec : Prop :=
  ∀ n, P13462200749823230232.a n = A114444 n

end A114444

/-! ## A114444.P8958528091052016075

`4*8*A005563(n)/2`
-/

namespace A114444.P8958528091052016075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (8 * A005563 n) : ℚ) / 2

end

end A114444.P8958528091052016075

namespace A114444

/-- `4*8*A005563(n)/2` -/
def P8958528091052016075.Spec : Prop :=
  ∀ n, P8958528091052016075.a n = (A114444 n : ℚ)

theorem P8958528091052016075.correct : P8958528091052016075.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P8958528091052016075.a, A114444.P13670265799180391886.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P14225094918697226296

`Δ[(2-A046092(n))²]/(n+1)`
-/

namespace A114444.P14225094918697226296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A046092 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A114444.P14225094918697226296

namespace A114444

/-- `Δ[(2-A046092(n))²]/(n+1)` -/
def P14225094918697226296.Spec : Prop :=
  ∀ n, P14225094918697226296.a n = (A114444 n : ℚ)

theorem P14225094918697226296.correct : P14225094918697226296.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P14225094918697226296.f1, A114444.P14225094918697226296.a, A114444.P13670265799180391886.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P16925490373993177316

`A104188(n)+A044102(n)`
-/

namespace A114444.P16925490373993177316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104188 n + A044102 n

end

end A114444.P16925490373993177316

namespace A114444

/-- `A104188(n)+A044102(n)` -/
def P16925490373993177316.Spec : Prop :=
  ∀ n, P16925490373993177316.a n = A114444 n

theorem P16925490373993177316.correct : P16925490373993177316.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P16925490373993177316.a, A114444.P13670265799180391886.a, A044102, A044102.P13317920450440868156.a, A104188, A104188.P226395597657789732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P5599015763307924755

`A174312(n)+A016802(n)`
-/

namespace A114444.P5599015763307924755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A016802 n

end

end A114444.P5599015763307924755

namespace A114444

/-- `A174312(n)+A016802(n)` -/
def P5599015763307924755.Spec : Prop :=
  ∀ n, P5599015763307924755.a n = A114444 n

theorem P5599015763307924755.correct : P5599015763307924755.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P5599015763307924755.a, A114444.P13670265799180391886.a, A016802, A016802.P8146297889048034948.a, A174312, A174312.P11653571981913251909.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P7651410513916201516

`A183010(n)+A016814(n)`
-/

namespace A114444.P7651410513916201516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A016814 n

end

end A114444.P7651410513916201516

namespace A114444

/-- `A183010(n)+A016814(n)` -/
def P7651410513916201516.Spec : Prop :=
  ∀ n, P7651410513916201516.a n = A114444 n

theorem P7651410513916201516.correct : P7651410513916201516.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P7651410513916201516.a, A114444.P13670265799180391886.a, A016814, A016814.P5668709183610020667.a, A183010, A183010.P1615208601139071033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P11080149554149769519

`A195028(n)+A139581(n)`
-/

namespace A114444.P11080149554149769519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195028 n + A139581 n

end

end A114444.P11080149554149769519

namespace A114444

/-- `A195028(n)+A139581(n)` -/
def P11080149554149769519.Spec : Prop :=
  ∀ n, P11080149554149769519.a n = A114444 n

theorem P11080149554149769519.correct : P11080149554149769519.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P11080149554149769519.a, A114444.P13670265799180391886.a, A139581, A139581.P16722424302175688649.a, A195028, A195028.P15304006162796783085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P14965245494482857133

`A182428(n)+A153792(n)`
-/

namespace A114444.P14965245494482857133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182428 n + A153792 n

end

end A114444.P14965245494482857133

namespace A114444

/-- `A182428(n)+A153792(n)` -/
def P14965245494482857133.Spec : Prop :=
  ∀ n, P14965245494482857133.a n = A114444 n

theorem P14965245494482857133.correct : P14965245494482857133.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P14965245494482857133.a, A114444.P13670265799180391886.a, A153792, A153792.P13758873412561183293.a, A182428, A182428.P5992180540687048509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P12462317465735365872

`A317095(n)+A152750(n)`
-/

namespace A114444.P12462317465735365872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317095 n + A152750 n

end

end A114444.P12462317465735365872

namespace A114444

/-- `A317095(n)+A152750(n)` -/
def P12462317465735365872.Spec : Prop :=
  ∀ n, P12462317465735365872.a n = A114444 n

theorem P12462317465735365872.correct : P12462317465735365872.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P12462317465735365872.a, A114444.P13670265799180391886.a, A152750, A152750.P9324821272604293728.a, A317095, A317095.P1083006563003922456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P2214978230105765449

`A162942(n)-A051871(n)`
-/

namespace A114444.P2214978230105765449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162942 n - A051871 n

end

end A114444.P2214978230105765449

namespace A114444

/-- `A162942(n)-A051871(n)` -/
def P2214978230105765449.Spec : Prop :=
  ∀ n, P2214978230105765449.a n = A114444 n

end A114444

/-! ## A114444.P8984367572847198914

`A157446(n+1)+A023457(n)`
-/

namespace A114444.P8984367572847198914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157446 (n + 1) + A023457 n

end

end A114444.P8984367572847198914

namespace A114444

/-- `A157446(n+1)+A023457(n)` -/
def P8984367572847198914.Spec : Prop :=
  ∀ n, P8984367572847198914.a n = A114444 n

theorem P8984367572847198914.correct : P8984367572847198914.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P8984367572847198914.a, A114444.P13670265799180391886.a, A023457, A023457.P863186941795494776.a, A157446, A157446.P6226797554834386845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P7954847111085431158

`A157446(n+1)-A022971(n)`
-/

namespace A114444.P7954847111085431158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157446 (n + 1) - A022971 n

end

end A114444.P7954847111085431158

namespace A114444

/-- `A157446(n+1)-A022971(n)` -/
def P7954847111085431158.Spec : Prop :=
  ∀ n, P7954847111085431158.a n = A114444 n

theorem P7954847111085431158.correct : P7954847111085431158.Spec := by
  intro n
  simp only [A114444, Nat.add_sub_cancel, A114444.P7954847111085431158.a, A114444.P13670265799180391886.a, A022971, A022971.P312173633140377465.a, A157446, A157446.P6226797554834386845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114444

/-! ## A114444.P5540586062703390068

`A158639(n+1)%A158693(n+1)`
-/

namespace A114444.P5540586062703390068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158639 (n + 1)) (A158693 (n + 1))

end

end A114444.P5540586062703390068

namespace A114444

/-- `A158639(n+1)%A158693(n+1)` -/
def P5540586062703390068.Spec : Prop :=
  ∀ n, P5540586062703390068.a n = A114444 n

end A114444

/-!
# A114445: Indices of 5-almost prime pentagonal numbers.

The programs for A114445, the canonical program `A114445.P13153423384691629305` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114445 has offset 1).

The definition of A114445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114445.P13153423384691629305

`eq[5, A259652(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114445

/-- `eq[5, A259652(n+1)]+1` -/
def P13153423384691629305.Spec : Prop :=
  ∀ n, (P13153423384691629305.a n : ℤ) = A114445 (n + 1)

theorem P13153423384691629305.correct : P13153423384691629305.Spec := by
  intro n
  simp only [A114445, Nat.add_sub_cancel]

end A114445

/-! ## A114445.P4988699112082483304

`eq[6, A069904(3*n+2)]+1`
-/

namespace A114445.P4988699112082483304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114445.P4988699112082483304

namespace A114445

/-- `eq[6, A069904(3*n+2)]+1` -/
def P4988699112082483304.Spec : Prop :=
  ∀ n, (P4988699112082483304.a n : ℤ) = A114445 (n + 1)

end A114445

/-! ## A114445.P10855382378096779410

`A332893(A114636(n+1)%A125016(n+1))`
-/

namespace A114445.P10855382378096779410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (Int.tmod (A114636 (n + 1)) (A125016 (n + 1))).toNat

end

end A114445.P10855382378096779410

namespace A114445

/-- `A332893(A114636(n+1)%A125016(n+1))` -/
def P10855382378096779410.Spec : Prop :=
  ∀ n, P10855382378096779410.a n = A114445 (n + 1)

end A114445

/-! ## A114445.P5747004905963063588

`A114636(n+1)/A000005(A025019(2*(n+2)))`
-/

namespace A114445.P5747004905963063588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114636 (n + 1) : ℚ) / (A000005 (A025019 (2 * (n + 2))).toNat : ℚ)

end

end A114445.P5747004905963063588

namespace A114445

/-- `A114636(n+1)/A000005(A025019(2*(n+2)))` -/
def P5747004905963063588.Spec : Prop :=
  ∀ n, P5747004905963063588.a n = (A114445 (n + 1) : ℚ)

end A114445

/-! ## A114445.P8910916120046671211

`A114636(n+1)/A293226(A342386(2*(n+1)))`
-/

namespace A114445.P8910916120046671211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114636 (n + 1) : ℚ) / (A293226 (A342386 (2 * (n + 1))).toNat : ℚ)

end

end A114445.P8910916120046671211

namespace A114445

/-- `A114636(n+1)/A293226(A342386(2*(n+1)))` -/
def P8910916120046671211.Spec : Prop :=
  ∀ n, P8910916120046671211.a n = (A114445 (n + 1) : ℚ)

end A114445

/-!
# A114446: Indices of 7-almost prime pentagonal numbers.

The programs for A114446, the canonical program `A114446.P4451751770410484066` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114446 has offset 1).

The definition of A114446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114446.P4451751770410484066

`eq[7, A259652(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114446

/-- `eq[7, A259652(n+1)]+1` -/
def P4451751770410484066.Spec : Prop :=
  ∀ n, (P4451751770410484066.a n : ℤ) = A114446 (n + 1)

theorem P4451751770410484066.correct : P4451751770410484066.Spec := by
  intro n
  simp only [A114446, Nat.add_sub_cancel]

end A114446

/-! ## A114446.P345818647687158274

`eq[7, A259652(A028310(n))]`
-/

namespace A114446.P345818647687158274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114446.P345818647687158274

namespace A114446

/-- `eq[7, A259652(A028310(n))]` -/
def P345818647687158274.Spec : Prop :=
  ∀ n, (P345818647687158274.a n : ℤ) = A114446 (n + 1)

end A114446

/-! ## A114446.P1141204044195427888

`A065475(eq[7, A259652(n+1)])`
-/

namespace A114446.P1141204044195427888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114446.P1141204044195427888

namespace A114446

/-- `A065475(eq[7, A259652(n+1)])` -/
def P1141204044195427888.Spec : Prop :=
  ∀ n, P1141204044195427888.a n = A114446 (n + 1)

end A114446

/-! ## A114446.P13478504152693968620

`eq[7, A259652(A233583(n+1))]`
-/

namespace A114446.P13478504152693968620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114446.P13478504152693968620

namespace A114446

/-- `eq[7, A259652(A233583(n+1))]` -/
def P13478504152693968620.Spec : Prop :=
  ∀ n, (P13478504152693968620.a n : ℤ) = A114446 (n + 1)

end A114446

/-! ## A114446.P17086195885503659255

`eq[7, A001222(A000326(n+1))]+1`
-/

namespace A114446.P17086195885503659255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000326 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114446.P17086195885503659255

namespace A114446

/-- `eq[7, A001222(A000326(n+1))]+1` -/
def P17086195885503659255.Spec : Prop :=
  ∀ n, (P17086195885503659255.a n : ℤ) = A114446 (n + 1)

end A114446

/-!
# A114447: Indices of 6-almost prime pentagonal numbers.

The programs for A114447, the canonical program `A114447.P15107707879970019060` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114447 has offset 1).

The definition of A114447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114447.P15107707879970019060

`eq[6, A259652(A028310(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114447

/-- `eq[6, A259652(A028310(n))]` -/
def P15107707879970019060.Spec : Prop :=
  ∀ n, (P15107707879970019060.a n : ℤ) = A114447 (n + 1)

theorem P15107707879970019060.correct : P15107707879970019060.Spec := by
  intro n
  simp only [A114447, Nat.add_sub_cancel]

end A114447

/-! ## A114447.P2671077393247223760

`eq[4, A000009(A259652(n+1))]+1`
-/

namespace A114447.P2671077393247223760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A259652 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114447.P2671077393247223760

namespace A114447

/-- `eq[4, A000009(A259652(n+1))]+1` -/
def P2671077393247223760.Spec : Prop :=
  ∀ n, (P2671077393247223760.a n : ℤ) = A114447 (n + 1)

end A114447

/-! ## A114447.P16827148699669731061

`A114828(n+1)/A114835(A290236(n))`
-/

namespace A114447.P16827148699669731061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114828 (n + 1) : ℚ) / (A114835 (A290236 n).toNat : ℚ)

end

end A114447.P16827148699669731061

namespace A114447

/-- `A114828(n+1)/A114835(A290236(n))` -/
def P16827148699669731061.Spec : Prop :=
  ∀ n, P16827148699669731061.a n = (A114447 (n + 1) : ℚ)

end A114447

/-!
# A114448: Array a(n,k) = n^k (mod k) read by antidiagonals (k>=1, n>=1).

The programs for A114448, there is no canonical definition to state claims against.
-/

/-! ## A114448.P9429944591255271131

`A060154(∑[char[∑[n]]]²-n)`
-/

namespace A114448.P9429944591255271131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A114448.P9429944591255271131

/-! ## A114448.P10495536873552112883

`((row(n)-col(n)+1)^(col(n)+1))%(col(n)+1)`
-/

namespace A114448.P10495536873552112883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ (SequenceMachineLib.triCol n + 1)) (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A114448.P10495536873552112883

/-! ## A114448.P3306330670468683061

`A051128(n+1)%(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A114448.P3306330670468683061
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (n + 1)) (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A114448.P3306330670468683061

/-! ## A114448.P16295497844619719330

`A051128(n+1)%A131899(n)`
-/

namespace A114448.P16295497844619719330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (n + 1)) (A131899 n)

end

end A114448.P16295497844619719330

/-! ## A114448.P11777451806980441659

`A009999(comp[C(n, 2)])%A002260(n+1)`
-/

namespace A114448.P11777451806980441659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A002260 (n + 1))

end

end A114448.P11777451806980441659

/-! ## A114448.P3748943391986555749

`A156353(n+1)%(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A114448.P3748943391986555749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156353 (n + 1)) (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A114448.P3748943391986555749

/-! ## A114448.P14502710109812687710

`A156353(n+1)%A002260(n+1)`
-/

namespace A114448.P14502710109812687710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156353 (n + 1)) (A002260 (n + 1))

end

end A114448.P14502710109812687710

/-! ## A114448.P9721026149930730080

`A051129(∑[char[∑[n]]]²-n)%(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A114448.P9721026149930730080
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051129 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)) (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ))

end

end A114448.P9721026149930730080

/-! ## A114448.P6021212164687399748

`A094263(comp[∑[n]])`
-/

namespace A114448.P6021212164687399748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114448.P6021212164687399748

/-! ## A114448.P3311820467565036830

`A035214(n)*A094263(∑[A035214(n)])`
-/

namespace A114448.P3311820467565036830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A094263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114448.P3311820467565036830

/-!
# A114450: a(n)=(2n)!*(sum{k=1...2n}1/k)/(2n+1).

The programs for A114450, the canonical program `A114450.P2892695526039715481` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114450 has offset 0).

The definition of A114450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114450.P2892695526039715481

`A000254(2*n)/(2*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114450

/-- `A000254(2*n)/(2*n+1)` -/
def P2892695526039715481.Spec : Prop :=
  ∀ n, P2892695526039715481.a n = (A114450 n : ℚ)

end A114450

/-! ## A114450.P14342575364400141956

`record[-A081048(n)]/record[xor(1, n)]`
-/

namespace A114450.P14342575364400141956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A081048 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ)

end

end A114450.P14342575364400141956

namespace A114450

/-- `record[-A081048(n)]/record[xor(1, n)]` -/
def P14342575364400141956.Spec : Prop :=
  ∀ n, P14342575364400141956.a n = (A114450 n : ℚ)

end A114450

/-! ## A114450.P624981311211968649

`A302611(2*n+1)/(2*n+1)`
-/

namespace A114450.P624981311211968649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302611 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A114450.P624981311211968649

namespace A114450

/-- `A302611(2*n+1)/(2*n+1)` -/
def P624981311211968649.Spec : Prop :=
  ∀ n, P624981311211968649.a n = (A114450 n : ℚ)

end A114450

/-! ## A114450.P12836475993347895909

`A052517(2*n+1)/A016825(n)`
-/

namespace A114450.P12836475993347895909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (2 * n + 1) : ℚ) / (A016825 n : ℚ)

end

end A114450.P12836475993347895909

namespace A114450

/-- `A052517(2*n+1)/A016825(n)` -/
def P12836475993347895909.Spec : Prop :=
  ∀ n, P12836475993347895909.a n = (A114450 n : ℚ)

end A114450

/-! ## A114450.P1756014444717114710

`A081048(2*n)/(1-A005843(n+1))`
-/

namespace A114450.P1756014444717114710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081048 (2 * n) : ℚ) / (1 - A005843 (n + 1) : ℚ)

end

end A114450.P1756014444717114710

namespace A114450

/-- `A081048(2*n)/(1-A005843(n+1))` -/
def P1756014444717114710.Spec : Prop :=
  ∀ n, P1756014444717114710.a n = (A114450 n : ℚ)

end A114450

/-!
# A114453: Number of 5-almost primes less than or equal to 10^n.

The programs for A114453, there is no canonical definition to state claims against.
-/

/-! ## A114453.P3264737306103804099

`A070038(A301655(n))-1`
-/

namespace A114453.P3264737306103804099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (A301655 n).toNat - 1

end

end A114453.P3264737306103804099

/-!
# A114454: Numbers k such that the k-th hexagonal number is a 3-almost prime.

The programs for A114454, the canonical program `A114454.P7230386576509025594` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114454 has offset 1).

The definition of A114454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114454.P7230386576509025594

`eq[3, A260236(n+2)]+2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114454

/-- `eq[3, A260236(n+2)]+2` -/
def P7230386576509025594.Spec : Prop :=
  ∀ n, (P7230386576509025594.a n : ℤ) = A114454 (n + 1)

theorem P7230386576509025594.correct : P7230386576509025594.Spec := by
  intro n
  simp only [A114454, Nat.add_sub_cancel]

end A114454

/-! ## A114454.P8389911525924019429

`eq[3, A069904(abs(1-2*n))]`
-/

namespace A114454.P8389911525924019429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114454.P8389911525924019429

namespace A114454

/-- `eq[3, A069904(abs(1-2*n))]` -/
def P8389911525924019429.Spec : Prop :=
  ∀ n, (P8389911525924019429.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P14342785629897044019

`eq[3, A069904(2*n+1)]+1`
-/

namespace A114454.P14342785629897044019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114454.P14342785629897044019

namespace A114454

/-- `eq[3, A069904(2*n+1)]+1` -/
def P14342785629897044019.Spec : Prop :=
  ∀ n, (P14342785629897044019.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P8885161647318147616

`record[A001057(A108815(n+1))]`
-/

namespace A114454.P8885161647318147616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A108815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114454.P8885161647318147616

namespace A114454

/-- `record[A001057(A108815(n+1))]` -/
def P8885161647318147616.Spec : Prop :=
  ∀ n, P8885161647318147616.a n = A114454 (n + 1)

end A114454

/-! ## A114454.P2977526097020746640

`eq[3, ∑{e}[C(2*n, 2), #]]`
-/

namespace A114454.P2977526097020746640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114454.P2977526097020746640

namespace A114454

/-- `eq[3, ∑{e}[C(2*n, 2), #]]` -/
def P2977526097020746640.Spec : Prop :=
  ∀ n, (P2977526097020746640.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P18080337552343428980

`eq[3, ∑{e}[2*n²-n, #]]`
-/

namespace A114454.P18080337552343428980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114454.P18080337552343428980

namespace A114454

/-- `eq[3, ∑{e}[2*n²-n, #]]` -/
def P18080337552343428980.Spec : Prop :=
  ∀ n, (P18080337552343428980.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P13387258657783527117

`eq[3, A001222(C(2*(n+1), 2))]+1`
-/

namespace A114454.P13387258657783527117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (2 * (n + 1)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114454.P13387258657783527117

namespace A114454

/-- `eq[3, A001222(C(2*(n+1), 2))]+1` -/
def P13387258657783527117.Spec : Prop :=
  ∀ n, (P13387258657783527117.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P15355818016942529553

`eq[3, A001222((2*n+1)*(n+1))]+1`
-/

namespace A114454.P15355818016942529553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114454.P15355818016942529553

namespace A114454

/-- `eq[3, A001222((2*n+1)*(n+1))]+1` -/
def P15355818016942529553.Spec : Prop :=
  ∀ n, (P15355818016942529553.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P15132840322732464927

`eq[3, A001222(A103505(n)+n²)]`
-/

namespace A114454.P15132840322732464927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103505 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114454.P15132840322732464927

namespace A114454

/-- `eq[3, A001222(A103505(n)+n²)]` -/
def P15132840322732464927.Spec : Prop :=
  ∀ n, (P15132840322732464927.a n : ℤ) = A114454 (n + 1)

end A114454

/-! ## A114454.P807460059506591811

`eq[3, A001222(A000217(abs(1-2*n)))]`
-/

namespace A114454.P807460059506591811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000217 |1 - (2 * n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114454.P807460059506591811

namespace A114454

/-- `eq[3, A001222(A000217(abs(1-2*n)))]` -/
def P807460059506591811.Spec : Prop :=
  ∀ n, (P807460059506591811.a n : ℤ) = A114454 (n + 1)

end A114454

/-!
# A114455: Numbers k such that the k-th hexagonal number is a 4-almost prime.

The programs for A114455, the canonical program `A114455.P8760109951393217924` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114455 has offset 1).

The definition of A114455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114455.P188624339784014525

`eq[4, A260236(n+2)]+2`
-/

namespace A114455.P188624339784014525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260236 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A114455.P188624339784014525

namespace A114455

/-- `eq[4, A260236(n+2)]+2` -/
def P188624339784014525.Spec : Prop :=
  ∀ n, (P188624339784014525.a n : ℤ) = A114455 (n + 1)

end A114455

/-! ## A114455.P8760109951393217924

`eq[4, A069904(2*n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114455

/-- `eq[4, A069904(2*n+1)]+1` -/
def P8760109951393217924.Spec : Prop :=
  ∀ n, (P8760109951393217924.a n : ℤ) = A114455 (n + 1)

theorem P8760109951393217924.correct : P8760109951393217924.Spec := by
  intro n
  simp only [A114455, Nat.add_sub_cancel]

end A114455

/-! ## A114455.P195677480197925315

`eq[4, A069904(A004280(n+1))]`
-/

namespace A114455.P195677480197925315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114455.P195677480197925315

namespace A114455

/-- `eq[4, A069904(A004280(n+1))]` -/
def P195677480197925315.Spec : Prop :=
  ∀ n, (P195677480197925315.a n : ℤ) = A114455 (n + 1)

end A114455

/-! ## A114455.P11645411312930598596

`eq[4, A069904(A004275(n)+1)]`
-/

namespace A114455.P11645411312930598596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A004275 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114455.P11645411312930598596

namespace A114455

/-- `eq[4, A069904(A004275(n)+1)]` -/
def P11645411312930598596.Spec : Prop :=
  ∀ n, (P11645411312930598596.a n : ℤ) = A114455 (n + 1)

end A114455

/-! ## A114455.P8014788642573948934

`A008619(eq[A069904(n+1)+2, A267259(n)])`
-/

namespace A114455.P8014788642573948934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114455.P8014788642573948934

namespace A114455

/-- `A008619(eq[A069904(n+1)+2, A267259(n)])` -/
def P8014788642573948934.Spec : Prop :=
  ∀ n, P8014788642573948934.a n = A114455 (n + 1)

end A114455

/-! ## A114455.P17683700210181432206

`A028242(eq[A069904(n+1)+2, A267259(n)])`
-/

namespace A114455.P17683700210181432206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114455.P17683700210181432206

namespace A114455

/-- `A028242(eq[A069904(n+1)+2, A267259(n)])` -/
def P17683700210181432206.Spec : Prop :=
  ∀ n, P17683700210181432206.a n = A114455 (n + 1)

end A114455

/-! ## A114455.P12025217785394211011

`eq[4, A260236(A233583(n+1))]`
-/

namespace A114455.P12025217785394211011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260236 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114455.P12025217785394211011

namespace A114455

/-- `eq[4, A260236(A233583(n+1))]` -/
def P12025217785394211011.Spec : Prop :=
  ∀ n, (P12025217785394211011.a n : ℤ) = A114455 (n + 1)

end A114455

/-! ## A114455.P13497480534385962505

`eq[4, ∑{e}[C(2*n, 2), #]]`
-/

namespace A114455.P13497480534385962505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114455.P13497480534385962505

namespace A114455

/-- `eq[4, ∑{e}[C(2*n, 2), #]]` -/
def P13497480534385962505.Spec : Prop :=
  ∀ n, (P13497480534385962505.a n : ℤ) = A114455 (n + 1)

end A114455

/-! ## A114455.P1377456031609557027

`eq[4, ∑{e}[2*n²-n, #]]`
-/

namespace A114455.P1377456031609557027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114455.P1377456031609557027

namespace A114455

/-- `eq[4, ∑{e}[2*n²-n, #]]` -/
def P1377456031609557027.Spec : Prop :=
  ∀ n, (P1377456031609557027.a n : ℤ) = A114455 (n + 1)

end A114455

/-! ## A114455.P9403148205636576132

`eq[4, A001222(∑[4*n+1])]+1`
-/

namespace A114455.P9403148205636576132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114455.P9403148205636576132

namespace A114455

/-- `eq[4, A001222(∑[4*n+1])]+1` -/
def P9403148205636576132.Spec : Prop :=
  ∀ n, (P9403148205636576132.a n : ℤ) = A114455 (n + 1)

end A114455

/-!
# A114456: Numbers k such that the k-th hexagonal number is a 5-almost prime.

The programs for A114456, the canonical program `A114456.P18436279260454582770` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114456 has offset 1).

The definition of A114456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114456.P3458561915058021273

`eq[5, A260236(n+2)]+2`
-/

namespace A114456.P3458561915058021273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260236 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A114456.P3458561915058021273

namespace A114456

/-- `eq[5, A260236(n+2)]+2` -/
def P3458561915058021273.Spec : Prop :=
  ∀ n, (P3458561915058021273.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P14845412706867195715

`eq[5, A069904(2*n+1)]+1`
-/

namespace A114456.P14845412706867195715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114456.P14845412706867195715

namespace A114456

/-- `eq[5, A069904(2*n+1)]+1` -/
def P14845412706867195715.Spec : Prop :=
  ∀ n, (P14845412706867195715.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P1790104244205162252

`eq[5, A069904(A004280(n+1))]`
-/

namespace A114456.P1790104244205162252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114456.P1790104244205162252

namespace A114456

/-- `eq[5, A069904(A004280(n+1))]` -/
def P1790104244205162252.Spec : Prop :=
  ∀ n, (P1790104244205162252.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P12977005353175767592

`eq[5, A069904(A004275(n)+1)]`
-/

namespace A114456.P12977005353175767592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A004275 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114456.P12977005353175767592

namespace A114456

/-- `eq[5, A069904(A004275(n)+1)]` -/
def P12977005353175767592.Spec : Prop :=
  ∀ n, (P12977005353175767592.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P18436279260454582770

`record[A001057(A114436(n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114456

/-- `record[A001057(A114436(n+1))]` -/
def P18436279260454582770.Spec : Prop :=
  ∀ n, P18436279260454582770.a n = A114456 (n + 1)

theorem P18436279260454582770.correct : P18436279260454582770.Spec := by
  intro n
  simp only [A114456, Nat.add_sub_cancel]

end A114456

/-! ## A114456.P5887287565092699114

`eq[5, ∑{e}[n-2*n², #]]`
-/

namespace A114456.P5887287565092699114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114456.P5887287565092699114

namespace A114456

/-- `eq[5, ∑{e}[n-2*n², #]]` -/
def P5887287565092699114.Spec : Prop :=
  ∀ n, (P5887287565092699114.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P6704980776754251801

`eq[5, A001222(C(2*(n+1), 2))]+1`
-/

namespace A114456.P6704980776754251801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (2 * (n + 1)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114456.P6704980776754251801

namespace A114456

/-- `eq[5, A001222(C(2*(n+1), 2))]+1` -/
def P6704980776754251801.Spec : Prop :=
  ∀ n, (P6704980776754251801.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P6725900200020359267

`eq[5, A001222((2*n+1)*(n+1))]+1`
-/

namespace A114456.P6725900200020359267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114456.P6725900200020359267

namespace A114456

/-- `eq[5, A001222((2*n+1)*(n+1))]+1` -/
def P6725900200020359267.Spec : Prop :=
  ∀ n, (P6725900200020359267.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P14677184732014193357

`eq[5, A001222(A103505(n)+n²)]`
-/

namespace A114456.P14677184732014193357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103505 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114456.P14677184732014193357

namespace A114456

/-- `eq[5, A001222(A103505(n)+n²)]` -/
def P14677184732014193357.Spec : Prop :=
  ∀ n, (P14677184732014193357.a n : ℤ) = A114456 (n + 1)

end A114456

/-! ## A114456.P9402254007850308160

`eq[5, A001222(A000217(abs(1-2*n)))]`
-/

namespace A114456.P9402254007850308160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000217 |1 - (2 * n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114456.P9402254007850308160

namespace A114456

/-- `eq[5, A001222(A000217(abs(1-2*n)))]` -/
def P9402254007850308160.Spec : Prop :=
  ∀ n, (P9402254007850308160.a n : ℤ) = A114456 (n + 1)

end A114456

/-!
# A114458: Integer part of sqrt(n)+sqrt(n+1)+sqrt(n+2).

The programs for A114458, the canonical program `A114458.P13895863133896173440` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114458 has offset 1).

The definition of A114458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114458.P13895863133896173440

`floor(sqrt(9*(n+1)+8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114458

/-- `floor(sqrt(9*(n+1)+8))` -/
def P13895863133896173440.Spec : Prop :=
  ∀ n, (P13895863133896173440.a n : ℤ) = A114458 (n + 1)

theorem P13895863133896173440.correct : P13895863133896173440.Spec := by
  intro n
  simp only [A114458, Nat.add_sub_cancel]

end A114458

/-! ## A114458.P15701704462333531750

`A000196(9*(n+1)+8)`
-/

namespace A114458.P15701704462333531750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (9 * (n + 1) + 8)

end

end A114458.P15701704462333531750

namespace A114458

/-- `A000196(9*(n+1)+8)` -/
def P15701704462333531750.Spec : Prop :=
  ∀ n, P15701704462333531750.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P2339049753527734745

`ceil(3*sqrt(n+2))-and(1, n)!`
-/

namespace A114458.P2339049753527734745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.sqrt (n + 2 : ℝ)⌉ - (Nat.factorial (Nat.land 1 n) : ℤ)

end

end A114458.P2339049753527734745

namespace A114458

/-- `ceil(3*sqrt(n+2))-and(1, n)!` -/
def P2339049753527734745.Spec : Prop :=
  ∀ n, P2339049753527734745.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P6144262676824403486

`ceil(3*sqrt(C(n+1, n)+1))-1`
-/

namespace A114458.P6144262676824403486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.sqrt (Nat.choose (n + 1) n + 1 : ℝ)⌉ - 1

end

end A114458.P6144262676824403486

namespace A114458

/-- `ceil(3*sqrt(C(n+1, n)+1))-1` -/
def P6144262676824403486.Spec : Prop :=
  ∀ n, P6144262676824403486.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P2881340913163802629

`ceil(3*sqrt(gcd(n, 2*n)+2))-1`
-/

namespace A114458.P2881340913163802629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.sqrt (Nat.gcd n (2 * n) + 2 : ℝ)⌉ - 1

end

end A114458.P2881340913163802629

namespace A114458

/-- `ceil(3*sqrt(gcd(n, 2*n)+2))-1` -/
def P2881340913163802629.Spec : Prop :=
  ∀ n, P2881340913163802629.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P18001255261635856626

`ceil(3*sqrt(n+2))-(∑[n]%2)!`
-/

namespace A114458.P18001255261635856626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.sqrt (n + 2 : ℝ)⌉ - (Nat.factorial ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) : ℤ)

end

end A114458.P18001255261635856626

namespace A114458

/-- `ceil(3*sqrt(n+2))-(∑[n]%2)!` -/
def P18001255261635856626.Spec : Prop :=
  ∀ n, P18001255261635856626.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P8696703877228467009

`(ceil(3*sqrt(n+2))-1)%(7*n+5)`
-/

namespace A114458.P8696703877228467009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈3 * Real.sqrt (n + 2 : ℝ)⌉ - 1) (7 * n + 5 : ℤ)

end

end A114458.P8696703877228467009

namespace A114458

/-- `(ceil(3*sqrt(n+2))-1)%(7*n+5)` -/
def P8696703877228467009.Spec : Prop :=
  ∀ n, P8696703877228467009.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P13891589915579833266

`ceil(3*sqrt(n+2))-(1-and(2, n))*(1-and(2, n))`
-/

namespace A114458.P13891589915579833266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.sqrt (n + 2 : ℝ)⌉ - (1 - (Nat.land 2 n : ℤ)) * (1 - (Nat.land 2 n : ℤ))

end

end A114458.P13891589915579833266

namespace A114458

/-- `ceil(3*sqrt(n+2))-(1-and(2, n))*(1-and(2, n))` -/
def P13891589915579833266.Spec : Prop :=
  ∀ n, P13891589915579833266.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P7574142810285863563

`A103128(A263941(n+2))`
-/

namespace A114458.P7574142810285863563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A263941 (n + 2)).toNat

end

end A114458.P7574142810285863563

namespace A114458

/-- `A103128(A263941(n+2))` -/
def P7574142810285863563.Spec : Prop :=
  ∀ n, P7574142810285863563.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P14801383402879554629

`ceil(3*sqrt(n+2)-A014963(8*n+6))`
-/

namespace A114458.P14801383402879554629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * Real.sqrt (n + 2 : ℝ) - (A014963 (8 * n + 6) : ℝ)⌉

end

end A114458.P14801383402879554629

namespace A114458

/-- `ceil(3*sqrt(n+2)-A014963(8*n+6))` -/
def P14801383402879554629.Spec : Prop :=
  ∀ n, P14801383402879554629.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P13705393152325115243

`A339183(A099048(n+1))`
-/

namespace A114458.P13705393152325115243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A099048 (n + 1)).toNat

end

end A114458.P13705393152325115243

namespace A114458

/-- `A339183(A099048(n+1))` -/
def P13705393152325115243.Spec : Prop :=
  ∀ n, P13705393152325115243.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P5751321913762618304

`A339183(A350522(n+1))`
-/

namespace A114458.P5751321913762618304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A350522 (n + 1)).toNat

end

end A114458.P5751321913762618304

namespace A114458

/-- `A339183(A350522(n+1))` -/
def P5751321913762618304.Spec : Prop :=
  ∀ n, P5751321913762618304.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P8723261907760003205

`A339183(A239129(n+2))`
-/

namespace A114458.P8723261907760003205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A239129 (n + 2)).toNat

end

end A114458.P8723261907760003205

namespace A114458

/-- `A339183(A239129(n+2))` -/
def P8723261907760003205.Spec : Prop :=
  ∀ n, P8723261907760003205.a n = A114458 (n + 1)

end A114458

/-! ## A114458.P14792136454605372479

`A268173(A209876(n+2))`
-/

namespace A114458.P14792136454605372479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (A209876 (n + 2)).toNat

end

end A114458.P14792136454605372479

namespace A114458

/-- `A268173(A209876(n+2))` -/
def P14792136454605372479.Spec : Prop :=
  ∀ n, P14792136454605372479.a n = A114458 (n + 1)

end A114458

/-!
# A114459: Integer part of sqrt(n)+sqrt(n+1)+sqrt(n+2)+sqrt(n+3).

The programs for A114459, the canonical program `A114459.P8850751171218531829` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114459 has offset 1).

The definition of A114459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114459.P8850751171218531829

`floor(sqrt(16*(n+1)+20))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114459

/-- `floor(sqrt(16*(n+1)+20))` -/
def P8850751171218531829.Spec : Prop :=
  ∀ n, (P8850751171218531829.a n : ℤ) = A114459 (n + 1)

theorem P8850751171218531829.correct : P8850751171218531829.Spec := by
  intro n
  simp only [A114459, Nat.add_sub_cancel]

end A114459

/-! ## A114459.P6599834117029307856

`A000196(16*(n+1)+20)`
-/

namespace A114459.P6599834117029307856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (16 * (n + 1) + 20)

end

end A114459.P6599834117029307856

namespace A114459

/-- `A000196(16*(n+1)+20)` -/
def P6599834117029307856.Spec : Prop :=
  ∀ n, P6599834117029307856.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P5455187461058533493

`ceil(sqrt(Δ[C(4*(n+2), 2)]))-1`
-/

namespace A114459.P5455187461058533493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ - 1

end

end A114459.P5455187461058533493

namespace A114459

/-- `ceil(sqrt(Δ[C(4*(n+2), 2)]))-1` -/
def P5455187461058533493.Spec : Prop :=
  ∀ n, P5455187461058533493.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P14473246106252881043

`A060018(4*(n+3))`
-/

namespace A114459.P14473246106252881043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (4 * (n + 3))

end

end A114459.P14473246106252881043

namespace A114459

/-- `A060018(4*(n+3))` -/
def P14473246106252881043.Spec : Prop :=
  ∀ n, P14473246106252881043.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P11976762621606371

`A000267(4*n+9)`
-/

namespace A114459.P11976762621606371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (4 * n + 9)

end

end A114459.P11976762621606371

namespace A114459

/-- `A000267(4*n+9)` -/
def P11976762621606371.Spec : Prop :=
  ∀ n, P11976762621606371.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P571549678610412240

`A172471(8*n+18)`
-/

namespace A114459.P571549678610412240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (8 * n + 18)

end

end A114459.P571549678610412240

namespace A114459

/-- `A172471(8*n+18)` -/
def P571549678610412240.Spec : Prop :=
  ∀ n, P571549678610412240.a n = A114459 (n + 1)

theorem P571549678610412240.correct : P571549678610412240.Spec := by
  intro n
  simp only [A114459, Nat.add_sub_cancel, A114459.P571549678610412240.a, A114459.P8850751171218531829.a, A172471, A172471.P3873972067505195853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114459

/-! ## A114459.P3249776015528130960

`A055086(4*(n+2)+1)+1`
-/

namespace A114459.P3249776015528130960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (4 * (n + 2) + 1) + 1

end

end A114459.P3249776015528130960

namespace A114459

/-- `A055086(4*(n+2)+1)+1` -/
def P3249776015528130960.Spec : Prop :=
  ∀ n, P3249776015528130960.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P9563943919869170736

`A103128(Δ[(2*(n+2))²])`
-/

namespace A114459.P9563943919869170736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114459.P9563943919869170736

namespace A114459

/-- `A103128(Δ[(2*(n+2))²])` -/
def P9563943919869170736.Spec : Prop :=
  ∀ n, P9563943919869170736.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P7772622269720367541

`A227568(12*n+30)`
-/

namespace A114459.P7772622269720367541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (12 * n + 30)

end

end A114459.P7772622269720367541

namespace A114459

/-- `A227568(12*n+30)` -/
def P7772622269720367541.Spec : Prop :=
  ∀ n, P7772622269720367541.a n = A114459 (n + 1)

end A114459

/-! ## A114459.P10934242524919645146

`ceil(sqrt(16*n+38)-A014963(18*(n+1)))`
-/

namespace A114459.P10934242524919645146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (16 * n + 38 : ℝ) - (A014963 (18 * (n + 1)) : ℝ)⌉

end

end A114459.P10934242524919645146

namespace A114459

/-- `ceil(sqrt(16*n+38)-A014963(18*(n+1)))` -/
def P10934242524919645146.Spec : Prop :=
  ∀ n, P10934242524919645146.a n = A114459 (n + 1)

end A114459

/-!
# A114460: Integer part of sqrt(n)+sqrt(n+1)+sqrt(n+2)+sqrt(n+3)+sqrt(n+4).

The programs for A114460, the canonical program `A114460.P5713913181511546452` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114460 has offset 1).

The definition of A114460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114460.P5713913181511546452

`floor(sqrt(25*(n+1)+49))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114460

/-- `floor(sqrt(25*(n+1)+49))` -/
def P5713913181511546452.Spec : Prop :=
  ∀ n, (P5713913181511546452.a n : ℤ) = A114460 (n + 1)

theorem P5713913181511546452.correct : P5713913181511546452.Spec := by
  intro n
  simp only [A114460, Nat.add_sub_cancel]

end A114460

/-! ## A114460.P14601141276528884853

`A000196(25*(n+1)+49)`
-/

namespace A114460.P14601141276528884853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (25 * (n + 1) + 49)

end

end A114460.P14601141276528884853

namespace A114460

/-- `A000196(25*(n+1)+49)` -/
def P14601141276528884853.Spec : Prop :=
  ∀ n, P14601141276528884853.a n = A114460 (n + 1)

end A114460

/-! ## A114460.P5841462987502559802

`A137735(25*(n+3)-1)`
-/

namespace A114460.P5841462987502559802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (25 * (n + 3) - 1)

end

end A114460.P5841462987502559802

namespace A114460

/-- `A137735(25*(n+3)-1)` -/
def P5841462987502559802.Spec : Prop :=
  ∀ n, P5841462987502559802.a n = A114460 (n + 1)

end A114460

/-!
# A114461: Position in A112037 where the n-th prime appears.

The programs for A114461, there is no canonical definition to state claims against.
-/

/-! ## A114461.P10914809300532832696

`A055768(A307805(n+1))`
-/

namespace A114461.P10914809300532832696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A307805 (n + 1)).toNat

end

end A114461.P10914809300532832696

/-!
# A114463: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k ascents of length 2 starting at an odd level (0<=k<=floor(n/2)-1 for n>=2; k=0 for n=0,1).

The programs for A114463, there is no canonical definition to state claims against.
-/

/-! ## A114463.P9009075193955973960

`∏{e}[5^n, A135331(#)]`
-/

namespace A114463.P9009075193955973960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A135331 (Nat.factorization (f1 n) p)

end

end A114463.P9009075193955973960

/-! ## A114463.P1322248274012749554

`A135309(n^ceil(n/8))`
-/

namespace A114463.P1322248274012749554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135309 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A114463.P1322248274012749554

/-! ## A114463.P16469749090557772029

`A135331(A004903(n+1))`
-/

namespace A114463.P16469749090557772029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135331 (A004903 (n + 1)).toNat

end

end A114463.P16469749090557772029

/-! ## A114463.P16039920789383869530

`A135309(n)%A135958(n)`
-/

namespace A114463.P16039920789383869530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135309 n) (A135958 n)

end

end A114463.P16039920789383869530

/-!
# A114464: Number of Dyck paths of semilength n having no ascents of length 2 that start at an even level.

The programs for A114464, there is no canonical definition to state claims against.
-/

/-! ## A114464.P14634398262058537096

`A114462(∑[round(n/2)])`
-/

namespace A114464.P14634398262058537096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114464.P14634398262058537096

/-! ## A114464.P14420440264489874849

`or(char[1], A114462(A076921(n+1)))`
-/

namespace A114464.P14420440264489874849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114462 (A076921 (n + 1)).toNat)

end

end A114464.P14420440264489874849

/-! ## A114464.P10900181302431936186

`or(char[1], A114462(A182531(n+1)))`
-/

namespace A114464.P10900181302431936186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114462 (A182531 (n + 1)).toNat)

end

end A114464.P10900181302431936186

/-! ## A114464.P6649924056616798676

`abs(A114462(A076921(n+1))-A000038(n))`
-/

namespace A114464.P6649924056616798676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114462 (A076921 (n + 1)).toNat - A000038 n|

end

end A114464.P6649924056616798676

/-! ## A114464.P11505806084241120091

`abs(A033999(n)*A114462(A076921(n+1)))`
-/

namespace A114464.P11505806084241120091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A114462 (A076921 (n + 1)).toNat|

end

end A114464.P11505806084241120091

/-! ## A114464.P16590543530776730515

`A114462(A076921(n+1))+A000007(n+1)`
-/

namespace A114464.P16590543530776730515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114462 (A076921 (n + 1)).toNat + A000007 (n + 1)

end

end A114464.P16590543530776730515

/-! ## A114464.P9209649215798895919

`A007310(n+1)%2*A114462(A182531(n+1))`
-/

namespace A114464.P9209649215798895919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007310 (n + 1)) 2 * A114462 (A182531 (n + 1)).toNat

end

end A114464.P9209649215798895919

/-! ## A114464.P17915359456185092037

`A114462(A076921(n+1))+n-A005843(n)/2`
-/

namespace A114464.P17915359456185092037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114462 (A076921 (n + 1)).toNat : ℚ) + ((n : ℚ) - (A005843 n : ℚ) / 2)

end

end A114464.P17915359456185092037

/-! ## A114464.P17170723810183294465

`(A016789(n)-n-(2*n+1))*A114462(A076921(n+1))`
-/

namespace A114464.P17170723810183294465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016789 n - (n : ℤ) - (2 * n + 1 : ℤ)) * A114462 (A076921 (n + 1)).toNat

end

end A114464.P17170723810183294465

/-! ## A114464.P8862439679147287638

`A001222(A006567(n+1))*A114462(A182531(n+1))`
-/

namespace A114464.P8862439679147287638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006567 (n + 1)).toNat * A114462 (A182531 (n + 1)).toNat

end

end A114464.P8862439679147287638

/-! ## A114464.P10586315764865769967

`A114462(A076921(n+1))%A237160(n+1)`
-/

namespace A114464.P10586315764865769967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114462 (A076921 (n + 1)).toNat) (A237160 (n + 1))

end

end A114464.P10586315764865769967

/-! ## A114464.P9952235719198577121

`A114462(A182531(n+1))%Δ[A002276(n)]`
-/

namespace A114464.P9952235719198577121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114462 (A182531 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A114464.P9952235719198577121

/-!
# A114465: Number of Dyck paths of semilength n having no ascents of length 2 that start at an odd level.

The programs for A114465, there is no canonical definition to state claims against.
-/

/-! ## A114465.P899942633207792554

`A114463(lt[A006053(n), A114463(n)])`
-/

namespace A114465.P899942633207792554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114463 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114465.P899942633207792554

/-! ## A114465.P2987762396848549505

`A097992(A126324(2*n+1)+A027941(n))`
-/

namespace A114465.P2987762396848549505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A126324 (2 * n + 1) + A027941 n).toNat

end

end A114465.P2987762396848549505

/-! ## A114465.P2495010350485311239

`A114463(lt[A005061(n), A224024(3*n+1)])`
-/

namespace A114465.P2495010350485311239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224024 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114463 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114465.P2495010350485311239

/-! ## A114465.P3215971481498335335

`A114463(lt[A285824(3*(n+1)), A168085(n+6)])`
-/

namespace A114465.P3215971481498335335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285824 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168085 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114463 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114465.P3215971481498335335

/-!
# A114466: Number of decimal digits in the 10^n-th Catalan number.

The programs for A114466, there is no canonical definition to state claims against.
-/

/-! ## A114466.P2666194711077628646

`A114501(n)-n`
-/

namespace A114466.P2666194711077628646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114501 n - (n : ℤ)

end

end A114466.P2666194711077628646

/-! ## A114466.P13191814023132955533

`abs(A114501(n)+A001489(n))`
-/

namespace A114466.P13191814023132955533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114501 n + A001489 n|

end

end A114466.P13191814023132955533

/-!
# A114467: Number of decimal digits in the numerator of the 10^n-th harmonic number.

The programs for A114467, there is no canonical definition to state claims against.
-/

/-! ## A114467.P9674656377968162512

`A114468(n)+∑[A251744(n)]`
-/

namespace A114467.P9674656377968162512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114468 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114467.P9674656377968162512

/-! ## A114467.P11389326678931366887

`A359909(or(1, n))+A114468(n)`
-/

namespace A114467.P11389326678931366887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359909 (Nat.lor 1 n) + A114468 n

end

end A114467.P11389326678931366887

/-! ## A114467.P4900803213898411204

`A114468(n)+A000196(floor(n/2))`
-/

namespace A114467.P4900803213898411204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114468 n + A000196 ⌊(n : ℚ) / 2⌋.toNat

end

end A114467.P4900803213898411204

/-! ## A114467.P484869157479996005

`A114468(n)+∑[A010054(3*n+4)]`
-/

namespace A114467.P484869157479996005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114468 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114467.P484869157479996005

/-! ## A114467.P8654558249909699886

`A114468(n)+A001221(A001399(n))`
-/

namespace A114467.P8654558249909699886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114468 n + A001221 (A001399 n).toNat

end

end A114467.P8654558249909699886

/-!
# A114468: Number of decimal digits in the denominator of the 10^n-th harmonic number.

The programs for A114468, there is no canonical definition to state claims against.
-/

/-! ## A114468.P11878219134570848385

`A114467(n)-A220492(n)`
-/

namespace A114468.P11878219134570848385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114467 n - A220492 n

end

end A114468.P11878219134570848385

/-! ## A114468.P2875700503457616187

`A114467(n)-A062153(n+1)`
-/

namespace A114468.P2875700503457616187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114467 n - A062153 (n + 1)

end

end A114468.P2875700503457616187

/-! ## A114468.P5654220425886601648

`A114467(n)-A001222(or(1, n))`
-/

namespace A114468.P5654220425886601648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114467 n - A001222 (Nat.lor 1 n)

end

end A114468.P5654220425886601648

/-! ## A114468.P16384217023386937838

`A114467(n)-∑[char[A090612(n+1)]]`
-/

namespace A114468.P16384217023386937838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114467 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A114468.P16384217023386937838

/-! ## A114468.P2699093113599551738

`A114467(n)-A001221(A027623(n))`
-/

namespace A114468.P2699093113599551738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114467 n - A001221 (A027623 n).toNat

end

end A114468.P2699093113599551738

/-!
# A114469: Number of decimal digits in Lucas(10^n).

The programs for A114469, there is no canonical definition to state claims against.
-/

/-! ## A114469.P10479032111751029634

`A096270(A008776(n))+A068070(n)`
-/

namespace A114469.P10479032111751029634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A008776 n).toNat + A068070 n

end

end A114469.P10479032111751029634

/-! ## A114469.P15482137181200047046

`or(A068070(n), A101455(A000142(n)))`
-/

namespace A114469.P15482137181200047046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068070 n) (A101455 (A000142 n).toNat)

end

end A114469.P15482137181200047046

/-! ## A114469.P5092682379967721963

`or(A068070(n), A269340(A015521(n)))`
-/

namespace A114469.P5092682379967721963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068070 n) (A269340 (A015521 n).toNat)

end

end A114469.P5092682379967721963

/-! ## A114469.P8865642402673536962

`or(A068070(n), A189668(A122449(n)))`
-/

namespace A114469.P8865642402673536962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068070 n) (A189668 (A122449 n).toNat)

end

end A114469.P8865642402673536962

/-!
# A114470: Number of decimal digits in Delannoy[10^n].

The programs for A114470, there is no canonical definition to state claims against.
-/

/-! ## A114470.P64476113379091406

`A114472(n)+A064097(∑[or(1, n)]-n)`
-/

namespace A114470.P64476113379091406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114472 n + A064097 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A114470.P64476113379091406

/-! ## A114470.P14674422347218679057

`A128998(∑[or(1, n)]-n)+A114472(n)`
-/

namespace A114470.P14674422347218679057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A114472 n

end

end A114470.P14674422347218679057

/-! ## A114470.P11155156899306722110

`A114472(n)+A003434(A032803(n))`
-/

namespace A114470.P11155156899306722110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114472 n + A003434 (A032803 n).toNat

end

end A114470.P11155156899306722110

/-!
# A114471: Number of decimal digits in the denominator of the 10^n-th Bernoulli number.

The programs for A114471, there is no canonical definition to state claims against.
-/

/-! ## A114471.P14798859153062330572

`A072491(A343369(n+1))+A000124(n)`
-/

namespace A114471.P14798859153062330572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A343369 (n + 1)).toNat + A000124 n

end

end A114471.P14798859153062330572

/-! ## A114471.P6268465404941082993

`A124768(A225642(n+5))+A069700(n+1)`
-/

namespace A114471.P6268465404941082993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A225642 (n + 5)).toNat + A069700 (n + 1)

end

end A114471.P6268465404941082993

/-! ## A114471.P2578767112340141932

`∑[A341883(∑[A005428(n)])]`
-/

namespace A114471.P2578767112340141932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341883 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114471.P2578767112340141932

/-! ## A114471.P9419549736694810094

`∑[A117535(A334214(n+1))]`
-/

namespace A114471.P9419549736694810094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A334214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114471.P9419549736694810094

/-! ## A114471.P2291076096239664060

`A164719(A052529(n))+A000217(n)`
-/

namespace A114471.P2291076096239664060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (A052529 n).toNat + A000217 n

end

end A114471.P2291076096239664060

/-!
# A114472: Number of decimal digits in SchroederNumber[10^n].

The programs for A114472, there is no canonical definition to state claims against.
-/

/-! ## A114472.P4555588934173761700

`A114470(n)-A064097(∑[or(1, n)]-n)`
-/

namespace A114472.P4555588934173761700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114470 n - A064097 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A114472.P4555588934173761700

/-! ## A114472.P8200795790584383964

`A114470(n)-A128998(∑[or(1, n)]-n)`
-/

namespace A114472.P8200795790584383964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114470 n - A128998 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A114472.P8200795790584383964

/-!
# A114473: Number of decimal digits in the 10^n-th Motzkin number.

The programs for A114473, there is no canonical definition to state claims against.
-/

/-! ## A114473.P13471833272424249444

`A034888(∑{digits}[n, 10^#]-3*n)`
-/

namespace A114473.P13471833272424249444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum - 3 * n)

end

end A114473.P13471833272424249444

/-!
# A114475: Number of decimal digits in Mersenne(10^n).

The programs for A114475, there is no canonical definition to state claims against.
-/

/-! ## A114475.P273134035752206071

`ceil(10^n/log2(10))`
-/

namespace A114475.P273134035752206071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A114475.P273134035752206071

/-! ## A114475.P4978371625707092888

`floor(A178500(n)/log2(10))+1`
-/

namespace A114475.P4978371625707092888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178500 n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

end

end A114475.P4978371625707092888

/-! ## A114475.P6770396556620873558

`floor(Δ[A002275(n)/log2(10)])+1`
-/

namespace A114475.P6770396556620873558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002275 n : ℝ) / Real.logb 2 (10 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1

end

end A114475.P6770396556620873558

/-! ## A114475.P12920025855615426061

`floor((A002283(n)+1)/log2(10))+1`
-/

namespace A114475.P12920025855615426061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002283 n + 1 : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

end

end A114475.P12920025855615426061

/-! ## A114475.P11134258726304567146

`floor(A007088(A011782(n+1))/log2(10))+1`
-/

namespace A114475.P11134258726304567146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007088 (A011782 (n + 1)).toNat : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

end

end A114475.P11134258726304567146

/-!
# A114477: Smallest Fibonacci number with Hamming weight n (i.e., smallest number with exactly n ones when written in binary), or -1 if no such number exists.

The programs for A114477, there is no canonical definition to state claims against.
-/

/-! ## A114477.P24073939458434236

`A035517(A007561(n)*A129150(n))`
-/

namespace A114477.P24073939458434236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (A007561 n * A129150 n).toNat

end

end A114477.P24073939458434236

/-! ## A114477.P13518646563905830633

`A176746(A176745(n)*A233777(n))`
-/

namespace A114477.P13518646563905830633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176746 (A176745 n * A233777 n).toNat

end

end A114477.P13518646563905830633

/-! ## A114477.P14235929534319878016

`A176746(A176745(n)*A241312(n+3))`
-/

namespace A114477.P14235929534319878016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176746 (A176745 n * A241312 (n + 3)).toNat

end

end A114477.P14235929534319878016

/-!
# A114479: Kekulé numbers for certain benzenoids.

The programs for A114479, the canonical program `A114479.P15948085007358780953` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114479 has offset 1).

The definition of A114479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114479.P15948085007358780953

`8*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114479

/-- `8*a(n-1)-8*a(n-2)` -/
def P15948085007358780953.Spec : Prop :=
  ∀ n, P15948085007358780953.a n = A114479 (n + 1)

theorem P15948085007358780953.correct : P15948085007358780953.Spec := by
  intro n
  simp only [A114479, Nat.add_sub_cancel]

end A114479

/-! ## A114479.P3186270966071597889

`A007052(n+1)*2^n`
-/

namespace A114479.P3186270966071597889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) * (2 ^ n : ℤ)

end

end A114479.P3186270966071597889

namespace A114479

/-- `A007052(n+1)*2^n` -/
def P3186270966071597889.Spec : Prop :=
  ∀ n, P3186270966071597889.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P1731184465936059790

`((4+sqrt(8))^(n+2)+(4-sqrt(8))^(n+2))/16`
-/

namespace A114479.P1731184465936059790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (8 : ℝ)) ^ (n + 2) + (4 - Real.sqrt (8 : ℝ)) ^ (n + 2)) / 16

end

end A114479.P1731184465936059790

namespace A114479

/-- `((4+sqrt(8))^(n+2)+(4-sqrt(8))^(n+2))/16` -/
def P1731184465936059790.Spec : Prop :=
  ∀ n, P1731184465936059790.a n = (A114479 (n + 1) : ℝ)

theorem P1731184465936059790.correct : P1731184465936059790.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A114479, Nat.add_sub_cancel, A114479.P1731184465936059790.a, A114479.P15948085007358780953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A114479, Nat.add_sub_cancel, A114479.P1731184465936059790.a, A114479.P15948085007358780953.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A114479

/-! ## A114479.P3755212708759035521

`ogf((3-4x)/(1-8x+8x^2))`
-/

namespace A114479.P3755212708759035521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -8, 8] n

end

end A114479.P3755212708759035521

namespace A114479

/-- `ogf((3-4x)/(1-8x+8x^2))` -/
def P3755212708759035521.Spec : Prop :=
  ∀ n, P3755212708759035521.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P13931881716750483766

`8*(a(n-1)-a(n-2))` with `a(0)=3, a(1)=20`
-/

namespace A114479.P13931881716750483766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 20] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A114479.P13931881716750483766

namespace A114479

/-- `8*(a(n-1)-a(n-2))` -/
def P13931881716750483766.Spec : Prop :=
  ∀ n, P13931881716750483766.a n = A114479 (n + 1)

theorem P13931881716750483766.correct : P13931881716750483766.Spec := by
  intro n
  simp only [A114479, Nat.add_sub_cancel, A114479.P13931881716750483766.a, A114479.P15948085007358780953.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114479

/-! ## A114479.P12728264525367656505

`Δ[A084130(n)]`
-/

namespace A114479.P12728264525367656505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114479.P12728264525367656505

namespace A114479

/-- `Δ[A084130(n)]` -/
def P12728264525367656505.Spec : Prop :=
  ∀ n, P12728264525367656505.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P4397634270430283188

`2^n*A048580(n)`
-/

namespace A114479.P4397634270430283188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048580 n

end

end A114479.P4397634270430283188

namespace A114479

/-- `2^n*A048580(n)` -/
def P4397634270430283188.Spec : Prop :=
  ∀ n, P4397634270430283188.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P11306688624452723832

`Δ[2^n*A006012(n)]`
-/

namespace A114479.P11306688624452723832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114479.P11306688624452723832

namespace A114479

/-- `Δ[2^n*A006012(n)]` -/
def P11306688624452723832.Spec : Prop :=
  ∀ n, P11306688624452723832.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P9250615042578866228

`2^(n-1)*A006012(n+2)`
-/

namespace A114479.P9250615042578866228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A006012 (n + 2) : ℚ)

end

end A114479.P9250615042578866228

namespace A114479

/-- `2^(n-1)*A006012(n+2)` -/
def P9250615042578866228.Spec : Prop :=
  ∀ n, P9250615042578866228.a n = (A114479 (n + 1) : ℚ)

end A114479

/-! ## A114479.P8551875281927726951

`2^(n-2)*A056236(n+2)`
-/

namespace A114479.P8551875281927726951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A056236 (n + 2) : ℚ)

end

end A114479.P8551875281927726951

namespace A114479

/-- `2^(n-2)*A056236(n+2)` -/
def P8551875281927726951.Spec : Prop :=
  ∀ n, P8551875281927726951.a n = (A114479 (n + 1) : ℚ)

end A114479

/-! ## A114479.P293356075764866565

`lcm(A048580(n), A094015(n))`
-/

namespace A114479.P293356075764866565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048580 n) (A094015 n)

end

end A114479.P293356075764866565

namespace A114479

/-- `lcm(A048580(n), A094015(n))` -/
def P293356075764866565.Spec : Prop :=
  ∀ n, (P293356075764866565.a n : ℤ) = A114479 (n + 1)

end A114479

/-! ## A114479.P7410400628652851091

`Δ[A007070(n)]*A000079(n)`
-/

namespace A114479.P7410400628652851091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A114479.P7410400628652851091

namespace A114479

/-- `Δ[A007070(n)]*A000079(n)` -/
def P7410400628652851091.Spec : Prop :=
  ∀ n, P7410400628652851091.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P3230371206327600226

`A084130(n+1)-A084130(n)`
-/

namespace A114479.P3230371206327600226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084130 (n + 1) - A084130 n

end

end A114479.P3230371206327600226

namespace A114479

/-- `A084130(n+1)-A084130(n)` -/
def P3230371206327600226.Spec : Prop :=
  ∀ n, P3230371206327600226.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P637404099737397311

`A000079(n)*A007052(n+1)`
-/

namespace A114479.P637404099737397311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007052 (n + 1)

end

end A114479.P637404099737397311

namespace A114479

/-- `A000079(n)*A007052(n+1)` -/
def P637404099737397311.Spec : Prop :=
  ∀ n, P637404099737397311.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P14601603853784559493

`A079496(n+2)*A094015(n)`
-/

namespace A114479.P14601603853784559493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 2) * A094015 n

end

end A114479.P14601603853784559493

namespace A114479

/-- `A079496(n+2)*A094015(n)` -/
def P14601603853784559493.Spec : Prop :=
  ∀ n, P14601603853784559493.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P15226065003141831214

`A057084(n)+2*A123357(n)`
-/

namespace A114479.P15226065003141831214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057084 n + 2 * A123357 n

end

end A114479.P15226065003141831214

namespace A114479

/-- `A057084(n)+2*A123357(n)` -/
def P15226065003141831214.Spec : Prop :=
  ∀ n, P15226065003141831214.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P15602798575285661452

`Δ[A000225(n)]*Δ[A007070(n)]`
-/

namespace A114479.P15602798575285661452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A114479.P15602798575285661452

namespace A114479

/-- `Δ[A000225(n)]*Δ[A007070(n)]` -/
def P15602798575285661452.Spec : Prop :=
  ∀ n, P15602798575285661452.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P18226771058143901231

`(∑[A020727(n)]+1)*A000079(n)`
-/

namespace A114479.P18226771058143901231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000079 n

end

end A114479.P18226771058143901231

namespace A114479

/-- `(∑[A020727(n)]+1)*A000079(n)` -/
def P18226771058143901231.Spec : Prop :=
  ∀ n, P18226771058143901231.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P17154956742917451628

`Δ[A006012(n)*A131577(n+1)]`
-/

namespace A114479.P17154956742917451628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114479.P17154956742917451628

namespace A114479

/-- `Δ[A006012(n)*A131577(n+1)]` -/
def P17154956742917451628.Spec : Prop :=
  ∀ n, P17154956742917451628.a n = A114479 (n + 1)

end A114479

/-! ## A114479.P7984244920074754682

`A000079(n)*A007068(2*(n+1))`
-/

namespace A114479.P7984244920074754682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007068 (2 * (n + 1))

end

end A114479.P7984244920074754682

namespace A114479

/-- `A000079(n)*A007068(2*(n+1))` -/
def P7984244920074754682.Spec : Prop :=
  ∀ n, P7984244920074754682.a n = A114479 (n + 1)

end A114479

/-!
# A114480: Kekulé numbers for certain benzenoids.

The programs for A114480, the canonical program `A114480.P7868779738620357469` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114480 has offset 1).

The definition of A114480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114480.P7868779738620357469

`15*a(n-1)-25*a(n-2)` with `a(0)=4, a(1)=50`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114480

/-- `15*a(n-1)-25*a(n-2)` -/
def P7868779738620357469.Spec : Prop :=
  ∀ n, P7868779738620357469.a n = A114480 (n + 1)

theorem P7868779738620357469.correct : P7868779738620357469.Spec := by
  intro n
  simp only [A114480, Nat.add_sub_cancel]

end A114480

/-! ## A114480.P1532459664203229106

`ogf((4-10x)/(1-15x+25x^2))`
-/

namespace A114480.P1532459664203229106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10] [1, -15, 25] n

end

end A114480.P1532459664203229106

namespace A114480

/-- `ogf((4-10x)/(1-15x+25x^2))` -/
def P1532459664203229106.Spec : Prop :=
  ∀ n, P1532459664203229106.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P249381308318564763

`A153367(Δ[n²])`
-/

namespace A114480.P249381308318564763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114480.P249381308318564763

namespace A114480

/-- `A153367(Δ[n²])` -/
def P249381308318564763.Spec : Prop :=
  ∀ n, P249381308318564763.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P6115513681530190587

`2*A052936(Δ[n²])`
-/

namespace A114480.P6115513681530190587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114480.P6115513681530190587

namespace A114480

/-- `2*A052936(Δ[n²])` -/
def P6115513681530190587.Spec : Prop :=
  ∀ n, P6115513681530190587.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P4806189211114457256

`lcm(2, A153367(2*n+1))`
-/

namespace A114480.P4806189211114457256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A153367 (2 * n + 1))

end

end A114480.P4806189211114457256

namespace A114480

/-- `lcm(2, A153367(2*n+1))` -/
def P4806189211114457256.Spec : Prop :=
  ∀ n, (P4806189211114457256.a n : ℤ) = A114480 (n + 1)

end A114480

/-! ## A114480.P9498636928153618182

`A153364(3*n+n+1)`
-/

namespace A114480.P9498636928153618182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (3 * n + (n + 1))

end

end A114480.P9498636928153618182

namespace A114480

/-- `A153364(3*n+n+1)` -/
def P9498636928153618182.Spec : Prop :=
  ∀ n, P9498636928153618182.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P18066555526741637466

`5^n*A126358(n+1)`
-/

namespace A114480.P18066555526741637466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A126358 (n + 1)

end

end A114480.P18066555526741637466

namespace A114480

/-- `5^n*A126358(n+1)` -/
def P18066555526741637466.Spec : Prop :=
  ∀ n, P18066555526741637466.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P2768911366078675372

`2*5^n*A000045(2*n+3)`
-/

namespace A114480.P2768911366078675372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ n : ℤ) * A000045 (2 * n + 3)

end

end A114480.P2768911366078675372

namespace A114480

/-- `2*5^n*A000045(2*n+3)` -/
def P2768911366078675372.Spec : Prop :=
  ∀ n, P2768911366078675372.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P13824078918643189795

`2*A000351(n)*A048575(n)`
-/

namespace A114480.P13824078918643189795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000351 n * A048575 n)

end

end A114480.P13824078918643189795

namespace A114480

/-- `2*A000351(n)*A048575(n)` -/
def P13824078918643189795.Spec : Prop :=
  ∀ n, P13824078918643189795.a n = A114480 (n + 1)

end A114480

/-! ## A114480.P5894168609696525722

`A001519(n+2)*A020699(n+1)`
-/

namespace A114480.P5894168609696525722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) * A020699 (n + 1)

end

end A114480.P5894168609696525722

namespace A114480

/-- `A001519(n+2)*A020699(n+1)` -/
def P5894168609696525722.Spec : Prop :=
  ∀ n, P5894168609696525722.a n = A114480 (n + 1)

end A114480

/-!
# A114481: Kekulé numbers for certain benzenoids.

The programs for A114481, there is no canonical definition to state claims against.
-/

/-! ## A114481.P3248529791179914252

`3^n*A057960(2*(n+1))`
-/

namespace A114481.P3248529791179914252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A057960 (2 * (n + 1))

end

end A114481.P3248529791179914252

/-! ## A114481.P11398366257840171728

`A057960(2*(n+1))*A000244(n)`
-/

namespace A114481.P11398366257840171728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 (2 * (n + 1)) * A000244 n

end

end A114481.P11398366257840171728

/-!
# A114482: Let S(1)=1, S(2)=10; S(2n)=concatenation of S(2n-1), S(2n-2) and 0; and S(2n+1)=concatenation of S(2n), S(2n) and 0. Sequence gives S(infinity).

The programs for A114482, the canonical program `A114482.P5475032961031310785` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114482 has offset 1).

The definition of A114482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114482.P5475032961031310785

`char[3*n-A160384(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114482

/-- `char[3*n-A160384(n)]` -/
def P5475032961031310785.Spec : Prop :=
  ∀ n, (P5475032961031310785.a n : ℤ) = A114482 (n + 1)

theorem P5475032961031310785.correct : P5475032961031310785.Spec := by
  intro n
  simp only [A114482, Nat.add_sub_cancel]

end A114482

/-! ## A114482.P15844711659871153979

`char[3*n-∑{e}[A006047(n), #]]`
-/

namespace A114482.P15844711659871153979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P15844711659871153979

namespace A114482

/-- `char[3*n-∑{e}[A006047(n), #]]` -/
def P15844711659871153979.Spec : Prop :=
  ∀ n, (P15844711659871153979.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P7550741605049405447

`char[A346502(n)+A081603(n)]`
-/

namespace A114482.P7550741605049405447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n + A081603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P7550741605049405447

namespace A114482

/-- `char[A346502(n)+A081603(n)]` -/
def P7550741605049405447.Spec : Prop :=
  ∀ n, (P7550741605049405447.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P12939945822175640749

`char[A344853(3*n)+A081603(n)]`
-/

namespace A114482.P12939945822175640749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 (3 * n) + A081603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P12939945822175640749

namespace A114482

/-- `char[A344853(3*n)+A081603(n)]` -/
def P12939945822175640749.Spec : Prop :=
  ∀ n, (P12939945822175640749.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P17816622611802465552

`char[3*n-A001222(A006047(n))]`
-/

namespace A114482.P17816622611802465552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A001222 (A006047 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P17816622611802465552

namespace A114482

/-- `char[3*n-A001222(A006047(n))]` -/
def P17816622611802465552.Spec : Prop :=
  ∀ n, (P17816622611802465552.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P136635111996765184

`char[3*n-A000120(A023717(n))]`
-/

namespace A114482.P136635111996765184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A000120 (A023717 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P136635111996765184

namespace A114482

/-- `char[3*n-A000120(A023717(n))]` -/
def P136635111996765184.Spec : Prop :=
  ∀ n, (P136635111996765184.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P822503663756084394

`char[3*n-A001222(A120879(n))]`
-/

namespace A114482.P822503663756084394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A001222 (A120879 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P822503663756084394

namespace A114482

/-- `char[3*n-A001222(A120879(n))]` -/
def P822503663756084394.Spec : Prop :=
  ∀ n, (P822503663756084394.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P15471841637033758515

`char[abs(A001221(A289838(n))-3*n)]`
-/

namespace A114482.P15471841637033758515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (A289838 n).toNat - (3 * n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P15471841637033758515

namespace A114482

/-- `char[abs(A001221(A289838(n))-3*n)]` -/
def P15471841637033758515.Spec : Prop :=
  ∀ n, (P15471841637033758515.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P2714785619798997556

`char[3*n-A001222(1-A062296(n)+n)]`
-/

namespace A114482.P2714785619798997556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A001222 (1 - A062296 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P2714785619798997556

namespace A114482

/-- `char[3*n-A001222(1-A062296(n)+n)]` -/
def P2714785619798997556.Spec : Prop :=
  ∀ n, (P2714785619798997556.a n : ℤ) = A114482 (n + 1)

end A114482

/-! ## A114482.P384804251407632043

`char[A008585(n)-A001221(A101278(n))]`
-/

namespace A114482.P384804251407632043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - A001221 (A101278 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P384804251407632043

namespace A114482

/-- `char[A008585(n)-A001221(A101278(n))]` -/
def P384804251407632043.Spec : Prop :=
  ∀ n, (P384804251407632043.a n : ℤ) = A114482 (n + 1)

end A114482

/-!
# A114483: s(1)={1}. s(2)={1,0}. If a(n) = 0, s(n+2) = s(n+1) U s(n) U {1}. If a(n) = 1, s(n+2) = s(n+1) U s(n+1) U {1}. (U represents concatenation of finite sequences.) {a(n)} is the limit of {s(n)} as n -> infinity.

The programs for A114483, there is no canonical definition to state claims against.
-/

/-! ## A114483.P8498522559710874822

`A144611(A033046(n)+35)`
-/

namespace A114483.P8498522559710874822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A033046 n + 35).toNat

end

end A114483.P8498522559710874822

/-! ## A114483.P16026277667219474047

`A008966(A061870(n+4)+A007088(n))`
-/

namespace A114483.P16026277667219474047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A061870 (n + 4) + A007088 n).toNat

end

end A114483.P16026277667219474047

/-! ## A114483.P12263314386975352625

`A250104(A137560(n))`
-/

namespace A114483.P12263314386975352625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250104 (A137560 n).toNat

end

end A114483.P12263314386975352625

/-! ## A114483.P3112441655422284184

`A286990(A226085(n+2))`
-/

namespace A114483.P3112441655422284184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A226085 (n + 2)).toNat

end

end A114483.P3112441655422284184

/-! ## A114483.P935366690398267473

`A153778(A312893(n+1))`
-/

namespace A114483.P935366690398267473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153778 (A312893 (n + 1)).toNat

end

end A114483.P935366690398267473

/-!
# A114485: Number of decimal digits in !(10^n), where !x is the subfactorial.

The programs for A114485, there is no canonical definition to state claims against.
-/

/-! ## A114485.P7846347880355120906

`A061010(n+1)-A085604(A076358(2*n+1))`
-/

namespace A114485.P7846347880355120906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061010 (n + 1) - A085604 (A076358 (2 * n + 1)).toNat

end

end A114485.P7846347880355120906

/-! ## A114485.P5802528283934133303

`A061010(n+1)-A082784(A276929(n))`
-/

namespace A114485.P5802528283934133303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061010 (n + 1) - A082784 (A276929 n).toNat

end

end A114485.P5802528283934133303

/-!
# A114486: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k UUDD's starting at level 0; here U=(1,1), D=(1,-1) (0<=k<=floor(n/2)).

The programs for A114486, there is no canonical definition to state claims against.
-/

/-! ## A114486.P4505717291868242206

`A113865(C(A001633(n+1), A038001(n+1)))`
-/

namespace A114486.P4505717291868242206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113865 (Nat.choose (A001633 (n + 1)).toNat (A038001 (n + 1)).toNat)

end

end A114486.P4505717291868242206

/-!
# A114487: Number of Dyck paths of semilength n having no UUDD's starting at level 0.

The programs for A114487, the canonical program `A114487.P16900368004980004026` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114487 has offset 0).

The definition of A114487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114487.P11898724523464676538

`A114486(∑[ceil(n/2)])`
-/

namespace A114487.P11898724523464676538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114487.P11898724523464676538

namespace A114487

/-- `A114486(∑[ceil(n/2)])` -/
def P11898724523464676538.Spec : Prop :=
  ∀ n, P11898724523464676538.a n = A114487 n

end A114487

/-! ## A114487.P16900368004980004026

`A000108(n)-(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114487

/-- `A000108(n)-(a(n-1)+a(n-3))` -/
def P16900368004980004026.Spec : Prop :=
  ∀ n, P16900368004980004026.a n = A114487 n

theorem P16900368004980004026.correct : P16900368004980004026.Spec := by
  intro n
  simp only [A114487]

end A114487

/-! ## A114487.P12611510100578071025

`A278025(2*(n+1))-A278023(n+2)`
-/

namespace A114487.P12611510100578071025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278025 (2 * (n + 1)) - A278023 (n + 2)

end

end A114487.P12611510100578071025

namespace A114487

/-- `A278025(2*(n+1))-A278023(n+2)` -/
def P12611510100578071025.Spec : Prop :=
  ∀ n, P12611510100578071025.a n = A114487 n

end A114487

/-! ## A114487.P12897057314356967051

`A248227(A148354(n))`
-/

namespace A114487.P12897057314356967051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A148354 n).toNat

end

end A114487.P12897057314356967051

namespace A114487

/-- `A248227(A148354(n))` -/
def P12897057314356967051.Spec : Prop :=
  ∀ n, P12897057314356967051.a n = A114487 n

end A114487

/-!
# A114488: Number of decimal digits in (10^n)!!.

The programs for A114488, there is no canonical definition to state claims against.
-/

/-! ## A114488.P12235480744932716951

`floor(A034886(10^n)/2)+1`
-/

namespace A114488.P12235480744932716951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034886 (10 ^ n) : ℚ) / 2⌋ + 1

end

end A114488.P12235480744932716951

/-!
# A114491: Number of "ultrasweet" Boolean functions of n variables.

The programs for A114491, there is no canonical definition to state claims against.
-/

/-! ## A114491.P15552278851663014613

`A058673(n)+1`
-/

namespace A114491.P15552278851663014613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058673 n + 1

end

end A114491.P15552278851663014613

/-! ## A114491.P10006246650013352121

`1-(A062329(n)-A058673(n))`
-/

namespace A114491.P10006246650013352121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A062329 n - A058673 n)

end

end A114491.P10006246650013352121

/-! ## A114491.P7104744185145347143

`1-(A137579(n)-A058673(n))`
-/

namespace A114491.P7104744185145347143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A137579 n - A058673 n)

end

end A114491.P7104744185145347143

/-! ## A114491.P13968119126853476707

`2-(A178788(n)-A058673(n))`
-/

namespace A114491.P13968119126853476707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A178788 n - A058673 n)

end

end A114491.P13968119126853476707

/-! ## A114491.P9971705645458369430

`2-(or(1, A249699(n))-A058673(n))`
-/

namespace A114491.P9971705645458369430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.lor 1 (A249699 n) - A058673 n)

end

end A114491.P9971705645458369430

/-!
# A114492: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and having k DDUU's, where U=(1,1), D=(1,-1) (0<=k<=floor(n/2)-1 for n>=2).

The programs for A114492, there is no canonical definition to state claims against.
-/

/-! ## A114492.P212830753525100525

`A185284(A000124(n))+A135308(n)`
-/

namespace A114492.P212830753525100525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A135308 n

end

end A114492.P212830753525100525

/-! ## A114492.P13056475664388263186

`or(A135308(n), A216715(A000041(n)))`
-/

namespace A114492.P13056475664388263186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135308 n) (A216715 (A000041 n).toNat)

end

end A114492.P13056475664388263186

/-! ## A114492.P10752497496517251406

`or(A060953(A170941(n)), A135308(n))`
-/

namespace A114492.P10752497496517251406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060953 (A170941 n).toNat) (A135308 n)

end

end A114492.P10752497496517251406

/-!
# A114494: Triangle read by rows: T(n,k) is number of hill-free Dyck paths of semilength n and having k returns to the x-axis. (A Dyck path is said to be hill-free if it has no peaks at level 1.)

The programs for A114494, there is no canonical definition to state claims against.
-/

/-! ## A114494.P3792861423258065914

`A059365(record[gcd(n, A059341(n))])`
-/

namespace A114494.P3792861423258065914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A059341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A114494.P3792861423258065914

/-! ## A114494.P11534079471548704600

`A059365(eq[A000007(n), A059341(n)])`
-/

namespace A114494.P11534079471548704600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114494.P11534079471548704600

/-! ## A114494.P16682692163576074290

`A059365(eq[A010816(n), A059341(n)])`
-/

namespace A114494.P16682692163576074290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114494.P16682692163576074290

/-! ## A114494.P15948107430451435863

`A059365(eq[A059341(n), A198954(n)])`
-/

namespace A114494.P15948107430451435863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114494.P15948107430451435863

/-! ## A114494.P8494334202218845536

`A059365(eq[A059341(n), A154955(n+1)])`
-/

namespace A114494.P8494334202218845536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114494.P8494334202218845536

/-! ## A114494.P6048828615157863924

`A059365(eq[n*A059341(n), A059341(n)])`
-/

namespace A114494.P6048828615157863924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114494.P6048828615157863924

/-!
# A114495: Number of returns to the x-axis in all hill-free Dyck paths of semilength n (a Dyck path is said to be hill-free if it has no peaks at level 1).

The programs for A114495, the canonical program `A114495.P3391984248548370264` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114495 has offset 1).

The definition of A114495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114495.P8024372195291111229

`A389115(n)-A065601(n+1)`
-/

namespace A114495.P8024372195291111229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389115 n - A065601 (n + 1)

end

end A114495.P8024372195291111229

namespace A114495

/-- `A389115(n)-A065601(n+1)` -/
def P8024372195291111229.Spec : Prop :=
  ∀ n, P8024372195291111229.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P9983863291471735036

`Δ[A289447(n+1)/3]`
-/

namespace A114495.P9983863291471735036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289447 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114495.P9983863291471735036

namespace A114495

/-- `Δ[A289447(n+1)/3]` -/
def P9983863291471735036.Spec : Prop :=
  ∀ n, P9983863291471735036.a n = (A114495 (n + 1) : ℚ)

end A114495

/-! ## A114495.P9207500731430099596

`A104629(n)-A389115(n)`
-/

namespace A114495.P9207500731430099596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n - A389115 n

end

end A114495.P9207500731430099596

namespace A114495

/-- `A104629(n)-A389115(n)` -/
def P9207500731430099596.Spec : Prop :=
  ∀ n, P9207500731430099596.a n = A114495 (n + 1)

theorem P9207500731430099596.correct : P9207500731430099596.Spec := by
  intro n
  simp only [A114495, Nat.add_sub_cancel, A114495.P9207500731430099596.a, A114495.P3391984248548370264.f1, A114495.P3391984248548370264.a, A014301, A014301.P18515033819834153.a, A104629, A104629.P11080252807694944211.a, A114515, A114515.P8369440402788739489.a, A389115, A389115.P8667954685780618499.a, A000957, A000957.P17024256012114130201.a, A026641, A026641.P1352791935542625718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114495

/-! ## A114495.P6480678629782691394

`A065601(n+2)-record[A000957(n)]`
-/

namespace A114495.P6480678629782691394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065601 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114495.P6480678629782691394

namespace A114495

/-- `A065601(n+2)-record[A000957(n)]` -/
def P6480678629782691394.Spec : Prop :=
  ∀ n, P6480678629782691394.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P7097557536181054406

`A126983(n+2)+A065601(n+2)`
-/

namespace A114495.P7097557536181054406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) + A065601 (n + 2)

end

end A114495.P7097557536181054406

namespace A114495

/-- `A126983(n+2)+A065601(n+2)` -/
def P7097557536181054406.Spec : Prop :=
  ∀ n, P7097557536181054406.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P2308437553197275376

`A065601(n+2)-A000957(n+2)`
-/

namespace A114495.P2308437553197275376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065601 (n + 2) - A000957 (n + 2)

end

end A114495.P2308437553197275376

namespace A114495

/-- `A065601(n+2)-A000957(n+2)` -/
def P2308437553197275376.Spec : Prop :=
  ∀ n, P2308437553197275376.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P10366130423461656205

`A065601(n+2)-record[A065600(n+1)]`
-/

namespace A114495.P10366130423461656205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065601 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114495.P10366130423461656205

namespace A114495

/-- `A065601(n+2)-record[A065600(n+1)]` -/
def P10366130423461656205.Spec : Prop :=
  ∀ n, P10366130423461656205.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P9496776809259217017

`A065600(A000124(n+2))-A000957(n+2)`
-/

namespace A114495.P9496776809259217017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A000124 (n + 2)).toNat - A000957 (n + 2)

end

end A114495.P9496776809259217017

namespace A114495

/-- `A065600(A000124(n+2))-A000957(n+2)` -/
def P9496776809259217017.Spec : Prop :=
  ∀ n, P9496776809259217017.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P13511855697141164747

`A114515(n+1)-A119012(n+1)`
-/

namespace A114495.P13511855697141164747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1) - A119012 (n + 1)

end

end A114495.P13511855697141164747

namespace A114495

/-- `A114515(n+1)-A119012(n+1)` -/
def P13511855697141164747.Spec : Prop :=
  ∀ n, P13511855697141164747.a n = A114495 (n + 1)

theorem P13511855697141164747.correct : P13511855697141164747.Spec := by
  intro n
  simp only [A114495, Nat.add_sub_cancel, A114495.P13511855697141164747.a, A114495.P3391984248548370264.f1, A114495.P3391984248548370264.a, A014301, A014301.P18515033819834153.a, A114515, A114515.P8369440402788739489.a, A119012, A119012.P17349838365231914682.a, A000957, A000957.P17024256012114130201.a, A026641, A026641.P1352791935542625718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114495

/-! ## A114495.P3391984248548370264

`A014301(n+2)-Δ[A114515(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A114495

/-- `A014301(n+2)-Δ[A114515(n+1)]` -/
def P3391984248548370264.Spec : Prop :=
  ∀ n, P3391984248548370264.a n = A114495 (n + 1)

theorem P3391984248548370264.correct : P3391984248548370264.Spec := by
  intro n
  simp only [A114495, Nat.add_sub_cancel]

end A114495

/-! ## A114495.P15230127420361493235

`A057427(n)*A135333(A152950(n+1))`
-/

namespace A114495.P15230127420361493235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A135333 (A152950 (n + 1)).toNat

end

end A114495.P15230127420361493235

namespace A114495

/-- `A057427(n)*A135333(A152950(n+1))` -/
def P15230127420361493235.Spec : Prop :=
  ∀ n, P15230127420361493235.a n = A114495 (n + 1)

end A114495

/-! ## A114495.P11059854571382589700

`lcm(A062157(n), A135333(A152950(n+1)))`
-/

namespace A114495.P11059854571382589700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A135333 (A152950 (n + 1)).toNat)

end

end A114495.P11059854571382589700

namespace A114495

/-- `lcm(A062157(n), A135333(A152950(n+1)))` -/
def P11059854571382589700.Spec : Prop :=
  ∀ n, (P11059854571382589700.a n : ℤ) = A114495 (n + 1)

end A114495

/-! ## A114495.P5597988010928234616

`A135333(A152950(n+1))%A026748(n)`
-/

namespace A114495.P5597988010928234616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135333 (A152950 (n + 1)).toNat) (A026748 n)

end

end A114495.P5597988010928234616

namespace A114495

/-- `A135333(A152950(n+1))%A026748(n)` -/
def P5597988010928234616.Spec : Prop :=
  ∀ n, P5597988010928234616.a n = A114495 (n + 1)

end A114495

/-!
# A114496: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(2n+k,k).

The programs for A114496, there is no canonical definition to state claims against.
-/

/-! ## A114496.P12877124557650549617

`A007165(2*(n+1))+n*A294728(2*(n+1))`
-/

namespace A114496.P12877124557650549617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007165 (2 * (n + 1)) + (n : ℤ) * A294728 (2 * (n + 1))

end

end A114496.P12877124557650549617

/-! ## A114496.P2571674506752621758

`A387934(∑[n+3])`
-/

namespace A114496.P2571674506752621758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114496.P2571674506752621758

/-! ## A114496.P16046732698554653418

`A114188(∑[4*n])`
-/

namespace A114496.P16046732698554653418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114496.P16046732698554653418

/-! ## A114496.P1388430010372441293

`abs(A110511(∑[4*n]))`
-/

namespace A114496.P1388430010372441293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110511 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A114496.P1388430010372441293

/-! ## A114496.P6160988810134141723

`A209414((n+1)²+n²)`
-/

namespace A114496.P6160988810134141723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209414 ((n + 1) ^ 2 + n ^ 2)

end

end A114496.P6160988810134141723

/-! ## A114496.P3817260651270702302

`A209414(A001844(n))%A156887(n+2)`
-/

namespace A114496.P3817260651270702302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209414 (A001844 n).toNat) (A156887 (n + 2))

end

end A114496.P3817260651270702302

/-! ## A114496.P1969614949382130864

`A268543(n)/A000984(n)`
-/

namespace A114496.P1969614949382130864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268543 n : ℚ) / (A000984 n : ℚ)

end

end A114496.P1969614949382130864

/-! ## A114496.P16512720630100323412

`A268543(n)/A081668(2*n)`
-/

namespace A114496.P16512720630100323412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268543 n : ℚ) / (A081668 (2 * n) : ℚ)

end

end A114496.P16512720630100323412

/-! ## A114496.P4964450526395597913

`A209414(A001844(n))+A000007(A209574(n+1))`
-/

namespace A114496.P4964450526395597913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209414 (A001844 n).toNat + A000007 (A209574 (n + 1)).toNat

end

end A114496.P4964450526395597913

