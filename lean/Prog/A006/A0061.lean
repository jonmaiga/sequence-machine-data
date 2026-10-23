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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A006100: Gaussian binomial coefficient [n, 2] for q = 3.

The programs for A006100, the canonical program `A006100.P1917565999620650510` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006100 has offset 2).

The definition of A006100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006100.P1917565999620650510

`4*a(n-1)-3*a(n-2)+9^n` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006100

/-- `4*a(n-1)-3*a(n-2)+9^n` -/
def P1917565999620650510.Spec : Prop :=
  ∀ n, P1917565999620650510.a n = A006100 (n + 2)

theorem P1917565999620650510.correct : P1917565999620650510.Spec := by
  intro n
  simp only [A006100, Nat.add_sub_cancel]

end A006100

/-! ## A006100.P2914512238725531986

`(9^(n+2)-4*3^(n+2)+3)/48`
-/

namespace A006100.P2914512238725531986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 2) : ℤ) - (4 * 3 ^ (n + 2) : ℤ) + 3 : ℚ) / 48

end

end A006100.P2914512238725531986

namespace A006100

/-- `(9^(n+2)-4*3^(n+2)+3)/48` -/
def P2914512238725531986.Spec : Prop :=
  ∀ n, P2914512238725531986.a n = (A006100 (n + 2) : ℚ)

theorem P2914512238725531986.correct : P2914512238725531986.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A006100, Nat.add_sub_cancel, A006100.P2914512238725531986.a, A006100.P1917565999620650510.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A006100, Nat.add_sub_cancel, A006100.P2914512238725531986.a, A006100.P1917565999620650510.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006100

/-! ## A006100.P4030287481296462222

`∑[3*a(n-1)]²-3*a(n-1)` with `a(0)=1`
-/

namespace A006100.P4030287481296462222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 3 * a (n - 1)

end

end A006100.P4030287481296462222

namespace A006100

/-- `∑[3*a(n-1)]²-3*a(n-1)` -/
def P4030287481296462222.Spec : Prop :=
  ∀ n, P4030287481296462222.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P11529234999081913369

`∑[A016142(n)]`
-/

namespace A006100.P11529234999081913369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006100.P11529234999081913369

namespace A006100

/-- `∑[A016142(n)]` -/
def P11529234999081913369.Spec : Prop :=
  ∀ n, P11529234999081913369.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P16637606881689678686

`∑[A167993(2*(n+1))]`
-/

namespace A006100.P16637606881689678686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006100.P16637606881689678686

namespace A006100

/-- `∑[A167993(2*(n+1))]` -/
def P16637606881689678686.Spec : Prop :=
  ∀ n, P16637606881689678686.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P7942938002392732096

`floor(∑[∑[A226508(n)/3]])`
-/

namespace A006100.P7942938002392732096
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226508 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A006100.P7942938002392732096

namespace A006100

/-- `floor(∑[∑[A226508(n)/3]])` -/
def P7942938002392732096.Spec : Prop :=
  ∀ n, P7942938002392732096.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P8907178159932821526

`∑[A001019(n)]+3*a(n-1)` with `a(0)=1`
-/

namespace A006100.P8907178159932821526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A006100.P8907178159932821526

namespace A006100

/-- `∑[A001019(n)]+3*a(n-1)` -/
def P8907178159932821526.Spec : Prop :=
  ∀ n, P8907178159932821526.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P1147786624634912170

`A052386(n)+3*a(n-1)+1` with `a(0)=1`
-/

namespace A006100.P1147786624634912170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052386 n + (3 * a (n - 1) + 1)

end

end A006100.P1147786624634912170

namespace A006100

/-- `A052386(n)+3*a(n-1)+1` -/
def P1147786624634912170.Spec : Prop :=
  ∀ n, P1147786624634912170.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P8436557279301230142

`2*A016278(n)-∑[A016278(n)]`
-/

namespace A006100.P8436557279301230142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016278 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006100.P8436557279301230142

namespace A006100

/-- `2*A016278(n)-∑[A016278(n)]` -/
def P8436557279301230142.Spec : Prop :=
  ∀ n, P8436557279301230142.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P10322487433312040000

`A152298(n+1)*A152298(n+2)`
-/

namespace A006100.P10322487433312040000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152298 (n + 1) * A152298 (n + 2)

end

end A006100.P10322487433312040000

namespace A006100

/-- `A152298(n+1)*A152298(n+2)` -/
def P10322487433312040000.Spec : Prop :=
  ∀ n, P10322487433312040000.a n = A006100 (n + 2)

end A006100

/-! ## A006100.P5406858767628981870

`∑[C(3^(n+1), 2)/3]`
-/

namespace A006100.P5406858767628981870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 ^ (n + 1)) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006100.P5406858767628981870

namespace A006100

/-- `∑[C(3^(n+1), 2)/3]` -/
def P5406858767628981870.Spec : Prop :=
  ∀ n, P5406858767628981870.a n = (A006100 (n + 2) : ℚ)

end A006100

/-!
# A006101: Gaussian binomial coefficient [ n,3 ] for q=3.

The programs for A006101, there is no canonical definition to state claims against.
-/

/-! ## A006101.P11505103244255015861

`∑[3^n*∑[3^n*∑[3^n]]]`
-/

namespace A006101.P11505103244255015861
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006101.P11505103244255015861

/-! ## A006101.P2459343123570616843

`A227524(n)+a(n-1)` with `a(0)=1`
-/

namespace A006101.P2459343123570616843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A227524 n + a (n - 1)

end

end A006101.P2459343123570616843

/-! ## A006101.P17778040492495205666

`a(n-1)+A006100(n+2)*A034472(n)-A006100(n+2)` with `a(0)=1`
-/

namespace A006101.P17778040492495205666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006100 (n + 2) * A034472 n - A006100 (n + 2))

end

end A006101.P17778040492495205666

/-! ## A006101.P9447512870682203245

`∑[A227524(n)]%A186917(n+1)`
-/

namespace A006101.P9447512870682203245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A186917 (n + 1))

end

end A006101.P9447512870682203245

/-! ## A006101.P11044023351245518727

`A226804(n)/3^n`
-/

namespace A006101.P11044023351245518727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226804 n : ℚ) / (3 ^ n : ℚ)

end

end A006101.P11044023351245518727

/-! ## A006101.P11567383232712265259

`A006100(n+2)/A227524(n)*A226804(n)`
-/

namespace A006101.P11567383232712265259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006100 (n + 2) : ℚ) / (A227524 n : ℚ) * (A226804 n : ℚ)

end

end A006101.P11567383232712265259

/-!
# A006102: Gaussian binomial coefficient [ n,4 ] for q=3.

The programs for A006102, there is no canonical definition to state claims against.
-/

/-! ## A006102.P4222424079966341796

`∑[A226804(n)]`
-/

namespace A006102.P4222424079966341796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006102.P4222424079966341796

/-! ## A006102.P4060400231557729842

`∑[3^n*∑[A227524(n)]]`
-/

namespace A006102.P4060400231557729842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006102.P4060400231557729842

/-! ## A006102.P17215136884426867158

`∑[3^n*A006101(n+3)]`
-/

namespace A006102.P17215136884426867158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A006101 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006102.P17215136884426867158

/-! ## A006102.P5025029418457916436

`∑[∑[A227524(n)]*A000244(n)]`
-/

namespace A006102.P5025029418457916436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006102.P5025029418457916436

/-! ## A006102.P15847170565618531104

`∑[lcm(A000244(n), A006101(n+3))]`
-/

namespace A006102.P15847170565618531104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A006101 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006102.P15847170565618531104

/-! ## A006102.P1827871139712767252

`∑[A006101(n+3)*A027465(∑[n])]`
-/

namespace A006102.P1827871139712767252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006101 (n + 3) * A027465 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006102.P1827871139712767252

/-!
# A006103: Gaussian binomial coefficient [ 2n,n ] for q=3.

The programs for A006103, there is no canonical definition to state claims against.
-/

/-! ## A006103.P10905205172294755787

`A006104(2*n)`
-/

namespace A006103.P10905205172294755787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006104 (2 * n)

end

end A006103.P10905205172294755787

/-! ## A006103.P7378753475290147230

`A022167(∑[4*n])`
-/

namespace A006103.P7378753475290147230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006103.P7378753475290147230

/-! ## A006103.P440003259797246692

`record[A006104(-xor(n, C(n, n²)-2))]`
-/

namespace A006103.P440003259797246692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006104 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006103.P440003259797246692

/-! ## A006103.P17680194184479739386

`record[A003982(n)*A022167(n)]`
-/

namespace A006103.P17680194184479739386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A022167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006103.P17680194184479739386

/-! ## A006103.P11562860636122701775

`record[A022167(n)*A214505(n)]`
-/

namespace A006103.P11562860636122701775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006103.P11562860636122701775

/-!
# A006104: Gaussian binomial coefficient [ n,n/2 ] for q=3.

The programs for A006104, there is no canonical definition to state claims against.
-/

/-! ## A006104.P17818359042189918418

`A022167(A194274(n))`
-/

namespace A006104.P17818359042189918418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A194274 n).toNat

end

end A006104.P17818359042189918418

/-! ## A006104.P12996609496840634145

`A022167(record[A151890(n)])`
-/

namespace A006104.P12996609496840634145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006104.P12996609496840634145

/-! ## A006104.P14925108143639450061

`A022167(A007590(n+1))`
-/

namespace A006104.P14925108143639450061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A007590 (n + 1)).toNat

end

end A006104.P14925108143639450061

/-! ## A006104.P17825752925358755942

`A022167(A080476(n+1))`
-/

namespace A006104.P17825752925358755942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A080476 (n + 1)).toNat

end

end A006104.P17825752925358755942

/-! ## A006104.P5946768915012735283

`A022167(A156324(n+1))`
-/

namespace A006104.P5946768915012735283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (A156324 (n + 1)).toNat

end

end A006104.P5946768915012735283

/-!
# A006105: Gaussian binomial coefficient [ n,2 ] for q=4.

The programs for A006105, the canonical program `A006105.P7140266274470636748` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006105 has offset 2).

The definition of A006105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006105.P7140266274470636748

`5*a(n-1)-4*a(n-2)+16^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006105

/-- `5*a(n-1)-4*a(n-2)+16^n` -/
def P7140266274470636748.Spec : Prop :=
  ∀ n, P7140266274470636748.a n = A006105 (n + 2)

theorem P7140266274470636748.correct : P7140266274470636748.Spec := by
  intro n
  simp only [A006105, Nat.add_sub_cancel]

end A006105

/-! ## A006105.P9403222148143741183

`(16^(n+2)-5*4^(n+2)+4)/180`
-/

namespace A006105.P9403222148143741183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 2) : ℤ) - (5 * 4 ^ (n + 2) : ℤ) + 4 : ℚ) / 180

end

end A006105.P9403222148143741183

namespace A006105

/-- `(16^(n+2)-5*4^(n+2)+4)/180` -/
def P9403222148143741183.Spec : Prop :=
  ∀ n, P9403222148143741183.a n = (A006105 (n + 2) : ℚ)

theorem P9403222148143741183.correct : P9403222148143741183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A006105, Nat.add_sub_cancel, A006105.P9403222148143741183.a, A006105.P7140266274470636748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A006105, Nat.add_sub_cancel, A006105.P9403222148143741183.a, A006105.P7140266274470636748.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006105

/-! ## A006105.P17611327965025888085

`∑[4*a(n-1)]²-4*a(n-1)` with `a(0)=1`
-/

namespace A006105.P17611327965025888085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 4 * a (n - 1)

end

end A006105.P17611327965025888085

namespace A006105

/-- `∑[4*a(n-1)]²-4*a(n-1)` -/
def P17611327965025888085.Spec : Prop :=
  ∀ n, P17611327965025888085.a n = A006105 (n + 2)

end A006105

/-! ## A006105.P12252015334834968243

`8*a(n-1)+∑[4*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A006105.P12252015334834968243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1))

end

end A006105.P12252015334834968243

namespace A006105

/-- `8*a(n-1)+∑[4*a(n-1)]+8*a(n-1)` -/
def P12252015334834968243.Spec : Prop :=
  ∀ n, (P12252015334834968243.a n : ℤ) = A006105 (n + 2)

end A006105

/-! ## A006105.P683162848090437776

`∑[A166984(n)]`
-/

namespace A006105.P683162848090437776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006105.P683162848090437776

namespace A006105

/-- `∑[A166984(n)]` -/
def P683162848090437776.Spec : Prop :=
  ∀ n, P683162848090437776.a n = A006105 (n + 2)

end A006105

/-! ## A006105.P13161244737911566192

`∑[∑[A166965(n)]]`
-/

namespace A006105.P13161244737911566192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006105.P13161244737911566192

namespace A006105

/-- `∑[∑[A166965(n)]]` -/
def P13161244737911566192.Spec : Prop :=
  ∀ n, P13161244737911566192.a n = A006105 (n + 2)

end A006105

/-! ## A006105.P9124165564599716740

`∑[A246036(2*n)]`
-/

namespace A006105.P9124165564599716740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006105.P9124165564599716740

namespace A006105

/-- `∑[A246036(2*n)]` -/
def P9124165564599716740.Spec : Prop :=
  ∀ n, P9124165564599716740.a n = A006105 (n + 2)

end A006105

/-! ## A006105.P5575109298678168687

`∑[A266842(2*n)]`
-/

namespace A006105.P5575109298678168687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266842 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006105.P5575109298678168687

namespace A006105

/-- `∑[A266842(2*n)]` -/
def P5575109298678168687.Spec : Prop :=
  ∀ n, P5575109298678168687.a n = A006105 (n + 2)

end A006105

/-! ## A006105.P16125101180910466918

`∑[A266846(2*n)]`
-/

namespace A006105.P16125101180910466918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266846 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006105.P16125101180910466918

namespace A006105

/-- `∑[A266846(2*n)]` -/
def P16125101180910466918.Spec : Prop :=
  ∀ n, P16125101180910466918.a n = A006105 (n + 2)

end A006105

/-! ## A006105.P3767138209887024347

`∑[A267055(2*n)]`
-/

namespace A006105.P3767138209887024347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267055 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006105.P3767138209887024347

namespace A006105

/-- `∑[A267055(2*n)]` -/
def P3767138209887024347.Spec : Prop :=
  ∀ n, P3767138209887024347.a n = A006105 (n + 2)

end A006105

/-!
# A006106: Gaussian binomial coefficient [ n,3 ] for q = 4.

The programs for A006106, there is no canonical definition to state claims against.
-/

/-! ## A006106.P13944237384435901379

`∑[A000079(n)²*A006105(n+2)]`
-/

namespace A006106.P13944237384435901379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A006105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006106.P13944237384435901379

/-! ## A006106.P2375883314904175960

`A022168(A167614(n+2))`
-/

namespace A006106.P2375883314904175960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A167614 (n + 2)).toNat

end

end A006106.P2375883314904175960

/-! ## A006106.P17368717015216345543

`A022168(A141214(n)+6)`
-/

namespace A006106.P17368717015216345543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A141214 n + 6).toNat

end

end A006106.P17368717015216345543

/-! ## A006106.P6244778296958376694

`A022168(A052905(n)+8)`
-/

namespace A006106.P6244778296958376694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A052905 n + 8).toNat

end

end A006106.P6244778296958376694

/-! ## A006106.P7532847675151608602

`A022168(A055999(n)+9)`
-/

namespace A006106.P7532847675151608602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A055999 n + 9).toNat

end

end A006106.P7532847675151608602

/-!
# A006107: Gaussian binomial coefficient [ n,4 ] for q = 4.

The programs for A006107, there is no canonical definition to state claims against.
-/

/-! ## A006107.P984832973925190925

`A022168(A155212(n)+12)`
-/

namespace A006107.P984832973925190925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A155212 n + 12).toNat

end

end A006107.P984832973925190925

/-! ## A006107.P9329931060347353790

`A022168(eq[4, A002262(n)])`
-/

namespace A006107.P9329931060347353790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006107.P9329931060347353790

/-! ## A006107.P1459517379346070915

`A022168(A000124(n+4)+3)`
-/

namespace A006107.P1459517379346070915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A000124 (n + 4) + 3).toNat

end

end A006107.P1459517379346070915

/-! ## A006107.P9775733974069469511

`A022168(A046691(n+2)+8)`
-/

namespace A006107.P9775733974069469511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A046691 (n + 2) + 8).toNat

end

end A006107.P9775733974069469511

/-! ## A006107.P4682370685669580657

`A022168(A052905(n+1)+9)`
-/

namespace A006107.P4682370685669580657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A052905 (n + 1) + 9).toNat

end

end A006107.P4682370685669580657

/-!
# A006108: Gaussian binomial coefficient [ 2n,n ] for q=4.

The programs for A006108, there is no canonical definition to state claims against.
-/

/-! ## A006108.P15879277565742110963

`A006109(2*n)`
-/

namespace A006108.P15879277565742110963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006109 (2 * n)

end

end A006108.P15879277565742110963

/-! ## A006108.P16832083085645812253

`A022168(∑[4*n])`
-/

namespace A006108.P16832083085645812253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006108.P16832083085645812253

/-! ## A006108.P18166422867800882596

`record[A006109(n)^log2(gcd(2, n))]`
-/

namespace A006108.P18166422867800882596
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006109 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006108.P18166422867800882596

/-! ## A006108.P7865469980341700467

`∑[A011782(2*n+1)]*A015034(n)`
-/

namespace A006108.P7865469980341700467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A015034 n

end

end A006108.P7865469980341700467

/-!
# A006109: Gaussian binomial coefficient [ n,n/2 ] for q=4.

The programs for A006109, there is no canonical definition to state claims against.
-/

/-! ## A006109.P10564789833221620517

`A022168(A194274(n))`
-/

namespace A006109.P10564789833221620517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A194274 n).toNat

end

end A006109.P10564789833221620517

/-! ## A006109.P13359897133826430826

`A022168(record[A151890(n)])`
-/

namespace A006109.P13359897133826430826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006109.P13359897133826430826

/-! ## A006109.P4136940630261824364

`A022168(A007590(n+1))`
-/

namespace A006109.P4136940630261824364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A007590 (n + 1)).toNat

end

end A006109.P4136940630261824364

/-! ## A006109.P4405780668387514917

`A022168(A080476(n+1))`
-/

namespace A006109.P4405780668387514917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A080476 (n + 1)).toNat

end

end A006109.P4405780668387514917

/-! ## A006109.P16846004473105429806

`A022168(A156324(n+1))`
-/

namespace A006109.P16846004473105429806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A156324 (n + 1)).toNat

end

end A006109.P16846004473105429806

/-!
# A006110: Gaussian binomial coefficient [n, 5] for q = 2.

The programs for A006110, there is no canonical definition to state claims against.
-/

/-! ## A006110.P12248800308880994710

`∑[A308436(n)]`
-/

namespace A006110.P12248800308880994710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006110.P12248800308880994710

/-! ## A006110.P14716916699814007369

`∑[∑[A028258(n)]*A000079(n)]`
-/

namespace A006110.P14716916699814007369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028258 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006110.P14716916699814007369

/-! ## A006110.P9925370679660344398

`∑[A000079(n)*A006097(n+4)]`
-/

namespace A006110.P9925370679660344398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006110.P9925370679660344398

/-! ## A006110.P11775896644411451383

`∑[∑[A011782(n)]*A006097(n+4)]`
-/

namespace A006110.P11775896644411451383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A006097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006110.P11775896644411451383

/-! ## A006110.P1194372388297394135

`A022166(A167499(n+4))`
-/

namespace A006110.P1194372388297394135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (A167499 (n + 4)).toNat

end

end A006110.P1194372388297394135

/-!
# A006111: Gaussian binomial coefficient [ n,2 ] for q=5.

The programs for A006111, the canonical program `A006111.P2564938646488212755` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006111 has offset 2).

The definition of A006111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006111.P2564938646488212755

`30*a(n-1)-125*a(n-2)+1` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006111

/-- `30*a(n-1)-125*a(n-2)+1` -/
def P2564938646488212755.Spec : Prop :=
  ∀ n, P2564938646488212755.a n = A006111 (n + 2)

theorem P2564938646488212755.correct : P2564938646488212755.Spec := by
  intro n
  simp only [A006111, Nat.add_sub_cancel]

end A006111

/-! ## A006111.P18373994348865430890

`∑[5^n*∑[5^n]]`
-/

namespace A006111.P18373994348865430890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006111.P18373994348865430890

namespace A006111

/-- `∑[5^n*∑[5^n]]` -/
def P18373994348865430890.Spec : Prop :=
  ∀ n, (P18373994348865430890.a n : ℤ) = A006111 (n + 2)

end A006111

/-! ## A006111.P5519003678126761585

`∑[5*a(n-1)]²-5*a(n-1)` with `a(0)=1`
-/

namespace A006111.P5519003678126761585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 5 * a (n - 1)

end

end A006111.P5519003678126761585

namespace A006111

/-- `∑[5*a(n-1)]²-5*a(n-1)` -/
def P5519003678126761585.Spec : Prop :=
  ∀ n, P5519003678126761585.a n = A006111 (n + 2)

end A006111

/-! ## A006111.P9923050905709279246

`A022169(∑[n+2]+3)`
-/

namespace A006111.P9923050905709279246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006111.P9923050905709279246

namespace A006111

/-- `A022169(∑[n+2]+3)` -/
def P9923050905709279246.Spec : Prop :=
  ∀ n, P9923050905709279246.a n = A006111 (n + 2)

end A006111

/-! ## A006111.P1313907760331493165

`or(A000007(n), A022169(A141214(n)))`
-/

namespace A006111.P1313907760331493165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A022169 (A141214 n).toNat)

end

end A006111.P1313907760331493165

namespace A006111

/-- `or(A000007(n), A022169(A141214(n)))` -/
def P1313907760331493165.Spec : Prop :=
  ∀ n, P1313907760331493165.a n = A006111 (n + 2)

end A006111

/-!
# A006112: Gaussian binomial coefficient [ n,3 ] for q = 5.

The programs for A006112, there is no canonical definition to state claims against.
-/

/-! ## A006112.P10315406768802218800

`A022169(A167614(n+2))`
-/

namespace A006112.P10315406768802218800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A167614 (n + 2)).toNat

end

end A006112.P10315406768802218800

/-! ## A006112.P105492286380848978

`A022169(A141214(n)+6)`
-/

namespace A006112.P105492286380848978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A141214 n + 6).toNat

end

end A006112.P105492286380848978

/-! ## A006112.P6070407326028802372

`A022169(A052905(n)+8)`
-/

namespace A006112.P6070407326028802372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A052905 n + 8).toNat

end

end A006112.P6070407326028802372

/-! ## A006112.P1714852313549964928

`A022169(A055999(n)+9)`
-/

namespace A006112.P1714852313549964928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A055999 n + 9).toNat

end

end A006112.P1714852313549964928

/-! ## A006112.P5220072516618759549

`A022169(A000096(n+2)+4)`
-/

namespace A006112.P5220072516618759549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A000096 (n + 2) + 4).toNat

end

end A006112.P5220072516618759549

/-!
# A006113: Gaussian binomial coefficient [ n,4 ] for q = 5.

The programs for A006113, there is no canonical definition to state claims against.
-/

/-! ## A006113.P4146738751794650859

`A022169(A167614(n+3)+1)`
-/

namespace A006113.P4146738751794650859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A167614 (n + 3) + 1).toNat

end

end A006113.P4146738751794650859

/-! ## A006113.P5721852566271807350

`A022169(A141214(n+1)+7)`
-/

namespace A006113.P5721852566271807350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A141214 (n + 1) + 7).toNat

end

end A006113.P5721852566271807350

/-! ## A006113.P17138387083079653987

`A022169(A055998(n+2)+7)`
-/

namespace A006113.P17138387083079653987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A055998 (n + 2) + 7).toNat

end

end A006113.P17138387083079653987

/-! ## A006113.P2220014668000429918

`A022169(A046691(n+2)+8)`
-/

namespace A006113.P2220014668000429918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A046691 (n + 2) + 8).toNat

end

end A006113.P2220014668000429918

/-! ## A006113.P13537342863551313235

`A022169(A052905(n+1)+9)`
-/

namespace A006113.P13537342863551313235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A052905 (n + 1) + 9).toNat

end

end A006113.P13537342863551313235

/-!
# A006114: Gaussian binomial coefficient [ 2n,n ] for q=5.

The programs for A006114, there is no canonical definition to state claims against.
-/

/-! ## A006114.P4901391510179308826

`A006115(2*n)`
-/

namespace A006114.P4901391510179308826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006115 (2 * n)

end

end A006114.P4901391510179308826

/-! ## A006114.P17949469624473607614

`A022169(∑[4*n])`
-/

namespace A006114.P17949469624473607614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006114.P17949469624473607614

/-! ## A006114.P6840592313303168179

`record[A006115(-xor(n, C(n, n²)-2))]`
-/

namespace A006114.P6840592313303168179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006115 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006114.P6840592313303168179

/-! ## A006114.P6681576185552924983

`A156914(eq[5, A193739(n)])`
-/

namespace A006114.P6681576185552924983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006114.P6681576185552924983

/-!
# A006115: Gaussian binomial coefficient [ n,n/2 ] for q=5.

The programs for A006115, there is no canonical definition to state claims against.
-/

/-! ## A006115.P16428751884463523455

`A022169(A194274(n))`
-/

namespace A006115.P16428751884463523455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A194274 n).toNat

end

end A006115.P16428751884463523455

/-! ## A006115.P18376797037109853292

`A022169(A007590(n+1))`
-/

namespace A006115.P18376797037109853292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A007590 (n + 1)).toNat

end

end A006115.P18376797037109853292

/-! ## A006115.P16641238022343661363

`A022169(A080476(n+1))`
-/

namespace A006115.P16641238022343661363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A080476 (n + 1)).toNat

end

end A006115.P16641238022343661363

/-! ## A006115.P14906174528478718684

`A022169(A156324(n+1))`
-/

namespace A006115.P14906174528478718684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A156324 (n + 1)).toNat

end

end A006115.P14906174528478718684

/-! ## A006115.P6360194618000216290

`A022169(A099392(n+2)-1)`
-/

namespace A006115.P6360194618000216290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022169 (A099392 (n + 2) - 1).toNat

end

end A006115.P6360194618000216290

/-!
# A006116: Sum of Gaussian binomial coefficients [n,k] for q=2 and k=0..n.

The programs for A006116, the canonical program `A006116.P14912990292091390441` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006116 has offset 0).

The definition of A006116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006116.P14912990292091390441

`2*a(n-1)+(2^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006116

/-- `2*a(n-1)+(2^(n-1)-1)*a(n-2)` -/
def P14912990292091390441.Spec : Prop :=
  ∀ n, P14912990292091390441.a n = (A006116 n : ℚ)

end A006116

/-! ## A006116.P4528415573950538710

`A182176(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A006116.P4528415573950538710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182176 (n - 1) + a (n - 1)

end

end A006116.P4528415573950538710

namespace A006116

/-- `A182176(n-1)+a(n-1)` -/
def P4528415573950538710.Spec : Prop :=
  ∀ n, P4528415573950538710.a n = A006116 n

end A006116

/-! ## A006116.P6942030449416282362

`∑[A182176(log2(A011782(n)))]`
-/

namespace A006116.P6942030449416282362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182176 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006116.P6942030449416282362

namespace A006116

/-- `∑[A182176(log2(A011782(n)))]` -/
def P6942030449416282362.Spec : Prop :=
  ∀ n, P6942030449416282362.a n = A006116 n

end A006116

/-! ## A006116.P3649524889895181993

`∑[A182176(A028310(n)-1)]`
-/

namespace A006116.P3649524889895181993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182176 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006116.P3649524889895181993

namespace A006116

/-- `∑[A182176(A028310(n)-1)]` -/
def P3649524889895181993.Spec : Prop :=
  ∀ n, P3649524889895181993.a n = A006116 n

end A006116

/-! ## A006116.P14570441578760469961

`∑[A182176(val(A011782(n), 2))]`
-/

namespace A006116.P14570441578760469961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182176 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006116.P14570441578760469961

namespace A006116

/-- `∑[A182176(val(A011782(n), 2))]` -/
def P14570441578760469961.Spec : Prop :=
  ∀ n, P14570441578760469961.a n = A006116 n

end A006116

/-!
# A006117: Sum of Gaussian binomial coefficients [ n,k ] for q=3.

The programs for A006117, the canonical program `A006117.P7087026896117730164` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006117 has offset 0).

The definition of A006117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006117.P7087026896117730164

`2*a(n-1)+(3^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006117

/-- `2*a(n-1)+(3^(n-1)-1)*a(n-2)` -/
def P7087026896117730164.Spec : Prop :=
  ∀ n, P7087026896117730164.a n = (A006117 n : ℚ)

end A006117

/-! ## A006117.P4408124547693121220

`A061034(3^n)`
-/

namespace A006117.P4408124547693121220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (3 ^ n)

end

end A006117.P4408124547693121220

namespace A006117

/-- `A061034(3^n)` -/
def P4408124547693121220.Spec : Prop :=
  ∀ n, P4408124547693121220.a n = A006117 n

end A006117

/-! ## A006117.P6569080418986811497

`record[A061034(A140303(n))]`
-/

namespace A006117.P6569080418986811497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (A140303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006117.P6569080418986811497

namespace A006117

/-- `record[A061034(A140303(n))]` -/
def P6569080418986811497.Spec : Prop :=
  ∀ n, P6569080418986811497.a n = A006117 n

end A006117

/-! ## A006117.P12549711546118673803

`record[A061034(A175840(n))]`
-/

namespace A006117.P12549711546118673803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (A175840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006117.P12549711546118673803

namespace A006117

/-- `record[A061034(A175840(n))]` -/
def P12549711546118673803.Spec : Prop :=
  ∀ n, P12549711546118673803.a n = A006117 n

end A006117

/-! ## A006117.P15056302104784320630

`record[A061034(A003961(n+1))]`
-/

namespace A006117.P15056302104784320630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006117.P15056302104784320630

namespace A006117

/-- `record[A061034(A003961(n+1))]` -/
def P15056302104784320630.Spec : Prop :=
  ∀ n, P15056302104784320630.a n = A006117 n

end A006117

/-!
# A006118: Sum of Gaussian binomial coefficients [ n,k ] for q=4.

The programs for A006118, the canonical program `A006118.P12779956073417334265` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006118 has offset 0).

The definition of A006118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006118.P12779956073417334265

`2*a(n-1)+(4^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006118

/-- `2*a(n-1)+(4^(n-1)-1)*a(n-2)` -/
def P12779956073417334265.Spec : Prop :=
  ∀ n, P12779956073417334265.a n = (A006118 n : ℚ)

end A006118

/-! ## A006118.P12415807794067493054

`∑[∑[A038040(A006125(n))]]-n`
-/

namespace A006118.P12415807794067493054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A006125 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A006118.P12415807794067493054

namespace A006118

/-- `∑[∑[A038040(A006125(n))]]-n` -/
def P12415807794067493054.Spec : Prop :=
  ∀ n, P12415807794067493054.a n = A006118 n

end A006118

/-!
# A006119: Sum of Gaussian binomial coefficients [ n,k ] for q=5.

The programs for A006119, the canonical program `A006119.P8909380752412765175` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006119 has offset 0).

The definition of A006119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006119.P8909380752412765175

`2*a(n-1)+(5^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006119

/-- `2*a(n-1)+(5^(n-1)-1)*a(n-2)` -/
def P8909380752412765175.Spec : Prop :=
  ∀ n, P8909380752412765175.a n = (A006119 n : ℚ)

end A006119

/-! ## A006119.P17667691676371451953

`A370887(∑[n+3])`
-/

namespace A006119.P17667691676371451953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006119.P17667691676371451953

namespace A006119

/-- `A370887(∑[n+3])` -/
def P17667691676371451953.Spec : Prop :=
  ∀ n, P17667691676371451953.a n = A006119 n

end A006119

/-!
# A006120: Sum of Gaussian binomial coefficients [ n,k ] for q=6.

The programs for A006120, the canonical program `A006120.P11840453997317830320` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006120 has offset 0).

The definition of A006120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006120.P11840453997317830320

`2*a(n-1)+(6^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006120

/-- `2*a(n-1)+(6^(n-1)-1)*a(n-2)` -/
def P11840453997317830320.Spec : Prop :=
  ∀ n, P11840453997317830320.a n = (A006120 n : ℚ)

end A006120

/-!
# A006121: Sum of Gaussian binomial coefficients [ n,k ] for q=7.

The programs for A006121, the canonical program `A006121.P2465127933072672026` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006121 has offset 0).

The definition of A006121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006121.P2465127933072672026

`2*a(n-1)+(7^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006121

/-- `2*a(n-1)+(7^(n-1)-1)*a(n-2)` -/
def P2465127933072672026.Spec : Prop :=
  ∀ n, P2465127933072672026.a n = (A006121 n : ℚ)

end A006121

/-! ## A006121.P16830324080878459592

`A370887(A167487(n+3)-11)`
-/

namespace A006121.P16830324080878459592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370887 (A167487 (n + 3) - 11).toNat

end

end A006121.P16830324080878459592

namespace A006121

/-- `A370887(A167487(n+3)-11)` -/
def P16830324080878459592.Spec : Prop :=
  ∀ n, P16830324080878459592.a n = A006121 n

end A006121

/-! ## A006121.P8567465186366374748

`A370887(A000217(n+3)+n)`
-/

namespace A006121.P8567465186366374748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370887 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A006121.P8567465186366374748

namespace A006121

/-- `A370887(A000217(n+3)+n)` -/
def P8567465186366374748.Spec : Prop :=
  ∀ n, P8567465186366374748.a n = A006121 n

end A006121

/-!
# A006122: Sum of Gaussian binomial coefficients [ n,k ] for q=8.

The programs for A006122, the canonical program `A006122.P6020974601893232503` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006122 has offset 0).

The definition of A006122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006122.P6020974601893232503

`2*a(n-1)+(8^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006122

/-- `2*a(n-1)+(8^(n-1)-1)*a(n-2)` -/
def P6020974601893232503.Spec : Prop :=
  ∀ n, P6020974601893232503.a n = (A006122 n : ℚ)

end A006122

/-!
# A006124: a(n) = 3 + n/2 + 7*n^2/2.

The programs for A006124, the canonical program `A006124.P12203166438121238281` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006124 has offset 0).

The definition of A006124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+n/2+7*n²/2` (program `A006124.P10943825575584792162`, by `A006124.P10943825575584792162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006124.P12203166438121238281

`a(n-1)+7*n-3` with `a(0)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006124

/-- `a(n-1)+7*n-3` -/
def P12203166438121238281.Spec : Prop :=
  ∀ n, P12203166438121238281.a n = A006124 n

theorem P12203166438121238281.correct : P12203166438121238281.Spec := by
  intro n
  simp only [A006124]

end A006124

/-! ## A006124.P5533255922263599857

`3+n/2+7/2*n²`
-/

namespace A006124.P5533255922263599857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 + (n : ℚ) / 2 + (7 : ℚ) / 2 * (n ^ 2 : ℚ)

end

end A006124.P5533255922263599857

namespace A006124

/-- `3+n/2+7/2*n²` -/
def P5533255922263599857.Spec : Prop :=
  ∀ n, P5533255922263599857.a n = (A006124 n : ℚ)

theorem P5533255922263599857.correct : P5533255922263599857.Spec := by
  intro n
  induction n with
  | zero => simp [A006124, A006124.P5533255922263599857.a, A006124.P12203166438121238281.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A006124, Nat.add_sub_cancel, A006124.P5533255922263599857.a, A006124.P12203166438121238281.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A006124

/-! ## A006124.P10943825575584792162

`3+n/2+7*n²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006124.P10943825575584792162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 + (n : ℚ) / 2 + (7 * n ^ 2 : ℚ) / 2

end

end A006124.P10943825575584792162

namespace A006124

/-- `3+n/2+7*n²/2` -/
def P10943825575584792162.Spec : Prop :=
  ∀ n, P10943825575584792162.a n = (A006124 n : ℚ)

theorem P10943825575584792162.correct : P10943825575584792162.Spec := by
  intro n
  induction n with
  | zero => simp [A006124, A006124.P10943825575584792162.a, A006124.P12203166438121238281.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A006124, Nat.add_sub_cancel, A006124.P10943825575584792162.a, A006124.P12203166438121238281.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A006124

/-! ## A006124.P7025159688286393389

`∑[a(n-1)+7]` with `a(0)=3, a(1)=4`
-/

namespace A006124.P7025159688286393389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006124.P7025159688286393389

namespace A006124

/-- `∑[a(n-1)+7]` -/
def P7025159688286393389.Spec : Prop :=
  ∀ n, (P7025159688286393389.a n : ℤ) = A006124 n

end A006124

/-! ## A006124.P1311890733955183499

`∑[ogf((3-2x+6x^2)/(1-2x+x^2))]`
-/

namespace A006124.P1311890733955183499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006124.P1311890733955183499

namespace A006124

/-- `∑[ogf((3-2x+6x^2)/(1-2x+x^2))]` -/
def P1311890733955183499.Spec : Prop :=
  ∀ n, P1311890733955183499.a n = A006124 n

end A006124

/-! ## A006124.P6723931885582695257

`ogf((3-2x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A006124.P6723931885582695257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 6] [1, -3, 3, -1] n

end

end A006124.P6723931885582695257

namespace A006124

/-- `ogf((3-2x+6x^2)/(1-3x+3x^2-x^3))` -/
def P6723931885582695257.Spec : Prop :=
  ∀ n, P6723931885582695257.a n = A006124 n

end A006124

/-! ## A006124.P12847902915712433107

`floor(7*n-(3-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A006124.P12847902915712433107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (7 * n : ℤ) - (3 - a (n - 1))

end

end A006124.P12847902915712433107

namespace A006124

/-- `floor(7*n-(3-a(n-1)))` -/
def P12847902915712433107.Spec : Prop :=
  ∀ n, P12847902915712433107.a n = A006124 n

end A006124

/-!
# A006125: a(n) = 2^(n*(n-1)/2).

The programs for A006125, the canonical program `A006125.P14908781185794122098` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006125 has offset 0).

The definition of A006125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006125.P14908781185794122098

`2^C(n, 2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006125

/-- `2^C(n, 2)` -/
def P14908781185794122098.Spec : Prop :=
  ∀ n, (P14908781185794122098.a n : ℤ) = A006125 n

theorem P14908781185794122098.correct : P14908781185794122098.Spec := by
  intro n
  simp only [A006125]

end A006125

/-! ## A006125.P13930280762440590734

`2^(n*(n-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006125.P13930280762440590734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ)

end

end A006125.P13930280762440590734

namespace A006125

/-- `2^(n*(n-1)/2)` -/
def P13930280762440590734.Spec : Prop :=
  ∀ n, P13930280762440590734.a n = (A006125 n : ℝ)

end A006125

/-! ## A006125.P11831776816949188783

`2*a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006125.P11831776816949188783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) ^ 2 / a (n - 2)

end

end A006125.P11831776816949188783

namespace A006125

/-- `2*a(n-1)²/a(n-2)` -/
def P11831776816949188783.Spec : Prop :=
  ∀ n, P11831776816949188783.a n = (A006125 n : ℚ)

end A006125

/-! ## A006125.P15624646722565283709

`∏[floor(cosh(n*log(2)))]`
-/

namespace A006125.P15624646722565283709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh ((n : ℝ) * Real.log (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006125.P15624646722565283709

namespace A006125

/-- `∏[floor(cosh(n*log(2)))]` -/
def P15624646722565283709.Spec : Prop :=
  ∀ n, P15624646722565283709.a n = A006125 n

end A006125

/-!
# A006126: Number of hierarchical models on n labeled factors or variables with linear terms forced. Also number of antichain covers of a labeled n-set.

The programs for A006126, there is no canonical definition to state claims against.
-/

/-! ## A006126.P4763171731299796709

`floor(A307249(n)+acot(n))`
-/

namespace A006126.P4763171731299796709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307249 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A006126.P4763171731299796709

/-! ## A006126.P6313380356254626585

`A307249(n)+A000007(n)`
-/

namespace A006126.P6313380356254626585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307249 n + A000007 n

end

end A006126.P6313380356254626585

/-! ## A006126.P10096489045562165082

`A307249(A000038(n)+n)`
-/

namespace A006126.P10096489045562165082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307249 (A000038 n + (n : ℤ)).toNat

end

end A006126.P10096489045562165082

/-! ## A006126.P13037685131357101619

`A307249(n)+A111332(n)`
-/

namespace A006126.P13037685131357101619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307249 n + A111332 n

end

end A006126.P13037685131357101619

/-! ## A006126.P2306776680858061346

`A307249(n)+A151622(n)`
-/

namespace A006126.P2306776680858061346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307249 n + A151622 n

end

end A006126.P2306776680858061346

/-!
# A006127: a(n) = 2^n + n.

The programs for A006127, the canonical program `A006127.P13800088188431216723` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006127 has offset 0).

The definition of A006127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n` (program `A006127.P13800088188431216723`, by `A006127.P13800088188431216723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006127.P13800088188431216723

`2^n+n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006127

/-- `2^n+n` -/
def P13800088188431216723.Spec : Prop :=
  ∀ n, (P13800088188431216723.a n : ℤ) = A006127 n

theorem P13800088188431216723.correct : P13800088188431216723.Spec := by
  intro n
  simp only [A006127]

end A006127

/-!
# A006128: Total number of parts in all partitions of n. Also, sum of largest parts of all partitions of n.

The programs for A006128, there is no canonical definition to state claims against.
-/

/-! ## A006128.P11548755074482128102

`A194452(n)+A024786(n+1)`
-/

namespace A006128.P11548755074482128102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194452 n + A024786 (n + 1)

end

end A006128.P11548755074482128102

/-! ## A006128.P9768136738988601865

`A225596(n)-n`
-/

namespace A006128.P9768136738988601865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n - (n : ℤ)

end

end A006128.P9768136738988601865

/-! ## A006128.P9294025018589431119

`∑{d}[n, A085410(#)]`
-/

namespace A006128.P9294025018589431119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085410 d

end

end A006128.P9294025018589431119

/-! ## A006128.P3294372347299721858

`∑[A278602(n)/4]`
-/

namespace A006128.P3294372347299721858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006128.P3294372347299721858

/-! ## A006128.P82088375232280352

`a(n-1)+A330242(n)+n` with `a(0)=0`
-/

namespace A006128.P82088375232280352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A330242 n + (n : ℤ))

end

end A006128.P82088375232280352

/-! ## A006128.P15441911147813920630

`A093694(n)-A000041(n)`
-/

namespace A006128.P15441911147813920630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000041 n

end

end A006128.P15441911147813920630

/-! ## A006128.P1634205496266720284

`A093694(n)-∑[A002865(n)]`
-/

namespace A006128.P1634205496266720284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006128.P1634205496266720284

/-! ## A006128.P14611135543191649136

`A093694(n)-(A000065(n)+1)`
-/

namespace A006128.P14611135543191649136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A000065 n + 1)

end

end A006128.P14611135543191649136

/-! ## A006128.P5736026691473167300

`A000070(n)+A198381(n)-1`
-/

namespace A006128.P5736026691473167300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A198381 n - 1)

end

end A006128.P5736026691473167300

/-! ## A006128.P10718786064188891397

`A093694(n)-A139582(n)/2`
-/

namespace A006128.P10718786064188891397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093694 n : ℚ) - (A139582 n : ℚ) / 2

end

end A006128.P10718786064188891397

/-! ## A006128.P710193778219613111

`A093694(n)+n-A133041(n)`
-/

namespace A006128.P710193778219613111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + ((n : ℤ) - A133041 n)

end

end A006128.P710193778219613111

/-! ## A006128.P10701464056063942224

`A000070(n)+A096541(n)-A000041(n)`
-/

namespace A006128.P10701464056063942224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A096541 n - A000041 n)

end

end A006128.P10701464056063942224

/-! ## A006128.P10017868758252186669

`A093694(n)-(A047967(n)+A000009(n))`
-/

namespace A006128.P10017868758252186669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A047967 n + A000009 n)

end

end A006128.P10017868758252186669

/-! ## A006128.P15408017584161663123

`A093694(n)-(A295341(n)+A000726(n))`
-/

namespace A006128.P15408017584161663123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A295341 n + A000726 n)

end

end A006128.P15408017584161663123

/-! ## A006128.P13609276378685320613

`A066897(n+1)+A066898(n+1)-A138137(n+1)`
-/

namespace A006128.P13609276378685320613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) + (A066898 (n + 1) - A138137 (n + 1))

end

end A006128.P13609276378685320613

/-! ## A006128.P100041954984449362

`A076276(n+1)-A182699(n+1)`
-/

namespace A006128.P100041954984449362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076276 (n + 1) - A182699 (n + 1)

end

end A006128.P100041954984449362

/-! ## A006128.P17077150258226908690

`∑[A138137(n+1)]-A138137(n+1)`
-/

namespace A006128.P17077150258226908690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138137 (n + 1)

end

end A006128.P17077150258226908690

/-! ## A006128.P17173933233202025569

`A211978(n)/2`
-/

namespace A006128.P17173933233202025569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2

end

end A006128.P17173933233202025569

/-! ## A006128.P593293181448864011

`(A210970(n)-∑[n])/2`
-/

namespace A006128.P593293181448864011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210970 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A006128.P593293181448864011

/-! ## A006128.P3773310117004173881

`(A225610(n)-A133041(n))/2`
-/

namespace A006128.P3773310117004173881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225610 n - A133041 n : ℚ) / 2

end

end A006128.P3773310117004173881

/-!
# A006129: a(0), a(1), a(2), ... satisfy Sum_{k=0..n} a(k)*binomial(n,k) = 2^binomial(n,2), for n >= 0.

The programs for A006129, there is no canonical definition to state claims against.
-/

/-! ## A006129.P18022513757490461436

`2^C(n, 2)-A327367(n)`
-/

namespace A006129.P18022513757490461436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A327367 n

end

end A006129.P18022513757490461436

/-! ## A006129.P4809585715848861335

`A327227(n)+A100743(n)`
-/

namespace A006129.P4809585715848861335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327227 n + A100743 n

end

end A006129.P4809585715848861335

/-! ## A006129.P2753091378773066168

`A006125(n)-A327367(n)`
-/

namespace A006129.P2753091378773066168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A327367 n

end

end A006129.P2753091378773066168

/-! ## A006129.P2023957128947907424

`A327377(∑[n])+A327227(n)`
-/

namespace A006129.P2023957128947907424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327377 (∑ j ∈ Finset.range (n + 1), f1 j) + A327227 n

end

end A006129.P2023957128947907424

/-! ## A006129.P1240417565062116489

`∏[A011782(n)]-A327367(n)`
-/

namespace A006129.P1240417565062116489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A327367 n

end

end A006129.P1240417565062116489

/-!
# A006130: a(n) = a(n-1) + 3*a(n-2) for n > 1, a(0) = a(1) = 1.

The programs for A006130, the canonical program `A006130.P11919030218141454006` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006130 has offset 0).

The definition of A006130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)` (program `A006130.P11919030218141454006`, by `A006130.P11919030218141454006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006130.P11919030218141454006

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006130

/-- `a(n-1)+3*a(n-2)` -/
def P11919030218141454006.Spec : Prop :=
  ∀ n, (P11919030218141454006.a n : ℤ) = A006130 n

theorem P11919030218141454006.correct : P11919030218141454006.Spec := by
  intro n
  simp only [A006130]

end A006130

/-! ## A006130.P3972003630429930630

`A052533(n+2)/3`
-/

namespace A006130.P3972003630429930630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052533 (n + 2) : ℚ) / 3

end

end A006130.P3972003630429930630

namespace A006130

/-- `A052533(n+2)/3` -/
def P3972003630429930630.Spec : Prop :=
  ∀ n, P3972003630429930630.a n = (A006130 n : ℚ)

end A006130

/-! ## A006130.P7252140092798310146

`ogf(1/(1-x-3x^2))`
-/

namespace A006130.P7252140092798310146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3] n

end

end A006130.P7252140092798310146

namespace A006130

/-- `ogf(1/(1-x-3x^2))` -/
def P7252140092798310146.Spec : Prop :=
  ∀ n, P7252140092798310146.a n = A006130 n

end A006130

/-! ## A006130.P14550890831904421065

`a(n-1)+lcm(3, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A006130.P14550890831904421065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 2))

end

end A006130.P14550890831904421065

namespace A006130

/-- `a(n-1)+lcm(3, a(n-2))` -/
def P14550890831904421065.Spec : Prop :=
  ∀ n, (P14550890831904421065.a n : ℤ) = A006130 n

end A006130

/-! ## A006130.P17992109835953982256

`abs(Δ[3*a(n-2)-a(n-1)])` with `a(0)=1, a(1)=2`
-/

namespace A006130.P17992109835953982256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006130.P17992109835953982256

namespace A006130

/-- `abs(Δ[3*a(n-2)-a(n-1)])` -/
def P17992109835953982256.Spec : Prop :=
  ∀ n, P17992109835953982256.a n = A006130 n

end A006130

/-! ## A006130.P553903592936194380

`3-(3*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A006130.P553903592936194380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A006130.P553903592936194380

namespace A006130

/-- `3-(3*(1-a(n-2))-a(n-1))` -/
def P553903592936194380.Spec : Prop :=
  ∀ n, P553903592936194380.a n = A006130 n

end A006130

/-! ## A006130.P5959375552202430471

`a(n-1)+a(n-2)/(1-2/3)` with `a(0)=1, a(1)=1`
-/

namespace A006130.P5959375552202430471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A006130.P5959375552202430471

namespace A006130

/-- `a(n-1)+a(n-2)/(1-2/3)` -/
def P5959375552202430471.Spec : Prop :=
  ∀ n, P5959375552202430471.a n = (A006130 n : ℚ)

end A006130

/-! ## A006130.P17687620042002904053

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006130.P17687620042002904053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A006130.P17687620042002904053

namespace A006130

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P17687620042002904053.Spec : Prop :=
  ∀ n, (P17687620042002904053.a n : ℤ) = A006130 n

end A006130

/-! ## A006130.P5463938250422473530

`∑[A052533(n)]`
-/

namespace A006130.P5463938250422473530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006130.P5463938250422473530

namespace A006130

/-- `∑[A052533(n)]` -/
def P5463938250422473530.Spec : Prop :=
  ∀ n, P5463938250422473530.a n = A006130 n

end A006130

/-! ## A006130.P11398874157692287376

`abs(Δ[A140165(n+1)])`
-/

namespace A006130.P11398874157692287376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006130.P11398874157692287376

namespace A006130

/-- `abs(Δ[A140165(n+1)])` -/
def P11398874157692287376.Spec : Prop :=
  ∀ n, P11398874157692287376.a n = A006130 n

end A006130

/-! ## A006130.P18424922700403366616

`A006138(n)-a(n-1)` with `a(0)=1`
-/

namespace A006130.P18424922700403366616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006138 n - a (n - 1)

end

end A006130.P18424922700403366616

namespace A006130

/-- `A006138(n)-a(n-1)` -/
def P18424922700403366616.Spec : Prop :=
  ∀ n, P18424922700403366616.a n = A006130 n

end A006130

/-! ## A006130.P1104186651363219662

`A105476(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006130.P1104186651363219662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A105476 n + a (n - 2)

end

end A006130.P1104186651363219662

namespace A006130

/-- `A105476(n)+a(n-2)` -/
def P1104186651363219662.Spec : Prop :=
  ∀ n, P1104186651363219662.a n = A006130 n

end A006130

/-! ## A006130.P7972365208067332274

`A075118(n)-A052533(n)`
-/

namespace A006130.P7972365208067332274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 n - A052533 n

end

end A006130.P7972365208067332274

namespace A006130

/-- `A075118(n)-A052533(n)` -/
def P7972365208067332274.Spec : Prop :=
  ∀ n, P7972365208067332274.a n = A006130 n

end A006130

/-! ## A006130.P11687883759411334886

`abs(A140165(n+1)-A140165(n+2))`
-/

namespace A006130.P11687883759411334886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140165 (n + 1) - A140165 (n + 2)|

end

end A006130.P11687883759411334886

namespace A006130

/-- `abs(A140165(n+1)-A140165(n+2))` -/
def P11687883759411334886.Spec : Prop :=
  ∀ n, P11687883759411334886.a n = A006130 n

end A006130

/-! ## A006130.P1160547494828748673

`Δ[A099232(n)]`
-/

namespace A006130.P1160547494828748673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006130.P1160547494828748673

namespace A006130

/-- `Δ[A099232(n)]` -/
def P1160547494828748673.Spec : Prop :=
  ∀ n, P1160547494828748673.a n = A006130 n

end A006130

/-! ## A006130.P17745523723980487705

`abs(A182228(n+1))`
-/

namespace A006130.P17745523723980487705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182228 (n + 1)|

end

end A006130.P17745523723980487705

namespace A006130

/-- `abs(A182228(n+1))` -/
def P17745523723980487705.Spec : Prop :=
  ∀ n, P17745523723980487705.a n = A006130 n

end A006130

/-! ## A006130.P13276708740772329264

`A228661(n+1)/2`
-/

namespace A006130.P13276708740772329264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228661 (n + 1) : ℚ) / 2

end

end A006130.P13276708740772329264

namespace A006130

/-- `A228661(n+1)/2` -/
def P13276708740772329264.Spec : Prop :=
  ∀ n, P13276708740772329264.a n = (A006130 n : ℚ)

end A006130

/-! ## A006130.P1647982854653468834

`A099232(n+1)-A099232(n)`
-/

namespace A006130.P1647982854653468834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 (n + 1) - A099232 n

end

end A006130.P1647982854653468834

namespace A006130

/-- `A099232(n+1)-A099232(n)` -/
def P1647982854653468834.Spec : Prop :=
  ∀ n, P1647982854653468834.a n = A006130 n

end A006130

/-! ## A006130.P462076711004120200

`A052533(n+2)-A228661(n+1)`
-/

namespace A006130.P462076711004120200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 2) - A228661 (n + 1)

end

end A006130.P462076711004120200

namespace A006130

/-- `A052533(n+2)-A228661(n+1)` -/
def P462076711004120200.Spec : Prop :=
  ∀ n, P462076711004120200.a n = A006130 n

end A006130

/-! ## A006130.P17603526891891081338

`A052533(n)+A274977(n)-A105963(n)`
-/

namespace A006130.P17603526891891081338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n + (A274977 n - A105963 n)

end

end A006130.P17603526891891081338

namespace A006130

/-- `A052533(n)+A274977(n)-A105963(n)` -/
def P17603526891891081338.Spec : Prop :=
  ∀ n, P17603526891891081338.a n = A006130 n

end A006130

/-!
# A006131: a(n) = a(n-1) + 4*a(n-2), a(0) = a(1) = 1.

The programs for A006131, the canonical program `A006131.P12045941891764013901` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006131 has offset 0).

The definition of A006131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)` (program `A006131.P12045941891764013901`, by `A006131.P12045941891764013901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006131.P12045941891764013901

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006131

/-- `a(n-1)+4*a(n-2)` -/
def P12045941891764013901.Spec : Prop :=
  ∀ n, (P12045941891764013901.a n : ℤ) = A006131 n

theorem P12045941891764013901.correct : P12045941891764013901.Spec := by
  intro n
  simp only [A006131]

end A006131

/-! ## A006131.P2748527322798002005

`A344236(n)+A344261(n)`
-/

namespace A006131.P2748527322798002005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 n + A344261 n

end

end A006131.P2748527322798002005

namespace A006131

/-- `A344236(n)+A344261(n)` -/
def P2748527322798002005.Spec : Prop :=
  ∀ n, P2748527322798002005.a n = A006131 n

end A006131

/-! ## A006131.P10733417463370800974

`(((1+sqrt(17))/2)^(n+1)-((1-sqrt(17))/2)^(n+1))/sqrt(17)`
-/

namespace A006131.P10733417463370800974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 + Real.sqrt (17 : ℝ)) / 2) ^ (n + 1) - ((1 - Real.sqrt (17 : ℝ)) / 2) ^ (n + 1)) / Real.sqrt (17 : ℝ)

end

end A006131.P10733417463370800974

namespace A006131

/-- `(((1+sqrt(17))/2)^(n+1)-((1-sqrt(17))/2)^(n+1))/sqrt(17)` -/
def P10733417463370800974.Spec : Prop :=
  ∀ n, P10733417463370800974.a n = (A006131 n : ℝ)

end A006131

/-! ## A006131.P10829780723297520134

`ogf(1/(1-x-4x^2))`
-/

namespace A006131.P10829780723297520134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -4] n

end

end A006131.P10829780723297520134

namespace A006131

/-- `ogf(1/(1-x-4x^2))` -/
def P10829780723297520134.Spec : Prop :=
  ∀ n, P10829780723297520134.a n = A006131 n

end A006131

/-! ## A006131.P12112778296898486010

`a(n-1)+lcm(4, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A006131.P12112778296898486010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 2))

end

end A006131.P12112778296898486010

namespace A006131

/-- `a(n-1)+lcm(4, a(n-2))` -/
def P12112778296898486010.Spec : Prop :=
  ∀ n, (P12112778296898486010.a n : ℤ) = A006131 n

end A006131

/-! ## A006131.P960665979742495101

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=1`
-/

namespace A006131.P960665979742495101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A006131.P960665979742495101

namespace A006131

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P960665979742495101.Spec : Prop :=
  ∀ n, P960665979742495101.a n = (A006131 n : ℚ)

end A006131

/-! ## A006131.P11042926181985238486

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A006131.P11042926181985238486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A006131.P11042926181985238486

namespace A006131

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P11042926181985238486.Spec : Prop :=
  ∀ n, P11042926181985238486.a n = A006131 n

end A006131

/-! ## A006131.P13876864115941927664

`a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006131.P13876864115941927664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A006131.P13876864115941927664

namespace A006131

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P13876864115941927664.Spec : Prop :=
  ∀ n, (P13876864115941927664.a n : ℤ) = A006131 n

end A006131

/-! ## A006131.P13377133408079498040

`∑[A052923(n)]`
-/

namespace A006131.P13377133408079498040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006131.P13377133408079498040

namespace A006131

/-- `∑[A052923(n)]` -/
def P13377133408079498040.Spec : Prop :=
  ∀ n, P13377133408079498040.a n = A006131 n

end A006131

/-! ## A006131.P8694898956776578644

`A265987(n+1)-1`
-/

namespace A006131.P8694898956776578644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265987 (n + 1) - 1

end

end A006131.P8694898956776578644

namespace A006131

/-- `A265987(n+1)-1` -/
def P8694898956776578644.Spec : Prop :=
  ∀ n, P8694898956776578644.a n = A006131 n

end A006131

/-! ## A006131.P7918768591794434250

`2*A193649(n)-1`
-/

namespace A006131.P7918768591794434250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193649 n - 1

end

end A006131.P7918768591794434250

namespace A006131

/-- `2*A193649(n)-1` -/
def P7918768591794434250.Spec : Prop :=
  ∀ n, P7918768591794434250.a n = A006131 n

end A006131

/-! ## A006131.P308747932256305487

`A159612(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A006131.P308747932256305487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A159612 n + a (n - 2)

end

end A006131.P308747932256305487

namespace A006131

/-- `A159612(n)+a(n-2)` -/
def P308747932256305487.Spec : Prop :=
  ∀ n, P308747932256305487.a n = A006131 n

end A006131

/-! ## A006131.P9115163537010749616

`A033999(n)+2*A344236(n)`
-/

namespace A006131.P9115163537010749616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A344236 n

end

end A006131.P9115163537010749616

namespace A006131

/-- `A033999(n)+2*A344236(n)` -/
def P9115163537010749616.Spec : Prop :=
  ∀ n, P9115163537010749616.a n = A006131 n

end A006131

/-! ## A006131.P9665145893937495496

`2*A344261(n)-A033999(n)`
-/

namespace A006131.P9665145893937495496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344261 n - A033999 n

end

end A006131.P9665145893937495496

namespace A006131

/-- `2*A344261(n)-A033999(n)` -/
def P9665145893937495496.Spec : Prop :=
  ∀ n, P9665145893937495496.a n = A006131 n

end A006131

/-! ## A006131.P7828993980511357792

`A099580(n+1)+A077957(n)²`
-/

namespace A006131.P7828993980511357792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099580 (n + 1) + A077957 n ^ 2

end

end A006131.P7828993980511357792

namespace A006131

/-- `A099580(n+1)+A077957(n)²` -/
def P7828993980511357792.Spec : Prop :=
  ∀ n, P7828993980511357792.a n = A006131 n

end A006131

/-! ## A006131.P18078765509705785310

`abs(∑[A122112(n)])`
-/

namespace A006131.P18078765509705785310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A006131.P18078765509705785310

namespace A006131

/-- `abs(∑[A122112(n)])` -/
def P18078765509705785310.Spec : Prop :=
  ∀ n, P18078765509705785310.a n = A006131 n

end A006131

/-! ## A006131.P7700843744702656987

`Δ[A193649(n+1)/2]`
-/

namespace A006131.P7700843744702656987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193649 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006131.P7700843744702656987

namespace A006131

/-- `Δ[A193649(n+1)/2]` -/
def P7700843744702656987.Spec : Prop :=
  ∀ n, P7700843744702656987.a n = (A006131 n : ℚ)

end A006131

/-! ## A006131.P1886928385348642507

`A026597(n)-a(n-1)` with `a(0)=1`
-/

namespace A006131.P1886928385348642507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026597 n - a (n - 1)

end

end A006131.P1886928385348642507

namespace A006131

/-- `A026597(n)-a(n-1)` -/
def P1886928385348642507.Spec : Prop :=
  ∀ n, P1886928385348642507.a n = A006131 n

end A006131

/-! ## A006131.P9126601070366413140

`A026581(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A006131.P9126601070366413140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026581 n - (a (n - 1) + a (n - 1))

end

end A006131.P9126601070366413140

namespace A006131

/-- `A026581(n)-(a(n-1)+a(n-1))` -/
def P9126601070366413140.Spec : Prop :=
  ∀ n, P9126601070366413140.a n = A006131 n

end A006131

/-! ## A006131.P2604973523396141106

`A072265(n)-A052923(n)`
-/

namespace A006131.P2604973523396141106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 n - A052923 n

end

end A006131.P2604973523396141106

namespace A006131

/-- `A072265(n)-A052923(n)` -/
def P2604973523396141106.Spec : Prop :=
  ∀ n, P2604973523396141106.a n = A006131 n

end A006131

/-!
# A006132: Related to representations as sums of Fibonacci numbers.

The programs for A006132, there is no canonical definition to state claims against.
-/

/-! ## A006132.P6393062103230644042

`lt[n, gcd(A003231(n+1), A003234(n+1))]+1`
-/

namespace A006132.P6393062103230644042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003231 (n + 1)) (A003234 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A006132.P6393062103230644042

/-! ## A006132.P7475386268494705145

`A060065(A006133(n+1))`
-/

namespace A006132.P7475386268494705145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060065 (A006133 (n + 1)).toNat

end

end A006132.P7475386268494705145

/-!
# A006133: Related to representations as sums of Fibonacci numbers.

The programs for A006133, there is no canonical definition to state claims against.
-/

/-! ## A006133.P5470453952817236000

`A003231(A006132(n+1))`
-/

namespace A006133.P5470453952817236000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (A006132 (n + 1)).toNat

end

end A006133.P5470453952817236000

/-! ## A006133.P9793281593702085801

`A003234(A006132(2*n+1-n))`
-/

namespace A006133.P9793281593702085801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (A006132 (2 * n + 1 - n)).toNat

end

end A006133.P9793281593702085801

/-! ## A006133.P12407904440742481431

`record[gcd(A003231(n+1), A003234(n+1))]`
-/

namespace A006133.P12407904440742481431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003231 (n + 1)) (A003234 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006133.P12407904440742481431

/-! ## A006133.P12438135308397517192

`A003234(lcm(A006132(n+1), A033999(n)))`
-/

namespace A006133.P12438135308397517192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (Int.lcm (A006132 (n + 1)) (A033999 n))

end

end A006133.P12438135308397517192

/-! ## A006133.P6086654321712005369

`A003234(A006132(n+1)%Δ[A059140(n)])`
-/

namespace A006133.P6086654321712005369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (Int.tmod (A006132 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A006133.P6086654321712005369

/-!
# A006134: a(n) = Sum_{k=0..n} binomial(2*k,k).

The programs for A006134, the canonical program `A006134.P14646737511889561180` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006134 has offset 0).

The definition of A006134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100066, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A006134.P14646737511889561180

`A100066(2*n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A006134

/-- `A100066(2*n+1)` -/
def P14646737511889561180.Spec : Prop :=
  ∀ n, P14646737511889561180.a n = A006134 n

theorem P14646737511889561180.correct : P14646737511889561180.Spec := by
  intro n
  simp only [A006134]

end A006134

/-! ## A006134.P12584177529066060362

`2*A024718(n)-1`
-/

namespace A006134.P12584177529066060362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024718 n - 1

end

end A006134.P12584177529066060362

namespace A006134

/-- `2*A024718(n)-1` -/
def P12584177529066060362.Spec : Prop :=
  ∀ n, P12584177529066060362.a n = A006134 n

end A006134

/-! ## A006134.P15651753088403539777

`∑[(4-2/n)*a(n-1)]` with `a(0)=1`
-/

namespace A006134.P15651753088403539777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P15651753088403539777

namespace A006134

/-- `∑[(4-2/n)*a(n-1)]` -/
def P15651753088403539777.Spec : Prop :=
  ∀ n, P15651753088403539777.a n = (A006134 n : ℚ)

end A006134

/-! ## A006134.P7000084376877825863

`∑[2*(2-n^(-1))*a(n-1)]` with `a(0)=1`
-/

namespace A006134.P7000084376877825863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P7000084376877825863

namespace A006134

/-- `∑[2*(2-n^(-1))*a(n-1)]` -/
def P7000084376877825863.Spec : Prop :=
  ∀ n, P7000084376877825863.a n = (A006134 n : ℚ)

end A006134

/-! ## A006134.P2532960121733154965

`∑[record[a(n-1)/(floor(n/2)/n-1)]]` with `a(0)=1`
-/

namespace A006134.P2532960121733154965
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P2532960121733154965

namespace A006134

/-- `∑[record[a(n-1)/(floor(n/2)/n-1)]]` -/
def P2532960121733154965.Spec : Prop :=
  ∀ n, P2532960121733154965.a n = (A006134 n : ℚ)

end A006134

/-! ## A006134.P15053328182138622517

`record[a(n-1)/(floor(n/2)/n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A006134.P15053328182138622517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A006134.P15053328182138622517

namespace A006134

/-- `record[a(n-1)/(floor(n/2)/n-1)]+a(n-1)` -/
def P15053328182138622517.Spec : Prop :=
  ∀ n, P15053328182138622517.a n = (A006134 n : ℚ)

end A006134

/-! ## A006134.P3382250054884647165

`∑[A000984(n)]`
-/

namespace A006134.P3382250054884647165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P3382250054884647165

namespace A006134

/-- `∑[A000984(n)]` -/
def P3382250054884647165.Spec : Prop :=
  ∀ n, P3382250054884647165.a n = A006134 n

end A006134

/-! ## A006134.P12624881753552022044

`A124642(Δ[n²])`
-/

namespace A006134.P12624881753552022044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006134.P12624881753552022044

namespace A006134

/-- `A124642(Δ[n²])` -/
def P12624881753552022044.Spec : Prop :=
  ∀ n, P12624881753552022044.a n = A006134 n

end A006134

/-! ## A006134.P4105635239797227200

`A174783(Δ[n²])`
-/

namespace A006134.P4105635239797227200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006134.P4105635239797227200

namespace A006134

/-- `A174783(Δ[n²])` -/
def P4105635239797227200.Spec : Prop :=
  ∀ n, P4105635239797227200.a n = A006134 n

end A006134

/-! ## A006134.P37851129531475636

`∑[record[A081668(n)]]`
-/

namespace A006134.P37851129531475636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P37851129531475636

namespace A006134

/-- `∑[record[A081668(n)]]` -/
def P37851129531475636.Spec : Prop :=
  ∀ n, P37851129531475636.a n = A006134 n

end A006134

/-! ## A006134.P11734285878668111121

`∑[record[A089849(n)]]`
-/

namespace A006134.P11734285878668111121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P11734285878668111121

namespace A006134

/-- `∑[record[A089849(n)]]` -/
def P11734285878668111121.Spec : Prop :=
  ∀ n, P11734285878668111121.a n = A006134 n

end A006134

/-! ## A006134.P7698706887366618339

`∑[record[A126869(n)]]`
-/

namespace A006134.P7698706887366618339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P7698706887366618339

namespace A006134

/-- `∑[record[A126869(n)]]` -/
def P7698706887366618339.Spec : Prop :=
  ∀ n, P7698706887366618339.a n = A006134 n

end A006134

/-! ## A006134.P1268304553644312873

`∑[record[A126930(n)]]`
-/

namespace A006134.P1268304553644312873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P1268304553644312873

namespace A006134

/-- `∑[record[A126930(n)]]` -/
def P1268304553644312873.Spec : Prop :=
  ∀ n, P1268304553644312873.a n = A006134 n

end A006134

/-! ## A006134.P3489163104101413218

`∑[record[A241543(n)]]`
-/

namespace A006134.P3489163104101413218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P3489163104101413218

namespace A006134

/-- `∑[record[A241543(n)]]` -/
def P3489163104101413218.Spec : Prop :=
  ∀ n, P3489163104101413218.a n = A006134 n

end A006134

/-! ## A006134.P16516747231096281781

`∑[A001405(2*n)]`
-/

namespace A006134.P16516747231096281781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P16516747231096281781

namespace A006134

/-- `∑[A001405(2*n)]` -/
def P16516747231096281781.Spec : Prop :=
  ∀ n, P16516747231096281781.a n = A006134 n

end A006134

/-! ## A006134.P12966248033206058922

`∑[A063886(2*n)]`
-/

namespace A006134.P12966248033206058922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P12966248033206058922

namespace A006134

/-- `∑[A063886(2*n)]` -/
def P12966248033206058922.Spec : Prop :=
  ∀ n, P12966248033206058922.a n = A006134 n

end A006134

/-! ## A006134.P6042852715166280103

`∑[A081668(2*n)]`
-/

namespace A006134.P6042852715166280103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P6042852715166280103

namespace A006134

/-- `∑[A081668(2*n)]` -/
def P6042852715166280103.Spec : Prop :=
  ∀ n, P6042852715166280103.a n = A006134 n

end A006134

/-! ## A006134.P14901935316211562269

`∑[A089849(2*n)]`
-/

namespace A006134.P14901935316211562269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P14901935316211562269

namespace A006134

/-- `∑[A089849(2*n)]` -/
def P14901935316211562269.Spec : Prop :=
  ∀ n, P14901935316211562269.a n = A006134 n

end A006134

/-! ## A006134.P7819431704966570043

`∑[A126869(2*n)]`
-/

namespace A006134.P7819431704966570043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P7819431704966570043

namespace A006134

/-- `∑[A126869(2*n)]` -/
def P7819431704966570043.Spec : Prop :=
  ∀ n, P7819431704966570043.a n = A006134 n

end A006134

/-! ## A006134.P9654969127424970658

`∑[A126930(2*n)]`
-/

namespace A006134.P9654969127424970658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006134.P9654969127424970658

namespace A006134

/-- `∑[A126930(2*n)]` -/
def P9654969127424970658.Spec : Prop :=
  ∀ n, P9654969127424970658.a n = A006134 n

end A006134

/-!
# A006135: T(n+2,2) from table A045912 of characteristic polynomial of negative Pascal matrix.

The programs for A006135, there is no canonical definition to state claims against.
-/

/-! ## A006135.P7175359202672240123

`A045912(∑[n+3])`
-/

namespace A006135.P7175359202672240123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006135.P7175359202672240123

/-! ## A006135.P12558170163462242499

`record[A045912(A163335(n))]`
-/

namespace A006135.P12558170163462242499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (A163335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006135.P12558170163462242499

/-! ## A006135.P10269647290284071738

`A045912(A141214(n))+char[9]`
-/

namespace A006135.P10269647290284071738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006135.P10269647290284071738

/-! ## A006135.P5367851822946450000

`record[A045912(gcd(n, A300184(n)))]`
-/

namespace A006135.P5367851822946450000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (Int.gcd (n : ℤ) (A300184 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006135.P5367851822946450000

/-! ## A006135.P16287258417185928675

`record[A045912(eq[2, A204016(n+2)])]`
-/

namespace A006135.P16287258417185928675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006135.P16287258417185928675

/-!
# A006136: T(n+3,3) from table A045912 of characteristic polynomial of negative Pascal matrix.

The programs for A006136, there is no canonical definition to state claims against.
-/

/-! ## A006136.P16357223137784945543

`A045912(∑[n+4]+2)`
-/

namespace A006136.P16357223137784945543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045912 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A006136.P16357223137784945543

/-! ## A006136.P2306943598460971834

`or(char[1], A045912(A167614(n+2)))`
-/

namespace A006136.P2306943598460971834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A045912 (A167614 (n + 2)).toNat)

end

end A006136.P2306943598460971834

/-! ## A006136.P5325746810681118665

`record[A045912(n)^A155091(n+4)]`
-/

namespace A006136.P5325746810681118665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045912 n : ℚ) ^ (A155091 (n + 4) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006136.P5325746810681118665

/-! ## A006136.P12288909424025390109

`record[gcd(A045912(n), A300184(n+1))]`
-/

namespace A006136.P12288909424025390109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045912 n) (A300184 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006136.P12288909424025390109

/-!
# A006137: a(n) = 1 + n/2 + 9*n^2/2.

The programs for A006137, the canonical program `A006137.P269046196185100711` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006137 has offset 0).

The definition of A006137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n/2+9*n²/2` (program `A006137.P11544005690099232308`, by `A006137.P11544005690099232308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006137.P269046196185100711

`a(n-1)+9*n-4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006137

/-- `a(n-1)+9*n-4` -/
def P269046196185100711.Spec : Prop :=
  ∀ n, P269046196185100711.a n = A006137 n

theorem P269046196185100711.correct : P269046196185100711.Spec := by
  intro n
  simp only [A006137]

end A006137

/-! ## A006137.P11544005690099232308

`1+n/2+9*n²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006137.P11544005690099232308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (n : ℚ) / 2 + (9 * n ^ 2 : ℚ) / 2

end

end A006137.P11544005690099232308

namespace A006137

/-- `1+n/2+9*n²/2` -/
def P11544005690099232308.Spec : Prop :=
  ∀ n, P11544005690099232308.a n = (A006137 n : ℚ)

theorem P11544005690099232308.correct : P11544005690099232308.Spec := by
  intro n
  induction n with
  | zero => simp [A006137, A006137.P11544005690099232308.a, A006137.P269046196185100711.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A006137, Nat.add_sub_cancel, A006137.P11544005690099232308.a, A006137.P269046196185100711.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A006137

/-! ## A006137.P7862005570861634701

`∑[a(n-1)+9]` with `a(0)=1, a(1)=5`
-/

namespace A006137.P7862005570861634701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006137.P7862005570861634701

namespace A006137

/-- `∑[a(n-1)+9]` -/
def P7862005570861634701.Spec : Prop :=
  ∀ n, (P7862005570861634701.a n : ℤ) = A006137 n

end A006137

/-! ## A006137.P16443396555511912220

`∑[ogf((1+3x+5x^2)/(1-2x+x^2))]`
-/

namespace A006137.P16443396555511912220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006137.P16443396555511912220

namespace A006137

/-- `∑[ogf((1+3x+5x^2)/(1-2x+x^2))]` -/
def P16443396555511912220.Spec : Prop :=
  ∀ n, P16443396555511912220.a n = A006137 n

end A006137

/-! ## A006137.P9926043567458192453

`ogf((1+3x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A006137.P9926043567458192453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5] [1, -3, 3, -1] n

end

end A006137.P9926043567458192453

namespace A006137

/-- `ogf((1+3x+5x^2)/(1-3x+3x^2-x^3))` -/
def P9926043567458192453.Spec : Prop :=
  ∀ n, P9926043567458192453.a n = A006137 n

end A006137

/-! ## A006137.P15692153243583795484

`abs(Δ[n²]+C(3*n, 2))`
-/

namespace A006137.P15692153243583795484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (3 * n) 2 : ℤ)|

end

end A006137.P15692153243583795484

namespace A006137

/-- `abs(Δ[n²]+C(3*n, 2))` -/
def P15692153243583795484.Spec : Prop :=
  ∀ n, P15692153243583795484.a n = A006137 n

end A006137

/-! ## A006137.P15181789296051466689

`(lcm(n, 9*n+1)+2)/2`
-/

namespace A006137.P15181789296051466689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (9 * n + 1) + 2 : ℚ) / 2

end

end A006137.P15181789296051466689

namespace A006137

/-- `(lcm(n, 9*n+1)+2)/2` -/
def P15181789296051466689.Spec : Prop :=
  ∀ n, P15181789296051466689.a n = (A006137 n : ℚ)

end A006137

/-! ## A006137.P17931003597266381699

`abs(C(3*n+1, 2)+1-n)`
-/

namespace A006137.P17931003597266381699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (3 * n + 1) 2 + 1 : ℤ) - (n : ℤ)|

end

end A006137.P17931003597266381699

namespace A006137

/-- `abs(C(3*n+1, 2)+1-n)` -/
def P17931003597266381699.Spec : Prop :=
  ∀ n, P17931003597266381699.a n = A006137 n

end A006137

/-! ## A006137.P4653272510509367929

`floor(9*n-(4-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006137.P4653272510509367929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) - (4 - a (n - 1))

end

end A006137.P4653272510509367929

namespace A006137

/-- `floor(9*n-(4-a(n-1)))` -/
def P4653272510509367929.Spec : Prop :=
  ∀ n, P4653272510509367929.a n = A006137 n

end A006137

/-! ## A006137.P16132697302885091589

`floor((2*n)²+C(n+1, 2)+ϕ)`
-/

namespace A006137.P16132697302885091589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℝ) + ((Nat.choose (n + 1) 2 : ℝ) + Real.goldenRatio)⌋

end

end A006137.P16132697302885091589

namespace A006137

/-- `floor((2*n)²+C(n+1, 2)+ϕ)` -/
def P16132697302885091589.Spec : Prop :=
  ∀ n, P16132697302885091589.a n = A006137 n

end A006137

/-! ## A006137.P15174912960236108071

`Δ[(n-1)*A143689(n)]`
-/

namespace A006137.P15174912960236108071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006137.P15174912960236108071

namespace A006137

/-- `Δ[(n-1)*A143689(n)]` -/
def P15174912960236108071.Spec : Prop :=
  ∀ n, P15174912960236108071.a n = A006137 n

end A006137

/-! ## A006137.P12369429565406991150

`(A247792(n)+1+n)/2`
-/

namespace A006137.P12369429565406991150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247792 n + 1 + (n : ℤ) : ℚ) / 2

end

end A006137.P12369429565406991150

namespace A006137

/-- `(A247792(n)+1+n)/2` -/
def P12369429565406991150.Spec : Prop :=
  ∀ n, P12369429565406991150.a n = (A006137 n : ℚ)

end A006137

/-! ## A006137.P11118623015320239986

`abs(A000217(3*n)+1-n)`
-/

namespace A006137.P11118623015320239986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (3 * n) + (1 - (n : ℤ))|

end

end A006137.P11118623015320239986

namespace A006137

/-- `abs(A000217(3*n)+1-n)` -/
def P11118623015320239986.Spec : Prop :=
  ∀ n, P11118623015320239986.a n = A006137 n

end A006137

/-! ## A006137.P15570681948034937503

`∑[record[lcm(4, n)]+A000007(n)+n]`
-/

namespace A006137.P15570681948034937503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) + (A000007 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006137.P15570681948034937503

namespace A006137

/-- `∑[record[lcm(4, n)]+A000007(n)+n]` -/
def P15570681948034937503.Spec : Prop :=
  ∀ n, P15570681948034937503.a n = A006137 n

end A006137

/-! ## A006137.P3412493519560169210

`abs(A045943(n)+3*n²+1-n)`
-/

namespace A006137.P3412493519560169210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045943 n + ((3 * n ^ 2 + 1 : ℤ) - (n : ℤ))|

end

end A006137.P3412493519560169210

namespace A006137

/-- `abs(A045943(n)+3*n²+1-n)` -/
def P3412493519560169210.Spec : Prop :=
  ∀ n, P3412493519560169210.a n = A006137 n

end A006137

/-! ## A006137.P13720129848495897418

`Δ[(C(2*n, 2)-∑[n-1])*(n-1)]`
-/

namespace A006137.P13720129848495897418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006137.P13720129848495897418

namespace A006137

/-- `Δ[(C(2*n, 2)-∑[n-1])*(n-1)]` -/
def P13720129848495897418.Spec : Prop :=
  ∀ n, P13720129848495897418.a n = A006137 n

end A006137

/-! ## A006137.P12810274810546923707

`record[A266087(n)/2+1]`
-/

namespace A006137.P12810274810546923707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266087 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006137.P12810274810546923707

namespace A006137

/-- `record[A266087(n)/2+1]` -/
def P12810274810546923707.Spec : Prop :=
  ∀ n, P12810274810546923707.a n = (A006137 n : ℚ)

end A006137

/-! ## A006137.P5131748200411644731

`abs(A000124(3*n)-n)`
-/

namespace A006137.P5131748200411644731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000124 (3 * n) - (n : ℤ)|

end

end A006137.P5131748200411644731

namespace A006137

/-- `abs(A000124(3*n)-n)` -/
def P5131748200411644731.Spec : Prop :=
  ∀ n, P5131748200411644731.a n = A006137 n

end A006137

/-! ## A006137.P585348512420731559

`(n*A016777(3*n)+2)/2`
-/

namespace A006137.P585348512420731559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A016777 (3 * n) + 2 : ℚ) / 2

end

end A006137.P585348512420731559

namespace A006137

/-- `(n*A016777(3*n)+2)/2` -/
def P585348512420731559.Spec : Prop :=
  ∀ n, P585348512420731559.a n = (A006137 n : ℚ)

end A006137

/-!
# A006138: a(n) = a(n-1) + 3*a(n-2).

The programs for A006138, the canonical program `A006138.P15860689588633707279` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006138 has offset 0).

The definition of A006138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)` (program `A006138.P15860689588633707279`, by `A006138.P15860689588633707279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006138.P15860689588633707279

`a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006138

/-- `a(n-1)+3*a(n-2)` -/
def P15860689588633707279.Spec : Prop :=
  ∀ n, (P15860689588633707279.a n : ℤ) = A006138 n

theorem P15860689588633707279.correct : P15860689588633707279.Spec := by
  intro n
  simp only [A006138]

end A006138

/-! ## A006138.P12894895114149931541

`ogf((1+x)/(1-x-3x^2))`
-/

namespace A006138.P12894895114149931541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -3] n

end

end A006138.P12894895114149931541

namespace A006138

/-- `ogf((1+x)/(1-x-3x^2))` -/
def P12894895114149931541.Spec : Prop :=
  ∀ n, P12894895114149931541.a n = A006138 n

end A006138

/-! ## A006138.P13666764125199991854

`a(n-1)+lcm(3, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A006138.P13666764125199991854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 3 (a (n - 2))

end

end A006138.P13666764125199991854

namespace A006138

/-- `a(n-1)+lcm(3, a(n-2))` -/
def P13666764125199991854.Spec : Prop :=
  ∀ n, (P13666764125199991854.a n : ℤ) = A006138 n

end A006138

/-! ## A006138.P17923445384810190256

`abs(Δ[3*a(n-2)-a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A006138.P17923445384810190256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006138.P17923445384810190256

namespace A006138

/-- `abs(Δ[3*a(n-2)-a(n-1)])` -/
def P17923445384810190256.Spec : Prop :=
  ∀ n, P17923445384810190256.a n = A006138 n

end A006138

/-! ## A006138.P9562708580615691424

`3-(3*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A006138.P9562708580615691424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A006138.P9562708580615691424

namespace A006138

/-- `3-(3*(1-a(n-2))-a(n-1))` -/
def P9562708580615691424.Spec : Prop :=
  ∀ n, P9562708580615691424.a n = A006138 n

end A006138

/-! ## A006138.P12370280599510907283

`a(n-1)+a(n-2)/(1-2/3)` with `a(0)=1, a(1)=2`
-/

namespace A006138.P12370280599510907283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A006138.P12370280599510907283

namespace A006138

/-- `a(n-1)+a(n-2)/(1-2/3)` -/
def P12370280599510907283.Spec : Prop :=
  ∀ n, P12370280599510907283.a n = (A006138 n : ℚ)

end A006138

/-! ## A006138.P8724061105866051596

`a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A006138.P8724061105866051596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A006138.P8724061105866051596

namespace A006138

/-- `a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P8724061105866051596.Spec : Prop :=
  ∀ n, (P8724061105866051596.a n : ℤ) = A006138 n

end A006138

/-! ## A006138.P14959726398779102435

`a(n-1)-(a(n-1)%a(n-2)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A006138.P14959726398779102435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 1) - a (n - 2))

end

end A006138.P14959726398779102435

namespace A006138

/-- `a(n-1)-(a(n-1)%a(n-2)-a(n-1)-a(n-2))` -/
def P14959726398779102435.Spec : Prop :=
  ∀ n, P14959726398779102435.a n = A006138 n

end A006138

/-! ## A006138.P476099067047893011

`∑[A105476(n)]`
-/

namespace A006138.P476099067047893011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006138.P476099067047893011

namespace A006138

/-- `∑[A105476(n)]` -/
def P476099067047893011.Spec : Prop :=
  ∀ n, P476099067047893011.a n = A006138 n

end A006138

/-! ## A006138.P12184024360076684760

`A019525(n+1)-1`
-/

namespace A006138.P12184024360076684760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019525 (n + 1) - 1

end

end A006138.P12184024360076684760

namespace A006138

/-- `A019525(n+1)-1` -/
def P12184024360076684760.Spec : Prop :=
  ∀ n, P12184024360076684760.a n = A006138 n

end A006138

/-! ## A006138.P7321564486021709464

`A006130(n)+abs(A182228(n))`
-/

namespace A006138.P7321564486021709464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + |A182228 n|

end

end A006138.P7321564486021709464

namespace A006138

/-- `A006130(n)+abs(A182228(n))` -/
def P7321564486021709464.Spec : Prop :=
  ∀ n, P7321564486021709464.a n = A006138 n

end A006138

/-! ## A006138.P7606207038864051038

`A006130(n)+A006130(n)-A052533(n)`
-/

namespace A006138.P7606207038864051038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n + (A006130 n - A052533 n)

end

end A006138.P7606207038864051038

namespace A006138

/-- `A006130(n)+A006130(n)-A052533(n)` -/
def P7606207038864051038.Spec : Prop :=
  ∀ n, P7606207038864051038.a n = A006138 n

end A006138

/-! ## A006138.P4669751611664045960

`abs(Δ[A182228(n)])`
-/

namespace A006138.P4669751611664045960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006138.P4669751611664045960

namespace A006138

/-- `abs(Δ[A182228(n)])` -/
def P4669751611664045960.Spec : Prop :=
  ∀ n, P4669751611664045960.a n = A006138 n

end A006138

/-! ## A006138.P17393410236120322902

`A105963(n)-A052533(n+1)`
-/

namespace A006138.P17393410236120322902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105963 n - A052533 (n + 1)

end

end A006138.P17393410236120322902

namespace A006138

/-- `A105963(n)-A052533(n+1)` -/
def P17393410236120322902.Spec : Prop :=
  ∀ n, P17393410236120322902.a n = A006138 n

end A006138

/-! ## A006138.P13111908841654343856

`A228661(n+1)-A052533(n)`
-/

namespace A006138.P13111908841654343856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228661 (n + 1) - A052533 n

end

end A006138.P13111908841654343856

namespace A006138

/-- `A228661(n+1)-A052533(n)` -/
def P13111908841654343856.Spec : Prop :=
  ∀ n, P13111908841654343856.a n = A006138 n

end A006138

/-! ## A006138.P11604692407699082038

`A288309(n)-(A099232(n)+1)`
-/

namespace A006138.P11604692407699082038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288309 n - (A099232 n + 1)

end

end A006138.P11604692407699082038

namespace A006138

/-- `A288309(n)-(A099232(n)+1)` -/
def P11604692407699082038.Spec : Prop :=
  ∀ n, P11604692407699082038.a n = A006138 n

end A006138

/-! ## A006138.P16148057929044465659

`A052533(n+2)-A075118(n)`
-/

namespace A006138.P16148057929044465659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 2) - A075118 n

end

end A006138.P16148057929044465659

namespace A006138

/-- `A052533(n+2)-A075118(n)` -/
def P16148057929044465659.Spec : Prop :=
  ∀ n, P16148057929044465659.a n = A006138 n

end A006138

/-! ## A006138.P13593567726141544858

`2*A006130(n)-A052533(n)`
-/

namespace A006138.P13593567726141544858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006130 n - A052533 n

end

end A006138.P13593567726141544858

namespace A006138

/-- `2*A006130(n)-A052533(n)` -/
def P13593567726141544858.Spec : Prop :=
  ∀ n, P13593567726141544858.a n = A006138 n

end A006138

/-! ## A006138.P8237647952687449827

`(A175654(n)+A000079(n))/2`
-/

namespace A006138.P8237647952687449827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175654 n + A000079 n : ℚ) / 2

end

end A006138.P8237647952687449827

namespace A006138

/-- `(A175654(n)+A000079(n))/2` -/
def P8237647952687449827.Spec : Prop :=
  ∀ n, P8237647952687449827.a n = (A006138 n : ℚ)

end A006138

/-! ## A006138.P14138561831802881705

`abs(A182228(n+1)-A182228(n))`
-/

namespace A006138.P14138561831802881705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182228 (n + 1) - A182228 n|

end

end A006138.P14138561831802881705

namespace A006138

/-- `abs(A182228(n+1)-A182228(n))` -/
def P14138561831802881705.Spec : Prop :=
  ∀ n, P14138561831802881705.a n = A006138 n

end A006138

/-!
# A006139: n*a(n) = 2*(2*n-1)*a(n-1) + 4*(n-1)*a(n-2) with a(0) = 1.

The programs for A006139, there is no canonical definition to state claims against.
-/

/-! ## A006139.P2023240012820958544

`A000007(n)+2*A179191(n)`
-/

namespace A006139.P2023240012820958544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A179191 n

end

end A006139.P2023240012820958544

/-! ## A006139.P9532092749483844929

`A179191(round(sqrt(n²+1)))+A179191(n)`
-/

namespace A006139.P9532092749483844929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179191 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A179191 n

end

end A006139.P9532092749483844929

/-! ## A006139.P187312320464465708

`A110135(∑[n+1]+1)`
-/

namespace A006139.P187312320464465708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110135 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006139.P187312320464465708

/-! ## A006139.P10864799605548141044

`A361830(∑[n+1]+n)`
-/

namespace A006139.P10864799605548141044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006139.P10864799605548141044

/-! ## A006139.P6348756529798551031

`A084606(∑[2*n])`
-/

namespace A006139.P6348756529798551031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006139.P6348756529798551031

/-! ## A006139.P7732869428569306853

`A307910(∑[n+3])`
-/

namespace A006139.P7732869428569306853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006139.P7732869428569306853

/-!
# A006141: Number of integer partitions of n whose smallest part is equal to the number of parts.

The programs for A006141, there is no canonical definition to state claims against.
-/

/-! ## A006141.P5881495526709724057

`A003114(n+1)-A003106(n+1)`
-/

namespace A006141.P5881495526709724057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) - A003106 (n + 1)

end

end A006141.P5881495526709724057

/-! ## A006141.P8833211979844813764

`A039900(n+1)-A039899(n+1)`
-/

namespace A006141.P8833211979844813764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (n + 1) - A039899 (n + 1)

end

end A006141.P8833211979844813764

/-! ## A006141.P15874059450968260083

`A325343(n+1)-A325342(n+1)`
-/

namespace A006141.P15874059450968260083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A325342 (n + 1)

end

end A006141.P15874059450968260083

/-! ## A006141.P4920314866921451245

`A003113(n+1)-2*A003106(n+1)`
-/

namespace A006141.P4920314866921451245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 (n + 1) - 2 * A003106 (n + 1)

end

end A006141.P4920314866921451245

/-! ## A006141.P10491522929325576630

`2*A003114(n+1)-A003113(n+1)`
-/

namespace A006141.P10491522929325576630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003114 (n + 1) - A003113 (n + 1)

end

end A006141.P10491522929325576630

/-! ## A006141.P7618971763538002371

`A003114(n+1)+A039900(n+1)-A000041(n+1)`
-/

namespace A006141.P7618971763538002371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A039900 (n + 1) - A000041 (n + 1))

end

end A006141.P7618971763538002371

/-! ## A006141.P1691625189543626753

`A003114(n+1)+A325341(n+1)-A064173(n+1)`
-/

namespace A006141.P1691625189543626753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A325341 (n + 1) - A064173 (n + 1))

end

end A006141.P1691625189543626753

/-! ## A006141.P11545930153061376247

`A064174(n+1)-(A325342(n+1)+A003106(n+1))`
-/

namespace A006141.P11545930153061376247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - (A325342 (n + 1) + A003106 (n + 1))

end

end A006141.P11545930153061376247

/-! ## A006141.P3302460855830288881

`A003114(n+1)-(A286745(n+1)+A286744(n+1))`
-/

namespace A006141.P3302460855830288881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) - (A286745 (n + 1) + A286744 (n + 1))

end

end A006141.P3302460855830288881

/-! ## A006141.P15932147123356740918

`A286041(n+1)+A286316(n+1)-A003106(n+1)`
-/

namespace A006141.P15932147123356740918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 (n + 1) + (A286316 (n + 1) - A003106 (n + 1))

end

end A006141.P15932147123356740918

/-! ## A006141.P16779811150445713908

`A000041(n+1)-A240057(n+1)`
-/

namespace A006141.P16779811150445713908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A240057 (n + 1)

end

end A006141.P16779811150445713908

/-! ## A006141.P12581447288517270171

`A000041(n+1)-(A039899(n+1)+A003106(n+1))`
-/

namespace A006141.P12581447288517270171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A039899 (n + 1) + A003106 (n + 1))

end

end A006141.P12581447288517270171

/-! ## A006141.P16614685169222137793

`A003106(n+1)+A039900(n+1)-A240057(n+1)`
-/

namespace A006141.P16614685169222137793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A039900 (n + 1) - A240057 (n + 1))

end

end A006141.P16614685169222137793

/-! ## A006141.P3333328307099094878

`A003114(n+1)+A039899(n+1)-A240057(n+1)`
-/

namespace A006141.P3333328307099094878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A039899 (n + 1) - A240057 (n + 1))

end

end A006141.P3333328307099094878

/-! ## A006141.P7883516620842766523

`A047993(n+1)+A236634(n+1)-A240057(n+1)`
-/

namespace A006141.P7883516620842766523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1) + (A236634 (n + 1) - A240057 (n + 1))

end

end A006141.P7883516620842766523

/-!
# A006145: Ruth-Aaron numbers (1): sum of prime divisors of n = sum of prime divisors of n+1.

The programs for A006145, there is no canonical definition to state claims against.
-/

/-! ## A006145.P9517348062612034824

`A020725(eq[n+2, A081382(n+1)])`
-/

namespace A006145.P9517348062612034824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006145.P9517348062612034824

/-! ## A006145.P10208029077168022239

`eq[A075653(n+1), A254340(A028310(n))]`
-/

namespace A006145.P10208029077168022239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006145.P10208029077168022239

/-! ## A006145.P6321720035408315088

`A065475(eq[A008472(n+1), A008472(n+2)])`
-/

namespace A006145.P6321720035408315088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006145.P6321720035408315088

/-! ## A006145.P1104019955565535648

`eq[A008472(A233583(n+1)), A105221(n+1)]`
-/

namespace A006145.P1104019955565535648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006145.P1104019955565535648

/-! ## A006145.P7503399563337629300

`eq[A075653(n+1), A254340(A233583(n+1))]`
-/

namespace A006145.P7503399563337629300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006145.P7503399563337629300

/-!
# A006146: Sums of prime divisors of Ruth-Aaron numbers (A006145).

The programs for A006146, there is no canonical definition to state claims against.
-/

/-! ## A006146.P18001755292170048244

`A008472(A006145(n+1))`
-/

namespace A006146.P18001755292170048244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006145 (n + 1)).toNat

end

end A006146.P18001755292170048244

/-! ## A006146.P521837753071198856

`A001414(∏{p}[A006145(n+1), #])`
-/

namespace A006146.P521837753071198856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A006146.P521837753071198856

/-! ## A006146.P17383507659011324437

`A008475(∏{p}[A006145(n+1), #])`
-/

namespace A006146.P17383507659011324437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A006146.P17383507659011324437

/-!
# A006148: Number of 4 X n binary matrices up to row and column permutations.

The programs for A006148, there is no canonical definition to state claims against.
-/

/-! ## A006148.P10696948451336039511

`∑[A005784(n)]`
-/

namespace A006148.P10696948451336039511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006148.P10696948451336039511

/-! ## A006148.P3712280765693689180

`A005784(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A006148.P3712280765693689180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005784 n + a (A023443 n).toNat

end

end A006148.P3712280765693689180

/-! ## A006148.P15990278031109915890

`A005784(n)-a(n-1)*A057428(n)` with `a(0)=1`
-/

namespace A006148.P15990278031109915890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005784 n - a (n - 1) * A057428 n

end

end A006148.P15990278031109915890

/-! ## A006148.P16456886872907269003

`A005784(n)+a(n-1-A178225(2*n))` with `a(0)=1`
-/

namespace A006148.P16456886872907269003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005784 n + a ((n : ℤ) - 1 - A178225 (2 * n)).toNat

end

end A006148.P16456886872907269003

/-! ## A006148.P7979304386448714167

`A055083(n+1)+A052264(n)-A005771(n+1)`
-/

namespace A006148.P7979304386448714167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055083 (n + 1) + (A052264 n - A005771 (n + 1))

end

end A006148.P7979304386448714167

/-! ## A006148.P7394134722366581019

`∑[A055082(n+1)]+A002727(n)-A055082(n+1)`
-/

namespace A006148.P7394134722366581019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002727 n - A055082 (n + 1))

end

end A006148.P7394134722366581019

/-!
# A006149: Number of 3-tuples (p_1, p_2, p_3) of Dyck paths of semilength n, such that each p_i is never below p_{i-1}.

The programs for A006149, there is no canonical definition to state claims against.
-/

/-! ## A006149.P11431324925866563090

`A078920(∑[n+2]+4)`
-/

namespace A006149.P11431324925866563090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A006149.P11431324925866563090

/-! ## A006149.P4300055044262034003

`lcm((-1)^n, A078920(A167614(n+1)))`
-/

namespace A006149.P4300055044262034003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A078920 (A167614 (n + 1)).toNat)

end

end A006149.P4300055044262034003

/-! ## A006149.P4771902603308479656

`A078920(A167614(n+1))+A025444(n)`
-/

namespace A006149.P4771902603308479656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A167614 (n + 1)).toNat + A025444 n

end

end A006149.P4771902603308479656

/-! ## A006149.P17866616757384743072

`A078920(A167614(n+1))%A020549(n)`
-/

namespace A006149.P17866616757384743072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078920 (A167614 (n + 1)).toNat) (A020549 n)

end

end A006149.P17866616757384743072

/-! ## A006149.P5410199395676522133

`or(A000007(n), A078920(A167614(n+1)))`
-/

namespace A006149.P5410199395676522133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A078920 (A167614 (n + 1)).toNat)

end

end A006149.P5410199395676522133

/-!
# A006150: Number of 4-tuples (p_1, p_2, ..., p_4) of Dyck paths of semilength n, such that each p_i is never below p_{i-1}.

The programs for A006150, there is no canonical definition to state claims against.
-/

/-! ## A006150.P7592867057999968966

`A078920(A052905(n)+9)`
-/

namespace A006150.P7592867057999968966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A052905 n + 9).toNat

end

end A006150.P7592867057999968966

/-! ## A006150.P2761138322141906106

`A078920(A055999(n)+10)`
-/

namespace A006150.P2761138322141906106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A055999 n + 10).toNat

end

end A006150.P2761138322141906106

/-! ## A006150.P4170813707687160347

`A078920(A167614(n+2)+1)`
-/

namespace A006150.P4170813707687160347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A167614 (n + 2) + 1).toNat

end

end A006150.P4170813707687160347

/-! ## A006150.P7263209295846653572

`A078920(A166136(n+2)-2)`
-/

namespace A006150.P7263209295846653572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A166136 (n + 2) - 2).toNat

end

end A006150.P7263209295846653572

/-! ## A006150.P15590914212090159201

`A078920(eq[5, A131818(n+1)])`
-/

namespace A006150.P15590914212090159201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006150.P15590914212090159201

/-!
# A006151: Number of 5-tuples (p_1, p_2, ..., p_5) of Dyck paths of semilength n, such that each p_i is never below p_{i-1}.

The programs for A006151, there is no canonical definition to state claims against.
-/

/-! ## A006151.P17272973399469107756

`A078920(A167499(n+3))`
-/

namespace A006151.P17272973399469107756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A167499 (n + 3)).toNat

end

end A006151.P17272973399469107756

/-! ## A006151.P13682237004282119380

`A078920(A155212(n)+13)`
-/

namespace A006151.P13682237004282119380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A155212 n + 13).toNat

end

end A006151.P13682237004282119380

/-! ## A006151.P3710791038953309367

`A078920(A056000(n)+15)`
-/

namespace A006151.P3710791038953309367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A056000 n + 15).toNat

end

end A006151.P3710791038953309367

/-! ## A006151.P12022096069188150341

`A078920(eq[6, A131818(n+1)])`
-/

namespace A006151.P12022096069188150341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006151.P12022096069188150341

/-! ## A006151.P6387781135755624659

`A123352((n+3)²-∑[n])`
-/

namespace A006151.P6387781135755624659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006151.P6387781135755624659

/-!
# A006152: Exponential generating function x*exp(x/(1-x)).

The programs for A006152, the canonical program `A006152.P4174681156060907627` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006152 has offset 1).

The definition of A006152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006152.P4174681156060907627

`(n+1)*A000262(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006152

/-- `(n+1)*A000262(n)` -/
def P4174681156060907627.Spec : Prop :=
  ∀ n, P4174681156060907627.a n = A006152 (n + 1)

theorem P4174681156060907627.correct : P4174681156060907627.Spec := by
  intro n
  simp only [A006152, Nat.add_sub_cancel]

end A006152

/-! ## A006152.P18140121814178702528

`A129652(∑[n+1]+1)`
-/

namespace A006152.P18140121814178702528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006152.P18140121814178702528

namespace A006152

/-- `A129652(∑[n+1]+1)` -/
def P18140121814178702528.Spec : Prop :=
  ∀ n, P18140121814178702528.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P14073855351806555017

`A206703(∑[n+1]+1)`
-/

namespace A006152.P14073855351806555017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006152.P14073855351806555017

namespace A006152

/-- `A206703(∑[n+1]+1)` -/
def P14073855351806555017.Spec : Prop :=
  ∀ n, P14073855351806555017.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P14429809264243247348

`abs((n+1)*A293125(n))`
-/

namespace A006152.P14429809264243247348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A293125 n|

end

end A006152.P14429809264243247348

namespace A006152

/-- `abs((n+1)*A293125(n))` -/
def P14429809264243247348.Spec : Prop :=
  ∀ n, P14429809264243247348.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P11907551699491322487

`(n+1)*A059110(∑[n])`
-/

namespace A006152.P11907551699491322487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006152.P11907551699491322487

namespace A006152

/-- `(n+1)*A059110(∑[n])` -/
def P11907551699491322487.Spec : Prop :=
  ∀ n, P11907551699491322487.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P13101437667711398115

`(n+1)*A216294(∑[n])`
-/

namespace A006152.P13101437667711398115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A216294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006152.P13101437667711398115

namespace A006152

/-- `(n+1)*A216294(∑[n])` -/
def P13101437667711398115.Spec : Prop :=
  ∀ n, P13101437667711398115.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P18195812891235826058

`(n+1)*A261764(∑[n]+n)`
-/

namespace A006152.P18195812891235826058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A261764 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006152.P18195812891235826058

namespace A006152

/-- `(n+1)*A261764(∑[n]+n)` -/
def P18195812891235826058.Spec : Prop :=
  ∀ n, P18195812891235826058.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P6883148420629280788

`(n+1)*abs(A293134(∑[n]+n))`
-/

namespace A006152.P6883148420629280788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A293134 (∑ j ∈ Finset.range (n + 1), f1 j + n)|

end

end A006152.P6883148420629280788

namespace A006152

/-- `(n+1)*abs(A293134(∑[n]+n))` -/
def P6883148420629280788.Spec : Prop :=
  ∀ n, P6883148420629280788.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P9768478746045573985

`(n+1)*A253286(∑[n+1]+1)`
-/

namespace A006152.P9768478746045573985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006152.P9768478746045573985

namespace A006152

/-- `(n+1)*A253286(∑[n+1]+1)` -/
def P9768478746045573985.Spec : Prop :=
  ∀ n, P9768478746045573985.a n = A006152 (n + 1)

end A006152

/-! ## A006152.P7423061608027991872

`A002720(n)+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A006152.P7423061608027991872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002720 n + ((n : ℤ) - 1) * a (n - 1)

end

end A006152.P7423061608027991872

namespace A006152

/-- `A002720(n)+(n-1)*a(n-1)` -/
def P7423061608027991872.Spec : Prop :=
  ∀ n, P7423061608027991872.a n = A006152 (n + 1)

end A006152

/-!
# A006153: E.g.f.: 1/(1-x*exp(x)).

The programs for A006153, there is no canonical definition to state claims against.
-/

/-! ## A006153.P11724482886155662031

`A138909(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A006153.P11724482886155662031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138909 n - (n : ℤ) * a (n - 1)

end

end A006153.P11724482886155662031

/-! ## A006153.P3821306023913546373

`A305990(n)%A072597(A028310(n))`
-/

namespace A006153.P3821306023913546373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305990 n) (A072597 (A028310 n).toNat)

end

end A006153.P3821306023913546373

/-! ## A006153.P2542677893838964521

`A008966(A004011(n))+A305990(n)-A072597(n)`
-/

namespace A006153.P2542677893838964521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A004011 n).toNat + (A305990 n - A072597 n)

end

end A006153.P2542677893838964521

/-! ## A006153.P12731705628077142367

`A008683(A008574(n))+A305990(n)-A072597(n)`
-/

namespace A006153.P12731705628077142367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A305990 n - A072597 n)

end

end A006153.P12731705628077142367

/-! ## A006153.P6992208010649956738

`A244925(A000124(n))+A305990(n)-A072597(n)`
-/

namespace A006153.P6992208010649956738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 n).toNat + (A305990 n - A072597 n)

end

end A006153.P6992208010649956738

/-! ## A006153.P10623803845112651407

`A126120(A000040(n+1))+A305990(n)-A072597(n)`
-/

namespace A006153.P10623803845112651407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A000040 (n + 1)).toNat + (A305990 n - A072597 n)

end

end A006153.P10623803845112651407

/-! ## A006153.P5397483042045175703

`A351790(∑[n+1]+n)`
-/

namespace A006153.P5397483042045175703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351790 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006153.P5397483042045175703

/-! ## A006153.P12148263165859141909

`A351761(∑[n+1]+n)`
-/

namespace A006153.P12148263165859141909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006153.P12148263165859141909

/-!
# A006154: Number of labeled ordered partitions of an n-set into odd parts.

The programs for A006154, there is no canonical definition to state claims against.
-/

/-! ## A006154.P12228274861396486576

`ceil(A322623(n)/2)`
-/

namespace A006154.P12228274861396486576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322623 n : ℚ) / 2⌉

end

end A006154.P12228274861396486576

/-! ## A006154.P1455331881299956026

`A109570(n+1)/(n+1)`
-/

namespace A006154.P1455331881299956026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109570 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A006154.P1455331881299956026

/-! ## A006154.P13361719552463783160

`A322623(round(sqrt(n²+1)))/2`
-/

namespace A006154.P13361719552463783160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322623 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A006154.P13361719552463783160

/-! ## A006154.P6843858153497264684

`abs(A009124(n)-A009568(n))`
-/

namespace A006154.P6843858153497264684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009124 n - A009568 n|

end

end A006154.P6843858153497264684

/-! ## A006154.P18361671795793956800

`(A322623(n)+A000007(n))/2`
-/

namespace A006154.P18361671795793956800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322623 n + A000007 n : ℚ) / 2

end

end A006154.P18361671795793956800

/-! ## A006154.P7020919172773496774

`(A322623(n)+A151933(n))/2`
-/

namespace A006154.P7020919172773496774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322623 n + A151933 n : ℚ) / 2

end

end A006154.P7020919172773496774

/-!
# A006155: Expansion of e.g.f.: 1/(2-x-exp(x)).

The programs for A006155, there is no canonical definition to state claims against.
-/

/-! ## A006155.P1792649949595464050

`A309151((n+1)^n)`
-/

namespace A006155.P1792649949595464050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 ((n + 1) ^ n)

end

end A006155.P1792649949595464050

/-!
# A006156: Number of ternary squarefree words of length n.

The programs for A006156, there is no canonical definition to state claims against.
-/

/-! ## A006156.P9595997294733735869

`3^n-A171761(n)`
-/

namespace A006156.P9595997294733735869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A171761 n

end

end A006156.P9595997294733735869

/-! ## A006156.P3941626469613392672

`xor(1, xor(1, A000244(n)-A171761(n)))`
-/

namespace A006156.P3941626469613392672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000244 n - A171761 n))

end

end A006156.P3941626469613392672

/-! ## A006156.P17138863800830024260

`A003462(n)+A007051(n)-A171761(n)`
-/

namespace A006156.P17138863800830024260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A007051 n - A171761 n)

end

end A006156.P17138863800830024260

/-! ## A006156.P1338579037500438832

`and(4, A000034(n))+A000244(n)-A171761(n)`
-/

namespace A006156.P1338579037500438832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A000034 n) + (A000244 n - A171761 n)

end

end A006156.P1338579037500438832

/-! ## A006156.P13084514366929549217

`(A000244(n)-A171761(n))*A130595(∑[n])²`
-/

namespace A006156.P13084514366929549217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A171761 n) * A130595 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A006156.P13084514366929549217

/-!
# A006157: a(n+1) = (n-1)*a(n) + n*n!.

The programs for A006157, the canonical program `A006157.P4807870459630393262` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006157 has offset 2).

The definition of A006157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006157.P4807870459630393262

`(2*(n+2)-1)/6*(n+2)!`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006157

/-- `(2*(n+2)-1)/6*(n+2)!` -/
def P4807870459630393262.Spec : Prop :=
  ∀ n, P4807870459630393262.a n = (A006157 (n + 2) : ℚ)

end A006157

/-! ## A006157.P5215839477224593967

`n!*∑[(n+1)²]`
-/

namespace A006157.P5215839477224593967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006157.P5215839477224593967

namespace A006157

/-- `n!*∑[(n+1)²]` -/
def P5215839477224593967.Spec : Prop :=
  ∀ n, (P5215839477224593967.a n : ℤ) = A006157 (n + 2)

end A006157

/-! ## A006157.P16240183743656332587

`Δ[(n+1)!]+n*a(n-1)` with `a(0)=1`
-/

namespace A006157.P16240183743656332587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) * a (n - 1)

end

end A006157.P16240183743656332587

namespace A006157

/-- `Δ[(n+1)!]+n*a(n-1)` -/
def P16240183743656332587.Spec : Prop :=
  ∀ n, P16240183743656332587.a n = A006157 (n + 2)

end A006157

/-! ## A006157.P1007443160371146920

`∑[(n+1)²]/(n+1)*∏[n+1]`
-/

namespace A006157.P1007443160371146920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A006157.P1007443160371146920

namespace A006157

/-- `∑[(n+1)²]/(n+1)*∏[n+1]` -/
def P1007443160371146920.Spec : Prop :=
  ∀ n, P1007443160371146920.a n = (A006157 (n + 2) : ℚ)

end A006157

/-! ## A006157.P17286913229471222586

`Δ[∏[a(n-1)+1]]+n*a(n-1)` with `a(0)=1`
-/

namespace A006157.P17286913229471222586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) * a (n - 1)

end

end A006157.P17286913229471222586

namespace A006157

/-- `Δ[∏[a(n-1)+1]]+n*a(n-1)` -/
def P17286913229471222586.Spec : Prop :=
  ∀ n, P17286913229471222586.a n = A006157 (n + 2)

end A006157

/-! ## A006157.P14044071078509823621

`Δ[(n+1)*a(n-1)]+n*a(n-1)` with `a(0)=1`
-/

namespace A006157.P14044071078509823621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) * a (n - 1)

end

end A006157.P14044071078509823621

namespace A006157

/-- `Δ[(n+1)*a(n-1)]+n*a(n-1)` -/
def P14044071078509823621.Spec : Prop :=
  ∀ n, P14044071078509823621.a n = A006157 (n + 2)

end A006157

/-! ## A006157.P7165001550709048499

`5*a(n-1)+(n-1)*(n+1)*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A006157.P7165001550709048499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * a (n - 1) + ((n : ℤ) - 1) * ((n + 1 : ℤ) * a (n - 2))

end

end A006157.P7165001550709048499

namespace A006157

/-- `5*a(n-1)+(n-1)*(n+1)*a(n-2)` -/
def P7165001550709048499.Spec : Prop :=
  ∀ n, P7165001550709048499.a n = A006157 (n + 2)

end A006157

/-! ## A006157.P14798586204458087440

`Δ[A350309(n)]`
-/

namespace A006157.P14798586204458087440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006157.P14798586204458087440

namespace A006157

/-- `Δ[A350309(n)]` -/
def P14798586204458087440.Spec : Prop :=
  ∀ n, P14798586204458087440.a n = A006157 (n + 2)

end A006157

/-! ## A006157.P4944231735122618740

`A097971(n+2)/2`
-/

namespace A006157.P4944231735122618740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097971 (n + 2) : ℚ) / 2

end

end A006157.P4944231735122618740

namespace A006157

/-- `A097971(n+2)/2` -/
def P4944231735122618740.Spec : Prop :=
  ∀ n, P4944231735122618740.a n = (A006157 (n + 2) : ℚ)

end A006157

/-! ## A006157.P18415611639736347073

`A249253(A087811(n+2))`
-/

namespace A006157.P18415611639736347073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249253 (A087811 (n + 2)).toNat

end

end A006157.P18415611639736347073

namespace A006157

/-- `A249253(A087811(n+2))` -/
def P18415611639736347073.Spec : Prop :=
  ∀ n, P18415611639736347073.a n = A006157 (n + 2)

end A006157

/-!
# A006158: a(n) = a(a(n-3)) + a(n-a(n-3)).

The programs for A006158, the canonical program `A006158.P4146860264369489676` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006158 has offset 1).

The definition of A006158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3)-1)+a(n-a(n-3))` (program `A006158.P4146860264369489676`, by `A006158.P4146860264369489676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006158.P4146860264369489676

`a(a(n-3)-1)+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006158

/-- `a(a(n-3)-1)+a(n-a(n-3))` -/
def P4146860264369489676.Spec : Prop :=
  ∀ n, (P4146860264369489676.a n : ℤ) = A006158 (n + 1)

theorem P4146860264369489676.correct : P4146860264369489676.Spec := by
  intro n
  simp only [A006158, Nat.add_sub_cancel]

end A006158

/-! ## A006158.P16776523237888297846

`A006949(∑[A349204(n)%3])`
-/

namespace A006158.P16776523237888297846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349204 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006158.P16776523237888297846

namespace A006158

/-- `A006949(∑[A349204(n)%3])` -/
def P16776523237888297846.Spec : Prop :=
  ∀ n, P16776523237888297846.a n = A006158 (n + 1)

end A006158

/-! ## A006158.P16599545091466773766

`A004001(A302774(n+1)%2+n)`
-/

namespace A006158.P16599545091466773766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.tmod (A302774 (n + 1)) 2 + (n : ℤ)).toNat

end

end A006158.P16599545091466773766

namespace A006158

/-- `A004001(A302774(n+1)%2+n)` -/
def P16599545091466773766.Spec : Prop :=
  ∀ n, P16599545091466773766.a n = A006158 (n + 1)

end A006158

/-! ## A006158.P11809753965603465930

`A004001(A098180(n)%A001272(n+1))`
-/

namespace A006158.P11809753965603465930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.tmod (A098180 n) (A001272 (n + 1))).toNat

end

end A006158.P11809753965603465930

namespace A006158

/-- `A004001(A098180(n)%A001272(n+1))` -/
def P11809753965603465930.Spec : Prop :=
  ∀ n, P11809753965603465930.a n = A006158 (n + 1)

end A006158

/-!
# A006159: a(n)=a(a(n-4))+a(n-a(n-4)).

The programs for A006159, the canonical program `A006159.P17672247758368800619` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006159 has offset 1).

The definition of A006159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-4)-1)+a(n-a(n-4))` (program `A006159.P17672247758368800619`, by `A006159.P17672247758368800619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006159.P17672247758368800619

`a(a(n-4)-1)+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006159

/-- `a(a(n-4)-1)+a(n-a(n-4))` -/
def P17672247758368800619.Spec : Prop :=
  ∀ n, (P17672247758368800619.a n : ℤ) = A006159 (n + 1)

theorem P17672247758368800619.correct : P17672247758368800619.Spec := by
  intro n
  simp only [A006159, Nat.add_sub_cancel]

end A006159

/-! ## A006159.P12113044895147306941

`∑[A004539(A348996(n+2))]`
-/

namespace A006159.P12113044895147306941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A348996 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006159.P12113044895147306941

namespace A006159

/-- `∑[A004539(A348996(n+2))]` -/
def P12113044895147306941.Spec : Prop :=
  ∀ n, P12113044895147306941.a n = A006159 (n + 1)

end A006159

/-! ## A006159.P3460035017584488689

`A301274(a(n-1))+A004539(A348996(n+2))` with `a(0)=1`
-/

namespace A006159.P3460035017584488689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301274 (a (n - 1)).toNat + A004539 (A348996 (n + 2)).toNat

end

end A006159.P3460035017584488689

namespace A006159

/-- `A301274(a(n-1))+A004539(A348996(n+2))` -/
def P3460035017584488689.Spec : Prop :=
  ∀ n, P3460035017584488689.a n = A006159 (n + 1)

end A006159

/-! ## A006159.P4613728813757104661

`A023443(a(n-1)+1)+A004539(A348996(n+2))` with `a(0)=1`
-/

namespace A006159.P4613728813757104661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023443 (a (n - 1) + 1).toNat + A004539 (A348996 (n + 2)).toNat

end

end A006159.P4613728813757104661

namespace A006159

/-- `A023443(a(n-1)+1)+A004539(A348996(n+2))` -/
def P4613728813757104661.Spec : Prop :=
  ∀ n, P4613728813757104661.a n = A006159 (n + 1)

end A006159

/-!
# A006160: a(n)=a(a(n-5))+a(n-a(n-5)).

The programs for A006160, the canonical program `A006160.P7909384612327803077` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006160 has offset 1).

The definition of A006160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-5)-1)+a(n-a(n-5))` (program `A006160.P7909384612327803077`, by `A006160.P7909384612327803077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006160.P7909384612327803077

`a(a(n-5)-1)+a(n-a(n-5))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006160

/-- `a(a(n-5)-1)+a(n-a(n-5))` -/
def P7909384612327803077.Spec : Prop :=
  ∀ n, (P7909384612327803077.a n : ℤ) = A006160 (n + 1)

theorem P7909384612327803077.correct : P7909384612327803077.Spec := by
  intro n
  simp only [A006160, Nat.add_sub_cancel]

end A006160

/-!
# A006161: a(n)=a(a(n-1)-1)+a(n+1-a(n-1)).

The programs for A006161, the canonical program `A006161.P2072893344711999365` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006161 has offset 1).

The definition of A006161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-2)+a(n+1-a(n-1))` (program `A006161.P2072893344711999365`, by `A006161.P2072893344711999365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006161.P2072893344711999365

`a(a(n-1)-2)+a(n+1-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006161

/-- `a(a(n-1)-2)+a(n+1-a(n-1))` -/
def P2072893344711999365.Spec : Prop :=
  ∀ n, (P2072893344711999365.a n : ℤ) = A006161 (n + 1)

theorem P2072893344711999365.correct : P2072893344711999365.Spec := by
  intro n
  simp only [A006161, Nat.add_sub_cancel]

end A006161

/-! ## A006161.P4326995258514888932

`∑[A325616(A092829(3*(n+1)))]`
-/

namespace A006161.P4326995258514888932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325616 (A092829 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006161.P4326995258514888932

namespace A006161

/-- `∑[A325616(A092829(3*(n+1)))]` -/
def P4326995258514888932.Spec : Prop :=
  ∀ n, P4326995258514888932.a n = A006161 (n + 1)

end A006161

/-! ## A006161.P12184094038042579939

`∑[(A122780(n+1)%A306544(2*(n+2)))²%3]`
-/

namespace A006161.P12184094038042579939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A122780 (n + 1)) (A306544 (2 * (n + 2))) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006161.P12184094038042579939

namespace A006161

/-- `∑[(A122780(n+1)%A306544(2*(n+2)))²%3]` -/
def P12184094038042579939.Spec : Prop :=
  ∀ n, P12184094038042579939.a n = A006161 (n + 1)

end A006161

/-! ## A006161.P3861393516746652603

`∑[A117904(A001227(A224262(n+1)))]`
-/

namespace A006161.P3861393516746652603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117904 (A001227 (A224262 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006161.P3861393516746652603

namespace A006161

/-- `∑[A117904(A001227(A224262(n+1)))]` -/
def P3861393516746652603.Spec : Prop :=
  ∀ n, P3861393516746652603.a n = A006161 (n + 1)

end A006161

/-!
# A006162: a(n)=a(a(n-1)-2)+a(n+2-a(n-1)).

The programs for A006162, the canonical program `A006162.P15873305254892199480` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006162 has offset 1).

The definition of A006162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-3)+a(n+2-a(n-1))` (program `A006162.P15873305254892199480`, by `A006162.P15873305254892199480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006162.P15873305254892199480

`a(a(n-1)-3)+a(n+2-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006162

/-- `a(a(n-1)-3)+a(n+2-a(n-1))` -/
def P15873305254892199480.Spec : Prop :=
  ∀ n, (P15873305254892199480.a n : ℤ) = A006162 (n + 1)

theorem P15873305254892199480.correct : P15873305254892199480.Spec := by
  intro n
  simp only [A006162, Nat.add_sub_cancel]

end A006162

/-! ## A006162.P442817324217511840

`∑[A093719(∑[A093717(n+5)])]`
-/

namespace A006162.P442817324217511840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093717 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006162.P442817324217511840

namespace A006162

/-- `∑[A093719(∑[A093717(n+5)])]` -/
def P442817324217511840.Spec : Prop :=
  ∀ n, P442817324217511840.a n = A006162 (n + 1)

end A006162

/-! ## A006162.P10390920050352418708

`∑[A342892(A063008(n+5))]`
-/

namespace A006162.P10390920050352418708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 (A063008 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006162.P10390920050352418708

namespace A006162

/-- `∑[A342892(A063008(n+5))]` -/
def P10390920050352418708.Spec : Prop :=
  ∀ n, P10390920050352418708.a n = A006162 (n + 1)

end A006162

/-! ## A006162.P5416338710024333397

`∑[A053260(A265744(A013984(n)))]`
-/

namespace A006162.P5416338710024333397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (A265744 (A013984 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006162.P5416338710024333397

namespace A006162

/-- `∑[A053260(A265744(A013984(n)))]` -/
def P5416338710024333397.Spec : Prop :=
  ∀ n, P5416338710024333397.a n = A006162 (n + 1)

end A006162

/-!
# A006163: a(n)=a(a(n-1)-3)+a(n+3-a(n-1)).

The programs for A006163, the canonical program `A006163.P570415028209145213` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006163 has offset 1).

The definition of A006163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-4)+a(n+3-a(n-1))` (program `A006163.P570415028209145213`, by `A006163.P570415028209145213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006163.P570415028209145213

`a(a(n-1)-4)+a(n+3-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006163

/-- `a(a(n-1)-4)+a(n+3-a(n-1))` -/
def P570415028209145213.Spec : Prop :=
  ∀ n, (P570415028209145213.a n : ℤ) = A006163 (n + 1)

theorem P570415028209145213.correct : P570415028209145213.Spec := by
  intro n
  simp only [A006163, Nat.add_sub_cancel]

end A006163

/-! ## A006163.P5604778202485018067

`∑[∑{digits}[A300548(A316749(2*(n+2)))+1, #]%2]`
-/

namespace A006163.P5604778202485018067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300548 (A316749 (2 * (n + 2))).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006163.P5604778202485018067

namespace A006163

/-- `∑[∑{digits}[A300548(A316749(2*(n+2)))+1, #]%2]` -/
def P5604778202485018067.Spec : Prop :=
  ∀ n, (P5604778202485018067.a n : ℤ) = A006163 (n + 1)

end A006163

/-! ## A006163.P2043321459925186362

`∑[A230093(A274568(A137507(n)))]`
-/

namespace A006163.P2043321459925186362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A274568 (A137507 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006163.P2043321459925186362

namespace A006163

/-- `∑[A230093(A274568(A137507(n)))]` -/
def P2043321459925186362.Spec : Prop :=
  ∀ n, P2043321459925186362.a n = A006163 (n + 1)

end A006163

/-! ## A006163.P294477723161858424

`∑[A105470(A214333(n)+A114435(n+1))]`
-/

namespace A006163.P294477723161858424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105470 (A214333 n + A114435 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006163.P294477723161858424

namespace A006163

/-- `∑[A105470(A214333(n)+A114435(n+1))]` -/
def P294477723161858424.Spec : Prop :=
  ∀ n, P294477723161858424.a n = A006163 (n + 1)

end A006163

/-!
# A006164: a(n)=a(a(n-1)-4)+a(n+4-a(n-1)).

The programs for A006164, the canonical program `A006164.P1150856699958614024` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006164 has offset 1).

The definition of A006164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-5)+a(n+4-a(n-1))` (program `A006164.P1150856699958614024`, by `A006164.P1150856699958614024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006164.P1150856699958614024

`a(a(n-1)-5)+a(n+4-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006164

/-- `a(a(n-1)-5)+a(n+4-a(n-1))` -/
def P1150856699958614024.Spec : Prop :=
  ∀ n, (P1150856699958614024.a n : ℤ) = A006164 (n + 1)

theorem P1150856699958614024.correct : P1150856699958614024.Spec := by
  intro n
  simp only [A006164, Nat.add_sub_cancel]

end A006164

/-!
# A006165: a(1) = a(2) = 1; thereafter a(2n+1) = a(n+1) + a(n), a(2n) = 2a(n).

The programs for A006165, the canonical program `A006165.P7053576809501911375` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006165 has offset 1).

The definition of A006165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006165.P7053576809501911375

`n+1-a(n-a(a(n-1)-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006165

/-- `n+1-a(n-a(a(n-1)-1))` -/
def P7053576809501911375.Spec : Prop :=
  ∀ n, P7053576809501911375.a n = A006165 (n + 1)

theorem P7053576809501911375.correct : P7053576809501911375.Spec := by
  intro n
  simp only [A006165, Nat.add_sub_cancel]

end A006165

/-! ## A006165.P17149979231576627033

`n+1-A060973(n+1)`
-/

namespace A006165.P17149979231576627033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060973 (n + 1)

end

end A006165.P17149979231576627033

namespace A006165

/-- `n+1-A060973(n+1)` -/
def P17149979231576627033.Spec : Prop :=
  ∀ n, P17149979231576627033.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P10662469696617118334

`A005942(n+2)/2-(n+1)`
-/

namespace A006165.P10662469696617118334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005942 (n + 2) : ℚ) / 2 - (n + 1 : ℚ)

end

end A006165.P10662469696617118334

namespace A006165

/-- `A005942(n+2)/2-(n+1)` -/
def P10662469696617118334.Spec : Prop :=
  ∀ n, P10662469696617118334.a n = (A006165 (n + 1) : ℚ)

end A006165

/-! ## A006165.P3461224687767686588

`∑[a(floor(n/2))²]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A006165.P3461224687767686588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006165.P3461224687767686588

namespace A006165

/-- `∑[a(floor(n/2))²]` -/
def P3461224687767686588.Spec : Prop :=
  ∀ n, (P3461224687767686588.a n : ℤ) = A006165 (n + 1)

end A006165

/-! ## A006165.P4748129006929802404

`∑[floor(a(floor(n/2)))]` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006165.P4748129006929802404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006165.P4748129006929802404

namespace A006165

/-- `∑[floor(a(floor(n/2)))]` -/
def P4748129006929802404.Spec : Prop :=
  ∀ n, (P4748129006929802404.a n : ℤ) = A006165 (n + 1)

end A006165

/-! ## A006165.P12254272928687266255

`1-a(n-a(floor(n/2)))+n` with `a(0)=1`
-/

namespace A006165.P12254272928687266255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat).toNat + (n : ℤ)

end

end A006165.P12254272928687266255

namespace A006165

/-- `1-a(n-a(floor(n/2)))+n` -/
def P12254272928687266255.Spec : Prop :=
  ∀ n, P12254272928687266255.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P3702257972685773451

`1-(a(n-a(floor(n/2)))-n)` with `a(0)=1`
-/

namespace A006165.P3702257972685773451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat).toNat - (n : ℤ))

end

end A006165.P3702257972685773451

namespace A006165

/-- `1-(a(n-a(floor(n/2)))-n)` -/
def P3702257972685773451.Spec : Prop :=
  ∀ n, P3702257972685773451.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P6324100428702531635

`∑[char[lt[2*n+1, xor(n, 2*n)]]]+1`
-/

namespace A006165.P6324100428702531635
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006165.P6324100428702531635

namespace A006165

/-- `∑[char[lt[2*n+1, xor(n, 2*n)]]]+1` -/
def P6324100428702531635.Spec : Prop :=
  ∀ n, (P6324100428702531635.a n : ℤ) = A006165 (n + 1)

end A006165

/-! ## A006165.P9016348066931404566

`1-(a(floor(n-a(a(n-1)-1)))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006165.P9016348066931404566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a ((n : ℤ) - a (a (n - 1) - 1).toNat).toNat - (n : ℤ))

end

end A006165.P9016348066931404566

namespace A006165

/-- `1-(a(floor(n-a(a(n-1)-1)))-n)` -/
def P9016348066931404566.Spec : Prop :=
  ∀ n, P9016348066931404566.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P11870720543795437220

`comp[lt[2*n+1, xor(n, 2*n)]+n]+1-n`
-/

namespace A006165.P11870720543795437220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))

end

end A006165.P11870720543795437220

namespace A006165

/-- `comp[lt[2*n+1, xor(n, 2*n)]+n]+1-n` -/
def P11870720543795437220.Spec : Prop :=
  ∀ n, P11870720543795437220.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P9181228664072746713

`1-∑[floor(2/(n+1)*and(n, 2*n+1))]+n`
-/

namespace A006165.P9181228664072746713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (n + 1 : ℚ) * (Nat.land n (2 * n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A006165.P9181228664072746713

namespace A006165

/-- `1-∑[floor(2/(n+1)*and(n, 2*n+1))]+n` -/
def P9181228664072746713.Spec : Prop :=
  ∀ n, P9181228664072746713.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P2004719747902800873

`∑[char[A053644(n)+n]]`
-/

namespace A006165.P2004719747902800873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006165.P2004719747902800873

namespace A006165

/-- `∑[char[A053644(n)+n]]` -/
def P2004719747902800873.Spec : Prop :=
  ∀ n, (P2004719747902800873.a n : ℤ) = A006165 (n + 1)

end A006165

/-! ## A006165.P7673819272159377653

`∑[and(1, A145342(n+1))]`
-/

namespace A006165.P7673819272159377653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A145342 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006165.P7673819272159377653

namespace A006165

/-- `∑[and(1, A145342(n+1))]` -/
def P7673819272159377653.Spec : Prop :=
  ∀ n, P7673819272159377653.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P10569131853422960778

`A275202(n+1)-(n+1)`
-/

namespace A006165.P10569131853422960778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 1) - (n + 1 : ℤ)

end

end A006165.P10569131853422960778

namespace A006165

/-- `A275202(n+1)-(n+1)` -/
def P10569131853422960778.Spec : Prop :=
  ∀ n, P10569131853422960778.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P3921147207370137750

`A294456(n+1)+1-n`
-/

namespace A006165.P3921147207370137750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1) + (1 - (n : ℤ))

end

end A006165.P3921147207370137750

namespace A006165

/-- `A294456(n+1)+1-n` -/
def P3921147207370137750.Spec : Prop :=
  ∀ n, P3921147207370137750.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P9683883506528717734

`n+2-A166079(n+2)`
-/

namespace A006165.P9683883506528717734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A166079 (n + 2)

end

end A006165.P9683883506528717734

namespace A006165

/-- `n+2-A166079(n+2)` -/
def P9683883506528717734.Spec : Prop :=
  ∀ n, P9683883506528717734.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P9907890555293718398

`∑[1-char[A004760(n+2)]]`
-/

namespace A006165.P9907890555293718398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006165.P9907890555293718398

namespace A006165

/-- `∑[1-char[A004760(n+2)]]` -/
def P9907890555293718398.Spec : Prop :=
  ∀ n, P9907890555293718398.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P4532456494298682251

`A078881(A028310(n))`
-/

namespace A006165.P4532456494298682251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (A028310 n).toNat

end

end A006165.P4532456494298682251

namespace A006165

/-- `A078881(A028310(n))` -/
def P4532456494298682251.Spec : Prop :=
  ∀ n, P4532456494298682251.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P11360749562815249919

`A078881(n+1)+A083661(n+1)-A080791(n+1)`
-/

namespace A006165.P11360749562815249919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) + (A083661 (n + 1) - A080791 (n + 1))

end

end A006165.P11360749562815249919

namespace A006165

/-- `A078881(n+1)+A083661(n+1)-A080791(n+1)` -/
def P11360749562815249919.Spec : Prop :=
  ∀ n, P11360749562815249919.a n = A006165 (n + 1)

end A006165

/-! ## A006165.P11328280606234823281

`n+1-A352228(n+2)`
-/

namespace A006165.P11328280606234823281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A352228 (n + 2)

end

end A006165.P11328280606234823281

namespace A006165

/-- `n+1-A352228(n+2)` -/
def P11328280606234823281.Spec : Prop :=
  ∀ n, P11328280606234823281.a n = A006165 (n + 1)

end A006165

/-!
# A006166: a(0)=0, a(1)=a(2)=1; for n >= 1, a(3n+2) = 2a(n+1) + a(n), a(3n+1) = a(n+1) + 2a(n), a(3n) = 3a(n).

The programs for A006166, the canonical program `A006166.P11148542579983985411` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006166 has offset 0).

The definition of A006166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006166.P12017487436263894237

`A003605(n)-n`
-/

namespace A006166.P12017487436263894237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n - (n : ℤ)

end

end A006166.P12017487436263894237

namespace A006166

/-- `A003605(n)-n` -/
def P12017487436263894237.Spec : Prop :=
  ∀ n, P12017487436263894237.a n = A006166 n

end A006166

/-! ## A006166.P4569735944898895656

`n-A081134(A028310(n))`
-/

namespace A006166.P4569735944898895656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A081134 (A028310 n).toNat

end

end A006166.P4569735944898895656

namespace A006166

/-- `n-A081134(A028310(n))` -/
def P4569735944898895656.Spec : Prop :=
  ∀ n, P4569735944898895656.a n = A006166 n

end A006166

/-! ## A006166.P15341538067020451303

`(A003605(n)+A001844(n))%(n+1)`
-/

namespace A006166.P15341538067020451303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003605 n + A001844 n) (n + 1 : ℤ)

end

end A006166.P15341538067020451303

namespace A006166

/-- `(A003605(n)+A001844(n))%(n+1)` -/
def P15341538067020451303.Spec : Prop :=
  ∀ n, P15341538067020451303.a n = A006166 n

end A006166

/-! ## A006166.P11148542579983985411

`∪[A157671(n+1), A008585(n)]-n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006166

/-- `∪[A157671(n+1), A008585(n)]-n` -/
def P11148542579983985411.Spec : Prop :=
  ∀ n, P11148542579983985411.a n = A006166 n

theorem P11148542579983985411.correct : P11148542579983985411.Spec := by
  intro n
  simp only [A006166]

end A006166

/-! ## A006166.P10379384627520229777

`(A003605(n)+A000124(n))%∑[n+1]`
-/

namespace A006166.P10379384627520229777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003605 n + A000124 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A006166.P10379384627520229777

namespace A006166

/-- `(A003605(n)+A000124(n))%∑[n+1]` -/
def P10379384627520229777.Spec : Prop :=
  ∀ n, P10379384627520229777.a n = A006166 n

end A006166

/-! ## A006166.P8591183934998715902

`∑[Δ[A080722(n)]-1]`
-/

namespace A006166.P8591183934998715902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006166.P8591183934998715902

namespace A006166

/-- `∑[Δ[A080722(n)]-1]` -/
def P8591183934998715902.Spec : Prop :=
  ∀ n, P8591183934998715902.a n = A006166 n

end A006166

/-! ## A006166.P217518435057771462

`A080722(n+1)-(n+1)`
-/

namespace A006166.P217518435057771462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080722 (n + 1) - (n + 1 : ℤ)

end

end A006166.P217518435057771462

namespace A006166

/-- `A080722(n+1)-(n+1)` -/
def P217518435057771462.Spec : Prop :=
  ∀ n, P217518435057771462.a n = A006166 n

end A006166

/-! ## A006166.P1806394599921263257

`A024000(n+1)+A003605(n)`
-/

namespace A006166.P1806394599921263257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A003605 n

end

end A006166.P1806394599921263257

namespace A006166

/-- `A024000(n+1)+A003605(n)` -/
def P1806394599921263257.Spec : Prop :=
  ∀ n, P1806394599921263257.a n = A006166 n

end A006166

/-! ## A006166.P15680299143355361937

`A023443(A080722(n+1)-n)`
-/

namespace A006166.P15680299143355361937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080722 (n + 1) - (n : ℤ)).toNat

end

end A006166.P15680299143355361937

namespace A006166

/-- `A023443(A080722(n+1)-n)` -/
def P15680299143355361937.Spec : Prop :=
  ∀ n, P15680299143355361937.a n = A006166 n

end A006166

/-! ## A006166.P3447429131158920006

`n-A081134(A123108(2*n))`
-/

namespace A006166.P3447429131158920006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A081134 (A123108 (2 * n)).toNat

end

end A006166.P3447429131158920006

namespace A006166

/-- `n-A081134(A123108(2*n))` -/
def P3447429131158920006.Spec : Prop :=
  ∀ n, P3447429131158920006.a n = A006166 n

end A006166

/-! ## A006166.P16416771033269143647

`eq[1, A005131(A265353(n))]-n`
-/

namespace A006166.P16416771033269143647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A265353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A006166.P16416771033269143647

namespace A006166

/-- `eq[1, A005131(A265353(n))]-n` -/
def P16416771033269143647.Spec : Prop :=
  ∀ n, P16416771033269143647.a n = A006166 n

end A006166

/-! ## A006166.P1521639359032544925

`eq[1, A257075(A263273(n))]-n`
-/

namespace A006166.P1521639359032544925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A263273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A006166.P1521639359032544925

namespace A006166

/-- `eq[1, A257075(A263273(n))]-n` -/
def P1521639359032544925.Spec : Prop :=
  ∀ n, P1521639359032544925.a n = A006166 n

end A006166

/-! ## A006166.P17225389197769113223

`eq[1, A267318(A321464(n))]-n`
-/

namespace A006166.P17225389197769113223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A321464 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A006166.P17225389197769113223

namespace A006166

/-- `eq[1, A267318(A321464(n))]-n` -/
def P17225389197769113223.Spec : Prop :=
  ∀ n, P17225389197769113223.a n = A006166 n

end A006166

/-! ## A006166.P10924909378937476388

`eq[1, A038500(A265341(n))]-n`
-/

namespace A006166.P10924909378937476388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A265341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A006166.P10924909378937476388

namespace A006166

/-- `eq[1, A038500(A265341(n))]-n` -/
def P10924909378937476388.Spec : Prop :=
  ∀ n, P10924909378937476388.a n = A006166 n

end A006166

/-! ## A006166.P9692818437037609460

`(A108951(n+1)+A080722(n+1))%(n+1)`
-/

namespace A006166.P9692818437037609460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108951 (n + 1) + A080722 (n + 1)) (n + 1 : ℤ)

end

end A006166.P9692818437037609460

namespace A006166

/-- `(A108951(n+1)+A080722(n+1))%(n+1)` -/
def P9692818437037609460.Spec : Prop :=
  ∀ n, P9692818437037609460.a n = A006166 n

end A006166

/-! ## A006166.P16784498197368756565

`A002262(A003605(n)+C(n, 2))`
-/

namespace A006166.P16784498197368756565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A003605 n + (Nat.choose n 2 : ℤ)).toNat

end

end A006166.P16784498197368756565

namespace A006166

/-- `A002262(A003605(n)+C(n, 2))` -/
def P16784498197368756565.Spec : Prop :=
  ∀ n, P16784498197368756565.a n = A006166 n

end A006166

/-! ## A006166.P894462853780259935

`A002262(A003605(n)+A000124(n))`
-/

namespace A006166.P894462853780259935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A003605 n + A000124 n).toNat

end

end A006166.P894462853780259935

namespace A006166

/-- `A002262(A003605(n)+A000124(n))` -/
def P894462853780259935.Spec : Prop :=
  ∀ n, P894462853780259935.a n = A006166 n

end A006166

/-! ## A006166.P15871092952415225404

`A196199(n²)+A003605(n)`
-/

namespace A006166.P15871092952415225404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + A003605 n

end

end A006166.P15871092952415225404

namespace A006166

/-- `A196199(n²)+A003605(n)` -/
def P15871092952415225404.Spec : Prop :=
  ∀ n, P15871092952415225404.a n = A006166 n

end A006166

/-!
# A006167: Number of factorization patterns of polynomials of degree n over F_2.

The programs for A006167, there is no canonical definition to state claims against.
-/

/-! ## A006167.P12145028033568454175

`A113619(A261037(n+2))`
-/

namespace A006167.P12145028033568454175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (A261037 (n + 2)).toNat

end

end A006167.P12145028033568454175

/-! ## A006167.P7803028243411710620

`A089958(3*(n+1))-A185284(A174048(n+1))`
-/

namespace A006167.P7803028243411710620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089958 (3 * (n + 1)) - A185284 (A174048 (n + 1)).toNat

end

end A006167.P7803028243411710620

/-! ## A006167.P4939977045597254281

`A260003(A129374(n+1))`
-/

namespace A006167.P4939977045597254281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260003 (A129374 (n + 1)).toNat

end

end A006167.P4939977045597254281

/-! ## A006167.P14294481939488705351

`A325784(A137630(n+1))`
-/

namespace A006167.P14294481939488705351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325784 (A137630 (n + 1)).toNat

end

end A006167.P14294481939488705351

/-! ## A006167.P1724559948247528036

`A123068(A279328(n+1)+1)`
-/

namespace A006167.P1724559948247528036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A279328 (n + 1) + 1).toNat

end

end A006167.P1724559948247528036

/-!
# A006168: Number of factorization patterns of polynomials of degree n over F_3.

The programs for A006168, there is no canonical definition to state claims against.
-/

/-! ## A006168.P1746964287754517261

`record[A327042(A014589(n))]`
-/

namespace A006168.P1746964287754517261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327042 (A014589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006168.P1746964287754517261

/-! ## A006168.P17387782579910072818

`record[A327042(A106486(n))]`
-/

namespace A006168.P17387782579910072818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327042 (A106486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006168.P17387782579910072818

/-! ## A006168.P17462352725446221162

`A327042(A062399(n)+1)`
-/

namespace A006168.P17462352725446221162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327042 (A062399 n + 1).toNat

end

end A006168.P17462352725446221162

/-! ## A006168.P254790043401379793

`A327042(A120126(n)+1)`
-/

namespace A006168.P254790043401379793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327042 (A120126 n + 1).toNat

end

end A006168.P254790043401379793

/-! ## A006168.P14311448088824161605

`A327042(∑[∑[A151937(n)]])`
-/

namespace A006168.P14311448088824161605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006168.P14311448088824161605

/-!
# A006169: Number of factorization patterns of polynomials of degree n over F_4.

The programs for A006169, there is no canonical definition to state claims against.
-/

/-! ## A006169.P12887516876493427244

`A327043(A032555(n+1))`
-/

namespace A006169.P12887516876493427244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327043 (A032555 (n + 1)).toNat

end

end A006169.P12887516876493427244

/-! ## A006169.P10891899622154326033

`A327043(A032559(n+1))`
-/

namespace A006169.P10891899622154326033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327043 (A032559 (n + 1)).toNat

end

end A006169.P10891899622154326033

/-! ## A006169.P8687816229079959467

`A327043(A077739(n+1))`
-/

namespace A006169.P8687816229079959467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327043 (A077739 (n + 1)).toNat

end

end A006169.P8687816229079959467

/-! ## A006169.P6736598769761216883

`A327043(A078213(n+1))`
-/

namespace A006169.P6736598769761216883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327043 (A078213 (n + 1)).toNat

end

end A006169.P6736598769761216883

/-! ## A006169.P18321025911848489950

`A327043(A082217(n+1))`
-/

namespace A006169.P18321025911848489950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327043 (A082217 (n + 1)).toNat

end

end A006169.P18321025911848489950

/-!
# A006170: Number of factorization patterns of polynomials of degree n over F_5.

The programs for A006170, there is no canonical definition to state claims against.
-/

/-! ## A006170.P13356055968860795933

`A327044(n+1)+A102683(A056487(n))`
-/

namespace A006170.P13356055968860795933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327044 (n + 1) + A102683 (A056487 n).toNat

end

end A006170.P13356055968860795933

/-! ## A006170.P9872151952628166835

`A327044(n+1)+A171737(A171699(n))`
-/

namespace A006170.P9872151952628166835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327044 (n + 1) + A171737 (A171699 n).toNat

end

end A006170.P9872151952628166835

/-! ## A006170.P6214442416360670350

`A327044(n+1)+A277143(A147586(n))`
-/

namespace A006170.P6214442416360670350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327044 (n + 1) + A277143 (A147586 n).toNat

end

end A006170.P6214442416360670350

/-! ## A006170.P11117494104512271811

`A327044(A062399(n)+1)`
-/

namespace A006170.P11117494104512271811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327044 (A062399 n + 1).toNat

end

end A006170.P11117494104512271811

/-! ## A006170.P7167419089170860492

`A327044(n+1)%A045315(A127345(n+3)+1)`
-/

namespace A006170.P7167419089170860492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327044 (n + 1)) (A045315 (A127345 (n + 3) + 1).toNat)

end

end A006170.P7167419089170860492

/-!
# A006171: Number of factorization patterns of polynomials of degree n over integers.

The programs for A006171, there is no canonical definition to state claims against.
-/

/-! ## A006171.P14053185143196761875

`A321876(∑[n]+n)`
-/

namespace A006171.P14053185143196761875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006171.P14053185143196761875

/-! ## A006171.P1231758141028779759

`A321876(A000096(n))%Δ[5^n]`
-/

namespace A006171.P1231758141028779759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321876 (A000096 n).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A006171.P1231758141028779759

/-! ## A006171.P4247431992717647754

`gcd(A000038(n), A321876(A000096(n)))`
-/

namespace A006171.P4247431992717647754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321876 (A000096 n).toNat)

end

end A006171.P4247431992717647754

/-! ## A006171.P33804817724211066

`A000010(ceil(1/(n+1)))*A321876(A000096(n))`
-/

namespace A006171.P33804817724211066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A321876 (A000096 n).toNat

end

end A006171.P33804817724211066

/-! ## A006171.P1469986525498710586

`A006530(ceil(1/(n+1)))*A321876(A000096(n))`
-/

namespace A006171.P1469986525498710586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈1 / (n + 1 : ℚ)⌉.toNat * A321876 (A000096 n).toNat

end

end A006171.P1469986525498710586

/-! ## A006171.P14210957899767362729

`A020639(ceil(1/(n+1)))*A321876(A000096(n))`
-/

namespace A006171.P14210957899767362729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈1 / (n + 1 : ℚ)⌉.toNat * A321876 (A000096 n).toNat

end

end A006171.P14210957899767362729

/-!
# A006172: a(n) = 1 + F(2*n+1) + (-1)^n*L(n).

The programs for A006172, the canonical program `A006172.P15277379530532349682` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006172 has offset 0).

The definition of A006172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006172.P15277379530532349682

`a(n-2)+A192908(n+1)-a(n-1)` with `a(0)=4, a(1)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006172

/-- `a(n-2)+A192908(n+1)-a(n-1)` -/
def P15277379530532349682.Spec : Prop :=
  ∀ n, P15277379530532349682.a n = A006172 n

theorem P15277379530532349682.correct : P15277379530532349682.Spec := by
  intro n
  simp only [A006172]

end A006172

/-! ## A006172.P17941870780404694245

`a(n-2)+A166012(2*n)-a(n-1)` with `a(0)=4, a(1)=2`
-/

namespace A006172.P17941870780404694245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 2) + (A166012 (2 * n) - a (n - 1))

end

end A006172.P17941870780404694245

namespace A006172

/-- `a(n-2)+A166012(2*n)-a(n-1)` -/
def P17941870780404694245.Spec : Prop :=
  ∀ n, P17941870780404694245.a n = A006172 n

end A006172

/-! ## A006172.P7379847912759587718

`abs(A099925(n)+A099496(n))`
-/

namespace A006172.P7379847912759587718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099925 n + A099496 n|

end

end A006172.P7379847912759587718

namespace A006172

/-- `abs(A099925(n)+A099496(n))` -/
def P7379847912759587718.Spec : Prop :=
  ∀ n, P7379847912759587718.a n = A006172 n

end A006172

/-! ## A006172.P14581561731737719017

`∑[A075193(n)]+A246640(n)+1`
-/

namespace A006172.P14581561731737719017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A246640 n + 1)

end

end A006172.P14581561731737719017

namespace A006172

/-- `∑[A075193(n)]+A246640(n)+1` -/
def P14581561731737719017.Spec : Prop :=
  ∀ n, P14581561731737719017.a n = A006172 n

end A006172

/-! ## A006172.P9306061266325398194

`A001519(n+1)+A061084(n+1)+1`
-/

namespace A006172.P9306061266325398194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A061084 (n + 1) + 1)

end

end A006172.P9306061266325398194

namespace A006172

/-- `A001519(n+1)+A061084(n+1)+1` -/
def P9306061266325398194.Spec : Prop :=
  ∀ n, P9306061266325398194.a n = A006172 n

end A006172

/-! ## A006172.P1479266606070383908

`A061084(n+1)+A001611(2*n+1)`
-/

namespace A006172.P1479266606070383908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A001611 (2 * n + 1)

end

end A006172.P1479266606070383908

namespace A006172

/-- `A061084(n+1)+A001611(2*n+1)` -/
def P1479266606070383908.Spec : Prop :=
  ∀ n, P1479266606070383908.a n = A006172 n

end A006172

/-! ## A006172.P14591960065134805491

`A108362(2*n)+A061084(n+1)+1`
-/

namespace A006172.P14591960065134805491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (2 * n) + (A061084 (n + 1) + 1)

end

end A006172.P14591960065134805491

namespace A006172

/-- `A108362(2*n)+A061084(n+1)+1` -/
def P14591960065134805491.Spec : Prop :=
  ∀ n, P14591960065134805491.a n = A006172 n

end A006172

/-! ## A006172.P12178614090990643318

`A032908(n+1)+A000032(n)/(-1)^n`
-/

namespace A006172.P12178614090990643318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032908 (n + 1) : ℚ) + (A000032 n : ℚ) / ((-1) ^ n : ℚ)

end

end A006172.P12178614090990643318

namespace A006172

/-- `A032908(n+1)+A000032(n)/(-1)^n` -/
def P12178614090990643318.Spec : Prop :=
  ∀ n, P12178614090990643318.a n = (A006172 n : ℚ)

end A006172

/-! ## A006172.P3582279495172765348

`A000045(2*n+1)+A061084(n+1)+1`
-/

namespace A006172.P3582279495172765348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + (A061084 (n + 1) + 1)

end

end A006172.P3582279495172765348

namespace A006172

/-- `A000045(2*n+1)+A061084(n+1)+1` -/
def P3582279495172765348.Spec : Prop :=
  ∀ n, P3582279495172765348.a n = A006172 n

end A006172

/-! ## A006172.P436046228927559387

`A005247(2*n+1)+A061084(n+1)+1`
-/

namespace A006172.P436046228927559387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n + 1) + (A061084 (n + 1) + 1)

end

end A006172.P436046228927559387

namespace A006172

/-- `A005247(2*n+1)+A061084(n+1)+1` -/
def P436046228927559387.Spec : Prop :=
  ∀ n, P436046228927559387.a n = A006172 n

end A006172

/-! ## A006172.P8116331648155633957

`A135992(2*(n+1))+A061084(n+1)+1`
-/

namespace A006172.P8116331648155633957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135992 (2 * (n + 1)) + (A061084 (n + 1) + 1)

end

end A006172.P8116331648155633957

namespace A006172

/-- `A135992(2*(n+1))+A061084(n+1)+1` -/
def P8116331648155633957.Spec : Prop :=
  ∀ n, P8116331648155633957.a n = A006172 n

end A006172

/-! ## A006172.P10259833902387150298

`A061084(n+1)+A005247(n+1)*A005247(n)`
-/

namespace A006172.P10259833902387150298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A005247 (n + 1) * A005247 n

end

end A006172.P10259833902387150298

namespace A006172

/-- `A061084(n+1)+A005247(n+1)*A005247(n)` -/
def P10259833902387150298.Spec : Prop :=
  ∀ n, P10259833902387150298.a n = A006172 n

end A006172

/-!
# A006173: Witt vector *2!.

The programs for A006173, there is no canonical definition to state claims against.
-/

/-! ## A006173.P4002653199973448530

`A001670(A226013(n))-n`
-/

namespace A006173.P4002653199973448530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A226013 n).toNat - (n : ℤ)

end

end A006173.P4002653199973448530

/-! ## A006173.P7712294002442626561

`A384175(A385814((n+2)*2*n))`
-/

namespace A006173.P7712294002442626561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384175 (A385814 ((n + 2) * (2 * n))).toNat

end

end A006173.P7712294002442626561

/-!
# A006177: Witt vector *2!/2!.

The programs for A006177, there is no canonical definition to state claims against.
-/

/-! ## A006177.P2175678524260418432

`A211515(A365516(n))`
-/

namespace A006177.P2175678524260418432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A365516 n).toNat

end

end A006177.P2175678524260418432

/-! ## A006177.P14532818085827395955

`A211515(A148895(n)+n)`
-/

namespace A006177.P14532818085827395955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A148895 n + (n : ℤ)).toNat

end

end A006177.P14532818085827395955

/-! ## A006177.P16532067175067782802

`A211515(A392978(n)+A181659(n+1))`
-/

namespace A006177.P16532067175067782802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A392978 n + A181659 (n + 1)).toNat

end

end A006177.P16532067175067782802

/-!
# A006181: Maximal partial Steiner triple systems of order n.

The programs for A006181, there is no canonical definition to state claims against.
-/

/-! ## A006181.P14174555553451223098

`A324750(A324736(n)+A045778(n+5))`
-/

namespace A006181.P14174555553451223098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (A324736 n + A045778 (n + 5)).toNat

end

end A006181.P14174555553451223098

/-! ## A006181.P4990443556639509212

`A324750(A324839(n+1)+A000720(3*(n+1)))`
-/

namespace A006181.P4990443556639509212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (A324839 (n + 1) + A000720 (3 * (n + 1))).toNat

end

end A006181.P4990443556639509212

/-!
# A006182: Deficiencies of partial Steiner triple systems of order n.

The programs for A006182, there is no canonical definition to state claims against.
-/

/-! ## A006182.P15562117255854061684

`A035372(A018057(n))`
-/

namespace A006182.P15562117255854061684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035372 (A018057 n).toNat

end

end A006182.P15562117255854061684

/-! ## A006182.P12747751610165103588

`A256106(A148777(n))`
-/

namespace A006182.P12747751610165103588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256106 (A148777 n).toNat

end

end A006182.P12747751610165103588

/-! ## A006182.P10194890249342687546

`A280253(A304937(n))`
-/

namespace A006182.P10194890249342687546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280253 (A304937 n).toNat

end

end A006182.P10194890249342687546

/-! ## A006182.P3320609106848549482

`A023438(A011858(n))+1`
-/

namespace A006182.P3320609106848549482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 (A011858 n).toNat + 1

end

end A006182.P3320609106848549482

/-! ## A006182.P9550796511739541665

`A035372(A023361(n+1))`
-/

namespace A006182.P9550796511739541665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035372 (A023361 (n + 1)).toNat

end

end A006182.P9550796511739541665

/-!
# A006183: a(n) = (n+1)*a(n-1) + (2-n)*a(n-2).

The programs for A006183, the canonical program `A006183.P10314195852019397579` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006183 has offset 1).

The definition of A006183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*a(n-1)+(2-n)*a(n-2)` (program `A006183.P10314195852019397579`, by `A006183.P10314195852019397579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006183.P10314195852019397579

`(n+1)*a(n-1)+(2-n)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006183

/-- `(n+1)*a(n-1)+(2-n)*a(n-2)` -/
def P10314195852019397579.Spec : Prop :=
  ∀ n, P10314195852019397579.a n = A006183 (n + 1)

theorem P10314195852019397579.correct : P10314195852019397579.Spec := by
  intro n
  simp only [A006183, Nat.add_sub_cancel]

end A006183

/-! ## A006183.P4618449334286984431

`Δ[(n-1)*a(n-1)+n]` with `a(0)=0`
-/

namespace A006183.P4618449334286984431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006183.P4618449334286984431

namespace A006183

/-- `Δ[(n-1)*a(n-1)+n]` -/
def P4618449334286984431.Spec : Prop :=
  ∀ n, P4618449334286984431.a n = A006183 (n + 1)

end A006183

/-! ## A006183.P15441187432933439204

`Δ[n-(1-n)*a(n-1)]` with `a(0)=0`
-/

namespace A006183.P15441187432933439204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006183.P15441187432933439204

namespace A006183

/-- `Δ[n-(1-n)*a(n-1)]` -/
def P15441187432933439204.Spec : Prop :=
  ∀ n, P15441187432933439204.a n = A006183 (n + 1)

end A006183

/-! ## A006183.P5657182918318996331

`∏[n+1-(n-2)/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A006183.P5657182918318996331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℚ) - ((n : ℤ) - 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006183.P5657182918318996331

namespace A006183

/-- `∏[n+1-(n-2)/a(n-1)]` -/
def P5657182918318996331.Spec : Prop :=
  ∀ n, P5657182918318996331.a n = (A006183 (n + 1) : ℚ)

end A006183

/-! ## A006183.P10216531871288881822

`Δ[lcm(n-1, a(n-1))+n+2]/2` with `a(0)=1`
-/

namespace A006183.P10216531871288881822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm ((n : ℤ) - 1) (f1 (n - 1) : ℤ) + (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A006183.P10216531871288881822

namespace A006183

/-- `Δ[lcm(n-1, a(n-1))+n+2]/2` -/
def P10216531871288881822.Spec : Prop :=
  ∀ n, P10216531871288881822.a n = (A006183 (n + 1) : ℚ)

end A006183

/-! ## A006183.P14087633412100336864

`Δ[A054091(n)]`
-/

namespace A006183.P14087633412100336864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006183.P14087633412100336864

namespace A006183

/-- `Δ[A054091(n)]` -/
def P14087633412100336864.Spec : Prop :=
  ∀ n, P14087633412100336864.a n = A006183 (n + 1)

end A006183

/-! ## A006183.P11268218231154806203

`Δ[record[A054090(n)]]`
-/

namespace A006183.P11268218231154806203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006183.P11268218231154806203

namespace A006183

/-- `Δ[record[A054090(n)]]` -/
def P11268218231154806203.Spec : Prop :=
  ∀ n, P11268218231154806203.a n = A006183 (n + 1)

end A006183

/-! ## A006183.P12675821842127272574

`A054090(∑[n+2]+3)`
-/

namespace A006183.P12675821842127272574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054090 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A006183.P12675821842127272574

namespace A006183

/-- `A054090(∑[n+2]+3)` -/
def P12675821842127272574.Spec : Prop :=
  ∀ n, P12675821842127272574.a n = A006183 (n + 1)

end A006183

/-! ## A006183.P7922490898145428723

`floor(acot(n)+Δ[A111063(n)])`
-/

namespace A006183.P7922490898145428723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A006183.P7922490898145428723

namespace A006183

/-- `floor(acot(n)+Δ[A111063(n)])` -/
def P7922490898145428723.Spec : Prop :=
  ∀ n, P7922490898145428723.a n = A006183 (n + 1)

end A006183

/-! ## A006183.P17453059146810439999

`Δ[A019461(A004273(n))]`
-/

namespace A006183.P17453059146810439999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006183.P17453059146810439999

namespace A006183

/-- `Δ[A019461(A004273(n))]` -/
def P17453059146810439999.Spec : Prop :=
  ∀ n, P17453059146810439999.a n = A006183 (n + 1)

end A006183

/-!
# A006184: Number of cycles in the complement of a path.

The programs for A006184, there is no canonical definition to state claims against.
-/

/-! ## A006184.P1869953346963786547

`∑[A216778(abs(2-n)+1)]`
-/

namespace A006184.P1869953346963786547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216778 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006184.P1869953346963786547

/-! ## A006184.P1002353254447086816

`A065715(n!-gcd(1-n, floor(n/2)))`
-/

namespace A006184.P1002353254447086816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (Nat.factorial n - Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A006184.P1002353254447086816

/-! ## A006184.P3160656325862838712

`A280830(A045906(n))`
-/

namespace A006184.P3160656325862838712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280830 (A045906 n).toNat

end

end A006184.P3160656325862838712

/-! ## A006184.P4942126572346596642

`A337681(A151381(n))`
-/

namespace A006184.P4942126572346596642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337681 (A151381 n).toNat

end

end A006184.P4942126572346596642

/-!
# A006188: Maximal cycles in trivalent graphs.

The programs for A006188, there is no canonical definition to state claims against.
-/

/-! ## A006188.P12123412390314878224

`2*a(n-1)+3-2^ceil(log2(n+1))` with `a(0)=7`
-/

namespace A006188.P12123412390314878224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) + 3 - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A006188.P12123412390314878224

/-!
# A006189: Number of self-avoiding walks of any length from NW to SW corners of a grid or lattice with n rows and 3 columns.

The programs for A006189, the canonical program `A006189.P1038175083591752185` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006189 has offset 0).

The definition of A006189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006189.P1038175083591752185

`4*a(n-1)-3*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006189

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)+a(n-4)` -/
def P1038175083591752185.Spec : Prop :=
  ∀ n, P1038175083591752185.a n = A006189 n

theorem P1038175083591752185.correct : P1038175083591752185.Spec := by
  intro n
  simp only [A006189]

end A006189

/-! ## A006189.P698362805786441983

`ogf((1-3x+2x^2)/(1-4x+3x^2-2x^3-x^4))`
-/

namespace A006189.P698362805786441983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -4, 3, -2, -1] n

end

end A006189.P698362805786441983

namespace A006189

/-- `ogf((1-3x+2x^2)/(1-4x+3x^2-2x^3-x^4))` -/
def P698362805786441983.Spec : Prop :=
  ∀ n, P698362805786441983.a n = A006189 n

end A006189

/-! ## A006189.P6747139676961839329

`A006191(n+2)-A003688(n+1)`
-/

namespace A006189.P6747139676961839329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006191 (n + 2) - A003688 (n + 1)

end

end A006189.P6747139676961839329

namespace A006189

/-- `A006191(n+2)-A003688(n+1)` -/
def P6747139676961839329.Spec : Prop :=
  ∀ n, P6747139676961839329.a n = A006189 n

end A006189

/-! ## A006189.P913673385501751431

`∑[2*A052924(n)-A006192(n+1)]`
-/

namespace A006189.P913673385501751431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052924 n - A006192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006189.P913673385501751431

namespace A006189

/-- `∑[2*A052924(n)-A006192(n+1)]` -/
def P913673385501751431.Spec : Prop :=
  ∀ n, P913673385501751431.a n = A006189 n

end A006189

/-! ## A006189.P7451931423421170280

`Δ[A006192(n+1)-∑[A052924(n)]]`
-/

namespace A006189.P7451931423421170280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006192 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006189.P7451931423421170280

namespace A006189

/-- `Δ[A006192(n+1)-∑[A052924(n)]]` -/
def P7451931423421170280.Spec : Prop :=
  ∀ n, P7451931423421170280.a n = A006189 n

end A006189

/-! ## A006189.P14425513476625778943

`Δ[A006192(n+1)-A006190(n+1)]`
-/

namespace A006189.P14425513476625778943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006192 (n + 1) - A006190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006189.P14425513476625778943

namespace A006189

/-- `Δ[A006192(n+1)-A006190(n+1)]` -/
def P14425513476625778943.Spec : Prop :=
  ∀ n, P14425513476625778943.a n = A006189 n

end A006189

/-! ## A006189.P289287763450596263

`Δ[A006192(n+1)]-A052924(n+1)`
-/

namespace A006189.P289287763450596263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052924 (n + 1)

end

end A006189.P289287763450596263

namespace A006189

/-- `Δ[A006192(n+1)]-A052924(n+1)` -/
def P289287763450596263.Spec : Prop :=
  ∀ n, P289287763450596263.a n = A006189 n

end A006189

/-!
# A006190: a(n) = 3*a(n-1) + a(n-2), with a(0)=0, a(1)=1.

The programs for A006190, the canonical program `A006190.P12879276129277905653` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006190 has offset 0).

The definition of A006190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A006190.P12879276129277905653`, by `A006190.P12879276129277905653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006190.P12879276129277905653

`3*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006190

/-- `3*a(n-1)+a(n-2)` -/
def P12879276129277905653.Spec : Prop :=
  ∀ n, (P12879276129277905653.a n : ℤ) = A006190 n

theorem P12879276129277905653.correct : P12879276129277905653.Spec := by
  intro n
  simp only [A006190]

end A006190

/-! ## A006190.P9588415618610976086

`((3+sqrt(13))^n-(3-sqrt(13))^n)/(2^n*sqrt(13))`
-/

namespace A006190.P9588415618610976086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (13 : ℝ)) ^ n - (3 - Real.sqrt (13 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (13 : ℝ))

end

end A006190.P9588415618610976086

namespace A006190

/-- `((3+sqrt(13))^n-(3-sqrt(13))^n)/(2^n*sqrt(13))` -/
def P9588415618610976086.Spec : Prop :=
  ∀ n, P9588415618610976086.a n = (A006190 n : ℝ)

end A006190

/-! ## A006190.P6728822989176757620

`ogf(x/(1-3x-x^2))`
-/

namespace A006190.P6728822989176757620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -1] n

end

end A006190.P6728822989176757620

namespace A006190

/-- `ogf(x/(1-3x-x^2))` -/
def P6728822989176757620.Spec : Prop :=
  ∀ n, P6728822989176757620.a n = A006190 n

end A006190

/-! ## A006190.P12876983495866731448

`3*a(n-1)-floor(-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006190.P12876983495866731448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - (-a (n - 2))

end

end A006190.P12876983495866731448

namespace A006190

/-- `3*a(n-1)-floor(-a(n-2))` -/
def P12876983495866731448.Spec : Prop :=
  ∀ n, P12876983495866731448.a n = A006190 n

end A006190

/-! ## A006190.P6736495348285705570

`3-(3*(1-a(n-1))-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A006190.P6736495348285705570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A006190.P6736495348285705570

namespace A006190

/-- `3-(3*(1-a(n-1))-a(n-2))` -/
def P6736495348285705570.Spec : Prop :=
  ∀ n, P6736495348285705570.a n = A006190 n

end A006190

/-! ## A006190.P16425694565352622903

`a(n-2)+a(n-1)/(1-2/3)` with `a(0)=0, a(1)=1`
-/

namespace A006190.P16425694565352622903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A006190.P16425694565352622903

namespace A006190

/-- `a(n-2)+a(n-1)/(1-2/3)` -/
def P16425694565352622903.Spec : Prop :=
  ∀ n, P16425694565352622903.a n = (A006190 n : ℚ)

end A006190

/-! ## A006190.P6223365084056177667

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A006190.P6223365084056177667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A006190.P6223365084056177667

namespace A006190

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P6223365084056177667.Spec : Prop :=
  ∀ n, (P6223365084056177667.a n : ℤ) = A006190 n

theorem P6223365084056177667.correct : P6223365084056177667.Spec := by
  intro n
  simp only [A006190, Nat.add_sub_cancel, A006190.P6223365084056177667.a, A006190.P12879276129277905653.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006190

/-! ## A006190.P9242512958901485231

`A305889(2*n)`
-/

namespace A006190.P9242512958901485231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n)

end

end A006190.P9242512958901485231

namespace A006190

/-- `A305889(2*n)` -/
def P9242512958901485231.Spec : Prop :=
  ∀ n, P9242512958901485231.a n = A006190 n

end A006190

/-! ## A006190.P7062336098262638769

`A249579(4*n)`
-/

namespace A006190.P7062336098262638769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n)

end

end A006190.P7062336098262638769

namespace A006190

/-- `A249579(4*n)` -/
def P7062336098262638769.Spec : Prop :=
  ∀ n, P7062336098262638769.a n = A006190 n

end A006190

/-! ## A006190.P3945076112329685610

`A107855(2*(n+2))`
-/

namespace A006190.P3945076112329685610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 2))

end

end A006190.P3945076112329685610

namespace A006190

/-- `A107855(2*(n+2))` -/
def P3945076112329685610.Spec : Prop :=
  ∀ n, P3945076112329685610.a n = A006190 n

end A006190

/-! ## A006190.P13901297433007915092

`record[Δ[A249579(n+1)]]`
-/

namespace A006190.P13901297433007915092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006190.P13901297433007915092

namespace A006190

/-- `record[Δ[A249579(n+1)]]` -/
def P13901297433007915092.Spec : Prop :=
  ∀ n, P13901297433007915092.a n = A006190 n

end A006190

/-! ## A006190.P13810557096381583091

`ceil((A052991(n)-1)/2)`
-/

namespace A006190.P13810557096381583091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052991 n - 1 : ℚ) / 2⌉

end

end A006190.P13810557096381583091

namespace A006190

/-- `ceil((A052991(n)-1)/2)` -/
def P13810557096381583091.Spec : Prop :=
  ∀ n, P13810557096381583091.a n = A006190 n

end A006190

/-! ## A006190.P2912844658314254059

`record[A107855(A018252(n+2))]`
-/

namespace A006190.P2912844658314254059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006190.P2912844658314254059

namespace A006190

/-- `record[A107855(A018252(n+2))]` -/
def P2912844658314254059.Spec : Prop :=
  ∀ n, P2912844658314254059.a n = A006190 n

end A006190

/-! ## A006190.P9235950405402989956

`floor(A052906(n)/3)`
-/

namespace A006190.P9235950405402989956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052906 n : ℚ) / 3⌋

end

end A006190.P9235950405402989956

namespace A006190

/-- `floor(A052906(n)/3)` -/
def P9235950405402989956.Spec : Prop :=
  ∀ n, P9235950405402989956.a n = A006190 n

end A006190

/-! ## A006190.P8900451581429771561

`Δ[A033538(n)/4]`
-/

namespace A006190.P8900451581429771561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033538 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006190.P8900451581429771561

namespace A006190

/-- `Δ[A033538(n)/4]` -/
def P8900451581429771561.Spec : Prop :=
  ∀ n, P8900451581429771561.a n = (A006190 n : ℚ)

end A006190

/-! ## A006190.P11366955869237141526

`A052906(n)-A052991(n)`
-/

namespace A006190.P11366955869237141526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 n - A052991 n

end

end A006190.P11366955869237141526

namespace A006190

/-- `A052906(n)-A052991(n)` -/
def P11366955869237141526.Spec : Prop :=
  ∀ n, P11366955869237141526.a n = A006190 n

end A006190

/-! ## A006190.P15199822171560109066

`A180148(n)%A052924(n)`
-/

namespace A006190.P15199822171560109066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180148 n) (A052924 n)

end

end A006190.P15199822171560109066

namespace A006190

/-- `A180148(n)%A052924(n)` -/
def P15199822171560109066.Spec : Prop :=
  ∀ n, P15199822171560109066.a n = A006190 n

end A006190

/-! ## A006190.P6331235194923127040

`∑[A052906(n)-A052924(n)]`
-/

namespace A006190.P6331235194923127040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 n - A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006190.P6331235194923127040

namespace A006190

/-- `∑[A052906(n)-A052924(n)]` -/
def P6331235194923127040.Spec : Prop :=
  ∀ n, P6331235194923127040.a n = A006190 n

end A006190

/-! ## A006190.P9246101967908074304

`A108300(n)-A003688(n+1)`
-/

namespace A006190.P9246101967908074304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 n - A003688 (n + 1)

end

end A006190.P9246101967908074304

namespace A006190

/-- `A108300(n)-A003688(n+1)` -/
def P9246101967908074304.Spec : Prop :=
  ∀ n, P9246101967908074304.a n = A006190 n

end A006190

/-! ## A006190.P16279522894955661354

`A052991(n+1)-A180148(n)`
-/

namespace A006190.P16279522894955661354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 (n + 1) - A180148 n

end

end A006190.P16279522894955661354

namespace A006190

/-- `A052991(n+1)-A180148(n)` -/
def P16279522894955661354.Spec : Prop :=
  ∀ n, P16279522894955661354.a n = A006190 n

end A006190

/-!
# A006191: Number of paths on square lattice.

The programs for A006191, the canonical program `A006191.P15504944102123193121` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006191 has offset 1).

The definition of A006191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006191.P15504944102123193121

`4*a(n-1)-3*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=16`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006191

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)+a(n-4)` -/
def P15504944102123193121.Spec : Prop :=
  ∀ n, P15504944102123193121.a n = A006191 (n + 1)

theorem P15504944102123193121.correct : P15504944102123193121.Spec := by
  intro n
  simp only [A006191, Nat.add_sub_cancel]

end A006191

/-! ## A006191.P827453172116586521

`ogf((-1+2x)/(-1+4x-3x^2+2x^3+x^4))`
-/

namespace A006191.P827453172116586521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 3, -2, -1] n

end

end A006191.P827453172116586521

namespace A006191

/-- `ogf((-1+2x)/(-1+4x-3x^2+2x^3+x^4))` -/
def P827453172116586521.Spec : Prop :=
  ∀ n, P827453172116586521.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P13461779562068883927

`∑[A006189(n)]`
-/

namespace A006191.P13461779562068883927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006191.P13461779562068883927

namespace A006191

/-- `∑[A006189(n)]` -/
def P13461779562068883927.Spec : Prop :=
  ∀ n, P13461779562068883927.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P12067882794450018274

`A003688(n+1)-Δ[A006189(n)]`
-/

namespace A006191.P12067882794450018274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003688 (n + 1) - (f1 (n + 1) - f1 n)

end

end A006191.P12067882794450018274

namespace A006191

/-- `A003688(n+1)-Δ[A006189(n)]` -/
def P12067882794450018274.Spec : Prop :=
  ∀ n, P12067882794450018274.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P2047197327199280064

`(A128834(n+1)+A006190(n+1))/2`
-/

namespace A006191.P2047197327199280064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 (n + 1) + A006190 (n + 1) : ℚ) / 2

end

end A006191.P2047197327199280064

namespace A006191

/-- `(A128834(n+1)+A006190(n+1))/2` -/
def P2047197327199280064.Spec : Prop :=
  ∀ n, P2047197327199280064.a n = (A006191 (n + 1) : ℚ)

end A006191

/-! ## A006191.P1365945733809384631

`A003688(n+1)+A006189(n)-A006189(n+1)`
-/

namespace A006191.P1365945733809384631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003688 (n + 1) + (A006189 n - A006189 (n + 1))

end

end A006191.P1365945733809384631

namespace A006191

/-- `A003688(n+1)+A006189(n)-A006189(n+1)` -/
def P1365945733809384631.Spec : Prop :=
  ∀ n, P1365945733809384631.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P14647169840627153221

`A006192(n+1)+∑[A052924(n)-A006192(n+1)]`
-/

namespace A006191.P14647169840627153221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n - A006192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006192 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006191.P14647169840627153221

namespace A006191

/-- `A006192(n+1)+∑[A052924(n)-A006192(n+1)]` -/
def P14647169840627153221.Spec : Prop :=
  ∀ n, P14647169840627153221.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P2733613315013931841

`A003688(n+2)-A006189(n+2)`
-/

namespace A006191.P2733613315013931841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003688 (n + 2) - A006189 (n + 2)

end

end A006191.P2733613315013931841

namespace A006191

/-- `A003688(n+2)-A006189(n+2)` -/
def P2733613315013931841.Spec : Prop :=
  ∀ n, P2733613315013931841.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P4458963226939284113

`A006192(n+2)-A006190(n+2)`
-/

namespace A006191.P4458963226939284113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006192 (n + 2) - A006190 (n + 2)

end

end A006191.P4458963226939284113

namespace A006191

/-- `A006192(n+2)-A006190(n+2)` -/
def P4458963226939284113.Spec : Prop :=
  ∀ n, P4458963226939284113.a n = A006191 (n + 1)

end A006191

/-! ## A006191.P3650581176448835698

`A006190(n+1)+A006190(n+2)-A006189(n+2)`
-/

namespace A006191.P3650581176448835698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) + (A006190 (n + 2) - A006189 (n + 2))

end

end A006191.P3650581176448835698

namespace A006191

/-- `A006190(n+1)+A006190(n+2)-A006189(n+2)` -/
def P3650581176448835698.Spec : Prop :=
  ∀ n, P3650581176448835698.a n = A006191 (n + 1)

end A006191

/-!
# A006192: Number of nonintersecting (or self-avoiding) rook paths joining opposite corners of 3 X n board.

The programs for A006192, the canonical program `A006192.P11328320008390503999` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006192 has offset 1).

The definition of A006192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006192.P11328320008390503999

`4*a(n-1)-3*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=38`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006192

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)+a(n-4)` -/
def P11328320008390503999.Spec : Prop :=
  ∀ n, P11328320008390503999.a n = A006192 (n + 1)

theorem P11328320008390503999.correct : P11328320008390503999.Spec := by
  intro n
  simp only [A006192, Nat.add_sub_cancel]

end A006192

/-! ## A006192.P16787217895078970707

`ogf((-1+x^2)/(-1+4x-3x^2+2x^3+x^4))`
-/

namespace A006192.P16787217895078970707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -4, 3, -2, -1] n

end

end A006192.P16787217895078970707

namespace A006192

/-- `ogf((-1+x^2)/(-1+4x-3x^2+2x^3+x^4))` -/
def P16787217895078970707.Spec : Prop :=
  ∀ n, P16787217895078970707.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P10246342754343843615

`A006189(n+1)+round(sin(n%6))`
-/

namespace A006192.P10246342754343843615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 (n + 1) + SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A006192.P10246342754343843615

namespace A006192

/-- `A006189(n+1)+round(sin(n%6))` -/
def P10246342754343843615.Spec : Prop :=
  ∀ n, P10246342754343843615.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P7339733257990071979

`∑[A006190(n)+∑[A006189(n)]]`
-/

namespace A006192.P7339733257990071979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006192.P7339733257990071979

namespace A006192

/-- `∑[A006190(n)+∑[A006189(n)]]` -/
def P7339733257990071979.Spec : Prop :=
  ∀ n, P7339733257990071979.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P4829178374000361810

`∑[A010892(n)+Δ[A006189(n)]]`
-/

namespace A006192.P4829178374000361810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006192.P4829178374000361810

namespace A006192

/-- `∑[A010892(n)+Δ[A006189(n)]]` -/
def P4829178374000361810.Spec : Prop :=
  ∀ n, P4829178374000361810.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P13818235708512612530

`∑[A006191(n+1)+A006190(n)]`
-/

namespace A006192.P13818235708512612530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006191 (n + 1) + A006190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006192.P13818235708512612530

namespace A006192

/-- `∑[A006191(n+1)+A006190(n)]` -/
def P13818235708512612530.Spec : Prop :=
  ∀ n, P13818235708512612530.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P18440991299531901893

`A052924(n+1)-A006189(n+1)`
-/

namespace A006192.P18440991299531901893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (n + 1) - A006189 (n + 1)

end

end A006192.P18440991299531901893

namespace A006192

/-- `A052924(n+1)-A006189(n+1)` -/
def P18440991299531901893.Spec : Prop :=
  ∀ n, P18440991299531901893.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P12363057097659230385

`A006189(n+1)-A010892(n+2)`
-/

namespace A006192.P12363057097659230385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 (n + 1) - A010892 (n + 2)

end

end A006192.P12363057097659230385

namespace A006192

/-- `A006189(n+1)-A010892(n+2)` -/
def P12363057097659230385.Spec : Prop :=
  ∀ n, P12363057097659230385.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P11296059312788305566

`Δ[A006191(n+1)-A131026(n+1)]`
-/

namespace A006192.P11296059312788305566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006191 (n + 1) - A131026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006192.P11296059312788305566

namespace A006192

/-- `Δ[A006191(n+1)-A131026(n+1)]` -/
def P11296059312788305566.Spec : Prop :=
  ∀ n, P11296059312788305566.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P14779469130466926340

`A006191(n+1)+A052924(n+1)-A006191(n+2)`
-/

namespace A006192.P14779469130466926340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006191 (n + 1) + (A052924 (n + 1) - A006191 (n + 2))

end

end A006192.P14779469130466926340

namespace A006192

/-- `A006191(n+1)+A052924(n+1)-A006191(n+2)` -/
def P14779469130466926340.Spec : Prop :=
  ∀ n, P14779469130466926340.a n = A006192 (n + 1)

end A006192

/-! ## A006192.P14688435376507762001

`A006497(n+1)-(A006189(n+1)+A003688(n+1))`
-/

namespace A006192.P14688435376507762001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (n + 1) - (A006189 (n + 1) + A003688 (n + 1))

end

end A006192.P14688435376507762001

namespace A006192

/-- `A006497(n+1)-(A006189(n+1)+A003688(n+1))` -/
def P14688435376507762001.Spec : Prop :=
  ∀ n, P14688435376507762001.a n = A006192 (n + 1)

end A006192

/-!
# A006193: Number of n-node animals on cubic lattice.

The programs for A006193, there is no canonical definition to state claims against.
-/

/-! ## A006193.P7948666166650681596

`A374981(A268042(n))`
-/

namespace A006193.P7948666166650681596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374981 (A268042 n).toNat

end

end A006193.P7948666166650681596

/-!
# A006194: Number of n-node animals on f.c.c. lattice (invert A007199).

The programs for A006194, there is no canonical definition to state claims against.
-/

/-! ## A006194.P9217987331315250109

`A020725(A047099(n+1))-A099575(n)`
-/

namespace A006194.P9217987331315250109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A047099 (n + 1)).toNat - A099575 n

end

end A006194.P9217987331315250109

/-! ## A006194.P17091938114508184415

`A020725(A047099(n+1))-A108759(n)`
-/

namespace A006194.P17091938114508184415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A047099 (n + 1)).toNat - A108759 n

end

end A006194.P17091938114508184415

/-!
# A006195: Reversion of Jacobi theta_3.

The programs for A006195, there is no canonical definition to state claims against.
-/

/-! ## A006195.P6659918457589424209

`A026585(record[2*n-A209409(n)])/(-1)^n`
-/

namespace A006195.P6659918457589424209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A209409 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A006195.P6659918457589424209

/-!
# A006196: Number of leftist trees with n leaves.

The programs for A006196, there is no canonical definition to state claims against.
-/

/-! ## A006196.P17842031828888991483

`A089796(A028310(n))%A318151(n+1)`
-/

namespace A006196.P17842031828888991483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089796 (A028310 n).toNat) (A318151 (n + 1))

end

end A006196.P17842031828888991483

/-! ## A006196.P93694644104136392

`A008683(A061645(n+1))*A089796(A028310(n))`
-/

namespace A006196.P93694644104136392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A061645 (n + 1)).toNat * A089796 (A028310 n).toNat

end

end A006196.P93694644104136392

/-! ## A006196.P18314623250319162569

`A060576(A154562(n+1))*A089796(A233583(n+1))`
-/

namespace A006196.P18314623250319162569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A154562 (n + 1)).toNat * A089796 (A233583 (n + 1)).toNat

end

end A006196.P18314623250319162569

/-! ## A006196.P11473016588689121610

`A089796(A233583(n+1))%A262022(n)`
-/

namespace A006196.P11473016588689121610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089796 (A233583 (n + 1)).toNat) (A262022 n)

end

end A006196.P11473016588689121610

/-! ## A006196.P7063737497097869119

`A135662(A215398(n+1)+n)`
-/

namespace A006196.P7063737497097869119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A215398 (n + 1) + (n : ℤ)).toNat

end

end A006196.P7063737497097869119

/-!
# A006197: Least number not dividing binomial(2n,n).

The programs for A006197, there is no canonical definition to state claims against.
-/

/-! ## A006197.P14543584443926164185

`A007978((n+2)*A170829(n+1))`
-/

namespace A006197.P14543584443926164185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 ((n + 2 : ℤ) * A170829 (n + 1)).toNat

end

end A006197.P14543584443926164185

/-!
# A006198: Number of partitions into pairs.

The programs for A006198, there is no canonical definition to state claims against.
-/

/-! ## A006198.P13666040377024376136

`abs(Δ[a(n-2)+(1-2*n)*a(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A006198.P13666040377024376136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (1 - (2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006198.P13666040377024376136

/-! ## A006198.P8429946031348128290

`abs(Δ[A000806(n)])`
-/

namespace A006198.P8429946031348128290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006198.P8429946031348128290

/-! ## A006198.P208482978196146248

`A302749(Δ[n²])`
-/

namespace A006198.P208482978196146248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302749 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006198.P208482978196146248

/-! ## A006198.P11105902328899086114

`A302750(Δ[n²])`
-/

namespace A006198.P11105902328899086114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302750 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006198.P11105902328899086114

/-! ## A006198.P7551682073164660821

`A079267(∑[n+1]+1)`
-/

namespace A006198.P7551682073164660821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006198.P7551682073164660821

/-! ## A006198.P1851701973412422165

`∑[(2*n+1)*A278990(n)]`
-/

namespace A006198.P1851701973412422165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A278990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006198.P1851701973412422165

/-! ## A006198.P14335088040286164826

`lcm(Δ[A000806(n)], A087960(n))`
-/

namespace A006198.P14335088040286164826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A087960 n)

end

end A006198.P14335088040286164826

/-! ## A006198.P11790473959413785552

`A278990(n+1)+A278990(n)`
-/

namespace A006198.P11790473959413785552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 (n + 1) + A278990 n

end

end A006198.P11790473959413785552

/-! ## A006198.P1656640134583251652

`∑[A005408(n)*A079267(∑[n])]`
-/

namespace A006198.P1656640134583251652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A079267 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006198.P1656640134583251652

/-! ## A006198.P15825681878546065229

`abs(A000806(n+1)-A000806(n))`
-/

namespace A006198.P15825681878546065229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000806 (n + 1) - A000806 n|

end

end A006198.P15825681878546065229

/-!
# A006199: Bessel polynomial {y_n}'(-1).

The programs for A006199, there is no canonical definition to state claims against.
-/

/-! ## A006199.P11327570346036008242

`A000806(n+1)+n*A000806(n)`
-/

namespace A006199.P11327570346036008242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 (n + 1) + (n : ℤ) * A000806 n

end

end A006199.P11327570346036008242

/-! ## A006199.P13526987867752273380

`A062157(n)*A079267(A133263(n+1))`
-/

namespace A006199.P13526987867752273380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A079267 (A133263 (n + 1)).toNat

end

end A006199.P13526987867752273380

