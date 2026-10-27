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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051601: Rows of triangle formed using Pascal's rule except we begin and end the n-th row with n.

The programs for A051601, the canonical program `A051601.P8807190257128102919` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051601 has offset 0).

The definition of A051601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051601.P8807190257128102919

`C(row(n), col(n)+1)+C(row(n), row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051601

/-- `C(row(n), col(n)+1)+C(row(n), row(n)-col(n)+1)` -/
def P8807190257128102919.Spec : Prop :=
  ∀ n, (P8807190257128102919.a n : ℤ) = A051601 n

theorem P8807190257128102919.correct : P8807190257128102919.Spec := by
  intro n
  simp only [A051601]

end A051601

/-! ## A051601.P8143495876046624447

`A051631(n)+A007318(n)`
-/

namespace A051601.P8143495876046624447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n + A007318 n

end

end A051601.P8143495876046624447

namespace A051601

/-- `A051631(n)+A007318(n)` -/
def P8143495876046624447.Spec : Prop :=
  ∀ n, P8143495876046624447.a n = A051601 n

end A051601

/-! ## A051601.P7525837272489712505

`A051632(n)+A028326(n)`
-/

namespace A051601.P7525837272489712505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 n + A028326 n

end

end A051601.P7525837272489712505

namespace A051601

/-- `A051632(n)+A028326(n)` -/
def P7525837272489712505.Spec : Prop :=
  ∀ n, P7525837272489712505.a n = A051601 n

end A051601

/-! ## A051601.P16211897946955376091

`A028327(n)-A028276(n)`
-/

namespace A051601.P16211897946955376091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A028276 n

end

end A051601.P16211897946955376091

namespace A051601

/-- `A028327(n)-A028276(n)` -/
def P16211897946955376091.Spec : Prop :=
  ∀ n, P16211897946955376091.a n = A051601 n

end A051601

/-! ## A051601.P6322889793666092338

`A051597(n)-A007318(n)`
-/

namespace A051601.P6322889793666092338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - A007318 n

end

end A051601.P6322889793666092338

namespace A051601

/-- `A051597(n)-A007318(n)` -/
def P6322889793666092338.Spec : Prop :=
  ∀ n, P6322889793666092338.a n = A051601 n

end A051601

/-! ## A051601.P5876814412108097727

`A014430(n)-A109128(n)`
-/

namespace A051601.P5876814412108097727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n - A109128 n

end

end A051601.P5876814412108097727

namespace A051601

/-- `A014430(n)-A109128(n)` -/
def P5876814412108097727.Spec : Prop :=
  ∀ n, P5876814412108097727.a n = A051601 n

end A051601

/-! ## A051601.P6273991524933132357

`A134636(n)-A051597(n)`
-/

namespace A051601.P6273991524933132357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A051597 n

end

end A051601.P6273991524933132357

namespace A051601

/-- `A134636(n)-A051597(n)` -/
def P6273991524933132357.Spec : Prop :=
  ∀ n, P6273991524933132357.a n = A051601 n

end A051601

/-! ## A051601.P2346664277603716149

`A135278(n)-A080233(n)`
-/

namespace A051601.P2346664277603716149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A080233 n

end

end A051601.P2346664277603716149

namespace A051601

/-- `A135278(n)-A080233(n)` -/
def P2346664277603716149.Spec : Prop :=
  ∀ n, P2346664277603716149.a n = A051601 n

end A051601

/-! ## A051601.P17218560642310510311

`A074909(n)-A156644(n)`
-/

namespace A051601.P17218560642310510311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A156644 n

end

end A051601.P17218560642310510311

namespace A051601

/-- `A074909(n)-A156644(n)` -/
def P17218560642310510311.Spec : Prop :=
  ∀ n, P17218560642310510311.a n = A051601 n

end A051601

/-! ## A051601.P18120684222591029000

`A051668(n)-A222405(n)`
-/

namespace A051601.P18120684222591029000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A222405 n

end

end A051601.P18120684222591029000

namespace A051601

/-- `A051668(n)-A222405(n)` -/
def P18120684222591029000.Spec : Prop :=
  ∀ n, P18120684222591029000.a n = A051601 n

end A051601

/-! ## A051601.P17311866504427494773

`A222404(n)-A051666(n)`
-/

namespace A051601.P17311866504427494773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n - A051666 n

end

end A051601.P17311866504427494773

namespace A051601

/-- `A222404(n)-A051666(n)` -/
def P17311866504427494773.Spec : Prop :=
  ∀ n, P17311866504427494773.a n = A051601 n

theorem P17311866504427494773.correct : P17311866504427494773.Spec := by
  intro n
  simp only [A051601, Nat.add_sub_cancel, A051601.P17311866504427494773.a, A051601.P8807190257128102919.a, A051666, A051666.P8179550014341494216.a, A222404, A222404.P14214754150695596768.a, A222403, A222403.P3020155544965014607.a, A028327, A028327.P9835590816428302231.a, A194121, A194121.P9595817741942349886.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051601

/-! ## A051601.P8746655188063577048

`A014473(n)+A051631(n)+1`
-/

namespace A051601.P8746655188063577048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A051631 n + 1)

end

end A051601.P8746655188063577048

namespace A051601

/-- `A014473(n)+A051631(n)+1` -/
def P8746655188063577048.Spec : Prop :=
  ∀ n, P8746655188063577048.a n = A051601 n

end A051601

/-! ## A051601.P7593290646623392913

`A014430(n)+1-A028326(n)`
-/

namespace A051601.P7593290646623392913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (1 - A028326 n)

end

end A051601.P7593290646623392913

namespace A051601

/-- `A014430(n)+1-A028326(n)` -/
def P7593290646623392913.Spec : Prop :=
  ∀ n, P7593290646623392913.a n = A051601 n

end A051601

/-! ## A051601.P16610103151095689398

`A051597(n)-(A014473(n)+1)`
-/

namespace A051601.P16610103151095689398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - (A014473 n + 1)

end

end A051601.P16610103151095689398

namespace A051601

/-- `A051597(n)-(A014473(n)+1)` -/
def P16610103151095689398.Spec : Prop :=
  ∀ n, P16610103151095689398.a n = A051601 n

end A051601

/-! ## A051601.P4395523004682961338

`A074909(n+1)-A080233(n)`
-/

namespace A051601.P4395523004682961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A080233 n

end

end A051601.P4395523004682961338

namespace A051601

/-- `A074909(n+1)-A080233(n)` -/
def P4395523004682961338.Spec : Prop :=
  ∀ n, P4395523004682961338.a n = A051601 n

end A051601

/-! ## A051601.P10033093329739572076

`A014410(n+2)-A028326(n)`
-/

namespace A051601.P10033093329739572076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A028326 n

end

end A051601.P10033093329739572076

namespace A051601

/-- `A014410(n+2)-A028326(n)` -/
def P10033093329739572076.Spec : Prop :=
  ∀ n, P10033093329739572076.a n = A051601 n

end A051601

/-! ## A051601.P12743984865468643232

`A051632(n)+2*A007318(n)`
-/

namespace A051601.P12743984865468643232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 n + 2 * A007318 n

end

end A051601.P12743984865468643232

namespace A051601

/-- `A051632(n)+2*A007318(n)` -/
def P12743984865468643232.Spec : Prop :=
  ∀ n, P12743984865468643232.a n = A051601 n

end A051601

/-! ## A051601.P13707847919500685476

`A028276(n)-2*A028326(n)`
-/

namespace A051601.P13707847919500685476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - 2 * A028326 n

end

end A051601.P13707847919500685476

namespace A051601

/-- `A028276(n)-2*A028326(n)` -/
def P13707847919500685476.Spec : Prop :=
  ∀ n, P13707847919500685476.a n = A051601 n

end A051601

/-! ## A051601.P4750441859152839482

`A051631(n)+A028326(n)/2`
-/

namespace A051601.P4750441859152839482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051631 n : ℚ) + (A028326 n : ℚ) / 2

end

end A051601.P4750441859152839482

namespace A051601

/-- `A051631(n)+A028326(n)/2` -/
def P4750441859152839482.Spec : Prop :=
  ∀ n, P4750441859152839482.a n = (A051601 n : ℚ)

end A051601

/-! ## A051601.P10671794965087048498

`(A051631(n)+A051597(n))/2`
-/

namespace A051601.P10671794965087048498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051631 n + A051597 n : ℚ) / 2

end

end A051601.P10671794965087048498

namespace A051601

/-- `(A051631(n)+A051597(n))/2` -/
def P10671794965087048498.Spec : Prop :=
  ∀ n, P10671794965087048498.a n = (A051601 n : ℚ)

end A051601

/-!
# A051602: a(n) is the maximal number of squares that can be formed from n points in the plane.

The programs for A051602, there is no canonical definition to state claims against.
-/

/-! ## A051602.P3958690961268094546

`floor(C(n, 2)/6)-char[11]`
-/

namespace A051602.P3958690961268094546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 6⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A051602.P3958690961268094546

/-! ## A051602.P3764930771063518397

`xor(floor(C(n, 2)/6), char[11])`
-/

namespace A051602.P3764930771063518397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(Nat.choose n 2 : ℚ) / 6⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A051602.P3764930771063518397

/-! ## A051602.P3937712335994039642

`ceil((n-3)*comp[and(n, -6)]/15)`
-/

namespace A051602.P3937712335994039642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 3) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) : ℚ) / 15⌉

end

end A051602.P3937712335994039642

/-! ## A051602.P16600007952054280601

`floor((n²-n)/12)-char[floor(3*(sqrt(3)+2)*(n+1)²)]`
-/

namespace A051602.P16600007952054280601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Real.sqrt (3 : ℝ) + 2) * ((n + 1) ^ 2 : ℝ))⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 12⌋ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051602.P16600007952054280601

/-! ## A051602.P13711409618911163365

`A348469(n)%24`
-/

namespace A051602.P13711409618911163365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348469 n) 24

end

end A051602.P13711409618911163365

/-!
# A051603: Expansion of square of g.f. for A051573.

The programs for A051603, there is no canonical definition to state claims against.
-/

/-! ## A051603.P10723247028473611743

`A052250(∑[n+1]+2)`
-/

namespace A051603.P10723247028473611743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A051603.P10723247028473611743

/-! ## A051603.P8813627976962711907

`record[A052250(n+1)/A177767(n)]`
-/

namespace A051603.P8813627976962711907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052250 (n + 1) : ℚ) / (A177767 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051603.P8813627976962711907

/-! ## A051603.P785794819585505408

`record[A052250(n+3)/A052250(n+1)]`
-/

namespace A051603.P785794819585505408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052250 (n + 3) : ℚ) / (A052250 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051603.P785794819585505408

/-! ## A051603.P5492491460176268325

`record[A052250(A133263(A008615(n)))]`
-/

namespace A051603.P5492491460176268325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A133263 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051603.P5492491460176268325

/-! ## A051603.P7840923577375287388

`record[and(A052250(n+1), A293305(n))]`
-/

namespace A051603.P7840923577375287388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052250 (n + 1)) (A293305 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051603.P7840923577375287388

/-!
# A051604: a(n) = (3*n+4)!!!/4!!!.

The programs for A051604, there is no canonical definition to state claims against.
-/

/-! ## A051604.P3038789664654320696

`∏[3*n+4]/4`
-/

namespace A051604.P3038789664654320696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A051604.P3038789664654320696

/-! ## A051604.P1688441532898954852

`∏[a(n-1)+3]` with `a(0)=1, a(1)=7`
-/

namespace A051604.P1688441532898954852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051604.P1688441532898954852

/-! ## A051604.P4012832947641340281

`(3*n+4)*a(n-1)` with `a(0)=1`
-/

namespace A051604.P4012832947641340281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 4) * a (n - 1)

end

end A051604.P4012832947641340281

/-! ## A051604.P4628081194347119300

`∏[record[6-xor(3, -n)]-(n+2)]`
-/

namespace A051604.P4628081194347119300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051604.P4628081194347119300

/-! ## A051604.P13658799197101773395

`record[n*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1, a(4)=1`
-/

namespace A051604.P13658799197101773395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, -1, 1] fun n f1 =>
  (n : ℤ) * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051604.P13658799197101773395

/-! ## A051604.P14445390652693760087

`floor((4-(n-4*n))*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051604.P14445390652693760087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 - ((n : ℤ) - (4 * n : ℤ))) * a (n - 1)

end

end A051604.P14445390652693760087

/-! ## A051604.P18173200104074208155

`∏[A210034(∑[n+3])]`
-/

namespace A051604.P18173200104074208155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210034 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051604.P18173200104074208155

/-! ## A051604.P6457900818130003869

`∏[record[A143971(n+3)]]`
-/

namespace A051604.P6457900818130003869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143971 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051604.P6457900818130003869

/-! ## A051604.P7298182038991281533

`∏[record[A158860(n+3)]]`
-/

namespace A051604.P7298182038991281533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158860 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051604.P7298182038991281533

/-! ## A051604.P17826204731480495572

`A136214(∑[n+2]+3)`
-/

namespace A051604.P17826204731480495572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136214 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A051604.P17826204731480495572

/-!
# A051605: a(n) = (3*n+5)!!!/5!!!.

The programs for A051605, the canonical program `A051605.P598077634822920452` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051605 has offset 0).

The definition of A051605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051605.P598077634822920452

`(3*n+5)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051605

/-- `(3*n+5)*a(n-1)` -/
def P598077634822920452.Spec : Prop :=
  ∀ n, (P598077634822920452.a n : ℤ) = A051605 n

theorem P598077634822920452.correct : P598077634822920452.Spec := by
  intro n
  simp only [A051605]

end A051605

/-! ## A051605.P8596078913521517717

`∏[a(n-1)+3]` with `a(0)=1, a(1)=8`
-/

namespace A051605.P8596078913521517717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051605.P8596078913521517717

namespace A051605

/-- `∏[a(n-1)+3]` -/
def P8596078913521517717.Spec : Prop :=
  ∀ n, (P8596078913521517717.a n : ℤ) = A051605 n

end A051605

/-! ## A051605.P4107523350418687447

`record[n*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A051605.P4107523350418687447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1] fun n f1 =>
  n * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051605.P4107523350418687447

namespace A051605

/-- `record[n*a(n-3)]` -/
def P4107523350418687447.Spec : Prop :=
  ∀ n, (P4107523350418687447.a n : ℤ) = A051605 n

end A051605

/-! ## A051605.P5944700274664508007

`∏[A061570(n+2)]`
-/

namespace A051605.P5944700274664508007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051605.P5944700274664508007

namespace A051605

/-- `∏[A061570(n+2)]` -/
def P5944700274664508007.Spec : Prop :=
  ∀ n, P5944700274664508007.a n = A051605 n

end A051605

/-! ## A051605.P2814546017883805261

`∏[A213849(∑[n+3])]`
-/

namespace A051605.P2814546017883805261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213849 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051605.P2814546017883805261

namespace A051605

/-- `∏[A213849(∑[n+3])]` -/
def P2814546017883805261.Spec : Prop :=
  ∀ n, P2814546017883805261.a n = A051605 n

end A051605

/-! ## A051605.P17345542009778253534

`∏[record[A166520(n+1)-n]]`
-/

namespace A051605.P17345542009778253534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051605.P17345542009778253534

namespace A051605

/-- `∏[record[A166520(n+1)-n]]` -/
def P17345542009778253534.Spec : Prop :=
  ∀ n, P17345542009778253534.a n = A051605 n

end A051605

/-! ## A051605.P1762665926575014710

`a(n-1)*A016789(n+1)` with `a(0)=1`
-/

namespace A051605.P1762665926575014710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016789 (n + 1)

end

end A051605.P1762665926575014710

namespace A051605

/-- `a(n-1)*A016789(n+1)` -/
def P1762665926575014710.Spec : Prop :=
  ∀ n, P1762665926575014710.a n = A051605 n

end A051605

/-! ## A051605.P6215180917224487784

`a(n-1)*A180486(n+1)` with `a(0)=1`
-/

namespace A051605.P6215180917224487784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A180486 (n + 1)

end

end A051605.P6215180917224487784

namespace A051605

/-- `a(n-1)*A180486(n+1)` -/
def P6215180917224487784.Spec : Prop :=
  ∀ n, P6215180917224487784.a n = A051605 n

end A051605

/-! ## A051605.P1186294141234815597

`∏[record[A197916(2*n+1)]+n]`
-/

namespace A051605.P1186294141234815597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197916 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051605.P1186294141234815597

namespace A051605

/-- `∏[record[A197916(2*n+1)]+n]` -/
def P1186294141234815597.Spec : Prop :=
  ∀ n, P1186294141234815597.a n = A051605 n

end A051605

/-! ## A051605.P4501421918774011311

`∏[record[A111698(2*n+1)-n]]`
-/

namespace A051605.P4501421918774011311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111698 (2 * n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051605.P4501421918774011311

namespace A051605

/-- `∏[record[A111698(2*n+1)-n]]` -/
def P4501421918774011311.Spec : Prop :=
  ∀ n, P4501421918774011311.a n = A051605 n

end A051605

/-!
# A051606: a(n) = (3*n+6)!!!/6!!!, related to A032031 ((3*n)!!! triple factorials).

The programs for A051606, there is no canonical definition to state claims against.
-/

/-! ## A051606.P9416167762494235404

`∏[3*(n+2)]/6`
-/

namespace A051606.P9416167762494235404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A051606.P9416167762494235404

/-! ## A051606.P13453445108532211109

`∏[a(n-1)+3]` with `a(0)=1, a(1)=9`
-/

namespace A051606.P13453445108532211109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051606.P13453445108532211109

/-! ## A051606.P17955203165480464254

`3^n/2*(n+2)!`
-/

namespace A051606.P17955203165480464254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 2 * (Nat.factorial (n + 2) : ℚ)

end

end A051606.P17955203165480464254

/-! ## A051606.P15079365287768235545

`∏[∪[9^n, 3*(n+3)]]`
-/

namespace A051606.P15079365287768235545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051606.P15079365287768235545

/-! ## A051606.P2202528804456454857

`3*(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A051606.P2202528804456454857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 2) * a (n - 1))

end

end A051606.P2202528804456454857

/-! ## A051606.P15744354336265627864

`3^n*n!*∑[n+1]`
-/

namespace A051606.P15744354336265627864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051606.P15744354336265627864

/-! ## A051606.P11018241392961246807

`n!*A027472(n+3)`
-/

namespace A051606.P11018241392961246807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A027472 (n + 3)

end

end A051606.P11018241392961246807

/-! ## A051606.P4179829484838930700

`∑[n+1]*A032031(n)`
-/

namespace A051606.P4179829484838930700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A032031 n

end

end A051606.P4179829484838930700

/-! ## A051606.P4521646652017464693

`∑[(n+1)*A187738(n)]`
-/

namespace A051606.P4521646652017464693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A187738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051606.P4521646652017464693

/-! ## A051606.P612497183999958906

`a(n-1)*A008486(n+2)` with `a(0)=1`
-/

namespace A051606.P612497183999958906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008486 (n + 2)

end

end A051606.P612497183999958906

/-!
# A051607: a(n) = (3*n+7)!!!/7!!!.

The programs for A051607, there is no canonical definition to state claims against.
-/

/-! ## A051607.P9382859589142229320

`∏[3*n+7]/7`
-/

namespace A051607.P9382859589142229320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A051607.P9382859589142229320

/-! ## A051607.P3874628708934658190

`∏[a(n-1)+3]` with `a(0)=1, a(1)=10`
-/

namespace A051607.P3874628708934658190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051607.P3874628708934658190

/-! ## A051607.P10051934609556231374

`(3*n+7)*a(n-1)` with `a(0)=1`
-/

namespace A051607.P10051934609556231374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 7) * a (n - 1)

end

end A051607.P10051934609556231374

/-! ## A051607.P12487978553255726731

`a(n-1)*A112414(n)` with `a(0)=1`
-/

namespace A051607.P12487978553255726731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A112414 n

end

end A051607.P12487978553255726731

/-! ## A051607.P3429288787452908046

`∏[record[A122088(n+1)-n]]`
-/

namespace A051607.P3429288787452908046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051607.P3429288787452908046

/-! ## A051607.P12461621207275086850

`a(n-1)*A016777(n+2)` with `a(0)=1`
-/

namespace A051607.P12461621207275086850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016777 (n + 2)

end

end A051607.P12461621207275086850

/-! ## A051607.P15283785198677212351

`a(n-1)*A086822(n+2)` with `a(0)=1`
-/

namespace A051607.P15283785198677212351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A086822 (n + 2)

end

end A051607.P15283785198677212351

/-! ## A051607.P4635860848250176301

`a(n-1)*A234429(n+3)` with `a(0)=1`
-/

namespace A051607.P4635860848250176301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A234429 (n + 3)

end

end A051607.P4635860848250176301

/-! ## A051607.P12243001957811508306

`a(n-1)*A026488(n+4)` with `a(0)=1`
-/

namespace A051607.P12243001957811508306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A026488 (n + 4)

end

end A051607.P12243001957811508306

/-! ## A051607.P1223970086982338002

`a(n-1)*A033627(n+4)` with `a(0)=1`
-/

namespace A051607.P1223970086982338002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A033627 (n + 4)

end

end A051607.P1223970086982338002

/-!
# A051608: a(n) = (3*n+8)!!!/8!!!.

The programs for A051608, there is no canonical definition to state claims against.
-/

/-! ## A051608.P10920044462609440396

`∏[3*n+8]/8`
-/

namespace A051608.P10920044462609440396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A051608.P10920044462609440396

/-! ## A051608.P12450057164697915949

`∏[a(n-1)+3]` with `a(0)=1, a(1)=11`
-/

namespace A051608.P12450057164697915949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051608.P12450057164697915949

/-! ## A051608.P111587851211473340

`(3*n+8)*a(n-1)` with `a(0)=1`
-/

namespace A051608.P111587851211473340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 8) * a (n - 1)

end

end A051608.P111587851211473340

/-! ## A051608.P13103251981963705363

`record[(3*n-1)*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A051608.P13103251981963705363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  ((3 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051608.P13103251981963705363

/-! ## A051608.P12251014829408010209

`ceil(∏[A016789(n+2)]/8)`
-/

namespace A051608.P12251014829408010209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8⌉

end

end A051608.P12251014829408010209

/-! ## A051608.P10749476838217505743

`∏[A171892(3*n+1)+1]`
-/

namespace A051608.P10749476838217505743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171892 (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051608.P10749476838217505743

/-! ## A051608.P1865017736877250117

`∏[A171893(2*n+1)+n]`
-/

namespace A051608.P1865017736877250117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171893 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051608.P1865017736877250117

/-! ## A051608.P8239233607928904304

`a(n-1)*A180486(n+2)` with `a(0)=1`
-/

namespace A051608.P8239233607928904304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A180486 (n + 2)

end

end A051608.P8239233607928904304

/-! ## A051608.P11901032562602487048

`a(n-1)*A061570(n+3)` with `a(0)=1`
-/

namespace A051608.P11901032562602487048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A061570 (n + 3)

end

end A051608.P11901032562602487048

/-! ## A051608.P10940218928694179135

`A112333(A167614(n+2))`
-/

namespace A051608.P10940218928694179135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112333 (A167614 (n + 2)).toNat

end

end A051608.P10940218928694179135

/-!
# A051609: a(n) = (3*n+9)!!!/9!!!, related to A032031 ((3*n)!!! triple factorials).

The programs for A051609, the canonical program `A051609.P2567408465257684594` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051609 has offset 0).

The definition of A051609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051609.P2567408465257684594

`(n+3)!*3^(n-1)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051609

/-- `(n+3)!*3^(n-1)/2` -/
def P2567408465257684594.Spec : Prop :=
  ∀ n, P2567408465257684594.a n = (A051609 n : ℚ)

end A051609

/-! ## A051609.P10249838871551240313

`∏[a(n-1)+3]` with `a(0)=1, a(1)=12`
-/

namespace A051609.P10249838871551240313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051609.P10249838871551240313

namespace A051609

/-- `∏[a(n-1)+3]` -/
def P10249838871551240313.Spec : Prop :=
  ∀ n, (P10249838871551240313.a n : ℤ) = A051609 n

end A051609

/-! ## A051609.P6491501268753942934

`(n+3)!/6*3^n`
-/

namespace A051609.P6491501268753942934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / 6 * (3 ^ n : ℚ)

end

end A051609.P6491501268753942934

namespace A051609

/-- `(n+3)!/6*3^n` -/
def P6491501268753942934.Spec : Prop :=
  ∀ n, P6491501268753942934.a n = (A051609 n : ℚ)

end A051609

/-! ## A051609.P2076626240133406244

`3^(n-1)*∏[n+3]`
-/

namespace A051609.P2076626240133406244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A051609.P2076626240133406244

namespace A051609

/-- `3^(n-1)*∏[n+3]` -/
def P2076626240133406244.Spec : Prop :=
  ∀ n, P2076626240133406244.a n = (A051609 n : ℚ)

end A051609

/-! ## A051609.P16593890683830895869

`∏[record[n-a(n-3)]]` with `a(0)=1, a(1)=-5, a(2)=12`
-/

namespace A051609.P16593890683830895869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -5, 12] fun n f2 =>
  (n : ℤ) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051609.P16593890683830895869

namespace A051609

/-- `∏[record[n-a(n-3)]]` -/
def P16593890683830895869.Spec : Prop :=
  ∀ n, P16593890683830895869.a n = A051609 n

end A051609

/-! ## A051609.P6962894390686931513

`abs(3*(n+3)*a(n-1))` with `a(0)=1`
-/

namespace A051609.P6962894390686931513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 3) * a (n - 1))

end

end A051609.P6962894390686931513

namespace A051609

/-- `abs(3*(n+3)*a(n-1))` -/
def P6962894390686931513.Spec : Prop :=
  ∀ n, (P6962894390686931513.a n : ℤ) = A051609 n

end A051609

/-! ## A051609.P10323891605092146182

`floor(3*(n+3)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051609.P10323891605092146182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 3) * a (n - 1))

end

end A051609.P10323891605092146182

namespace A051609

/-- `floor(3*(n+3)*a(n-1))` -/
def P10323891605092146182.Spec : Prop :=
  ∀ n, (P10323891605092146182.a n : ℤ) = A051609 n

end A051609

/-! ## A051609.P15795752057949672138

`ceil(3*(n+3)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A051609.P15795752057949672138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 3) * a (n - 1))

end

end A051609.P15795752057949672138

namespace A051609

/-- `ceil(3*(n+3)*a(n-1))` -/
def P15795752057949672138.Spec : Prop :=
  ∀ n, (P15795752057949672138.a n : ℤ) = A051609 n

end A051609

/-! ## A051609.P2558587993506687446

`round(3*(n+3)*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A051609.P2558587993506687446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 3) * a (n - 1))

end

end A051609.P2558587993506687446

namespace A051609

/-- `round(3*(n+3)*a(n-1))` -/
def P2558587993506687446.Spec : Prop :=
  ∀ n, (P2558587993506687446.a n : ℤ) = A051609 n

end A051609

/-! ## A051609.P17964749773758489320

`lcm(2, 3*(n+3)*a(n-1))` with `a(0)=1`
-/

namespace A051609.P17964749773758489320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (3 * ((n + 3) * a (n - 1)))

end

end A051609.P17964749773758489320

namespace A051609

/-- `lcm(2, 3*(n+3)*a(n-1))` -/
def P17964749773758489320.Spec : Prop :=
  ∀ n, (P17964749773758489320.a n : ℤ) = A051609 n

end A051609

/-!
# A051610: Monotonic subsequence of A051169.

The programs for A051610, there is no canonical definition to state claims against.
-/

/-! ## A051610.P6269743484598623505

`A025018(n+2)/2`
-/

namespace A051610.P6269743484598623505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025018 (n + 2) : ℚ) / 2

end

end A051610.P6269743484598623505

/-! ## A051610.P15450460527563976730

`record[A051169(n+1)%C((n+2)², 2)]`
-/

namespace A051610.P15450460527563976730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051169 (n + 1)) (Nat.choose ((n + 2) ^ 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051610.P15450460527563976730

/-! ## A051610.P3538030349299095259

`record[A051169(A133310(n))]`
-/

namespace A051610.P3538030349299095259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051169 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051610.P3538030349299095259

/-! ## A051610.P905675789386361812

`record[A051169(A154958(n))]`
-/

namespace A051610.P905675789386361812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051169 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051610.P905675789386361812

/-! ## A051610.P6072117588937201373

`record[A051169(A286544(n))]`
-/

namespace A051610.P6072117588937201373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051169 (A286544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051610.P6072117588937201373

/-!
# A051611: Numbers that are not the sum of 2 nonzero triangular numbers.

The programs for A051611, the canonical program `A051611.P8956593537962413529` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051611 has offset 1).

The definition of A051611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051611.P8956593537962413529

`comp[A051533(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051611

/-- `comp[A051533(n+1)-1]+1` -/
def P8956593537962413529.Spec : Prop :=
  ∀ n, (P8956593537962413529.a n : ℤ) = A051611 (n + 1)

theorem P8956593537962413529.correct : P8956593537962413529.Spec := by
  intro n
  simp only [A051611, Nat.add_sub_cancel]

end A051611

/-! ## A051611.P93772526056129927

`∪[A020757(n+1), A129307(n+1)]`
-/

namespace A051611.P93772526056129927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051611.P93772526056129927

namespace A051611

/-- `∪[A020757(n+1), A129307(n+1)]` -/
def P93772526056129927.Spec : Prop :=
  ∀ n, (P93772526056129927.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P3457172964388387529

`lt[n*A052344(n), n]`
-/

namespace A051611.P3457172964388387529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052344 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051611.P3457172964388387529

namespace A051611

/-- `lt[n*A052344(n), n]` -/
def P3457172964388387529.Spec : Prop :=
  ∀ n, (P3457172964388387529.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P3087498406375090428

`lt[n*A053603(n), n]`
-/

namespace A051611.P3087498406375090428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053603 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051611.P3087498406375090428

namespace A051611

/-- `lt[n*A053603(n), n]` -/
def P3087498406375090428.Spec : Prop :=
  ∀ n, (P3087498406375090428.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P138981920565968527

`lt[A052344(n+1), 1]+1`
-/

namespace A051611.P138981920565968527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051611.P138981920565968527

namespace A051611

/-- `lt[A052344(n+1), 1]+1` -/
def P138981920565968527.Spec : Prop :=
  ∀ n, (P138981920565968527.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P4528599563943616597

`lt[A053603(n+1), 1]+1`
-/

namespace A051611.P4528599563943616597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051611.P4528599563943616597

namespace A051611

/-- `lt[A053603(n+1), 1]+1` -/
def P4528599563943616597.Spec : Prop :=
  ∀ n, (P4528599563943616597.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P15465067960478995506

`eq[A000007(n), A052344(n)]`
-/

namespace A051611.P15465067960478995506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P15465067960478995506

namespace A051611

/-- `eq[A000007(n), A052344(n)]` -/
def P15465067960478995506.Spec : Prop :=
  ∀ n, (P15465067960478995506.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P17257932079824486025

`eq[A000038(n), A052344(n)]`
-/

namespace A051611.P17257932079824486025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P17257932079824486025

namespace A051611

/-- `eq[A000038(n), A052344(n)]` -/
def P17257932079824486025.Spec : Prop :=
  ∀ n, (P17257932079824486025.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P1562284337106727632

`eq[A000007(n), A053603(n)]`
-/

namespace A051611.P1562284337106727632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P1562284337106727632

namespace A051611

/-- `eq[A000007(n), A053603(n)]` -/
def P1562284337106727632.Spec : Prop :=
  ∀ n, (P1562284337106727632.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P15368010662577592145

`eq[A000038(n), A053603(n)]`
-/

namespace A051611.P15368010662577592145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P15368010662577592145

namespace A051611

/-- `eq[A000038(n), A053603(n)]` -/
def P15368010662577592145.Spec : Prop :=
  ∀ n, (P15368010662577592145.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P17848103031276639713

`eq[A008441(n), A089799(n)]`
-/

namespace A051611.P17848103031276639713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P17848103031276639713

namespace A051611

/-- `eq[A008441(n), A089799(n)]` -/
def P17848103031276639713.Spec : Prop :=
  ∀ n, (P17848103031276639713.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P6002976202550091600

`eq[A052343(n), A073423(n)]`
-/

namespace A051611.P6002976202550091600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P6002976202550091600

namespace A051611

/-- `eq[A052343(n), A073423(n)]` -/
def P6002976202550091600.Spec : Prop :=
  ∀ n, (P6002976202550091600.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P9844693776346483287

`eq[A052343(n), A073424(n)]`
-/

namespace A051611.P9844693776346483287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P9844693776346483287

namespace A051611

/-- `eq[A052343(n), A073424(n)]` -/
def P9844693776346483287.Spec : Prop :=
  ∀ n, (P9844693776346483287.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P15030246206108081886

`eq[A053603(n), A089800(n)]`
-/

namespace A051611.P15030246206108081886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P15030246206108081886

namespace A051611

/-- `eq[A053603(n), A089800(n)]` -/
def P15030246206108081886.Spec : Prop :=
  ∀ n, (P15030246206108081886.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P8820121836337437413

`lt[A053603(n), A057427(n)]`
-/

namespace A051611.P8820121836337437413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051611.P8820121836337437413

namespace A051611

/-- `lt[A053603(n), A057427(n)]` -/
def P8820121836337437413.Spec : Prop :=
  ∀ n, (P8820121836337437413.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P10366906885117120834

`eq[1, A052344(a(A052344(n)))]` with `a(0)=2`
-/

namespace A051611.P10366906885117120834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A052344 (f2 (A052344 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051611.P10366906885117120834

namespace A051611

/-- `eq[1, A052344(a(A052344(n)))]` -/
def P10366906885117120834.Spec : Prop :=
  ∀ n, (P10366906885117120834.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P16256900131689810221

`eq[1, A053603(a(A053603(n)))]` with `a(0)=2`
-/

namespace A051611.P16256900131689810221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A053603 (f2 (A053603 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051611.P16256900131689810221

namespace A051611

/-- `eq[1, A053603(a(A053603(n)))]` -/
def P16256900131689810221.Spec : Prop :=
  ∀ n, (P16256900131689810221.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P174004419426073716

`eq[2*A010054(n), A008441(n)]`
-/

namespace A051611.P174004419426073716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P174004419426073716

namespace A051611

/-- `eq[2*A010054(n), A008441(n)]` -/
def P174004419426073716.Spec : Prop :=
  ∀ n, (P174004419426073716.a n : ℤ) = A051611 (n + 1)

end A051611

/-! ## A051611.P2288223194065930837

`eq[A036987(2*n), A053603(n)]`
-/

namespace A051611.P2288223194065930837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051611.P2288223194065930837

namespace A051611

/-- `eq[A036987(2*n), A053603(n)]` -/
def P2288223194065930837.Spec : Prop :=
  ∀ n, (P2288223194065930837.a n : ℤ) = A051611 (n + 1)

end A051611

/-!
# A051612: a(n) = sigma(n) - phi(n).

The programs for A051612, the canonical program `A051612.P4135239823752248514` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051612 has offset 1).

The definition of A051612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A000010(n+1)` (program `A051612.P4135239823752248514`, by `A051612.P4135239823752248514.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051612.P4135239823752248514

`A000203(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051612

/-- `A000203(n+1)-A000010(n+1)` -/
def P4135239823752248514.Spec : Prop :=
  ∀ n, P4135239823752248514.a n = A051612 (n + 1)

theorem P4135239823752248514.correct : P4135239823752248514.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel]

end A051612

/-! ## A051612.P12731206478078100994

`A228947(n+1)+1+n`
-/

namespace A051612.P12731206478078100994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + 1 + (n : ℤ)

end

end A051612.P12731206478078100994

namespace A051612

/-- `A228947(n+1)+1+n` -/
def P12731206478078100994.Spec : Prop :=
  ∀ n, P12731206478078100994.a n = A051612 (n + 1)

theorem P12731206478078100994.correct : P12731206478078100994.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P12731206478078100994.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A228947, A228947.P1027786129053480284.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P6096104683412009494

`∑{d}[n+1, #]-Δ[A005728(n)]`
-/

namespace A051612.P6096104683412009494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A051612.P6096104683412009494

namespace A051612

/-- `∑{d}[n+1, #]-Δ[A005728(n)]` -/
def P6096104683412009494.Spec : Prop :=
  ∀ n, P6096104683412009494.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P10722794005873897601

`∑{d}[n+1, #]-A349137(Δ[n²])`
-/

namespace A051612.P10722794005873897601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A349137 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A051612.P10722794005873897601

namespace A051612

/-- `∑{d}[n+1, #]-A349137(Δ[n²])` -/
def P10722794005873897601.Spec : Prop :=
  ∀ n, P10722794005873897601.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P15860713123318287572

`∑{d}[n+1, #]-sqrt(A127473(n+1))`
-/

namespace A051612.P15860713123318287572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) - Real.sqrt (A127473 (n + 1) : ℝ)

end

end A051612.P15860713123318287572

namespace A051612

/-- `∑{d}[n+1, #]-sqrt(A127473(n+1))` -/
def P15860713123318287572.Spec : Prop :=
  ∀ n, P15860713123318287572.a n = (A051612 (n + 1) : ℝ)

end A051612

/-! ## A051612.P8378681990443859865

`∑{d}[n+1, #]-Δ[A100449(n)/4]`
-/

namespace A051612.P8378681990443859865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - (f2 (n + 1) - f2 n)

end

end A051612.P8378681990443859865

namespace A051612

/-- `∑{d}[n+1, #]-Δ[A100449(n)/4]` -/
def P8378681990443859865.Spec : Prop :=
  ∀ n, P8378681990443859865.a n = (A051612 (n + 1) : ℚ)

end A051612

/-! ## A051612.P11693493495301445485

`∑{d}[n+1, #]-A319998(2*(n+1))/2`
-/

namespace A051612.P11693493495301445485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - (A319998 (2 * (n + 1)) : ℚ) / 2

end

end A051612.P11693493495301445485

namespace A051612

/-- `∑{d}[n+1, #]-A319998(2*(n+1))/2` -/
def P11693493495301445485.Spec : Prop :=
  ∀ n, P11693493495301445485.a n = (A051612 (n + 1) : ℚ)

end A051612

/-! ## A051612.P12913053900990917535

`A000005(n+1)+∑{d}[n+1, #-1]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A051612.P12913053900990917535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (((∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) : ℤ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A051612.P12913053900990917535

namespace A051612

/-- `A000005(n+1)+∑{d}[n+1, #-1]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P12913053900990917535.Spec : Prop :=
  ∀ n, P12913053900990917535.a n = (A051612 (n + 1) : ℚ)

end A051612

/-! ## A051612.P7610373002286684016

`Δ[A160664(n)-A002088(n)]`
-/

namespace A051612.P7610373002286684016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051612.P7610373002286684016

namespace A051612

/-- `Δ[A160664(n)-A002088(n)]` -/
def P7610373002286684016.Spec : Prop :=
  ∀ n, P7610373002286684016.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P7931200859307045749

`Δ[A160664(n)-A005728(n)]`
-/

namespace A051612.P7931200859307045749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051612.P7931200859307045749

namespace A051612

/-- `Δ[A160664(n)-A005728(n)]` -/
def P7931200859307045749.Spec : Prop :=
  ∀ n, P7931200859307045749.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P16985468367212141069

`A000203(n+1)-Δ[A002088(n)]`
-/

namespace A051612.P16985468367212141069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A051612.P16985468367212141069

namespace A051612

/-- `A000203(n+1)-Δ[A002088(n)]` -/
def P16985468367212141069.Spec : Prop :=
  ∀ n, P16985468367212141069.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P14608392601333774738

`A000203(n+1)-Δ[A005728(n)]`
-/

namespace A051612.P14608392601333774738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A051612.P14608392601333774738

namespace A051612

/-- `A000203(n+1)-Δ[A005728(n)]` -/
def P14608392601333774738.Spec : Prop :=
  ∀ n, P14608392601333774738.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P18446287311828890404

`Δ[A160664(n)]-A000010(n+1)`
-/

namespace A051612.P18446287311828890404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000010 (n + 1)

end

end A051612.P18446287311828890404

namespace A051612

/-- `Δ[A160664(n)]-A000010(n+1)` -/
def P18446287311828890404.Spec : Prop :=
  ∀ n, P18446287311828890404.a n = A051612 (n + 1)

end A051612

/-! ## A051612.P5718280183878383082

`A046520(n+1)+A000005(n+1)`
-/

namespace A051612.P5718280183878383082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + A000005 (n + 1)

end

end A051612.P5718280183878383082

namespace A051612

/-- `A046520(n+1)+A000005(n+1)` -/
def P5718280183878383082.Spec : Prop :=
  ∀ n, P5718280183878383082.a n = A051612 (n + 1)

theorem P5718280183878383082.correct : P5718280183878383082.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P5718280183878383082.a, A051612.P4135239823752248514.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P5155077839719293782

`A051953(n+1)+A001065(n+1)`
-/

namespace A051612.P5155077839719293782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A001065 (n + 1)

end

end A051612.P5155077839719293782

namespace A051612

/-- `A051953(n+1)+A001065(n+1)` -/
def P5155077839719293782.Spec : Prop :=
  ∀ n, P5155077839719293782.a n = A051612 (n + 1)

theorem P5155077839719293782.correct : P5155077839719293782.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P5155077839719293782.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P1912307399925487166

`A053158(n+1)+A033880(n+1)`
-/

namespace A051612.P1912307399925487166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) + A033880 (n + 1)

end

end A051612.P1912307399925487166

namespace A051612

/-- `A053158(n+1)+A033880(n+1)` -/
def P1912307399925487166.Spec : Prop :=
  ∀ n, P1912307399925487166.a n = A051612 (n + 1)

theorem P1912307399925487166.correct : P1912307399925487166.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P1912307399925487166.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A053158, A053158.P11533641159092355549.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P16293677577131993941

`A098189(n+1)+A048146(n+1)`
-/

namespace A051612.P16293677577131993941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + A048146 (n + 1)

end

end A051612.P16293677577131993941

namespace A051612

/-- `A098189(n+1)+A048146(n+1)` -/
def P16293677577131993941.Spec : Prop :=
  ∀ n, P16293677577131993941.a n = A051612 (n + 1)

theorem P16293677577131993941.correct : P16293677577131993941.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P16293677577131993941.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048146, A048146.P9985884013456677192.a, A098189, A098189.P4675613756573831951.a, A003557, A003557.P6364735403900941810.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P15067891152889793376

`A200905(n+1)+A079546(n+1)`
-/

namespace A051612.P15067891152889793376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (n + 1) + A079546 (n + 1)

end

end A051612.P15067891152889793376

namespace A051612

/-- `A200905(n+1)+A079546(n+1)` -/
def P15067891152889793376.Spec : Prop :=
  ∀ n, P15067891152889793376.a n = A051612 (n + 1)

theorem P15067891152889793376.correct : P15067891152889793376.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P15067891152889793376.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079546, A079546.P211556201582086186.a, A200905, A200905.P16128160975711994279.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P12266780457963735618

`A053158(n+1)-A033879(n+1)`
-/

namespace A051612.P12266780457963735618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A033879 (n + 1)

end

end A051612.P12266780457963735618

namespace A051612

/-- `A053158(n+1)-A033879(n+1)` -/
def P12266780457963735618.Spec : Prop :=
  ∀ n, P12266780457963735618.a n = A051612 (n + 1)

theorem P12266780457963735618.correct : P12266780457963735618.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P12266780457963735618.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-! ## A051612.P17209535751809719840

`A324048(n+1)-A051953(n+1)`
-/

namespace A051612.P17209535751809719840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1) - A051953 (n + 1)

end

end A051612.P17209535751809719840

namespace A051612

/-- `A324048(n+1)-A051953(n+1)` -/
def P17209535751809719840.Spec : Prop :=
  ∀ n, P17209535751809719840.a n = A051612 (n + 1)

theorem P17209535751809719840.correct : P17209535751809719840.Spec := by
  intro n
  simp only [A051612, Nat.add_sub_cancel, A051612.P17209535751809719840.a, A051612.P4135239823752248514.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A324048, A324048.P2740531755121187895.a, A003557, A003557.P6364735403900941810.a, A083254, A083254.P7544960031424623367.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051612

/-!
# A051613: a(n) = partitions of n into powers of distinct primes (1 not considered a power).

The programs for A051613, there is no canonical definition to state claims against.
-/

/-! ## A051613.P11952088487067535595

`A106245(n)-a(n-1)` with `a(0)=1`
-/

namespace A051613.P11952088487067535595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106245 n - a (n - 1)

end

end A051613.P11952088487067535595

/-! ## A051613.P11516068093632369386

`A106245(n+1)-Δ[A009490(n)]`
-/

namespace A051613.P11516068093632369386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106245 (n + 1) - (f1 (n + 1) - f1 n)

end

end A051613.P11516068093632369386

/-! ## A051613.P16592808843747267136

`A106245(n+1)+A009490(n)-A009490(n+1)`
-/

namespace A051613.P16592808843747267136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106245 (n + 1) + (A009490 n - A009490 (n + 1))

end

end A051613.P16592808843747267136

/-! ## A051613.P12365558215147516658

`A000194(A215462(∑[A001316(n)]))`
-/

namespace A051613.P12365558215147516658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A215462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A051613.P12365558215147516658

/-! ## A051613.P16909068067265817819

`A139352(A214938(n)+A011772(n+1))`
-/

namespace A051613.P16909068067265817819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A214938 n + A011772 (n + 1)).toNat

end

end A051613.P16909068067265817819

/-!
# A051615: Primes for which A051614 is 3.

The programs for A051615, there is no canonical definition to state claims against.
-/

/-! ## A051615.P208570626885080588

`A045344(eq[3, A051614(n+1)])`
-/

namespace A051615.P208570626885080588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051615.P208570626885080588

/-! ## A051615.P10087502083013351456

`A065091(eq[3, A051614(n+1)])`
-/

namespace A051615.P10087502083013351456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051615.P10087502083013351456

/-! ## A051615.P358613402546148696

`A000040(eq[3, A051614(n+1)]+1)`
-/

namespace A051615.P358613402546148696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051615.P358613402546148696

/-! ## A051615.P14991422556748641241

`A008578(eq[3, A051614(n+1)]+2)`
-/

namespace A051615.P14991422556748641241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A051615.P14991422556748641241

/-! ## A051615.P10566248310326796771

`A003961(A000040(eq[3, A051614(n+1)]))`
-/

namespace A051615.P10566248310326796771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A051615.P10566248310326796771

/-!
# A051616: Primes p for which A051614(p) is 3 but are not Sophie Germain primes.

The programs for A051616, there is no canonical definition to state claims against.
-/

/-! ## A051616.P11854607660401081804

`∩[A043297(n+1), A051615(n+1)]`
-/

namespace A051616.P11854607660401081804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P11854607660401081804

/-! ## A051616.P1932385521560302191

`∩[A051615(n+1), A119480(n+1)]`
-/

namespace A051616.P1932385521560302191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P1932385521560302191

/-! ## A051616.P3113553769526396162

`∩[A051615(n+1), A275770(n+1)]`
-/

namespace A051616.P3113553769526396162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P3113553769526396162

/-! ## A051616.P4633481246383738926

`∩[A051615(n+1), A068497(n+1)]`
-/

namespace A051616.P4633481246383738926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P4633481246383738926

/-! ## A051616.P12875327612610714334

`∩[A051615(n+1), A053176(n+1)]`
-/

namespace A051616.P12875327612610714334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P12875327612610714334

/-! ## A051616.P9081349638223966238

`∩[A051615(n+1), A156543(n+1)]`
-/

namespace A051616.P9081349638223966238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P9081349638223966238

/-! ## A051616.P5502902399057126450

`∩[A051615(n+1), A079698(n)]`
-/

namespace A051616.P5502902399057126450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P5502902399057126450

/-! ## A051616.P10165317201422951321

`∩[A051615(n+1), A067776(n+1)]`
-/

namespace A051616.P10165317201422951321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P10165317201422951321

/-! ## A051616.P7546504675934023130

`∩[A051615(n+1), A396685(n+1)]`
-/

namespace A051616.P7546504675934023130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P7546504675934023130

/-! ## A051616.P1674826132564307940

`∩[A051615(n+1), A166602(n+1)]`
-/

namespace A051616.P1674826132564307940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P1674826132564307940

/-! ## A051616.P17941534742077103362

`∩[A051615(n+1), A393401(n+1)]`
-/

namespace A051616.P17941534742077103362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P17941534742077103362

/-! ## A051616.P9817197420256488033

`∩[A051615(n+1), A079695(n+1)]`
-/

namespace A051616.P9817197420256488033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P9817197420256488033

/-! ## A051616.P3345628751440770073

`∩[A051615(n+1), A328414(n+1)]`
-/

namespace A051616.P3345628751440770073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P3345628751440770073

/-! ## A051616.P3901128015504689167

`∩[A051615(n+1), A104278(n+1)]`
-/

namespace A051616.P3901128015504689167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P3901128015504689167

/-! ## A051616.P10689595220541936189

`∩[A051615(n+1), A392001(n+1)]`
-/

namespace A051616.P10689595220541936189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P10689595220541936189

/-! ## A051616.P8898174689143291162

`∩[A051615(n+1), A226567(n+1)]`
-/

namespace A051616.P8898174689143291162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P8898174689143291162

/-! ## A051616.P18420251505128057638

`∩[A051615(n+1), A083390(n+1)]`
-/

namespace A051616.P18420251505128057638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P18420251505128057638

/-! ## A051616.P10309802134264120847

`∩[A047845(n+1), A051615(n+1)]`
-/

namespace A051616.P10309802134264120847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051616.P10309802134264120847

/-! ## A051616.P9028225930435114447

`p?[n*A022003(A281680(n))]`
-/

namespace A051616.P9028225930435114447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022003 (A281680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051616.P9028225930435114447

/-! ## A051616.P16312636066897013758

`eq[A049347(A281680(n)), A072480(n)]`
-/

namespace A051616.P16312636066897013758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A281680 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051616.P16312636066897013758

/-!
# A051617: a(n) = (4*n+5)(!^4)/5(!^4), related to A007696(n+1) ((4*n+1)(!^4) quartic, or 4-factorials).

The programs for A051617, there is no canonical definition to state claims against.
-/

/-! ## A051617.P16137415610878900332

`∏[4*n+5]/5`
-/

namespace A051617.P16137415610878900332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5

end

end A051617.P16137415610878900332

/-! ## A051617.P16916868454015121465

`∏[a(n-1)+4]` with `a(0)=1, a(1)=9`
-/

namespace A051617.P16916868454015121465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P16916868454015121465

/-! ## A051617.P15362524075008411290

`∏[gcd(4*n+5, floor(acot(n)))]`
-/

namespace A051617.P15362524075008411290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 5 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P15362524075008411290

/-! ## A051617.P1056873643202468801

`(4*n+5)*a(n-1)` with `a(0)=1`
-/

namespace A051617.P1056873643202468801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 5) * a (n - 1)

end

end A051617.P1056873643202468801

/-! ## A051617.P13628775522175808204

`∏[(4*n+5)^ceil(abs(sin(n)))]`
-/

namespace A051617.P13628775522175808204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P13628775522175808204

/-! ## A051617.P3309233041071473652

`∏[C(4*n+5, ceil(sin(n)²))]`
-/

namespace A051617.P3309233041071473652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 5) ⌈Real.sin (n : ℝ) ^ 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P3309233041071473652

/-! ## A051617.P18150041110271810137

`∏[lt[A112198(n), 0]]`
-/

namespace A051617.P18150041110271810137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112198 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P18150041110271810137

/-! ## A051617.P1686737189962511662

`∏[A061570(n+2)+n]`
-/

namespace A051617.P1686737189962511662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P1686737189962511662

/-! ## A051617.P9731901333075440087

`∏[record[A306546(n+2)-n]]`
-/

namespace A051617.P9731901333075440087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306546 (n + 2) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051617.P9731901333075440087

/-! ## A051617.P1260947619036976707

`a(n-1)*A029611(n²)` with `a(0)=1`
-/

namespace A051617.P1260947619036976707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A029611 (n ^ 2)

end

end A051617.P1260947619036976707

/-!
# A051618: a(n) = (4*n+6)(!^4)/6(!^4).

The programs for A051618, the canonical program `A051618.P9565828047643936222` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051618 has offset 0).

The definition of A051618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051618.P9565828047643936222

`(2*n+3)!/(6*(n+1)!)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051618

/-- `(2*n+3)!/(6*(n+1)!)` -/
def P9565828047643936222.Spec : Prop :=
  ∀ n, P9565828047643936222.a n = (A051618 n : ℚ)

end A051618

/-! ## A051618.P7317546156179521661

`∏[a(n-1)+4]` with `a(0)=1, a(1)=10`
-/

namespace A051618.P7317546156179521661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051618.P7317546156179521661

namespace A051618

/-- `∏[a(n-1)+4]` -/
def P7317546156179521661.Spec : Prop :=
  ∀ n, (P7317546156179521661.a n : ℤ) = A051618 n

end A051618

/-! ## A051618.P14089902087242031608

`∏[record[6-xor(3, -n)]]/3`
-/

namespace A051618.P14089902087242031608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A051618.P14089902087242031608

namespace A051618

/-- `∏[record[6-xor(3, -n)]]/3` -/
def P14089902087242031608.Spec : Prop :=
  ∀ n, P14089902087242031608.a n = (A051618 n : ℚ)

end A051618

/-! ## A051618.P1338973149634996032

`∏[gcd(4*n+6, floor(acot(n)))]`
-/

namespace A051618.P1338973149634996032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 6 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051618.P1338973149634996032

namespace A051618

/-- `∏[gcd(4*n+6, floor(acot(n)))]` -/
def P1338973149634996032.Spec : Prop :=
  ∀ n, (P1338973149634996032.a n : ℤ) = A051618 n

end A051618

/-! ## A051618.P5617370143729877074

`(4*n+6)*a(n-1)` with `a(0)=1`
-/

namespace A051618.P5617370143729877074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 6) * a (n - 1)

end

end A051618.P5617370143729877074

namespace A051618

/-- `(4*n+6)*a(n-1)` -/
def P5617370143729877074.Spec : Prop :=
  ∀ n, (P5617370143729877074.a n : ℤ) = A051618 n

end A051618

/-! ## A051618.P3012898052640475394

`∏[(4*n+6)^ceil(abs(sin(n)))]`
-/

namespace A051618.P3012898052640475394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 6 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051618.P3012898052640475394

namespace A051618

/-- `∏[(4*n+6)^ceil(abs(sin(n)))]` -/
def P3012898052640475394.Spec : Prop :=
  ∀ n, P3012898052640475394.a n = (A051618 n : ℚ)

end A051618

/-! ## A051618.P8439948735025787891

`record[2*n*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A051618.P8439948735025787891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  2 * n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051618.P8439948735025787891

namespace A051618

/-- `record[2*n*a(n-2)]` -/
def P8439948735025787891.Spec : Prop :=
  ∀ n, (P8439948735025787891.a n : ℤ) = A051618 n

end A051618

/-! ## A051618.P14318207867449000377

`2*a(n-1)*log2(8*4^n)` with `a(0)=1`
-/

namespace A051618.P14318207867449000377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * Real.logb 2 (8 * 4 ^ n : ℝ)

end

end A051618.P14318207867449000377

namespace A051618

/-- `2*a(n-1)*log2(8*4^n)` -/
def P14318207867449000377.Spec : Prop :=
  ∀ n, P14318207867449000377.a n = (A051618 n : ℝ)

end A051618

/-! ## A051618.P13375117680618281233

`n!*A002802(n)`
-/

namespace A051618.P13375117680618281233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002802 n

end

end A051618.P13375117680618281233

namespace A051618

/-- `n!*A002802(n)` -/
def P13375117680618281233.Spec : Prop :=
  ∀ n, P13375117680618281233.a n = A051618 n

end A051618

/-! ## A051618.P2414701694496549805

`∏[record[Δ[A131179(n+4)]]]`
-/

namespace A051618.P2414701694496549805
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051618.P2414701694496549805

namespace A051618

/-- `∏[record[Δ[A131179(n+4)]]]` -/
def P2414701694496549805.Spec : Prop :=
  ∀ n, P2414701694496549805.a n = A051618 n

end A051618

/-!
# A051619: a(n) = (4*n+7)(!^4)/7(!^4), related to A034176(n+1) ((4*n+3)(!^4) quartic, or 4-factorials).

The programs for A051619, the canonical program `A051619.P6220942825559059437` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051619 has offset 0).

The definition of A051619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051619.P6220942825559059437

`A034176(n+2)/7`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051619

/-- `A034176(n+2)/7` -/
def P6220942825559059437.Spec : Prop :=
  ∀ n, P6220942825559059437.a n = (A051619 n : ℚ)

end A051619

/-! ## A051619.P17010959194070885104

`∏[a(n-1)+4]` with `a(0)=1, a(1)=11`
-/

namespace A051619.P17010959194070885104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051619.P17010959194070885104

namespace A051619

/-- `∏[a(n-1)+4]` -/
def P17010959194070885104.Spec : Prop :=
  ∀ n, (P17010959194070885104.a n : ℤ) = A051619 n

end A051619

/-! ## A051619.P14381834114536401583

`(4*n+7)*a(n-1)` with `a(0)=1`
-/

namespace A051619.P14381834114536401583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 7) * a (n - 1)

end

end A051619.P14381834114536401583

namespace A051619

/-- `(4*n+7)*a(n-1)` -/
def P14381834114536401583.Spec : Prop :=
  ∀ n, (P14381834114536401583.a n : ℤ) = A051619 n

end A051619

/-! ## A051619.P15379037772842973928

`∏[record[2*n-a(n-2)]]` with `a(0)=1, a(1)=-5, a(2)=1`
-/

namespace A051619.P15379037772842973928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -5, 1] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051619.P15379037772842973928

namespace A051619

/-- `∏[record[2*n-a(n-2)]]` -/
def P15379037772842973928.Spec : Prop :=
  ∀ n, P15379037772842973928.a n = A051619 n

end A051619

/-! ## A051619.P9318642043883580812

`∏[2*A062545(n)+1]`
-/

namespace A051619.P9318642043883580812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062545 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051619.P9318642043883580812

namespace A051619

/-- `∏[2*A062545(n)+1]` -/
def P9318642043883580812.Spec : Prop :=
  ∀ n, P9318642043883580812.a n = A051619 n

end A051619

/-! ## A051619.P4935770500770544310

`a(n-1)*A004767(n+1)` with `a(0)=1`
-/

namespace A051619.P4935770500770544310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004767 (n + 1)

end

end A051619.P4935770500770544310

namespace A051619

/-- `a(n-1)*A004767(n+1)` -/
def P4935770500770544310.Spec : Prop :=
  ∀ n, P4935770500770544310.a n = A051619 n

end A051619

/-! ## A051619.P15274529152562583407

`a(n-1)*A217585(n+2)` with `a(0)=1`
-/

namespace A051619.P15274529152562583407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A217585 (n + 2)

end

end A051619.P15274529152562583407

namespace A051619

/-- `a(n-1)*A217585(n+2)` -/
def P15274529152562583407.Spec : Prop :=
  ∀ n, P15274529152562583407.a n = A051619 n

end A051619

/-! ## A051619.P10932118294688981754

`a(n-1)*A131098(n+3)` with `a(0)=1`
-/

namespace A051619.P10932118294688981754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A131098 (n + 3)

end

end A051619.P10932118294688981754

namespace A051619

/-- `a(n-1)*A131098(n+3)` -/
def P10932118294688981754.Spec : Prop :=
  ∀ n, P10932118294688981754.a n = A051619 n

end A051619

/-! ## A051619.P11373289587041805955

`a(n-1)*A168321(8*n)` with `a(0)=1`
-/

namespace A051619.P11373289587041805955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A168321 (8 * n)

end

end A051619.P11373289587041805955

namespace A051619

/-- `a(n-1)*A168321(8*n)` -/
def P11373289587041805955.Spec : Prop :=
  ∀ n, P11373289587041805955.a n = A051619 n

end A051619

/-! ## A051619.P17569966073821168427

`∏[A005408(A062545(n))]`
-/

namespace A051619.P17569966073821168427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051619.P17569966073821168427

namespace A051619

/-- `∏[A005408(A062545(n))]` -/
def P17569966073821168427.Spec : Prop :=
  ∀ n, P17569966073821168427.a n = A051619 n

end A051619

/-!
# A051620: a(n) = (4*n+8)(!^4)/8(!^4), related to A034177(n+1) ((4*n+4)(!^4) quartic, or 4-factorials).

The programs for A051620, the canonical program `A051620.P15514657218994344111` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051620 has offset 0).

The definition of A051620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051620.P15514657218994344111

`A034177(n+2)/8`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051620

/-- `A034177(n+2)/8` -/
def P15514657218994344111.Spec : Prop :=
  ∀ n, P15514657218994344111.a n = (A051620 n : ℚ)

end A051620

/-! ## A051620.P4952520785037148202

`∏[4*(n+2)]/8`
-/

namespace A051620.P4952520785037148202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A051620.P4952520785037148202

namespace A051620

/-- `∏[4*(n+2)]/8` -/
def P4952520785037148202.Spec : Prop :=
  ∀ n, P4952520785037148202.a n = (A051620 n : ℚ)

end A051620

/-! ## A051620.P12441783029567199269

`∏[a(n-1)+4]` with `a(0)=1, a(1)=12`
-/

namespace A051620.P12441783029567199269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051620.P12441783029567199269

namespace A051620

/-- `∏[a(n-1)+4]` -/
def P12441783029567199269.Spec : Prop :=
  ∀ n, (P12441783029567199269.a n : ℤ) = A051620 n

end A051620

/-! ## A051620.P5949808886468407246

`4^n/2*(n+2)!`
-/

namespace A051620.P5949808886468407246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2 * (Nat.factorial (n + 2) : ℚ)

end

end A051620.P5949808886468407246

namespace A051620

/-- `4^n/2*(n+2)!` -/
def P5949808886468407246.Spec : Prop :=
  ∀ n, P5949808886468407246.a n = (A051620 n : ℚ)

end A051620

/-! ## A051620.P8497553276953138240

`4*(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A051620.P8497553276953138240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((n + 2) * a (n - 1))

end

end A051620.P8497553276953138240

namespace A051620

/-- `4*(n+2)*a(n-1)` -/
def P8497553276953138240.Spec : Prop :=
  ∀ n, (P8497553276953138240.a n : ℤ) = A051620 n

end A051620

/-! ## A051620.P567618837185604229

`4^n*n!*∑[n+1]`
-/

namespace A051620.P567618837185604229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051620.P567618837185604229

namespace A051620

/-- `4^n*n!*∑[n+1]` -/
def P567618837185604229.Spec : Prop :=
  ∀ n, (P567618837185604229.a n : ℤ) = A051620 n

end A051620

/-! ## A051620.P3220491741646785954

`record[2*n*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=0`
-/

namespace A051620.P3220491741646785954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 0] fun n f1 =>
  2 * n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051620.P3220491741646785954

namespace A051620

/-- `record[2*n*a(n-2)]` -/
def P3220491741646785954.Spec : Prop :=
  ∀ n, (P3220491741646785954.a n : ℤ) = A051620 n

end A051620

/-! ## A051620.P1522911145864747998

`n!*A038845(n)`
-/

namespace A051620.P1522911145864747998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A038845 n

end

end A051620.P1522911145864747998

namespace A051620

/-- `n!*A038845(n)` -/
def P1522911145864747998.Spec : Prop :=
  ∀ n, P1522911145864747998.a n = A051620 n

end A051620

/-! ## A051620.P9068366636255899522

`∑[n+1]*A047053(n)`
-/

namespace A051620.P9068366636255899522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A047053 n

end

end A051620.P9068366636255899522

namespace A051620

/-- `∑[n+1]*A047053(n)` -/
def P9068366636255899522.Spec : Prop :=
  ∀ n, P9068366636255899522.a n = A051620 n

end A051620

/-! ## A051620.P7937832877262810521

`∑[n+1]*A087299(2*n)`
-/

namespace A051620.P7937832877262810521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A087299 (2 * n)

end

end A051620.P7937832877262810521

namespace A051620

/-- `∑[n+1]*A087299(2*n)` -/
def P7937832877262810521.Spec : Prop :=
  ∀ n, P7937832877262810521.a n = A051620 n

end A051620

/-!
# A051621: a(n) = (4*n+9)(!^4)/9(!^4), related to A007696(n+1) ((4*n+1)(!^4) quartic, or 4-factorials).

The programs for A051621, there is no canonical definition to state claims against.
-/

/-! ## A051621.P16628331862385111389

`∏[4*n+9]/9`
-/

namespace A051621.P16628331862385111389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A051621.P16628331862385111389

/-! ## A051621.P16833689810022710603

`∏[a(n-1)+4]` with `a(0)=1, a(1)=13`
-/

namespace A051621.P16833689810022710603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051621.P16833689810022710603

/-! ## A051621.P7545432495771485935

`(4*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A051621.P7545432495771485935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 9) * a (n - 1)

end

end A051621.P7545432495771485935

/-! ## A051621.P7819467660918257818

`∏[3*n+dr(9^dr(n))+n]`
-/

namespace A051621.P7819467660918257818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (SequenceMachineLib.digitalRoot (9 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051621.P7819467660918257818

/-! ## A051621.P349150110954088377

`∏[record[A121511(2*n+1)]]`
-/

namespace A051621.P349150110954088377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051621.P349150110954088377

/-! ## A051621.P3863896510847211047

`a(n-1)*A004766(n+2)` with `a(0)=1`
-/

namespace A051621.P3863896510847211047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A004766 (n + 2)

end

end A051621.P3863896510847211047

/-! ## A051621.P9468306412800797069

`a(n-1)*A016813(n+2)` with `a(0)=1`
-/

namespace A051621.P9468306412800797069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016813 (n + 2)

end

end A051621.P9468306412800797069

/-! ## A051621.P13254384114946784744

`a(n-1)*A222945(n+2)` with `a(0)=1`
-/

namespace A051621.P13254384114946784744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A222945 (n + 2)

end

end A051621.P13254384114946784744

/-! ## A051621.P14711713055378802816

`∏[A016813(log2(A146541(n)))]`
-/

namespace A051621.P14711713055378802816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway (Real.logb 2 (A146541 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051621.P14711713055378802816

/-! ## A051621.P1621090203292065118

`∏[A016813(A114637(n+1))]`
-/

namespace A051621.P1621090203292065118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A114637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051621.P1621090203292065118

/-!
# A051622: a(n) = (4*n+10)(!^4)/10(!^4), related to A000407 ((4*n+2)(!^4) quartic, or 4-factorials).

The programs for A051622, there is no canonical definition to state claims against.
-/

/-! ## A051622.P822637968277093162

`∏[4*n+10]/10`
-/

namespace A051622.P822637968277093162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A051622.P822637968277093162

/-! ## A051622.P13077509698928750564

`∏[a(n-1)+4]` with `a(0)=1, a(1)=14`
-/

namespace A051622.P13077509698928750564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051622.P13077509698928750564

/-! ## A051622.P11563234885770310377

`(4*n+10)*a(n-1)` with `a(0)=1`
-/

namespace A051622.P11563234885770310377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 10) * a (n - 1)

end

end A051622.P11563234885770310377

/-! ## A051622.P15124583493923675261

`record[2*n*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=0, a(4)=-4, a(5)=1`
-/

namespace A051622.P15124583493923675261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 0, -4, 1] fun n f1 =>
  (2 * n : ℤ) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051622.P15124583493923675261

/-! ## A051622.P10318325198862350190

`n!*A020918(n)`
-/

namespace A051622.P10318325198862350190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A020918 n

end

end A051622.P10318325198862350190

/-! ## A051622.P9435757209635671573

`2^n*A051579(n)`
-/

namespace A051622.P9435757209635671573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A051579 n

end

end A051622.P9435757209635671573

/-! ## A051622.P13855938926188433039

`a(n-1)*A016825(n+2)` with `a(0)=1`
-/

namespace A051622.P13855938926188433039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016825 (n + 2)

end

end A051622.P13855938926188433039

/-! ## A051622.P15891546772186991459

`a(n-1)*A073760(n+2)` with `a(0)=1`
-/

namespace A051622.P15891546772186991459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A073760 (n + 2)

end

end A051622.P15891546772186991459

/-! ## A051622.P16580565941938620249

`a(n-1)*A131439(n+2)` with `a(0)=1`
-/

namespace A051622.P16580565941938620249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A131439 (n + 2)

end

end A051622.P16580565941938620249

/-! ## A051622.P7814037467001784956

`a(n-1)*A113127(n+3)` with `a(0)=1`
-/

namespace A051622.P7814037467001784956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A113127 (n + 3)

end

end A051622.P7814037467001784956

/-!
# A051624: 12-gonal (or dodecagonal) numbers: a(n) = n*(5*n-4).

The programs for A051624, the canonical program `A051624.P2353499915457724243` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051624 has offset 0).

The definition of A051624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n-4)` (program `A051624.P2353499915457724243`, by `A051624.P2353499915457724243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051624.P5089005227058571307

`(5*n-4)*n`
-/

namespace A051624.P5089005227058571307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - 4) * (n : ℤ)

end

end A051624.P5089005227058571307

namespace A051624

/-- `(5*n-4)*n` -/
def P5089005227058571307.Spec : Prop :=
  ∀ n, P5089005227058571307.a n = A051624 n

theorem P5089005227058571307.correct : P5089005227058571307.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P5089005227058571307.a, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051624

/-! ## A051624.P2353499915457724243

`n*(5*n-4)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051624

/-- `n*(5*n-4)` -/
def P2353499915457724243.Spec : Prop :=
  ∀ n, P2353499915457724243.a n = A051624 n

theorem P2353499915457724243.correct : P2353499915457724243.Spec := by
  intro n
  simp only [A051624]

end A051624

/-! ## A051624.P11507342290509096544

`A131242(10*n)`
-/

namespace A051624.P11507342290509096544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (10 * n)

end

end A051624.P11507342290509096544

namespace A051624

/-- `A131242(10*n)` -/
def P11507342290509096544.Spec : Prop :=
  ∀ n, P11507342290509096544.a n = A051624 n

end A051624

/-! ## A051624.P7930801394370879626

`10*C(n, 2)+n`
-/

namespace A051624.P7930801394370879626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 2 + n

end

end A051624.P7930801394370879626

namespace A051624

/-- `10*C(n, 2)+n` -/
def P7930801394370879626.Spec : Prop :=
  ∀ n, (P7930801394370879626.a n : ℤ) = A051624 n

theorem P7930801394370879626.correct : P7930801394370879626.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P7930801394370879626.a, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P10111126122068478768

`∑[a(n-1)+10]` with `a(0)=0, a(1)=1`
-/

namespace A051624.P10111126122068478768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051624.P10111126122068478768

namespace A051624

/-- `∑[a(n-1)+10]` -/
def P10111126122068478768.Spec : Prop :=
  ∀ n, (P10111126122068478768.a n : ℤ) = A051624 n

end A051624

/-! ## A051624.P5339717478642415474

`∑[ogf((x+9x^2)/(1-2x+x^2))]`
-/

namespace A051624.P5339717478642415474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051624.P5339717478642415474

namespace A051624

/-- `∑[ogf((x+9x^2)/(1-2x+x^2))]` -/
def P5339717478642415474.Spec : Prop :=
  ∀ n, P5339717478642415474.a n = A051624 n

end A051624

/-! ## A051624.P11911128306625517122

`ogf((x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051624.P11911128306625517122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9] [1, -3, 3, -1] n

end

end A051624.P11911128306625517122

namespace A051624

/-- `ogf((x+9x^2)/(1-3x+3x^2-x^3))` -/
def P11911128306625517122.Spec : Prop :=
  ∀ n, P11911128306625517122.a n = A051624 n

end A051624

/-! ## A051624.P6865262979224666815

`9-∑[a(n-1)-10]` with `a(0)=9`
-/

namespace A051624.P6865262979224666815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051624.P6865262979224666815

namespace A051624

/-- `9-∑[a(n-1)-10]` -/
def P6865262979224666815.Spec : Prop :=
  ∀ n, P6865262979224666815.a n = A051624 n

end A051624

/-! ## A051624.P1374797026248139187

`A190816(n)-1`
-/

namespace A051624.P1374797026248139187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n - 1

end

end A051624.P1374797026248139187

namespace A051624

/-- `A190816(n)-1` -/
def P1374797026248139187.Spec : Prop :=
  ∀ n, P1374797026248139187.a n = A051624 n

theorem P1374797026248139187.correct : P1374797026248139187.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P1374797026248139187.a, A051624.P2353499915457724243.a, A190816, A190816.P8283183310090663644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P3066365581884796075

`A152965(n)/2`
-/

namespace A051624.P3066365581884796075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152965 n : ℚ) / 2

end

end A051624.P3066365581884796075

namespace A051624

/-- `A152965(n)/2` -/
def P3066365581884796075.Spec : Prop :=
  ∀ n, P3066365581884796075.a n = (A051624 n : ℚ)

theorem P3066365581884796075.correct : P3066365581884796075.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P3066365581884796075.a, A051624.P2353499915457724243.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P172213367488386439

`A153448(n)/3`
-/

namespace A051624.P172213367488386439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153448 n : ℚ) / 3

end

end A051624.P172213367488386439

namespace A051624

/-- `A153448(n)/3` -/
def P172213367488386439.Spec : Prop :=
  ∀ n, P172213367488386439.a n = (A051624 n : ℚ)

theorem P172213367488386439.correct : P172213367488386439.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P172213367488386439.a, A051624.P2353499915457724243.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P18328135228860799223

`A135706(n)-n`
-/

namespace A051624.P18328135228860799223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n - (n : ℤ)

end

end A051624.P18328135228860799223

namespace A051624

/-- `A135706(n)-n` -/
def P18328135228860799223.Spec : Prop :=
  ∀ n, P18328135228860799223.a n = A051624 n

theorem P18328135228860799223.correct : P18328135228860799223.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P18328135228860799223.a, A051624.P2353499915457724243.a, A135706, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P16692771152673391155

`A139267(n)-n²`
-/

namespace A051624.P16692771152673391155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n - (n ^ 2 : ℤ)

end

end A051624.P16692771152673391155

namespace A051624

/-- `A139267(n)-n²` -/
def P16692771152673391155.Spec : Prop :=
  ∀ n, P16692771152673391155.a n = A051624 n

theorem P16692771152673391155.correct : P16692771152673391155.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P16692771152673391155.a, A051624.P2353499915457724243.a, A139267, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P16720027689704822960

`A180223(n)-∑[n]`
-/

namespace A051624.P16720027689704822960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051624.P16720027689704822960

namespace A051624

/-- `A180223(n)-∑[n]` -/
def P16720027689704822960.Spec : Prop :=
  ∀ n, P16720027689704822960.a n = A051624 n

end A051624

/-! ## A051624.P15465146813185330930

`2*A000566(n)-n`
-/

namespace A051624.P15465146813185330930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000566 n - (n : ℤ)

end

end A051624.P15465146813185330930

namespace A051624

/-- `2*A000566(n)-n` -/
def P15465146813185330930.Spec : Prop :=
  ∀ n, P15465146813185330930.a n = A051624 n

end A051624

/-! ## A051624.P11334596008107767095

`(A051874(n)+n)/2`
-/

namespace A051624.P11334596008107767095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051874 n + (n : ℤ) : ℚ) / 2

end

end A051624.P11334596008107767095

namespace A051624

/-- `(A051874(n)+n)/2` -/
def P11334596008107767095.Spec : Prop :=
  ∀ n, P11334596008107767095.a n = (A051624 n : ℚ)

theorem P11334596008107767095.correct : P11334596008107767095.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P11334596008107767095.a, A051624.P2353499915457724243.a, A051874, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P15566368438069211391

`A153784(n)/2-n`
-/

namespace A051624.P15566368438069211391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153784 n : ℚ) / 2 - (n : ℚ)

end

end A051624.P15566368438069211391

namespace A051624

/-- `A153784(n)/2-n` -/
def P15566368438069211391.Spec : Prop :=
  ∀ n, P15566368438069211391.a n = (A051624 n : ℚ)

theorem P15566368438069211391.correct : P15566368438069211391.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P15566368438069211391.a, A051624.P2353499915457724243.a, A153784, A153784.P16889375824211601871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P10931828898961659234

`(A263226(n)+n)/3`
-/

namespace A051624.P10931828898961659234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263226 n + (n : ℤ) : ℚ) / 3

end

end A051624.P10931828898961659234

namespace A051624

/-- `(A263226(n)+n)/3` -/
def P10931828898961659234.Spec : Prop :=
  ∀ n, P10931828898961659234.a n = (A051624 n : ℚ)

theorem P10931828898961659234.correct : P10931828898961659234.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P10931828898961659234.a, A051624.P2353499915457724243.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P8233601770044576907

`A033429(n)-4*n`
-/

namespace A051624.P8233601770044576907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n - (4 * n : ℤ)

end

end A051624.P8233601770044576907

namespace A051624

/-- `A033429(n)-4*n` -/
def P8233601770044576907.Spec : Prop :=
  ∀ n, P8233601770044576907.a n = A051624 n

theorem P8233601770044576907.correct : P8233601770044576907.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P8233601770044576907.a, A051624.P2353499915457724243.a, A033429, A033429.P6959806467874002675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-! ## A051624.P1296544144560876845

`A153786(n)/3-n`
-/

namespace A051624.P1296544144560876845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153786 n : ℚ) / 3 - (n : ℚ)

end

end A051624.P1296544144560876845

namespace A051624

/-- `A153786(n)/3-n` -/
def P1296544144560876845.Spec : Prop :=
  ∀ n, P1296544144560876845.a n = (A051624 n : ℚ)

theorem P1296544144560876845.correct : P1296544144560876845.Spec := by
  intro n
  simp only [A051624, Nat.add_sub_cancel, A051624.P1296544144560876845.a, A051624.P2353499915457724243.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051624

/-!
# A051625: Number of "labeled" cyclic subgroups of symmetric group S_n.

The programs for A051625, there is no canonical definition to state claims against.
-/

/-! ## A051625.P1742415697747172630

`A071538(3*A279202(n))`
-/

namespace A051625.P1742415697747172630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (3 * A279202 n).toNat

end

end A051625.P1742415697747172630

/-! ## A051625.P16992137497632840170

`A022290(round(sqrt(A144416(n))))`
-/

namespace A051625.P16992137497632840170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway (Real.sqrt (A144416 n : ℝ))).toNat

end

end A051625.P16992137497632840170

/-!
# A051626: Period of decimal representation of 1/n, or 0 if 1/n terminates.

The programs for A051626, there is no canonical definition to state claims against.
-/

/-! ## A051626.P4142483800948719502

`A007732(n+1)%A132740(n+1)`
-/

namespace A051626.P4142483800948719502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007732 (n + 1)) (A132740 (n + 1))

end

end A051626.P4142483800948719502

/-! ## A051626.P5856844410201318798

`A007732(n+1)-char[A003592(n+1)-1]`
-/

namespace A051626.P5856844410201318798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051626.P5856844410201318798

/-! ## A051626.P2914914215780141702

`A084680(A132740(n+1))%A132740(A000265(n+1))`
-/

namespace A051626.P2914914215780141702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084680 (A132740 (n + 1)).toNat) (A132740 (A000265 (n + 1)).toNat)

end

end A051626.P2914914215780141702

/-! ## A051626.P414148321508783100

`A121341(A132740(n+1))`
-/

namespace A051626.P414148321508783100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A132740 (n + 1)).toNat

end

end A051626.P414148321508783100

/-! ## A051626.P8619669502811178183

`A121341((n+1)/A132741(n+1))`
-/

namespace A051626.P8619669502811178183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A132741 (n + 1) : ℚ))).toNat

end

end A051626.P8619669502811178183

/-! ## A051626.P14206918624081301923

`A121341(n+1)-A051628(n+1)`
-/

namespace A051626.P14206918624081301923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1) - A051628 (n + 1)

end

end A051626.P14206918624081301923

/-! ## A051626.P2117206732906279369

`A121341(n+1)-A121341(A132741(n+1))`
-/

namespace A051626.P2117206732906279369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1) - A121341 (A132741 (n + 1)).toNat

end

end A051626.P2117206732906279369

/-! ## A051626.P12681628265936766975

`A007732(n+1)+A121341(n+1)-A054710(n+1)`
-/

namespace A051626.P12681628265936766975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1) + (A121341 (n + 1) - A054710 (n + 1))

end

end A051626.P12681628265936766975

/-! ## A051626.P5085788620538956813

`A054710(A132740(n+1))-A327172(A132740(n+1)²)`
-/

namespace A051626.P5085788620538956813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (A132740 (n + 1)).toNat - A327172 (A132740 (n + 1) ^ 2).toNat

end

end A051626.P5085788620538956813

/-! ## A051626.P3269546266721912967

`A054710(A132740(n+1))-A151667(A132740(n+1)²)`
-/

namespace A051626.P3269546266721912967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (A132740 (n + 1)).toNat - A151667 (A132740 (n + 1) ^ 2).toNat

end

end A051626.P3269546266721912967

/-! ## A051626.P659124191519647714

`A054710(A132740(n+1))-A183919(A132740((n+1)²))`
-/

namespace A051626.P659124191519647714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (A132740 (n + 1)).toNat - A183919 (A132740 ((n + 1) ^ 2)).toNat

end

end A051626.P659124191519647714

/-!
# A051628: Number of digits in decimal expansion of 1/n before the periodic part begins.

The programs for A051628, the canonical program `A051628.P11491712228383865435` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051628 has offset 1).

The definition of A051628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051628.P11491712228383865435

`A051903(A132741(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051628

/-- `A051903(A132741(n+1))` -/
def P11491712228383865435.Spec : Prop :=
  ∀ n, P11491712228383865435.a n = A051628 (n + 1)

theorem P11491712228383865435.correct : P11491712228383865435.Spec := by
  intro n
  simp only [A051628, Nat.add_sub_cancel]

end A051628

/-! ## A051628.P8888548359019871358

`val(A078242(n+1), 2)`
-/

namespace A051628.P8888548359019871358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078242 (n + 1)).toNat 2

end

end A051628.P8888548359019871358

namespace A051628

/-- `val(A078242(n+1), 2)` -/
def P8888548359019871358.Spec : Prop :=
  ∀ n, (P8888548359019871358.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P7633461784474421940

`val((n+1)*A096686(n+1), 2)`
-/

namespace A051628.P7633461784474421940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A096686 (n + 1)).toNat 2

end

end A051628.P7633461784474421940

namespace A051628

/-- `val((n+1)*A096686(n+1), 2)` -/
def P7633461784474421940.Spec : Prop :=
  ∀ n, (P7633461784474421940.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P16124274614093010532

`A375536(A038502(n+1))`
-/

namespace A051628.P16124274614093010532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A038502 (n + 1)).toNat

end

end A051628.P16124274614093010532

namespace A051628

/-- `A375536(A038502(n+1))` -/
def P16124274614093010532.Spec : Prop :=
  ∀ n, P16124274614093010532.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P1524435587216961294

`A375536(A072436(n+1))`
-/

namespace A051628.P1524435587216961294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A072436 (n + 1)).toNat

end

end A051628.P1524435587216961294

namespace A051628

/-- `A375536(A072436(n+1))` -/
def P1524435587216961294.Spec : Prop :=
  ∀ n, P1524435587216961294.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P11805476998427465549

`A244417(A319521(n+1))`
-/

namespace A051628.P11805476998427465549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (A319521 (n + 1)).toNat

end

end A051628.P11805476998427465549

namespace A051628

/-- `A244417(A319521(n+1))` -/
def P11805476998427465549.Spec : Prop :=
  ∀ n, P11805476998427465549.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P14416412095262407812

`A375536(A247503(n+1))`
-/

namespace A051628.P14416412095262407812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A247503 (n + 1)).toNat

end

end A051628.P14416412095262407812

namespace A051628

/-- `A375536(A247503(n+1))` -/
def P14416412095262407812.Spec : Prop :=
  ∀ n, P14416412095262407812.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P14860477753453147297

`A375536(A343430(n+1))`
-/

namespace A051628.P14860477753453147297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375536 (A343430 (n + 1)).toNat

end

end A051628.P14860477753453147297

namespace A051628

/-- `A375536(A343430(n+1))` -/
def P14860477753453147297.Spec : Prop :=
  ∀ n, P14860477753453147297.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P11631368730808120395

`A054710(n+1)-A007732(n+1)`
-/

namespace A051628.P11631368730808120395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A007732 (n + 1)

end

end A051628.P11631368730808120395

namespace A051628

/-- `A054710(n+1)-A007732(n+1)` -/
def P11631368730808120395.Spec : Prop :=
  ∀ n, P11631368730808120395.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P13934154706103153451

`A054710(n+1)-A054710(A132740(n+1))`
-/

namespace A051628.P13934154706103153451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - A054710 (A132740 (n + 1)).toNat

end

end A051628.P13934154706103153451

namespace A051628

/-- `A054710(n+1)-A054710(A132740(n+1))` -/
def P13934154706103153451.Spec : Prop :=
  ∀ n, P13934154706103153451.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P3274716154755705482

`A007814(n+1)+A112765(n+1)-A122840(n+1)`
-/

namespace A051628.P3274716154755705482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A112765 (n + 1) - A122840 (n + 1))

end

end A051628.P3274716154755705482

namespace A051628

/-- `A007814(n+1)+A112765(n+1)-A122840(n+1)` -/
def P3274716154755705482.Spec : Prop :=
  ∀ n, P3274716154755705482.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P2074274140312447911

`A054710(n+1)-(A051626(n+1)+A000007(A051626(n+1)))`
-/

namespace A051628.P2074274140312447911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1) - (A051626 (n + 1) + A000007 (A051626 (n + 1)).toNat)

end

end A051628.P2074274140312447911

namespace A051628

/-- `A054710(n+1)-(A051626(n+1)+A000007(A051626(n+1)))` -/
def P2074274140312447911.Spec : Prop :=
  ∀ n, P2074274140312447911.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P6199336041590754071

`val(A004290(n+1), 2)`
-/

namespace A051628.P6199336041590754071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004290 (n + 1)).toNat 2

end

end A051628.P6199336041590754071

namespace A051628

/-- `val(A004290(n+1), 2)` -/
def P6199336041590754071.Spec : Prop :=
  ∀ n, (P6199336041590754071.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P3042248447382404571

`val(A257345(n+1), 2)`
-/

namespace A051628.P3042248447382404571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A257345 (n + 1)).toNat 2

end

end A051628.P3042248447382404571

namespace A051628

/-- `val(A257345(n+1), 2)` -/
def P3042248447382404571.Spec : Prop :=
  ∀ n, (P3042248447382404571.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P13839216852774177049

`val(A078248(n+1), 2)`
-/

namespace A051628.P13839216852774177049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078248 (n + 1)).toNat 2

end

end A051628.P13839216852774177049

namespace A051628

/-- `val(A078248(n+1), 2)` -/
def P13839216852774177049.Spec : Prop :=
  ∀ n, (P13839216852774177049.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P8705745273738159020

`val(A078245(2*(n+1)), 5)`
-/

namespace A051628.P8705745273738159020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078245 (2 * (n + 1))).toNat 5

end

end A051628.P8705745273738159020

namespace A051628

/-- `val(A078245(2*(n+1)), 5)` -/
def P8705745273738159020.Spec : Prop :=
  ∀ n, (P8705745273738159020.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P7634594353417203177

`val(A078241(2*(n+1)), 5)`
-/

namespace A051628.P7634594353417203177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A078241 (2 * (n + 1))).toNat 5

end

end A051628.P7634594353417203177

namespace A051628

/-- `val(A078241(2*(n+1)), 5)` -/
def P7634594353417203177.Spec : Prop :=
  ∀ n, (P7634594353417203177.a n : ℤ) = A051628 (n + 1)

end A051628

/-! ## A051628.P6689880917306089355

`A121341((n+1)/A132740(n+1))`
-/

namespace A051628.P6689880917306089355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A132740 (n + 1) : ℚ))).toNat

end

end A051628.P6689880917306089355

namespace A051628

/-- `A121341((n+1)/A132740(n+1))` -/
def P6689880917306089355.Spec : Prop :=
  ∀ n, P6689880917306089355.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P1168514981264095399

`A121341(A132741(2*n+1-n))`
-/

namespace A051628.P1168514981264095399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A132741 (2 * n + 1 - n)).toNat

end

end A051628.P1168514981264095399

namespace A051628

/-- `A121341(A132741(2*n+1-n))` -/
def P1168514981264095399.Spec : Prop :=
  ∀ n, P1168514981264095399.a n = A051628 (n + 1)

end A051628

/-! ## A051628.P12420032903535188835

`A121341(n+1)-A051626(n+1)`
-/

namespace A051628.P12420032903535188835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1) - A051626 (n + 1)

end

end A051628.P12420032903535188835

namespace A051628

/-- `A121341(n+1)-A051626(n+1)` -/
def P12420032903535188835.Spec : Prop :=
  ∀ n, P12420032903535188835.a n = A051628 (n + 1)

end A051628

/-!
# A051629: Poincaré series [or Poincare series] for Gamma_2(1,2).

The programs for A051629, there is no canonical definition to state claims against.
-/

/-! ## A051629.P12950189960467918637

`and(A035363(n), A341870(A001400(n)))`
-/

namespace A051629.P12950189960467918637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035363 n) (A341870 ((A001400 n).toNat + 21))

end

end A051629.P12950189960467918637

/-! ## A051629.P6872604320191414110

`and(A240145(n), A341870(A001400(n)))`
-/

namespace A051629.P6872604320191414110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A240145 (n + 81)) (A341870 ((A001400 n).toNat + 21))

end

end A051629.P6872604320191414110

/-! ## A051629.P13624835239081885277

`and(A035363(n), A066456(A066471(n+1)))`
-/

namespace A051629.P13624835239081885277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035363 n) (A066456 (A066471 (n + 1)).toNat)

end

end A051629.P13624835239081885277

/-! ## A051629.P11587874524833108295

`and(A066456(A066471(n+1)), A240145(n))`
-/

namespace A051629.P11587874524833108295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066456 (A066471 (n + 1)).toNat) (A240145 (n + 81))

end

end A051629.P11587874524833108295

/-! ## A051629.P12423803056032728010

`A324734(A223925(n+2))`
-/

namespace A051629.P12423803056032728010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324734 (A223925 (n + 2)).toNat

end

end A051629.P12423803056032728010

/-!
# A051630: Poincaré series [or Poincare series] (or Molien series) for Gamma_2(1,2)_(2).

The programs for A051630, there is no canonical definition to state claims against.
-/

/-! ## A051630.P17316676755871362819

`A051629(2*n)`
-/

namespace A051630.P17316676755871362819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051629 (2 * n)

end

end A051630.P17316676755871362819

/-! ## A051630.P15855711854991840011

`or(A000007(n), A051629(A005843(n)))`
-/

namespace A051630.P15855711854991840011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A051629 (A005843 n).toNat)

end

end A051630.P15855711854991840011

/-! ## A051630.P9865099166684450494

`A051629(A004277(n))^A080940(Δ[n²])`
-/

namespace A051630.P9865099166684450494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051629 (A004277 n).toNat : ℚ) ^ (A080940 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A051630.P9865099166684450494

/-! ## A051630.P8169934861650755940

`A051629(A005843(n))/and(1, A003625(n+1))`
-/

namespace A051630.P8169934861650755940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051629 (A005843 n).toNat : ℚ) / (Int.land 1 (A003625 (n + 1)) : ℚ)

end

end A051630.P8169934861650755940

/-! ## A051630.P4964811894507737983

`A051629(A005843(n))/A000001(A007918(n))`
-/

namespace A051630.P4964811894507737983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051629 (A005843 n).toNat : ℚ) / (A000001 (A007918 n).toNat : ℚ)

end

end A051630.P4964811894507737983

/-! ## A051630.P13780040978053026193

`A129062(A000217(n))+A051629(A004277(n))`
-/

namespace A051630.P13780040978053026193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (A000217 n).toNat + A051629 (A004277 n).toNat

end

end A051630.P13780040978053026193

/-!
# A051631: Triangle formed using Pascal's rule except begin and end n-th row with n-1.

The programs for A051631, the canonical program `A051631.P14444125950979056489` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051631 has offset 0).

The definition of A051631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051631.P14444125950979056489

`C(row(n)+2, col(n)+1)-3*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051631

/-- `C(row(n)+2, col(n)+1)-3*C(row(n), col(n))` -/
def P14444125950979056489.Spec : Prop :=
  ∀ n, P14444125950979056489.a n = A051631 n

theorem P14444125950979056489.correct : P14444125950979056489.Spec := by
  intro n
  simp only [A051631]

end A051631

/-! ## A051631.P8458763439178597279

`A051632(n)+A007318(n)`
-/

namespace A051631.P8458763439178597279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 n + A007318 n

end

end A051631.P8458763439178597279

namespace A051631

/-- `A051632(n)+A007318(n)` -/
def P8458763439178597279.Spec : Prop :=
  ∀ n, P8458763439178597279.a n = A051631 n

theorem P8458763439178597279.correct : P8458763439178597279.Spec := by
  intro n
  simp only [A051631, Nat.add_sub_cancel, A051631.P8458763439178597279.a, A051631.P14444125950979056489.a, A007318, A007318.P11755526479805562006.a, A051632, A051632.P5030505018056849433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051631

/-! ## A051631.P17531129287709021472

`A028327(n)-A028314(n)`
-/

namespace A051631.P17531129287709021472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A028314 n

end

end A051631.P17531129287709021472

namespace A051631

/-- `A028327(n)-A028314(n)` -/
def P17531129287709021472.Spec : Prop :=
  ∀ n, P17531129287709021472.a n = A051631 n

end A051631

/-! ## A051631.P3749667772792788935

`A051601(n)-A007318(n)`
-/

namespace A051631.P3749667772792788935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n - A007318 n

end

end A051631.P3749667772792788935

namespace A051631

/-- `A051601(n)-A007318(n)` -/
def P3749667772792788935.Spec : Prop :=
  ∀ n, P3749667772792788935.a n = A051631 n

end A051631

/-! ## A051631.P6931744898417410407

`A051597(n)-A028326(n)`
-/

namespace A051631.P6931744898417410407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - A028326 n

end

end A051631.P6931744898417410407

namespace A051631

/-- `A051597(n)-A028326(n)` -/
def P6931744898417410407.Spec : Prop :=
  ∀ n, P6931744898417410407.a n = A051631 n

end A051631

/-! ## A051631.P18296107246094878654

`A051601(n)-(A014473(n)+1)`
-/

namespace A051631.P18296107246094878654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n - (A014473 n + 1)

end

end A051631.P18296107246094878654

namespace A051631

/-- `A051601(n)-(A014473(n)+1)` -/
def P18296107246094878654.Spec : Prop :=
  ∀ n, P18296107246094878654.a n = A051631 n

end A051631

/-! ## A051631.P9470332897562822297

`A134636(n)-A014410(n+2)`
-/

namespace A051631.P9470332897562822297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A014410 (n + 2)

end

end A051631.P9470332897562822297

namespace A051631

/-- `A134636(n)-A014410(n+2)` -/
def P9470332897562822297.Spec : Prop :=
  ∀ n, P9470332897562822297.a n = A051631 n

end A051631

/-! ## A051631.P8731170066081741919

`A028263(n)-2*A028326(n)`
-/

namespace A051631.P8731170066081741919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - 2 * A028326 n

end

end A051631.P8731170066081741919

namespace A051631

/-- `A028263(n)-2*A028326(n)` -/
def P8731170066081741919.Spec : Prop :=
  ∀ n, P8731170066081741919.a n = A051631 n

end A051631

/-! ## A051631.P9177594955971599408

`A051597(n)-2*A007318(n)`
-/

namespace A051631.P9177594955971599408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - 2 * A007318 n

end

end A051631.P9177594955971599408

namespace A051631

/-- `A051597(n)-2*A007318(n)` -/
def P9177594955971599408.Spec : Prop :=
  ∀ n, P9177594955971599408.a n = A051631 n

end A051631

/-! ## A051631.P14851945527182664370

`2*A051597(n)-A028263(n)`
-/

namespace A051631.P14851945527182664370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A028263 n

end

end A051631.P14851945527182664370

namespace A051631

/-- `2*A051597(n)-A028263(n)` -/
def P14851945527182664370.Spec : Prop :=
  ∀ n, P14851945527182664370.a n = A051631 n

end A051631

/-! ## A051631.P13094245131858945758

`A051632(n)+A028326(n)/2`
-/

namespace A051631.P13094245131858945758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051632 n : ℚ) + (A028326 n : ℚ) / 2

end

end A051631.P13094245131858945758

namespace A051631

/-- `A051632(n)+A028326(n)/2` -/
def P13094245131858945758.Spec : Prop :=
  ∀ n, P13094245131858945758.a n = (A051631 n : ℚ)

theorem P13094245131858945758.correct : P13094245131858945758.Spec := by
  intro n
  simp only [A051631, Nat.add_sub_cancel, A051631.P13094245131858945758.a, A051631.P14444125950979056489.a, A028326, A028326.P7676793339942299677.a, A051632, A051632.P5030505018056849433.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051631

/-! ## A051631.P1763286062486196014

`2*A051601(n)-A051597(n)`
-/

namespace A051631.P1763286062486196014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051601 n - A051597 n

end

end A051631.P1763286062486196014

namespace A051631

/-- `2*A051601(n)-A051597(n)` -/
def P1763286062486196014.Spec : Prop :=
  ∀ n, P1763286062486196014.a n = A051631 n

end A051631

/-! ## A051631.P8006732799262670699

`(A051632(n)+A051601(n))/2`
-/

namespace A051631.P8006732799262670699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051632 n + A051601 n : ℚ) / 2

end

end A051631.P8006732799262670699

namespace A051631

/-- `(A051632(n)+A051601(n))/2` -/
def P8006732799262670699.Spec : Prop :=
  ∀ n, P8006732799262670699.a n = (A051631 n : ℚ)

end A051631

/-! ## A051631.P13548255176216591209

`A051601(n)-A028326(n)/2`
-/

namespace A051631.P13548255176216591209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051601 n : ℚ) - (A028326 n : ℚ) / 2

end

end A051631.P13548255176216591209

namespace A051631

/-- `A051601(n)-A028326(n)/2` -/
def P13548255176216591209.Spec : Prop :=
  ∀ n, P13548255176216591209.a n = (A051631 n : ℚ)

end A051631

/-! ## A051631.P4616196560945626258

`A028263(n)-4*A007318(n)`
-/

namespace A051631.P4616196560945626258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - 4 * A007318 n

end

end A051631.P4616196560945626258

namespace A051631

/-- `A028263(n)-4*A007318(n)` -/
def P4616196560945626258.Spec : Prop :=
  ∀ n, P4616196560945626258.a n = A051631 n

end A051631

/-! ## A051631.P11485204338864304027

`A014410(n+2)-(A131060(n)+2)`
-/

namespace A051631.P11485204338864304027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - (A131060 n + 2)

end

end A051631.P11485204338864304027

namespace A051631

/-- `A014410(n+2)-(A131060(n)+2)` -/
def P11485204338864304027.Spec : Prop :=
  ∀ n, P11485204338864304027.a n = A051631 n

end A051631

/-! ## A051631.P17908407765250744477

`A028276(n)-A135089(A028310(n))`
-/

namespace A051631.P17908407765250744477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - A135089 (A028310 n).toNat

end

end A051631.P17908407765250744477

namespace A051631

/-- `A028276(n)-A135089(A028310(n))` -/
def P17908407765250744477.Spec : Prop :=
  ∀ n, P17908407765250744477.a n = A051631 n

end A051631

/-! ## A051631.P35162552842644868

`(A134636(n)-A134059(A028310(n)))/2`
-/

namespace A051631.P35162552842644868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134636 n - A134059 (A028310 n).toNat : ℚ) / 2

end

end A051631.P35162552842644868

namespace A051631

/-- `(A134636(n)-A134059(A028310(n)))/2` -/
def P35162552842644868.Spec : Prop :=
  ∀ n, P35162552842644868.a n = (A051631 n : ℚ)

end A051631

/-! ## A051631.P4774814527902877385

`A028263(n)+A051601(n)-A028276(n)`
-/

namespace A051631.P4774814527902877385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + (A051601 n - A028276 n)

end

end A051631.P4774814527902877385

namespace A051631

/-- `A028263(n)+A051601(n)-A028276(n)` -/
def P4774814527902877385.Spec : Prop :=
  ∀ n, P4774814527902877385.a n = A051631 n

end A051631

/-! ## A051631.P6802780835460787321

`A051597(n)-(A072405(n)+A028262(n))`
-/

namespace A051631.P6802780835460787321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - (A072405 n + A028262 n)

end

end A051631.P6802780835460787321

namespace A051631

/-- `A051597(n)-(A072405(n)+A028262(n))` -/
def P6802780835460787321.Spec : Prop :=
  ∀ n, P6802780835460787321.a n = A051631 n

end A051631

/-!
# A051632: Rows of triangle formed using Pascal's rule except we begin and end the n-th row with n-2.

The programs for A051632, the canonical program `A051632.P5030505018056849433` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051632 has offset 0).

The definition of A051632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051632.P5030505018056849433

`A051631(n)-A007318(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051632

/-- `A051631(n)-A007318(n)` -/
def P5030505018056849433.Spec : Prop :=
  ∀ n, P5030505018056849433.a n = A051632 n

theorem P5030505018056849433.correct : P5030505018056849433.Spec := by
  intro n
  simp only [A051632]

end A051632

/-! ## A051632.P14794894060939268683

`A051601(n)-A028326(n)`
-/

namespace A051632.P14794894060939268683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n - A028326 n

end

end A051632.P14794894060939268683

namespace A051632

/-- `A051601(n)-A028326(n)` -/
def P14794894060939268683.Spec : Prop :=
  ∀ n, P14794894060939268683.a n = A051632 n

end A051632

/-! ## A051632.P16493689999489899804

`A134636(n)-A028263(n)`
-/

namespace A051632.P16493689999489899804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A028263 n

end

end A051632.P16493689999489899804

namespace A051632

/-- `A134636(n)-A028263(n)` -/
def P16493689999489899804.Spec : Prop :=
  ∀ n, P16493689999489899804.a n = A051632 n

theorem P16493689999489899804.correct : P16493689999489899804.Spec := by
  intro n
  simp only [A051632, Nat.add_sub_cancel, A051632.P16493689999489899804.a, A051632.P5030505018056849433.a, A007318, A007318.P11755526479805562006.a, A028263, A028263.P3177418721069471964.a, A051631, A051631.P14444125950979056489.a, A134636, A134636.P14217444213641303487.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051632

/-! ## A051632.P2824962005620149287

`A051631(n)-(A014473(n)+1)`
-/

namespace A051632.P2824962005620149287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n - (A014473 n + 1)

end

end A051632.P2824962005620149287

namespace A051632

/-- `A051631(n)-(A014473(n)+1)` -/
def P2824962005620149287.Spec : Prop :=
  ∀ n, P2824962005620149287.a n = A051632 n

theorem P2824962005620149287.correct : P2824962005620149287.Spec := by
  intro n
  simp only [A051632, Nat.add_sub_cancel, A051632.P2824962005620149287.a, A051632.P5030505018056849433.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A051631, A051631.P14444125950979056489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051632

/-! ## A051632.P1248785496131325460

`A051601(n)-(A109128(n)+1)`
-/

namespace A051632.P1248785496131325460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n - (A109128 n + 1)

end

end A051632.P1248785496131325460

namespace A051632

/-- `A051601(n)-(A109128(n)+1)` -/
def P1248785496131325460.Spec : Prop :=
  ∀ n, P1248785496131325460.a n = A051632 n

end A051632

/-! ## A051632.P17853913470384827098

`A051601(n)-2*A007318(n)`
-/

namespace A051632.P17853913470384827098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n - 2 * A007318 n

end

end A051632.P17853913470384827098

namespace A051632

/-- `A051601(n)-2*A007318(n)` -/
def P17853913470384827098.Spec : Prop :=
  ∀ n, P17853913470384827098.a n = A051632 n

end A051632

/-! ## A051632.P5205951533556379176

`2*A051631(n)-A051601(n)`
-/

namespace A051632.P5205951533556379176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051631 n - A051601 n

end

end A051632.P5205951533556379176

namespace A051632

/-- `2*A051631(n)-A051601(n)` -/
def P5205951533556379176.Spec : Prop :=
  ∀ n, P5205951533556379176.a n = A051632 n

end A051632

/-! ## A051632.P3059455273175966564

`A214292(n)-2*A080233(n)`
-/

namespace A051632.P3059455273175966564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n - 2 * A080233 n

end

end A051632.P3059455273175966564

namespace A051632

/-- `A214292(n)-2*A080233(n)` -/
def P3059455273175966564.Spec : Prop :=
  ∀ n, P3059455273175966564.a n = A051632 n

end A051632

/-! ## A051632.P10155877080503612893

`A051631(n)-A028326(n)/2`
-/

namespace A051632.P10155877080503612893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051631 n : ℚ) - (A028326 n : ℚ) / 2

end

end A051632.P10155877080503612893

namespace A051632

/-- `A051631(n)-A028326(n)/2` -/
def P10155877080503612893.Spec : Prop :=
  ∀ n, P10155877080503612893.a n = (A051632 n : ℚ)

theorem P10155877080503612893.correct : P10155877080503612893.Spec := by
  intro n
  simp only [A051632, Nat.add_sub_cancel, A051632.P10155877080503612893.a, A051632.P5030505018056849433.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A051631, A051631.P14444125950979056489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051632

/-! ## A051632.P3608034895634229504

`A014410(n+2)-2*A028326(n)`
-/

namespace A051632.P3608034895634229504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - 2 * A028326 n

end

end A051632.P3608034895634229504

namespace A051632

/-- `A014410(n+2)-2*A028326(n)` -/
def P3608034895634229504.Spec : Prop :=
  ∀ n, P3608034895634229504.a n = A051632 n

end A051632

/-! ## A051632.P13411648886727977484

`2*A051601(n)-A014410(n+2)`
-/

namespace A051632.P13411648886727977484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051601 n - A014410 (n + 2)

end

end A051632.P13411648886727977484

namespace A051632

/-- `2*A051601(n)-A014410(n+2)` -/
def P13411648886727977484.Spec : Prop :=
  ∀ n, P13411648886727977484.a n = A051632 n

end A051632

/-! ## A051632.P1311233230417814236

`A028263(n)-A135089(A028310(n))`
-/

namespace A051632.P1311233230417814236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - A135089 (A028310 n).toNat

end

end A051632.P1311233230417814236

namespace A051632

/-- `A028263(n)-A135089(A028310(n))` -/
def P1311233230417814236.Spec : Prop :=
  ∀ n, P1311233230417814236.a n = A051632 n

end A051632

/-! ## A051632.P4171534219286314335

`A051597(n)-A134059(A028310(n))`
-/

namespace A051632.P4171534219286314335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - A134059 (A028310 n).toNat

end

end A051632.P4171534219286314335

namespace A051632

/-- `A051597(n)-A134059(A028310(n))` -/
def P4171534219286314335.Spec : Prop :=
  ∀ n, P4171534219286314335.a n = A051632 n

end A051632

/-! ## A051632.P15239012918464947982

`A028276(n)-2*A134059(A028310(n))`
-/

namespace A051632.P15239012918464947982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - 2 * A134059 (A028310 n).toNat

end

end A051632.P15239012918464947982

namespace A051632

/-- `A028276(n)-2*A134059(A028310(n))` -/
def P15239012918464947982.Spec : Prop :=
  ∀ n, P15239012918464947982.a n = A051632 n

end A051632

/-! ## A051632.P13950181495092730470

`A051601(n)+A051601(n)-A051597(n)-A007318(n)`
-/

namespace A051632.P13950181495092730470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + (A051601 n - A051597 n) - A007318 n

end

end A051632.P13950181495092730470

namespace A051632

/-- `A051601(n)+A051601(n)-A051597(n)-A007318(n)` -/
def P13950181495092730470.Spec : Prop :=
  ∀ n, P13950181495092730470.a n = A051632 n

end A051632

/-! ## A051632.P6236691111136881021

`A000007(n+1)-(A156644(n)+A080233(n))`
-/

namespace A051632.P6236691111136881021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A156644 n + A080233 n)

end

end A051632.P6236691111136881021

namespace A051632

/-- `A000007(n+1)-(A156644(n)+A080233(n))` -/
def P6236691111136881021.Spec : Prop :=
  ∀ n, P6236691111136881021.a n = A051632 n

end A051632

/-! ## A051632.P9823967117918895290

`A156644(A007401(n+1))-2*A156644(n)`
-/

namespace A051632.P9823967117918895290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 (A007401 (n + 1)).toNat - 2 * A156644 n

end

end A051632.P9823967117918895290

namespace A051632

/-- `A156644(A007401(n+1))-2*A156644(n)` -/
def P9823967117918895290.Spec : Prop :=
  ∀ n, P9823967117918895290.a n = A051632 n

end A051632

/-! ## A051632.P9100238997547959544

`A080234(comp[∑[n]])`
-/

namespace A051632.P9100238997547959544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080234 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051632.P9100238997547959544

namespace A051632

/-- `A080234(comp[∑[n]])` -/
def P9100238997547959544.Spec : Prop :=
  ∀ n, P9100238997547959544.a n = A051632 n

end A051632

/-! ## A051632.P6023394578232429544

`A080233(A014132(n+1))-2*A080233(n)`
-/

namespace A051632.P6023394578232429544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A014132 (n + 1)).toNat - 2 * A080233 n

end

end A051632.P6023394578232429544

namespace A051632

/-- `A080233(A014132(n+1))-2*A080233(n)` -/
def P6023394578232429544.Spec : Prop :=
  ∀ n, P6023394578232429544.a n = A051632 n

end A051632

/-! ## A051632.P16180158349405712717

`A051597(n)-A008486(A007318(n))`
-/

namespace A051632.P16180158349405712717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - A008486 (A007318 n).toNat

end

end A051632.P16180158349405712717

namespace A051632

/-- `A051597(n)-A008486(A007318(n))` -/
def P16180158349405712717.Spec : Prop :=
  ∀ n, P16180158349405712717.a n = A051632 n

end A051632

/-!
# A051633: a(n) = 5*2^n - 2.

The programs for A051633, the canonical program `A051633.P11921586248056556725` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051633 has offset 0).

The definition of A051633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-2` (program `A051633.P11921586248056556725`, by `A051633.P11921586248056556725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051633.P11921586248056556725

`5*2^n-2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051633

/-- `5*2^n-2` -/
def P11921586248056556725.Spec : Prop :=
  ∀ n, P11921586248056556725.a n = A051633 n

theorem P11921586248056556725.correct : P11921586248056556725.Spec := by
  intro n
  simp only [A051633]

end A051633

/-! ## A051633.P16327511106112920718

`2*(a(n-1)+1)` with `a(0)=3`
-/

namespace A051633.P16327511106112920718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) + 1)

end

end A051633.P16327511106112920718

namespace A051633

/-- `2*(a(n-1)+1)` -/
def P16327511106112920718.Spec : Prop :=
  ∀ n, (P16327511106112920718.a n : ℤ) = A051633 n

theorem P16327511106112920718.correct : P16327511106112920718.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P16327511106112920718.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P16327511106112920718.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P11189744546465009342

`A131051(n+2)`
-/

namespace A051633.P11189744546465009342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 2)

end

end A051633.P11189744546465009342

namespace A051633

/-- `A131051(n+2)` -/
def P11189744546465009342.Spec : Prop :=
  ∀ n, P11189744546465009342.a n = A051633 n

end A051633

/-! ## A051633.P17064471077396806185

`A123208(2*n+1)`
-/

namespace A051633.P17064471077396806185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123208 (2 * n + 1)

end

end A051633.P17064471077396806185

namespace A051633

/-- `A123208(2*n+1)` -/
def P17064471077396806185.Spec : Prop :=
  ∀ n, P17064471077396806185.a n = A051633 n

end A051633

/-! ## A051633.P8254988084882074633

`ogf((3-x)/(1-3x+2x^2))`
-/

namespace A051633.P8254988084882074633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -3, 2] n

end

end A051633.P8254988084882074633

namespace A051633

/-- `ogf((3-x)/(1-3x+2x^2))` -/
def P8254988084882074633.Spec : Prop :=
  ∀ n, P8254988084882074633.a n = A051633 n

end A051633

/-! ## A051633.P13038853657796487993

`abs(2-lcm(5, 2^n))`
-/

namespace A051633.P13038853657796487993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 5 (2 ^ n) : ℤ)|

end

end A051633.P13038853657796487993

namespace A051633

/-- `abs(2-lcm(5, 2^n))` -/
def P13038853657796487993.Spec : Prop :=
  ∀ n, P13038853657796487993.a n = A051633 n

end A051633

/-! ## A051633.P13371570286261945032

`∑[2*a(n-1)]` with `a(0)=3, a(1)=5`
-/

namespace A051633.P13371570286261945032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051633.P13371570286261945032

namespace A051633

/-- `∑[2*a(n-1)]` -/
def P13371570286261945032.Spec : Prop :=
  ∀ n, (P13371570286261945032.a n : ℤ) = A051633 n

end A051633

/-! ## A051633.P9049667509059718785

`lcm(2, a(n-1)+1)` with `a(0)=3, a(1)=8`
-/

namespace A051633.P9049667509059718785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A051633.P9049667509059718785

namespace A051633

/-- `lcm(2, a(n-1)+1)` -/
def P9049667509059718785.Spec : Prop :=
  ∀ n, (P9049667509059718785.a n : ℤ) = A051633 n

end A051633

/-! ## A051633.P13948487494357675389

`2*or(1, a(n-1))` with `a(0)=3, a(1)=8`
-/

namespace A051633.P13948487494357675389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A051633.P13948487494357675389

namespace A051633

/-- `2*or(1, a(n-1))` -/
def P13948487494357675389.Spec : Prop :=
  ∀ n, (P13948487494357675389.a n : ℤ) = A051633 n

end A051633

/-! ## A051633.P5248627522089909402

`2*xor(1, a(n-1))` with `a(0)=3, a(1)=8`
-/

namespace A051633.P5248627522089909402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A051633.P5248627522089909402

namespace A051633

/-- `2*xor(1, a(n-1))` -/
def P5248627522089909402.Spec : Prop :=
  ∀ n, (P5248627522089909402.a n : ℤ) = A051633 n

end A051633

/-! ## A051633.P16040886556115914747

`2*(1-floor(-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A051633.P16040886556115914747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A051633.P16040886556115914747

namespace A051633

/-- `2*(1-floor(-a(n-1)))` -/
def P16040886556115914747.Spec : Prop :=
  ∀ n, P16040886556115914747.a n = A051633 n

theorem P16040886556115914747.correct : P16040886556115914747.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P16040886556115914747.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P16040886556115914747.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P7364206369830895192

`2*(1-ceil(-a(n-1)))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A051633.P7364206369830895192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A051633.P7364206369830895192

namespace A051633

/-- `2*(1-ceil(-a(n-1)))` -/
def P7364206369830895192.Spec : Prop :=
  ∀ n, P7364206369830895192.a n = A051633 n

theorem P7364206369830895192.correct : P7364206369830895192.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P7364206369830895192.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P7364206369830895192.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P9754983428256714548

`2*(1-round(-a(n-1)))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A051633.P9754983428256714548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A051633.P9754983428256714548

namespace A051633

/-- `2*(1-round(-a(n-1)))` -/
def P9754983428256714548.Spec : Prop :=
  ∀ n, P9754983428256714548.a n = A051633 n

theorem P9754983428256714548.correct : P9754983428256714548.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P9754983428256714548.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P9754983428256714548.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P77322477619876321

`(a(n-1)+1)/(1-1/2)` with `a(0)=3`
-/

namespace A051633.P77322477619876321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + 1) / (1 - (1 : ℚ) / 2)

end

end A051633.P77322477619876321

namespace A051633

/-- `(a(n-1)+1)/(1-1/2)` -/
def P77322477619876321.Spec : Prop :=
  ∀ n, P77322477619876321.a n = (A051633 n : ℚ)

theorem P77322477619876321.correct : P77322477619876321.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P77322477619876321.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P77322477619876321.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P15494804445338301893

`4*(1-(1-a(n-1))/2)` with `a(0)=3`
-/

namespace A051633.P15494804445338301893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * (1 - (1 - a (n - 1)) / 2)

end

end A051633.P15494804445338301893

namespace A051633

/-- `4*(1-(1-a(n-1))/2)` -/
def P15494804445338301893.Spec : Prop :=
  ∀ n, P15494804445338301893.a n = (A051633 n : ℚ)

theorem P15494804445338301893.correct : P15494804445338301893.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P15494804445338301893.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P15494804445338301893.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P7828470360853571137

`∑[a(n-1)/(1-1/2)]` with `a(0)=3, a(1)=5`
-/

namespace A051633.P7828470360853571137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051633.P7828470360853571137

namespace A051633

/-- `∑[a(n-1)/(1-1/2)]` -/
def P7828470360853571137.Spec : Prop :=
  ∀ n, P7828470360853571137.a n = (A051633 n : ℚ)

end A051633

/-! ## A051633.P17335297458337202598

`abs(a(n-1)+a(n-1)+2)` with `a(0)=3`
-/

namespace A051633.P17335297458337202598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A051633.P17335297458337202598

namespace A051633

/-- `abs(a(n-1)+a(n-1)+2)` -/
def P17335297458337202598.Spec : Prop :=
  ∀ n, (P17335297458337202598.a n : ℤ) = A051633 n

theorem P17335297458337202598.correct : P17335297458337202598.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P17335297458337202598.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P17335297458337202598.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P10912801519405890509

`floor(a(n-1)+a(n-1)+2)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A051633.P10912801519405890509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A051633.P10912801519405890509

namespace A051633

/-- `floor(a(n-1)+a(n-1)+2)` -/
def P10912801519405890509.Spec : Prop :=
  ∀ n, (P10912801519405890509.a n : ℤ) = A051633 n

theorem P10912801519405890509.correct : P10912801519405890509.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P10912801519405890509.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P10912801519405890509.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P5839409582307621220

`ceil(a(n-1)+a(n-1)+2)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A051633.P5839409582307621220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A051633.P5839409582307621220

namespace A051633

/-- `ceil(a(n-1)+a(n-1)+2)` -/
def P5839409582307621220.Spec : Prop :=
  ∀ n, (P5839409582307621220.a n : ℤ) = A051633 n

theorem P5839409582307621220.correct : P5839409582307621220.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P5839409582307621220.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P5839409582307621220.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-! ## A051633.P16719154138639891524

`round(a(n-1)+a(n-1)+2)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A051633.P16719154138639891524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A051633.P16719154138639891524

namespace A051633

/-- `round(a(n-1)+a(n-1)+2)` -/
def P16719154138639891524.Spec : Prop :=
  ∀ n, (P16719154138639891524.a n : ℤ) = A051633 n

theorem P16719154138639891524.correct : P16719154138639891524.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051633, Nat.add_sub_cancel, A051633.P16719154138639891524.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051633, Nat.add_sub_cancel, A051633.P16719154138639891524.a, A051633.P11921586248056556725.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051633

/-!
# A051634: Strong primes: prime(k) > (prime(k-1) + prime(k+1))/2.

The programs for A051634, the canonical program `A051634.P9175354426533819428` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051634 has offset 1).

The definition of A051634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051634.P17732003894198376989

`∩[A046869(n+1), A178943(n+1)]`
-/

namespace A051634.P17732003894198376989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051634.P17732003894198376989

namespace A051634

/-- `∩[A046869(n+1), A178943(n+1)]` -/
def P17732003894198376989.Spec : Prop :=
  ∀ n, (P17732003894198376989.a n : ℤ) = A051634 (n + 1)

end A051634

/-! ## A051634.P10838596550721636551

`A004139(A258026(n+1)-1)`
-/

namespace A051634.P10838596550721636551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A258026 (n + 1) - 1).toNat

end

end A051634.P10838596550721636551

namespace A051634

/-- `A004139(A258026(n+1)-1)` -/
def P10838596550721636551.Spec : Prop :=
  ∀ n, P10838596550721636551.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P9480197510521970808

`A045319(A258026(n+1))`
-/

namespace A051634.P9480197510521970808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A258026 (n + 1)).toNat

end

end A051634.P9480197510521970808

namespace A051634

/-- `A045319(A258026(n+1))` -/
def P9480197510521970808.Spec : Prop :=
  ∀ n, P9480197510521970808.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P8285289413076394969

`A008578(A358531(n+1))`
-/

namespace A051634.P8285289413076394969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A358531 (n + 1)).toNat

end

end A051634.P8285289413076394969

namespace A051634

/-- `A008578(A358531(n+1))` -/
def P8285289413076394969.Spec : Prop :=
  ∀ n, P8285289413076394969.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P5370489543982188647

`A000040(A258026(n+1)+1)`
-/

namespace A051634.P5370489543982188647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258026 (n + 1) + 1).toNat

end

end A051634.P5370489543982188647

namespace A051634

/-- `A000040(A258026(n+1)+1)` -/
def P5370489543982188647.Spec : Prop :=
  ∀ n, P5370489543982188647.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P7845192417465411707

`A000040(A358531(n+1)-1)`
-/

namespace A051634.P7845192417465411707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358531 (n + 1) - 1).toNat

end

end A051634.P7845192417465411707

namespace A051634

/-- `A000040(A358531(n+1)-1)` -/
def P7845192417465411707.Spec : Prop :=
  ∀ n, P7845192417465411707.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P9175354426533819428

`A045319(eq[1, A079054(n+2)]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051634

/-- `A045319(eq[1, A079054(n+2)]+1)` -/
def P9175354426533819428.Spec : Prop :=
  ∀ n, P9175354426533819428.a n = A051634 (n + 1)

theorem P9175354426533819428.correct : P9175354426533819428.Spec := by
  intro n
  simp only [A051634, Nat.add_sub_cancel]

end A051634

/-! ## A051634.P2580544293410391016

`A000040(lt[1, A073272(n+1)]+2)`
-/

namespace A051634.P2580544293410391016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A051634.P2580544293410391016

namespace A051634

/-- `A000040(lt[1, A073272(n+1)]+2)` -/
def P2580544293410391016.Spec : Prop :=
  ∀ n, P2580544293410391016.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P13852844377077794503

`p?[A045344(n+1)*A079054(n+2)]`
-/

namespace A051634.P13852844377077794503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051634.P13852844377077794503

namespace A051634

/-- `p?[A045344(n+1)*A079054(n+2)]` -/
def P13852844377077794503.Spec : Prop :=
  ∀ n, P13852844377077794503.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P9688848965822030523

`p?[A065091(n+1)*A079054(n+2)]`
-/

namespace A051634.P9688848965822030523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051634.P9688848965822030523

namespace A051634

/-- `p?[A065091(n+1)*A079054(n+2)]` -/
def P9688848965822030523.Spec : Prop :=
  ∀ n, P9688848965822030523.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P4438861721440926647

`A045319(eq[A045319(n+1), A051701(n+1)])`
-/

namespace A051634.P4438861721440926647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051634.P4438861721440926647

namespace A051634

/-- `A045319(eq[A045319(n+1), A051701(n+1)])` -/
def P4438861721440926647.Spec : Prop :=
  ∀ n, P4438861721440926647.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P5737376148175554238

`A045344(eq[A045344(n+1), A051701(n+1)])`
-/

namespace A051634.P5737376148175554238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051634.P5737376148175554238

namespace A051634

/-- `A045344(eq[A045344(n+1), A051701(n+1)])` -/
def P5737376148175554238.Spec : Prop :=
  ∀ n, P5737376148175554238.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P9457690162356309208

`A065091(lt[A008578(n+1), A118534(n+1)])`
-/

namespace A051634.P9457690162356309208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051634.P9457690162356309208

namespace A051634

/-- `A065091(lt[A008578(n+1), A118534(n+1)])` -/
def P9457690162356309208.Spec : Prop :=
  ∀ n, P9457690162356309208.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P13069400054141354448

`A065091(lt[A162345(n+1), A054541(n+1)])`
-/

namespace A051634.P13069400054141354448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051634.P13069400054141354448

namespace A051634

/-- `A065091(lt[A162345(n+1), A054541(n+1)])` -/
def P13069400054141354448.Spec : Prop :=
  ∀ n, P13069400054141354448.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P4076210560333433077

`A008578(lt[A001223(n+1), A054541(n+1)-1]+2)`
-/

namespace A051634.P4076210560333433077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A051634.P4076210560333433077

namespace A051634

/-- `A008578(lt[A001223(n+1), A054541(n+1)-1]+2)` -/
def P4076210560333433077.Spec : Prop :=
  ∀ n, P4076210560333433077.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P16857557700100189616

`p?[A225493(n+1)]`
-/

namespace A051634.P16857557700100189616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051634.P16857557700100189616

namespace A051634

/-- `p?[A225493(n+1)]` -/
def P16857557700100189616.Spec : Prop :=
  ∀ n, P16857557700100189616.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P4623039638675400600

`filter[A225493(n+1), A010051(#)]`
-/

namespace A051634.P4623039638675400600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A051634.P4623039638675400600

namespace A051634

/-- `filter[A225493(n+1), A010051(#)]` -/
def P4623039638675400600.Spec : Prop :=
  ∀ n, P4623039638675400600.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P17432945700684240363

`filter[A225493(n+1), A358751(#)]`
-/

namespace A051634.P17432945700684240363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A051634.P17432945700684240363

namespace A051634

/-- `filter[A225493(n+1), A358751(#)]` -/
def P17432945700684240363.Spec : Prop :=
  ∀ n, P17432945700684240363.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P6321109279640204194

`filter[A225493(n+1), A358771(#)]`
-/

namespace A051634.P6321109279640204194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A051634.P6321109279640204194

namespace A051634

/-- `filter[A225493(n+1), A358771(#)]` -/
def P6321109279640204194.Spec : Prop :=
  ∀ n, P6321109279640204194.a n = A051634 (n + 1)

end A051634

/-! ## A051634.P17038088479590681129

`∩[A000040(n+1), A225493(n+1)]`
-/

namespace A051634.P17038088479590681129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051634.P17038088479590681129

namespace A051634

/-- `∩[A000040(n+1), A225493(n+1)]` -/
def P17038088479590681129.Spec : Prop :=
  ∀ n, (P17038088479590681129.a n : ℤ) = A051634 (n + 1)

end A051634

/-!
# A051635: Weak primes: prime(n) < (prime(n-1) + prime(n+1))/2.

The programs for A051635, there is no canonical definition to state claims against.
-/

/-! ## A051635.P9034164013890767757

`A068828(n+2)`
-/

namespace A051635.P9034164013890767757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 2)

end

end A051635.P9034164013890767757

/-! ## A051635.P10137107308830258796

`A126990(record[1-n*A079054(n+2)])`
-/

namespace A051635.P10137107308830258796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051635.P10137107308830258796

/-! ## A051635.P8628620366859065864

`record[A065091(n+1)%A093667(n+1)]`
-/

namespace A051635.P8628620366859065864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A093667 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051635.P8628620366859065864

/-! ## A051635.P16077256592269294838

`or(1, A045319(lt[A073274(n+1), 1]+1))`
-/

namespace A051635.P16077256592269294838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1))

end

end A051635.P16077256592269294838

/-! ## A051635.P16084026530133252098

`p?[A065091(n+1)-(A079054(n+2)+1)]`
-/

namespace A051635.P16084026530133252098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - (A079054 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051635.P16084026530133252098

/-! ## A051635.P4484449223920977050

`A000040(A233671(n+1))`
-/

namespace A051635.P4484449223920977050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233671 (n + 1)).toNat

end

end A051635.P4484449223920977050

/-! ## A051635.P965808922907541020

`A000040(A358529(n+1)-1)`
-/

namespace A051635.P965808922907541020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358529 (n + 1) - 1).toNat

end

end A051635.P965808922907541020

/-! ## A051635.P16355878344918693654

`A000040(lt[A073272(n+1), 1]+2)`
-/

namespace A051635.P16355878344918693654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A051635.P16355878344918693654

/-! ## A051635.P6449464948065979546

`record[A000040(n+2)%A093667(n+1)]`
-/

namespace A051635.P6449464948065979546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (A093667 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051635.P6449464948065979546

/-! ## A051635.P16593035807461985431

`A000040(A391658(n+1)+A046868(n+1))`
-/

namespace A051635.P16593035807461985431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391658 (n + 1) + A046868 (n + 1)).toNat

end

end A051635.P16593035807461985431

/-! ## A051635.P14780147767530608250

`A065091(lt[A054541(n+1), A001223(n+1)])`
-/

namespace A051635.P14780147767530608250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051635.P14780147767530608250

/-! ## A051635.P14270056995085070937

`A065091(lt[A065091(n+1), A137174(n+1)])`
-/

namespace A051635.P14270056995085070937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051635.P14270056995085070937

/-! ## A051635.P3172958750603148608

`A065091(lt[A054541(n+1), A162345(n+1)])`
-/

namespace A051635.P3172958750603148608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051635.P3172958750603148608

/-! ## A051635.P15043776066241265494

`A000040(eq[A051702(n+1), A339270(n+1)]+1)`
-/

namespace A051635.P15043776066241265494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A051635.P15043776066241265494

/-! ## A051635.P11649018916547065592

`A000040(lt[A054541(n+1), A001223(n+1)]+1)`
-/

namespace A051635.P11649018916547065592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A051635.P11649018916547065592

/-! ## A051635.P5306135279938727405

`A008578(A358529(n+1))`
-/

namespace A051635.P5306135279938727405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A358529 (n + 1)).toNat

end

end A051635.P5306135279938727405

/-! ## A051635.P16560875048856168531

`A008578(A233671(n+1)+1)`
-/

namespace A051635.P16560875048856168531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233671 (n + 1) + 1).toNat

end

end A051635.P16560875048856168531

/-! ## A051635.P2980335025498354354

`A151800(A063535(n))`
-/

namespace A051635.P2980335025498354354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A063535 n).toNat

end

end A051635.P2980335025498354354

/-! ## A051635.P14980480078629323795

`p?[A225495(n+1)]`
-/

namespace A051635.P14980480078629323795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051635.P14980480078629323795

/-! ## A051635.P1180569280048382594

`record[A006530(A225495(n+2))]`
-/

namespace A051635.P1180569280048382594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225495 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051635.P1180569280048382594

/-!
# A051636: Number of "labeled" cyclic subgroups of alternating group A_n.

The programs for A051636, there is no canonical definition to state claims against.
-/

/-! ## A051636.P5019090560449423366

`A300272(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A051636.P5019090560449423366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A300272 (a (n - 1) + 1).toNat

end

end A051636.P5019090560449423366

/-! ## A051636.P5757837618776590007

`A124221(A026151(n))`
-/

namespace A051636.P5757837618776590007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124221 (A026151 n).toNat

end

end A051636.P5757837618776590007

/-!
# A051638: a(n) = Sum_{k=0..n} (C(n,k) mod 3).

The programs for A051638, the canonical program `A051638.P12166677434659216956` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051638 has offset 0).

The definition of A051638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051638.P12166677434659216956

`1/2*(3*A006047(n)-2^A062756(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051638

/-- `1/2*(3*A006047(n)-2^A062756(n))` -/
def P12166677434659216956.Spec : Prop :=
  ∀ n, P12166677434659216956.a n = (A051638 n : ℚ)

end A051638

/-! ## A051638.P14161063262154254332

`A002131(A006047(n))`
-/

namespace A051638.P14161063262154254332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A006047 n).toNat

end

end A051638.P14161063262154254332

namespace A051638

/-- `A002131(A006047(n))` -/
def P14161063262154254332.Spec : Prop :=
  ∀ n, P14161063262154254332.a n = A051638 n

end A051638

/-! ## A051638.P14799196131937308065

`A227428(n)+A006047(n)`
-/

namespace A051638.P14799196131937308065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 n + A006047 n

end

end A051638.P14799196131937308065

namespace A051638

/-- `A227428(n)+A006047(n)` -/
def P14799196131937308065.Spec : Prop :=
  ∀ n, P14799196131937308065.a n = A051638 n

end A051638

/-! ## A051638.P16959337953879523921

`∑{d}[A006047(n), A026741(#)]`
-/

namespace A051638.P16959337953879523921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 d

end

end A051638.P16959337953879523921

namespace A051638

/-- `∑{d}[A006047(n), A026741(#)]` -/
def P16959337953879523921.Spec : Prop :=
  ∀ n, P16959337953879523921.a n = A051638 n

end A051638

/-! ## A051638.P6049048477266381183

`A206424(n)+2*A227428(n)`
-/

namespace A051638.P6049048477266381183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n + 2 * A227428 n

end

end A051638.P6049048477266381183

namespace A051638

/-- `A206424(n)+2*A227428(n)` -/
def P6049048477266381183.Spec : Prop :=
  ∀ n, P6049048477266381183.a n = A051638 n

end A051638

/-! ## A051638.P8119948445170649470

`2*A006047(n)-A206424(n)`
-/

namespace A051638.P8119948445170649470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006047 n - A206424 n

end

end A051638.P8119948445170649470

namespace A051638

/-- `2*A006047(n)-A206424(n)` -/
def P8119948445170649470.Spec : Prop :=
  ∀ n, P8119948445170649470.a n = A051638 n

end A051638

/-! ## A051638.P10999743599054058569

`A227428(3*n+2)`
-/

namespace A051638.P10999743599054058569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 2)

end

end A051638.P10999743599054058569

namespace A051638

/-- `A227428(3*n+2)` -/
def P10999743599054058569.Spec : Prop :=
  ∀ n, P10999743599054058569.a n = A051638 n

end A051638

/-! ## A051638.P4178323307205416458

`A385435(A047234(n+1))`
-/

namespace A051638.P4178323307205416458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385435 (A047234 (n + 1)).toNat

end

end A051638.P4178323307205416458

namespace A051638

/-- `A385435(A047234(n+1))` -/
def P4178323307205416458.Spec : Prop :=
  ∀ n, P4178323307205416458.a n = A051638 n

end A051638

/-! ## A051638.P4765927727423012228

`A385435(2*n)`
-/

namespace A051638.P4765927727423012228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385435 (2 * n)

end

end A051638.P4765927727423012228

namespace A051638

/-- `A385435(2*n)` -/
def P4765927727423012228.Spec : Prop :=
  ∀ n, P4765927727423012228.a n = A051638 n

end A051638

/-! ## A051638.P15912667394504011288

`A385435(Δ[n²])/2`
-/

namespace A051638.P15912667394504011288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A051638.P15912667394504011288

namespace A051638

/-- `A385435(Δ[n²])/2` -/
def P15912667394504011288.Spec : Prop :=
  ∀ n, P15912667394504011288.a n = (A051638 n : ℚ)

end A051638

/-! ## A051638.P13331597372668063728

`∑{digits}[A006940(n), #]`
-/

namespace A051638.P13331597372668063728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006940 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A051638.P13331597372668063728

namespace A051638

/-- `∑{digits}[A006940(n), #]` -/
def P13331597372668063728.Spec : Prop :=
  ∀ n, (P13331597372668063728.a n : ℤ) = A051638 n

end A051638

/-!
# A051639: Concatenation of 3^k, k = 0,..,n.

The programs for A051639, there is no canonical definition to state claims against.
-/

/-! ## A051639.P9356782254651019564

`A037283(3^n)`
-/

namespace A051639.P9356782254651019564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 (3 ^ n)

end

end A051639.P9356782254651019564

/-! ## A051639.P3965278441310348939

`record[A037283(A006047(n))]`
-/

namespace A051639.P3965278441310348939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051639.P3965278441310348939

/-! ## A051639.P16266288345012373505

`or(1, A037283(A000244(n)))`
-/

namespace A051639.P16266288345012373505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037283 (A000244 n).toNat)

end

end A051639.P16266288345012373505

/-! ## A051639.P11075634219168658727

`record[A037283(A003586(n+1))]`
-/

namespace A051639.P11075634219168658727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051639.P11075634219168658727

/-! ## A051639.P9799957210910764331

`record[A037283(A327564(n+1))]`
-/

namespace A051639.P9799957210910764331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037283 (A327564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051639.P9799957210910764331

/-!
# A051641: Palindromic binomial coefficients C(n,k) for k >= 2.

The programs for A051641, there is no canonical definition to state claims against.
-/

/-! ## A051641.P47989868693754916

`A003098(n+3)%A046927(A145050(n+1))`
-/

namespace A051641.P47989868693754916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003098 (n + 3)) (A046927 (A145050 (n + 1)).toNat)

end

end A051641.P47989868693754916

/-!
# A051642: Values of A (the short leg) of a Pythagorean triangle with A and C (the hypotenuse) both prime and part of a twin prime.

The programs for A051642, there is no canonical definition to state claims against.
-/

/-! ## A051642.P17120673929148999673

`2*A051892(n+1)+1`
-/

namespace A051642.P17120673929148999673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051892 (n + 1) + 1

end

end A051642.P17120673929148999673

/-! ## A051642.P2169980360766740679

`2*A051891(n+1)-1`
-/

namespace A051642.P2169980360766740679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051891 (n + 1) - 1

end

end A051642.P2169980360766740679

/-! ## A051642.P17660098621184228328

`floor(sqrt(2*A051859(n+1)))`
-/

namespace A051642.P17660098621184228328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A051859 (n + 1))

end

end A051642.P17660098621184228328

/-! ## A051642.P2438560079105808986

`A051892(n+1)+A051891(n+1)`
-/

namespace A051642.P2438560079105808986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051892 (n + 1) + A051891 (n + 1)

end

end A051642.P2438560079105808986

/-! ## A051642.P5996637506663097225

`A051858(n+1)/A051891(n+1)+1`
-/

namespace A051642.P5996637506663097225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051858 (n + 1) : ℚ) / (A051891 (n + 1) : ℚ) + 1

end

end A051642.P5996637506663097225

/-! ## A051642.P2874718504110548832

`A051858(n+1)/A051892(n+1)-1`
-/

namespace A051642.P2874718504110548832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051858 (n + 1) : ℚ) / (A051892 (n + 1) : ℚ) - 1

end

end A051642.P2874718504110548832

/-! ## A051642.P9966050208881331241

`round(sqrt(2*A051859(n+1)))%(A000578(n+2)-1)`
-/

namespace A051642.P9966050208881331241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A051859 (n + 1) : ℝ))) (A000578 (n + 2) - 1)

end

end A051642.P9966050208881331241

/-! ## A051642.P14970829452727856365

`round(sqrt(2*A051859(n+1)))%A001060(n+8)`
-/

namespace A051642.P14970829452727856365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A051859 (n + 1) : ℝ))) (A001060 (n + 8))

end

end A051642.P14970829452727856365

/-! ## A051642.P3739068956561830377

`∩[A001097(n+1), A284034(n+1)]`
-/

namespace A051642.P3739068956561830377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051642.P3739068956561830377

/-! ## A051642.P8061167006828929537

`∩[A001097(n+1), A284036(n+1)]`
-/

namespace A051642.P8061167006828929537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051642.P8061167006828929537

/-! ## A051642.P17336477551247114969

`∩[A171821(n+1), A284034(n+1)]`
-/

namespace A051642.P17336477551247114969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051642.P17336477551247114969

/-! ## A051642.P10928270007783280117

`∩[A171821(n+1), A284036(n+1)]`
-/

namespace A051642.P10928270007783280117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051642.P10928270007783280117

/-! ## A051642.P9581108315075970542

`A000027(round(sqrt(2*A051859(n+1))))`
-/

namespace A051642.P9581108315075970542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A051859 (n + 1) : ℝ))).toNat

end

end A051642.P9581108315075970542

/-!
# A051643: Central elements in Parker's partition triangle.

The programs for A051643, there is no canonical definition to state claims against.
-/

/-! ## A051643.P8922024643497090059

`A029895(Δ[n²])`
-/

namespace A051643.P8922024643497090059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051643.P8922024643497090059

/-! ## A051643.P1684925226688638058

`record[A029895(A026741(n))]`
-/

namespace A051643.P1684925226688638058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P1684925226688638058

/-! ## A051643.P10279205533903467262

`record[A029895(A093178(n))]`
-/

namespace A051643.P10279205533903467262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P10279205533903467262

/-! ## A051643.P12825865466613802158

`record[A029895(A106617(n))]`
-/

namespace A051643.P12825865466613802158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A106617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P12825865466613802158

/-! ## A051643.P15906268709536696167

`record[A029895(A193356(n+1))]`
-/

namespace A051643.P15906268709536696167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A193356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P15906268709536696167

/-! ## A051643.P545769498022653090

`record[A029895(n/A000034(n+1))]`
-/

namespace A051643.P545769498022653090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P545769498022653090

/-! ## A051643.P3173346178453927976

`record[gcd(A029895(n+1), A270010(n))]`
-/

namespace A051643.P3173346178453927976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029895 (n + 1)) (A270010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P3173346178453927976

/-! ## A051643.P3983844849616208842

`record[lcm(A029895(n+1), A056594(n))]`
-/

namespace A051643.P3983844849616208842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029895 (n + 1)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051643.P3983844849616208842

/-! ## A051643.P1573239436388134344

`gcd(n*A029895(2*n+1), A029895(2*n+1))`
-/

namespace A051643.P1573239436388134344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A029895 (2 * n + 1)) (A029895 (2 * n + 1))

end

end A051643.P1573239436388134344

/-! ## A051643.P16004954936860661314

`A047812((n+1)²+n²)`
-/

namespace A051643.P16004954936860661314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047812 ((n + 1) ^ 2 + n ^ 2)

end

end A051643.P16004954936860661314

/-!
# A051644: Primes of the form 6*p + 1 where p is also prime.

The programs for A051644, there is no canonical definition to state claims against.
-/

/-! ## A051644.P872344419344685184

`6*A007693(n+1)+1`
-/

namespace A051644.P872344419344685184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007693 (n + 1) + 1

end

end A051644.P872344419344685184

/-! ## A051644.P8666313496910117081

`2*A216880(n+1)+5`
-/

namespace A051644.P8666313496910117081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216880 (n + 1) + 5

end

end A051644.P8666313496910117081

/-! ## A051644.P366980168573065763

`p?[2*A001748(n+1)+1]`
-/

namespace A051644.P366980168573065763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001748 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P366980168573065763

/-! ## A051644.P6676196854562915130

`p?[A138636(n+1)+1]`
-/

namespace A051644.P6676196854562915130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P6676196854562915130

/-! ## A051644.P14823810928118950279

`p?[3*A100484(n+1)+1]`
-/

namespace A051644.P14823810928118950279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A100484 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P14823810928118950279

/-! ## A051644.P5308275832943610409

`p?[6*A000040(n+1)+1]`
-/

namespace A051644.P5308275832943610409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P5308275832943610409

/-! ## A051644.P16816462232474702127

`p?[6*A008578(n+2)+1]`
-/

namespace A051644.P16816462232474702127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008578 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P16816462232474702127

/-! ## A051644.P11413626008592149917

`p?[A008864(n+1)+A001750(n+1)]`
-/

namespace A051644.P11413626008592149917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A001750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P11413626008592149917

/-! ## A051644.P14603467305720923949

`p?[A000040(n+1)+A001750(n+1)+1]`
-/

namespace A051644.P14603467305720923949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A001750 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P14603467305720923949

/-! ## A051644.P11887472981610920696

`p?[A001750(n+1)+A006093(n+1)+2]`
-/

namespace A051644.P11887472981610920696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + (A006093 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P11887472981610920696

/-! ## A051644.P15600112928175557725

`p?[3*A001358(n+1)+1]`
-/

namespace A051644.P15600112928175557725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001358 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051644.P15600112928175557725

/-! ## A051644.P7470068622318516922

`∩[A002476(n+1), A063640(n+1)]`
-/

namespace A051644.P7470068622318516922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P7470068622318516922

/-! ## A051644.P15255592006292477101

`∩[A007645(n+1), A063640(n+1)]`
-/

namespace A051644.P15255592006292477101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P15255592006292477101

/-! ## A051644.P4725744716694315496

`∩[A045331(n+1), A063640(n+1)]`
-/

namespace A051644.P4725744716694315496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P4725744716694315496

/-! ## A051644.P12274240673923557872

`∩[A045375(n+1), A063640(n+1)]`
-/

namespace A051644.P12274240673923557872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P12274240673923557872

/-! ## A051644.P11916553519088103845

`∩[A002476(n+1), A168447(n+1)]`
-/

namespace A051644.P11916553519088103845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P11916553519088103845

/-! ## A051644.P5699783598673650433

`∩[A007645(n+1), A168447(n+1)]`
-/

namespace A051644.P5699783598673650433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P5699783598673650433

/-! ## A051644.P4555538318981579167

`∩[A063640(n+1), A123365(n+1)]`
-/

namespace A051644.P4555538318981579167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P4555538318981579167

/-! ## A051644.P15345995905996322309

`∩[A045331(n+1), A168447(n+1)]`
-/

namespace A051644.P15345995905996322309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P15345995905996322309

/-! ## A051644.P5598206617218595329

`∩[A045375(n+1), A168447(n+1)]`
-/

namespace A051644.P5598206617218595329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051644.P5598206617218595329

/-!
# A051645: Primes p such that 30*p+1 is also prime.

The programs for A051645, there is no canonical definition to state claims against.
-/

/-! ## A051645.P15510642814028409734

`(A051646(n+1)-1)/30`
-/

namespace A051645.P15510642814028409734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051646 (n + 1) - 1 : ℚ) / 30

end

end A051645.P15510642814028409734

/-! ## A051645.P86044242621027847

`p?[A111175(n+1)]`
-/

namespace A051645.P86044242621027847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051645.P86044242621027847

/-! ## A051645.P9010779140191567505

`p?[floor(A132230(n+1)/30)]`
-/

namespace A051645.P9010779140191567505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132230 (n + 1) : ℚ) / 30⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051645.P9010779140191567505

/-! ## A051645.P12143838981838399948

`record[A006530(A111175(n+2))]`
-/

namespace A051645.P12143838981838399948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111175 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051645.P12143838981838399948

/-! ## A051645.P12978206617740136070

`filter[A111175(n+1), A010051(#)]`
-/

namespace A051645.P12978206617740136070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A051645.P12978206617740136070

/-! ## A051645.P15448624310466659889

`∩[A000040(n+1), A111175(n+1)]`
-/

namespace A051645.P15448624310466659889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P15448624310466659889

/-! ## A051645.P461244795221659785

`∩[A045344(n+1), A111175(n+1)]`
-/

namespace A051645.P461244795221659785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P461244795221659785

/-! ## A051645.P10556666790668291121

`∩[A045346(n+1), A111175(n+1)]`
-/

namespace A051645.P10556666790668291121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P10556666790668291121

/-! ## A051645.P11863206867023116931

`∩[A111175(n+1), A175787(n+1)]`
-/

namespace A051645.P11863206867023116931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P11863206867023116931

/-! ## A051645.P245768613374884451

`∩[A111175(n+1), A182986(n+1)]`
-/

namespace A051645.P245768613374884451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P245768613374884451

/-! ## A051645.P333270952714600448

`∩[A111175(n+1), A216883(n+1)]`
-/

namespace A051645.P333270952714600448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P333270952714600448

/-! ## A051645.P384032682487156531

`record[A006530(floor(A132230(n+1)/15))]`
-/

namespace A051645.P384032682487156531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A132230 (n + 1) : ℚ) / 15⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051645.P384032682487156531

/-! ## A051645.P2961331567013366567

`record[A006530(round(A132230(n+1)/15))]`
-/

namespace A051645.P2961331567013366567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A132230 (n + 1) : ℚ) / 15)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051645.P2961331567013366567

/-! ## A051645.P18297510011545660002

`filter[A111175(n+2), A080339(#)]`
-/

namespace A051645.P18297510011545660002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A051645.P18297510011545660002

/-! ## A051645.P5101494842710729675

`∩[A111175(n+1), A240960(n+1)]`
-/

namespace A051645.P5101494842710729675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051645.P5101494842710729675

/-! ## A051645.P3005123365590418730

`p?[n*A091088(3*n)]`
-/

namespace A051645.P3005123365590418730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091088 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051645.P3005123365590418730

/-! ## A051645.P12685556806032604460

`p?[lt[A001222(30*n+1), 2]]`
-/

namespace A051645.P12685556806032604460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A051645.P12685556806032604460

/-! ## A051645.P2347994007442635073

`p?[n*A069513(30*n+1)]`
-/

namespace A051645.P2347994007442635073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069513 (30 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051645.P2347994007442635073

/-! ## A051645.P8190949299536133394

`p?[lt[A000005(5*6*n+1), 3]]`
-/

namespace A051645.P8190949299536133394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (6 * n) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A051645.P8190949299536133394

/-! ## A051645.P1784185528521732942

`p?[lt[A001221(2*n+28*n+1), 2]]`
-/

namespace A051645.P1784185528521732942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + (28 * n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A051645.P1784185528521732942

/-!
# A051646: Primes of the form 30*p + 1 where p is also prime.

The programs for A051646, there is no canonical definition to state claims against.
-/

/-! ## A051646.P10883277986070576019

`30*A051645(n+1)+1`
-/

namespace A051646.P10883277986070576019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A051645 (n + 1) + 1

end

end A051646.P10883277986070576019

/-! ## A051646.P13161255023267522785

`A128470(A051645(n+1))`
-/

namespace A051646.P13161255023267522785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A051645 (n + 1)).toNat

end

end A051646.P13161255023267522785

/-! ## A051646.P9317650088203473804

`p?[10*A001748(n+1)+1]`
-/

namespace A051646.P9317650088203473804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A001748 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P9317650088203473804

/-! ## A051646.P7339894529058577409

`p?[30*A000040(n+1)+1]`
-/

namespace A051646.P7339894529058577409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P7339894529058577409

/-! ## A051646.P3937774185523464951

`p?[15*(A072055(n+1)-1)+1]`
-/

namespace A051646.P3937774185523464951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (A072055 (n + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P3937774185523464951

/-! ## A051646.P13257973876574871650

`p?[30*p?[A167171(n+1)]+1]`
-/

namespace A051646.P13257973876574871650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P13257973876574871650

/-! ## A051646.P9002753265125446864

`p?[30*record[A014963(n+2)]+1]`
-/

namespace A051646.P9002753265125446864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P9002753265125446864

/-! ## A051646.P9033653936987349442

`p?[A128470(p?[A004442(n)])]`
-/

namespace A051646.P9033653936987349442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P9033653936987349442

/-! ## A051646.P2420145216174300451

`p?[A128470(p?[A014681(n)])]`
-/

namespace A051646.P2420145216174300451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P2420145216174300451

/-! ## A051646.P5127651288755367511

`p?[A128470(A000040(n+1))]`
-/

namespace A051646.P5127651288755367511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P5127651288755367511

/-! ## A051646.P4853566820718122527

`p?[A249674(p?[A064429(n)])+1]`
-/

namespace A051646.P4853566820718122527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P4853566820718122527

/-! ## A051646.P15181110232001019292

`p?[A249674(p?[A152271(n)])+1]`
-/

namespace A051646.P15181110232001019292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051646.P15181110232001019292

/-! ## A051646.P14408116063968181838

`record[A006530(30*A000040(n+1)+1)]`
-/

namespace A051646.P14408116063968181838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (30 * A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051646.P14408116063968181838

/-! ## A051646.P11127057924299604704

`record[A020639(30*A000040(n+1)+1)]`
-/

namespace A051646.P11127057924299604704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051646.P11127057924299604704

/-!
# A051647: Primes p such that 210*p + 1 is also prime.

The programs for A051647, there is no canonical definition to state claims against.
-/

/-! ## A051647.P9139728942196836266

`(A051648(n+1)-1)/210`
-/

namespace A051647.P9139728942196836266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051648 (n + 1) - 1 : ℚ) / 210

end

end A051647.P9139728942196836266

/-! ## A051647.P3870216056185551518

`p?[A073085(n+1)]`
-/

namespace A051647.P3870216056185551518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051647.P3870216056185551518

/-! ## A051647.P16819620750549682843

`filter[A073085(n+1), A010051(#)]`
-/

namespace A051647.P16819620750549682843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A051647.P16819620750549682843

/-! ## A051647.P1762488657654003729

`∩[A000040(n+1), A073085(n+1)]`
-/

namespace A051647.P1762488657654003729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P1762488657654003729

/-! ## A051647.P3824717285174140038

`∩[A073085(n+1), A116974(n+1)]`
-/

namespace A051647.P3824717285174140038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P3824717285174140038

/-! ## A051647.P2717974482725959670

`∩[A073085(n+1), A175787(n+1)]`
-/

namespace A051647.P2717974482725959670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P2717974482725959670

/-! ## A051647.P16777132896304493322

`∩[A073085(n+1), A182986(n+1)]`
-/

namespace A051647.P16777132896304493322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P16777132896304493322

/-! ## A051647.P6606363577670797390

`∩[A073085(n+1), A251595(n+1)]`
-/

namespace A051647.P6606363577670797390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P6606363577670797390

/-! ## A051647.P16326719504493667223

`∩[A073085(n+1), A348283(n+1)]`
-/

namespace A051647.P16326719504493667223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P16326719504493667223

/-! ## A051647.P9573109894277661925

`filter[A073085(n+2), A080339(#)]`
-/

namespace A051647.P9573109894277661925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A051647.P9573109894277661925

/-! ## A051647.P8594211852844206164

`∩[A073085(n+1), A240960(n+1)]`
-/

namespace A051647.P8594211852844206164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051647.P8594211852844206164

/-!
# A051648: Primes of form 210*p + 1 where p is a prime.

The programs for A051648, there is no canonical definition to state claims against.
-/

/-! ## A051648.P10373042679912246987

`210*A051647(n+1)+1`
-/

namespace A051648.P10373042679912246987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A051647 (n + 1) + 1

end

end A051648.P10373042679912246987

/-! ## A051648.P1568647358781096438

`p?[70*A001748(n+1)+1]`
-/

namespace A051648.P1568647358781096438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  70 * A001748 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P1568647358781096438

/-! ## A051648.P16680331697648453534

`p?[10*21*A000040(n+1)+1]`
-/

namespace A051648.P16680331697648453534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (21 * A000040 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P16680331697648453534

/-! ## A051648.P12194541479591756739

`p?[10*21*(A006093(n+1)+1)+1]`
-/

namespace A051648.P12194541479591756739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (21 * (A006093 (n + 1) + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P12194541479591756739

/-! ## A051648.P10325784644107535034

`p?[A010051(n+1)+35*A008458(n+1)]`
-/

namespace A051648.P10325784644107535034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 35 * A008458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P10325784644107535034

/-! ## A051648.P1824490655624568502

`p?[A139264(A001748(n+1))+64]`
-/

namespace A051648.P1824490655624568502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (A001748 (n + 1)).toNat + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P1824490655624568502

/-! ## A051648.P4990890094651220830

`p?[A128470(A272470(n+1))]`
-/

namespace A051648.P4990890094651220830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A272470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P4990890094651220830

/-! ## A051648.P17750226948936071567

`p?[A010051(n+1)*A057539(A004768(n))]`
-/

namespace A051648.P17750226948936071567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A057539 (A004768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P17750226948936071567

/-! ## A051648.P16316837330889219355

`p?[A215146(10*A000040(n+1))]`
-/

namespace A051648.P16316837330889219355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (10 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051648.P16316837330889219355

/-!
# A051650: Lonely numbers: distance to closest prime sets a new record.

The programs for A051650, there is no canonical definition to state claims against.
-/

/-! ## A051650.P7735737244380936388

`A051652(A051730(n))`
-/

namespace A051650.P7735737244380936388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A051730 n).toNat

end

end A051650.P7735737244380936388

/-! ## A051650.P13219911239770884485

`A051652(record[A051700(n)])`
-/

namespace A051650.P13219911239770884485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051650.P13219911239770884485

/-! ## A051650.P11066452391161012262

`A051652(record[abs(n-A051698(n))])`
-/

namespace A051650.P11066452391161012262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051698 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051650.P11066452391161012262

/-!
# A051652: Smallest number at distance n from nearest prime.

The programs for A051652, there is no canonical definition to state claims against.
-/

/-! ## A051652.P7520737353659599737

`A077019(n)%A240153(A240154(n+1))`
-/

namespace A051652.P7520737353659599737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077019 n) (A240153 (A240154 (n + 1)).toNat)

end

end A051652.P7520737353659599737

/-!
# A051654: Primes p such that 30030*p + 1 is also prime.

The programs for A051654, there is no canonical definition to state claims against.
-/

/-! ## A051654.P6003241337152203951

`p?[A255554(A255003(2*n+1))]`
-/

namespace A051654.P6003241337152203951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A255003 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051654.P6003241337152203951

/-! ## A051654.P17810551691148249947

`p?[(n-2)*A076182(A007602(n+1))]`
-/

namespace A051654.P17810551691148249947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A076182 (A007602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051654.P17810551691148249947

/-! ## A051654.P16099703168559157197

`A007918(A079426(n+2)+A000009(n)+2)`
-/

namespace A051654.P16099703168559157197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A079426 (n + 2) + A000009 n + 2).toNat

end

end A051654.P16099703168559157197

/-!
# A051656: a(n) = Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2*i).

The programs for A051656, the canonical program `A051656.P2766928477570760941` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051656 has offset 0).

The definition of A051656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051656.P17114988260358779444

`A005013(n)*A050613(n)`
-/

namespace A051656.P17114988260358779444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A050613 n

end

end A051656.P17114988260358779444

namespace A051656

/-- `A005013(n)*A050613(n)` -/
def P17114988260358779444.Spec : Prop :=
  ∀ n, P17114988260358779444.a n = A051656 n

end A051656

/-! ## A051656.P9373839673665804081

`A005013(n)*A050614(A004526(n))`
-/

namespace A051656.P9373839673665804081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A050614 (A004526 n).toNat

end

end A051656.P9373839673665804081

namespace A051656

/-- `A005013(n)*A050614(A004526(n))` -/
def P9373839673665804081.Spec : Prop :=
  ∀ n, P9373839673665804081.a n = A051656 n

end A051656

/-! ## A051656.P3325908871275656247

`A005013(n)*A050614(A123108(n))`
-/

namespace A051656.P3325908871275656247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A050614 (A123108 n).toNat

end

end A051656.P3325908871275656247

namespace A051656

/-- `A005013(n)*A050614(A123108(n))` -/
def P3325908871275656247.Spec : Prop :=
  ∀ n, P3325908871275656247.a n = A051656 n

end A051656

/-! ## A051656.P13672748567653106333

`lcm(A005013(n), A050613(A004442(n)))`
-/

namespace A051656.P13672748567653106333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005013 n) (A050613 (A004442 n).toNat)

end

end A051656.P13672748567653106333

namespace A051656

/-- `lcm(A005013(n), A050613(A004442(n)))` -/
def P13672748567653106333.Spec : Prop :=
  ∀ n, (P13672748567653106333.a n : ℤ) = A051656 n

end A051656

/-! ## A051656.P2766928477570760941

`A050612(n)%A050611(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051656

/-- `A050612(n)%A050611(n)` -/
def P2766928477570760941.Spec : Prop :=
  ∀ n, P2766928477570760941.a n = A051656 n

theorem P2766928477570760941.correct : P2766928477570760941.Spec := by
  intro n
  simp only [A051656]

end A051656

/-! ## A051656.P7046619522700163134

`A050609(∑[n])`
-/

namespace A051656.P7046619522700163134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051656.P7046619522700163134

namespace A051656

/-- `A050609(∑[n])` -/
def P7046619522700163134.Spec : Prop :=
  ∀ n, P7046619522700163134.a n = A051656 n

end A051656

/-! ## A051656.P2417300042422319112

`record[A050609(n)]`
-/

namespace A051656.P2417300042422319112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051656.P2417300042422319112

namespace A051656

/-- `record[A050609(n)]` -/
def P2417300042422319112.Spec : Prop :=
  ∀ n, P2417300042422319112.a n = A051656 n

end A051656

/-! ## A051656.P7505505456002072841

`A050610(∑[n]+n)`
-/

namespace A051656.P7505505456002072841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A051656.P7505505456002072841

namespace A051656

/-- `A050610(∑[n]+n)` -/
def P7505505456002072841.Spec : Prop :=
  ∀ n, P7505505456002072841.a n = A051656 n

end A051656

/-!
# A051659: Experimental values for maximal number of "loose" circles in packing equal circles into a square.

The programs for A051659, there is no canonical definition to state claims against.
-/

/-! ## A051659.P10723882827971477173

`A001316(A228260(n+1))%A263922(n+1)`
-/

namespace A051659.P10723882827971477173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A228260 (n + 1)).toNat) (A263922 (n + 1))

end

end A051659.P10723882827971477173

/-! ## A051659.P3338833227685373581

`A001316(A305498(n+1))%A263922(n+1)`
-/

namespace A051659.P3338833227685373581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (A305498 (n + 1)).toNat) (A263922 (n + 1))

end

end A051659.P3338833227685373581

/-! ## A051659.P2814243288128892776

`A117633(A065269(n+1))%A057526(n+2)`
-/

namespace A051659.P2814243288128892776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117633 (A065269 (n + 1)).toNat) (A057526 (n + 2))

end

end A051659.P2814243288128892776

/-! ## A051659.P6978631240342938515

`A067029(gcd(A122776(n+1), A331027(n+1)))`
-/

namespace A051659.P6978631240342938515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.gcd (A122776 (n + 1)) (A331027 (n + 1)))

end

end A051659.P6978631240342938515

/-! ## A051659.P9943707014232500386

`and(A000002(n+1), A007326(A165500(n+1)))`
-/

namespace A051659.P9943707014232500386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000002 (n + 1)) (A007326 (A165500 (n + 1)).toNat)

end

end A051659.P9943707014232500386

/-!
# A051660: Experimental values for number of circles in packing equal circles into a square for which there is a loose circle.

The programs for A051660, there is no canonical definition to state claims against.
-/

/-! ## A051660.P5210290842718009038

`comp[A051661(n)-1]+1`
-/

namespace A051660.P5210290842718009038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051661 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051660.P5210290842718009038

/-! ## A051660.P3115498972534920309

`eq[char[A051661(n)], A063667(n)]`
-/

namespace A051660.P3115498972534920309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051661 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A051660.P3115498972534920309

/-! ## A051660.P12172784844134947756

`eq[1, log2(a(A051659(n)))]` with `a(0)=4`
-/

namespace A051660.P12172784844134947756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.logb 2 (f2 (A051659 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A051660.P12172784844134947756

/-! ## A051660.P8931429449462301136

`lt[0, A051659(n+1)]+1`
-/

namespace A051660.P8931429449462301136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A051660.P8931429449462301136

/-! ## A051660.P826330484846747627

`lt[0, A051659(A028310(n))]`
-/

namespace A051660.P826330484846747627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051659 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051660.P826330484846747627

/-!
# A051661: Experimental values for number of circles in packing equal circles into a square for which there are no loose circles.

The programs for A051661, there is no canonical definition to state claims against.
-/

/-! ## A051661.P1949464480112409857

`lt[-a(A051659(n)), 0]` with `a(0)=1`
-/

namespace A051661.P1949464480112409857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (A051659 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051661.P1949464480112409857

/-! ## A051661.P8141191774047584036

`eq[0, A051659(n+1)]+1`
-/

namespace A051661.P8141191774047584036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051661.P8141191774047584036

/-! ## A051661.P3865382310511509912

`eq[1, A001221(a(A051659(n)))]` with `a(0)=2`
-/

namespace A051661.P3865382310511509912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001221 (f2 (A051659 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051661.P3865382310511509912

/-! ## A051661.P10594523168283693774

`eq[1, A001222(a(A051659(n)))]` with `a(0)=2`
-/

namespace A051661.P10594523168283693774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (f2 (A051659 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051661.P10594523168283693774

/-! ## A051661.P6548799240383528551

`eq[1, A007318(a(A051659(n)))-1]` with `a(0)=4`
-/

namespace A051661.P6548799240383528551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A051659 n).toNat).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051661.P6548799240383528551

/-!
# A051662: House numbers: a(n) = (n+1)^3 + Sum_{i=1..n} i^2.

The programs for A051662, the canonical program `A051662.P6448863959390572261` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051662 has offset 0).

The definition of A051662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051662.P6448863959390572261

`((8*n+21)*n+19)*n/6+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051662

/-- `((8*n+21)*n+19)*n/6+1` -/
def P6448863959390572261.Spec : Prop :=
  ∀ n, P6448863959390572261.a n = (A051662 n : ℚ)

end A051662

/-! ## A051662.P10329732562211876223

`-∑[n-or(1, 2*n)²]`
-/

namespace A051662.P10329732562211876223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051662.P10329732562211876223

namespace A051662

/-- `-∑[n-or(1, 2*n)²]` -/
def P10329732562211876223.Spec : Prop :=
  ∀ n, P10329732562211876223.a n = A051662 n

end A051662

/-! ## A051662.P16287880345760509000

`-∑[n-xor(1, 2*n)²]`
-/

namespace A051662.P16287880345760509000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.xor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051662.P16287880345760509000

namespace A051662

/-- `-∑[n-xor(1, 2*n)²]` -/
def P16287880345760509000.Spec : Prop :=
  ∀ n, P16287880345760509000.a n = A051662 n

end A051662

/-! ## A051662.P13083046033732234807

`∑[∑[ogf((1+5x+2x^2)/(1-2x+x^2))]]`
-/

namespace A051662.P13083046033732234807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P13083046033732234807

namespace A051662

/-- `∑[∑[ogf((1+5x+2x^2)/(1-2x+x^2))]]` -/
def P13083046033732234807.Spec : Prop :=
  ∀ n, P13083046033732234807.a n = A051662 n

end A051662

/-! ## A051662.P16896404761024474517

`ogf((1+5x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A051662.P16896404761024474517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2] [1, -4, 6, -4, 1] n

end

end A051662.P16896404761024474517

namespace A051662

/-- `ogf((1+5x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16896404761024474517.Spec : Prop :=
  ∀ n, P16896404761024474517.a n = A051662 n

end A051662

/-! ## A051662.P3213429317970406089

`-∑[gcd(n, 2*n)-(2*n+1)²]`
-/

namespace A051662.P3213429317970406089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) : ℤ) - ((2 * n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051662.P3213429317970406089

namespace A051662

/-- `-∑[gcd(n, 2*n)-(2*n+1)²]` -/
def P3213429317970406089.Spec : Prop :=
  ∀ n, P3213429317970406089.a n = A051662 n

end A051662

/-! ## A051662.P11305627386996884926

`floor(a(n-1)+(2*n+1)²-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051662.P11305627386996884926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2 : ℤ) - (n : ℤ)

end

end A051662.P11305627386996884926

namespace A051662

/-- `floor(a(n-1)+(2*n+1)²-n)` -/
def P11305627386996884926.Spec : Prop :=
  ∀ n, P11305627386996884926.a n = A051662 n

end A051662

/-! ## A051662.P16955000913890972283

`gcd(2, 2*n+1)*∑[(2*n+1)²-n]`
-/

namespace A051662.P16955000913890972283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (2 * n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051662.P16955000913890972283

namespace A051662

/-- `gcd(2, 2*n+1)*∑[(2*n+1)²-n]` -/
def P16955000913890972283.Spec : Prop :=
  ∀ n, P16955000913890972283.a n = A051662 n

end A051662

/-! ## A051662.P10447291471767113411

`∑[A033951(n)]`
-/

namespace A051662.P10447291471767113411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P10447291471767113411

namespace A051662

/-- `∑[A033951(n)]` -/
def P10447291471767113411.Spec : Prop :=
  ∀ n, P10447291471767113411.a n = A051662 n

end A051662

/-! ## A051662.P9591228822319919085

`∑[∑[A133655(n)]]`
-/

namespace A051662.P9591228822319919085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P9591228822319919085

namespace A051662

/-- `∑[∑[A133655(n)]]` -/
def P9591228822319919085.Spec : Prop :=
  ∀ n, P9591228822319919085.a n = A051662 n

end A051662

/-! ## A051662.P18446712527041064254

`∑[A033954(n)+1]`
-/

namespace A051662.P18446712527041064254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P18446712527041064254

namespace A051662

/-- `∑[A033954(n)+1]` -/
def P18446712527041064254.Spec : Prop :=
  ∀ n, P18446712527041064254.a n = A051662 n

end A051662

/-! ## A051662.P1389614122227822790

`∑[A185669(n)-1]`
-/

namespace A051662.P1389614122227822790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185669 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P1389614122227822790

namespace A051662

/-- `∑[A185669(n)-1]` -/
def P1389614122227822790.Spec : Prop :=
  ∀ n, P1389614122227822790.a n = A051662 n

end A051662

/-! ## A051662.P10419946661246398835

`∑[A016754(n)-n]`
-/

namespace A051662.P10419946661246398835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P10419946661246398835

namespace A051662

/-- `∑[A016754(n)-n]` -/
def P10419946661246398835.Spec : Prop :=
  ∀ n, P10419946661246398835.a n = A051662 n

end A051662

/-! ## A051662.P3657764792700696137

`Δ[n*A000330(n)]`
-/

namespace A051662.P3657764792700696137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051662.P3657764792700696137

namespace A051662

/-- `Δ[n*A000330(n)]` -/
def P3657764792700696137.Spec : Prop :=
  ∀ n, P3657764792700696137.a n = A051662 n

end A051662

/-! ## A051662.P129353676530386932

`∑[A003215(n)+n²]`
-/

namespace A051662.P129353676530386932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P129353676530386932

namespace A051662

/-- `∑[A003215(n)+n²]` -/
def P129353676530386932.Spec : Prop :=
  ∀ n, P129353676530386932.a n = A051662 n

end A051662

/-! ## A051662.P12193013739565795732

`∑[A157142(n)²-n]`
-/

namespace A051662.P12193013739565795732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P12193013739565795732

namespace A051662

/-- `∑[A157142(n)²-n]` -/
def P12193013739565795732.Spec : Prop :=
  ∀ n, P12193013739565795732.a n = A051662 n

end A051662

/-! ## A051662.P3113241958182983855

`∑[A002943(n)+n+1]`
-/

namespace A051662.P3113241958182983855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P3113241958182983855

namespace A051662

/-- `∑[A002943(n)+n+1]` -/
def P3113241958182983855.Spec : Prop :=
  ∀ n, P3113241958182983855.a n = A051662 n

end A051662

/-! ## A051662.P8217359622854814542

`∑[A054569(n+1)+n]`
-/

namespace A051662.P8217359622854814542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P8217359622854814542

namespace A051662

/-- `∑[A054569(n+1)+n]` -/
def P8217359622854814542.Spec : Prop :=
  ∀ n, P8217359622854814542.a n = A051662 n

end A051662

/-! ## A051662.P487349074583347728

`∑[record[A308217(n)]]`
-/

namespace A051662.P487349074583347728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051662.P487349074583347728

namespace A051662

/-- `∑[record[A308217(n)]]` -/
def P487349074583347728.Spec : Prop :=
  ∀ n, P487349074583347728.a n = A051662 n

end A051662

/-!
# A051663: Primes p such that there is no Carmichael number pqr, p<q<r q, r primes.

The programs for A051663, there is no canonical definition to state claims against.
-/

/-! ## A051663.P8160412607024563329

`record[A000040(n+1)-A141705(n+1)]`
-/

namespace A051663.P8160412607024563329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051663.P8160412607024563329

/-! ## A051663.P15295502653803986364

`record[gcd(A000040(n+1), A141703(n+1))]`
-/

namespace A051663.P15295502653803986364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A141703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051663.P15295502653803986364

/-!
# A051664: a(n) is the number of nonzero coefficients in the n-th cyclotomic polynomial.

The programs for A051664, there is no canonical definition to state claims against.
-/

/-! ## A051664.P6749722788853112378

`A000010(n+1)+1-A086798(n+1)`
-/

namespace A051664.P6749722788853112378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1 - A086798 (n + 1)

end

end A051664.P6749722788853112378

/-! ## A051664.P10070275283496275091

`A070536(n+1)+A006530(n+1)`
-/

namespace A051664.P10070275283496275091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + A006530 (n + 1)

end

end A051664.P10070275283496275091

/-! ## A051664.P11698073988757608393

`A039649(n+1)-A086798(n+1)`
-/

namespace A051664.P11698073988757608393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A086798 (n + 1)

end

end A051664.P11698073988757608393

/-! ## A051664.P13721077174990644773

`A070536(n+1)+A053585(∏{p}[n+1, #])`
-/

namespace A051664.P13721077174990644773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A051664.P13721077174990644773

/-! ## A051664.P3934420366376429063

`A070536(n+1)+(n+1)/A052126(n+1)`
-/

namespace A051664.P3934420366376429063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070536 (n + 1) : ℚ) + (n + 1 : ℚ) / (A052126 (n + 1) : ℚ)

end

end A051664.P3934420366376429063

/-! ## A051664.P13368501302619886151

`A046665(2*(n+1))+A070536(2*(n+1))+2`
-/

namespace A051664.P13368501302619886151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (2 * (n + 1)) + (A070536 (2 * (n + 1)) + 2)

end

end A051664.P13368501302619886151

/-! ## A051664.P14253058355174809822

`A346088((∏{p}[n+1, #]-1)%(n+1)+1)+A070536(n+1)`
-/

namespace A051664.P14253058355174809822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat + A070536 (n + 1)

end

end A051664.P14253058355174809822

/-! ## A051664.P17367405550654367936

`A070536(n+1)+A014963(A053585(n+1))`
-/

namespace A051664.P17367405550654367936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + A014963 (A053585 (n + 1)).toNat

end

end A051664.P17367405550654367936

/-! ## A051664.P8183439095102486781

`A223491(A007947(n+1))+A070536(n+1)`
-/

namespace A051664.P8183439095102486781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (A007947 (n + 1)).toNat + A070536 (n + 1)

end

end A051664.P8183439095102486781

/-! ## A051664.P10276538434820236084

`A070536(n+1)+A008578(A061395(n+1)+1)`
-/

namespace A051664.P10276538434820236084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + A008578 (A061395 (n + 1) + 1).toNat

end

end A051664.P10276538434820236084

/-! ## A051664.P4994180357060568837

`A020639(n+1)+A070536(n+1)+A046665(n+1)`
-/

namespace A051664.P4994180357060568837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A070536 (n + 1) + A046665 (n + 1))

end

end A051664.P4994180357060568837

/-! ## A051664.P920262508603510983

`A070536(n+1)+A318884(n+1)-A318886(n+1)`
-/

namespace A051664.P920262508603510983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + (A318884 (n + 1) - A318886 (n + 1))

end

end A051664.P920262508603510983

/-! ## A051664.P3200357491139305631

`A070536(n+1)+A020639((n+1)/A051119(n+1))`
-/

namespace A051664.P3200357491139305631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1) + A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A051664.P3200357491139305631

/-! ## A051664.P11328954944174393629

`∑{d}[n+1, A087073(#)]`
-/

namespace A051664.P11328954944174393629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087073 d

end

end A051664.P11328954944174393629

/-! ## A051664.P1440461877582610184

`A086780(n+1)+A086765(n+1)`
-/

namespace A051664.P1440461877582610184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086780 (n + 1) + A086765 (n + 1)

end

end A051664.P1440461877582610184

/-! ## A051664.P12831297000833696770

`∑{digits}[A063671(n+1), #]`
-/

namespace A051664.P12831297000833696770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A051664.P12831297000833696770

/-! ## A051664.P2061533690465322714

`A118759(A318884(n+1))`
-/

namespace A051664.P2061533690465322714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A318884 (n + 1)).toNat

end

end A051664.P2061533690465322714

/-! ## A051664.P16159183607854614774

`A318884(A217434((n+1)²))`
-/

namespace A051664.P16159183607854614774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A217434 ((n + 1) ^ 2)).toNat

end

end A051664.P16159183607854614774

/-! ## A051664.P2804750083496992218

`A318886(n+1)+A014963(A053585((n+1)²))`
-/

namespace A051664.P2804750083496992218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A014963 (A053585 ((n + 1) ^ 2)).toNat

end

end A051664.P2804750083496992218

/-! ## A051664.P1325032848139419031

`A318886(n+1)+A014963(A345941(n+1)²)`
-/

namespace A051664.P1325032848139419031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (n + 1) + A014963 (A345941 (n + 1) ^ 2).toNat

end

end A051664.P1325032848139419031

/-!
# A051666: Rows of triangle formed using Pascal's rule except begin and end n-th row with n^2.

The programs for A051666, the canonical program `A051666.P8179550014341494216` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051666 has offset 0).

The definition of A051666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051666.P6328726083229757845

`A051668(n)-A134636(n)`
-/

namespace A051666.P6328726083229757845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A134636 n

end

end A051666.P6328726083229757845

namespace A051666

/-- `A051668(n)-A134636(n)` -/
def P6328726083229757845.Spec : Prop :=
  ∀ n, P6328726083229757845.a n = A051666 n

theorem P6328726083229757845.correct : P6328726083229757845.Spec := by
  intro n
  simp only [A051666, Nat.add_sub_cancel, A051666.P6328726083229757845.a, A051666.P8179550014341494216.a, A051601, A051601.P8807190257128102919.a, A051668, A051668.P17142553008796260612.a, A134636, A134636.P14217444213641303487.a, A222404, A222404.P14214754150695596768.a, A028263, A028263.P3177418721069471964.a, A051632, A051632.P5030505018056849433.a, A222403, A222403.P3020155544965014607.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028327, A028327.P9835590816428302231.a, A051631, A051631.P14444125950979056489.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051666

/-! ## A051666.P8179550014341494216

`A222404(n)-A051601(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051666

/-- `A222404(n)-A051601(n)` -/
def P8179550014341494216.Spec : Prop :=
  ∀ n, P8179550014341494216.a n = A051666 n

theorem P8179550014341494216.correct : P8179550014341494216.Spec := by
  intro n
  simp only [A051666]

end A051666

/-! ## A051666.P6455724086935428683

`A222405(n)-A051597(n)`
-/

namespace A051666.P6455724086935428683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222405 n - A051597 n

end

end A051666.P6455724086935428683

namespace A051666

/-- `A222405(n)-A051597(n)` -/
def P6455724086935428683.Spec : Prop :=
  ∀ n, P6455724086935428683.a n = A051666 n

end A051666

/-! ## A051666.P14965980738395131088

`2*A222403(n)-A051601(n)`
-/

namespace A051666.P14965980738395131088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222403 n - A051601 n

end

end A051666.P14965980738395131088

namespace A051666

/-- `2*A222403(n)-A051601(n)` -/
def P14965980738395131088.Spec : Prop :=
  ∀ n, P14965980738395131088.a n = A051666 n

end A051666

/-! ## A051666.P10890774228567230629

`A051597(n)+A222404(n)-A134636(n)`
-/

namespace A051666.P10890774228567230629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A222404 n - A134636 n)

end

end A051666.P10890774228567230629

namespace A051666

/-- `A051597(n)+A222404(n)-A134636(n)` -/
def P10890774228567230629.Spec : Prop :=
  ∀ n, P10890774228567230629.a n = A051666 n

end A051666

/-! ## A051666.P2718433037629809089

`A051601(n)+A222405(n)-A134636(n)`
-/

namespace A051666.P2718433037629809089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + (A222405 n - A134636 n)

end

end A051666.P2718433037629809089

namespace A051666

/-- `A051601(n)+A222405(n)-A134636(n)` -/
def P2718433037629809089.Spec : Prop :=
  ∀ n, P2718433037629809089.a n = A051666 n

end A051666

/-! ## A051666.P12984251761563741386

`A005843(A222403(n))-A051601(n)`
-/

namespace A051666.P12984251761563741386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A222403 n).toNat - A051601 n

end

end A051666.P12984251761563741386

namespace A051666

/-- `A005843(A222403(n))-A051601(n)` -/
def P12984251761563741386.Spec : Prop :=
  ∀ n, P12984251761563741386.a n = A051666 n

end A051666

/-!
# A051667: a(n) = 6*2^n - 4*n - 6.

The programs for A051667, the canonical program `A051667.P4584506369535307113` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051667 has offset 0).

The definition of A051667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-4*n-6` (program `A051667.P4584506369535307113`, by `A051667.P4584506369535307113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051667.P4584506369535307113

`6*2^n-4*n-6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051667

/-- `6*2^n-4*n-6` -/
def P4584506369535307113.Spec : Prop :=
  ∀ n, P4584506369535307113.a n = A051667 n

theorem P4584506369535307113.correct : P4584506369535307113.Spec := by
  intro n
  simp only [A051667]

end A051667

/-! ## A051667.P1408750326306993688

`∑[ogf((2x+2x^2)/(1-3x+2x^2))]`
-/

namespace A051667.P1408750326306993688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P1408750326306993688

namespace A051667

/-- `∑[ogf((2x+2x^2)/(1-3x+2x^2))]` -/
def P1408750326306993688.Spec : Prop :=
  ∀ n, P1408750326306993688.a n = A051667 n

end A051667

/-! ## A051667.P1359478859707273390

`ogf((2x+2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A051667.P1359478859707273390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -4, 5, -2] n

end

end A051667.P1359478859707273390

namespace A051667

/-- `ogf((2x+2x^2)/(1-4x+5x^2-2x^3))` -/
def P1359478859707273390.Spec : Prop :=
  ∀ n, P1359478859707273390.a n = A051667 n

end A051667

/-! ## A051667.P9074828219698590059

`∑[2*(a(n-1)+2)]` with `a(0)=0, a(1)=2`
-/

namespace A051667.P9074828219698590059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P9074828219698590059

namespace A051667

/-- `∑[2*(a(n-1)+2)]` -/
def P9074828219698590059.Spec : Prop :=
  ∀ n, (P9074828219698590059.a n : ℤ) = A051667 n

end A051667

/-! ## A051667.P17835359202065871272

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A051667.P17835359202065871272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P17835359202065871272

namespace A051667

/-- `∑[∑[2*a(n-1)]]` -/
def P17835359202065871272.Spec : Prop :=
  ∀ n, (P17835359202065871272.a n : ℤ) = A051667 n

end A051667

/-! ## A051667.P239489350335808321

`lcm(2, ∑[2^n-2]+2^n)`
-/

namespace A051667.P239489350335808321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ))

end

end A051667.P239489350335808321

namespace A051667

/-- `lcm(2, ∑[2^n-2]+2^n)` -/
def P239489350335808321.Spec : Prop :=
  ∀ n, (P239489350335808321.a n : ℤ) = A051667 n

end A051667

/-! ## A051667.P16607563596677035532

`2*(2*n+a(n-1)-1)` with `a(0)=0`
-/

namespace A051667.P16607563596677035532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((2 * n : ℤ) + (a (n - 1) - 1))

end

end A051667.P16607563596677035532

namespace A051667

/-- `2*(2*n+a(n-1)-1)` -/
def P16607563596677035532.Spec : Prop :=
  ∀ n, P16607563596677035532.a n = A051667 n

theorem P16607563596677035532.correct : P16607563596677035532.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051667, Nat.add_sub_cancel, A051667.P16607563596677035532.a, A051667.P4584506369535307113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051667, Nat.add_sub_cancel, A051667.P16607563596677035532.a, A051667.P4584506369535307113.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051667

/-! ## A051667.P8790468594047740721

`2*(2*n-(1-a(n-1)))` with `a(0)=0`
-/

namespace A051667.P8790468594047740721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((2 * n : ℤ) - (1 - a (n - 1)))

end

end A051667.P8790468594047740721

namespace A051667

/-- `2*(2*n-(1-a(n-1)))` -/
def P8790468594047740721.Spec : Prop :=
  ∀ n, P8790468594047740721.a n = A051667 n

theorem P8790468594047740721.correct : P8790468594047740721.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051667, Nat.add_sub_cancel, A051667.P8790468594047740721.a, A051667.P4584506369535307113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051667, Nat.add_sub_cancel, A051667.P8790468594047740721.a, A051667.P4584506369535307113.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051667

/-! ## A051667.P11287865051917822480

`∑[a(n-1)+a(n-1)+4]` with `a(0)=0, a(1)=2`
-/

namespace A051667.P11287865051917822480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P11287865051917822480

namespace A051667

/-- `∑[a(n-1)+a(n-1)+4]` -/
def P11287865051917822480.Spec : Prop :=
  ∀ n, (P11287865051917822480.a n : ℤ) = A051667 n

end A051667

/-! ## A051667.P13110227529968402952

`2*A050488(n)`
-/

namespace A051667.P13110227529968402952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050488 n

end

end A051667.P13110227529968402952

namespace A051667

/-- `2*A050488(n)` -/
def P13110227529968402952.Spec : Prop :=
  ∀ n, P13110227529968402952.a n = A051667 n

theorem P13110227529968402952.correct : P13110227529968402952.Spec := by
  intro n
  simp only [A051667, Nat.add_sub_cancel, A051667.P13110227529968402952.a, A051667.P4584506369535307113.a, A050488, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051667

/-! ## A051667.P8870944444329823674

`∑[A068156(n)-1]`
-/

namespace A051667.P8870944444329823674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P8870944444329823674

namespace A051667

/-- `∑[A068156(n)-1]` -/
def P8870944444329823674.Spec : Prop :=
  ∀ n, P8870944444329823674.a n = A051667 n

end A051667

/-! ## A051667.P12914774038557971015

`∑[2*A296953(n)]`
-/

namespace A051667.P12914774038557971015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P12914774038557971015

namespace A051667

/-- `∑[2*A296953(n)]` -/
def P12914774038557971015.Spec : Prop :=
  ∀ n, P12914774038557971015.a n = A051667 n

end A051667

/-! ## A051667.P7422437413617542211

`2*(A097813(n)-1)`
-/

namespace A051667.P7422437413617542211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097813 n - 1)

end

end A051667.P7422437413617542211

namespace A051667

/-- `2*(A097813(n)-1)` -/
def P7422437413617542211.Spec : Prop :=
  ∀ n, P7422437413617542211.a n = A051667 n

theorem P7422437413617542211.correct : P7422437413617542211.Spec := by
  intro n
  simp only [A051667, Nat.add_sub_cancel, A051667.P7422437413617542211.a, A051667.P4584506369535307113.a, A097813, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051667

/-! ## A051667.P11665312580625577173

`2*(A095151(n)-n)`
-/

namespace A051667.P11665312580625577173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095151 n - (n : ℤ))

end

end A051667.P11665312580625577173

namespace A051667

/-- `2*(A095151(n)-n)` -/
def P11665312580625577173.Spec : Prop :=
  ∀ n, P11665312580625577173.a n = A051667 n

theorem P11665312580625577173.correct : P11665312580625577173.Spec := by
  intro n
  simp only [A051667, Nat.add_sub_cancel, A051667.P11665312580625577173.a, A051667.P4584506369535307113.a, A095151, A095151.P5582289539786674554.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051667

/-! ## A051667.P3083185664774786213

`∑[A369491(n+1)-2]`
-/

namespace A051667.P3083185664774786213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P3083185664774786213

namespace A051667

/-- `∑[A369491(n+1)-2]` -/
def P3083185664774786213.Spec : Prop :=
  ∀ n, P3083185664774786213.a n = A051667 n

end A051667

/-! ## A051667.P5240178161734412005

`∑[A290114(n+1)-3]`
-/

namespace A051667.P5240178161734412005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P5240178161734412005

namespace A051667

/-- `∑[A290114(n+1)-3]` -/
def P5240178161734412005.Spec : Prop :=
  ∀ n, P5240178161734412005.a n = A051667 n

end A051667

/-! ## A051667.P17658628753444384752

`∑[A058764(n+1)-4]`
-/

namespace A051667.P17658628753444384752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P17658628753444384752

namespace A051667

/-- `∑[A058764(n+1)-4]` -/
def P17658628753444384752.Spec : Prop :=
  ∀ n, P17658628753444384752.a n = A051667 n

end A051667

/-! ## A051667.P9878620699568226791

`∑[2*(A083329(n)-1)]`
-/

namespace A051667.P9878620699568226791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083329 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P9878620699568226791

namespace A051667

/-- `∑[2*(A083329(n)-1)]` -/
def P9878620699568226791.Spec : Prop :=
  ∀ n, P9878620699568226791.a n = A051667 n

end A051667

/-! ## A051667.P11642590073595166305

`∑[2*(A042950(n)-2)]`
-/

namespace A051667.P11642590073595166305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A042950 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P11642590073595166305

namespace A051667

/-- `∑[2*(A042950(n)-2)]` -/
def P11642590073595166305.Spec : Prop :=
  ∀ n, P11642590073595166305.a n = A051667 n

end A051667

/-! ## A051667.P15898603949804164799

`∑[A087009(n+3)-4]`
-/

namespace A051667.P15898603949804164799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (n + 3) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051667.P15898603949804164799

namespace A051667

/-- `∑[A087009(n+3)-4]` -/
def P15898603949804164799.Spec : Prop :=
  ∀ n, P15898603949804164799.a n = A051667 n

end A051667

/-!
# A051668: Rows of triangle formed using Pascal's rule except begin and end n-th row with (n+1)^2.

The programs for A051668, the canonical program `A051668.P17142553008796260612` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051668 has offset 0).

The definition of A051668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051668.P17142553008796260612

`A134636(n)+A051666(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051668

/-- `A134636(n)+A051666(n)` -/
def P17142553008796260612.Spec : Prop :=
  ∀ n, P17142553008796260612.a n = A051668 n

theorem P17142553008796260612.correct : P17142553008796260612.Spec := by
  intro n
  simp only [A051668]

end A051668

/-! ## A051668.P4599976930517943346

`A222404(n)+A051597(n)`
-/

namespace A051668.P4599976930517943346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + A051597 n

end

end A051668.P4599976930517943346

namespace A051668

/-- `A222404(n)+A051597(n)` -/
def P4599976930517943346.Spec : Prop :=
  ∀ n, P4599976930517943346.a n = A051668 n

end A051668

/-! ## A051668.P8576907831174804911

`A222405(n)+A051601(n)`
-/

namespace A051668.P8576907831174804911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222405 n + A051601 n

end

end A051668.P8576907831174804911

namespace A051668

/-- `A222405(n)+A051601(n)` -/
def P8576907831174804911.Spec : Prop :=
  ∀ n, P8576907831174804911.a n = A051668 n

end A051668

/-! ## A051668.P16146664404383063096

`A051597(n)+2*A222403(n)`
-/

namespace A051668.P16146664404383063096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + 2 * A222403 n

end

end A051668.P16146664404383063096

namespace A051668

/-- `A051597(n)+2*A222403(n)` -/
def P16146664404383063096.Spec : Prop :=
  ∀ n, P16146664404383063096.a n = A051668 n

end A051668

/-! ## A051668.P15319983192026785673

`A051597(n)+A051666(n)+A051601(n)`
-/

namespace A051668.P15319983192026785673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A051666 n + A051601 n)

end

end A051668.P15319983192026785673

namespace A051668

/-- `A051597(n)+A051666(n)+A051601(n)` -/
def P15319983192026785673.Spec : Prop :=
  ∀ n, P15319983192026785673.a n = A051668 n

end A051668

/-! ## A051668.P4343519212911431486

`A222404(n)+A222405(n)-A051666(n)`
-/

namespace A051668.P4343519212911431486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + (A222405 n - A051666 n)

end

end A051668.P4343519212911431486

namespace A051668

/-- `A222404(n)+A222405(n)-A051666(n)` -/
def P4343519212911431486.Spec : Prop :=
  ∀ n, P4343519212911431486.a n = A051668 n

end A051668

/-! ## A051668.P12352261718405526741

`A051597(n)+A005843(A222403(n))`
-/

namespace A051668.P12352261718405526741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A005843 (A222403 n).toNat

end

end A051668.P12352261718405526741

namespace A051668

/-- `A051597(n)+A005843(A222403(n))` -/
def P12352261718405526741.Spec : Prop :=
  ∀ n, P12352261718405526741.a n = A051668 n

end A051668

/-!
# A051669: a(n) = 11*2^n - 4*n - 10.

The programs for A051669, the canonical program `A051669.P500712326000610760` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051669 has offset 0).

The definition of A051669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*2^n-4*n-10` (program `A051669.P500712326000610760`, by `A051669.P500712326000610760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051669.P500712326000610760

`11*2^n-4*n-10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051669

/-- `11*2^n-4*n-10` -/
def P500712326000610760.Spec : Prop :=
  ∀ n, P500712326000610760.a n = A051669 n

theorem P500712326000610760.correct : P500712326000610760.Spec := by
  intro n
  simp only [A051669]

end A051669

/-! ## A051669.P10711074687875220614

`∑[ogf((1+4x-x^2)/(1-3x+2x^2))]`
-/

namespace A051669.P10711074687875220614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P10711074687875220614

namespace A051669

/-- `∑[ogf((1+4x-x^2)/(1-3x+2x^2))]` -/
def P10711074687875220614.Spec : Prop :=
  ∀ n, P10711074687875220614.a n = A051669 n

end A051669

/-! ## A051669.P10803618480359112911

`ogf((1+4x-x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A051669.P10803618480359112911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, -4, 5, -2] n

end

end A051669.P10803618480359112911

namespace A051669

/-- `ogf((1+4x-x^2)/(1-4x+5x^2-2x^3))` -/
def P10803618480359112911.Spec : Prop :=
  ∀ n, P10803618480359112911.a n = A051669 n

end A051669

/-! ## A051669.P12393583061869562975

`∑[2*(a(n-1)+2)]` with `a(0)=1, a(1)=7`
-/

namespace A051669.P12393583061869562975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P12393583061869562975

namespace A051669

/-- `∑[2*(a(n-1)+2)]` -/
def P12393583061869562975.Spec : Prop :=
  ∀ n, (P12393583061869562975.a n : ℤ) = A051669 n

end A051669

/-! ## A051669.P13223193660694551803

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=6, a(2)=11`
-/

namespace A051669.P13223193660694551803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 11] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P13223193660694551803

namespace A051669

/-- `∑[∑[2*a(n-1)]]` -/
def P13223193660694551803.Spec : Prop :=
  ∀ n, (P13223193660694551803.a n : ℤ) = A051669 n

end A051669

/-! ## A051669.P4215460397770167499

`2*(Δ[n²]+a(n-1))` with `a(0)=1`
-/

namespace A051669.P4215460397770167499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1))

end

end A051669.P4215460397770167499

namespace A051669

/-- `2*(Δ[n²]+a(n-1))` -/
def P4215460397770167499.Spec : Prop :=
  ∀ n, P4215460397770167499.a n = A051669 n

theorem P4215460397770167499.correct : P4215460397770167499.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051669, Nat.add_sub_cancel, A051669.P4215460397770167499.f1, A051669.P4215460397770167499.a, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051669, Nat.add_sub_cancel, A051669.P4215460397770167499.f1, A051669.P4215460397770167499.a, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051669

/-! ## A051669.P1101713691274843725

`2*(2*n+a(n-1)+1)` with `a(0)=1`
-/

namespace A051669.P1101713691274843725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * n + (a (n - 1) + 1))

end

end A051669.P1101713691274843725

namespace A051669

/-- `2*(2*n+a(n-1)+1)` -/
def P1101713691274843725.Spec : Prop :=
  ∀ n, (P1101713691274843725.a n : ℤ) = A051669 n

theorem P1101713691274843725.correct : P1101713691274843725.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051669, Nat.add_sub_cancel, A051669.P1101713691274843725.a, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051669, Nat.add_sub_cancel, A051669.P1101713691274843725.a, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051669

/-! ## A051669.P11190876282705452999

`∑[a(n-1)+a(n-1)+4]` with `a(0)=1, a(1)=7`
-/

namespace A051669.P11190876282705452999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P11190876282705452999

namespace A051669

/-- `∑[a(n-1)+a(n-1)+4]` -/
def P11190876282705452999.Spec : Prop :=
  ∀ n, (P11190876282705452999.a n : ℤ) = A051669 n

end A051669

/-! ## A051669.P13180772244568067964

`2*(2-floor(1-2*n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051669.P13180772244568067964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - (1 - (2 * n : ℤ) - a (n - 1)))

end

end A051669.P13180772244568067964

namespace A051669

/-- `2*(2-floor(1-2*n-a(n-1)))` -/
def P13180772244568067964.Spec : Prop :=
  ∀ n, P13180772244568067964.a n = A051669 n

theorem P13180772244568067964.correct : P13180772244568067964.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A051669, Nat.add_sub_cancel, A051669.P13180772244568067964.a, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A051669, Nat.add_sub_cancel, A051669.P13180772244568067964.a, A051669.P500712326000610760.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051669

/-! ## A051669.P4520029012427329050

`∑[2*A033484(n)-A011782(n)]`
-/

namespace A051669.P4520029012427329050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033484 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P4520029012427329050

namespace A051669

/-- `∑[2*A033484(n)-A011782(n)]` -/
def P4520029012427329050.Spec : Prop :=
  ∀ n, P4520029012427329050.a n = A051669 n

end A051669

/-! ## A051669.P8888352293041396703

`∑[A033484(n+1)-A011782(n)-2]`
-/

namespace A051669.P8888352293041396703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (n + 1) - A011782 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P8888352293041396703

namespace A051669

/-- `∑[A033484(n+1)-A011782(n)-2]` -/
def P8888352293041396703.Spec : Prop :=
  ∀ n, P8888352293041396703.a n = A051669 n

end A051669

/-! ## A051669.P3200593330351996251

`∑[∑[A198633(n+1)]-A228305(2*n+1)]`
-/

namespace A051669.P3200593330351996251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A228305 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P3200593330351996251

namespace A051669

/-- `∑[∑[A198633(n+1)]-A228305(2*n+1)]` -/
def P3200593330351996251.Spec : Prop :=
  ∀ n, P3200593330351996251.a n = A051669 n

end A051669

/-! ## A051669.P12538534742075825198

`∑[∑[A228305(2*(n+1))]-A228305(2*n+1)]`
-/

namespace A051669.P12538534742075825198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A228305 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051669.P12538534742075825198

namespace A051669

/-- `∑[∑[A228305(2*(n+1))]-A228305(2*n+1)]` -/
def P12538534742075825198.Spec : Prop :=
  ∀ n, P12538534742075825198.a n = A051669 n

end A051669

/-!
# A051670: Smallest prime that concatenated with all previous terms of sequence forms a prime.

The programs for A051670, there is no canonical definition to state claims against.
-/

/-! ## A051670.P16099783952567926110

`A082239(∑[n]+1)`
-/

namespace A051670.P16099783952567926110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051670.P16099783952567926110

/-!
# A051673: Cubic star numbers: a(n) = n^3 + 4*Sum_{i=0..n-1} i^2.

The programs for A051673, the canonical program `A051673.P2146519150277777514` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051673 has offset 0).

The definition of A051673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051673.P1204385270471440011

`n*(n*(7*n-6)+2)/3`
-/

namespace A051673.P1204385270471440011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) * ((7 * n : ℤ) - 6) + 2) : ℚ) / 3

end

end A051673.P1204385270471440011

namespace A051673

/-- `n*(n*(7*n-6)+2)/3` -/
def P1204385270471440011.Spec : Prop :=
  ∀ n, P1204385270471440011.a n = (A051673 n : ℚ)

theorem P1204385270471440011.correct : P1204385270471440011.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051673, Nat.add_sub_cancel, A051673.P1204385270471440011.a, A051673.P2146519150277777514.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051673, Nat.add_sub_cancel, A051673.P1204385270471440011.a, A051673.P2146519150277777514.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051673

/-! ## A051673.P2146519150277777514

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=47`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051673

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2146519150277777514.Spec : Prop :=
  ∀ n, P2146519150277777514.a n = A051673 n

theorem P2146519150277777514.correct : P2146519150277777514.Spec := by
  intro n
  simp only [A051673]

end A051673

/-! ## A051673.P18024042873977867680

`C(2*n, 3)+n^3`
-/

namespace A051673.P18024042873977867680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n ^ 3

end

end A051673.P18024042873977867680

namespace A051673

/-- `C(2*n, 3)+n^3` -/
def P18024042873977867680.Spec : Prop :=
  ∀ n, (P18024042873977867680.a n : ℤ) = A051673 n

end A051673

/-! ## A051673.P3619717143936484287

`∑[∑[a(n-1)+14]]` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A051673.P3619717143936484287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051673.P3619717143936484287

namespace A051673

/-- `∑[∑[a(n-1)+14]]` -/
def P3619717143936484287.Spec : Prop :=
  ∀ n, (P3619717143936484287.a n : ℤ) = A051673 n

end A051673

/-! ## A051673.P14010396670221054897

`∑[∑[ogf((x+8x^2+5x^3)/(1-2x+x^2))]]`
-/

namespace A051673.P14010396670221054897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051673.P14010396670221054897

namespace A051673

/-- `∑[∑[ogf((x+8x^2+5x^3)/(1-2x+x^2))]]` -/
def P14010396670221054897.Spec : Prop :=
  ∀ n, P14010396670221054897.a n = A051673 n

end A051673

/-! ## A051673.P17177850513008951131

`∑[n*(7*n-2)]-C(9*n, 2)/9`
-/

namespace A051673.P17177850513008951131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((7 * n : ℤ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (Nat.choose (9 * n) 2 : ℚ) / 9

end

end A051673.P17177850513008951131

namespace A051673

/-- `∑[n*(7*n-2)]-C(9*n, 2)/9` -/
def P17177850513008951131.Spec : Prop :=
  ∀ n, P17177850513008951131.a n = (A051673 n : ℚ)

end A051673

/-! ## A051673.P12475061373040175097

`A214659(n)+n-n²`
-/

namespace A051673.P12475061373040175097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214659 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A051673.P12475061373040175097

namespace A051673

/-- `A214659(n)+n-n²` -/
def P12475061373040175097.Spec : Prop :=
  ∀ n, P12475061373040175097.a n = A051673 n

end A051673

/-! ## A051673.P10332874162334077189

`A050410(n)+n-∑[n]`
-/

namespace A051673.P10332874162334077189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050410 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A051673.P10332874162334077189

namespace A051673

/-- `A050410(n)+n-∑[n]` -/
def P10332874162334077189.Spec : Prop :=
  ∀ n, P10332874162334077189.a n = A051673 n

end A051673

/-! ## A051673.P7908009327883086963

`A015237(n)+A007290(n)`
-/

namespace A051673.P7908009327883086963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + A007290 n

end

end A051673.P7908009327883086963

namespace A051673

/-- `A015237(n)+A007290(n)` -/
def P7908009327883086963.Spec : Prop :=
  ∀ n, P7908009327883086963.a n = A051673 n

end A051673

/-! ## A051673.P5172533893459615276

`A006597(n)-A005581(n)`
-/

namespace A051673.P5172533893459615276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 n - A005581 n

end

end A051673.P5172533893459615276

namespace A051673

/-- `A006597(n)-A005581(n)` -/
def P5172533893459615276.Spec : Prop :=
  ∀ n, P5172533893459615276.a n = A051673 n

end A051673

/-! ## A051673.P13084026734030760852

`A050409(n)-A022266(n)`
-/

namespace A051673.P13084026734030760852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - A022266 n

end

end A051673.P13084026734030760852

namespace A051673

/-- `A050409(n)-A022266(n)` -/
def P13084026734030760852.Spec : Prop :=
  ∀ n, P13084026734030760852.a n = A051673 n

end A051673

/-! ## A051673.P9144869502103650073

`A085474(n)-A005915(n)`
-/

namespace A051673.P9144869502103650073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085474 n - A005915 n

end

end A051673.P9144869502103650073

namespace A051673

/-- `A085474(n)-A005915(n)` -/
def P9144869502103650073.Spec : Prop :=
  ∀ n, P9144869502103650073.a n = A051673 n

end A051673

/-! ## A051673.P5768918851058295339

`A034721(n)-A100104(n)`
-/

namespace A051673.P5768918851058295339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034721 n - A100104 n

end

end A051673.P5768918851058295339

namespace A051673

/-- `A034721(n)-A100104(n)` -/
def P5768918851058295339.Spec : Prop :=
  ∀ n, P5768918851058295339.a n = A051673 n

end A051673

/-! ## A051673.P5809900079940137494

`A169607(n)-A022269(n)`
-/

namespace A051673.P5809900079940137494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n - A022269 n

end

end A051673.P5809900079940137494

namespace A051673

/-- `A169607(n)-A022269(n)` -/
def P5809900079940137494.Spec : Prop :=
  ∀ n, P5809900079940137494.a n = A051673 n

end A051673

/-! ## A051673.P10460629213490660013

`A168547(n)-A116731(n+1)`
-/

namespace A051673.P10460629213490660013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - A116731 (n + 1)

end

end A051673.P10460629213490660013

namespace A051673

/-- `A168547(n)-A116731(n+1)` -/
def P10460629213490660013.Spec : Prop :=
  ∀ n, P10460629213490660013.a n = A051673 n

end A051673

/-! ## A051673.P249746815696966687

`A172082(n)-A266397(n+1)`
-/

namespace A051673.P249746815696966687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172082 n - A266397 (n + 1)

end

end A051673.P249746815696966687

namespace A051673

/-- `A172082(n)-A266397(n+1)` -/
def P249746815696966687.Spec : Prop :=
  ∀ n, P249746815696966687.a n = A051673 n

end A051673

/-! ## A051673.P3638327445289806626

`A317297(n+1)-A174814(n)`
-/

namespace A051673.P3638327445289806626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) - A174814 n

end

end A051673.P3638327445289806626

namespace A051673

/-- `A317297(n+1)-A174814(n)` -/
def P3638327445289806626.Spec : Prop :=
  ∀ n, P3638327445289806626.a n = A051673 n

end A051673

/-! ## A051673.P4434400138601744767

`A004466(n)+2*A007290(n)`
-/

namespace A051673.P4434400138601744767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n + 2 * A007290 n

end

end A051673.P4434400138601744767

namespace A051673

/-- `A004466(n)+2*A007290(n)` -/
def P4434400138601744767.Spec : Prop :=
  ∀ n, P4434400138601744767.a n = A051673 n

end A051673

/-! ## A051673.P12717358508880649348

`A006527(n)+2*A045991(n)`
-/

namespace A051673.P12717358508880649348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n + 2 * A045991 n

end

end A051673.P12717358508880649348

namespace A051673

/-- `A006527(n)+2*A045991(n)` -/
def P12717358508880649348.Spec : Prop :=
  ∀ n, P12717358508880649348.a n = A051673 n

end A051673

/-! ## A051673.P13441914688635365244

`A004126(n)+A004126(n)-A000384(n)`
-/

namespace A051673.P13441914688635365244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n + (A004126 n - A000384 n)

end

end A051673.P13441914688635365244

namespace A051673

/-- `A004126(n)+A004126(n)-A000384(n)` -/
def P13441914688635365244.Spec : Prop :=
  ∀ n, P13441914688635365244.a n = A051673 n

end A051673

/-!
# A051674: a(n) = prime(n)^prime(n).

The programs for A051674, the canonical program `A051674.P13718598881858255390` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051674 has offset 1).

The definition of A051674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051674.P13718598881858255390

`A000312(A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051674

/-- `A000312(A000040(n+1))` -/
def P13718598881858255390.Spec : Prop :=
  ∀ n, P13718598881858255390.a n = A051674 (n + 1)

theorem P13718598881858255390.correct : P13718598881858255390.Spec := by
  intro n
  simp only [A051674, Nat.add_sub_cancel]

end A051674

/-! ## A051674.P9930155976947344124

`A000040(n+1)^A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051674.P9930155976947344124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A051674.P9930155976947344124

namespace A051674

/-- `A000040(n+1)^A000040(n+1)` -/
def P9930155976947344124.Spec : Prop :=
  ∀ n, P9930155976947344124.a n = (A051674 (n + 1) : ℚ)

end A051674

/-! ## A051674.P2805179442059205948

`record[∑{p}[n+2, #^#]]`
-/

namespace A051674.P2805179442059205948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051674.P2805179442059205948

namespace A051674

/-- `record[∑{p}[n+2, #^#]]` -/
def P2805179442059205948.Spec : Prop :=
  ∀ n, (P2805179442059205948.a n : ℤ) = A051674 (n + 1)

end A051674

/-! ## A051674.P10623608805560229717

`p?[comp[n²]]^p?[comp[n²]]`
-/

namespace A051674.P10623608805560229717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

end

end A051674.P10623608805560229717

namespace A051674

/-- `p?[comp[n²]]^p?[comp[n²]]` -/
def P10623608805560229717.Spec : Prop :=
  ∀ n, (P10623608805560229717.a n : ℤ) = A051674 (n + 1)

end A051674

/-! ## A051674.P16076721432716766682

`record[A108138(n+2)]`
-/

namespace A051674.P16076721432716766682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108138 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051674.P16076721432716766682

namespace A051674

/-- `record[A108138(n+2)]` -/
def P16076721432716766682.Spec : Prop :=
  ∀ n, P16076721432716766682.a n = A051674 (n + 1)

end A051674

/-!
# A051675: 

The programs for A051675, there is no canonical definition to state claims against.
-/

/-! ## A051675.P11466248585078904907

`∏[(n+1)^(n+1)²]`
-/

namespace A051675.P11466248585078904907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051675.P11466248585078904907

/-!
# A051676: Composite numbers whose square has a prime number of divisors.

The programs for A051676, there is no canonical definition to state claims against.
-/

/-! ## A051676.P10604432313392818456

`∩[A001597(n+1), A283262(n+1)]`
-/

namespace A051676.P10604432313392818456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P10604432313392818456

/-! ## A051676.P2906846862032474380

`∩[A001694(n+1), A283262(n+1)]`
-/

namespace A051676.P2906846862032474380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P2906846862032474380

/-! ## A051676.P17947442041254188030

`∩[A013929(n+1), A283262(n+1)]`
-/

namespace A051676.P17947442041254188030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P17947442041254188030

/-! ## A051676.P15878183888037520296

`∩[A025475(n+1), A283262(n+1)]`
-/

namespace A051676.P15878183888037520296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P15878183888037520296

/-! ## A051676.P7062381466958383718

`∩[A057109(n+1), A283262(n+1)]`
-/

namespace A051676.P7062381466958383718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P7062381466958383718

/-! ## A051676.P5052999183789103227

`∩[A069189(n+1), A283262(n+1)]`
-/

namespace A051676.P5052999183789103227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P5052999183789103227

/-! ## A051676.P13711753594063410912

`∩[A070003(n+1), A283262(n+1)]`
-/

namespace A051676.P13711753594063410912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P13711753594063410912

/-! ## A051676.P9004236357676446917

`∩[A072777(n+1), A283262(n+1)]`
-/

namespace A051676.P9004236357676446917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P9004236357676446917

/-! ## A051676.P14944304857202597820

`∩[A073540(n+1), A283262(n+1)]`
-/

namespace A051676.P14944304857202597820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P14944304857202597820

/-! ## A051676.P14836643057454876283

`∩[A076292(n+1), A283262(n+1)]`
-/

namespace A051676.P14836643057454876283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051676.P14836643057454876283

/-!
# A051677: Tetrahedron-tree numbers: a(n) = Sum_{m=1..n} b(m), b(m)=1, 1,3, 1,3,6, 1,3,6,10, ..., 1,3,...,i*(i+1)/2.

The programs for A051677, the canonical program `A051677.P145270310871526407` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051677 has offset 1).

The definition of A051677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051677.P145270310871526407

`∑[C(A002262(n)+2, 2)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051677

/-- `∑[C(A002262(n)+2, 2)]` -/
def P145270310871526407.Spec : Prop :=
  ∀ n, (P145270310871526407.a n : ℤ) = A051677 (n + 1)

theorem P145270310871526407.correct : P145270310871526407.Spec := by
  intro n
  simp only [A051677, Nat.add_sub_cancel]

end A051677

/-! ## A051677.P4867811075765145679

`∑[1-A049780(n)+n]`
-/

namespace A051677.P4867811075765145679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049780 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P4867811075765145679

namespace A051677

/-- `∑[1-A049780(n)+n]` -/
def P4867811075765145679.Spec : Prop :=
  ∀ n, P4867811075765145679.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P4954974600922812873

`∑[C(A002260(n+1)+1, 2)]`
-/

namespace A051677.P4954974600922812873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P4954974600922812873

namespace A051677

/-- `∑[C(A002260(n+1)+1, 2)]` -/
def P4954974600922812873.Spec : Prop :=
  ∀ n, (P4954974600922812873.a n : ℤ) = A051677 (n + 1)

theorem P4954974600922812873.correct : P4954974600922812873.Spec := by
  intro n
  simp only [A051677, Nat.add_sub_cancel, A051677.P4954974600922812873.f1, A051677.P4954974600922812873.a, A051677.P145270310871526407.f1, A051677.P145270310871526407.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051677

/-! ## A051677.P1632540190865016569

`∑[C(ceil(A158405(n+1)/2)+1, 2)]`
-/

namespace A051677.P1632540190865016569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(A158405 (n + 1) : ℚ) / 2⌉ + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P1632540190865016569

namespace A051677

/-- `∑[C(ceil(A158405(n+1)/2)+1, 2)]` -/
def P1632540190865016569.Spec : Prop :=
  ∀ n, (P1632540190865016569.a n : ℤ) = A051677 (n + 1)

end A051677

/-! ## A051677.P14907490652672786938

`∑[A000096(A002262(n))+1]`
-/

namespace A051677.P14907490652672786938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A002262 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P14907490652672786938

namespace A051677

/-- `∑[A000096(A002262(n))+1]` -/
def P14907490652672786938.Spec : Prop :=
  ∀ n, P14907490652672786938.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P6474960508939580859

`∑[A000217(A002260(n+1))]`
-/

namespace A051677.P6474960508939580859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P6474960508939580859

namespace A051677

/-- `∑[A000217(A002260(n+1))]` -/
def P6474960508939580859.Spec : Prop :=
  ∀ n, P6474960508939580859.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P18312478658182027940

`∑[A000217(A002262(n)+1)]`
-/

namespace A051677.P18312478658182027940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P18312478658182027940

namespace A051677

/-- `∑[A000217(A002262(n)+1)]` -/
def P18312478658182027940.Spec : Prop :=
  ∀ n, P18312478658182027940.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P4206945954990046490

`∑[A161680(A002262(n)+2)]`
-/

namespace A051677.P4206945954990046490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002262 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P4206945954990046490

namespace A051677

/-- `∑[A161680(A002262(n)+2)]` -/
def P4206945954990046490.Spec : Prop :=
  ∀ n, P4206945954990046490.a n = A051677 (n + 1)

theorem P4206945954990046490.correct : P4206945954990046490.Spec := by
  intro n
  simp only [A051677, Nat.add_sub_cancel, A051677.P4206945954990046490.f1, A051677.P4206945954990046490.a, A051677.P145270310871526407.f1, A051677.P145270310871526407.a, A002262, A002262.P17823619022233514403.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051677

/-! ## A051677.P6757410283677077231

`∑[∑[A035214(n)]-A049777(n+1)]`
-/

namespace A051677.P6757410283677077231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A049777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P6757410283677077231

namespace A051677

/-- `∑[∑[A035214(n)]-A049777(n+1)]` -/
def P6757410283677077231.Spec : Prop :=
  ∀ n, P6757410283677077231.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P16329132394643870075

`∑[A141419(n+1)-∑[A114327(n)]]`
-/

namespace A051677.P16329132394643870075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P16329132394643870075

namespace A051677

/-- `∑[A141419(n+1)-∑[A114327(n)]]` -/
def P16329132394643870075.Spec : Prop :=
  ∀ n, P16329132394643870075.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P15492458688019937095

`∑[A000217(A057554(2*n+1)+1)]`
-/

namespace A051677.P15492458688019937095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057554 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P15492458688019937095

namespace A051677

/-- `∑[A000217(A057554(2*n+1)+1)]` -/
def P15492458688019937095.Spec : Prop :=
  ∀ n, P15492458688019937095.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P6451768846433338007

`∑[A038722(a(n-1)+1)%comp[A038722(a(n-1)+1)]]` with `a(0)=1`
-/

namespace A051677.P6451768846433338007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A038722 (f2 (n - 1) + 1).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A038722 (f1 (n - 1) + 1).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P6451768846433338007

namespace A051677

/-- `∑[A038722(a(n-1)+1)%comp[A038722(a(n-1)+1)]]` -/
def P6451768846433338007.Spec : Prop :=
  ∀ n, P6451768846433338007.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P16979931235419817042

`∑[A000217(A092543(A056011(n+1)))]`
-/

namespace A051677.P16979931235419817042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A092543 (A056011 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P16979931235419817042

namespace A051677

/-- `∑[A000217(A092543(A056011(n+1)))]` -/
def P16979931235419817042.Spec : Prop :=
  ∀ n, P16979931235419817042.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P1602302115193937849

`∑[C(A131818(n+2), 2)]`
-/

namespace A051677.P1602302115193937849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131818 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P1602302115193937849

namespace A051677

/-- `∑[C(A131818(n+2), 2)]` -/
def P1602302115193937849.Spec : Prop :=
  ∀ n, (P1602302115193937849.a n : ℤ) = A051677 (n + 1)

end A051677

/-! ## A051677.P3513134543716108152

`∑[A000217(A209279(A185180(n+1)))]`
-/

namespace A051677.P3513134543716108152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A209279 (A185180 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P3513134543716108152

namespace A051677

/-- `∑[A000217(A209279(A185180(n+1)))]` -/
def P3513134543716108152.Spec : Prop :=
  ∀ n, P3513134543716108152.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P10384764070071377158

`∑[A000217(A256188(A004201(n+1)))]`
-/

namespace A051677.P10384764070071377158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A256188 (A004201 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P10384764070071377158

namespace A051677

/-- `∑[A000217(A256188(A004201(n+1)))]` -/
def P10384764070071377158.Spec : Prop :=
  ∀ n, P10384764070071377158.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P1445668485400961364

`∑[A000217(A194976(A194977(n+1)))]`
-/

namespace A051677.P1445668485400961364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A194976 (A194977 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P1445668485400961364

namespace A051677

/-- `∑[A000217(A194976(A194977(n+1)))]` -/
def P1445668485400961364.Spec : Prop :=
  ∀ n, P1445668485400961364.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P3505987560350292570

`∑[A214928(A002260(n+1)²)]`
-/

namespace A051677.P3505987560350292570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A002260 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P3505987560350292570

namespace A051677

/-- `∑[A214928(A002260(n+1)²)]` -/
def P3505987560350292570.Spec : Prop :=
  ∀ n, P3505987560350292570.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P10125484285246663432

`∑[A001281(A002260(n+1)+A002260(n+1)²)]`
-/

namespace A051677.P10125484285246663432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002260 (n + 1) + A002260 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P10125484285246663432

namespace A051677

/-- `∑[A001281(A002260(n+1)+A002260(n+1)²)]` -/
def P10125484285246663432.Spec : Prop :=
  ∀ n, P10125484285246663432.a n = A051677 (n + 1)

end A051677

/-! ## A051677.P14061497984565062334

`∑[A000217(A057555(2*n+1))]`
-/

namespace A051677.P14061497984565062334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057555 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051677.P14061497984565062334

namespace A051677

/-- `∑[A000217(A057555(2*n+1))]` -/
def P14061497984565062334.Spec : Prop :=
  ∀ n, P14061497984565062334.a n = A051677 (n + 1)

end A051677

/-!
# A051678: Square-pyramid-tree numbers: a(n) = sum(b(m),m=1..n), b(m) = 1^2, 1^2,2^2, 1^2,2^2,3^2,.. = (A002260)^2.

The programs for A051678, the canonical program `A051678.P7321315457957259544` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051678 has offset 1).

The definition of A051678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051678.P17460241931251620791

`∑[(col(n)+1)²]`
-/

namespace A051678.P17460241931251620791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P17460241931251620791

namespace A051678

/-- `∑[(col(n)+1)²]` -/
def P17460241931251620791.Spec : Prop :=
  ∀ n, (P17460241931251620791.a n : ℤ) = A051678 (n + 1)

theorem P17460241931251620791.correct : P17460241931251620791.Spec := by
  intro n
  simp only [A051678, Nat.add_sub_cancel, A051678.P17460241931251620791.f1, A051678.P17460241931251620791.a, A051678.P7321315457957259544.f1, A051678.P7321315457957259544.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051678

/-! ## A051678.P12530051428805857030

`∑[(n+1-C(∑[char[∑[n]]], 2))²]`
-/

namespace A051678.P12530051428805857030
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P12530051428805857030

namespace A051678

/-- `∑[(n+1-C(∑[char[∑[n]]], 2))²]` -/
def P12530051428805857030.Spec : Prop :=
  ∀ n, P12530051428805857030.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P6204416468779336860

`∑[A133819(n+1)]`
-/

namespace A051678.P6204416468779336860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P6204416468779336860

namespace A051678

/-- `∑[A133819(n+1)]` -/
def P6204416468779336860.Spec : Prop :=
  ∀ n, P6204416468779336860.a n = A051678 (n + 1)

theorem P6204416468779336860.correct : P6204416468779336860.Spec := by
  intro n
  simp only [A051678, Nat.add_sub_cancel, A051678.P6204416468779336860.f1, A051678.P6204416468779336860.a, A051678.P7321315457957259544.f1, A051678.P7321315457957259544.a, A002260, A002260.P9170571874073898642.a, A133819, A133819.P4652954550055324138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051678

/-! ## A051678.P7321315457957259544

`∑[A002260(n+1)²]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051678

/-- `∑[A002260(n+1)²]` -/
def P7321315457957259544.Spec : Prop :=
  ∀ n, P7321315457957259544.a n = A051678 (n + 1)

theorem P7321315457957259544.correct : P7321315457957259544.Spec := by
  intro n
  simp only [A051678, Nat.add_sub_cancel]

end A051678

/-! ## A051678.P11966279474505874091

`∑[(A002262(n)+1)²]`
-/

namespace A051678.P11966279474505874091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P11966279474505874091

namespace A051678

/-- `∑[(A002262(n)+1)²]` -/
def P11966279474505874091.Spec : Prop :=
  ∀ n, P11966279474505874091.a n = A051678 (n + 1)

theorem P11966279474505874091.correct : P11966279474505874091.Spec := by
  intro n
  simp only [A051678, Nat.add_sub_cancel, A051678.P11966279474505874091.f1, A051678.P11966279474505874091.a, A051678.P7321315457957259544.f1, A051678.P7321315457957259544.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051678

/-! ## A051678.P15013670287381922601

`∑[A140756(n+1)²]`
-/

namespace A051678.P15013670287381922601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P15013670287381922601

namespace A051678

/-- `∑[A140756(n+1)²]` -/
def P15013670287381922601.Spec : Prop :=
  ∀ n, P15013670287381922601.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P6456106950372149915

`∑[sqrt(A133821(n+1))]`
-/

namespace A051678.P6456106950372149915
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133821 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P6456106950372149915

namespace A051678

/-- `∑[sqrt(A133821(n+1))]` -/
def P6456106950372149915.Spec : Prop :=
  ∀ n, P6456106950372149915.a n = (A051678 (n + 1) : ℝ)

end A051678

/-! ## A051678.P1307864271152978627

`∑[(sqrt(A143844(n))+1)²]`
-/

namespace A051678.P1307864271152978627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P1307864271152978627

namespace A051678

/-- `∑[(sqrt(A143844(n))+1)²]` -/
def P1307864271152978627.Spec : Prop :=
  ∀ n, P1307864271152978627.a n = (A051678 (n + 1) : ℝ)

end A051678

/-! ## A051678.P1408750474189248355

`∑[(1-A057944(n)+n)²]`
-/

namespace A051678.P1408750474189248355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P1408750474189248355

namespace A051678

/-- `∑[(1-A057944(n)+n)²]` -/
def P1408750474189248355.Spec : Prop :=
  ∀ n, P1408750474189248355.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P12273205796954711290

`∑[(A132118(n+1)-n)²]`
-/

namespace A051678.P12273205796954711290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P12273205796954711290

namespace A051678

/-- `∑[(A132118(n+1)-n)²]` -/
def P12273205796954711290.Spec : Prop :=
  ∀ n, P12273205796954711290.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P2340396163966993073

`∑[∑[2-A130296(n+1)]²]`
-/

namespace A051678.P2340396163966993073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P2340396163966993073

namespace A051678

/-- `∑[∑[2-A130296(n+1)]²]` -/
def P2340396163966993073.Spec : Prop :=
  ∀ n, P2340396163966993073.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P10469744950121465202

`∑[(round(sqrt(2*n+1))-A025581(n))²]`
-/

namespace A051678.P10469744950121465202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A025581 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P10469744950121465202

namespace A051678

/-- `∑[(round(sqrt(2*n+1))-A025581(n))²]` -/
def P10469744950121465202.Spec : Prop :=
  ∀ n, P10469744950121465202.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P8037981637729394323

`∑[A000720(A037126(n+1))²]`
-/

namespace A051678.P8037981637729394323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P8037981637729394323

namespace A051678

/-- `∑[A000720(A037126(n+1))²]` -/
def P8037981637729394323.Spec : Prop :=
  ∀ n, P8037981637729394323.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P4917927920300333197

`∑[A008619(2*A002262(n))²]`
-/

namespace A051678.P4917927920300333197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A002262 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P4917927920300333197

namespace A051678

/-- `∑[A008619(2*A002262(n))²]` -/
def P4917927920300333197.Spec : Prop :=
  ∀ n, P4917927920300333197.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P6289404465443293368

`∑[A028242(2*A002262(n))²]`
-/

namespace A051678.P6289404465443293368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A002262 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P6289404465443293368

namespace A051678

/-- `∑[A028242(2*A002262(n))²]` -/
def P6289404465443293368.Spec : Prop :=
  ∀ n, P6289404465443293368.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P13444826292074223480

`∑[(1-A131818(n+2))²]`
-/

namespace A051678.P13444826292074223480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131818 (n + 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P13444826292074223480

namespace A051678

/-- `∑[(1-A131818(n+2))²]` -/
def P13444826292074223480.Spec : Prop :=
  ∀ n, P13444826292074223480.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P3488157701003108706

`∑[A004736(A038722(n+1))²]`
-/

namespace A051678.P3488157701003108706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P3488157701003108706

namespace A051678

/-- `∑[A004736(A038722(n+1))²]` -/
def P3488157701003108706.Spec : Prop :=
  ∀ n, P3488157701003108706.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P2672759608199755381

`∑[A143844(comp[∑[n]])]`
-/

namespace A051678.P2672759608199755381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P2672759608199755381

namespace A051678

/-- `∑[A143844(comp[∑[n]])]` -/
def P2672759608199755381.Spec : Prop :=
  ∀ n, P2672759608199755381.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P1068380366448506885

`∑[A002262(comp[A000217(n)])²]`
-/

namespace A051678.P1068380366448506885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P1068380366448506885

namespace A051678

/-- `∑[A002262(comp[A000217(n)])²]` -/
def P1068380366448506885.Spec : Prop :=
  ∀ n, P1068380366448506885.a n = A051678 (n + 1)

end A051678

/-! ## A051678.P3277719130871637373

`∑[A026100(A026098(n+1))²]`
-/

namespace A051678.P3277719130871637373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026100 (A026098 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051678.P3277719130871637373

namespace A051678

/-- `∑[A026100(A026098(n+1))²]` -/
def P3277719130871637373.Spec : Prop :=
  ∀ n, P3277719130871637373.a n = A051678 (n + 1)

end A051678

/-!
# A051679: Total number of even entries in first n rows of Pascal's triangle (the zeroth and first rows being 1; 1,1).

The programs for A051679, the canonical program `A051679.P17576665333386059857` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051679 has offset 0).

The definition of A051679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051679.P4327705368648179379

`∑[1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n]`
-/

namespace A051679.P4327705368648179379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P4327705368648179379

namespace A051679

/-- `∑[1-2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))+n]` -/
def P4327705368648179379.Spec : Prop :=
  ∀ n, P4327705368648179379.a n = (A051679 n : ℚ)

end A051679

/-! ## A051679.P17576665333386059857

`∑[A048967(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051679

/-- `∑[A048967(n)]` -/
def P17576665333386059857.Spec : Prop :=
  ∀ n, P17576665333386059857.a n = A051679 n

theorem P17576665333386059857.correct : P17576665333386059857.Spec := by
  intro n
  simp only [A051679]

end A051679

/-! ## A051679.P14716722226939455498

`∑[n-A038573(n)]`
-/

namespace A051679.P14716722226939455498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P14716722226939455498

namespace A051679

/-- `∑[n-A038573(n)]` -/
def P14716722226939455498.Spec : Prop :=
  ∀ n, P14716722226939455498.a n = A051679 n

end A051679

/-! ## A051679.P9736626857506932143

`∑[A071042(n)-n]`
-/

namespace A051679.P9736626857506932143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P9736626857506932143

namespace A051679

/-- `∑[A071042(n)-n]` -/
def P9736626857506932143.Spec : Prop :=
  ∀ n, P9736626857506932143.a n = A051679 n

theorem P9736626857506932143.correct : P9736626857506932143.Spec := by
  intro n
  simp only [A051679, Nat.add_sub_cancel, A051679.P9736626857506932143.f1, A051679.P9736626857506932143.a, A051679.P17576665333386059857.f1, A051679.P17576665333386059857.a, A048967, A048967.P3595347913858362397.a, A071042, A071042.P13851763813653764625.a, A000120, A000120.P2816527436160941581.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, A005187, A005187.P3874015513960485494.a, A048724, A048724.P638821554898421701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051679

/-! ## A051679.P8674743818250440223

`A171378(n)-∑[n]`
-/

namespace A051679.P8674743818250440223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171378 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051679.P8674743818250440223

namespace A051679

/-- `A171378(n)-∑[n]` -/
def P8674743818250440223.Spec : Prop :=
  ∀ n, P8674743818250440223.a n = A051679 n

end A051679

/-! ## A051679.P8366420647309022441

`∑[n]-A267700(n)`
-/

namespace A051679.P8366420647309022441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A267700 n

end

end A051679.P8366420647309022441

namespace A051679

/-- `∑[n]-A267700(n)` -/
def P8366420647309022441.Spec : Prop :=
  ∀ n, P8366420647309022441.a n = A051679 n

end A051679

/-! ## A051679.P1924911340147585092

`∑[A261366(n+1)-1]`
-/

namespace A051679.P1924911340147585092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P1924911340147585092

namespace A051679

/-- `∑[A261366(n+1)-1]` -/
def P1924911340147585092.Spec : Prop :=
  ∀ n, P1924911340147585092.a n = A051679 n

end A051679

/-! ## A051679.P1079274946845064728

`∑[1-A001316(n)+n]`
-/

namespace A051679.P1079274946845064728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001316 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P1079274946845064728

namespace A051679

/-- `∑[1-A001316(n)+n]` -/
def P1079274946845064728.Spec : Prop :=
  ∀ n, P1079274946845064728.a n = A051679 n

end A051679

/-! ## A051679.P97867079858035896

`A249304(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A051679.P97867079858035896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A249304 n + a (n - 2)

end

end A051679.P97867079858035896

namespace A051679

/-- `A249304(n)+a(n-2)` -/
def P97867079858035896.Spec : Prop :=
  ∀ n, P97867079858035896.a n = A051679 n

end A051679

/-! ## A051679.P6751267693365295498

`∑[n+1]-A006046(n+1)`
-/

namespace A051679.P6751267693365295498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006046 (n + 1)

end

end A051679.P6751267693365295498

namespace A051679

/-- `∑[n+1]-A006046(n+1)` -/
def P6751267693365295498.Spec : Prop :=
  ∀ n, P6751267693365295498.a n = A051679 n

end A051679

/-! ## A051679.P2842564158338084876

`∑[n+1-A060632(2*n)]`
-/

namespace A051679.P2842564158338084876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P2842564158338084876

namespace A051679

/-- `∑[n+1-A060632(2*n)]` -/
def P2842564158338084876.Spec : Prop :=
  ∀ n, P2842564158338084876.a n = A051679 n

end A051679

/-! ## A051679.P5152927163321200296

`∑[n+1-2^A000120(n)]`
-/

namespace A051679.P5152927163321200296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P5152927163321200296

namespace A051679

/-- `∑[n+1-2^A000120(n)]` -/
def P5152927163321200296.Spec : Prop :=
  ∀ n, P5152927163321200296.a n = (A051679 n : ℚ)

end A051679

/-! ## A051679.P14795474798228167573

`A262867(n)-A000124(n)`
-/

namespace A051679.P14795474798228167573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262867 n - A000124 n

end

end A051679.P14795474798228167573

namespace A051679

/-- `A262867(n)-A000124(n)` -/
def P14795474798228167573.Spec : Prop :=
  ∀ n, P14795474798228167573.a n = A051679 n

end A051679

/-! ## A051679.P8237333332918555045

`∑[n-A000225(A000120(n))]`
-/

namespace A051679.P8237333332918555045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P8237333332918555045

namespace A051679

/-- `∑[n-A000225(A000120(n))]` -/
def P8237333332918555045.Spec : Prop :=
  ∀ n, P8237333332918555045.a n = A051679 n

end A051679

/-! ## A051679.P5309041126486851161

`∑[n-A001065(A001316(n))]`
-/

namespace A051679.P5309041126486851161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P5309041126486851161

namespace A051679

/-- `∑[n-A001065(A001316(n))]` -/
def P5309041126486851161.Spec : Prop :=
  ∀ n, P5309041126486851161.a n = A051679 n

end A051679

/-! ## A051679.P18278357917044574799

`A171378(n)%A179865(n+1)`
-/

namespace A051679.P18278357917044574799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171378 n) (A179865 (n + 1))

end

end A051679.P18278357917044574799

namespace A051679

/-- `A171378(n)%A179865(n+1)` -/
def P18278357917044574799.Spec : Prop :=
  ∀ n, P18278357917044574799.a n = A051679 n

end A051679

/-! ## A051679.P895623433598106115

`A000292(n+1)-(A006046(n+1)+A000292(n))`
-/

namespace A051679.P895623433598106115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A006046 (n + 1) + A000292 n)

end

end A051679.P895623433598106115

namespace A051679

/-- `A000292(n+1)-(A006046(n+1)+A000292(n))` -/
def P895623433598106115.Spec : Prop :=
  ∀ n, P895623433598106115.a n = A051679 n

end A051679

/-! ## A051679.P14428701577949682074

`∑[A267582(n+1)-(n+2)]`
-/

namespace A051679.P14428701577949682074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267582 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P14428701577949682074

namespace A051679

/-- `∑[A267582(n+1)-(n+2)]` -/
def P14428701577949682074.Spec : Prop :=
  ∀ n, P14428701577949682074.a n = A051679 n

end A051679

/-! ## A051679.P18104832015406097361

`∑[n-A030101(A073138(n))]`
-/

namespace A051679.P18104832015406097361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A030101 (A073138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P18104832015406097361

namespace A051679

/-- `∑[n-A030101(A073138(n))]` -/
def P18104832015406097361.Spec : Prop :=
  ∀ n, P18104832015406097361.a n = A051679 n

end A051679

/-! ## A051679.P4781539036917183013

`∑[A001057(A071050(n))]`
-/

namespace A051679.P4781539036917183013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A071050 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051679.P4781539036917183013

namespace A051679

/-- `∑[A001057(A071050(n))]` -/
def P4781539036917183013.Spec : Prop :=
  ∀ n, P4781539036917183013.a n = A051679 n

end A051679

/-!
# A051680: Number of n X n invertible matrices A over GF(3) such that A-I is invertible.

The programs for A051680, there is no canonical definition to state claims against.
-/

/-! ## A051680.P10389219176833488209

`record[A346384(n)]`
-/

namespace A051680.P10389219176833488209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051680.P10389219176833488209

/-! ## A051680.P8411986367119923168

`A346384(∑[n+1])`
-/

namespace A051680.P8411986367119923168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051680.P8411986367119923168

/-!
# A051682: 11-gonal (or hendecagonal) numbers: a(n) = n*(9*n-7)/2.

The programs for A051682, the canonical program `A051682.P17765818912879362649` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051682 has offset 0).

The definition of A051682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-7)/2` (program `A051682.P372081046771114217`, by `A051682.P372081046771114217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051682.P15204032065818692395

`(9*n-7)*n/2`
-/

namespace A051682.P15204032065818692395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * n : ℤ) - 7) * (n : ℤ) : ℚ) / 2

end

end A051682.P15204032065818692395

namespace A051682

/-- `(9*n-7)*n/2` -/
def P15204032065818692395.Spec : Prop :=
  ∀ n, P15204032065818692395.a n = (A051682 n : ℚ)

theorem P15204032065818692395.correct : P15204032065818692395.Spec := by
  intro n
  induction n with
  | zero => simp [A051682, A051682.P15204032065818692395.a, A051682.P17765818912879362649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051682, Nat.add_sub_cancel, A051682.P15204032065818692395.a, A051682.P17765818912879362649.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051682

/-! ## A051682.P372081046771114217

`n*(9*n-7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051682.P372081046771114217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((9 * n : ℤ) - 7) : ℚ) / 2

end

end A051682.P372081046771114217

namespace A051682

/-- `n*(9*n-7)/2` -/
def P372081046771114217.Spec : Prop :=
  ∀ n, P372081046771114217.a n = (A051682 n : ℚ)

theorem P372081046771114217.correct : P372081046771114217.Spec := by
  intro n
  induction n with
  | zero => simp [A051682, A051682.P372081046771114217.a, A051682.P17765818912879362649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A051682, Nat.add_sub_cancel, A051682.P372081046771114217.a, A051682.P17765818912879362649.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A051682

/-! ## A051682.P17765818912879362649

`9*n+a(n-1)-8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051682

/-- `9*n+a(n-1)-8` -/
def P17765818912879362649.Spec : Prop :=
  ∀ n, P17765818912879362649.a n = A051682 n

theorem P17765818912879362649.correct : P17765818912879362649.Spec := by
  intro n
  simp only [A051682]

end A051682

/-! ## A051682.P1846436594115577678

`A218470(9*n)`
-/

namespace A051682.P1846436594115577678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n)

end

end A051682.P1846436594115577678

namespace A051682

/-- `A218470(9*n)` -/
def P1846436594115577678.Spec : Prop :=
  ∀ n, P1846436594115577678.a n = A051682 n

end A051682

/-! ## A051682.P15354169869871272584

`9*C(n, 2)+n`
-/

namespace A051682.P15354169869871272584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + n

end

end A051682.P15354169869871272584

namespace A051682

/-- `9*C(n, 2)+n` -/
def P15354169869871272584.Spec : Prop :=
  ∀ n, (P15354169869871272584.a n : ℤ) = A051682 n

end A051682

/-! ## A051682.P9190126450086715459

`∑[record[n*(2-dr(n))]]`
-/

namespace A051682.P9190126450086715459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051682.P9190126450086715459

namespace A051682

/-- `∑[record[n*(2-dr(n))]]` -/
def P9190126450086715459.Spec : Prop :=
  ∀ n, P9190126450086715459.a n = A051682 n

end A051682

/-! ## A051682.P10254822506179573002

`∑[record[n^(2-dr(n))]]`
-/

namespace A051682.P10254822506179573002
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051682.P10254822506179573002

namespace A051682

/-- `∑[record[n^(2-dr(n))]]` -/
def P10254822506179573002.Spec : Prop :=
  ∀ n, P10254822506179573002.a n = (A051682 n : ℚ)

end A051682

/-! ## A051682.P14869837205300246837

`∑[a(n-1)+9]` with `a(0)=0, a(1)=1`
-/

namespace A051682.P14869837205300246837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051682.P14869837205300246837

namespace A051682

/-- `∑[a(n-1)+9]` -/
def P14869837205300246837.Spec : Prop :=
  ∀ n, (P14869837205300246837.a n : ℤ) = A051682 n

end A051682

/-! ## A051682.P13520552953671955231

`C(3*n, 2)-2*n`
-/

namespace A051682.P13520552953671955231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ)

end

end A051682.P13520552953671955231

namespace A051682

/-- `C(3*n, 2)-2*n` -/
def P13520552953671955231.Spec : Prop :=
  ∀ n, P13520552953671955231.a n = A051682 n

end A051682

/-! ## A051682.P16775850545361077758

`∑[ogf((x+8x^2)/(1-2x+x^2))]`
-/

namespace A051682.P16775850545361077758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051682.P16775850545361077758

namespace A051682

/-- `∑[ogf((x+8x^2)/(1-2x+x^2))]` -/
def P16775850545361077758.Spec : Prop :=
  ∀ n, P16775850545361077758.a n = A051682 n

end A051682

/-! ## A051682.P9069099801461893959

`ogf((x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A051682.P9069099801461893959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 8] [1, -3, 3, -1] n

end

end A051682.P9069099801461893959

namespace A051682

/-- `ogf((x+8x^2)/(1-3x+3x^2-x^3))` -/
def P9069099801461893959.Spec : Prop :=
  ∀ n, P9069099801461893959.a n = A051682 n

end A051682

/-! ## A051682.P2240225977549168926

`8-∑[a(n-1)-9]` with `a(0)=8`
-/

namespace A051682.P2240225977549168926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051682.P2240225977549168926

namespace A051682

/-- `8-∑[a(n-1)-9]` -/
def P2240225977549168926.Spec : Prop :=
  ∀ n, P2240225977549168926.a n = A051682 n

end A051682

/-! ## A051682.P1480319519495338008

`A117625(n)-1`
-/

namespace A051682.P1480319519495338008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n - 1

end

end A051682.P1480319519495338008

namespace A051682

/-- `A117625(n)-1` -/
def P1480319519495338008.Spec : Prop :=
  ∀ n, P1480319519495338008.a n = A051682 n

end A051682

/-! ## A051682.P16570150321864952706

`A062708(n)-n`
-/

namespace A051682.P16570150321864952706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n - (n : ℤ)

end

end A051682.P16570150321864952706

namespace A051682

/-- `A062708(n)-n` -/
def P16570150321864952706.Spec : Prop :=
  ∀ n, P16570150321864952706.a n = A051682 n

end A051682

/-! ## A051682.P12511731747574247729

`A180223(n)-n²`
-/

namespace A051682.P12511731747574247729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n - (n ^ 2 : ℤ)

end

end A051682.P12511731747574247729

namespace A051682

/-- `A180223(n)-n²` -/
def P12511731747574247729.Spec : Prop :=
  ∀ n, P12511731747574247729.a n = A051682 n

end A051682

/-! ## A051682.P10576924302142819839

`A135706(n)-∑[n]`
-/

namespace A051682.P10576924302142819839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051682.P10576924302142819839

namespace A051682

/-- `A135706(n)-∑[n]` -/
def P10576924302142819839.Spec : Prop :=
  ∀ n, P10576924302142819839.a n = A051682 n

end A051682

/-! ## A051682.P5205102445720436334

`A140064(n)-(n+1)`
-/

namespace A051682.P5205102445720436334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n - (n + 1 : ℤ)

end

end A051682.P5205102445720436334

namespace A051682

/-- `A140064(n)-(n+1)` -/
def P5205102445720436334.Spec : Prop :=
  ∀ n, P5205102445720436334.a n = A051682 n

end A051682

/-! ## A051682.P1581496917644570201

`A062741(n)-2*n`
-/

namespace A051682.P1581496917644570201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n - (2 * n : ℤ)

end

end A051682.P1581496917644570201

namespace A051682

/-- `A062741(n)-2*n` -/
def P1581496917644570201.Spec : Prop :=
  ∀ n, P1581496917644570201.a n = A051682 n

end A051682

/-! ## A051682.P5773665908231911679

`A022266(n)-3*n`
-/

namespace A051682.P5773665908231911679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - (3 * n : ℤ)

end

end A051682.P5773665908231911679

namespace A051682

/-- `A022266(n)-3*n` -/
def P5773665908231911679.Spec : Prop :=
  ∀ n, P5773665908231911679.a n = A051682 n

end A051682

/-! ## A051682.P5109502095710333272

`A022267(n)-4*n`
-/

namespace A051682.P5109502095710333272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n - (4 * n : ℤ)

end

end A051682.P5109502095710333272

namespace A051682

/-- `A022267(n)-4*n` -/
def P5109502095710333272.Spec : Prop :=
  ∀ n, P5109502095710333272.a n = A051682 n

end A051682

/-!
# A051683: Triangle read by rows: T(n,k) = n!*k.

The programs for A051683, the canonical program `A051683.P10231824397598348514` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051683 has offset 1).

The definition of A051683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)!*(col(n)+1)` (program `A051683.P10231824397598348514`, by `A051683.P10231824397598348514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051683.P10231824397598348514

`(row(n)+1)!*(col(n)+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051683

/-- `(row(n)+1)!*(col(n)+1)` -/
def P10231824397598348514.Spec : Prop :=
  ∀ n, (P10231824397598348514.a n : ℤ) = A051683 (n + 1)

theorem P10231824397598348514.correct : P10231824397598348514.Spec := by
  intro n
  simp only [A051683, Nat.add_sub_cancel]

end A051683

/-! ## A051683.P13180732042003025977

`A002024(n+1)!*A002260(n+1)`
-/

namespace A051683.P13180732042003025977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002024 (n + 1)).toNat : ℤ) * A002260 (n + 1)

end

end A051683.P13180732042003025977

namespace A051683

/-- `A002024(n+1)!*A002260(n+1)` -/
def P13180732042003025977.Spec : Prop :=
  ∀ n, P13180732042003025977.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P7741529106297648526

`∑[round(sqrt(2*n))!]`
-/

namespace A051683.P7741529106297648526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051683.P7741529106297648526

namespace A051683

/-- `∑[round(sqrt(2*n))!]` -/
def P7741529106297648526.Spec : Prop :=
  ∀ n, (P7741529106297648526.a n : ℤ) = A051683 (n + 1)

end A051683

/-! ## A051683.P10233303997283441860

`A200748(n)+1`
-/

namespace A051683.P10233303997283441860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n + 1

end

end A051683.P10233303997283441860

namespace A051683

/-- `A200748(n)+1` -/
def P10233303997283441860.Spec : Prop :=
  ∀ n, P10233303997283441860.a n = A051683 (n + 1)

theorem P10233303997283441860.correct : P10233303997283441860.Spec := by
  intro n
  simp only [A051683, Nat.add_sub_cancel, A051683.P10233303997283441860.a, A051683.P10231824397598348514.a, A200748, A200748.P9894556090439625934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051683

/-! ## A051683.P7578228700238920005

`record[A324225(n+1)]`
-/

namespace A051683.P7578228700238920005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051683.P7578228700238920005

namespace A051683

/-- `record[A324225(n+1)]` -/
def P7578228700238920005.Spec : Prop :=
  ∀ n, P7578228700238920005.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P10446088289941781988

`A162608(comp[∑[n+1]])`
-/

namespace A051683.P10446088289941781988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051683.P10446088289941781988

namespace A051683

/-- `A162608(comp[∑[n+1]])` -/
def P10446088289941781988.Spec : Prop :=
  ∀ n, P10446088289941781988.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P6976352093273943702

`A130493(n)+a(n-1)` with `a(0)=1`
-/

namespace A051683.P6976352093273943702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130493 n + a (n - 1)

end

end A051683.P6976352093273943702

namespace A051683

/-- `A130493(n)+a(n-1)` -/
def P6976352093273943702.Spec : Prop :=
  ∀ n, P6976352093273943702.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P16478559178249615739

`∑[A000142(A123578(n))]`
-/

namespace A051683.P16478559178249615739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051683.P16478559178249615739

namespace A051683

/-- `∑[A000142(A123578(n))]` -/
def P16478559178249615739.Spec : Prop :=
  ∀ n, P16478559178249615739.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P5728950416515378548

`A324225(A004202(n+1))`
-/

namespace A051683.P5728950416515378548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324225 (A004202 (n + 1)).toNat

end

end A051683.P5728950416515378548

namespace A051683

/-- `A324225(A004202(n+1))` -/
def P5728950416515378548.Spec : Prop :=
  ∀ n, P5728950416515378548.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P11538347525995915040

`∑[A000142(A000194(2*n))]`
-/

namespace A051683.P11538347525995915040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051683.P11538347525995915040

namespace A051683

/-- `∑[A000142(A000194(2*n))]` -/
def P11538347525995915040.Spec : Prop :=
  ∀ n, P11538347525995915040.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P9224320589391729444

`∑[A166350(A193739(n)+n)]`
-/

namespace A051683.P9224320589391729444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A193739 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051683.P9224320589391729444

namespace A051683

/-- `∑[A166350(A193739(n)+n)]` -/
def P9224320589391729444.Spec : Prop :=
  ∀ n, P9224320589391729444.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P10117175285591485673

`A002024(n+1)*A162608(n)`
-/

namespace A051683.P10117175285591485673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A162608 n

end

end A051683.P10117175285591485673

namespace A051683

/-- `A002024(n+1)*A162608(n)` -/
def P10117175285591485673.Spec : Prop :=
  ∀ n, P10117175285591485673.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P9838470492576483706

`record[A004737(n+1)*A214080(n)]`
-/

namespace A051683.P9838470492576483706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A214080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051683.P9838470492576483706

namespace A051683

/-- `record[A004737(n+1)*A214080(n)]` -/
def P9838470492576483706.Spec : Prop :=
  ∀ n, P9838470492576483706.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P12874267231531670494

`A003991(n+1)*A077012(n+1)`
-/

namespace A051683.P12874267231531670494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A077012 (n + 1)

end

end A051683.P12874267231531670494

namespace A051683

/-- `A003991(n+1)*A077012(n+1)` -/
def P12874267231531670494.Spec : Prop :=
  ∀ n, P12874267231531670494.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P11918292659844801522

`A002260(n+1)*A130493(n+1)`
-/

namespace A051683.P11918292659844801522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130493 (n + 1)

end

end A051683.P11918292659844801522

namespace A051683

/-- `A002260(n+1)*A130493(n+1)` -/
def P11918292659844801522.Spec : Prop :=
  ∀ n, P11918292659844801522.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P15187773439750236931

`(A002262(n)+1)*A130493(n+1)`
-/

namespace A051683.P15187773439750236931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A130493 (n + 1)

end

end A051683.P15187773439750236931

namespace A051683

/-- `(A002262(n)+1)*A130493(n+1)` -/
def P15187773439750236931.Spec : Prop :=
  ∀ n, P15187773439750236931.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P3770531113550008746

`A094310(n+1)*A133819(n+1)`
-/

namespace A051683.P3770531113550008746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1) * A133819 (n + 1)

end

end A051683.P3770531113550008746

namespace A051683

/-- `A094310(n+1)*A133819(n+1)` -/
def P3770531113550008746.Spec : Prop :=
  ∀ n, P3770531113550008746.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P17326103592056546148

`(A007401(n+1)-n)*A162608(n)`
-/

namespace A051683.P17326103592056546148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007401 (n + 1) - (n : ℤ)) * A162608 n

end

end A051683.P17326103592056546148

namespace A051683

/-- `(A007401(n+1)-n)*A162608(n)` -/
def P17326103592056546148.Spec : Prop :=
  ∀ n, P17326103592056546148.a n = A051683 (n + 1)

end A051683

/-! ## A051683.P10386857327883144706

`record[A000196(n)!*A004737(n+1)]`
-/

namespace A051683.P10386857327883144706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000196 n).toNat : ℤ) * A004737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051683.P10386857327883144706

namespace A051683

/-- `record[A000196(n)!*A004737(n+1)]` -/
def P10386857327883144706.Spec : Prop :=
  ∀ n, P10386857327883144706.a n = A051683 (n + 1)

end A051683

/-!
# A051684: Auxiliary sequence for calculation of number of even permutations of degree n and order exactly 2.

The programs for A051684, the canonical program `A051684.P7377963826740137144` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051684 has offset 1).

The definition of A051684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051684.P7377963826740137144

`a(n-1)-n*(a(n-2)+1)` with `a(0)=0, a(1)=-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051684

/-- `a(n-1)-n*(a(n-2)+1)` -/
def P7377963826740137144.Spec : Prop :=
  ∀ n, P7377963826740137144.a n = A051684 (n + 1)

theorem P7377963826740137144.correct : P7377963826740137144.Spec := by
  intro n
  simp only [A051684, Nat.add_sub_cancel]

end A051684

/-! ## A051684.P4503250944775103209

`(-1)^(n+1)*A001464(n+1)-1`
-/

namespace A051684.P4503250944775103209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A001464 (n + 1) - 1

end

end A051684.P4503250944775103209

namespace A051684

/-- `(-1)^(n+1)*A001464(n+1)-1` -/
def P4503250944775103209.Spec : Prop :=
  ∀ n, P4503250944775103209.a n = A051684 (n + 1)

end A051684

/-! ## A051684.P15822793590548085049

`A048099(n+1)-A001465(n+1)`
-/

namespace A051684.P15822793590548085049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (n + 1) - A001465 (n + 1)

end

end A051684.P15822793590548085049

namespace A051684

/-- `A048099(n+1)-A001465(n+1)` -/
def P15822793590548085049.Spec : Prop :=
  ∀ n, P15822793590548085049.a n = A051684 (n + 1)

end A051684

/-! ## A051684.P2807365965317047899

`2*A048099(n+1)-A001189(n+1)`
-/

namespace A051684.P2807365965317047899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048099 (n + 1) - A001189 (n + 1)

end

end A051684.P2807365965317047899

namespace A051684

/-- `2*A048099(n+1)-A001189(n+1)` -/
def P2807365965317047899.Spec : Prop :=
  ∀ n, P2807365965317047899.a n = A051684 (n + 1)

end A051684

/-! ## A051684.P2214973814801686320

`a(n-1)-n*a(n-2)-n` with `a(0)=0, a(1)=-1`
-/

namespace A051684.P2214973814801686320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 1) - (n : ℤ) * a (n - 2) - (n : ℤ)

end

end A051684.P2214973814801686320

namespace A051684

/-- `a(n-1)-n*a(n-2)-n` -/
def P2214973814801686320.Spec : Prop :=
  ∀ n, P2214973814801686320.a n = A051684 (n + 1)

theorem P2214973814801686320.correct : P2214973814801686320.Spec := by
  intro n
  simp only [A051684, Nat.add_sub_cancel, A051684.P2214973814801686320.a, A051684.P7377963826740137144.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051684

/-! ## A051684.P874364195110650446

`A001464(n+1)*A033999(n+1)-1`
-/

namespace A051684.P874364195110650446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 (n + 1) * A033999 (n + 1) - 1

end

end A051684.P874364195110650446

namespace A051684

/-- `A001464(n+1)*A033999(n+1)-1` -/
def P874364195110650446.Spec : Prop :=
  ∀ n, P874364195110650446.a n = A051684 (n + 1)

end A051684

/-! ## A051684.P11416183337956838290

`(A033999(n)+A001464(n+1))*A033999(n+1)`
-/

namespace A051684.P11416183337956838290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A001464 (n + 1)) * A033999 (n + 1)

end

end A051684.P11416183337956838290

namespace A051684

/-- `(A033999(n)+A001464(n+1))*A033999(n+1)` -/
def P11416183337956838290.Spec : Prop :=
  ∀ n, P11416183337956838290.a n = A051684 (n + 1)

end A051684

/-! ## A051684.P16069831540335627979

`A328141(n+2)/2-1`
-/

namespace A051684.P16069831540335627979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328141 (n + 2) : ℚ) / 2 - 1

end

end A051684.P16069831540335627979

namespace A051684

/-- `A328141(n+2)/2-1` -/
def P16069831540335627979.Spec : Prop :=
  ∀ n, P16069831540335627979.a n = (A051684 (n + 1) : ℚ)

end A051684

/-! ## A051684.P8177812010578026672

`∑[Δ[A328141(n+1)]/2]`
-/

namespace A051684.P8177812010578026672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328141 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051684.P8177812010578026672

namespace A051684

/-- `∑[Δ[A328141(n+1)]/2]` -/
def P8177812010578026672.Spec : Prop :=
  ∀ n, P8177812010578026672.a n = (A051684 (n + 1) : ℚ)

end A051684

/-! ## A051684.P10557626748673281074

`A000704(n+1)-(A001465(n+1)+1)`
-/

namespace A051684.P10557626748673281074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 (n + 1) - (A001465 (n + 1) + 1)

end

end A051684.P10557626748673281074

namespace A051684

/-- `A000704(n+1)-(A001465(n+1)+1)` -/
def P10557626748673281074.Spec : Prop :=
  ∀ n, P10557626748673281074.a n = A051684 (n + 1)

end A051684

/-! ## A051684.P11156927331194757358

`A001189(n+1)-(A001465(n+1)+A001465(n+1))`
-/

namespace A051684.P11156927331194757358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1) - (A001465 (n + 1) + A001465 (n + 1))

end

end A051684.P11156927331194757358

namespace A051684

/-- `A001189(n+1)-(A001465(n+1)+A001465(n+1))` -/
def P11156927331194757358.Spec : Prop :=
  ∀ n, P11156927331194757358.a n = A051684 (n + 1)

end A051684

/-!
# A051685: Auxiliary sequence for calculation of number of even permutations of degree n and order exactly 4.

The programs for A051685, there is no canonical definition to state claims against.
-/

/-! ## A051685.P16622146799544406229

`A051695(n+1)-A061138(n+1)`
-/

namespace A051685.P16622146799544406229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051695 (n + 1) - A061138 (n + 1)

end

end A051685.P16622146799544406229

/-! ## A051685.P11537712379602345760

`2*A051695(n+1)-A001473(n+1)`
-/

namespace A051685.P11537712379602345760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051695 (n + 1) - A001473 (n + 1)

end

end A051685.P11537712379602345760

/-! ## A051685.P10109744552509005089

`A001473(n+1)-2*A061138(n+1)`
-/

namespace A051685.P10109744552509005089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001473 (n + 1) - 2 * A061138 (n + 1)

end

end A051685.P10109744552509005089

/-! ## A051685.P6640406727039496028

`A061129(n+1)-(A061138(n+1)+A000704(n+1))`
-/

namespace A051685.P6640406727039496028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061129 (n + 1) - (A061138 (n + 1) + A000704 (n + 1))

end

end A051685.P6640406727039496028

/-!
# A051686: Smallest prime p such that 2n*p+1 is also prime.

The programs for A051686, there is no canonical definition to state claims against.
-/

/-! ## A051686.P14169126903406579056

`A089367(2*(n+1))`
-/

namespace A051686.P14169126903406579056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (2 * (n + 1))

end

end A051686.P14169126903406579056

/-! ## A051686.P13261252299819855406

`A089367(Δ[n²]+1)%A035794(n+1)`
-/

namespace A051686.P13261252299819855406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (A035794 (n + 1))

end

end A051686.P13261252299819855406

/-! ## A051686.P2186020526104813853

`A000027(A089367(A000027(n+1+n)+1))`
-/

namespace A051686.P2186020526104813853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A089367 (A000027 (n + 1 + n) + 1).toNat).toNat

end

end A051686.P2186020526104813853

/-! ## A051686.P7645358584810219116

`A089367(n+2+n)%A180713(n+1)`
-/

namespace A051686.P7645358584810219116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089367 (n + 2 + n)) (A180713 (n + 1))

end

end A051686.P7645358584810219116

/-!
# A051687: a(n) = (5*n+6)(!^5)/6, related to A008548 ((5*n+1)(!^5) quintic, or 5-factorials).

The programs for A051687, there is no canonical definition to state claims against.
-/

/-! ## A051687.P13224263116743566363

`∏[5*n+6]/6`
-/

namespace A051687.P13224263116743566363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A051687.P13224263116743566363

/-! ## A051687.P3027327971657448155

`∏[a(n-1)+5]` with `a(0)=1, a(1)=11`
-/

namespace A051687.P3027327971657448155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051687.P3027327971657448155

/-! ## A051687.P13320965973740960652

`(5*n+6)*a(n-1)` with `a(0)=1`
-/

namespace A051687.P13320965973740960652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n + 6) * a (n - 1)

end

end A051687.P13320965973740960652

/-! ## A051687.P11363612776423001140

`record[(5*n-4)*a(n-1)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A051687.P11363612776423001140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  ((5 * n : ℤ) - 4) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051687.P11363612776423001140

/-! ## A051687.P9212862874484310012

`∏[record[A122088(n+1)]]`
-/

namespace A051687.P9212862874484310012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051687.P9212862874484310012

/-! ## A051687.P7260818165458329491

`a(n-1)*A016861(n+1)` with `a(0)=1`
-/

namespace A051687.P7260818165458329491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016861 (n + 1)

end

end A051687.P7260818165458329491

/-! ## A051687.P9591575525028987334

`a(n-1)*A122088(2*n)` with `a(0)=1`
-/

namespace A051687.P9591575525028987334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A122088 (2 * n)

end

end A051687.P9591575525028987334

/-! ## A051687.P4933483531530317489

`∏[A016861(2*n-val(ceil(2^(n-1)), 2))]`
-/

namespace A051687.P4933483531530317489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n - SequenceMachineLib.valuation ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051687.P4933483531530317489

/-! ## A051687.P15699218698220876945

`∏[A028310(n)+2*A062545(n)]`
-/

namespace A051687.P15699218698220876945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 2 * A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051687.P15699218698220876945

/-! ## A051687.P18260446092030417675

`∏[record[A168198(A168198(n+1))-n]]`
-/

namespace A051687.P18260446092030417675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (A168198 (n + 1)).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051687.P18260446092030417675

/-!
# A051688: a(n) = (5*n+7)(!^5)/7(!^5), related to A034323 ((5*n+2)(!^5) quintic, or 5-factorials).

The programs for A051688, the canonical program `A051688.P7422198666084629827` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051688 has offset 0).

The definition of A051688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051688.P7422198666084629827

`A034323(n+2)/7`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051688

/-- `A034323(n+2)/7` -/
def P7422198666084629827.Spec : Prop :=
  ∀ n, P7422198666084629827.a n = (A051688 n : ℚ)

end A051688

/-! ## A051688.P17549440304573518381

`∏[a(n-1)+5]` with `a(0)=1, a(1)=12`
-/

namespace A051688.P17549440304573518381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051688.P17549440304573518381

namespace A051688

/-- `∏[a(n-1)+5]` -/
def P17549440304573518381.Spec : Prop :=
  ∀ n, (P17549440304573518381.a n : ℤ) = A051688 n

end A051688

/-! ## A051688.P1990338740916858955

`(5*n+7)*a(n-1)` with `a(0)=1`
-/

namespace A051688.P1990338740916858955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n + 7) * a (n - 1)

end

end A051688.P1990338740916858955

namespace A051688

/-- `(5*n+7)*a(n-1)` -/
def P1990338740916858955.Spec : Prop :=
  ∀ n, (P1990338740916858955.a n : ℤ) = A051688 n

end A051688

/-! ## A051688.P2683611789213073656

`∏[record[A166522(n+1)-n]]`
-/

namespace A051688.P2683611789213073656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051688.P2683611789213073656

namespace A051688

/-- `∏[record[A166522(n+1)-n]]` -/
def P2683611789213073656.Spec : Prop :=
  ∀ n, P2683611789213073656.a n = A051688 n

end A051688

/-! ## A051688.P1800906794098169478

`a(n-1)*A016873(n+1)` with `a(0)=1`
-/

namespace A051688.P1800906794098169478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016873 (n + 1)

end

end A051688.P1800906794098169478

namespace A051688

/-- `a(n-1)*A016873(n+1)` -/
def P1800906794098169478.Spec : Prop :=
  ∀ n, P1800906794098169478.a n = A051688 n

end A051688

/-! ## A051688.P130708547361290477

`∏[A005408(A062545(n))+n]`
-/

namespace A051688.P130708547361290477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A062545 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051688.P130708547361290477

namespace A051688

/-- `∏[A005408(A062545(n))+n]` -/
def P130708547361290477.Spec : Prop :=
  ∀ n, P130708547361290477.a n = A051688 n

end A051688

/-! ## A051688.P14072467889006741044

`∏[A166519(A103517(n))+n]`
-/

namespace A051688.P14072467889006741044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A103517 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051688.P14072467889006741044

namespace A051688

/-- `∏[A166519(A103517(n))+n]` -/
def P14072467889006741044.Spec : Prop :=
  ∀ n, P14072467889006741044.a n = A051688 n

end A051688

/-! ## A051688.P16216315871167470756

`∏[A267872(A267872(n+1))+n]`
-/

namespace A051688.P16216315871167470756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A267872 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051688.P16216315871167470756

namespace A051688

/-- `∏[A267872(A267872(n+1))+n]` -/
def P16216315871167470756.Spec : Prop :=
  ∀ n, P16216315871167470756.a n = A051688 n

end A051688

/-! ## A051688.P15233913771317525084

`∏[A061570(A016789(n))-A130824(n)]`
-/

namespace A051688.P15233913771317525084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (A016789 n).toNat - A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051688.P15233913771317525084

namespace A051688

/-- `∏[A061570(A016789(n))-A130824(n)]` -/
def P15233913771317525084.Spec : Prop :=
  ∀ n, P15233913771317525084.a n = A051688 n

end A051688

/-!
# A051689: a(n) = (5*n+8)(!^5)/8(!^5), related to A034300 ((5*n+3)(!^5) quintic, or 5-factorials).

The programs for A051689, there is no canonical definition to state claims against.
-/

/-! ## A051689.P6307814218572586911

`A034300(n+2)/8`
-/

namespace A051689.P6307814218572586911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034300 (n + 2) : ℚ) / 8

end

end A051689.P6307814218572586911

/-! ## A051689.P1749522065279793135

`∏[a(n-1)+5]` with `a(0)=1, a(1)=13`
-/

namespace A051689.P1749522065279793135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051689.P1749522065279793135

/-! ## A051689.P1424738872974560165

`(5*n+8)*a(n-1)` with `a(0)=1`
-/

namespace A051689.P1424738872974560165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n + 8) * a (n - 1)

end

end A051689.P1424738872974560165

/-! ## A051689.P16058638637693806580

`∏[A330613(∑[n+2]-1)]`
-/

namespace A051689.P16058638637693806580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051689.P16058638637693806580

/-! ## A051689.P15955625551578883829

`∏[A171892(5*n+1)+1]`
-/

namespace A051689.P15955625551578883829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171892 (5 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051689.P15955625551578883829

/-! ## A051689.P648827800942491800

`a(n-1)*A016885(n+1)` with `a(0)=1`
-/

namespace A051689.P648827800942491800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016885 (n + 1)

end

end A051689.P648827800942491800

/-! ## A051689.P10581315347892047892

`∏[A008619(5*A062545(n))]`
-/

namespace A051689.P10581315347892047892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (5 * A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051689.P10581315347892047892

/-! ## A051689.P12321634216513511423

`∏[A016885(n+1)^A178334(n)]`
-/

namespace A051689.P12321634216513511423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016885 (n + 1) : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051689.P12321634216513511423

/-!
# A051690: a(n) = (5*n+9)(!^5)/9(!^5), related to A034301 ((5*n+2)(!^5) quintic, or 5-factorials).

The programs for A051690, there is no canonical definition to state claims against.
-/

/-! ## A051690.P17417433624909997989

`A034301(n+2)/9`
-/

namespace A051690.P17417433624909997989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034301 (n + 2) : ℚ) / 9

end

end A051690.P17417433624909997989

/-! ## A051690.P9244690362870552318

`∏[a(n-1)+5]` with `a(0)=1, a(1)=14`
-/

namespace A051690.P9244690362870552318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P9244690362870552318

/-! ## A051690.P7496189240017493792

`(5*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A051690.P7496189240017493792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n + 9) * a (n - 1)

end

end A051690.P7496189240017493792

/-! ## A051690.P10555234946671207379

`a(n-1)*A016897(n+1)` with `a(0)=1`
-/

namespace A051690.P10555234946671207379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016897 (n + 1)

end

end A051690.P10555234946671207379

/-! ## A051690.P5307353474706622009

`∏[record[A121511(2*n+1)]+n]`
-/

namespace A051690.P5307353474706622009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P5307353474706622009

/-! ## A051690.P2312998363782031651

`∏[A008486(A062545(n))-n]`
-/

namespace A051690.P2312998363782031651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A062545 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P2312998363782031651

/-! ## A051690.P13453812947958093814

`∏[A016813(log2(A146541(n)))+n]`
-/

namespace A051690.P13453812947958093814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway (Real.logb 2 (A146541 n : ℝ))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P13453812947958093814

/-! ## A051690.P11851564245546069575

`∏[A016813(A114637(n+1))+n]`
-/

namespace A051690.P11851564245546069575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A114637 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P11851564245546069575

/-! ## A051690.P717082697686334432

`∏[A291092(n+1)+A008587(n)]`
-/

namespace A051690.P717082697686334432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1) + A008587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P717082697686334432

/-! ## A051690.P15158762093683085933

`∏[A028310(A062545(A062545(n))+n)]`
-/

namespace A051690.P15158762093683085933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062545 (A062545 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051690.P15158762093683085933

/-!
# A051691: a(n) = (5*n+10)(!^5)/10(!^5), related to A052562 ((5*n)(!^5) quintic, or 5-factorials).

The programs for A051691, there is no canonical definition to state claims against.
-/

/-! ## A051691.P12748994436052206423

`∏[5*(n+2)]/10`
-/

namespace A051691.P12748994436052206423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A051691.P12748994436052206423

/-! ## A051691.P1084261737524030763

`∏[a(n-1)+5]` with `a(0)=1, a(1)=15`
-/

namespace A051691.P1084261737524030763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051691.P1084261737524030763

/-! ## A051691.P3108381468654180684

`5^n/2*(n+2)!`
-/

namespace A051691.P3108381468654180684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 2 * (Nat.factorial (n + 2) : ℚ)

end

end A051691.P3108381468654180684

/-! ## A051691.P8157614238134995347

`5*(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A051691.P8157614238134995347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((n + 2) * a (n - 1))

end

end A051691.P8157614238134995347

/-! ## A051691.P11649553195525335931

`∏[∪[(5^n)², 5*(n+3)]]`
-/

namespace A051691.P11649553195525335931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051691.P11649553195525335931

/-!
# A051692: a(n) is twice the smallest k such that A051686(k) = prime(n).

The programs for A051692, there is no canonical definition to state claims against.
-/

/-! ## A051692.P12013335508635611487

`lcm(2, A096666(A239537(3*(n+1))))`
-/

namespace A051692.P12013335508635611487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A096666 (A239537 (3 * (n + 1))).toNat)

end

end A051692.P12013335508635611487

/-!
# A051693: Square array read by antidiagonals: a(n,k) = sum of two positive regular n-polytopic numbers (i.e., a(n,k) = binomial(x,n) + binomial(y,n) for some x,y >= n).

The programs for A051693, there is no canonical definition to state claims against.
-/

/-! ## A051693.P6542389684333883888

`A128139(n)+2-A014963(A292795(n)!)`
-/

namespace A051693.P6542389684333883888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + (2 - A014963 (Nat.factorial (A292795 n).toNat))

end

end A051693.P6542389684333883888

/-! ## A051693.P11869569286727282042

`A201052(A139622(n+1))+A002260(n+1)`
-/

namespace A051693.P11869569286727282042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A139622 (n + 1)).toNat + A002260 (n + 1)

end

end A051693.P11869569286727282042

/-! ## A051693.P14179842873601335902

`A201052(A139622(n+1))+A002262(n)+1`
-/

namespace A051693.P14179842873601335902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A139622 (n + 1)).toNat + (A002262 n + 1)

end

end A051693.P14179842873601335902

/-! ## A051693.P10856400394798081258

`A201052(A139622(n+1))+log2(A059268(n))+1`
-/

namespace A051693.P10856400394798081258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201052 (A139622 (n + 1)).toNat : ℝ) + (Real.logb 2 (A059268 n : ℝ) + 1)

end

end A051693.P10856400394798081258

/-! ## A051693.P11697607573890410104

`A349520(2*n+1)+A201052(A139622(n+1))`
-/

namespace A051693.P11697607573890410104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * n + 1) + A201052 (A139622 (n + 1)).toNat

end

end A051693.P11697607573890410104

/-!
# A051694: Smallest Fibonacci number that is divisible by n-th prime.

The programs for A051694, there is no canonical definition to state claims against.
-/

/-! ## A051694.P6553090003985793738

`A000045(A001602(n+1))`
-/

namespace A051694.P6553090003985793738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001602 (n + 1)).toNat

end

end A051694.P6553090003985793738

/-! ## A051694.P8299112082380535213

`A020695(A001602(n+1)-3)`
-/

namespace A051694.P8299112082380535213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A001602 (n + 1) - 3).toNat

end

end A051694.P8299112082380535213

/-! ## A051694.P13311331779042981625

`A053602(2*A001602(n+1))`
-/

namespace A051694.P13311331779042981625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A001602 (n + 1)).toNat

end

end A051694.P13311331779042981625

/-! ## A051694.P16518297390097332406

`A000045(A001177(p?[A001057(n)]))`
-/

namespace A051694.P16518297390097332406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A051694.P16518297390097332406

/-! ## A051694.P4761362295296827283

`A000045(A001177(p?[A131732(n)]))`
-/

namespace A051694.P4761362295296827283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A051694.P4761362295296827283

/-! ## A051694.P17020771847983185882

`A000045(A001177(A000040(n+1)))`
-/

namespace A051694.P17020771847983185882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001177 (A000040 (n + 1)).toNat).toNat

end

end A051694.P17020771847983185882

/-! ## A051694.P5988854353324849556

`A000045(A001177(A008578(n+2)))`
-/

namespace A051694.P5988854353324849556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001177 (A008578 (n + 2)).toNat).toNat

end

end A051694.P5988854353324849556

/-! ## A051694.P16376219179489725407

`A053602(A001602(n+1)+A001602(n+1))`
-/

namespace A051694.P16376219179489725407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A001602 (n + 1) + A001602 (n + 1)).toNat

end

end A051694.P16376219179489725407

/-! ## A051694.P14538190629467123392

`A000045(A060305(n+1)/A116515(n+1))`
-/

namespace A051694.P14538190629467123392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A060305 (n + 1) : ℚ) / (A116515 (n + 1) : ℚ))).toNat

end

end A051694.P14538190629467123392

/-! ## A051694.P1749646353863151024

`A047930(A000040(n+1))`
-/

namespace A051694.P1749646353863151024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (A000040 (n + 1)).toNat

end

end A051694.P1749646353863151024

/-!
# A051695: Number of degree-n even permutations of order exactly 4.

The programs for A051695, there is no canonical definition to state claims against.
-/

/-! ## A051695.P4895063887790604278

`(A001473(n+1)+A051685(n+1))/2`
-/

namespace A051695.P4895063887790604278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001473 (n + 1) + A051685 (n + 1) : ℚ) / 2

end

end A051695.P4895063887790604278

/-! ## A051695.P1583615056551185476

`A061138(n+1)+A051685(n+1)`
-/

namespace A051695.P1583615056551185476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061138 (n + 1) + A051685 (n + 1)

end

end A051695.P1583615056551185476

/-! ## A051695.P2091144767046638983

`A061129(n+1)-A000704(n+1)`
-/

namespace A051695.P2091144767046638983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061129 (n + 1) - A000704 (n + 1)

end

end A051695.P2091144767046638983

/-! ## A051695.P1137651329012399691

`A001473(n+1)-A061138(n+1)`
-/

namespace A051695.P1137651329012399691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001473 (n + 1) - A061138 (n + 1)

end

end A051695.P1137651329012399691

/-! ## A051695.P10420238345556283364

`A001472(n+1)-(A061138(n+1)+A000085(n+1))`
-/

namespace A051695.P10420238345556283364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 (n + 1) - (A061138 (n + 1) + A000085 (n + 1))

end

end A051695.P10420238345556283364

/-! ## A051695.P604957331274240885

`A061131(n+1)-(A061134(n+1)+A000704(n+1))`
-/

namespace A051695.P604957331274240885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061131 (n + 1) - (A061134 (n + 1) + A000704 (n + 1))

end

end A051695.P604957331274240885

/-!
# A051696: Greatest common divisor of n! and n^n.

The programs for A051696, the canonical program `A051696.P808776030337055714` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051696 has offset 1).

The definition of A051696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051696.P12833518546817660010

`(n+1)*A062763(n+1)`
-/

namespace A051696.P12833518546817660010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062763 (n + 1)

end

end A051696.P12833518546817660010

namespace A051696

/-- `(n+1)*A062763(n+1)` -/
def P12833518546817660010.Spec : Prop :=
  ∀ n, P12833518546817660010.a n = A051696 (n + 1)

end A051696

/-! ## A051696.P808776030337055714

`gcd((n+1)!, (n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051696

/-- `gcd((n+1)!, (n+1)^(n+1))` -/
def P808776030337055714.Spec : Prop :=
  ∀ n, (P808776030337055714.a n : ℤ) = A051696 (n + 1)

theorem P808776030337055714.correct : P808776030337055714.Spec := by
  intro n
  simp only [A051696, Nat.add_sub_cancel]

end A051696

/-! ## A051696.P9905617115258991123

`gcd(A062776(n+1), A214402(n+1))`
-/

namespace A051696.P9905617115258991123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062776 (n + 1)) (A214402 (n + 1))

end

end A051696.P9905617115258991123

namespace A051696

/-- `gcd(A062776(n+1), A214402(n+1))` -/
def P9905617115258991123.Spec : Prop :=
  ∀ n, (P9905617115258991123.a n : ℤ) = A051696 (n + 1)

end A051696

/-! ## A051696.P884499366831946402

`gcd(A193679(n+1)^4, A066570(n+1))`
-/

namespace A051696.P884499366831946402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193679 (n + 1) ^ 4) (A066570 (n + 1))

end

end A051696.P884499366831946402

namespace A051696

/-- `gcd(A193679(n+1)^4, A066570(n+1))` -/
def P884499366831946402.Spec : Prop :=
  ∀ n, (P884499366831946402.a n : ℤ) = A051696 (n + 1)

end A051696

/-! ## A051696.P10139148244288063555

`(n+1)*∏{p}[n+1, #^val((n-1)!, #)]`
-/

namespace A051696.P10139148244288063555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p)

end

end A051696.P10139148244288063555

namespace A051696

/-- `(n+1)*∏{p}[n+1, #^val((n-1)!, #)]` -/
def P10139148244288063555.Spec : Prop :=
  ∀ n, (P10139148244288063555.a n : ℤ) = A051696 (n + 1)

end A051696

/-! ## A051696.P7299562729030734927

`(n+1)*n!/A095996(n+1)`
-/

namespace A051696.P7299562729030734927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.factorial n : ℚ) / (A095996 (n + 1) : ℚ))

end

end A051696.P7299562729030734927

namespace A051696

/-- `(n+1)*n!/A095996(n+1)` -/
def P7299562729030734927.Spec : Prop :=
  ∀ n, P7299562729030734927.a n = (A051696 (n + 1) : ℚ)

end A051696

/-! ## A051696.P4772346756631899638

`(n+1)*A000142(n)/A095996(n+1)`
-/

namespace A051696.P4772346756631899638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000142 n : ℚ) / (A095996 (n + 1) : ℚ))

end

end A051696.P4772346756631899638

namespace A051696

/-- `(n+1)*A000142(n)/A095996(n+1)` -/
def P4772346756631899638.Spec : Prop :=
  ∀ n, P4772346756631899638.a n = (A051696 (n + 1) : ℚ)

end A051696

/-! ## A051696.P13973715664168744856

`∏{p}[n+1, #^val((n+1)!, #)]`
-/

namespace A051696.P13973715664168744856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial (n + 1)) p

end

end A051696.P13973715664168744856

namespace A051696

/-- `∏{p}[n+1, #^val((n+1)!, #)]` -/
def P13973715664168744856.Spec : Prop :=
  ∀ n, (P13973715664168744856.a n : ℤ) = A051696 (n + 1)

end A051696

/-! ## A051696.P14697679121237451239

`(n+1)!/A095996(n+1)`
-/

namespace A051696.P14697679121237451239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A095996 (n + 1) : ℚ)

end

end A051696.P14697679121237451239

namespace A051696

/-- `(n+1)!/A095996(n+1)` -/
def P14697679121237451239.Spec : Prop :=
  ∀ n, P14697679121237451239.a n = (A051696 (n + 1) : ℚ)

end A051696

/-! ## A051696.P7631876543305992392

`A000142(n+1)/A095996(n+1)`
-/

namespace A051696.P7631876543305992392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A095996 (n + 1) : ℚ)

end

end A051696.P7631876543305992392

namespace A051696

/-- `A000142(n+1)/A095996(n+1)` -/
def P7631876543305992392.Spec : Prop :=
  ∀ n, P7631876543305992392.a n = (A051696 (n + 1) : ℚ)

end A051696

/-!
# A051697: Closest prime to n (break ties by taking the smaller prime).

The programs for A051697, the canonical program `A051697.P15169074483493563510` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051697 has offset 0).

The definition of A051697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051697.P2380514133215505994

`A007918(abs(n-A051699(n)))`
-/

namespace A051697.P2380514133215505994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 |(n : ℤ) - A051699 n|.toNat

end

end A051697.P2380514133215505994

namespace A051697

/-- `A007918(abs(n-A051699(n)))` -/
def P2380514133215505994.Spec : Prop :=
  ∀ n, P2380514133215505994.a n = A051697 n

end A051697

/-! ## A051697.P4341373258863231276

`A051698(char[A007918(n)]+n)`
-/

namespace A051697.P4341373258863231276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A051697.P4341373258863231276

namespace A051697

/-- `A051698(char[A007918(n)]+n)` -/
def P4341373258863231276.Spec : Prop :=
  ∀ n, P4341373258863231276.a n = A051697 n

end A051697

/-! ## A051697.P7504939039142124876

`A051698(char[A051698(n)]+n)`
-/

namespace A051697.P7504939039142124876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A051697.P7504939039142124876

namespace A051697

/-- `A051698(char[A051698(n)]+n)` -/
def P7504939039142124876.Spec : Prop :=
  ∀ n, P7504939039142124876.a n = A051697 n

end A051697

/-! ## A051697.P15169074483493563510

`A076272(abs(2-n)+n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051697

/-- `A076272(abs(2-n)+n)` -/
def P15169074483493563510.Spec : Prop :=
  ∀ n, P15169074483493563510.a n = A051697 n

theorem P15169074483493563510.correct : P15169074483493563510.Spec := by
  intro n
  simp only [A051697]

end A051697

/-! ## A051697.P17978468181751760192

`p?[lcm(gcd(2, n), A076973(n+1))]`
-/

namespace A051697.P17978468181751760192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A076973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A051697.P17978468181751760192

namespace A051697

/-- `p?[lcm(gcd(2, n), A076973(n+1))]` -/
def P17978468181751760192.Spec : Prop :=
  ∀ n, (P17978468181751760192.a n : ℤ) = A051697 n

end A051697

/-! ## A051697.P15654091862791381271

`A076973(A004281(n))`
-/

namespace A051697.P15654091862791381271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004281 n).toNat

end

end A051697.P15654091862791381271

namespace A051697

/-- `A076973(A004281(n))` -/
def P15654091862791381271.Spec : Prop :=
  ∀ n, P15654091862791381271.a n = A051697 n

end A051697

/-! ## A051697.P16086577656254003053

`A076973(A092535(n))`
-/

namespace A051697.P16086577656254003053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A092535 n).toNat

end

end A051697.P16086577656254003053

namespace A051697

/-- `A076973(A092535(n))` -/
def P16086577656254003053.Spec : Prop :=
  ∀ n, P16086577656254003053.a n = A051697 n

end A051697

/-! ## A051697.P6370001798182291778

`A076973(A004271(n+1))`
-/

namespace A051697.P6370001798182291778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004271 (n + 1)).toNat

end

end A051697.P6370001798182291778

namespace A051697

/-- `A076973(A004271(n+1))` -/
def P6370001798182291778.Spec : Prop :=
  ∀ n, P6370001798182291778.a n = A051697 n

end A051697

/-! ## A051697.P12456238922876215654

`A076973(A004276(n+1))`
-/

namespace A051697.P12456238922876215654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004276 (n + 1)).toNat

end

end A051697.P12456238922876215654

namespace A051697

/-- `A076973(A004276(n+1))` -/
def P12456238922876215654.Spec : Prop :=
  ∀ n, P12456238922876215654.a n = A051697 n

end A051697

/-! ## A051697.P17996008548592167354

`A076973(A004278(n+1))`
-/

namespace A051697.P17996008548592167354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004278 (n + 1)).toNat

end

end A051697.P17996008548592167354

namespace A051697

/-- `A076973(A004278(n+1))` -/
def P17996008548592167354.Spec : Prop :=
  ∀ n, P17996008548592167354.a n = A051697 n

end A051697

/-! ## A051697.P14165632133132664880

`A076973(A004274(n)+1)`
-/

namespace A051697.P14165632133132664880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A004274 n + 1).toNat

end

end A051697.P14165632133132664880

namespace A051697

/-- `A076973(A004274(n)+1)` -/
def P14165632133132664880.Spec : Prop :=
  ∀ n, P14165632133132664880.a n = A051697 n

end A051697

/-! ## A051697.P222842880506388022

`A076973(A300576(n+1))`
-/

namespace A051697.P222842880506388022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A300576 (n + 1)).toNat

end

end A051697.P222842880506388022

namespace A051697

/-- `A076973(A300576(n+1))` -/
def P222842880506388022.Spec : Prop :=
  ∀ n, P222842880506388022.a n = A051697 n

end A051697

/-! ## A051697.P8681856747577724528

`A076973(2*(A289207(n)+1))`
-/

namespace A051697.P8681856747577724528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (2 * (A289207 n + 1)).toNat

end

end A051697.P8681856747577724528

namespace A051697

/-- `A076973(2*(A289207(n)+1))` -/
def P8681856747577724528.Spec : Prop :=
  ∀ n, P8681856747577724528.a n = A051697 n

end A051697

/-! ## A051697.P8735291710593788215

`A076973(2*(A004280(n+1)-n))`
-/

namespace A051697.P8735291710593788215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (2 * (A004280 (n + 1) - (n : ℤ))).toNat

end

end A051697.P8735291710593788215

namespace A051697

/-- `A076973(2*(A004280(n+1)-n))` -/
def P8735291710593788215.Spec : Prop :=
  ∀ n, P8735291710593788215.a n = A051697 n

end A051697

/-! ## A051697.P13541203497412292893

`p?[lcm(2/A000034(n), A076272(n+1))]`
-/

namespace A051697.P13541203497412292893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (2 / (A000034 n : ℚ))) (A076272 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A051697.P13541203497412292893

namespace A051697

/-- `p?[lcm(2/A000034(n), A076272(n+1))]` -/
def P13541203497412292893.Spec : Prop :=
  ∀ n, (P13541203497412292893.a n : ℤ) = A051697 n

end A051697

/-! ## A051697.P8393569369403471689

`A076973(A289207(n)+A289207(n)+2)`
-/

namespace A051697.P8393569369403471689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A289207 n + (A289207 n + 2)).toNat

end

end A051697.P8393569369403471689

namespace A051697

/-- `A076973(A289207(n)+A289207(n)+2)` -/
def P8393569369403471689.Spec : Prop :=
  ∀ n, P8393569369403471689.a n = A051697 n

end A051697

/-! ## A051697.P6602566641621241393

`A076973(record[A004442(A026741(n))])`
-/

namespace A051697.P6602566641621241393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051697.P6602566641621241393

namespace A051697

/-- `A076973(record[A004442(A026741(n))])` -/
def P6602566641621241393.Spec : Prop :=
  ∀ n, P6602566641621241393.a n = A051697 n

end A051697

/-!
# A051699: Distance from n to closest prime.

The programs for A051699, the canonical program `A051699.P8117944160580014048` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051699 has offset 0).

The definition of A051699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051699.P8117944160580014048

`abs(n-A051697(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051699

/-- `abs(n-A051697(n))` -/
def P8117944160580014048.Spec : Prop :=
  ∀ n, P8117944160580014048.a n = A051699 n

theorem P8117944160580014048.correct : P8117944160580014048.Spec := by
  intro n
  simp only [A051699]

end A051699

/-! ## A051699.P1616135407928223496

`lcm(1-A105700(n), A051700(n))`
-/

namespace A051699.P1616135407928223496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A105700 n) (A051700 n)

end

end A051699.P1616135407928223496

namespace A051699

/-- `lcm(1-A105700(n), A051700(n))` -/
def P1616135407928223496.Spec : Prop :=
  ∀ n, (P1616135407928223496.a n : ℤ) = A051699 n

end A051699

/-! ## A051699.P3263239577179546195

`∑{d}[n-A051697(n), A000010(#)]`
-/

namespace A051699.P3263239577179546195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A051699.P3263239577179546195

namespace A051699

/-- `∑{d}[n-A051697(n), A000010(#)]` -/
def P3263239577179546195.Spec : Prop :=
  ∀ n, P3263239577179546195.a n = A051699 n

end A051699

/-! ## A051699.P3804004945390267021

`char[A141468(n+1)]*A051700(n)`
-/

namespace A051699.P3804004945390267021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051700 n

end

end A051699.P3804004945390267021

namespace A051699

/-- `char[A141468(n+1)]*A051700(n)` -/
def P3804004945390267021.Spec : Prop :=
  ∀ n, P3804004945390267021.a n = A051699 n

end A051699

/-! ## A051699.P13320804021008261316

`(n-A051697(n))²/A051700(n)`
-/

namespace A051699.P13320804021008261316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A051697 n) ^ 2 : ℚ) / (A051700 n : ℚ)

end

end A051699.P13320804021008261316

namespace A051699

/-- `(n-A051697(n))²/A051700(n)` -/
def P13320804021008261316.Spec : Prop :=
  ∀ n, P13320804021008261316.a n = (A051699 n : ℚ)

end A051699

/-! ## A051699.P4503369162460423270

`A000007(A055672(n))*A051700(n)`
-/

namespace A051699.P4503369162460423270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A055672 n).toNat * A051700 n

end

end A051699.P4503369162460423270

namespace A051699

/-- `A000007(A055672(n))*A051700(n)` -/
def P4503369162460423270.Spec : Prop :=
  ∀ n, P4503369162460423270.a n = A051699 n

end A051699

/-! ## A051699.P11879604589592531008

`A051700(n)%A000079(A007920(n))`
-/

namespace A051699.P11879604589592531008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051700 n) (A000079 (A007920 n).toNat)

end

end A051699.P11879604589592531008

namespace A051699

/-- `A051700(n)%A000079(A007920(n))` -/
def P11879604589592531008.Spec : Prop :=
  ∀ n, P11879604589592531008.a n = A051699 n

end A051699

/-! ## A051699.P767297418338355796

`char[A191558(n+1)]*A051700(n)`
-/

namespace A051699.P767297418338355796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051700 n

end

end A051699.P767297418338355796

namespace A051699

/-- `char[A191558(n+1)]*A051700(n)` -/
def P767297418338355796.Spec : Prop :=
  ∀ n, P767297418338355796.a n = A051699 n

end A051699

/-! ## A051699.P5996492687146337261

`char[A103164(n)]*A051700(n)`
-/

namespace A051699.P5996492687146337261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051700 n

end

end A051699.P5996492687146337261

namespace A051699

/-- `char[A103164(n)]*A051700(n)` -/
def P5996492687146337261.Spec : Prop :=
  ∀ n, P5996492687146337261.a n = A051699 n

end A051699

/-! ## A051699.P11981317539445718626

`A023533(A055671(n))*A051700(n)`
-/

namespace A051699.P11981317539445718626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A055671 n).toNat * A051700 n

end

end A051699.P11981317539445718626

namespace A051699

/-- `A023533(A055671(n))*A051700(n)` -/
def P11981317539445718626.Spec : Prop :=
  ∀ n, P11981317539445718626.a n = A051699 n

end A051699

