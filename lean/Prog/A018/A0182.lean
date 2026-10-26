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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A018200: Possible numbers of complements of topologies on 9 points.

The programs for A018200, there is no canonical definition to state claims against.
-/

/-! ## A018200.P18061033658843992797

`record[A347596(n)%A001132(n+1)]`
-/

namespace A018200.P18061033658843992797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347596 n) (A001132 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018200.P18061033658843992797

/-!
# A018201: Possible numbers of complements of topologies on 10 points.

The programs for A018201, there is no canonical definition to state claims against.
-/

/-! ## A018201.P10784835140749845050

`filter[A009865(2*n), A075802(#)]`
-/

namespace A018201.P10784835140749845050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009865 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A018201.P10784835140749845050

/-!
# A018204: Possible numbers of complements of topologies on 13 points.

The programs for A018204, there is no canonical definition to state claims against.
-/

/-! ## A018204.P1112360460436620276

`(13-A279084(n+1))^A279084(n+1)`
-/

namespace A018204.P1112360460436620276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 - A279084 (n + 1) : ℚ) ^ (A279084 (n + 1) : ℤ)

end

end A018204.P1112360460436620276

/-!
# A018206: Expansion of 1/((1-3x)(1-10x)(1-11x)).

The programs for A018206, the canonical program `A018206.P817187132340259467` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018206 has offset 0).

The definition of A018206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018206.P817187132340259467

`21*a(n-1)-110*a(n-2)+3^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018206

/-- `21*a(n-1)-110*a(n-2)+3^n` -/
def P817187132340259467.Spec : Prop :=
  ∀ n, P817187132340259467.a n = A018206 n

theorem P817187132340259467.correct : P817187132340259467.Spec := by
  intro n
  simp only [A018206]

end A018206

/-! ## A018206.P4130121785383141330

`(7*11^(n+2)-8*10^(n+2)+3^(n+2))/56`
-/

namespace A018206.P4130121785383141330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 11 ^ (n + 2) : ℤ) - (8 * 10 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 56

end

end A018206.P4130121785383141330

namespace A018206

/-- `(7*11^(n+2)-8*10^(n+2)+3^(n+2))/56` -/
def P4130121785383141330.Spec : Prop :=
  ∀ n, P4130121785383141330.a n = (A018206 n : ℚ)

theorem P4130121785383141330.correct : P4130121785383141330.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018206, Nat.add_sub_cancel, A018206.P4130121785383141330.a, A018206.P817187132340259467.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018206, Nat.add_sub_cancel, A018206.P4130121785383141330.a, A018206.P817187132340259467.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018206

/-! ## A018206.P8306408316328632145

`Δ[A016216(n)-A016215(n)]`
-/

namespace A018206.P8306408316328632145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016216 n - A016215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018206.P8306408316328632145

namespace A018206

/-- `Δ[A016216(n)-A016215(n)]` -/
def P8306408316328632145.Spec : Prop :=
  ∀ n, P8306408316328632145.a n = A018206 n

end A018206

/-! ## A018206.P10418624416208338194

`2*A018091(n)-A018090(n)`
-/

namespace A018206.P10418624416208338194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018091 n - A018090 n

end

end A018206.P10418624416208338194

namespace A018206

/-- `2*A018091(n)-A018090(n)` -/
def P10418624416208338194.Spec : Prop :=
  ∀ n, P10418624416208338194.a n = A018206 n

end A018206

/-! ## A018206.P9761954711735624295

`A016146(n+1)-A016145(n+1)`
-/

namespace A018206.P9761954711735624295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016146 (n + 1) - A016145 (n + 1)

end

end A018206.P9761954711735624295

namespace A018206

/-- `A016146(n+1)-A016145(n+1)` -/
def P9761954711735624295.Spec : Prop :=
  ∀ n, P9761954711735624295.a n = A018206 n

end A018206

/-! ## A018206.P13763390618066837086

`2*A018207(n)-A018208(n)`
-/

namespace A018206.P13763390618066837086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018207 n - A018208 n

end

end A018206.P13763390618066837086

namespace A018206

/-- `2*A018207(n)-A018208(n)` -/
def P13763390618066837086.Spec : Prop :=
  ∀ n, P13763390618066837086.a n = A018206 n

end A018206

/-!
# A018207: Expansion of 1/((1-3x)(1-10x)(1-12x)).

The programs for A018207, the canonical program `A018207.P305387378946507906` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018207 has offset 0).

The definition of A018207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018207.P305387378946507906

`22*a(n-1)-120*a(n-2)+3^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018207

/-- `22*a(n-1)-120*a(n-2)+3^n` -/
def P305387378946507906.Spec : Prop :=
  ∀ n, P305387378946507906.a n = A018207 n

theorem P305387378946507906.correct : P305387378946507906.Spec := by
  intro n
  simp only [A018207]

end A018207

/-! ## A018207.P3233771558141022692

`(7*12^(n+2)-9*10^(n+2)+2*3^(n+2))/126`
-/

namespace A018207.P3233771558141022692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 12 ^ (n + 2) : ℤ) - (9 * 10 ^ (n + 2) : ℤ) + (2 * 3 ^ (n + 2) : ℤ) : ℚ) / 126

end

end A018207.P3233771558141022692

namespace A018207

/-- `(7*12^(n+2)-9*10^(n+2)+2*3^(n+2))/126` -/
def P3233771558141022692.Spec : Prop :=
  ∀ n, P3233771558141022692.a n = (A018207 n : ℚ)

theorem P3233771558141022692.correct : P3233771558141022692.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018207, Nat.add_sub_cancel, A018207.P3233771558141022692.a, A018207.P305387378946507906.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018207, Nat.add_sub_cancel, A018207.P3233771558141022692.a, A018207.P305387378946507906.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018207

/-! ## A018207.P3717574510920763070

`A016196(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A018207.P3717574510920763070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016196 n + 3 * a (n - 1)

end

end A018207.P3717574510920763070

namespace A018207

/-- `A016196(n)+3*a(n-1)` -/
def P3717574510920763070.Spec : Prop :=
  ∀ n, P3717574510920763070.a n = A018207 n

end A018207

/-! ## A018207.P6187509283312497287

`2*A018071(n)-A018069(n)`
-/

namespace A018207.P6187509283312497287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018071 n - A018069 n

end

end A018207.P6187509283312497287

namespace A018207

/-- `2*A018071(n)-A018069(n)` -/
def P6187509283312497287.Spec : Prop :=
  ∀ n, P6187509283312497287.a n = A018207 n

end A018207

/-! ## A018207.P3617818360992662760

`(A018208(n)+A018206(n))*2^(1-4/2)`
-/

namespace A018207.P3617818360992662760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018208 n + A018206 n : ℝ) * (2 : ℝ) ^ (1 - (4 : ℚ) / 2 : ℝ)

end

end A018207.P3617818360992662760

namespace A018207

/-- `(A018208(n)+A018206(n))*2^(1-4/2)` -/
def P3617818360992662760.Spec : Prop :=
  ∀ n, P3617818360992662760.a n = (A018207 n : ℝ)

end A018207

/-! ## A018207.P5656425729828807587

`A016217(n)+A016267(n)-A016215(n)`
-/

namespace A018207.P5656425729828807587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016217 n + (A016267 n - A016215 n)

end

end A018207.P5656425729828807587

namespace A018207

/-- `A016217(n)+A016267(n)-A016215(n)` -/
def P5656425729828807587.Spec : Prop :=
  ∀ n, P5656425729828807587.a n = A018207 n

end A018207

/-!
# A018208: Expansion of 1/((1-3x)(1-11x)(1-12x)).

The programs for A018208, the canonical program `A018208.P8733047461524398637` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018208 has offset 0).

The definition of A018208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018208.P8733047461524398637

`23*a(n-1)-132*a(n-2)+3^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018208

/-- `23*a(n-1)-132*a(n-2)+3^n` -/
def P8733047461524398637.Spec : Prop :=
  ∀ n, P8733047461524398637.a n = A018208 n

theorem P8733047461524398637.correct : P8733047461524398637.Spec := by
  intro n
  simp only [A018208]

end A018208

/-! ## A018208.P9033154977052995707

`(8*12^(n+2)-9*11^(n+2)+3^(n+2))/72`
-/

namespace A018208.P9033154977052995707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 12 ^ (n + 2) : ℤ) - (9 * 11 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 72

end

end A018208.P9033154977052995707

namespace A018208

/-- `(8*12^(n+2)-9*11^(n+2)+3^(n+2))/72` -/
def P9033154977052995707.Spec : Prop :=
  ∀ n, P9033154977052995707.a n = (A018208 n : ℚ)

theorem P9033154977052995707.correct : P9033154977052995707.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018208, Nat.add_sub_cancel, A018208.P9033154977052995707.a, A018208.P8733047461524398637.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018208, Nat.add_sub_cancel, A018208.P9033154977052995707.a, A018208.P8733047461524398637.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018208

/-! ## A018208.P7912943352386064155

`A016197(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A018208.P7912943352386064155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016197 (n + 1) + 3 * a (n - 1)

end

end A018208.P7912943352386064155

namespace A018208

/-- `A016197(n+1)+3*a(n-1)` -/
def P7912943352386064155.Spec : Prop :=
  ∀ n, P7912943352386064155.a n = A018208 n

end A018208

/-! ## A018208.P7481655782769327051

`Δ[A016217(n)-A016216(n)]`
-/

namespace A018208.P7481655782769327051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016217 n - A016216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018208.P7481655782769327051

namespace A018208

/-- `Δ[A016217(n)-A016216(n)]` -/
def P7481655782769327051.Spec : Prop :=
  ∀ n, P7481655782769327051.a n = A018208 n

end A018208

/-! ## A018208.P15082182277750753533

`2*A018207(n)-A018206(n)`
-/

namespace A018208.P15082182277750753533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018207 n - A018206 n

end

end A018208.P15082182277750753533

namespace A018208

/-- `2*A018207(n)-A018206(n)` -/
def P15082182277750753533.Spec : Prop :=
  ∀ n, P15082182277750753533.a n = A018208 n

end A018208

/-! ## A018208.P10047410000677522971

`A016216(n)+A021734(n)-A016217(n)`
-/

namespace A018208.P10047410000677522971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016216 n + (A021734 n - A016217 n)

end

end A018208.P10047410000677522971

namespace A018208

/-- `A016216(n)+A021734(n)-A016217(n)` -/
def P10047410000677522971.Spec : Prop :=
  ∀ n, P10047410000677522971.a n = A018208 n

end A018208

/-!
# A018209: Expansion of 1/((1-4x)(1-5x)(1-7x)).

The programs for A018209, the canonical program `A018209.P16802658112795123416` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018209 has offset 0).

The definition of A018209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018209.P16802658112795123416

`12*a(n-1)-35*a(n-2)+4^n` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018209

/-- `12*a(n-1)-35*a(n-2)+4^n` -/
def P16802658112795123416.Spec : Prop :=
  ∀ n, P16802658112795123416.a n = A018209 n

theorem P16802658112795123416.correct : P16802658112795123416.Spec := by
  intro n
  simp only [A018209]

end A018209

/-! ## A018209.P8447592765562931779

`16*4^n/3-25*5^n/2+49*7^n/6`
-/

namespace A018209.P8447592765562931779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * 4 ^ n : ℚ) / 3 - (25 * 5 ^ n : ℚ) / 2 + (49 * 7 ^ n : ℚ) / 6

end

end A018209.P8447592765562931779

namespace A018209

/-- `16*4^n/3-25*5^n/2+49*7^n/6` -/
def P8447592765562931779.Spec : Prop :=
  ∀ n, P8447592765562931779.a n = (A018209 n : ℚ)

theorem P8447592765562931779.correct : P8447592765562931779.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018209, Nat.add_sub_cancel, A018209.P8447592765562931779.a, A018209.P16802658112795123416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018209, Nat.add_sub_cancel, A018209.P8447592765562931779.a, A018209.P16802658112795123416.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018209

/-! ## A018209.P15121834861639349139

`Δ[A016230(n)-A016223(n)]`
-/

namespace A018209.P15121834861639349139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016230 n - A016223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018209.P15121834861639349139

namespace A018209

/-- `Δ[A016230(n)-A016223(n)]` -/
def P15121834861639349139.Spec : Prop :=
  ∀ n, P15121834861639349139.a n = A018209 n

end A018209

/-!
# A018210: Alkane (or paraffin) numbers l(9,n).

The programs for A018210, the canonical program `A018210.P7682685719123910879` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018210 has offset 0).

The definition of A018210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018210.P8498608111807040038

`∑[∑[∑[∑[∑[n+1]*char[2*n]]]]]`
-/

namespace A018210.P8498608111807040038
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) * (if ∃ j, f6 j = n then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018210.P8498608111807040038

namespace A018210

/-- `∑[∑[∑[∑[∑[n+1]*char[2*n]]]]]` -/
def P8498608111807040038.Spec : Prop :=
  ∀ n, (P8498608111807040038.a n : ℤ) = A018210 n

end A018210

/-! ## A018210.P5053125915884386996

`2*∑[A005995(n)/2]`
-/

namespace A018210.P5053125915884386996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005995 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018210.P5053125915884386996

namespace A018210

/-- `2*∑[A005995(n)/2]` -/
def P5053125915884386996.Spec : Prop :=
  ∀ n, P5053125915884386996.a n = (A018210 n : ℚ)

end A018210

/-! ## A018210.P7682685719123910879

`gcd(∑[A005995(n)], A000038(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018210

/-- `gcd(∑[A005995(n)], A000038(n))` -/
def P7682685719123910879.Spec : Prop :=
  ∀ n, (P7682685719123910879.a n : ℤ) = A018210 n

theorem P7682685719123910879.correct : P7682685719123910879.Spec := by
  intro n
  simp only [A018210]

end A018210

/-! ## A018210.P13141628560337295264

`lcm(∑[A005995(n)], A000034(n))`
-/

namespace A018210.P13141628560337295264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A018210.P13141628560337295264

namespace A018210

/-- `lcm(∑[A005995(n)], A000034(n))` -/
def P13141628560337295264.Spec : Prop :=
  ∀ n, (P13141628560337295264.a n : ℤ) = A018210 n

end A018210

/-! ## A018210.P1685865278833414904

`or(∑[A005995(n)], A000007(n))`
-/

namespace A018210.P1685865278833414904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A018210.P1685865278833414904

namespace A018210

/-- `or(∑[A005995(n)], A000007(n))` -/
def P1685865278833414904.Spec : Prop :=
  ∀ n, P1685865278833414904.a n = A018210 n

end A018210

/-! ## A018210.P10957345935720853662

`∑[A005995(n)]%A027969(n+4)`
-/

namespace A018210.P10957345935720853662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A027969 (n + 4))

end

end A018210.P10957345935720853662

namespace A018210

/-- `∑[A005995(n)]%A027969(n+4)` -/
def P10957345935720853662.Spec : Prop :=
  ∀ n, P10957345935720853662.a n = A018210 n

end A018210

/-! ## A018210.P17976202612509668090

`A001222(A002476(n+1))*∑[A005995(n)]`
-/

namespace A018210.P17976202612509668090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018210.P17976202612509668090

namespace A018210

/-- `A001222(A002476(n+1))*∑[A005995(n)]` -/
def P17976202612509668090.Spec : Prop :=
  ∀ n, P17976202612509668090.a n = A018210 n

end A018210

/-! ## A018210.P866635160390953004

`A001221(A005384(n+1))*∑[A005995(n)]`
-/

namespace A018210.P866635160390953004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005384 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018210.P866635160390953004

namespace A018210

/-- `A001221(A005384(n+1))*∑[A005995(n)]` -/
def P866635160390953004.Spec : Prop :=
  ∀ n, P866635160390953004.a n = A018210 n

end A018210

/-! ## A018210.P7436060936426951972

`∑[A005995(n)]/A007318((n²+n)/2)`
-/

namespace A018210.P7436060936426951972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ)

end

end A018210.P7436060936426951972

namespace A018210

/-- `∑[A005995(n)]/A007318((n²+n)/2)` -/
def P7436060936426951972.Spec : Prop :=
  ∀ n, P7436060936426951972.a n = (A018210 n : ℚ)

end A018210

/-! ## A018210.P1534085648558768047

`A034851(A000124(n+6)+5)`
-/

namespace A018210.P1534085648558768047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000124 (n + 6) + 5).toNat

end

end A018210.P1534085648558768047

namespace A018210

/-- `A034851(A000124(n+6)+5)` -/
def P1534085648558768047.Spec : Prop :=
  ∀ n, P1534085648558768047.a n = A018210 n

end A018210

/-! ## A018210.P18029139385914231292

`A034851(eq[7, A002260(n+1)])`
-/

namespace A018210.P18029139385914231292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018210.P18029139385914231292

namespace A018210

/-- `A034851(eq[7, A002260(n+1)])` -/
def P18029139385914231292.Spec : Prop :=
  ∀ n, P18029139385914231292.a n = A018210 n

end A018210

/-! ## A018210.P17597044109960783818

`A034851(A000217(n+7)-7)`
-/

namespace A018210.P17597044109960783818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 7) - 7).toNat

end

end A018210.P17597044109960783818

namespace A018210

/-- `A034851(A000217(n+7)-7)` -/
def P17597044109960783818.Spec : Prop :=
  ∀ n, P17597044109960783818.a n = A018210 n

end A018210

/-!
# A018211: Alkane (or paraffin) numbers l(10,n).

The programs for A018211, the canonical program `A018211.P8561171215378061643` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018211 has offset 0).

The definition of A018211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018211.P8561171215378061643

`4*A031164(n)-A032093(n+8)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018211

/-- `4*A031164(n)-A032093(n+8)` -/
def P8561171215378061643.Spec : Prop :=
  ∀ n, P8561171215378061643.a n = A018211 n

theorem P8561171215378061643.correct : P8561171215378061643.Spec := by
  intro n
  simp only [A018211]

end A018211

/-! ## A018211.P6738482727249220012

`A032094(n+9)-A032093(n+8)`
-/

namespace A018211.P6738482727249220012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - A032093 (n + 8)

end

end A018211.P6738482727249220012

namespace A018211

/-- `A032094(n+9)-A032093(n+8)` -/
def P6738482727249220012.Spec : Prop :=
  ∀ n, P6738482727249220012.a n = A018211 n

end A018211

/-! ## A018211.P3285997903358045220

`4*A031164(n)-∑[A032092(n+7)]`
-/

namespace A018211.P3285997903358045220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031164 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018211.P3285997903358045220

namespace A018211

/-- `4*A031164(n)-∑[A032092(n+7)]` -/
def P3285997903358045220.Spec : Prop :=
  ∀ n, P3285997903358045220.a n = A018211 n

end A018211

/-! ## A018211.P4938415624608701053

`A032094(n+9)-∑[A032092(n+7)]`
-/

namespace A018211.P4938415624608701053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018211.P4938415624608701053

namespace A018211

/-- `A032094(n+9)-∑[A032092(n+7)]` -/
def P4938415624608701053.Spec : Prop :=
  ∀ n, P4938415624608701053.a n = A018211 n

end A018211

/-! ## A018211.P16699456678651837395

`Δ[A052267(n)-A177747(n)]-A032093(n+8)`
-/

namespace A018211.P16699456678651837395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052267 n - A177747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A032093 (n + 8)

end

end A018211.P16699456678651837395

namespace A018211

/-- `Δ[A052267(n)-A177747(n)]-A032093(n+8)` -/
def P16699456678651837395.Spec : Prop :=
  ∀ n, P16699456678651837395.a n = A018211 n

end A018211

/-! ## A018211.P16001363470640859141

`A282011(A056121(n)+35)`
-/

namespace A018211.P16001363470640859141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A056121 n + 35).toNat

end

end A018211.P16001363470640859141

namespace A018211

/-- `A282011(A056121(n)+35)` -/
def P16001363470640859141.Spec : Prop :=
  ∀ n, P16001363470640859141.a n = A018211 n

end A018211

/-! ## A018211.P6421749674558246633

`A034851(A056121(n)+35)`
-/

namespace A018211.P6421749674558246633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A056121 n + 35).toNat

end

end A018211.P6421749674558246633

namespace A018211

/-- `A034851(A056121(n)+35)` -/
def P6421749674558246633.Spec : Prop :=
  ∀ n, P6421749674558246633.a n = A018211 n

end A018211

/-! ## A018211.P17961785190320505348

`A034851(eq[7, A002262(n)])`
-/

namespace A018211.P17961785190320505348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018211.P17961785190320505348

namespace A018211

/-- `A034851(eq[7, A002262(n)])` -/
def P17961785190320505348.Spec : Prop :=
  ∀ n, P17961785190320505348.a n = A018211 n

end A018211

/-! ## A018211.P10658752986829314521

`A034851(A000217(n+7)+7)`
-/

namespace A018211.P10658752986829314521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 7) + 7).toNat

end

end A018211.P10658752986829314521

namespace A018211

/-- `A034851(A000217(n+7)+7)` -/
def P10658752986829314521.Spec : Prop :=
  ∀ n, P10658752986829314521.a n = A018211 n

end A018211

/-! ## A018211.P16039197498316953612

`A034851(eq[8, A002260(n+1)])`
-/

namespace A018211.P16039197498316953612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018211.P16039197498316953612

namespace A018211

/-- `A034851(eq[8, A002260(n+1)])` -/
def P16039197498316953612.Spec : Prop :=
  ∀ n, P16039197498316953612.a n = A018211 n

end A018211

/-! ## A018211.P1966841363795744820

`A034851(A155212(n+4))`
-/

namespace A018211.P1966841363795744820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A155212 (n + 4)).toNat

end

end A018211.P1966841363795744820

namespace A018211

/-- `A034851(A155212(n+4))` -/
def P1966841363795744820.Spec : Prop :=
  ∀ n, P1966841363795744820.a n = A018211 n

end A018211

/-! ## A018211.P7675362093881105991

`A034851(A000096(n+7)-7)`
-/

namespace A018211.P7675362093881105991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000096 (n + 7) - 7).toNat

end

end A018211.P7675362093881105991

namespace A018211

/-- `A034851(A000096(n+7)-7)` -/
def P7675362093881105991.Spec : Prop :=
  ∀ n, P7675362093881105991.a n = A018211 n

end A018211

/-! ## A018211.P865919203801668335

`A034851(A034856(n+6)+n+2)`
-/

namespace A018211.P865919203801668335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A034856 (n + 6) + (n + 2 : ℤ)).toNat

end

end A018211.P865919203801668335

namespace A018211

/-- `A034851(A034856(n+6)+n+2)` -/
def P865919203801668335.Spec : Prop :=
  ∀ n, P865919203801668335.a n = A018211 n

end A018211

/-! ## A018211.P5484130668600271878

`A034851(A000124(n+7)+n-1)`
-/

namespace A018211.P5484130668600271878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A018211.P5484130668600271878

namespace A018211

/-- `A034851(A000124(n+7)+n-1)` -/
def P5484130668600271878.Spec : Prop :=
  ∀ n, P5484130668600271878.a n = A018211 n

end A018211

/-! ## A018211.P10476849680306272051

`A034851(A167499(n+5)+2*(n+1))`
-/

namespace A018211.P10476849680306272051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A167499 (n + 5) + (2 * (n + 1) : ℤ)).toNat

end

end A018211.P10476849680306272051

namespace A018211

/-- `A034851(A167499(n+5)+2*(n+1))` -/
def P10476849680306272051.Spec : Prop :=
  ∀ n, P10476849680306272051.a n = A018211 n

end A018211

/-! ## A018211.P615262770239994295

`A034851(n+6+A000124(n+6)+n)`
-/

namespace A018211.P615262770239994295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 ((n + 6 : ℤ) + (A000124 (n + 6) + (n : ℤ))).toNat

end

end A018211.P615262770239994295

namespace A018211

/-- `A034851(n+6+A000124(n+6)+n)` -/
def P615262770239994295.Spec : Prop :=
  ∀ n, P615262770239994295.a n = A018211 n

end A018211

/-!
# A018212: Alkane (or paraffin) numbers l(11,n).

The programs for A018212, the canonical program `A018212.P17984279171058020025` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018212 has offset 0).

The definition of A018212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018212.P17984279171058020025

`∑[A018211(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A018212

/-- `∑[A018211(n)]` -/
def P17984279171058020025.Spec : Prop :=
  ∀ n, P17984279171058020025.a n = A018212 n

theorem P17984279171058020025.correct : P17984279171058020025.Spec := by
  intro n
  simp only [A018212]

end A018212

/-! ## A018212.P13506800498307841042

`A018211(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A018212.P13506800498307841042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018211 n + a (A023443 n).toNat

end

end A018212.P13506800498307841042

namespace A018212

/-- `A018211(n)+a(A023443(n))` -/
def P13506800498307841042.Spec : Prop :=
  ∀ n, P13506800498307841042.a n = A018212 n

end A018212

/-! ## A018212.P7832128916722708234

`∑[A032094(n+9)-A032093(n+8)]`
-/

namespace A018212.P7832128916722708234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - A032093 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018212.P7832128916722708234

namespace A018212

/-- `∑[A032094(n+9)-A032093(n+8)]` -/
def P7832128916722708234.Spec : Prop :=
  ∀ n, P7832128916722708234.a n = A018212 n

end A018212

/-! ## A018212.P8847560331160898864

`(A189976(n+8)+A000581(n+8))/2`
-/

namespace A018212.P8847560331160898864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189976 (n + 8) + A000581 (n + 8) : ℚ) / 2

end

end A018212.P8847560331160898864

namespace A018212

/-- `(A189976(n+8)+A000581(n+8))/2` -/
def P8847560331160898864.Spec : Prop :=
  ∀ n, P8847560331160898864.a n = (A018212 n : ℚ)

end A018212

/-! ## A018212.P8000797308706130749

`∑[A032094(n+9)-∑[A032092(n+7)]]`
-/

namespace A018212.P8000797308706130749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018212.P8000797308706130749

namespace A018212

/-- `∑[A032094(n+9)-∑[A032092(n+7)]]` -/
def P8000797308706130749.Spec : Prop :=
  ∀ n, P8000797308706130749.a n = A018212 n

end A018212

/-! ## A018212.P4242147149077332361

`∑[A034851(A056121(n)+35)]`
-/

namespace A018212.P4242147149077332361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A056121 n + 35).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018212.P4242147149077332361

namespace A018212

/-- `∑[A034851(A056121(n)+35)]` -/
def P4242147149077332361.Spec : Prop :=
  ∀ n, P4242147149077332361.a n = A018212 n

end A018212

/-! ## A018212.P15958752741785249622

`∑[A034851(A155212(n+4))]`
-/

namespace A018212.P15958752741785249622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A155212 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018212.P15958752741785249622

namespace A018212

/-- `∑[A034851(A155212(n+4))]` -/
def P15958752741785249622.Spec : Prop :=
  ∀ n, P15958752741785249622.a n = A018212 n

end A018212

/-! ## A018212.P13418287947916061348

`A034851(A000124(n+8)+8-gcd(n, n+1))`
-/

namespace A018212.P13418287947916061348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000124 (n + 8) + 8 - (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A018212.P13418287947916061348

namespace A018212

/-- `A034851(A000124(n+8)+8-gcd(n, n+1))` -/
def P13418287947916061348.Spec : Prop :=
  ∀ n, P13418287947916061348.a n = A018212 n

end A018212

/-! ## A018212.P17358091143978417404

`A034851(A155212(n+5)-1)`
-/

namespace A018212.P17358091143978417404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A155212 (n + 5) - 1).toNat

end

end A018212.P17358091143978417404

namespace A018212

/-- `A034851(A155212(n+5)-1)` -/
def P17358091143978417404.Spec : Prop :=
  ∀ n, P17358091143978417404.a n = A018212 n

end A018212

/-! ## A018212.P1018395921455480318

`A034851(A052905(n+6)-4)`
-/

namespace A018212.P1018395921455480318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A052905 (n + 6) - 4).toNat

end

end A018212.P1018395921455480318

namespace A018212

/-- `A034851(A052905(n+6)-4)` -/
def P1018395921455480318.Spec : Prop :=
  ∀ n, P1018395921455480318.a n = A018212 n

end A018212

/-! ## A018212.P9934410670992399992

`A034851(A000217(n+9)-9)`
-/

namespace A018212.P9934410670992399992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 9) - 9).toNat

end

end A018212.P9934410670992399992

namespace A018212

/-- `A034851(A000217(n+9)-9)` -/
def P9934410670992399992.Spec : Prop :=
  ∀ n, P9934410670992399992.a n = A018212 n

end A018212

/-! ## A018212.P9199377426864895057

`A034851(A000096(n+7)+n+1)`
-/

namespace A018212.P9199377426864895057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A018212.P9199377426864895057

namespace A018212

/-- `A034851(A000096(n+7)+n+1)` -/
def P9199377426864895057.Spec : Prop :=
  ∀ n, P9199377426864895057.a n = A018212 n

end A018212

/-! ## A018212.P14945554005805752440

`A034851(A000124(n+8)+n-1)`
-/

namespace A018212.P14945554005805752440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A018212.P14945554005805752440

namespace A018212

/-- `A034851(A000124(n+8)+n-1)` -/
def P14945554005805752440.Spec : Prop :=
  ∀ n, P14945554005805752440.a n = A018212 n

end A018212

/-!
# A018213: Alkane (or paraffin) numbers l(12,n).

The programs for A018213, there is no canonical definition to state claims against.
-/

/-! ## A018213.P6687090111406112060

`A035927(n)+1-A282077(n)`
-/

namespace A018213.P6687090111406112060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 n + (1 - A282077 n)

end

end A018213.P6687090111406112060

/-! ## A018213.P2536627409223996684

`A000582(n+9)-A282077(n)`
-/

namespace A018213.P2536627409223996684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A282077 n

end

end A018213.P2536627409223996684

/-! ## A018213.P11438840845761993705

`∑[A000581(n+8)]-A282077(n)`
-/

namespace A018213.P11438840845761993705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282077 n

end

end A018213.P11438840845761993705

/-! ## A018213.P17664498569603848799

`∑[∑[A000580(n+7)]]-A282077(n)`
-/

namespace A018213.P17664498569603848799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282077 n

end

end A018213.P17664498569603848799

/-! ## A018213.P14845197585347320673

`2*A001781(n)-A001780(n)-A282077(n)`
-/

namespace A018213.P14845197585347320673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001781 n - A001780 n - A282077 n

end

end A018213.P14845197585347320673

/-! ## A018213.P2428132404713488978

`A001781(n+1)+A001781(n)-A000581(n+9)-A282077(n)`
-/

namespace A018213.P2428132404713488978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 (n + 1) + (A001781 n - A000581 (n + 9)) - A282077 n

end

end A018213.P2428132404713488978

/-! ## A018213.P2605573621504273477

`A140354(n)/A000079(n)-A282077(n)`
-/

namespace A018213.P2605573621504273477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140354 n : ℚ) / (A000079 n : ℚ) - (A282077 n : ℚ)

end

end A018213.P2605573621504273477

/-! ## A018213.P13037974333991294325

`A159916(A000217(n+8)+9)`
-/

namespace A018213.P13037974333991294325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159916 (A000217 (n + 8) + 9).toNat

end

end A018213.P13037974333991294325

/-! ## A018213.P15487913382660279032

`A034851(A000217(n+9)+9)`
-/

namespace A018213.P15487913382660279032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 9) + 9).toNat

end

end A018213.P15487913382660279032

/-! ## A018213.P11686554562004890377

`A034851(A056000(n+6))`
-/

namespace A018213.P11686554562004890377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A056000 (n + 6)).toNat

end

end A018213.P11686554562004890377

/-!
# A018214: Alkane (or paraffin) numbers l(13,n).

The programs for A018214, there is no canonical definition to state claims against.
-/

/-! ## A018214.P10638568993814198439

`∑[A018213(n)]`
-/

namespace A018214.P10638568993814198439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018214.P10638568993814198439

/-! ## A018214.P11626603498351428326

`A282078(n)+A189980(n)`
-/

namespace A018214.P11626603498351428326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n + A189980 (n + 10)

end

end A018214.P11626603498351428326

/-! ## A018214.P6720721415733104958

`A001287(n)-A282078(n)`
-/

namespace A018214.P6720721415733104958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - A282078 n

end

end A018214.P6720721415733104958

/-! ## A018214.P4608931164467727244

`A001287(n)-∑[A282077(n)]`
-/

namespace A018214.P4608931164467727244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018214.P4608931164467727244

/-! ## A018214.P2047961744145565947

`∑[A000582(n+9)-A282077(n)]`
-/

namespace A018214.P2047961744145565947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A282077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018214.P2047961744145565947

/-! ## A018214.P363543551147663160

`∑[A000582(n+9)]-A282078(n)`
-/

namespace A018214.P363543551147663160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282078 n

end

end A018214.P363543551147663160

/-! ## A018214.P6130131516908058767

`∑[∑[A000581(n+8)]-A282077(n)]`
-/

namespace A018214.P6130131516908058767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A282077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018214.P6130131516908058767

/-! ## A018214.P5486138158353206382

`∑[A034851(A000217(n+9)+9)]`
-/

namespace A018214.P5486138158353206382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 9) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018214.P5486138158353206382

/-! ## A018214.P9263733163278074810

`A034851(A000217(n+11)-11)`
-/

namespace A018214.P9263733163278074810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 11) - 11).toNat

end

end A018214.P9263733163278074810

/-! ## A018214.P373155565807014331

`A228570(A341740(n+4)-1)`
-/

namespace A018214.P373155565807014331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228570 (A341740 (n + 4) - 1).toNat

end

end A018214.P373155565807014331

/-!
# A018215: a(n) = n*4^n.

The programs for A018215, the canonical program `A018215.P2890906494214168874` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018215 has offset 0).

The definition of A018215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^n` (program `A018215.P2890906494214168874`, by `A018215.P2890906494214168874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018215.P2890906494214168874

`n*4^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018215

/-- `n*4^n` -/
def P2890906494214168874.Spec : Prop :=
  ∀ n, (P2890906494214168874.a n : ℤ) = A018215 n

theorem P2890906494214168874.correct : P2890906494214168874.Spec := by
  intro n
  simp only [A018215]

end A018215

/-!
# A018217: a(n) = Sum_{j=0..n-1} C(j)*(n-j)*4^(n-j), C = Catalan numbers.

The programs for A018217, the canonical program `A018217.P2488107999870231857` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018217 has offset 0).

The definition of A018217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018217.P2488107999870231857

`2*(n+1)*(4^n-C(2*n+1, n))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018217

/-- `2*(n+1)*(4^n-C(2*n+1, n))` -/
def P2488107999870231857.Spec : Prop :=
  ∀ n, P2488107999870231857.a n = A018217 n

theorem P2488107999870231857.correct : P2488107999870231857.Spec := by
  intro n
  simp only [A018217]

end A018217

/-! ## A018217.P5572943945047244334

`4*A018218(n)`
-/

namespace A018217.P5572943945047244334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A018218 n

end

end A018217.P5572943945047244334

namespace A018217

/-- `4*A018218(n)` -/
def P5572943945047244334.Spec : Prop :=
  ∀ n, P5572943945047244334.a n = A018217 n

end A018217

/-! ## A018217.P2049286929611153190

`A206603(Δ[n²])`
-/

namespace A018217.P2049286929611153190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018217.P2049286929611153190

namespace A018217

/-- `A206603(Δ[n²])` -/
def P2049286929611153190.Spec : Prop :=
  ∀ n, P2049286929611153190.a n = A018217 n

end A018217

/-! ## A018217.P7560538683791682320

`2*A153338(n+1)`
-/

namespace A018217.P7560538683791682320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153338 (n + 1)

end

end A018217.P7560538683791682320

namespace A018217

/-- `2*A153338(n+1)` -/
def P7560538683791682320.Spec : Prop :=
  ∀ n, P7560538683791682320.a n = A018217 n

end A018217

/-! ## A018217.P13563984907580137901

`2*A153335(Δ[n²])`
-/

namespace A018217.P13563984907580137901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153335 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018217.P13563984907580137901

namespace A018217

/-- `2*A153335(Δ[n²])` -/
def P13563984907580137901.Spec : Prop :=
  ∀ n, P13563984907580137901.a n = A018217 n

end A018217

/-! ## A018217.P10357711598806886731

`lcm(2, A206603(2*n+1))`
-/

namespace A018217.P10357711598806886731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206603 (2 * n + 1))

end

end A018217.P10357711598806886731

namespace A018217

/-- `lcm(2, A206603(2*n+1))` -/
def P10357711598806886731.Spec : Prop :=
  ∀ n, (P10357711598806886731.a n : ℤ) = A018217 n

end A018217

/-! ## A018217.P16026018910762649906

`2*(n+1)*A008549(n)`
-/

namespace A018217.P16026018910762649906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A008549 n)

end

end A018217.P16026018910762649906

namespace A018217

/-- `2*(n+1)*A008549(n)` -/
def P16026018910762649906.Spec : Prop :=
  ∀ n, P16026018910762649906.a n = A018217 n

theorem P16026018910762649906.correct : P16026018910762649906.Spec := by
  intro n
  simp only [A018217, Nat.add_sub_cancel, A018217.P16026018910762649906.a, A018217.P2488107999870231857.a, A008549, A008549.P3567318639937649678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018217

/-! ## A018217.P16611322216479505683

`floor(A206604(2*n+1)/2)`
-/

namespace A018217.P16611322216479505683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206604 (2 * n + 1) : ℚ) / 2⌋

end

end A018217.P16611322216479505683

namespace A018217

/-- `floor(A206604(2*n+1)/2)` -/
def P16611322216479505683.Spec : Prop :=
  ∀ n, P16611322216479505683.a n = A018217 n

end A018217

/-! ## A018217.P3625107275061637225

`(n+1)*A093387(2*(n+1))`
-/

namespace A018217.P3625107275061637225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093387 (2 * (n + 1))

end

end A018217.P3625107275061637225

namespace A018217

/-- `(n+1)*A093387(2*(n+1))` -/
def P3625107275061637225.Spec : Prop :=
  ∀ n, P3625107275061637225.a n = A018217 n

end A018217

/-! ## A018217.P854109028968830998

`record[A206603(A006369(n))]`
-/

namespace A018217.P854109028968830998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018217.P854109028968830998

namespace A018217

/-- `record[A206603(A006369(n))]` -/
def P854109028968830998.Spec : Prop :=
  ∀ n, P854109028968830998.a n = A018217 n

end A018217

/-! ## A018217.P4072859647809256847

`A033504(n)-A002457(n)`
-/

namespace A018217.P4072859647809256847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033504 n - A002457 n

end

end A018217.P4072859647809256847

namespace A018217

/-- `A033504(n)-A002457(n)` -/
def P4072859647809256847.Spec : Prop :=
  ∀ n, P4072859647809256847.a n = A018217 n

end A018217

/-! ## A018217.P1921007666390779616

`A008549(n)*A103517(n)`
-/

namespace A018217.P1921007666390779616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n * A103517 n

end

end A018217.P1921007666390779616

namespace A018217

/-- `A008549(n)*A103517(n)` -/
def P1921007666390779616.Spec : Prop :=
  ∀ n, P1921007666390779616.a n = A018217 n

end A018217

/-! ## A018217.P16525137667346003092

`lcm(A018218(n), A117973(n))`
-/

namespace A018217.P16525137667346003092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018218 n) (A117973 n)

end

end A018217.P16525137667346003092

namespace A018217

/-- `lcm(A018218(n), A117973(n))` -/
def P16525137667346003092.Spec : Prop :=
  ∀ n, (P16525137667346003092.a n : ℤ) = A018217 n

end A018217

/-! ## A018217.P3639561802686757752

`A018218(n+1)-A000346(n)`
-/

namespace A018217.P3639561802686757752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018218 (n + 1) - A000346 n

end

end A018217.P3639561802686757752

namespace A018217

/-- `A018218(n+1)-A000346(n)` -/
def P3639561802686757752.Spec : Prop :=
  ∀ n, P3639561802686757752.a n = A018217 n

end A018217

/-! ## A018217.P4438408608645246115

`A004277(n+1)*A008549(n)`
-/

namespace A018217.P4438408608645246115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A008549 n

end

end A018217.P4438408608645246115

namespace A018217

/-- `A004277(n+1)*A008549(n)` -/
def P4438408608645246115.Spec : Prop :=
  ∀ n, P4438408608645246115.a n = A018217 n

theorem P4438408608645246115.correct : P4438408608645246115.Spec := by
  intro n
  simp only [A018217, Nat.add_sub_cancel, A018217.P4438408608645246115.a, A018217.P2488107999870231857.a, A004277, A004277.P16255821370285667660.a, A008549, A008549.P3567318639937649678.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018217

/-! ## A018217.P4671068187986185180

`A008549(n)*A163300(n+1)`
-/

namespace A018217.P4671068187986185180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n * A163300 (n + 1)

end

end A018217.P4671068187986185180

namespace A018217

/-- `A008549(n)*A163300(n+1)` -/
def P4671068187986185180.Spec : Prop :=
  ∀ n, P4671068187986185180.a n = A018217 n

end A018217

/-! ## A018217.P15433077225868331582

`A008549(n)*A051755(n+2)`
-/

namespace A018217.P15433077225868331582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n * A051755 (n + 2)

end

end A018217.P15433077225868331582

namespace A018217

/-- `A008549(n)*A051755(n+2)` -/
def P15433077225868331582.Spec : Prop :=
  ∀ n, P15433077225868331582.a n = A018217 n

end A018217

/-! ## A018217.P9700571727709150191

`2*(A018215(n)-A172060(n))`
-/

namespace A018217.P9700571727709150191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A018215 n - A172060 n)

end

end A018217.P9700571727709150191

namespace A018217

/-- `2*(A018215(n)-A172060(n))` -/
def P9700571727709150191.Spec : Prop :=
  ∀ n, P9700571727709150191.a n = A018217 n

end A018217

/-!
# A018218: Sum(C(j)*(n-j)*4^(n-j-1),j=0..n-1), C = Catalan numbers.

The programs for A018218, the canonical program `A018218.P7836336077931377100` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018218 has offset 0).

The definition of A018218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018218.P7836336077931377100

`(n+1)*(4^n-C(2*n+1, n))/2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018218

/-- `(n+1)*(4^n-C(2*n+1, n))/2` -/
def P7836336077931377100.Spec : Prop :=
  ∀ n, P7836336077931377100.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P5037349189090016106

`A153338(n+1)/2`
-/

namespace A018218.P5037349189090016106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153338 (n + 1) : ℚ) / 2

end

end A018218.P5037349189090016106

namespace A018218

/-- `A153338(n+1)/2` -/
def P5037349189090016106.Spec : Prop :=
  ∀ n, P5037349189090016106.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P7683476823305586589

`A153335(Δ[n²])/2`
-/

namespace A018218.P7683476823305586589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153335 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A018218.P7683476823305586589

namespace A018218

/-- `A153335(Δ[n²])/2` -/
def P7683476823305586589.Spec : Prop :=
  ∀ n, P7683476823305586589.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P8011569363021578758

`(n+1)/2*A008549(n)`
-/

namespace A018218.P8011569363021578758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A008549 n : ℚ)

end

end A018218.P8011569363021578758

namespace A018218

/-- `(n+1)/2*A008549(n)` -/
def P8011569363021578758.Spec : Prop :=
  ∀ n, P8011569363021578758.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P13914177630145615912

`A303602(n)-A002699(n)`
-/

namespace A018218.P13914177630145615912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303602 n - A002699 n

end

end A018218.P13914177630145615912

namespace A018218

/-- `A303602(n)-A002699(n)` -/
def P13914177630145615912.Spec : Prop :=
  ∀ n, P13914177630145615912.a n = A018218 n

end A018218

/-! ## A018218.P3010427101110663245

`A081039(n)-A240879(n)`
-/

namespace A018218.P3010427101110663245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - A240879 n

end

end A018218.P3010427101110663245

namespace A018218

/-- `A081039(n)-A240879(n)` -/
def P3010427101110663245.Spec : Prop :=
  ∀ n, P3010427101110663245.a n = A018218 n

end A018218

/-! ## A018218.P912856627006890418

`A395675(n)-A002457(n)`
-/

namespace A018218.P912856627006890418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395675 n - A002457 n

end

end A018218.P912856627006890418

namespace A018218

/-- `A395675(n)-A002457(n)` -/
def P912856627006890418.Spec : Prop :=
  ∀ n, P912856627006890418.a n = A018218 n

end A018218

/-! ## A018218.P864935675025835320

`A038806(n)-A210064(n+1)`
-/

namespace A018218.P864935675025835320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038806 n - A210064 (n + 1)

end

end A018218.P864935675025835320

namespace A018218

/-- `A038806(n)-A210064(n+1)` -/
def P864935675025835320.Spec : Prop :=
  ∀ n, P864935675025835320.a n = A018218 n

end A018218

/-! ## A018218.P496671034755059886

`A002697(n+1)-A395675(n)`
-/

namespace A018218.P496671034755059886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A395675 n

end

end A018218.P496671034755059886

namespace A018218

/-- `A002697(n+1)-A395675(n)` -/
def P496671034755059886.Spec : Prop :=
  ∀ n, P496671034755059886.a n = A018218 n

end A018218

/-! ## A018218.P6984315024413548362

`A130783(2*n)-A002699(n)`
-/

namespace A018218.P6984315024413548362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (2 * n) - A002699 n

end

end A018218.P6984315024413548362

namespace A018218

/-- `A130783(2*n)-A002699(n)` -/
def P6984315024413548362.Spec : Prop :=
  ∀ n, P6984315024413548362.a n = A018218 n

end A018218

/-! ## A018218.P17265575280983086341

`A303602(n)-2*A002697(n)`
-/

namespace A018218.P17265575280983086341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303602 n - 2 * A002697 n

end

end A018218.P17265575280983086341

namespace A018218

/-- `A303602(n)-2*A002697(n)` -/
def P17265575280983086341.Spec : Prop :=
  ∀ n, P17265575280983086341.a n = A018218 n

end A018218

/-! ## A018218.P11467417314681236457

`A303602(n)-A185251(2*n)`
-/

namespace A018218.P11467417314681236457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303602 n - A185251 (2 * n)

end

end A018218.P11467417314681236457

namespace A018218

/-- `A303602(n)-A185251(2*n)` -/
def P11467417314681236457.Spec : Prop :=
  ∀ n, P11467417314681236457.a n = A018218 n

end A018218

/-! ## A018218.P14489530951562951664

`A303602(n)-A185252(2*n)`
-/

namespace A018218.P14489530951562951664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303602 n - A185252 (2 * n)

end

end A018218.P14489530951562951664

namespace A018218

/-- `A303602(n)-A185252(2*n)` -/
def P14489530951562951664.Spec : Prop :=
  ∀ n, P14489530951562951664.a n = A018218 n

end A018218

/-! ## A018218.P18209291613727656297

`(A018215(n)-A172060(n))/2`
-/

namespace A018218.P18209291613727656297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018215 n - A172060 n : ℚ) / 2

end

end A018218.P18209291613727656297

namespace A018218

/-- `(A018215(n)-A172060(n))/2` -/
def P18209291613727656297.Spec : Prop :=
  ∀ n, P18209291613727656297.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P13275280751744923389

`A185251(2*n+1)-A002699(n)`
-/

namespace A018218.P13275280751744923389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (2 * n + 1) - A002699 n

end

end A018218.P13275280751744923389

namespace A018218

/-- `A185251(2*n+1)-A002699(n)` -/
def P13275280751744923389.Spec : Prop :=
  ∀ n, P13275280751744923389.a n = A018218 n

end A018218

/-! ## A018218.P16991640382715945659

`(A002697(n+1)-A002457(n))/2`
-/

namespace A018218.P16991640382715945659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 (n + 1) - A002457 n : ℚ) / 2

end

end A018218.P16991640382715945659

namespace A018218

/-- `(A002697(n+1)-A002457(n))/2` -/
def P16991640382715945659.Spec : Prop :=
  ∀ n, P16991640382715945659.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P13590422600803362671

`(A153337(n+1)-A000984(n))/2`
-/

namespace A018218.P13590422600803362671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153337 (n + 1) - A000984 n : ℚ) / 2

end

end A018218.P13590422600803362671

namespace A018218

/-- `(A153337(n+1)-A000984(n))/2` -/
def P13590422600803362671.Spec : Prop :=
  ∀ n, P13590422600803362671.a n = (A018218 n : ℚ)

end A018218

/-! ## A018218.P7678087602573421452

`A130783(2*n)-A185251(2*n)`
-/

namespace A018218.P7678087602573421452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (2 * n) - A185251 (2 * n)

end

end A018218.P7678087602573421452

namespace A018218

/-- `A130783(2*n)-A185251(2*n)` -/
def P7678087602573421452.Spec : Prop :=
  ∀ n, P7678087602573421452.a n = A018218 n

end A018218

/-! ## A018218.P11067518900198268582

`A130783(2*n)-A185252(2*n)`
-/

namespace A018218.P11067518900198268582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (2 * n) - A185252 (2 * n)

end

end A018218.P11067518900198268582

namespace A018218

/-- `A130783(2*n)-A185252(2*n)` -/
def P11067518900198268582.Spec : Prop :=
  ∀ n, P11067518900198268582.a n = A018218 n

end A018218

/-! ## A018218.P3773329544050586920

`A002697(n+1)-A339240(n+1)/2`
-/

namespace A018218.P3773329544050586920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 (n + 1) : ℚ) - (A339240 (n + 1) : ℚ) / 2

end

end A018218.P3773329544050586920

namespace A018218

/-- `A002697(n+1)-A339240(n+1)/2` -/
def P3773329544050586920.Spec : Prop :=
  ∀ n, P3773329544050586920.a n = (A018218 n : ℚ)

end A018218

/-!
# A018220: Row 1 of A018219, i.e., (1, n, a_n) is a winning position.

The programs for A018220, there is no canonical definition to state claims against.
-/

/-! ## A018220.P8576202712357251664

`A018219(∑[n+1]+1)`
-/

namespace A018220.P8576202712357251664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A018220.P8576202712357251664

/-! ## A018220.P10024267592685235107

`or(char[3], A018219(A134869(n+1)))`
-/

namespace A018220.P10024267592685235107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A018219 (A134869 (n + 1)).toNat)

end

end A018220.P10024267592685235107

/-! ## A018220.P3044291411191110077

`A018219(A134869(n+1))%A017465(n)`
-/

namespace A018220.P3044291411191110077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A134869 (n + 1)).toNat) (A017465 n)

end

end A018220.P3044291411191110077

/-! ## A018220.P2253508885351988159

`lcm(A018219(A134869(n+1)), A033999(n))`
-/

namespace A018220.P2253508885351988159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018219 (A134869 (n + 1)).toNat) (A033999 n)

end

end A018220.P2253508885351988159

/-! ## A018220.P14788175955000511212

`A007318(C(2, n))*A018219(A134869(n+1))`
-/

namespace A018220.P14788175955000511212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A018219 (A134869 (n + 1)).toNat

end

end A018220.P14788175955000511212

/-! ## A018220.P8597857336172753252

`A000041(and(1, -n))*A018219(A134869(n+1))`
-/

namespace A018220.P8597857336172753252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A018219 (A134869 (n + 1)).toNat

end

end A018220.P8597857336172753252

/-! ## A018220.P13842174627026042370

`A014963(6*(n+1))*A018219(A134869(n+1))`
-/

namespace A018220.P13842174627026042370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A018219 (A134869 (n + 1)).toNat

end

end A018220.P13842174627026042370

/-! ## A018220.P13700036960471159674

`A018219(A134869(n+1))+val(A000040(n+1), 4)`
-/

namespace A018220.P13700036960471159674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A134869 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A018220.P13700036960471159674

/-! ## A018220.P7391598781378045408

`A000041(abs((-1)^n))*A018219(A134869(n+1))`
-/

namespace A018220.P7391598781378045408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |(-1) ^ n|.toNat * A018219 (A134869 (n + 1)).toNat

end

end A018220.P7391598781378045408

/-! ## A018220.P2559304870870325401

`A018219(A034856(n+1))+and(2, char[1])`
-/

namespace A018220.P2559304870870325401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A034856 (n + 1)).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A018220.P2559304870870325401

/-! ## A018220.P1132402707150298792

`gcd(A000038(n), A018219(A034856(n+1)))`
-/

namespace A018220.P1132402707150298792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A018219 (A034856 (n + 1)).toNat)

end

end A018220.P1132402707150298792

/-! ## A018220.P9173265289482329969

`A018219(A034856(n+1))+A000007(n+1)`
-/

namespace A018220.P9173265289482329969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A018220.P9173265289482329969

/-! ## A018220.P11889253532982149662

`A018219(A034856(n+1))+A000038(n+1)`
-/

namespace A018220.P11889253532982149662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A034856 (n + 1)).toNat + A000038 (n + 1)

end

end A018220.P11889253532982149662

/-! ## A018220.P11571185921883442708

`A001511(2*n+1)*A018219(A034856(n+1))`
-/

namespace A018220.P11571185921883442708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A018219 (A034856 (n + 1)).toNat

end

end A018220.P11571185921883442708

/-! ## A018220.P14302074459431042851

`A014963(12*(n+1))*A018219(A034856(n+1))`
-/

namespace A018220.P14302074459431042851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A018219 (A034856 (n + 1)).toNat

end

end A018220.P14302074459431042851

/-! ## A018220.P14013300574097010063

`and(1, A099035(n+1))*A018219(A034856(n+1))`
-/

namespace A018220.P14013300574097010063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A099035 (n + 1)) * A018219 (A034856 (n + 1)).toNat

end

end A018220.P14013300574097010063

/-! ## A018220.P6638238890987847926

`A018219(A034856(n+1))+A008683(2*(n+2)²)`
-/

namespace A018220.P6638238890987847926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A034856 (n + 1)).toNat + A008683 (2 * (n + 2) ^ 2)

end

end A018220.P6638238890987847926

/-! ## A018220.P9629740429244287066

`A018219(A034856(n+1))%p?[A018252(n+1)+4]`
-/

namespace A018220.P9629740429244287066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A034856 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A018220.P9629740429244287066

/-!
# A018221: Row 2 of A018219, i.e., (2,n,a_n) is a winning position.

The programs for A018221, there is no canonical definition to state claims against.
-/

/-! ## A018221.P543358786467168480

`A018219(∑[n+2]+3)`
-/

namespace A018221.P543358786467168480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A018221.P543358786467168480

/-! ## A018221.P4838035381684624186

`A018219(A340266(n+1))%A005383(n+1)`
-/

namespace A018221.P4838035381684624186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A340266 (n + 1)).toNat) (A005383 (n + 1))

end

end A018221.P4838035381684624186

/-! ## A018221.P15750094137042563389

`A018219(A340266(n+1))^gcd(n, A131738(n))`
-/

namespace A018221.P15750094137042563389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A340266 (n + 1)).toNat ^ Int.gcd (n : ℤ) (A131738 n)

end

end A018221.P15750094137042563389

/-! ## A018221.P13411491978838621961

`A018219(A167614(n+1)+A057428(n))%A326312(n+1)`
-/

namespace A018221.P13411491978838621961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A167614 (n + 1) + A057428 n).toNat) (A326312 (n + 1))

end

end A018221.P13411491978838621961

/-! ## A018221.P16615148974067019707

`and(-1, A018219(A027379(n+1)))`
-/

namespace A018221.P16615148974067019707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A018219 (A027379 (n + 1)).toNat)

end

end A018221.P16615148974067019707

/-! ## A018221.P17621526505188659531

`(A018219(A055998(n+1))^(1/2))²`
-/

namespace A018221.P17621526505188659531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A018219 (A055998 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A018221.P17621526505188659531

/-! ## A018221.P13909544246465469889

`A018219(A055998(n+1))%A094125(n)`
-/

namespace A018221.P13909544246465469889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A055998 (n + 1)).toNat) (A094125 n)

end

end A018221.P13909544246465469889

/-! ## A018221.P15508528484748439533

`lcm(A018219(A055998(n+1)), A158388(n))`
-/

namespace A018221.P15508528484748439533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018219 (A055998 (n + 1)).toNat) (A158388 n)

end

end A018221.P15508528484748439533

/-! ## A018221.P12108664828911674831

`A018219(A055998(n+1))/A000041(C(2, n))`
-/

namespace A018221.P12108664828911674831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018219 (A055998 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 n) : ℚ)

end

end A018221.P12108664828911674831

/-! ## A018221.P12525046474929220799

`(A000041(n)%2)!*A018219(A055998(n+1))`
-/

namespace A018221.P12525046474929220799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A018219 (A055998 (n + 1)).toNat

end

end A018221.P12525046474929220799

/-! ## A018221.P11532044204268318576

`A000010(C(2, n)!)*A018219(A055998(n+1))`
-/

namespace A018221.P11532044204268318576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A018219 (A055998 (n + 1)).toNat

end

end A018221.P11532044204268318576

/-! ## A018221.P8957962734196329238

`A007318(C(2, n+2))*A018219(A055998(n+1))`
-/

namespace A018221.P8957962734196329238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A018219 (A055998 (n + 1)).toNat

end

end A018221.P8957962734196329238

/-! ## A018221.P16109637991729666723

`A000045(((-1)^n)²)*A018219(A055998(n+1))`
-/

namespace A018221.P16109637991729666723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A018219 (A055998 (n + 1)).toNat

end

end A018221.P16109637991729666723

/-! ## A018221.P15031154568528888442

`A018219(A055998(n+1))^A000045(ceil(n/(n+1)))`
-/

namespace A018221.P15031154568528888442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018219 (A055998 (n + 1)).toNat : ℚ) ^ (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A018221.P15031154568528888442

/-! ## A018221.P14812162992284488073

`(n+1)/A000027(n+1)*A018219(A055998(n+1))`
-/

namespace A018221.P14812162992284488073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000027 (n + 1) : ℚ) * (A018219 (A055998 (n + 1)).toNat : ℚ)

end

end A018221.P14812162992284488073

/-! ## A018221.P15600174837561318519

`A008683(A005117(n+1))²*A018219(A055998(n+1))`
-/

namespace A018221.P15600174837561318519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A018219 (A055998 (n + 1)).toNat

end

end A018221.P15600174837561318519

/-!
# A018222: Row 3 of A018219, i.e., (3,n,a_n) is a winning position.

The programs for A018222, there is no canonical definition to state claims against.
-/

/-! ## A018222.P9961590422348558340

`A018219(∑[n+3]+6)`
-/

namespace A018222.P9961590422348558340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A018222.P9961590422348558340

/-! ## A018222.P15172552350736036925

`or(char[1], A018219(A167614(n+2)))`
-/

namespace A018222.P15172552350736036925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A018219 (A167614 (n + 2)).toNat)

end

end A018222.P15172552350736036925

/-! ## A018222.P7480325078584684373

`lcm(A018219(A167614(n+2)), A033999(n))`
-/

namespace A018222.P7480325078584684373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018219 (A167614 (n + 2)).toNat) (A033999 n)

end

end A018222.P7480325078584684373

/-! ## A018222.P13640813594693375945

`A018219(A167614(n+2))+char[A006960(n)]`
-/

namespace A018222.P13640813594693375945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018222.P13640813594693375945

/-! ## A018222.P6766514122462488478

`A018219(A167614(n+2))*A158388(n+1)`
-/

namespace A018222.P6766514122462488478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A167614 (n + 2)).toNat * A158388 (n + 1)

end

end A018222.P6766514122462488478

/-! ## A018222.P2201218738571981854

`A231600(2*n)+A018219(A167614(n+2))`
-/

namespace A018222.P2201218738571981854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231600 (2 * n) + A018219 (A167614 (n + 2)).toNat

end

end A018222.P2201218738571981854

/-! ## A018222.P16899663214143827768

`A018219(A167614(n+2))%A154514(n+1)`
-/

namespace A018222.P16899663214143827768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A167614 (n + 2)).toNat) (A154514 (n + 1))

end

end A018222.P16899663214143827768

/-! ## A018222.P13610891813632952289

`and(A018219(A167614(n+2)), A057428(n+1))`
-/

namespace A018222.P13610891813632952289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018219 (A167614 (n + 2)).toNat) (A057428 (n + 1))

end

end A018222.P13610891813632952289

/-! ## A018222.P8648716774934781337

`A018219(A167614(n+2))/A000040(n+2)%2`
-/

namespace A018222.P8648716774934781337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018219 (A167614 (n + 2)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A018222.P8648716774934781337

/-! ## A018222.P2181498994364555157

`A018219(A167614(n+2))+A008683(12*n+8)`
-/

namespace A018222.P2181498994364555157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A167614 (n + 2)).toNat + A008683 (12 * n + 8)

end

end A018222.P2181498994364555157

/-! ## A018222.P17577960980390787606

`A007318(val(n+1, 4))*A018219(A167614(n+2))`
-/

namespace A018222.P17577960980390787606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A018219 (A167614 (n + 2)).toNat

end

end A018222.P17577960980390787606

/-! ## A018222.P16738375123184030940

`or(A018219(A167614(n+2)), A322860(2*n+1))`
-/

namespace A018222.P16738375123184030940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018219 (A167614 (n + 2)).toNat) (A322860 (2 * n + 1))

end

end A018222.P16738375123184030940

/-!
# A018224: a(n) = binomial(n, floor(n/2))^2 = A001405(n)^2.

The programs for A018224, the canonical program `A018224.P18167034357064134174` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018224 has offset 0).

The definition of A018224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))²` (program `A018224.P18167034357064134174`, by `A018224.P18167034357064134174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018224.P18167034357064134174

`C(n, floor(n/2))²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018224

/-- `C(n, floor(n/2))²` -/
def P18167034357064134174.Spec : Prop :=
  ∀ n, (P18167034357064134174.a n : ℤ) = A018224 n

theorem P18167034357064134174.correct : P18167034357064134174.Spec := by
  intro n
  simp only [A018224]

end A018224

/-! ## A018224.P10882881753935859793

`A001405(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018224.P10882881753935859793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n ^ 2

end

end A018224.P10882881753935859793

namespace A018224

/-- `A001405(n)²` -/
def P10882881753935859793.Spec : Prop :=
  ∀ n, P10882881753935859793.a n = A018224 n

theorem P10882881753935859793.correct : P10882881753935859793.Spec := by
  intro n
  simp only [A018224, Nat.add_sub_cancel, A018224.P10882881753935859793.a, A018224.P18167034357064134174.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018224

/-! ## A018224.P7748045672538488585

`A056040(n)*A056040(n+1)/(n+1)`
-/

namespace A018224.P7748045672538488585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * A056040 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A018224.P7748045672538488585

namespace A018224

/-- `A056040(n)*A056040(n+1)/(n+1)` -/
def P7748045672538488585.Spec : Prop :=
  ∀ n, P7748045672538488585.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P131493564249250753

`(n!/(floor(n/2)!*floor((n+1)/2)!))²`
-/

namespace A018224.P131493564249250753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat * Nat.factorial ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ)) ^ 2

end

end A018224.P131493564249250753

namespace A018224

/-- `(n!/(floor(n/2)!*floor((n+1)/2)!))²` -/
def P131493564249250753.Spec : Prop :=
  ∀ n, P131493564249250753.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P14601514922972698773

`C(n, round(n/2))^ceil(atan(n))`
-/

namespace A018224.P14601514922972698773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A018224.P14601514922972698773

namespace A018224

/-- `C(n, round(n/2))^ceil(atan(n))` -/
def P14601514922972698773.Spec : Prop :=
  ∀ n, P14601514922972698773.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P12608003768702231373

`(n/floor((n+1)/2))²*a(n-1)` with `a(0)=1`
-/

namespace A018224.P12608003768702231373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ)) ^ 2 * a (n - 1)

end

end A018224.P12608003768702231373

namespace A018224

/-- `(n/floor((n+1)/2))²*a(n-1)` -/
def P12608003768702231373.Spec : Prop :=
  ∀ n, P12608003768702231373.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P1501135025129321503

`a(n-1)/(floor((n+1)/2)/n)²` with `a(0)=1`
-/

namespace A018224.P1501135025129321503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((⌊(n + 1 : ℚ) / 2⌋ : ℚ) / (n : ℚ)) ^ 2

end

end A018224.P1501135025129321503

namespace A018224

/-- `a(n-1)/(floor((n+1)/2)/n)²` -/
def P1501135025129321503.Spec : Prop :=
  ∀ n, P1501135025129321503.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P6780246021770870662

`((∏[2*or(1, n)/(n+1)]-2)/2+1)²`
-/

namespace A018224.P6780246021770870662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2 + 1) ^ 2

end

end A018224.P6780246021770870662

namespace A018224

/-- `((∏[2*or(1, n)/(n+1)]-2)/2+1)²` -/
def P6780246021770870662.Spec : Prop :=
  ∀ n, P6780246021770870662.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P6217813533810355995

`A126930(n)²`
-/

namespace A018224.P6217813533810355995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n ^ 2

end

end A018224.P6217813533810355995

namespace A018224

/-- `A126930(n)²` -/
def P6217813533810355995.Spec : Prop :=
  ∀ n, P6217813533810355995.a n = A018224 n

end A018224

/-! ## A018224.P463920133457090045

`A107230(∑[n])²`
-/

namespace A018224.P463920133457090045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A018224.P463920133457090045

namespace A018224

/-- `A107230(∑[n])²` -/
def P463920133457090045.Spec : Prop :=
  ∀ n, P463920133457090045.a n = A018224 n

end A018224

/-! ## A018224.P6431927903711505602

`(A014495(n)+1)²`
-/

namespace A018224.P6431927903711505602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) ^ 2

end

end A018224.P6431927903711505602

namespace A018224

/-- `(A014495(n)+1)²` -/
def P6431927903711505602.Spec : Prop :=
  ∀ n, P6431927903711505602.a n = A018224 n

theorem P6431927903711505602.correct : P6431927903711505602.Spec := by
  intro n
  simp only [A018224, Nat.add_sub_cancel, A018224.P6431927903711505602.a, A018224.P18167034357064134174.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018224

/-! ## A018224.P3165289344419401122

`A210736(n+1)²`
-/

namespace A018224.P3165289344419401122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) ^ 2

end

end A018224.P3165289344419401122

namespace A018224

/-- `A210736(n+1)²` -/
def P3165289344419401122.Spec : Prop :=
  ∀ n, P3165289344419401122.a n = A018224 n

end A018224

/-! ## A018224.P15857300456965419870

`(1-A051920(n))²`
-/

namespace A018224.P15857300456965419870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051920 n) ^ 2

end

end A018224.P15857300456965419870

namespace A018224

/-- `(1-A051920(n))²` -/
def P15857300456965419870.Spec : Prop :=
  ∀ n, P15857300456965419870.a n = A018224 n

theorem P15857300456965419870.correct : P15857300456965419870.Spec := by
  intro n
  simp only [A018224, Nat.add_sub_cancel, A018224.P15857300456965419870.a, A018224.P18167034357064134174.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018224

/-! ## A018224.P13074772420955871884

`(A201686(n)+2)²`
-/

namespace A018224.P13074772420955871884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A201686 n + 2) ^ 2

end

end A018224.P13074772420955871884

namespace A018224

/-- `(A201686(n)+2)²` -/
def P13074772420955871884.Spec : Prop :=
  ∀ n, P13074772420955871884.a n = A018224 n

theorem P13074772420955871884.correct : P13074772420955871884.Spec := by
  intro n
  simp only [A018224, Nat.add_sub_cancel, A018224.P13074772420955871884.a, A018224.P18167034357064134174.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A018224

/-! ## A018224.P12393431338995984635

`A193384(2*(n+1))`
-/

namespace A018224.P12393431338995984635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193384 (2 * (n + 1))

end

end A018224.P12393431338995984635

namespace A018224

/-- `A193384(2*(n+1))` -/
def P12393431338995984635.Spec : Prop :=
  ∀ n, P12393431338995984635.a n = A018224 n

end A018224

/-! ## A018224.P7925430105136859760

`Δ[A072100(n+1)]²`
-/

namespace A018224.P7925430105136859760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A018224.P7925430105136859760

namespace A018224

/-- `Δ[A072100(n+1)]²` -/
def P7925430105136859760.Spec : Prop :=
  ∀ n, P7925430105136859760.a n = A018224 n

end A018224

/-! ## A018224.P8866060572572757062

`(A063886(n+1)/2)²`
-/

namespace A018224.P8866060572572757062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A063886 (n + 1) : ℚ) / 2) ^ 2

end

end A018224.P8866060572572757062

namespace A018224

/-- `(A063886(n+1)/2)²` -/
def P8866060572572757062.Spec : Prop :=
  ∀ n, P8866060572572757062.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P7330409626845922513

`(A331552(n)/(n+1))²`
-/

namespace A018224.P7330409626845922513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A331552 n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A018224.P7330409626845922513

namespace A018224

/-- `(A331552(n)/(n+1))²` -/
def P7330409626845922513.Spec : Prop :=
  ∀ n, P7330409626845922513.a n = (A018224 n : ℚ)

end A018224

/-! ## A018224.P14641776791181723265

`(n-∑[∑[A191529(n)]])²`
-/

namespace A018224.P14641776791181723265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A018224.P14641776791181723265

namespace A018224

/-- `(n-∑[∑[A191529(n)]])²` -/
def P14641776791181723265.Spec : Prop :=
  ∀ n, P14641776791181723265.a n = A018224 n

end A018224

/-! ## A018224.P16033696227210123655

`(A107231(n)/∑[n+1])²`
-/

namespace A018224.P16033696227210123655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A107231 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) ^ 2

end

end A018224.P16033696227210123655

namespace A018224

/-- `(A107231(n)/∑[n+1])²` -/
def P16033696227210123655.Spec : Prop :=
  ∀ n, P16033696227210123655.a n = (A018224 n : ℚ)

end A018224

/-!
# A018225: Number of connected chord diagrams of degree n.

The programs for A018225, there is no canonical definition to state claims against.
-/

/-! ## A018225.P6682880038034314371

`A007769(n+1)-A317184(n+1)`
-/

namespace A018225.P6682880038034314371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007769 (n + 1) - A317184 (n + 1)

end

end A018225.P6682880038034314371

/-! ## A018225.P9545159987622755757

`or(10, A356065(2*a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A018225.P9545159987622755757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  Int.lor 10 (A356065 (2 * a (n - 1) - a (n - 2)).toNat)

end

end A018225.P9545159987622755757

/-!
# A018226: Magic numbers of nucleons: nuclei with one of these numbers of either protons or neutrons are more stable against nuclear decay.

The programs for A018226, the canonical program `A018226.P16393125049317702950` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018226 has offset 1).

The definition of A018226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171386, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A018226.P16393125049317702950

`(n+1)*((n+1)²+5)/3+(4*(n+1)-6)*A171386(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018226

/-- `(n+1)*((n+1)²+5)/3+(4*(n+1)-6)*A171386(n+1)` -/
def P16393125049317702950.Spec : Prop :=
  ∀ n, P16393125049317702950.a n = (A018226 (n + 1) : ℚ)

end A018226

/-! ## A018226.P15741696428861794758

`A162626(n+1)`
-/

namespace A018226.P15741696428861794758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162626 (n + 1)

end

end A018226.P15741696428861794758

namespace A018226

/-- `A162626(n+1)` -/
def P15741696428861794758.Spec : Prop :=
  ∀ n, P15741696428861794758.a n = A018226 (n + 1)

end A018226

/-! ## A018226.P11839682758006131162

`∑[A210842(n+1)]`
-/

namespace A018226.P11839682758006131162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018226.P11839682758006131162

namespace A018226

/-- `∑[A210842(n+1)]` -/
def P11839682758006131162.Spec : Prop :=
  ∀ n, P11839682758006131162.a n = A018226 (n + 1)

end A018226

/-!
# A018227: Magic numbers: atoms with full shells containing any of these numbers of electrons are considered electronically stable.

The programs for A018227, the canonical program `A018227.P18393074303411481755` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018227 has offset 1).

The definition of A018227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018227.P18393074303411481755

`a(n-1)+(2*(n+1)+3+(-1)^(n+1))²/8` with `a(0)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018227

/-- `a(n-1)+(2*(n+1)+3+(-1)^(n+1))²/8` -/
def P18393074303411481755.Spec : Prop :=
  ∀ n, P18393074303411481755.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P1632596538289643595

`(n+1)*((n+4)²+2)/6+(n+3)*(1+(-1)^(n+1))/4-1`
-/

namespace A018227.P1632596538289643595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 4) ^ 2 + 2) : ℚ) / 6 + ((n + 3 : ℤ) * (1 + (-1) ^ (n + 1)) : ℚ) / 4 - 1

end

end A018227.P1632596538289643595

namespace A018227

/-- `(n+1)*((n+4)²+2)/6+(n+3)*(1+(-1)^(n+1))/4-1` -/
def P1632596538289643595.Spec : Prop :=
  ∀ n, P1632596538289643595.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P5957847727545187689

`∑[and(n+3, -2)²/2]`
-/

namespace A018227.P5957847727545187689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 3 : ℤ) (-2) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018227.P5957847727545187689

namespace A018227

/-- `∑[and(n+3, -2)²/2]` -/
def P5957847727545187689.Spec : Prop :=
  ∀ n, P5957847727545187689.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P4774471433912285685

`∑[(or(1, n+1)+1)²]/2`
-/

namespace A018227.P4774471433912285685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A018227.P4774471433912285685

namespace A018227

/-- `∑[(or(1, n+1)+1)²]/2` -/
def P4774471433912285685.Spec : Prop :=
  ∀ n, P4774471433912285685.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P3459915404513183245

`∑[(n%2+2+n)²]/2`
-/

namespace A018227.P3459915404513183245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 2 + n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A018227.P3459915404513183245

namespace A018227

/-- `∑[(n%2+2+n)²]/2` -/
def P3459915404513183245.Spec : Prop :=
  ∀ n, P3459915404513183245.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P9521655509030514356

`∑[(and(1, n)+n+2)²]/2`
-/

namespace A018227.P9521655509030514356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + (n + 2)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A018227.P9521655509030514356

namespace A018227

/-- `∑[(and(1, n)+n+2)²]/2` -/
def P9521655509030514356.Spec : Prop :=
  ∀ n, P9521655509030514356.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P8146173667796957209

`2*∑[∑[1-a(n-1)]²]` with `a(0)=1, a(1)=1`
-/

namespace A018227.P8146173667796957209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018227.P8146173667796957209

namespace A018227

/-- `2*∑[∑[1-a(n-1)]²]` -/
def P8146173667796957209.Spec : Prop :=
  ∀ n, P8146173667796957209.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P4113604420415879711

`∑[∑[2-a(n-1)]²]/2` with `a(0)=2, a(1)=2`
-/

namespace A018227.P4113604420415879711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A018227.P4113604420415879711

namespace A018227

/-- `∑[∑[2-a(n-1)]²]/2` -/
def P4113604420415879711.Spec : Prop :=
  ∀ n, P4113604420415879711.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P7886064285409054342

`∑[(gcd(2, n+1)+n+1)²]/2`
-/

namespace A018227.P7886064285409054342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) + (n + 1)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A018227.P7886064285409054342

namespace A018227

/-- `∑[(gcd(2, n+1)+n+1)²]/2` -/
def P7886064285409054342.Spec : Prop :=
  ∀ n, P7886064285409054342.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P12056772839872800551

`∑[A093907(n+1)]`
-/

namespace A018227.P12056772839872800551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018227.P12056772839872800551

namespace A018227

/-- `∑[A093907(n+1)]` -/
def P12056772839872800551.Spec : Prop :=
  ∀ n, P12056772839872800551.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P7225705479667305743

`∑[2*A080513(n)²]`
-/

namespace A018227.P7225705479667305743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080513 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018227.P7225705479667305743

namespace A018227

/-- `∑[2*A080513(n)²]` -/
def P7225705479667305743.Spec : Prop :=
  ∀ n, P7225705479667305743.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P2691443165820603449

`∑[2*A008619(n+1)²]`
-/

namespace A018227.P2691443165820603449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018227.P2691443165820603449

namespace A018227

/-- `∑[2*A008619(n+1)²]` -/
def P2691443165820603449.Spec : Prop :=
  ∀ n, P2691443165820603449.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P12987536507741896675

`∑[(A157532(A001511(n+1))+n)²]/2`
-/

namespace A018227.P12987536507741896675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (A001511 (n + 1)).toNat + (n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A018227.P12987536507741896675

namespace A018227

/-- `∑[(A157532(A001511(n+1))+n)²]/2` -/
def P12987536507741896675.Spec : Prop :=
  ∀ n, P12987536507741896675.a n = (A018227 (n + 1) : ℚ)

end A018227

/-! ## A018227.P2111181690986749085

`∑[A116471(n+2)]`
-/

namespace A018227.P2111181690986749085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018227.P2111181690986749085

namespace A018227

/-- `∑[A116471(n+2)]` -/
def P2111181690986749085.Spec : Prop :=
  ∀ n, P2111181690986749085.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P616599520723708496

`2*(Δ[A005994(n)]-1)`
-/

namespace A018227.P616599520723708496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A018227.P616599520723708496

namespace A018227

/-- `2*(Δ[A005994(n)]-1)` -/
def P616599520723708496.Spec : Prop :=
  ∀ n, P616599520723708496.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P18172615718433081105

`2*(A005993(n+1)-1)`
-/

namespace A018227.P18172615718433081105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005993 (n + 1) - 1)

end

end A018227.P18172615718433081105

namespace A018227

/-- `2*(A005993(n+1)-1)` -/
def P18172615718433081105.Spec : Prop :=
  ∀ n, P18172615718433081105.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P3527538071980355603

`2*(A109622(n+1)+n)`
-/

namespace A018227.P3527538071980355603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109622 (n + 1) + (n : ℤ))

end

end A018227.P3527538071980355603

namespace A018227

/-- `2*(A109622(n+1)+n)` -/
def P3527538071980355603.Spec : Prop :=
  ∀ n, P3527538071980355603.a n = A018227 (n + 1)

end A018227

/-! ## A018227.P13684616177478151659

`2*∑[(A004526(n+1)+1)²]`
-/

namespace A018227.P13684616177478151659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018227.P13684616177478151659

namespace A018227

/-- `2*∑[(A004526(n+1)+1)²]` -/
def P13684616177478151659.Spec : Prop :=
  ∀ n, P13684616177478151659.a n = A018227 (n + 1)

end A018227

/-!
# A018228: Numbers k such that normalizer of Gamma_0(k) is triangle group (2,3,inf).

The programs for A018228, there is no canonical definition to state claims against.
-/

/-! ## A018228.P10661062638504465237

`eq[24, lcm(24, n)]²`
-/

namespace A018228.P10661062638504465237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 24 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A018228.P10661062638504465237

/-! ## A018228.P5357758753458576737

`eq[1, n/gcd(24, n)]²`
-/

namespace A018228.P5357758753458576737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 24 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n ^ 2

end

end A018228.P5357758753458576737

/-! ## A018228.P7812140139206030580

`a(ceil(n/6))*a(n-2)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A018228.P7812140139206030580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a ⌈(n : ℚ) / 6⌉.toNat * a (n - 2)

end

end A018228.P7812140139206030580

/-! ## A018228.P2214648265105352329

`floor(∑[((n+1)/3)^a(n-2)])²` with `a(0)=1, a(1)=1`
-/

namespace A018228.P2214648265105352329
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n + 1 : ℚ) / 3 : ℝ) ^ (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2

end

end A018228.P2214648265105352329

/-!
# A018229: Numbers k such that normalizer of Gamma_0(k) is triangle group (2,4,inf).

The programs for A018229, there is no canonical definition to state claims against.
-/

/-! ## A018229.P14167609187626608374

`2*eq[24, lcm(24, n)]²`
-/

namespace A018229.P14167609187626608374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 24 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A018229.P14167609187626608374

/-! ## A018229.P17398798220385928348

`2*eq[1, n/gcd(24, n)]²`
-/

namespace A018229.P17398798220385928348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 24 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n ^ 2

end

end A018229.P17398798220385928348

/-! ## A018229.P1431658593612535420

`2*A161710(n)²`
-/

namespace A018229.P1431658593612535420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161710 n ^ 2

end

end A018229.P1431658593612535420

/-! ## A018229.P3283880577040183544

`2*A018228(n+1)`
-/

namespace A018229.P3283880577040183544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018228 (n + 1)

end

end A018229.P3283880577040183544

/-!
# A018230: Numbers k such that normalizer of Gamma_0(k) is triangle group (2,6,inf).

The programs for A018230, there is no canonical definition to state claims against.
-/

/-! ## A018230.P18081449183385171913

`3*eq[24, lcm(24, n)]²`
-/

namespace A018230.P18081449183385171913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 24 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A018230.P18081449183385171913

/-! ## A018230.P16076620412038623567

`3*eq[1, n/gcd(24, n)]²`
-/

namespace A018230.P16076620412038623567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 24 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n ^ 2

end

end A018230.P16076620412038623567

/-! ## A018230.P10173084964867740637

`3*A161710(n)²`
-/

namespace A018230.P10173084964867740637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161710 n ^ 2

end

end A018230.P10173084964867740637

/-! ## A018230.P7461745551512163451

`3*A018228(n+1)`
-/

namespace A018230.P7461745551512163451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018228 (n + 1)

end

end A018230.P7461745551512163451

/-!
# A018231: Numbers k such that normalizer of Gamma_0(k) is a triangle group.

The programs for A018231, there is no canonical definition to state claims against.
-/

/-! ## A018231.P16653874654119950932

`∩[A005792(n+1), A028237(n+1)]`
-/

namespace A018231.P16653874654119950932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018231.P16653874654119950932

/-! ## A018231.P16896299337839740202

`∩[A262609(n+1), A347454(n+1)]`
-/

namespace A018231.P16896299337839740202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018231.P16896299337839740202

/-! ## A018231.P18415683657763095631

`∩[A262609(n+1), A356713(n+1)]`
-/

namespace A018231.P18415683657763095631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018231.P18415683657763095631

/-! ## A018231.P4879455722315128274

`record[A335841(A107436(A084684(n)))]`
-/

namespace A018231.P4879455722315128274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335841 (A107436 (A084684 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018231.P4879455722315128274

/-! ## A018231.P8246032515130883406

`eq[A069010(n)², A347710(n)]`
-/

namespace A018231.P8246032515130883406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018231.P8246032515130883406

/-!
# A018235: Weight distribution of (48,2^24,12) binary code obtained from Golay code of length 24 lifted to Z/4Z and mapped to GF(2)^2.

The programs for A018235, there is no canonical definition to state claims against.
-/

/-! ## A018235.P10838734093932435606

`A105547(A323444(n+1))`
-/

namespace A018235.P10838734093932435606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105547 (A323444 (n + 1)).toNat

end

end A018235.P10838734093932435606

/-! ## A018235.P17959002875722669634

`A105547(A376884(n+1))`
-/

namespace A018235.P17959002875722669634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105547 (A376884 (n + 1)).toNat

end

end A018235.P17959002875722669634

/-! ## A018235.P1034913728532738128

`A105547(abs(A073318(n+1)))`
-/

namespace A018235.P1034913728532738128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105547 |A073318 (n + 1)|.toNat

end

end A018235.P1034913728532738128

/-! ## A018235.P13702225728018893166

`A105547(-A073318(n+1))`
-/

namespace A018235.P13702225728018893166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105547 (-A073318 (n + 1)).toNat

end

end A018235.P13702225728018893166

/-!
# A018236: Weight distribution of hypothetical [ 72,36,16 ] doubly-even binary self-dual code.

The programs for A018236, there is no canonical definition to state claims against.
-/

/-! ## A018236.P9784827873689610768

`A034414(A032917(4-(4/2-a(n-1)-a(n-2))))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A018236.P9784827873689610768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A034414 (A032917 (SequenceMachineLib.roundAway (4 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))).toNat).toNat

end

end A018236.P9784827873689610768

/-!
# A018237: Weight distribution of hypothetical [ 68,34,12 ] code derived from hypothetical [ 72,36,16 ] doubly-even self-dual code.

The programs for A018237, there is no canonical definition to state claims against.
-/

/-! ## A018237.P10919013091368329603

`C(∑[n]²+1, ∑[a(n-1)+21])` with `a(0)=0`
-/

namespace A018237.P10919013091368329603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A018237.P10919013091368329603

/-! ## A018237.P12919027068330314514

`C(∑[n]²+1, 3*(n+1)*∑[n])`
-/

namespace A018237.P12919027068330314514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1) (3 * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)))

end

end A018237.P12919027068330314514

/-! ## A018237.P10563406583915310244

`A105922(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A018237.P10563406583915310244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105922 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A018237.P10563406583915310244

/-!
# A018239: Primorial primes: primes of the form 1 + product of first k primes, for some k.

The programs for A018239, there is no canonical definition to state claims against.
-/

/-! ## A018239.P9566066974010116055

`1+A002110(A014545(n+1))`
-/

namespace A018239.P9566066974010116055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002110 (A014545 (n + 1)).toNat

end

end A018239.P9566066974010116055

/-! ## A018239.P298072431832154534

`record[A305400(n)+1]`
-/

namespace A018239.P298072431832154534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305400 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018239.P298072431832154534

/-! ## A018239.P16958581262173309984

`A136351(n+1)+1`
-/

namespace A018239.P16958581262173309984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136351 (n + 1) + 1

end

end A018239.P16958581262173309984

/-!
# A018240: Number of rational knots (or two-bridge knots) with n crossings (up to mirroring).

The programs for A018240, the canonical program `A018240.P9196912849373277085` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018240 has offset 3).

The definition of A018240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018240.P9196912849373277085

`floor((2^n+2^floor(n/2)+1)/3)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018240

/-- `floor((2^n+2^floor(n/2)+1)/3)` -/
def P9196912849373277085.Spec : Prop :=
  ∀ n, P9196912849373277085.a n = A018240 (n + 3)

theorem P9196912849373277085.correct : P9196912849373277085.Spec := by
  intro n
  simp only [A018240, Nat.add_sub_cancel]

end A018240

/-! ## A018240.P5992942642159354695

`A005418(n+1)-A090597(n+3)`
-/

namespace A018240.P5992942642159354695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A090597 (n + 3)

end

end A018240.P5992942642159354695

namespace A018240

/-- `A005418(n+1)-A090597(n+3)` -/
def P5992942642159354695.Spec : Prop :=
  ∀ n, P5992942642159354695.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P11052084760008943683

`A005578(A004526(n))+A005578(n)-1`
-/

namespace A018240.P11052084760008943683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A004526 n).toNat + (A005578 n - 1)

end

end A018240.P11052084760008943683

namespace A018240

/-- `A005578(A004526(n))+A005578(n)-1` -/
def P11052084760008943683.Spec : Prop :=
  ∀ n, P11052084760008943683.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P16753374921086090882

`A336398(n+2)+A352737(n+2)-A090597(n+4)`
-/

namespace A018240.P16753374921086090882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336398 (n + 2) + (A352737 (n + 2) - A090597 (n + 4))

end

end A018240.P16753374921086090882

namespace A018240

/-- `A336398(n+2)+A352737(n+2)-A090597(n+4)` -/
def P16753374921086090882.Spec : Prop :=
  ∀ n, P16753374921086090882.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P4489382545818251072

`ceil(A056326(n+2)/3)`
-/

namespace A018240.P4489382545818251072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056326 (n + 2) : ℚ) / 3⌉

end

end A018240.P4489382545818251072

namespace A018240

/-- `ceil(A056326(n+2)/3)` -/
def P4489382545818251072.Spec : Prop :=
  ∀ n, P4489382545818251072.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P11970555475826283824

`round(A005418(n+2)/3)`
-/

namespace A018240.P11970555475826283824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005418 (n + 2) : ℚ) / 3)

end

end A018240.P11970555475826283824

namespace A018240

/-- `round(A005418(n+2)/3)` -/
def P11970555475826283824.Spec : Prop :=
  ∀ n, P11970555475826283824.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P10069263283995396633

`A329908(n+2)-A090597(n+4)`
-/

namespace A018240.P10069263283995396633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329908 (n + 2) - A090597 (n + 4)

end

end A018240.P10069263283995396633

namespace A018240

/-- `A329908(n+2)-A090597(n+4)` -/
def P10069263283995396633.Spec : Prop :=
  ∀ n, P10069263283995396633.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P12824473891971896104

`(A001045(n+1)+A001045(A008619(n)))/2`
-/

namespace A018240.P12824473891971896104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) + A001045 (A008619 n).toNat : ℚ) / 2

end

end A018240.P12824473891971896104

namespace A018240

/-- `(A001045(n+1)+A001045(A008619(n)))/2` -/
def P12824473891971896104.Spec : Prop :=
  ∀ n, P12824473891971896104.a n = (A018240 (n + 3) : ℚ)

end A018240

/-! ## A018240.P7098111994668028350

`(A167167(n+1)+A167167(A008619(n)))/2`
-/

namespace A018240.P7098111994668028350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167167 (n + 1) + A167167 (A008619 n).toNat : ℚ) / 2

end

end A018240.P7098111994668028350

namespace A018240

/-- `(A167167(n+1)+A167167(A008619(n)))/2` -/
def P7098111994668028350.Spec : Prop :=
  ∀ n, P7098111994668028350.a n = (A018240 (n + 3) : ℚ)

end A018240

/-! ## A018240.P16086016894714478362

`A340849(A004526(n))+A086445(n)-A340849(n)`
-/

namespace A018240.P16086016894714478362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 (A004526 n).toNat + (A086445 n - A340849 n)

end

end A018240.P16086016894714478362

namespace A018240

/-- `A340849(A004526(n))+A086445(n)-A340849(n)` -/
def P16086016894714478362.Spec : Prop :=
  ∀ n, P16086016894714478362.a n = A018240 (n + 3)

end A018240

/-! ## A018240.P17617659697016779298

`Δ[ceil(A183980(n+1)/3)]`
-/

namespace A018240.P17617659697016779298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183980 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018240.P17617659697016779298

namespace A018240

/-- `Δ[ceil(A183980(n+1)/3)]` -/
def P17617659697016779298.Spec : Prop :=
  ∀ n, P17617659697016779298.a n = A018240 (n + 3)

end A018240

/-!
# A018241: Number of simple allowable sequences on 1..n.

The programs for A018241, there is no canonical definition to state claims against.
-/

/-! ## A018241.P12787819561928945950

`A005118(n+1)*A124795(A008578(n+1))`
-/

namespace A018241.P12787819561928945950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005118 (n + 1) * A124795 (A008578 (n + 1)).toNat

end

end A018241.P12787819561928945950

/-!
# A018242: Number of projective order types.

The programs for A018242, there is no canonical definition to state claims against.
-/

/-! ## A018242.P4697885907171269482

`A222317(∑[abs(3-n)])`
-/

namespace A018242.P4697885907171269482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018242.P4697885907171269482

/-! ## A018242.P2086182529731383293

`A006248(n*a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A018242.P2086182529731383293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A006248 ((n : ℤ) * a (n - 3)).toNat

end

end A018242.P2086182529731383293

/-! ## A018242.P10511035540639343377

`A006248(or(n, (char[(n+1)²]+char[n²])²))`
-/

namespace A018242.P10511035540639343377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006248 (Nat.lor n (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)) ^ 2))

end

end A018242.P10511035540639343377

/-! ## A018242.P10515836388360277769

`A008284(∑[∑[a(n-1)²-n]]+1)` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A018242.P10515836388360277769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n f2 =>
  f2 (n - 1) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A018242.P10515836388360277769

/-! ## A018242.P7138494842905071509

`A006248(A264905(n))`
-/

namespace A018242.P7138494842905071509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006248 (A264905 n).toNat

end

end A018242.P7138494842905071509

/-!
# A018243: Inverse Euler transform of A000931.

The programs for A018243, there is no canonical definition to state claims against.
-/

/-! ## A018243.P15322838189560906988

`A113788(1-char[1]+n)`
-/

namespace A018243.P15322838189560906988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A018243.P15322838189560906988

/-! ## A018243.P10381572330061439493

`A159075(n)+A113788(n+1)`
-/

namespace A018243.P10381572330061439493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A113788 (n + 1)

end

end A018243.P10381572330061439493

/-! ## A018243.P7628264008326633267

`A113788(n+1)-A063524(n)`
-/

namespace A018243.P7628264008326633267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (n + 1) - A063524 n

end

end A018243.P7628264008326633267

/-! ## A018243.P1683318822534563154

`A060576(n)*A113788(n+1)`
-/

namespace A018243.P1683318822534563154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A113788 (n + 1)

end

end A018243.P1683318822534563154

/-! ## A018243.P15939066288380488350

`A113788(n+1)*A157928(n)`
-/

namespace A018243.P15939066288380488350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (n + 1) * A157928 n

end

end A018243.P15939066288380488350

/-! ## A018243.P3172787772683607463

`A113788(n+1)*A267870(n)`
-/

namespace A018243.P3172787772683607463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (n + 1) * A267870 n

end

end A018243.P3172787772683607463

/-! ## A018243.P821326099549042467

`lcm(A105812(n), A113788(n+1))`
-/

namespace A018243.P821326099549042467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A113788 (n + 1))

end

end A018243.P821326099549042467

/-! ## A018243.P16002823228299890194

`∑{d}[n+1, A008683(#)*A127687((n+1)/#)]-char[1]`
-/

namespace A018243.P16002823228299890194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A127687 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018243.P16002823228299890194

/-! ## A018243.P14498274044456116426

`A113788(n+1)/A007387(n+2)*A133394(n+2)`
-/

namespace A018243.P14498274044456116426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113788 (n + 1) : ℚ) / (A007387 (n + 2) : ℚ) * (A133394 (n + 2) : ℚ)

end

end A018243.P14498274044456116426

/-! ## A018243.P18196516637013629760

`and(A113788(n+1), A316742(n))`
-/

namespace A018243.P18196516637013629760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113788 (n + 1)) (A316742 n)

end

end A018243.P18196516637013629760

/-! ## A018243.P14720185329662068907

`and(A052955(n), A113788(n+1))`
-/

namespace A018243.P14720185329662068907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052955 n) (A113788 (n + 1))

end

end A018243.P14720185329662068907

/-! ## A018243.P9542019935741687409

`and(A010737(n), A113788(n+1))`
-/

namespace A018243.P9542019935741687409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010737 n) (A113788 (n + 1))

end

end A018243.P9542019935741687409

/-! ## A018243.P121298565353733546

`A113788(n+1)%A000032(n)`
-/

namespace A018243.P121298565353733546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113788 (n + 1)) (A000032 n)

end

end A018243.P121298565353733546

/-! ## A018243.P3538091591076398166

`and(A113788(n+1), A178885(n))`
-/

namespace A018243.P3538091591076398166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113788 (n + 1)) (A178885 n)

end

end A018243.P3538091591076398166

/-! ## A018243.P738116710833228795

`and(A098179(n), A113788(n+1))`
-/

namespace A018243.P738116710833228795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098179 n) (A113788 (n + 1))

end

end A018243.P738116710833228795

/-! ## A018243.P3786064436110484184

`and(A113788(n+1), A274638(n))`
-/

namespace A018243.P3786064436110484184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113788 (n + 1)) (A274638 n)

end

end A018243.P3786064436110484184

/-! ## A018243.P16339036373562937478

`and(A113788(n+1), A283592(n))`
-/

namespace A018243.P16339036373562937478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113788 (n + 1)) (A283592 n)

end

end A018243.P16339036373562937478

/-! ## A018243.P14951520716305729965

`and(A113788(n+1), A283651(n))`
-/

namespace A018243.P14951520716305729965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113788 (n + 1)) (A283651 n)

end

end A018243.P14951520716305729965

/-! ## A018243.P9542874414581721880

`and(A113788(n+1), A284485(n))`
-/

namespace A018243.P9542874414581721880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113788 (n + 1)) (A284485 n)

end

end A018243.P9542874414581721880

/-!
# A018244: A self-generating sequence: there are a(n) (k+1)'s between successive k's, where k=3.

The programs for A018244, there is no canonical definition to state claims against.
-/

/-! ## A018244.P370220340236245555

`Δ[A278814(n*A250120(n))]`
-/

namespace A018244.P370220340236245555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 ((n : ℤ) * A250120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018244.P370220340236245555

/-! ## A018244.P7080012039989666852

`Δ[A000196(A250120(Δ[n^3]))]`
-/

namespace A018244.P7080012039989666852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A250120 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018244.P7080012039989666852

/-! ## A018244.P8933374354244715945

`and(char[A001068(n+1)], A330361(n+1))+3`
-/

namespace A018244.P8933374354244715945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A330361 (n + 1)) + 3

end

end A018244.P8933374354244715945

/-! ## A018244.P9358399757571041211

`A000211(val(n+1, 5)^A358617(3*n+2))`
-/

namespace A018244.P9358399757571041211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (n + 1) 5 : ℚ) ^ (A358617 (3 * n + 2) : ℤ))).toNat

end

end A018244.P9358399757571041211

/-! ## A018244.P6275416385974157664

`A010702(A251749(n)+A067774(n+1))`
-/

namespace A018244.P6275416385974157664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A251749 n + A067774 (n + 1)).toNat

end

end A018244.P6275416385974157664

/-!
# A018245: A self-generating sequence: there are a(n) (k+1)'s between successive k's, where k=4.

The programs for A018245, the canonical program `A018245.P6139162678383067992` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018245 has offset 1).

The definition of A018245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018245.P5835849523581308679

`Δ[floor(n*(sqrt(8)+2))]`
-/

namespace A018245.P5835849523581308679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (8 : ℝ) + 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018245.P5835849523581308679

namespace A018245

/-- `Δ[floor(n*(sqrt(8)+2))]` -/
def P5835849523581308679.Spec : Prop :=
  ∀ n, P5835849523581308679.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P549808368588303040

`xor(6, Δ[floor(n*sqrt(8))])`
-/

namespace A018245.P549808368588303040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (f1 (n + 1) - f1 n)

end

end A018245.P549808368588303040

namespace A018245

/-- `xor(6, Δ[floor(n*sqrt(8))])` -/
def P549808368588303040.Spec : Prop :=
  ∀ n, P549808368588303040.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P9250472848592511620

`and(5, -Δ[floor(n*sqrt(8))])`
-/

namespace A018245.P9250472848592511620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (-(f1 (n + 1) - f1 n))

end

end A018245.P9250472848592511620

namespace A018245

/-- `and(5, -Δ[floor(n*sqrt(8))])` -/
def P9250472848592511620.Spec : Prop :=
  ∀ n, P9250472848592511620.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P6139162678383067992

`5-Δ[A195177(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018245

/-- `5-Δ[A195177(n)]` -/
def P6139162678383067992.Spec : Prop :=
  ∀ n, P6139162678383067992.a n = A018245 (n + 1)

theorem P6139162678383067992.correct : P6139162678383067992.Spec := by
  intro n
  simp only [A018245, Nat.add_sub_cancel]

end A018245

/-! ## A018245.P8421070809072407585

`A276858(n+1)+2`
-/

namespace A018245.P8421070809072407585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1) + 2

end

end A018245.P8421070809072407585

namespace A018245

/-- `A276858(n+1)+2` -/
def P8421070809072407585.Spec : Prop :=
  ∀ n, P8421070809072407585.a n = A018245 (n + 1)

theorem P8421070809072407585.correct : P8421070809072407585.Spec := by
  intro n
  simp only [A018245, Nat.add_sub_cancel, A018245.P8421070809072407585.a, A018245.P6139162678383067992.f1, A018245.P6139162678383067992.a, A195177, A195177.P651983526202513123.a, A276858, A276858.P4876479302285241086.f1, A276858.P4876479302285241086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A018245

/-! ## A018245.P18425604073835036980

`A285697(Δ[floor(n*sqrt(8))])`
-/

namespace A018245.P18425604073835036980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285697 (f1 (n + 1) - f1 n).toNat

end

end A018245.P18425604073835036980

namespace A018245

/-- `A285697(Δ[floor(n*sqrt(8))])` -/
def P18425604073835036980.Spec : Prop :=
  ∀ n, P18425604073835036980.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P3140504147220907332

`A195177(9*Δ[floor(n*sqrt(8))])`
-/

namespace A018245.P3140504147220907332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (9 * (f1 (n + 1) - f1 n)).toNat

end

end A018245.P3140504147220907332

namespace A018245

/-- `A195177(9*Δ[floor(n*sqrt(8))])` -/
def P3140504147220907332.Spec : Prop :=
  ∀ n, P3140504147220907332.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P3818878931553531430

`A276864(n+1)+A214848(n)`
-/

namespace A018245.P3818878931553531430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 1) + A214848 n

end

end A018245.P3818878931553531430

namespace A018245

/-- `A276864(n+1)+A214848(n)` -/
def P3818878931553531430.Spec : Prop :=
  ∀ n, P3818878931553531430.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P13062394264742618384

`Δ[A001951(2*n)]+2`
-/

namespace A018245.P13062394264742618384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A018245.P13062394264742618384

namespace A018245

/-- `Δ[A001951(2*n)]+2` -/
def P13062394264742618384.Spec : Prop :=
  ∀ n, P13062394264742618384.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P2421677034255054544

`A188038(2*(n+1))+4`
-/

namespace A018245.P2421677034255054544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * (n + 1)) + 4

end

end A018245.P2421677034255054544

namespace A018245

/-- `A188038(2*(n+1))+4` -/
def P2421677034255054544.Spec : Prop :=
  ∀ n, P2421677034255054544.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P9593941099595964112

`A120753(Δ[A001951(2*n)])`
-/

namespace A018245.P9593941099595964112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (f1 (n + 1) - f1 n).toNat

end

end A018245.P9593941099595964112

namespace A018245

/-- `A120753(Δ[A001951(2*n)])` -/
def P9593941099595964112.Spec : Prop :=
  ∀ n, P9593941099595964112.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P7299516915200514753

`A184775(Δ[A001951(2*n)])`
-/

namespace A018245.P7299516915200514753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (f1 (n + 1) - f1 n).toNat

end

end A018245.P7299516915200514753

namespace A018245

/-- `A184775(Δ[A001951(2*n)])` -/
def P7299516915200514753.Spec : Prop :=
  ∀ n, P7299516915200514753.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P1460447921296921264

`A189080(Δ[A001951(2*n)])`
-/

namespace A018245.P1460447921296921264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189080 (f1 (n + 1) - f1 n).toNat

end

end A018245.P1460447921296921264

namespace A018245

/-- `A189080(Δ[A001951(2*n)])` -/
def P1460447921296921264.Spec : Prop :=
  ∀ n, P1460447921296921264.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P9265010763032045352

`A276036(Δ[A001951(2*n)])`
-/

namespace A018245.P9265010763032045352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (f1 (n + 1) - f1 n).toNat

end

end A018245.P9265010763032045352

namespace A018245

/-- `A276036(Δ[A001951(2*n)])` -/
def P9265010763032045352.Spec : Prop :=
  ∀ n, P9265010763032045352.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P4476457887153156476

`A006530(Δ[A195176(2*n)])+2`
-/

namespace A018245.P4476457887153156476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat + 2

end

end A018245.P4476457887153156476

namespace A018245

/-- `A006530(Δ[A195176(2*n)])+2` -/
def P4476457887153156476.Spec : Prop :=
  ∀ n, P4476457887153156476.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P3479990267302973839

`A014963(Δ[A195176(2*n)])+2`
-/

namespace A018245.P3479990267302973839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat + 2

end

end A018245.P3479990267302973839

namespace A018245

/-- `A014963(Δ[A195176(2*n)])+2` -/
def P3479990267302973839.Spec : Prop :=
  ∀ n, P3479990267302973839.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P10872779674979022179

`A020639(Δ[A195176(2*n)])+2`
-/

namespace A018245.P10872779674979022179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat + 2

end

end A018245.P10872779674979022179

namespace A018245

/-- `A020639(Δ[A195176(2*n)])+2` -/
def P10872779674979022179.Spec : Prop :=
  ∀ n, P10872779674979022179.a n = A018245 (n + 1)

end A018245

/-! ## A018245.P11675307846187718303

`A276864(2*n+1)+A006337(2*n+1)`
-/

namespace A018245.P11675307846187718303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (2 * n + 1) + A006337 (2 * n + 1)

end

end A018245.P11675307846187718303

namespace A018245

/-- `A276864(2*n+1)+A006337(2*n+1)` -/
def P11675307846187718303.Spec : Prop :=
  ∀ n, P11675307846187718303.a n = A018245 (n + 1)

theorem P11675307846187718303.correct : P11675307846187718303.Spec := by
  intro n
  simp only [A018245, Nat.add_sub_cancel, A018245.P11675307846187718303.a, A018245.P6139162678383067992.f1, A018245.P6139162678383067992.a, A006337, A006337.P7691167176776546628.a, A195177, A195177.P651983526202513123.a, A276864, A276864.P7070508175847101168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A018245

/-! ## A018245.P4253887093814394982

`A001951(A087057(2*(n+1))-A001951(2*n))`
-/

namespace A018245.P4253887093814394982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A087057 (2 * (n + 1)) - A001951 (2 * n)).toNat

end

end A018245.P4253887093814394982

namespace A018245

/-- `A001951(A087057(2*(n+1))-A001951(2*n))` -/
def P4253887093814394982.Spec : Prop :=
  ∀ n, P4253887093814394982.a n = A018245 (n + 1)

end A018245

/-!
# A018246: A self-generating sequence: there are a(n) (k+1)'s between successive k's, where k=5.

The programs for A018246, the canonical program `A018246.P1247537461582017046` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018246 has offset 1).

The definition of A018246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018246.P1247537461582017046

`Δ[floor(n*ϕ^4)]-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018246

/-- `Δ[floor(n*ϕ^4)]-1` -/
def P1247537461582017046.Spec : Prop :=
  ∀ n, P1247537461582017046.a n = A018246 (n + 1)

theorem P1247537461582017046.correct : P1247537461582017046.Spec := by
  intro n
  simp only [A018246, Nat.add_sub_cancel]

end A018246

/-!
# A018247: The 10-adic integer x = ...8212890625 satisfying x^2 = x.

The programs for A018247, there is no canonical definition to state claims against.
-/

/-! ## A018247.P14377780368546396281

`A091664(n)+A000007(n)`
-/

namespace A018247.P14377780368546396281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091664 n + A000007 n

end

end A018247.P14377780368546396281

/-! ## A018247.P18247672482755224765

`A018248(n)-A075693(n)`
-/

namespace A018247.P18247672482755224765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A075693 n

end

end A018247.P18247672482755224765

/-! ## A018247.P5953233142681989452

`A000007(n)+9-A091663(n)`
-/

namespace A018247.P5953233142681989452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A091663 n)

end

end A018247.P5953233142681989452

/-! ## A018247.P13238893974469348586

`A091664(n)+char[A126120(2*n+1)]`
-/

namespace A018247.P13238893974469348586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091664 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018247.P13238893974469348586

/-! ## A018247.P10384155013541222581

`A091664(n)+char[A018235(3*n+4)]`
-/

namespace A018247.P10384155013541222581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018235 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091664 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018247.P10384155013541222581

/-! ## A018247.P2960180205123498271

`A091664(n)+A010054(A001316(n))`
-/

namespace A018247.P2960180205123498271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091664 n + A010054 (A001316 n).toNat

end

end A018247.P2960180205123498271

/-! ## A018247.P8625226559610340973

`A018248(n)+A091664(n)-A091663(n)`
-/

namespace A018247.P8625226559610340973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A091663 n)

end

end A018247.P8625226559610340973

/-! ## A018247.P9193986209183679224

`A063006(n)+A091661(n)-A091663(n)`
-/

namespace A018247.P9193986209183679224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A091663 n)

end

end A018247.P9193986209183679224

/-! ## A018247.P5340084611466668896

`A225405(n)+A225408(n)-A091663(n)`
-/

namespace A018247.P5340084611466668896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A091663 n)

end

end A018247.P5340084611466668896

/-! ## A018247.P15137233431330443859

`A225457(n)+A225460(n)-A091663(n)`
-/

namespace A018247.P15137233431330443859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A091663 n)

end

end A018247.P15137233431330443859

/-! ## A018247.P10213441207680403684

`A216104(n+1)+A216105(n+1)-A091663(n)`
-/

namespace A018247.P10213441207680403684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216104 (n + 1) + (A216105 (n + 1) - A091663 n)

end

end A018247.P10213441207680403684

/-! ## A018247.P15715411554900366826

`A216159(n+1)+A216161(n+1)-A091663(n)`
-/

namespace A018247.P15715411554900366826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216159 (n + 1) + (A216161 (n + 1) - A091663 n)

end

end A018247.P15715411554900366826

/-!
# A018248: The 10-adic integer x = ...1787109376 satisfies x^2 = x.

The programs for A018248, there is no canonical definition to state claims against.
-/

/-! ## A018248.P12662933683220655874

`A091663(n)+C(2, n+2)`
-/

namespace A018248.P12662933683220655874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A018248.P12662933683220655874

/-! ## A018248.P6985357557053072114

`A091663(n)+A000007(n)`
-/

namespace A018248.P6985357557053072114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + A000007 n

end

end A018248.P6985357557053072114

/-! ## A018248.P3686033066592028620

`A075693(n)+A018247(n)`
-/

namespace A018248.P3686033066592028620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075693 n + A018247 n

end

end A018248.P3686033066592028620

/-! ## A018248.P8871576249037583449

`A000007(n)+9-A091664(n)`
-/

namespace A018248.P8871576249037583449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A091664 n)

end

end A018248.P8871576249037583449

/-! ## A018248.P12498765465385669919

`A091663(n)+A010051(2*(n+1))`
-/

namespace A018248.P12498765465385669919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + A010051 (2 * (n + 1))

end

end A018248.P12498765465385669919

/-! ## A018248.P5866353435047272685

`A154269(2*n+1)+A091663(n)`
-/

namespace A018248.P5866353435047272685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * n + 1) + A091663 n

end

end A018248.P5866353435047272685

/-! ## A018248.P15774665170099898005

`A316341(2*n+1)+A091663(n)`
-/

namespace A018248.P15774665170099898005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (2 * n + 1) + A091663 n

end

end A018248.P15774665170099898005

/-! ## A018248.P13410527953165006976

`A091663(n)+A177917(n+1)%2`
-/

namespace A018248.P13410527953165006976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + Int.tmod (A177917 (n + 1)) 2

end

end A018248.P13410527953165006976

/-! ## A018248.P10152562836325891164

`A091663(n)+A069845(A004277(n))`
-/

namespace A018248.P10152562836325891164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + A069845 (A004277 n).toNat

end

end A018248.P10152562836325891164

/-! ## A018248.P17828377219026205648

`A271231(A005875(n))+A091663(n)`
-/

namespace A018248.P17828377219026205648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271231 (A005875 n).toNat + A091663 n

end

end A018248.P17828377219026205648

/-! ## A018248.P11852743418223724023

`A091663(n)+A010052(A020639(n+1))`
-/

namespace A018248.P11852743418223724023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + A010052 (A020639 (n + 1)).toNat

end

end A018248.P11852743418223724023

/-! ## A018248.P3275453325474295605

`A340999(A001222(n+1))+A091663(n)`
-/

namespace A018248.P3275453325474295605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A001222 (n + 1)).toNat + 204) + A091663 n

end

end A018248.P3275453325474295605

/-! ## A018248.P13872474206680027030

`A018247(n)+A091663(n)-A091664(n)`
-/

namespace A018248.P13872474206680027030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A091664 n)

end

end A018248.P13872474206680027030

/-! ## A018248.P17891857195130021136

`A063006(n)+A091661(n)-A091664(n)`
-/

namespace A018248.P17891857195130021136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A091664 n)

end

end A018248.P17891857195130021136

/-! ## A018248.P1820458768590250665

`A120817(n)+A120818(n)-A091664(n)`
-/

namespace A018248.P1820458768590250665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A091664 n)

end

end A018248.P1820458768590250665

/-! ## A018248.P8657012890943962114

`A290372(n)+A290375(n)-A091664(n)`
-/

namespace A018248.P8657012890943962114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A091664 n)

end

end A018248.P8657012890943962114

/-! ## A018248.P17758427521032261064

`A290373(n)+A290374(n)-A091664(n)`
-/

namespace A018248.P17758427521032261064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A091664 n)

end

end A018248.P17758427521032261064

/-! ## A018248.P5336139257069571344

`A091663(n)+A154269(A001358(n+1))²`
-/

namespace A018248.P5336139257069571344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n + A154269 (A001358 (n + 1)).toNat ^ 2

end

end A018248.P5336139257069571344

/-! ## A018248.P14833942817983794573

`A216104(n+1)+A216105(n+1)-A091664(n)`
-/

namespace A018248.P14833942817983794573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216104 (n + 1) + (A216105 (n + 1) - A091664 n)

end

end A018248.P14833942817983794573

/-! ## A018248.P6729294471108819703

`A216159(n+1)+A216161(n+1)-A091664(n)`
-/

namespace A018248.P6729294471108819703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216159 (n + 1) + (A216161 (n + 1) - A091664 n)

end

end A018248.P6729294471108819703

/-!
# A018249: a(n) = prime(2^n)-1.

The programs for A018249, the canonical program `A018249.P2453322492412683053` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018249 has offset 0).

The definition of A018249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^n)-1` (program `A018249.P2453322492412683053`, by `A018249.P2453322492412683053.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018249.P441291623492334351

`A033844(n)-1`
-/

namespace A018249.P441291623492334351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n - 1

end

end A018249.P441291623492334351

namespace A018249

/-- `A033844(n)-1` -/
def P441291623492334351.Spec : Prop :=
  ∀ n, P441291623492334351.a n = A018249 n

end A018249

/-! ## A018249.P10053849504807031493

`A051440(n)-2`
-/

namespace A018249.P10053849504807031493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 n - 2

end

end A018249.P10053849504807031493

namespace A018249

/-- `A051440(n)-2` -/
def P10053849504807031493.Spec : Prop :=
  ∀ n, P10053849504807031493.a n = A018249 n

theorem P10053849504807031493.correct : P10053849504807031493.Spec := by
  intro n
  simp only [A018249, Nat.add_sub_cancel, A018249.P10053849504807031493.a, A018249.P2453322492412683053.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051440, A051440.P8598338040170600768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018249

/-! ## A018249.P2453322492412683053

`A000040(2^n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018249

/-- `A000040(2^n)-1` -/
def P2453322492412683053.Spec : Prop :=
  ∀ n, P2453322492412683053.a n = A018249 n

theorem P2453322492412683053.correct : P2453322492412683053.Spec := by
  intro n
  simp only [A018249]

end A018249

/-! ## A018249.P10022541762879710255

`A260196(2*(n+1))+A033844(n)`
-/

namespace A018249.P10022541762879710255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 1)) + A033844 n

end

end A018249.P10022541762879710255

namespace A018249

/-- `A260196(2*(n+1))+A033844(n)` -/
def P10022541762879710255.Spec : Prop :=
  ∀ n, P10022541762879710255.a n = A018249 n

end A018249

/-! ## A018249.P11527579186571770943

`A057428(3*n+2)+A033844(n)`
-/

namespace A018249.P11527579186571770943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 2) + A033844 n

end

end A018249.P11527579186571770943

namespace A018249

/-- `A057428(3*n+2)+A033844(n)` -/
def P11527579186571770943.Spec : Prop :=
  ∀ n, P11527579186571770943.a n = A018249 n

theorem P11527579186571770943.correct : P11527579186571770943.Spec := by
  intro n
  simp only [A018249, Nat.add_sub_cancel, A018249.P11527579186571770943.a, A018249.P2453322492412683053.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033844, A033844.P10148935378251685530.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A018249

/-! ## A018249.P6547660273487541446

`A099837(A000124(n))+A033844(n)`
-/

namespace A018249.P6547660273487541446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A000124 n).toNat + A033844 n

end

end A018249.P6547660273487541446

namespace A018249

/-- `A099837(A000124(n))+A033844(n)` -/
def P6547660273487541446.Spec : Prop :=
  ∀ n, P6547660273487541446.a n = A018249 n

end A018249

/-! ## A018249.P12120191958958075281

`A033880(A037445(n+1))+A033844(n)`
-/

namespace A018249.P12120191958958075281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A037445 (n + 1)).toNat + A033844 n

end

end A018249.P12120191958958075281

namespace A018249

/-- `A033880(A037445(n+1))+A033844(n)` -/
def P12120191958958075281.Spec : Prop :=
  ∀ n, P12120191958958075281.a n = A018249 n

end A018249

/-! ## A018249.P17543696281611683956

`A349340(A000040(n+1))+A033844(n)`
-/

namespace A018249.P17543696281611683956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A000040 (n + 1)).toNat + A033844 n

end

end A018249.P17543696281611683956

namespace A018249

/-- `A349340(A000040(n+1))+A033844(n)` -/
def P17543696281611683956.Spec : Prop :=
  ∀ n, P17543696281611683956.a n = A018249 n

end A018249

/-! ## A018249.P3315163177824360777

`A349340(A005382(n+1))+A033844(n)`
-/

namespace A018249.P3315163177824360777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A005382 (n + 1)).toNat + A033844 n

end

end A018249.P3315163177824360777

namespace A018249

/-- `A349340(A005382(n+1))+A033844(n)` -/
def P3315163177824360777.Spec : Prop :=
  ∀ n, P3315163177824360777.a n = A018249 n

end A018249

/-! ## A018249.P3202277724452602199

`A349340(A098029(n+1))+A033844(n)`
-/

namespace A018249.P3202277724452602199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A098029 (n + 1)).toNat + A033844 n

end

end A018249.P3202277724452602199

namespace A018249

/-- `A349340(A098029(n+1))+A033844(n)` -/
def P3202277724452602199.Spec : Prop :=
  ∀ n, P3202277724452602199.a n = A018249 n

end A018249

/-!
# A018250: Expansion of 1/((1-4x)(1-5x)(1-8x)).

The programs for A018250, the canonical program `A018250.P5959116852881608587` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018250 has offset 0).

The definition of A018250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018250.P14162057052866955222

`(3*4^(n+1)-5^(n+2)+2*8^(n+1))/3`
-/

namespace A018250.P14162057052866955222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 4 ^ (n + 1) : ℤ) - (5 ^ (n + 2) : ℤ) + (2 * 8 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A018250.P14162057052866955222

namespace A018250

/-- `(3*4^(n+1)-5^(n+2)+2*8^(n+1))/3` -/
def P14162057052866955222.Spec : Prop :=
  ∀ n, P14162057052866955222.a n = (A018250 n : ℚ)

theorem P14162057052866955222.correct : P14162057052866955222.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A018250, Nat.add_sub_cancel, A018250.P14162057052866955222.a, A018250.P5959116852881608587.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A018250, Nat.add_sub_cancel, A018250.P14162057052866955222.a, A018250.P5959116852881608587.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018250

/-! ## A018250.P5959116852881608587

`17*a(n-1)-92*a(n-2)+160*a(n-3)` with `a(0)=1, a(1)=17, a(2)=197`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018250

/-- `17*a(n-1)-92*a(n-2)+160*a(n-3)` -/
def P5959116852881608587.Spec : Prop :=
  ∀ n, P5959116852881608587.a n = A018250 n

theorem P5959116852881608587.correct : P5959116852881608587.Spec := by
  intro n
  simp only [A018250]

end A018250

/-! ## A018250.P8389784992877737274

`A092794(n+1)-4*a(n-1)` with `a(0)=1`
-/

namespace A018250.P8389784992877737274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092794 (n + 1) - 4 * a (n - 1)

end

end A018250.P8389784992877737274

namespace A018250

/-- `A092794(n+1)-4*a(n-1)` -/
def P8389784992877737274.Spec : Prop :=
  ∀ n, P8389784992877737274.a n = A018250 n

end A018250

/-! ## A018250.P10600167075788069781

`Δ[A016233(n)-A016224(n)]`
-/

namespace A018250.P10600167075788069781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016233 n - A016224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018250.P10600167075788069781

namespace A018250

/-- `Δ[A016233(n)-A016224(n)]` -/
def P10600167075788069781.Spec : Prop :=
  ∀ n, P10600167075788069781.a n = A018250 n

end A018250

/-! ## A018250.P9295680293912944353

`2*A016290(n)-A016282(n)`
-/

namespace A018250.P9295680293912944353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016290 n - A016282 n

end

end A018250.P9295680293912944353

namespace A018250

/-- `2*A016290(n)-A016282(n)` -/
def P9295680293912944353.Spec : Prop :=
  ∀ n, P9295680293912944353.a n = A018250 n

end A018250

/-! ## A018250.P8644773209611113480

`A016224(n)+A016233(n)-A016218(n)`
-/

namespace A018250.P8644773209611113480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016224 n + (A016233 n - A016218 n)

end

end A018250.P8644773209611113480

namespace A018250

/-- `A016224(n)+A016233(n)-A016218(n)` -/
def P8644773209611113480.Spec : Prop :=
  ∀ n, P8644773209611113480.a n = A018250 n

end A018250

/-! ## A018250.P9831624867870151199

`A016224(n)+A021764(n)-A016233(n)`
-/

namespace A018250.P9831624867870151199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016224 n + (A021764 n - A016233 n)

end

end A018250.P9831624867870151199

namespace A018250

/-- `A016224(n)+A021764(n)-A016233(n)` -/
def P9831624867870151199.Spec : Prop :=
  ∀ n, P9831624867870151199.a n = A018250 n

end A018250

/-!
# A018252: The nonprime numbers: 1 together with the composite numbers, A002808.

The programs for A018252, the canonical program `A018252.P16557407491482004301` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018252 has offset 1).

The definition of A018252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018252.P9962686946238049485

`A137621(A137624(n+1))`
-/

namespace A018252.P9962686946238049485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (A137624 (n + 1)).toNat

end

end A018252.P9962686946238049485

namespace A018252

/-- `A137621(A137624(n+1))` -/
def P9962686946238049485.Spec : Prop :=
  ∀ n, P9962686946238049485.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P15245034997180427658

`Δ[A051349(n)]`
-/

namespace A018252.P15245034997180427658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018252.P15245034997180427658

namespace A018252

/-- `Δ[A051349(n)]` -/
def P15245034997180427658.Spec : Prop :=
  ∀ n, P15245034997180427658.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P10110690330508231767

`A141468(n+2)`
-/

namespace A018252.P10110690330508231767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

end

end A018252.P10110690330508231767

namespace A018252

/-- `A141468(n+2)` -/
def P10110690330508231767.Spec : Prop :=
  ∀ n, P10110690330508231767.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P8854515925266063793

`A222307(Δ[n²])`
-/

namespace A018252.P8854515925266063793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018252.P8854515925266063793

namespace A018252

/-- `A222307(Δ[n²])` -/
def P8854515925266063793.Spec : Prop :=
  ∀ n, P8854515925266063793.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P13216895614634560553

`sqrt(A062312(n+1))`
-/

namespace A018252.P13216895614634560553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ)

end

end A018252.P13216895614634560553

namespace A018252

/-- `sqrt(A062312(n+1))` -/
def P13216895614634560553.Spec : Prop :=
  ∀ n, P13216895614634560553.a n = (A018252 (n + 1) : ℝ)

end A018252

/-! ## A018252.P16373037076265997608

`∑[A054546(n+1)]`
-/

namespace A018252.P16373037076265997608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018252.P16373037076265997608

namespace A018252

/-- `∑[A054546(n+1)]` -/
def P16373037076265997608.Spec : Prop :=
  ∀ n, P16373037076265997608.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P3106288201320661853

`comp[A351078(n+2)]`
-/

namespace A018252.P3106288201320661853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018252.P3106288201320661853

namespace A018252

/-- `comp[A351078(n+2)]` -/
def P3106288201320661853.Spec : Prop :=
  ∀ n, (P3106288201320661853.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P13220545524348910841

`n+1+A073425(n)`
-/

namespace A018252.P13220545524348910841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A073425 n

end

end A018252.P13220545524348910841

namespace A018252

/-- `n+1+A073425(n)` -/
def P13220545524348910841.Spec : Prop :=
  ∀ n, P13220545524348910841.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P17171683957693538575

`∑{d}[n+1, A361709(#)]`
-/

namespace A018252.P17171683957693538575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361709 d

end

end A018252.P17171683957693538575

namespace A018252

/-- `∑{d}[n+1, A361709(#)]` -/
def P17171683957693538575.Spec : Prop :=
  ∀ n, P17171683957693538575.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P15848329278512076335

`comp[record[A000010(n+1)]]+1`
-/

namespace A018252.P15848329278512076335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A018252.P15848329278512076335

namespace A018252

/-- `comp[record[A000010(n+1)]]+1` -/
def P15848329278512076335.Spec : Prop :=
  ∀ n, (P15848329278512076335.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P10621982448065979925

`comp[∑{p}[record[A006530(n+1)], #]]`
-/

namespace A018252.P10621982448065979925
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A018252.P10621982448065979925

namespace A018252

/-- `comp[∑{p}[record[A006530(n+1)], #]]` -/
def P10621982448065979925.Spec : Prop :=
  ∀ n, (P10621982448065979925.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P16477756245026853633

`comp[∑{p}[record[A020639(n+1)], #]]`
-/

namespace A018252.P16477756245026853633
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A018252.P16477756245026853633

namespace A018252

/-- `comp[∑{p}[record[A020639(n+1)], #]]` -/
def P16477756245026853633.Spec : Prop :=
  ∀ n, (P16477756245026853633.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P7485063466551616413

`comp[A000040(n+1)-1]+1`
-/

namespace A018252.P7485063466551616413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A018252.P7485063466551616413

namespace A018252

/-- `comp[A000040(n+1)-1]+1` -/
def P7485063466551616413.Spec : Prop :=
  ∀ n, (P7485063466551616413.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P17224599132779379135

`comp[A006530(n+2)-1]+1`
-/

namespace A018252.P17224599132779379135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A018252.P17224599132779379135

namespace A018252

/-- `comp[A006530(n+2)-1]+1` -/
def P17224599132779379135.Spec : Prop :=
  ∀ n, (P17224599132779379135.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P12041462583854375528

`comp[A020639(n+2)-1]+1`
-/

namespace A018252.P12041462583854375528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A018252.P12041462583854375528

namespace A018252

/-- `comp[A020639(n+2)-1]+1` -/
def P12041462583854375528.Spec : Prop :=
  ∀ n, (P12041462583854375528.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P9149990778312812516

`comp[eq[2, A000005(n+1)]]+1`
-/

namespace A018252.P9149990778312812516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A018252.P9149990778312812516

namespace A018252

/-- `comp[eq[2, A000005(n+1)]]+1` -/
def P9149990778312812516.Spec : Prop :=
  ∀ n, (P9149990778312812516.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P2610663928526340731

`comp[A006530(n+3)%(n+1)]`
-/

namespace A018252.P2610663928526340731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 3)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018252.P2610663928526340731

namespace A018252

/-- `comp[A006530(n+3)%(n+1)]` -/
def P2610663928526340731.Spec : Prop :=
  ∀ n, (P2610663928526340731.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P12467196054983437365

`comp[A020639(n+3)%(n+1)²]`
-/

namespace A018252.P12467196054983437365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 3)) ((n + 1) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A018252.P12467196054983437365

namespace A018252

/-- `comp[A020639(n+3)%(n+1)²]` -/
def P12467196054983437365.Spec : Prop :=
  ∀ n, (P12467196054983437365.a n : ℤ) = A018252 (n + 1)

end A018252

/-! ## A018252.P7028546015306075319

`record[2%A000005(n+3)+n+1]`
-/

namespace A018252.P7028546015306075319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A000005 (n + 3)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018252.P7028546015306075319

namespace A018252

/-- `record[2%A000005(n+3)+n+1]` -/
def P7028546015306075319.Spec : Prop :=
  ∀ n, P7028546015306075319.a n = A018252 (n + 1)

end A018252

/-! ## A018252.P16557407491482004301

`record[(n+3)%(2-A000203(n+3))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018252

/-- `record[(n+3)%(2-A000203(n+3))]` -/
def P16557407491482004301.Spec : Prop :=
  ∀ n, P16557407491482004301.a n = A018252 (n + 1)

theorem P16557407491482004301.correct : P16557407491482004301.Spec := by
  intro n
  simp only [A018252, Nat.add_sub_cancel]

end A018252

/-!
# A018256: Divisors of 36.

The programs for A018256, there is no canonical definition to state claims against.
-/

/-! ## A018256.P2706540479913762997

`eq[36, lcm(36, n)]`
-/

namespace A018256.P2706540479913762997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 36 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018256.P2706540479913762997

/-! ## A018256.P13442590569331654078

`eq[1, n/gcd(36, n)]`
-/

namespace A018256.P13442590569331654078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 36 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A018256.P13442590569331654078

/-! ## A018256.P14908958667818281837

`eq[n, 35%(n+1)]+1`
-/

namespace A018256.P14908958667818281837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018256.P14908958667818281837

/-! ## A018256.P4422488769453980770

`record[gcd(36*n, ∏{digits}[n, #+1])]`
-/

namespace A018256.P4422488769453980770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (36 * n) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018256.P4422488769453980770

/-! ## A018256.P15455797640026076068

`floor(∑[2/(n+2-2*n/ϕ)])`
-/

namespace A018256.P15455797640026076068
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / ((n + 2 : ℝ) - (2 * n : ℝ) / Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A018256.P15455797640026076068

/-!
# A018261: Divisors of 48.

The programs for A018261, there is no canonical definition to state claims against.
-/

/-! ## A018261.P13800167776934738710

`eq[48, lcm(48, n)]`
-/

namespace A018261.P13800167776934738710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 48 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018261.P13800167776934738710

/-! ## A018261.P3772379115410803188

`eq[n, 47%(n+1)]+1`
-/

namespace A018261.P3772379115410803188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018261.P3772379115410803188

/-! ## A018261.P18239410797594813126

`lt[(48*n)%(n+1), 1]+1`
-/

namespace A018261.P18239410797594813126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A018261.P18239410797594813126

/-! ## A018261.P8071491811825724478

`floor(sqrt(n))*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A018261.P8071491811825724478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6] fun n a =>
  Nat.sqrt n * a (n - 2)

end

end A018261.P8071491811825724478

/-! ## A018261.P2270405417320549032

`record[gcd(24*n, floor(2*(n+1)/ϕ))]`
-/

namespace A018261.P2270405417320549032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (24 * n : ℤ) ⌊2 * ((n + 1 : ℝ) / Real.goldenRatio)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018261.P2270405417320549032

/-!
# A018266: Divisors of 60.

The programs for A018266, there is no canonical definition to state claims against.
-/

/-! ## A018266.P5273381767494233884

`eq[60, lcm(60, n)]`
-/

namespace A018266.P5273381767494233884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 60 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018266.P5273381767494233884

/-! ## A018266.P5106536657789717340

`eq[1, n/gcd(60, n)]`
-/

namespace A018266.P5106536657789717340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 60 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A018266.P5106536657789717340

/-! ## A018266.P14397995447474748262

`eq[n, 59%(n+1)]+1`
-/

namespace A018266.P14397995447474748262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018266.P14397995447474748262

/-! ## A018266.P1632015610394185678

`record[gcd(3^C(n, 68)+n, 60*n)]`
-/

namespace A018266.P1632015610394185678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 ^ Nat.choose n 68 + n) (60 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018266.P1632015610394185678

/-! ## A018266.P16049335962971337415

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 30*n)]`
-/

namespace A018266.P16049335962971337415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (30 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018266.P16049335962971337415

/-!
# A018271: Divisors of 72.

The programs for A018271, there is no canonical definition to state claims against.
-/

/-! ## A018271.P2028020330786287683

`eq[72, lcm(72, n)]`
-/

namespace A018271.P2028020330786287683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 72 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018271.P2028020330786287683

/-! ## A018271.P8841296706474842390

`eq[1, n/gcd(72, n)]`
-/

namespace A018271.P8841296706474842390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 72 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A018271.P8841296706474842390

/-! ## A018271.P11158990681386719133

`eq[n, 71%(n+1)]+1`
-/

namespace A018271.P11158990681386719133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  71 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018271.P11158990681386719133

/-! ## A018271.P8060780408310121572

`lt[(72*n)%(n+1), 1]+1`
-/

namespace A018271.P8060780408310121572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A018271.P8060780408310121572

/-! ## A018271.P18253228601097808005

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 36*n)]`
-/

namespace A018271.P18253228601097808005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (36 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018271.P18253228601097808005

/-!
# A018275: Divisors of 80.

The programs for A018275, there is no canonical definition to state claims against.
-/

/-! ## A018275.P10889151652650831634

`eq[80, lcm(80, n)]`
-/

namespace A018275.P10889151652650831634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  80

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 80 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018275.P10889151652650831634

/-! ## A018275.P12059876074172903203

`eq[n, 79%(n+1)]+1`
-/

namespace A018275.P12059876074172903203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  79 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018275.P12059876074172903203

/-! ## A018275.P4570769240992140657

`eq[1, gcd(80, n)-(n-1)]`
-/

namespace A018275.P4570769240992140657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 80 n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018275.P4570769240992140657

/-! ## A018275.P10365320639426363165

`lt[(49*n-31)%(n+1), 1]+1`
-/

namespace A018275.P10365320639426363165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((49 * n : ℤ) - 31) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018275.P10365320639426363165

/-! ## A018275.P6796162744738260707

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 20*n²)]`
-/

namespace A018275.P6796162744738260707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (20 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018275.P6796162744738260707

/-!
# A018276: Divisors of 84.

The programs for A018276, there is no canonical definition to state claims against.
-/

/-! ## A018276.P1353683827052267503

`eq[84, lcm(84, n)]`
-/

namespace A018276.P1353683827052267503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  84

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 84 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018276.P1353683827052267503

/-! ## A018276.P2125104397999603295

`eq[1, n/gcd(84, n)]`
-/

namespace A018276.P2125104397999603295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 84 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A018276.P2125104397999603295

/-! ## A018276.P16027960930884457664

`eq[n, 83%(n+1)]+1`
-/

namespace A018276.P16027960930884457664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018276.P16027960930884457664

/-! ## A018276.P11555653822875172992

`record[xor(n+1, (n-83)%(n+1))]`
-/

namespace A018276.P11555653822875172992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (Int.tmod ((n : ℤ) - 83) (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018276.P11555653822875172992

/-! ## A018276.P17029281087803415881

`lt[(59*n-25)%(n+1), 1]+1`
-/

namespace A018276.P17029281087803415881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((59 * n : ℤ) - 25) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018276.P17029281087803415881

/-!
# A018278: Divisors of 90.

The programs for A018278, there is no canonical definition to state claims against.
-/

/-! ## A018278.P10514857229609158263

`eq[90, lcm(90, n)]`
-/

namespace A018278.P10514857229609158263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 90 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018278.P10514857229609158263

/-! ## A018278.P7597336878476580701

`eq[1, n/gcd(90, n)]`
-/

namespace A018278.P7597336878476580701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 90 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A018278.P7597336878476580701

/-! ## A018278.P306664643634442929

`eq[n, 89%(n+1)]+1`
-/

namespace A018278.P306664643634442929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018278.P306664643634442929

/-! ## A018278.P12704562288784030687

`lt[C(9*n, 2)%(n+1), 1]+1`
-/

namespace A018278.P12704562288784030687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (9 * n) 2 % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A018278.P12704562288784030687

/-! ## A018278.P10490616690531370524

`lt[n-1, (91*n)%(n+1)]+1`
-/

namespace A018278.P10490616690531370524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  91 * n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A018278.P10490616690531370524

/-!
# A018280: Divisors of 96.

The programs for A018280, there is no canonical definition to state claims against.
-/

/-! ## A018280.P12058870648149542684

`eq[96, lcm(96, n)]`
-/

namespace A018280.P12058870648149542684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 96 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018280.P12058870648149542684

/-! ## A018280.P5152964927806448383

`eq[n, 95%(n+1)]+1`
-/

namespace A018280.P5152964927806448383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  95 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A018280.P5152964927806448383

/-! ## A018280.P8770369300336168485

`floor(5/n*sqrt(a(n-1)))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A018280.P8770369300336168485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(5 / (n : ℚ) : ℝ) * Real.sqrt (a (n - 1) : ℝ)⌋ * a (n - 2)

end

end A018280.P8770369300336168485

/-! ## A018280.P1726995148414247096

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 24*n²)]`
-/

namespace A018280.P1726995148414247096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (24 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018280.P1726995148414247096

/-! ## A018280.P6636244570452704565

`record[gcd(10*10*n+4, (n+1)/10^val(n+1, 10))]`
-/

namespace A018280.P6636244570452704565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * (10 * n) + 4 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018280.P6636244570452704565

/-!
# A018283: Divisors of 100.

The programs for A018283, there is no canonical definition to state claims against.
-/

/-! ## A018283.P14292199597104889051

`char[9]+5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018283.P14292199597104889051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 5 * a (n - 3)

end

end A018283.P14292199597104889051

/-! ## A018283.P5100316212931413630

`5*a(n-3)-char[9]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018283.P5100316212931413630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  5 * a (n - 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018283.P5100316212931413630

/-! ## A018283.P3989074255398371733

`A245478(∑{digits}[n+1, #])`
-/

namespace A018283.P3989074255398371733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018283.P3989074255398371733

/-! ## A018283.P9114992751856486373

`A249398(∑{digits}[n+1, #])`
-/

namespace A018283.P9114992751856486373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249398 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018283.P9114992751856486373

/-!
# A018284: Divisors of 102.

The programs for A018284, there is no canonical definition to state claims against.
-/

/-! ## A018284.P4027624866329576989

`17*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A018284.P4027624866329576989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  17 * a (n - 4)

end

end A018284.P4027624866329576989

/-! ## A018284.P16426633448771766156

`eq[3, lcm(n, (20/2)²+2)/34]`
-/

namespace A018284.P16426633448771766156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (((20 : ℚ) / 2) ^ 2 + 2)) : ℚ) / 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A018284.P16426633448771766156

/-! ## A018284.P6946003315746499891

`record[gcd((20/2)²-n, ceil(lcm(2, n+1)/4))]`
-/

namespace A018284.P6946003315746499891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((20 : ℚ) / 2) ^ 2 - (n : ℚ))) ⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018284.P6946003315746499891

/-! ## A018284.P12438471096184611747

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 200/2-n)]`
-/

namespace A018284.P12438471096184611747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (SequenceMachineLib.roundAway ((200 : ℚ) / 2 - (n : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018284.P12438471096184611747

/-!
# A018285: Divisors of 104.

The programs for A018285, there is no canonical definition to state claims against.
-/

/-! ## A018285.P17444708076995779701

`eq[lcm(8, n)/8, gcd(13, n)]`
-/

namespace A018285.P17444708076995779701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℚ) / 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A018285.P17444708076995779701

/-! ## A018285.P17454004116359481221

`ogf((1-3x^4)/(1-2x))`
-/

namespace A018285.P17454004116359481221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, -3] [1, -2] n

end

end A018285.P17454004116359481221

/-! ## A018285.P17904863471433355056

`13*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A018285.P17904863471433355056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  13 * a (n - 4)

end

end A018285.P17904863471433355056

/-!
# A018286: Divisors of 105.

The programs for A018286, there is no canonical definition to state claims against.
-/

/-! ## A018286.P17149088459823945497

`record[A194360(n)]`
-/

namespace A018286.P17149088459823945497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018286.P17149088459823945497

/-! ## A018286.P6741725256309957991

`or(1, A057743(n))`
-/

namespace A018286.P6741725256309957991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057743 n)

end

end A018286.P6741725256309957991

/-! ## A018286.P13819872306612962320

`A119265(n+29)`
-/

namespace A018286.P13819872306612962320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (n + 29)

end

end A018286.P13819872306612962320

/-! ## A018286.P8931450697785218511

`A355572(Δ[n²])`
-/

namespace A018286.P8931450697785218511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018286.P8931450697785218511

/-!
# A018287: Divisors of 108.

The programs for A018287, there is no canonical definition to state claims against.
-/

/-! ## A018287.P17208388062381930952

`eq[9, lcm(9, lcm(12, n)/12)]`
-/

namespace A018287.P17208388062381930952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018287.P17208388062381930952

/-! ## A018287.P13034109286256260191

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 27*n²)]`
-/

namespace A018287.P13034109286256260191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (27 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018287.P13034109286256260191

/-! ## A018287.P586258913378226588

`eq[(12*n+6)^3, lcm(2*n, (12*n+6)^3)]`
-/

namespace A018287.P586258913378226588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (12 * n + 6) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) ((12 * n + 6) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018287.P586258913378226588

/-! ## A018287.P8124878421410899194

`A000792(comp[12*n])`
-/

namespace A018287.P8124878421410899194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018287.P8124878421410899194

/-! ## A018287.P15662016602875465196

`A199014(comp[13*n])`
-/

namespace A018287.P15662016602875465196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199014 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018287.P15662016602875465196

/-!
# A018288: Divisors of 110.

The programs for A018288, there is no canonical definition to state claims against.
-/

/-! ## A018288.P5443483398797180716

`or(2, 11*a(n-4))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A018288.P5443483398797180716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  Nat.lor 2 (11 * a (n - 4))

end

end A018288.P5443483398797180716

/-! ## A018288.P15008647359756881427

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=11, a(5)=22, a(6)=55, a(7)=110`
-/

namespace A018288.P15008647359756881427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10, 11, 22, 55, 110] fun n a =>
  a (n - 4)

end

end A018288.P15008647359756881427

/-! ## A018288.P17949950596467361958

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 55*n)]`
-/

namespace A018288.P17949950596467361958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (55 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018288.P17949950596467361958

/-! ## A018288.P13756248326476410745

`∏{p}[A245480(n+1), #]`
-/

namespace A018288.P13756248326476410745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A018288.P13756248326476410745

/-!
# A018289: Divisors of 112.

The programs for A018289, there is no canonical definition to state claims against.
-/

/-! ## A018289.P11872083460879395939

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 28*n²)]`
-/

namespace A018289.P11872083460879395939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (28 * n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018289.P11872083460879395939

/-! ## A018289.P3062022281392303251

`A027750(543+n)`
-/

namespace A018289.P3062022281392303251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (543 + n)

end

end A018289.P3062022281392303251

/-! ## A018289.P3790613728009087519

`A177915(comp[10*n])`
-/

namespace A018289.P3790613728009087519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177915 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018289.P3790613728009087519

/-! ## A018289.P11290451239085767130

`A128395(comp[23*n])`
-/

namespace A018289.P11290451239085767130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128395 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018289.P11290451239085767130

/-! ## A018289.P12803854618209473657

`A128395(n+1)%191`
-/

namespace A018289.P12803854618209473657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128395 (n + 1)) 191

end

end A018289.P12803854618209473657

/-!
# A018290: Divisors of 114.

The programs for A018290, there is no canonical definition to state claims against.
-/

/-! ## A018290.P14420911975306117612

`eq[38, lcm(38, lcm(3, n)/3)]`
-/

namespace A018290.P14420911975306117612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 38 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018290.P14420911975306117612

/-! ## A018290.P7299538640796167191

`19*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A018290.P7299538640796167191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  19 * a (n - 4)

end

end A018290.P7299538640796167191

/-! ## A018290.P18213525156887814485

`record[gcd(2*(n+2)²-7+n, round((n+3)*(n+6)/30))]`
-/

namespace A018290.P18213525156887814485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 2) ^ 2 : ℤ) - 7 + (n : ℤ)) (SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n + 6 : ℚ) / 30)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018290.P18213525156887814485

/-! ## A018290.P7449582654471395734

`eq[6, A106620(lcm(6, n))]`
-/

namespace A018290.P7449582654471395734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 (Nat.lcm 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018290.P7449582654471395734

/-!
# A018291: Divisors of 116.

The programs for A018291, there is no canonical definition to state claims against.
-/

/-! ## A018291.P9420039159080222111

`29*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018291.P9420039159080222111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  29 * a (n - 3)

end

end A018291.P9420039159080222111

/-!
# A018292: Divisors of 117.

The programs for A018292, there is no canonical definition to state claims against.
-/

/-! ## A018292.P10710548486733217603

`ogf((1-14x^3)/(1-3x))`
-/

namespace A018292.P10710548486733217603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -14] [1, -3] n

end

end A018292.P10710548486733217603

/-!
# A018293: Divisors of 120.

The programs for A018293, there is no canonical definition to state claims against.
-/

/-! ## A018293.P16574391850828017713

`eq[10, lcm(10, lcm(12, n)/12)]`
-/

namespace A018293.P16574391850828017713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018293.P16574391850828017713

/-! ## A018293.P11849766305194387289

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 60*n)]`
-/

namespace A018293.P11849766305194387289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) (60 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018293.P11849766305194387289

/-! ## A018293.P12708455128773757785

`A070861(n+16)`
-/

namespace A018293.P12708455128773757785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070861 (n + 16)

end

end A018293.P12708455128773757785

/-! ## A018293.P6274561600435391216

`A079210(n+16)`
-/

namespace A018293.P6274561600435391216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 16)

end

end A018293.P6274561600435391216

/-! ## A018293.P9670747553348402242

`A199204(n+32)`
-/

namespace A018293.P9670747553348402242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199204 (n + 32)

end

end A018293.P9670747553348402242

/-!
# A018294: Divisors of 124.

The programs for A018294, there is no canonical definition to state claims against.
-/

/-! ## A018294.P18444157344381012401

`31*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018294.P18444157344381012401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  31 * a (n - 3)

end

end A018294.P18444157344381012401

/-!
# A018295: Divisors of 126.

The programs for A018295, there is no canonical definition to state claims against.
-/

/-! ## A018295.P14103028697820179857

`eq[9, lcm(9, lcm(14, n)/14)]`
-/

namespace A018295.P14103028697820179857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018295.P14103028697820179857

/-! ## A018295.P8771002517866893438

`A027750(624+n)`
-/

namespace A018295.P8771002517866893438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (624 + n)

end

end A018295.P8771002517866893438

/-! ## A018295.P13977193458463109465

`eq[7, A106619(lcm(7, n))]`
-/

namespace A018295.P13977193458463109465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (Nat.lcm 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018295.P13977193458463109465

/-! ## A018295.P8485122029671100744

`eq[9, lcm(9, A106615(n))]`
-/

namespace A018295.P8485122029671100744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A106615 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018295.P8485122029671100744

/-! ## A018295.P16438008564494620290

`eq[14, lcm(14, A106610(n))]`
-/

namespace A018295.P16438008564494620290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 14 (A106610 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018295.P16438008564494620290

/-!
# A018296: Divisors of 130.

The programs for A018296, there is no canonical definition to state claims against.
-/

/-! ## A018296.P2549735838522376414

`13*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A018296.P2549735838522376414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  13 * a (n - 4)

end

end A018296.P2549735838522376414

/-! ## A018296.P11250954076235440433

`record[A356387(2*n)]`
-/

namespace A018296.P11250954076235440433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356387 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018296.P11250954076235440433

/-! ## A018296.P8033509303666498379

`record[∏{p}[n, A146106(#)]]`
-/

namespace A018296.P8033509303666498379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A146106 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018296.P8033509303666498379

/-! ## A018296.P12373746837794447404

`eq[2, A007305(lcm(10, n))]`
-/

namespace A018296.P12373746837794447404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (Nat.lcm 10 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018296.P12373746837794447404

/-!
# A018297: Divisors of 132.

The programs for A018297, there is no canonical definition to state claims against.
-/

/-! ## A018297.P2611612015451393851

`eq[11, lcm(11, lcm(12, n)/12)]`
-/

namespace A018297.P2611612015451393851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018297.P2611612015451393851

/-! ## A018297.P12566847797277782351

`lt[xor(1, n²), n*gcd(66, n)*sqrt(7)]`
-/

namespace A018297.P12566847797277782351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * Nat.gcd 66 n : ℝ) * Real.sqrt (7 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A018297.P12566847797277782351

/-! ## A018297.P18414787795133583

`eq[11, A051724(lcm(11, n))]`
-/

namespace A018297.P18414787795133583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.lcm 11 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018297.P18414787795133583

/-! ## A018297.P7267970983679647448

`eq[gcd(11, n), A051724(n)]`
-/

namespace A018297.P7267970983679647448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018297.P7267970983679647448

/-! ## A018297.P13409777785610631810

`eq[66, lcm(66, A026741(n))]`
-/

namespace A018297.P13409777785610631810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  66

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 66 (A026741 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018297.P13409777785610631810

/-!
# A018298: Divisors of 135.

The programs for A018298, there is no canonical definition to state claims against.
-/

/-! ## A018298.P3191147749095864615

`eq[15, lcm(15, lcm(9, n)/9)]`
-/

namespace A018298.P3191147749095864615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 15 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018298.P3191147749095864615

/-! ## A018298.P11766289993667911388

`a(ceil(n/6))*a(n-2)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A018298.P11766289993667911388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a ⌈(n : ℚ) / 6⌉.toNat * a (n - 2)

end

end A018298.P11766289993667911388

/-! ## A018298.P14949949806052143506

`A273164(n+71)`
-/

namespace A018298.P14949949806052143506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273164 (n + 71)

end

end A018298.P14949949806052143506

/-! ## A018298.P8740794475879282846

`floor(A018436(n+3)/3)`
-/

namespace A018298.P8740794475879282846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018436 (n + 3) : ℚ) / 3⌋

end

end A018298.P8740794475879282846

/-!
# A018299: Divisors of 136.

The programs for A018299, there is no canonical definition to state claims against.
-/

/-! ## A018299.P3768673562362687812

`floor(2^(log(log(3))+n))`
-/

namespace A018299.P3768673562362687812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (Real.log (Real.log (3 : ℝ)) + (n : ℝ))⌋

end

end A018299.P3768673562362687812

/-! ## A018299.P12996072033006515484

`ceil(∑[2^(n-sin(2))])`
-/

namespace A018299.P12996072033006515484
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n : ℝ) - Real.sin (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A018299.P12996072033006515484

/-! ## A018299.P15212492124004492268

`∑[round(2^(n-sin(2)))]`
-/

namespace A018299.P15212492124004492268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℝ) - Real.sin (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018299.P15212492124004492268

