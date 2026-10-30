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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
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
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A020900: Greatest k such that k-th prime < twice n-th prime.

The programs for A020900, the canonical program `A020900.P12967914466540950521` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020900 has offset 1).

The definition of A020900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020900.P12967914466540950521

`A000720(A100484(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020900

/-- `A000720(A100484(n+1))` -/
def P12967914466540950521.Spec : Prop :=
  ∀ n, P12967914466540950521.a n = A020900 (n + 1)

theorem P12967914466540950521.correct : P12967914466540950521.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel]

end A020900

/-! ## A020900.P8285593118224971329

`A000720(2*A000040(n+1))`
-/

namespace A020900.P8285593118224971329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A000040 (n + 1)).toNat

end

end A020900.P8285593118224971329

namespace A020900

/-- `A000720(2*A000040(n+1))` -/
def P8285593118224971329.Spec : Prop :=
  ∀ n, P8285593118224971329.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P17871512726487723182

`A063124(n+1)+n`
-/

namespace A020900.P17871512726487723182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) + (n : ℤ)

end

end A020900.P17871512726487723182

namespace A020900

/-- `A063124(n+1)+n` -/
def P17871512726487723182.Spec : Prop :=
  ∀ n, P17871512726487723182.a n = A020900 (n + 1)

theorem P17871512726487723182.correct : P17871512726487723182.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P17871512726487723182.a, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063124, A063124.P9970457058300728251.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P9051810112201088382

`n+1+A070046(n+1)`
-/

namespace A020900.P9051810112201088382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A070046 (n + 1)

end

end A020900.P9051810112201088382

namespace A020900

/-- `n+1+A070046(n+1)` -/
def P9051810112201088382.Spec : Prop :=
  ∀ n, P9051810112201088382.a n = A020900 (n + 1)

theorem P9051810112201088382.correct : P9051810112201088382.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P9051810112201088382.a, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070046, A070046.P5794988103684771228.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A063124, A063124.P9970457058300728251.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P3674151650768149530

`A298862(n+1)-(n+1)`
-/

namespace A020900.P3674151650768149530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298862 (n + 1) - (n + 1 : ℤ)

end

end A020900.P3674151650768149530

namespace A020900

/-- `A298862(n+1)-(n+1)` -/
def P3674151650768149530.Spec : Prop :=
  ∀ n, P3674151650768149530.a n = A020900 (n + 1)

theorem P3674151650768149530.correct : P3674151650768149530.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P3674151650768149530.a, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A298862, A298862.P282422978072333323.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P16788632063347774864

`A102820(n)+a(n-1)` with `a(0)=2`
-/

namespace A020900.P16788632063347774864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A102820 n + a (n - 1)

end

end A020900.P16788632063347774864

namespace A020900

/-- `A102820(n)+a(n-1)` -/
def P16788632063347774864.Spec : Prop :=
  ∀ n, P16788632063347774864.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P3574227057424738210

`Δ[n²]-A331677(n+1)`
-/

namespace A020900.P3574227057424738210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A331677 (n + 1)

end

end A020900.P3574227057424738210

namespace A020900

/-- `Δ[n²]-A331677(n+1)` -/
def P3574227057424738210.Spec : Prop :=
  ∀ n, P3574227057424738210.a n = A020900 (n + 1)

theorem P3574227057424738210.correct : P3574227057424738210.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P3574227057424738210.f1, A020900.P3574227057424738210.a, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P9719994256329710895

`2*(n+1)-A334051(n+1)`
-/

namespace A020900.P9719994256329710895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A334051 (n + 1)

end

end A020900.P9719994256329710895

namespace A020900

/-- `2*(n+1)-A334051(n+1)` -/
def P9719994256329710895.Spec : Prop :=
  ∀ n, P9719994256329710895.a n = A020900 (n + 1)

theorem P9719994256329710895.correct : P9719994256329710895.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P9719994256329710895.a, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A334051, A334051.P2829152517033935229.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P1483046590902948973

`A072055(n+1)%A163468(n+1)`
-/

namespace A020900.P1483046590902948973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072055 (n + 1)) (A163468 (n + 1))

end

end A020900.P1483046590902948973

namespace A020900

/-- `A072055(n+1)%A163468(n+1)` -/
def P1483046590902948973.Spec : Prop :=
  ∀ n, P1483046590902948973.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P2538689765119893925

`A000040(n+1)-A246514(n+1)+n`
-/

namespace A020900.P2538689765119893925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A246514 (n + 1) + (n : ℤ)

end

end A020900.P2538689765119893925

namespace A020900

/-- `A000040(n+1)-A246514(n+1)+n` -/
def P2538689765119893925.Spec : Prop :=
  ∀ n, P2538689765119893925.a n = A020900 (n + 1)

theorem P2538689765119893925.correct : P2538689765119893925.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P2538689765119893925.a, A020900.P12967914466540950521.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A246514, A246514.P626080667968607195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P10062391759923820040

`A000720(A059788(n+1))`
-/

namespace A020900.P10062391759923820040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059788 (n + 1)).toNat

end

end A020900.P10062391759923820040

namespace A020900

/-- `A000720(A059788(n+1))` -/
def P10062391759923820040.Spec : Prop :=
  ∀ n, P10062391759923820040.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P4686968871737394755

`A099801(A006093(n+1))`
-/

namespace A020900.P4686968871737394755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A006093 (n + 1)).toNat

end

end A020900.P4686968871737394755

namespace A020900

/-- `A099801(A006093(n+1))` -/
def P4686968871737394755.Spec : Prop :=
  ∀ n, P4686968871737394755.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P9268592492026572484

`A000720(A001747(n+2))`
-/

namespace A020900.P9268592492026572484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001747 (n + 2)).toNat

end

end A020900.P9268592492026572484

namespace A020900

/-- `A000720(A001747(n+2))` -/
def P9268592492026572484.Spec : Prop :=
  ∀ n, P9268592492026572484.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P5627308526463058636

`A000720(A076274(n+2))`
-/

namespace A020900.P5627308526463058636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076274 (n + 2)).toNat

end

end A020900.P5627308526463058636

namespace A020900

/-- `A000720(A076274(n+2))` -/
def P5627308526463058636.Spec : Prop :=
  ∀ n, P5627308526463058636.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P3501582028643372392

`A000720(Δ[2*A007504(n)])`
-/

namespace A020900.P3501582028643372392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020900.P3501582028643372392

namespace A020900

/-- `A000720(Δ[2*A007504(n)])` -/
def P3501582028643372392.Spec : Prop :=
  ∀ n, P3501582028643372392.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P3848977821211776525

`A099801(record[A000010(n+1)])`
-/

namespace A020900.P3848977821211776525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020900.P3848977821211776525

namespace A020900

/-- `A099801(record[A000010(n+1)])` -/
def P3848977821211776525.Spec : Prop :=
  ∀ n, P3848977821211776525.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P8886043461510360932

`A000720(A037168(n+1)+1)`
-/

namespace A020900.P8886043461510360932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037168 (n + 1) + 1).toNat

end

end A020900.P8886043461510360932

namespace A020900

/-- `A000720(A037168(n+1)+1)` -/
def P8886043461510360932.Spec : Prop :=
  ∀ n, P8886043461510360932.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P12992608010331880378

`A000720(A072055(n+1)-1)`
-/

namespace A020900.P12992608010331880378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072055 (n + 1) - 1).toNat

end

end A020900.P12992608010331880378

namespace A020900

/-- `A000720(A072055(n+1)-1)` -/
def P12992608010331880378.Spec : Prop :=
  ∀ n, P12992608010331880378.a n = A020900 (n + 1)

theorem P12992608010331880378.correct : P12992608010331880378.Spec := by
  intro n
  simp only [A020900, Nat.add_sub_cancel, A020900.P12992608010331880378.a, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A072055, A072055.P8252801676711237860.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020900

/-! ## A020900.P11607422645228844050

`A099801(A000040(n+1)-1)`
-/

namespace A020900.P11607422645228844050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A000040 (n + 1) - 1).toNat

end

end A020900.P11607422645228844050

namespace A020900

/-- `A099801(A000040(n+1)-1)` -/
def P11607422645228844050.Spec : Prop :=
  ∀ n, P11607422645228844050.a n = A020900 (n + 1)

end A020900

/-! ## A020900.P17942060925969984893

`A000720(A001749(n+1)/2)`
-/

namespace A020900.P17942060925969984893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A020900.P17942060925969984893

namespace A020900

/-- `A000720(A001749(n+1)/2)` -/
def P17942060925969984893.Spec : Prop :=
  ∀ n, P17942060925969984893.a n = A020900 (n + 1)

end A020900

/-!
# A020901: Greatest k such that k-th prime < 3 times n-th prime.

The programs for A020901, the canonical program `A020901.P13099463135205159022` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020901 has offset 1).

The definition of A020901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020901.P13099463135205159022

`A000720(3*A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020901

/-- `A000720(3*A000040(n+1))` -/
def P13099463135205159022.Spec : Prop :=
  ∀ n, P13099463135205159022.a n = A020901 (n + 1)

theorem P13099463135205159022.correct : P13099463135205159022.Spec := by
  intro n
  simp only [A020901, Nat.add_sub_cancel]

end A020901

/-! ## A020901.P360153396740963760

`A101344(n+1)+1+n`
-/

namespace A020901.P360153396740963760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101344 (n + 1) + 1 + (n : ℤ)

end

end A020901.P360153396740963760

namespace A020901

/-- `A101344(n+1)+1+n` -/
def P360153396740963760.Spec : Prop :=
  ∀ n, P360153396740963760.a n = A020901 (n + 1)

theorem P360153396740963760.correct : P360153396740963760.Spec := by
  intro n
  simp only [A020901, Nat.add_sub_cancel, A020901.P360153396740963760.a, A020901.P13099463135205159022.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A101344, A101344.P7650550059139729787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020901

/-! ## A020901.P14755804158423854911

`A298864(n+1)-(n+1)`
-/

namespace A020901.P14755804158423854911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298864 (n + 1) - (n + 1 : ℤ)

end

end A020901.P14755804158423854911

namespace A020901

/-- `A298864(n+1)-(n+1)` -/
def P14755804158423854911.Spec : Prop :=
  ∀ n, P14755804158423854911.a n = A020901 (n + 1)

theorem P14755804158423854911.correct : P14755804158423854911.Spec := by
  intro n
  simp only [A020901, Nat.add_sub_cancel, A020901.P14755804158423854911.a, A020901.P13099463135205159022.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A298864, A298864.P5884613117295893309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020901

/-! ## A020901.P14928684645089784794

`A000720(A001748(n+1))`
-/

namespace A020901.P14928684645089784794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001748 (n + 1)).toNat

end

end A020901.P14928684645089784794

namespace A020901

/-- `A000720(A001748(n+1))` -/
def P14928684645089784794.Spec : Prop :=
  ∀ n, P14928684645089784794.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P13849089024776742077

`A000720(A063534(n+1))`
-/

namespace A020901.P13849089024776742077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063534 (n + 1)).toNat

end

end A020901.P13849089024776742077

namespace A020901

/-- `A000720(A063534(n+1))` -/
def P13849089024776742077.Spec : Prop :=
  ∀ n, P13849089024776742077.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P14191968069029018297

`A100637(A006093(n+1))`
-/

namespace A020901.P14191968069029018297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A006093 (n + 1)).toNat

end

end A020901.P14191968069029018297

namespace A020901

/-- `A100637(A006093(n+1))` -/
def P14191968069029018297.Spec : Prop :=
  ∀ n, P14191968069029018297.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P17909248511607363079

`A000720(A370008(n+1))`
-/

namespace A020901.P17909248511607363079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A370008 (n + 1)).toNat

end

end A020901.P17909248511607363079

namespace A020901

/-- `A000720(A370008(n+1))` -/
def P17909248511607363079.Spec : Prop :=
  ∀ n, P17909248511607363079.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P16104394098502810052

`A000720(A112773(n+2))`
-/

namespace A020901.P16104394098502810052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A112773 (n + 2)).toNat

end

end A020901.P16104394098502810052

namespace A020901

/-- `A000720(A112773(n+2))` -/
def P16104394098502810052.Spec : Prop :=
  ∀ n, P16104394098502810052.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P17868344745927797435

`A100637(Δ[A007504(n)]-1)`
-/

namespace A020901.P17868344745927797435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (f1 (n + 1) - f1 n - 1).toNat

end

end A020901.P17868344745927797435

namespace A020901

/-- `A100637(Δ[A007504(n)]-1)` -/
def P17868344745927797435.Spec : Prop :=
  ∀ n, P17868344745927797435.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P9787978271997046519

`A100637(record[A000010(n+1)])`
-/

namespace A020901.P9787978271997046519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020901.P9787978271997046519

namespace A020901

/-- `A100637(record[A000010(n+1)])` -/
def P9787978271997046519.Spec : Prop :=
  ∀ n, P9787978271997046519.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P16918378329448005720

`A100637(A000040(n+1)-1)`
-/

namespace A020901.P16918378329448005720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A000040 (n + 1) - 1).toNat

end

end A020901.P16918378329448005720

namespace A020901

/-- `A100637(A000040(n+1)-1)` -/
def P16918378329448005720.Spec : Prop :=
  ∀ n, P16918378329448005720.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P5665694158647344475

`A000720(A176003(n+2)+1)`
-/

namespace A020901.P5665694158647344475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A176003 (n + 2) + 1).toNat

end

end A020901.P5665694158647344475

namespace A020901

/-- `A000720(A176003(n+2)+1)` -/
def P5665694158647344475.Spec : Prop :=
  ∀ n, P5665694158647344475.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P8199892511685996827

`A000720(A138636(n+1)/2)`
-/

namespace A020901.P8199892511685996827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A138636 (n + 1) : ℚ) / 2)).toNat

end

end A020901.P8199892511685996827

namespace A020901

/-- `A000720(A138636(n+1)/2)` -/
def P8199892511685996827.Spec : Prop :=
  ∀ n, P8199892511685996827.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P5603568522095259069

`A000720(3*sqrt(A001248(n+1)))`
-/

namespace A020901.P5603568522095259069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (3 * Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A020901.P5603568522095259069

namespace A020901

/-- `A000720(3*sqrt(A001248(n+1)))` -/
def P5603568522095259069.Spec : Prop :=
  ∀ n, P5603568522095259069.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P4026232462692385936

`A100637(record[A006530(n+2)-1])`
-/

namespace A020901.P4026232462692385936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020901.P4026232462692385936

namespace A020901

/-- `A100637(record[A006530(n+2)-1])` -/
def P4026232462692385936.Spec : Prop :=
  ∀ n, P4026232462692385936.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P3302950678740624941

`A100637(record[A020639(n+2)-1])`
-/

namespace A020901.P3302950678740624941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020901.P3302950678740624941

namespace A020901

/-- `A100637(record[A020639(n+2)-1])` -/
def P3302950678740624941.Spec : Prop :=
  ∀ n, P3302950678740624941.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P5857361484006738892

`A000720(3*record[A006530(n+2)])`
-/

namespace A020901.P5857361484006738892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020901.P5857361484006738892

namespace A020901

/-- `A000720(3*record[A006530(n+2)])` -/
def P5857361484006738892.Spec : Prop :=
  ∀ n, P5857361484006738892.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P2318942905816324310

`A000720((A330410(n+1)+1)/2)`
-/

namespace A020901.P2318942905816324310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A330410 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A020901.P2318942905816324310

namespace A020901

/-- `A000720((A330410(n+1)+1)/2)` -/
def P2318942905816324310.Spec : Prop :=
  ∀ n, P2318942905816324310.a n = A020901 (n + 1)

end A020901

/-! ## A020901.P7136427056226508663

`A000720(A100484(n+1)+A000040(n+1))`
-/

namespace A020901.P7136427056226508663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + A000040 (n + 1)).toNat

end

end A020901.P7136427056226508663

namespace A020901

/-- `A000720(A100484(n+1)+A000040(n+1))` -/
def P7136427056226508663.Spec : Prop :=
  ∀ n, P7136427056226508663.a n = A020901 (n + 1)

theorem P7136427056226508663.correct : P7136427056226508663.Spec := by
  intro n
  simp only [A020901, Nat.add_sub_cancel, A020901.P7136427056226508663.a, A020901.P13099463135205159022.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020901

/-! ## A020901.P7821129263544774658

`A000720(A001749(n+1)-A000040(n+1))`
-/

namespace A020901.P7821129263544774658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1) - A000040 (n + 1)).toNat

end

end A020901.P7821129263544774658

namespace A020901

/-- `A000720(A001749(n+1)-A000040(n+1))` -/
def P7821129263544774658.Spec : Prop :=
  ∀ n, P7821129263544774658.a n = A020901 (n + 1)

theorem P7821129263544774658.correct : P7821129263544774658.Spec := by
  intro n
  simp only [A020901, Nat.add_sub_cancel, A020901.P7821129263544774658.a, A020901.P13099463135205159022.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020901

/-!
# A020903: Lim f(f(...f(n))) where f is the fractal sequence given by f(n)=A002260(n+1).

The programs for A020903, the canonical program `A020903.P11794236010846254719` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020903 has offset 1).

The definition of A020903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020903.P11794236010846254719

`a(col(n+1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020903

/-- `a(col(n+1))` -/
def P11794236010846254719.Spec : Prop :=
  ∀ n, (P11794236010846254719.a n : ℤ) = A020903 (n + 1)

theorem P11794236010846254719.correct : P11794236010846254719.Spec := by
  intro n
  simp only [A020903, Nat.add_sub_cancel]

end A020903

/-! ## A020903.P13827196761739607555

`a(A048151(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P13827196761739607555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A048151 (n + 1)).toNat

end

end A020903.P13827196761739607555

namespace A020903

/-- `a(A048151(n+1))` -/
def P13827196761739607555.Spec : Prop :=
  ∀ n, (P13827196761739607555.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P4284283989310662772

`a(log2(A059268(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P4284283989310662772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A059268 (n + 1) : ℝ))).toNat

end

end A020903.P4284283989310662772

namespace A020903

/-- `a(log2(A059268(n+1)))` -/
def P4284283989310662772.Spec : Prop :=
  ∀ n, (P4284283989310662772.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P7065239848621690623

`a(A002260(2+n)-1)` with `a(0)=1, a(1)=2`
-/

namespace A020903.P7065239848621690623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A002260 (2 + n) - 1).toNat

end

end A020903.P7065239848621690623

namespace A020903

/-- `a(A002260(2+n)-1)` -/
def P7065239848621690623.Spec : Prop :=
  ∀ n, (P7065239848621690623.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P1960497959525919504

`a(A057554(2*n+3))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P1960497959525919504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A057554 (2 * n + 3)).toNat

end

end A020903.P1960497959525919504

namespace A020903

/-- `a(A057554(2*n+3))` -/
def P1960497959525919504.Spec : Prop :=
  ∀ n, (P1960497959525919504.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P7917622812671545642

`a(A002260(n+1)%A002260(n+2))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P7917622812671545642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.tmod (A002260 (n + 1)) (A002260 (n + 2))).toNat

end

end A020903.P7917622812671545642

namespace A020903

/-- `a(A002260(n+1)%A002260(n+2))` -/
def P7917622812671545642.Spec : Prop :=
  ∀ n, (P7917622812671545642.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P6845656022254535780

`a(A002262(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P6845656022254535780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A002262 (n + 1)).toNat

end

end A020903.P6845656022254535780

namespace A020903

/-- `a(A002262(n+1))` -/
def P6845656022254535780.Spec : Prop :=
  ∀ n, (P6845656022254535780.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P6486298514763666386

`a(A004526(A158405(n+2)))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P6486298514763666386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A004526 (A158405 (n + 2)).toNat).toNat

end

end A020903.P6486298514763666386

namespace A020903

/-- `a(A004526(A158405(n+2)))` -/
def P6486298514763666386.Spec : Prop :=
  ∀ n, (P6486298514763666386.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P3074101123239915803

`a(A000720(A037126(n+2)-1))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P3074101123239915803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A000720 (A037126 (n + 2) - 1).toNat).toNat

end

end A020903.P3074101123239915803

namespace A020903

/-- `a(A000720(A037126(n+2)-1))` -/
def P3074101123239915803.Spec : Prop :=
  ∀ n, (P3074101123239915803.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P5957775270324939064

`a(A026100(A026098(n+2))-1)` with `a(0)=1, a(1)=2`
-/

namespace A020903.P5957775270324939064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A026100 (A026098 (n + 2)).toNat - 1).toNat

end

end A020903.P5957775270324939064

namespace A020903

/-- `a(A026100(A026098(n+2))-1)` -/
def P5957775270324939064.Spec : Prop :=
  ∀ n, (P5957775270324939064.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P13887099936241747894

`a(A057555(2*(n+1)+1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A020903.P13887099936241747894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A057555 (2 * (n + 1) + 1) - 1).toNat

end

end A020903.P13887099936241747894

namespace A020903

/-- `a(A057555(2*(n+1)+1)-1)` -/
def P13887099936241747894.Spec : Prop :=
  ∀ n, (P13887099936241747894.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P8688663781910380636

`a(A053186(A064801(n+2)))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P8688663781910380636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A053186 (A064801 (n + 2)).toNat).toNat

end

end A020903.P8688663781910380636

namespace A020903

/-- `a(A053186(A064801(n+2)))` -/
def P8688663781910380636.Spec : Prop :=
  ∀ n, (P8688663781910380636.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P2832095725541774261

`a(A163326(A163328(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P2832095725541774261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A163326 (A163328 (n + 1)).toNat).toNat

end

end A020903.P2832095725541774261

namespace A020903

/-- `a(A163326(A163328(n+1)))` -/
def P2832095725541774261.Spec : Prop :=
  ∀ n, (P2832095725541774261.a n : ℤ) = A020903 (n + 1)

end A020903

/-! ## A020903.P6989620079513836923

`a(A079070(A048645(n+2)))` with `a(0)=1, a(1)=2`
-/

namespace A020903.P6989620079513836923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A079070 (A048645 (n + 2)).toNat).toNat

end

end A020903.P6989620079513836923

namespace A020903

/-- `a(A079070(A048645(n+2)))` -/
def P6989620079513836923.Spec : Prop :=
  ∀ n, (P6989620079513836923.a n : ℤ) = A020903 (n + 1)

end A020903

/-!
# A020904: Positions of 2 in A020903; complement of A191777.

The programs for A020904, the canonical program `A020904.P17561794660568718524` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020904 has offset 1).

The definition of A020904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020904.P17561794660568718524

`eq[1, sqrt(a(col(n)+1))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020904

/-- `eq[1, sqrt(a(col(n)+1))]` -/
def P17561794660568718524.Spec : Prop :=
  ∀ n, (P17561794660568718524.a n : ℤ) = A020904 (n + 1)

theorem P17561794660568718524.correct : P17561794660568718524.Spec := by
  intro n
  simp only [A020904, Nat.add_sub_cancel]

end A020904

/-! ## A020904.P814569243415839782

`∑[runs[A191777(n+1)-n]+1]`
-/

namespace A020904.P814569243415839782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191777 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020904.P814569243415839782

namespace A020904

/-- `∑[runs[A191777(n+1)-n]+1]` -/
def P814569243415839782.Spec : Prop :=
  ∀ n, (P814569243415839782.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P1504925668642329860

`lt[1, A020903(A002260(n+1))]`
-/

namespace A020904.P1504925668642329860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A002260 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A020904.P1504925668642329860

namespace A020904

/-- `lt[1, A020903(A002260(n+1))]` -/
def P1504925668642329860.Spec : Prop :=
  ∀ n, (P1504925668642329860.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P2653649324048389541

`lt[1, A020903(n+1)]+1`
-/

namespace A020904.P2653649324048389541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A020904.P2653649324048389541

namespace A020904

/-- `lt[1, A020903(n+1)]+1` -/
def P2653649324048389541.Spec : Prop :=
  ∀ n, (P2653649324048389541.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P17173955265032800658

`eq[2, A020903(n+2)]+2`
-/

namespace A020904.P17173955265032800658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A020904.P17173955265032800658

namespace A020904

/-- `eq[2, A020903(n+2)]+2` -/
def P17173955265032800658.Spec : Prop :=
  ∀ n, (P17173955265032800658.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P10270325120917510670

`eq[2, A020903(A028310(n))]`
-/

namespace A020904.P10270325120917510670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020904.P10270325120917510670

namespace A020904

/-- `eq[2, A020903(A028310(n))]` -/
def P10270325120917510670.Spec : Prop :=
  ∀ n, (P10270325120917510670.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P3574684062934700260

`A020725(eq[2, A020903(n+1)])`
-/

namespace A020904.P3574684062934700260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020904.P3574684062934700260

namespace A020904

/-- `A020725(eq[2, A020903(n+1)])` -/
def P3574684062934700260.Spec : Prop :=
  ∀ n, P3574684062934700260.a n = A020904 (n + 1)

end A020904

/-! ## A020904.P15033429123750725127

`eq[2, A020903(A000007(n)+n)]`
-/

namespace A020904.P15033429123750725127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020904.P15033429123750725127

namespace A020904

/-- `eq[2, A020903(A000007(n)+n)]` -/
def P15033429123750725127.Spec : Prop :=
  ∀ n, (P15033429123750725127.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P1641595982513852230

`eq[2, A020903(A007401(n+1))]`
-/

namespace A020904.P1641595982513852230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A007401 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020904.P1641595982513852230

namespace A020904

/-- `eq[2, A020903(A007401(n+1))]` -/
def P1641595982513852230.Spec : Prop :=
  ∀ n, (P1641595982513852230.a n : ℤ) = A020904 (n + 1)

end A020904

/-! ## A020904.P5235956263258715136

`eq[2, A020903(A193891(∑[n]))]`
-/

namespace A020904.P5235956263258715136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A193891 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020904.P5235956263258715136

namespace A020904

/-- `eq[2, A020903(A193891(∑[n]))]` -/
def P5235956263258715136.Spec : Prop :=
  ∀ n, (P5235956263258715136.a n : ℤ) = A020904 (n + 1)

end A020904

/-!
# A020905: Sum of n plus its prime factors associated with A020700.

The programs for A020905, there is no canonical definition to state claims against.
-/

/-! ## A020905.P5108971703994372206

`A020700(n+1)+A001414(A020700(n+1))`
-/

namespace A020905.P5108971703994372206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020700 (n + 1) + A001414 (A020700 (n + 1)).toNat

end

end A020905.P5108971703994372206

/-! ## A020905.P12400744251538105611

`A075254(A020700(n+1))`
-/

namespace A020905.P12400744251538105611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A020700 (n + 1)).toNat

end

end A020905.P12400744251538105611

/-! ## A020905.P3541925096994435243

`A075254(eq[A036288(n+1)+2, A107463(2*n)])`
-/

namespace A020905.P3541925096994435243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A020905.P3541925096994435243

/-!
# A020906: Triangle where n-th row is the first n terms of the sequence in reverse order, starting with a(1) = 1 and a(2) = 2.

The programs for A020906, the canonical program `A020906.P9041250250638292646` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020906 has offset 1).

The definition of A020906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020906.P8517012436394366426

`a(row(n)-col(n))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P8517012436394366426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A020906.P8517012436394366426

namespace A020906

/-- `a(row(n)-col(n))` -/
def P8517012436394366426.Spec : Prop :=
  ∀ n, (P8517012436394366426.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P2986406436910260075

`a(C(comp[∑[n]]-n, 2)-(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P2986406436910260075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A020906.P2986406436910260075

namespace A020906

/-- `a(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P2986406436910260075.Spec : Prop :=
  ∀ n, (P2986406436910260075.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P1954964464653425756

`a(C(comp[∑[n]]-n, 2)-n-1)` with `a(0)=1, a(1)=2`
-/

namespace A020906.P1954964464653425756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A020906.P1954964464653425756

namespace A020906

/-- `a(C(comp[∑[n]]-n, 2)-n-1)` -/
def P1954964464653425756.Spec : Prop :=
  ∀ n, (P1954964464653425756.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P9041250250638292646

`a(A025581(n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020906

/-- `a(A025581(n))` -/
def P9041250250638292646.Spec : Prop :=
  ∀ n, (P9041250250638292646.a n : ℤ) = A020906 (n + 1)

theorem P9041250250638292646.correct : P9041250250638292646.Spec := by
  intro n
  simp only [A020906, Nat.add_sub_cancel]

end A020906

/-! ## A020906.P17894698500299149326

`A283683(n+1)+1`
-/

namespace A020906.P17894698500299149326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (n + 1) + 1

end

end A020906.P17894698500299149326

namespace A020906

/-- `A283683(n+1)+1` -/
def P17894698500299149326.Spec : Prop :=
  ∀ n, P17894698500299149326.a n = A020906 (n + 1)

theorem P17894698500299149326.correct : P17894698500299149326.Spec := by
  intro n
  simp only [A020906, Nat.add_sub_cancel, A020906.P17894698500299149326.a, A020906.P9041250250638292646.a, A025581, A025581.P16112744757063613497.a, A283683, A283683.P9744256243260942993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020906

/-! ## A020906.P4138346278953887621

`a(log2(A130321(n)))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P4138346278953887621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A020906.P4138346278953887621

namespace A020906

/-- `a(log2(A130321(n)))` -/
def P4138346278953887621.Spec : Prop :=
  ∀ n, (P4138346278953887621.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P11200898754051331243

`a(val(A036561(n), 2))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P11200898754051331243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A020906.P11200898754051331243

namespace A020906

/-- `a(val(A036561(n), 2))` -/
def P11200898754051331243.Spec : Prop :=
  ∀ n, (P11200898754051331243.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P10685975763759415014

`a(val(A054582(n), 2))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P10685975763759415014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A020906.P10685975763759415014

namespace A020906

/-- `a(val(A054582(n), 2))` -/
def P10685975763759415014.Spec : Prop :=
  ∀ n, (P10685975763759415014.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P8444804317764915011

`a(floor(log2(A130330(n))))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P8444804317764915011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Nat.log 2 (A130330 n).toNat)

end

end A020906.P8444804317764915011

namespace A020906

/-- `a(floor(log2(A130330(n))))` -/
def P8444804317764915011.Spec : Prop :=
  ∀ n, (P8444804317764915011.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P16274209782638912268

`a(sqrt(A095831(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P16274209782638912268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.sqrt (A095831 (n + 1) : ℝ))).toNat

end

end A020906.P16274209782638912268

namespace A020906

/-- `a(sqrt(A095831(n+1)))` -/
def P16274209782638912268.Spec : Prop :=
  ∀ n, (P16274209782638912268.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P12770157356209538577

`a(A004736(n+1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A020906.P12770157356209538577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A004736 (n + 1) - 1).toNat

end

end A020906.P12770157356209538577

namespace A020906

/-- `a(A004736(n+1)-1)` -/
def P12770157356209538577.Spec : Prop :=
  ∀ n, (P12770157356209538577.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P793392468704194179

`a(A057554(2*(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P793392468704194179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A057554 (2 * (n + 1))).toNat

end

end A020906.P793392468704194179

namespace A020906

/-- `a(A057554(2*(n+1)))` -/
def P793392468704194179.Spec : Prop :=
  ∀ n, (P793392468704194179.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P6139886045519457584

`char[A020907(n+1)-1]+1`
-/

namespace A020906.P6139886045519457584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020907 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A020906.P6139886045519457584

namespace A020906

/-- `char[A020907(n+1)-1]+1` -/
def P6139886045519457584.Spec : Prop :=
  ∀ n, (P6139886045519457584.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P2257595087076309870

`a(A000217(round(sqrt(2*n+1)))-(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P2257595087076309870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ)).toNat

end

end A020906.P2257595087076309870

namespace A020906

/-- `a(A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P2257595087076309870.Spec : Prop :=
  ∀ n, (P2257595087076309870.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P17246218030699789339

`a(round(sqrt(2*n+1))-A002260(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P17246218030699789339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1)).toNat

end

end A020906.P17246218030699789339

namespace A020906

/-- `a(round(sqrt(2*n+1))-A002260(n+1))` -/
def P17246218030699789339.Spec : Prop :=
  ∀ n, (P17246218030699789339.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P5037823364049899931

`a(A000096(A003056(n))-n)` with `a(0)=1, a(1)=2`
-/

namespace A020906.P5037823364049899931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A000096 (A003056 n).toNat - (n : ℤ)).toNat

end

end A020906.P5037823364049899931

namespace A020906

/-- `a(A000096(A003056(n))-n)` -/
def P5037823364049899931.Spec : Prop :=
  ∀ n, (P5037823364049899931.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P17470276605789625504

`a(A003056(n)-A002262(n))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P17470276605789625504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A003056 n - A002262 n).toNat

end

end A020906.P17470276605789625504

namespace A020906

/-- `a(A003056(n)-A002262(n))` -/
def P17470276605789625504.Spec : Prop :=
  ∀ n, (P17470276605789625504.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P17209905904828409655

`a(val(A023758(n+2), 2))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P17209905904828409655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.valuation (A023758 (n + 2)).toNat 2)

end

end A020906.P17209905904828409655

namespace A020906

/-- `a(val(A023758(n+2), 2))` -/
def P17209905904828409655.Spec : Prop :=
  ∀ n, (P17209905904828409655.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P5190598656507470097

`a(A004736(n+2)%A004736(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P5190598656507470097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat

end

end A020906.P5190598656507470097

namespace A020906

/-- `a(A004736(n+2)%A004736(n+1))` -/
def P5190598656507470097.Spec : Prop :=
  ∀ n, (P5190598656507470097.a n : ℤ) = A020906 (n + 1)

end A020906

/-! ## A020906.P1992073016905901579

`a(A002262(A061579(n)))` with `a(0)=1, a(1)=2`
-/

namespace A020906.P1992073016905901579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A002262 (A061579 n).toNat).toNat

end

end A020906.P1992073016905901579

namespace A020906

/-- `a(A002262(A061579(n)))` -/
def P1992073016905901579.Spec : Prop :=
  ∀ n, (P1992073016905901579.a n : ℤ) = A020906 (n + 1)

end A020906

/-!
# A020907: Position of n-th 2 in A020906.

The programs for A020907, the canonical program `A020907.P12830732031489125966` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020907 has offset 1).

The definition of A020907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020907.P12830732031489125966

`lt[-21, a(row(n)-col(n))-2]+1` with `a(0)=-21, a(1)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020907

/-- `lt[-21, a(row(n)-col(n))-2]+1` -/
def P12830732031489125966.Spec : Prop :=
  ∀ n, (P12830732031489125966.a n : ℤ) = A020907 (n + 1)

theorem P12830732031489125966.correct : P12830732031489125966.Spec := by
  intro n
  simp only [A020907, Nat.add_sub_cancel]

end A020907

/-! ## A020907.P12480847434171713379

`∑[A283325(1+n)+1]`
-/

namespace A020907.P12480847434171713379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283325 (1 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020907.P12480847434171713379

namespace A020907

/-- `∑[A283325(1+n)+1]` -/
def P12480847434171713379.Spec : Prop :=
  ∀ n, P12480847434171713379.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P5328483034102433607

`eq[1, A283683(n+1)]+1`
-/

namespace A020907.P5328483034102433607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020907.P5328483034102433607

namespace A020907

/-- `eq[1, A283683(n+1)]+1` -/
def P5328483034102433607.Spec : Prop :=
  ∀ n, (P5328483034102433607.a n : ℤ) = A020907 (n + 1)

end A020907

/-! ## A020907.P8181476001133049554

`filter[A344180(n), A283683(#)]`
-/

namespace A020907.P8181476001133049554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P8181476001133049554

namespace A020907

/-- `filter[A344180(n), A283683(#)]` -/
def P8181476001133049554.Spec : Prop :=
  ∀ n, P8181476001133049554.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P5749018421922955716

`eq[1, A283683(A066182(n+1))]`
-/

namespace A020907.P5749018421922955716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020907.P5749018421922955716

namespace A020907

/-- `eq[1, A283683(A066182(n+1))]` -/
def P5749018421922955716.Spec : Prop :=
  ∀ n, (P5749018421922955716.a n : ℤ) = A020907 (n + 1)

end A020907

/-! ## A020907.P1182364953507494999

`filter[A066182(n+1), A283683(#)]`
-/

namespace A020907.P1182364953507494999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P1182364953507494999

namespace A020907

/-- `filter[A066182(n+1), A283683(#)]` -/
def P1182364953507494999.Spec : Prop :=
  ∀ n, P1182364953507494999.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P15034831894648998724

`lt[acot(A038566(n+1)), A283683(n+1)]+1`
-/

namespace A020907.P15034831894648998724
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A038566 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A020907.P15034831894648998724

namespace A020907

/-- `lt[acot(A038566(n+1)), A283683(n+1)]+1` -/
def P15034831894648998724.Spec : Prop :=
  ∀ n, (P15034831894648998724.a n : ℤ) = A020907 (n + 1)

end A020907

/-! ## A020907.P10105496719291646746

`filter[A014132(n+1), A283683(#)]`
-/

namespace A020907.P10105496719291646746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P10105496719291646746

namespace A020907

/-- `filter[A014132(n+1), A283683(#)]` -/
def P10105496719291646746.Spec : Prop :=
  ∀ n, P10105496719291646746.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P15999983492709877438

`filter[A181133(n+1), A283683(#)]`
-/

namespace A020907.P15999983492709877438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P15999983492709877438

namespace A020907

/-- `filter[A181133(n+1), A283683(#)]` -/
def P15999983492709877438.Spec : Prop :=
  ∀ n, P15999983492709877438.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P17584159723694252085

`filter[A035254(n+2), A283683(#)]`
-/

namespace A020907.P17584159723694252085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035254 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P17584159723694252085

namespace A020907

/-- `filter[A035254(n+2), A283683(#)]` -/
def P17584159723694252085.Spec : Prop :=
  ∀ n, P17584159723694252085.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P10237720834696480498

`filter[A183218(n+1), A283683(#)]`
-/

namespace A020907.P10237720834696480498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P10237720834696480498

namespace A020907

/-- `filter[A183218(n+1), A283683(#)]` -/
def P10237720834696480498.Spec : Prop :=
  ∀ n, P10237720834696480498.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P12991709846870047608

`filter[A183301(n+1), A283683(#)]`
-/

namespace A020907.P12991709846870047608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P12991709846870047608

namespace A020907

/-- `filter[A183301(n+1), A283683(#)]` -/
def P12991709846870047608.Spec : Prop :=
  ∀ n, P12991709846870047608.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P15469167781425870312

`filter[A062289(n+1), A283683(#)]`
-/

namespace A020907.P15469167781425870312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P15469167781425870312

namespace A020907

/-- `filter[A062289(n+1), A283683(#)]` -/
def P15469167781425870312.Spec : Prop :=
  ∀ n, P15469167781425870312.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P1758617440649910218

`filter[A057717(n+1), A283683(#)]`
-/

namespace A020907.P1758617440649910218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P1758617440649910218

namespace A020907

/-- `filter[A057717(n+1), A283683(#)]` -/
def P1758617440649910218.Spec : Prop :=
  ∀ n, P1758617440649910218.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P17324384256392227847

`filter[A065190(n+1), A283683(#)]`
-/

namespace A020907.P17324384256392227847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P17324384256392227847

namespace A020907

/-- `filter[A065190(n+1), A283683(#)]` -/
def P17324384256392227847.Spec : Prop :=
  ∀ n, P17324384256392227847.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P5404522238467225389

`eq[2, A020906(n+1)]+1`
-/

namespace A020907.P5404522238467225389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020907.P5404522238467225389

namespace A020907

/-- `eq[2, A020906(n+1)]+1` -/
def P5404522238467225389.Spec : Prop :=
  ∀ n, (P5404522238467225389.a n : ℤ) = A020907 (n + 1)

end A020907

/-! ## A020907.P3708231812456701653

`eq[1, A283683(A080036(n))]`
-/

namespace A020907.P3708231812456701653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283683 (A080036 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020907.P3708231812456701653

namespace A020907

/-- `eq[1, A283683(A080036(n))]` -/
def P3708231812456701653.Spec : Prop :=
  ∀ n, (P3708231812456701653.a n : ℤ) = A020907 (n + 1)

end A020907

/-! ## A020907.P5972371558395334105

`filter[A116966(n), A283683(#)]`
-/

namespace A020907.P5972371558395334105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P5972371558395334105

namespace A020907

/-- `filter[A116966(n), A283683(#)]` -/
def P5972371558395334105.Spec : Prop :=
  ∀ n, P5972371558395334105.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P1511296455164855129

`filter[A014681(n+1), A283683(#)]`
-/

namespace A020907.P1511296455164855129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P1511296455164855129

namespace A020907

/-- `filter[A014681(n+1), A283683(#)]` -/
def P1511296455164855129.Spec : Prop :=
  ∀ n, P1511296455164855129.a n = A020907 (n + 1)

end A020907

/-! ## A020907.P1040434592656795488

`filter[A064429(n+1), A283683(#)]`
-/

namespace A020907.P1040434592656795488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A020907.P1040434592656795488

namespace A020907

/-- `filter[A064429(n+1), A283683(#)]` -/
def P1040434592656795488.Spec : Prop :=
  ∀ n, P1040434592656795488.a n = A020907 (n + 1)

end A020907

/-!
# A020908: Number of terms in Zeckendorf representation of 2^n.

The programs for A020908, there is no canonical definition to state claims against.
-/

/-! ## A020908.P5038146330659581479

`Δ[A300836(2^n)]`
-/

namespace A020908.P5038146330659581479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020908.P5038146330659581479

/-! ## A020908.P15450232126286061707

`abs(Δ[A300836(A000079(n))])`
-/

namespace A020908.P15450232126286061707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A020908.P15450232126286061707

/-! ## A020908.P18158916817839954473

`Δ[record[A300836(A059268(n))]]`
-/

namespace A020908.P18158916817839954473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (A059268 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020908.P18158916817839954473

/-! ## A020908.P617542270677202921

`Δ[record[A300836(A130321(n))]]`
-/

namespace A020908.P617542270677202921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (A130321 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020908.P617542270677202921

/-! ## A020908.P15883125473751125246

`Δ[record[A300836(A302030(n+1))]]`
-/

namespace A020908.P15883125473751125246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (A302030 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020908.P15883125473751125246

/-!
# A020909: Number of bits in the base-2 representation of the n-th Fibonacci number.

The programs for A020909, the canonical program `A020909.P9971739814397576493` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020909 has offset 1).

The definition of A020909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020909.P9971739814397576493

`1+floor(log2(A000045(n+1)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020909

/-- `1+floor(log2(A000045(n+1)))` -/
def P9971739814397576493.Spec : Prop :=
  ∀ n, (P9971739814397576493.a n : ℤ) = A020909 (n + 1)

theorem P9971739814397576493.correct : P9971739814397576493.Spec := by
  intro n
  simp only [A020909, Nat.add_sub_cancel]

end A020909

/-! ## A020909.P12363492695660075145

`A070939(A000045(n+1))`
-/

namespace A020909.P12363492695660075145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000045 (n + 1)).toNat

end

end A020909.P12363492695660075145

namespace A020909

/-- `A070939(A000045(n+1))` -/
def P12363492695660075145.Spec : Prop :=
  ∀ n, P12363492695660075145.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P6008567765071857967

`2*A011373(n+1)-A350700(n+1)`
-/

namespace A020909.P6008567765071857967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011373 (n + 1) - A350700 (n + 1)

end

end A020909.P6008567765071857967

namespace A020909

/-- `2*A011373(n+1)-A350700(n+1)` -/
def P6008567765071857967.Spec : Prop :=
  ∀ n, P6008567765071857967.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P13387591218025706654

`A059016(n+1)+A011373(n+1)`
-/

namespace A020909.P13387591218025706654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059016 (n + 1) + A011373 (n + 1)

end

end A020909.P13387591218025706654

namespace A020909

/-- `A059016(n+1)+A011373(n+1)` -/
def P13387591218025706654.Spec : Prop :=
  ∀ n, P13387591218025706654.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P7212432546007777832

`A350700(n+1)+2*A059016(n+1)`
-/

namespace A020909.P7212432546007777832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350700 (n + 1) + 2 * A059016 (n + 1)

end

end A020909.P7212432546007777832

namespace A020909

/-- `A350700(n+1)+2*A059016(n+1)` -/
def P7212432546007777832.Spec : Prop :=
  ∀ n, P7212432546007777832.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P10388172817871213831

`ceil(log2(A001611(n+1)))`
-/

namespace A020909.P10388172817871213831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A001611 (n + 1) : ℝ)⌉

end

end A020909.P10388172817871213831

namespace A020909

/-- `ceil(log2(A001611(n+1)))` -/
def P10388172817871213831.Spec : Prop :=
  ∀ n, P10388172817871213831.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P372377697898457124

`ceil(log2(A336030(n+2)))`
-/

namespace A020909.P372377697898457124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A336030 (n + 2) : ℝ)⌉

end

end A020909.P372377697898457124

namespace A020909

/-- `ceil(log2(A336030(n+2)))` -/
def P372377697898457124.Spec : Prop :=
  ∀ n, P372377697898457124.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P12415410466842510330

`ceil(log2(A212804(n+2)+1))`
-/

namespace A020909.P12415410466842510330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A212804 (n + 2) + 1 : ℝ)⌉

end

end A020909.P12415410466842510330

namespace A020909

/-- `ceil(log2(A212804(n+2)+1))` -/
def P12415410466842510330.Spec : Prop :=
  ∀ n, P12415410466842510330.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P18411654707625782796

`floor(log2(A000071(n+1)+1))+1`
-/

namespace A020909.P18411654707625782796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A000071 (n + 1) + 1).toNat + 1

end

end A020909.P18411654707625782796

namespace A020909

/-- `floor(log2(A000071(n+1)+1))+1` -/
def P18411654707625782796.Spec : Prop :=
  ∀ n, (P18411654707625782796.a n : ℤ) = A020909 (n + 1)

theorem P18411654707625782796.correct : P18411654707625782796.Spec := by
  intro n
  simp only [A020909, Nat.add_sub_cancel, A020909.P18411654707625782796.a, A020909.P9971739814397576493.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020909

/-! ## A020909.P16989449755533448441

`ceil(log2(A000045(2*n+1-n)+1))`
-/

namespace A020909.P16989449755533448441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000045 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat + 1 : ℝ)⌉

end

end A020909.P16989449755533448441

namespace A020909

/-- `ceil(log2(A000045(2*n+1-n)+1))` -/
def P16989449755533448441.Spec : Prop :=
  ∀ n, P16989449755533448441.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P17779194984716120140

`ceil(log2(A016068(n)+A000045(n+1)))`
-/

namespace A020909.P17779194984716120140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A016068 n + A000045 (n + 1) : ℝ)⌉

end

end A020909.P17779194984716120140

namespace A020909

/-- `ceil(log2(A016068(n)+A000045(n+1)))` -/
def P17779194984716120140.Spec : Prop :=
  ∀ n, P17779194984716120140.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P16473548722518163134

`ceil(log2(A001222(n+2)+A000045(n+1)))`
-/

namespace A020909.P16473548722518163134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A001222 (n + 2) + A000045 (n + 1) : ℝ)⌉

end

end A020909.P16473548722518163134

namespace A020909

/-- `ceil(log2(A001222(n+2)+A000045(n+1)))` -/
def P16473548722518163134.Spec : Prop :=
  ∀ n, P16473548722518163134.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P9373846136416028405

`round(log2(A293419(n+1)))`
-/

namespace A020909.P9373846136416028405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A293419 (n + 1) : ℝ))

end

end A020909.P9373846136416028405

namespace A020909

/-- `round(log2(A293419(n+1)))` -/
def P9373846136416028405.Spec : Prop :=
  ∀ n, P9373846136416028405.a n = A020909 (n + 1)

end A020909

/-! ## A020909.P2739381072056188638

`floor(log2(∑[a(n-2)+a(n-1)]))` with `a(0)=2, a(1)=0`
-/

namespace A020909.P2739381072056188638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020909.P2739381072056188638

namespace A020909

/-- `floor(log2(∑[a(n-2)+a(n-1)]))` -/
def P2739381072056188638.Spec : Prop :=
  ∀ n, (P2739381072056188638.a n : ℤ) = A020909 (n + 1)

end A020909

/-! ## A020909.P9769890064405782618

`floor(log2(A001588(n+1)))`
-/

namespace A020909.P9769890064405782618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001588 (n + 1)).toNat

end

end A020909.P9769890064405782618

namespace A020909

/-- `floor(log2(A001588(n+1)))` -/
def P9769890064405782618.Spec : Prop :=
  ∀ n, (P9769890064405782618.a n : ℤ) = A020909 (n + 1)

end A020909

/-! ## A020909.P12694866928257022829

`floor(log2(A001595(n)+1))`
-/

namespace A020909.P12694866928257022829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001595 n + 1).toNat

end

end A020909.P12694866928257022829

namespace A020909

/-- `floor(log2(A001595(n)+1))` -/
def P12694866928257022829.Spec : Prop :=
  ∀ n, (P12694866928257022829.a n : ℤ) = A020909 (n + 1)

end A020909

/-! ## A020909.P17686995121410108801

`floor(log2(A055389(n+1)))`
-/

namespace A020909.P17686995121410108801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A055389 (n + 1)).toNat

end

end A020909.P17686995121410108801

namespace A020909

/-- `floor(log2(A055389(n+1)))` -/
def P17686995121410108801.Spec : Prop :=
  ∀ n, (P17686995121410108801.a n : ℤ) = A020909 (n + 1)

end A020909

/-! ## A020909.P3962495927306963280

`floor(log2(A166012(n+1)))`
-/

namespace A020909.P3962495927306963280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A166012 (n + 1)).toNat

end

end A020909.P3962495927306963280

namespace A020909

/-- `floor(log2(A166012(n+1)))` -/
def P3962495927306963280.Spec : Prop :=
  ∀ n, (P3962495927306963280.a n : ℤ) = A020909 (n + 1)

end A020909

/-! ## A020909.P6196009431341810888

`floor(log2(A377368(n+1)))`
-/

namespace A020909.P6196009431341810888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A377368 (n + 1)).toNat

end

end A020909.P6196009431341810888

namespace A020909

/-- `floor(log2(A377368(n+1)))` -/
def P6196009431341810888.Spec : Prop :=
  ∀ n, (P6196009431341810888.a n : ℤ) = A020909 (n + 1)

end A020909

/-! ## A020909.P5100226658619380810

`floor(log2(A006355(n+2)))`
-/

namespace A020909.P5100226658619380810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006355 (n + 2)).toNat

end

end A020909.P5100226658619380810

namespace A020909

/-- `floor(log2(A006355(n+2)))` -/
def P5100226658619380810.Spec : Prop :=
  ∀ n, (P5100226658619380810.a n : ℤ) = A020909 (n + 1)

end A020909

/-!
# A020911: Number of digits in the base 3 representation of n-th Fibonacci number.

The programs for A020911, the canonical program `A020911.P470209350847853776` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020911 has offset 1).

The definition of A020911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020911.P470209350847853776

`ceil(log(A000045(n+1)+1)/log(3))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020911

/-- `ceil(log(A000045(n+1)+1)/log(3))` -/
def P470209350847853776.Spec : Prop :=
  ∀ n, P470209350847853776.a n = A020911 (n + 1)

theorem P470209350847853776.correct : P470209350847853776.Spec := by
  intro n
  simp only [A020911, Nat.add_sub_cancel]

end A020911

/-! ## A020911.P8869275533827178566

`ceil(log(A000071(n+1)+2)/log(3))`
-/

namespace A020911.P8869275533827178566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A000071 (n + 1) + 2 : ℝ) / Real.log (3 : ℝ)⌉

end

end A020911.P8869275533827178566

namespace A020911

/-- `ceil(log(A000071(n+1)+2)/log(3))` -/
def P8869275533827178566.Spec : Prop :=
  ∀ n, P8869275533827178566.a n = A020911 (n + 1)

theorem P8869275533827178566.correct : P8869275533827178566.Spec := by
  intro n
  simp only [A020911, Nat.add_sub_cancel, A020911.P8869275533827178566.a, A020911.P470209350847853776.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020911

/-! ## A020911.P5084012853726073651

`floor(log(A103609(2*(n+1)))/log(3))+1`
-/

namespace A020911.P5084012853726073651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A103609 (2 * (n + 1)) : ℝ) / Real.log (3 : ℝ)⌋ + 1

end

end A020911.P5084012853726073651

namespace A020911

/-- `floor(log(A103609(2*(n+1)))/log(3))+1` -/
def P5084012853726073651.Spec : Prop :=
  ∀ n, P5084012853726073651.a n = A020911 (n + 1)

end A020911

/-! ## A020911.P17504547035816924680

`A060384(A261585(A105566(n+2))+2*n)`
-/

namespace A020911.P17504547035816924680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A261585 (A105566 (n + 2)).toNat + (2 * n : ℤ)).toNat

end

end A020911.P17504547035816924680

namespace A020911

/-- `A060384(A261585(A105566(n+2))+2*n)` -/
def P17504547035816924680.Spec : Prop :=
  ∀ n, P17504547035816924680.a n = A020911 (n + 1)

end A020911

/-! ## A020911.P2591256042460487674

`A008621(A096603(n+1)-A008621(n))`
-/

namespace A020911.P2591256042460487674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A096603 (n + 1) - A008621 n).toNat

end

end A020911.P2591256042460487674

namespace A020911

/-- `A008621(A096603(n+1)-A008621(n))` -/
def P2591256042460487674.Spec : Prop :=
  ∀ n, P2591256042460487674.a n = A020911 (n + 1)

end A020911

/-! ## A020911.P15063842722724898842

`ceil(A008621(A001106(n))/A004277(n))`
-/

namespace A020911.P15063842722724898842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008621 (A001106 n).toNat : ℚ) / (A004277 n : ℚ)⌉

end

end A020911.P15063842722724898842

namespace A020911

/-- `ceil(A008621(A001106(n))/A004277(n))` -/
def P15063842722724898842.Spec : Prop :=
  ∀ n, P15063842722724898842.a n = A020911 (n + 1)

end A020911

/-! ## A020911.P13286894370624258706

`A195174(A033627(n+1))%A340511(n+1)`
-/

namespace A020911.P13286894370624258706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195174 (A033627 (n + 1)).toNat) (A340511 (n + 1))

end

end A020911.P13286894370624258706

namespace A020911

/-- `A195174(A033627(n+1))%A340511(n+1)` -/
def P13286894370624258706.Spec : Prop :=
  ∀ n, P13286894370624258706.a n = A020911 (n + 1)

end A020911

/-!
# A020912: Number of terms in base 4 representation of n-th Fibonacci number.

The programs for A020912, the canonical program `A020912.P13580009353026341439` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020912 has offset 1).

The definition of A020912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020912.P13580009353026341439

`ceil(A020909(n+1)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020912

/-- `ceil(A020909(n+1)/2)` -/
def P13580009353026341439.Spec : Prop :=
  ∀ n, P13580009353026341439.a n = A020912 (n + 1)

theorem P13580009353026341439.correct : P13580009353026341439.Spec := by
  intro n
  simp only [A020912, Nat.add_sub_cancel]

end A020912

/-! ## A020912.P8922138890537534228

`A065033(A020909(n+1))`
-/

namespace A020912.P8922138890537534228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A020909 (n + 1)).toNat

end

end A020912.P8922138890537534228

namespace A020912

/-- `A065033(A020909(n+1))` -/
def P8922138890537534228.Spec : Prop :=
  ∀ n, P8922138890537534228.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P17110446013547695108

`A080513(floor(log2(A005252(n))))`
-/

namespace A020912.P17110446013547695108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (Nat.log 2 (A005252 n).toNat)

end

end A020912.P17110446013547695108

namespace A020912

/-- `A080513(floor(log2(A005252(n))))` -/
def P17110446013547695108.Spec : Prop :=
  ∀ n, P17110446013547695108.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P6305164628093132852

`ceil(log2(sqrt(A001611(n+1))))`
-/

namespace A020912.P6305164628093132852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A001611 (n + 1) : ℝ))⌉

end

end A020912.P6305164628093132852

namespace A020912

/-- `ceil(log2(sqrt(A001611(n+1))))` -/
def P6305164628093132852.Spec : Prop :=
  ∀ n, P6305164628093132852.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P4204579095273472767

`floor(log2(sqrt(A000045(n+1))))+1`
-/

namespace A020912.P4204579095273472767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A000045 (n + 1) : ℝ))⌋ + 1

end

end A020912.P4204579095273472767

namespace A020912

/-- `floor(log2(sqrt(A000045(n+1))))+1` -/
def P4204579095273472767.Spec : Prop :=
  ∀ n, P4204579095273472767.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P6332255138439016993

`A008619(floor(log2(A052959(n))))`
-/

namespace A020912.P6332255138439016993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.log 2 (A052959 n).toNat)

end

end A020912.P6332255138439016993

namespace A020912

/-- `A008619(floor(log2(A052959(n))))` -/
def P6332255138439016993.Spec : Prop :=
  ∀ n, P6332255138439016993.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P2653018837118082585

`A065033(ceil(log2(A052959(n))))`
-/

namespace A020912.P2653018837118082585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.logb 2 (A052959 n : ℝ)⌉.toNat

end

end A020912.P2653018837118082585

namespace A020912

/-- `A065033(ceil(log2(A052959(n))))` -/
def P2653018837118082585.Spec : Prop :=
  ∀ n, P2653018837118082585.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P13288505011281276951

`A065033(ceil(log2(A127968(n))))`
-/

namespace A020912.P13288505011281276951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.logb 2 (A127968 n : ℝ)⌉.toNat

end

end A020912.P13288505011281276951

namespace A020912

/-- `A065033(ceil(log2(A127968(n))))` -/
def P13288505011281276951.Spec : Prop :=
  ∀ n, P13288505011281276951.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P12177286278658536288

`A008619(floor(log2(A000045(n+1))))`
-/

namespace A020912.P12177286278658536288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.log 2 (A000045 (n + 1)).toNat)

end

end A020912.P12177286278658536288

namespace A020912

/-- `A008619(floor(log2(A000045(n+1))))` -/
def P12177286278658536288.Spec : Prop :=
  ∀ n, P12177286278658536288.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P6102159227934447550

`A065033(ceil(log2(A000045(n+1))))`
-/

namespace A020912.P6102159227934447550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.logb 2 (A000045 (n + 1) : ℝ)⌉.toNat

end

end A020912.P6102159227934447550

namespace A020912

/-- `A065033(ceil(log2(A000045(n+1))))` -/
def P6102159227934447550.Spec : Prop :=
  ∀ n, P6102159227934447550.a n = A020912 (n + 1)

end A020912

/-! ## A020912.P7188371029308267893

`A065033(floor(log2(A001595(n))))`
-/

namespace A020912.P7188371029308267893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.log 2 (A001595 n).toNat)

end

end A020912.P7188371029308267893

namespace A020912

/-- `A065033(floor(log2(A001595(n))))` -/
def P7188371029308267893.Spec : Prop :=
  ∀ n, P7188371029308267893.a n = A020912 (n + 1)

end A020912

/-!
# A020913: Number of terms in base 5 representation of Fibonacci(n).

The programs for A020913, the canonical program `A020913.P10754868390936482838` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020913 has offset 1).

The definition of A020913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020913.P8387130205253341771

`A121902(xor(A000174(n), A167614(n+1)))`
-/

namespace A020913.P8387130205253341771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.xor (A000174 n) (A167614 (n + 1))).toNat

end

end A020913.P8387130205253341771

namespace A020913

/-- `A121902(xor(A000174(n), A167614(n+1)))` -/
def P8387130205253341771.Spec : Prop :=
  ∀ n, P8387130205253341771.a n = A020913 (n + 1)

end A020913

/-! ## A020913.P10754868390936482838

`A121902(xor(A025910(n), A167614(n+1)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020913

/-- `A121902(xor(A025910(n), A167614(n+1)))` -/
def P10754868390936482838.Spec : Prop :=
  ∀ n, P10754868390936482838.a n = A020913 (n + 1)

theorem P10754868390936482838.correct : P10754868390936482838.Spec := by
  intro n
  simp only [A020913, Nat.add_sub_cancel]

end A020913

/-! ## A020913.P1129673132332339939

`A121902(A167614(n+1)+A008651(n))`
-/

namespace A020913.P1129673132332339939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A167614 (n + 1) + A008651 n).toNat

end

end A020913.P1129673132332339939

namespace A020913

/-- `A121902(A167614(n+1)+A008651(n))` -/
def P1129673132332339939.Spec : Prop :=
  ∀ n, P1129673132332339939.a n = A020913 (n + 1)

end A020913

/-! ## A020913.P16014935194184774097

`A121902(A189658(n+4)+A000124(n))`
-/

namespace A020913.P16014935194184774097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A189658 (n + 4) + A000124 n).toNat

end

end A020913.P16014935194184774097

namespace A020913

/-- `A121902(A189658(n+4)+A000124(n))` -/
def P16014935194184774097.Spec : Prop :=
  ∀ n, P16014935194184774097.a n = A020913 (n + 1)

end A020913

/-! ## A020913.P16132360484987955433

`A121902(or(A000174(n), A167614(n+1)))`
-/

namespace A020913.P16132360484987955433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.lor (A000174 n) (A167614 (n + 1))).toNat

end

end A020913.P16132360484987955433

namespace A020913

/-- `A121902(or(A000174(n), A167614(n+1)))` -/
def P16132360484987955433.Spec : Prop :=
  ∀ n, P16132360484987955433.a n = A020913 (n + 1)

end A020913

/-! ## A020913.P17835876299370593791

`A121902(or(A025910(n), A167614(n+1)))`
-/

namespace A020913.P17835876299370593791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.lor (A025910 n) (A167614 (n + 1))).toNat

end

end A020913.P17835876299370593791

namespace A020913

/-- `A121902(or(A025910(n), A167614(n+1)))` -/
def P17835876299370593791.Spec : Prop :=
  ∀ n, P17835876299370593791.a n = A020913 (n + 1)

end A020913

/-! ## A020913.P7671277720250215402

`ceil(A017581(n²)/A017305(4*n+3))`
-/

namespace A020913.P7671277720250215402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017581 (n ^ 2) : ℚ) / (A017305 (4 * n + 3) : ℚ)⌉

end

end A020913.P7671277720250215402

namespace A020913

/-- `ceil(A017581(n²)/A017305(4*n+3))` -/
def P7671277720250215402.Spec : Prop :=
  ∀ n, P7671277720250215402.a n = A020913 (n + 1)

end A020913

/-! ## A020913.P15982444956215019448

`A278044(A094983(n))`
-/

namespace A020913.P15982444956215019448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278044 (A094983 n).toNat

end

end A020913.P15982444956215019448

namespace A020913

/-- `A278044(A094983(n))` -/
def P15982444956215019448.Spec : Prop :=
  ∀ n, P15982444956215019448.a n = A020913 (n + 1)

end A020913

/-!
# A020914: Number of digits in the base-2 representation of 3^n.

The programs for A020914, the canonical program `A020914.P14614132090025046928` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020914 has offset 0).

The definition of A020914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020914.P14614132090025046928

`1+floor(n*log2(3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020914

/-- `1+floor(n*log2(3))` -/
def P14614132090025046928.Spec : Prop :=
  ∀ n, P14614132090025046928.a n = A020914 n

theorem P14614132090025046928.correct : P14614132090025046928.Spec := by
  intro n
  simp only [A020914]

end A020914

/-! ## A020914.P4801541914147286061

`∑[runs[ceil(n/log2(3))]]`
-/

namespace A020914.P4801541914147286061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (3 : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020914.P4801541914147286061

namespace A020914

/-- `∑[runs[ceil(n/log2(3))]]` -/
def P4801541914147286061.Spec : Prop :=
  ∀ n, (P4801541914147286061.a n : ℤ) = A020914 n

end A020914

/-! ## A020914.P15244707611185769943

`abs(xor(floor(n*log2(3)), -1))`
-/

namespace A020914.P15244707611185769943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ (-1)|

end

end A020914.P15244707611185769943

namespace A020914

/-- `abs(xor(floor(n*log2(3)), -1))` -/
def P15244707611185769943.Spec : Prop :=
  ∀ n, P15244707611185769943.a n = A020914 n

end A020914

/-! ## A020914.P14550984508062743760

`-xor(floor(n*log2(3)), -1)`
-/

namespace A020914.P14550984508062743760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ (-1)

end

end A020914.P14550984508062743760

namespace A020914

/-- `-xor(floor(n*log2(3)), -1)` -/
def P14550984508062743760.Spec : Prop :=
  ∀ n, P14550984508062743760.a n = A020914 n

end A020914

/-! ## A020914.P7692510827375428939

`abs(A122437(n+1)-n)`
-/

namespace A020914.P7692510827375428939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122437 (n + 1) - (n : ℤ)|

end

end A020914.P7692510827375428939

namespace A020914

/-- `abs(A122437(n+1)-n)` -/
def P7692510827375428939.Spec : Prop :=
  ∀ n, P7692510827375428939.a n = A020914 n

end A020914

/-! ## A020914.P6257241101374784155

`floor((2*A056576(n)+3)/2)`
-/

namespace A020914.P6257241101374784155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A056576 n + 3 : ℚ) / 2⌋

end

end A020914.P6257241101374784155

namespace A020914

/-- `floor((2*A056576(n)+3)/2)` -/
def P6257241101374784155.Spec : Prop :=
  ∀ n, P6257241101374784155.a n = A020914 n

end A020914

/-! ## A020914.P4698532560784229984

`abs(A028310(n)+ceil(n*(log2(3)-1)))`
-/

namespace A020914.P4698532560784229984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028310 n + ⌈(n : ℝ) * (Real.logb 2 (3 : ℝ) - 1)⌉|

end

end A020914.P4698532560784229984

namespace A020914

/-- `abs(A028310(n)+ceil(n*(log2(3)-1)))` -/
def P4698532560784229984.Spec : Prop :=
  ∀ n, P4698532560784229984.a n = A020914 n

end A020914

/-! ## A020914.P14348733536736440605

`A000027(A056576(n)+1)`
-/

namespace A020914.P14348733536736440605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A056576 n + 1).toNat

end

end A020914.P14348733536736440605

namespace A020914

/-- `A000027(A056576(n)+1)` -/
def P14348733536736440605.Spec : Prop :=
  ∀ n, P14348733536736440605.a n = A020914 n

end A020914

/-! ## A020914.P7975129860905033449

`xor(A000007(n), A204399(n))`
-/

namespace A020914.P7975129860905033449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A204399 n)

end

end A020914.P7975129860905033449

namespace A020914

/-- `xor(A000007(n), A204399(n))` -/
def P7975129860905033449.Spec : Prop :=
  ∀ n, P7975129860905033449.a n = A020914 n

end A020914

/-! ## A020914.P15135820928703235568

`∪[A117630(n+1), A237514(n+1)]`
-/

namespace A020914.P15135820928703235568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A020914.P15135820928703235568

namespace A020914

/-- `∪[A117630(n+1), A237514(n+1)]` -/
def P15135820928703235568.Spec : Prop :=
  ∀ n, (P15135820928703235568.a n : ℤ) = A020914 n

end A020914

/-! ## A020914.P3594701194234590664

`∑[A022921(A056576(n)-A098294(n))]`
-/

namespace A020914.P3594701194234590664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 (A056576 n - A098294 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020914.P3594701194234590664

namespace A020914

/-- `∑[A022921(A056576(n)-A098294(n))]` -/
def P3594701194234590664.Spec : Prop :=
  ∀ n, P3594701194234590664.a n = A020914 n

end A020914

/-! ## A020914.P1179140652250901434

`(A056576(n)+1)^A001221(A303809(n+1))`
-/

namespace A020914.P1179140652250901434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056576 n + 1 : ℚ) ^ (A001221 (A303809 (n + 1)).toNat : ℤ)

end

end A020914.P1179140652250901434

namespace A020914

/-- `(A056576(n)+1)^A001221(A303809(n+1))` -/
def P1179140652250901434.Spec : Prop :=
  ∀ n, P1179140652250901434.a n = (A020914 n : ℚ)

end A020914

/-! ## A020914.P2688595249240969659

`record[n*A022924(n)+1]`
-/

namespace A020914.P2688595249240969659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022924 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020914.P2688595249240969659

namespace A020914

/-- `record[n*A022924(n)+1]` -/
def P2688595249240969659.Spec : Prop :=
  ∀ n, P2688595249240969659.a n = A020914 n

end A020914

/-! ## A020914.P6899543510432722701

`A028310(A204399(n))`
-/

namespace A020914.P6899543510432722701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A204399 n).toNat

end

end A020914.P6899543510432722701

namespace A020914

/-- `A028310(A204399(n))` -/
def P6899543510432722701.Spec : Prop :=
  ∀ n, P6899543510432722701.a n = A020914 n

end A020914

/-! ## A020914.P15512140423773441893

`record[(n+1)*(A156301(n+1)-A156301(n))]`
-/

namespace A020914.P15512140423773441893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A156301 (n + 1) - A156301 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020914.P15512140423773441893

namespace A020914

/-- `record[(n+1)*(A156301(n+1)-A156301(n))]` -/
def P15512140423773441893.Spec : Prop :=
  ∀ n, P15512140423773441893.a n = A020914 n

end A020914

/-! ## A020914.P7183753152403989015

`round(A022330(2*n)/(2*n+1))`
-/

namespace A020914.P7183753152403989015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022330 (2 * n) : ℚ) / (2 * n + 1 : ℚ))

end

end A020914.P7183753152403989015

namespace A020914

/-- `round(A022330(2*n)/(2*n+1))` -/
def P7183753152403989015.Spec : Prop :=
  ∀ n, P7183753152403989015.a n = A020914 n

end A020914

/-! ## A020914.P14486107218194512216

`record[A056576(abs(A060681(n+1)-n))+1]`
-/

namespace A020914.P14486107218194512216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 |A060681 (n + 1) - (n : ℤ)|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020914.P14486107218194512216

namespace A020914

/-- `record[A056576(abs(A060681(n+1)-n))+1]` -/
def P14486107218194512216.Spec : Prop :=
  ∀ n, P14486107218194512216.a n = A020914 n

end A020914

/-! ## A020914.P14137053241976494031

`A008619(2*A056576(n))`
-/

namespace A020914.P14137053241976494031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A056576 n).toNat

end

end A020914.P14137053241976494031

namespace A020914

/-- `A008619(2*A056576(n))` -/
def P14137053241976494031.Spec : Prop :=
  ∀ n, P14137053241976494031.a n = A020914 n

end A020914

/-! ## A020914.P2605898128708519268

`A110654(2*A056576(n)+1)`
-/

namespace A020914.P2605898128708519268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A056576 n + 1).toNat

end

end A020914.P2605898128708519268

namespace A020914

/-- `A110654(2*A056576(n)+1)` -/
def P2605898128708519268.Spec : Prop :=
  ∀ n, P2605898128708519268.a n = A020914 n

end A020914

/-! ## A020914.P17493155057287094650

`A110654(or(1, A056576(2*n)))`
-/

namespace A020914.P17493155057287094650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor 1 (A056576 (2 * n))).toNat

end

end A020914.P17493155057287094650

namespace A020914

/-- `A110654(or(1, A056576(2*n)))` -/
def P17493155057287094650.Spec : Prop :=
  ∀ n, P17493155057287094650.a n = A020914 n

end A020914

/-!
# A020915: Number of digits in base-3 representation of 2^n.

The programs for A020915, the canonical program `A020915.P489464718778045910` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020915 has offset 0).

The definition of A020915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020915.P489464718778045910

`1+floor(n*log(2)/log(3))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020915

/-- `1+floor(n*log(2)/log(3))` -/
def P489464718778045910.Spec : Prop :=
  ∀ n, P489464718778045910.a n = A020915 n

theorem P489464718778045910.correct : P489464718778045910.Spec := by
  intro n
  simp only [A020915]

end A020915

/-! ## A020915.P2370289299019238918

`∑[char[A204399(n)]]`
-/

namespace A020915.P2370289299019238918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020915.P2370289299019238918

namespace A020915

/-- `∑[char[A204399(n)]]` -/
def P2370289299019238918.Spec : Prop :=
  ∀ n, (P2370289299019238918.a n : ℤ) = A020915 n

end A020915

/-! ## A020915.P11959875406001385576

`∑[A022924(abs(1-n))]`
-/

namespace A020915.P11959875406001385576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020915.P11959875406001385576

namespace A020915

/-- `∑[A022924(abs(1-n))]` -/
def P11959875406001385576.Spec : Prop :=
  ∀ n, P11959875406001385576.a n = A020915 n

end A020915

/-! ## A020915.P8007741665282251372

`A028310(ceil(n/log2(3)))`
-/

namespace A020915.P8007741665282251372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈(n : ℝ) / Real.logb 2 (3 : ℝ)⌉.toNat

end

end A020915.P8007741665282251372

namespace A020915

/-- `A028310(ceil(n/log2(3)))` -/
def P8007741665282251372.Spec : Prop :=
  ∀ n, P8007741665282251372.a n = A020915 n

end A020915

/-! ## A020915.P4766503536779123499

`∑[1-char[A054414(n)]]`
-/

namespace A020915.P4766503536779123499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020915.P4766503536779123499

namespace A020915

/-- `∑[1-char[A054414(n)]]` -/
def P4766503536779123499.Spec : Prop :=
  ∀ n, P4766503536779123499.a n = A020915 n

end A020915

/-! ## A020915.P7796046812816353436

`floor(sqrt(A156301(n)²+1))`
-/

namespace A020915.P7796046812816353436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A156301 n ^ 2 + 1)

end

end A020915.P7796046812816353436

namespace A020915

/-- `floor(sqrt(A156301(n)²+1))` -/
def P7796046812816353436.Spec : Prop :=
  ∀ n, P7796046812816353436.a n = A020915 n

end A020915

/-! ## A020915.P1252891080832156080

`A156301(or(n, and(1, ∏{p}[n, #])))`
-/

namespace A020915.P1252891080832156080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (Nat.lor n (Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A020915.P1252891080832156080

namespace A020915

/-- `A156301(or(n, and(1, ∏{p}[n, #])))` -/
def P1252891080832156080.Spec : Prop :=
  ∀ n, P1252891080832156080.a n = A020915 n

end A020915

/-! ## A020915.P3121970110297987315

`A156301(1-(1-n)%(n+1))`
-/

namespace A020915.P3121970110297987315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A020915.P3121970110297987315

namespace A020915

/-- `A156301(1-(1-n)%(n+1))` -/
def P3121970110297987315.Spec : Prop :=
  ∀ n, P3121970110297987315.a n = A020915 n

end A020915

/-! ## A020915.P10608349151600758353

`A156301(A028310(n))`
-/

namespace A020915.P10608349151600758353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A028310 n).toNat

end

end A020915.P10608349151600758353

namespace A020915

/-- `A156301(A028310(n))` -/
def P10608349151600758353.Spec : Prop :=
  ∀ n, P10608349151600758353.a n = A020915 n

end A020915

/-! ## A020915.P2404345741208980851

`A156301(A000007(n)+n)`
-/

namespace A020915.P2404345741208980851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A000007 n + (n : ℤ)).toNat

end

end A020915.P2404345741208980851

namespace A020915

/-- `A156301(A000007(n)+n)` -/
def P2404345741208980851.Spec : Prop :=
  ∀ n, P2404345741208980851.a n = A020915 n

end A020915

/-! ## A020915.P6747234431053551493

`C(A156301(n), A136409(n))`
-/

namespace A020915.P6747234431053551493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A156301 n).toNat (A136409 n).toNat

end

end A020915.P6747234431053551493

namespace A020915

/-- `C(A156301(n), A136409(n))` -/
def P6747234431053551493.Spec : Prop :=
  ∀ n, (P6747234431053551493.a n : ℤ) = A020915 n

end A020915

/-! ## A020915.P4527095702674816

`A156301(xor(n, A000007(n)))`
-/

namespace A020915.P4527095702674816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A020915.P4527095702674816

namespace A020915

/-- `A156301(xor(n, A000007(n)))` -/
def P4527095702674816.Spec : Prop :=
  ∀ n, P4527095702674816.a n = A020915 n

end A020915

/-! ## A020915.P8315797856189914046

`A156301(A057428(n)+1+n)`
-/

namespace A020915.P8315797856189914046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A057428 n + 1 + (n : ℤ)).toNat

end

end A020915.P8315797856189914046

namespace A020915

/-- `A156301(A057428(n)+1+n)` -/
def P8315797856189914046.Spec : Prop :=
  ∀ n, P8315797856189914046.a n = A020915 n

end A020915

/-! ## A020915.P1700214358420548911

`A156301(1-A022924(n)+n)`
-/

namespace A020915.P1700214358420548911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (1 - A022924 n + (n : ℤ)).toNat

end

end A020915.P1700214358420548911

namespace A020915

/-- `A156301(1-A022924(n)+n)` -/
def P1700214358420548911.Spec : Prop :=
  ∀ n, P1700214358420548911.a n = A020915 n

end A020915

/-! ## A020915.P3367104447190713736

`A156301(1-A057427(n)+n)`
-/

namespace A020915.P3367104447190713736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (1 - A057427 n + (n : ℤ)).toNat

end

end A020915.P3367104447190713736

namespace A020915

/-- `A156301(1-A057427(n)+n)` -/
def P3367104447190713736.Spec : Prop :=
  ∀ n, P3367104447190713736.a n = A020915 n

end A020915

/-! ## A020915.P11783956159683575758

`A136409(n+2-A022924(n))`
-/

namespace A020915.P11783956159683575758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 ((n + 2 : ℤ) - A022924 n).toNat

end

end A020915.P11783956159683575758

namespace A020915

/-- `A136409(n+2-A022924(n))` -/
def P11783956159683575758.Spec : Prop :=
  ∀ n, P11783956159683575758.a n = A020915 n

end A020915

/-! ## A020915.P6958581008272364512

`A156301(1-(A057427(n)-n))`
-/

namespace A020915.P6958581008272364512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (1 - (A057427 n - (n : ℤ))).toNat

end

end A020915.P6958581008272364512

namespace A020915

/-- `A156301(1-(A057427(n)-n))` -/
def P6958581008272364512.Spec : Prop :=
  ∀ n, P6958581008272364512.a n = A020915 n

end A020915

/-! ## A020915.P7667942428174773785

`abs(A156301(n)-char[A242619(n)])`
-/

namespace A020915.P7667942428174773785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242619 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156301 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A020915.P7667942428174773785

namespace A020915

/-- `abs(A156301(n)-char[A242619(n)])` -/
def P7667942428174773785.Spec : Prop :=
  ∀ n, P7667942428174773785.a n = A020915 n

end A020915

/-! ## A020915.P8493886081848696955

`A156301(A020914(A136409(n)))`
-/

namespace A020915.P8493886081848696955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A020914 (A136409 n).toNat).toNat

end

end A020915.P8493886081848696955

namespace A020915

/-- `A156301(A020914(A136409(n)))` -/
def P8493886081848696955.Spec : Prop :=
  ∀ n, P8493886081848696955.a n = A020915 n

end A020915

/-! ## A020915.P6735719196193031731

`A156301(A020914(n)-A098294(n))`
-/

namespace A020915.P6735719196193031731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A020914 n - A098294 n).toNat

end

end A020915.P6735719196193031731

namespace A020915

/-- `A156301(A020914(n)-A098294(n))` -/
def P6735719196193031731.Spec : Prop :=
  ∀ n, P6735719196193031731.a n = A020915 n

end A020915

/-!
# A020916: A molecule is a row of atoms joined together by bonds; each atom has a valence (e.g., 1-3=2 is a molecule with 3 atoms); a(n) is the number of molecules with n atoms and different valencies from 1 to n.

The programs for A020916, there is no canonical definition to state claims against.
-/

/-! ## A020916.P18146925428993315599

`A103491(Δ[∏[A003958(n+1)]])`
-/

namespace A020916.P18146925428993315599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103491 (f1 (n + 1) - f1 n).toNat

end

end A020916.P18146925428993315599

/-! ## A020916.P1149483077661520042

`and(Δ[A204064(n)], A345761(n+1))`
-/

namespace A020916.P1149483077661520042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A345761 (n + 1))

end

end A020916.P1149483077661520042

/-! ## A020916.P4657494183147368380

`and(A061928(3*(n+1)), A345761(n+1))`
-/

namespace A020916.P4657494183147368380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061928 (3 * (n + 1))) (A345761 (n + 1))

end

end A020916.P4657494183147368380

/-! ## A020916.P16863801529420611213

`A057354(n)*A321256(A321228(n))`
-/

namespace A020916.P16863801529420611213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n * A321256 (A321228 n).toNat

end

end A020916.P16863801529420611213

/-! ## A020916.P9444656580628425536

`A027144(A058187(n))%A202592(n)`
-/

namespace A020916.P9444656580628425536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027144 (A058187 n).toNat) (A202592 n)

end

end A020916.P9444656580628425536

/-!
# A020918: Expansion of 1/(1-4*x)^(7/2).

The programs for A020918, the canonical program `A020918.P2108208579407617575` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020918 has offset 0).

The definition of A020918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020918.P2108208579407617575

`C(2*n+6, n+3)*C(n+3, 3)/20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020918

/-- `C(2*n+6, n+3)*C(n+3, 3)/20` -/
def P2108208579407617575.Spec : Prop :=
  ∀ n, P2108208579407617575.a n = (A020918 n : ℚ)

end A020918

/-! ## A020918.P17802123073639240733

`(10/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020918.P17802123073639240733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (10 / (n : ℚ) + 4) * a (n - 1)

end

end A020918.P17802123073639240733

namespace A020918

/-- `(10/n+4)*a(n-1)` -/
def P17802123073639240733.Spec : Prop :=
  ∀ n, P17802123073639240733.a n = (A020918 n : ℚ)

end A020918

/-! ## A020918.P10037703926254174420

`A002803(n)-a(n-1)` with `a(0)=1`
-/

namespace A020918.P10037703926254174420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002803 n - a (n - 1)

end

end A020918.P10037703926254174420

namespace A020918

/-- `A002803(n)-a(n-1)` -/
def P10037703926254174420.Spec : Prop :=
  ∀ n, P10037703926254174420.a n = A020918 n

end A020918

/-! ## A020918.P31415474228319879

`A002802(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A020918.P31415474228319879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002802 n + 4 * a (n - 1)

end

end A020918.P31415474228319879

namespace A020918

/-- `A002802(n)+4*a(n-1)` -/
def P31415474228319879.Spec : Prop :=
  ∀ n, P31415474228319879.a n = A020918 n

end A020918

/-! ## A020918.P8967565009194330639

`a(n-1)/n*Δ[A268581(n)]` with `a(0)=1`
-/

namespace A020918.P8967565009194330639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A020918.P8967565009194330639

namespace A020918

/-- `a(n-1)/n*Δ[A268581(n)]` -/
def P8967565009194330639.Spec : Prop :=
  ∀ n, P8967565009194330639.a n = (A020918 n : ℚ)

end A020918

/-! ## A020918.P5084434206906302335

`A060632(2*n)*A161201(n)`
-/

namespace A020918.P5084434206906302335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A161201 n

end

end A020918.P5084434206906302335

namespace A020918

/-- `A060632(2*n)*A161201(n)` -/
def P5084434206906302335.Spec : Prop :=
  ∀ n, P5084434206906302335.a n = A020918 n

end A020918

/-! ## A020918.P9883685384095705157

`(n+1)*(2*n+1)*(2*n+3)*(2*n+5)*A000108(n)/15`
-/

namespace A020918.P9883685384095705157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (2 * n + 1) * (2 * n + 3) * (2 * n + 5) : ℤ) * A000108 n : ℚ) / 15

end

end A020918.P9883685384095705157

namespace A020918

/-- `(n+1)*(2*n+1)*(2*n+3)*(2*n+5)*A000108(n)/15` -/
def P9883685384095705157.Spec : Prop :=
  ∀ n, P9883685384095705157.a n = (A020918 n : ℚ)

end A020918

/-! ## A020918.P12773525871410571335

`A046521(∑[n+2]+n+7)`
-/

namespace A020918.P12773525871410571335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A020918.P12773525871410571335

namespace A020918

/-- `A046521(∑[n+2]+n+7)` -/
def P12773525871410571335.Spec : Prop :=
  ∀ n, P12773525871410571335.a n = A020918 n

end A020918

/-! ## A020918.P12166626534127173029

`A006858(n+1)/A000108(n)*A005700(n)`
-/

namespace A020918.P12166626534127173029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006858 (n + 1) : ℚ) / (A000108 n : ℚ) * (A005700 n : ℚ)

end

end A020918.P12166626534127173029

namespace A020918

/-- `A006858(n+1)/A000108(n)*A005700(n)` -/
def P12166626534127173029.Spec : Prop :=
  ∀ n, P12166626534127173029.a n = (A020918 n : ℚ)

end A020918

/-! ## A020918.P5838069843243430045

`A000079(n)/A000142(n)*A051579(n)`
-/

namespace A020918.P5838069843243430045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000142 n : ℚ) * (A051579 n : ℚ)

end

end A020918.P5838069843243430045

namespace A020918

/-- `A000079(n)/A000142(n)*A051579(n)` -/
def P5838069843243430045.Spec : Prop :=
  ∀ n, P5838069843243430045.a n = (A020918 n : ℚ)

end A020918

/-!
# A020919: Partition numbers mod 11.

The programs for A020919, there is no canonical definition to state claims against.
-/

/-! ## A020919.P16975463076931770004

`A000041(n)%11`
-/

namespace A020919.P16975463076931770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 11

end

end A020919.P16975463076931770004

/-! ## A020919.P7735699251319904390

`∑[A002865(n)]%11`
-/

namespace A020919.P7735699251319904390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 11

end

end A020919.P7735699251319904390

/-! ## A020919.P133144910903866223

`(A000065(n)+1)%11`
-/

namespace A020919.P133144910903866223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n + 1) 11

end

end A020919.P133144910903866223

/-! ## A020919.P7459148814483619815

`(A047967(n)+A000009(n))%11`
-/

namespace A020919.P7459148814483619815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047967 n + A000009 n) 11

end

end A020919.P7459148814483619815

/-! ## A020919.P13672821650547884091

`(A295341(n)+A000726(n))%11`
-/

namespace A020919.P13672821650547884091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295341 n + A000726 n) 11

end

end A020919.P13672821650547884091

/-! ## A020919.P9776531545249210259

`(A139582(n)/2)%11`
-/

namespace A020919.P9776531545249210259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)) 11

end

end A020919.P9776531545249210259

/-! ## A020919.P4632984069688233108

`A035363(2*n)%11`
-/

namespace A020919.P4632984069688233108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 11

end

end A020919.P4632984069688233108

/-! ## A020919.P14391552484230075893

`sqrt(A001255(n))%11`
-/

namespace A020919.P14391552484230075893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))) 11

end

end A020919.P14391552484230075893

/-! ## A020919.P6611358378237518893

`(A143229(n)/A000070(n))%11`
-/

namespace A020919.P6611358378237518893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A143229 n : ℚ) / (A000070 n : ℚ))) 11

end

end A020919.P6611358378237518893

/-! ## A020919.P16547665295502688924

`(A332281(n)+A332280(n))%11`
-/

namespace A020919.P16547665295502688924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332281 n + A332280 n) 11

end

end A020919.P16547665295502688924

/-! ## A020919.P4933082650155933783

`(A325833(n)+A325832(n))%11`
-/

namespace A020919.P4933082650155933783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325833 n + A325832 n) 11

end

end A020919.P4933082650155933783

/-! ## A020919.P13400089438607504844

`(A325834(n)+A325831(n))%11`
-/

namespace A020919.P13400089438607504844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325834 n + A325831 n) 11

end

end A020919.P13400089438607504844

/-! ## A020919.P15918412159811530351

`(A332284(n)+A332283(n))%11`
-/

namespace A020919.P15918412159811530351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332284 n + A332283 n) 11

end

end A020919.P15918412159811530351

/-! ## A020919.P5699127149006788975

`A054225(∑[n])%11`
-/

namespace A020919.P5699127149006788975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054225 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A020919.P5699127149006788975

/-! ## A020919.P5136011187235195379

`A103923(∑[n])%11`
-/

namespace A020919.P5136011187235195379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103923 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A020919.P5136011187235195379

/-! ## A020919.P17613927430248001332

`A183568(∑[n])%11`
-/

namespace A020919.P17613927430248001332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183568 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A020919.P17613927430248001332

/-! ## A020919.P9458700732268158229

`A194543(∑[n])%11`
-/

namespace A020919.P9458700732268158229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194543 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A020919.P9458700732268158229

/-! ## A020919.P4670833451757832475

`A026794(∑[n]+1)%11`
-/

namespace A020919.P4670833451757832475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 11

end

end A020919.P4670833451757832475

/-! ## A020919.P1348663369716317227

`A194621(A000096(n))%11`
-/

namespace A020919.P1348663369716317227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194621 (A000096 n).toNat) 11

end

end A020919.P1348663369716317227

/-! ## A020919.P5495463750105199083

`A091438(eq[A002262(n), A010054(n+1)])%11`
-/

namespace A020919.P5495463750105199083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091438 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)) 11

end

end A020919.P5495463750105199083

/-!
# A020920: Expansion of 1/(1-4*x)^(9/2).

The programs for A020920, the canonical program `A020920.P5795876076365594536` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020920 has offset 0).

The definition of A020920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020920.P5795876076365594536

`A000332(n+4)*A000984(n+4)/70`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020920

/-- `A000332(n+4)*A000984(n+4)/70` -/
def P5795876076365594536.Spec : Prop :=
  ∀ n, P5795876076365594536.a n = (A020920 n : ℚ)

end A020920

/-! ## A020920.P11283369029421761505

`C(n+4, 4)*C(2*(n+4), n+4)/70`
-/

namespace A020920.P11283369029421761505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 * Nat.choose (2 * (n + 4)) (n + 4) : ℚ) / 70

end

end A020920.P11283369029421761505

namespace A020920

/-- `C(n+4, 4)*C(2*(n+4), n+4)/70` -/
def P11283369029421761505.Spec : Prop :=
  ∀ n, P11283369029421761505.a n = (A020920 n : ℚ)

end A020920

/-! ## A020920.P1473219918078935637

`(14/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020920.P1473219918078935637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (14 / (n : ℚ) + 4) * a (n - 1)

end

end A020920.P1473219918078935637

namespace A020920

/-- `(14/n+4)*a(n-1)` -/
def P1473219918078935637.Spec : Prop :=
  ∀ n, P1473219918078935637.a n = (A020920 n : ℚ)

end A020920

/-! ## A020920.P17142426726087023875

`A046521(A155212(n)+12)`
-/

namespace A020920.P17142426726087023875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A155212 n + 12).toNat

end

end A020920.P17142426726087023875

namespace A020920

/-- `A046521(A155212(n)+12)` -/
def P17142426726087023875.Spec : Prop :=
  ∀ n, P17142426726087023875.a n = A020920 n

end A020920

/-! ## A020920.P15525439288836860594

`A046521(A134869(n+4)+3)`
-/

namespace A020920.P15525439288836860594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A134869 (n + 4) + 3).toNat

end

end A020920.P15525439288836860594

namespace A020920

/-- `A046521(A134869(n+4)+3)` -/
def P15525439288836860594.Spec : Prop :=
  ∀ n, P15525439288836860594.a n = A020920 n

end A020920

/-! ## A020920.P15313186485066606657

`A046521(A000124(A020705(n))+3)`
-/

namespace A020920.P15313186485066606657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000124 (A020705 n).toNat + 3).toNat

end

end A020920.P15313186485066606657

namespace A020920

/-- `A046521(A000124(A020705(n))+3)` -/
def P15313186485066606657.Spec : Prop :=
  ∀ n, P15313186485066606657.a n = A020920 n

end A020920

/-! ## A020920.P17816051937110153014

`A000079(n)/A000142(n)*A051581(n)`
-/

namespace A020920.P17816051937110153014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000142 n : ℚ) * (A051581 n : ℚ)

end

end A020920.P17816051937110153014

namespace A020920

/-- `A000079(n)/A000142(n)*A051581(n)` -/
def P17816051937110153014.Spec : Prop :=
  ∀ n, P17816051937110153014.a n = (A020920 n : ℚ)

end A020920

/-!
# A020921: Triangle read by rows: T(m,n) = number of solutions to 1 <= a(1) < a(2) < ... < a(m) <= n, where gcd( a(1), a(2), ..., a(m), n) = 1.

The programs for A020921, there is no canonical definition to state claims against.
-/

/-! ## A020921.P5356121532330002705

`A030102(A005246(n))%A133138(n)`
-/

namespace A020921.P5356121532330002705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030102 (A005246 n).toNat) (A133138 n)

end

end A020921.P5356121532330002705

/-! ## A020921.P14516944977178512635

`A261897(A049084(A038503(n))+n)`
-/

namespace A020921.P14516944977178512635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261897 (A049084 (A038503 n).toNat + (n : ℤ)).toNat

end

end A020921.P14516944977178512635

/-! ## A020921.P515661998262302638

`A261897(n)-A014057(A014073(n))`
-/

namespace A020921.P515661998262302638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261897 n - A014057 (A014073 n).toNat

end

end A020921.P515661998262302638

/-! ## A020921.P10030597791046899102

`A261897(n)-A049084(A038503(n))`
-/

namespace A020921.P10030597791046899102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261897 n - A049084 (A038503 n).toNat

end

end A020921.P10030597791046899102

/-! ## A020921.P6353414833821464045

`gcd(A062849(A132318(n)), A261897(n))`
-/

namespace A020921.P6353414833821464045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062849 (A132318 n).toNat) (A261897 n)

end

end A020921.P6353414833821464045

/-!
# A020922: Expansion of 1/(1-4*x)^(11/2).

The programs for A020922, the canonical program `A020922.P2919906005093826801` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020922 has offset 0).

The definition of A020922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020922.P2919906005093826801

`C(n+5, 5)*C(2*n+10, n+5)/252`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020922

/-- `C(n+5, 5)*C(2*n+10, n+5)/252` -/
def P2919906005093826801.Spec : Prop :=
  ∀ n, P2919906005093826801.a n = (A020922 n : ℚ)

end A020922

/-! ## A020922.P6263073024939943272

`(18/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020922.P6263073024939943272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (18 / (n : ℚ) + 4) * a (n - 1)

end

end A020922.P6263073024939943272

namespace A020922

/-- `(18/n+4)*a(n-1)` -/
def P6263073024939943272.Spec : Prop :=
  ∀ n, P6263073024939943272.a n = (A020922 n : ℚ)

end A020922

/-! ## A020922.P13658672459938884608

`A020920(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A020922.P13658672459938884608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020920 n + 4 * a (n - 1)

end

end A020922.P13658672459938884608

namespace A020922

/-- `A020920(n)+4*a(n-1)` -/
def P13658672459938884608.Spec : Prop :=
  ∀ n, P13658672459938884608.a n = A020922 n

end A020922

/-! ## A020922.P15792527032105300797

`(A045530(n)+A045505(n))/2`
-/

namespace A020922.P15792527032105300797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045530 n + A045505 n : ℚ) / 2

end

end A020922.P15792527032105300797

namespace A020922

/-- `(A045530(n)+A045505(n))/2` -/
def P15792527032105300797.Spec : Prop :=
  ∀ n, P15792527032105300797.a n = (A020922 n : ℚ)

end A020922

/-! ## A020922.P632303088939019595

`A046521(A167499(n+4))`
-/

namespace A020922.P632303088939019595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A167499 (n + 4)).toNat

end

end A020922.P632303088939019595

namespace A020922

/-- `A046521(A167499(n+4))` -/
def P632303088939019595.Spec : Prop :=
  ∀ n, P632303088939019595.a n = A020922 n

end A020922

/-! ## A020922.P5829547363114663199

`A046521(A167614(n+4)+2)`
-/

namespace A020922.P5829547363114663199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A167614 (n + 4) + 2).toNat

end

end A020922.P5829547363114663199

namespace A020922

/-- `A046521(A167614(n+4)+2)` -/
def P5829547363114663199.Spec : Prop :=
  ∀ n, P5829547363114663199.a n = A020922 n

end A020922

/-! ## A020922.P8683535059650732878

`A046521(A046691(n+3)+9)`
-/

namespace A020922.P8683535059650732878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A046691 (n + 3) + 9).toNat

end

end A020922.P8683535059650732878

namespace A020922

/-- `A046521(A046691(n+3)+9)` -/
def P8683535059650732878.Spec : Prop :=
  ∀ n, P8683535059650732878.a n = A020922 n

end A020922

/-! ## A020922.P15169606925075837713

`A054335(A167499(n+9)+5)`
-/

namespace A020922.P15169606925075837713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A167499 (n + 9) + 5).toNat

end

end A020922.P15169606925075837713

namespace A020922

/-- `A054335(A167499(n+9)+5)` -/
def P15169606925075837713.Spec : Prop :=
  ∀ n, P15169606925075837713.a n = A020922 n

end A020922

/-! ## A020922.P13959550344389997374

`A000079(n)/A000142(n)*A051583(n)`
-/

namespace A020922.P13959550344389997374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000142 n : ℚ) * (A051583 n : ℚ)

end

end A020922.P13959550344389997374

namespace A020922

/-- `A000079(n)/A000142(n)*A051583(n)` -/
def P13959550344389997374.Spec : Prop :=
  ∀ n, P13959550344389997374.a n = (A020922 n : ℚ)

end A020922

/-!
# A020923: Expansion of (1-4*x)^(11/2).

The programs for A020923, the canonical program `A020923.P12376248417018319819` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020923 has offset 0).

The definition of A020923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020923.P12376248417018319819

`(4-26/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020923

/-- `(4-26/n)*a(n-1)` -/
def P12376248417018319819.Spec : Prop :=
  ∀ n, P12376248417018319819.a n = (A020923 n : ℚ)

end A020923

/-!
# A020924: Expansion of 1/(1-4*x)^(13/2).

The programs for A020924, the canonical program `A020924.P14750914322817755946` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020924 has offset 0).

The definition of A020924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020924.P14750914322817755946

`C(n+6, n)*C(2*n+12, n+6)/924`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020924

/-- `C(n+6, n)*C(2*n+12, n+6)/924` -/
def P14750914322817755946.Spec : Prop :=
  ∀ n, P14750914322817755946.a n = (A020924 n : ℚ)

end A020924

/-! ## A020924.P3712549476851290868

`(22/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020924.P3712549476851290868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (22 / (n : ℚ) + 4) * a (n - 1)

end

end A020924.P3712549476851290868

namespace A020924

/-- `(22/n+4)*a(n-1)` -/
def P3712549476851290868.Spec : Prop :=
  ∀ n, P3712549476851290868.a n = (A020924 n : ℚ)

end A020924

/-! ## A020924.P4304702597586589457

`A046521(A000124(n+6)+5)`
-/

namespace A020924.P4304702597586589457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000124 (n + 6) + 5).toNat

end

end A020924.P4304702597586589457

namespace A020924

/-- `A046521(A000124(n+6)+5)` -/
def P4304702597586589457.Spec : Prop :=
  ∀ n, P4304702597586589457.a n = A020924 n

end A020924

/-! ## A020924.P17881689501846181631

`A046521(A000096(n+5)+7)`
-/

namespace A020924.P17881689501846181631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000096 (n + 5) + 7).toNat

end

end A020924.P17881689501846181631

namespace A020924

/-- `A046521(A000096(n+5)+7)` -/
def P17881689501846181631.Spec : Prop :=
  ∀ n, P17881689501846181631.a n = A020924 n

end A020924

/-! ## A020924.P4952783451536224871

`A046521(A000217(n+6)+6)`
-/

namespace A020924.P4952783451536224871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000217 (n + 6) + 6).toNat

end

end A020924.P4952783451536224871

namespace A020924

/-- `A046521(A000217(n+6)+6)` -/
def P4952783451536224871.Spec : Prop :=
  ∀ n, P4952783451536224871.a n = A020924 n

end A020924

/-! ## A020924.P5912959431787888071

`A054335(A055999(n+9)+18)`
-/

namespace A020924.P5912959431787888071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A055999 (n + 9) + 18).toNat

end

end A020924.P5912959431787888071

namespace A020924

/-- `A054335(A055999(n+9)+18)` -/
def P5912959431787888071.Spec : Prop :=
  ∀ n, P5912959431787888071.a n = A020924 n

end A020924

/-!
# A020925: Expansion of (1-4*x)^(13/2).

The programs for A020925, the canonical program `A020925.P8413535355589779` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020925 has offset 0).

The definition of A020925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020925.P8413535355589779

`(4-30/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020925

/-- `(4-30/n)*a(n-1)` -/
def P8413535355589779.Spec : Prop :=
  ∀ n, P8413535355589779.a n = (A020925 n : ℚ)

end A020925

/-!
# A020926: Expansion of 1/(1-4*x)^(15/2).

The programs for A020926, the canonical program `A020926.P16269317380990740630` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020926 has offset 0).

The definition of A020926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020926.P16269317380990740630

`(26/n+4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020926

/-- `(26/n+4)*a(n-1)` -/
def P16269317380990740630.Spec : Prop :=
  ∀ n, P16269317380990740630.a n = (A020926 n : ℚ)

end A020926

/-! ## A020926.P7866141135956667358

`A046521(A000096(n+6)+8)`
-/

namespace A020926.P7866141135956667358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000096 (n + 6) + 8).toNat

end

end A020926.P7866141135956667358

namespace A020926

/-- `A046521(A000096(n+6)+8)` -/
def P7866141135956667358.Spec : Prop :=
  ∀ n, P7866141135956667358.a n = A020926 n

end A020926

/-! ## A020926.P10177300242782474097

`A046521(A000217(n+7)+7)`
-/

namespace A020926.P10177300242782474097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000217 (n + 7) + 7).toNat

end

end A020926.P10177300242782474097

namespace A020926

/-- `A046521(A000217(n+7)+7)` -/
def P10177300242782474097.Spec : Prop :=
  ∀ n, P10177300242782474097.a n = A020926 n

end A020926

/-! ## A020926.P14466558911624318250

`A046521(A052905(n+6)-A004273(n+3))`
-/

namespace A020926.P14466558911624318250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A052905 (n + 6) - A004273 (n + 3)).toNat

end

end A020926.P14466558911624318250

namespace A020926

/-- `A046521(A052905(n+6)-A004273(n+3))` -/
def P14466558911624318250.Spec : Prop :=
  ∀ n, P14466558911624318250.a n = A020926 n

end A020926

/-! ## A020926.P4324540906037053870

`A046521(A000124(n+9)-A004273(n+6))`
-/

namespace A020926.P4324540906037053870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000124 (n + 9) - A004273 (n + 6)).toNat

end

end A020926.P4324540906037053870

namespace A020926

/-- `A046521(A000124(n+9)-A004273(n+6))` -/
def P4324540906037053870.Spec : Prop :=
  ∀ n, P4324540906037053870.a n = A020926 n

end A020926

/-!
# A020927: Expansion of (1-4*x)^(15/2).

The programs for A020927, the canonical program `A020927.P6604622262232855987` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020927 has offset 0).

The definition of A020927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020927.P6604622262232855987

`(4-34/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020927

/-- `(4-34/n)*a(n-1)` -/
def P6604622262232855987.Spec : Prop :=
  ∀ n, P6604622262232855987.a n = (A020927 n : ℚ)

end A020927

/-!
# A020928: Expansion of 1/(1-4*x)^(17/2).

The programs for A020928, the canonical program `A020928.P11215664309314958996` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020928 has offset 0).

The definition of A020928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020928.P11215664309314958996

`(30/n+4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020928

/-- `(30/n+4)*a(n-1)` -/
def P11215664309314958996.Spec : Prop :=
  ∀ n, P11215664309314958996.a n = (A020928 n : ℚ)

end A020928

/-! ## A020928.P1015097074304450692

`A046521(A145018(n+9)+4)`
-/

namespace A020928.P1015097074304450692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A145018 (n + 9) + 4).toNat

end

end A020928.P1015097074304450692

namespace A020928

/-- `A046521(A145018(n+9)+4)` -/
def P1015097074304450692.Spec : Prop :=
  ∀ n, P1015097074304450692.a n = A020928 n

end A020928

/-! ## A020928.P1114066402422832657

`A046521(A000124(n+8)+7)`
-/

namespace A020928.P1114066402422832657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000124 (n + 8) + 7).toNat

end

end A020928.P1114066402422832657

namespace A020928

/-- `A046521(A000124(n+8)+7)` -/
def P1114066402422832657.Spec : Prop :=
  ∀ n, P1114066402422832657.a n = A020928 n

end A020928

/-! ## A020928.P6394053727678633939

`A046521(A000096(n+7)+9)`
-/

namespace A020928.P6394053727678633939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000096 (n + 7) + 9).toNat

end

end A020928.P6394053727678633939

namespace A020928

/-- `A046521(A000096(n+7)+9)` -/
def P6394053727678633939.Spec : Prop :=
  ∀ n, P6394053727678633939.a n = A020928 n

end A020928

/-! ## A020928.P4798293624722375008

`A046521(A000217(n+8)+8)`
-/

namespace A020928.P4798293624722375008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000217 (n + 8) + 8).toNat

end

end A020928.P4798293624722375008

namespace A020928

/-- `A046521(A000217(n+8)+8)` -/
def P4798293624722375008.Spec : Prop :=
  ∀ n, P4798293624722375008.a n = A020928 n

end A020928

/-!
# A020929: Expansion of (1-4*x)^(17/2).

The programs for A020929, the canonical program `A020929.P2526001245165409966` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020929 has offset 0).

The definition of A020929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020929.P2526001245165409966

`(4-38/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020929

/-- `(4-38/n)*a(n-1)` -/
def P2526001245165409966.Spec : Prop :=
  ∀ n, P2526001245165409966.a n = (A020929 n : ℚ)

end A020929

/-!
# A020930: Expansion of 1/(1-4*x)^(19/2).

The programs for A020930, the canonical program `A020930.P13865184887462671172` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020930 has offset 0).

The definition of A020930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020930.P13865184887462671172

`(34/n+4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020930

/-- `(34/n+4)*a(n-1)` -/
def P13865184887462671172.Spec : Prop :=
  ∀ n, P13865184887462671172.a n = (A020930 n : ℚ)

end A020930

/-! ## A020930.P9253304797807387245

`A046521(A000096(n+8)+10)`
-/

namespace A020930.P9253304797807387245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000096 (n + 8) + 10).toNat

end

end A020930.P9253304797807387245

namespace A020930

/-- `A046521(A000096(n+8)+10)` -/
def P9253304797807387245.Spec : Prop :=
  ∀ n, P9253304797807387245.a n = A020930 n

end A020930

/-! ## A020930.P13909960650342245187

`A046521(A000217(n+9)+9)`
-/

namespace A020930.P13909960650342245187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000217 (n + 9) + 9).toNat

end

end A020930.P13909960650342245187

namespace A020930

/-- `A046521(A000217(n+9)+9)` -/
def P13909960650342245187.Spec : Prop :=
  ∀ n, P13909960650342245187.a n = A020930 n

end A020930

/-! ## A020930.P6378592791747312002

`A046521(A000124(n+10)-(n+2))`
-/

namespace A020930.P6378592791747312002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A020930.P6378592791747312002

namespace A020930

/-- `A046521(A000124(n+10)-(n+2))` -/
def P6378592791747312002.Spec : Prop :=
  ∀ n, P6378592791747312002.a n = A020930 n

end A020930

/-! ## A020930.P12751638389286920201

`A046521(A052905(n+8)-A004273(n+4))`
-/

namespace A020930.P12751638389286920201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A052905 (n + 8) - A004273 (n + 4)).toNat

end

end A020930.P12751638389286920201

namespace A020930

/-- `A046521(A052905(n+8)-A004273(n+4))` -/
def P12751638389286920201.Spec : Prop :=
  ∀ n, P12751638389286920201.a n = A020930 n

end A020930

/-!
# A020931: Expansion of (1-4*x)^(19/2).

The programs for A020931, the canonical program `A020931.P5574804769209732476` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020931 has offset 0).

The definition of A020931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020931.P5574804769209732476

`(4-42/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020931

/-- `(4-42/n)*a(n-1)` -/
def P5574804769209732476.Spec : Prop :=
  ∀ n, P5574804769209732476.a n = (A020931 n : ℚ)

end A020931

/-!
# A020932: Expansion of 1/(1-4*x)^(21/2).

The programs for A020932, the canonical program `A020932.P5554162202545265773` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020932 has offset 0).

The definition of A020932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020932.P5554162202545265773

`(38/n+4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020932

/-- `(38/n+4)*a(n-1)` -/
def P5554162202545265773.Spec : Prop :=
  ∀ n, P5554162202545265773.a n = (A020932 n : ℚ)

end A020932

/-! ## A020932.P11441438259688782862

`A046521(A167499(n+9)+5)`
-/

namespace A020932.P11441438259688782862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A167499 (n + 9) + 5).toNat

end

end A020932.P11441438259688782862

namespace A020932

/-- `A046521(A167499(n+9)+5)` -/
def P11441438259688782862.Spec : Prop :=
  ∀ n, P11441438259688782862.a n = A020932 n

end A020932

/-! ## A020932.P9587900676349805605

`A046521(A000217(n+10)+10)`
-/

namespace A020932.P9587900676349805605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A000217 (n + 10) + 10).toNat

end

end A020932.P9587900676349805605

namespace A020932

/-- `A046521(A000217(n+10)+10)` -/
def P9587900676349805605.Spec : Prop :=
  ∀ n, P9587900676349805605.a n = A020932 n

end A020932

/-! ## A020932.P3914230568403127888

`A046521(A017317(n+6)+A000124(n))`
-/

namespace A020932.P3914230568403127888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A017317 (n + 6) + A000124 n).toNat

end

end A020932.P3914230568403127888

namespace A020932

/-- `A046521(A017317(n+6)+A000124(n))` -/
def P3914230568403127888.Spec : Prop :=
  ∀ n, P3914230568403127888.a n = A020932 n

end A020932

/-! ## A020932.P12548455276705702139

`A046521(A004767(n+10)+A000124(n+6))`
-/

namespace A020932.P12548455276705702139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 (A004767 (n + 10) + A000124 (n + 6)).toNat

end

end A020932.P12548455276705702139

namespace A020932

/-- `A046521(A004767(n+10)+A000124(n+6))` -/
def P12548455276705702139.Spec : Prop :=
  ∀ n, P12548455276705702139.a n = A020932 n

end A020932

/-!
# A020933: Expansion of (1-4*x)^(21/2).

The programs for A020933, the canonical program `A020933.P15604795091470624970` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020933 has offset 0).

The definition of A020933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020933.P15604795091470624970

`(4-46/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020933

/-- `(4-46/n)*a(n-1)` -/
def P15604795091470624970.Spec : Prop :=
  ∀ n, P15604795091470624970.a n = (A020933 n : ℚ)

end A020933

/-!
# A020934: Greatest k such that (k-th prime) < (4 times n-th prime).

The programs for A020934, the canonical program `A020934.P7643348161234849820` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020934 has offset 1).

The definition of A020934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020934.P9339839976458675404

`A000720(A001749(1+n))`
-/

namespace A020934.P9339839976458675404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (1 + n)).toNat

end

end A020934.P9339839976458675404

namespace A020934

/-- `A000720(A001749(1+n))` -/
def P9339839976458675404.Spec : Prop :=
  ∀ n, P9339839976458675404.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P878405973046640723

`A000720(A370010(n+1))`
-/

namespace A020934.P878405973046640723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A370010 (n + 1)).toNat

end

end A020934.P878405973046640723

namespace A020934

/-- `A000720(A370010(n+1))` -/
def P878405973046640723.Spec : Prop :=
  ∀ n, P878405973046640723.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P7643348161234849820

`A099801(A076274(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A020934

/-- `A099801(A076274(n+2))` -/
def P7643348161234849820.Spec : Prop :=
  ∀ n, P7643348161234849820.a n = A020934 (n + 1)

theorem P7643348161234849820.correct : P7643348161234849820.Spec := by
  intro n
  simp only [A020934, Nat.add_sub_cancel]

end A020934

/-! ## A020934.P10607353854567332066

`A000720(Δ[4*A007504(n)])`
-/

namespace A020934.P10607353854567332066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020934.P10607353854567332066

namespace A020934

/-- `A000720(Δ[4*A007504(n)])` -/
def P10607353854567332066.Spec : Prop :=
  ∀ n, P10607353854567332066.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P18246294856648547571

`A000720(2*A100484(n+1))`
-/

namespace A020934.P18246294856648547571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A100484 (n + 1)).toNat

end

end A020934.P18246294856648547571

namespace A020934

/-- `A000720(2*A100484(n+1))` -/
def P18246294856648547571.Spec : Prop :=
  ∀ n, P18246294856648547571.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P3938822154852514841

`A000720(2*A001747(n+2))`
-/

namespace A020934.P3938822154852514841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A001747 (n + 2)).toNat

end

end A020934.P3938822154852514841

namespace A020934

/-- `A000720(2*A001747(n+2))` -/
def P3938822154852514841.Spec : Prop :=
  ∀ n, P3938822154852514841.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P9981540384517100747

`A000720(4*A000040(n+1))`
-/

namespace A020934.P9981540384517100747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * A000040 (n + 1)).toNat

end

end A020934.P9981540384517100747

namespace A020934

/-- `A000720(4*A000040(n+1))` -/
def P9981540384517100747.Spec : Prop :=
  ∀ n, P9981540384517100747.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P1095993071369756092

`A000720(4*A008578(n+2))`
-/

namespace A020934.P1095993071369756092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * A008578 (n + 2)).toNat

end

end A020934.P1095993071369756092

namespace A020934

/-- `A000720(4*A008578(n+2))` -/
def P1095993071369756092.Spec : Prop :=
  ∀ n, P1095993071369756092.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P5705497886303159277

`A000720(4*sqrt(A001248(n+1)))`
-/

namespace A020934.P5705497886303159277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (4 * Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A020934.P5705497886303159277

namespace A020934

/-- `A000720(4*sqrt(A001248(n+1)))` -/
def P5705497886303159277.Spec : Prop :=
  ∀ n, P5705497886303159277.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P2456505591374474953

`A000720(record[4*A006530(n+2)])`
-/

namespace A020934.P2456505591374474953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020934.P2456505591374474953

namespace A020934

/-- `A000720(record[4*A006530(n+2)])` -/
def P2456505591374474953.Spec : Prop :=
  ∀ n, P2456505591374474953.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P70977850151480213

`A000720(4*record[A020639(n+2)])`
-/

namespace A020934.P70977850151480213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020934.P70977850151480213

namespace A020934

/-- `A000720(4*record[A020639(n+2)])` -/
def P70977850151480213.Spec : Prop :=
  ∀ n, P70977850151480213.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P14775917488184046425

`A099801(2*A006093(n+1)+1)`
-/

namespace A020934.P14775917488184046425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * A006093 (n + 1) + 1).toNat

end

end A020934.P14775917488184046425

namespace A020934

/-- `A099801(2*A006093(n+1)+1)` -/
def P14775917488184046425.Spec : Prop :=
  ∀ n, P14775917488184046425.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P12100325344377502798

`A000720(2*(A037168(n+1)+2))`
-/

namespace A020934.P12100325344377502798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (A037168 (n + 1) + 2)).toNat

end

end A020934.P12100325344377502798

namespace A020934

/-- `A000720(2*(A037168(n+1)+2))` -/
def P12100325344377502798.Spec : Prop :=
  ∀ n, P12100325344377502798.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P9983033753864578654

`A000720(2*(A072055(n+1)-1))`
-/

namespace A020934.P9983033753864578654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (A072055 (n + 1) - 1)).toNat

end

end A020934.P9983033753864578654

namespace A020934

/-- `A000720(2*(A072055(n+1)-1))` -/
def P9983033753864578654.Spec : Prop :=
  ∀ n, P9983033753864578654.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P98535321078015264

`A099801(2*A000040(n+1)-1)`
-/

namespace A020934.P98535321078015264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * A000040 (n + 1) - 1).toNat

end

end A020934.P98535321078015264

namespace A020934

/-- `A099801(2*A000040(n+1)-1)` -/
def P98535321078015264.Spec : Prop :=
  ∀ n, P98535321078015264.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P1994274435664474581

`A000720(4*record[A000010(n+1)+1])`
-/

namespace A020934.P1994274435664474581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020934.P1994274435664474581

namespace A020934

/-- `A000720(4*record[A000010(n+1)+1])` -/
def P1994274435664474581.Spec : Prop :=
  ∀ n, P1994274435664474581.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P1218929634887364396

`A099801(A006093(n+1)+A000040(n+1))`
-/

namespace A020934.P1218929634887364396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A006093 (n + 1) + A000040 (n + 1)).toNat

end

end A020934.P1218929634887364396

namespace A020934

/-- `A099801(A006093(n+1)+A000040(n+1))` -/
def P1218929634887364396.Spec : Prop :=
  ∀ n, P1218929634887364396.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P7368974939768480727

`A000720(A100484(n+1)+A100484(n+1))`
-/

namespace A020934.P7368974939768480727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + A100484 (n + 1)).toNat

end

end A020934.P7368974939768480727

namespace A020934

/-- `A000720(A100484(n+1)+A100484(n+1))` -/
def P7368974939768480727.Spec : Prop :=
  ∀ n, P7368974939768480727.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P8553821162665344143

`A000720(A001750(n+1)-A000040(n+1))`
-/

namespace A020934.P8553821162665344143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001750 (n + 1) - A000040 (n + 1)).toNat

end

end A020934.P8553821162665344143

namespace A020934

/-- `A000720(A001750(n+1)-A000040(n+1))` -/
def P8553821162665344143.Spec : Prop :=
  ∀ n, P8553821162665344143.a n = A020934 (n + 1)

end A020934

/-! ## A020934.P2287263281241738941

`A000720(A075520(n+1)-A039702(n+1))`
-/

namespace A020934.P2287263281241738941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075520 (n + 1) - A039702 (n + 1)).toNat

end

end A020934.P2287263281241738941

namespace A020934

/-- `A000720(A075520(n+1)-A039702(n+1))` -/
def P2287263281241738941.Spec : Prop :=
  ∀ n, P2287263281241738941.a n = A020934 (n + 1)

end A020934

/-!
# A020935: Greatest k such that (k-th prime) < (5 times n-th prime).

The programs for A020935, the canonical program `A020935.P6573045777744063489` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020935 has offset 1).

The definition of A020935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020935.P6573045777744063489

`A000720(5*A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020935

/-- `A000720(5*A000040(n+1))` -/
def P6573045777744063489.Spec : Prop :=
  ∀ n, P6573045777744063489.a n = A020935 (n + 1)

theorem P6573045777744063489.correct : P6573045777744063489.Spec := by
  intro n
  simp only [A020935, Nat.add_sub_cancel]

end A020935

/-! ## A020935.P15795962960169895325

`A000720(A001750(1+n))`
-/

namespace A020935.P15795962960169895325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001750 (1 + n)).toNat

end

end A020935.P15795962960169895325

namespace A020935

/-- `A000720(A001750(1+n))` -/
def P15795962960169895325.Spec : Prop :=
  ∀ n, P15795962960169895325.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P10178015222149149647

`A000720(Δ[5*A007504(n)])`
-/

namespace A020935.P10178015222149149647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020935.P10178015222149149647

namespace A020935

/-- `A000720(Δ[5*A007504(n)])` -/
def P10178015222149149647.Spec : Prop :=
  ∀ n, P10178015222149149647.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P1369569413787895845

`A000720(A142342(n+1)/2)`
-/

namespace A020935.P1369569413787895845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A142342 (n + 1) : ℚ) / 2)).toNat

end

end A020935.P1369569413787895845

namespace A020935

/-- `A000720(A142342(n+1)/2)` -/
def P1369569413787895845.Spec : Prop :=
  ∀ n, P1369569413787895845.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P12607870981356756021

`A000720(5*A008578(n+2))`
-/

namespace A020935.P12607870981356756021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * A008578 (n + 2)).toNat

end

end A020935.P12607870981356756021

namespace A020935

/-- `A000720(5*A008578(n+2))` -/
def P12607870981356756021.Spec : Prop :=
  ∀ n, P12607870981356756021.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P10187847049500615614

`A000720(5*A182986(n+2))`
-/

namespace A020935.P10187847049500615614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * A182986 (n + 2)).toNat

end

end A020935.P10187847049500615614

namespace A020935

/-- `A000720(5*A182986(n+2))` -/
def P10187847049500615614.Spec : Prop :=
  ∀ n, P10187847049500615614.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P1489845117202431685

`A000720(5*sqrt(A001248(n+1)))`
-/

namespace A020935.P1489845117202431685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (5 * Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A020935.P1489845117202431685

namespace A020935

/-- `A000720(5*sqrt(A001248(n+1)))` -/
def P1489845117202431685.Spec : Prop :=
  ∀ n, P1489845117202431685.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P16699864770603831014

`A000720(5*∑[A054541(n+1)])`
-/

namespace A020935.P16699864770603831014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A020935.P16699864770603831014

namespace A020935

/-- `A000720(5*∑[A054541(n+1)])` -/
def P16699864770603831014.Spec : Prop :=
  ∀ n, P16699864770603831014.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P4447424523557869569

`A000720(record[5*A006530(n+2)])`
-/

namespace A020935.P4447424523557869569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020935.P4447424523557869569

namespace A020935

/-- `A000720(record[5*A006530(n+2)])` -/
def P4447424523557869569.Spec : Prop :=
  ∀ n, P4447424523557869569.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P8914662238359754809

`A000720(5*record[A020639(n+2)])`
-/

namespace A020935.P8914662238359754809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020935.P8914662238359754809

namespace A020935

/-- `A000720(5*record[A020639(n+2)])` -/
def P8914662238359754809.Spec : Prop :=
  ∀ n, P8914662238359754809.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P16296916984822758667

`A000720(5*(A006093(n+1)+1))`
-/

namespace A020935.P16296916984822758667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * (A006093 (n + 1) + 1)).toNat

end

end A020935.P16296916984822758667

namespace A020935

/-- `A000720(5*(A006093(n+1)+1))` -/
def P16296916984822758667.Spec : Prop :=
  ∀ n, P16296916984822758667.a n = A020935 (n + 1)

theorem P16296916984822758667.correct : P16296916984822758667.Spec := by
  intro n
  simp only [A020935, Nat.add_sub_cancel, A020935.P16296916984822758667.a, A020935.P6573045777744063489.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020935

/-! ## A020935.P1885627307656397749

`A000720(5*(A040976(n+1)+2))`
-/

namespace A020935.P1885627307656397749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * (A040976 (n + 1) + 2)).toNat

end

end A020935.P1885627307656397749

namespace A020935

/-- `A000720(5*(A040976(n+1)+2))` -/
def P1885627307656397749.Spec : Prop :=
  ∀ n, P1885627307656397749.a n = A020935 (n + 1)

theorem P1885627307656397749.correct : P1885627307656397749.Spec := by
  intro n
  simp only [A020935, Nat.add_sub_cancel, A020935.P1885627307656397749.a, A020935.P6573045777744063489.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020935

/-! ## A020935.P10220305613460392585

`A000720(5*(eq[2, A000005(n+1)]+1))`
-/

namespace A020935.P10220305613460392585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A020935.P10220305613460392585

namespace A020935

/-- `A000720(5*(eq[2, A000005(n+1)]+1))` -/
def P10220305613460392585.Spec : Prop :=
  ∀ n, P10220305613460392585.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P10091694183230073534

`A000720(A001749(n+1)+A000040(n+1))`
-/

namespace A020935.P10091694183230073534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1) + A000040 (n + 1)).toNat

end

end A020935.P10091694183230073534

namespace A020935

/-- `A000720(A001749(n+1)+A000040(n+1))` -/
def P10091694183230073534.Spec : Prop :=
  ∀ n, P10091694183230073534.a n = A020935 (n + 1)

theorem P10091694183230073534.correct : P10091694183230073534.Spec := by
  intro n
  simp only [A020935, Nat.add_sub_cancel, A020935.P10091694183230073534.a, A020935.P6573045777744063489.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020935

/-! ## A020935.P7795780856813847033

`A000720(A100484(n+1)+A001748(n+1))`
-/

namespace A020935.P7795780856813847033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + A001748 (n + 1)).toNat

end

end A020935.P7795780856813847033

namespace A020935

/-- `A000720(A100484(n+1)+A001748(n+1))` -/
def P7795780856813847033.Spec : Prop :=
  ∀ n, P7795780856813847033.a n = A020935 (n + 1)

theorem P7795780856813847033.correct : P7795780856813847033.Spec := by
  intro n
  simp only [A020935, Nat.add_sub_cancel, A020935.P7795780856813847033.a, A020935.P6573045777744063489.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001748, A001748.P16019639290970068825.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020935

/-! ## A020935.P1344122037258992579

`A000720(A001749(n+1)+A100484(n+1)/2)`
-/

namespace A020935.P1344122037258992579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2)).toNat

end

end A020935.P1344122037258992579

namespace A020935

/-- `A000720(A001749(n+1)+A100484(n+1)/2)` -/
def P1344122037258992579.Spec : Prop :=
  ∀ n, P1344122037258992579.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P1655785253517493222

`A000720(A100484(n+1)+A100484(n+1)+A000040(n+1))`
-/

namespace A020935.P1655785253517493222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + (A100484 (n + 1) + A000040 (n + 1))).toNat

end

end A020935.P1655785253517493222

namespace A020935

/-- `A000720(A100484(n+1)+A100484(n+1)+A000040(n+1))` -/
def P1655785253517493222.Spec : Prop :=
  ∀ n, P1655785253517493222.a n = A020935 (n + 1)

theorem P1655785253517493222.correct : P1655785253517493222.Spec := by
  intro n
  simp only [A020935, Nat.add_sub_cancel, A020935.P1655785253517493222.a, A020935.P6573045777744063489.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020935

/-! ## A020935.P5653986806095737236

`A000720(record[5*A051698(n)])`
-/

namespace A020935.P5653986806095737236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020935.P5653986806095737236

namespace A020935

/-- `A000720(record[5*A051698(n)])` -/
def P5653986806095737236.Spec : Prop :=
  ∀ n, P5653986806095737236.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P15800058685854882608

`A000720(record[5*A014963(n+2)])`
-/

namespace A020935.P15800058685854882608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020935.P15800058685854882608

namespace A020935

/-- `A000720(record[5*A014963(n+2)])` -/
def P15800058685854882608.Spec : Prop :=
  ∀ n, P15800058685854882608.a n = A020935 (n + 1)

end A020935

/-! ## A020935.P1233203067103863383

`A061009(5*A000040(n+1))`
-/

namespace A020935.P1233203067103863383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061009 (5 * A000040 (n + 1)).toNat

end

end A020935.P1233203067103863383

namespace A020935

/-- `A061009(5*A000040(n+1))` -/
def P1233203067103863383.Spec : Prop :=
  ∀ n, P1233203067103863383.a n = A020935 (n + 1)

end A020935

/-!
# A020936: Greatest k such that (k-th prime) < (6 times n-th prime).

The programs for A020936, the canonical program `A020936.P1853754602566167102` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020936 has offset 1).

The definition of A020936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020936.P9838952023222288417

`A000720(A138636(n+1))`
-/

namespace A020936.P9838952023222288417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138636 (n + 1)).toNat

end

end A020936.P9838952023222288417

namespace A020936

/-- `A000720(A138636(n+1))` -/
def P9838952023222288417.Spec : Prop :=
  ∀ n, P9838952023222288417.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P15933142864465146363

`A000720(A330410(n+1))`
-/

namespace A020936.P15933142864465146363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A330410 (n + 1)).toNat

end

end A020936.P15933142864465146363

namespace A020936

/-- `A000720(A330410(n+1))` -/
def P15933142864465146363.Spec : Prop :=
  ∀ n, P15933142864465146363.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P1853754602566167102

`A100637(A076274(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A020936

/-- `A100637(A076274(n+2))` -/
def P1853754602566167102.Spec : Prop :=
  ∀ n, P1853754602566167102.a n = A020936 (n + 1)

theorem P1853754602566167102.correct : P1853754602566167102.Spec := by
  intro n
  simp only [A020936, Nat.add_sub_cancel]

end A020936

/-! ## A020936.P11937170863662418041

`A000720(Δ[6*A007504(n)])`
-/

namespace A020936.P11937170863662418041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020936.P11937170863662418041

namespace A020936

/-- `A000720(Δ[6*A007504(n)])` -/
def P11937170863662418041.Spec : Prop :=
  ∀ n, P11937170863662418041.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P7494282590616509762

`A000720(2*A001748(n+1))`
-/

namespace A020936.P7494282590616509762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A001748 (n + 1)).toNat

end

end A020936.P7494282590616509762

namespace A020936

/-- `A000720(2*A001748(n+1))` -/
def P7494282590616509762.Spec : Prop :=
  ∀ n, P7494282590616509762.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P4785455552106455370

`A000720(3*A100484(n+1))`
-/

namespace A020936.P4785455552106455370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * A100484 (n + 1)).toNat

end

end A020936.P4785455552106455370

namespace A020936

/-- `A000720(3*A100484(n+1))` -/
def P4785455552106455370.Spec : Prop :=
  ∀ n, P4785455552106455370.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P7429697185190908048

`A000720(2*A112773(n+2))`
-/

namespace A020936.P7429697185190908048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A112773 (n + 2)).toNat

end

end A020936.P7429697185190908048

namespace A020936

/-- `A000720(2*A112773(n+2))` -/
def P7429697185190908048.Spec : Prop :=
  ∀ n, P7429697185190908048.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P15036649596385624880

`A000720(6*A000040(n+1))`
-/

namespace A020936.P15036649596385624880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * A000040 (n + 1)).toNat

end

end A020936.P15036649596385624880

namespace A020936

/-- `A000720(6*A000040(n+1))` -/
def P15036649596385624880.Spec : Prop :=
  ∀ n, P15036649596385624880.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P5959022053358584338

`A000720(6*A008578(n+2))`
-/

namespace A020936.P5959022053358584338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * A008578 (n + 2)).toNat

end

end A020936.P5959022053358584338

namespace A020936

/-- `A000720(6*A008578(n+2))` -/
def P5959022053358584338.Spec : Prop :=
  ∀ n, P5959022053358584338.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P8679893996452545541

`A100637(2*A006093(n+1)+1)`
-/

namespace A020936.P8679893996452545541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * A006093 (n + 1) + 1).toNat

end

end A020936.P8679893996452545541

namespace A020936

/-- `A100637(2*A006093(n+1)+1)` -/
def P8679893996452545541.Spec : Prop :=
  ∀ n, P8679893996452545541.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P16518688590030622100

`A100637(2*A000040(n+1)-1)`
-/

namespace A020936.P16518688590030622100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * A000040 (n + 1) - 1).toNat

end

end A020936.P16518688590030622100

namespace A020936

/-- `A100637(2*A000040(n+1)-1)` -/
def P16518688590030622100.Spec : Prop :=
  ∀ n, P16518688590030622100.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P5292158134088136507

`A000720(A001750(n+1)+A000040(n+1))`
-/

namespace A020936.P5292158134088136507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001750 (n + 1) + A000040 (n + 1)).toNat

end

end A020936.P5292158134088136507

namespace A020936

/-- `A000720(A001750(n+1)+A000040(n+1))` -/
def P5292158134088136507.Spec : Prop :=
  ∀ n, P5292158134088136507.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P6167924823360519920

`A000720(A001748(n+1)+A001748(n+1))`
-/

namespace A020936.P6167924823360519920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001748 (n + 1) + A001748 (n + 1)).toNat

end

end A020936.P6167924823360519920

namespace A020936

/-- `A000720(A001748(n+1)+A001748(n+1))` -/
def P6167924823360519920.Spec : Prop :=
  ∀ n, P6167924823360519920.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P9416056907032204763

`A000720(A100484(n+1)+A001749(n+1))`
-/

namespace A020936.P9416056907032204763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + A001749 (n + 1)).toNat

end

end A020936.P9416056907032204763

namespace A020936

/-- `A000720(A100484(n+1)+A001749(n+1))` -/
def P9416056907032204763.Spec : Prop :=
  ∀ n, P9416056907032204763.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P7722730495463390816

`A100637(A006093(n+1)+A006093(n+1)+1)`
-/

namespace A020936.P7722730495463390816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A006093 (n + 1) + (A006093 (n + 1) + 1)).toNat

end

end A020936.P7722730495463390816

namespace A020936

/-- `A100637(A006093(n+1)+A006093(n+1)+1)` -/
def P7722730495463390816.Spec : Prop :=
  ∀ n, P7722730495463390816.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P5514214043779593221

`A100637(A000040(n+1)+A000040(n+1)-1)`
-/

namespace A020936.P5514214043779593221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A000040 (n + 1) + (A000040 (n + 1) - 1)).toNat

end

end A020936.P5514214043779593221

namespace A020936

/-- `A100637(A000040(n+1)+A000040(n+1)-1)` -/
def P5514214043779593221.Spec : Prop :=
  ∀ n, P5514214043779593221.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P17091327600305105496

`A099801(A006093(n+1)+2*A000040(n+1))`
-/

namespace A020936.P17091327600305105496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A006093 (n + 1) + 2 * A000040 (n + 1)).toNat

end

end A020936.P17091327600305105496

namespace A020936

/-- `A099801(A006093(n+1)+2*A000040(n+1))` -/
def P17091327600305105496.Spec : Prop :=
  ∀ n, P17091327600305105496.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P17096681951597572988

`A000720(A001749(n+1)+A001749(n+1)/2)`
-/

namespace A020936.P17096681951597572988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) + (A001749 (n + 1) : ℚ) / 2)).toNat

end

end A020936.P17096681951597572988

namespace A020936

/-- `A000720(A001749(n+1)+A001749(n+1)/2)` -/
def P17096681951597572988.Spec : Prop :=
  ∀ n, P17096681951597572988.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P2445209296992895029

`A000720(A000040(n+1)+A001749(n+1)+A000040(n+1))`
-/

namespace A020936.P2445209296992895029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + (A001749 (n + 1) + A000040 (n + 1))).toNat

end

end A020936.P2445209296992895029

namespace A020936

/-- `A000720(A000040(n+1)+A001749(n+1)+A000040(n+1))` -/
def P2445209296992895029.Spec : Prop :=
  ∀ n, P2445209296992895029.a n = A020936 (n + 1)

end A020936

/-! ## A020936.P1969262524449324741

`A099801(A000040(n+1)+A006093(n+1)+A000040(n+1))`
-/

namespace A020936.P1969262524449324741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A000040 (n + 1) + (A006093 (n + 1) + A000040 (n + 1))).toNat

end

end A020936.P1969262524449324741

namespace A020936

/-- `A099801(A000040(n+1)+A006093(n+1)+A000040(n+1))` -/
def P1969262524449324741.Spec : Prop :=
  ∀ n, P1969262524449324741.a n = A020936 (n + 1)

end A020936

/-!
# A020937: Greatest k such that (k-th prime) < (7 times n-th prime).

The programs for A020937, the canonical program `A020937.P3532935446380172557` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020937 has offset 1).

The definition of A020937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020937.P3532935446380172557

`A000720(A272470(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020937

/-- `A000720(A272470(n+1))` -/
def P3532935446380172557.Spec : Prop :=
  ∀ n, P3532935446380172557.a n = A020937 (n + 1)

theorem P3532935446380172557.correct : P3532935446380172557.Spec := by
  intro n
  simp only [A020937, Nat.add_sub_cancel]

end A020937

/-! ## A020937.P6247833023375149648

`A000720(Δ[7*A007504(n)])`
-/

namespace A020937.P6247833023375149648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A020937.P6247833023375149648

namespace A020937

/-- `A000720(Δ[7*A007504(n)])` -/
def P6247833023375149648.Spec : Prop :=
  ∀ n, P6247833023375149648.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P8293973121045915518

`A000720(7*A000040(n+1))`
-/

namespace A020937.P8293973121045915518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (7 * A000040 (n + 1)).toNat

end

end A020937.P8293973121045915518

namespace A020937

/-- `A000720(7*A000040(n+1))` -/
def P8293973121045915518.Spec : Prop :=
  ∀ n, P8293973121045915518.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P14691427171643310469

`A000720(7*A008578(n+2))`
-/

namespace A020937.P14691427171643310469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (7 * A008578 (n + 2)).toNat

end

end A020937.P14691427171643310469

namespace A020937

/-- `A000720(7*A008578(n+2))` -/
def P14691427171643310469.Spec : Prop :=
  ∀ n, P14691427171643310469.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P13822917922598231318

`A000720(abs(Δ[7*A117128(n)]))`
-/

namespace A020937.P13822917922598231318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |f1 (n + 1) - f1 n|.toNat

end

end A020937.P13822917922598231318

namespace A020937

/-- `A000720(abs(Δ[7*A117128(n)]))` -/
def P13822917922598231318.Spec : Prop :=
  ∀ n, P13822917922598231318.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P5555929537451725336

`A000720(7*sqrt(A001248(n+1)))`
-/

namespace A020937.P5555929537451725336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (7 * Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A020937.P5555929537451725336

namespace A020937

/-- `A000720(7*sqrt(A001248(n+1)))` -/
def P5555929537451725336.Spec : Prop :=
  ∀ n, P5555929537451725336.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P9431680160141072155

`A000720(record[7*A006530(n+2)])`
-/

namespace A020937.P9431680160141072155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020937.P9431680160141072155

namespace A020937

/-- `A000720(record[7*A006530(n+2)])` -/
def P9431680160141072155.Spec : Prop :=
  ∀ n, P9431680160141072155.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P13355109312438910960

`A000720(7*record[A020639(n+2)])`
-/

namespace A020937.P13355109312438910960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (7 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020937.P13355109312438910960

namespace A020937

/-- `A000720(7*record[A020639(n+2)])` -/
def P13355109312438910960.Spec : Prop :=
  ∀ n, P13355109312438910960.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P11303339225706935605

`A000720(7*(eq[2, A000005(n+1)]+1))`
-/

namespace A020937.P11303339225706935605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (7 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A020937.P11303339225706935605

namespace A020937

/-- `A000720(7*(eq[2, A000005(n+1)]+1))` -/
def P11303339225706935605.Spec : Prop :=
  ∀ n, P11303339225706935605.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P10524020553618855003

`A000720(A001748(n+1)+2*A100484(n+1))`
-/

namespace A020937.P10524020553618855003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001748 (n + 1) + 2 * A100484 (n + 1)).toNat

end

end A020937.P10524020553618855003

namespace A020937

/-- `A000720(A001748(n+1)+2*A100484(n+1))` -/
def P10524020553618855003.Spec : Prop :=
  ∀ n, P10524020553618855003.a n = A020937 (n + 1)

theorem P10524020553618855003.correct : P10524020553618855003.Spec := by
  intro n
  simp only [A020937, Nat.add_sub_cancel, A020937.P10524020553618855003.a, A020937.P3532935446380172557.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001748, A001748.P16019639290970068825.a, A100484, A100484.P9678625670825099636.a, A272470, A272470.P18354335613044509669.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020937

/-! ## A020937.P15666604404743337235

`A000720(A000040(n+1)+A001750(n+1)+A000040(n+1))`
-/

namespace A020937.P15666604404743337235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + (A001750 (n + 1) + A000040 (n + 1))).toNat

end

end A020937.P15666604404743337235

namespace A020937

/-- `A000720(A000040(n+1)+A001750(n+1)+A000040(n+1))` -/
def P15666604404743337235.Spec : Prop :=
  ∀ n, P15666604404743337235.a n = A020937 (n + 1)

theorem P15666604404743337235.correct : P15666604404743337235.Spec := by
  intro n
  simp only [A020937, Nat.add_sub_cancel, A020937.P15666604404743337235.a, A020937.P3532935446380172557.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, A272470, A272470.P18354335613044509669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020937

/-! ## A020937.P9339077517658863368

`A000720(A100484(n+1)+A100484(n+1)+A001748(n+1))`
-/

namespace A020937.P9339077517658863368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + (A100484 (n + 1) + A001748 (n + 1))).toNat

end

end A020937.P9339077517658863368

namespace A020937

/-- `A000720(A100484(n+1)+A100484(n+1)+A001748(n+1))` -/
def P9339077517658863368.Spec : Prop :=
  ∀ n, P9339077517658863368.a n = A020937 (n + 1)

theorem P9339077517658863368.correct : P9339077517658863368.Spec := by
  intro n
  simp only [A020937, Nat.add_sub_cancel, A020937.P9339077517658863368.a, A020937.P3532935446380172557.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001748, A001748.P16019639290970068825.a, A100484, A100484.P9678625670825099636.a, A272470, A272470.P18354335613044509669.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020937

/-! ## A020937.P253836314423628878

`A000720(A001749(n+1)+A001749(n+1)-A000040(n+1))`
-/

namespace A020937.P253836314423628878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1) + (A001749 (n + 1) - A000040 (n + 1))).toNat

end

end A020937.P253836314423628878

namespace A020937

/-- `A000720(A001749(n+1)+A001749(n+1)-A000040(n+1))` -/
def P253836314423628878.Spec : Prop :=
  ∀ n, P253836314423628878.a n = A020937 (n + 1)

theorem P253836314423628878.correct : P253836314423628878.Spec := by
  intro n
  simp only [A020937, Nat.add_sub_cancel, A020937.P253836314423628878.a, A020937.P3532935446380172557.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001749, A001749.P16106244962881767471.a, A272470, A272470.P18354335613044509669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020937

/-! ## A020937.P4451722595427487602

`A000720(record[7*A051698(n)])`
-/

namespace A020937.P4451722595427487602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020937.P4451722595427487602

namespace A020937

/-- `A000720(record[7*A051698(n)])` -/
def P4451722595427487602.Spec : Prop :=
  ∀ n, P4451722595427487602.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P8186564377541947985

`A000720(7*eq[1, A003415(n)])`
-/

namespace A020937.P8186564377541947985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (7 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020937.P8186564377541947985

namespace A020937

/-- `A000720(7*eq[1, A003415(n)])` -/
def P8186564377541947985.Spec : Prop :=
  ∀ n, P8186564377541947985.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P14474484445868440636

`A000720(record[7*A014963(n+2)])`
-/

namespace A020937.P14474484445868440636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020937.P14474484445868440636

namespace A020937

/-- `A000720(record[7*A014963(n+2)])` -/
def P14474484445868440636.Spec : Prop :=
  ∀ n, P14474484445868440636.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P2323449706749761856

`A230980(7*A000040(n+1))`
-/

namespace A020937.P2323449706749761856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (7 * A000040 (n + 1)).toNat

end

end A020937.P2323449706749761856

namespace A020937

/-- `A230980(7*A000040(n+1))` -/
def P2323449706749761856.Spec : Prop :=
  ∀ n, P2323449706749761856.a n = A020937 (n + 1)

end A020937

/-! ## A020937.P1552365393577131402

`A230980(7*record[A020639(n+2)])`
-/

namespace A020937.P1552365393577131402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (7 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020937.P1552365393577131402

namespace A020937

/-- `A230980(7*record[A020639(n+2)])` -/
def P1552365393577131402.Spec : Prop :=
  ∀ n, P1552365393577131402.a n = A020937 (n + 1)

end A020937

/-!
# A020938: Greatest k such that (k-th prime) < (8 times n-th prime).

The programs for A020938, the canonical program `A020938.P7358569268824993959` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020938 has offset 1).

The definition of A020938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020938.P7358569268824993959

`A000720(Δ[8*A007504(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020938

/-- `A000720(Δ[8*A007504(n)])` -/
def P7358569268824993959.Spec : Prop :=
  ∀ n, P7358569268824993959.a n = A020938 (n + 1)

theorem P7358569268824993959.correct : P7358569268824993959.Spec := by
  intro n
  simp only [A020938, Nat.add_sub_cancel]

end A020938

/-! ## A020938.P13907046047265402351

`A000720(2*A001749(n+1))`
-/

namespace A020938.P13907046047265402351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A001749 (n + 1)).toNat

end

end A020938.P13907046047265402351

namespace A020938

/-- `A000720(2*A001749(n+1))` -/
def P13907046047265402351.Spec : Prop :=
  ∀ n, P13907046047265402351.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P9653367030432582233

`A000720(4*A100484(n+1))`
-/

namespace A020938.P9653367030432582233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * A100484 (n + 1)).toNat

end

end A020938.P9653367030432582233

namespace A020938

/-- `A000720(4*A100484(n+1))` -/
def P9653367030432582233.Spec : Prop :=
  ∀ n, P9653367030432582233.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P16988501024642080075

`A000720(4*A001747(n+2))`
-/

namespace A020938.P16988501024642080075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * A001747 (n + 2)).toNat

end

end A020938.P16988501024642080075

namespace A020938

/-- `A000720(4*A001747(n+2))` -/
def P16988501024642080075.Spec : Prop :=
  ∀ n, P16988501024642080075.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P6399477793354944122

`A000720(8*A000040(n+1))`
-/

namespace A020938.P6399477793354944122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (8 * A000040 (n + 1)).toNat

end

end A020938.P6399477793354944122

namespace A020938

/-- `A000720(8*A000040(n+1))` -/
def P6399477793354944122.Spec : Prop :=
  ∀ n, P6399477793354944122.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P14997272489079367053

`A000720(8*A008578(n+2))`
-/

namespace A020938.P14997272489079367053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (8 * A008578 (n + 2)).toNat

end

end A020938.P14997272489079367053

namespace A020938

/-- `A000720(8*A008578(n+2))` -/
def P14997272489079367053.Spec : Prop :=
  ∀ n, P14997272489079367053.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P2249523919041130345

`A000720(8*A134735(Δ[n²]))`
-/

namespace A020938.P2249523919041130345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (8 * A134735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A020938.P2249523919041130345

namespace A020938

/-- `A000720(8*A134735(Δ[n²]))` -/
def P2249523919041130345.Spec : Prop :=
  ∀ n, P2249523919041130345.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P11527305595806409644

`A000720(A001749(n+1)+A001749(n+1))`
-/

namespace A020938.P11527305595806409644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1) + A001749 (n + 1)).toNat

end

end A020938.P11527305595806409644

namespace A020938

/-- `A000720(A001749(n+1)+A001749(n+1))` -/
def P11527305595806409644.Spec : Prop :=
  ∀ n, P11527305595806409644.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P6368080093486981447

`A000720(2*(A075520(n+1)-A039702(n+1)))`
-/

namespace A020938.P6368080093486981447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (A075520 (n + 1) - A039702 (n + 1))).toNat

end

end A020938.P6368080093486981447

namespace A020938

/-- `A000720(2*(A075520(n+1)-A039702(n+1)))` -/
def P6368080093486981447.Spec : Prop :=
  ∀ n, P6368080093486981447.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P14646800846500320342

`A000720(A001748(n+1)+A100484(n+1)+A001748(n+1))`
-/

namespace A020938.P14646800846500320342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001748 (n + 1) + (A100484 (n + 1) + A001748 (n + 1))).toNat

end

end A020938.P14646800846500320342

namespace A020938

/-- `A000720(A001748(n+1)+A100484(n+1)+A001748(n+1))` -/
def P14646800846500320342.Spec : Prop :=
  ∀ n, P14646800846500320342.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P13085643746884374631

`A000720(A123667(A100484(n+1)))`
-/

namespace A020938.P13085643746884374631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A123667 (A100484 (n + 1)).toNat).toNat

end

end A020938.P13085643746884374631

namespace A020938

/-- `A000720(A123667(A100484(n+1)))` -/
def P13085643746884374631.Spec : Prop :=
  ∀ n, P13085643746884374631.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P6300318222145748366

`A099802(A001749(n+1))`
-/

namespace A020938.P6300318222145748366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A001749 (n + 1)).toNat

end

end A020938.P6300318222145748366

namespace A020938

/-- `A099802(A001749(n+1))` -/
def P6300318222145748366.Spec : Prop :=
  ∀ n, P6300318222145748366.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P2116976499674756428

`A099802(record[4*A051698(n)])`
-/

namespace A020938.P2116976499674756428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020938.P2116976499674756428

namespace A020938

/-- `A099802(record[4*A051698(n)])` -/
def P2116976499674756428.Spec : Prop :=
  ∀ n, P2116976499674756428.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P15180144622553411602

`A099802(2*A100484(n+1))`
-/

namespace A020938.P15180144622553411602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * A100484 (n + 1)).toNat

end

end A020938.P15180144622553411602

namespace A020938

/-- `A099802(2*A100484(n+1))` -/
def P15180144622553411602.Spec : Prop :=
  ∀ n, P15180144622553411602.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P16564913163606297308

`A099802(2*A001747(n+2))`
-/

namespace A020938.P16564913163606297308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * A001747 (n + 2)).toNat

end

end A020938.P16564913163606297308

namespace A020938

/-- `A099802(2*A001747(n+2))` -/
def P16564913163606297308.Spec : Prop :=
  ∀ n, P16564913163606297308.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P4701838494989104005

`A099802(4*A000040(n+1))`
-/

namespace A020938.P4701838494989104005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (4 * A000040 (n + 1)).toNat

end

end A020938.P4701838494989104005

namespace A020938

/-- `A099802(4*A000040(n+1))` -/
def P4701838494989104005.Spec : Prop :=
  ∀ n, P4701838494989104005.a n = A020938 (n + 1)

end A020938

/-! ## A020938.P4421261923934284084

`A000720(eq[8, A052126(n+1)])`
-/

namespace A020938.P4421261923934284084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020938.P4421261923934284084

namespace A020938

/-- `A000720(eq[8, A052126(n+1)])` -/
def P4421261923934284084.Spec : Prop :=
  ∀ n, P4421261923934284084.a n = A020938 (n + 1)

end A020938

/-!
# A020939: Greatest k such that (k-th prime) < (9 times n-th prime).

The programs for A020939, the canonical program `A020939.P15965853669222690897` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020939 has offset 1).

The definition of A020939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020939.P15965853669222690897

`A000720(Δ[9*A007504(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020939

/-- `A000720(Δ[9*A007504(n)])` -/
def P15965853669222690897.Spec : Prop :=
  ∀ n, P15965853669222690897.a n = A020939 (n + 1)

theorem P15965853669222690897.correct : P15965853669222690897.Spec := by
  intro n
  simp only [A020939, Nat.add_sub_cancel]

end A020939

/-! ## A020939.P9085723315722370574

`A000720(3*A001748(n+1))`
-/

namespace A020939.P9085723315722370574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * A001748 (n + 1)).toNat

end

end A020939.P9085723315722370574

namespace A020939

/-- `A000720(3*A001748(n+1))` -/
def P9085723315722370574.Spec : Prop :=
  ∀ n, P9085723315722370574.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P9723937072280421137

`A000720(9*A000040(n+1))`
-/

namespace A020939.P9723937072280421137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * A000040 (n + 1)).toNat

end

end A020939.P9723937072280421137

namespace A020939

/-- `A000720(9*A000040(n+1))` -/
def P9723937072280421137.Spec : Prop :=
  ∀ n, P9723937072280421137.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P3152797019680629330

`A000720(9*A008578(n+2))`
-/

namespace A020939.P3152797019680629330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * A008578 (n + 2)).toNat

end

end A020939.P3152797019680629330

namespace A020939

/-- `A000720(9*A008578(n+2))` -/
def P3152797019680629330.Spec : Prop :=
  ∀ n, P3152797019680629330.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P17467986607784011371

`A000720(9*A182986(n+2))`
-/

namespace A020939.P17467986607784011371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * A182986 (n + 2)).toNat

end

end A020939.P17467986607784011371

namespace A020939

/-- `A000720(9*A182986(n+2))` -/
def P17467986607784011371.Spec : Prop :=
  ∀ n, P17467986607784011371.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P4867169668990258814

`A000720(9*∑[A054541(n+1)])`
-/

namespace A020939.P4867169668990258814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A020939.P4867169668990258814

namespace A020939

/-- `A000720(9*∑[A054541(n+1)])` -/
def P4867169668990258814.Spec : Prop :=
  ∀ n, P4867169668990258814.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P5983726812619062683

`A000720(9*(A006093(n+1)+1))`
-/

namespace A020939.P5983726812619062683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * (A006093 (n + 1) + 1)).toNat

end

end A020939.P5983726812619062683

namespace A020939

/-- `A000720(9*(A006093(n+1)+1))` -/
def P5983726812619062683.Spec : Prop :=
  ∀ n, P5983726812619062683.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P17058106814123245696

`A000720(A000040(n+1)/(1/3)²)`
-/

namespace A020939.P17058106814123245696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / ((1 : ℚ) / 3) ^ 2)).toNat

end

end A020939.P17058106814123245696

namespace A020939

/-- `A000720(A000040(n+1)/(1/3)²)` -/
def P17058106814123245696.Spec : Prop :=
  ∀ n, P17058106814123245696.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P898397990961135273

`A000720(A063534(n+1)+2*A063534(n+1))`
-/

namespace A020939.P898397990961135273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063534 (n + 1) + 2 * A063534 (n + 1)).toNat

end

end A020939.P898397990961135273

namespace A020939

/-- `A000720(A063534(n+1)+2*A063534(n+1))` -/
def P898397990961135273.Spec : Prop :=
  ∀ n, P898397990961135273.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P6394609797851018981

`A000720(A138636(n+1)+A138636(n+1)/2)`
-/

namespace A020939.P6394609797851018981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A138636 (n + 1) : ℚ) + (A138636 (n + 1) : ℚ) / 2)).toNat

end

end A020939.P6394609797851018981

namespace A020939

/-- `A000720(A138636(n+1)+A138636(n+1)/2)` -/
def P6394609797851018981.Spec : Prop :=
  ∀ n, P6394609797851018981.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P17645480960170426366

`A000720(A001749(n+1)+A001749(n+1)+A000040(n+1))`
-/

namespace A020939.P17645480960170426366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1) + (A001749 (n + 1) + A000040 (n + 1))).toNat

end

end A020939.P17645480960170426366

namespace A020939

/-- `A000720(A001749(n+1)+A001749(n+1)+A000040(n+1))` -/
def P17645480960170426366.Spec : Prop :=
  ∀ n, P17645480960170426366.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P12608879664413139031

`A000720(A001750(n+1)+A001750(n+1)-A000040(n+1))`
-/

namespace A020939.P12608879664413139031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001750 (n + 1) + (A001750 (n + 1) - A000040 (n + 1))).toNat

end

end A020939.P12608879664413139031

namespace A020939

/-- `A000720(A001750(n+1)+A001750(n+1)-A000040(n+1))` -/
def P12608879664413139031.Spec : Prop :=
  ∀ n, P12608879664413139031.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P1057626677163854368

`A000720(record[9*A051698(n)])`
-/

namespace A020939.P1057626677163854368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020939.P1057626677163854368

namespace A020939

/-- `A000720(record[9*A051698(n)])` -/
def P1057626677163854368.Spec : Prop :=
  ∀ n, P1057626677163854368.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P6902658716204596037

`A000720(9*record[A014963(n+2)])`
-/

namespace A020939.P6902658716204596037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020939.P6902658716204596037

namespace A020939

/-- `A000720(9*record[A014963(n+2)])` -/
def P6902658716204596037.Spec : Prop :=
  ∀ n, P6902658716204596037.a n = A020939 (n + 1)

end A020939

/-! ## A020939.P7063418112197265131

`A000720(A016789(A016789(A006093(n+1))))`
-/

namespace A020939.P7063418112197265131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A016789 (A016789 (A006093 (n + 1)).toNat).toNat).toNat

end

end A020939.P7063418112197265131

namespace A020939

/-- `A000720(A016789(A016789(A006093(n+1))))` -/
def P7063418112197265131.Spec : Prop :=
  ∀ n, P7063418112197265131.a n = A020939 (n + 1)

end A020939

/-!
# A020940: Greatest k such that (k-th prime) < (10 times n-th prime).

The programs for A020940, the canonical program `A020940.P2412854877094668045` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020940 has offset 1).

The definition of A020940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020940.P5276591918932101259

`A038801(Δ[A007504(n)])`
-/

namespace A020940.P5276591918932101259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (f1 (n + 1) - f1 n).toNat

end

end A020940.P5276591918932101259

namespace A020940

/-- `A038801(Δ[A007504(n)])` -/
def P5276591918932101259.Spec : Prop :=
  ∀ n, P5276591918932101259.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P2412854877094668045

`A038801(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020940

/-- `A038801(A000040(n+1))` -/
def P2412854877094668045.Spec : Prop :=
  ∀ n, P2412854877094668045.a n = A020940 (n + 1)

theorem P2412854877094668045.correct : P2412854877094668045.Spec := by
  intro n
  simp only [A020940, Nat.add_sub_cancel]

end A020940

/-! ## A020940.P11270130747753499286

`A000720(A142342(n+1))`
-/

namespace A020940.P11270130747753499286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A142342 (n + 1)).toNat

end

end A020940.P11270130747753499286

namespace A020940

/-- `A000720(A142342(n+1))` -/
def P11270130747753499286.Spec : Prop :=
  ∀ n, P11270130747753499286.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P10156364606779058316

`A038801(A008578(n+2))`
-/

namespace A020940.P10156364606779058316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A008578 (n + 2)).toNat

end

end A020940.P10156364606779058316

namespace A020940

/-- `A038801(A008578(n+2))` -/
def P10156364606779058316.Spec : Prop :=
  ∀ n, P10156364606779058316.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P12664114448408972536

`A038801(A182986(n+2))`
-/

namespace A020940.P12664114448408972536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A182986 (n + 2)).toNat

end

end A020940.P12664114448408972536

namespace A020940

/-- `A038801(A182986(n+2))` -/
def P12664114448408972536.Spec : Prop :=
  ∀ n, P12664114448408972536.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P3252525019844233831

`A038801(eq[1, A003415(n)])`
-/

namespace A020940.P3252525019844233831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020940.P3252525019844233831

namespace A020940

/-- `A038801(eq[1, A003415(n)])` -/
def P3252525019844233831.Spec : Prop :=
  ∀ n, P3252525019844233831.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P13823419507827368315

`A038801(record[A006530(n+2)])`
-/

namespace A020940.P13823419507827368315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020940.P13823419507827368315

namespace A020940

/-- `A038801(record[A006530(n+2)])` -/
def P13823419507827368315.Spec : Prop :=
  ∀ n, P13823419507827368315.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P14787831648454205906

`A038801(record[A014963(n+2)])`
-/

namespace A020940.P14787831648454205906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020940.P14787831648454205906

namespace A020940

/-- `A038801(record[A014963(n+2)])` -/
def P14787831648454205906.Spec : Prop :=
  ∀ n, P14787831648454205906.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P5200836674829170914

`A038801(record[A020639(n+2)])`
-/

namespace A020940.P5200836674829170914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020940.P5200836674829170914

namespace A020940

/-- `A038801(record[A020639(n+2)])` -/
def P5200836674829170914.Spec : Prop :=
  ∀ n, P5200836674829170914.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P15392262928543366660

`A000720(2*A001750(n+1))`
-/

namespace A020940.P15392262928543366660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A001750 (n + 1)).toNat

end

end A020940.P15392262928543366660

namespace A020940

/-- `A000720(2*A001750(n+1))` -/
def P15392262928543366660.Spec : Prop :=
  ∀ n, P15392262928543366660.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P4533890966428985039

`A000720(10*A000040(n+1))`
-/

namespace A020940.P4533890966428985039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 * A000040 (n + 1)).toNat

end

end A020940.P4533890966428985039

namespace A020940

/-- `A000720(10*A000040(n+1))` -/
def P4533890966428985039.Spec : Prop :=
  ∀ n, P4533890966428985039.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P11315455429524552775

`A000720(record[10*A006530(n+2)])`
-/

namespace A020940.P11315455429524552775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020940.P11315455429524552775

namespace A020940

/-- `A000720(record[10*A006530(n+2)])` -/
def P11315455429524552775.Spec : Prop :=
  ∀ n, P11315455429524552775.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P1779465434093124574

`A000720(10*record[A014963(n+2)])`
-/

namespace A020940.P1779465434093124574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020940.P1779465434093124574

namespace A020940

/-- `A000720(10*record[A014963(n+2)])` -/
def P1779465434093124574.Spec : Prop :=
  ∀ n, P1779465434093124574.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P2113345207662803117

`A000720(10*record[A020639(n+2)])`
-/

namespace A020940.P2113345207662803117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020940.P2113345207662803117

namespace A020940

/-- `A000720(10*record[A020639(n+2)])` -/
def P2113345207662803117.Spec : Prop :=
  ∀ n, P2113345207662803117.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P5705200532706455765

`A000720(A001750(n+1)+A001750(n+1)-1)`
-/

namespace A020940.P5705200532706455765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001750 (n + 1) + (A001750 (n + 1) - 1)).toNat

end

end A020940.P5705200532706455765

namespace A020940

/-- `A000720(A001750(n+1)+A001750(n+1)-1)` -/
def P5705200532706455765.Spec : Prop :=
  ∀ n, P5705200532706455765.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P1386464213133695673

`A000720(2*(A100484(n+1)+A001748(n+1)))`
-/

namespace A020940.P1386464213133695673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (A100484 (n + 1) + A001748 (n + 1))).toNat

end

end A020940.P1386464213133695673

namespace A020940

/-- `A000720(2*(A100484(n+1)+A001748(n+1)))` -/
def P1386464213133695673.Spec : Prop :=
  ∀ n, P1386464213133695673.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P3076121676578491728

`A000720(A100484(n+1)+2*A001749(n+1))`
-/

namespace A020940.P3076121676578491728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1) + 2 * A001749 (n + 1)).toNat

end

end A020940.P3076121676578491728

namespace A020940

/-- `A000720(A100484(n+1)+2*A001749(n+1))` -/
def P3076121676578491728.Spec : Prop :=
  ∀ n, P3076121676578491728.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P10195942608813669510

`A000720(A001749(n+1)+A100484(n+1)+A001749(n+1))`
-/

namespace A020940.P10195942608813669510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001749 (n + 1) + (A100484 (n + 1) + A001749 (n + 1))).toNat

end

end A020940.P10195942608813669510

namespace A020940

/-- `A000720(A001749(n+1)+A100484(n+1)+A001749(n+1))` -/
def P10195942608813669510.Spec : Prop :=
  ∀ n, P10195942608813669510.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P14096452709250889110

`A038801(A000720(A006450(n+1)))`
-/

namespace A020940.P14096452709250889110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (A000720 (A006450 (n + 1)).toNat).toNat

end

end A020940.P14096452709250889110

namespace A020940

/-- `A038801(A000720(A006450(n+1)))` -/
def P14096452709250889110.Spec : Prop :=
  ∀ n, P14096452709250889110.a n = A020940 (n + 1)

end A020940

/-! ## A020940.P17353229360215719311

`A099802(A001750(n+1))`
-/

namespace A020940.P17353229360215719311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A001750 (n + 1)).toNat

end

end A020940.P17353229360215719311

namespace A020940

/-- `A099802(A001750(n+1))` -/
def P17353229360215719311.Spec : Prop :=
  ∀ n, P17353229360215719311.a n = A020940 (n + 1)

end A020940

/-!
# A020941: Main diagonal of Wythoff array: w(n,n)=[ n*tau ]F(n+1)+(n-1)F(n), where tau=(1+sqrt(5))/2, F(n) = Fibonacci numbers.

The programs for A020941, the canonical program `A020941.P5396589530761591526` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020941 has offset 1).

The definition of A020941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020941.P5396589530761591526

`floor((n+1)*ϕ)*A000045(n+2)+n*A000045(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020941

/-- `floor((n+1)*ϕ)*A000045(n+2)+n*A000045(n+1)` -/
def P5396589530761591526.Spec : Prop :=
  ∀ n, P5396589530761591526.a n = A020941 (n + 1)

theorem P5396589530761591526.correct : P5396589530761591526.Spec := by
  intro n
  simp only [A020941, Nat.add_sub_cancel]

end A020941

/-! ## A020941.P2024196466032943678

`A083412(∑[4*n])`
-/

namespace A020941.P2024196466032943678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020941.P2024196466032943678

namespace A020941

/-- `A083412(∑[4*n])` -/
def P2024196466032943678.Spec : Prop :=
  ∀ n, P2024196466032943678.a n = A020941 (n + 1)

end A020941

/-! ## A020941.P16725410148926073458

`A035513(∑[4*n]+1)`
-/

namespace A020941.P16725410148926073458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A020941.P16725410148926073458

namespace A020941

/-- `A035513(∑[4*n]+1)` -/
def P16725410148926073458.Spec : Prop :=
  ∀ n, P16725410148926073458.a n = A020941 (n + 1)

end A020941

/-! ## A020941.P4961083901077651535

`or(char[1], A035513(A001844(n)))`
-/

namespace A020941.P4961083901077651535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A035513 (A001844 n).toNat)

end

end A020941.P4961083901077651535

namespace A020941

/-- `or(char[1], A035513(A001844(n)))` -/
def P4961083901077651535.Spec : Prop :=
  ∀ n, P4961083901077651535.a n = A020941 (n + 1)

end A020941

/-! ## A020941.P1972780217617822825

`record[A003982(n)*A035513(n+1)]`
-/

namespace A020941.P1972780217617822825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A035513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020941.P1972780217617822825

namespace A020941

/-- `record[A003982(n)*A035513(n+1)]` -/
def P1972780217617822825.Spec : Prop :=
  ∀ n, P1972780217617822825.a n = A020941 (n + 1)

end A020941

/-! ## A020941.P16653535178090879776

`record[gcd(A035513(n+1), A114327(n))]`
-/

namespace A020941.P16653535178090879776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035513 (n + 1)) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020941.P16653535178090879776

namespace A020941

/-- `record[gcd(A035513(n+1), A114327(n))]` -/
def P16653535178090879776.Spec : Prop :=
  ∀ n, (P16653535178090879776.a n : ℤ) = A020941 (n + 1)

end A020941

/-! ## A020941.P4338226408982664175

`A035513(A001844(n))%A002042(n)`
-/

namespace A020941.P4338226408982664175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035513 (A001844 n).toNat) (A002042 n)

end

end A020941.P4338226408982664175

namespace A020941

/-- `A035513(A001844(n))%A002042(n)` -/
def P4338226408982664175.Spec : Prop :=
  ∀ n, P4338226408982664175.a n = A020941 (n + 1)

end A020941

/-! ## A020941.P13029002908556105567

`A035513(Δ[A005900(n)])%A002042(n)`
-/

namespace A020941.P13029002908556105567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035513 (f1 (n + 1) - f1 n).toNat) (A002042 n)

end

end A020941.P13029002908556105567

namespace A020941

/-- `A035513(Δ[A005900(n)])%A002042(n)` -/
def P13029002908556105567.Spec : Prop :=
  ∀ n, P13029002908556105567.a n = A020941 (n + 1)

end A020941

/-! ## A020941.P6947158465618375625

`A035513(A001844(n))/A001468(A001950(n+1))`
-/

namespace A020941.P6947158465618375625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035513 (A001844 n).toNat : ℚ) / (A001468 (A001950 (n + 1)).toNat : ℚ)

end

end A020941.P6947158465618375625

namespace A020941

/-- `A035513(A001844(n))/A001468(A001950(n+1))` -/
def P6947158465618375625.Spec : Prop :=
  ∀ n, P6947158465618375625.a n = (A020941 (n + 1) : ℚ)

end A020941

/-!
# A020942: First column of 3rd-order Zeckendorf array A136189.

The programs for A020942, the canonical program `A020942.P5836413996573018086` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020942 has offset 1).

The definition of A020942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020942.P5836413996573018086

`A136496(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020942

/-- `A136496(n+1)-1` -/
def P5836413996573018086.Spec : Prop :=
  ∀ n, P5836413996573018086.a n = A020942 (n + 1)

theorem P5836413996573018086.correct : P5836413996573018086.Spec := by
  intro n
  simp only [A020942, Nat.add_sub_cancel]

end A020942

/-! ## A020942.P1292145907693307293

`A202342(1+n)+n`
-/

namespace A020942.P1292145907693307293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (1 + n) + (n : ℤ)

end

end A020942.P1292145907693307293

namespace A020942

/-- `A202342(1+n)+n` -/
def P1292145907693307293.Spec : Prop :=
  ∀ n, P1292145907693307293.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P7113918625684009777

`A005374(n)+∑[A202340(n)]+n`
-/

namespace A020942.P7113918625684009777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A020942.P7113918625684009777

namespace A020942

/-- `A005374(n)+∑[A202340(n)]+n` -/
def P7113918625684009777.Spec : Prop :=
  ∀ n, P7113918625684009777.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P16895489755036729199

`A064105(n+1)-A136495(n+1)`
-/

namespace A020942.P16895489755036729199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) - A136495 (n + 1)

end

end A020942.P16895489755036729199

namespace A020942

/-- `A064105(n+1)-A136495(n+1)` -/
def P16895489755036729199.Spec : Prop :=
  ∀ n, P16895489755036729199.a n = A020942 (n + 1)

theorem P16895489755036729199.correct : P16895489755036729199.Spec := by
  intro n
  simp only [A020942, Nat.add_sub_cancel, A020942.P16895489755036729199.a, A020942.P5836413996573018086.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, A005374, A005374.P13862197180797613727.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020942

/-! ## A020942.P18135412693920483269

`A372749(n+1)-A064106(n+1)`
-/

namespace A020942.P18135412693920483269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372749 (n + 1) - A064106 (n + 1)

end

end A020942.P18135412693920483269

namespace A020942

/-- `A372749(n+1)-A064106(n+1)` -/
def P18135412693920483269.Spec : Prop :=
  ∀ n, P18135412693920483269.a n = A020942 (n + 1)

theorem P18135412693920483269.correct : P18135412693920483269.Spec := by
  intro n
  simp only [A020942, Nat.add_sub_cancel, A020942.P18135412693920483269.a, A020942.P5836413996573018086.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A372749, A372749.P13035462491583893748.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, A202342, A202342.P5796561117243952660.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020942

/-! ## A020942.P15764305804973358129

`A372757(n+1)%A372752(n+1)`
-/

namespace A020942.P15764305804973358129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372757 (n + 1)) (A372752 (n + 1))

end

end A020942.P15764305804973358129

namespace A020942

/-- `A372757(n+1)%A372752(n+1)` -/
def P15764305804973358129.Spec : Prop :=
  ∀ n, P15764305804973358129.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P6015173818277309285

`A136495(n+1)+A005374(n)+n`
-/

namespace A020942.P6015173818277309285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + (A005374 n + (n : ℤ))

end

end A020942.P6015173818277309285

namespace A020942

/-- `A136495(n+1)+A005374(n)+n` -/
def P6015173818277309285.Spec : Prop :=
  ∀ n, P6015173818277309285.a n = A020942 (n + 1)

theorem P6015173818277309285.correct : P6015173818277309285.Spec := by
  intro n
  simp only [A020942, Nat.add_sub_cancel, A020942.P6015173818277309285.a, A020942.P5836413996573018086.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020942

/-! ## A020942.P15621631008176084799

`A064106(n+1)-A064105(n+1)+n`
-/

namespace A020942.P15621631008176084799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - A064105 (n + 1) + (n : ℤ)

end

end A020942.P15621631008176084799

namespace A020942

/-- `A064106(n+1)-A064105(n+1)+n` -/
def P15621631008176084799.Spec : Prop :=
  ∀ n, P15621631008176084799.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P16811769701458418170

`A202342(∑[A202340(n)])`
-/

namespace A020942.P16811769701458418170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020942.P16811769701458418170

namespace A020942

/-- `A202342(∑[A202340(n)])` -/
def P16811769701458418170.Spec : Prop :=
  ∀ n, P16811769701458418170.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P8524454558594163905

`A202342(A136495(n+1))`
-/

namespace A020942.P8524454558594163905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A136495 (n + 1)).toNat

end

end A020942.P8524454558594163905

namespace A020942

/-- `A202342(A136495(n+1))` -/
def P8524454558594163905.Spec : Prop :=
  ∀ n, P8524454558594163905.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P16140219108069910566

`A136495(∑[A202340(n)])+n`
-/

namespace A020942.P16140219108069910566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A020942.P16140219108069910566

namespace A020942

/-- `A136495(∑[A202340(n)])+n` -/
def P16140219108069910566.Spec : Prop :=
  ∀ n, P16140219108069910566.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P11747279722375103976

`A288696(Δ[n²])-(n+1)`
-/

namespace A020942.P11747279722375103976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A020942.P11747279722375103976

namespace A020942

/-- `A288696(Δ[n²])-(n+1)` -/
def P11747279722375103976.Spec : Prop :=
  ∀ n, P11747279722375103976.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P14084632732176644458

`lt[1, A202340(n)]+n`
-/

namespace A020942.P14084632732176644458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n

end

end A020942.P14084632732176644458

namespace A020942

/-- `lt[1, A202340(n)]+n` -/
def P14084632732176644458.Spec : Prop :=
  ∀ n, (P14084632732176644458.a n : ℤ) = A020942 (n + 1)

end A020942

/-! ## A020942.P13719872801215005252

`∑[runs[A372758(n+1)]]+n`
-/

namespace A020942.P13719872801215005252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A020942.P13719872801215005252

namespace A020942

/-- `∑[runs[A372758(n+1)]]+n` -/
def P13719872801215005252.Spec : Prop :=
  ∀ n, (P13719872801215005252.a n : ℤ) = A020942 (n + 1)

end A020942

/-! ## A020942.P288436384960924536

`A136495(eq[2, A202340(n)])`
-/

namespace A020942.P288436384960924536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020942.P288436384960924536

namespace A020942

/-- `A136495(eq[2, A202340(n)])` -/
def P288436384960924536.Spec : Prop :=
  ∀ n, P288436384960924536.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P4761298971628900551

`A136495(eq[1, A105083(n)]+1)`
-/

namespace A020942.P4761298971628900551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A020942.P4761298971628900551

namespace A020942

/-- `A136495(eq[1, A105083(n)]+1)` -/
def P4761298971628900551.Spec : Prop :=
  ∀ n, P4761298971628900551.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P6142717150372661838

`A136495(lt[A105083(n), 2]+1)`
-/

namespace A020942.P6142717150372661838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A020942.P6142717150372661838

namespace A020942

/-- `A136495(lt[A105083(n), 2]+1)` -/
def P6142717150372661838.Spec : Prop :=
  ∀ n, P6142717150372661838.a n = A020942 (n + 1)

end A020942

/-! ## A020942.P16826868827570725806

`eq[A202340(n), A236213(n+1)]+n`
-/

namespace A020942.P16826868827570725806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A020942.P16826868827570725806

namespace A020942

/-- `eq[A202340(n), A236213(n+1)]+n` -/
def P16826868827570725806.Spec : Prop :=
  ∀ n, (P16826868827570725806.a n : ℤ) = A020942 (n + 1)

end A020942

/-! ## A020942.P15150744739123600127

`A136495(A136495(∑[A202340(n)]))`
-/

namespace A020942.P15150744739123600127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A020942.P15150744739123600127

namespace A020942

/-- `A136495(A136495(∑[A202340(n)]))` -/
def P15150744739123600127.Spec : Prop :=
  ∀ n, P15150744739123600127.a n = A020942 (n + 1)

end A020942

/-!
# A020943: a(2n+1) = |a(2n) - a(2n-1)|, a(2n) = a(n) + a(n-1).

The programs for A020943, there is no canonical definition to state claims against.
-/

/-! ## A020943.P13009908822786170537

`A370637(A000010(2*n+5))%A286622(n)`
-/

namespace A020943.P13009908822786170537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370637 (A000010 (2 * n + 5)).toNat) (A286622 n)

end

end A020943.P13009908822786170537

/-! ## A020943.P12812815878787118693

`and(p?[A051652(n)], A025422(n))`
-/

namespace A020943.P12812815878787118693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A025422 n)

end

end A020943.P12812815878787118693

/-! ## A020943.P12064564923249868552

`and(A027907(n), A172474(A004320(n)))`
-/

namespace A020943.P12064564923249868552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027907 n) (A172474 (A004320 n).toNat)

end

end A020943.P12064564923249868552

/-! ## A020943.P12800758300674539947

`A333880(n+2)+A055641(A011782(n))`
-/

namespace A020943.P12800758300674539947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333880 (n + 2) + A055641 (A011782 n).toNat

end

end A020943.P12800758300674539947

/-! ## A020943.P5975853539928690555

`A342845(A007283(A001316(n))-A269978(n+1))`
-/

namespace A020943.P5975853539928690555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 (A007283 (A001316 n).toNat - A269978 (n + 1)).toNat

end

end A020943.P5975853539928690555

/-!
# A020944: a(2n+1) = |a(2n) - a(2n-1)|, a(2n) = a(n) + a(n-1), a(0) = -1.

The programs for A020944, the canonical program `A020944.P8623549795546838227` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020944 has offset 0).

The definition of A020944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020944.P8623549795546838227

`A020952(n)-3*A020951(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020944

/-- `A020952(n)-3*A020951(n)` -/
def P8623549795546838227.Spec : Prop :=
  ∀ n, P8623549795546838227.a n = A020944 n

theorem P8623549795546838227.correct : P8623549795546838227.Spec := by
  intro n
  simp only [A020944]

end A020944

/-! ## A020944.P8255599673685102979

`A002487(n+1)-A005843(A020951(n))`
-/

namespace A020944.P8255599673685102979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A005843 (A020951 n).toNat

end

end A020944.P8255599673685102979

namespace A020944

/-- `A002487(n+1)-A005843(A020951(n))` -/
def P8255599673685102979.Spec : Prop :=
  ∀ n, P8255599673685102979.a n = A020944 n

end A020944

/-! ## A020944.P5659493675357167277

`A324338(A003188(n))-2*A020951(n)`
-/

namespace A020944.P5659493675357167277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A003188 n).toNat - 2 * A020951 n

end

end A020944.P5659493675357167277

namespace A020944

/-- `A324338(A003188(n))-2*A020951(n)` -/
def P5659493675357167277.Spec : Prop :=
  ∀ n, P5659493675357167277.a n = A020944 n

end A020944

/-! ## A020944.P10249919973973213078

`A007306(A003602(n+1))-2*A020951(n)`
-/

namespace A020944.P10249919973973213078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 1)).toNat - 2 * A020951 n

end

end A020944.P10249919973973213078

namespace A020944

/-- `A007306(A003602(n+1))-2*A020951(n)` -/
def P10249919973973213078.Spec : Prop :=
  ∀ n, P10249919973973213078.a n = A020944 n

end A020944

/-! ## A020944.P9034196321957729871

`A007306(A003602(n+1))-A005843(A020951(n))`
-/

namespace A020944.P9034196321957729871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 1)).toNat - A005843 (A020951 n).toNat

end

end A020944.P9034196321957729871

namespace A020944

/-- `A007306(A003602(n+1))-A005843(A020951(n))` -/
def P9034196321957729871.Spec : Prop :=
  ∀ n, P9034196321957729871.a n = A020944 n

end A020944

/-! ## A020944.P12068379063678111627

`A020951(A117120(n+1))-A000007(n)`
-/

namespace A020944.P12068379063678111627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A117120 (n + 1)).toNat - A000007 n

end

end A020944.P12068379063678111627

namespace A020944

/-- `A020951(A117120(n+1))-A000007(n)` -/
def P12068379063678111627.Spec : Prop :=
  ∀ n, P12068379063678111627.a n = A020944 n

end A020944

/-! ## A020944.P6879276187414548948

`A288003(A005408(n))-2*A020951(n)`
-/

namespace A020944.P6879276187414548948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A005408 n).toNat - 2 * A020951 n

end

end A020944.P6879276187414548948

namespace A020944

/-- `A288003(A005408(n))-2*A020951(n)` -/
def P6879276187414548948.Spec : Prop :=
  ∀ n, P6879276187414548948.a n = A020944 n

end A020944

/-! ## A020944.P368288940053836696

`A288003(A267872(n))-2*A020951(n)`
-/

namespace A020944.P368288940053836696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A267872 n).toNat - 2 * A020951 n

end

end A020944.P368288940053836696

namespace A020944

/-- `A288003(A267872(n))-2*A020951(n)` -/
def P368288940053836696.Spec : Prop :=
  ∀ n, P368288940053836696.a n = A020944 n

end A020944

/-! ## A020944.P13656148365698875228

`A288003(2*n+1)-A005843(A020951(n))`
-/

namespace A020944.P13656148365698875228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (2 * n + 1) - A005843 (A020951 n).toNat

end

end A020944.P13656148365698875228

namespace A020944

/-- `A288003(2*n+1)-A005843(A020951(n))` -/
def P13656148365698875228.Spec : Prop :=
  ∀ n, P13656148365698875228.a n = A020944 n

end A020944

/-! ## A020944.P8424760874665146403

`A288003(A004767(n))-2*A020951(n)`
-/

namespace A020944.P8424760874665146403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A004767 n).toNat - 2 * A020951 n

end

end A020944.P8424760874665146403

namespace A020944

/-- `A288003(A004767(n))-2*A020951(n)` -/
def P8424760874665146403.Spec : Prop :=
  ∀ n, P8424760874665146403.a n = A020944 n

end A020944

/-! ## A020944.P16586824939466965922

`A288003(A017113(n))-2*A020951(n)`
-/

namespace A020944.P16586824939466965922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A017113 n).toNat - 2 * A020951 n

end

end A020944.P16586824939466965922

namespace A020944

/-- `A288003(A017113(n))-2*A020951(n)` -/
def P16586824939466965922.Spec : Prop :=
  ∀ n, P16586824939466965922.a n = A020944 n

end A020944

/-! ## A020944.P4259298727986203547

`A295515(A004768(n))-2*A020951(n)`
-/

namespace A020944.P4259298727986203547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A004768 n).toNat - 2 * A020951 n

end

end A020944.P4259298727986203547

namespace A020944

/-- `A295515(A004768(n))-2*A020951(n)` -/
def P4259298727986203547.Spec : Prop :=
  ∀ n, P4259298727986203547.a n = A020944 n

end A020944

/-! ## A020944.P7265547793018280551

`A287730(A116882(n+1))-A000007(n)`
-/

namespace A020944.P7265547793018280551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (A116882 (n + 1)).toNat - A000007 n

end

end A020944.P7265547793018280551

namespace A020944

/-- `A287730(A116882(n+1))-A000007(n)` -/
def P7265547793018280551.Spec : Prop :=
  ∀ n, P7265547793018280551.a n = A020944 n

end A020944

/-! ## A020944.P13940139576052930751

`A295515(A116882(n+1))-A020951(n)`
-/

namespace A020944.P13940139576052930751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A116882 (n + 1)).toNat - A020951 n

end

end A020944.P13940139576052930751

namespace A020944

/-- `A295515(A116882(n+1))-A020951(n)` -/
def P13940139576052930751.Spec : Prop :=
  ∀ n, P13940139576052930751.a n = A020944 n

end A020944

/-!
# A020946: a(n) is the smallest number k such that A002487(k) = n.

The programs for A020946, there is no canonical definition to state claims against.
-/

/-! ## A020946.P11022941608452147719

`A020950(A028310(n))+n²%(n+1)`
-/

namespace A020946.P11022941608452147719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020950 (A028310 n).toNat + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A020946.P11022941608452147719

/-! ## A020946.P2144520920149822279

`A057427(n)+A020950(A028310(n))`
-/

namespace A020946.P2144520920149822279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020950 (A028310 n).toNat

end

end A020946.P2144520920149822279

/-! ## A020946.P18075969505051387497

`A020950(A028310(n))-A057428(n)`
-/

namespace A020946.P18075969505051387497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020950 (A028310 n).toNat - A057428 n

end

end A020946.P18075969505051387497

/-! ## A020946.P3629789399663383524

`A020950(A028310(n))+A001222(A008578(n+1))`
-/

namespace A020946.P3629789399663383524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020950 (A028310 n).toNat + A001222 (A008578 (n + 1)).toNat

end

end A020946.P3629789399663383524

/-! ## A020946.P12761447566319901302

`A020950(A028310(n))+A000035(comp[2*(n+1)])`
-/

namespace A020946.P12761447566319901302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020950 (A028310 n).toNat + A000035 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A020946.P12761447566319901302

/-! ## A020946.P13113998521601570606

`A091945(A295088(n))`
-/

namespace A020946.P13113998521601570606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091945 (A295088 n).toNat

end

end A020946.P13113998521601570606

/-!
# A020948: Least k such that b(k) = n, where b( ) is sequence A020944.

The programs for A020948, there is no canonical definition to state claims against.
-/

/-! ## A020948.P10032014581875274154

`xor(A020953(n+1), A053644(A020946(n+1)))`
-/

namespace A020948.P10032014581875274154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020953 (n + 1)) (A053644 (A020946 (n + 1)).toNat)

end

end A020948.P10032014581875274154

/-! ## A020948.P18233452619357973885

`A082003(A140076(n+1))`
-/

namespace A020948.P18233452619357973885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082003 (A140076 (n + 1)).toNat

end

end A020948.P18233452619357973885

/-!
# A020950: a(n) = k-1, where k is smallest number such that A002487(k) = n.

The programs for A020950, there is no canonical definition to state claims against.
-/

/-! ## A020950.P12775456335727038807

`A020946(n+1)-1`
-/

namespace A020950.P12775456335727038807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (n + 1) - 1

end

end A020950.P12775456335727038807

/-! ## A020950.P9138323672378544400

`xor(1, A020946(A000027(n+1)))`
-/

namespace A020950.P9138323672378544400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020946 (A000027 (n + 1)).toNat)

end

end A020950.P9138323672378544400

/-! ## A020950.P12929103865113017759

`xor(A001489(n)+n+1, A020946(n+1))`
-/

namespace A020950.P12929103865113017759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001489 n + (n + 1 : ℤ)) (A020946 (n + 1))

end

end A020950.P12929103865113017759

/-! ## A020950.P17844885873988488663

`A001489(n+1)+A020946(n+1)+n`
-/

namespace A020950.P17844885873988488663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A020946 (n + 1) + (n : ℤ))

end

end A020950.P17844885873988488663

/-! ## A020950.P12121045675783588206

`2*A359050(n+1)`
-/

namespace A020950.P12121045675783588206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359050 (n + 1)

end

end A020950.P12121045675783588206

/-! ## A020950.P12852589067282811299

`A033999(2*n+1)+A020946(n+1)`
-/

namespace A020950.P12852589067282811299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A020946 (n + 1)

end

end A020950.P12852589067282811299

/-! ## A020950.P8397704045396789207

`A005843(A359050(n+1))`
-/

namespace A020950.P8397704045396789207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A359050 (n + 1)).toNat

end

end A020950.P8397704045396789207

/-! ## A020950.P15230138989404030610

`A004442(A020946(n+1))`
-/

namespace A020950.P15230138989404030610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A020946 (n + 1)).toNat

end

end A020950.P15230138989404030610

/-! ## A020950.P18001084300346426795

`A029578(or(1, A020946(n+1)))`
-/

namespace A020950.P18001084300346426795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Int.lor 1 (A020946 (n + 1))).toNat

end

end A020950.P18001084300346426795

/-! ## A020950.P2922955716876989325

`A004275(A020946(n+1)+1)%(A020946(n+1)+1)`
-/

namespace A020950.P2922955716876989325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A020946 (n + 1) + 1).toNat) (A020946 (n + 1) + 1)

end

end A020950.P2922955716876989325

/-! ## A020950.P18226883453395327089

`2*A087734(A020953(n+1)/2)`
-/

namespace A020950.P18226883453395327089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087734 (SequenceMachineLib.roundAway ((A020953 (n + 1) : ℚ) / 2)).toNat

end

end A020950.P18226883453395327089

/-! ## A020950.P9205482800481213736

`A087734(A020953(n+1))`
-/

namespace A020950.P9205482800481213736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A020953 (n + 1)).toNat

end

end A020950.P9205482800481213736

/-! ## A020950.P10826534728983502767

`A004524(2*A020946(n+1))`
-/

namespace A020950.P10826534728983502767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A020946 (n + 1)).toNat

end

end A020950.P10826534728983502767

/-! ## A020950.P13376323149143873823

`2*A359051(A005728(n))`
-/

namespace A020950.P13376323149143873823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359051 (A005728 n).toNat

end

end A020950.P13376323149143873823

/-!
# A020951: a(2n+1)=a(n), a(2n)=a(n)+a(n-1).

The programs for A020951, the canonical program `A020951.P2561957398097553159` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020951 has offset 0).

The definition of A020951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020951.P1998707012872983600

`A020944(A117120(n+1))`
-/

namespace A020951.P1998707012872983600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A117120 (n + 1)).toNat

end

end A020951.P1998707012872983600

namespace A020951

/-- `A020944(A117120(n+1))` -/
def P1998707012872983600.Spec : Prop :=
  ∀ n, P1998707012872983600.a n = A020951 n

end A020951

/-! ## A020951.P11641910036486641149

`A002487(ceil(A036044(n)/4))`
-/

namespace A020951.P11641910036486641149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ⌈(A036044 n : ℚ) / 4⌉.toNat

end

end A020951.P11641910036486641149

namespace A020951

/-- `A002487(ceil(A036044(n)/4))` -/
def P11641910036486641149.Spec : Prop :=
  ∀ n, P11641910036486641149.a n = A020951 n

end A020951

/-! ## A020951.P130586283658942561

`A002487(∑[1-and(2, A264619(n))])`
-/

namespace A020951.P130586283658942561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A264619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020951.P130586283658942561

namespace A020951

/-- `A002487(∑[1-and(2, A264619(n))])` -/
def P130586283658942561.Spec : Prop :=
  ∀ n, P130586283658942561.a n = A020951 n

end A020951

/-! ## A020951.P8228884239882195101

`(A002487(n+1)-A020944(n))/2`
-/

namespace A020951.P8228884239882195101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A020944 n : ℚ) / 2

end

end A020951.P8228884239882195101

namespace A020951

/-- `(A002487(n+1)-A020944(n))/2` -/
def P8228884239882195101.Spec : Prop :=
  ∀ n, P8228884239882195101.a n = (A020951 n : ℚ)

theorem P8228884239882195101.correct : P8228884239882195101.Spec := by
  intro n
  simp only [A020951, Nat.add_sub_cancel, A020951.P8228884239882195101.a, A020951.P2561957398097553159.a, A000007, A000007.P6599383543502402472.a, A002487, A002487.P14011177000981426228.a, A020944, A020944.P8623549795546838227.a, A053646, A053646.P18187844312180991750.a, A020952, A020952.P6062698508245563205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A020951

/-! ## A020951.P2561957398097553159

`A002487(A053646(n+1)+A000007(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020951

/-- `A002487(A053646(n+1)+A000007(n))` -/
def P2561957398097553159.Spec : Prop :=
  ∀ n, P2561957398097553159.a n = A020951 n

theorem P2561957398097553159.correct : P2561957398097553159.Spec := by
  intro n
  simp only [A020951]

end A020951

/-! ## A020951.P14690090657935518052

`A002487(A053646(n+1)+A000038(n))`
-/

namespace A020951.P14690090657935518052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A053646 (n + 1) + A000038 n).toNat

end

end A020951.P14690090657935518052

namespace A020951

/-- `A002487(A053646(n+1)+A000038(n))` -/
def P14690090657935518052.Spec : Prop :=
  ∀ n, P14690090657935518052.a n = A020951 n

end A020951

/-! ## A020951.P10363559281157340659

`A020944(A004762(n+2))`
-/

namespace A020951.P10363559281157340659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A004762 (n + 2)).toNat

end

end A020951.P10363559281157340659

namespace A020951

/-- `A020944(A004762(n+2))` -/
def P10363559281157340659.Spec : Prop :=
  ∀ n, P10363559281157340659.a n = A020951 n

end A020951

/-! ## A020951.P10646315339698765431

`A002487(A036044(n)+and(2, A036044(n)))`
-/

namespace A020951.P10646315339698765431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A036044 n + Int.land 2 (A036044 n)).toNat

end

end A020951.P10646315339698765431

namespace A020951

/-- `A002487(A036044(n)+and(2, A036044(n)))` -/
def P10646315339698765431.Spec : Prop :=
  ∀ n, P10646315339698765431.a n = A020951 n

end A020951

/-! ## A020951.P4330012157298137411

`A020944(A214214(n+1))`
-/

namespace A020951.P4330012157298137411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A214214 (n + 1)).toNat

end

end A020951.P4330012157298137411

namespace A020951

/-- `A020944(A214214(n+1))` -/
def P4330012157298137411.Spec : Prop :=
  ∀ n, P4330012157298137411.a n = A020951 n

end A020951

/-! ## A020951.P11808181688589511471

`A020944(A153150(n+1))`
-/

namespace A020951.P11808181688589511471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A153150 (n + 1)).toNat

end

end A020951.P11808181688589511471

namespace A020951

/-- `A020944(A153150(n+1))` -/
def P11808181688589511471.Spec : Prop :=
  ∀ n, P11808181688589511471.a n = A020951 n

end A020951

/-! ## A020951.P2116060747271199606

`A287729(A116882(n+1))`
-/

namespace A020951.P2116060747271199606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (A116882 (n + 1)).toNat

end

end A020951.P2116060747271199606

namespace A020951

/-- `A287729(A116882(n+1))` -/
def P2116060747271199606.Spec : Prop :=
  ∀ n, P2116060747271199606.a n = A020951 n

end A020951

/-! ## A020951.P6036918830152831857

`A287730(2*A116882(n+1))`
-/

namespace A020951.P6036918830152831857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (2 * A116882 (n + 1)).toNat

end

end A020951.P6036918830152831857

namespace A020951

/-- `A287730(2*A116882(n+1))` -/
def P6036918830152831857.Spec : Prop :=
  ∀ n, P6036918830152831857.a n = A020951 n

end A020951

/-!
# A020952: a(2n+1)=a(n), a(2n)=a(n)+a(n-1).

The programs for A020952, the canonical program `A020952.P6062698508245563205` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020952 has offset 0).

The definition of A020952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020952.P6062698508245563205

`A020951(n)+A002487(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020952

/-- `A020951(n)+A002487(n+1)` -/
def P6062698508245563205.Spec : Prop :=
  ∀ n, P6062698508245563205.a n = A020952 n

theorem P6062698508245563205.correct : P6062698508245563205.Spec := by
  intro n
  simp only [A020952]

end A020952

/-! ## A020952.P11221086458101334161

`A020944(n)+A008585(A020951(n))`
-/

namespace A020952.P11221086458101334161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 n + A008585 (A020951 n).toNat

end

end A020952.P11221086458101334161

namespace A020952

/-- `A020944(n)+A008585(A020951(n))` -/
def P11221086458101334161.Spec : Prop :=
  ∀ n, P11221086458101334161.a n = A020952 n

end A020952

/-! ## A020952.P2486243201776028788

`A324338(A003188(n))+A020951(n)`
-/

namespace A020952.P2486243201776028788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A003188 n).toNat + A020951 n

end

end A020952.P2486243201776028788

namespace A020952

/-- `A324338(A003188(n))+A020951(n)` -/
def P2486243201776028788.Spec : Prop :=
  ∀ n, P2486243201776028788.a n = A020952 n

end A020952

/-! ## A020952.P8542527871471293971

`A020951(n)+A007306(A003602(n+1))`
-/

namespace A020952.P8542527871471293971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n + A007306 (A003602 (n + 1)).toNat

end

end A020952.P8542527871471293971

namespace A020952

/-- `A020951(n)+A007306(A003602(n+1))` -/
def P8542527871471293971.Spec : Prop :=
  ∀ n, P8542527871471293971.a n = A020952 n

end A020952

/-! ## A020952.P7391495411828593914

`A288003(2*n+1)+A020951(n)`
-/

namespace A020952.P7391495411828593914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (2 * n + 1) + A020951 n

end

end A020952.P7391495411828593914

namespace A020952

/-- `A288003(2*n+1)+A020951(n)` -/
def P7391495411828593914.Spec : Prop :=
  ∀ n, P7391495411828593914.a n = A020952 n

end A020952

/-! ## A020952.P3942139171255376282

`A295515(2*(n+1))+A020951(n)`
-/

namespace A020952.P3942139171255376282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * (n + 1)) + A020951 n

end

end A020952.P3942139171255376282

namespace A020952

/-- `A295515(2*(n+1))+A020951(n)` -/
def P3942139171255376282.Spec : Prop :=
  ∀ n, P3942139171255376282.a n = A020952 n

end A020952

/-! ## A020952.P404391567819949671

`A020951(A004758(n+1)-1)+A020951(n)`
-/

namespace A020952.P404391567819949671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A004758 (n + 1) - 1).toNat + A020951 n

end

end A020952.P404391567819949671

namespace A020952

/-- `A020951(A004758(n+1)-1)+A020951(n)` -/
def P404391567819949671.Spec : Prop :=
  ∀ n, P404391567819949671.a n = A020952 n

end A020952

/-! ## A020952.P16964094087391073201

`A174980(A171763(2*n+1))+A020951(n)`
-/

namespace A020952.P16964094087391073201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A171763 (2 * n + 1)).toNat + A020951 n

end

end A020952.P16964094087391073201

namespace A020952

/-- `A174980(A171763(2*n+1))+A020951(n)` -/
def P16964094087391073201.Spec : Prop :=
  ∀ n, P16964094087391073201.a n = A020952 n

end A020952

/-! ## A020952.P5139041918551335751

`A020951(A004758(2*n+1))+A020951(n)`
-/

namespace A020952.P5139041918551335751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A004758 (2 * n + 1)).toNat + A020951 n

end

end A020952.P5139041918551335751

namespace A020952

/-- `A020951(A004758(2*n+1))+A020951(n)` -/
def P5139041918551335751.Spec : Prop :=
  ∀ n, P5139041918551335751.a n = A020952 n

end A020952

/-! ## A020952.P8546270748389603279

`A020951(n)+A295515(A116882(n+1))+A020951(n)`
-/

namespace A020952.P8546270748389603279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n + (A295515 (A116882 (n + 1)).toNat + A020951 n)

end

end A020952.P8546270748389603279

namespace A020952

/-- `A020951(n)+A295515(A116882(n+1))+A020951(n)` -/
def P8546270748389603279.Spec : Prop :=
  ∀ n, P8546270748389603279.a n = A020952 n

end A020952

/-!
# A020953: Least k such that A020951(k) = n.

The programs for A020953, there is no canonical definition to state claims against.
-/

/-! ## A020953.P9988973981227955753

`or(A020948(n+1), A020950(n+1))-A000007(n)`
-/

namespace A020953.P9988973981227955753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020948 (n + 1)) (A020950 (n + 1)) - A000007 n

end

end A020953.P9988973981227955753

/-! ## A020953.P14755319388092404574

`or(A020948(n+1), A020950(n+1))%A016862(n)`
-/

namespace A020953.P14755319388092404574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A020948 (n + 1)) (A020950 (n + 1))) (A016862 n)

end

end A020953.P14755319388092404574

/-! ## A020953.P14837295975232929629

`xor(A020948(n+1), A053644(A020946(n+1)))`
-/

namespace A020953.P14837295975232929629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020948 (n + 1)) (A053644 (A020946 (n + 1)).toNat)

end

end A020953.P14837295975232929629

/-!
# A020955: a(n) = n^(2^n - n - 1).

The programs for A020955, the canonical program `A020955.P9159869727305971171` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020955 has offset 0).

The definition of A020955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020955.P9159869727305971171

`n^(2^n-n-1)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020955

/-- `n^(2^n-n-1)` -/
def P9159869727305971171.Spec : Prop :=
  ∀ n, P9159869727305971171.a n = (A020955 n : ℚ)

end A020955

/-! ## A020955.P5871771692929738142

`sqrt(n²^A000295(n))`
-/

namespace A020955.P5871771692929738142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℚ) ^ (A000295 n : ℤ) : ℝ)

end

end A020955.P5871771692929738142

namespace A020955

/-- `sqrt(n²^A000295(n))` -/
def P5871771692929738142.Spec : Prop :=
  ∀ n, P5871771692929738142.a n = (A020955 n : ℝ)

end A020955

/-! ## A020955.P9441096038005259321

`A003992(A005418(2*n+1)-(n+1))`
-/

namespace A020955.P9441096038005259321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A005418 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A020955.P9441096038005259321

namespace A020955

/-- `A003992(A005418(2*n+1)-(n+1))` -/
def P9441096038005259321.Spec : Prop :=
  ∀ n, P9441096038005259321.a n = A020955 n

end A020955

/-!
# A020956: a(n) = Sum_{k>=1} floor(tau^(n-k)) where tau is A001622.

The programs for A020956, the canonical program `A020956.P4854933553144711134` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020956 has offset 1).

The definition of A020956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020956.P4854933553144711134

`ogf((1-x^2+x^3)/(1-2x-x^2+3x^3-x^5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020956

/-- `ogf((1-x^2+x^3)/(1-2x-x^2+3x^3-x^5))` -/
def P4854933553144711134.Spec : Prop :=
  ∀ n, P4854933553144711134.a n = A020956 (n + 1)

theorem P4854933553144711134.correct : P4854933553144711134.Spec := by
  intro n
  simp only [A020956, Nat.add_sub_cancel]

end A020956

/-! ## A020956.P12479678883010095635

`A000032(n+2)-ceil((n+1)/2)-1`
-/

namespace A020956.P12479678883010095635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - ⌈(n + 1 : ℚ) / 2⌉ - 1

end

end A020956.P12479678883010095635

namespace A020956

/-- `A000032(n+2)-ceil((n+1)/2)-1` -/
def P12479678883010095635.Spec : Prop :=
  ∀ n, P12479678883010095635.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P14161817231880737049

`∑[ogf((1-x^2+x^3)/(1-x-2x^2+x^3+x^4))]`
-/

namespace A020956.P14161817231880737049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1] [1, -1, -2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P14161817231880737049

namespace A020956

/-- `∑[ogf((1-x^2+x^3)/(1-x-2x^2+x^3+x^4))]` -/
def P14161817231880737049.Spec : Prop :=
  ∀ n, P14161817231880737049.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P15142036618506747671

`2*a(n-2)+a(n-3)+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A020956.P15142036618506747671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 2) + (a (n - 3) + n)

end

end A020956.P15142036618506747671

namespace A020956

/-- `2*a(n-2)+a(n-3)+n` -/
def P15142036618506747671.Spec : Prop :=
  ∀ n, (P15142036618506747671.a n : ℤ) = A020956 (n + 1)

end A020956

/-! ## A020956.P10094792498463633325

`∑[a(n-1)+a(n-2)+n%2]` with `a(0)=1, a(1)=1`
-/

namespace A020956.P10094792498463633325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P10094792498463633325

namespace A020956

/-- `∑[a(n-1)+a(n-2)+n%2]` -/
def P10094792498463633325.Spec : Prop :=
  ∀ n, (P10094792498463633325.a n : ℤ) = A020956 (n + 1)

end A020956

/-! ## A020956.P868059485693707520

`floor((n+1)/2+a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A020956.P868059485693707520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n + 1 : ℚ) / 2 + (a (n - 1) + a (n - 2) : ℚ)⌋

end

end A020956.P868059485693707520

namespace A020956

/-- `floor((n+1)/2+a(n-1)+a(n-2))` -/
def P868059485693707520.Spec : Prop :=
  ∀ n, P868059485693707520.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P13499912179835262436

`a(n-2)+a(n-2)+a(n-3)+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A020956.P13499912179835262436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 3) + n))

end

end A020956.P13499912179835262436

namespace A020956

/-- `a(n-2)+a(n-2)+a(n-3)+n` -/
def P13499912179835262436.Spec : Prop :=
  ∀ n, (P13499912179835262436.a n : ℤ) = A020956 (n + 1)

end A020956

/-! ## A020956.P17846325960355831095

`∑[A014217(n)]`
-/

namespace A020956.P17846325960355831095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P17846325960355831095

namespace A020956

/-- `∑[A014217(n)]` -/
def P17846325960355831095.Spec : Prop :=
  ∀ n, P17846325960355831095.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P16159587709626953317

`A279100(n)-n`
-/

namespace A020956.P16159587709626953317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279100 n - (n : ℤ)

end

end A020956.P16159587709626953317

namespace A020956

/-- `A279100(n)-n` -/
def P16159587709626953317.Spec : Prop :=
  ∀ n, P16159587709626953317.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P4126816319352346027

`∑[A062724(n)-1]`
-/

namespace A020956.P4126816319352346027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P4126816319352346027

namespace A020956

/-- `∑[A062724(n)-1]` -/
def P4126816319352346027.Spec : Prop :=
  ∀ n, P4126816319352346027.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P3520347907166215059

`∑[A192660(2*n)]`
-/

namespace A020956.P3520347907166215059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P3520347907166215059

namespace A020956

/-- `∑[A192660(2*n)]` -/
def P3520347907166215059.Spec : Prop :=
  ∀ n, P3520347907166215059.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P6024101991771984568

`∑[A169986(n)]-n`
-/

namespace A020956.P6024101991771984568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A020956.P6024101991771984568

namespace A020956

/-- `∑[A169986(n)]-n` -/
def P6024101991771984568.Spec : Prop :=
  ∀ n, P6024101991771984568.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P12780136737935298988

`round(A014739(n)-n/2)`
-/

namespace A020956.P12780136737935298988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014739 n : ℚ) - (n : ℚ) / 2)

end

end A020956.P12780136737935298988

namespace A020956

/-- `round(A014739(n)-n/2)` -/
def P12780136737935298988.Spec : Prop :=
  ∀ n, P12780136737935298988.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P17144252091503418571

`∑[A001612(n)-gcd(2, n)]`
-/

namespace A020956.P17144252091503418571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P17144252091503418571

namespace A020956

/-- `∑[A001612(n)-gcd(2, n)]` -/
def P17144252091503418571.Spec : Prop :=
  ∀ n, P17144252091503418571.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P1476170398443350255

`floor(∑[A000032(n)-1/2])`
-/

namespace A020956.P1476170398443350255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) - (1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A020956.P1476170398443350255

namespace A020956

/-- `floor(∑[A000032(n)-1/2])` -/
def P1476170398443350255.Spec : Prop :=
  ∀ n, P1476170398443350255.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P939368898473812984

`∑[A000032(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A020956.P939368898473812984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000032 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P939368898473812984

namespace A020956

/-- `∑[A000032(n-1)+a(n-2)]` -/
def P939368898473812984.Spec : Prop :=
  ∀ n, P939368898473812984.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P10184585612354871001

`a(n-2)+A000032(n+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A020956.P10184585612354871001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (A000032 (n + 1) - 1)

end

end A020956.P10184585612354871001

namespace A020956

/-- `a(n-2)+A000032(n+1)-1` -/
def P10184585612354871001.Spec : Prop :=
  ∀ n, P10184585612354871001.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P16836239097456128498

`∑[A000032(2*n-n)-and(1, n+1)]`
-/

namespace A020956.P16836239097456128498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n - n) - (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020956.P16836239097456128498

namespace A020956

/-- `∑[A000032(2*n-n)-and(1, n+1)]` -/
def P16836239097456128498.Spec : Prop :=
  ∀ n, P16836239097456128498.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P12579383935177513153

`A215004(n)+A074331(n)`
-/

namespace A020956.P12579383935177513153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 n + A074331 n

end

end A020956.P12579383935177513153

namespace A020956

/-- `A215004(n)+A074331(n)` -/
def P12579383935177513153.Spec : Prop :=
  ∀ n, P12579383935177513153.a n = A020956 (n + 1)

end A020956

/-! ## A020956.P7056843025269690384

`A215006(n)+A154327(n)`
-/

namespace A020956.P7056843025269690384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 n + A154327 n

end

end A020956.P7056843025269690384

namespace A020956

/-- `A215006(n)+A154327(n)` -/
def P7056843025269690384.Spec : Prop :=
  ∀ n, P7056843025269690384.a n = A020956 (n + 1)

end A020956

/-!
# A020957: a(n) = Sum_{k >= 1} floor(2*tau^(n-k)).

The programs for A020957, the canonical program `A020957.P13769882648699878543` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020957 has offset 1).

The definition of A020957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020957.P13769882648699878543

`ogf((3-4x^2+x^4+x^5)/(1-2x-x^2+3x^3-x^5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020957

/-- `ogf((3-4x^2+x^4+x^5)/(1-2x-x^2+3x^3-x^5))` -/
def P13769882648699878543.Spec : Prop :=
  ∀ n, P13769882648699878543.a n = A020957 (n + 1)

theorem P13769882648699878543.correct : P13769882648699878543.Spec := by
  intro n
  simp only [A020957, Nat.add_sub_cancel]

end A020957

/-! ## A020957.P17765589519931786434

`A192954(n)+A049636(n)`
-/

namespace A020957.P17765589519931786434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + A049636 n

end

end A020957.P17765589519931786434

namespace A020957

/-- `A192954(n)+A049636(n)` -/
def P17765589519931786434.Spec : Prop :=
  ∀ n, P17765589519931786434.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P6769035182663688705

`A288219(n)+∑[A014217(n)]`
-/

namespace A020957.P6769035182663688705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020957.P6769035182663688705

namespace A020957

/-- `A288219(n)+∑[A014217(n)]` -/
def P6769035182663688705.Spec : Prop :=
  ∀ n, P6769035182663688705.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P4598595972957200120

`A288219(n)+A020956(n+1)`
-/

namespace A020957.P4598595972957200120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + A020956 (n + 1)

end

end A020957.P4598595972957200120

namespace A020957

/-- `A288219(n)+A020956(n+1)` -/
def P4598595972957200120.Spec : Prop :=
  ∀ n, P4598595972957200120.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P7723141077747297911

`A169986(n)+A020956(n+2)`
-/

namespace A020957.P7723141077747297911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 n + A020956 (n + 2)

end

end A020957.P7723141077747297911

namespace A020957

/-- `A169986(n)+A020956(n+2)` -/
def P7723141077747297911.Spec : Prop :=
  ∀ n, P7723141077747297911.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P18363923875648365757

`2*A288219(n)-A266977(n)`
-/

namespace A020957.P18363923875648365757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288219 n - A266977 n

end

end A020957.P18363923875648365757

namespace A020957

/-- `2*A288219(n)-A266977(n)` -/
def P18363923875648365757.Spec : Prop :=
  ∀ n, P18363923875648365757.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P3817932353803002130

`∑[A026625(n)+A001611(n+1)]`
-/

namespace A020957.P3817932353803002130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026625 n + A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020957.P3817932353803002130

namespace A020957

/-- `∑[A026625(n)+A001611(n+1)]` -/
def P3817932353803002130.Spec : Prop :=
  ∀ n, P3817932353803002130.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P353541943418446364

`∑[A169985(n)+A014217(n)]+1`
-/

namespace A020957.P353541943418446364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A020957.P353541943418446364

namespace A020957

/-- `∑[A169985(n)+A014217(n)]+1` -/
def P353541943418446364.Spec : Prop :=
  ∀ n, P353541943418446364.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P8126282755909411569

`∑[A014217(n)]+A169986(n)+A014217(n+1)`
-/

namespace A020957.P8126282755909411569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A169986 n + A014217 (n + 1))

end

end A020957.P8126282755909411569

namespace A020957

/-- `∑[A014217(n)]+A169986(n)+A014217(n+1)` -/
def P8126282755909411569.Spec : Prop :=
  ∀ n, P8126282755909411569.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P5095283261492717732

`A090991(n+1)-(A055389(n)+A008619(n)+1)`
-/

namespace A020957.P5095283261492717732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) - (A055389 n + (A008619 n + 1))

end

end A020957.P5095283261492717732

namespace A020957

/-- `A090991(n+1)-(A055389(n)+A008619(n)+1)` -/
def P5095283261492717732.Spec : Prop :=
  ∀ n, P5095283261492717732.a n = A020957 (n + 1)

end A020957

/-! ## A020957.P6590502811139002010

`Δ[A192954(n+1)]-A123108(n)`
-/

namespace A020957.P6590502811139002010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123108 n

end

end A020957.P6590502811139002010

namespace A020957

/-- `Δ[A192954(n+1)]-A123108(n)` -/
def P6590502811139002010.Spec : Prop :=
  ∀ n, P6590502811139002010.a n = A020957 (n + 1)

end A020957

/-!
# A020958: a(n) = Sum_{k >= 1} floor(3*tau^(n-k)).

The programs for A020958, there is no canonical definition to state claims against.
-/

/-! ## A020958.P3345835277191608036

`A022429(A001610(n+1))-floor(n/2)`
-/

namespace A020958.P3345835277191608036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 (A001610 (n + 1)).toNat - ⌊(n : ℚ) / 2⌋

end

end A020958.P3345835277191608036

/-! ## A020958.P14932602426287292898

`A182801(∑[n+3]+1)`
-/

namespace A020958.P14932602426287292898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A020958.P14932602426287292898

/-! ## A020958.P5594271502799762021

`A081315(A333187(n+2))`
-/

namespace A020958.P5594271502799762021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081315 (A333187 (n + 2)).toNat

end

end A020958.P5594271502799762021

/-! ## A020958.P13951511949457660448

`A119661(A258109(n+4))`
-/

namespace A020958.P13951511949457660448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119661 (A258109 (n + 4)).toNat

end

end A020958.P13951511949457660448

/-!
# A020959: a(n) = Sum_{k>=1} floor(n*phi^(1-k)).

The programs for A020959, there is no canonical definition to state claims against.
-/

/-! ## A020959.P8157137993860618793

`∑[A252229(n)]`
-/

namespace A020959.P8157137993860618793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020959.P8157137993860618793

/-! ## A020959.P807754299897526664

`eq[0, A395000(n+1)]+1`
-/

namespace A020959.P807754299897526664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020959.P807754299897526664

/-! ## A020959.P15390350731237653884

`A020960(n+1)+ceil(ϕ*xor(n, -1))`
-/

namespace A020959.P15390350731237653884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + ⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

end

end A020959.P15390350731237653884

/-! ## A020959.P820110321754116629

`A020960(n+1)-∑[A001468(n)]`
-/

namespace A020959.P820110321754116629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020959.P820110321754116629

/-! ## A020959.P12933758404473110776

`A020960(n+1)-Δ[A054347(n)]`
-/

namespace A020959.P12933758404473110776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - (f1 (n + 1) - f1 n)

end

end A020959.P12933758404473110776

/-! ## A020959.P7298081679225335589

`A020960(n+1)-A000201(n+1)`
-/

namespace A020959.P7298081679225335589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A000201 (n + 1)

end

end A020959.P7298081679225335589

/-! ## A020959.P10470482945483140669

`A020960(n+1)+∑[1-A282162(n)]`
-/

namespace A020959.P10470482945483140669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020959.P10470482945483140669

/-! ## A020959.P7081896734966326376

`A020960(n+1)-A003622(n+1)+n`
-/

namespace A020959.P7081896734966326376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A003622 (n + 1) + (n : ℤ)

end

end A020959.P7081896734966326376

/-! ## A020959.P6762827175165607173

`A020960(n+1)-record[A348853(n+1)]+n`
-/

namespace A020959.P6762827175165607173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A020959.P6762827175165607173

/-! ## A020959.P9461621420470013577

`A020960(n+1)-A002251(∑[A282162(n)])`
-/

namespace A020959.P9461621420470013577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A002251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020959.P9461621420470013577

/-! ## A020959.P8220818133648688189

`A020960(n+1)-A002251(A001950(n+1))`
-/

namespace A020959.P8220818133648688189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A002251 (A001950 (n + 1)).toNat

end

end A020959.P8220818133648688189

/-! ## A020959.P13923893954315611144

`A020960(n+1)-A005206(A003622(n+1))`
-/

namespace A020959.P13923893954315611144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A005206 (A003622 (n + 1)).toNat

end

end A020959.P13923893954315611144

/-! ## A020959.P15967151377083900261

`A020960(n+1)-A005206(A007064(n+1))`
-/

namespace A020959.P15967151377083900261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) - A005206 (A007064 (n + 1)).toNat

end

end A020959.P15967151377083900261

/-! ## A020959.P14914436711075066246

`A020961(n+1)-A003623(n+1)`
-/

namespace A020959.P14914436711075066246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020961 (n + 1) - A003623 (n + 1)

end

end A020959.P14914436711075066246

/-! ## A020959.P1982026432088686201

`A001950(n+1)+A020961(n+1)-A001950(A001950(n+1))`
-/

namespace A020959.P1982026432088686201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A020961 (n + 1) - A001950 (A001950 (n + 1)).toNat)

end

end A020959.P1982026432088686201

/-!
# A020960: a(n) = Sum_{k >= 1} floor(n*phi^(2-k)).

The programs for A020960, there is no canonical definition to state claims against.
-/

/-! ## A020960.P6694653939623663130

`floor(∑[A252229(n)+ϕ])`
-/

namespace A020960.P6694653939623663130
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252229 n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A020960.P6694653939623663130

/-! ## A020960.P4084908433974114992

`eq[1, A395000(n+1)]+1`
-/

namespace A020960.P4084908433974114992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020960.P4084908433974114992

/-! ## A020960.P15432171375587630546

`∑[A252229(n)+A001468(n)]`
-/

namespace A020960.P15432171375587630546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n + A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020960.P15432171375587630546

/-! ## A020960.P2631194803782235738

`Δ[A054347(n)]+∑[A252229(n)]`
-/

namespace A020960.P2631194803782235738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A020960.P2631194803782235738

/-! ## A020960.P12714095657865250394

`A020959(n+1)+∑[A001468(n)]`
-/

namespace A020960.P12714095657865250394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020960.P12714095657865250394

/-! ## A020960.P9892795477398750776

`A000201(n+1)+∑[A252229(n)]`
-/

namespace A020960.P9892795477398750776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020960.P9892795477398750776

/-! ## A020960.P9140941194055170385

`A020959(n+1)+Δ[A054347(n)]`
-/

namespace A020960.P9140941194055170385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1) + (f1 (n + 1) - f1 n)

end

end A020960.P9140941194055170385

/-! ## A020960.P9056792700931693715

`A020959(n+1)+A000201(n+1)`
-/

namespace A020960.P9056792700931693715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1) + A000201 (n + 1)

end

end A020960.P9056792700931693715

/-! ## A020960.P8165726082693710689

`A001950(n+1)+∑[A252229(n)-1]`
-/

namespace A020960.P8165726082693710689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020960.P8165726082693710689

/-! ## A020960.P13435011340977712313

`n+1+A020959(n+1)+A005206(n)`
-/

namespace A020960.P13435011340977712313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A020959 (n + 1) + A005206 n)

end

end A020960.P13435011340977712313

/-! ## A020960.P17665883378527751767

`A003622(n+1)+A020959(n+1)-n`
-/

namespace A020960.P17665883378527751767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A020959 (n + 1) - (n : ℤ))

end

end A020960.P17665883378527751767

/-! ## A020960.P8651442878513785811

`A001950(n+1)+A020959(n+1)-(n+1)`
-/

namespace A020960.P8651442878513785811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A020959 (n + 1) - (n + 1 : ℤ))

end

end A020960.P8651442878513785811

/-! ## A020960.P9657931291706995554

`A020959(n+1)+A002251(A001950(n+1))`
-/

namespace A020960.P9657931291706995554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1) + A002251 (A001950 (n + 1)).toNat

end

end A020960.P9657931291706995554

/-! ## A020960.P14699341270774195679

`A020961(n+1)-A001950(n+1)`
-/

namespace A020960.P14699341270774195679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020961 (n + 1) - A001950 (n + 1)

end

end A020960.P14699341270774195679

/-!
# A020961: a(n) = Sum_{k >= 1} floor(n*phi^(3-k)).

The programs for A020961, there is no canonical definition to state claims against.
-/

/-! ## A020961.P11456955187340771865

`A003623(n+1)+∑[A252229(n)]`
-/

namespace A020961.P11456955187340771865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020961.P11456955187340771865

/-! ## A020961.P5661343715673928124

`A020960(n+1)+∑[A282162(n)]`
-/

namespace A020961.P5661343715673928124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020961.P5661343715673928124

/-! ## A020961.P17193183745014860491

`A020960(n+1)+A001950(n+1)`
-/

namespace A020961.P17193183745014860491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + A001950 (n + 1)

end

end A020961.P17193183745014860491

/-! ## A020961.P13091300610750505624

`A020959(n+1)+A003623(n+1)`
-/

namespace A020961.P13091300610750505624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1) + A003623 (n + 1)

end

end A020961.P13091300610750505624

/-! ## A020961.P18044500305360313533

`A020960(n+1)+∑[A001468(n)+1]`
-/

namespace A020961.P18044500305360313533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020961.P18044500305360313533

/-! ## A020961.P5820557813452797034

`A020960(n+1)+record[A002251(n+1)]`
-/

namespace A020961.P5820557813452797034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020961.P5820557813452797034

/-! ## A020961.P13983634961042671217

`A003622(n+1)+A020960(n+1)+1`
-/

namespace A020961.P13983634961042671217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A020960 (n + 1) + 1)

end

end A020961.P13983634961042671217

/-! ## A020961.P11511080488987766101

`A020960(n+1)+record[A348853(n+1)+1]`
-/

namespace A020961.P11511080488987766101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348853 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020961.P11511080488987766101

/-! ## A020961.P9571626846509872574

`A020960(n+1)+A002251(∑[A001468(n)])`
-/

namespace A020961.P9571626846509872574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020960 (n + 1) + A002251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020961.P9571626846509872574

/-! ## A020961.P15948320381522439858

`A000201(A001950(n+1))+∑[A252229(n)]`
-/

namespace A020961.P15948320381522439858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A001950 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020961.P15948320381522439858

/-! ## A020961.P3037520280570219632

`A020959(n+1)+A000201(A001950(n+1))`
-/

namespace A020961.P3037520280570219632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (n + 1) + A000201 (A001950 (n + 1)).toNat

end

end A020961.P3037520280570219632

/-! ## A020961.P6105599185013334715

`A000201(A000201(n+1))+A020960(n+1)+1`
-/

namespace A020961.P6105599185013334715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (n + 1)).toNat + (A020960 (n + 1) + 1)

end

end A020961.P6105599185013334715

/-!
# A020962: a(n) = Sum_{k >= 1} floor((1+sqrt(2))^(n-k)).

The programs for A020962, the canonical program `A020962.P14053905570023298632` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020962 has offset 1).

The definition of A020962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020962.P15680543119259986769

`∑[ogf((1-x^2+2x^3)/(1-2x-2x^2+2x^3+x^4))]`
-/

namespace A020962.P15680543119259986769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, -2, -2, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020962.P15680543119259986769

namespace A020962

/-- `∑[ogf((1-x^2+2x^3)/(1-2x-2x^2+2x^3+x^4))]` -/
def P15680543119259986769.Spec : Prop :=
  ∀ n, P15680543119259986769.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P14053905570023298632

`∑[a(n-2)+2*(a(n-1)+n%2)]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020962

/-- `∑[a(n-2)+2*(a(n-1)+n%2)]` -/
def P14053905570023298632.Spec : Prop :=
  ∀ n, (P14053905570023298632.a n : ℤ) = A020962 (n + 1)

theorem P14053905570023298632.correct : P14053905570023298632.Spec := by
  intro n
  simp only [A020962, Nat.add_sub_cancel]

end A020962

/-! ## A020962.P3557121615255574643

`or(1, n-1)+a(n-2)+2*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A020962.P3557121615255574643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor 1 ((n : ℤ) - 1) + (a (n - 2) + 2 * a (n - 1))

end

end A020962.P3557121615255574643

namespace A020962

/-- `or(1, n-1)+a(n-2)+2*a(n-1)` -/
def P3557121615255574643.Spec : Prop :=
  ∀ n, P3557121615255574643.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P5898074429550164452

`3*a(n-1)-(or(1, a(n-1)-a(n-2))-n)` with `a(0)=1, a(1)=3`
-/

namespace A020962.P5898074429550164452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (Int.lor 1 (a (n - 1) - a (n - 2)) - (n : ℤ))

end

end A020962.P5898074429550164452

namespace A020962

/-- `3*a(n-1)-(or(1, a(n-1)-a(n-2))-n)` -/
def P5898074429550164452.Spec : Prop :=
  ∀ n, P5898074429550164452.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P2695187484012405057

`∑[A080039(n)]`
-/

namespace A020962.P2695187484012405057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020962.P2695187484012405057

namespace A020962

/-- `∑[A080039(n)]` -/
def P2695187484012405057.Spec : Prop :=
  ∀ n, P2695187484012405057.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P1329746336886209962

`A279101(n)-n`
-/

namespace A020962.P1329746336886209962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279101 n - (n : ℤ)

end

end A020962.P1329746336886209962

namespace A020962

/-- `A279101(n)-n` -/
def P1329746336886209962.Spec : Prop :=
  ∀ n, P1329746336886209962.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P8295084121817010585

`∑[A002203(n)-char[2*n]]`
-/

namespace A020962.P8295084121817010585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020962.P8295084121817010585

namespace A020962

/-- `∑[A002203(n)-char[2*n]]` -/
def P8295084121817010585.Spec : Prop :=
  ∀ n, P8295084121817010585.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P10699938812300772590

`Δ[A078057(n)]-∑[char[2*n]]`
-/

namespace A020962.P10699938812300772590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A020962.P10699938812300772590

namespace A020962

/-- `Δ[A078057(n)]-∑[char[2*n]]` -/
def P10699938812300772590.Spec : Prop :=
  ∀ n, P10699938812300772590.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P9618943844629074166

`A052542(n+1)-ceil((n+1)/2)`
-/

namespace A020962.P9618943844629074166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - ⌈(n + 1 : ℚ) / 2⌉

end

end A020962.P9618943844629074166

namespace A020962

/-- `A052542(n+1)-ceil((n+1)/2)` -/
def P9618943844629074166.Spec : Prop :=
  ∀ n, P9618943844629074166.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P18211972103859001586

`2*A000129(n+1)-(floor(n/2)+1)`
-/

namespace A020962.P18211972103859001586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (n + 1) - (⌊(n : ℚ) / 2⌋ + 1)

end

end A020962.P18211972103859001586

namespace A020962

/-- `2*A000129(n+1)-(floor(n/2)+1)` -/
def P18211972103859001586.Spec : Prop :=
  ∀ n, P18211972103859001586.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P10940704691152602266

`∑[A002203(n)]-A008619(n)`
-/

namespace A020962.P10940704691152602266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A020962.P10940704691152602266

namespace A020962

/-- `∑[A002203(n)]-A008619(n)` -/
def P10940704691152602266.Spec : Prop :=
  ∀ n, P10940704691152602266.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P17768260688984063672

`A173009(n+1)+A156664(n)`
-/

namespace A020962.P17768260688984063672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173009 (n + 1) + A156664 n

end

end A020962.P17768260688984063672

namespace A020962

/-- `A173009(n+1)+A156664(n)` -/
def P17768260688984063672.Spec : Prop :=
  ∀ n, P17768260688984063672.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P17941208965927682649

`A133654(n+1)-A004526(n)`
-/

namespace A020962.P17941208965927682649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) - A004526 n

end

end A020962.P17941208965927682649

namespace A020962

/-- `A133654(n+1)-A004526(n)` -/
def P17941208965927682649.Spec : Prop :=
  ∀ n, P17941208965927682649.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P12694338908224067831

`A133654(n+1)+A110654(n)-n`
-/

namespace A020962.P12694338908224067831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) + (A110654 n - (n : ℤ))

end

end A020962.P12694338908224067831

namespace A020962

/-- `A133654(n+1)+A110654(n)-n` -/
def P12694338908224067831.Spec : Prop :=
  ∀ n, P12694338908224067831.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P5651619501323237665

`A002265(2*(n+1))+∑[A100227(n)]`
-/

namespace A020962.P5651619501323237665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020962.P5651619501323237665

namespace A020962

/-- `A002265(2*(n+1))+∑[A100227(n)]` -/
def P5651619501323237665.Spec : Prop :=
  ∀ n, P5651619501323237665.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P2943909451309259400

`∑[A002203(n)]-A001651(n+1)+n`
-/

namespace A020962.P2943909451309259400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001651 (n + 1) + (n : ℤ)

end

end A020962.P2943909451309259400

namespace A020962

/-- `∑[A002203(n)]-A001651(n+1)+n` -/
def P2943909451309259400.Spec : Prop :=
  ∀ n, P2943909451309259400.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P9065350151134453772

`2*A215928(n+1)-A065033(n+1)`
-/

namespace A020962.P9065350151134453772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215928 (n + 1) - A065033 (n + 1)

end

end A020962.P9065350151134453772

namespace A020962

/-- `2*A215928(n+1)-A065033(n+1)` -/
def P9065350151134453772.Spec : Prop :=
  ∀ n, P9065350151134453772.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P306952472240350960

`A052542(n+1)-A030065(2*n+1)+n`
-/

namespace A020962.P306952472240350960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - A030065 (2 * n + 1) + (n : ℤ)

end

end A020962.P306952472240350960

namespace A020962

/-- `A052542(n+1)-A030065(2*n+1)+n` -/
def P306952472240350960.Spec : Prop :=
  ∀ n, P306952472240350960.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P107596217414411280

`A001333(n+1)+A001333(n)-A008619(n)`
-/

namespace A020962.P107596217414411280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A001333 n - A008619 n)

end

end A020962.P107596217414411280

namespace A020962

/-- `A001333(n+1)+A001333(n)-A008619(n)` -/
def P107596217414411280.Spec : Prop :=
  ∀ n, P107596217414411280.a n = A020962 (n + 1)

end A020962

/-! ## A020962.P1103067395458678716

`A000129(n+1)+A000129(n+1)-A008619(n)`
-/

namespace A020962.P1103067395458678716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A000129 (n + 1) - A008619 n)

end

end A020962.P1103067395458678716

namespace A020962

/-- `A000129(n+1)+A000129(n+1)-A008619(n)` -/
def P1103067395458678716.Spec : Prop :=
  ∀ n, P1103067395458678716.a n = A020962 (n + 1)

end A020962

/-!
# A020963: a(n) = Sum_{k>=1} floor( 2*(1+sqrt(2))^(n-k) ).

The programs for A020963, the canonical program `A020963.P3142967862053503800` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020963 has offset 1).

The definition of A020963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020963.P17841520699756554126

`ogf((2-x^2+2x^3-x^4)/(1-3x+4x^3-x^4-x^5))`
-/

namespace A020963.P17841520699756554126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, 2, -1] [1, -3, 0, 4, -1, -1] n

end

end A020963.P17841520699756554126

namespace A020963

/-- `ogf((2-x^2+2x^3-x^4)/(1-3x+4x^3-x^4-x^5))` -/
def P17841520699756554126.Spec : Prop :=
  ∀ n, P17841520699756554126.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P3142967862053503800

`3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` with `a(0)=2, a(1)=6, a(2)=17, a(3)=45, a(4)=112`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020963

/-- `3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` -/
def P3142967862053503800.Spec : Prop :=
  ∀ n, P3142967862053503800.a n = A020963 (n + 1)

theorem P3142967862053503800.correct : P3142967862053503800.Spec := by
  intro n
  simp only [A020963, Nat.add_sub_cancel]

end A020963

/-! ## A020963.P7621242710755996638

`∑[A080039(n)+A002203(n)]-1`
-/

namespace A020963.P7621242710755996638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 n + A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A020963.P7621242710755996638

namespace A020963

/-- `∑[A080039(n)+A002203(n)]-1` -/
def P7621242710755996638.Spec : Prop :=
  ∀ n, P7621242710755996638.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P2917012966445347091

`A133654(n+1)+A020962(n+1)`
-/

namespace A020963.P2917012966445347091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) + A020962 (n + 1)

end

end A020963.P2917012966445347091

namespace A020963

/-- `A133654(n+1)+A020962(n+1)` -/
def P2917012966445347091.Spec : Prop :=
  ∀ n, P2917012966445347091.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P16149755173209883654

`2*A133654(n+1)-A004526(n)`
-/

namespace A020963.P16149755173209883654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133654 (n + 1) - A004526 n

end

end A020963.P16149755173209883654

namespace A020963

/-- `2*A133654(n+1)-A004526(n)` -/
def P16149755173209883654.Spec : Prop :=
  ∀ n, P16149755173209883654.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P9269242629363966181

`Δ[A002203(n+1)]-(A004526(n)+2)`
-/

namespace A020963.P9269242629363966181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A004526 n + 2)

end

end A020963.P9269242629363966181

namespace A020963

/-- `Δ[A002203(n+1)]-(A004526(n)+2)` -/
def P9269242629363966181.Spec : Prop :=
  ∀ n, P9269242629363966181.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P3649496848563839459

`Δ[A002203(n+1)-(A002620(n+3)-2)]`
-/

namespace A020963.P3649496848563839459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - (A002620 (n + 3) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020963.P3649496848563839459

namespace A020963

/-- `Δ[A002203(n+1)-(A002620(n+3)-2)]` -/
def P3649496848563839459.Spec : Prop :=
  ∀ n, P3649496848563839459.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P8933645199309602625

`A080039(n+1)-(A008619(n)-A080039(n))`
-/

namespace A020963.P8933645199309602625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (n + 1) - (A008619 n - A080039 n)

end

end A020963.P8933645199309602625

namespace A020963

/-- `A080039(n+1)-(A008619(n)-A080039(n))` -/
def P8933645199309602625.Spec : Prop :=
  ∀ n, P8933645199309602625.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P13326559478550809670

`∑[floor(2*sqrt(A003499(n)))]`
-/

namespace A020963.P13326559478550809670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A003499 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020963.P13326559478550809670

namespace A020963

/-- `∑[floor(2*sqrt(A003499(n)))]` -/
def P13326559478550809670.Spec : Prop :=
  ∀ n, P13326559478550809670.a n = A020963 (n + 1)

end A020963

/-! ## A020963.P5201238528751566899

`A182831(∑[n+2])`
-/

namespace A020963.P5201238528751566899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182831 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020963.P5201238528751566899

namespace A020963

/-- `A182831(∑[n+2])` -/
def P5201238528751566899.Spec : Prop :=
  ∀ n, P5201238528751566899.a n = A020963 (n + 1)

end A020963

/-!
# A020964: a(n) = Sum_{k>=1} floor( 3*(1+sqrt(2))^(n-k) ).

The programs for A020964, the canonical program `A020964.P17267791713902895914` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020964 has offset 0).

The definition of A020964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020964.P17267791713902895914

`ogf((1+x-x^2-x^3+x^4+x^6)/(1-3x+4x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020964

/-- `ogf((1+x-x^2-x^3+x^4+x^6)/(1-3x+4x^3-x^4-x^5))` -/
def P17267791713902895914.Spec : Prop :=
  ∀ n, P17267791713902895914.a n = A020964 n

theorem P17267791713902895914.correct : P17267791713902895914.Spec := by
  intro n
  simp only [A020964]

end A020964

/-! ## A020964.P9165040333080030412

`3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=28, a(4)=70, a(5)=171, a(6)=417`
-/

namespace A020964.P9165040333080030412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11, 28, 70, 171, 417] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A020964.P9165040333080030412

namespace A020964

/-- `3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` -/
def P9165040333080030412.Spec : Prop :=
  ∀ n, P9165040333080030412.a n = A020964 n

end A020964

/-! ## A020964.P3844205134515287516

`A182831(∑[n+1]+n)`
-/

namespace A020964.P3844205134515287516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182831 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A020964.P3844205134515287516

namespace A020964

/-- `A182831(∑[n+1]+n)` -/
def P3844205134515287516.Spec : Prop :=
  ∀ n, P3844205134515287516.a n = A020964 n

end A020964

/-!
# A020965: a(n) = Sum_{k >= 1} floor(n*sqrt(2)^(1-k)).

The programs for A020965, the canonical program `A020965.P8785795445900425784` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020965 has offset 1).

The definition of A020965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020965.P10614295276811328139

`A155689(n+1)+A005187(n+1)`
-/

namespace A020965.P10614295276811328139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (n + 1) + A005187 (n + 1)

end

end A020965.P10614295276811328139

namespace A020965

/-- `A155689(n+1)+A005187(n+1)` -/
def P10614295276811328139.Spec : Prop :=
  ∀ n, P10614295276811328139.a n = A020965 (n + 1)

theorem P10614295276811328139.correct : P10614295276811328139.Spec := by
  intro n
  simp only [A020965, Nat.add_sub_cancel, A020965.P10614295276811328139.a, A020965.P8785795445900425784.a, A005187, A005187.P3874015513960485494.a, A049472, A049472.P13396613520496134978.a, A155689, A155689.P2139899322435435333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A020965

/-! ## A020965.P8453022987455743812

`A020967(n+1)-A184922(n+1)`
-/

namespace A020965.P8453022987455743812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020967 (n + 1) - A184922 (n + 1)

end

end A020965.P8453022987455743812

namespace A020965

/-- `A020967(n+1)-A184922(n+1)` -/
def P8453022987455743812.Spec : Prop :=
  ∀ n, P8453022987455743812.a n = A020965 (n + 1)

theorem P8453022987455743812.correct : P8453022987455743812.Spec := by
  intro n
  simp only [A020965, Nat.add_sub_cancel, A020965.P8453022987455743812.a, A020965.P8785795445900425784.a, A005187, A005187.P3874015513960485494.a, A020967, A020967.P5267154593635294162.a, A049472, A049472.P13396613520496134978.a, A184922, A184922.P3022455773076834712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A020965

/-! ## A020965.P14867865540472216445

`n+1+A155689(n+1)+A011371(n+1)`
-/

namespace A020965.P14867865540472216445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A155689 (n + 1) + A011371 (n + 1))

end

end A020965.P14867865540472216445

namespace A020965

/-- `n+1+A155689(n+1)+A011371(n+1)` -/
def P14867865540472216445.Spec : Prop :=
  ∀ n, P14867865540472216445.a n = A020965 (n + 1)

theorem P14867865540472216445.correct : P14867865540472216445.Spec := by
  intro n
  simp only [A020965, Nat.add_sub_cancel, A020965.P14867865540472216445.a, A020965.P8785795445900425784.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A049472, A049472.P13396613520496134978.a, A155689, A155689.P2139899322435435333.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A020965

/-! ## A020965.P8785795445900425784

`A005187(n+1)+A005187(A049472(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020965

/-- `A005187(n+1)+A005187(A049472(n+1))` -/
def P8785795445900425784.Spec : Prop :=
  ∀ n, P8785795445900425784.a n = A020965 (n + 1)

theorem P8785795445900425784.correct : P8785795445900425784.Spec := by
  intro n
  simp only [A020965, Nat.add_sub_cancel]

end A020965

/-! ## A020965.P860516051586464511

`A122247(n+1)+A155689(n+1)-A122247(n)`
-/

namespace A020965.P860516051586464511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 (n + 1) + (A155689 (n + 1) - A122247 n)

end

end A020965.P860516051586464511

namespace A020965

/-- `A122247(n+1)+A155689(n+1)-A122247(n)` -/
def P860516051586464511.Spec : Prop :=
  ∀ n, P860516051586464511.a n = A020965 (n + 1)

end A020965

/-! ## A020965.P17830912538969745204

`A005187(A003152(n+1)-(n+1))+A005187(n+1)`
-/

namespace A020965.P17830912538969745204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A003152 (n + 1) - (n + 1 : ℤ)).toNat + A005187 (n + 1)

end

end A020965.P17830912538969745204

namespace A020965

/-- `A005187(A003152(n+1)-(n+1))+A005187(n+1)` -/
def P17830912538969745204.Spec : Prop :=
  ∀ n, P17830912538969745204.a n = A020965 (n + 1)

end A020965

/-! ## A020965.P18089900401267067994

`A101925(A049472(n+1))+A101925(n+1)-2`
-/

namespace A020965.P18089900401267067994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (A049472 (n + 1)).toNat + (A101925 (n + 1) - 2)

end

end A020965.P18089900401267067994

namespace A020965

/-- `A101925(A049472(n+1))+A101925(n+1)-2` -/
def P18089900401267067994.Spec : Prop :=
  ∀ n, P18089900401267067994.a n = A020965 (n + 1)

theorem P18089900401267067994.correct : P18089900401267067994.Spec := by
  intro n
  simp only [A020965, Nat.add_sub_cancel, A020965.P18089900401267067994.a, A020965.P8785795445900425784.a, A005187, A005187.P3874015513960485494.a, A049472, A049472.P13396613520496134978.a, A101925, A101925.P9724492527127448858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A020965

/-! ## A020965.P751947114819301326

`n+1+A011371(A001951(n+1))+A011371(n+1)`
-/

namespace A020965.P751947114819301326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A011371 (A001951 (n + 1)).toNat + A011371 (n + 1))

end

end A020965.P751947114819301326

namespace A020965

/-- `n+1+A011371(A001951(n+1))+A011371(n+1)` -/
def P751947114819301326.Spec : Prop :=
  ∀ n, P751947114819301326.a n = A020965 (n + 1)

end A020965

/-!
# A020966: a(n) = Sum_{k>=1} floor(n*sqrt(2)^(2-k)).

The programs for A020966, the canonical program `A020966.P16300765011735899529` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020966 has offset 1).

The definition of A020966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020966.P16300765011735899529

`A020967(n+1)-Δ[n²]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020966

/-- `A020967(n+1)-Δ[n²]` -/
def P16300765011735899529.Spec : Prop :=
  ∀ n, P16300765011735899529.a n = A020966 (n + 1)

theorem P16300765011735899529.correct : P16300765011735899529.Spec := by
  intro n
  simp only [A020966, Nat.add_sub_cancel]

end A020966

/-! ## A020966.P17588874735218056444

`floor(A020965(n+1)+(n+1)*sqrt(2))`
-/

namespace A020966.P17588874735218056444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020965 (n + 1) : ℝ) + (n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A020966.P17588874735218056444

namespace A020966

/-- `floor(A020965(n+1)+(n+1)*sqrt(2))` -/
def P17588874735218056444.Spec : Prop :=
  ∀ n, P17588874735218056444.a n = A020966 (n + 1)

end A020966

/-! ## A020966.P9593465835171590722

`A020965(2*(n+1))-2*(n+1)`
-/

namespace A020966.P9593465835171590722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020965 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A020966.P9593465835171590722

namespace A020966

/-- `A020965(2*(n+1))-2*(n+1)` -/
def P9593465835171590722.Spec : Prop :=
  ∀ n, P9593465835171590722.a n = A020966 (n + 1)

end A020966

/-! ## A020966.P13615958029982966458

`A155689(2*(n+1))+A005187(n+1)`
-/

namespace A020966.P13615958029982966458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (2 * (n + 1)) + A005187 (n + 1)

end

end A020966.P13615958029982966458

namespace A020966

/-- `A155689(2*(n+1))+A005187(n+1)` -/
def P13615958029982966458.Spec : Prop :=
  ∀ n, P13615958029982966458.a n = A020966 (n + 1)

end A020966

/-! ## A020966.P16223303086100747563

`A155689(2*(n+1))+A155689(A258833(n+1))`
-/

namespace A020966.P16223303086100747563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (2 * (n + 1)) + A155689 (A258833 (n + 1)).toNat

end

end A020966.P16223303086100747563

namespace A020966

/-- `A155689(2*(n+1))+A155689(A258833(n+1))` -/
def P16223303086100747563.Spec : Prop :=
  ∀ n, P16223303086100747563.a n = A020966 (n + 1)

end A020966

/-! ## A020966.P3428324742689479800

`A005187(A172471((n+1)²))+A005187(n+1)`
-/

namespace A020966.P3428324742689479800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A172471 ((n + 1) ^ 2)).toNat + A005187 (n + 1)

end

end A020966.P3428324742689479800

namespace A020966

/-- `A005187(A172471((n+1)²))+A005187(n+1)` -/
def P3428324742689479800.Spec : Prop :=
  ∀ n, P3428324742689479800.a n = A020966 (n + 1)

end A020966

/-!
# A020967: a(n) = Sum_{k >=1} floor(n*sqrt(2)^(3-k)).

The programs for A020967, the canonical program `A020967.P5267154593635294162` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020967 has offset 1).

The definition of A020967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020967.P5233022282219377847

`A020966(n+1)+Δ[n²]`
-/

namespace A020967.P5233022282219377847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020966 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A020967.P5233022282219377847

namespace A020967

/-- `A020966(n+1)+Δ[n²]` -/
def P5233022282219377847.Spec : Prop :=
  ∀ n, P5233022282219377847.a n = A020967 (n + 1)

theorem P5233022282219377847.correct : P5233022282219377847.Spec := by
  intro n
  simp only [A020967, Nat.add_sub_cancel, A020967.P5233022282219377847.f1, A020967.P5233022282219377847.a, A020967.P5267154593635294162.a, A020965, A020965.P8785795445900425784.a, A020966, A020966.P16300765011735899529.f1, A020966.P16300765011735899529.a, A184922, A184922.P3022455773076834712.a, A005187, A005187.P3874015513960485494.a, A049472, A049472.P13396613520496134978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A020967

/-! ## A020967.P5267154593635294162

`A184922(n+1)+A020965(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020967

/-- `A184922(n+1)+A020965(n+1)` -/
def P5267154593635294162.Spec : Prop :=
  ∀ n, P5267154593635294162.a n = A020967 (n + 1)

theorem P5267154593635294162.correct : P5267154593635294162.Spec := by
  intro n
  simp only [A020967, Nat.add_sub_cancel]

end A020967

/-! ## A020967.P6830136771365864905

`A317439(n+1)+A020966(n+1)`
-/

namespace A020967.P6830136771365864905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1) + A020966 (n + 1)

end

end A020967.P6830136771365864905

namespace A020967

/-- `A317439(n+1)+A020966(n+1)` -/
def P6830136771365864905.Spec : Prop :=
  ∀ n, P6830136771365864905.a n = A020967 (n + 1)

end A020967

/-! ## A020967.P12693333214941846395

`n+1+A020966(n+1)+n%A000203(n+1)`
-/

namespace A020967.P12693333214941846395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A020966 (n + 1) + Int.tmod (n : ℤ) (A000203 (n + 1)))

end

end A020967.P12693333214941846395

namespace A020967

/-- `n+1+A020966(n+1)+n%A000203(n+1)` -/
def P12693333214941846395.Spec : Prop :=
  ∀ n, P12693333214941846395.a n = A020967 (n + 1)

end A020967

/-! ## A020967.P14967774538479215929

`A020965(2*(n+1))-1`
-/

namespace A020967.P14967774538479215929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020965 (2 * (n + 1)) - 1

end

end A020967.P14967774538479215929

namespace A020967

/-- `A020965(2*(n+1))-1` -/
def P14967774538479215929.Spec : Prop :=
  ∀ n, P14967774538479215929.a n = A020967 (n + 1)

end A020967

/-!
# A020968: Expansion of 1/((1-7*x)*(1-8*x)*(1-11*x)).

The programs for A020968, the canonical program `A020968.P17331879652675560125` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020968 has offset 0).

The definition of A020968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020968.P17331879652675560125

`19*a(n-1)-88*a(n-2)+7^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020968

/-- `19*a(n-1)-88*a(n-2)+7^n` -/
def P17331879652675560125.Spec : Prop :=
  ∀ n, P17331879652675560125.a n = A020968 n

theorem P17331879652675560125.correct : P17331879652675560125.Spec := by
  intro n
  simp only [A020968]

end A020968

/-! ## A020968.P4122309539091329232

`(3*7^(n+2)-4*8^(n+2)+11^(n+2))/12`
-/

namespace A020968.P4122309539091329232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 7 ^ (n + 2) : ℤ) - (4 * 8 ^ (n + 2) : ℤ) + (11 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A020968.P4122309539091329232

namespace A020968

/-- `(3*7^(n+2)-4*8^(n+2)+11^(n+2))/12` -/
def P4122309539091329232.Spec : Prop :=
  ∀ n, P4122309539091329232.a n = (A020968 n : ℚ)

theorem P4122309539091329232.correct : P4122309539091329232.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020968, Nat.add_sub_cancel, A020968.P4122309539091329232.a, A020968.P17331879652675560125.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020968, Nat.add_sub_cancel, A020968.P4122309539091329232.a, A020968.P17331879652675560125.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020968

/-! ## A020968.P11312746283498619770

`A016187(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A020968.P11312746283498619770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016187 n + 7 * a (n - 1)

end

end A020968.P11312746283498619770

namespace A020968

/-- `A016187(n)+7*a(n-1)` -/
def P11312746283498619770.Spec : Prop :=
  ∀ n, P11312746283498619770.a n = A020968 n

end A020968

/-! ## A020968.P8439698022647946948

`A020593(n)+A020593(n)-A020573(n)`
-/

namespace A020968.P8439698022647946948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020593 n + (A020593 n - A020573 n)

end

end A020968.P8439698022647946948

namespace A020968

/-- `A020593(n)+A020593(n)-A020573(n)` -/
def P8439698022647946948.Spec : Prop :=
  ∀ n, P8439698022647946948.a n = A020968 n

end A020968

/-! ## A020968.P16710777742684352932

`Δ[A016259(n)-A016254(n)]`
-/

namespace A020968.P16710777742684352932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016259 n - A016254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020968.P16710777742684352932

namespace A020968

/-- `Δ[A016259(n)-A016254(n)]` -/
def P16710777742684352932.Spec : Prop :=
  ∀ n, P16710777742684352932.a n = A020968 n

end A020968

/-! ## A020968.P7369378192656040261

`2*A020593(n)-A020573(n)`
-/

namespace A020968.P7369378192656040261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020593 n - A020573 n

end

end A020968.P7369378192656040261

namespace A020968

/-- `2*A020593(n)-A020573(n)` -/
def P7369378192656040261.Spec : Prop :=
  ∀ n, P7369378192656040261.a n = A020968 n

end A020968

/-! ## A020968.P1801352955272062787

`2*A020971(n)-A020977(n)`
-/

namespace A020968.P1801352955272062787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020971 n - A020977 n

end

end A020968.P1801352955272062787

namespace A020968

/-- `2*A020971(n)-A020977(n)` -/
def P1801352955272062787.Spec : Prop :=
  ∀ n, P1801352955272062787.a n = A020968 n

end A020968

/-! ## A020968.P8533896966939724926

`A020970(n)+A020973(n)-A020977(n)`
-/

namespace A020968.P8533896966939724926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020970 n + (A020973 n - A020977 n)

end

end A020968.P8533896966939724926

namespace A020968

/-- `A020970(n)+A020973(n)-A020977(n)` -/
def P8533896966939724926.Spec : Prop :=
  ∀ n, P8533896966939724926.a n = A020968 n

end A020968

/-!
# A020969: Expansion of 1/((1-7*x)*(1-8*x)*(1-12*x)).

The programs for A020969, the canonical program `A020969.P6867530979372783503` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020969 has offset 0).

The definition of A020969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020969.P6867530979372783503

`20*a(n-1)-96*a(n-2)+7^n` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020969

/-- `20*a(n-1)-96*a(n-2)+7^n` -/
def P6867530979372783503.Spec : Prop :=
  ∀ n, P6867530979372783503.a n = A020969 n

theorem P6867530979372783503.correct : P6867530979372783503.Spec := by
  intro n
  simp only [A020969]

end A020969

/-! ## A020969.P8172260533407161643

`(7^(n+2)-10*8^(n+1)+3*12^(n+1))/5`
-/

namespace A020969.P8172260533407161643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (10 * 8 ^ (n + 1) : ℤ) + (3 * 12 ^ (n + 1) : ℤ) : ℚ) / 5

end

end A020969.P8172260533407161643

namespace A020969

/-- `(7^(n+2)-10*8^(n+1)+3*12^(n+1))/5` -/
def P8172260533407161643.Spec : Prop :=
  ∀ n, P8172260533407161643.a n = (A020969 n : ℚ)

theorem P8172260533407161643.correct : P8172260533407161643.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020969, Nat.add_sub_cancel, A020969.P8172260533407161643.a, A020969.P6867530979372783503.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020969, Nat.add_sub_cancel, A020969.P8172260533407161643.a, A020969.P6867530979372783503.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020969

/-! ## A020969.P14044124116891087424

`A016184(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A020969.P14044124116891087424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016184 n + 8 * a (n - 1)

end

end A020969.P14044124116891087424

namespace A020969

/-- `A016184(n)+8*a(n-1)` -/
def P14044124116891087424.Spec : Prop :=
  ∀ n, P14044124116891087424.a n = A020969 n

end A020969

/-! ## A020969.P9168463957748234852

`A016177(n+1)+12*a(n-1)` with `a(0)=1`
-/

namespace A020969.P9168463957748234852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016177 (n + 1) + 12 * a (n - 1)

end

end A020969.P9168463957748234852

namespace A020969

/-- `A016177(n+1)+12*a(n-1)` -/
def P9168463957748234852.Spec : Prop :=
  ∀ n, P9168463957748234852.a n = A020969 n

end A020969

/-! ## A020969.P8378829619281795768

`Δ[A016260(n)-A016255(n)]`
-/

namespace A020969.P8378829619281795768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016260 n - A016255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020969.P8378829619281795768

namespace A020969

/-- `Δ[A016260(n)-A016255(n)]` -/
def P8378829619281795768.Spec : Prop :=
  ∀ n, P8378829619281795768.a n = A020969 n

end A020969

/-! ## A020969.P18072350334657711354

`2*A020594(n)-A020577(n)`
-/

namespace A020969.P18072350334657711354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020594 n - A020577 n

end

end A020969.P18072350334657711354

namespace A020969

/-- `2*A020594(n)-A020577(n)` -/
def P18072350334657711354.Spec : Prop :=
  ∀ n, P18072350334657711354.a n = A020969 n

end A020969

/-! ## A020969.P13121155553278839959

`2*A020972(n)-A020978(n)`
-/

namespace A020969.P13121155553278839959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020972 n - A020978 n

end

end A020969.P13121155553278839959

namespace A020969

/-- `2*A020972(n)-A020978(n)` -/
def P13121155553278839959.Spec : Prop :=
  ∀ n, P13121155553278839959.a n = A020969 n

end A020969

/-!
# A020970: Expansion of 1/((1-7*x)*(1-9*x)*(1-10*x)).

The programs for A020970, the canonical program `A020970.P4796079477506276464` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020970 has offset 0).

The definition of A020970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020970.P4796079477506276464

`19*a(n-1)-90*a(n-2)+7^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020970

/-- `19*a(n-1)-90*a(n-2)+7^n` -/
def P4796079477506276464.Spec : Prop :=
  ∀ n, P4796079477506276464.a n = A020970 n

theorem P4796079477506276464.correct : P4796079477506276464.Spec := by
  intro n
  simp only [A020970]

end A020970

/-! ## A020970.P6937660923506398355

`(7^(n+2)-3*9^(n+2)+2*10^(n+2))/6`
-/

namespace A020970.P6937660923506398355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (3 * 9 ^ (n + 2) : ℤ) + (2 * 10 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A020970.P6937660923506398355

namespace A020970

/-- `(7^(n+2)-3*9^(n+2)+2*10^(n+2))/6` -/
def P6937660923506398355.Spec : Prop :=
  ∀ n, P6937660923506398355.a n = (A020970 n : ℚ)

theorem P6937660923506398355.correct : P6937660923506398355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020970, Nat.add_sub_cancel, A020970.P6937660923506398355.a, A020970.P4796079477506276464.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020970, Nat.add_sub_cancel, A020970.P6937660923506398355.a, A020970.P4796079477506276464.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020970

/-! ## A020970.P15455294094905630436

`Δ[A016252(n)-A016250(n)]`
-/

namespace A020970.P15455294094905630436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016252 n - A016250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020970.P15455294094905630436

namespace A020970

/-- `Δ[A016252(n)-A016250(n)]` -/
def P15455294094905630436.Spec : Prop :=
  ∀ n, P15455294094905630436.a n = A020970 n

end A020970

/-! ## A020970.P10297625716938752936

`2*A019682(n)-A019613(n)`
-/

namespace A020970.P10297625716938752936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019682 n - A019613 n

end

end A020970.P10297625716938752936

namespace A020970

/-- `2*A019682(n)-A019613(n)` -/
def P10297625716938752936.Spec : Prop :=
  ∀ n, P10297625716938752936.a n = A020970 n

end A020970

/-! ## A020970.P16102109585134671431

`2*A020838(n)-A020782(n)`
-/

namespace A020970.P16102109585134671431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020838 n - A020782 n

end

end A020970.P16102109585134671431

namespace A020970

/-- `2*A020838(n)-A020782(n)` -/
def P16102109585134671431.Spec : Prop :=
  ∀ n, P16102109585134671431.a n = A020970 n

end A020970

/-!
# A020971: Expansion of 1/((1-7*x)*(1-9*x)*(1-11*x)).

The programs for A020971, the canonical program `A020971.P14010666985743969821` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020971 has offset 0).

The definition of A020971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020971.P14010666985743969821

`20*a(n-1)-99*a(n-2)+7^n` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020971

/-- `20*a(n-1)-99*a(n-2)+7^n` -/
def P14010666985743969821.Spec : Prop :=
  ∀ n, P14010666985743969821.a n = A020971 n

theorem P14010666985743969821.correct : P14010666985743969821.Spec := by
  intro n
  simp only [A020971]

end A020971

/-! ## A020971.P16371065220693933194

`(7^(n+2)-2*9^(n+2)+11^(n+2))/8`
-/

namespace A020971.P16371065220693933194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (2 * 9 ^ (n + 2) : ℤ) + (11 ^ (n + 2) : ℤ) : ℚ) / 8

end

end A020971.P16371065220693933194

namespace A020971

/-- `(7^(n+2)-2*9^(n+2)+11^(n+2))/8` -/
def P16371065220693933194.Spec : Prop :=
  ∀ n, P16371065220693933194.a n = (A020971 n : ℚ)

theorem P16371065220693933194.correct : P16371065220693933194.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020971, Nat.add_sub_cancel, A020971.P16371065220693933194.a, A020971.P14010666985743969821.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020971, Nat.add_sub_cancel, A020971.P16371065220693933194.a, A020971.P14010666985743969821.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020971

/-! ## A020971.P8315567198169312772

`7*a(n-1)+A139747(n+1)/2` with `a(0)=1`
-/

namespace A020971.P8315567198169312772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (A139747 (n + 1) : ℚ) / 2

end

end A020971.P8315567198169312772

namespace A020971

/-- `7*a(n-1)+A139747(n+1)/2` -/
def P8315567198169312772.Spec : Prop :=
  ∀ n, P8315567198169312772.a n = (A020971 n : ℚ)

end A020971

/-! ## A020971.P13818884527172256657

`2*A020499(n)-A020000(n)`
-/

namespace A020971.P13818884527172256657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020499 n - A020000 n

end

end A020971.P13818884527172256657

namespace A020971

/-- `2*A020499(n)-A020000(n)` -/
def P13818884527172256657.Spec : Prop :=
  ∀ n, P13818884527172256657.a n = A020971 n

end A020971

/-! ## A020971.P15340930943545298877

`floor((A020973(n)+A020970(n))/2)`
-/

namespace A020971.P15340930943545298877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020973 n + A020970 n : ℚ) / 2⌋

end

end A020971.P15340930943545298877

namespace A020971

/-- `floor((A020973(n)+A020970(n))/2)` -/
def P15340930943545298877.Spec : Prop :=
  ∀ n, P15340930943545298877.a n = A020971 n

end A020971

/-! ## A020971.P4684318199494133756

`floor((A020977(n)+A020968(n))/2)`
-/

namespace A020971.P4684318199494133756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020977 n + A020968 n : ℚ) / 2⌋

end

end A020971.P4684318199494133756

namespace A020971

/-- `floor((A020977(n)+A020968(n))/2)` -/
def P4684318199494133756.Spec : Prop :=
  ∀ n, P4684318199494133756.a n = A020971 n

end A020971

/-!
# A020972: Expansion of 1/((1-7*x)*(1-9*x)*(1-12*x)).

The programs for A020972, the canonical program `A020972.P12529446559979123082` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020972 has offset 0).

The definition of A020972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020972.P12529446559979123082

`21*a(n-1)-108*a(n-2)+7^n` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020972

/-- `21*a(n-1)-108*a(n-2)+7^n` -/
def P12529446559979123082.Spec : Prop :=
  ∀ n, P12529446559979123082.a n = A020972 n

theorem P12529446559979123082.correct : P12529446559979123082.Spec := by
  intro n
  simp only [A020972]

end A020972

/-! ## A020972.P7989379446029496521

`(2*12^(n+2)-5*9^(n+2)+3*7^(n+2))/30`
-/

namespace A020972.P7989379446029496521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 12 ^ (n + 2) : ℤ) - (5 * 9 ^ (n + 2) : ℤ) + (3 * 7 ^ (n + 2) : ℤ) : ℚ) / 30

end

end A020972.P7989379446029496521

namespace A020972

/-- `(2*12^(n+2)-5*9^(n+2)+3*7^(n+2))/30` -/
def P7989379446029496521.Spec : Prop :=
  ∀ n, P7989379446029496521.a n = (A020972 n : ℚ)

theorem P7989379446029496521.correct : P7989379446029496521.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020972, Nat.add_sub_cancel, A020972.P7989379446029496521.a, A020972.P12529446559979123082.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020972, Nat.add_sub_cancel, A020972.P7989379446029496521.a, A020972.P12529446559979123082.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020972

/-! ## A020972.P17941914989782186946

`A016178(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A020972.P17941914989782186946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016178 n + 12 * a (n - 1)

end

end A020972.P17941914989782186946

namespace A020972

/-- `A016178(n)+12*a(n-1)` -/
def P17941914989782186946.Spec : Prop :=
  ∀ n, P17941914989782186946.a n = A020972 n

end A020972

/-! ## A020972.P3327226105290337517

`a(n-1)+A016184(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A020972.P3327226105290337517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016184 n + 8 * a (n - 1))

end

end A020972.P3327226105290337517

namespace A020972

/-- `a(n-1)+A016184(n)+8*a(n-1)` -/
def P3327226105290337517.Spec : Prop :=
  ∀ n, P3327226105290337517.a n = A020972 n

end A020972

/-! ## A020972.P6824324432821899482

`2*A016324(n)-A016312(n)`
-/

namespace A020972.P6824324432821899482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016324 n - A016312 n

end

end A020972.P6824324432821899482

namespace A020972

/-- `2*A016324(n)-A016312(n)` -/
def P6824324432821899482.Spec : Prop :=
  ∀ n, P6824324432821899482.a n = A020972 n

end A020972

/-! ## A020972.P1286684513912293721

`2*A020577(n)-A020571(n)`
-/

namespace A020972.P1286684513912293721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020577 n - A020571 n

end

end A020972.P1286684513912293721

namespace A020972

/-- `2*A020577(n)-A020571(n)` -/
def P1286684513912293721.Spec : Prop :=
  ∀ n, P1286684513912293721.a n = A020972 n

end A020972

/-! ## A020972.P8965391930343332605

`2*A020975(n)-A020984(n)`
-/

namespace A020972.P8965391930343332605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020975 n - A020984 n

end

end A020972.P8965391930343332605

namespace A020972

/-- `2*A020975(n)-A020984(n)` -/
def P8965391930343332605.Spec : Prop :=
  ∀ n, P8965391930343332605.a n = A020972 n

end A020972

/-! ## A020972.P17339574622026033118

`A019628(n)+A019722(n)-A019613(n)`
-/

namespace A020972.P17339574622026033118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019628 n + (A019722 n - A019613 n)

end

end A020972.P17339574622026033118

namespace A020972

/-- `A019628(n)+A019722(n)-A019613(n)` -/
def P17339574622026033118.Spec : Prop :=
  ∀ n, P17339574622026033118.a n = A020972 n

end A020972

/-! ## A020972.P11853418404125631800

`A020970(n)+A020983(n)-A020974(n)`
-/

namespace A020972.P11853418404125631800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020970 n + (A020983 n - A020974 n)

end

end A020972.P11853418404125631800

namespace A020972

/-- `A020970(n)+A020983(n)-A020974(n)` -/
def P11853418404125631800.Spec : Prop :=
  ∀ n, P11853418404125631800.a n = A020972 n

end A020972

/-!
# A020973: Expansion of 1/((1-7*x)*(1-10*x)*(1-11*x)).

The programs for A020973, the canonical program `A020973.P17385915781681893038` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020973 has offset 0).

The definition of A020973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020973.P17385915781681893038

`21*a(n-1)-110*a(n-2)+7^n` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020973

/-- `21*a(n-1)-110*a(n-2)+7^n` -/
def P17385915781681893038.Spec : Prop :=
  ∀ n, P17385915781681893038.a n = A020973 n

theorem P17385915781681893038.correct : P17385915781681893038.Spec := by
  intro n
  simp only [A020973]

end A020973

/-! ## A020973.P16271835203156780601

`(3*11^(n+2)-4*10^(n+2)+7^(n+2))/12`
-/

namespace A020973.P16271835203156780601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 2) : ℤ) - (4 * 10 ^ (n + 2) : ℤ) + (7 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A020973.P16271835203156780601

namespace A020973

/-- `(3*11^(n+2)-4*10^(n+2)+7^(n+2))/12` -/
def P16271835203156780601.Spec : Prop :=
  ∀ n, P16271835203156780601.a n = (A020973 n : ℚ)

theorem P16271835203156780601.correct : P16271835203156780601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020973, Nat.add_sub_cancel, A020973.P16271835203156780601.a, A020973.P17385915781681893038.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020973, Nat.add_sub_cancel, A020973.P16271835203156780601.a, A020973.P17385915781681893038.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020973

/-! ## A020973.P8556087320624341704

`Δ[A016254(n)-A016252(n)]`
-/

namespace A020973.P8556087320624341704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016254 n - A016252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020973.P8556087320624341704

namespace A020973

/-- `Δ[A016254(n)-A016252(n)]` -/
def P8556087320624341704.Spec : Prop :=
  ∀ n, P8556087320624341704.a n = A020973 n

end A020973

/-! ## A020973.P5201462078867313715

`2*A019742(n)-A019623(n)`
-/

namespace A020973.P5201462078867313715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019742 n - A019623 n

end

end A020973.P5201462078867313715

namespace A020973

/-- `2*A019742(n)-A019623(n)` -/
def P5201462078867313715.Spec : Prop :=
  ∀ n, P5201462078867313715.a n = A020973 n

end A020973

/-! ## A020973.P1438570930062874455

`2*A020971(n)-A020970(n)`
-/

namespace A020973.P1438570930062874455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020971 n - A020970 n

end

end A020973.P1438570930062874455

namespace A020973

/-- `2*A020971(n)-A020970(n)` -/
def P1438570930062874455.Spec : Prop :=
  ∀ n, P1438570930062874455.a n = A020973 n

end A020973

/-! ## A020973.P11279573187073491181

`A020968(n)+A020977(n)-A020970(n)`
-/

namespace A020973.P11279573187073491181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020968 n + (A020977 n - A020970 n)

end

end A020973.P11279573187073491181

namespace A020973

/-- `A020968(n)+A020977(n)-A020970(n)` -/
def P11279573187073491181.Spec : Prop :=
  ∀ n, P11279573187073491181.a n = A020973 n

end A020973

/-!
# A020974: Expansion of 1/((1-7*x)*(1-10*x)*(1-12*x)).

The programs for A020974, the canonical program `A020974.P4256072696377922440` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020974 has offset 0).

The definition of A020974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020974.P4256072696377922440

`22*a(n-1)-120*a(n-2)+7^n` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020974

/-- `22*a(n-1)-120*a(n-2)+7^n` -/
def P4256072696377922440.Spec : Prop :=
  ∀ n, P4256072696377922440.a n = A020974 n

theorem P4256072696377922440.correct : P4256072696377922440.Spec := by
  intro n
  simp only [A020974]

end A020974

/-! ## A020974.P11593378466135897103

`(3*12^(n+2)-5*10^(n+2)+2*7^(n+2))/30`
-/

namespace A020974.P11593378466135897103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ (n + 2) : ℤ) - (5 * 10 ^ (n + 2) : ℤ) + (2 * 7 ^ (n + 2) : ℤ) : ℚ) / 30

end

end A020974.P11593378466135897103

namespace A020974

/-- `(3*12^(n+2)-5*10^(n+2)+2*7^(n+2))/30` -/
def P11593378466135897103.Spec : Prop :=
  ∀ n, P11593378466135897103.a n = (A020974 n : ℚ)

theorem P11593378466135897103.correct : P11593378466135897103.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020974, Nat.add_sub_cancel, A020974.P11593378466135897103.a, A020974.P4256072696377922440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020974, Nat.add_sub_cancel, A020974.P11593378466135897103.a, A020974.P4256072696377922440.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020974

/-! ## A020974.P15737065889356033317

`A016181(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A020974.P15737065889356033317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016181 n + 12 * a (n - 1)

end

end A020974.P15737065889356033317

namespace A020974

/-- `A016181(n)+12*a(n-1)` -/
def P15737065889356033317.Spec : Prop :=
  ∀ n, P15737065889356033317.a n = A020974 n

end A020974

/-! ## A020974.P1634635662290033553

`2*A016326(n)-A016313(n)`
-/

namespace A020974.P1634635662290033553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016326 n - A016313 n

end

end A020974.P1634635662290033553

namespace A020974

/-- `2*A016326(n)-A016313(n)` -/
def P1634635662290033553.Spec : Prop :=
  ∀ n, P1634635662290033553.a n = A020974 n

end A020974

/-! ## A020974.P17799729201673723382

`2*A019747(n)-A019628(n)`
-/

namespace A020974.P17799729201673723382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019747 n - A019628 n

end

end A020974.P17799729201673723382

namespace A020974

/-- `2*A019747(n)-A019628(n)` -/
def P17799729201673723382.Spec : Prop :=
  ∀ n, P17799729201673723382.a n = A020974 n

end A020974

/-! ## A020974.P11260489021920898357

`A019742(n)+A019752(n)-A019628(n)`
-/

namespace A020974.P11260489021920898357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019742 n + (A019752 n - A019628 n)

end

end A020974.P11260489021920898357

namespace A020974

/-- `A019742(n)+A019752(n)-A019628(n)` -/
def P11260489021920898357.Spec : Prop :=
  ∀ n, P11260489021920898357.a n = A020974 n

end A020974

/-! ## A020974.P11957430192032361843

`A020970(n)+A020983(n)-A020972(n)`
-/

namespace A020974.P11957430192032361843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020970 n + (A020983 n - A020972 n)

end

end A020974.P11957430192032361843

namespace A020974

/-- `A020970(n)+A020983(n)-A020972(n)` -/
def P11957430192032361843.Spec : Prop :=
  ∀ n, P11957430192032361843.a n = A020974 n

end A020974

/-!
# A020975: Expansion of 1/((1-7*x)*(1-11*x)*(1-12*x)).

The programs for A020975, the canonical program `A020975.P10553929017463583623` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020975 has offset 0).

The definition of A020975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020975.P10553929017463583623

`23*a(n-1)-132*a(n-2)+7^n` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020975

/-- `23*a(n-1)-132*a(n-2)+7^n` -/
def P10553929017463583623.Spec : Prop :=
  ∀ n, P10553929017463583623.a n = A020975 n

theorem P10553929017463583623.correct : P10553929017463583623.Spec := by
  intro n
  simp only [A020975]

end A020975

/-! ## A020975.P18362883658362253407

`49*7^n/20-121*11^n/4+144*12^n/5`
-/

namespace A020975.P18362883658362253407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 * 7 ^ n : ℚ) / 20 - (121 * 11 ^ n : ℚ) / 4 + (144 * 12 ^ n : ℚ) / 5

end

end A020975.P18362883658362253407

namespace A020975

/-- `49*7^n/20-121*11^n/4+144*12^n/5` -/
def P18362883658362253407.Spec : Prop :=
  ∀ n, P18362883658362253407.a n = (A020975 n : ℚ)

theorem P18362883658362253407.correct : P18362883658362253407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020975, Nat.add_sub_cancel, A020975.P18362883658362253407.a, A020975.P10553929017463583623.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020975, Nat.add_sub_cancel, A020975.P18362883658362253407.a, A020975.P10553929017463583623.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020975

/-! ## A020975.P6860311763215161153

`Δ[A016255(n)-A016254(n)]`
-/

namespace A020975.P6860311763215161153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016255 n - A016254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020975.P6860311763215161153

namespace A020975

/-- `Δ[A016255(n)-A016254(n)]` -/
def P6860311763215161153.Spec : Prop :=
  ∀ n, P6860311763215161153.a n = A020975 n

end A020975

/-! ## A020975.P15167721660834447541

`(A020984(n)+A020972(n))/2`
-/

namespace A020975.P15167721660834447541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020984 n + A020972 n : ℚ) / 2

end

end A020975.P15167721660834447541

namespace A020975

/-- `(A020984(n)+A020972(n))/2` -/
def P15167721660834447541.Spec : Prop :=
  ∀ n, P15167721660834447541.a n = (A020975 n : ℚ)

end A020975

/-!
# A020976: Expansion of 1/((1-8*x)*(1-9*x)*(1-10*x)).

The programs for A020976, the canonical program `A020976.P14501595777380205033` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020976 has offset 0).

The definition of A020976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020976.P14501595777380205033

`2^(2+3*(n+1))+2^(n+1)*5^(2+n)-9^(2+n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020976

/-- `2^(2+3*(n+1))+2^(n+1)*5^(2+n)-9^(2+n)` -/
def P14501595777380205033.Spec : Prop :=
  ∀ n, P14501595777380205033.a n = A020976 n

theorem P14501595777380205033.correct : P14501595777380205033.Spec := by
  intro n
  simp only [A020976]

end A020976

/-! ## A020976.P3833044767235789896

`27*a(n-1)-242*a(n-2)+720*a(n-3)` with `a(0)=1, a(1)=27, a(2)=487`
-/

namespace A020976.P3833044767235789896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27, 487] fun n a =>
  27 * a (n - 1) - 242 * a (n - 2) + 720 * a (n - 3)

end

end A020976.P3833044767235789896

namespace A020976

/-- `27*a(n-1)-242*a(n-2)+720*a(n-3)` -/
def P3833044767235789896.Spec : Prop :=
  ∀ n, P3833044767235789896.a n = A020976 n

theorem P3833044767235789896.correct : P3833044767235789896.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A020976, Nat.add_sub_cancel, A020976.P3833044767235789896.a, A020976.P14501595777380205033.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A020976, Nat.add_sub_cancel, A020976.P3833044767235789896.a, A020976.P14501595777380205033.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020976

/-! ## A020976.P9843430648562578305

`Δ[A016257(n)-A016256(n)]`
-/

namespace A020976.P9843430648562578305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016257 n - A016256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020976.P9843430648562578305

namespace A020976

/-- `Δ[A016257(n)-A016256(n)]` -/
def P9843430648562578305.Spec : Prop :=
  ∀ n, P9843430648562578305.a n = A020976 n

end A020976

/-! ## A020976.P14245220630425716854

`Δ[∑[A016186(n)]-A016256(n)]`
-/

namespace A020976.P14245220630425716854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020976.P14245220630425716854

namespace A020976

/-- `Δ[∑[A016186(n)]-A016256(n)]` -/
def P14245220630425716854.Spec : Prop :=
  ∀ n, P14245220630425716854.a n = A020976 n

end A020976

/-! ## A020976.P9857518681342353304

`Δ[A016261(n)-A016257(n)]`
-/

namespace A020976.P9857518681342353304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016261 n - A016257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020976.P9857518681342353304

namespace A020976

/-- `Δ[A016261(n)-A016257(n)]` -/
def P9857518681342353304.Spec : Prop :=
  ∀ n, P9857518681342353304.a n = A020976 n

end A020976

/-!
# A020977: Expansion of 1/((1-8*x)*(1-9*x)*(1-11*x)).

The programs for A020977, the canonical program `A020977.P1069178003751340139` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020977 has offset 0).

The definition of A020977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020977.P1069178003751340139

`20*a(n-1)-99*a(n-2)+8^n` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020977

/-- `20*a(n-1)-99*a(n-2)+8^n` -/
def P1069178003751340139.Spec : Prop :=
  ∀ n, P1069178003751340139.a n = A020977 n

theorem P1069178003751340139.correct : P1069178003751340139.Spec := by
  intro n
  simp only [A020977]

end A020977

/-! ## A020977.P17954067706407940719

`(11^(n+2)-3*9^(n+2)+2*8^(n+2))/6`
-/

namespace A020977.P17954067706407940719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 2) : ℤ) - (3 * 9 ^ (n + 2) : ℤ) + (2 * 8 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A020977.P17954067706407940719

namespace A020977

/-- `(11^(n+2)-3*9^(n+2)+2*8^(n+2))/6` -/
def P17954067706407940719.Spec : Prop :=
  ∀ n, P17954067706407940719.a n = (A020977 n : ℚ)

theorem P17954067706407940719.correct : P17954067706407940719.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020977, Nat.add_sub_cancel, A020977.P17954067706407940719.a, A020977.P1069178003751340139.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020977, Nat.add_sub_cancel, A020977.P17954067706407940719.a, A020977.P1069178003751340139.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020977

/-! ## A020977.P17522142958134589669

`A016190(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A020977.P17522142958134589669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016190 n + 8 * a (n - 1)

end

end A020977.P17522142958134589669

namespace A020977

/-- `A016190(n)+8*a(n-1)` -/
def P17522142958134589669.Spec : Prop :=
  ∀ n, P17522142958134589669.a n = A020977 n

end A020977

/-! ## A020977.P18178615588051426122

`Δ[A016262(n)-A016259(n)]`
-/

namespace A020977.P18178615588051426122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016262 n - A016259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020977.P18178615588051426122

namespace A020977

/-- `Δ[A016262(n)-A016259(n)]` -/
def P18178615588051426122.Spec : Prop :=
  ∀ n, P18178615588051426122.a n = A020977 n

end A020977

/-! ## A020977.P11448056627843748971

`2*A020971(n)-A020968(n)`
-/

namespace A020977.P11448056627843748971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020971 n - A020968 n

end

end A020977.P11448056627843748971

namespace A020977

/-- `2*A020971(n)-A020968(n)` -/
def P11448056627843748971.Spec : Prop :=
  ∀ n, P11448056627843748971.a n = A020977 n

end A020977

/-! ## A020977.P6965541989822148009

`A020593(n)+A020606(n)-A020579(n)`
-/

namespace A020977.P6965541989822148009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020593 n + (A020606 n - A020579 n)

end

end A020977.P6965541989822148009

namespace A020977

/-- `A020593(n)+A020606(n)-A020579(n)` -/
def P6965541989822148009.Spec : Prop :=
  ∀ n, P6965541989822148009.a n = A020977 n

end A020977

/-! ## A020977.P660096483666321603

`A020970(n)+A020973(n)-A020968(n)`
-/

namespace A020977.P660096483666321603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020970 n + (A020973 n - A020968 n)

end

end A020977.P660096483666321603

namespace A020977

/-- `A020970(n)+A020973(n)-A020968(n)` -/
def P660096483666321603.Spec : Prop :=
  ∀ n, P660096483666321603.a n = A020977 n

end A020977

/-!
# A020978: Expansion of 1/((1-8*x)*(1-9*x)*(1-12*x)).

The programs for A020978, the canonical program `A020978.P17391881791514292453` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020978 has offset 0).

The definition of A020978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020978.P17391881791514292453

`21*a(n-1)-108*a(n-2)+8^n` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020978

/-- `21*a(n-1)-108*a(n-2)+8^n` -/
def P17391881791514292453.Spec : Prop :=
  ∀ n, P17391881791514292453.a n = A020978 n

theorem P17391881791514292453.correct : P17391881791514292453.Spec := by
  intro n
  simp only [A020978]

end A020978

/-! ## A020978.P11631629437250644497

`(12^(n+2)-4*9^(n+2)+3*8^(n+2))/12`
-/

namespace A020978.P11631629437250644497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 2) : ℤ) - (4 * 9 ^ (n + 2) : ℤ) + (3 * 8 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A020978.P11631629437250644497

namespace A020978

/-- `(12^(n+2)-4*9^(n+2)+3*8^(n+2))/12` -/
def P11631629437250644497.Spec : Prop :=
  ∀ n, P11631629437250644497.a n = (A020978 n : ℚ)

theorem P11631629437250644497.correct : P11631629437250644497.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020978, Nat.add_sub_cancel, A020978.P11631629437250644497.a, A020978.P17391881791514292453.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020978, Nat.add_sub_cancel, A020978.P11631629437250644497.a, A020978.P17391881791514292453.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020978

/-! ## A020978.P14695184720587479669

`A016185(n+1)+12*a(n-1)` with `a(0)=1`
-/

namespace A020978.P14695184720587479669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016185 (n + 1) + 12 * a (n - 1)

end

end A020978.P14695184720587479669

namespace A020978

/-- `A016185(n+1)+12*a(n-1)` -/
def P14695184720587479669.Spec : Prop :=
  ∀ n, P14695184720587479669.a n = A020978 n

end A020978

/-! ## A020978.P2643437856843087771

`Δ[A016263(n)-A016260(n)]`
-/

namespace A020978.P2643437856843087771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 n - A016260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020978.P2643437856843087771

namespace A020978

/-- `Δ[A016263(n)-A016260(n)]` -/
def P2643437856843087771.Spec : Prop :=
  ∀ n, P2643437856843087771.a n = A020978 n

end A020978

/-! ## A020978.P8483329922151586750

`2*A019722(n)-A019664(n)`
-/

namespace A020978.P8483329922151586750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019722 n - A019664 n

end

end A020978.P8483329922151586750

namespace A020978

/-- `2*A019722(n)-A019664(n)` -/
def P8483329922151586750.Spec : Prop :=
  ∀ n, P8483329922151586750.a n = A020978 n

end A020978

/-! ## A020978.P4059282138243565810

`2*A020594(n)-A020579(n)`
-/

namespace A020978.P4059282138243565810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020594 n - A020579 n

end

end A020978.P4059282138243565810

namespace A020978

/-- `2*A020594(n)-A020579(n)` -/
def P4059282138243565810.Spec : Prop :=
  ∀ n, P4059282138243565810.a n = A020978 n

end A020978

/-! ## A020978.P16294156460014879795

`2*A020980(n)-A020983(n)`
-/

namespace A020978.P16294156460014879795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020980 n - A020983 n

end

end A020978.P16294156460014879795

namespace A020978

/-- `2*A020980(n)-A020983(n)` -/
def P16294156460014879795.Spec : Prop :=
  ∀ n, P16294156460014879795.a n = A020978 n

end A020978

/-!
# A020979: Expansion of 1/((1-8*x)*(1-10*x)*(1-11*x)).

The programs for A020979, the canonical program `A020979.P5564430262261042235` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020979 has offset 0).

The definition of A020979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020979.P5564430262261042235

`21*a(n-1)-110*a(n-2)+8^n` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020979

/-- `21*a(n-1)-110*a(n-2)+8^n` -/
def P5564430262261042235.Spec : Prop :=
  ∀ n, P5564430262261042235.a n = A020979 n

theorem P5564430262261042235.correct : P5564430262261042235.Spec := by
  intro n
  simp only [A020979]

end A020979

/-! ## A020979.P7267691350736385352

`(2*11^(n+2)-3*10^(n+2)+8^(n+2))/6`
-/

namespace A020979.P7267691350736385352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 11 ^ (n + 2) : ℤ) - (3 * 10 ^ (n + 2) : ℤ) + (8 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A020979.P7267691350736385352

namespace A020979

/-- `(2*11^(n+2)-3*10^(n+2)+8^(n+2))/6` -/
def P7267691350736385352.Spec : Prop :=
  ∀ n, P7267691350736385352.a n = (A020979 n : ℚ)

theorem P7267691350736385352.correct : P7267691350736385352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020979, Nat.add_sub_cancel, A020979.P7267691350736385352.a, A020979.P5564430262261042235.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020979, Nat.add_sub_cancel, A020979.P7267691350736385352.a, A020979.P5564430262261042235.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020979

/-! ## A020979.P3053309358986578607

`Δ[A016259(n)-A016257(n)]`
-/

namespace A020979.P3053309358986578607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016259 n - A016257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020979.P3053309358986578607

namespace A020979

/-- `Δ[A016259(n)-A016257(n)]` -/
def P3053309358986578607.Spec : Prop :=
  ∀ n, P3053309358986578607.a n = A020979 n

end A020979

/-! ## A020979.P5272545563643352279

`2*A020977(n)-A020976(n)`
-/

namespace A020979.P5272545563643352279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020977 n - A020976 n

end

end A020979.P5272545563643352279

namespace A020979

/-- `2*A020977(n)-A020976(n)` -/
def P5272545563643352279.Spec : Prop :=
  ∀ n, P5272545563643352279.a n = A020979 n

end A020979

/-! ## A020979.P13997314778520173488

`A020976(n)+A020982(n)-A020977(n)`
-/

namespace A020979.P13997314778520173488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020976 n + (A020982 n - A020977 n)

end

end A020979.P13997314778520173488

namespace A020979

/-- `A020976(n)+A020982(n)-A020977(n)` -/
def P13997314778520173488.Spec : Prop :=
  ∀ n, P13997314778520173488.a n = A020979 n

end A020979

/-! ## A020979.P1294913012345383467

`2*A020980(n)-A020981(n)`
-/

namespace A020979.P1294913012345383467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020980 n - A020981 n

end

end A020979.P1294913012345383467

namespace A020979

/-- `2*A020980(n)-A020981(n)` -/
def P1294913012345383467.Spec : Prop :=
  ∀ n, P1294913012345383467.a n = A020979 n

end A020979

/-! ## A020979.P16874280397670283542

`A020978(n)+A020983(n)-A020981(n)`
-/

namespace A020979.P16874280397670283542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020978 n + (A020983 n - A020981 n)

end

end A020979.P16874280397670283542

namespace A020979

/-- `A020978(n)+A020983(n)-A020981(n)` -/
def P16874280397670283542.Spec : Prop :=
  ∀ n, P16874280397670283542.a n = A020979 n

end A020979

/-!
# A020980: Expansion of 1/((1-8*x)*(1-10*x)*(1-12*x)).

The programs for A020980, the canonical program `A020980.P11367559677175431910` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020980 has offset 0).

The definition of A020980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020980.P11367559677175431910

`22*a(n-1)-120*a(n-2)+8^n` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020980

/-- `22*a(n-1)-120*a(n-2)+8^n` -/
def P11367559677175431910.Spec : Prop :=
  ∀ n, P11367559677175431910.a n = A020980 n

theorem P11367559677175431910.correct : P11367559677175431910.Spec := by
  intro n
  simp only [A020980]

end A020980

/-! ## A020980.P6052785063829149942

`(12^(n+2)-2*10^(n+2)+8^(n+2))/8`
-/

namespace A020980.P6052785063829149942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 2) : ℤ) - (2 * 10 ^ (n + 2) : ℤ) + (8 ^ (n + 2) : ℤ) : ℚ) / 8

end

end A020980.P6052785063829149942

namespace A020980

/-- `(12^(n+2)-2*10^(n+2)+8^(n+2))/8` -/
def P6052785063829149942.Spec : Prop :=
  ∀ n, P6052785063829149942.a n = (A020980 n : ℚ)

theorem P6052785063829149942.correct : P6052785063829149942.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020980, Nat.add_sub_cancel, A020980.P6052785063829149942.a, A020980.P11367559677175431910.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020980, Nat.add_sub_cancel, A020980.P6052785063829149942.a, A020980.P11367559677175431910.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020980

/-! ## A020980.P13718778837108094257

`2^n*A016103(n)`
-/

namespace A020980.P13718778837108094257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016103 n

end

end A020980.P13718778837108094257

namespace A020980

/-- `2^n*A016103(n)` -/
def P13718778837108094257.Spec : Prop :=
  ∀ n, P13718778837108094257.a n = A020980 n

end A020980

/-! ## A020980.P14805923241678686377

`A245020(n+2)/2*2^n`
-/

namespace A020980.P14805923241678686377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245020 (n + 2) : ℚ) / 2 * (2 ^ n : ℚ)

end

end A020980.P14805923241678686377

namespace A020980

/-- `A245020(n+2)/2*2^n` -/
def P14805923241678686377.Spec : Prop :=
  ∀ n, P14805923241678686377.a n = (A020980 n : ℚ)

end A020980

/-! ## A020980.P7463726132040712069

`A016186(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A020980.P7463726132040712069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016186 n + 12 * a (n - 1)

end

end A020980.P7463726132040712069

namespace A020980

/-- `A016186(n)+12*a(n-1)` -/
def P7463726132040712069.Spec : Prop :=
  ∀ n, P7463726132040712069.a n = A020980 n

end A020980

/-! ## A020980.P13065168369742229298

`A016103(n)*A016116(2*n)`
-/

namespace A020980.P13065168369742229298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016103 n * A016116 (2 * n)

end

end A020980.P13065168369742229298

namespace A020980

/-- `A016103(n)*A016116(2*n)` -/
def P13065168369742229298.Spec : Prop :=
  ∀ n, P13065168369742229298.a n = A020980 n

end A020980

/-!
# A020981: Expansion of 1/((1-8*x)*(1-11*x)*(1-12*x)).

The programs for A020981, the canonical program `A020981.P8843607520513158784` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020981 has offset 0).

The definition of A020981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020981.P8843607520513158784

`16*8^n/3-121*11^n/3+36*12^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020981

/-- `16*8^n/3-121*11^n/3+36*12^n` -/
def P8843607520513158784.Spec : Prop :=
  ∀ n, P8843607520513158784.a n = (A020981 n : ℚ)

end A020981

/-! ## A020981.P481391324345930960

`23*a(n-1)-132*a(n-2)+8^n` with `a(0)=1, a(1)=31`
-/

namespace A020981.P481391324345930960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (8 ^ n : ℤ)

end

end A020981.P481391324345930960

namespace A020981

/-- `23*a(n-1)-132*a(n-2)+8^n` -/
def P481391324345930960.Spec : Prop :=
  ∀ n, P481391324345930960.a n = A020981 n

end A020981

/-! ## A020981.P3138638871544094390

`Δ[A016260(n)-A016259(n)]`
-/

namespace A020981.P3138638871544094390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016260 n - A016259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020981.P3138638871544094390

namespace A020981

/-- `Δ[A016260(n)-A016259(n)]` -/
def P3138638871544094390.Spec : Prop :=
  ∀ n, P3138638871544094390.a n = A020981 n

end A020981

/-! ## A020981.P331695280821501292

`(A028160(n)+A019752(n))/2`
-/

namespace A020981.P331695280821501292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028160 n + A019752 n : ℚ) / 2

end

end A020981.P331695280821501292

namespace A020981

/-- `(A028160(n)+A019752(n))/2` -/
def P331695280821501292.Spec : Prop :=
  ∀ n, P331695280821501292.a n = (A020981 n : ℚ)

end A020981

/-!
# A020982: Expansion of 1/((1-9*x)*(1-10*x)*(1-11*x)).

The programs for A020982, the canonical program `A020982.P8931510276343075646` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020982 has offset 0).

The definition of A020982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020982.P8931510276343075646

`21*a(n-1)-110*a(n-2)+9^n` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020982

/-- `21*a(n-1)-110*a(n-2)+9^n` -/
def P8931510276343075646.Spec : Prop :=
  ∀ n, P8931510276343075646.a n = A020982 n

theorem P8931510276343075646.correct : P8931510276343075646.Spec := by
  intro n
  simp only [A020982]

end A020982

/-! ## A020982.P12078444686535154287

`11^(n+2)/2+9^(n+2)/2-10^(n+2)`
-/

namespace A020982.P12078444686535154287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ (n + 2) : ℚ) / 2 + (9 ^ (n + 2) : ℚ) / 2 - (10 ^ (n + 2) : ℚ)

end

end A020982.P12078444686535154287

namespace A020982

/-- `11^(n+2)/2+9^(n+2)/2-10^(n+2)` -/
def P12078444686535154287.Spec : Prop :=
  ∀ n, P12078444686535154287.a n = (A020982 n : ℚ)

theorem P12078444686535154287.correct : P12078444686535154287.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A020982, Nat.add_sub_cancel, A020982.P12078444686535154287.a, A020982.P8931510276343075646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A020982, Nat.add_sub_cancel, A020982.P12078444686535154287.a, A020982.P8931510276343075646.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020982

/-! ## A020982.P12099414321456318435

`Δ[A016262(n)-A016261(n)]`
-/

namespace A020982.P12099414321456318435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016262 n - A016261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020982.P12099414321456318435

namespace A020982

/-- `Δ[A016262(n)-A016261(n)]` -/
def P12099414321456318435.Spec : Prop :=
  ∀ n, P12099414321456318435.a n = A020982 n

end A020982

/-! ## A020982.P16639862941677714681

`Δ[A016265(n)-A016262(n)]`
-/

namespace A020982.P16639862941677714681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016265 n - A016262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020982.P16639862941677714681

namespace A020982

/-- `Δ[A016265(n)-A016262(n)]` -/
def P16639862941677714681.Spec : Prop :=
  ∀ n, P16639862941677714681.a n = A020982 n

end A020982

/-!
# A020983: Expansion of 1/((1-9*x)*(1-10*x)*(1-12*x)).

The programs for A020983, the canonical program `A020983.P1877655808977654242` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020983 has offset 0).

The definition of A020983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020983.P1877655808977654242

`22*a(n-1)-120*a(n-2)+9^n` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020983

/-- `22*a(n-1)-120*a(n-2)+9^n` -/
def P1877655808977654242.Spec : Prop :=
  ∀ n, P1877655808977654242.a n = A020983 n

theorem P1877655808977654242.correct : P1877655808977654242.Spec := by
  intro n
  simp only [A020983]

end A020983

/-! ## A020983.P12965846872380037493

`A016196(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A020983.P12965846872380037493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016196 n + 9 * a (n - 1)

end

end A020983.P12965846872380037493

namespace A020983

/-- `A016196(n)+9*a(n-1)` -/
def P12965846872380037493.Spec : Prop :=
  ∀ n, P12965846872380037493.a n = A020983 n

end A020983

/-! ## A020983.P10452350712105615428

`A016191(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A020983.P10452350712105615428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016191 n + 10 * a (n - 1)

end

end A020983.P10452350712105615428

namespace A020983

/-- `A016191(n)+10*a(n-1)` -/
def P10452350712105615428.Spec : Prop :=
  ∀ n, P10452350712105615428.a n = A020983 n

end A020983

/-! ## A020983.P13594895018998942692

`A016189(n+1)+12*a(n-1)` with `a(0)=1`
-/

namespace A020983.P13594895018998942692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016189 (n + 1) + 12 * a (n - 1)

end

end A020983.P13594895018998942692

namespace A020983

/-- `A016189(n+1)+12*a(n-1)` -/
def P13594895018998942692.Spec : Prop :=
  ∀ n, P13594895018998942692.a n = A020983 n

end A020983

/-! ## A020983.P401749281738180744

`2*A020978(n)-A020976(n)`
-/

namespace A020983.P401749281738180744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020978 n - A020976 n

end

end A020983.P401749281738180744

namespace A020983

/-- `2*A020978(n)-A020976(n)` -/
def P401749281738180744.Spec : Prop :=
  ∀ n, P401749281738180744.a n = A020983 n

end A020983

/-! ## A020983.P7061010871105822529

`2*A020980(n)-A020978(n)`
-/

namespace A020983.P7061010871105822529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020980 n - A020978 n

end

end A020983.P7061010871105822529

namespace A020983

/-- `2*A020980(n)-A020978(n)` -/
def P7061010871105822529.Spec : Prop :=
  ∀ n, P7061010871105822529.a n = A020983 n

end A020983

/-! ## A020983.P3836183467467956885

`(A020984(n)+A020982(n))/2`
-/

namespace A020983.P3836183467467956885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020984 n + A020982 n : ℚ) / 2

end

end A020983.P3836183467467956885

namespace A020983

/-- `(A020984(n)+A020982(n))/2` -/
def P3836183467467956885.Spec : Prop :=
  ∀ n, P3836183467467956885.a n = (A020983 n : ℚ)

end A020983

/-! ## A020983.P10831008738163386591

`A020979(n)+A020981(n)-A020978(n)`
-/

namespace A020983.P10831008738163386591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020979 n + (A020981 n - A020978 n)

end

end A020983.P10831008738163386591

namespace A020983

/-- `A020979(n)+A020981(n)-A020978(n)` -/
def P10831008738163386591.Spec : Prop :=
  ∀ n, P10831008738163386591.a n = A020983 n

end A020983

/-! ## A020983.P4283773104218521071

`Δ[A016267(n)-A016263(n)]`
-/

namespace A020983.P4283773104218521071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016267 n - A016263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020983.P4283773104218521071

namespace A020983

/-- `Δ[A016267(n)-A016263(n)]` -/
def P4283773104218521071.Spec : Prop :=
  ∀ n, P4283773104218521071.a n = A020983 n

end A020983

/-!
# A020984: Expansion of 1/((1-9*x)*(1-11*x)*(1-12*x)).

The programs for A020984, the canonical program `A020984.P12662628521158913731` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020984 has offset 0).

The definition of A020984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020984.P12662628521158913731

`4*12^(n+1)-11^(n+2)/2+3*9^(n+1)/2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020984

/-- `4*12^(n+1)-11^(n+2)/2+3*9^(n+1)/2` -/
def P12662628521158913731.Spec : Prop :=
  ∀ n, P12662628521158913731.a n = (A020984 n : ℚ)

end A020984

/-! ## A020984.P15929729813084616417

`23*a(n-1)-132*a(n-2)+9^n` with `a(0)=1, a(1)=32`
-/

namespace A020984.P15929729813084616417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 32] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (9 ^ n : ℤ)

end

end A020984.P15929729813084616417

namespace A020984

/-- `23*a(n-1)-132*a(n-2)+9^n` -/
def P15929729813084616417.Spec : Prop :=
  ∀ n, P15929729813084616417.a n = A020984 n

end A020984

/-! ## A020984.P12937578266234037970

`Δ[A016263(n)-A016262(n)]`
-/

namespace A020984.P12937578266234037970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 n - A016262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020984.P12937578266234037970

namespace A020984

/-- `Δ[A016263(n)-A016262(n)]` -/
def P12937578266234037970.Spec : Prop :=
  ∀ n, P12937578266234037970.a n = A020984 n

end A020984

/-!
# A020985: The Rudin-Shapiro or Golay-Rudin-Shapiro sequence (coefficients of the Shapiro polynomials).

The programs for A020985, the canonical program `A020985.P937884151096334327` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020985 has offset 0).

The definition of A020985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020985.P937884151096334327

`(-1)^A014081(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A020985

/-- `(-1)^A014081(n)` -/
def P937884151096334327.Spec : Prop :=
  ∀ n, P937884151096334327.a n = (A020985 n : ℚ)

end A020985

/-! ## A020985.P9256254008584435717

`1-2*A020987(n)`
-/

namespace A020985.P9256254008584435717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A020987 n

end

end A020985.P9256254008584435717

namespace A020985

/-- `1-2*A020987(n)` -/
def P9256254008584435717.Spec : Prop :=
  ∀ n, P9256254008584435717.a n = A020985 n

end A020985

/-! ## A020985.P17099815491548477279

`(-1)^A233905(n)`
-/

namespace A020985.P17099815491548477279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A233905 n : ℤ)

end

end A020985.P17099815491548477279

namespace A020985

/-- `(-1)^A233905(n)` -/
def P17099815491548477279.Spec : Prop :=
  ∀ n, P17099815491548477279.a n = (A020985 n : ℚ)

end A020985

/-! ## A020985.P8650256423806754242

`or(1, -A020987(n))`
-/

namespace A020985.P8650256423806754242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A020987 n)

end

end A020985.P8650256423806754242

namespace A020985

/-- `or(1, -A020987(n))` -/
def P8650256423806754242.Spec : Prop :=
  ∀ n, P8650256423806754242.a n = A020985 n

end A020985

/-! ## A020985.P10178206576252269290

`A106400(and(n, 2*n))`
-/

namespace A020985.P10178206576252269290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Nat.land n (2 * n))

end

end A020985.P10178206576252269290

namespace A020985

/-- `A106400(and(n, 2*n))` -/
def P10178206576252269290.Spec : Prop :=
  ∀ n, P10178206576252269290.a n = A020985 n

end A020985

/-! ## A020985.P2757067256815436274

`A186032(and(n, 2*n))`
-/

namespace A020985.P2757067256815436274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186032 (Nat.land n (2 * n))

end

end A020985.P2757067256815436274

namespace A020985

/-- `A186032(and(n, 2*n))` -/
def P2757067256815436274.Spec : Prop :=
  ∀ n, P2757067256815436274.a n = A020985 n

end A020985

/-! ## A020985.P12365427570570077965

`(-1)^A340503(n+1)`
-/

namespace A020985.P12365427570570077965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A340503 (n + 1) : ℤ)

end

end A020985.P12365427570570077965

namespace A020985

/-- `(-1)^A340503(n+1)` -/
def P12365427570570077965.Spec : Prop :=
  ∀ n, P12365427570570077965.a n = (A020985 n : ℚ)

end A020985

/-! ## A020985.P4650329464324675123

`or(1, 1-A100260(n+1))`
-/

namespace A020985.P4650329464324675123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - A100260 (n + 1))

end

end A020985.P4650329464324675123

namespace A020985

/-- `or(1, 1-A100260(n+1))` -/
def P4650329464324675123.Spec : Prop :=
  ∀ n, P4650329464324675123.a n = A020985 n

end A020985

/-! ## A020985.P17540044735454201362

`1-2*char[A022155(n+1)]`
-/

namespace A020985.P17540044735454201362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022155 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A020985.P17540044735454201362

namespace A020985

/-- `1-2*char[A022155(n+1)]` -/
def P17540044735454201362.Spec : Prop :=
  ∀ n, P17540044735454201362.a n = A020985 n

end A020985

/-! ## A020985.P7536599488828171589

`A033999(A014081(n))`
-/

namespace A020985.P7536599488828171589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014081 n).toNat

end

end A020985.P7536599488828171589

namespace A020985

/-- `A033999(A014081(n))` -/
def P7536599488828171589.Spec : Prop :=
  ∀ n, P7536599488828171589.a n = A020985 n

end A020985

/-! ## A020985.P12551818030790603925

`A106400(A048735(n))`
-/

namespace A020985.P12551818030790603925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A048735 n).toNat

end

end A020985.P12551818030790603925

namespace A020985

/-- `A106400(A048735(n))` -/
def P12551818030790603925.Spec : Prop :=
  ∀ n, P12551818030790603925.a n = A020985 n

end A020985

/-! ## A020985.P8732726163686651718

`A004718(A245195(n))`
-/

namespace A020985.P8732726163686651718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A245195 n).toNat

end

end A020985.P8732726163686651718

namespace A020985

/-- `A004718(A245195(n))` -/
def P8732726163686651718.Spec : Prop :=
  ∀ n, P8732726163686651718.a n = A020985 n

end A020985

/-! ## A020985.P3351069108596919174

`A106400(A213370(n))`
-/

namespace A020985.P3351069108596919174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A213370 n).toNat

end

end A020985.P3351069108596919174

namespace A020985

/-- `A106400(A213370(n))` -/
def P3351069108596919174.Spec : Prop :=
  ∀ n, P3351069108596919174.a n = A020985 n

end A020985

/-! ## A020985.P8281760466694752455

`A326802(A014081(n)²)`
-/

namespace A020985.P8281760466694752455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A014081 n ^ 2).toNat

end

end A020985.P8281760466694752455

namespace A020985

/-- `A326802(A014081(n)²)` -/
def P8281760466694752455.Spec : Prop :=
  ∀ n, P8281760466694752455.a n = A020985 n

end A020985

/-! ## A020985.P9237161042394965892

`A062157(A014081(n)+1)`
-/

namespace A020985.P9237161042394965892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A014081 n + 1).toNat

end

end A020985.P9237161042394965892

namespace A020985

/-- `A062157(A014081(n)+1)` -/
def P9237161042394965892.Spec : Prop :=
  ∀ n, P9237161042394965892.a n = A020985 n

end A020985

/-! ## A020985.P14286403684138892577

`A029883(A213370(n)+1)`
-/

namespace A020985.P14286403684138892577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A213370 n + 1).toNat

end

end A020985.P14286403684138892577

namespace A020985

/-- `A029883(A213370(n)+1)` -/
def P14286403684138892577.Spec : Prop :=
  ∀ n, P14286403684138892577.a n = A020985 n

end A020985

/-! ## A020985.P5840887353705185444

`2-A268676(A318921(n))`
-/

namespace A020985.P5840887353705185444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A268676 (A318921 n).toNat

end

end A020985.P5840887353705185444

namespace A020985

/-- `2-A268676(A318921(n))` -/
def P5840887353705185444.Spec : Prop :=
  ∀ n, P5840887353705185444.a n = A020985 n

end A020985

/-! ## A020985.P16456753501124918911

`A162511(2*A245195(n))`
-/

namespace A020985.P16456753501124918911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (2 * A245195 n).toNat

end

end A020985.P16456753501124918911

namespace A020985

/-- `A162511(2*A245195(n))` -/
def P16456753501124918911.Spec : Prop :=
  ∀ n, P16456753501124918911.a n = A020985 n

end A020985

/-! ## A020985.P9585863200102468901

`A010693(n)-A105584(n)`
-/

namespace A020985.P9585863200102468901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n - A105584 n

end

end A020985.P9585863200102468901

namespace A020985

/-- `A010693(n)-A105584(n)` -/
def P9585863200102468901.Spec : Prop :=
  ∀ n, P9585863200102468901.a n = A020985 n

end A020985

/-! ## A020985.P2048290473802778303

`A000034(n)+1-A105584(n)`
-/

namespace A020985.P2048290473802778303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (1 - A105584 n)

end

end A020985.P2048290473802778303

namespace A020985

/-- `A000034(n)+1-A105584(n)` -/
def P2048290473802778303.Spec : Prop :=
  ∀ n, P2048290473802778303.a n = A020985 n

end A020985

/-!
# A020986: a(n) = n-th partial sum of Golay-Rudin-Shapiro sequence A020985.

The programs for A020986, the canonical program `A020986.P18384666563088217064` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020986 has offset 0).

The definition of A020986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020986.P18384666563088217064

`∑[A020985(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020986

/-- `∑[A020985(n)]` -/
def P18384666563088217064.Spec : Prop :=
  ∀ n, P18384666563088217064.a n = A020986 n

theorem P18384666563088217064.correct : P18384666563088217064.Spec := by
  intro n
  simp only [A020986]

end A020986

/-! ## A020986.P457243267435167144

`∑[(-1)^A014081(n)]`
-/

namespace A020986.P457243267435167144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014081 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P457243267435167144

namespace A020986

/-- `∑[(-1)^A014081(n)]` -/
def P457243267435167144.Spec : Prop :=
  ∀ n, P457243267435167144.a n = (A020986 n : ℚ)

end A020986

/-! ## A020986.P6615483896933606795

`∑[or(1, -A020987(n))]`
-/

namespace A020986.P6615483896933606795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A020987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P6615483896933606795

namespace A020986

/-- `∑[or(1, -A020987(n))]` -/
def P6615483896933606795.Spec : Prop :=
  ∀ n, P6615483896933606795.a n = A020986 n

end A020986

/-! ## A020986.P984360222789497469

`∑[A106400(and(n, 2*n))]`
-/

namespace A020986.P984360222789497469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P984360222789497469

namespace A020986

/-- `∑[A106400(and(n, 2*n))]` -/
def P984360222789497469.Spec : Prop :=
  ∀ n, P984360222789497469.a n = A020986 n

end A020986

/-! ## A020986.P8758799900157131751

`∑[A033999(A014081(n))]`
-/

namespace A020986.P8758799900157131751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P8758799900157131751

namespace A020986

/-- `∑[A033999(A014081(n))]` -/
def P8758799900157131751.Spec : Prop :=
  ∀ n, P8758799900157131751.a n = A020986 n

end A020986

/-! ## A020986.P400453509982774801

`∑[A106400(A048735(n))]`
-/

namespace A020986.P400453509982774801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A048735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P400453509982774801

namespace A020986

/-- `∑[A106400(A048735(n))]` -/
def P400453509982774801.Spec : Prop :=
  ∀ n, P400453509982774801.a n = A020986 n

end A020986

/-! ## A020986.P3872831175131661504

`∑[A004718(A245195(n))]`
-/

namespace A020986.P3872831175131661504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A245195 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P3872831175131661504

namespace A020986

/-- `∑[A004718(A245195(n))]` -/
def P3872831175131661504.Spec : Prop :=
  ∀ n, P3872831175131661504.a n = A020986 n

end A020986

/-! ## A020986.P11983813068837226208

`A068915(n+1)+A068915(n)`
-/

namespace A020986.P11983813068837226208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 (n + 1) + A068915 n

end

end A020986.P11983813068837226208

namespace A020986

/-- `A068915(n+1)+A068915(n)` -/
def P11983813068837226208.Spec : Prop :=
  ∀ n, P11983813068837226208.a n = A020986 n

end A020986

/-! ## A020986.P6995665466199261154

`∑[A009531(A247282(n))]`
-/

namespace A020986.P6995665466199261154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A247282 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P6995665466199261154

namespace A020986

/-- `∑[A009531(A247282(n))]` -/
def P6995665466199261154.Spec : Prop :=
  ∀ n, P6995665466199261154.a n = A020986 n

end A020986

/-! ## A020986.P1639705696662229232

`∑[A106400(A048728(n))]`
-/

namespace A020986.P1639705696662229232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A048728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P1639705696662229232

namespace A020986

/-- `∑[A106400(A048728(n))]` -/
def P1639705696662229232.Spec : Prop :=
  ∀ n, P1639705696662229232.a n = A020986 n

end A020986

/-! ## A020986.P7167716749414060850

`A068915(Δ[n²])`
-/

namespace A020986.P7167716749414060850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A020986.P7167716749414060850

namespace A020986

/-- `A068915(Δ[n²])` -/
def P7167716749414060850.Spec : Prop :=
  ∀ n, P7167716749414060850.a n = A020986 n

end A020986

/-! ## A020986.P16993299656234147931

`∑[2-A105584(2*n)]`
-/

namespace A020986.P16993299656234147931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A105584 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P16993299656234147931

namespace A020986

/-- `∑[2-A105584(2*n)]` -/
def P16993299656234147931.Spec : Prop :=
  ∀ n, P16993299656234147931.a n = A020986 n

end A020986

/-! ## A020986.P6529931442485901756

`∑[1-A340504(2*n+1)]`
-/

namespace A020986.P6529931442485901756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340504 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P6529931442485901756

namespace A020986

/-- `∑[1-A340504(2*n+1)]` -/
def P6529931442485901756.Spec : Prop :=
  ∀ n, P6529931442485901756.a n = A020986 n

end A020986

/-! ## A020986.P17245937935707127107

`A068915(2*n+1)%(n+2)`
-/

namespace A020986.P17245937935707127107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068915 (2 * n + 1)) (n + 2 : ℤ)

end

end A020986.P17245937935707127107

namespace A020986

/-- `A068915(2*n+1)%(n+2)` -/
def P17245937935707127107.Spec : Prop :=
  ∀ n, P17245937935707127107.a n = A020986 n

end A020986

/-! ## A020986.P2847430187785162142

`A020990(2*n+1)+A020990(n)`
-/

namespace A020986.P2847430187785162142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020990 (2 * n + 1) + A020990 n

end

end A020986.P2847430187785162142

namespace A020986

/-- `A020990(2*n+1)+A020990(n)` -/
def P2847430187785162142.Spec : Prop :=
  ∀ n, P2847430187785162142.a n = A020986 n

end A020986

/-! ## A020986.P11150937013193433843

`A246017(xor(n, 2*n))`
-/

namespace A020986.P11150937013193433843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246017 (Nat.xor n (2 * n))

end

end A020986.P11150937013193433843

namespace A020986

/-- `A246017(xor(n, 2*n))` -/
def P11150937013193433843.Spec : Prop :=
  ∀ n, P11150937013193433843.a n = A020986 n

end A020986

/-! ## A020986.P12930292261629305050

`A246017(A048724(n))`
-/

namespace A020986.P12930292261629305050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246017 (A048724 n).toNat

end

end A020986.P12930292261629305050

namespace A020986

/-- `A246017(A048724(n))` -/
def P12930292261629305050.Spec : Prop :=
  ∀ n, P12930292261629305050.a n = A020986 n

end A020986

/-! ## A020986.P12670921225642439710

`∑[A106400(A163617(n))]`
-/

namespace A020986.P12670921225642439710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A163617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P12670921225642439710

namespace A020986

/-- `∑[A106400(A163617(n))]` -/
def P12670921225642439710.Spec : Prop :=
  ∀ n, P12670921225642439710.a n = A020986 n

end A020986

/-! ## A020986.P2070469541658306843

`∑[A033999(A334577(n))]`
-/

namespace A020986.P2070469541658306843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A334577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P2070469541658306843

namespace A020986

/-- `∑[A033999(A334577(n))]` -/
def P2070469541658306843.Spec : Prop :=
  ∀ n, P2070469541658306843.a n = A020986 n

end A020986

/-! ## A020986.P11522265561239808533

`∑[A033999(A334576(n)+n)]`
-/

namespace A020986.P11522265561239808533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A334576 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020986.P11522265561239808533

namespace A020986

/-- `∑[A033999(A334576(n)+n)]` -/
def P11522265561239808533.Spec : Prop :=
  ∀ n, P11522265561239808533.a n = A020986 n

end A020986

/-!
# A020987: Zero-one version of Golay-Rudin-Shapiro sequence (or word).

The programs for A020987, the canonical program `A020987.P9597873820712649968` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020987 has offset 0).

The definition of A020987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020987.P790616216314738560

`((floor(n/2)+a(floor(n/2)))%(lcm(2, n)/2))%2` with `a(0)=0`
-/

namespace A020987.P790616216314738560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.tmod (⌊(n : ℚ) / 2⌋ + a ⌊(n : ℚ) / 2⌋.toNat) (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2))) 2

end

end A020987.P790616216314738560

namespace A020987

/-- `((floor(n/2)+a(floor(n/2)))%(lcm(2, n)/2))%2` -/
def P790616216314738560.Spec : Prop :=
  ∀ n, P790616216314738560.a n = A020987 n

end A020987

/-! ## A020987.P14717050845699137970

`and(1, a(floor(n/2))+n-floor(n/(n%2+1))-n%2)` with `a(0)=0`
-/

namespace A020987.P14717050845699137970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ - ((n % 2 : ℕ) : ℤ))

end

end A020987.P14717050845699137970

namespace A020987

/-- `and(1, a(floor(n/2))+n-floor(n/(n%2+1))-n%2)` -/
def P14717050845699137970.Spec : Prop :=
  ∀ n, P14717050845699137970.a n = A020987 n

end A020987

/-! ## A020987.P704040384412339304

`and(1, floor(n/2)+a(floor(n/2))-n*(1+(-1)^n)/4)` with `a(0)=0`
-/

namespace A020987.P704040384412339304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ + a ⌊(n : ℚ) / 2⌋.toNat : ℚ) - ((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4))

end

end A020987.P704040384412339304

namespace A020987

/-- `and(1, floor(n/2)+a(floor(n/2))-n*(1+(-1)^n)/4)` -/
def P704040384412339304.Spec : Prop :=
  ∀ n, P704040384412339304.a n = A020987 n

end A020987

/-! ## A020987.P9597873820712649968

`A014081(n)%2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A020987

/-- `A014081(n)%2` -/
def P9597873820712649968.Spec : Prop :=
  ∀ n, P9597873820712649968.a n = A020987 n

theorem P9597873820712649968.correct : P9597873820712649968.Spec := by
  intro n
  simp only [A020987]

end A020987

/-! ## A020987.P14139511093330826041

`A233905(n)%2`
-/

namespace A020987.P14139511093330826041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233905 n) 2

end

end A020987.P14139511093330826041

namespace A020987

/-- `A233905(n)%2` -/
def P14139511093330826041.Spec : Prop :=
  ∀ n, P14139511093330826041.a n = A020987 n

end A020987

/-! ## A020987.P16393051035104393491

`floor(log(A105584(n)))`
-/

namespace A020987.P16393051035104393491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A105584 n : ℝ)⌋

end

end A020987.P16393051035104393491

namespace A020987

/-- `floor(log(A105584(n)))` -/
def P16393051035104393491.Spec : Prop :=
  ∀ n, P16393051035104393491.a n = A020987 n

end A020987

/-! ## A020987.P12164146895149925819

`and(1, log2(A245195(n)))`
-/

namespace A020987.P12164146895149925819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.logb 2 (A245195 n : ℝ)))

end

end A020987.P12164146895149925819

namespace A020987

/-- `and(1, log2(A245195(n)))` -/
def P12164146895149925819.Spec : Prop :=
  ∀ n, P12164146895149925819.a n = A020987 n

end A020987

/-! ## A020987.P5205412059192634230

`char[A022155(n+1)]`
-/

namespace A020987.P5205412059192634230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A020987.P5205412059192634230

namespace A020987

/-- `char[A022155(n+1)]` -/
def P5205412059192634230.Spec : Prop :=
  ∀ n, (P5205412059192634230.a n : ℤ) = A020987 n

end A020987

/-! ## A020987.P14174118548590823851

`∑[A245194(n)]%2`
-/

namespace A020987.P14174118548590823851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A020987.P14174118548590823851

namespace A020987

/-- `∑[A245194(n)]%2` -/
def P14174118548590823851.Spec : Prop :=
  ∀ n, P14174118548590823851.a n = A020987 n

end A020987

/-! ## A020987.P13490417587871185939

`dr(and(10, A020985(n)))`
-/

namespace A020987.P13490417587871185939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A020985 n))

end

end A020987.P13490417587871185939

namespace A020987

/-- `dr(and(10, A020985(n)))` -/
def P13490417587871185939.Spec : Prop :=
  ∀ n, (P13490417587871185939.a n : ℤ) = A020987 n

end A020987

/-! ## A020987.P10125719383630083381

`A340503(n+1)%2`
-/

namespace A020987.P10125719383630083381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340503 (n + 1)) 2

end

end A020987.P10125719383630083381

namespace A020987

/-- `A340503(n+1)%2` -/
def P10125719383630083381.Spec : Prop :=
  ∀ n, P10125719383630083381.a n = A020987 n

end A020987

/-! ## A020987.P15263434665611023331

`A010060(and(n, 2*n))`
-/

namespace A020987.P15263434665611023331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.land n (2 * n))

end

end A020987.P15263434665611023331

namespace A020987

/-- `A010060(and(n, 2*n))` -/
def P15263434665611023331.Spec : Prop :=
  ∀ n, P15263434665611023331.a n = A020987 n

end A020987

/-! ## A020987.P3884809852914880626

`A036581(and(n, 2*n))`
-/

namespace A020987.P3884809852914880626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (Nat.land n (2 * n))

end

end A020987.P3884809852914880626

namespace A020987

/-- `A036581(and(n, 2*n))` -/
def P3884809852914880626.Spec : Prop :=
  ∀ n, P3884809852914880626.a n = A020987 n

end A020987

/-! ## A020987.P5086655609562480832

`A095190(and(n, 2*n))`
-/

namespace A020987.P5086655609562480832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (Nat.land n (2 * n))

end

end A020987.P5086655609562480832

namespace A020987

/-- `A095190(and(n, 2*n))` -/
def P5086655609562480832.Spec : Prop :=
  ∀ n, P5086655609562480832.a n = A020987 n

end A020987

/-! ## A020987.P3251068749351495106

`A254379(and(n, 2*n))`
-/

namespace A020987.P3251068749351495106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (Nat.land n (2 * n))

end

end A020987.P3251068749351495106

namespace A020987

/-- `A254379(and(n, 2*n))` -/
def P3251068749351495106.Spec : Prop :=
  ∀ n, P3251068749351495106.a n = A020987 n

end A020987

/-! ## A020987.P16764202481978012822

`A316828(and(n, 2*n))`
-/

namespace A020987.P16764202481978012822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.land n (2 * n))

end

end A020987.P16764202481978012822

namespace A020987

/-- `A316828(and(n, 2*n))` -/
def P16764202481978012822.Spec : Prop :=
  ∀ n, P16764202481978012822.a n = A020987 n

end A020987

/-! ## A020987.P16508606761938324025

`floor(A100260(n+1)/2)`
-/

namespace A020987.P16508606761938324025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100260 (n + 1) : ℚ) / 2⌋

end

end A020987.P16508606761938324025

namespace A020987

/-- `floor(A100260(n+1)/2)` -/
def P16508606761938324025.Spec : Prop :=
  ∀ n, P16508606761938324025.a n = A020987 n

end A020987

/-! ## A020987.P17130827661030420967

`1-char[A203463(n+1)]`
-/

namespace A020987.P17130827661030420967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A020987.P17130827661030420967

namespace A020987

/-- `1-char[A203463(n+1)]` -/
def P17130827661030420967.Spec : Prop :=
  ∀ n, P17130827661030420967.a n = A020987 n

end A020987

/-! ## A020987.P15587943709248499585

`A000035(A014081(n))`
-/

namespace A020987.P15587943709248499585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014081 n).toNat

end

end A020987.P15587943709248499585

namespace A020987

/-- `A000035(A014081(n))` -/
def P15587943709248499585.Spec : Prop :=
  ∀ n, P15587943709248499585.a n = A020987 n

end A020987

/-! ## A020987.P9521765212927490460

`A010060(A048728(n))`
-/

namespace A020987.P9521765212927490460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A048728 n).toNat

end

end A020987.P9521765212927490460

namespace A020987

/-- `A010060(A048728(n))` -/
def P9521765212927490460.Spec : Prop :=
  ∀ n, P9521765212927490460.a n = A020987 n

end A020987

/-!
# A020988: a(n) = (2/3)*(4^n-1).

The programs for A020988, the canonical program `A020988.P12877403195261082283` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020988 has offset 0).

The definition of A020988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2/3*(4^n-1)` (program `A020988.P5492244997853886263`, by `A020988.P5492244997853886263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020988.P7800188049990453086

`ogf(2x/(1-5x+4x^2))`
-/

namespace A020988.P7800188049990453086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -5, 4] n

end

end A020988.P7800188049990453086

namespace A020988

/-- `ogf(2x/(1-5x+4x^2))` -/
def P7800188049990453086.Spec : Prop :=
  ∀ n, P7800188049990453086.a n = A020988 n

end A020988

/-! ## A020988.P5492244997853886263

`2/3*(4^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020988.P5492244997853886263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * ((4 ^ n : ℤ) - 1 : ℚ)

end

end A020988.P5492244997853886263

namespace A020988

/-- `2/3*(4^n-1)` -/
def P5492244997853886263.Spec : Prop :=
  ∀ n, P5492244997853886263.a n = (A020988 n : ℚ)

theorem P5492244997853886263.correct : P5492244997853886263.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020988, Nat.add_sub_cancel, A020988.P5492244997853886263.a, A020988.P12877403195261082283.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020988, Nat.add_sub_cancel, A020988.P5492244997853886263.a, A020988.P12877403195261082283.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020988

/-! ## A020988.P12877403195261082283

`4*a(n-1)+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020988

/-- `4*a(n-1)+2` -/
def P12877403195261082283.Spec : Prop :=
  ∀ n, (P12877403195261082283.a n : ℤ) = A020988 n

theorem P12877403195261082283.correct : P12877403195261082283.Spec := by
  intro n
  simp only [A020988]

end A020988

/-! ## A020988.P2243425932996394437

`A007583(n)-1`
-/

namespace A020988.P2243425932996394437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - 1

end

end A020988.P2243425932996394437

namespace A020988

/-- `A007583(n)-1` -/
def P2243425932996394437.Spec : Prop :=
  ∀ n, P2243425932996394437.a n = A020988 n

end A020988

/-! ## A020988.P17413375229846364910

`A193652(2*n)`
-/

namespace A020988.P17413375229846364910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 (2 * n)

end

end A020988.P17413375229846364910

namespace A020988

/-- `A193652(2*n)` -/
def P17413375229846364910.Spec : Prop :=
  ∀ n, P17413375229846364910.a n = A020988 n

end A020988

/-! ## A020988.P3807023087491240288

`A039301(n+1)-2`
-/

namespace A020988.P3807023087491240288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 (n + 1) - 2

end

end A020988.P3807023087491240288

namespace A020988

/-- `A039301(n+1)-2` -/
def P3807023087491240288.Spec : Prop :=
  ∀ n, P3807023087491240288.a n = A020988 n

end A020988

/-! ## A020988.P14390000458444086012

`A078008(2*n+1)`
-/

namespace A020988.P14390000458444086012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (2 * n + 1)

end

end A020988.P14390000458444086012

namespace A020988

/-- `A078008(2*n+1)` -/
def P14390000458444086012.Spec : Prop :=
  ∀ n, P14390000458444086012.a n = A020988 n

end A020988

/-! ## A020988.P18138387122385497512

`A000302(n)-A047849(n)`
-/

namespace A020988.P18138387122385497512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A047849 n

end

end A020988.P18138387122385497512

namespace A020988

/-- `A000302(n)-A047849(n)` -/
def P18138387122385497512.Spec : Prop :=
  ∀ n, P18138387122385497512.a n = A020988 n

end A020988

/-! ## A020988.P218096311069994808

`A020522(n)+A000079(n)-A047849(n)`
-/

namespace A020988.P218096311069994808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n + A000079 n - A047849 n

end

end A020988.P218096311069994808

namespace A020988

/-- `A020522(n)+A000079(n)-A047849(n)` -/
def P218096311069994808.Spec : Prop :=
  ∀ n, P218096311069994808.a n = A020988 n

end A020988

/-! ## A020988.P4443917393681047857

`lcm(2, floor(4^n/3))`
-/

namespace A020988.P4443917393681047857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(4 ^ n : ℚ) / 3⌋

end

end A020988.P4443917393681047857

namespace A020988

/-- `lcm(2, floor(4^n/3))` -/
def P4443917393681047857.Spec : Prop :=
  ∀ n, (P4443917393681047857.a n : ℤ) = A020988 n

end A020988

/-! ## A020988.P12516328409130521062

`record[∑[(-2)^n]-1]`
-/

namespace A020988.P12516328409130521062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020988.P12516328409130521062

namespace A020988

/-- `record[∑[(-2)^n]-1]` -/
def P12516328409130521062.Spec : Prop :=
  ∀ n, P12516328409130521062.a n = A020988 n

end A020988

/-! ## A020988.P15416364605251604921

`2+4*a(n-1)` with `a(0)=0`
-/

namespace A020988.P15416364605251604921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 + 4 * a (n - 1)

end

end A020988.P15416364605251604921

namespace A020988

/-- `2+4*a(n-1)` -/
def P15416364605251604921.Spec : Prop :=
  ∀ n, (P15416364605251604921.a n : ℤ) = A020988 n

theorem P15416364605251604921.correct : P15416364605251604921.Spec := by
  intro n
  simp only [A020988, Nat.add_sub_cancel, A020988.P15416364605251604921.a, A020988.P12877403195261082283.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020988

/-! ## A020988.P11921812883932885947

`lcm(8, a(n-1))+2` with `a(0)=0`
-/

namespace A020988.P11921812883932885947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 2

end

end A020988.P11921812883932885947

namespace A020988

/-- `lcm(8, a(n-1))+2` -/
def P11921812883932885947.Spec : Prop :=
  ∀ n, (P11921812883932885947.a n : ℤ) = A020988 n

end A020988

/-! ## A020988.P8618210361298411950

`or(2, 4*a(n-1))` with `a(0)=0`
-/

namespace A020988.P8618210361298411950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 2 (4 * a (n - 1))

end

end A020988.P8618210361298411950

namespace A020988

/-- `or(2, 4*a(n-1))` -/
def P8618210361298411950.Spec : Prop :=
  ∀ n, (P8618210361298411950.a n : ℤ) = A020988 n

end A020988

/-! ## A020988.P16765964835134724949

`xor(2, 4*a(n-1))` with `a(0)=0`
-/

namespace A020988.P16765964835134724949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 2 (4 * a (n - 1))

end

end A020988.P16765964835134724949

namespace A020988

/-- `xor(2, 4*a(n-1))` -/
def P16765964835134724949.Spec : Prop :=
  ∀ n, (P16765964835134724949.a n : ℤ) = A020988 n

end A020988

/-! ## A020988.P17727329908957076781

`∑[4*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A020988.P17727329908957076781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020988.P17727329908957076781

namespace A020988

/-- `∑[4*a(n-1)]` -/
def P17727329908957076781.Spec : Prop :=
  ∀ n, (P17727329908957076781.a n : ℤ) = A020988 n

end A020988

/-! ## A020988.P13839412443940174703

`6-4*(1-a(n-1))` with `a(0)=0`
-/

namespace A020988.P13839412443940174703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 - 4 * (1 - a (n - 1))

end

end A020988.P13839412443940174703

namespace A020988

/-- `6-4*(1-a(n-1))` -/
def P13839412443940174703.Spec : Prop :=
  ∀ n, P13839412443940174703.a n = A020988 n

end A020988

/-! ## A020988.P12226301253670600142

`a(n-1)+4^n/2` with `a(0)=0`
-/

namespace A020988.P12226301253670600142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (4 ^ n : ℚ) / 2

end

end A020988.P12226301253670600142

namespace A020988

/-- `a(n-1)+4^n/2` -/
def P12226301253670600142.Spec : Prop :=
  ∀ n, P12226301253670600142.a n = (A020988 n : ℚ)

end A020988

/-! ## A020988.P17144054494692455413

`or(4^n/2, a(n-1))` with `a(0)=0`
-/

namespace A020988.P17144054494692455413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 2)) (a (n - 1))

end

end A020988.P17144054494692455413

namespace A020988

/-- `or(4^n/2, a(n-1))` -/
def P17144054494692455413.Spec : Prop :=
  ∀ n, P17144054494692455413.a n = A020988 n

end A020988

/-! ## A020988.P11830148602610320148

`xor(4^n/2, a(n-1))` with `a(0)=0`
-/

namespace A020988.P11830148602610320148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 2)) (a (n - 1))

end

end A020988.P11830148602610320148

namespace A020988

/-- `xor(4^n/2, a(n-1))` -/
def P11830148602610320148.Spec : Prop :=
  ∀ n, P11830148602610320148.a n = A020988 n

end A020988

/-!
# A020989: a(n) = (5*4^n - 2)/3.

The programs for A020989, the canonical program `A020989.P9732876431631059566` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020989 has offset 0).

The definition of A020989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*4^n-2)/3` (program `A020989.P9628038901833114454`, by `A020989.P9628038901833114454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020989.P16004336220014446344

`ogf((1+x)/(1-5x+4x^2))`
-/

namespace A020989.P16004336220014446344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, 4] n

end

end A020989.P16004336220014446344

namespace A020989

/-- `ogf((1+x)/(1-5x+4x^2))` -/
def P16004336220014446344.Spec : Prop :=
  ∀ n, P16004336220014446344.a n = A020989 n

end A020989

/-! ## A020989.P9732876431631059566

`4*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020989

/-- `4*a(n-1)+2` -/
def P9732876431631059566.Spec : Prop :=
  ∀ n, (P9732876431631059566.a n : ℤ) = A020989 n

theorem P9732876431631059566.correct : P9732876431631059566.Spec := by
  intro n
  simp only [A020989]

end A020989

/-! ## A020989.P12534500549591564926

`A002450(n)+A002450(n+1)`
-/

namespace A020989.P12534500549591564926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + A002450 (n + 1)

end

end A020989.P12534500549591564926

namespace A020989

/-- `A002450(n)+A002450(n+1)` -/
def P12534500549591564926.Spec : Prop :=
  ∀ n, P12534500549591564926.a n = A020989 n

end A020989

/-! ## A020989.P9628038901833114454

`(5*4^n-2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020989.P9628038901833114454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 4 ^ n : ℤ) - 2 : ℚ) / 3

end

end A020989.P9628038901833114454

namespace A020989

/-- `(5*4^n-2)/3` -/
def P9628038901833114454.Spec : Prop :=
  ∀ n, P9628038901833114454.a n = (A020989 n : ℚ)

theorem P9628038901833114454.correct : P9628038901833114454.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A020989, Nat.add_sub_cancel, A020989.P9628038901833114454.a, A020989.P9732876431631059566.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A020989, Nat.add_sub_cancel, A020989.P9628038901833114454.a, A020989.P9732876431631059566.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A020989

/-! ## A020989.P6508498153170423833

`∑{#}[n, A112468(C(n+1, 2)+#)*5^#]`
-/

namespace A020989.P6508498153170423833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112468 (Nat.choose (n + 1) 2 + k) * (5 ^ k : ℤ)

end

end A020989.P6508498153170423833

namespace A020989

/-- `∑{#}[n, A112468(C(n+1, 2)+#)*5^#]` -/
def P6508498153170423833.Spec : Prop :=
  ∀ n, P6508498153170423833.a n = A020989 n

end A020989

/-! ## A020989.P5389867154479740281

`record[4*T(n-1,k)+2]` with `a(0)=1`
-/

namespace A020989.P5389867154479740281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * SequenceMachineLib.triUp f1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020989.P5389867154479740281

namespace A020989

/-- `record[4*T(n-1,k)+2]` -/
def P5389867154479740281.Spec : Prop :=
  ∀ n, (P5389867154479740281.a n : ℤ) = A020989 n

end A020989

/-! ## A020989.P3732955233174205792

`2+4*a(n-1)` with `a(0)=1`
-/

namespace A020989.P3732955233174205792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + 4 * a (n - 1)

end

end A020989.P3732955233174205792

namespace A020989

/-- `2+4*a(n-1)` -/
def P3732955233174205792.Spec : Prop :=
  ∀ n, (P3732955233174205792.a n : ℤ) = A020989 n

theorem P3732955233174205792.correct : P3732955233174205792.Spec := by
  intro n
  simp only [A020989, Nat.add_sub_cancel, A020989.P3732955233174205792.a, A020989.P9732876431631059566.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020989

/-! ## A020989.P15341903409983084346

`or(2, 4*a(n-1))` with `a(0)=1`
-/

namespace A020989.P15341903409983084346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 (4 * a (n - 1))

end

end A020989.P15341903409983084346

namespace A020989

/-- `or(2, 4*a(n-1))` -/
def P15341903409983084346.Spec : Prop :=
  ∀ n, (P15341903409983084346.a n : ℤ) = A020989 n

end A020989

/-! ## A020989.P6605023824141761404

`xor(2, 4*a(n-1))` with `a(0)=1`
-/

namespace A020989.P6605023824141761404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (4 * a (n - 1))

end

end A020989.P6605023824141761404

namespace A020989

/-- `xor(2, 4*a(n-1))` -/
def P6605023824141761404.Spec : Prop :=
  ∀ n, (P6605023824141761404.a n : ℤ) = A020989 n

end A020989

/-! ## A020989.P11244346237350876724

`∑[4*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A020989.P11244346237350876724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020989.P11244346237350876724

namespace A020989

/-- `∑[4*a(n-1)]` -/
def P11244346237350876724.Spec : Prop :=
  ∀ n, (P11244346237350876724.a n : ℤ) = A020989 n

end A020989

/-! ## A020989.P11229353405676086681

`lcm(8, a(n-1))+2` with `a(0)=1, a(1)=6`
-/

namespace A020989.P11229353405676086681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 2

end

end A020989.P11229353405676086681

namespace A020989

/-- `lcm(8, a(n-1))+2` -/
def P11229353405676086681.Spec : Prop :=
  ∀ n, (P11229353405676086681.a n : ℤ) = A020989 n

end A020989

/-! ## A020989.P17050167928516993969

`6-4*(1-a(n-1))` with `a(0)=1`
-/

namespace A020989.P17050167928516993969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - 4 * (1 - a (n - 1))

end

end A020989.P17050167928516993969

namespace A020989

/-- `6-4*(1-a(n-1))` -/
def P17050167928516993969.Spec : Prop :=
  ∀ n, P17050167928516993969.a n = A020989 n

end A020989

/-! ## A020989.P1724442092512781231

`a(n-1)/(1/2)²+2` with `a(0)=1`
-/

namespace A020989.P1724442092512781231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 2

end

end A020989.P1724442092512781231

namespace A020989

/-- `a(n-1)/(1/2)²+2` -/
def P1724442092512781231.Spec : Prop :=
  ∀ n, P1724442092512781231.a n = (A020989 n : ℚ)

end A020989

/-! ## A020989.P15944916113368426337

`∑[a(n-1)/(1/2)²]` with `a(0)=1, a(1)=5`
-/

namespace A020989.P15944916113368426337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020989.P15944916113368426337

namespace A020989

/-- `∑[a(n-1)/(1/2)²]` -/
def P15944916113368426337.Spec : Prop :=
  ∀ n, P15944916113368426337.a n = (A020989 n : ℚ)

end A020989

/-! ## A020989.P17731801723471811908

`2-a(n-1)/(3/4-1)` with `a(0)=1`
-/

namespace A020989.P17731801723471811908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A020989.P17731801723471811908

namespace A020989

/-- `2-a(n-1)/(3/4-1)` -/
def P17731801723471811908.Spec : Prop :=
  ∀ n, P17731801723471811908.a n = (A020989 n : ℚ)

end A020989

/-! ## A020989.P17348246870098030176

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` with `a(0)=1`
-/

namespace A020989.P17348246870098030176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 2)))

end

end A020989.P17348246870098030176

namespace A020989

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` -/
def P17348246870098030176.Spec : Prop :=
  ∀ n, (P17348246870098030176.a n : ℤ) = A020989 n

theorem P17348246870098030176.correct : P17348246870098030176.Spec := by
  intro n
  simp only [A020989, Nat.add_sub_cancel, A020989.P17348246870098030176.a, A020989.P9732876431631059566.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020989

/-! ## A020989.P17151318693181103246

`∑[A003947(n)]`
-/

namespace A020989.P17151318693181103246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020989.P17151318693181103246

namespace A020989

/-- `∑[A003947(n)]` -/
def P17151318693181103246.Spec : Prop :=
  ∀ n, P17151318693181103246.a n = A020989 n

end A020989

/-! ## A020989.P9870798865236326341

`Δ[A141291(n)]`
-/

namespace A020989.P9870798865236326341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020989.P9870798865236326341

namespace A020989

/-- `Δ[A141291(n)]` -/
def P9870798865236326341.Spec : Prop :=
  ∀ n, P9870798865236326341.a n = A020989 n

end A020989

/-! ## A020989.P2100611802736649486

`A136412(n)-1`
-/

namespace A020989.P2100611802736649486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 n - 1

end

end A020989.P2100611802736649486

namespace A020989

/-- `A136412(n)-1` -/
def P2100611802736649486.Spec : Prop :=
  ∀ n, P2100611802736649486.a n = A020989 n

end A020989

/-! ## A020989.P1249052355794336518

`A135583(n)-2`
-/

namespace A020989.P1249052355794336518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135583 n - 2

end

end A020989.P1249052355794336518

namespace A020989

/-- `A135583(n)-2` -/
def P1249052355794336518.Spec : Prop :=
  ∀ n, P1249052355794336518.a n = A020989 n

end A020989

/-!
# A020990: a(n) = Sum_{k=0..n} (-1)^k*A020985(k).

The programs for A020990, the canonical program `A020990.P14114785613548129031` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020990 has offset 0).

The definition of A020990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020990.P3535669614574366758

`abs(Δ[A068915(n)])`
-/

namespace A020990.P3535669614574366758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A020990.P3535669614574366758

namespace A020990

/-- `abs(Δ[A068915(n)])` -/
def P3535669614574366758.Spec : Prop :=
  ∀ n, P3535669614574366758.a n = A020990 n

end A020990

/-! ## A020990.P8363888147810452761

`∑[(-1)^A227183(n)]`
-/

namespace A020990.P8363888147810452761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A227183 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P8363888147810452761

namespace A020990

/-- `∑[(-1)^A227183(n)]` -/
def P8363888147810452761.Spec : Prop :=
  ∀ n, P8363888147810452761.a n = (A020990 n : ℚ)

end A020990

/-! ## A020990.P4518961908201194667

`∑[(-1)^A100260(n+1)]`
-/

namespace A020990.P4518961908201194667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A100260 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P4518961908201194667

namespace A020990

/-- `∑[(-1)^A100260(n+1)]` -/
def P4518961908201194667.Spec : Prop :=
  ∀ n, P4518961908201194667.a n = (A020990 n : ℚ)

end A020990

/-! ## A020990.P14114785613548129031

`∑[(-1)^n*A020985(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A020990

/-- `∑[(-1)^n*A020985(n)]` -/
def P14114785613548129031.Spec : Prop :=
  ∀ n, P14114785613548129031.a n = A020990 n

theorem P14114785613548129031.correct : P14114785613548129031.Spec := by
  intro n
  simp only [A020990]

end A020990

/-! ## A020990.P16234491253740886053

`∑[A033999(n-A014081(n))]`
-/

namespace A020990.P16234491253740886053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - A014081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P16234491253740886053

namespace A020990

/-- `∑[A033999(n-A014081(n))]` -/
def P16234491253740886053.Spec : Prop :=
  ∀ n, P16234491253740886053.a n = A020990 n

end A020990

/-! ## A020990.P5756473686561508391

`∑[A020985(n)*A033999(n)]`
-/

namespace A020990.P5756473686561508391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P5756473686561508391

namespace A020990

/-- `∑[A020985(n)*A033999(n)]` -/
def P5756473686561508391.Spec : Prop :=
  ∀ n, P5756473686561508391.a n = A020990 n

theorem P5756473686561508391.correct : P5756473686561508391.Spec := by
  intro n
  simp only [A020990, Nat.add_sub_cancel, A020990.P5756473686561508391.f1, A020990.P5756473686561508391.a, A020990.P14114785613548129031.f1, A020990.P14114785613548129031.a, A020985, A020985.P937884151096334327.a, A033999, A033999.P17703899380244199787.a, A014081, A014081.P14878370479040452879.a, A000120, A000120.P2816527436160941581.a, A069010, A069010.P14932719103722593844.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A020990

/-! ## A020990.P3886573806169177842

`abs(A068915(n+1)-A068915(n))`
-/

namespace A020990.P3886573806169177842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A068915 (n + 1) - A068915 n|

end

end A020990.P3886573806169177842

namespace A020990

/-- `abs(A068915(n+1)-A068915(n))` -/
def P3886573806169177842.Spec : Prop :=
  ∀ n, P3886573806169177842.a n = A020990 n

end A020990

/-! ## A020990.P8803263412634546307

`∑[A033999(A014081(n))*A033999(n)]`
-/

namespace A020990.P8803263412634546307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014081 n).toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P8803263412634546307

namespace A020990

/-- `∑[A033999(A014081(n))*A033999(n)]` -/
def P8803263412634546307.Spec : Prop :=
  ∀ n, P8803263412634546307.a n = A020990 n

end A020990

/-! ## A020990.P13748291564995776970

`∑[A020985(n)/A033999(n+2)]`
-/

namespace A020990.P13748291564995776970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020985 n : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P13748291564995776970

namespace A020990

/-- `∑[A020985(n)/A033999(n+2)]` -/
def P13748291564995776970.Spec : Prop :=
  ∀ n, P13748291564995776970.a n = (A020990 n : ℚ)

end A020990

/-! ## A020990.P12304460697138677069

`∑[A033999(A014081(n)+n)]`
-/

namespace A020990.P12304460697138677069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014081 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P12304460697138677069

namespace A020990

/-- `∑[A033999(A014081(n)+n)]` -/
def P12304460697138677069.Spec : Prop :=
  ∀ n, P12304460697138677069.a n = A020990 n

end A020990

/-! ## A020990.P6461960057948015640

`∑[A020985(A047599(n+1))]`
-/

namespace A020990.P6461960057948015640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A047599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P6461960057948015640

namespace A020990

/-- `∑[A020985(A047599(n+1))]` -/
def P6461960057948015640.Spec : Prop :=
  ∀ n, P6461960057948015640.a n = A020990 n

end A020990

/-! ## A020990.P8037175272376270648

`∑[A020985(Δ[n²])]`
-/

namespace A020990.P8037175272376270648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P8037175272376270648

namespace A020990

/-- `∑[A020985(Δ[n²])]` -/
def P8037175272376270648.Spec : Prop :=
  ∀ n, P8037175272376270648.a n = A020990 n

end A020990

/-! ## A020990.P6379034666505552443

`A068915(2*(n+1))`
-/

namespace A020990.P6379034666505552443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 (2 * (n + 1))

end

end A020990.P6379034666505552443

namespace A020990

/-- `A068915(2*(n+1))` -/
def P6379034666505552443.Spec : Prop :=
  ∀ n, P6379034666505552443.a n = A020990 n

end A020990

/-! ## A020990.P13843207672364445582

`abs(∑[A020985(2*n+1)])`
-/

namespace A020990.P13843207672364445582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A020990.P13843207672364445582

namespace A020990

/-- `abs(∑[A020985(2*n+1)])` -/
def P13843207672364445582.Spec : Prop :=
  ∀ n, P13843207672364445582.a n = A020990 n

end A020990

/-! ## A020990.P8242989935219529723

`∑[A340504(2*(n+1))-2]`
-/

namespace A020990.P8242989935219529723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340504 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P8242989935219529723

namespace A020990

/-- `∑[A340504(2*(n+1))-2]` -/
def P8242989935219529723.Spec : Prop :=
  ∀ n, P8242989935219529723.a n = A020990 n

end A020990

/-! ## A020990.P13037071098399544309

`A020986(Δ[n²])-A020986(n)`
-/

namespace A020990.P13037071098399544309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A020986 n

end

end A020990.P13037071098399544309

namespace A020990

/-- `A020986(Δ[n²])-A020986(n)` -/
def P13037071098399544309.Spec : Prop :=
  ∀ n, P13037071098399544309.a n = A020990 n

end A020990

/-! ## A020990.P1484483400212238061

`∑[A106400(A048735(2*n+1))]`
-/

namespace A020990.P1484483400212238061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A048735 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P1484483400212238061

namespace A020990

/-- `∑[A106400(A048735(2*n+1))]` -/
def P1484483400212238061.Spec : Prop :=
  ∀ n, P1484483400212238061.a n = A020990 n

end A020990

/-! ## A020990.P16464869416195975482

`∑[A004718(A245195(2*n+1))]`
-/

namespace A020990.P16464869416195975482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A245195 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P16464869416195975482

namespace A020990

/-- `∑[A004718(A245195(2*n+1))]` -/
def P16464869416195975482.Spec : Prop :=
  ∀ n, P16464869416195975482.a n = A020990 n

end A020990

/-! ## A020990.P14427848500125972726

`∑[A020986(2*n+1)-A020986(2*n)]`
-/

namespace A020990.P14427848500125972726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (2 * n + 1) - A020986 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P14427848500125972726

namespace A020990

/-- `∑[A020986(2*n+1)-A020986(2*n)]` -/
def P14427848500125972726.Spec : Prop :=
  ∀ n, P14427848500125972726.a n = A020990 n

end A020990

/-! ## A020990.P18313939427055146424

`∑[A033999(A334576(n))]`
-/

namespace A020990.P18313939427055146424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A334576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020990.P18313939427055146424

namespace A020990

/-- `∑[A033999(A334576(n))]` -/
def P18313939427055146424.Spec : Prop :=
  ∀ n, P18313939427055146424.a n = A020990 n

end A020990

/-!
# A020991: Largest value of k for which Golay-Rudin-Shapiro sequence A020986(k) = n.

The programs for A020991, the canonical program `A020991.P16966038769123620304` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020991 has offset 1).

The definition of A020991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020991.P16966038769123620304

`A020988(A000523(n+1))+A000695(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A020991

/-- `A020988(A000523(n+1))+A000695(n)` -/
def P16966038769123620304.Spec : Prop :=
  ∀ n, P16966038769123620304.a n = A020991 (n + 1)

theorem P16966038769123620304.correct : P16966038769123620304.Spec := by
  intro n
  simp only [A020991, Nat.add_sub_cancel]

end A020991

/-! ## A020991.P15930944783715995857

`A139250(A053644(n+1))+A000695(n)-1`
-/

namespace A020991.P15930944783715995857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (A053644 (n + 1)).toNat + (A000695 n - 1)

end

end A020991.P15930944783715995857

namespace A020991

/-- `A139250(A053644(n+1))+A000695(n)-1` -/
def P15930944783715995857.Spec : Prop :=
  ∀ n, P15930944783715995857.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P10446442586586469014

`A212591(A003817(n+1))+A000695(n)`
-/

namespace A020991.P10446442586586469014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 (A003817 (n + 1)).toNat + A000695 n

end

end A020991.P10446442586586469014

namespace A020991

/-- `A212591(A003817(n+1))+A000695(n)` -/
def P10446442586586469014.Spec : Prop :=
  ∀ n, P10446442586586469014.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P6714664821181835794

`A266530(A062383(n+1))+A000695(n)`
-/

namespace A020991.P6714664821181835794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (A062383 (n + 1)).toNat + A000695 n

end

end A020991.P6714664821181835794

namespace A020991

/-- `A266530(A062383(n+1))+A000695(n)` -/
def P6714664821181835794.Spec : Prop :=
  ∀ n, P6714664821181835794.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P15059969826391721422

`∑[A022156(n)]-A022156(n)`
-/

namespace A020991.P15059969826391721422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022156 n

end

end A020991.P15059969826391721422

namespace A020991

/-- `∑[A022156(n)]-A022156(n)` -/
def P15059969826391721422.Spec : Prop :=
  ∀ n, P15059969826391721422.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P17480574527463337993

`A093573(∑[n+1])`
-/

namespace A020991.P17480574527463337993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020991.P17480574527463337993

namespace A020991

/-- `A093573(∑[n+1])` -/
def P17480574527463337993.Spec : Prop :=
  ∀ n, P17480574527463337993.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P27419102737726213

`record[A093573(A000217(A324347(n)))]`
-/

namespace A020991.P27419102737726213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (A000217 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020991.P27419102737726213

namespace A020991

/-- `record[A093573(A000217(A324347(n)))]` -/
def P27419102737726213.Spec : Prop :=
  ∀ n, P27419102737726213.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P14652848860545183764

`record[A093573(A000217(A344180(n)))]`
-/

namespace A020991.P14652848860545183764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (A000217 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020991.P14652848860545183764

namespace A020991

/-- `record[A093573(A000217(A344180(n)))]` -/
def P14652848860545183764.Spec : Prop :=
  ∀ n, P14652848860545183764.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P8566798514189100799

`record[A093573(A000217(A003602(n+1)))]`
-/

namespace A020991.P8566798514189100799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (A000217 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020991.P8566798514189100799

namespace A020991

/-- `record[A093573(A000217(A003602(n+1)))]` -/
def P8566798514189100799.Spec : Prop :=
  ∀ n, P8566798514189100799.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P18049905442889000601

`record[A093573(A000217(A026233(n+1)))]`
-/

namespace A020991.P18049905442889000601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093573 (A000217 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020991.P18049905442889000601

namespace A020991

/-- `record[A093573(A000217(A026233(n+1)))]` -/
def P18049905442889000601.Spec : Prop :=
  ∀ n, P18049905442889000601.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P10519535379067134514

`gcd(n, A002522(n))*A093573(A000217(n+1))`
-/

namespace A020991.P10519535379067134514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A002522 n) : ℤ) * A093573 (A000217 (n + 1)).toNat

end

end A020991.P10519535379067134514

namespace A020991

/-- `gcd(n, A002522(n))*A093573(A000217(n+1))` -/
def P10519535379067134514.Spec : Prop :=
  ∀ n, P10519535379067134514.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P15322701901564767969

`A019425(A019425(n))*A093573(A134519(2*n+1))`
-/

namespace A020991.P15322701901564767969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A019425 n).toNat * A093573 (A134519 (2 * n + 1)).toNat

end

end A020991.P15322701901564767969

namespace A020991

/-- `A019425(A019425(n))*A093573(A134519(2*n+1))` -/
def P15322701901564767969.Spec : Prop :=
  ∀ n, P15322701901564767969.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P5721323315630281295

`A053738(A000695(n)+1)-1`
-/

namespace A020991.P5721323315630281295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (A000695 n + 1).toNat - 1

end

end A020991.P5721323315630281295

namespace A020991

/-- `A053738(A000695(n)+1)-1` -/
def P5721323315630281295.Spec : Prop :=
  ∀ n, P5721323315630281295.a n = A020991 (n + 1)

end A020991

/-! ## A020991.P13435870310299790268

`eq[A030300(n+1), A303827(n)]`
-/

namespace A020991.P13435870310299790268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020991.P13435870310299790268

namespace A020991

/-- `eq[A030300(n+1), A303827(n)]` -/
def P13435870310299790268.Spec : Prop :=
  ∀ n, (P13435870310299790268.a n : ℤ) = A020991 (n + 1)

end A020991

/-!
# A020992: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 0, a(1) = 2, a(2) = 1.

The programs for A020992, the canonical program `A020992.P12214307085020414331` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020992 has offset 0).

The definition of A020992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A020992.P12214307085020414331`, by `A020992.P12214307085020414331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020992.P17744612996676871404

`ogf((2x-x^2)/(1-x-x^2-x^3))`
-/

namespace A020992.P17744612996676871404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -1, -1, -1] n

end

end A020992.P17744612996676871404

namespace A020992

/-- `ogf((2x-x^2)/(1-x-x^2-x^3))` -/
def P17744612996676871404.Spec : Prop :=
  ∀ n, P17744612996676871404.a n = A020992 n

end A020992

/-! ## A020992.P12214307085020414331

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A020992

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P12214307085020414331.Spec : Prop :=
  ∀ n, (P12214307085020414331.a n : ℤ) = A020992 n

theorem P12214307085020414331.correct : P12214307085020414331.Spec := by
  intro n
  simp only [A020992]

end A020992

/-! ## A020992.P6335499651776257733

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A020992.P6335499651776257733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A020992.P6335499651776257733

namespace A020992

/-- `2*a(n-1)-a(n-4)` -/
def P6335499651776257733.Spec : Prop :=
  ∀ n, P6335499651776257733.a n = A020992 n

end A020992

/-! ## A020992.P1517209757693874254

`2*A000073(n+1)-A000073(n)`
-/

namespace A020992.P1517209757693874254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000073 (n + 1) - A000073 n

end

end A020992.P1517209757693874254

namespace A020992

/-- `2*A000073(n+1)-A000073(n)` -/
def P1517209757693874254.Spec : Prop :=
  ∀ n, P1517209757693874254.a n = A020992 n

end A020992

/-! ## A020992.P9694017123871612483

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A020992.P9694017123871612483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A020992.P9694017123871612483

namespace A020992

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P9694017123871612483.Spec : Prop :=
  ∀ n, P9694017123871612483.a n = A020992 n

end A020992

/-! ## A020992.P3813969356920083861

`A001590(n)+∑[A001590(n)]`
-/

namespace A020992.P3813969356920083861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020992.P3813969356920083861

namespace A020992

/-- `A001590(n)+∑[A001590(n)]` -/
def P3813969356920083861.Spec : Prop :=
  ∀ n, P3813969356920083861.a n = A020992 n

end A020992

/-! ## A020992.P4449181618874028026

`A001590(n)+A000073(n+1)`
-/

namespace A020992.P4449181618874028026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000073 (n + 1)

end

end A020992.P4449181618874028026

namespace A020992

/-- `A001590(n)+A000073(n+1)` -/
def P4449181618874028026.Spec : Prop :=
  ∀ n, P4449181618874028026.a n = A020992 n

end A020992

/-! ## A020992.P13349780934002536710

`A000073(n+1)+Δ[A000073(n)]`
-/

namespace A020992.P13349780934002536710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (f1 (n + 1) - f1 n)

end

end A020992.P13349780934002536710

namespace A020992

/-- `A000073(n+1)+Δ[A000073(n)]` -/
def P13349780934002536710.Spec : Prop :=
  ∀ n, P13349780934002536710.a n = A020992 n

end A020992

/-! ## A020992.P8430108093757119378

`Δ[A192804(n)]+2*A001590(n)`
-/

namespace A020992.P8430108093757119378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A001590 n

end

end A020992.P8430108093757119378

namespace A020992

/-- `Δ[A192804(n)]+2*A001590(n)` -/
def P8430108093757119378.Spec : Prop :=
  ∀ n, P8430108093757119378.a n = A020992 n

end A020992

/-! ## A020992.P15243509994608476437

`A099329(n+1)+A099330(n+1)+A001590(n)`
-/

namespace A020992.P15243509994608476437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099329 (n + 1) + (A099330 (n + 1) + A001590 n)

end

end A020992.P15243509994608476437

namespace A020992

/-- `A099329(n+1)+A099330(n+1)+A001590(n)` -/
def P15243509994608476437.Spec : Prop :=
  ∀ n, P15243509994608476437.a n = A020992 n

end A020992

/-! ## A020992.P17776512127219573604

`A214727(n)-A001590(n+1)`
-/

namespace A020992.P17776512127219573604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A001590 (n + 1)

end

end A020992.P17776512127219573604

namespace A020992

/-- `A214727(n)-A001590(n+1)` -/
def P17776512127219573604.Spec : Prop :=
  ∀ n, P17776512127219573604.a n = A020992 n

end A020992

/-! ## A020992.P18137461676751925623

`A354784(n+1)-A000073(n)`
-/

namespace A020992.P18137461676751925623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) - A000073 n

end

end A020992.P18137461676751925623

namespace A020992

/-- `A354784(n+1)-A000073(n)` -/
def P18137461676751925623.Spec : Prop :=
  ∀ n, P18137461676751925623.a n = A020992 n

end A020992

/-! ## A020992.P14316320898262424370

`A001590(n)+Δ[A192804(n+1)]`
-/

namespace A020992.P14316320898262424370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + (f1 (n + 1) - f1 n)

end

end A020992.P14316320898262424370

namespace A020992

/-- `A001590(n)+Δ[A192804(n+1)]` -/
def P14316320898262424370.Spec : Prop :=
  ∀ n, P14316320898262424370.a n = A020992 n

end A020992

/-! ## A020992.P16483709129188112443

`Δ[A354784(n)]+A354784(n)/2`
-/

namespace A020992.P16483709129188112443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A354784 n : ℚ) / 2

end

end A020992.P16483709129188112443

namespace A020992

/-- `Δ[A354784(n)]+A354784(n)/2` -/
def P16483709129188112443.Spec : Prop :=
  ∀ n, P16483709129188112443.a n = (A020992 n : ℚ)

end A020992

/-! ## A020992.P6451325918971412238

`A081172(n)+A214727(n)-A141036(n)`
-/

namespace A020992.P6451325918971412238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (A214727 n - A141036 n)

end

end A020992.P6451325918971412238

namespace A020992

/-- `A081172(n)+A214727(n)-A141036(n)` -/
def P6451325918971412238.Spec : Prop :=
  ∀ n, P6451325918971412238.a n = A020992 n

end A020992

/-! ## A020992.P5926561809020634121

`A001590(n)-(A000213(n)-A214727(n))`
-/

namespace A020992.P5926561809020634121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n - (A000213 n - A214727 n)

end

end A020992.P5926561809020634121

namespace A020992

/-- `A001590(n)-(A000213(n)-A214727(n))` -/
def P5926561809020634121.Spec : Prop :=
  ∀ n, P5926561809020634121.a n = A020992 n

end A020992

/-! ## A020992.P6543136538658890902

`A000073(n+1)+A275778(n)-A000213(n)`
-/

namespace A020992.P6543136538658890902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A275778 n - A000213 n)

end

end A020992.P6543136538658890902

namespace A020992

/-- `A000073(n+1)+A275778(n)-A000213(n)` -/
def P6543136538658890902.Spec : Prop :=
  ∀ n, P6543136538658890902.a n = A020992 n

end A020992

/-! ## A020992.P14083839799414778415

`A000073(n)+A214727(n)-A081172(n+1)`
-/

namespace A020992.P14083839799414778415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A214727 n - A081172 (n + 1))

end

end A020992.P14083839799414778415

namespace A020992

/-- `A000073(n)+A214727(n)-A081172(n+1)` -/
def P14083839799414778415.Spec : Prop :=
  ∀ n, P14083839799414778415.a n = A020992 n

end A020992

/-! ## A020992.P15200009986113151543

`A000213(n+1)+A001590(n)-A081172(n+1)`
-/

namespace A020992.P15200009986113151543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A001590 n - A081172 (n + 1))

end

end A020992.P15200009986113151543

namespace A020992

/-- `A000213(n+1)+A001590(n)-A081172(n+1)` -/
def P15200009986113151543.Spec : Prop :=
  ∀ n, P15200009986113151543.a n = A020992 n

end A020992

/-! ## A020992.P2283374616714461966

`A214826(n)-A047081(n)`
-/

namespace A020992.P2283374616714461966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n - A047081 n

end

end A020992.P2283374616714461966

namespace A020992

/-- `A214826(n)-A047081(n)` -/
def P2283374616714461966.Spec : Prop :=
  ∀ n, P2283374616714461966.a n = A020992 n

end A020992

/-!
# A020994: Primes that are both left-truncatable and right-truncatable.

The programs for A020994, there is no canonical definition to state claims against.
-/

/-! ## A020994.P17364941442757129002

`A323396(n+59)`
-/

namespace A020994.P17364941442757129002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323396 (n + 59)

end

end A020994.P17364941442757129002

/-! ## A020994.P17100425855105739223

`∩[A024770(n+1), A024785(n+1)]`
-/

namespace A020994.P17100425855105739223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020994.P17100425855105739223

/-! ## A020994.P4302415624930241128

`∩[A024770(n+1), A033664(n+1)]`
-/

namespace A020994.P4302415624930241128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020994.P4302415624930241128

/-! ## A020994.P483624979743477701

`∩[A024770(n+1), A308711(n+1)]`
-/

namespace A020994.P483624979743477701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020994.P483624979743477701

/-! ## A020994.P16162183358514413677

`∩[A024770(n+1), A400420(n+1)]`
-/

namespace A020994.P16162183358514413677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020994.P16162183358514413677

/-!
# A020995: Numbers k such that the sum of the digits of Fibonacci(k) is k.

The programs for A020995, there is no canonical definition to state claims against.
-/

/-! ## A020995.P4454662689462710497

`eq[0, A280185(n)]`
-/

namespace A020995.P4454662689462710497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020995.P4454662689462710497

/-! ## A020995.P3070234405716317004

`eq[n, A004090(n)]`
-/

namespace A020995.P3070234405716317004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020995.P3070234405716317004

/-! ## A020995.P17907120090062976083

`A004090(record[gcd(n, A004090(n))])`
-/

namespace A020995.P17907120090062976083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004090 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A020995.P17907120090062976083

/-! ## A020995.P4644886093299932408

`record[gcd(A103205(n), A280185(n))]`
-/

namespace A020995.P4644886093299932408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103205 n) (A280185 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020995.P4644886093299932408

/-! ## A020995.P11949809653020880258

`∑{digits}[A067515(n+1), #]`
-/

namespace A020995.P11949809653020880258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A020995.P11949809653020880258

/-!
# A020997: Numbers n such that the sum of the digits of Lucas(n) is n.

The programs for A020997, there is no canonical definition to state claims against.
-/

/-! ## A020997.P6499716722832398408

`eq[n, A139374(n)]`
-/

namespace A020997.P6499716722832398408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A020997.P6499716722832398408

/-! ## A020997.P3914682954013979682

`lt[A028310(n)%A139374(n), 1]`
-/

namespace A020997.P3914682954013979682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A139374 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A020997.P3914682954013979682

/-!
# A020999: Conjectured number of irreducible multiple zeta values of depth n and weight 3n (confirmed up to n=7).

The programs for A020999, there is no canonical definition to state claims against.
-/

/-! ## A020999.P14432360618746164527

`A008616(A000267(∑[A126042(n)]))`
-/

namespace A020999.P14432360618746164527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A020999.P14432360618746164527

/-! ## A020999.P3761177220034081243

`Δ[A135660(A357884(n+1)+A000204(n+1))]`
-/

namespace A020999.P3761177220034081243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A357884 (n + 1) + A000204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020999.P3761177220034081243

