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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A196410: a(n) = n*2^(n-5).

The programs for A196410, the canonical program `A196410.P1220960374601197139` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196410 has offset 5).

The definition of A196410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)*2^n` (program `A196410.P1220960374601197139`, by `A196410.P1220960374601197139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196410.P1220960374601197139

`(n+5)*2^n`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A196410.P10742523344913301609

`(n+5)*∑[2*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A196410.P10742523344913301609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196410.P10742523344913301609

namespace A196410

/-- `(n+5)*∑[2*a(n-1)]` -/
def P10742523344913301609.Spec : Prop :=
  ∀ n, (P10742523344913301609.a n : ℤ) = A196410 (n + 5)

end A196410

/-! ## A196410.P1077304701680423015

`4*(a(n-1)-a(n-2))` with `a(0)=5, a(1)=12`
-/

namespace A196410.P1077304701680423015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 12] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A196410.P1077304701680423015

namespace A196410

/-- `4*(a(n-1)-a(n-2))` -/
def P1077304701680423015.Spec : Prop :=
  ∀ n, P1077304701680423015.a n = A196410 (n + 5)

theorem P1077304701680423015.correct : P1077304701680423015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A196410, Nat.add_sub_cancel, A196410.P1077304701680423015.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A196410, Nat.add_sub_cancel, A196410.P1077304701680423015.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A196410

/-! ## A196410.P10278847643115042542

`2^n+a(n-1)+a(n-1)` with `a(0)=5`
-/

namespace A196410.P10278847643115042542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  2 ^ n + (a (n - 1) + a (n - 1))

end

end A196410.P10278847643115042542

namespace A196410

/-- `2^n+a(n-1)+a(n-1)` -/
def P10278847643115042542.Spec : Prop :=
  ∀ n, (P10278847643115042542.a n : ℤ) = A196410 (n + 5)

theorem P10278847643115042542.correct : P10278847643115042542.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A196410, Nat.add_sub_cancel, A196410.P10278847643115042542.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A196410, Nat.add_sub_cancel, A196410.P10278847643115042542.a, A196410.P1220960374601197139.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A196410

/-! ## A196410.P15594552572107007271

`A045623(2+n)`
-/

namespace A196410.P15594552572107007271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 + n)

end

end A196410.P15594552572107007271

namespace A196410

/-- `A045623(2+n)` -/
def P15594552572107007271.Spec : Prop :=
  ∀ n, P15594552572107007271.a n = A196410 (n + 5)

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

theorem P9578502576904794447.correct : P9578502576904794447.Spec := by
  intro n
  simp only [A196410, Nat.add_sub_cancel, A196410.P9578502576904794447.a, A196410.P1220960374601197139.a, A027993, A027993.P14239098711139684117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-! ## A196410.P14492383272164503723

`A036289(n)+A020714(n)`
-/

namespace A196410.P14492383272164503723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A020714 n

end

end A196410.P14492383272164503723

namespace A196410

/-- `A036289(n)+A020714(n)` -/
def P14492383272164503723.Spec : Prop :=
  ∀ n, P14492383272164503723.a n = A196410 (n + 5)

theorem P14492383272164503723.correct : P14492383272164503723.Spec := by
  intro n
  simp only [A196410, Nat.add_sub_cancel, A196410.P14492383272164503723.a, A196410.P1220960374601197139.a, A020714, A020714.P4672987561035728998.a, A036289, A036289.P13525419631139213940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196410

/-!
# A196411: a(n) = n! - n^4.

The programs for A196411, the canonical program `A196411.P7957782021250191538` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196411 has offset 0).

The definition of A196411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n^4` (program `A196411.P7957782021250191538`, by `A196411.P7957782021250191538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196411.P7957782021250191538

`n!-n^4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196411

/-- `n!-n^4` -/
def P7957782021250191538.Spec : Prop :=
  ∀ n, P7957782021250191538.a n = A196411 n

theorem P7957782021250191538.correct : P7957782021250191538.Spec := by
  intro n
  simp only [A196411]

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

/-! ## A196411.P12668218017702074088

`A000142(n)-n^4`
-/

namespace A196411.P12668218017702074088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n ^ 4 : ℤ)

end

end A196411.P12668218017702074088

namespace A196411

/-- `A000142(n)-n^4` -/
def P12668218017702074088.Spec : Prop :=
  ∀ n, P12668218017702074088.a n = A196411 n

end A196411

/-! ## A196411.P5054384517867919063

`Δ[A003422(n)]-n^4`
-/

namespace A196411.P5054384517867919063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 4 : ℤ)

end

end A196411.P5054384517867919063

namespace A196411

/-- `Δ[A003422(n)]-n^4` -/
def P5054384517867919063.Spec : Prop :=
  ∀ n, P5054384517867919063.a n = A196411 n

end A196411

/-! ## A196411.P7799927292846678142

`∑[A094304(n+1)]-A000583(n)`
-/

namespace A196411.P7799927292846678142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000583 n

end

end A196411.P7799927292846678142

namespace A196411

/-- `∑[A094304(n+1)]-A000583(n)` -/
def P7799927292846678142.Spec : Prop :=
  ∀ n, P7799927292846678142.a n = A196411 n

end A196411

/-! ## A196411.P5367258712701509607

`(n+1)!/(n+1)-n²²`
-/

namespace A196411.P5367258712701509607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (n + 1 : ℚ) - ((n ^ 2) ^ 2 : ℚ)

end

end A196411.P5367258712701509607

namespace A196411

/-- `(n+1)!/(n+1)-n²²` -/
def P5367258712701509607.Spec : Prop :=
  ∀ n, P5367258712701509607.a n = (A196411 n : ℚ)

end A196411

/-!
# A196412: a(n) = n! - n^5.

The programs for A196412, the canonical program `A196412.P169885604373004639` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196412 has offset 0).

The definition of A196412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n^5` (program `A196412.P169885604373004639`, by `A196412.P169885604373004639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196412.P169885604373004639

`n!-n^5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196412

/-- `n!-n^5` -/
def P169885604373004639.Spec : Prop :=
  ∀ n, P169885604373004639.a n = A196412 n

theorem P169885604373004639.correct : P169885604373004639.Spec := by
  intro n
  simp only [A196412]

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

theorem P7025513012562006405.correct : P7025513012562006405.Spec := by
  intro n
  simp only [A196412, Nat.add_sub_cancel, A196412.P7025513012562006405.a, A196412.P169885604373004639.a, A131471, A131471.P12482115226042697987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A196413: a(n) = n! - n^6.

The programs for A196413, the canonical program `A196413.P17311584269030540824` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196413 has offset 0).

The definition of A196413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n^6` (program `A196413.P17311584269030540824`, by `A196413.P17311584269030540824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196413.P17311584269030540824

`n!-n^6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196413

/-- `n!-n^6` -/
def P17311584269030540824.Spec : Prop :=
  ∀ n, P17311584269030540824.a n = A196413 n

theorem P17311584269030540824.correct : P17311584269030540824.Spec := by
  intro n
  simp only [A196413]

end A196413

/-! ## A196413.P8878204974419810536

`A000142(n)-n^6`
-/

namespace A196413.P8878204974419810536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n ^ 6 : ℤ)

end

end A196413.P8878204974419810536

namespace A196413

/-- `A000142(n)-n^6` -/
def P8878204974419810536.Spec : Prop :=
  ∀ n, P8878204974419810536.a n = A196413 n

end A196413

/-! ## A196413.P14003891501236683921

`Δ[A003422(n)]-n^6`
-/

namespace A196413.P14003891501236683921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 6 : ℤ)

end

end A196413.P14003891501236683921

namespace A196413

/-- `Δ[A003422(n)]-n^6` -/
def P14003891501236683921.Spec : Prop :=
  ∀ n, P14003891501236683921.a n = A196413 n

end A196413

/-! ## A196413.P3056916794131548964

`A038507(n)-(n^6+1)`
-/

namespace A196413.P3056916794131548964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n - (n ^ 6 + 1 : ℤ)

end

end A196413.P3056916794131548964

namespace A196413

/-- `A038507(n)-(n^6+1)` -/
def P3056916794131548964.Spec : Prop :=
  ∀ n, P3056916794131548964.a n = A196413 n

theorem P3056916794131548964.correct : P3056916794131548964.Spec := by
  intro n
  simp only [A196413, Nat.add_sub_cancel, A196413.P3056916794131548964.a, A196413.P17311584269030540824.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196413

/-! ## A196413.P7661468735602366421

`A104150(n+1)-n^6`
-/

namespace A196413.P7661468735602366421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) - (n ^ 6 : ℤ)

end

end A196413.P7661468735602366421

namespace A196413

/-- `A104150(n+1)-n^6` -/
def P7661468735602366421.Spec : Prop :=
  ∀ n, P7661468735602366421.a n = A196413 n

end A196413

/-! ## A196413.P5591497056365912353

`∑[A094304(n+1)]-n^6`
-/

namespace A196413.P5591497056365912353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 6 : ℤ)

end

end A196413.P5591497056365912353

namespace A196413

/-- `∑[A094304(n+1)]-n^6` -/
def P5591497056365912353.Spec : Prop :=
  ∀ n, P5591497056365912353.a n = A196413 n

end A196413

/-! ## A196413.P17637910692838156433

`A173333(C(n, 2)+1)-n^6`
-/

namespace A196413.P17637910692838156433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (Nat.choose n 2 + 1) - (n ^ 6 : ℤ)

end

end A196413.P17637910692838156433

namespace A196413

/-- `A173333(C(n, 2)+1)-n^6` -/
def P17637910692838156433.Spec : Prop :=
  ∀ n, P17637910692838156433.a n = A196413 n

end A196413

/-! ## A196413.P2312391341263987563

`A024004(n)+A000142(n)-1`
-/

namespace A196413.P2312391341263987563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024004 n + (A000142 n - 1)

end

end A196413.P2312391341263987563

namespace A196413

/-- `A024004(n)+A000142(n)-1` -/
def P2312391341263987563.Spec : Prop :=
  ∀ n, P2312391341263987563.a n = A196413 n

theorem P2312391341263987563.correct : P2312391341263987563.Spec := by
  intro n
  simp only [A196413, Nat.add_sub_cancel, A196413.P2312391341263987563.a, A196413.P17311584269030540824.a, A000142, A000142.P3272619076580183195.a, A024004, A024004.P15699754415325832181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196413

/-! ## A196413.P6989026147357898321

`∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]-A000578(n²)`
-/

namespace A196413.P6989026147357898321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A000522 k : ℚ) * (Nat.choose n k : ℚ) - (A000578 (n ^ 2) : ℚ)

end

end A196413.P6989026147357898321

namespace A196413

/-- `∑{#}[n, (-1)^(n-#)*A000522(#)*C(n, #)]-A000578(n²)` -/
def P6989026147357898321.Spec : Prop :=
  ∀ n, P6989026147357898321.a n = (A196413 n : ℚ)

end A196413

/-!
# A196414: a(n) = n! - n^7.

The programs for A196414, the canonical program `A196414.P6804954905083941619` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196414 has offset 0).

The definition of A196414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n^7` (program `A196414.P6804954905083941619`, by `A196414.P6804954905083941619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196414.P6804954905083941619

`n!-n^7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196414

/-- `n!-n^7` -/
def P6804954905083941619.Spec : Prop :=
  ∀ n, P6804954905083941619.a n = A196414 n

theorem P6804954905083941619.correct : P6804954905083941619.Spec := by
  intro n
  simp only [A196414]

end A196414

/-! ## A196414.P13637205012076482431

`A000142(n)-n^7`
-/

namespace A196414.P13637205012076482431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n ^ 7 : ℤ)

end

end A196414.P13637205012076482431

namespace A196414

/-- `A000142(n)-n^7` -/
def P13637205012076482431.Spec : Prop :=
  ∀ n, P13637205012076482431.a n = A196414 n

end A196414

/-! ## A196414.P11742437112692776983

`A024005(n)+n!-1`
-/

namespace A196414.P11742437112692776983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024005 n + ((Nat.factorial n : ℤ) - 1)

end

end A196414.P11742437112692776983

namespace A196414

/-- `A024005(n)+n!-1` -/
def P11742437112692776983.Spec : Prop :=
  ∀ n, P11742437112692776983.a n = A196414 n

theorem P11742437112692776983.correct : P11742437112692776983.Spec := by
  intro n
  simp only [A196414, Nat.add_sub_cancel, A196414.P11742437112692776983.a, A196414.P6804954905083941619.a, A024005, A024005.P8923362675459539356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196414

/-! ## A196414.P13917901575714383169

`Δ[A003422(n)]-n^7`
-/

namespace A196414.P13917901575714383169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 7 : ℤ)

end

end A196414.P13917901575714383169

namespace A196414

/-- `Δ[A003422(n)]-n^7` -/
def P13917901575714383169.Spec : Prop :=
  ∀ n, P13917901575714383169.a n = A196414 n

end A196414

/-! ## A196414.P14101630239652990986

`A033312(n)-n^7+1`
-/

namespace A196414.P14101630239652990986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n - (n ^ 7 : ℤ) + 1

end

end A196414.P14101630239652990986

namespace A196414

/-- `A033312(n)-n^7+1` -/
def P14101630239652990986.Spec : Prop :=
  ∀ n, P14101630239652990986.a n = A196414 n

theorem P14101630239652990986.correct : P14101630239652990986.Spec := by
  intro n
  simp only [A196414, Nat.add_sub_cancel, A196414.P14101630239652990986.a, A196414.P6804954905083941619.a, A033312, A033312.P12652974073192440444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196414

/-! ## A196414.P12700317844078906249

`A047920(A000217(n))-n^7`
-/

namespace A196414.P12700317844078906249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat - (n ^ 7 : ℤ)

end

end A196414.P12700317844078906249

namespace A196414

/-- `A047920(A000217(n))-n^7` -/
def P12700317844078906249.Spec : Prop :=
  ∀ n, P12700317844078906249.a n = A196414 n

end A196414

/-! ## A196414.P2410594608971373970

`∑[A094304(n+1)]-A001015(n)`
-/

namespace A196414.P2410594608971373970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001015 n

end

end A196414.P2410594608971373970

namespace A196414

/-- `∑[A094304(n+1)]-A001015(n)` -/
def P2410594608971373970.Spec : Prop :=
  ∀ n, P2410594608971373970.a n = A196414 n

end A196414

/-!
# A196415: Values of n such that (product of first n composite numbers) / (sum of first n composite numbers) is an integer.

The programs for A196415, there is no canonical definition to state claims against.
-/

/-! ## A196415.P13035843510065768338

`A065855(A141089(1+n))`
-/

namespace A196415.P13035843510065768338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A141089 (1 + n)).toNat

end

end A196415.P13035843510065768338

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

/-! ## A196415.P7420416622878171114

`A026238(A141089(1+n))`
-/

namespace A196415.P7420416622878171114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A141089 (1 + n)).toNat

end

end A196415.P7420416622878171114

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

The programs for A196421, the canonical program `A196421.P11935482166905696749` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196421 has offset 1).

The definition of A196421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196421.P11891404840828298119

`A000040(n+1)*C(n+2, 2)`
-/

namespace A196421.P11891404840828298119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (Nat.choose (n + 2) 2 : ℤ)

end

end A196421.P11891404840828298119

namespace A196421

/-- `A000040(n+1)*C(n+2, 2)` -/
def P11891404840828298119.Spec : Prop :=
  ∀ n, P11891404840828298119.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P11935482166905696749

`A000040(n+1)*A000217(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196421

/-- `A000040(n+1)*A000217(n+1)` -/
def P11935482166905696749.Spec : Prop :=
  ∀ n, P11935482166905696749.a n = A196421 (n + 1)

theorem P11935482166905696749.correct : P11935482166905696749.Spec := by
  intro n
  simp only [A196421, Nat.add_sub_cancel]

end A196421

/-! ## A196421.P2811805859135601458

`∑[1+n]*Δ[A007504(n)]`
-/

namespace A196421.P2811805859135601458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A196421.P2811805859135601458

namespace A196421

/-- `∑[1+n]*Δ[A007504(n)]` -/
def P2811805859135601458.Spec : Prop :=
  ∀ n, P2811805859135601458.a n = A196421 (n + 1)

end A196421

/-! ## A196421.P5046707987109281727

`∑[1+n]*A000040(n+1)`
-/

namespace A196421.P5046707987109281727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000040 (n + 1)

end

end A196421.P5046707987109281727

namespace A196421

/-- `∑[1+n]*A000040(n+1)` -/
def P5046707987109281727.Spec : Prop :=
  ∀ n, P5046707987109281727.a n = A196421 (n + 1)

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

/-! ## A196421.P10158681865776145510

`abs(Δ[A117128(n)])*∑[n+1]`
-/

namespace A196421.P10158681865776145510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A196421.P10158681865776145510

namespace A196421

/-- `abs(Δ[A117128(n)])*∑[n+1]` -/
def P10158681865776145510.Spec : Prop :=
  ∀ n, P10158681865776145510.a n = A196421 (n + 1)

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

theorem P16428856236037904953.correct : P16428856236037904953.Spec := by
  intro n
  simp only [A196421, Nat.add_sub_cancel, A196421.P16428856236037904953.a, A196421.P11935482166905696749.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

theorem P17335226865587510030.correct : P17335226865587510030.Spec := by
  intro n
  simp only [A196421, Nat.add_sub_cancel, A196421.P17335226865587510030.a, A196421.P11935482166905696749.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A004232, A004232.P3456609317362794228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

theorem P357815471039676664.correct : P357815471039676664.Spec := by
  intro n
  simp only [A196421, Nat.add_sub_cancel, A196421.P357815471039676664.a, A196421.P11935482166905696749.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

theorem P13920345028693645975.correct : P13920345028693645975.Spec := by
  intro n
  simp only [A196421, Nat.add_sub_cancel, A196421.P13920345028693645975.a, A196421.P11935482166905696749.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

/-!
# A196423: Number of n X 1 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196423, the canonical program `A196423.P4451480349490247433` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196423 has offset 1).

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

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196423

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P4451480349490247433.Spec : Prop :=
  ∀ n, (P4451480349490247433.a n : ℤ) = A196423 (n + 1)

theorem P4451480349490247433.correct : P4451480349490247433.Spec := by
  intro n
  simp only [A196423, Nat.add_sub_cancel]

end A196423

/-! ## A196423.P16841551801764416959

`A232162(1+n)+A214663(n)`
-/

namespace A196423.P16841551801764416959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (1 + n) + A214663 n

end

end A196423.P16841551801764416959

namespace A196423

/-- `A232162(1+n)+A214663(n)` -/
def P16841551801764416959.Spec : Prop :=
  ∀ n, P16841551801764416959.a n = A196423 (n + 1)

end A196423

/-! ## A196423.P16103994641789610257

`A232165(1+n)+A232165(n)`
-/

namespace A196423.P16103994641789610257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (1 + n) + A232165 n

end

end A196423.P16103994641789610257

namespace A196423

/-- `A232165(1+n)+A232165(n)` -/
def P16103994641789610257.Spec : Prop :=
  ∀ n, P16103994641789610257.a n = A196423 (n + 1)

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

/-! ## A196426.P14043903280155934048

`A196430(A141214(n+1))`
-/

namespace A196426.P14043903280155934048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A141214 (n + 1)).toNat

end

end A196426.P14043903280155934048

/-!
# A196427: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors less than itself.

The programs for A196427, there is no canonical definition to state claims against.
-/

/-! ## A196427.P12200437411346312026

`A196430(A155212(n)+13)`
-/

namespace A196427.P12200437411346312026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196430 (A155212 n + 13).toNat

end

end A196427.P12200437411346312026

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

The programs for A196431, the canonical program `A196431.P3746667855569060489` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196431 has offset 1).

The definition of A196431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196431.P3746667855569060489

`ogf((3+6x+7x^2+8x^3-8x^5-5x^6+x^8)/(1-x-3x^2-5x^3-6x^4-4x^5+5x^6+5x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196431

/-- `ogf((3+6x+7x^2+8x^3-8x^5-5x^6+x^8)/(1-x-3x^2-5x^3-6x^4-4x^5+5x^6+5x^7+x^8-x^9))` -/
def P3746667855569060489.Spec : Prop :=
  ∀ n, P3746667855569060489.a n = A196431 (n + 1)

theorem P3746667855569060489.correct : P3746667855569060489.Spec := by
  intro n
  simp only [A196431, Nat.add_sub_cancel]

end A196431

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

namespace A196431

/-- `A196436(∑[n+2]+4)` -/
def P11494687167806686483.Spec : Prop :=
  ∀ n, P11494687167806686483.a n = A196431 (n + 1)

end A196431

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

/-! ## A196432.P7057088379576496601

`A196436(A141214(n+1))`
-/

namespace A196432.P7057088379576496601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (A141214 (n + 1)).toNat

end

end A196432.P7057088379576496601

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

/-!
# A196436: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,0,3,4 for x=0,1,2,3,4.

The programs for A196436, there is no canonical definition to state claims against.
-/

/-! ## A196436.P2493985142225022780

`A089308(A220070(n+1))`
-/

namespace A196436.P2493985142225022780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089308 (A220070 (n + 1)).toNat

end

end A196436.P2493985142225022780

/-! ## A196436.P180076817131666721

`A316844(A221378(n+1))`
-/

namespace A196436.P180076817131666721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316844 (A221378 (n + 1)).toNat

end

end A196436.P180076817131666721

/-! ## A196436.P8810446828209197749

`A390813(A196696(n+1))`
-/

namespace A196436.P8810446828209197749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A196696 (n + 1)).toNat

end

end A196436.P8810446828209197749

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

/-! ## A196437.P7402751603936987321

`row(A196439(1+n))`
-/

namespace A196437.P7402751603936987321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A196439 (1 + n)).toNat

end

end A196437.P7402751603936987321

/-! ## A196437.P2199728502736653152

`1-A196438(n+1)+n`
-/

namespace A196437.P2199728502736653152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A196438 (n + 1) + (n : ℤ)

end

end A196437.P2199728502736653152

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

/-! ## A196437.P5721179667772124291

`A084558(A196441(n+1))`
-/

namespace A196437.P5721179667772124291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A196441 (n + 1)).toNat

end

end A196437.P5721179667772124291

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

/-! ## A196438.P821870763087741831

`1-A196437(1+n)+n`
-/

namespace A196438.P821870763087741831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A196437 (1 + n) + (n : ℤ)

end

end A196438.P821870763087741831

/-! ## A196438.P15740822786442646921

`n+1-row(A196439(n+1))`
-/

namespace A196438.P15740822786442646921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.triRow (A196439 (n + 1)).toNat : ℤ)

end

end A196438.P15740822786442646921

/-! ## A196438.P3804846217973688860

`n-A247757(A196437(1+n))`
-/

namespace A196438.P3804846217973688860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A247757 (A196437 (1 + n)).toNat

end

end A196438.P3804846217973688860

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

/-! ## A196439.P10587437700188635425

`1+n+A000217(n)-A196440(n+1)`
-/

namespace A196439.P10587437700188635425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) + A000217 n - A196440 (n + 1))

end

end A196439.P10587437700188635425

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

/-! ## A196440.P3786550359763161291

`∑[1+n]-A196439(n+1)`
-/

namespace A196440.P3786550359763161291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A196439 (n + 1)

end

end A196440.P3786550359763161291

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

/-! ## A196443.P2978854559200426057

`A231365(n+1)+A154724(A001735(n))`
-/

namespace A196443.P2978854559200426057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 1) + A154724 (A001735 n).toNat

end

end A196443.P2978854559200426057

/-!
# A196444: a(n) = the smallest number m such that GCQ_A(m, k) = LCQ_A(m, k) = 0 for all 1 <= k <= n (see definition in comments).

The programs for A196444, there is no canonical definition to state claims against.
-/

/-! ## A196444.P470698726234176313

`lcm(a(n-1), n)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A196444.P470698726234176313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  Nat.lcm (a (n - 1)) n

end

end A196444.P470698726234176313

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

The programs for A196445, the canonical program `A196445.P1664057712380764340` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196445 has offset 1).

The definition of A196445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196445.P1664057712380764340

`2*A197504(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A196445

/-- `2*A197504(n+1)` -/
def P1664057712380764340.Spec : Prop :=
  ∀ n, P1664057712380764340.a n = A196445 (n + 1)

theorem P1664057712380764340.correct : P1664057712380764340.Spec := by
  intro n
  simp only [A196445, Nat.add_sub_cancel]

end A196445

/-! ## A196445.P1299663317521701477

`lcm(2, A197504(1+n))`
-/

namespace A196445.P1299663317521701477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A197504 (1 + n))

end

end A196445.P1299663317521701477

namespace A196445

/-- `lcm(2, A197504(1+n))` -/
def P1299663317521701477.Spec : Prop :=
  ∀ n, (P1299663317521701477.a n : ℤ) = A196445 (n + 1)

end A196445

/-! ## A196445.P10151782604658371601

`A197504(n+1)+A197504(1+n)`
-/

namespace A196445.P10151782604658371601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1) + A197504 (1 + n)

end

end A196445.P10151782604658371601

namespace A196445

/-- `A197504(n+1)+A197504(1+n)` -/
def P10151782604658371601.Spec : Prop :=
  ∀ n, P10151782604658371601.a n = A196445 (n + 1)

theorem P10151782604658371601.correct : P10151782604658371601.Spec := by
  intro n
  simp only [A196445, Nat.add_sub_cancel, A196445.P10151782604658371601.a, A196445.P1664057712380764340.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A196445.P16313108612996947958

`2*filter[A097987(n+1), A374134(#)]`
-/

namespace A196445.P16313108612996947958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A196445.P16313108612996947958

namespace A196445

/-- `2*filter[A097987(n+1), A374134(#)]` -/
def P16313108612996947958.Spec : Prop :=
  ∀ n, P16313108612996947958.a n = A196445 (n + 1)

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

/-! ## A196445.P8676177977284743930

`filter[A097987(n+1), val(#, 2)]`
-/

namespace A196445.P8676177977284743930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j).toNat 2 = 1) n)

end

end A196445.P8676177977284743930

namespace A196445

/-- `filter[A097987(n+1), val(#, 2)]` -/
def P8676177977284743930.Spec : Prop :=
  ∀ n, P8676177977284743930.a n = A196445 (n + 1)

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

/-! ## A196445.P16793329246514758013

`∩[A016825(n), A097987(n+1)]`
-/

namespace A196445.P16793329246514758013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196445.P16793329246514758013

namespace A196445

/-- `∩[A016825(n), A097987(n+1)]` -/
def P16793329246514758013.Spec : Prop :=
  ∀ n, (P16793329246514758013.a n : ℤ) = A196445 (n + 1)

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

/-!
# A196448: Value of a variable (d) in an iterative system. See equations.

The programs for A196448, there is no canonical definition to state claims against.
-/

/-! ## A196448.P12061626829759797769

`round(2^n/3)*A016031(n+1)`
-/

namespace A196448.P12061626829759797769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A016031 (n + 1)

end

end A196448.P12061626829759797769

/-! ## A196448.P9669139375625896199

`round(2^n/3)*A000079(2^n-(n+1))`
-/

namespace A196448.P9669139375625896199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A000079 (2 ^ n - (n + 1))

end

end A196448.P9669139375625896199

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

/-!
# A196450: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,4,1 for x=0,1,2,3,4.

The programs for A196450, the canonical program `A196450.P3261908901685376117` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196450 has offset 1).

The definition of A196450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196450.P3261908901685376117

`ogf((3+2x^2-7x^3-5x^4-9x^5-x^6)/(1-2x-3x^3+2x^4+3x^5+5x^6+x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196450

/-- `ogf((3+2x^2-7x^3-5x^4-9x^5-x^6)/(1-2x-3x^3+2x^4+3x^5+5x^6+x^7))` -/
def P3261908901685376117.Spec : Prop :=
  ∀ n, P3261908901685376117.a n = A196450 (n + 1)

theorem P3261908901685376117.correct : P3261908901685376117.Spec := by
  intro n
  simp only [A196450, Nat.add_sub_cancel]

end A196450

/-! ## A196450.P17816253281613098737

`A196456(∑[1+n]+2)`
-/

namespace A196450.P17816253281613098737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196450.P17816253281613098737

namespace A196450

/-- `A196456(∑[1+n]+2)` -/
def P17816253281613098737.Spec : Prop :=
  ∀ n, P17816253281613098737.a n = A196450 (n + 1)

end A196450

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

namespace A196450

/-- `record[A010054(n)*A196456(n+2)]` -/
def P7646996106148678056.Spec : Prop :=
  ∀ n, P7646996106148678056.a n = A196450 (n + 1)

end A196450

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

/-! ## A196454.P2017778726757692108

`A196456(A374007(n+1))`
-/

namespace A196454.P2017778726757692108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A374007 (n + 1)).toNat

end

end A196454.P2017778726757692108

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

/-! ## A196455.P12345474804400292251

`A196456(A374008(n+1))`
-/

namespace A196455.P12345474804400292251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196456 (A374008 (n + 1)).toNat

end

end A196455.P12345474804400292251

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
# A196457: E.g.f.: A(x) = Sum_{n>=0} exp((2^n + (-1)^n)*x) * (2^n + (-1)^n)^n * x^n/n!.

The programs for A196457, the canonical program `A196457.P9660574560168386893` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196457 has offset 0).

The definition of A196457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196457.P9660574560168386893

`∑{#}[n, C(n, #)*(2^#+(-1)^#)^n]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196457

/-- `∑{#}[n, C(n, #)*(2^#+(-1)^#)^n]` -/
def P9660574560168386893.Spec : Prop :=
  ∀ n, P9660574560168386893.a n = A196457 n

theorem P9660574560168386893.correct : P9660574560168386893.Spec := by
  intro n
  simp only [A196457]

end A196457

/-!
# A196458: E.g.f.: A(x) = Sum_{n>=0} (3^n + (-1)^n)^n * exp((3^n + (-1)^n)*x) * x^n/n!.

The programs for A196458, the canonical program `A196458.P3618048018034398402` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196458 has offset 0).

The definition of A196458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196458.P3618048018034398402

`∑{#}[n, C(n, #)*(3^#+(-1)^#)^n]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196458

/-- `∑{#}[n, C(n, #)*(3^#+(-1)^#)^n]` -/
def P3618048018034398402.Spec : Prop :=
  ∀ n, P3618048018034398402.a n = A196458 n

theorem P3618048018034398402.correct : P3618048018034398402.Spec := by
  intro n
  simp only [A196458]

end A196458

/-!
# A196459: E.g.f.: A(x) = Sum_{n>=0} (2^n + 3^n)^n * exp((5*2^n + 2*3^n)*x) * x^n/n!.

The programs for A196459, the canonical program `A196459.P9044442962093183577` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196459 has offset 0).

The definition of A196459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196459.P9044442962093183577

`∑{#}[n, C(n, #)*(5*2^#+2*3^#)^(n-#)*(2^#+3^#)^#]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196459

/-- `∑{#}[n, C(n, #)*(5*2^#+2*3^#)^(n-#)*(2^#+3^#)^#]` -/
def P9044442962093183577.Spec : Prop :=
  ∀ n, P9044442962093183577.a n = (A196459 n : ℚ)

end A196459

/-!
# A196460: E.g.f.: A(x) = Sum_{n>=0} (1+2^n)^n * exp((1+2^n)*x) * x^n/n!.

The programs for A196460, the canonical program `A196460.P7666611722591753999` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196460 has offset 0).

The definition of A196460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196460.P7666611722591753999

`∑{#}[n, C(n, #)*(1+2^#)^n]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196460

/-- `∑{#}[n, C(n, #)*(1+2^#)^n]` -/
def P7666611722591753999.Spec : Prop :=
  ∀ n, (P7666611722591753999.a n : ℤ) = A196460 n

theorem P7666611722591753999.correct : P7666611722591753999.Spec := by
  intro n
  simp only [A196460]

end A196460

/-!
# A196461: First position of n in the continued fraction of Catalan's constant.

The programs for A196461, there is no canonical definition to state claims against.
-/

/-! ## A196461.P17387720214599748333

`fo[A014538(n)-1]`
-/

namespace A196461.P17387720214599748333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014538 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A196461.P17387720214599748333

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

/-! ## A196467.P9144062490571314317

`A366649(A214955(n+1))`
-/

namespace A196467.P9144062490571314317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366649 (A214955 (n + 1)).toNat

end

end A196467.P9144062490571314317

/-!
# A196468: a(1)=11; a(n) = floor((2 + sqrt(8))*a(n-1)) for n > 1.

The programs for A196468, the canonical program `A196468.P5114605880216499664` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196468 has offset 1).

The definition of A196468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2+sqrt(8))*a(n-1))` (program `A196468.P5114605880216499664`, by `A196468.P5114605880216499664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196468.P12520179606500673155

`ogf((11-2x-10x^2)/(1-5x+4x^3))`
-/

namespace A196468.P12520179606500673155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -2, -10] [1, -5, 0, 4] n

end

end A196468.P12520179606500673155

namespace A196468

/-- `ogf((11-2x-10x^2)/(1-5x+4x^3))` -/
def P12520179606500673155.Spec : Prop :=
  ∀ n, P12520179606500673155.a n = A196468 (n + 1)

end A196468

/-! ## A196468.P5114605880216499664

`floor((2+sqrt(8))*a(n-1))` with `a(0)=11`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A196469.P15909987186291433222

`A125975(A213674(n))`
-/

namespace A196469.P15909987186291433222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 (A213674 n).toNat

end

end A196469.P15909987186291433222

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

/-!
# A196471: Coefficients of auxiliary tree counting function S_{1,1}(x).

The programs for A196471, there is no canonical definition to state claims against.
-/

/-! ## A196471.P17279862433908123405

`A130518(A318234(n+1))+A000081(n)`
-/

namespace A196471.P17279862433908123405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (A318234 (n + 1)).toNat + A000081 n

end

end A196471.P17279862433908123405

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

The programs for A196472, the canonical program `A196472.P15503252720201033814` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196472 has offset 1).

The definition of A196472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3+sqrt(21))*a(n-1)/2)` (program `A196472.P15503252720201033814`, by `A196472.P15503252720201033814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

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

/-! ## A196472.P15503252720201033814

`floor((3+sqrt(21))*a(n-1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
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

/-! ## A196473.P2428360804323408232

`record[A010052(2*n+1)*A196477(n+1)]`
-/

namespace A196473.P2428360804323408232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A196477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196473.P2428360804323408232

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

/-!
# A196479: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,2,1,4 for x=0,1,2,3,4.

The programs for A196479, the canonical program `A196479.P12946808377949852684` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196479 has offset 1).

The definition of A196479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196479.P12946808377949852684

`ogf((3+2x^2-4x^3-4x^4-3x^5+3x^6-3x^7)/(1-2x-4x^3+3x^4+3x^5+x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196479

/-- `ogf((3+2x^2-4x^3-4x^4-3x^5+3x^6-3x^7)/(1-2x-4x^3+3x^4+3x^5+x^6-x^7+x^8))` -/
def P12946808377949852684.Spec : Prop :=
  ∀ n, P12946808377949852684.a n = A196479 (n + 1)

theorem P12946808377949852684.correct : P12946808377949852684.Spec := by
  intro n
  simp only [A196479, Nat.add_sub_cancel]

end A196479

/-! ## A196479.P4510143236764578193

`A196485(∑[1+n]+2)`
-/

namespace A196479.P4510143236764578193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196479.P4510143236764578193

namespace A196479

/-- `A196485(∑[1+n]+2)` -/
def P4510143236764578193.Spec : Prop :=
  ∀ n, P4510143236764578193.a n = A196479 (n + 1)

end A196479

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

namespace A196479

/-- `A196718(∑[n+1]+2)` -/
def P10683235446040801039.Spec : Prop :=
  ∀ n, P10683235446040801039.a n = A196479 (n + 1)

end A196479

/-! ## A196479.P1552553515789764807

`record[A196718(A257506(n+1)+2)]`
-/

namespace A196479.P1552553515789764807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196718 (A257506 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196479.P1552553515789764807

namespace A196479

/-- `record[A196718(A257506(n+1)+2)]` -/
def P1552553515789764807.Spec : Prop :=
  ∀ n, P1552553515789764807.a n = A196479 (n + 1)

end A196479

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

/-! ## A196481.P14184416552356069729

`A196485(A141214(n+1))`
-/

namespace A196481.P14184416552356069729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196485 (A141214 (n + 1)).toNat

end

end A196481.P14184416552356069729

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

/-!
# A196488: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,0,1,4 for x=0,1,2,3,4.

The programs for A196488, the canonical program `A196488.P4732297001130795675` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196488 has offset 1).

The definition of A196488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196488.P4732297001130795675

`ogf((1+2x+5x^2+5x^3+9x^4+8x^5+3x^6+x^7)/(1-x-x^2-6x^3-10x^4-15x^5-9x^6-4x^7-x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196488

/-- `ogf((1+2x+5x^2+5x^3+9x^4+8x^5+3x^6+x^7)/(1-x-x^2-6x^3-10x^4-15x^5-9x^6-4x^7-x^8))` -/
def P4732297001130795675.Spec : Prop :=
  ∀ n, P4732297001130795675.a n = A196488 (n + 1)

theorem P4732297001130795675.correct : P4732297001130795675.Spec := by
  intro n
  simp only [A196488, Nat.add_sub_cancel]

end A196488

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

namespace A196488

/-- `A196493(∑[n+2]+4)` -/
def P1631969500022011413.Spec : Prop :=
  ∀ n, P1631969500022011413.a n = A196488 (n + 1)

end A196488

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

/-! ## A196489.P14543093705647665073

`A196493(A141214(n+1))`
-/

namespace A196489.P14543093705647665073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (A141214 (n + 1)).toNat

end

end A196489.P14543093705647665073

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

/-! ## A196493.P10227588056222314886

`A196989(n+1)-A124763(A099594(n))`
-/

namespace A196493.P10227588056222314886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (n + 1) - A124763 (A099594 n).toNat

end

end A196493.P10227588056222314886

/-! ## A196493.P9796547598340869667

`A196989(n+1)-A178498(A255256(n))`
-/

namespace A196493.P9796547598340869667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (n + 1) - A178498 (A255256 n).toNat

end

end A196493.P9796547598340869667

/-! ## A196493.P17024045097446640412

`A196989(n+1)-A007949(A334549(n)!)`
-/

namespace A196493.P17024045097446640412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (n + 1) - A007949 (Nat.factorial (A334549 n).toNat)

end

end A196493.P17024045097446640412

/-! ## A196493.P16800011680677377085

`A112649(A010048(n))+1-A196929(n+1)`
-/

namespace A196493.P16800011680677377085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112649 (A010048 n).toNat + 1 - A196929 (n + 1)

end

end A196493.P16800011680677377085

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

The programs for A196499, the canonical program `A196499.P17965796965664420902` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196499 has offset 1).

The definition of A196499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196499.P17965796965664420902

`comp[2*comp[A004613(1+n)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A196499

/-- `comp[2*comp[A004613(1+n)]]` -/
def P17965796965664420902.Spec : Prop :=
  ∀ n, (P17965796965664420902.a n : ℤ) = A196499 (n + 1)

theorem P17965796965664420902.correct : P17965796965664420902.Spec := by
  intro n
  simp only [A196499, Nat.add_sub_cancel]

end A196499

/-! ## A196499.P9433243789311890196

`∪[A008784(1+n), Δ[n²]]`
-/

namespace A196499.P9433243789311890196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (1 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P9433243789311890196

namespace A196499

/-- `∪[A008784(1+n), Δ[n²]]` -/
def P9433243789311890196.Spec : Prop :=
  ∀ n, (P9433243789311890196.a n : ℤ) = A196499 (n + 1)

end A196499

/-! ## A196499.P3103286388582957111

`∪[2*n+1, A008784(n+1)]`
-/

namespace A196499.P3103286388582957111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196499.P3103286388582957111

namespace A196499

/-- `∪[2*n+1, A008784(n+1)]` -/
def P3103286388582957111.Spec : Prop :=
  ∀ n, (P3103286388582957111.a n : ℤ) = A196499 (n + 1)

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

/-! ## A196499.P13547228251102858323

`comp[2*comp[A400876(n+1)]]`
-/

namespace A196499.P13547228251102858323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400876 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196499.P13547228251102858323

namespace A196499

/-- `comp[2*comp[A400876(n+1)]]` -/
def P13547228251102858323.Spec : Prop :=
  ∀ n, (P13547228251102858323.a n : ℤ) = A196499 (n + 1)

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

/-! ## A196499.P1625960933891972215

`lt[0, A319813(n+1)]+1`
-/

namespace A196499.P1625960933891972215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A196499.P1625960933891972215

namespace A196499

/-- `lt[0, A319813(n+1)]+1` -/
def P1625960933891972215.Spec : Prop :=
  ∀ n, (P1625960933891972215.a n : ℤ) = A196499 (n + 1)

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

