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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A196410: a(n) = n*2^(n-5).

The programs for A196410, the canonical program `A196410.P1220960374601197139` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196410 has offset 5).

The definition of A196410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)*2^n` (program `A196410.P1220960374601197139`, by `A196410.P1220960374601197139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196410.P1220960374601197139

`(n+5)*2^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196410

/-- `(n+5)*2^n` -/
def P1220960374601197139.Spec : Prop :=
  ∀ n, (P1220960374601197139.a n : ℤ) = A196410 (n + 5)

theorem P1220960374601197139.correct : P1220960374601197139.Spec := by
  intro n
  simp only [A196410, Nat.add_sub_cancel]

end A196410

/-! ## A196410.P13006443477821803973

`ogf((5-8x)/(1-4x+4x^2))`
-/

namespace A196410.P13006443477821803973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8] [1, -4, 4] n

end

end A196410.P13006443477821803973

namespace A196410

/-- `ogf((5-8x)/(1-4x+4x^2))` -/
def P13006443477821803973.Spec : Prop :=
  ∀ n, P13006443477821803973.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P1080145126412727223

`a(n-1)+a(n-1)+2^n` with `a(0)=5`
-/

namespace A196410.P1080145126412727223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A196410.P1080145126412727223

namespace A196410

/-- `a(n-1)+a(n-1)+2^n` -/
def P1080145126412727223.Spec : Prop :=
  ∀ n, (P1080145126412727223.a n : ℤ) = A196410 (n + 5)

theorem P1080145126412727223.correct : P1080145126412727223.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196410, Nat.add_sub_cancel, A196410.P1080145126412727223.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196410, Nat.add_sub_cancel, A196410.P1080145126412727223.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A196410

/-! ## A196410.P14560052405383749037

`2^n-(a(n-1)-3*a(n-1))` with `a(0)=5`
-/

namespace A196410.P14560052405383749037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) - 3 * a (n - 1))

end

end A196410.P14560052405383749037

namespace A196410

/-- `2^n-(a(n-1)-3*a(n-1))` -/
def P14560052405383749037.Spec : Prop :=
  ∀ n, P14560052405383749037.a n = A196410 (n + 5)

theorem P14560052405383749037.correct : P14560052405383749037.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196410, Nat.add_sub_cancel, A196410.P14560052405383749037.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196410, Nat.add_sub_cancel, A196410.P14560052405383749037.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A196410

/-! ## A196410.P4671173053912080327

`A045623(n+2)`
-/

namespace A196410.P4671173053912080327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 2)

end

end A196410.P4671173053912080327

namespace A196410

/-- `A045623(n+2)` -/
def P4671173053912080327.Spec : Prop :=
  ∀ n, P4671173053912080327.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P17479064288675988106

`abs(Δ[Δ[A322039(n)]])`
-/

namespace A196410.P17479064288675988106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322039 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A196410.P17479064288675988106

namespace A196410

/-- `abs(Δ[Δ[A322039(n)]])` -/
def P17479064288675988106.Spec : Prop :=
  ∀ n, P17479064288675988106.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P4439093243163762751

`A047859(n+1)+1`
-/

namespace A196410.P4439093243163762751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 (n + 1) + 1

end

end A196410.P4439093243163762751

namespace A196410

/-- `A047859(n+1)+1` -/
def P4439093243163762751.Spec : Prop :=
  ∀ n, P4439093243163762751.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P10518377106408570943

`abs(Δ[A084219(n+1)])`
-/

namespace A196410.P10518377106408570943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A196410.P10518377106408570943

namespace A196410

/-- `abs(Δ[A084219(n+1)])` -/
def P10518377106408570943.Spec : Prop :=
  ∀ n, P10518377106408570943.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P16367557547941862507

`record[A045623(abs(2-n))]`
-/

namespace A196410.P16367557547941862507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196410.P16367557547941862507

namespace A196410

/-- `record[A045623(abs(2-n))]` -/
def P16367557547941862507.Spec : Prop :=
  ∀ n, P16367557547941862507.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P5358717956348765756

`∑[A045891(n+2)]+2`
-/

namespace A196410.P5358717956348765756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A196410.P5358717956348765756

namespace A196410

/-- `∑[A045891(n+2)]+2` -/
def P5358717956348765756.Spec : Prop :=
  ∀ n, P5358717956348765756.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P6887959042801033740

`∑[A047860(n)+2]+2`
-/

namespace A196410.P6887959042801033740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047860 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A196410.P6887959042801033740

namespace A196410

/-- `∑[A047860(n)+2]+2` -/
def P6887959042801033740.Spec : Prop :=
  ∀ n, P6887959042801033740.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P9578502576904794447

`A027993(n)+2*(n+2)`
-/

namespace A196410.P9578502576904794447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027993 n + (2 * (n + 2) : ℤ)

end

end A196410.P9578502576904794447

namespace A196410

/-- `A027993(n)+2*(n+2)` -/
def P9578502576904794447.Spec : Prop :=
  ∀ n, P9578502576904794447.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P10922462111993780094

`A087447(n+2)+2^n`
-/

namespace A196410.P10922462111993780094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 2) + (2 ^ n : ℤ)

end

end A196410.P10922462111993780094

namespace A196410

/-- `A087447(n+2)+2^n` -/
def P10922462111993780094.Spec : Prop :=
  ∀ n, P10922462111993780094.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P16247196533123553536

`A129953(n+2)+2^n`
-/

namespace A196410.P16247196533123553536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (n + 2) + (2 ^ n : ℤ)

end

end A196410.P16247196533123553536

namespace A196410

/-- `A129953(n+2)+2^n` -/
def P16247196533123553536.Spec : Prop :=
  ∀ n, P16247196533123553536.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P15876350540729562987

`A129954(n+2)-2^n`
-/

namespace A196410.P15876350540729562987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (n + 2) - (2 ^ n : ℤ)

end

end A196410.P15876350540729562987

namespace A196410

/-- `A129954(n+2)-2^n` -/
def P15876350540729562987.Spec : Prop :=
  ∀ n, P15876350540729562987.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P9828191166931286127

`A131352(n+2)-2^n`
-/

namespace A196410.P9828191166931286127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 (n + 2) - (2 ^ n : ℤ)

end

end A196410.P9828191166931286127

namespace A196410

/-- `A131352(n+2)-2^n` -/
def P9828191166931286127.Spec : Prop :=
  ∀ n, P9828191166931286127.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P6974688340231677740

`A001792(n+1)+2^(n+1)`
-/

namespace A196410.P6974688340231677740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A196410.P6974688340231677740

namespace A196410

/-- `A001792(n+1)+2^(n+1)` -/
def P6974688340231677740.Spec : Prop :=
  ∀ n, P6974688340231677740.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P4061310137612433015

`A001787(n+1)+2^(n+2)`
-/

namespace A196410.P4061310137612433015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (2 ^ (n + 2) : ℤ)

end

end A196410.P4061310137612433015

namespace A196410

/-- `A001787(n+1)+2^(n+2)` -/
def P4061310137612433015.Spec : Prop :=
  ∀ n, P4061310137612433015.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P5426855527610977109

`A049610(n+3)+2^(n+1)`
-/

namespace A196410.P5426855527610977109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 3) + (2 ^ (n + 1) : ℤ)

end

end A196410.P5426855527610977109

namespace A196410

/-- `A049610(n+3)+2^(n+1)` -/
def P5426855527610977109.Spec : Prop :=
  ∀ n, P5426855527610977109.a n = A196410 (n + 5)

end A196410

/-! ## A196410.P15866920951106672458

`A097067(n+2)+2^(n+2)`
-/

namespace A196410.P15866920951106672458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A196410.P15866920951106672458

namespace A196410

/-- `A097067(n+2)+2^(n+2)` -/
def P15866920951106672458.Spec : Prop :=
  ∀ n, P15866920951106672458.a n = A196410 (n + 5)

end A196410

/-!
# A196411: a(n) = n! - n^4.

The programs for A196411, the canonical program `A196411.P7957782021250191538` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196411 has offset 0).

The definition of A196411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196411.P7957782021250191538

`n!-n^4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196411

/-- `n!-n^4` -/
def P7957782021250191538.Spec : Prop :=
  ∀ n, P7957782021250191538.a n = A196411 n

theorem P7957782021250191538.correct : P7957782021250191538.Spec := by
  intro n
  simp only [A196411]

end A196411

/-! ## A196411.P1161993800494891890

`∏[round(1/acot(n))]-n^4`
-/

namespace A196411.P1161993800494891890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 4 : ℤ)

end

end A196411.P1161993800494891890

namespace A196411

/-- `∏[round(1/acot(n))]-n^4` -/
def P1161993800494891890.Spec : Prop :=
  ∀ n, P1161993800494891890.a n = A196411 n

end A196411

/-! ## A196411.P6992366977493329750

`∏[ceil(abs(γ-n))]-n^4`
-/

namespace A196411.P6992366977493329750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 4 : ℤ)

end

end A196411.P6992366977493329750

namespace A196411

/-- `∏[ceil(abs(γ-n))]-n^4` -/
def P6992366977493329750.Spec : Prop :=
  ∀ n, P6992366977493329750.a n = A196411 n

end A196411

/-! ## A196411.P6628283313528487747

`ceil(∏[floor(acot(n)-n)]/(-1)^n-n^4)`
-/

namespace A196411.P6628283313528487747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ) - (n ^ 4 : ℚ)⌉

end

end A196411.P6628283313528487747

namespace A196411

/-- `ceil(∏[floor(acot(n)-n)]/(-1)^n-n^4)` -/
def P6628283313528487747.Spec : Prop :=
  ∀ n, P6628283313528487747.a n = A196411 n

end A196411

/-!
# A196412: a(n) = n! - n^5.

The programs for A196412, the canonical program `A196412.P169885604373004639` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196412 has offset 0).

The definition of A196412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196412.P169885604373004639

`n!-n^5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196412

/-- `n!-n^5` -/
def P169885604373004639.Spec : Prop :=
  ∀ n, P169885604373004639.a n = A196412 n

theorem P169885604373004639.correct : P169885604373004639.Spec := by
  intro n
  simp only [A196412]

end A196412

/-! ## A196412.P12658622874531500263

`∏[round(1/acot(n))]-n^5`
-/

namespace A196412.P12658622874531500263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 5 : ℤ)

end

end A196412.P12658622874531500263

namespace A196412

/-- `∏[round(1/acot(n))]-n^5` -/
def P12658622874531500263.Spec : Prop :=
  ∀ n, P12658622874531500263.a n = A196412 n

end A196412

/-! ## A196412.P13361993715518271633

`abs(∏[floor(acot(n)-n)])-n^5`
-/

namespace A196412.P13361993715518271633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| - (n ^ 5 : ℤ)

end

end A196412.P13361993715518271633

namespace A196412

/-- `abs(∏[floor(acot(n)-n)])-n^5` -/
def P13361993715518271633.Spec : Prop :=
  ∀ n, P13361993715518271633.a n = A196412 n

end A196412

/-! ## A196412.P7136591443881395148

`A000142(n)-n^5`
-/

namespace A196412.P7136591443881395148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n ^ 5 : ℤ)

end

end A196412.P7136591443881395148

namespace A196412

/-- `A000142(n)-n^5` -/
def P7136591443881395148.Spec : Prop :=
  ∀ n, P7136591443881395148.a n = A196412 n

end A196412

/-! ## A196412.P3605732399976325718

`Δ[A003422(n)]-n^5`
-/

namespace A196412.P3605732399976325718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 5 : ℤ)

end

end A196412.P3605732399976325718

namespace A196412

/-- `Δ[A003422(n)]-n^5` -/
def P3605732399976325718.Spec : Prop :=
  ∀ n, P3605732399976325718.a n = A196412 n

end A196412

/-! ## A196412.P3605349635046017917

`∏[A028310(n)]-n^5`
-/

namespace A196412.P3605349635046017917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 5 : ℤ)

end

end A196412.P3605349635046017917

namespace A196412

/-- `∏[A028310(n)]-n^5` -/
def P3605349635046017917.Spec : Prop :=
  ∀ n, P3605349635046017917.a n = A196412 n

end A196412

/-! ## A196412.P7025513012562006405

`n!-A131471(n)+n`
-/

namespace A196412.P7025513012562006405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A131471 n + (n : ℤ)

end

end A196412.P7025513012562006405

namespace A196412

/-- `n!-A131471(n)+n` -/
def P7025513012562006405.Spec : Prop :=
  ∀ n, P7025513012562006405.a n = A196412 n

end A196412

/-! ## A196412.P2925581618271824707

`A081123(2*n)-n^5`
-/

namespace A196412.P2925581618271824707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) - (n ^ 5 : ℤ)

end

end A196412.P2925581618271824707

namespace A196412

/-- `A081123(2*n)-n^5` -/
def P2925581618271824707.Spec : Prop :=
  ∀ n, P2925581618271824707.a n = A196412 n

end A196412

/-! ## A196412.P3818973302554714186

`∏[A007318(∑[n]+1)]-n^5`
-/

namespace A196412.P3818973302554714186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 5 : ℤ)

end

end A196412.P3818973302554714186

namespace A196412

/-- `∏[A007318(∑[n]+1)]-n^5` -/
def P3818973302554714186.Spec : Prop :=
  ∀ n, P3818973302554714186.a n = A196412 n

end A196412

/-!
# A196413: a(n) = n! - n^6.

The programs for A196413, the canonical program `A196413.P17311584269030540824` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196413 has offset 0).

The definition of A196413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196413.P17311584269030540824

`n!-n^6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196413

/-- `n!-n^6` -/
def P17311584269030540824.Spec : Prop :=
  ∀ n, P17311584269030540824.a n = A196413 n

theorem P17311584269030540824.correct : P17311584269030540824.Spec := by
  intro n
  simp only [A196413]

end A196413

/-! ## A196413.P4089265546476708116

`∏[round(1/acot(n))]-n^6`
-/

namespace A196413.P4089265546476708116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 6 : ℤ)

end

end A196413.P4089265546476708116

namespace A196413

/-- `∏[round(1/acot(n))]-n^6` -/
def P4089265546476708116.Spec : Prop :=
  ∀ n, P4089265546476708116.a n = A196413 n

end A196413

/-! ## A196413.P8293903666392809274

`∏[floor(acot(n)+n)]-n^6`
-/

namespace A196413.P8293903666392809274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 6 : ℤ)

end

end A196413.P8293903666392809274

namespace A196413

/-- `∏[floor(acot(n)+n)]-n^6` -/
def P8293903666392809274.Spec : Prop :=
  ∀ n, P8293903666392809274.a n = A196413 n

end A196413

/-! ## A196413.P14572337410776458666

`∏[gcd(n, floor(acot(n)))]-n^6`
-/

namespace A196413.P14572337410776458666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 6 : ℤ)

end

end A196413.P14572337410776458666

namespace A196413

/-- `∏[gcd(n, floor(acot(n)))]-n^6` -/
def P14572337410776458666.Spec : Prop :=
  ∀ n, P14572337410776458666.a n = A196413 n

end A196413

/-! ## A196413.P16066819006815932785

`∏[or(n, floor(acot(n)))]-n^6`
-/

namespace A196413.P16066819006815932785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 6 : ℤ)

end

end A196413.P16066819006815932785

namespace A196413

/-- `∏[or(n, floor(acot(n)))]-n^6` -/
def P16066819006815932785.Spec : Prop :=
  ∀ n, P16066819006815932785.a n = A196413 n

end A196413

/-! ## A196413.P9191288611978734638

`∏[round(sqrt(n²+1))]-n^6`
-/

namespace A196413.P9191288611978734638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 6 : ℤ)

end

end A196413.P9191288611978734638

namespace A196413

/-- `∏[round(sqrt(n²+1))]-n^6` -/
def P9191288611978734638.Spec : Prop :=
  ∀ n, P9191288611978734638.a n = A196413 n

end A196413

/-!
# A196414: a(n) = n! - n^7.

The programs for A196414, the canonical program `A196414.P6804954905083941619` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196414 has offset 0).

The definition of A196414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196414.P6804954905083941619

`n!-n^7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196414

/-- `n!-n^7` -/
def P6804954905083941619.Spec : Prop :=
  ∀ n, P6804954905083941619.a n = A196414 n

theorem P6804954905083941619.correct : P6804954905083941619.Spec := by
  intro n
  simp only [A196414]

end A196414

/-! ## A196414.P15320363487649200855

`∏[round(1/acot(n))]-n^7`
-/

namespace A196414.P15320363487649200855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 7 : ℤ)

end

end A196414.P15320363487649200855

namespace A196414

/-- `∏[round(1/acot(n))]-n^7` -/
def P15320363487649200855.Spec : Prop :=
  ∀ n, P15320363487649200855.a n = A196414 n

end A196414

/-! ## A196414.P10372933828751455246

`∏[round(sqrt(n²+1))]-n^7`
-/

namespace A196414.P10372933828751455246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 7 : ℤ)

end

end A196414.P10372933828751455246

namespace A196414

/-- `∏[round(sqrt(n²+1))]-n^7` -/
def P10372933828751455246.Spec : Prop :=
  ∀ n, P10372933828751455246.a n = A196414 n

end A196414

/-! ## A196414.P3808227281771771263

`(A000142(n)-A001015(n))*A033999(n)²`
-/

namespace A196414.P3808227281771771263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000142 n - A001015 n) * A033999 n ^ 2

end

end A196414.P3808227281771771263

namespace A196414

/-- `(A000142(n)-A001015(n))*A033999(n)²` -/
def P3808227281771771263.Spec : Prop :=
  ∀ n, P3808227281771771263.a n = A196414 n

end A196414

/-! ## A196414.P2823327739437989567

`(n!-A001015(n))/A151728(n)%2`
-/

namespace A196414.P2823327739437989567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A001015 n : ℚ) / (Int.tmod (A151728 n) 2 : ℚ)

end

end A196414.P2823327739437989567

namespace A196414

/-- `(n!-A001015(n))/A151728(n)%2` -/
def P2823327739437989567.Spec : Prop :=
  ∀ n, P2823327739437989567.a n = (A196414 n : ℚ)

end A196414

/-!
# A196415: Values of n such that (product of first n composite numbers) / (sum of first n composite numbers) is an integer.

The programs for A196415, there is no canonical definition to state claims against.
-/

/-! ## A196415.P4211623537574720604

`A065855(A141089(n+1))`
-/

namespace A196415.P4211623537574720604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A141089 (n + 1)).toNat

end

end A196415.P4211623537574720604

/-! ## A196415.P15604594813850441545

`record[n+1-A255383(n+1)]`
-/

namespace A196415.P15604594813850441545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A255383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196415.P15604594813850441545

/-! ## A196415.P12221335373394657485

`A111654(A141091(n+1))`
-/

namespace A196415.P12221335373394657485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A141091 (n + 1)).toNat

end

end A196415.P12221335373394657485

/-! ## A196415.P9417923187207578238

`A236761(n+1)-A059832(A168243(n))`
-/

namespace A196415.P9417923187207578238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1) - A059832 (A168243 n).toNat

end

end A196415.P9417923187207578238

/-!
# A196416: Table read by antidiagonals: V(n,m) = solution to postage stamp problem with n stamps in set, m stamps on letter.

The programs for A196416, there is no canonical definition to state claims against.
-/

/-! ## A196416.P15856143997818380903

`A172263(A062110(n)+A054142(n))`
-/

namespace A196416.P15856143997818380903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A062110 n + A054142 n).toNat

end

end A196416.P15856143997818380903

/-! ## A196416.P13217206897458773811

`or(A000035(A247126(n)), A096589(n))`
-/

namespace A196416.P13217206897458773811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A247126 n).toNat) (A096589 n)

end

end A196416.P13217206897458773811

/-! ## A196416.P13882046911463922634

`A161358(A056674(n+1)+A056241(n+1))`
-/

namespace A196416.P13882046911463922634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A056674 (n + 1) + A056241 (n + 1)).toNat

end

end A196416.P13882046911463922634

/-! ## A196416.P3781797162779410445

`A265690(A183610(n+1))`
-/

namespace A196416.P3781797162779410445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265690 (A183610 (n + 1)).toNat

end

end A196416.P3781797162779410445

/-! ## A196416.P17434710056089859756

`A117806(A144324(n+2))`
-/

namespace A196416.P17434710056089859756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117806 (A144324 (n + 2)).toNat

end

end A196416.P17434710056089859756

/-!
# A196419: Number of (not necessarily indecomposable) Hermitian self-dual additive codes over GF(9) of length n.

The programs for A196419, there is no canonical definition to state claims against.
-/

/-! ## A196419.P17944434250062745500

`∑[abs(A114327(A129130(n)))]`
-/

namespace A196419.P17944434250062745500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 (A129130 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196419.P17944434250062745500

/-! ## A196419.P17480498802072881959

`A257008(A191394(n+1)+1)`
-/

namespace A196419.P17480498802072881959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257008 (A191394 (n + 1) + 1).toNat

end

end A196419.P17480498802072881959

/-! ## A196419.P779815126346397420

`∑[A137734(∑[A211083(n+1)])]`
-/

namespace A196419.P779815126346397420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211083 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196419.P779815126346397420

/-!
# A196420: Number of distinct weight enumerators of indecomposable Hermitian self-dual additive codes over GF(9) of length n.

The programs for A196420, there is no canonical definition to state claims against.
-/

/-! ## A196420.P8931181548633831706

`A045778(A056836(n)/A323503(n))`
-/

namespace A196420.P8931181548633831706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((A056836 n : ℚ) / (A323503 n : ℚ))).toNat

end

end A196420.P8931181548633831706

/-! ## A196420.P11843481221207501885

`A210650(A047120(2*n)+A047091(n+1))`
-/

namespace A196420.P11843481221207501885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210650 (A047120 (2 * n) + A047091 (n + 1)).toNat

end

end A196420.P11843481221207501885

/-!
# A196421: a(n) = prime(n)*T(n), where T = A000217.

The programs for A196421, the canonical program `A196421.P11935482166905696749` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196421 has offset 1).

The definition of A196421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196421.P11935482166905696749

`A000040(n+1)*A000217(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A196421

/-- `A000040(n+1)*A000217(n+1)` -/
def P11935482166905696749.Spec : Prop :=
  ∀ n, P11935482166905696749.a n = A196421 (n + 1)

theorem P11935482166905696749.correct : P11935482166905696749.Spec := by
  intro n
  simp only [A196421, Nat.add_sub_cancel]

end A196421

/-! ## A196421.P5727632878159188642

`∑[n+1]*Δ[A007504(n)]`
-/

namespace A196421.P5727632878159188642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A196421.P5727632878159188642

namespace A196421

/-- `∑[n+1]*Δ[A007504(n)]` -/
def P5727632878159188642.Spec : Prop :=
  ∀ n, P5727632878159188642.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P13204223903194900918

`abs(Δ[A008348(n)])*∑[n+1]`
-/

namespace A196421.P13204223903194900918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A196421.P13204223903194900918

namespace A196421

/-- `abs(Δ[A008348(n)])*∑[n+1]` -/
def P13204223903194900918.Spec : Prop :=
  ∀ n, P13204223903194900918.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P12441269205526327286

`abs(Δ[A022837(n)])*∑[n+1]`
-/

namespace A196421.P12441269205526327286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A196421.P12441269205526327286

namespace A196421

/-- `abs(Δ[A022837(n)])*∑[n+1]` -/
def P12441269205526327286.Spec : Prop :=
  ∀ n, P12441269205526327286.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P16428856236037904953

`(n+2)/2*A033286(n+1)`
-/

namespace A196421.P16428856236037904953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A033286 (n + 1) : ℚ)

end

end A196421.P16428856236037904953

namespace A196421

/-- `(n+2)/2*A033286(n+1)` -/
def P16428856236037904953.Spec : Prop :=
  ∀ n, P16428856236037904953.a n = (A196421 (n + 1) : ℚ)

end A196421

/-! ## A196421.P6635551699479540782

`A110477(n+1)+∑[(n+1)²]`
-/

namespace A196421.P6635551699479540782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110477 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A196421.P6635551699479540782

namespace A196421

/-- `A110477(n+1)+∑[(n+1)²]` -/
def P6635551699479540782.Spec : Prop :=
  ∀ n, P6635551699479540782.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P7935654067753385646

`sqrt(A001248(n+1))*∑[n+1]`
-/

namespace A196421.P7935654067753385646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A196421.P7935654067753385646

namespace A196421

/-- `sqrt(A001248(n+1))*∑[n+1]` -/
def P7935654067753385646.Spec : Prop :=
  ∀ n, P7935654067753385646.a n = (A196421 (n + 1) : ℝ)

end A196421

/-! ## A196421.P17616981534490219890

`(A006093(n+1)+1)*∑[n+1]`
-/

namespace A196421.P17616981534490219890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A196421.P17616981534490219890

namespace A196421

/-- `(A006093(n+1)+1)*∑[n+1]` -/
def P17616981534490219890.Spec : Prop :=
  ∀ n, P17616981534490219890.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P16422318711526430590

`(A040976(n+1)+2)*∑[n+1]`
-/

namespace A196421.P16422318711526430590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A196421.P16422318711526430590

namespace A196421

/-- `(A040976(n+1)+2)*∑[n+1]` -/
def P16422318711526430590.Spec : Prop :=
  ∀ n, P16422318711526430590.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P15304163471720630668

`Δ[A007504(n)]*A000217(n+1)`
-/

namespace A196421.P15304163471720630668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 1)

end

end A196421.P15304163471720630668

namespace A196421

/-- `Δ[A007504(n)]*A000217(n+1)` -/
def P15304163471720630668.Spec : Prop :=
  ∀ n, P15304163471720630668.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P9685729446788362728

`A089594(n+1)*A273960(n+1)`
-/

namespace A196421.P9685729446788362728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089594 (n + 1) * A273960 (n + 1)

end

end A196421.P9685729446788362728

namespace A196421

/-- `A089594(n+1)*A273960(n+1)` -/
def P9685729446788362728.Spec : Prop :=
  ∀ n, P9685729446788362728.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P17335226865587510030

`(A004232(n+1)-(n+1)²)*A000217(n+1)`
-/

namespace A196421.P17335226865587510030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004232 (n + 1) - ((n + 1) ^ 2 : ℤ)) * A000217 (n + 1)

end

end A196421.P17335226865587510030

namespace A196421

/-- `(A004232(n+1)-(n+1)²)*A000217(n+1)` -/
def P17335226865587510030.Spec : Prop :=
  ∀ n, P17335226865587510030.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P357815471039676664

`A000040(n+1)+A000040(n+1)*A000096(n)`
-/

namespace A196421.P357815471039676664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 1) * A000096 n

end

end A196421.P357815471039676664

namespace A196421

/-- `A000040(n+1)+A000040(n+1)*A000096(n)` -/
def P357815471039676664.Spec : Prop :=
  ∀ n, P357815471039676664.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P16241766776105230131

`(A008347(n+1)+A008347(n))*A000217(n+1)`
-/

namespace A196421.P16241766776105230131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008347 (n + 1) + A008347 n) * A000217 (n + 1)

end

end A196421.P16241766776105230131

namespace A196421

/-- `(A008347(n+1)+A008347(n))*A000217(n+1)` -/
def P16241766776105230131.Spec : Prop :=
  ∀ n, P16241766776105230131.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P5455534161988556145

`A033286(n+1)+A000217(n)*A006005(n+1)`
-/

namespace A196421.P5455534161988556145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + A000217 n * A006005 (n + 1)

end

end A196421.P5455534161988556145

namespace A196421

/-- `A033286(n+1)+A000217(n)*A006005(n+1)` -/
def P5455534161988556145.Spec : Prop :=
  ∀ n, P5455534161988556145.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P12637039404913970917

`(A007504(n+1)-A007504(n))*A000217(n+1)`
-/

namespace A196421.P12637039404913970917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A000217 (n + 1)

end

end A196421.P12637039404913970917

namespace A196421

/-- `(A007504(n+1)-A007504(n))*A000217(n+1)` -/
def P12637039404913970917.Spec : Prop :=
  ∀ n, P12637039404913970917.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P13920345028693645975

`A000217(n+1)+A000217(n+1)*A006093(n+1)`
-/

namespace A196421.P13920345028693645975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A006093 (n + 1)

end

end A196421.P13920345028693645975

namespace A196421

/-- `A000217(n+1)+A000217(n+1)*A006093(n+1)` -/
def P13920345028693645975.Spec : Prop :=
  ∀ n, P13920345028693645975.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P18176885223699882721

`A000217(n+1)*A008864(n+1)-A000217(n+1)`
-/

namespace A196421.P18176885223699882721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A008864 (n + 1) - A000217 (n + 1)

end

end A196421.P18176885223699882721

namespace A196421

/-- `A000217(n+1)*A008864(n+1)-A000217(n+1)` -/
def P18176885223699882721.Spec : Prop :=
  ∀ n, P18176885223699882721.a n = A196421 (n + 1)

end A196421

/-!
# A196422: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors less than itself.

The programs for A196422, there is no canonical definition to state claims against.
-/

/-! ## A196422.P2079367709445207415

`A196430((n+1)²+n²)`
-/

namespace A196422.P2079367709445207415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 ((n + 1) ^ 2 + n ^ 2)

end

end A196422.P2079367709445207415

/-! ## A196422.P18303209253112562437

`or(1, A196430(A001844(n)))`
-/

namespace A196422.P18303209253112562437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196430 (A001844 n).toNat)

end

end A196422.P18303209253112562437

/-! ## A196422.P9452370756641893679

`A196430(A001844(n))*A215561(n)`
-/

namespace A196422.P9452370756641893679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A001844 n).toNat * A215561 n

end

end A196422.P9452370756641893679

/-!
# A196423: Number of n X 1 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196423, the canonical program `A196423.P4451480349490247433` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196423 has offset 1).

The definition of A196423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196423.P9827941885992029306

`ogf((1+2x+x^2)/(1-x-x^2-3x^3-x^4))`
-/

namespace A196423.P9827941885992029306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -1, -1, -3, -1] n

end

end A196423.P9827941885992029306

namespace A196423

/-- `ogf((1+2x+x^2)/(1-x-x^2-3x^3-x^4))` -/
def P9827941885992029306.Spec : Prop :=
  ∀ n, P9827941885992029306.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P4451480349490247433

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196423

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P4451480349490247433.Spec : Prop :=
  ∀ n, (P4451480349490247433.a n : ℤ) = A196423 (n + 1)

theorem P4451480349490247433.correct : P4451480349490247433.Spec := by
  intro n
  simp only [A196423, Nat.add_sub_cancel]

end A196423

/-! ## A196423.P1662435858034190023

`A232162(n+1)+A214663(n)`
-/

namespace A196423.P1662435858034190023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (n + 1) + A214663 n

end

end A196423.P1662435858034190023

namespace A196423

/-- `A232162(n+1)+A214663(n)` -/
def P1662435858034190023.Spec : Prop :=
  ∀ n, P1662435858034190023.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P15014459570984414712

`A232165(n+1)+A232165(n)`
-/

namespace A196423.P15014459570984414712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (n + 1) + A232165 n

end

end A196423.P15014459570984414712

namespace A196423

/-- `A232165(n+1)+A232165(n)` -/
def P15014459570984414712.Spec : Prop :=
  ∀ n, P15014459570984414712.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P10694504408830254154

`∑[A196537(n+1)]-A232164(n)`
-/

namespace A196423.P10694504408830254154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A232164 n

end

end A196423.P10694504408830254154

namespace A196423

/-- `∑[A196537(n+1)]-A232164(n)` -/
def P10694504408830254154.Spec : Prop :=
  ∀ n, P10694504408830254154.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P6308175033860580275

`A232164(n+1)+A232162(n+1)`
-/

namespace A196423.P6308175033860580275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 1) + A232162 (n + 1)

end

end A196423.P6308175033860580275

namespace A196423

/-- `A232164(n+1)+A232162(n+1)` -/
def P6308175033860580275.Spec : Prop :=
  ∀ n, P6308175033860580275.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P7900594108971566056

`A243094(n+1)-(A232164(n)+A214663(n))`
-/

namespace A196423.P7900594108971566056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (n + 1) - (A232164 n + A214663 n)

end

end A196423.P7900594108971566056

namespace A196423

/-- `A243094(n+1)-(A232164(n)+A214663(n))` -/
def P7900594108971566056.Spec : Prop :=
  ∀ n, P7900594108971566056.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P8769231682168186097

`A243094(n+1)-(A232164(n+1)+A232164(n))`
-/

namespace A196423.P8769231682168186097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (n + 1) - (A232164 (n + 1) + A232164 n)

end

end A196423.P8769231682168186097

namespace A196423

/-- `A243094(n+1)-(A232164(n+1)+A232164(n))` -/
def P8769231682168186097.Spec : Prop :=
  ∀ n, P8769231682168186097.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P3882518169380013982

`record[Δ[A232164(n)]]-A232164(n)`
-/

namespace A196423.P3882518169380013982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A232164 n

end

end A196423.P3882518169380013982

namespace A196423

/-- `record[Δ[A232164(n)]]-A232164(n)` -/
def P3882518169380013982.Spec : Prop :=
  ∀ n, P3882518169380013982.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P2818683649823444789

`Δ[A214663(n+1)]-A232164(n)`
-/

namespace A196423.P2818683649823444789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232164 n

end

end A196423.P2818683649823444789

namespace A196423

/-- `Δ[A214663(n+1)]-A232164(n)` -/
def P2818683649823444789.Spec : Prop :=
  ∀ n, P2818683649823444789.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P4614441875533844582

`Δ[A232164(n+2)]-A232164(n)`
-/

namespace A196423.P4614441875533844582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232164 n

end

end A196423.P4614441875533844582

namespace A196423

/-- `Δ[A232164(n+2)]-A232164(n)` -/
def P4614441875533844582.Spec : Prop :=
  ∀ n, P4614441875533844582.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P2419449941957229113

`A232164(n+3)-(A232164(n+2)+A232164(n))`
-/

namespace A196423.P2419449941957229113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 3) - (A232164 (n + 2) + A232164 n)

end

end A196423.P2419449941957229113

namespace A196423

/-- `A232164(n+3)-(A232164(n+2)+A232164(n))` -/
def P2419449941957229113.Spec : Prop :=
  ∀ n, P2419449941957229113.a n = A196423 (n + 1)

end A196423

/-!
# A196424: Number of nX2 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196424, there is no canonical definition to state claims against.
-/

/-! ## A196424.P10694365908849951405

`A196430(∑[n+1]+2)`
-/

namespace A196424.P10694365908849951405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196424.P10694365908849951405

/-! ## A196424.P16363742601434443381

`record[A196430(abs(A201163(n)))]`
-/

namespace A196424.P16363742601434443381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196424.P16363742601434443381

/-! ## A196424.P14812462854721144160

`record[A196430(A117142(n+2))]`
-/

namespace A196424.P14812462854721144160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196424.P14812462854721144160

/-! ## A196424.P17933679827529225602

`record[A196430(Δ[A003453(n+5)])]`
-/

namespace A196424.P17933679827529225602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196424.P17933679827529225602

/-! ## A196424.P6797510281257146445

`record[A196430(n+3)/A265981(n+1)]`
-/

namespace A196424.P6797510281257146445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196430 (n + 3) : ℚ) / (A265981 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196424.P6797510281257146445

/-!
# A196425: Number of nX3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196425, there is no canonical definition to state claims against.
-/

/-! ## A196425.P1911948178066686492

`A196430(∑[n+2]+4)`
-/

namespace A196425.P1911948178066686492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196425.P1911948178066686492

/-! ## A196425.P17926979597649026395

`or(floor(acot(n)), A196430(A167614(n+1)))`
-/

namespace A196425.P17926979597649026395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A196430 (A167614 (n + 1)).toNat)

end

end A196425.P17926979597649026395

/-! ## A196425.P10579901265139401493

`A196430(A167614(n+1))+A054908(n)`
-/

namespace A196425.P10579901265139401493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A167614 (n + 1)).toNat + A054908 n

end

end A196425.P10579901265139401493

/-! ## A196425.P7439462702443766675

`A196430(A167614(n+1))+A185255(n)`
-/

namespace A196425.P7439462702443766675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A167614 (n + 1)).toNat + A185255 n

end

end A196425.P7439462702443766675

/-! ## A196425.P1492062063070595425

`A196430(A167614(n+1))+A185284(n)`
-/

namespace A196425.P1492062063070595425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A167614 (n + 1)).toNat + A185284 n

end

end A196425.P1492062063070595425

/-!
# A196426: Number of nX4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196426, there is no canonical definition to state claims against.
-/

/-! ## A196426.P10991184325480122946

`A196430(A052905(n)+9)`
-/

namespace A196426.P10991184325480122946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A052905 n + 9).toNat

end

end A196426.P10991184325480122946

/-! ## A196426.P14830150577833360649

`A196430(A055999(n)+10)`
-/

namespace A196426.P14830150577833360649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A055999 n + 10).toNat

end

end A196426.P14830150577833360649

/-! ## A196426.P10727606414894245125

`A196430(A167614(n+2)+1)`
-/

namespace A196426.P10727606414894245125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A167614 (n + 2) + 1).toNat

end

end A196426.P10727606414894245125

/-! ## A196426.P1875966670127278509

`A196430(Δ[A264443(n)-n²])`
-/

namespace A196426.P1875966670127278509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (f1 (n + 1) - f1 n).toNat

end

end A196426.P1875966670127278509

/-! ## A196426.P8600417135092840441

`A196430(Δ[A023545(n+1)-n²])`
-/

namespace A196426.P8600417135092840441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (f1 (n + 1) - f1 n).toNat

end

end A196426.P8600417135092840441

/-!
# A196427: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196427, there is no canonical definition to state claims against.
-/

/-! ## A196427.P11521931751115049747

`A196430(A056000(n)+15)`
-/

namespace A196427.P11521931751115049747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A056000 n + 15).toNat

end

end A196427.P11521931751115049747

/-! ## A196427.P3939219997232014429

`A196430(eq[6, A131818(n+1)])`
-/

namespace A196427.P3939219997232014429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196427.P3939219997232014429

/-! ## A196427.P464275207329232502

`A196430(Δ[A264443(n)])`
-/

namespace A196427.P464275207329232502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (f1 (n + 1) - f1 n).toNat

end

end A196427.P464275207329232502

/-! ## A196427.P2552388760746567271

`A196430(A374005(n+1))`
-/

namespace A196427.P2552388760746567271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A374005 (n + 1)).toNat

end

end A196427.P2552388760746567271

/-! ## A196427.P5895147010484817462

`A196430(eq[4, A193592(n)])`
-/

namespace A196427.P5895147010484817462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196427.P5895147010484817462

/-!
# A196428: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196428, there is no canonical definition to state claims against.
-/

/-! ## A196428.P447839748496771427

`A196430(eq[7, A131818(n+1)])`
-/

namespace A196428.P447839748496771427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196428.P447839748496771427

/-! ## A196428.P770689672499278686

`A196430(A374007(n+1))`
-/

namespace A196428.P770689672499278686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A374007 (n + 1)).toNat

end

end A196428.P770689672499278686

/-! ## A196428.P16671558292873226085

`A196430(Δ[A264443(n+1)]-1)`
-/

namespace A196428.P16671558292873226085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (f1 (n + 1) - f1 n - 1).toNat

end

end A196428.P16671558292873226085

/-!
# A196429: Number of n X 7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196429, there is no canonical definition to state claims against.
-/

/-! ## A196429.P11245331195637148289

`A196430(A374008(n+1))`
-/

namespace A196429.P11245331195637148289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A374008 (n + 1)).toNat

end

end A196429.P11245331195637148289

/-! ## A196429.P4379397184906969032

`A196430(eq[7, A200370(n+1)])`
-/

namespace A196429.P4379397184906969032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196429.P4379397184906969032

/-! ## A196429.P5689727136384311322

`A196430(eq[8, A131818(n+1)])`
-/

namespace A196429.P5689727136384311322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196429.P5689727136384311322

/-!
# A196430: T(n,k) = Number of n X k 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors less than itself.

The programs for A196430, there is no canonical definition to state claims against.
-/

/-! ## A196430.P7707815009747970743

`or(A031213(A022168(n)%A006441(n)), A088725(A227741(n+1)))`
-/

namespace A196430.P7707815009747970743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031213 (Int.tmod (A022168 n) (A006441 n)).toNat) (A088725 (A227741 (n + 1)).toNat)

end

end A196430.P7707815009747970743

/-! ## A196430.P13299731931934489039

`or(A004274(A157641(n)%A006441(n)), A088725(A227741(n+1)))`
-/

namespace A196430.P13299731931934489039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004274 (Int.tmod (A157641 n) (A006441 n)).toNat) (A088725 (A227741 (n + 1)).toNat)

end

end A196430.P13299731931934489039

/-! ## A196430.P10194430604456249565

`or(or(A008292(n+1)², A001221(A046082(n+1))), A088725(A227741(n+1)))`
-/

namespace A196430.P10194430604456249565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor (A008292 (n + 1) ^ 2) (A001221 (A046082 (n + 1)).toNat)) (A088725 (A227741 (n + 1)).toNat)

end

end A196430.P10194430604456249565

/-!
# A196431: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196431, there is no canonical definition to state claims against.
-/

/-! ## A196431.P11494687167806686483

`A196436(∑[n+2]+4)`
-/

namespace A196431.P11494687167806686483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196431.P11494687167806686483

/-! ## A196431.P6297172982387591817

`or(1, A196436(A167614(n+1)))`
-/

namespace A196431.P6297172982387591817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196436 (A167614 (n + 1)).toNat)

end

end A196431.P6297172982387591817

/-! ## A196431.P2611782667743228020

`A196436(A167614(n+1))+A178780(n)`
-/

namespace A196431.P2611782667743228020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A167614 (n + 1)).toNat + A178780 n

end

end A196431.P2611782667743228020

/-! ## A196431.P1908799046252788163

`A196436(A167614(n+1))+A185245(n)`
-/

namespace A196431.P1908799046252788163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A167614 (n + 1)).toNat + A185245 n

end

end A196431.P1908799046252788163

/-! ## A196431.P17138972812793879744

`A196436(A167614(n+1))%A017562(n)`
-/

namespace A196431.P17138972812793879744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196436 (A167614 (n + 1)).toNat) (A017562 n)

end

end A196431.P17138972812793879744

/-!
# A196432: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196432, there is no canonical definition to state claims against.
-/

/-! ## A196432.P12754312165924194650

`A196436(A374004(n+1))`
-/

namespace A196432.P12754312165924194650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A374004 (n + 1)).toNat

end

end A196432.P12754312165924194650

/-! ## A196432.P4359888214582583425

`A196436(A052905(n)+9)`
-/

namespace A196432.P4359888214582583425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A052905 n + 9).toNat

end

end A196432.P4359888214582583425

/-! ## A196432.P9336255847224514685

`A196436(A055999(n)+10)`
-/

namespace A196432.P9336255847224514685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A055999 n + 10).toNat

end

end A196432.P9336255847224514685

/-! ## A196432.P11492246487425721123

`A196436(A167614(n+2)+1)`
-/

namespace A196432.P11492246487425721123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A167614 (n + 2) + 1).toNat

end

end A196432.P11492246487425721123

/-! ## A196432.P572245578929419492

`A196436(Δ[A264443(n)-n²])`
-/

namespace A196432.P572245578929419492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (f1 (n + 1) - f1 n).toNat

end

end A196432.P572245578929419492

/-!
# A196433: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196433, there is no canonical definition to state claims against.
-/

/-! ## A196433.P11487386616378084012

`A196436(A374005(n+1))`
-/

namespace A196433.P11487386616378084012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A374005 (n + 1)).toNat

end

end A196433.P11487386616378084012

/-! ## A196433.P9362110069904096679

`A196436(A167499(n+3))`
-/

namespace A196433.P9362110069904096679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A167499 (n + 3)).toNat

end

end A196433.P9362110069904096679

/-! ## A196433.P5379603614571034413

`A196436(A000217(n+4)+5)`
-/

namespace A196433.P5379603614571034413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A000217 (n + 4) + 5).toNat

end

end A196433.P5379603614571034413

/-! ## A196433.P7181277563986421791

`A196436(A051936(n+4)+14)`
-/

namespace A196433.P7181277563986421791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A051936 (n + 4) + 14).toNat

end

end A196433.P7181277563986421791

/-! ## A196433.P3405647344592704533

`A196436(A038722(Δ[A264443(n)]))`
-/

namespace A196433.P3405647344592704533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A196433.P3405647344592704533

/-!
# A196434: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196434, there is no canonical definition to state claims against.
-/

/-! ## A196434.P4591191617078079029

`A196436(A374007(n+1))`
-/

namespace A196434.P4591191617078079029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A374007 (n + 1)).toNat

end

end A196434.P4591191617078079029

/-! ## A196434.P12420310441054941023

`A196436(A167499(n+4)+1)`
-/

namespace A196434.P12420310441054941023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A167499 (n + 4) + 1).toNat

end

end A196434.P12420310441054941023

/-! ## A196434.P14816319368715682212

`A196436(A000124(n+5)+5)`
-/

namespace A196434.P14816319368715682212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A000124 (n + 5) + 5).toNat

end

end A196434.P14816319368715682212

/-! ## A196434.P12107553754887351699

`A196436(A000217(n+5)+6)`
-/

namespace A196434.P12107553754887351699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A000217 (n + 5) + 6).toNat

end

end A196434.P12107553754887351699

/-! ## A196434.P15136266922639640434

`A196436(A141214(n+2)+9)`
-/

namespace A196434.P15136266922639640434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A141214 (n + 2) + 9).toNat

end

end A196434.P15136266922639640434

/-!
# A196435: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196435, there is no canonical definition to state claims against.
-/

/-! ## A196435.P14349908926470598857

`A196436(A374008(n+1))`
-/

namespace A196435.P14349908926470598857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A374008 (n + 1)).toNat

end

end A196435.P14349908926470598857

/-! ## A196435.P8841896429200386192

`A196436(A056119(n)+28)`
-/

namespace A196435.P8841896429200386192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A056119 n + 28).toNat

end

end A196435.P8841896429200386192

/-! ## A196435.P8323543284610569907

`A196436(eq[11, A066657(n)])`
-/

namespace A196435.P8323543284610569907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196435.P8323543284610569907

/-! ## A196435.P7761673012817525233

`A196436(eq[8, A131818(n+1)])`
-/

namespace A196435.P7761673012817525233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196435.P7761673012817525233

/-! ## A196435.P4368887470971148029

`A196436(A055999(n+4))`
-/

namespace A196435.P4368887470971148029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A055999 (n + 4)).toNat

end

end A196435.P4368887470971148029

/-!
# A196436: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196436, there is no canonical definition to state claims against.
-/

/-! ## A196436.P5277772750011688341

`A278529(2*A197199(n+1))`
-/

namespace A196436.P5277772750011688341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (2 * A197199 (n + 1)).toNat

end

end A196436.P5277772750011688341

/-! ## A196436.P4289373708855766583

`A197199(round(acot(A192087(n+1))+n)+1)`
-/

namespace A196436.P4289373708855766583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A192087 (n + 1) : ℝ) + (n : ℝ)) + 1).toNat

end

end A196436.P4289373708855766583

/-! ## A196436.P14525260516582049049

`A197199(n+1)+A000007(A081582(n))`
-/

namespace A196436.P14525260516582049049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (n + 1) + A000007 (A081582 n).toNat

end

end A196436.P14525260516582049049

/-! ## A196436.P12760945971142370658

`A197199(n+1)+A178780(A023933(n))`
-/

namespace A196436.P12760945971142370658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (n + 1) + A178780 (A023933 n).toNat

end

end A196436.P12760945971142370658

/-! ## A196436.P13498321562118443515

`A197199(n+1)%A002762(n)`
-/

namespace A196436.P13498321562118443515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197199 (n + 1)) (A002762 n)

end

end A196436.P13498321562118443515

/-!
# A196437: a(n) = the number of numbers k <= n such that GCQ_A(n, k) = LCQ_A(n, k) = 0 (see definition in comments).

The programs for A196437, there is no canonical definition to state claims against.
-/

/-! ## A196437.P15399879747696275459

`n+1-A196438(n+1)`
-/

namespace A196437.P15399879747696275459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A196438 (n + 1)

end

end A196437.P15399879747696275459

/-! ## A196437.P7952114106660586871

`A003056(A196439(n+1))`
-/

namespace A196437.P7952114106660586871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A196439 (n + 1)).toNat

end

end A196437.P7952114106660586871

/-! ## A196437.P13535691724254535361

`A007318(A196439(n+1)+1)`
-/

namespace A196437.P13535691724254535361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A196439 (n + 1) + 1).toNat

end

end A196437.P13535691724254535361

/-! ## A196437.P5977802138226274154

`n-A023443(A196438(n+1))`
-/

namespace A196437.P5977802138226274154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A196438 (n + 1)).toNat

end

end A196437.P5977802138226274154

/-! ## A196437.P7869024983464615808

`A051775(A196439(n+1)+1)+1`
-/

namespace A196437.P7869024983464615808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A196439 (n + 1) + 1).toNat + 1

end

end A196437.P7869024983464615808

/-! ## A196437.P18284601636221072476

`A196416(A196439(n+1)+1)`
-/

namespace A196437.P18284601636221072476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (A196439 (n + 1) + 1).toNat

end

end A196437.P18284601636221072476

/-! ## A196437.P1830129622313577522

`A275853(A196441(n+1))`
-/

namespace A196437.P1830129622313577522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A196441 (n + 1)).toNat

end

end A196437.P1830129622313577522

/-! ## A196437.P996782748104387824

`A084558(2*A196441(n+1)-1)`
-/

namespace A196437.P996782748104387824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (2 * A196441 (n + 1) - 1).toNat

end

end A196437.P996782748104387824

/-! ## A196437.P8203511311927981720

`A084558(A196441(n+1)+A196441(n+1)-1)`
-/

namespace A196437.P8203511311927981720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A196441 (n + 1) + (A196441 (n + 1) - 1)).toNat

end

end A196437.P8203511311927981720

/-!
# A196438: a(n) is the number of integers k <= n such that GCQ_A(n, k) >= 2 (see definition in comments).

The programs for A196438, there is no canonical definition to state claims against.
-/

/-! ## A196438.P5658845284665178352

`n+1-A196437(n+1)`
-/

namespace A196438.P5658845284665178352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A196437 (n + 1)

end

end A196438.P5658845284665178352

/-! ## A196438.P8234494600939697333

`n-A295235(A196437(n+1))`
-/

namespace A196438.P8234494600939697333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A295235 (A196437 (n + 1)).toNat

end

end A196438.P8234494600939697333

/-! ## A196438.P1321924038159598534

`1-A003056(A196439(n+1))+n`
-/

namespace A196438.P1321924038159598534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003056 (A196439 (n + 1)).toNat + (n : ℤ)

end

end A196438.P1321924038159598534

/-! ## A196438.P15842797348112937587

`n+1-A007318(A196439(n+1)+1)`
-/

namespace A196438.P15842797348112937587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007318 (A196439 (n + 1) + 1).toNat

end

end A196438.P15842797348112937587

/-! ## A196438.P10154649416765346332

`A000217(n+1)%(A196437(n+1)+A000217(n))`
-/

namespace A196438.P10154649416765346332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A196437 (n + 1) + A000217 n)

end

end A196438.P10154649416765346332

/-! ## A196438.P14376058455333524149

`1-A275853(A196441(n+1))+n`
-/

namespace A196438.P14376058455333524149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275853 (A196441 (n + 1)).toNat + (n : ℤ)

end

end A196438.P14376058455333524149

/-!
# A196439: a(n) = the sum of numbers k <= n such that GCQ_A(n, k) = LCQ_A(n, k) = 0 (see definition in comments).

The programs for A196439, there is no canonical definition to state claims against.
-/

/-! ## A196439.P17300186531255723937

`(n+1)*(n+2)/2-A196440(n+1)`
-/

namespace A196439.P17300186531255723937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℚ) / 2 - (A196440 (n + 1) : ℚ)

end

end A196439.P17300186531255723937

/-! ## A196439.P9399265039681640946

`A000096(n)+1-A196440(n+1)`
-/

namespace A196439.P9399265039681640946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A196440 (n + 1))

end

end A196439.P9399265039681640946

/-! ## A196439.P6434882701566737404

`A000124(n)-A196440(n+1)+n`
-/

namespace A196439.P6434882701566737404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A196440 (n + 1) + (n : ℤ)

end

end A196439.P6434882701566737404

/-! ## A196439.P5873504404856311940

`A000217(n)+n+1-A196440(n+1)`
-/

namespace A196439.P5873504404856311940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n + 1 : ℤ) - A196440 (n + 1))

end

end A196439.P5873504404856311940

/-! ## A196439.P5157242194189845305

`A034856(n+1)-(A196440(n+1)+n)`
-/

namespace A196439.P5157242194189845305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (A196440 (n + 1) + (n : ℤ))

end

end A196439.P5157242194189845305

/-! ## A196439.P2133714781658394825

`A000096(n)-A023443(A196440(n+1))`
-/

namespace A196439.P2133714781658394825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A023443 (A196440 (n + 1)).toNat

end

end A196439.P2133714781658394825

/-!
# A196440: a(n) = the sum of numbers k <= n such that GCQ_A(n, k) >= 2 (see definition in comments).

The programs for A196440, there is no canonical definition to state claims against.
-/

/-! ## A196440.P11379474558916432399

`A000217(n+1)-A196439(n+1)`
-/

namespace A196440.P11379474558916432399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A196439 (n + 1)

end

end A196440.P11379474558916432399

/-! ## A196440.P15694699884165195915

`A000096(n)+1-A196439(n+1)`
-/

namespace A196440.P15694699884165195915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (1 - A196439 (n + 1))

end

end A196440.P15694699884165195915

/-! ## A196440.P4829680485949716242

`A000124(n)-A196439(n+1)+n`
-/

namespace A196440.P4829680485949716242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A196439 (n + 1) + (n : ℤ)

end

end A196440.P4829680485949716242

/-! ## A196440.P15071203651269693508

`A000096(n)-A033619(A196439(n+1))`
-/

namespace A196440.P15071203651269693508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A033619 (A196439 (n + 1)).toNat

end

end A196440.P15071203651269693508

/-! ## A196440.P6657095864099127783

`record[A061579(n)]-A033619(A196439(n+1))`
-/

namespace A196440.P6657095864099127783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A033619 (A196439 (n + 1)).toNat

end

end A196440.P6657095864099127783

/-!
# A196441: a(n) = the product of number k <= n such that GCQ_A(n, k) = LCQ_A(n, k) = 0 (see definition in comments).

The programs for A196441, there is no canonical definition to state claims against.
-/

/-! ## A196441.P1442254615275138300

`A000142(n+1)/A196442(n+1)`
-/

namespace A196441.P1442254615275138300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A196442 (n + 1) : ℚ)

end

end A196441.P1442254615275138300

/-! ## A196441.P8394593338192529302

`record[A047920(n)]/A196442(n+1)`
-/

namespace A196441.P8394593338192529302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196442 (n + 1) : ℚ)

end

end A196441.P8394593338192529302

/-! ## A196441.P2647128101380902627

`record[A094587(n)]/A196442(n+1)`
-/

namespace A196441.P2647128101380902627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196442 (n + 1) : ℚ)

end

end A196441.P2647128101380902627

/-! ## A196441.P11944009887200892755

`record[A098361(n)]/A196442(n+1)`
-/

namespace A196441.P11944009887200892755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196442 (n + 1) : ℚ)

end

end A196441.P11944009887200892755

/-! ## A196441.P11417504373097692673

`record[A123361(n)]/A196442(n+1)`
-/

namespace A196441.P11417504373097692673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196442 (n + 1) : ℚ)

end

end A196441.P11417504373097692673

/-!
# A196442: a(1) = a(2) = 1; for n >= 2, a(n) is the product of number k <= n such that GCQ_A(n, k) >= 2 (see definition in comments).

The programs for A196442, there is no canonical definition to state claims against.
-/

/-! ## A196442.P3846959297357991267

`A000142(n+1)/A196441(n+1)`
-/

namespace A196442.P3846959297357991267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A196441 (n + 1) : ℚ)

end

end A196442.P3846959297357991267

/-! ## A196442.P6042343330815564487

`record[A047920(n)]/A196441(n+1)`
-/

namespace A196442.P6042343330815564487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196441 (n + 1) : ℚ)

end

end A196442.P6042343330815564487

/-! ## A196442.P18125871561828657874

`record[A094587(n)]/A196441(n+1)`
-/

namespace A196442.P18125871561828657874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196441 (n + 1) : ℚ)

end

end A196442.P18125871561828657874

/-! ## A196442.P1275493364599301911

`record[A098361(n)]/A196441(n+1)`
-/

namespace A196442.P1275493364599301911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196441 (n + 1) : ℚ)

end

end A196442.P1275493364599301911

/-! ## A196442.P1500998431272982286

`record[A123361(n)]/A196441(n+1)`
-/

namespace A196442.P1500998431272982286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A196441 (n + 1) : ℚ)

end

end A196442.P1500998431272982286

/-!
# A196443: a(n) = the sum of GCQ_A(n, k) for 1 <= k <= n (see definition in comments).

The programs for A196443, there is no canonical definition to state claims against.
-/

/-! ## A196443.P14936776856788993829

`A102677(A000110(n))+A024816(n+1)`
-/

namespace A196443.P14936776856788993829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A000110 n).toNat + A024816 (n + 1)

end

end A196443.P14936776856788993829

/-! ## A196443.P7896792895294718477

`A154724(A001735(n))+A024816(n+1)`
-/

namespace A196443.P7896792895294718477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (A001735 n).toNat + A024816 (n + 1)

end

end A196443.P7896792895294718477

/-! ## A196443.P7536385218285361363

`A185238(A019428(n))+A024816(n+1)`
-/

namespace A196443.P7536385218285361363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A019428 n).toNat + A024816 (n + 1)

end

end A196443.P7536385218285361363

/-! ## A196443.P835301964213595708

`A231365(n+1)+A102677(A000110(n))`
-/

namespace A196443.P835301964213595708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 1) + A102677 (A000110 n).toNat

end

end A196443.P835301964213595708

/-! ## A196443.P229599450440530486

`A231365(n+1)+A185238(A019428(n))`
-/

namespace A196443.P229599450440530486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 1) + A185238 (A019428 n).toNat

end

end A196443.P229599450440530486

/-!
# A196444: a(n) = the smallest number m such that GCQ_A(m, k) = LCQ_A(m, k) = 0 for all 1 <= k <= n (see definition in comments).

The programs for A196444, there is no canonical definition to state claims against.
-/

/-! ## A196444.P12107313383851398552

`lcm(n, a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A196444.P12107313383851398552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  Nat.lcm n (a (n - 1))

end

end A196444.P12107313383851398552

/-! ## A196444.P9496624630590105294

`gcd(xor(-2, n²), ∑[n])*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A196444.P9496624630590105294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  Int.gcd (Int.xor (-2) (n ^ 2 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * a (n - 1)

end

end A196444.P9496624630590105294

/-! ## A196444.P2669392578712239082

`lcm(2^(n%3), A003418(n))`
-/

namespace A196444.P2669392578712239082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ (n % 3) : ℤ) (A003418 n)

end

end A196444.P2669392578712239082

/-! ## A196444.P2352271426129275790

`(2-Δ[floor(sqrt(n))])*A034386(n)`
-/

namespace A196444.P2352271426129275790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A034386 n

end

end A196444.P2352271426129275790

/-!
# A196445: Numbers k >= 2 such that A055035(k) is an odd integer.

The programs for A196445, the canonical program `A196445.P1664057712380764340` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196445 has offset 1).

The definition of A196445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196445.P1664057712380764340

`2*A197504(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A196445

/-- `2*A197504(n+1)` -/
def P1664057712380764340.Spec : Prop :=
  ∀ n, P1664057712380764340.a n = A196445 (n + 1)

theorem P1664057712380764340.correct : P1664057712380764340.Spec := by
  intro n
  simp only [A196445, Nat.add_sub_cancel]

end A196445

/-! ## A196445.P3985245408110741389

`lcm(A007947(A061142(n+5)), A197504(n+1))`
-/

namespace A196445.P3985245408110741389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (A061142 (n + 5)).toNat) (A197504 (n + 1))

end

end A196445.P3985245408110741389

namespace A196445

/-- `lcm(A007947(A061142(n+5)), A197504(n+1))` -/
def P3985245408110741389.Spec : Prop :=
  ∀ n, (P3985245408110741389.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P15803285291341588443

`A197504(n+1)+A197504(n+1)%A058827(n+1)`
-/

namespace A196445.P15803285291341588443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1) + Int.tmod (A197504 (n + 1)) (A058827 (n + 1))

end

end A196445.P15803285291341588443

namespace A196445

/-- `A197504(n+1)+A197504(n+1)%A058827(n+1)` -/
def P15803285291341588443.Spec : Prop :=
  ∀ n, P15803285291341588443.a n = A196445 (n + 1)

end A196445

/-! ## A196445.P10441725029798849553

`A197504(n+1)+A197504((n+1)%A142790(n+1))`
-/

namespace A196445.P10441725029798849553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1) + A197504 (Int.tmod (n + 1 : ℤ) (A142790 (n + 1))).toNat

end

end A196445.P10441725029798849553

namespace A196445

/-- `A197504(n+1)+A197504((n+1)%A142790(n+1))` -/
def P10441725029798849553.Spec : Prop :=
  ∀ n, P10441725029798849553.a n = A196445 (n + 1)

end A196445

/-! ## A196445.P8895524828170180634

`record[lcm(2, A332555(n+1))]`
-/

namespace A196445.P8895524828170180634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A332555 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196445.P8895524828170180634

namespace A196445

/-- `record[lcm(2, A332555(n+1))]` -/
def P8895524828170180634.Spec : Prop :=
  ∀ n, (P8895524828170180634.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P5999610554423946563

`2*∩[A097987(n+1), A061345(n)]`
-/

namespace A196445.P5999610554423946563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P5999610554423946563

namespace A196445

/-- `2*∩[A097987(n+1), A061345(n)]` -/
def P5999610554423946563.Spec : Prop :=
  ∀ n, (P5999610554423946563.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P13741626432960725062

`2*∩[A332555(n+1), A061345(n)]`
-/

namespace A196445.P13741626432960725062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P13741626432960725062

namespace A196445

/-- `2*∩[A332555(n+1), A061345(n)]` -/
def P13741626432960725062.Spec : Prop :=
  ∀ n, (P13741626432960725062.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P11342433820495822734

`2*∩[A120127(n+1), A061345(n)]`
-/

namespace A196445.P11342433820495822734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P11342433820495822734

namespace A196445

/-- `2*∩[A120127(n+1), A061345(n)]` -/
def P11342433820495822734.Spec : Prop :=
  ∀ n, (P11342433820495822734.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P14725991588388663888

`∩[A097987(n+1), A122905(n+1)]`
-/

namespace A196445.P14725991588388663888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P14725991588388663888

namespace A196445

/-- `∩[A097987(n+1), A122905(n+1)]` -/
def P14725991588388663888.Spec : Prop :=
  ∀ n, (P14725991588388663888.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P9743192586069657386

`∩[A097987(n+1), A278568(n+1)]`
-/

namespace A196445.P9743192586069657386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P9743192586069657386

namespace A196445

/-- `∩[A097987(n+1), A278568(n+1)]` -/
def P9743192586069657386.Spec : Prop :=
  ∀ n, (P9743192586069657386.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P6386364887842200217

`2*∩[A004614(n+1), A061345(n)]`
-/

namespace A196445.P6386364887842200217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P6386364887842200217

namespace A196445

/-- `2*∩[A004614(n+1), A061345(n)]` -/
def P6386364887842200217.Spec : Prop :=
  ∀ n, (P6386364887842200217.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P5781528890330452145

`2*∩[A000961(n+1), A004614(n+1)]`
-/

namespace A196445.P5781528890330452145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P5781528890330452145

namespace A196445

/-- `2*∩[A000961(n+1), A004614(n+1)]` -/
def P5781528890330452145.Spec : Prop :=
  ∀ n, (P5781528890330452145.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P1853291960864595251

`2*∩[A004614(n+1), A081061(n+1)]`
-/

namespace A196445.P1853291960864595251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P1853291960864595251

namespace A196445

/-- `2*∩[A004614(n+1), A081061(n+1)]` -/
def P1853291960864595251.Spec : Prop :=
  ∀ n, (P1853291960864595251.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P7835100923422521194

`2*∩[A004614(n+1), A097987(n+1)]`
-/

namespace A196445.P7835100923422521194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P7835100923422521194

namespace A196445

/-- `2*∩[A004614(n+1), A097987(n+1)]` -/
def P7835100923422521194.Spec : Prop :=
  ∀ n, (P7835100923422521194.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P4240948531789050672

`2*∩[A004614(n+1), A332555(n+1)]`
-/

namespace A196445.P4240948531789050672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P4240948531789050672

namespace A196445

/-- `2*∩[A004614(n+1), A332555(n+1)]` -/
def P4240948531789050672.Spec : Prop :=
  ∀ n, (P4240948531789050672.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P6396987212252557318

`2*∩[A004614(n+1), A033948(n+1)]`
-/

namespace A196445.P6396987212252557318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P6396987212252557318

namespace A196445

/-- `2*∩[A004614(n+1), A033948(n+1)]` -/
def P6396987212252557318.Spec : Prop :=
  ∀ n, (P6396987212252557318.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P17473647206981322193

`2*∩[A097987(n+1), A200982(n+1)]`
-/

namespace A196445.P17473647206981322193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P17473647206981322193

namespace A196445

/-- `2*∩[A097987(n+1), A200982(n+1)]` -/
def P17473647206981322193.Spec : Prop :=
  ∀ n, (P17473647206981322193.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P955158777641061248

`2*∩[A081754(n+1), A061345(n)]`
-/

namespace A196445.P955158777641061248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P955158777641061248

namespace A196445

/-- `2*∩[A081754(n+1), A061345(n)]` -/
def P955158777641061248.Spec : Prop :=
  ∀ n, (P955158777641061248.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P13592157340664979472

`filter[A097987(n+2), A391844(#)]`
-/

namespace A196445.P13592157340664979472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A196445.P13592157340664979472

namespace A196445

/-- `filter[A097987(n+2), A391844(#)]` -/
def P13592157340664979472.Spec : Prop :=
  ∀ n, P13592157340664979472.a n = A196445 (n + 1)

end A196445

/-! ## A196445.P8852755091696139993

`∩[A004144(n+1), A278568(n+1)]`
-/

namespace A196445.P8852755091696139993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P8852755091696139993

namespace A196445

/-- `∩[A004144(n+1), A278568(n+1)]` -/
def P8852755091696139993.Spec : Prop :=
  ∀ n, (P8852755091696139993.a n : ℤ) = A196445 (n + 1)

end A196445

/-!
# A196448: Value of a variable (d) in an iterative system. See equations.

The programs for A196448, there is no canonical definition to state claims against.
-/

/-! ## A196448.P15736840386742973001

`A000079(A000295(n))*A001045(n)`
-/

namespace A196448.P15736840386742973001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000295 n).toNat * A001045 n

end

end A196448.P15736840386742973001

/-! ## A196448.P4730072693110720649

`A001045(n)*A011782(A000325(n))`
-/

namespace A196448.P4730072693110720649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A011782 (A000325 n).toNat

end

end A196448.P4730072693110720649

/-! ## A196448.P4178237148949682498

`(A128209(n)-1)*A011782(A000325(n))`
-/

namespace A196448.P4178237148949682498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128209 n - 1) * A011782 (A000325 n).toNat

end

end A196448.P4178237148949682498

/-! ## A196448.P11439189165578052754

`A011782(A000325(n))*A328284(n+3)`
-/

namespace A196448.P11439189165578052754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000325 n).toNat * A328284 (n + 3)

end

end A196448.P11439189165578052754

/-! ## A196448.P17428373456968422520

`A011782(A000325(n))*A133684(2*n)`
-/

namespace A196448.P17428373456968422520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000325 n).toNat * A133684 (2 * n)

end

end A196448.P17428373456968422520

/-!
# A196449: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196449, there is no canonical definition to state claims against.
-/

/-! ## A196449.P14488092825937693939

`A196456(∑[4*n]+1)`
-/

namespace A196449.P14488092825937693939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196449.P14488092825937693939

/-! ## A196449.P5640381711412483362

`record[A196456(Δ[A235355(n)])]`
-/

namespace A196449.P5640381711412483362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196449.P5640381711412483362

/-! ## A196449.P9834872621968062428

`record[A196456(A330613(n+1))]`
-/

namespace A196449.P9834872621968062428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196449.P9834872621968062428

/-! ## A196449.P10732720237704727697

`record[A003982(n)*A196456(n+1)]`
-/

namespace A196449.P10732720237704727697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196449.P10732720237704727697

/-! ## A196449.P15850549518320382149

`A196456(A001844(n))*A309864(n)`
-/

namespace A196449.P15850549518320382149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A001844 n).toNat * A309864 n

end

end A196449.P15850549518320382149

/-!
# A196450: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196450, there is no canonical definition to state claims against.
-/

/-! ## A196450.P7620534737077726385

`A196456(∑[n+1]+2)`
-/

namespace A196450.P7620534737077726385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196450.P7620534737077726385

/-! ## A196450.P7646996106148678056

`record[A010054(n)*A196456(n+2)]`
-/

namespace A196450.P7646996106148678056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A196456 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196450.P7646996106148678056

/-! ## A196450.P5091162963883031992

`or(A010673(n), A196456(A133263(n+1)))`
-/

namespace A196450.P5091162963883031992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 n) (A196456 (A133263 (n + 1)).toNat)

end

end A196450.P5091162963883031992

/-! ## A196450.P3313881215741723178

`A200214(n+1)+A196456(A133263(n+1))`
-/

namespace A196450.P3313881215741723178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (n + 1) + A196456 (A133263 (n + 1)).toNat

end

end A196450.P3313881215741723178

/-! ## A196450.P11238160580080893565

`A196456(A133263(n+1))%A156043(n+3)`
-/

namespace A196450.P11238160580080893565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196456 (A133263 (n + 1)).toNat) (A156043 (n + 3))

end

end A196450.P11238160580080893565

/-!
# A196451: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196451, there is no canonical definition to state claims against.
-/

/-! ## A196451.P11526178724873462831

`A196456(∑[n+2]+4)`
-/

namespace A196451.P11526178724873462831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196451.P11526178724873462831

/-! ## A196451.P12356752916865574315

`A196456(A167614(n+1))+char[19]`
-/

namespace A196451.P12356752916865574315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196451.P12356752916865574315

/-! ## A196451.P4420914457095085403

`A196456(A055998(n)+6)+char[19]`
-/

namespace A196451.P4420914457095085403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196451.P4420914457095085403

/-! ## A196451.P2727980418757746173

`or(A196456(A167614(n+1)), A299905(n))`
-/

namespace A196451.P2727980418757746173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196456 (A167614 (n + 1)).toNat) (A299905 n)

end

end A196451.P2727980418757746173

/-! ## A196451.P4194920415928338268

`A200214(n+1)+A196456(A167614(n+1))`
-/

namespace A196451.P4194920415928338268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (n + 1) + A196456 (A167614 (n + 1)).toNat

end

end A196451.P4194920415928338268

/-!
# A196452: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196452, there is no canonical definition to state claims against.
-/

/-! ## A196452.P7161231006316201593

`A196456(∑[n+3]+7)`
-/

namespace A196452.P7161231006316201593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196452.P7161231006316201593

/-! ## A196452.P11896268461305512644

`A196456(A167614(n+2)+1)+char[20]`
-/

namespace A196452.P11896268461305512644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196452.P11896268461305512644

/-! ## A196452.P8246792943226396172

`A196456(A167614(n+2)+1)%A000108(n+9)`
-/

namespace A196452.P8246792943226396172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196456 (A167614 (n + 2) + 1).toNat) (A000108 (n + 9))

end

end A196452.P8246792943226396172

/-! ## A196452.P6042957587162401638

`A007318(C(2, n))*A196456(A167614(n+2)+1)`
-/

namespace A196452.P6042957587162401638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A196456 (A167614 (n + 2) + 1).toNat

end

end A196452.P6042957587162401638

/-! ## A196452.P339381408592891033

`A000041(C(2, n+2))*A196456(A167614(n+2)+1)`
-/

namespace A196452.P339381408592891033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A196456 (A167614 (n + 2) + 1).toNat

end

end A196452.P339381408592891033

/-!
# A196453: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196453, there is no canonical definition to state claims against.
-/

/-! ## A196453.P11916495415086960946

`A196456(∑[n+4]+11)`
-/

namespace A196453.P11916495415086960946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A196453.P11916495415086960946

/-!
# A196454: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196454, there is no canonical definition to state claims against.
-/

/-! ## A196454.P11567773786530434487

`A196456(A166136(n+4))`
-/

namespace A196454.P11567773786530434487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A166136 (n + 4)).toNat

end

end A196454.P11567773786530434487

/-! ## A196454.P12179417235017674356

`A196456(A056115(n)+21)`
-/

namespace A196454.P12179417235017674356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A056115 n + 21).toNat

end

end A196454.P12179417235017674356

/-! ## A196454.P16043756490276734692

`A196456(A167499(n+4)+1)`
-/

namespace A196454.P16043756490276734692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A167499 (n + 4) + 1).toNat

end

end A196454.P16043756490276734692

/-! ## A196454.P11325155534238822057

`A196456(A167614(n+4)+3)`
-/

namespace A196454.P11325155534238822057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A167614 (n + 4) + 3).toNat

end

end A196454.P11325155534238822057

/-! ## A196454.P13477106527345698407

`A196456(A000124(n+5)+5)`
-/

namespace A196454.P13477106527345698407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A000124 (n + 5) + 5).toNat

end

end A196454.P13477106527345698407

/-!
# A196455: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196455, there is no canonical definition to state claims against.
-/

/-! ## A196455.P11162269951529230870

`A196456(A302537(n)+27)`
-/

namespace A196455.P11162269951529230870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A302537 n + 27).toNat

end

end A196455.P11162269951529230870

/-! ## A196455.P10528224388816420204

`A196456(eq[11, A066657(n)])`
-/

namespace A196455.P10528224388816420204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196455.P10528224388816420204

/-! ## A196455.P5782147458248245698

`A196456(A166136(n+5)+1)`
-/

namespace A196455.P5782147458248245698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A166136 (n + 5) + 1).toNat

end

end A196455.P5782147458248245698

/-! ## A196455.P14360196705235413908

`A196456(A167499(n+5)+2)`
-/

namespace A196455.P14360196705235413908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A167499 (n + 5) + 2).toNat

end

end A196455.P14360196705235413908

/-! ## A196455.P16896036148632621553

`A196456(A167614(n+5)+4)`
-/

namespace A196455.P16896036148632621553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A167614 (n + 5) + 4).toNat

end

end A196455.P16896036148632621553

/-!
# A196456: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196456, there is no canonical definition to state claims against.
-/

/-! ## A196456.P9536561774289539574

`A196485(n+1)-A089840(A079205(n+1))`
-/

namespace A196456.P9536561774289539574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (n + 1) - A089840 (A079205 (n + 1)).toNat

end

end A196456.P9536561774289539574

/-! ## A196456.P1291856488764408334

`A196718(n+1)-A089840(A079205(n+1))`
-/

namespace A196456.P1291856488764408334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (n + 1) - A089840 (A079205 (n + 1)).toNat

end

end A196456.P1291856488764408334

/-! ## A196456.P16910670612861995037

`A196485(n+1)-A200214(A008965(n+1))`
-/

namespace A196456.P16910670612861995037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (n + 1) - A200214 (A008965 (n + 1)).toNat

end

end A196456.P16910670612861995037

/-! ## A196456.P5548669624265810671

`A196718(n+1)-A200214(A008965(n+1))`
-/

namespace A196456.P5548669624265810671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (n + 1) - A200214 (A008965 (n + 1)).toNat

end

end A196456.P5548669624265810671

/-! ## A196456.P6511054998038958317

`A074279(A183526(n+1)²)`
-/

namespace A196456.P6511054998038958317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A183526 (n + 1) ^ 2).toNat

end

end A196456.P6511054998038958317

/-!
# A196464: The "virtually enumerative invariants" n^{disk}_d as d runs through the odd numbers.

The programs for A196464, there is no canonical definition to state claims against.
-/

/-! ## A196464.P12757647604399108235

`2*A196465(n+1)`
-/

namespace A196464.P12757647604399108235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196465 (n + 1)

end

end A196464.P12757647604399108235

/-!
# A196465: The "virtually counts" n^{real}_d as d runs through the odd numbers.

The programs for A196465, there is no canonical definition to state claims against.
-/

/-! ## A196465.P10959614543413375278

`A196464(n+1)/2`
-/

namespace A196465.P10959614543413375278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196464 (n + 1) : ℚ) / 2

end

end A196465.P10959614543413375278

/-!
# A196467: Denominator of the open Gromov-Witten invariant N^{disk}_{2n+1}.

The programs for A196467, there is no canonical definition to state claims against.
-/

/-! ## A196467.P14419112663021857556

`A106616(A330741(Δ[n²]²))`
-/

namespace A196467.P14419112663021857556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A330741 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat).toNat

end

end A196467.P14419112663021857556

/-! ## A196467.P7373807846980795160

`or(1, A106616(A330741((2*n+1)²)))`
-/

namespace A196467.P7373807846980795160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A106616 (A330741 ((2 * n + 1) ^ 2)).toNat)

end

end A196467.P7373807846980795160

/-! ## A196467.P2159133826094496234

`gcd(A016826(n), A106616(A330741((2*n+1)²)))`
-/

namespace A196467.P2159133826094496234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016826 n) (A106616 (A330741 ((2 * n + 1) ^ 2)).toNat)

end

end A196467.P2159133826094496234

/-! ## A196467.P11440700111537555135

`A106616(A330741((2*n+1)²))+A000045(C(n, 64))`
-/

namespace A196467.P11440700111537555135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A330741 ((2 * n + 1) ^ 2)).toNat + A000045 (Nat.choose n 64)

end

end A196467.P11440700111537555135

/-! ## A196467.P2486833307244255717

`A106616(A330741((2*n+1)²))/A001221(A131261(n))`
-/

namespace A196467.P2486833307244255717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106616 (A330741 ((2 * n + 1) ^ 2)).toNat : ℚ) / (A001221 (A131261 n).toNat : ℚ)

end

end A196467.P2486833307244255717

/-!
# A196468: a(1)=11; a(n) = floor((2 + sqrt(8))*a(n-1)) for n > 1.

The programs for A196468, the canonical program `A196468.P5114605880216499664` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196468 has offset 1).

The definition of A196468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2+sqrt(8))*a(n-1))` (program `A196468.P5114605880216499664`, by `A196468.P5114605880216499664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196468.P5114605880216499664

`floor((2+sqrt(8))*a(n-1))` with `a(0)=11`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196468

/-- `floor((2+sqrt(8))*a(n-1))` -/
def P5114605880216499664.Spec : Prop :=
  ∀ n, P5114605880216499664.a n = A196468 (n + 1)

theorem P5114605880216499664.correct : P5114605880216499664.Spec := by
  intro n
  simp only [A196468, Nat.add_sub_cancel]

end A196468

/-! ## A196468.P12683048763319056041

`(2+33*A057087(n+1)+20*A057087(n))/14`
-/

namespace A196468.P12683048763319056041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 33 * A057087 (n + 1) + 20 * A057087 n : ℚ) / 14

end

end A196468.P12683048763319056041

namespace A196468

/-- `(2+33*A057087(n+1)+20*A057087(n))/14` -/
def P12683048763319056041.Spec : Prop :=
  ∀ n, P12683048763319056041.a n = (A196468 (n + 1) : ℚ)

end A196468

/-! ## A196468.P1442507065948830760

`floor(a(n-1)/(3-sqrt(8)))-a(n-1)` with `a(0)=11`
-/

namespace A196468.P1442507065948830760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - a (n - 1)

end

end A196468.P1442507065948830760

namespace A196468

/-- `floor(a(n-1)/(3-sqrt(8)))-a(n-1)` -/
def P1442507065948830760.Spec : Prop :=
  ∀ n, P1442507065948830760.a n = A196468 (n + 1)

end A196468

/-! ## A196468.P1245694582546115946

`A341250(n+1)+2*A218989(n)`
-/

namespace A196468.P1245694582546115946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341250 (n + 1) + 2 * A218989 n

end

end A196468.P1245694582546115946

namespace A196468

/-- `A341250(n+1)+2*A218989(n)` -/
def P1245694582546115946.Spec : Prop :=
  ∀ n, P1245694582546115946.a n = A196468 (n + 1)

end A196468

/-! ## A196468.P9175150700257355606

`3*A218988(n)-A341248(n+1)`
-/

namespace A196468.P9175150700257355606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A218988 n - A341248 (n + 1)

end

end A196468.P9175150700257355606

namespace A196468

/-- `3*A218988(n)-A341248(n+1)` -/
def P9175150700257355606.Spec : Prop :=
  ∀ n, P9175150700257355606.a n = A196468 (n + 1)

end A196468

/-!
# A196469: Coefficients of auxiliary tree counting function S_{1,0}(x).

The programs for A196469, there is no canonical definition to state claims against.
-/

/-! ## A196469.P15446196483378400873

`A330216(∑[2*n])+char[1]`
-/

namespace A196469.P15446196483378400873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330216 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196469.P15446196483378400873

/-! ## A196469.P4925165698985381779

`A330216(round(acot(n)+n)*(n+1))`
-/

namespace A196469.P4925165698985381779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330216 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) * (n + 1 : ℤ)).toNat

end

end A196469.P4925165698985381779

/-! ## A196469.P15423529814507799960

`A330216(A060798(n+1))`
-/

namespace A196469.P15423529814507799960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330216 (A060798 (n + 1)).toNat

end

end A196469.P15423529814507799960

/-! ## A196469.P14794567883745438017

`A330216(lcm(n, A066560(n+1)))`
-/

namespace A196469.P14794567883745438017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330216 (Int.lcm (n : ℤ) (A066560 (n + 1)))

end

end A196469.P14794567883745438017

/-!
# A196470: Coefficients of auxiliary tree counting function S_{0,1}(x).

The programs for A196470, there is no canonical definition to state claims against.
-/

/-! ## A196470.P16438403460660847124

`A003074(A122393(n))`
-/

namespace A196470.P16438403460660847124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A122393 n).toNat

end

end A196470.P16438403460660847124

/-! ## A196470.P1553551836807674552

`A003074(A149378(n+1))`
-/

namespace A196470.P1553551836807674552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A149378 (n + 1)).toNat

end

end A196470.P1553551836807674552

/-! ## A196470.P17085631468970503383

`A003074(A149379(n+1))`
-/

namespace A196470.P17085631468970503383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A149379 (n + 1)).toNat

end

end A196470.P17085631468970503383

/-!
# A196471: Coefficients of auxiliary tree counting function S_{1,1}(x).

The programs for A196471, there is no canonical definition to state claims against.
-/

/-! ## A196471.P12745245162739089536

`A299496(round(ϕ*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A196471.P12745245162739089536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A299496 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A196471.P12745245162739089536

/-!
# A196472: a(1)=1; a(n) = floor((3 + sqrt(21))*a(n-1)/2) for n > 1.

The programs for A196472, the canonical program `A196472.P15503252720201033814` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196472 has offset 1).

The definition of A196472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3+sqrt(21))*a(n-1)/2)` (program `A196472.P15503252720201033814`, by `A196472.P15503252720201033814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196472.P15503252720201033814

`floor((3+sqrt(21))*a(n-1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196472

/-- `floor((3+sqrt(21))*a(n-1)/2)` -/
def P15503252720201033814.Spec : Prop :=
  ∀ n, P15503252720201033814.a n = A196472 (n + 1)

theorem P15503252720201033814.correct : P15503252720201033814.Spec := by
  intro n
  simp only [A196472, Nat.add_sub_cancel]

end A196472

/-! ## A196472.P17219317726084949224

`(3+2*A108306(n+1))/15`
-/

namespace A196472.P17219317726084949224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + 2 * A108306 (n + 1) : ℚ) / 15

end

end A196472.P17219317726084949224

namespace A196472

/-- `(3+2*A108306(n+1))/15` -/
def P17219317726084949224.Spec : Prop :=
  ∀ n, P17219317726084949224.a n = (A196472 (n + 1) : ℚ)

end A196472

/-! ## A196472.P11346842712139658523

`∑[ogf((-1+x+x^2)/(-1+3x+3x^2))]`
-/

namespace A196472.P11346842712139658523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196472.P11346842712139658523

namespace A196472

/-- `∑[ogf((-1+x+x^2)/(-1+3x+3x^2))]` -/
def P11346842712139658523.Spec : Prop :=
  ∀ n, P11346842712139658523.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P14005397481889073242

`ogf((1-x-x^2)/(1-4x+3x^3))`
-/

namespace A196472.P14005397481889073242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 0, 3] n

end

end A196472.P14005397481889073242

namespace A196472

/-- `ogf((1-x-x^2)/(1-4x+3x^3))` -/
def P14005397481889073242.Spec : Prop :=
  ∀ n, P14005397481889073242.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P11360552905932985382

`3*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=3`
-/

namespace A196472.P11360552905932985382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - 1

end

end A196472.P11360552905932985382

namespace A196472

/-- `3*(a(n-1)+a(n-2))-1` -/
def P11360552905932985382.Spec : Prop :=
  ∀ n, P11360552905932985382.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P3247225416025194068

`lcm(3, a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=3`
-/

namespace A196472.P3247225416025194068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 3 (a (n - 1) + a (n - 2)) : ℤ) - 1

end

end A196472.P3247225416025194068

namespace A196472

/-- `lcm(3, a(n-1)+a(n-2))-1` -/
def P3247225416025194068.Spec : Prop :=
  ∀ n, P3247225416025194068.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P3262788565695321508

`2-3*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A196472.P3262788565695321508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A196472.P3262788565695321508

namespace A196472

/-- `2-3*(1-a(n-1)-a(n-2))` -/
def P3262788565695321508.Spec : Prop :=
  ∀ n, P3262788565695321508.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P17069019582926603186

`∑[A155116(n)]`
-/

namespace A196472.P17069019582926603186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196472.P17069019582926603186

namespace A196472

/-- `∑[A155116(n)]` -/
def P17069019582926603186.Spec : Prop :=
  ∀ n, P17069019582926603186.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P1776890191824960789

`A108306(n)+A134927(n)-A103820(n)`
-/

namespace A196472.P1776890191824960789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 n + (A134927 n - A103820 n)

end

end A196472.P1776890191824960789

namespace A196472

/-- `A108306(n)+A134927(n)-A103820(n)` -/
def P1776890191824960789.Spec : Prop :=
  ∀ n, P1776890191824960789.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P11124711702987698956

`A134927(n+1)+A134927(n)-A103820(n)`
-/

namespace A196472.P11124711702987698956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134927 (n + 1) + (A134927 n - A103820 n)

end

end A196472.P11124711702987698956

namespace A196472

/-- `A134927(n+1)+A134927(n)-A103820(n)` -/
def P11124711702987698956.Spec : Prop :=
  ∀ n, P11124711702987698956.a n = A196472 (n + 1)

end A196472

/-! ## A196472.P8342622250606240972

`round(A180142(n+1)/5)`
-/

namespace A196472.P8342622250606240972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A180142 (n + 1) : ℚ) / 5)

end

end A196472.P8342622250606240972

namespace A196472

/-- `round(A180142(n+1)/5)` -/
def P8342622250606240972.Spec : Prop :=
  ∀ n, P8342622250606240972.a n = A196472 (n + 1)

end A196472

/-!
# A196473: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,3,2,1 for x=0,1,2,3,4.

The programs for A196473, there is no canonical definition to state claims against.
-/

/-! ## A196473.P17559929930745313792

`A196477(∑[4*n]+1)`
-/

namespace A196473.P17559929930745313792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196473.P17559929930745313792

/-! ## A196473.P7580525630461146192

`record[A196477(A152271(n²))]`
-/

namespace A196473.P7580525630461146192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196473.P7580525630461146192

/-! ## A196473.P15751540104242123508

`A196477(A001844(n))+char[15]`
-/

namespace A196473.P15751540104242123508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196473.P15751540104242123508

/-! ## A196473.P11380621783812498949

`record[A003982(n)*A196477(n+1)]`
-/

namespace A196473.P11380621783812498949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196473.P11380621783812498949

/-! ## A196473.P13559430225633087859

`A196477(A001844(n))*A219208(n)`
-/

namespace A196473.P13559430225633087859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A001844 n).toNat * A219208 n

end

end A196473.P13559430225633087859

/-!
# A196474: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,2,1 for x=0,1,2,3,4.

The programs for A196474, there is no canonical definition to state claims against.
-/

/-! ## A196474.P17965357897811851050

`A196477(∑[n+4]+11)`
-/

namespace A196474.P17965357897811851050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A196474.P17965357897811851050

/-! ## A196474.P17481236958698488039

`A196477(A056000(n)+15)+A000045(C(n, 64))`
-/

namespace A196474.P17481236958698488039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A056000 n + 15).toNat + A000045 (Nat.choose n 64)

end

end A196474.P17481236958698488039

/-! ## A196474.P11738081262158462195

`A000041(val(n+1, 13))*A196477(A056000(n)+15)`
-/

namespace A196474.P11738081262158462195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 13) * A196477 (A056000 n + 15).toNat

end

end A196474.P11738081262158462195

/-! ## A196474.P4853131676526045466

`A196477(A051936(n+4)+14)+A000045(C(n, 64))`
-/

namespace A196474.P4853131676526045466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A051936 (n + 4) + 14).toNat + A000045 (Nat.choose n 64)

end

end A196474.P4853131676526045466

/-! ## A196474.P7795887709079437178

`A000041(val(n+1, 13))*A196477(A051936(n+4)+14)`
-/

namespace A196474.P7795887709079437178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 13) * A196477 (A051936 (n + 4) + 14).toNat

end

end A196474.P7795887709079437178

/-!
# A196475: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,2,1 for x=0,1,2,3,4.

The programs for A196475, there is no canonical definition to state claims against.
-/

/-! ## A196475.P12116772314150829424

`A196477(A374007(n+1))`
-/

namespace A196475.P12116772314150829424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A374007 (n + 1)).toNat

end

end A196475.P12116772314150829424

/-! ## A196475.P13726665452390349743

`A196477(A166136(n+4))`
-/

namespace A196475.P13726665452390349743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A166136 (n + 4)).toNat

end

end A196475.P13726665452390349743

/-! ## A196475.P13175949198037980430

`A196477(A056115(n)+21)`
-/

namespace A196475.P13175949198037980430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A056115 n + 21).toNat

end

end A196475.P13175949198037980430

/-! ## A196475.P14336441886636655913

`A196477(A167499(n+4)+1)`
-/

namespace A196475.P14336441886636655913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A167499 (n + 4) + 1).toNat

end

end A196475.P14336441886636655913

/-! ## A196475.P2169274105226740324

`A196477(A133263(n+5)+4)`
-/

namespace A196475.P2169274105226740324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A133263 (n + 5) + 4).toNat

end

end A196475.P2169274105226740324

/-!
# A196476: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,3,2,1 for x=0,1,2,3,4.

The programs for A196476, there is no canonical definition to state claims against.
-/

/-! ## A196476.P15857297156855906426

`A196477(A374008(n+1))`
-/

namespace A196476.P15857297156855906426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A374008 (n + 1)).toNat

end

end A196476.P15857297156855906426

/-! ## A196476.P11598476308379878569

`A196477(eq[11, A066657(n)])`
-/

namespace A196476.P11598476308379878569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196476.P11598476308379878569

/-! ## A196476.P14674009961997367310

`A196477(A167499(n+5)+2)`
-/

namespace A196476.P14674009961997367310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A167499 (n + 5) + 2).toNat

end

end A196476.P14674009961997367310

/-! ## A196476.P6254340369380629594

`A196477(A000124(n+6)+6)`
-/

namespace A196476.P6254340369380629594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A000124 (n + 6) + 6).toNat

end

end A196476.P6254340369380629594

/-! ## A196476.P11410982683742759347

`A196477(A000096(n+5)+8)`
-/

namespace A196476.P11410982683742759347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196477 (A000096 (n + 5) + 8).toNat

end

end A196476.P11410982683742759347

/-!
# A196478: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196478, there is no canonical definition to state claims against.
-/

/-! ## A196478.P10127357977784016713

`A196485(∑[4*n]+1)`
-/

namespace A196478.P10127357977784016713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196478.P10127357977784016713

/-! ## A196478.P11398878097634417000

`record[A196485(Δ[A235355(n)])]`
-/

namespace A196478.P11398878097634417000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196478.P11398878097634417000

/-! ## A196478.P8956593808787164515

`record[A196485(A330613(n+1))]`
-/

namespace A196478.P8956593808787164515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196478.P8956593808787164515

/-! ## A196478.P6274711737793164354

`A196485(A001844(n))+char[8]`
-/

namespace A196478.P6274711737793164354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196478.P6274711737793164354

/-!
# A196479: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196479, there is no canonical definition to state claims against.
-/

/-! ## A196479.P14276761116382426453

`A196485(∑[n+1]+2)`
-/

namespace A196479.P14276761116382426453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196479.P14276761116382426453

/-! ## A196479.P10683235446040801039

`A196718(∑[n+1]+2)`
-/

namespace A196479.P10683235446040801039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196479.P10683235446040801039

/-! ## A196479.P10659559842648227960

`A196485(A000096(n)+3)+char[21]`
-/

namespace A196479.P10659559842648227960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196479.P10659559842648227960

/-! ## A196479.P1704304369238818423

`record[gcd(A196485(n+2), A213191(n))]`
-/

namespace A196479.P1704304369238818423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196485 (n + 2)) (A213191 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196479.P1704304369238818423

/-! ## A196479.P4109055041533769910

`record[gcd(A025581(n), A196718(n+3))]`
-/

namespace A196479.P4109055041533769910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A196718 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196479.P4109055041533769910

/-!
# A196480: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196480, there is no canonical definition to state claims against.
-/

/-! ## A196480.P7568522322330124430

`A196485(∑[n+2]+4)`
-/

namespace A196480.P7568522322330124430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196480.P7568522322330124430

/-! ## A196480.P11421040476510607469

`A196485(A167614(n+1))+char[15]`
-/

namespace A196480.P11421040476510607469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196480.P11421040476510607469

/-! ## A196480.P16456207288480541050

`record[A196485(n+4)/A322384(n+1)]`
-/

namespace A196480.P16456207288480541050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196485 (n + 4) : ℚ) / (A322384 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196480.P16456207288480541050

/-! ## A196480.P16097324794912745497

`A235044(n)+A196485(A167614(n+1))`
-/

namespace A196480.P16097324794912745497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A196485 (A167614 (n + 1)).toNat

end

end A196480.P16097324794912745497

/-! ## A196480.P10663303608816928543

`A196485(A167614(n+1))%A224465(n)`
-/

namespace A196480.P10663303608816928543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196485 (A167614 (n + 1)).toNat) (A224465 n)

end

end A196480.P10663303608816928543

/-!
# A196481: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196481, there is no canonical definition to state claims against.
-/

/-! ## A196481.P968365853562159153

`A196485(A374004(n+1))`
-/

namespace A196481.P968365853562159153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A374004 (n + 1)).toNat

end

end A196481.P968365853562159153

/-! ## A196481.P13366797676634351890

`A196485(A141214(n)+7)`
-/

namespace A196481.P13366797676634351890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A141214 n + 7).toNat

end

end A196481.P13366797676634351890

/-! ## A196481.P13817210311827500511

`A196485(A052905(n)+9)`
-/

namespace A196481.P13817210311827500511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A052905 n + 9).toNat

end

end A196481.P13817210311827500511

/-! ## A196481.P3391969191917132558

`A196485(A055999(n)+10)`
-/

namespace A196481.P3391969191917132558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A055999 n + 10).toNat

end

end A196481.P3391969191917132558

/-! ## A196481.P2561820350609191317

`A196485(eq[5, A066657(n)])`
-/

namespace A196481.P2561820350609191317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196481.P2561820350609191317

/-!
# A196482: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196482, there is no canonical definition to state claims against.
-/

/-! ## A196482.P6084481312811854233

`A196485(A374005(n+1))`
-/

namespace A196482.P6084481312811854233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A374005 (n + 1)).toNat

end

end A196482.P6084481312811854233

/-! ## A196482.P2895869076712495102

`A196485(A167499(n+3))`
-/

namespace A196482.P2895869076712495102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A167499 (n + 3)).toNat

end

end A196482.P2895869076712495102

/-! ## A196482.P14798253658549922914

`A196485(A155212(n)+13)`
-/

namespace A196482.P14798253658549922914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A155212 n + 13).toNat

end

end A196482.P14798253658549922914

/-! ## A196482.P17721145565349417160

`A196485(A056000(n)+15)`
-/

namespace A196482.P17721145565349417160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A056000 n + 15).toNat

end

end A196482.P17721145565349417160

/-! ## A196482.P3376093607262124850

`A196485(eq[7, A066657(n)])`
-/

namespace A196482.P3376093607262124850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196482.P3376093607262124850

/-!
# A196483: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196483, there is no canonical definition to state claims against.
-/

/-! ## A196483.P1544968873433227164

`A196485(A374007(n+1))`
-/

namespace A196483.P1544968873433227164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A374007 (n + 1)).toNat

end

end A196483.P1544968873433227164

/-! ## A196483.P13576917353604643641

`A196485(A166136(n+4))`
-/

namespace A196483.P13576917353604643641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A166136 (n + 4)).toNat

end

end A196483.P13576917353604643641

/-! ## A196483.P1017919602909253385

`A196485(A056115(n)+21)`
-/

namespace A196483.P1017919602909253385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A056115 n + 21).toNat

end

end A196483.P1017919602909253385

/-! ## A196483.P7554928787775184201

`A196485(A167499(n+4)+1)`
-/

namespace A196483.P7554928787775184201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A167499 (n + 4) + 1).toNat

end

end A196483.P7554928787775184201

/-! ## A196483.P14286369987098919241

`A196485(A167487(n+4)-1)`
-/

namespace A196483.P14286369987098919241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A167487 (n + 4) - 1).toNat

end

end A196483.P14286369987098919241

/-!
# A196484: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196484, there is no canonical definition to state claims against.
-/

/-! ## A196484.P1082384604029395403

`A196485(A374008(n+1))`
-/

namespace A196484.P1082384604029395403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A374008 (n + 1)).toNat

end

end A196484.P1082384604029395403

/-! ## A196484.P10581909559221629313

`A196485(A302537(n)+27)`
-/

namespace A196484.P10581909559221629313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A302537 n + 27).toNat

end

end A196484.P10581909559221629313

/-! ## A196484.P8145858177199813886

`A196485(eq[11, A066657(n)])`
-/

namespace A196484.P8145858177199813886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196484.P8145858177199813886

/-! ## A196484.P4920709629138819472

`A196485(A167614(n+5)+4)`
-/

namespace A196484.P4920709629138819472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A167614 (n + 5) + 4).toNat

end

end A196484.P4920709629138819472

/-! ## A196484.P3893808005060008777

`A196485(A141214(n+3)+10)`
-/

namespace A196484.P3893808005060008777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A141214 (n + 3) + 10).toNat

end

end A196484.P3893808005060008777

/-!
# A196485: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196485, there is no canonical definition to state claims against.
-/

/-! ## A196485.P10121802248426720048

`A118759(A196718(n+1))`
-/

namespace A196485.P10121802248426720048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A196718 (n + 1)).toNat

end

end A196485.P10121802248426720048

/-! ## A196485.P6477511103397318531

`A196718(A000005(2^n))`
-/

namespace A196485.P6477511103397318531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A000005 (2 ^ n)).toNat

end

end A196485.P6477511103397318531

/-! ## A196485.P17757314923473459206

`A000188(A196718(n+1)²)`
-/

namespace A196485.P17757314923473459206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A196718 (n + 1) ^ 2).toNat

end

end A196485.P17757314923473459206

/-! ## A196485.P5104552752438808976

`A000194(A196718(n+1)²)`
-/

namespace A196485.P5104552752438808976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A196718 (n + 1) ^ 2).toNat

end

end A196485.P5104552752438808976

/-! ## A196485.P15202899720501816275

`A000196(A196718(n+1)²)`
-/

namespace A196485.P15202899720501816275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196718 (n + 1) ^ 2).toNat

end

end A196485.P15202899720501816275

/-!
# A196487: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196487, there is no canonical definition to state claims against.
-/

/-! ## A196487.P11293620962192192870

`A196493(∑[4*n]+1)`
-/

namespace A196487.P11293620962192192870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196487.P11293620962192192870

/-! ## A196487.P7600472046628668960

`gcd(A000038(n), A196493(A001844(n)))`
-/

namespace A196487.P7600472046628668960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196493 (A001844 n).toNat)

end

end A196487.P7600472046628668960

/-! ## A196487.P288167028620584033

`or(A000007(n), A196493(A001844(n)))`
-/

namespace A196487.P288167028620584033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196493 (A001844 n).toNat)

end

end A196487.P288167028620584033

/-! ## A196487.P18327056448811017897

`or(A028718(n), A196493(A001844(n)))`
-/

namespace A196487.P18327056448811017897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028718 n) (A196493 (A001844 n).toNat)

end

end A196487.P18327056448811017897

/-! ## A196487.P2371236804565592807

`A007318(A000217(n))*A196493(A001844(n))`
-/

namespace A196487.P2371236804565592807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A196493 (A001844 n).toNat

end

end A196487.P2371236804565592807

/-!
# A196488: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196488, there is no canonical definition to state claims against.
-/

/-! ## A196488.P1631969500022011413

`A196493(∑[n+2]+4)`
-/

namespace A196488.P1631969500022011413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196488.P1631969500022011413

/-! ## A196488.P5789563261006713285

`or(1, A196493(A167614(n+1)))`
-/

namespace A196488.P5789563261006713285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196493 (A167614 (n + 1)).toNat)

end

end A196488.P5789563261006713285

/-! ## A196488.P340381220768682948

`A196493(A167614(n+1))+A011742(n)`
-/

namespace A196488.P340381220768682948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A167614 (n + 1)).toNat + A011742 n

end

end A196488.P340381220768682948

/-! ## A196488.P13736301461753179960

`A196493(A167614(n+1))+A025443(n)`
-/

namespace A196488.P13736301461753179960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A167614 (n + 1)).toNat + A025443 n

end

end A196488.P13736301461753179960

/-! ## A196488.P3881828708642114216

`A016240(n)*A196493(A167614(n+1))`
-/

namespace A196488.P3881828708642114216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A196493 (A167614 (n + 1)).toNat

end

end A196488.P3881828708642114216

/-!
# A196489: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196489, there is no canonical definition to state claims against.
-/

/-! ## A196489.P6142069007336468787

`A196493(A374004(n+1))`
-/

namespace A196489.P6142069007336468787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A374004 (n + 1)).toNat

end

end A196489.P6142069007336468787

/-! ## A196489.P9972917449701955120

`A196493(A141214(n)+7)`
-/

namespace A196489.P9972917449701955120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A141214 n + 7).toNat

end

end A196489.P9972917449701955120

/-! ## A196489.P13556261083848585230

`A196493(A052905(n)+9)`
-/

namespace A196489.P13556261083848585230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A052905 n + 9).toNat

end

end A196489.P13556261083848585230

/-! ## A196489.P4115991721091639253

`A196493(A055999(n)+10)`
-/

namespace A196489.P4115991721091639253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A055999 n + 10).toNat

end

end A196489.P4115991721091639253

/-! ## A196489.P13164989541028745058

`A196493(A167614(n+2)+1)`
-/

namespace A196489.P13164989541028745058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A167614 (n + 2) + 1).toNat

end

end A196489.P13164989541028745058

/-!
# A196490: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196490, there is no canonical definition to state claims against.
-/

/-! ## A196490.P1897798575228303335

`A196493(A374005(n+1))`
-/

namespace A196490.P1897798575228303335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A374005 (n + 1)).toNat

end

end A196490.P1897798575228303335

/-! ## A196490.P4549934041077015510

`A196493(A167499(n+3))`
-/

namespace A196490.P4549934041077015510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A167499 (n + 3)).toNat

end

end A196490.P4549934041077015510

/-! ## A196490.P15761319308644066350

`A196493(A155212(n)+13)`
-/

namespace A196490.P15761319308644066350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A155212 n + 13).toNat

end

end A196490.P15761319308644066350

/-! ## A196490.P710948824199905087

`A196493(A056000(n)+15)`
-/

namespace A196490.P710948824199905087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A056000 n + 15).toNat

end

end A196490.P710948824199905087

/-! ## A196490.P967252719403326270

`A196493(A000124(n+4)+4)`
-/

namespace A196490.P967252719403326270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A000124 (n + 4) + 4).toNat

end

end A196490.P967252719403326270

/-!
# A196491: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196491, there is no canonical definition to state claims against.
-/

/-! ## A196491.P12345242350069258711

`A196493(A374007(n+1))`
-/

namespace A196491.P12345242350069258711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A374007 (n + 1)).toNat

end

end A196491.P12345242350069258711

/-! ## A196491.P584266068468730735

`A196493(eq[7, A131818(n+1)])`
-/

namespace A196491.P584266068468730735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196491.P584266068468730735

/-! ## A196491.P14713890767628121557

`A196493(A052905(n+3))`
-/

namespace A196491.P14713890767628121557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A052905 (n + 3)).toNat

end

end A196491.P14713890767628121557

/-! ## A196491.P11153635094133649452

`A196493(eq[3, A219347(n)])`
-/

namespace A196491.P11153635094133649452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196491.P11153635094133649452

/-! ## A196491.P3634179662407652802

`record[A196493(A052905(A008611(n)))]`
-/

namespace A196491.P3634179662407652802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196491.P3634179662407652802

/-!
# A196492: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196492, there is no canonical definition to state claims against.
-/

/-! ## A196492.P15352320084301519853

`A196493(A374008(n+1))`
-/

namespace A196492.P15352320084301519853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A374008 (n + 1)).toNat

end

end A196492.P15352320084301519853

/-! ## A196492.P7907265253889688890

`A196493(eq[8, A131818(n+1)])`
-/

namespace A196492.P7907265253889688890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196492.P7907265253889688890

/-! ## A196492.P13839598976186812715

`A196493(A055999(n+4))`
-/

namespace A196492.P13839598976186812715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A055999 (n + 4)).toNat

end

end A196492.P13839598976186812715

/-! ## A196492.P4145420928040552371

`A196493(eq[4, A219347(n)])`
-/

namespace A196492.P4145420928040552371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196492.P4145420928040552371

/-! ## A196492.P13765927225793987377

`A196493(eq[6, A193592(n)])`
-/

namespace A196492.P13765927225793987377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196492.P13765927225793987377

/-!
# A196493: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196493, there is no canonical definition to state claims against.
-/

/-! ## A196493.P14380683454819318158

`A112649(A135966(n))`
-/

namespace A196493.P14380683454819318158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112649 (A135966 n).toNat

end

end A196493.P14380683454819318158

/-! ## A196493.P6376679513490022628

`A120452(A077028(n)%A350241(2*n+3))`
-/

namespace A196493.P6376679513490022628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (Int.tmod (A077028 n) (A350241 (2 * n + 3))).toNat

end

end A196493.P6376679513490022628

/-! ## A196493.P14545669001408448787

`A120452(A077028(n))%A165288(3*n+2)`
-/

namespace A196493.P14545669001408448787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120452 (A077028 n).toNat) (A165288 (3 * n + 2))

end

end A196493.P14545669001408448787

/-!
# A196497: G.f. satisfies: A( x*A(-x)/A(x) ) = 1 + x.

The programs for A196497, there is no canonical definition to state claims against.
-/

/-! ## A196497.P17308518672768035334

`A375114(A018819(n)*A145345(n))`
-/

namespace A196497.P17308518672768035334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375114 (A018819 n * A145345 n).toNat

end

end A196497.P17308518672768035334

/-! ## A196497.P2594434946416702792

`A110654(A324013(n)+A261001(n+1))`
-/

namespace A196497.P2594434946416702792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A324013 n + A261001 (n + 1)).toNat

end

end A196497.P2594434946416702792

/-! ## A196497.P6050458066894705164

`A004396(or(A072963(n+1), A136281(n)))`
-/

namespace A196497.P6050458066894705164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (A072963 (n + 1)) (A136281 n)).toNat

end

end A196497.P6050458066894705164

/-!
# A196499: Numbers k such that the greatest residue of the congruence x^k (mod k) equals k-1 for x in [0..k-1].

The programs for A196499, the canonical program `A196499.P3306308880413504659` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196499 has offset 1).

The definition of A196499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196499.P3306308880413504659

`comp[2*comp[A004613(n+1)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A196499

/-- `comp[2*comp[A004613(n+1)]]` -/
def P3306308880413504659.Spec : Prop :=
  ∀ n, (P3306308880413504659.a n : ℤ) = A196499 (n + 1)

theorem P3306308880413504659.correct : P3306308880413504659.Spec := by
  intro n
  simp only [A196499, Nat.add_sub_cancel]

end A196499

/-! ## A196499.P8776660623339105501

`comp[2*comp[A170818(n+1)]]`
-/

namespace A196499.P8776660623339105501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196499.P8776660623339105501

namespace A196499

/-- `comp[2*comp[A170818(n+1)]]` -/
def P8776660623339105501.Spec : Prop :=
  ∀ n, (P8776660623339105501.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P11471753047234865425

`∪[A008784(n+1), Δ[n²]]`
-/

namespace A196499.P11471753047234865425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P11471753047234865425

namespace A196499

/-- `∪[A008784(n+1), Δ[n²]]` -/
def P11471753047234865425.Spec : Prop :=
  ∀ n, (P11471753047234865425.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P5452207259808055318

`comp[2*comp[A072436(2*n+1)]]`
-/

namespace A196499.P5452207259808055318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196499.P5452207259808055318

namespace A196499

/-- `comp[2*comp[A072436(2*n+1)]]` -/
def P5452207259808055318.Spec : Prop :=
  ∀ n, (P5452207259808055318.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P3216956902642235945

`∪[A004280(n+1), A008784(n+1)]`
-/

namespace A196499.P3216956902642235945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P3216956902642235945

namespace A196499

/-- `∪[A004280(n+1), A008784(n+1)]` -/
def P3216956902642235945.Spec : Prop :=
  ∀ n, (P3216956902642235945.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P6334666058438121315

`∪[A005818(n+1), A008784(n+1)]`
-/

namespace A196499.P6334666058438121315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P6334666058438121315

namespace A196499

/-- `∪[A005818(n+1), A008784(n+1)]` -/
def P6334666058438121315.Spec : Prop :=
  ∀ n, (P6334666058438121315.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P2567997593448091712

`∪[A144396(n+1), A008784(n+1)]`
-/

namespace A196499.P2567997593448091712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P2567997593448091712

namespace A196499

/-- `∪[A144396(n+1), A008784(n+1)]` -/
def P2567997593448091712.Spec : Prop :=
  ∀ n, (P2567997593448091712.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P3331229934956864322

`∪[A004280(n+1), A174051(n+1)]`
-/

namespace A196499.P3331229934956864322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P3331229934956864322

namespace A196499

/-- `∪[A004280(n+1), A174051(n+1)]` -/
def P3331229934956864322.Spec : Prop :=
  ∀ n, (P3331229934956864322.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P6720224895633803862

`record[n+1-A001842(n+1-A000265(n+1))]`
-/

namespace A196499.P6720224895633803862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001842 ((n + 1 : ℤ) - A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196499.P6720224895633803862

namespace A196499

/-- `record[n+1-A001842(n+1-A000265(n+1))]` -/
def P6720224895633803862.Spec : Prop :=
  ∀ n, P6720224895633803862.a n = A196499 (n + 1)

end A196499

/-! ## A196499.P10270931576800197942

`eq[A227781(n+1), A227781(A141310(n))]+1`
-/

namespace A196499.P10270931576800197942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A196499.P10270931576800197942

namespace A196499

/-- `eq[A227781(n+1), A227781(A141310(n))]+1` -/
def P10270931576800197942.Spec : Prop :=
  ∀ n, (P10270931576800197942.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P1909528701162297946

`lt[A152271(n), A004277(A170818(n+1))]+1`
-/

namespace A196499.P1909528701162297946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A196499.P1909528701162297946

namespace A196499

/-- `lt[A152271(n), A004277(A170818(n+1))]+1` -/
def P1909528701162297946.Spec : Prop :=
  ∀ n, (P1909528701162297946.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P5359438045441706636

`eq[A001842(n)*A035444(2*n), A035444(3*n)]`
-/

namespace A196499.P5359438045441706636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n * A035444 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196499.P5359438045441706636

namespace A196499

/-- `eq[A001842(n)*A035444(2*n), A035444(3*n)]` -/
def P5359438045441706636.Spec : Prop :=
  ∀ n, (P5359438045441706636.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P12409627087905794817

`eq[A035444(2*n)*A260728(n), A035444(3*n)]`
-/

namespace A196499.P12409627087905794817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n) * A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196499.P12409627087905794817

namespace A196499

/-- `eq[A035444(2*n)*A260728(n), A035444(3*n)]` -/
def P12409627087905794817.Spec : Prop :=
  ∀ n, (P12409627087905794817.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P1434339348758092690

`eq[A034178(A008458(n)), A290081(n)]`
-/

namespace A196499.P1434339348758092690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196499.P1434339348758092690

namespace A196499

/-- `eq[A034178(A008458(n)), A290081(n)]` -/
def P1434339348758092690.Spec : Prop :=
  ∀ n, (P1434339348758092690.a n : ℤ) = A196499 (n + 1)

end A196499

