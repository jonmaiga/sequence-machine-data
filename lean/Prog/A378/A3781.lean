import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A378100: Number of involutions in the symmetric group S_n with at least one fixed point.

The programs for A378100, the canonical program `A378100.P5253957062667002361` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378100 has offset 0).

The definition of A378100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378100.P5253957062667002361

`A000085(n)-A123023(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A378100

/-- `A000085(n)-A123023(n)` -/
def P5253957062667002361.Spec : Prop :=
  ∀ n, P5253957062667002361.a n = A378100 n

theorem P5253957062667002361.correct : P5253957062667002361.Spec := by
  intro n
  simp only [A378100]

end A378100

/-! ## A378100.P7095323993032122274

`A070895(∑[n])-char[2*n]*A133221(n)`
-/

namespace A378100.P7095323993032122274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A133221 n

end

end A378100.P7095323993032122274

namespace A378100

/-- `A070895(∑[n])-char[2*n]*A133221(n)` -/
def P7095323993032122274.Spec : Prop :=
  ∀ n, P7095323993032122274.a n = A378100 n

end A378100

/-! ## A378100.P13398381851966987537

`A000085(n)-A099174(A000217(n))`
-/

namespace A378100.P13398381851966987537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A099174 (A000217 n).toNat

end

end A378100.P13398381851966987537

namespace A378100

/-- `A000085(n)-A099174(A000217(n))` -/
def P13398381851966987537.Spec : Prop :=
  ∀ n, P13398381851966987537.a n = A378100 n

end A378100

/-! ## A378100.P9695327600446193203

`A070895(∑[n])-A099020(A000096(n))`
-/

namespace A378100.P9695327600446193203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j) - A099020 (A000096 n).toNat

end

end A378100.P9695327600446193203

namespace A378100

/-- `A070895(∑[n])-A099020(A000096(n))` -/
def P9695327600446193203.Spec : Prop :=
  ∀ n, P9695327600446193203.a n = A378100 n

end A378100

/-! ## A378100.P16148064821138068605

`A099020(∑[n])-A099020(A000096(n))`
-/

namespace A378100.P16148064821138068605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - A099020 (A000096 n).toNat

end

end A378100.P16148064821138068605

namespace A378100

/-- `A099020(∑[n])-A099020(A000096(n))` -/
def P16148064821138068605.Spec : Prop :=
  ∀ n, P16148064821138068605.a n = A378100 n

end A378100

/-!
# A378103: Triangle read by rows: T(n,k) is the number of n-node connected unsensed planar maps with an external face and k triangular internal faces, n >= 3, 1 <= k <= 2*n - 5.

The programs for A378103, there is no canonical definition to state claims against.
-/

/-! ## A378103.P12244320088803904739

`(A378340(n+3)+A378336(n+3))/2`
-/

namespace A378103.P12244320088803904739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378340 (n + 3) + A378336 (n + 3) : ℚ) / 2

end

end A378103.P12244320088803904739

/-! ## A378103.P14165284990997462845

`A174221(A378340(n+3)+A378336(n+3))`
-/

namespace A378103.P14165284990997462845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A378340 (n + 3) + A378336 (n + 3)).toNat

end

end A378103.P14165284990997462845

/-! ## A378103.P13296912645587953222

`A003714(A378340(n+3)%A112709(n+4))`
-/

namespace A378103.P13296912645587953222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.tmod (A378340 (n + 3)) (A112709 (n + 4))).toNat

end

end A378103.P13296912645587953222

/-! ## A378103.P12598282735852704916

`A290455(A217955(n+2))`
-/

namespace A378103.P12598282735852704916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290455 (A217955 (n + 2)).toNat

end

end A378103.P12598282735852704916

/-! ## A378103.P10084926651229410770

`and(A075200(2*n+1), A287214(A291442(n+1)))`
-/

namespace A378103.P10084926651229410770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075200 (2 * n + 1)) (A287214 (A291442 (n + 1)).toNat)

end

end A378103.P10084926651229410770

/-!
# A378104: Positive integers that are digitally balanced in more than one integer base b >= 2.

The programs for A378104, there is no canonical definition to state claims against.
-/

/-! ## A378104.P4286356655850572816

`lt[1, A378191(n)]`
-/

namespace A378104.P4286356655850572816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378104.P4286356655850572816

/-! ## A378104.P12370524000605310373

`eq[A152765(n), A378191(n)]`
-/

namespace A378104.P12370524000605310373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P12370524000605310373

/-! ## A378104.P13854643506716374112

`eq[A020666(n+1), A378191(n)]`
-/

namespace A378104.P13854643506716374112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P13854643506716374112

/-! ## A378104.P14498430981128929744

`eq[A049605(n+1), A378191(n)]`
-/

namespace A378104.P14498430981128929744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P14498430981128929744

/-! ## A378104.P18072826381527618439

`eq[A063790(n+1), A378191(n)]`
-/

namespace A378104.P18072826381527618439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P18072826381527618439

/-! ## A378104.P13234064909146803561

`eq[A071187(n+1), A378191(n)]`
-/

namespace A378104.P13234064909146803561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P13234064909146803561

/-! ## A378104.P4147975776917032864

`eq[A071189(n+1), A378191(n)]`
-/

namespace A378104.P4147975776917032864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P4147975776917032864

/-! ## A378104.P6876539612571825256

`eq[A072751(n+1), A378191(n)]`
-/

namespace A378104.P6876539612571825256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P6876539612571825256

/-! ## A378104.P6233756183350051780

`eq[A072865(n+1), A378191(n)]`
-/

namespace A378104.P6233756183350051780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378104.P6233756183350051780

/-!
# A378105: Number of non-colorable strings of length n considered by the alternating coloring function.

The programs for A378105, the canonical program `A378105.P11993991642056072531` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378105 has offset 0).

The definition of A378105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378105.P5352594858785570356

`ogf((-1+3x^2+2x^4)/(-1+2x+x^2-2x^3))`
-/

namespace A378105.P5352594858785570356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 0, -2] [1, -2, -1, 2] n

end

end A378105.P5352594858785570356

namespace A378105

/-- `ogf((-1+3x^2+2x^4)/(-1+2x+x^2-2x^3))` -/
def P5352594858785570356.Spec : Prop :=
  ∀ n, P5352594858785570356.a n = A378105 n

end A378105

/-! ## A378105.P11993991642056072531

`a(n-1)+2*(a(n-2)-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A378105

/-- `a(n-1)+2*(a(n-2)-2)` -/
def P11993991642056072531.Spec : Prop :=
  ∀ n, P11993991642056072531.a n = A378105 n

theorem P11993991642056072531.correct : P11993991642056072531.Spec := by
  intro n
  simp only [A378105]

end A378105

/-! ## A378105.P16830174481151095414

`a(n-1)-2*(2-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A378105.P16830174481151095414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 1) - 2 * (2 - a (n - 2))

end

end A378105.P16830174481151095414

namespace A378105

/-- `a(n-1)-2*(2-a(n-2))` -/
def P16830174481151095414.Spec : Prop :=
  ∀ n, P16830174481151095414.a n = A378105 n

theorem P16830174481151095414.correct : P16830174481151095414.Spec := by
  intro n
  simp only [A378105, Nat.add_sub_cancel, A378105.P16830174481151095414.a, A378105.P11993991642056072531.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A378105

/-! ## A378105.P3654856047674320978

`a(n-1)+a(n-2)+a(n-2)-4` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A378105.P3654856047674320978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - 4))

end

end A378105.P3654856047674320978

namespace A378105

/-- `a(n-1)+a(n-2)+a(n-2)-4` -/
def P3654856047674320978.Spec : Prop :=
  ∀ n, P3654856047674320978.a n = A378105 n

theorem P3654856047674320978.correct : P3654856047674320978.Spec := by
  intro n
  simp only [A378105, Nat.add_sub_cancel, A378105.P3654856047674320978.a, A378105.P11993991642056072531.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A378105

/-! ## A378105.P9596216053701867562

`a(n-1)-(4-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A378105.P9596216053701867562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 1) - (4 - a (n - 2) - a (n - 2))

end

end A378105.P9596216053701867562

namespace A378105

/-- `a(n-1)-(4-a(n-2)-a(n-2))` -/
def P9596216053701867562.Spec : Prop :=
  ∀ n, P9596216053701867562.a n = A378105 n

theorem P9596216053701867562.correct : P9596216053701867562.Spec := by
  intro n
  simp only [A378105, Nat.add_sub_cancel, A378105.P9596216053701867562.a, A378105.P11993991642056072531.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A378105

/-! ## A378105.P13416035290937994908

`A128209(n)+A128209(n)-A090129(n+1)`
-/

namespace A378105.P13416035290937994908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + (A128209 n - A090129 (n + 1))

end

end A378105.P13416035290937994908

namespace A378105

/-- `A128209(n)+A128209(n)-A090129(n+1)` -/
def P13416035290937994908.Spec : Prop :=
  ∀ n, P13416035290937994908.a n = A378105 n

end A378105

/-! ## A378105.P679662997111339024

`A089985(n+1)-A084214(n)`
-/

namespace A378105.P679662997111339024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089985 (n + 1) - A084214 n

end

end A378105.P679662997111339024

namespace A378105

/-- `A089985(n+1)-A084214(n)` -/
def P679662997111339024.Spec : Prop :=
  ∀ n, P679662997111339024.a n = A378105 n

end A378105

/-! ## A378105.P7789134236358530459

`2*A128209(n)-A090129(n+1)`
-/

namespace A378105.P7789134236358530459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128209 n - A090129 (n + 1)

end

end A378105.P7789134236358530459

namespace A378105

/-- `2*A128209(n)-A090129(n+1)` -/
def P7789134236358530459.Spec : Prop :=
  ∀ n, P7789134236358530459.a n = A378105 n

end A378105

/-! ## A378105.P4908858543802240200

`A151794(n+1)-A369491(n)`
-/

namespace A378105.P4908858543802240200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151794 (n + 1) - A369491 n

end

end A378105.P4908858543802240200

namespace A378105

/-- `A151794(n+1)-A369491(n)` -/
def P4908858543802240200.Spec : Prop :=
  ∀ n, P4908858543802240200.a n = A378105 n

end A378105

/-!
# A378107: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, either a(n+1) is a multiple of a(n) or the decimal expansion of a(n+1) appears in that of a(n).

The programs for A378107, there is no canonical definition to state claims against.
-/

/-! ## A378107.P505008269881179617

`A003557(10*A128700(n+1))`
-/

namespace A378107.P505008269881179617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (10 * A128700 (n + 1)).toNat

end

end A378107.P505008269881179617

/-! ## A378107.P4517165056684738207

`filter[A331440(n+1), A103842(#)]`
-/

namespace A378107.P4517165056684738207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A378107.P4517165056684738207

/-! ## A378107.P13675049108618483191

`filter[A331440(n+1), A105470(#)]`
-/

namespace A378107.P13675049108618483191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105470 (f1 j).toNat = 1) n)

end

end A378107.P13675049108618483191

/-! ## A378107.P11189190203759944026

`filter[A331440(n+1), A289748(#)]`
-/

namespace A378107.P11189190203759944026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A378107.P11189190203759944026

/-! ## A378107.P5493091207325151114

`filter[A331440(n+1), A165728(#)]`
-/

namespace A378107.P5493091207325151114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165728 (f1 j).toNat = 1) n)

end

end A378107.P5493091207325151114

/-!
# A378108: Primes p such that neither p-1 nor p+1 are in A126706.

The programs for A378108, there is no canonical definition to state claims against.
-/

/-! ## A378108.P13889502154412040375

`A141453(A374760(n+1))`
-/

namespace A378108.P13889502154412040375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141453 (A374760 (n + 1)).toNat

end

end A378108.P13889502154412040375

/-! ## A378108.P4222904886282116218

`A141453(A186085(n)+n)`
-/

namespace A378108.P4222904886282116218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141453 (A186085 n + (n : ℤ)).toNat

end

end A378108.P4222904886282116218

/-! ## A378108.P4577491623470809184

`A141453(A072137(n)+A023893(n))`
-/

namespace A378108.P4577491623470809184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141453 (A072137 n + A023893 n).toNat

end

end A378108.P4577491623470809184

/-!
# A378111: a(n) is the least prime p such that there are exactly n squarefree numbers strictly between p and the next prime, or -1 if there is no such p.

The programs for A378111, there is no canonical definition to state claims against.
-/

/-! ## A378111.P4061567112720530600

`A368749(eq[A008289(n+5), A354668(3*n)])`
-/

namespace A378111.P4061567112720530600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354668 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378111.P4061567112720530600

/-! ## A378111.P10343436975728704245

`A122212(A191659(n+1))`
-/

namespace A378111.P10343436975728704245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122212 (A191659 (n + 1)).toNat

end

end A378111.P10343436975728704245

/-!
# A378112: Number A(n,k) of k-tuples (p_1, p_2, ..., p_k) of Dyck paths of semilength n, such that each p_i is never below p_{i-1} and the upper path p_k only touches the x-axis at its endpoints; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A378112, there is no canonical definition to state claims against.
-/

/-! ## A378112.P1867631982796706650

`A398106(n)+A185246(A011117(n))`
-/

namespace A378112.P1867631982796706650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398106 n + A185246 (A011117 n).toNat

end

end A378112.P1867631982796706650

/-! ## A378112.P10700423337728217975

`A005579(A264909(n)%A014886(n+1))`
-/

namespace A378112.P10700423337728217975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (Int.tmod (A264909 n) (A014886 (n + 1))).toNat

end

end A378112.P10700423337728217975

/-!
# A378113: Number of n-tuples (p_1, p_2, ..., p_n) of Dyck paths of semilength n, such that each p_i is never below p_{i-1} and the upper path p_n only touches the x-axis at its endpoints.

The programs for A378113, there is no canonical definition to state claims against.
-/

/-! ## A378113.P12156416816762699561

`A378112(∑[4*n])`
-/

namespace A378113.P12156416816762699561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378113.P12156416816762699561

/-!
# A378114: Number of 3-tuples (p_1, p_2, p_3) of Dyck paths of semilength n, such that each p_i is never below p_{i-1} and the upper path p_3 only touches the x-axis at its endpoints.

The programs for A378114, there is no canonical definition to state claims against.
-/

/-! ## A378114.P11773031210958825513

`A378112(A055998(n+2)-1)`
-/

namespace A378114.P11773031210958825513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378112 (A055998 (n + 2) - 1).toNat

end

end A378114.P11773031210958825513

/-! ## A378114.P3202099838415111002

`A378112(A000217(n+3)+n)`
-/

namespace A378114.P3202099838415111002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378112 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A378114.P3202099838415111002

/-! ## A378114.P15769730389654688893

`A378112(Δ[A006416(n+2)]-1)`
-/

namespace A378114.P15769730389654688893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378112 (f1 (n + 1) - f1 n - 1).toNat

end

end A378114.P15769730389654688893

/-!
# A378115: Numbers k such that (23^k + 2^k)/25 is prime.

The programs for A378115, there is no canonical definition to state claims against.
-/

/-! ## A378115.P9072814477427878364

`A210311(∑[A048250(n+1)])`
-/

namespace A378115.P9072814477427878364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378115.P9072814477427878364

/-!
# A378117: Lexicographically earliest sequence of nonnegative integers a(0), a(1), ..., such that a(n) is the number of pairs of adjacent terms whose sum is n.

The programs for A378117, there is no canonical definition to state claims against.
-/

/-! ## A378117.P9884084334062024528

`A332999(A287741(n))`
-/

namespace A378117.P9884084334062024528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332999 (A287741 n).toNat

end

end A378117.P9884084334062024528

/-! ## A378117.P5489832988189883876

`A272677(A286501(n))`
-/

namespace A378117.P5489832988189883876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A286501 n).toNat

end

end A378117.P5489832988189883876

/-! ## A378117.P15467158962438166929

`A272677(A287100(n))`
-/

namespace A378117.P15467158962438166929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A287100 n).toNat

end

end A378117.P15467158962438166929

/-! ## A378117.P5709535425088413588

`A272677(A287188(n))`
-/

namespace A378117.P5709535425088413588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A287188 n).toNat

end

end A378117.P5709535425088413588

/-! ## A378117.P18386202235617855548

`A097430(A175614(n+1))`
-/

namespace A378117.P18386202235617855548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A175614 (n + 1)).toNat

end

end A378117.P18386202235617855548

/-!
# A378118: a(n) is the multinomial coefficient given by the previous terms, i.e., a(n) = (a(1)+...+a(n-1))!/(a(1)!*...*a(n-1)!).

The programs for A378118, there is no canonical definition to state claims against.
-/

/-! ## A378118.P13541572989136995756

`A215216(n!)/2`
-/

namespace A378118.P13541572989136995756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215216 (Nat.factorial n) : ℚ) / 2

end

end A378118.P13541572989136995756

/-!
# A378120: a(n) = (A000217(n) + A005132(n))/2.

The programs for A378120, there is no canonical definition to state claims against.
-/

/-! ## A378120.P17120349762051318890

`A005132(n)+A377748(n)`
-/

namespace A378120.P17120349762051318890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n + A377748 n

end

end A378120.P17120349762051318890

/-! ## A378120.P7973096096727511412

`(A000217(n)+A005132(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378120.P7973096096727511412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n + A005132 n : ℚ) / 2

end

end A378120.P7973096096727511412

/-! ## A378120.P15491327790913438336

`∑[n*char[A057165(n+1)]]`
-/

namespace A378120.P15491327790913438336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378120.P15491327790913438336

/-! ## A378120.P10087011609689349296

`A000217(n)-A377748(n)`
-/

namespace A378120.P10087011609689349296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A377748 n

end

end A378120.P10087011609689349296

/-! ## A378120.P6917772605514473826

`A008795(2*n+1)-A377748(n)`
-/

namespace A378120.P6917772605514473826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * n + 1) - A377748 n

end

end A378120.P6917772605514473826

/-! ## A378120.P8410922041241280551

`A111074(2*n+1)-A377748(n)`
-/

namespace A378120.P8410922041241280551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111074 (2 * n + 1) - A377748 n

end

end A378120.P8410922041241280551

/-! ## A378120.P6202846027455469308

`A131174(2*n+1)-A377748(n)`
-/

namespace A378120.P6202846027455469308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131174 (2 * n + 1) - A377748 n

end

end A378120.P6202846027455469308

/-! ## A378120.P3776861409989397607

`A014682(A005132(n)+A000217(n))`
-/

namespace A378120.P3776861409989397607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005132 n + A000217 n).toNat

end

end A378120.P3776861409989397607

/-! ## A378120.P1633618646827253340

`A026741(A005132(n)+A000217(n))`
-/

namespace A378120.P1633618646827253340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A005132 n + A000217 n).toNat

end

end A378120.P1633618646827253340

/-! ## A378120.P12815565704230550035

`A001281(A005132(n)+A000217(n))`
-/

namespace A378120.P12815565704230550035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005132 n + A000217 n).toNat

end

end A378120.P12815565704230550035

/-! ## A378120.P1001775797440482673

`A004526(A005132(n)+A000217(n))`
-/

namespace A378120.P1001775797440482673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005132 n + A000217 n).toNat

end

end A378120.P1001775797440482673

/-!
# A378122: a(n) = number of prime divisors of the sum of the first n primes.

The programs for A378122, there is no canonical definition to state claims against.
-/

/-! ## A378122.P14658181220218723386

`∑{e}[∏{p}[A007504(n+1), #], #]`
-/

namespace A378122.P14658181220218723386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A378122.P14658181220218723386

/-! ## A378122.P8725335106493222267

`∑{e}[∏{p}[∑[A000040(n+1)], #], #]`
-/

namespace A378122.P8725335106493222267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A378122.P8725335106493222267

/-! ## A378122.P3109777231145006780

`floor(∑{p}[A237589(n+1)+1, root(γ, #)])+1`
-/

namespace A378122.P3109777231145006780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ + 1

end

end A378122.P3109777231145006780

/-! ## A378122.P12321528483870084242

`A001221(A007504(n+1))`
-/

namespace A378122.P12321528483870084242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007504 (n + 1)).toNat

end

end A378122.P12321528483870084242

/-! ## A378122.P10361598381220116246

`A001221(∑[record[A051698(n)]])`
-/

namespace A378122.P10361598381220116246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378122.P10361598381220116246

/-! ## A378122.P17145914396683966811

`A001221(∑[comp[A103164(n)]])`
-/

namespace A378122.P17145914396683966811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378122.P17145914396683966811

/-! ## A378122.P10471327404249991218

`A001221(∑[comp[A282462(n)]])`
-/

namespace A378122.P10471327404249991218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378122.P10471327404249991218

/-! ## A378122.P12441732090907072019

`A001221(∑[A000040(n+1)])`
-/

namespace A378122.P12441732090907072019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378122.P12441732090907072019

/-! ## A378122.P5293306381207429401

`A001221(∑[A008578(n+2)])`
-/

namespace A378122.P5293306381207429401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378122.P5293306381207429401

/-! ## A378122.P1924550208697400477

`A001221(A237589(n+1)+1)`
-/

namespace A378122.P1924550208697400477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237589 (n + 1) + 1).toNat

end

end A378122.P1924550208697400477

/-!
# A378123: a(n) = number of prime divisors of the sum of the first n odd primes.

The programs for A378123, the canonical program `A378123.P719144829619954669` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378123 has offset 1).

The definition of A378123 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378123.P719144829619954669

`A001221(A071148(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378123

/-- `A001221(A071148(n+1))` -/
def P719144829619954669.Spec : Prop :=
  ∀ n, P719144829619954669.a n = A378123 (n + 1)

theorem P719144829619954669.correct : P719144829619954669.Spec := by
  intro n
  simp only [A378123, Nat.add_sub_cancel]

end A378123

/-! ## A378123.P2638914175828168044

`∑{e}[∏{p}[∑[A000040(n+2)], #], #]`
-/

namespace A378123.P2638914175828168044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A378123.P2638914175828168044

namespace A378123

/-- `∑{e}[∏{p}[∑[A000040(n+2)], #], #]` -/
def P2638914175828168044.Spec : Prop :=
  ∀ n, (P2638914175828168044.a n : ℤ) = A378123 (n + 1)

end A378123

/-! ## A378123.P12631190190217057297

`∑{e}[A071148(n+1), A046042(#)]`
-/

namespace A378123.P12631190190217057297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046042 (Nat.factorization (f1 n).natAbs p)

end

end A378123.P12631190190217057297

namespace A378123

/-- `∑{e}[A071148(n+1), A046042(#)]` -/
def P12631190190217057297.Spec : Prop :=
  ∀ n, P12631190190217057297.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P16068351995933915548

`∑{e}[A071148(n+1), A055642(#)]`
-/

namespace A378123.P16068351995933915548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055642 (Nat.factorization (f1 n).natAbs p)

end

end A378123.P16068351995933915548

namespace A378123

/-- `∑{e}[A071148(n+1), A055642(#)]` -/
def P16068351995933915548.Spec : Prop :=
  ∀ n, P16068351995933915548.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P8893116237219432931

`∑{e}[A071148(n+1), A330461(#)]`
-/

namespace A378123.P8893116237219432931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A330461 (Nat.factorization (f1 n).natAbs p)

end

end A378123.P8893116237219432931

namespace A378123

/-- `∑{e}[A071148(n+1), A330461(#)]` -/
def P8893116237219432931.Spec : Prop :=
  ∀ n, P8893116237219432931.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P11703294817780567445

`A056239(∏{p}[∑[A008578(n+3)], 2%#²])`
-/

namespace A378123.P11703294817780567445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 % p ^ 2)

end

end A378123.P11703294817780567445

namespace A378123

/-- `A056239(∏{p}[∑[A008578(n+3)], 2%#²])` -/
def P11703294817780567445.Spec : Prop :=
  ∀ n, P11703294817780567445.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P5542192167498917817

`A001221(∑[p?[2*n+1]])`
-/

namespace A378123.P5542192167498917817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378123.P5542192167498917817

namespace A378123

/-- `A001221(∑[p?[2*n+1]])` -/
def P5542192167498917817.Spec : Prop :=
  ∀ n, P5542192167498917817.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P13917513873536441077

`A001221(∑[A065091(n+1)])`
-/

namespace A378123.P13917513873536441077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378123.P13917513873536441077

namespace A378123

/-- `A001221(∑[A065091(n+1)])` -/
def P13917513873536441077.Spec : Prop :=
  ∀ n, P13917513873536441077.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P15170728517746722494

`A001221(∑[A000040(n+2)])`
-/

namespace A378123.P15170728517746722494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378123.P15170728517746722494

namespace A378123

/-- `A001221(∑[A000040(n+2)])` -/
def P15170728517746722494.Spec : Prop :=
  ∀ n, P15170728517746722494.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P15286888082968724849

`A001221(∑[A008578(n+3)])`
-/

namespace A378123.P15286888082968724849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378123.P15286888082968724849

namespace A378123

/-- `A001221(∑[A008578(n+3)])` -/
def P15286888082968724849.Spec : Prop :=
  ∀ n, P15286888082968724849.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P5774972436789557136

`A001221(A237589(n+2)-1)`
-/

namespace A378123.P5774972436789557136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A237589 (n + 2) - 1).toNat

end

end A378123.P5774972436789557136

namespace A378123

/-- `A001221(A237589(n+2)-1)` -/
def P5774972436789557136.Spec : Prop :=
  ∀ n, P5774972436789557136.a n = A378123 (n + 1)

theorem P5774972436789557136.correct : P5774972436789557136.Spec := by
  intro n
  simp only [A378123, Nat.add_sub_cancel, A378123.P5774972436789557136.a, A378123.P719144829619954669.a, A001221, A001221.P10258181745752134128.a, A071148, A071148.P13630786703162267389.a, A237589, A237589.P15064465826932885110.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A059841, A059841.P7264174615531153985.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378123

/-! ## A378123.P13055781827137597618

`A001221(A007504(n+2)-2)`
-/

namespace A378123.P13055781827137597618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007504 (n + 2) - 2).toNat

end

end A378123.P13055781827137597618

namespace A378123

/-- `A001221(A007504(n+2)-2)` -/
def P13055781827137597618.Spec : Prop :=
  ∀ n, P13055781827137597618.a n = A378123 (n + 1)

end A378123

/-! ## A378123.P14802736552733156352

`A001221(A101301(n+2)+n)`
-/

namespace A378123.P14802736552733156352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101301 (n + 2) + (n : ℤ)).toNat

end

end A378123.P14802736552733156352

namespace A378123

/-- `A001221(A101301(n+2)+n)` -/
def P14802736552733156352.Spec : Prop :=
  ∀ n, P14802736552733156352.a n = A378123 (n + 1)

theorem P14802736552733156352.correct : P14802736552733156352.Spec := by
  intro n
  simp only [A378123, Nat.add_sub_cancel, A378123.P14802736552733156352.a, A378123.P719144829619954669.a, A001221, A001221.P10258181745752134128.a, A071148, A071148.P13630786703162267389.a, A101301, A101301.P12618163721935666644.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007504, A007504.P14310834286015847203.a, A059841, A059841.P7264174615531153985.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378123

/-! ## A378123.P17709185672056059851

`A001221(∑[sqrt(A001248(n+2))])`
-/

namespace A378123.P17709185672056059851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378123.P17709185672056059851

namespace A378123

/-- `A001221(∑[sqrt(A001248(n+2))])` -/
def P17709185672056059851.Spec : Prop :=
  ∀ n, P17709185672056059851.a n = A378123 (n + 1)

end A378123

/-!
# A378126: Array read by antidiagonals: T(n, m) is the maximal size of partitions of (n, m) into sums of distinct pairs of nonnegative integers, excluding (0, 0).

The programs for A378126, there is no canonical definition to state claims against.
-/

/-! ## A378126.P8428959309371643155

`A086435(A036561(n))`
-/

namespace A378126.P8428959309371643155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A036561 n).toNat

end

end A378126.P8428959309371643155

/-! ## A378126.P9298758889532970913

`A086435(A082234(n+1))`
-/

namespace A378126.P9298758889532970913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A082234 (n + 1)).toNat

end

end A378126.P9298758889532970913

/-! ## A378126.P1726381481802928181

`A086435(A094617(n+1)-1)`
-/

namespace A378126.P1726381481802928181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A094617 (n + 1) - 1).toNat

end

end A378126.P1726381481802928181

/-! ## A378126.P33664577091843889

`A086435(A175840(n))`
-/

namespace A378126.P33664577091843889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A175840 n).toNat

end

end A378126.P33664577091843889

/-! ## A378126.P11791182308583977648

`A029837(A143976(n+1))%A065927(n+1)`
-/

namespace A378126.P11791182308583977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029837 (A143976 (n + 1)).toNat) (A065927 (n + 1))

end

end A378126.P11791182308583977648

/-!
# A378133: Irregular triangle T(n,k) = P(n)*2^k, n >= 0, k = 0..floor(log_2 prime(k+1)), where P = A002110.

The programs for A378133, there is no canonical definition to state claims against.
-/

/-! ## A378133.P8195777686369782578

`∩[A060735(n+1), A070175(n)]`
-/

namespace A378133.P8195777686369782578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378133.P8195777686369782578

/-! ## A378133.P12917169984253458592

`∩[A070175(n), A288784(n)]`
-/

namespace A378133.P12917169984253458592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378133.P12917169984253458592

/-! ## A378133.P9795372983773403582

`∩[A244052(n+1), A070175(n)]`
-/

namespace A378133.P9795372983773403582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378133.P9795372983773403582

/-! ## A378133.P6828644798426964473

`∩[A392612(n+1), A070175(n)]`
-/

namespace A378133.P6828644798426964473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378133.P6828644798426964473

/-! ## A378133.P6659337473162274654

`∩[A070175(n), A392613(n+1)]`
-/

namespace A378133.P6659337473162274654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378133.P6659337473162274654

/-!
# A378134: a(n) is the smallest prime p such that (2*p)^(2^n) + 1 is also prime.

The programs for A378134, there is no canonical definition to state claims against.
-/

/-! ## A378134.P11141361572557182637

`A173829(a(n-1))` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A378134.P11141361572557182637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n a =>
  A173829 (a (n - 1)).toNat

end

end A378134.P11141361572557182637

/-! ## A378134.P1162719781642059355

`A100759(A121652(n))`
-/

namespace A378134.P1162719781642059355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100759 (A121652 n).toNat

end

end A378134.P1162719781642059355

/-!
# A378135: a(n) = p(n*p(n)), where p(x) = least prime > x.

The programs for A378135, the canonical program `A378135.P14945920561631951396` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378135 has offset 0).

The definition of A378135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378135.P14945920561631951396

`A151800(n*A151800(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378135

/-- `A151800(n*A151800(n))` -/
def P14945920561631951396.Spec : Prop :=
  ∀ n, P14945920561631951396.a n = A378135 n

theorem P14945920561631951396.correct : P14945920561631951396.Spec := by
  intro n
  simp only [A378135]

end A378135

/-! ## A378135.P5511281670792094544

`A151800(A013636(n))`
-/

namespace A378135.P5511281670792094544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A013636 n).toNat

end

end A378135.P5511281670792094544

namespace A378135

/-- `A151800(A013636(n))` -/
def P5511281670792094544.Spec : Prop :=
  ∀ n, P5511281670792094544.a n = A378135 n

end A378135

/-! ## A378135.P16690480873039062583

`A151800(lcm(n, A151800(n)))`
-/

namespace A378135.P16690480873039062583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm (n : ℤ) (A151800 n))

end

end A378135.P16690480873039062583

namespace A378135

/-- `A151800(lcm(n, A151800(n)))` -/
def P16690480873039062583.Spec : Prop :=
  ∀ n, P16690480873039062583.a n = A378135 n

end A378135

/-! ## A378135.P15080452950000293250

`A151800(A053024(n+1)-A151800(n))`
-/

namespace A378135.P15080452950000293250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A053024 (n + 1) - A151800 n).toNat

end

end A378135.P15080452950000293250

namespace A378135

/-- `A151800(A053024(n+1)-A151800(n))` -/
def P15080452950000293250.Spec : Prop :=
  ∀ n, P15080452950000293250.a n = A378135 n

end A378135

/-! ## A378135.P3948684363754607563

`A007918(A013636(n)+1)`
-/

namespace A378135.P3948684363754607563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A013636 n + 1).toNat

end

end A378135.P3948684363754607563

namespace A378135

/-- `A007918(A013636(n)+1)` -/
def P3948684363754607563.Spec : Prop :=
  ∀ n, P3948684363754607563.a n = A378135 n

end A378135

/-! ## A378135.P10527826213189168907

`A007918(n*A070801(A007918(n+1)))`
-/

namespace A378135.P10527826213189168907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n : ℤ) * A070801 (A007918 (n + 1)).toNat).toNat

end

end A378135.P10527826213189168907

namespace A378135

/-- `A007918(n*A070801(A007918(n+1)))` -/
def P10527826213189168907.Spec : Prop :=
  ∀ n, P10527826213189168907.a n = A378135 n

end A378135

/-!
# A378136: a(n) = p(2*n*p(n)), where p(x) = least prime > x.

The programs for A378136, there is no canonical definition to state claims against.
-/

/-! ## A378136.P17821889114210623575

`A060264(A013636(n))`
-/

namespace A378136.P17821889114210623575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A013636 n).toNat

end

end A378136.P17821889114210623575

/-! ## A378136.P3164073278657056957

`A007918(2*A013636(n))`
-/

namespace A378136.P3164073278657056957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A013636 n).toNat

end

end A378136.P3164073278657056957

/-! ## A378136.P11098632608504103306

`A151800(2*A013636(n))`
-/

namespace A378136.P11098632608504103306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * A013636 n).toNat

end

end A378136.P11098632608504103306

/-! ## A378136.P8846583336549594106

`A060264(n*A151800(n))`
-/

namespace A378136.P8846583336549594106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 ((n : ℤ) * A151800 n).toNat

end

end A378136.P8846583336549594106

/-! ## A378136.P13590925135114260704

`A060264(lcm(n, A151800(n)))`
-/

namespace A378136.P13590925135114260704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (Int.lcm (n : ℤ) (A151800 n))

end

end A378136.P13590925135114260704

/-!
# A378137: a(n) = p(n^2*p(n)), where p(x) is the least prime > x.

The programs for A378137, the canonical program `A378137.P1083240671086047846` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378137 has offset 0).

The definition of A378137 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378137.P1083240671086047846

`A151800(n²*A151800(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378137

/-- `A151800(n²*A151800(n))` -/
def P1083240671086047846.Spec : Prop :=
  ∀ n, P1083240671086047846.a n = A378137 n

theorem P1083240671086047846.correct : P1083240671086047846.Spec := by
  intro n
  simp only [A378137]

end A378137

/-! ## A378137.P3138597980439009018

`A151800(n*A013636(n))`
-/

namespace A378137.P3138597980439009018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * A013636 n).toNat

end

end A378137.P3138597980439009018

namespace A378137

/-- `A151800(n*A013636(n))` -/
def P3138597980439009018.Spec : Prop :=
  ∀ n, P3138597980439009018.a n = A378137 n

end A378137

/-! ## A378137.P17916555097262213570

`A151800(lcm(n², A151800(n)))`
-/

namespace A378137.P17916555097262213570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm (n ^ 2 : ℤ) (A151800 n))

end

end A378137.P17916555097262213570

namespace A378137

/-- `A151800(lcm(n², A151800(n)))` -/
def P17916555097262213570.Spec : Prop :=
  ∀ n, P17916555097262213570.a n = A378137 n

end A378137

/-! ## A378137.P49996483800851799

`A151800(n*n*A151800(n))`
-/

namespace A378137.P49996483800851799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * ((n : ℤ) * A151800 n)).toNat

end

end A378137.P49996483800851799

namespace A378137

/-- `A151800(n*n*A151800(n))` -/
def P49996483800851799.Spec : Prop :=
  ∀ n, P49996483800851799.a n = A378137 n

theorem P49996483800851799.correct : P49996483800851799.Spec := by
  intro n
  simp only [A378137, Nat.add_sub_cancel, A378137.P49996483800851799.a, A378137.P1083240671086047846.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A378137

/-!
# A378138: The distinct values, in order of appearance, of A381087.

The programs for A378138, there is no canonical definition to state claims against.
-/

/-! ## A378138.P8274184918600560699

`A381087(eq[A381087(n), A381183(n)])`
-/

namespace A378138.P8274184918600560699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381087 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378138.P8274184918600560699

/-! ## A378138.P7104814349175773556

`filter[A381183(n), A117904(#)]`
-/

namespace A378138.P7104814349175773556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117904 (f1 j).toNat = 1) n)

end

end A378138.P7104814349175773556

/-! ## A378138.P2032835170266543864

`A381087(lt[floor(n/2)*A362824(3*n+4), 5])`
-/

namespace A378138.P2032835170266543864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A362824 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381087 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A378138.P2032835170266543864

/-!
# A378142: a(n) = n + floor(n*s/r) + floor(n*t/r), where r=2^(1/4), s=2^(1/2), t=2^(3/4).

The programs for A378142, there is no canonical definition to state claims against.
-/

/-! ## A378142.P3973584629768318902

`A373216(A029859(n))+A286486(2*n+1)`
-/

namespace A378142.P3973584629768318902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373216 (A029859 n).toNat + A286486 (2 * n + 1)

end

end A378142.P3973584629768318902

/-! ## A378142.P2549794944869731321

`A093700(A314840(n+1))`
-/

namespace A378142.P2549794944869731321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093700 (A314840 (n + 1)).toNat

end

end A378142.P2549794944869731321

/-! ## A378142.P1296651657030663438

`A328578(A288980(n))+A286402(2*n+1)`
-/

namespace A378142.P1296651657030663438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A288980 n).toNat + A286402 (2 * n + 1)

end

end A378142.P1296651657030663438

/-!
# A378144: a(n) = P(n) * 2^floor(log_2(prime(n+1))) = A002110(n) * A000079(A098388(n+1)).

The programs for A378144, there is no canonical definition to state claims against.
-/

/-! ## A378144.P6331783120480777622

`A378133(A328659(n+1)-2)`
-/

namespace A378144.P6331783120480777622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 (A328659 (n + 1) - 2).toNat

end

end A378144.P6331783120480777622

/-! ## A378144.P10533797149943949540

`A002110(n)*A053644(A006093(n+1))`
-/

namespace A378144.P10533797149943949540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A053644 (A006093 (n + 1)).toNat

end

end A378144.P10533797149943949540

/-! ## A378144.P2744482429378127936

`A002110(n)*A053644(A065514(n+1))`
-/

namespace A378144.P2744482429378127936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A053644 (A065514 (n + 1)).toNat

end

end A378144.P2744482429378127936

/-! ## A378144.P15272102417920936621

`record[A083720(n+1)]*A053644(A065514(n+1))`
-/

namespace A378144.P15272102417920936621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A053644 (A065514 (n + 1)).toNat

end

end A378144.P15272102417920936621

/-! ## A378144.P2190836014238517276

`A053644(A065514(n+1))*A276943(∑[n+1])`
-/

namespace A378144.P2190836014238517276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A065514 (n + 1)).toNat * A276943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378144.P2190836014238517276

/-!
# A378145: Riordan triangle (1 + x * C(x), x * C(x)), where C(x) is g.f. of A000108.

The programs for A378145, the canonical program `A378145.P15300547793781424143` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378145 has offset 0).

The definition of A378145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378145.P15300547793781424143

`A106566(n+1)+A106566(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378145

/-- `A106566(n+1)+A106566(n)` -/
def P15300547793781424143.Spec : Prop :=
  ∀ n, P15300547793781424143.a n = A378145 n

theorem P15300547793781424143.correct : P15300547793781424143.Spec := by
  intro n
  simp only [A378145]

end A378145

/-! ## A378145.P4853999867205966433

`abs(Δ[A097807(n)*A106566(n)])`
-/

namespace A378145.P4853999867205966433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A106566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A378145.P4853999867205966433

namespace A378145

/-- `abs(Δ[A097807(n)*A106566(n)])` -/
def P4853999867205966433.Spec : Prop :=
  ∀ n, P4853999867205966433.a n = A378145 n

end A378145

/-! ## A378145.P9812112195886552735

`abs(Δ[A099039(n)])`
-/

namespace A378145.P9812112195886552735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A378145.P9812112195886552735

namespace A378145

/-- `abs(Δ[A099039(n)])` -/
def P9812112195886552735.Spec : Prop :=
  ∀ n, P9812112195886552735.a n = A378145 n

end A378145

/-! ## A378145.P4078345613546753739

`abs(A099039(n+1)-A099039(n))`
-/

namespace A378145.P4078345613546753739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099039 (n + 1) - A099039 n|

end

end A378145.P4078345613546753739

namespace A378145

/-- `abs(A099039(n+1)-A099039(n))` -/
def P4078345613546753739.Spec : Prop :=
  ∀ n, P4078345613546753739.a n = A378145 n

end A378145

/-!
# A378146: Primes p such that 16*p^4 + 1 is prime.

The programs for A378146, there is no canonical definition to state claims against.
-/

/-! ## A378146.P11918058635038226406

`p?[A385243(n)]`
-/

namespace A378146.P11918058635038226406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A378146.P11918058635038226406

/-! ## A378146.P13188010463954864569

`A385243(n+2)`
-/

namespace A378146.P13188010463954864569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 (n + 2)

end

end A378146.P13188010463954864569

/-! ## A378146.P2714060104030087614

`p?[A000059(n+1)]`
-/

namespace A378146.P2714060104030087614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A378146.P2714060104030087614

/-! ## A378146.P14540352722004689963

`filter[A385243(n), A014306(#)]`
-/

namespace A378146.P14540352722004689963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A378146.P14540352722004689963

/-! ## A378146.P16994698849504824120

`filter[A385243(n), A165560(#)]`
-/

namespace A378146.P16994698849504824120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A378146.P16994698849504824120

/-! ## A378146.P10673979846300626754

`filter[A385243(n), A257000(#)]`
-/

namespace A378146.P10673979846300626754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A378146.P10673979846300626754

/-! ## A378146.P3872513233364946142

`filter[A385243(n), A354874(#)]`
-/

namespace A378146.P3872513233364946142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A378146.P3872513233364946142

/-! ## A378146.P12717029046079318188

`filter[A385243(n), A358220(#)]`
-/

namespace A378146.P12717029046079318188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A378146.P12717029046079318188

/-! ## A378146.P18048072271249448307

`filter[A385243(n), A358771(#)]`
-/

namespace A378146.P18048072271249448307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A378146.P18048072271249448307

/-!
# A378148: a(n) is the number of distinct trapezoids having integer sides and height with exactly one pair of parallel sides and area n.

The programs for A378148, there is no canonical definition to state claims against.
-/

/-! ## A378148.P2746826470307834272

`and(A025903(A000009(n)), A074000(n+1))`
-/

namespace A378148.P2746826470307834272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025903 (A000009 n).toNat) (A074000 (n + 1))

end

end A378148.P2746826470307834272

/-! ## A378148.P14062040179193141212

`A197431(n+3)%A055642(A133406(n+1))`
-/

namespace A378148.P14062040179193141212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197431 (n + 3)) (A055642 (A133406 (n + 1)).toNat)

end

end A378148.P14062040179193141212

/-! ## A378148.P1139800947892744505

`A286351(A236937(n+1))`
-/

namespace A378148.P1139800947892744505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286351 (A236937 (n + 1)).toNat

end

end A378148.P1139800947892744505

/-!
# A378149: a(n) is the number of distinct integer-sided right trapezoids with exactly one pair of parallel sides and area n.

The programs for A378149, there is no canonical definition to state claims against.
-/

/-! ## A378149.P4471675502380474282

`A378150(lt[A374249(n+1), A340859(2*n+3)])`
-/

namespace A378149.P4471675502380474282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340859 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378149.P4471675502380474282

/-! ## A378149.P1437530799106128365

`A079726(A033816(3*n))%A088570(n+1)`
-/

namespace A378149.P1437530799106128365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079726 (A033816 (3 * n)).toNat) (A088570 (n + 1))

end

end A378149.P1437530799106128365

/-! ## A378149.P5522869575749165755

`A000045(A347446(2*(n+1))%A153452(n+1))`
-/

namespace A378149.P5522869575749165755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A347446 (2 * (n + 1))) (A153452 (n + 1))).toNat

end

end A378149.P5522869575749165755

/-! ## A378149.P2430064944858099644

`A302242(A134914((n+1)^(∑{e}[n+1, #]-1)))`
-/

namespace A378149.P2430064944858099644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A134914 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ))).toNat).toNat

end

end A378149.P2430064944858099644

/-! ## A378149.P12330217666702789274

`A301829(A273013(n+1))%A300752(n+1)`
-/

namespace A378149.P12330217666702789274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301829 (A273013 (n + 1)).toNat) (A300752 (n + 1))

end

end A378149.P12330217666702789274

/-!
# A378150: a(n) is the number of distinct integer-sided isosceles trapezoids with exactly one pair of parallel sides and area n.

The programs for A378150, there is no canonical definition to state claims against.
-/

/-! ## A378150.P2261811500149904958

`and(A300098(n+1), A337976(n+1))`
-/

namespace A378150.P2261811500149904958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300098 (n + 1)) (A337976 (n + 1))

end

end A378150.P2261811500149904958

/-! ## A378150.P12600744932618077703

`and(A117817(A270037(n+3)), A337976(n+1))`
-/

namespace A378150.P12600744932618077703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117817 (A270037 (n + 3)).toNat) (A337976 (n + 1))

end

end A378150.P12600744932618077703

/-! ## A378150.P10053373741258809323

`and(A334352(n+1), A337976(n+1))`
-/

namespace A378150.P10053373741258809323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A334352 (n + 1)) (A337976 (n + 1))

end

end A378150.P10053373741258809323

/-! ## A378150.P11819588352679003001

`and(A241025(n+1), A337976(n+1))`
-/

namespace A378150.P11819588352679003001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A241025 (n + 1)) (A337976 (n + 1))

end

end A378150.P11819588352679003001

/-! ## A378150.P7831940397578802884

`A375210(n+1)%A217467(n+1)`
-/

namespace A378150.P7831940397578802884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375210 (n + 1)) (A217467 (n + 1))

end

end A378150.P7831940397578802884

/-!
# A378154: Array read by rows: T(n,k) for k <= min(n,10) is the number of digital types of length n with exactly k distinct decimal digits without common prime factors of a different digital type.

The programs for A378154, there is no canonical definition to state claims against.
-/

/-! ## A378154.P7671392516227342886

`xor(A091225(A262466(n+1)), A130191(n))`
-/

namespace A378154.P7671392516227342886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091225 (A262466 (n + 1)).toNat) (A130191 n)

end

end A378154.P7671392516227342886

/-!
# A378155: G.f. A(x) satisfies A(x) = ( 1 + x * A(x)^(2/3) * (1 + A(x)^(2/3)) )^3.

The programs for A378155, there is no canonical definition to state claims against.
-/

/-! ## A378155.P12844229180545713776

`A378239(∑[n+4]+2)`
-/

namespace A378155.P12844229180545713776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378239 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A378155.P12844229180545713776

/-!
# A378156: G.f. A(x) satisfies A(x) = ( 1 + x * A(x)^(1/2) * (1 + A(x)^(1/2)) )^4.

The programs for A378156, there is no canonical definition to state claims against.
-/

/-! ## A378156.P7946647653757256871

`A219534(n+1)-A371693(n)`
-/

namespace A378156.P7946647653757256871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219534 (n + 1) - A371693 n

end

end A378156.P7946647653757256871

/-! ## A378156.P345427315676101315

`A378239(A000217(n+4)+n)`
-/

namespace A378156.P345427315676101315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378239 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A378156.P345427315676101315

/-!
# A378157: The least prime dividing !n = A000166(n).

The programs for A378157, there is no canonical definition to state claims against.
-/

/-! ## A378157.P7890047053631228695

`A020639((A008434(n+2)+1)*(n+2))`
-/

namespace A378157.P7890047053631228695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A008434 (n + 2) + 1) * (n + 2 : ℤ)).toNat

end

end A378157.P7890047053631228695

/-! ## A378157.P14247459294569947469

`A020639(A250662(3*n+1)*A289439(2*(n+2)))`
-/

namespace A378157.P14247459294569947469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250662 (3 * n + 1) * A289439 (2 * (n + 2))).toNat

end

end A378157.P14247459294569947469

/-! ## A378157.P4455676171460889456

`A020639(A144129(n+2))`
-/

namespace A378157.P4455676171460889456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A144129 (n + 2)).toNat

end

end A378157.P4455676171460889456

/-! ## A378157.P15487712223278861954

`A020639(A058794(2*(n+1))/2)`
-/

namespace A378157.P15487712223278861954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A058794 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A378157.P15487712223278861954

/-! ## A378157.P487745919542691156

`A020639(∑[A195143(2*n+3)]+1)`
-/

namespace A378157.P487745919542691156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A378157.P487745919542691156

/-!
# A378160: The number of distinct prime factors of !n = A000166(n).

The programs for A378160, there is no canonical definition to state claims against.
-/

/-! ## A378160.P17128920745669290045

`A333870((A003963(n+1)+∑[-(n/or(n, -2))])²)`
-/

namespace A378160.P17128920745669290045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (SequenceMachineLib.roundAway (((A003963 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A378160.P17128920745669290045

/-! ## A378160.P789297122907518700

`A251140(A099145(n+2))`
-/

namespace A378160.P789297122907518700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (A099145 (n + 2)).toNat

end

end A378160.P789297122907518700

/-! ## A378160.P2482602419662384472

`A069010(n²*A325858(n))`
-/

namespace A378160.P2482602419662384472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n ^ 2 : ℤ) * A325858 n).toNat

end

end A378160.P2482602419662384472

/-! ## A378160.P3119972509781084879

`A001221(A007380(n+1)*A027053(n+2))`
-/

namespace A378160.P3119972509781084879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007380 (n + 1) * A027053 (n + 2)).toNat

end

end A378160.P3119972509781084879

/-! ## A378160.P4928154235027802619

`A143731(A056877(2*(n+2)))+A000120(n)`
-/

namespace A378160.P4928154235027802619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (A056877 (2 * (n + 2))).toNat + A000120 n

end

end A378160.P4928154235027802619

/-!
# A378162: Number k such that !k = A000166(k) is squarefree.

The programs for A378162, there is no canonical definition to state claims against.
-/

/-! ## A378162.P5079459111458233984

`eq[A036581(A035928(2*n+3)), A036581(n)]`
-/

namespace A378162.P5079459111458233984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A035928 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378162.P5079459111458233984

/-! ## A378162.P16758300138370258071

`eq[A005773(A299203(3*n+1)), A122497(n+1)]`
-/

namespace A378162.P16758300138370258071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (A299203 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378162.P16758300138370258071

/-! ## A378162.P9609315986387102643

`lt[A059448(n+1), A035263(A020338(3*(n+1)))]`
-/

namespace A378162.P9609315986387102643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A020338 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378162.P9609315986387102643

/-! ## A378162.P13001192390865587093

`eq[A036577(A039936(n+1)), A036580(n)]`
-/

namespace A378162.P13001192390865587093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A039936 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378162.P13001192390865587093

/-! ## A378162.P7645930499393409044

`lt[A357645(A099773(n)), A004718(n+1)]`
-/

namespace A378162.P7645930499393409044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357645 (A099773 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378162.P7645930499393409044

/-!
# A378168: a(n) is the number of squares <= 10^n that are not higher powers, i.e., terms of A076467.

The programs for A378168, there is no canonical definition to state claims against.
-/

/-! ## A378168.P18195033503168795921

`A070428(n+1)-A377934(n+1)`
-/

namespace A378168.P18195033503168795921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070428 (n + 1) - A377934 (n + 1)

end

end A378168.P18195033503168795921

/-! ## A378168.P16935332066793533316

`A049416(n+1)-A076411(A049416(n+1))`
-/

namespace A378168.P16935332066793533316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) - A076411 (A049416 (n + 1)).toNat

end

end A378168.P16935332066793533316

/-!
# A378170: Number of subsets of the first n nonzero tetrahedral numbers whose sum is a nonzero tetrahedral number.

The programs for A378170, there is no canonical definition to state claims against.
-/

/-! ## A378170.P2887603865936516317

`record[A046800(A061287(n))+1]`
-/

namespace A378170.P2887603865936516317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A061287 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378170.P2887603865936516317

/-! ## A378170.P15080357816225805186

`eq[A025430(n), A355688(n+1)]`
-/

namespace A378170.P15080357816225805186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378170.P15080357816225805186

/-! ## A378170.P11382446748873919846

`record[A039913(A355880(n+1)+1)]`
-/

namespace A378170.P11382446748873919846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A355880 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378170.P11382446748873919846

/-! ## A378170.P7739592732311820229

`A135661(A032353(2*n+3)+5)`
-/

namespace A378170.P7739592732311820229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A032353 (2 * n + 3) + 5).toNat

end

end A378170.P7739592732311820229

/-! ## A378170.P1536561574755383921

`A005117(n+1)+A003056(A241467(n+1))`
-/

namespace A378170.P1536561574755383921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A003056 (A241467 (n + 1)).toNat

end

end A378170.P1536561574755383921

/-!
# A378171: Number of subsets of the first n positive cubes whose sum is a positive cube.

The programs for A378171, there is no canonical definition to state claims against.
-/

/-! ## A378171.P5374556277673898838

`∑[A339615(n+1)]`
-/

namespace A378171.P5374556277673898838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378171.P5374556277673898838

/-! ## A378171.P5962842818639828328

`lt[A000041(n), A245705(2*n+1)]`
-/

namespace A378171.P5962842818639828328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378171.P5962842818639828328

/-! ## A378171.P2342585323353389051

`lt[A343342(n), A336840(A309010(n+1))]`
-/

namespace A378171.P2342585323353389051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343342 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (A309010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378171.P2342585323353389051

/-!
# A378173: Array read by antidiagonals: T(n,k) is the number of proper antichain partitions of the rectangular poset of size n X k.

The programs for A378173, there is no canonical definition to state claims against.
-/

/-! ## A378173.P3336534093700057708

`A117924(A211400(n+1))`
-/

namespace A378173.P3336534093700057708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A211400 (n + 1)).toNat

end

end A378173.P3336534093700057708

/-! ## A378173.P2095199687609086612

`A000108(A007318(n))%A349210(n)`
-/

namespace A378173.P2095199687609086612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A007318 n).toNat) (A349210 (n + 21))

end

end A378173.P2095199687609086612

/-! ## A378173.P11084525243674338543

`A000108(A216219(n))%A225552(3*n+5)`
-/

namespace A378173.P11084525243674338543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A216219 n).toNat) (A225552 (3 * n + 5))

end

end A378173.P11084525243674338543

/-! ## A378173.P9254561513586324121

`A000108(A302998(n))%A000040(A342222(n+3))`
-/

namespace A378173.P9254561513586324121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A302998 n).toNat) (A000040 (A342222 (n + 3)).toNat)

end

end A378173.P9254561513586324121

/-! ## A378173.P16795253925717066684

`A211400(n+1)+A063725(A147618(n))`
-/

namespace A378173.P16795253925717066684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211400 (n + 1) + A063725 (A147618 n).toNat

end

end A378173.P16795253925717066684

/-!
# A378177: Triangle read by rows: T(n,k) is the number of subgroups of S_n isomorphic to S_k up to conjugacy, where S_n is the n-th symmetric group.

The programs for A378177, there is no canonical definition to state claims against.
-/

/-! ## A378177.P2848913809333357895

`A256911(A281563(n+1))`
-/

namespace A378177.P2848913809333357895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (A281563 (n + 1)).toNat

end

end A378177.P2848913809333357895

/-! ## A378177.P17172415133002843419

`A287866(6*A304972(n+1))`
-/

namespace A378177.P17172415133002843419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287866 (6 * A304972 (n + 1)).toNat

end

end A378177.P17172415133002843419

/-! ## A378177.P2446670359642448550

`A284249(n)+A085983(A376935(n))`
-/

namespace A378177.P2446670359642448550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284249 n + A085983 (A376935 n).toNat

end

end A378177.P2446670359642448550

/-! ## A378177.P3822010960383707468

`A055642(A001845(2*(n+2))%A333143(n))`
-/

namespace A378177.P3822010960383707468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A001845 (2 * (n + 2))) (A333143 n)).toNat

end

end A378177.P3822010960383707468

/-!
# A378178: Number of powerful k between consecutive perfect (or proper) prime powers.

The programs for A378178, there is no canonical definition to state claims against.
-/

/-! ## A378178.P16399413911084538194

`A072453(A143662(n))`
-/

namespace A378178.P16399413911084538194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072453 (A143662 n).toNat

end

end A378178.P16399413911084538194

/-! ## A378178.P2723178253204608692

`A089789(A103632(n+1))`
-/

namespace A378178.P2723178253204608692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089789 (A103632 (n + 1)).toNat

end

end A378178.P2723178253204608692

/-! ## A378178.P8142313066129038310

`A334731(n+1)%A318360(A334741(n))`
-/

namespace A378178.P8142313066129038310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334731 (n + 1)) (A318360 (A334741 n).toNat)

end

end A378178.P8142313066129038310

/-! ## A378178.P12311577601545466164

`A036234(A090906(n+1))%A119348(n+1)`
-/

namespace A378178.P12311577601545466164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (A090906 (n + 1)).toNat) (A119348 (n + 1))

end

end A378178.P12311577601545466164

/-! ## A378178.P368002955842273687

`A214642(A086749(n+1))%A251621(n+1)`
-/

namespace A378178.P368002955842273687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214642 (A086749 (n + 1)).toNat) (A251621 (n + 1))

end

end A378178.P368002955842273687

/-!
# A378180: Irregular triangle where row n lists m such that rad(m) | n and bigomega(m) < bigomega(n), where rad = A007947 and bigomega = A001222.

The programs for A378180, there is no canonical definition to state claims against.
-/

/-! ## A378180.P2238597711403960521

`A162190(lt[A162190(n)², n])`
-/

namespace A378180.P2238597711403960521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162190 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162190 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A378180.P2238597711403960521

/-! ## A378180.P17489263151915116387

`A027751(n+2)%A028491(n+1)`
-/

namespace A378180.P17489263151915116387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027751 (n + 2)) (A028491 (n + 1))

end

end A378180.P17489263151915116387

/-! ## A378180.P8047836909003707814

`A384447(lt[A384446(n), A384447(n)])`
-/

namespace A378180.P8047836909003707814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384447 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378180.P8047836909003707814

/-! ## A378180.P1265824556560134951

`A185017(A006128(n))+A027751(n+2)`
-/

namespace A378180.P1265824556560134951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 (A006128 n).toNat + A027751 (n + 2)

end

end A378180.P1265824556560134951

/-! ## A378180.P2149373611389565419

`A027751(n+2)%A213304(A130251(n))`
-/

namespace A378180.P2149373611389565419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027751 (n + 2)) (A213304 (A130251 n).toNat)

end

end A378180.P2149373611389565419

/-!
# A378181: a(1) = 0, a(n) = binomial(bigomega(n) + omega(n) - 1, omega(n)), where bigomega = A001222 and omega = A001221.

The programs for A378181, the canonical program `A378181.P11540481461231249369` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378181 has offset 1).

The definition of A378181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378181.P11540481461231249369

`A376567(n+1)-A377071(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378181

/-- `A376567(n+1)-A377071(n+1)` -/
def P11540481461231249369.Spec : Prop :=
  ∀ n, P11540481461231249369.a n = A378181 (n + 1)

theorem P11540481461231249369.correct : P11540481461231249369.Spec := by
  intro n
  simp only [A378181, Nat.add_sub_cancel]

end A378181

/-! ## A378181.P15082626555712495054

`A355393(∏{e}[n+1, #+1]%A123142(n))`
-/

namespace A378181.P15082626555712495054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355393 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A123142 (n + 64))).toNat

end

end A378181.P15082626555712495054

namespace A378181

/-- `A355393(∏{e}[n+1, #+1]%A123142(n))` -/
def P15082626555712495054.Spec : Prop :=
  ∀ n, P15082626555712495054.a n = A378181 (n + 1)

end A378181

/-! ## A378181.P2821423781975972647

`A028335(∏{e}[n+1, #+1])%A095131(n+1)`
-/

namespace A378181.P2821423781975972647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028335 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) (A095131 (n + 1))

end

end A378181.P2821423781975972647

namespace A378181

/-- `A028335(∏{e}[n+1, #+1])%A095131(n+1)` -/
def P2821423781975972647.Spec : Prop :=
  ∀ n, P2821423781975972647.a n = A378181 (n + 1)

end A378181

/-! ## A378181.P10632447006690293482

`A242407(A000005(n+1))%A192092(n)`
-/

namespace A378181.P10632447006690293482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242407 (A000005 (n + 1)).toNat) (A192092 n)

end

end A378181.P10632447006690293482

namespace A378181

/-- `A242407(A000005(n+1))%A192092(n)` -/
def P10632447006690293482.Spec : Prop :=
  ∀ n, P10632447006690293482.a n = A378181 (n + 1)

end A378181

/-! ## A378181.P15276366161790125942

`A218549(A000005(n+1)%A281920(n+3))`
-/

namespace A378181.P15276366161790125942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218549 (Int.tmod (A000005 (n + 1)) (A281920 (n + 3))).toNat

end

end A378181.P15276366161790125942

namespace A378181

/-- `A218549(A000005(n+1)%A281920(n+3))` -/
def P15276366161790125942.Spec : Prop :=
  ∀ n, P15276366161790125942.a n = A378181 (n + 1)

end A378181

/-!
# A378182: Sum of row n of A378180.

The programs for A378182, there is no canonical definition to state claims against.
-/

/-! ## A378182.P5990865330010322570

`A377378(n+1)-A377072(n+1)`
-/

namespace A378182.P5990865330010322570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377378 (n + 1) - A377072 (n + 1)

end

end A378182.P5990865330010322570

/-! ## A378182.P16635442003273814155

`A377378(abs(xor(n, -1)))%A377072(n+1)`
-/

namespace A378182.P16635442003273814155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377378 |Int.xor (n : ℤ) (-1)|.toNat) (A377072 (n + 1))

end

end A378182.P16635442003273814155

/-! ## A378182.P3179793629054761836

`or(∑{d}[n+1, #]-(n+1), A185274(∑{d}[n+1, #]-(n+1)))`
-/

namespace A378182.P3179793629054761836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A185274 (∑ d ∈ Nat.divisors (f2 n), d - (n + 1)))

end

end A378182.P3179793629054761836

/-! ## A378182.P12923224023817561864

`or(∑{d}[n+1, #]-(n+1), A185274(A237588(n+1)+n))`
-/

namespace A378182.P12923224023817561864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A185274 (A237588 (n + 1) + (n : ℤ)).toNat)

end

end A378182.P12923224023817561864

/-! ## A378182.P13565712737761942709

`or(∑{d}[n+1, #]-(n+1), A185274(n-A235796(n+1)))`
-/

namespace A378182.P13565712737761942709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A185274 ((n : ℤ) - A235796 (n + 1)).toNat)

end

end A378182.P13565712737761942709

/-!
# A378183: a(n) = rad(n)^binomial(omega(n) + bigomega(n) - 1, bigomega(n) - 2), where rad = A007947, bigomega = A001222, and omega = A001221.

The programs for A378183, the canonical program `A378183.P5487560436969933485` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378183 has offset 1).

The definition of A378183 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377073, A377379, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378183.P5487560436969933485

`A377379(n+1)/A377073(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378183

/-- `A377379(n+1)/A377073(n+1)` -/
def P5487560436969933485.Spec : Prop :=
  ∀ n, P5487560436969933485.a n = (A378183 (n + 1) : ℚ)

end A378183

/-! ## A378183.P2551883289686598705

`A066638(∏{d}[n+1, #]/(n+1))`
-/

namespace A378183.P2551883289686598705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A378183.P2551883289686598705

namespace A378183

/-- `A066638(∏{d}[n+1, #]/(n+1))` -/
def P2551883289686598705.Spec : Prop :=
  ∀ n, P2551883289686598705.a n = A378183 (n + 1)

end A378183

/-! ## A378183.P4942042622449836118

`A066638(A007956(n+1))`
-/

namespace A378183.P4942042622449836118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (A007956 (n + 1)).toNat

end

end A378183.P4942042622449836118

namespace A378183

/-- `A066638(A007956(n+1))` -/
def P4942042622449836118.Spec : Prop :=
  ∀ n, P4942042622449836118.a n = A378183 (n + 1)

end A378183

/-! ## A378183.P4056257491617482514

`A066638(A007955(n+1)/(n+1))`
-/

namespace A378183.P4056257491617482514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (SequenceMachineLib.roundAway ((A007955 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A378183.P4056257491617482514

namespace A378183

/-- `A066638(A007955(n+1)/(n+1))` -/
def P4056257491617482514.Spec : Prop :=
  ∀ n, P4056257491617482514.a n = A378183 (n + 1)

end A378183

/-! ## A378183.P13400627006443018158

`A007956(n+1)*A306695(A008965(n+1))`
-/

namespace A378183.P13400627006443018158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A306695 (A008965 (n + 1)).toNat

end

end A378183.P13400627006443018158

namespace A378183

/-- `A007956(n+1)*A306695(A008965(n+1))` -/
def P13400627006443018158.Spec : Prop :=
  ∀ n, P13400627006443018158.a n = A378183 (n + 1)

end A378183

/-!
# A378185: a(n) = n + floor(n*r/s) + floor(n*r/t), where r=2^(1/4), s=2^(1/2), t=2^(3/4).

The programs for A378185, there is no canonical definition to state claims against.
-/

/-! ## A378185.P6345164175601531400

`A184917(n+1)+1-A087057(n+1)`
-/

namespace A378185.P6345164175601531400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184917 (n + 1) + (1 - A087057 (n + 1))

end

end A378185.P6345164175601531400

/-! ## A378185.P8597961401877552215

`A073719(A109238(n+1))`
-/

namespace A378185.P8597961401877552215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A109238 (n + 1)).toNat

end

end A378185.P8597961401877552215

/-! ## A378185.P4332893319804902972

`A073719(A164086(n+1))`
-/

namespace A378185.P4332893319804902972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A164086 (n + 1)).toNat

end

end A378185.P4332893319804902972

/-! ## A378185.P1629729603934044301

`A189670(n+1)+A078588(A118467(n+5))`
-/

namespace A378185.P1629729603934044301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) + A078588 (A118467 (n + 5)).toNat

end

end A378185.P1629729603934044301

/-! ## A378185.P6246244349479979026

`A318950(A191656(3*n+2))+A016789(n)`
-/

namespace A378185.P6246244349479979026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A191656 (3 * n + 2)).toNat + A016789 n

end

end A378185.P6246244349479979026

/-!
# A378187: With p(n) = A002145(n) = n-th non-Pythagorean prime, a(n) is the least k such p(n) + k is a non-Pythagorean prime and 2 p(n) + k - 3 is a Pythagorean prime; and a(n) = 0 if there is no such k.

The programs for A378187, there is no canonical definition to state claims against.
-/

/-! ## A378187.P14496260076898200384

`A181819(14*A008527(n))`
-/

namespace A378187.P14496260076898200384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (14 * A008527 n).toNat

end

end A378187.P14496260076898200384

/-!
# A378188: Record values in A205561.

The programs for A378188, there is no canonical definition to state claims against.
-/

/-! ## A378188.P13895078819926372305

`record[A205561(n+1)]`
-/

namespace A378188.P13895078819926372305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378188.P13895078819926372305

/-! ## A378188.P9524131223805199238

`A205561(A378189(n+1))`
-/

namespace A378188.P9524131223805199238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205561 (A378189 (n + 1)).toNat

end

end A378188.P9524131223805199238

/-!
# A378190: Number of planar maps with an external face and n internal triangular faces.

The programs for A378190, there is no canonical definition to state claims against.
-/

/-! ## A378190.P16602341832224387356

`(A378337(n+1)+A378341(n+1))/2`
-/

namespace A378190.P16602341832224387356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378337 (n + 1) + A378341 (n + 1) : ℚ) / 2

end

end A378190.P16602341832224387356

/-! ## A378190.P14427606049511482548

`A174221(A378341(n+1)+A378337(n+1))`
-/

namespace A378190.P14427606049511482548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A378341 (n + 1) + A378337 (n + 1)).toNat

end

end A378190.P14427606049511482548

/-!
# A378191: a(n) is the number of integer bases >= 2 in which n is digitally balanced.

The programs for A378191, there is no canonical definition to state claims against.
-/

/-! ## A378191.P11617019834166061205

`and(char[A378073(n+1)], A029986(n+1))`
-/

namespace A378191.P11617019834166061205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A029986 (n + 1))

end

end A378191.P11617019834166061205

/-! ## A378191.P13984126160167070659

`and(char[A378073(n+1)], A052015(n+1))`
-/

namespace A378191.P13984126160167070659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A052015 (n + 1))

end

end A378191.P13984126160167070659

/-! ## A378191.P708441930133860466

`and(char[A378073(n+1)], A090481(n+1))`
-/

namespace A378191.P708441930133860466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A090481 (n + 1))

end

end A378191.P708441930133860466

/-! ## A378191.P8356218026283048254

`and(char[A378073(n+1)], A342365(n+1))`
-/

namespace A378191.P8356218026283048254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A342365 (n + 1))

end

end A378191.P8356218026283048254

/-! ## A378191.P15485659792525297174

`char[A378073(n+1)]+floor(A324917(n+1)/2)`
-/

namespace A378191.P15485659792525297174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(A324917 (n + 1) : ℚ) / 2⌋

end

end A378191.P15485659792525297174

/-! ## A378191.P15967487784748211427

`and(char[A378073(n+1)], A180101(n))`
-/

namespace A378191.P15967487784748211427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A180101 n)

end

end A378191.P15967487784748211427

/-! ## A378191.P11402522139661073347

`and(char[A378073(n+1)], A342386(n+1))`
-/

namespace A378191.P11402522139661073347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A342386 (n + 1))

end

end A378191.P11402522139661073347

/-! ## A378191.P5650009305127210228

`and(char[A378073(n+1)], A342418(n+1))`
-/

namespace A378191.P5650009305127210228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378073 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A342418 (n + 1))

end

end A378191.P5650009305127210228

/-!
# A378192: a(1) = 1. For n > 1, a(n) is the number of terms a(i); 1 <= i <= n-1 such that phi(a(i)) = phi(a(n-1)), where phi is Euler's totient function A000010.

The programs for A378192, there is no canonical definition to state claims against.
-/

/-! ## A378192.P14072807052989638702

`A374684(A391230(n+2))`
-/

namespace A378192.P14072807052989638702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A391230 (n + 2)).toNat

end

end A378192.P14072807052989638702

/-! ## A378192.P15765113561409266316

`A280919(A218482(n)-A241644(2*n+1))`
-/

namespace A378192.P15765113561409266316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280919 (A218482 n - A241644 (2 * n + 1)).toNat

end

end A378192.P15765113561409266316

/-! ## A378192.P4279490234290129152

`A064839(lt[A004018(n), A240910(2*n+1)])`
-/

namespace A378192.P4279490234290129152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240910 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378192.P4279490234290129152

/-! ## A378192.P13590189366952864451

`A064839(lt[A104794(n), A240910(2*n+1)])`
-/

namespace A378192.P13590189366952864451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240910 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378192.P13590189366952864451

/-!
# A378193: Rectangular array read by descending antidiagonals: row n shows the integers m such that the number of Pythagorean primes (including multiplicities) that divide m is n-1.

The programs for A378193, there is no canonical definition to state claims against.
-/

/-! ## A378193.P620937637837796589

`A097753(n+1)-A326152(A298660(3*n+2))`
-/

namespace A378193.P620937637837796589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097753 (n + 1) - A326152 (A298660 (3 * n + 2)).toNat

end

end A378193.P620937637837796589

/-!
# A378196: Number of 2-colorings of length n without an arithmetic progression of length 4.

The programs for A378196, there is no canonical definition to state claims against.
-/

/-! ## A378196.P6388157462454030018

`A382400(n)-A382424(A382428(n))`
-/

namespace A378196.P6388157462454030018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382400 n - A382424 (A382428 n).toNat

end

end A378196.P6388157462454030018

/-!
# A378198: Table T(n, k) read by upward antidiagonals. T(n,1) = A375602(n), T(n,2) = A375602(A375602(n)), T(n,3) = A375602(A375602(A375602(n))) and so on.

The programs for A378198, there is no canonical definition to state claims against.
-/

/-! ## A378198.P10242658104699608615

`A258076(A130403(n)%A386419(n+1))`
-/

namespace A378198.P10242658104699608615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258076 (Int.tmod (A130403 n) (A386419 (n + 1))).toNat

end

end A378198.P10242658104699608615

/-! ## A378198.P16606750908248589040

`A374996(7^A122286(n))`
-/

namespace A378198.P16606750908248589040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A122286 n : ℤ))).toNat

end

end A378198.P16606750908248589040

/-! ## A378198.P2930639609099846685

`A374996(7^A130403(n))`
-/

namespace A378198.P2930639609099846685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A130403 n : ℤ))).toNat

end

end A378198.P2930639609099846685

/-! ## A378198.P15725763651376318274

`A143097(A122284(n)+A087890(3*n+5))`
-/

namespace A378198.P15725763651376318274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A122284 n + A087890 (3 * n + 5)).toNat

end

end A378198.P15725763651376318274

/-! ## A378198.P16312158844502010841

`A127064(A073200(n)%A105999(2*n))`
-/

namespace A378198.P16312158844502010841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127064 (Int.tmod (A073200 n) (A105999 (2 * n))).toNat

end

end A378198.P16312158844502010841

/-!
# A378199: Number of digit patterns of length n such that all integers of that digital type share a common prime factor of a different digital type.

The programs for A378199, there is no canonical definition to state claims against.
-/

/-! ## A378199.P13800351762040785350

`A164864(n+1)-A376918(n+1)`
-/

namespace A378199.P13800351762040785350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 (n + 1) - A376918 (n + 1)

end

end A378199.P13800351762040785350

/-! ## A378199.P3591265248848248616

`A164864(n+1)-A267013(n+1)-A377727(n+1)`
-/

namespace A378199.P3591265248848248616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 (n + 1) - A267013 (n + 1) - A377727 (n + 1)

end

end A378199.P3591265248848248616

/-! ## A378199.P2149077970281231345

`A164904(2*n+1)-A376918(n+1)`
-/

namespace A378199.P2149077970281231345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164904 (2 * n + 1) - A376918 (n + 1)

end

end A378199.P2149077970281231345

/-! ## A378199.P14797168328381022220

`A385539(A080436(n+1))%A014095(n)`
-/

namespace A378199.P14797168328381022220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385539 (A080436 (n + 1)).toNat) (A014095 n)

end

end A378199.P14797168328381022220

/-! ## A378199.P15208929908411810013

`A000110(A032555(n+1))-A376918(n+1)`
-/

namespace A378199.P15208929908411810013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A032555 (n + 1)).toNat - A376918 (n + 1)

end

end A378199.P15208929908411810013

