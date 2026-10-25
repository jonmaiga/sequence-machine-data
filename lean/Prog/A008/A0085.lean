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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A008500: 6-dimensional centered tetrahedral numbers.

The programs for A008500, the canonical program `A008500.P15206088215966467390` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008500 has offset 0).

The definition of A008500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008500.P15206088215966467390

`C(n+7, 7)-C(n, 7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008500

/-- `C(n+7, 7)-C(n, 7)` -/
def P15206088215966467390.Spec : Prop :=
  ∀ n, P15206088215966467390.a n = A008500 n

theorem P15206088215966467390.correct : P15206088215966467390.Spec := by
  intro n
  simp only [A008500]

end A008500

/-! ## A008500.P10468122243603562542

`∑[A008489(n)]`
-/

namespace A008500.P10468122243603562542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008500.P10468122243603562542

namespace A008500

/-- `∑[A008489(n)]` -/
def P10468122243603562542.Spec : Prop :=
  ∀ n, P10468122243603562542.a n = A008500 n

end A008500

/-! ## A008500.P17783133388678695938

`A000580(n+7)-C(n, 7)`
-/

namespace A008500.P17783133388678695938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - (Nat.choose n 7 : ℤ)

end

end A008500.P17783133388678695938

namespace A008500

/-- `A000580(n+7)-C(n, 7)` -/
def P17783133388678695938.Spec : Prop :=
  ∀ n, P17783133388678695938.a n = A008500 n

end A008500

/-! ## A008500.P7470684155957950062

`A008489(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A008500.P7470684155957950062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008489 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A008500.P7470684155957950062

namespace A008500

/-- `A008489(A000007(n)+n)+a(n-1)` -/
def P7470684155957950062.Spec : Prop :=
  ∀ n, P7470684155957950062.a n = A008500 n

end A008500

/-! ## A008500.P5682088779200415041

`A008489(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A008500.P5682088779200415041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008489 n - (A000007 n - a (n - 1))

end

end A008500.P5682088779200415041

namespace A008500

/-- `A008489(n)-(A000007(n)-a(n-1))` -/
def P5682088779200415041.Spec : Prop :=
  ∀ n, P5682088779200415041.a n = A008500 n

end A008500

/-! ## A008500.P5948714899057153054

`A008490(n)-A000579(A289207(n)+1)`
-/

namespace A008500.P5948714899057153054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008490 n - A000579 (A289207 n + 1).toNat

end

end A008500.P5948714899057153054

namespace A008500

/-- `A008490(n)-A000579(A289207(n)+1)` -/
def P5948714899057153054.Spec : Prop :=
  ∀ n, P5948714899057153054.a n = A008500 n

end A008500

/-! ## A008500.P2807026245070043745

`A000580(n+7)+A000579(n)-∑[A000579(n)]`
-/

namespace A008500.P2807026245070043745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + (A000579 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008500.P2807026245070043745

namespace A008500

/-- `A000580(n+7)+A000579(n)-∑[A000579(n)]` -/
def P2807026245070043745.Spec : Prop :=
  ∀ n, P2807026245070043745.a n = A008500 n

end A008500

/-! ## A008500.P5175457921751881279

`A008489(A006370(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A008500.P5175457921751881279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008489 (A006370 (2 * n)).toNat + a (n - 1)

end

end A008500.P5175457921751881279

namespace A008500

/-- `A008489(A006370(2*n))+a(n-1)` -/
def P5175457921751881279.Spec : Prop :=
  ∀ n, P5175457921751881279.a n = A008500 n

end A008500

/-!
# A008501: 7-dimensional centered tetrahedral numbers.

The programs for A008501, the canonical program `A008501.P1503807717796397997` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008501 has offset 0).

The definition of A008501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008501.P1503807717796397997

`C(n+8, 8)-C(n, 8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008501

/-- `C(n+8, 8)-C(n, 8)` -/
def P1503807717796397997.Spec : Prop :=
  ∀ n, P1503807717796397997.a n = A008501 n

theorem P1503807717796397997.correct : P1503807717796397997.Spec := by
  intro n
  simp only [A008501]

end A008501

/-! ## A008501.P14262574981365999544

`∑[A008490(n)]`
-/

namespace A008501.P14262574981365999544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008501.P14262574981365999544

namespace A008501

/-- `∑[A008490(n)]` -/
def P14262574981365999544.Spec : Prop :=
  ∀ n, P14262574981365999544.a n = A008501 n

end A008501

/-! ## A008501.P14887255487756575558

`A000581(n+8)+A116082(n)-A116690(n)`
-/

namespace A008501.P14887255487756575558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + (A116082 n - A116690 n)

end

end A008501.P14887255487756575558

namespace A008501

/-- `A000581(n+8)+A116082(n)-A116690(n)` -/
def P14887255487756575558.Spec : Prop :=
  ∀ n, P14887255487756575558.a n = A008501 n

theorem P14887255487756575558.correct : P14887255487756575558.Spec := by
  intro n
  simp only [A008501, Nat.add_sub_cancel, A008501.P14887255487756575558.a, A008501.P1503807717796397997.a, A000581, A000581.P12083568850536544774.a, A116082, A116082.P2212801188075974984.a, A116690, A116690.P3043928866882249951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008501

/-! ## A008501.P12372701431807035243

`A000581(n+8)+A115205(n)-A115205(n+1)`
-/

namespace A008501.P12372701431807035243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + (A115205 n - A115205 (n + 1))

end

end A008501.P12372701431807035243

namespace A008501

/-- `A000581(n+8)+A115205(n)-A115205(n+1)` -/
def P12372701431807035243.Spec : Prop :=
  ∀ n, P12372701431807035243.a n = A008501 n

theorem P12372701431807035243.correct : P12372701431807035243.Spec := by
  intro n
  simp only [A008501, Nat.add_sub_cancel, A008501.P12372701431807035243.a, A008501.P1503807717796397997.a, A000581, A000581.P12083568850536544774.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008501

/-! ## A008501.P17877634636172277658

`Δ[n/9*A008491(n)]`
-/

namespace A008501.P17877634636172277658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 9 * (A008491 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008501.P17877634636172277658

namespace A008501

/-- `Δ[n/9*A008491(n)]` -/
def P17877634636172277658.Spec : Prop :=
  ∀ n, P17877634636172277658.a n = (A008501 n : ℚ)

end A008501

/-! ## A008501.P17023541357215706764

`A008491(n+1)-A000580(n+8)`
-/

namespace A008501.P17023541357215706764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008491 (n + 1) - A000580 (n + 8)

end

end A008501.P17023541357215706764

namespace A008501

/-- `A008491(n+1)-A000580(n+8)` -/
def P17023541357215706764.Spec : Prop :=
  ∀ n, P17023541357215706764.a n = A008501 n

end A008501

/-! ## A008501.P12711382595154355702

`Δ[A008492(n+1)-A053347(n+1)]`
-/

namespace A008501.P12711382595154355702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 (n + 1) - A053347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008501.P12711382595154355702

namespace A008501

/-- `Δ[A008492(n+1)-A053347(n+1)]` -/
def P12711382595154355702.Spec : Prop :=
  ∀ n, P12711382595154355702.a n = A008501 n

end A008501

/-! ## A008501.P14541536300174864311

`Δ[A115205(n+8)-A115205(n)]`
-/

namespace A008501.P14541536300174864311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 (n + 8) - A115205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008501.P14541536300174864311

namespace A008501

/-- `Δ[A115205(n+8)-A115205(n)]` -/
def P14541536300174864311.Spec : Prop :=
  ∀ n, P14541536300174864311.a n = A008501 n

theorem P14541536300174864311.correct : P14541536300174864311.Spec := by
  intro n
  simp only [A008501, Nat.add_sub_cancel, A008501.P14541536300174864311.f1, A008501.P14541536300174864311.a, A008501.P1503807717796397997.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008501

/-!
# A008502: 8-dimensional centered tetrahedral numbers.

The programs for A008502, the canonical program `A008502.P14657047167220200650` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008502 has offset 0).

The definition of A008502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008502.P14657047167220200650

`C(n+9, 9)-C(n, 9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008502

/-- `C(n+9, 9)-C(n, 9)` -/
def P14657047167220200650.Spec : Prop :=
  ∀ n, P14657047167220200650.a n = A008502 n

theorem P14657047167220200650.correct : P14657047167220200650.Spec := by
  intro n
  simp only [A008502]

end A008502

/-! ## A008502.P17252408062168725826

`∑[A008491(n)]`
-/

namespace A008502.P17252408062168725826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008502.P17252408062168725826

namespace A008502

/-- `∑[A008491(n)]` -/
def P17252408062168725826.Spec : Prop :=
  ∀ n, P17252408062168725826.a n = A008502 n

end A008502

/-! ## A008502.P9645423194565444093

`A035927(n)+2-A115205(n)`
-/

namespace A008502.P9645423194565444093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 n + (2 - A115205 n)

end

end A008502.P9645423194565444093

namespace A008502

/-- `A035927(n)+2-A115205(n)` -/
def P9645423194565444093.Spec : Prop :=
  ∀ n, P9645423194565444093.a n = A008502 n

theorem P9645423194565444093.correct : P9645423194565444093.Spec := by
  intro n
  simp only [A008502, Nat.add_sub_cancel, A008502.P9645423194565444093.a, A008502.P14657047167220200650.a, A035927, A035927.P5963660235913258710.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008502

/-! ## A008502.P15807337076253016970

`A000582(n+9)+1-A115205(n)`
-/

namespace A008502.P15807337076253016970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (1 - A115205 n)

end

end A008502.P15807337076253016970

namespace A008502

/-- `A000582(n+9)+1-A115205(n)` -/
def P15807337076253016970.Spec : Prop :=
  ∀ n, P15807337076253016970.a n = A008502 n

theorem P15807337076253016970.correct : P15807337076253016970.Spec := by
  intro n
  simp only [A008502, Nat.add_sub_cancel, A008502.P15807337076253016970.a, A008502.P14657047167220200650.a, A000582, A000582.P5339973766427948568.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008502

/-! ## A008502.P7350875041240818167

`A008491(n%A003961(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A008502.P7350875041240818167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008491 (Int.tmod (n : ℤ) (A003961 (n + 1))).toNat + a (n - 1)

end

end A008502.P7350875041240818167

namespace A008502

/-- `A008491(n%A003961(n+1))+a(n-1)` -/
def P7350875041240818167.Spec : Prop :=
  ∀ n, P7350875041240818167.a n = A008502 n

end A008502

/-! ## A008502.P15673055684450270199

`A008492(n+1)-A000581(n+9)`
-/

namespace A008502.P15673055684450270199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 (n + 1) - A000581 (n + 9)

end

end A008502.P15673055684450270199

namespace A008502

/-- `A008492(n+1)-A000581(n+9)` -/
def P15673055684450270199.Spec : Prop :=
  ∀ n, P15673055684450270199.a n = A008502 n

end A008502

/-! ## A008502.P18147080562217337762

`A008492(n+1)-(A165618(n+1)+1)`
-/

namespace A008502.P18147080562217337762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 (n + 1) - (A165618 (n + 1) + 1)

end

end A008502.P18147080562217337762

namespace A008502

/-- `A008492(n+1)-(A165618(n+1)+1)` -/
def P18147080562217337762.Spec : Prop :=
  ∀ n, P18147080562217337762.a n = A008502 n

end A008502

/-! ## A008502.P18313007579663703332

`a(n-1)+A008491(n)%A008491(n+1)` with `a(0)=1`
-/

namespace A008502.P18313007579663703332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A008491 n) (A008491 (n + 1))

end

end A008502.P18313007579663703332

namespace A008502

/-- `a(n-1)+A008491(n)%A008491(n+1)` -/
def P18313007579663703332.Spec : Prop :=
  ∀ n, P18313007579663703332.a n = A008502 n

end A008502

/-! ## A008502.P10736827076255853769

`A115205(n+9)-A115205(n)`
-/

namespace A008502.P10736827076255853769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 (n + 9) - A115205 n

end

end A008502.P10736827076255853769

namespace A008502

/-- `A115205(n+9)-A115205(n)` -/
def P10736827076255853769.Spec : Prop :=
  ∀ n, P10736827076255853769.a n = A008502 n

theorem P10736827076255853769.correct : P10736827076255853769.Spec := by
  intro n
  simp only [A008502, Nat.add_sub_cancel, A008502.P10736827076255853769.a, A008502.P14657047167220200650.a, A115205, A115205.P18109322668786232172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008502

/-!
# A008503: 9-dimensional centered tetrahedral numbers.

The programs for A008503, the canonical program `A008503.P16713333461230501817` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008503 has offset 0).

The definition of A008503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008503.P16713333461230501817

`C(n+10, 10)-C(n, 10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008503

/-- `C(n+10, 10)-C(n, 10)` -/
def P16713333461230501817.Spec : Prop :=
  ∀ n, P16713333461230501817.a n = A008503 n

theorem P16713333461230501817.correct : P16713333461230501817.Spec := by
  intro n
  simp only [A008503]

end A008503

/-! ## A008503.P1208465169182441661

`∑[A008492(n)]`
-/

namespace A008503.P1208465169182441661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008503.P1208465169182441661

namespace A008503

/-- `∑[A008492(n)]` -/
def P1208465169182441661.Spec : Prop :=
  ∀ n, P1208465169182441661.a n = A008503 n

end A008503

/-! ## A008503.P16254646129052690158

`Δ[A008504(n)-A001287(n)]`
-/

namespace A008503.P16254646129052690158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008504 n - A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008503.P16254646129052690158

namespace A008503

/-- `Δ[A008504(n)-A001287(n)]` -/
def P16254646129052690158.Spec : Prop :=
  ∀ n, P16254646129052690158.a n = A008503 n

theorem P16254646129052690158.correct : P16254646129052690158.Spec := by
  intro n
  simp only [A008503, Nat.add_sub_cancel, A008503.P16254646129052690158.f1, A008503.P16254646129052690158.a, A008503.P16713333461230501817.a, A001287, A001287.P7309496825709961420.a, A008504, A008504.P12622197103175037894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008503

/-! ## A008503.P8386167150944851519

`A008493(n+1)-Δ[A001287(n)]`
-/

namespace A008503.P8386167150944851519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008503.P8386167150944851519

namespace A008503

/-- `A008493(n+1)-Δ[A001287(n)]` -/
def P8386167150944851519.Spec : Prop :=
  ∀ n, P8386167150944851519.a n = A008503 n

end A008503

/-! ## A008503.P14695140725690482128

`Δ[A008504(n)]-A000582(n+10)`
-/

namespace A008503.P14695140725690482128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000582 (n + 10)

end

end A008503.P14695140725690482128

namespace A008503

/-- `Δ[A008504(n)]-A000582(n+10)` -/
def P14695140725690482128.Spec : Prop :=
  ∀ n, P14695140725690482128.a n = A008503 n

theorem P14695140725690482128.correct : P14695140725690482128.Spec := by
  intro n
  simp only [A008503, Nat.add_sub_cancel, A008503.P14695140725690482128.f1, A008503.P14695140725690482128.a, A008503.P16713333461230501817.a, A000582, A000582.P5339973766427948568.a, A008504, A008504.P12622197103175037894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008503

/-! ## A008503.P13342917303173044093

`A008493(n+1)-A000582(n+10)`
-/

namespace A008503.P13342917303173044093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 (n + 1) - A000582 (n + 10)

end

end A008503.P13342917303173044093

namespace A008503

/-- `A008493(n+1)-A000582(n+10)` -/
def P13342917303173044093.Spec : Prop :=
  ∀ n, P13342917303173044093.a n = A008503 n

end A008503

/-! ## A008503.P6564312602459922367

`A008493(n+1)-(A035927(n+1)+1)`
-/

namespace A008503.P6564312602459922367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 (n + 1) - (A035927 (n + 1) + 1)

end

end A008503.P6564312602459922367

namespace A008503

/-- `A008493(n+1)-(A035927(n+1)+1)` -/
def P6564312602459922367.Spec : Prop :=
  ∀ n, P6564312602459922367.a n = A008503 n

end A008503

/-! ## A008503.P1647895910151487112

`A008493(n+1)+A001287(n)-A001287(n+1)`
-/

namespace A008503.P1647895910151487112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 (n + 1) + (A001287 (n + 10) - A001287 (n + 1 + 10))

end

end A008503.P1647895910151487112

namespace A008503

/-- `A008493(n+1)+A001287(n)-A001287(n+1)` -/
def P1647895910151487112.Spec : Prop :=
  ∀ n, P1647895910151487112.a n = A008503 n

end A008503

/-!
# A008504: 10-dimensional centered tetrahedral numbers.

The programs for A008504, the canonical program `A008504.P12622197103175037894` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008504 has offset 0).

The definition of A008504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008504.P12622197103175037894

`C(n+11, 11)-C(n, 11)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008504

/-- `C(n+11, 11)-C(n, 11)` -/
def P12622197103175037894.Spec : Prop :=
  ∀ n, P12622197103175037894.a n = A008504 n

theorem P12622197103175037894.correct : P12622197103175037894.Spec := by
  intro n
  simp only [A008504]

end A008504

/-! ## A008504.P14420488726331992651

`∑[A008493(n)]`
-/

namespace A008504.P14420488726331992651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008504.P14420488726331992651

namespace A008504

/-- `∑[A008493(n)]` -/
def P14420488726331992651.Spec : Prop :=
  ∀ n, P14420488726331992651.a n = A008504 n

end A008504

/-! ## A008504.P11995156894108679637

`A008493(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008504.P11995156894108679637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008493 n + a (A023443 n).toNat

end

end A008504.P11995156894108679637

namespace A008504

/-- `A008493(n)+a(A023443(n))` -/
def P11995156894108679637.Spec : Prop :=
  ∀ n, P11995156894108679637.a n = A008504 n

end A008504

/-! ## A008504.P4720392504309294151

`A008493(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A008504.P4720392504309294151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008493 n + a (A004273 n - (n : ℤ)).toNat

end

end A008504.P4720392504309294151

namespace A008504

/-- `A008493(n)+a(A004273(n)-n)` -/
def P4720392504309294151.Spec : Prop :=
  ∀ n, P4720392504309294151.a n = A008504 n

end A008504

/-! ## A008504.P1308033506714914555

`A008493(n)+A008494(n)-A001287(n)`
-/

namespace A008504.P1308033506714914555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n + (A008494 n - A001287 (n + 10))

end

end A008504.P1308033506714914555

namespace A008504

/-- `A008493(n)+A008494(n)-A001287(n)` -/
def P1308033506714914555.Spec : Prop :=
  ∀ n, P1308033506714914555.a n = A008504 n

end A008504

/-! ## A008504.P18285781582456370275

`A008494(n+1)-A001287(n+1)`
-/

namespace A008504.P18285781582456370275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 (n + 1) - A001287 (n + 1 + 10)

end

end A008504.P18285781582456370275

namespace A008504

/-- `A008494(n+1)-A001287(n+1)` -/
def P18285781582456370275.Spec : Prop :=
  ∀ n, P18285781582456370275.a n = A008504 n

end A008504

/-! ## A008504.P4413155053834186484

`A008494(n+1)-A172242(n+1)/A000079(n+1)`
-/

namespace A008504.P4413155053834186484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008494 (n + 1) : ℚ) - (A172242 (n + 1 + 10) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A008504.P4413155053834186484

namespace A008504

/-- `A008494(n+1)-A172242(n+1)/A000079(n+1)` -/
def P4413155053834186484.Spec : Prop :=
  ∀ n, P4413155053834186484.a n = (A008504 n : ℚ)

end A008504

/-!
# A008505: 11-dimensional centered tetrahedral numbers.

The programs for A008505, the canonical program `A008505.P683446146885175805` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008505 has offset 0).

The definition of A008505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008505.P683446146885175805

`C(n+12, 12)-C(n, 12)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008505

/-- `C(n+12, 12)-C(n, 12)` -/
def P683446146885175805.Spec : Prop :=
  ∀ n, P683446146885175805.a n = A008505 n

theorem P683446146885175805.correct : P683446146885175805.Spec := by
  intro n
  simp only [A008505]

end A008505

/-! ## A008505.P5785957013294412260

`∑[A008494(n)]`
-/

namespace A008505.P5785957013294412260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008505.P5785957013294412260

namespace A008505

/-- `∑[A008494(n)]` -/
def P5785957013294412260.Spec : Prop :=
  ∀ n, P5785957013294412260.a n = A008505 n

end A008505

/-! ## A008505.P5945561395116167023

`A008494(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A008505.P5945561395116167023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008494 n + a (A004273 n - (n : ℤ)).toNat

end

end A008505.P5945561395116167023

namespace A008505

/-- `A008494(n)+a(A004273(n)-n)` -/
def P5945561395116167023.Spec : Prop :=
  ∀ n, P5945561395116167023.a n = A008505 n

end A008505

/-! ## A008505.P7637617402274473573

`a(n-1)+A001287(n)+A008504(n)-A008493(n)` with `a(0)=1`
-/

namespace A008505.P7637617402274473573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001287 (n + 10) + (A008504 n - A008493 n))

end

end A008505.P7637617402274473573

namespace A008505

/-- `a(n-1)+A001287(n)+A008504(n)-A008493(n)` -/
def P7637617402274473573.Spec : Prop :=
  ∀ n, P7637617402274473573.a n = A008505 n

end A008505

/-! ## A008505.P9717933637916321026

`Δ[n/13*A008495(n)]`
-/

namespace A008505.P9717933637916321026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 13 * (A008495 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008505.P9717933637916321026

namespace A008505

/-- `Δ[n/13*A008495(n)]` -/
def P9717933637916321026.Spec : Prop :=
  ∀ n, P9717933637916321026.a n = (A008505 n : ℚ)

end A008505

/-! ## A008505.P7115936421054759718

`A008495(n+1)-A001288(n+1)`
-/

namespace A008505.P7115936421054759718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008495 (n + 1) - A001288 (n + 1 + 11)

end

end A008505.P7115936421054759718

namespace A008505

/-- `A008495(n+1)-A001288(n+1)` -/
def P7115936421054759718.Spec : Prop :=
  ∀ n, P7115936421054759718.a n = A008505 n

end A008505

/-!
# A008506: 12-dimensional centered tetrahedral numbers.

The programs for A008506, the canonical program `A008506.P7424406959408670799` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008506 has offset 0).

The definition of A008506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008506.P7424406959408670799

`C(n+13, 13)-C(n, 13)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008506

/-- `C(n+13, 13)-C(n, 13)` -/
def P7424406959408670799.Spec : Prop :=
  ∀ n, P7424406959408670799.a n = A008506 n

theorem P7424406959408670799.correct : P7424406959408670799.Spec := by
  intro n
  simp only [A008506]

end A008506

/-! ## A008506.P2596712587414377002

`∑[A008495(n)]`
-/

namespace A008506.P2596712587414377002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008506.P2596712587414377002

namespace A008506

/-- `∑[A008495(n)]` -/
def P2596712587414377002.Spec : Prop :=
  ∀ n, P2596712587414377002.a n = A008506 n

end A008506

/-! ## A008506.P15619291874748857592

`A008495(xor(1, xor(1, n)))+a(n-1)` with `a(0)=1`
-/

namespace A008506.P15619291874748857592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008495 (Nat.xor 1 (Nat.xor 1 n)) + a (n - 1)

end

end A008506.P15619291874748857592

namespace A008506

/-- `A008495(xor(1, xor(1, n)))+a(n-1)` -/
def P15619291874748857592.Spec : Prop :=
  ∀ n, P15619291874748857592.a n = A008506 n

end A008506

/-! ## A008506.P11120212328839749022

`a(n-1)+A008495(n)*A050932(2*n+1)` with `a(0)=1`
-/

namespace A008506.P11120212328839749022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008495 n * A050932 (2 * n + 1)

end

end A008506.P11120212328839749022

namespace A008506

/-- `a(n-1)+A008495(n)*A050932(2*n+1)` -/
def P11120212328839749022.Spec : Prop :=
  ∀ n, P11120212328839749022.a n = A008506 n

end A008506

/-! ## A008506.P16557639574170523472

`∑[∑[A008494(n)+A001287(n)]-A008494(n)]`
-/

namespace A008506.P16557639574170523472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n + A001287 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008506.P16557639574170523472

namespace A008506

/-- `∑[∑[A008494(n)+A001287(n)]-A008494(n)]` -/
def P16557639574170523472.Spec : Prop :=
  ∀ n, P16557639574170523472.a n = A008506 n

end A008506

/-! ## A008506.P6084207793135141351

`a(n-1)+A001065(A000040(n+1))*A008495(n)` with `a(0)=1`
-/

namespace A008506.P6084207793135141351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001065 (A000040 (n + 1)).toNat * A008495 n

end

end A008506.P6084207793135141351

namespace A008506

/-- `a(n-1)+A001065(A000040(n+1))*A008495(n)` -/
def P6084207793135141351.Spec : Prop :=
  ∀ n, P6084207793135141351.a n = A008506 n

end A008506

/-!
# A008507: Number of odd composite numbers less than n-th odd prime.

The programs for A008507, the canonical program `A008507.P5510179153814837351` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008507 has offset 1).

The definition of A008507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008507.P5510179153814837351

`A067076(n+1)-n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008507

/-- `A067076(n+1)-n` -/
def P5510179153814837351.Spec : Prop :=
  ∀ n, P5510179153814837351.a n = A008507 (n + 1)

theorem P5510179153814837351.correct : P5510179153814837351.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel]

end A008507

/-! ## A008507.P299454533098180070

`A005097(n+1)-A000027(n+1)`
-/

namespace A008507.P299454533098180070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A000027 (n + 1)

end

end A008507.P299454533098180070

namespace A008507

/-- `A005097(n+1)-A000027(n+1)` -/
def P299454533098180070.Spec : Prop :=
  ∀ n, P299454533098180070.a n = A008507 (n + 1)

end A008507

/-! ## A008507.P14293797980373942335

`(A000040(n+2)-1)/2-(n+1)`
-/

namespace A008507.P14293797980373942335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - 1 : ℚ) / 2 - (n + 1 : ℚ)

end

end A008507.P14293797980373942335

namespace A008507

/-- `(A000040(n+2)-1)/2-(n+1)` -/
def P14293797980373942335.Spec : Prop :=
  ∀ n, P14293797980373942335.a n = (A008507 (n + 1) : ℚ)

end A008507

/-! ## A008507.P9599067559743645422

`(p?[2*n+1]-3)/2-n`
-/

namespace A008507.P9599067559743645422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / 2 - (n : ℚ)

end

end A008507.P9599067559743645422

namespace A008507

/-- `(p?[2*n+1]-3)/2-n` -/
def P9599067559743645422.Spec : Prop :=
  ∀ n, P9599067559743645422.a n = (A008507 (n + 1) : ℚ)

end A008507

/-! ## A008507.P17055308562489038244

`∑[A100820(n+1)]`
-/

namespace A008507.P17055308562489038244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008507.P17055308562489038244

namespace A008507

/-- `∑[A100820(n+1)]` -/
def P17055308562489038244.Spec : Prop :=
  ∀ n, P17055308562489038244.a n = A008507 (n + 1)

end A008507

/-! ## A008507.P4507535321160715229

`A177018(n+1)-3`
-/

namespace A008507.P4507535321160715229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) - 3

end

end A008507.P4507535321160715229

namespace A008507

/-- `A177018(n+1)-3` -/
def P4507535321160715229.Spec : Prop :=
  ∀ n, P4507535321160715229.a n = A008507 (n + 1)

end A008507

/-! ## A008507.P13133810211934935362

`A005097(n+1)-(n+1)`
-/

namespace A008507.P13133810211934935362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - (n + 1 : ℤ)

end

end A008507.P13133810211934935362

namespace A008507

/-- `A005097(n+1)-(n+1)` -/
def P13133810211934935362.Spec : Prop :=
  ∀ n, P13133810211934935362.a n = A008507 (n + 1)

end A008507

/-! ## A008507.P11177241269492459264

`A006254(n+1)-(n+2)`
-/

namespace A008507.P11177241269492459264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - (n + 2 : ℤ)

end

end A008507.P11177241269492459264

namespace A008507

/-- `A006254(n+1)-(n+2)` -/
def P11177241269492459264.Spec : Prop :=
  ∀ n, P11177241269492459264.a n = A008507 (n + 1)

theorem P11177241269492459264.correct : P11177241269492459264.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P11177241269492459264.a, A008507.P5510179153814837351.a, A006254, A006254.P17336495081768971287.a, A067076, A067076.P14247190955968615804.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P5911149816948182202

`A098090(n+1)-(n+3)`
-/

namespace A008507.P5911149816948182202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - (n + 3 : ℤ)

end

end A008507.P5911149816948182202

namespace A008507

/-- `A098090(n+1)-(n+3)` -/
def P5911149816948182202.Spec : Prop :=
  ∀ n, P5911149816948182202.a n = A008507 (n + 1)

end A008507

/-! ## A008507.P1550223397587161580

`A089253(n+1)-(n+4)`
-/

namespace A008507.P1550223397587161580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) - (n + 4 : ℤ)

end

end A008507.P1550223397587161580

namespace A008507

/-- `A089253(n+1)-(n+4)` -/
def P1550223397587161580.Spec : Prop :=
  ∀ n, P1550223397587161580.a n = A008507 (n + 1)

theorem P1550223397587161580.correct : P1550223397587161580.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P1550223397587161580.a, A008507.P5510179153814837351.a, A067076, A067076.P14247190955968615804.a, A089253, A089253.P9623062397135395528.a, A006254, A006254.P17336495081768971287.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P3631612929300745502

`A089192(n+1)-(n+5)`
-/

namespace A008507.P3631612929300745502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - (n + 5 : ℤ)

end

end A008507.P3631612929300745502

namespace A008507

/-- `A089192(n+1)-(n+5)` -/
def P3631612929300745502.Spec : Prop :=
  ∀ n, P3631612929300745502.a n = A008507 (n + 1)

theorem P3631612929300745502.correct : P3631612929300745502.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P3631612929300745502.a, A008507.P5510179153814837351.a, A067076, A067076.P14247190955968615804.a, A089192, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P15381369504146714479

`A154115(n+1)/2-n`
-/

namespace A008507.P15381369504146714479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A008507.P15381369504146714479

namespace A008507

/-- `A154115(n+1)/2-n` -/
def P15381369504146714479.Spec : Prop :=
  ∀ n, P15381369504146714479.a n = (A008507 (n + 1) : ℚ)

end A008507

/-! ## A008507.P12857648698858949080

`A175540(n+1)-Δ[n²]`
-/

namespace A008507.P12857648698858949080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A008507.P12857648698858949080

namespace A008507

/-- `A175540(n+1)-Δ[n²]` -/
def P12857648698858949080.Spec : Prop :=
  ∀ n, P12857648698858949080.a n = A008507 (n + 1)

theorem P12857648698858949080.correct : P12857648698858949080.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P12857648698858949080.f1, A008507.P12857648698858949080.a, A008507.P5510179153814837351.a, A067076, A067076.P14247190955968615804.a, A175540, A175540.P17413733986559148913.a, A006254, A006254.P17336495081768971287.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P11056212140718325065

`(∑[A046933(n+1)]-n)/2`
-/

namespace A008507.P11056212140718325065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A008507.P11056212140718325065

namespace A008507

/-- `(∑[A046933(n+1)]-n)/2` -/
def P11056212140718325065.Spec : Prop :=
  ∀ n, P11056212140718325065.a n = (A008507 (n + 1) : ℚ)

end A008507

/-! ## A008507.P2629987916498273082

`A163057(n+1)-2*(n+1)`
-/

namespace A008507.P2629987916498273082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) - (2 * (n + 1) : ℤ)

end

end A008507.P2629987916498273082

namespace A008507

/-- `A163057(n+1)-2*(n+1)` -/
def P2629987916498273082.Spec : Prop :=
  ∀ n, P2629987916498273082.a n = A008507 (n + 1)

end A008507

/-! ## A008507.P17980020020057211604

`A097069(n+1)-A020715(n)`
-/

namespace A008507.P17980020020057211604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - A020715 n

end

end A008507.P17980020020057211604

namespace A008507

/-- `A097069(n+1)-A020715(n)` -/
def P17980020020057211604.Spec : Prop :=
  ∀ n, P17980020020057211604.a n = A008507 (n + 1)

theorem P17980020020057211604.correct : P17980020020057211604.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P17980020020057211604.a, A008507.P5510179153814837351.a, A020715, A020715.P16829433482326866133.a, A067076, A067076.P14247190955968615804.a, A097069, A097069.P18192174897570610825.a, A006254, A006254.P17336495081768971287.a, A089192, A089192.P5097066678155882464.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P11790073536141211124

`A097338(n+1)-A020719(n)`
-/

namespace A008507.P11790073536141211124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - A020719 n

end

end A008507.P11790073536141211124

namespace A008507

/-- `A097338(n+1)-A020719(n)` -/
def P11790073536141211124.Spec : Prop :=
  ∀ n, P11790073536141211124.a n = A008507 (n + 1)

theorem P11790073536141211124.correct : P11790073536141211124.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P11790073536141211124.a, A008507.P5510179153814837351.a, A020719, A020719.P8384566430789263348.a, A067076, A067076.P14247190955968615804.a, A097338, A097338.P887064449779485792.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P16099327700662436407

`A097363(n+1)-A020722(n)`
-/

namespace A008507.P16099327700662436407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - A020722 n

end

end A008507.P16099327700662436407

namespace A008507

/-- `A097363(n+1)-A020722(n)` -/
def P16099327700662436407.Spec : Prop :=
  ∀ n, P16099327700662436407.a n = A008507 (n + 1)

theorem P16099327700662436407.correct : P16099327700662436407.Spec := by
  intro n
  simp only [A008507, Nat.add_sub_cancel, A008507.P16099327700662436407.a, A008507.P5510179153814837351.a, A020722, A020722.P14657161902176379145.a, A067076, A067076.P14247190955968615804.a, A097363, A097363.P9324045915537457052.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008507

/-! ## A008507.P262871731185405859

`A097480(n+1)-A020723(n)`
-/

namespace A008507.P262871731185405859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - A020723 n

end

end A008507.P262871731185405859

namespace A008507

/-- `A097480(n+1)-A020723(n)` -/
def P262871731185405859.Spec : Prop :=
  ∀ n, P262871731185405859.a n = A008507 (n + 1)

end A008507

/-!
# A008508: Number of odd primes less than n-th odd composite number.

The programs for A008508, the canonical program `A008508.P16450631041842970422` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008508 has offset 1).

The definition of A008508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008508.P16305083619920475377

`A053726(n+1)-(n+1)-1`
-/

namespace A008508.P16305083619920475377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - (n + 1 : ℤ) - 1

end

end A008508.P16305083619920475377

namespace A008508

/-- `A053726(n+1)-(n+1)-1` -/
def P16305083619920475377.Spec : Prop :=
  ∀ n, P16305083619920475377.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P16450631041842970422

`A000720(A071904(n+1))-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008508

/-- `A000720(A071904(n+1))-1` -/
def P16450631041842970422.Spec : Prop :=
  ∀ n, P16450631041842970422.a n = A008508 (n + 1)

theorem P16450631041842970422.correct : P16450631041842970422.Spec := by
  intro n
  simp only [A008508, Nat.add_sub_cancel]

end A008508

/-! ## A008508.P14766974562950178913

`A153238(n+1)-n`
-/

namespace A008508.P14766974562950178913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - (n : ℤ)

end

end A008508.P14766974562950178913

namespace A008508

/-- `A153238(n+1)-n` -/
def P14766974562950178913.Spec : Prop :=
  ∀ n, P14766974562950178913.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P1283357671005708048

`lt[1, A067760(n)]-n`
-/

namespace A008508.P1283357671005708048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A008508.P1283357671005708048

namespace A008508

/-- `lt[1, A067760(n)]-n` -/
def P1283357671005708048.Spec : Prop :=
  ∀ n, P1283357671005708048.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P346064980194084857

`ceil(A160522(n+1)/2)`
-/

namespace A008508.P346064980194084857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160522 (n + 1) : ℚ) / 2⌉

end

end A008508.P346064980194084857

namespace A008508

/-- `ceil(A160522(n+1)/2)` -/
def P346064980194084857.Spec : Prop :=
  ∀ n, P346064980194084857.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P12924995405797645095

`∑[A144411(n+1)+1]`
-/

namespace A008508.P12924995405797645095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008508.P12924995405797645095

namespace A008508

/-- `∑[A144411(n+1)+1]` -/
def P12924995405797645095.Spec : Prop :=
  ∀ n, P12924995405797645095.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P12084795769683879539

`∑[A196274(n+1)-1]`
-/

namespace A008508.P12084795769683879539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008508.P12084795769683879539

namespace A008508

/-- `∑[A196274(n+1)-1]` -/
def P12084795769683879539.Spec : Prop :=
  ∀ n, P12084795769683879539.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P3566299414447542378

`comp[A067076(n+1)]-n`
-/

namespace A008508.P3566299414447542378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A008508.P3566299414447542378

namespace A008508

/-- `comp[A067076(n+1)]-n` -/
def P3566299414447542378.Spec : Prop :=
  ∀ n, P3566299414447542378.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P8371767043939219429

`A153052(n+1)+1-n`
-/

namespace A008508.P8371767043939219429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + (1 - (n : ℤ))

end

end A008508.P8371767043939219429

namespace A008508

/-- `A153052(n+1)+1-n` -/
def P8371767043939219429.Spec : Prop :=
  ∀ n, P8371767043939219429.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P2798299984556843462

`A053726(n+1)-(n+2)`
-/

namespace A008508.P2798299984556843462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - (n + 2 : ℤ)

end

end A008508.P2798299984556843462

namespace A008508

/-- `A053726(n+1)-(n+2)` -/
def P2798299984556843462.Spec : Prop :=
  ∀ n, P2798299984556843462.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P16137905399737415561

`A153053(n+1)+2-n`
-/

namespace A008508.P16137905399737415561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + (2 - (n : ℤ))

end

end A008508.P16137905399737415561

namespace A008508

/-- `A153053(n+1)+2-n` -/
def P16137905399737415561.Spec : Prop :=
  ∀ n, P16137905399737415561.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P7552499130726631330

`A104275(n+2)-(n+2)`
-/

namespace A008508.P7552499130726631330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - (n + 2 : ℤ)

end

end A008508.P7552499130726631330

namespace A008508

/-- `A104275(n+2)-(n+2)` -/
def P7552499130726631330.Spec : Prop :=
  ∀ n, P7552499130726631330.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P6107304774898494130

`A155723(n+1)+3-n`
-/

namespace A008508.P6107304774898494130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + (3 - (n : ℤ))

end

end A008508.P6107304774898494130

namespace A008508

/-- `A155723(n+1)+3-n` -/
def P6107304774898494130.Spec : Prop :=
  ∀ n, P6107304774898494130.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P16506789911672296153

`A153040(n+1)-(n+4)`
-/

namespace A008508.P16506789911672296153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - (n + 4 : ℤ)

end

end A008508.P16506789911672296153

namespace A008508

/-- `A153040(n+1)-(n+4)` -/
def P16506789911672296153.Spec : Prop :=
  ∀ n, P16506789911672296153.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P13179590252283748856

`A336407(n+1)-2*n`
-/

namespace A008508.P13179590252283748856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) - (2 * n : ℤ)

end

end A008508.P13179590252283748856

namespace A008508

/-- `A336407(n+1)-2*n` -/
def P13179590252283748856.Spec : Prop :=
  ∀ n, P13179590252283748856.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P4784751107076216849

`A146538(n+1)/2-n`
-/

namespace A008508.P4784751107076216849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146538 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A008508.P4784751107076216849

namespace A008508

/-- `A146538(n+1)/2-n` -/
def P4784751107076216849.Spec : Prop :=
  ∀ n, P4784751107076216849.a n = (A008508 (n + 1) : ℚ)

end A008508

/-! ## A008508.P3218014495132776181

`A153039(n+1)-(n+5)`
-/

namespace A008508.P3218014495132776181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - (n + 5 : ℤ)

end

end A008508.P3218014495132776181

namespace A008508

/-- `A153039(n+1)-(n+5)` -/
def P3218014495132776181.Spec : Prop :=
  ∀ n, P3218014495132776181.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P2561033271817658789

`eq[2, A218831(n+1)]-n`
-/

namespace A008508.P2561033271817658789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A008508.P2561033271817658789

namespace A008508

/-- `eq[2, A218831(n+1)]-n` -/
def P2561033271817658789.Spec : Prop :=
  ∀ n, P2561033271817658789.a n = A008508 (n + 1)

end A008508

/-! ## A008508.P9954049549966968507

`A309355(n+1)/2-(n+1)`
-/

namespace A008508.P9954049549966968507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309355 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A008508.P9954049549966968507

namespace A008508

/-- `A309355(n+1)/2-(n+1)` -/
def P9954049549966968507.Spec : Prop :=
  ∀ n, P9954049549966968507.a n = (A008508 (n + 1) : ℚ)

end A008508

/-! ## A008508.P14555303140639800357

`lt[1, A001222(2*n+3)]-n`
-/

namespace A008508.P14555303140639800357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A008508.P14555303140639800357

namespace A008508

/-- `lt[1, A001222(2*n+3)]-n` -/
def P14555303140639800357.Spec : Prop :=
  ∀ n, P14555303140639800357.a n = A008508 (n + 1)

end A008508

/-!
# A008509: Positive integers k such that k-th triangular number is palindromic.

The programs for A008509, there is no canonical definition to state claims against.
-/

/-! ## A008509.P12942702789942330970

`eq[A004158(n), A179865(n+1)]`
-/

namespace A008509.P12942702789942330970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008509.P12942702789942330970

/-! ## A008509.P4610161579265807663

`eq[A000217(n+1), A004158(n+1)]+1`
-/

namespace A008509.P4610161579265807663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A008509.P4610161579265807663

/-! ## A008509.P12954267178867102231

`eq[A000217(n), A004158(A028310(n))]`
-/

namespace A008509.P12954267178867102231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008509.P12954267178867102231

/-! ## A008509.P13017462832136491966

`eq[A004158(n), A075346(n+1)]`
-/

namespace A008509.P13017462832136491966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008509.P13017462832136491966

/-! ## A008509.P10094824519169515706

`A080098(A003098(n+2))`
-/

namespace A008509.P10094824519169515706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A003098 (n + 2)).toNat

end

end A008509.P10094824519169515706

/-!
# A008510: Numbers k such that both k and the k-th triangular number are palindromes.

The programs for A008510, there is no canonical definition to state claims against.
-/

/-! ## A008510.P10960390930130521502

`floor(sqrt(2*A229236(n+1)))`
-/

namespace A008510.P10960390930130521502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A229236 (n + 1))

end

end A008510.P10960390930130521502

/-! ## A008510.P14537267641068964515

`A279084(lt[n, A118880(n)])`
-/

namespace A008510.P14537267641068964515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A008510.P14537267641068964515

/-! ## A008510.P7104000947908549365

`∩[A002113(n+1), A008509(n+1)]`
-/

namespace A008510.P7104000947908549365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008510.P7104000947908549365

/-! ## A008510.P13418141725685545415

`∩[A008509(n+1), A110784(n+1)]`
-/

namespace A008510.P13418141725685545415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008510.P13418141725685545415

/-! ## A008510.P2533722561483631922

`∩[A008509(n+1), A118599(n+1)]`
-/

namespace A008510.P2533722561483631922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008510.P2533722561483631922

/-!
# A008511: Number of points on surface of 4-dimensional cube.

The programs for A008511, the canonical program `A008511.P7740195990433937030` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008511 has offset 0).

The definition of A008511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008511.P7740195990433937030

`8*n*(1+n²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008511

/-- `8*n*(1+n²)` -/
def P7740195990433937030.Spec : Prop :=
  ∀ n, (P7740195990433937030.a n : ℤ) = A008511 n

theorem P7740195990433937030.correct : P7740195990433937030.Spec := by
  intro n
  simp only [A008511]

end A008511

/-! ## A008511.P8601735208502163272

`Δ[lcm(2, ((1-n)²+n)²)]`
-/

namespace A008511.P8601735208502163272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A008511.P8601735208502163272

namespace A008511

/-- `Δ[lcm(2, ((1-n)²+n)²)]` -/
def P8601735208502163272.Spec : Prop :=
  ∀ n, P8601735208502163272.a n = A008511 n

end A008511

/-! ## A008511.P14307505059183529642

`record[(1-n)^4]-(1-n)^4`
-/

namespace A008511.P14307505059183529642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (1 - (n : ℤ)) ^ 4

end

end A008511.P14307505059183529642

namespace A008511

/-- `record[(1-n)^4]-(1-n)^4` -/
def P14307505059183529642.Spec : Prop :=
  ∀ n, P14307505059183529642.a n = A008511 n

end A008511

/-! ## A008511.P4746077290428847476

`abs(2*n*xor(-4, (2*n)²))`
-/

namespace A008511.P4746077290428847476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * Int.xor (-4) ((2 * n) ^ 2 : ℤ)|

end

end A008511.P4746077290428847476

namespace A008511

/-- `abs(2*n*xor(-4, (2*n)²))` -/
def P4746077290428847476.Spec : Prop :=
  ∀ n, P4746077290428847476.a n = A008511 n

end A008511

/-! ## A008511.P13467035100078412610

`-(2*n*xor(-4, (2*n)²))`
-/

namespace A008511.P13467035100078412610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.xor (-4) ((2 * n) ^ 2 : ℤ))

end

end A008511.P13467035100078412610

namespace A008511

/-- `-(2*n*xor(-4, (2*n)²))` -/
def P13467035100078412610.Spec : Prop :=
  ∀ n, P13467035100078412610.a n = A008511 n

end A008511

/-! ## A008511.P14713222136822506058

`record[(n-1)²]²-(n-1)²²`
-/

namespace A008511.P14713222136822506058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - (((n : ℤ) - 1) ^ 2) ^ 2

end

end A008511.P14713222136822506058

namespace A008511

/-- `record[(n-1)²]²-(n-1)²²` -/
def P14713222136822506058.Spec : Prop :=
  ∀ n, P14713222136822506058.a n = A008511 n

end A008511

/-! ## A008511.P11331893001039905576

`C(n+1, n)²²-(n-1)²²`
-/

namespace A008511.P11331893001039905576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n ^ 2) ^ 2 : ℤ) - (((n : ℤ) - 1) ^ 2) ^ 2

end

end A008511.P11331893001039905576

namespace A008511

/-- `C(n+1, n)²²-(n-1)²²` -/
def P11331893001039905576.Spec : Prop :=
  ∀ n, P11331893001039905576.a n = A008511 n

theorem P11331893001039905576.correct : P11331893001039905576.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P11331893001039905576.a, A008511.P7740195990433937030.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A008511

/-! ## A008511.P13183271919140377591

`lcm(n+1, (n+1)²²)-(1-n)²²`
-/

namespace A008511.P13183271919140377591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (((n + 1) ^ 2) ^ 2) : ℤ) - ((1 - (n : ℤ)) ^ 2) ^ 2

end

end A008511.P13183271919140377591

namespace A008511

/-- `lcm(n+1, (n+1)²²)-(1-n)²²` -/
def P13183271919140377591.Spec : Prop :=
  ∀ n, P13183271919140377591.a n = A008511 n

end A008511

/-! ## A008511.P8845509434570275729

`Δ[2*A002061(n)²]`
-/

namespace A008511.P8845509434570275729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002061 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008511.P8845509434570275729

namespace A008511

/-- `Δ[2*A002061(n)²]` -/
def P8845509434570275729.Spec : Prop :=
  ∀ n, P8845509434570275729.a n = A008511 n

theorem P8845509434570275729.correct : P8845509434570275729.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P8845509434570275729.f1, A008511.P8845509434570275729.a, A008511.P7740195990433937030.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P16749334392486769354

`A173200(n+1)+5*n`
-/

namespace A008511.P16749334392486769354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173200 (n + 1) + (5 * n : ℤ)

end

end A008511.P16749334392486769354

namespace A008511

/-- `A173200(n+1)+5*n` -/
def P16749334392486769354.Spec : Prop :=
  ∀ n, P16749334392486769354.a n = A008511 n

theorem P16749334392486769354.correct : P16749334392486769354.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P16749334392486769354.a, A008511.P7740195990433937030.a, A173200, A173200.P5174319977372624570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P3647373537846226743

`32*(A006002(n)-n²)/2`
-/

namespace A008511.P3647373537846226743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 * (A006002 n - (n ^ 2 : ℤ)) : ℚ) / 2

end

end A008511.P3647373537846226743

namespace A008511

/-- `32*(A006002(n)-n²)/2` -/
def P3647373537846226743.Spec : Prop :=
  ∀ n, P3647373537846226743.a n = (A008511 n : ℚ)

end A008511

/-! ## A008511.P2357698646130333597

`A016743(n)+A008590(n)`
-/

namespace A008511.P2357698646130333597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n + A008590 n

end

end A008511.P2357698646130333597

namespace A008511

/-- `A016743(n)+A008590(n)` -/
def P2357698646130333597.Spec : Prop :=
  ∀ n, P2357698646130333597.a n = A008511 n

theorem P2357698646130333597.correct : P2357698646130333597.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P2357698646130333597.a, A008511.P7740195990433937030.a, A008590, A008590.P15621076316638553644.a, A016743, A016743.P7621108068918767533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P15056837837796966622

`A118465(n)+A008589(n)`
-/

namespace A008511.P15056837837796966622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118465 n + A008589 n

end

end A008511.P15056837837796966622

namespace A008511

/-- `A118465(n)+A008589(n)` -/
def P15056837837796966622.Spec : Prop :=
  ∀ n, P15056837837796966622.a n = A008511 n

theorem P15056837837796966622.correct : P15056837837796966622.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P15056837837796966622.a, A008511.P7740195990433937030.a, A008589, A008589.P8963889148823201939.a, A118465, A118465.P10404194839924419518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P3482108123206645894

`A144138(n)+A008594(n)`
-/

namespace A008511.P3482108123206645894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 n + A008594 n

end

end A008511.P3482108123206645894

namespace A008511

/-- `A144138(n)+A008594(n)` -/
def P3482108123206645894.Spec : Prop :=
  ∀ n, P3482108123206645894.a n = A008511 n

theorem P3482108123206645894.correct : P3482108123206645894.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P3482108123206645894.a, A008511.P7740195990433937030.a, A008594, A008594.P9877215682521385096.a, A144138, A144138.P7220908367457548337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P11361753076266449643

`A163322(n)+A008602(n)`
-/

namespace A008511.P11361753076266449643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163322 n + A008602 n

end

end A008511.P11361753076266449643

namespace A008511

/-- `A163322(n)+A008602(n)` -/
def P11361753076266449643.Spec : Prop :=
  ∀ n, P11361753076266449643.a n = A008511 n

theorem P11361753076266449643.correct : P11361753076266449643.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P11361753076266449643.a, A008511.P7740195990433937030.a, A008602, A008602.P10803716924039054280.a, A163322, A163322.P8200039314108068235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P12744546257053339421

`A369922(n)+A131877(n)`
-/

namespace A008511.P12744546257053339421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369922 n + A131877 n

end

end A008511.P12744546257053339421

namespace A008511

/-- `A369922(n)+A131877(n)` -/
def P12744546257053339421.Spec : Prop :=
  ∀ n, P12744546257053339421.a n = A008511 n

theorem P12744546257053339421.correct : P12744546257053339421.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P12744546257053339421.a, A008511.P7740195990433937030.a, A131877, A131877.P1991480590599804805.a, A369922, A369922.P11658645378781673811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P13881325325312052395

`A144965(n)-A144138(n)`
-/

namespace A008511.P13881325325312052395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144965 n - A144138 n

end

end A008511.P13881325325312052395

namespace A008511

/-- `A144965(n)-A144138(n)` -/
def P13881325325312052395.Spec : Prop :=
  ∀ n, P13881325325312052395.a n = A008511 n

theorem P13881325325312052395.correct : P13881325325312052395.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P13881325325312052395.a, A008511.P7740195990433937030.a, A144138, A144138.P7220908367457548337.a, A144965, A144965.P16257968433978150562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P3661620928383308455

`A173202(n+1)+A008593(n)`
-/

namespace A008511.P3661620928383308455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173202 (n + 1) + A008593 n

end

end A008511.P3661620928383308455

namespace A008511

/-- `A173202(n+1)+A008593(n)` -/
def P3661620928383308455.Spec : Prop :=
  ∀ n, P3661620928383308455.a n = A008511 n

theorem P3661620928383308455.correct : P3661620928383308455.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P3661620928383308455.a, A008511.P7740195990433937030.a, A008593, A008593.P2680892499938115192.a, A173202, A173202.P2385789338714039204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P4080703910606120459

`A255877(n+1)+A016921(n)`
-/

namespace A008511.P4080703910606120459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255877 (n + 1) + A016921 n

end

end A008511.P4080703910606120459

namespace A008511

/-- `A255877(n+1)+A016921(n)` -/
def P4080703910606120459.Spec : Prop :=
  ∀ n, P4080703910606120459.a n = A008511 n

theorem P4080703910606120459.correct : P4080703910606120459.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P4080703910606120459.a, A008511.P7740195990433937030.a, A016921, A016921.P18318603358862595186.a, A255877, A255877.P4619512482949105729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-! ## A008511.P11375320642014297900

`A034262(n)+A119536(n)+A105374(n)`
-/

namespace A008511.P11375320642014297900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + (A119536 n + A105374 n)

end

end A008511.P11375320642014297900

namespace A008511

/-- `A034262(n)+A119536(n)+A105374(n)` -/
def P11375320642014297900.Spec : Prop :=
  ∀ n, P11375320642014297900.a n = A008511 n

theorem P11375320642014297900.correct : P11375320642014297900.Spec := by
  intro n
  simp only [A008511, Nat.add_sub_cancel, A008511.P11375320642014297900.a, A008511.P7740195990433937030.a, A034262, A034262.P1986901683698587680.a, A105374, A105374.P15227727533401661173.a, A119536, A119536.P17684524526440716851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008511

/-!
# A008512: Number of points on the surface of 5-dimensional cube.

The programs for A008512, the canonical program `A008512.P12021104285972253039` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008512 has offset 0).

The definition of A008512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008512.P12021104285972253039

`(n+1)^5-(n-1)^5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008512

/-- `(n+1)^5-(n-1)^5` -/
def P12021104285972253039.Spec : Prop :=
  ∀ n, P12021104285972253039.a n = A008512 n

theorem P12021104285972253039.correct : P12021104285972253039.Spec := by
  intro n
  simp only [A008512]

end A008512

/-! ## A008512.P15718523119757026589

`xor(8, 10*(n²+1)²)`
-/

namespace A008512.P15718523119757026589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 (10 * (n ^ 2 + 1) ^ 2)

end

end A008512.P15718523119757026589

namespace A008512

/-- `xor(8, 10*(n²+1)²)` -/
def P15718523119757026589.Spec : Prop :=
  ∀ n, (P15718523119757026589.a n : ℤ) = A008512 n

end A008512

/-! ## A008512.P5622549916528870885

`2*A134593(n²)`
-/

namespace A008512.P5622549916528870885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134593 (n ^ 2)

end

end A008512.P5622549916528870885

namespace A008512

/-- `2*A134593(n²)` -/
def P5622549916528870885.Spec : Prop :=
  ∀ n, P5622549916528870885.a n = A008512 n

theorem P5622549916528870885.correct : P5622549916528870885.Spec := by
  intro n
  simp only [A008512, Nat.add_sub_cancel, A008512.P5622549916528870885.a, A008512.P12021104285972253039.a, A134593, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008512

/-! ## A008512.P10286263314710437639

`2*A102728(A000096(n+4)+6)`
-/

namespace A008512.P10286263314710437639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102728 (A000096 (n + 4) + 6).toNat

end

end A008512.P10286263314710437639

namespace A008512

/-- `2*A102728(A000096(n+4)+6)` -/
def P10286263314710437639.Spec : Prop :=
  ∀ n, P10286263314710437639.a n = A008512 n

end A008512

/-!
# A008513: Number of points on surface of 6-dimensional cube.

The programs for A008513, the canonical program `A008513.P12325113855250984078` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008513 has offset 0).

The definition of A008513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008513.P12325113855250984078

`(n+1)^6-(n-1)^6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008513

/-- `(n+1)^6-(n-1)^6` -/
def P12325113855250984078.Spec : Prop :=
  ∀ n, P12325113855250984078.a n = A008513 n

theorem P12325113855250984078.correct : P12325113855250984078.Spec := by
  intro n
  simp only [A008513]

end A008513

/-! ## A008513.P9620244266936699199

`n*A005897(n)*A255844(n)`
-/

namespace A008513.P9620244266936699199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005897 n * A255844 n)

end

end A008513.P9620244266936699199

namespace A008513

/-- `n*A005897(n)*A255844(n)` -/
def P9620244266936699199.Spec : Prop :=
  ∀ n, P9620244266936699199.a n = A008513 n

end A008513

/-! ## A008513.P14417837473273807697

`record[Δ[A008516(A060143(n))]]`
-/

namespace A008513.P14417837473273807697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 (A060143 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008513.P14417837473273807697

namespace A008513

/-- `record[Δ[A008516(A060143(n))]]` -/
def P14417837473273807697.Spec : Prop :=
  ∀ n, P14417837473273807697.a n = A008513 n

end A008513

/-! ## A008513.P16892115557563174863

`record[Δ[A008516(floor(n/2))]]`
-/

namespace A008513.P16892115557563174863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008513.P16892115557563174863

namespace A008513

/-- `record[Δ[A008516(floor(n/2))]]` -/
def P16892115557563174863.Spec : Prop :=
  ∀ n, P16892115557563174863.a n = A008513 n

end A008513

/-! ## A008513.P7157004477227189889

`record[Δ[(A174474(n)+1)^3]]`
-/

namespace A008513.P7157004477227189889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174474 n + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008513.P7157004477227189889

namespace A008513

/-- `record[Δ[(A174474(n)+1)^3]]` -/
def P7157004477227189889.Spec : Prop :=
  ∀ n, P7157004477227189889.a n = A008513 n

end A008513

/-! ## A008513.P10357643973818275146

`record[Δ[(Δ[A029578(n+1)]^3)²]]`
-/

namespace A008513.P10357643973818275146
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) - f3 n) ^ 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008513.P10357643973818275146

namespace A008513

/-- `record[Δ[(Δ[A029578(n+1)]^3)²]]` -/
def P10357643973818275146.Spec : Prop :=
  ∀ n, P10357643973818275146.a n = A008513 n

end A008513

/-! ## A008513.P12735762482762575588

`Δ[A008516(floor(n-tanh(n)))]`
-/

namespace A008513.P12735762482762575588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008516 ⌊(n : ℝ) - Real.tanh (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008513.P12735762482762575588

namespace A008513

/-- `Δ[A008516(floor(n-tanh(n)))]` -/
def P12735762482762575588.Spec : Prop :=
  ∀ n, P12735762482762575588.a n = A008513 n

end A008513

/-!
# A008514: 4-dimensional centered cube numbers.

The programs for A008514, the canonical program `A008514.P8515702522567387291` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008514 has offset 0).

The definition of A008514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008514.P8515702522567387291

`(n+1)^4+n^4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008514

/-- `(n+1)^4+n^4` -/
def P8515702522567387291.Spec : Prop :=
  ∀ n, (P8515702522567387291.a n : ℤ) = A008514 n

theorem P8515702522567387291.correct : P8515702522567387291.Spec := by
  intro n
  simp only [A008514]

end A008514

/-! ## A008514.P3765156033112055728

`A069129(A000124(n))`
-/

namespace A008514.P3765156033112055728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A000124 n).toNat

end

end A008514.P3765156033112055728

namespace A008514

/-- `A069129(A000124(n))` -/
def P3765156033112055728.Spec : Prop :=
  ∀ n, P3765156033112055728.a n = A008514 n

end A008514

/-! ## A008514.P12217872989914221951

`A047838(2*(n²+n+1))`
-/

namespace A008514.P12217872989914221951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (2 * (n ^ 2 + n + 1))

end

end A008514.P12217872989914221951

namespace A008514

/-- `A047838(2*(n²+n+1))` -/
def P12217872989914221951.Spec : Prop :=
  ∀ n, P12217872989914221951.a n = A008514 n

end A008514

/-! ## A008514.P13490332631362863815

`abs(lcm(2, (n²+1+n)²)-1)`
-/

namespace A008514.P13490332631362863815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 2 ((n ^ 2 + 1 + n) ^ 2) : ℤ) - 1|

end

end A008514.P13490332631362863815

namespace A008514

/-- `abs(lcm(2, (n²+1+n)²)-1)` -/
def P13490332631362863815.Spec : Prop :=
  ∀ n, P13490332631362863815.a n = A008514 n

end A008514

/-! ## A008514.P14281794766595149750

`abs(2*∑[A004277(n)]²-1)`
-/

namespace A008514.P14281794766595149750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1|

end

end A008514.P14281794766595149750

namespace A008514

/-- `abs(2*∑[A004277(n)]²-1)` -/
def P14281794766595149750.Spec : Prop :=
  ∀ n, P14281794766595149750.a n = A008514 n

end A008514

/-! ## A008514.P11721887261409812922

`abs(2*(n*A000027(n+1)+1)²-1)`
-/

namespace A008514.P11721887261409812922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) * A000027 (n + 1) + 1) ^ 2 - 1|

end

end A008514.P11721887261409812922

namespace A008514

/-- `abs(2*(n*A000027(n+1)+1)²-1)` -/
def P11721887261409812922.Spec : Prop :=
  ∀ n, P11721887261409812922.a n = A008514 n

end A008514

/-! ## A008514.P8527031469653099640

`gcd(A022524(n), A048397(n))`
-/

namespace A008514.P8527031469653099640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022524 n) (A048397 n)

end

end A008514.P8527031469653099640

namespace A008514

/-- `gcd(A022524(n), A048397(n))` -/
def P8527031469653099640.Spec : Prop :=
  ∀ n, (P8527031469653099640.a n : ℤ) = A008514 n

end A008514

/-! ## A008514.P6351983670743919462

`∑[A002522(n)*A022144(n)]`
-/

namespace A008514.P6351983670743919462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A022144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008514.P6351983670743919462

namespace A008514

/-- `∑[A002522(n)*A022144(n)]` -/
def P6351983670743919462.Spec : Prop :=
  ∀ n, P6351983670743919462.a n = A008514 n

end A008514

/-! ## A008514.P5740448108817033411

`A022524(n)/A005917(n+1)`
-/

namespace A008514.P5740448108817033411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022524 n : ℚ) / (A005917 (n + 1) : ℚ)

end

end A008514.P5740448108817033411

namespace A008514

/-- `A022524(n)/A005917(n+1)` -/
def P5740448108817033411.Spec : Prop :=
  ∀ n, P5740448108817033411.a n = (A008514 n : ℚ)

end A008514

/-! ## A008514.P6099340263304091708

`(A016754(n)+A007204(n))/2`
-/

namespace A008514.P6099340263304091708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n + A007204 n : ℚ) / 2

end

end A008514.P6099340263304091708

namespace A008514

/-- `(A016754(n)+A007204(n))/2` -/
def P6099340263304091708.Spec : Prop :=
  ∀ n, P6099340263304091708.a n = (A008514 n : ℚ)

theorem P6099340263304091708.correct : P6099340263304091708.Spec := by
  intro n
  simp only [A008514, Nat.add_sub_cancel, A008514.P6099340263304091708.a, A008514.P8515702522567387291.a, A007204, A007204.P4435489401006619676.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008514

/-! ## A008514.P7179052218810124803

`(A016754(n)+A001844(n)²)/2`
-/

namespace A008514.P7179052218810124803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n + A001844 n ^ 2 : ℚ) / 2

end

end A008514.P7179052218810124803

namespace A008514

/-- `(A016754(n)+A001844(n)²)/2` -/
def P7179052218810124803.Spec : Prop :=
  ∀ n, P7179052218810124803.a n = (A008514 n : ℚ)

theorem P7179052218810124803.correct : P7179052218810124803.Spec := by
  intro n
  simp only [A008514, Nat.add_sub_cancel, A008514.P7179052218810124803.a, A008514.P8515702522567387291.a, A001844, A001844.P5037395199076350534.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008514

/-! ## A008514.P10256005382398829521

`∑[A079908(2*n)+2*n]`
-/

namespace A008514.P10256005382398829521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008514.P10256005382398829521

namespace A008514

/-- `∑[A079908(2*n)+2*n]` -/
def P10256005382398829521.Spec : Prop :=
  ∀ n, P10256005382398829521.a n = A008514 n

end A008514

/-! ## A008514.P5667865051627501880

`A212742(2*n)`
-/

namespace A008514.P5667865051627501880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 (2 * n)

end

end A008514.P5667865051627501880

namespace A008514

/-- `A212742(2*n)` -/
def P5667865051627501880.Spec : Prop :=
  ∀ n, P5667865051627501880.a n = A008514 n

end A008514

/-! ## A008514.P13120665974267508352

`A212740(Δ[n²])`
-/

namespace A008514.P13120665974267508352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008514.P13120665974267508352

namespace A008514

/-- `A212740(Δ[n²])` -/
def P13120665974267508352.Spec : Prop :=
  ∀ n, P13120665974267508352.a n = A008514 n

end A008514

/-! ## A008514.P5534008167480743412

`Δ[∑[A212740(2*n+1)]-A212740(2*n+1)]`
-/

namespace A008514.P5534008167480743412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A212740 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008514.P5534008167480743412

namespace A008514

/-- `Δ[∑[A212740(2*n+1)]-A212740(2*n+1)]` -/
def P5534008167480743412.Spec : Prop :=
  ∀ n, P5534008167480743412.a n = A008514 n

end A008514

/-! ## A008514.P12357890153640005308

`A275543(∑[2*n]+1)`
-/

namespace A008514.P12357890153640005308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A008514.P12357890153640005308

namespace A008514

/-- `A275543(∑[2*n]+1)` -/
def P12357890153640005308.Spec : Prop :=
  ∀ n, P12357890153640005308.a n = A008514 n

end A008514

/-! ## A008514.P15834068987974701448

`A097331(A097331(2*n))*A212740(2*n+1)`
-/

namespace A008514.P15834068987974701448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A097331 (2 * n)).toNat * A212740 (2 * n + 1)

end

end A008514.P15834068987974701448

namespace A008514

/-- `A097331(A097331(2*n))*A212740(2*n+1)` -/
def P15834068987974701448.Spec : Prop :=
  ∀ n, P15834068987974701448.a n = A008514 n

end A008514

/-! ## A008514.P16766162471031943722

`A069129(∑[n]+1)`
-/

namespace A008514.P16766162471031943722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A008514.P16766162471031943722

namespace A008514

/-- `A069129(∑[n]+1)` -/
def P16766162471031943722.Spec : Prop :=
  ∀ n, P16766162471031943722.a n = A008514 n

end A008514

/-! ## A008514.P918359806648497816

`∩[A069129(n+1), A212740(n)]`
-/

namespace A008514.P918359806648497816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008514.P918359806648497816

namespace A008514

/-- `∩[A069129(n+1), A212740(n)]` -/
def P918359806648497816.Spec : Prop :=
  ∀ n, (P918359806648497816.a n : ℤ) = A008514 n

end A008514

/-! ## A008514.P1728386112490566755

`∩[A069129(n+1), A212742(n)]`
-/

namespace A008514.P1728386112490566755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008514.P1728386112490566755

namespace A008514

/-- `∩[A069129(n+1), A212742(n)]` -/
def P1728386112490566755.Spec : Prop :=
  ∀ n, (P1728386112490566755.a n : ℤ) = A008514 n

end A008514

/-!
# A008515: 5-dimensional centered cube numbers.

The programs for A008515, the canonical program `A008515.P11691504425021295822` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008515 has offset 0).

The definition of A008515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008515.P11691504425021295822

`n^5+(n+1)^5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008515

/-- `n^5+(n+1)^5` -/
def P11691504425021295822.Spec : Prop :=
  ∀ n, (P11691504425021295822.a n : ℤ) = A008515 n

theorem P11691504425021295822.correct : P11691504425021295822.Spec := by
  intro n
  simp only [A008515]

end A008515

/-! ## A008515.P12725994649147112460

`Δ[n²]*A072025(n)`
-/

namespace A008515.P12725994649147112460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A072025 n

end

end A008515.P12725994649147112460

namespace A008515

/-- `Δ[n²]*A072025(n)` -/
def P12725994649147112460.Spec : Prop :=
  ∀ n, P12725994649147112460.a n = A008515 n

theorem P12725994649147112460.correct : P12725994649147112460.Spec := by
  intro n
  simp only [A008515, Nat.add_sub_cancel, A008515.P12725994649147112460.f1, A008515.P12725994649147112460.a, A008515.P11691504425021295822.a, A072025, A072025.P5013716484922619372.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008515

/-! ## A008515.P12003896596116384250

`∑[A008532(n)]*Δ[n²]`
-/

namespace A008515.P12003896596116384250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A008515.P12003896596116384250

namespace A008515

/-- `∑[A008532(n)]*Δ[n²]` -/
def P12003896596116384250.Spec : Prop :=
  ∀ n, P12003896596116384250.a n = A008515 n

end A008515

/-! ## A008515.P17876282052099002347

`A022526(n)/A022521(n)`
-/

namespace A008515.P17876282052099002347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022526 n : ℚ) / (A022521 n : ℚ)

end

end A008515.P17876282052099002347

namespace A008515

/-- `A022526(n)/A022521(n)` -/
def P17876282052099002347.Spec : Prop :=
  ∀ n, P17876282052099002347.a n = (A008515 n : ℚ)

end A008515

/-! ## A008515.P8211107471725936575

`Δ[A000584(n)²]/Δ[A000584(n)]`
-/

namespace A008515.P8211107471725936575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A008515.P8211107471725936575

namespace A008515

/-- `Δ[A000584(n)²]/Δ[A000584(n)]` -/
def P8211107471725936575.Spec : Prop :=
  ∀ n, P8211107471725936575.a n = (A008515 n : ℚ)

end A008515

/-! ## A008515.P6848050508185607925

`(A037270(n+1)+A037270(n))*A060747(n+1)`
-/

namespace A008515.P6848050508185607925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037270 (n + 1) + A037270 n) * A060747 (n + 1)

end

end A008515.P6848050508185607925

namespace A008515

/-- `(A037270(n+1)+A037270(n))*A060747(n+1)` -/
def P6848050508185607925.Spec : Prop :=
  ∀ n, P6848050508185607925.a n = A008515 n

end A008515

/-! ## A008515.P5419953588872291739

`Δ[A263689(n+1)+A263689(n)]`
-/

namespace A008515.P5419953588872291739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 (n + 1) + A263689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008515.P5419953588872291739

namespace A008515

/-- `Δ[A263689(n+1)+A263689(n)]` -/
def P5419953588872291739.Spec : Prop :=
  ∀ n, P5419953588872291739.a n = A008515 n

end A008515

/-! ## A008515.P11920528558988981335

`A072025(n)*A296063(2*n+1)`
-/

namespace A008515.P11920528558988981335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n * A296063 (2 * n + 1)

end

end A008515.P11920528558988981335

namespace A008515

/-- `A072025(n)*A296063(2*n+1)` -/
def P11920528558988981335.Spec : Prop :=
  ∀ n, P11920528558988981335.a n = A008515 n

end A008515

/-! ## A008515.P6829938815233628371

`A022526(n)/(10*A000217(n²+n)+1)`
-/

namespace A008515.P6829938815233628371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022526 n : ℚ) / (10 * A000217 (n ^ 2 + n) + 1 : ℚ)

end

end A008515.P6829938815233628371

namespace A008515

/-- `A022526(n)/(10*A000217(n²+n)+1)` -/
def P6829938815233628371.Spec : Prop :=
  ∀ n, P6829938815233628371.a n = (A008515 n : ℚ)

end A008515

/-! ## A008515.P10886560254933077999

`(2*n+1)*A082108(∑[n])`
-/

namespace A008515.P10886560254933077999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A082108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008515.P10886560254933077999

namespace A008515

/-- `(2*n+1)*A082108(∑[n])` -/
def P10886560254933077999.Spec : Prop :=
  ∀ n, P10886560254933077999.a n = A008515 n

end A008515

/-! ## A008515.P1060006238296534038

`(2*n+1)*A028387(∑[2*n])`
-/

namespace A008515.P1060006238296534038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A028387 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008515.P1060006238296534038

namespace A008515

/-- `(2*n+1)*A028387(∑[2*n])` -/
def P1060006238296534038.Spec : Prop :=
  ∀ n, P1060006238296534038.a n = A008515 n

end A008515

/-! ## A008515.P8187837193772100493

`(2*n+1)*A081352(∑[2*n])`
-/

namespace A008515.P8187837193772100493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A081352 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008515.P8187837193772100493

namespace A008515

/-- `(2*n+1)*A081352(∑[2*n])` -/
def P8187837193772100493.Spec : Prop :=
  ∀ n, P8187837193772100493.a n = A008515 n

end A008515

/-! ## A008515.P13313004750765503411

`abs(2-(∑[2*A134593(n²)+1]-n))`
-/

namespace A008515.P13313004750765503411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134593 (n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))|

end

end A008515.P13313004750765503411

namespace A008515

/-- `abs(2-(∑[2*A134593(n²)+1]-n))` -/
def P13313004750765503411.Spec : Prop :=
  ∀ n, P13313004750765503411.a n = A008515 n

end A008515

/-! ## A008515.P8444142923300191022

`(2*n+1)*A165900(A014206(n))`
-/

namespace A008515.P8444142923300191022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A165900 (A014206 n).toNat

end

end A008515.P8444142923300191022

namespace A008515

/-- `(2*n+1)*A165900(A014206(n))` -/
def P8444142923300191022.Spec : Prop :=
  ∀ n, P8444142923300191022.a n = A008515 n

end A008515

/-!
# A008516: 6-dimensional centered cube numbers.

The programs for A008516, the canonical program `A008516.P6330670612051404828` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008516 has offset 0).

The definition of A008516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008516.P6330670612051404828

`(n+1)^6+n^6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008516

/-- `(n+1)^6+n^6` -/
def P6330670612051404828.Spec : Prop :=
  ∀ n, (P6330670612051404828.a n : ℤ) = A008516 n

theorem P6330670612051404828.correct : P6330670612051404828.Spec := by
  intro n
  simp only [A008516]

end A008516

/-! ## A008516.P15859091320170330748

`or(1, ∑[A008513(n)])`
-/

namespace A008516.P15859091320170330748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008516.P15859091320170330748

namespace A008516

/-- `or(1, ∑[A008513(n)])` -/
def P15859091320170330748.Spec : Prop :=
  ∀ n, P15859091320170330748.a n = A008516 n

end A008516

/-! ## A008516.P16841212154913554602

`A022528(n)/A022522(n)`
-/

namespace A008516.P16841212154913554602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022528 n : ℚ) / (A022522 n : ℚ)

end

end A008516.P16841212154913554602

namespace A008516

/-- `A022528(n)/A022522(n)` -/
def P16841212154913554602.Spec : Prop :=
  ∀ n, P16841212154913554602.a n = (A008516 n : ℚ)

end A008516

/-! ## A008516.P6826353136882964848

`∑[A008513(n)+A000007(n)]`
-/

namespace A008516.P6826353136882964848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008513 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008516.P6826353136882964848

namespace A008516

/-- `∑[A008513(n)+A000007(n)]` -/
def P6826353136882964848.Spec : Prop :=
  ∀ n, P6826353136882964848.a n = A008516 n

end A008516

/-! ## A008516.P1642963761153825343

`A001844(n)*A047673(n+1)`
-/

namespace A008516.P1642963761153825343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * A047673 (n + 1)

end

end A008516.P1642963761153825343

namespace A008516

/-- `A001844(n)*A047673(n+1)` -/
def P1642963761153825343.Spec : Prop :=
  ∀ n, P1642963761153825343.a n = A008516 n

end A008516

/-! ## A008516.P14301652272263632774

`Δ[A259109(n)-A001014(n)]`
-/

namespace A008516.P14301652272263632774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n - A001014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008516.P14301652272263632774

namespace A008516

/-- `Δ[A259109(n)-A001014(n)]` -/
def P14301652272263632774.Spec : Prop :=
  ∀ n, P14301652272263632774.a n = A008516 n

end A008516

/-! ## A008516.P3561002818784508367

`Δ[A259109(n)-A002604(n)]`
-/

namespace A008516.P3561002818784508367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259109 n - A002604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008516.P3561002818784508367

namespace A008516

/-- `Δ[A259109(n)-A002604(n)]` -/
def P3561002818784508367.Spec : Prop :=
  ∀ n, P3561002818784508367.a n = A008516 n

end A008516

/-! ## A008516.P13487159337235997661

`(A015237(n+1)+A000583(n))*A001844(n)`
-/

namespace A008516.P13487159337235997661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015237 (n + 1) + A000583 n) * A001844 n

end

end A008516.P13487159337235997661

namespace A008516

/-- `(A015237(n+1)+A000583(n))*A001844(n)` -/
def P13487159337235997661.Spec : Prop :=
  ∀ n, P13487159337235997661.a n = A008516 n

theorem P13487159337235997661.correct : P13487159337235997661.Spec := by
  intro n
  simp only [A008516, Nat.add_sub_cancel, A008516.P13487159337235997661.a, A008516.P6330670612051404828.a, A000583, A000583.P14547500281748394449.a, A001844, A001844.P5037395199076350534.a, A015237, A015237.P2392393478135424708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008516

/-! ## A008516.P5401970727044954812

`gcd(A001014(n+1)+A001014(n), A000038(n))`
-/

namespace A008516.P5401970727044954812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 (n + 1) + A001014 n) (A000038 n)

end

end A008516.P5401970727044954812

namespace A008516

/-- `gcd(A001014(n+1)+A001014(n), A000038(n))` -/
def P5401970727044954812.Spec : Prop :=
  ∀ n, (P5401970727044954812.a n : ℤ) = A008516 n

end A008516

/-!
# A008517: Second-order Eulerian triangle T(n,k), 1 <= k <= n.

The programs for A008517, there is no canonical definition to state claims against.
-/

/-! ## A008517.P15691436580148967288

`A340556(comp[∑[n]])`
-/

namespace A008517.P15691436580148967288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008517.P15691436580148967288

/-! ## A008517.P5318809860291821050

`A201637(comp[∑[n-1]])`
-/

namespace A008517.P5318809860291821050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A008517.P5318809860291821050

/-! ## A008517.P4748576791674314585

`A112007(A061579(n))`
-/

namespace A008517.P4748576791674314585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (A061579 n).toNat

end

end A008517.P4748576791674314585

/-! ## A008517.P16906217165349394467

`A288874(A099375(n)+1+n)`
-/

namespace A008517.P16906217165349394467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A099375 n + 1 + (n : ℤ)).toNat

end

end A008517.P16906217165349394467

/-! ## A008517.P8609839420588368935

`A156529(n)/A112007(n)`
-/

namespace A008517.P8609839420588368935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156529 n : ℚ) / (A112007 n : ℚ)

end

end A008517.P8609839420588368935

/-! ## A008517.P11752447582355316296

`A156529(n)/A288874(comp[∑[n]])`
-/

namespace A008517.P11752447582355316296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156529 n : ℚ) / (A288874 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A008517.P11752447582355316296

/-!
# A008518: Triangle of Eulerian numbers with rows multiplied by 1 + x.

The programs for A008518, there is no canonical definition to state claims against.
-/

/-! ## A008518.P16595222437308924502

`A123125(n+1)+A123125(n)`
-/

namespace A008518.P16595222437308924502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (n + 1) + A123125 n

end

end A008518.P16595222437308924502

/-! ## A008518.P17582369509118131169

`abs(Δ[A033999(n)*A123125(n)])`
-/

namespace A008518.P17582369509118131169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A008518.P17582369509118131169

/-! ## A008518.P13747239719643263979

`A173018(n)+A123125(A028310(n))`
-/

namespace A008518.P13747239719643263979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n + A123125 (A028310 n).toNat

end

end A008518.P13747239719643263979

/-! ## A008518.P18133884143841924992

`A123125(n)-(A000007(n)-A173018(n))`
-/

namespace A008518.P18133884143841924992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n - (A000007 n - A173018 n)

end

end A008518.P18133884143841924992

/-! ## A008518.P10446331397924145314

`A173018(A061579(n))+A173018(n)-A000007(n)`
-/

namespace A008518.P10446331397924145314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A061579 n).toNat + (A173018 n - A000007 n)

end

end A008518.P10446331397924145314

/-! ## A008518.P11573196126121792554

`A173018(A061579(n))+A057427(n)*A173018(n)`
-/

namespace A008518.P11573196126121792554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A061579 n).toNat + A057427 n * A173018 n

end

end A008518.P11573196126121792554

/-! ## A008518.P13053474180954011655

`A173018(A061579(n+1))+A173018(A061579(n))`
-/

namespace A008518.P13053474180954011655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A061579 (n + 1)).toNat + A173018 (A061579 n).toNat

end

end A008518.P13053474180954011655

/-! ## A008518.P2807436662197103413

`A173018(A038722(n+2))+A173018(A038722(n+3))`
-/

namespace A008518.P2807436662197103413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A038722 (n + 2)).toNat + A173018 (A038722 (n + 3)).toNat

end

end A008518.P2807436662197103413

/-! ## A008518.P3072401950493936002

`A173018(n)+A173018(A194038(n)+1)`
-/

namespace A008518.P3072401950493936002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n + A173018 (A194038 n + 1).toNat

end

end A008518.P3072401950493936002

/-! ## A008518.P13918808025380531228

`2*A157177(n)-A157178(n)`
-/

namespace A008518.P13918808025380531228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157177 n - A157178 n

end

end A008518.P13918808025380531228

/-!
# A008523: Numbers that do not contain the letter 't'.

The programs for A008523, there is no canonical definition to state claims against.
-/

/-! ## A008523.P12024812231904379562

`eq[0, A124060(n)]`
-/

namespace A008523.P12024812231904379562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008523.P12024812231904379562

/-! ## A008523.P5871526687861193117

`lt[A124060(n), cos(A000493(n))]`
-/

namespace A008523.P5871526687861193117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000493 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A008523.P5871526687861193117

/-! ## A008523.P15661348684215733383

`lt[A124060(n), cos(A126565(n))]`
-/

namespace A008523.P15661348684215733383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A126565 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A008523.P15661348684215733383

/-! ## A008523.P14110961688657534047

`lt[A124060(n), acot(A124051(n))]`
-/

namespace A008523.P14110961688657534047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A124051 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A008523.P14110961688657534047

/-! ## A008523.P8194210424096462292

`lt[A124060(n), acot(A124080(n))]`
-/

namespace A008523.P8194210424096462292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A124080 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A008523.P8194210424096462292

/-! ## A008523.P3672179024532409729

`lt[A124060(n), A000007(n)+1]`
-/

namespace A008523.P3672179024532409729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008523.P3672179024532409729

/-! ## A008523.P16620439794629909403

`lt[A124060(n), A085392(A085392(n+1))]`
-/

namespace A008523.P16620439794629909403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A085392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008523.P16620439794629909403

/-!
# A008524: Coordination sequence for 4-dimensional lonsdaleite (or wurtzite).

The programs for A008524, there is no canonical definition to state claims against.
-/

/-! ## A008524.P9300154499942370648

`A132124(n)+A131320(A055795(n+1)+1)`
-/

namespace A008524.P9300154499942370648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + A131320 (A055795 (n + 1) + 1).toNat

end

end A008524.P9300154499942370648

/-! ## A008524.P10402101169759476641

`∑[A347406(∑[A310343(n)])]`
-/

namespace A008524.P10402101169759476641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008524.P10402101169759476641

/-!
# A008525: Coordination sequence for 5-dimensional lonsdaleite.

The programs for A008525, there is no canonical definition to state claims against.
-/

/-! ## A008525.P10023954542445077590

`A087503(n)*A326031(A011900(n))`
-/

namespace A008525.P10023954542445077590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 n * A326031 (A011900 n).toNat

end

end A008525.P10023954542445077590

/-!
# A008526: Coordination sequence for 6-dimensional lonsdaleite.

The programs for A008526, there is no canonical definition to state claims against.
-/

/-! ## A008526.P10948314701459966116

`A337978(A000581(n+8)^A319909(n))`
-/

namespace A008526.P10948314701459966116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337978 (SequenceMachineLib.roundAway ((A000581 (n + 8) : ℚ) ^ (A319909 n : ℤ))).toNat

end

end A008526.P10948314701459966116

/-!
# A008527: Coordination sequence for body-centered tetragonal lattice.

The programs for A008527, the canonical program `A008527.P465163722049944829` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008527 has offset 0).

The definition of A008527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008527.P465163722049944829

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=34, a(3)=74`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008527

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P465163722049944829.Spec : Prop :=
  ∀ n, P465163722049944829.a n = A008527 n

theorem P465163722049944829.correct : P465163722049944829.Spec := by
  intro n
  simp only [A008527]

end A008527

/-! ## A008527.P8031492162448729314

`ceil(2/acot(2*n)²)`
-/

namespace A008527.P8031492162448729314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉

end

end A008527.P8031492162448729314

namespace A008527

/-- `ceil(2/acot(2*n)²)` -/
def P8031492162448729314.Spec : Prop :=
  ∀ n, P8031492162448729314.a n = A008527 n

end A008527

/-! ## A008527.P15506932843662050660

`ceil(cot(log(cosh(acot(2*n)))))`
-/

namespace A008527.P15506932843662050660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.log (Real.cosh (SequenceMachineLib.acot (2 * n : ℝ))))⌉

end

end A008527.P15506932843662050660

namespace A008527

/-- `ceil(cot(log(cosh(acot(2*n)))))` -/
def P15506932843662050660.Spec : Prop :=
  ∀ n, P15506932843662050660.a n = A008527 n

end A008527

/-! ## A008527.P9200180778515334539

`round(cot(log(cosh(acot(2*n)))))`
-/

namespace A008527.P9200180778515334539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.log (Real.cosh (SequenceMachineLib.acot (2 * n : ℝ)))))

end

end A008527.P9200180778515334539

namespace A008527

/-- `round(cot(log(cosh(acot(2*n)))))` -/
def P9200180778515334539.Spec : Prop :=
  ∀ n, P9200180778515334539.a n = A008527 n

end A008527

/-! ## A008527.P9216355511387186591

`((2*n)²+1)*ceil(atan(n+1))`
-/

namespace A008527.P9216355511387186591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A008527.P9216355511387186591

namespace A008527

/-- `((2*n)²+1)*ceil(atan(n+1))` -/
def P9216355511387186591.Spec : Prop :=
  ∀ n, P9216355511387186591.a n = A008527 n

end A008527

/-! ## A008527.P999826875214553143

`comp[2*(n+1)]²+Δ[n²]²`
-/

namespace A008527.P999826875214553143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

end

end A008527.P999826875214553143

namespace A008527

/-- `comp[2*(n+1)]²+Δ[n²]²` -/
def P999826875214553143.Spec : Prop :=
  ∀ n, P999826875214553143.a n = A008527 n

end A008527

/-! ## A008527.P1495399805609190289

`ceil((A010006(n)+1)/2)`
-/

namespace A008527.P1495399805609190289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010006 n + 1 : ℚ) / 2⌉

end

end A008527.P1495399805609190289

namespace A008527

/-- `ceil((A010006(n)+1)/2)` -/
def P1495399805609190289.Spec : Prop :=
  ∀ n, P1495399805609190289.a n = A008527 n

end A008527

/-! ## A008527.P7822806359807573894

`((2*n)²+1)*A000032(C(2, n+2))`
-/

namespace A008527.P7822806359807573894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 1 : ℤ) * A000032 (Nat.choose 2 (n + 2))

end

end A008527.P7822806359807573894

namespace A008527

/-- `((2*n)²+1)*A000032(C(2, n+2))` -/
def P7822806359807573894.Spec : Prop :=
  ∀ n, P7822806359807573894.a n = A008527 n

end A008527

/-! ## A008527.P2634068908373637405

`((2*n)²+1)*gcd(2, A000010(2*n+1))`
-/

namespace A008527.P2634068908373637405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 1) * Int.gcd 2 (A000010 (2 * n + 1))

end

end A008527.P2634068908373637405

namespace A008527

/-- `((2*n)²+1)*gcd(2, A000010(2*n+1))` -/
def P2634068908373637405.Spec : Prop :=
  ∀ n, (P2634068908373637405.a n : ℤ) = A008527 n

end A008527

/-! ## A008527.P2901493093556906839

`((2*n)²+1)*A000005(A006530(n+1))`
-/

namespace A008527.P2901493093556906839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 1 : ℤ) * A000005 (A006530 (n + 1)).toNat

end

end A008527.P2901493093556906839

namespace A008527

/-- `((2*n)²+1)*A000005(A006530(n+1))` -/
def P2901493093556906839.Spec : Prop :=
  ∀ n, P2901493093556906839.a n = A008527 n

end A008527

/-! ## A008527.P13999387129867868582

`((2*n)²+1)*A020639(A000010(n+2))`
-/

namespace A008527.P13999387129867868582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + 1 : ℤ) * A020639 (A000010 (n + 2)).toNat

end

end A008527.P13999387129867868582

namespace A008527

/-- `((2*n)²+1)*A020639(A000010(n+2))` -/
def P13999387129867868582.Spec : Prop :=
  ∀ n, P13999387129867868582.a n = A008527 n

end A008527

/-! ## A008527.P241997278040948682

`A005893(2*n)`
-/

namespace A008527.P241997278040948682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n)

end

end A008527.P241997278040948682

namespace A008527

/-- `A005893(2*n)` -/
def P241997278040948682.Spec : Prop :=
  ∀ n, P241997278040948682.a n = A008527 n

end A008527

/-! ## A008527.P3380229754684604113

`xor(1, A160843(2*n))`
-/

namespace A008527.P3380229754684604113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A160843 (2 * n))

end

end A008527.P3380229754684604113

namespace A008527

/-- `xor(1, A160843(2*n))` -/
def P3380229754684604113.Spec : Prop :=
  ∀ n, P3380229754684604113.a n = A008527 n

end A008527

/-! ## A008527.P17326422063861284357

`record[A065190(n+1)²+n²]`
-/

namespace A008527.P17326422063861284357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) ^ 2 + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008527.P17326422063861284357

namespace A008527

/-- `record[A065190(n+1)²+n²]` -/
def P17326422063861284357.Spec : Prop :=
  ∀ n, P17326422063861284357.a n = A008527 n

end A008527

/-! ## A008527.P3182407800127803615

`A049486(Δ[n²])`
-/

namespace A008527.P3182407800127803615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049486 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008527.P3182407800127803615

namespace A008527

/-- `A049486(Δ[n²])` -/
def P3182407800127803615.Spec : Prop :=
  ∀ n, P3182407800127803615.a n = A008527 n

end A008527

/-! ## A008527.P9888496716477847429

`A115293(2*n+1)/8`
-/

namespace A008527.P9888496716477847429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115293 (2 * n + 1) : ℚ) / 8

end

end A008527.P9888496716477847429

namespace A008527

/-- `A115293(2*n+1)/8` -/
def P9888496716477847429.Spec : Prop :=
  ∀ n, P9888496716477847429.a n = (A008527 n : ℚ)

end A008527

/-! ## A008527.P84919409563967455

`record[A152020(n+2)+n²]`
-/

namespace A008527.P84919409563967455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (n + 2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008527.P84919409563967455

namespace A008527

/-- `record[A152020(n+2)+n²]` -/
def P84919409563967455.Spec : Prop :=
  ∀ n, P84919409563967455.a n = A008527 n

end A008527

/-!
# A008528: Coordination sequence for 4-dimensional RR-centered di-isohexagonal orthogonal lattice.

The programs for A008528, the canonical program `A008528.P4328616448726392190` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008528 has offset 0).

The definition of A008528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008528.P10612637348253584496

`(A008530(n)+A007900(n))/2`
-/

namespace A008528.P10612637348253584496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008530 n + A007900 n : ℚ) / 2

end

end A008528.P10612637348253584496

namespace A008528

/-- `(A008530(n)+A007900(n))/2` -/
def P10612637348253584496.Spec : Prop :=
  ∀ n, P10612637348253584496.a n = (A008528 n : ℚ)

end A008528

/-! ## A008528.P4328616448726392190

`A008530(n)+A244725(n)+n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008528

/-- `A008530(n)+A244725(n)+n` -/
def P4328616448726392190.Spec : Prop :=
  ∀ n, P4328616448726392190.a n = A008528 n

theorem P4328616448726392190.correct : P4328616448726392190.Spec := by
  intro n
  simp only [A008528]

end A008528

/-! ## A008528.P15593834770772123836

`A008706(n)+n*A010003(n)`
-/

namespace A008528.P15593834770772123836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (n : ℤ) * A010003 n

end

end A008528.P15593834770772123836

namespace A008528

/-- `A008706(n)+n*A010003(n)` -/
def P15593834770772123836.Spec : Prop :=
  ∀ n, P15593834770772123836.a n = A008528 n

end A008528

/-! ## A008528.P12014279348680977709

`A079908(2*n)+A079908(2*n)-A008531(n)`
-/

namespace A008528.P12014279348680977709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (2 * n) + (A079908 (2 * n) - A008531 n)

end

end A008528.P12014279348680977709

namespace A008528

/-- `A079908(2*n)+A079908(2*n)-A008531(n)` -/
def P12014279348680977709.Spec : Prop :=
  ∀ n, P12014279348680977709.a n = A008528 n

end A008528

/-! ## A008528.P15752031619435532787

`A008531(n)+n*A053799(3*n)`
-/

namespace A008528.P15752031619435532787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n + (n : ℤ) * A053799 (3 * n)

end

end A008528.P15752031619435532787

namespace A008528

/-- `A008531(n)+n*A053799(3*n)` -/
def P15752031619435532787.Spec : Prop :=
  ∀ n, P15752031619435532787.a n = A008528 n

end A008528

/-! ## A008528.P6681359222312673910

`A079908(3*n)-A061804(2*n)/2`
-/

namespace A008528.P6681359222312673910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079908 (3 * n) : ℚ) - (A061804 (2 * n) : ℚ) / 2

end

end A008528.P6681359222312673910

namespace A008528

/-- `A079908(3*n)-A061804(2*n)/2` -/
def P6681359222312673910.Spec : Prop :=
  ∀ n, P6681359222312673910.a n = (A008528 n : ℚ)

end A008528

/-! ## A008528.P17972488802161968014

`A079908(3*n)-n*A010000(4*n)`
-/

namespace A008528.P17972488802161968014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (3 * n) - (n : ℤ) * A010000 (4 * n)

end

end A008528.P17972488802161968014

namespace A008528

/-- `A079908(3*n)-n*A010000(4*n)` -/
def P17972488802161968014.Spec : Prop :=
  ∀ n, P17972488802161968014.a n = A008528 n

end A008528

/-! ## A008528.P87740940437298531

`A008574(n)+n*A017425(n²)`
-/

namespace A008528.P87740940437298531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ) * A017425 (n ^ 2)

end

end A008528.P87740940437298531

namespace A008528

/-- `A008574(n)+n*A017425(n²)` -/
def P87740940437298531.Spec : Prop :=
  ∀ n, P87740940437298531.a n = A008528 n

end A008528

/-!
# A008529: Coordination sequence for 4-dimensional face-centered cubic orthogonal lattice.

The programs for A008529, the canonical program `A008529.P13531353891507600582` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008529 has offset 0).

The definition of A008529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008529.P13531353891507600582

`A008412(n)+n*((2*n)²+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008529

/-- `A008412(n)+n*((2*n)²+2)` -/
def P13531353891507600582.Spec : Prop :=
  ∀ n, P13531353891507600582.a n = A008529 n

theorem P13531353891507600582.correct : P13531353891507600582.Spec := by
  intro n
  simp only [A008529]

end A008529

/-! ## A008529.P16157481202682394520

`A035597(n)+A001386(n)`
-/

namespace A008529.P16157481202682394520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n + A001386 n

end

end A008529.P16157481202682394520

namespace A008529

/-- `A035597(n)+A001386(n)` -/
def P16157481202682394520.Spec : Prop :=
  ∀ n, P16157481202682394520.a n = A008529 n

end A008529

/-! ## A008529.P16818355660055486895

`A061804(n)+A008412(n)`
-/

namespace A008529.P16818355660055486895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A008412 n

end

end A008529.P16818355660055486895

namespace A008529

/-- `A061804(n)+A008412(n)` -/
def P16818355660055486895.Spec : Prop :=
  ∀ n, P16818355660055486895.a n = A008529 n

theorem P16818355660055486895.correct : P16818355660055486895.Spec := by
  intro n
  simp only [A008529, Nat.add_sub_cancel, A008529.P16818355660055486895.a, A008529.P13531353891507600582.a, A008412, A008412.P13878766666542366952.a, A061804, A061804.P16305426185761710400.a, A005899, A005899.P4162979677913820766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008529

/-! ## A008529.P2362660939627345787

`A054410(n)+A033431(n)`
-/

namespace A008529.P2362660939627345787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054410 n + A033431 n

end

end A008529.P2362660939627345787

namespace A008529

/-- `A054410(n)+A033431(n)` -/
def P2362660939627345787.Spec : Prop :=
  ∀ n, P2362660939627345787.a n = A008529 n

end A008529

/-! ## A008529.P7312198265114951318

`A008532(n)+2*A035597(n)`
-/

namespace A008529.P7312198265114951318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n + 2 * A035597 n

end

end A008529.P7312198265114951318

namespace A008529

/-- `A008532(n)+2*A035597(n)` -/
def P7312198265114951318.Spec : Prop :=
  ∀ n, P7312198265114951318.a n = A008529 n

end A008529

/-! ## A008529.P694528988692431459

`2*A001386(n)-A008532(n)`
-/

namespace A008529.P694528988692431459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001386 n - A008532 n

end

end A008529.P694528988692431459

namespace A008529

/-- `2*A001386(n)-A008532(n)` -/
def P694528988692431459.Spec : Prop :=
  ∀ n, P694528988692431459.a n = A008529 n

end A008529

/-! ## A008529.P14417933835262388119

`2*A005902(n)-A005901(n)`
-/

namespace A008529.P14417933835262388119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005902 n - A005901 n

end

end A008529.P14417933835262388119

namespace A008529

/-- `2*A005902(n)-A005901(n)` -/
def P14417933835262388119.Spec : Prop :=
  ∀ n, P14417933835262388119.a n = A008529 n

end A008529

/-! ## A008529.P5895734315409282494

`A001386(n)+A004126(n)+A004006(n)`
-/

namespace A008529.P5895734315409282494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n + (A004126 n + A004006 n)

end

end A008529.P5895734315409282494

namespace A008529

/-- `A001386(n)+A004126(n)+A004006(n)` -/
def P5895734315409282494.Spec : Prop :=
  ∀ n, P5895734315409282494.a n = A008529 n

end A008529

/-! ## A008529.P3469779616704714898

`A008487(2*n)-n`
-/

namespace A008529.P3469779616704714898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008487 (2 * n) - (n : ℤ)

end

end A008529.P3469779616704714898

namespace A008529

/-- `A008487(2*n)-n` -/
def P3469779616704714898.Spec : Prop :=
  ∀ n, P3469779616704714898.a n = A008529 n

end A008529

/-! ## A008529.P7955350639817509931

`A004068(2*n)+A008574(2*n)-n`
-/

namespace A008529.P7955350639817509931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (2 * n) + (A008574 (2 * n) - (n : ℤ))

end

end A008529.P7955350639817509931

namespace A008529

/-- `A004068(2*n)+A008574(2*n)-n` -/
def P7955350639817509931.Spec : Prop :=
  ∀ n, P7955350639817509931.a n = A008529 n

end A008529

/-! ## A008529.P18350608831371635754

`A006003(2*n)+A140226(2*n)-n`
-/

namespace A008529.P18350608831371635754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n) + (A140226 (2 * n) - (n : ℤ))

end

end A008529.P18350608831371635754

namespace A008529

/-- `A006003(2*n)+A140226(2*n)-n` -/
def P18350608831371635754.Spec : Prop :=
  ∀ n, P18350608831371635754.a n = A008529 n

end A008529

/-! ## A008529.P13699705620323503890

`A134227(2*n+1)+A203552(2*n)-n`
-/

namespace A008529.P13699705620323503890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134227 (2 * n + 1) + (A203552 (2 * n) - (n : ℤ))

end

end A008529.P13699705620323503890

namespace A008529

/-- `A134227(2*n+1)+A203552(2*n)-n` -/
def P13699705620323503890.Spec : Prop :=
  ∀ n, P13699705620323503890.a n = A008529 n

end A008529

/-! ## A008529.P1450525623434292365

`A270109(2*n)-(A116721(2*n+1)+n)`
-/

namespace A008529.P1450525623434292365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 (2 * n) - (A116721 (2 * n + 1) + (n : ℤ))

end

end A008529.P1450525623434292365

namespace A008529

/-- `A270109(2*n)-(A116721(2*n+1)+n)` -/
def P1450525623434292365.Spec : Prop :=
  ∀ n, P1450525623434292365.a n = A008529 n

end A008529

/-! ## A008529.P3247707655429988890

`A212578(2*n+1)+A212578(A004273(n))`
-/

namespace A008529.P3247707655429988890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 (2 * n + 1) + A212578 (A004273 n).toNat

end

end A008529.P3247707655429988890

namespace A008529

/-- `A212578(2*n+1)+A212578(A004273(n))` -/
def P3247707655429988890.Spec : Prop :=
  ∀ n, P3247707655429988890.a n = A008529 n

end A008529

/-! ## A008529.P13341999413773045734

`A115046(2*n+1)+A115046(A008586(n))`
-/

namespace A008529.P13341999413773045734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115046 (2 * n + 1) + A115046 (A008586 n).toNat

end

end A008529.P13341999413773045734

namespace A008529

/-- `A115046(2*n+1)+A115046(A008586(n))` -/
def P13341999413773045734.Spec : Prop :=
  ∀ n, P13341999413773045734.a n = A008529 n

end A008529

/-!
# A008530: Coordination sequence for 4-dimensional primitive di-isohexagonal orthogonal lattice.

The programs for A008530, the canonical program `A008530.P11364345825062993947` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008530 has offset 0).

The definition of A008530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008530.P15114142205764084952

`floor(6/acot(n)^3)`
-/

namespace A008530.P15114142205764084952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

end

end A008530.P15114142205764084952

namespace A008530

/-- `floor(6/acot(n)^3)` -/
def P15114142205764084952.Spec : Prop :=
  ∀ n, P15114142205764084952.a n = A008530 n

end A008530

/-! ## A008530.P13729497741582647893

`(n²+1)*A008458(n)`
-/

namespace A008530.P13729497741582647893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A008458 n

end

end A008530.P13729497741582647893

namespace A008530

/-- `(n²+1)*A008458(n)` -/
def P13729497741582647893.Spec : Prop :=
  ∀ n, P13729497741582647893.a n = A008530 n

end A008530

/-! ## A008530.P15595996799366752359

`lcm(n²+1, A298036(n))`
-/

namespace A008530.P15595996799366752359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 + 1 : ℤ) (A298036 n)

end

end A008530.P15595996799366752359

namespace A008530

/-- `lcm(n²+1, A298036(n))` -/
def P15595996799366752359.Spec : Prop :=
  ∀ n, (P15595996799366752359.a n : ℤ) = A008530 n

end A008530

/-! ## A008530.P11364345825062993947

`(A000032(and(2, a(n-1)))+2*n²)*3*n` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008530

/-- `(A000032(and(2, a(n-1)))+2*n²)*3*n` -/
def P11364345825062993947.Spec : Prop :=
  ∀ n, P11364345825062993947.a n = A008530 n

theorem P11364345825062993947.correct : P11364345825062993947.Spec := by
  intro n
  simp only [A008530]

end A008530

/-! ## A008530.P18046913904627551679

`A033431(n)+A008532(n)`
-/

namespace A008530.P18046913904627551679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + A008532 n

end

end A008530.P18046913904627551679

namespace A008530

/-- `A033431(n)+A008532(n)` -/
def P18046913904627551679.Spec : Prop :=
  ∀ n, P18046913904627551679.a n = A008530 n

end A008530

/-! ## A008530.P1310629235917838404

`A034262(n)+A008531(n)`
-/

namespace A008530.P1310629235917838404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + A008531 n

end

end A008530.P1310629235917838404

namespace A008530

/-- `A034262(n)+A008531(n)` -/
def P1310629235917838404.Spec : Prop :=
  ∀ n, P1310629235917838404.a n = A008530 n

end A008530

/-! ## A008530.P6249341617528395141

`A244726(n)+A008458(n)`
-/

namespace A008530.P6249341617528395141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244726 n + A008458 n

end

end A008530.P6249341617528395141

namespace A008530

/-- `A244726(n)+A008458(n)` -/
def P6249341617528395141.Spec : Prop :=
  ∀ n, P6249341617528395141.a n = A008530 n

end A008530

/-! ## A008530.P11768353619181633710

`A005893(n)*A008486(n)`
-/

namespace A008530.P11768353619181633710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A008486 n

end

end A008530.P11768353619181633710

namespace A008530

/-- `A005893(n)*A008486(n)` -/
def P11768353619181633710.Spec : Prop :=
  ∀ n, P11768353619181633710.a n = A008530 n

end A008530

/-! ## A008530.P1291983027142941334

`A228564(n)*A298036(n)`
-/

namespace A008530.P1291983027142941334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n * A298036 n

end

end A008530.P1291983027142941334

namespace A008530

/-- `A228564(n)*A298036(n)` -/
def P1291983027142941334.Spec : Prop :=
  ∀ n, P1291983027142941334.a n = A008530 n

end A008530

/-! ## A008530.P7052755955116269054

`lcm(A005893(n), A008458(n))`
-/

namespace A008530.P7052755955116269054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005893 n) (A008458 n)

end

end A008530.P7052755955116269054

namespace A008530

/-- `lcm(A005893(n), A008458(n))` -/
def P7052755955116269054.Spec : Prop :=
  ∀ n, (P7052755955116269054.a n : ℤ) = A008530 n

end A008530

/-! ## A008530.P7077486981336272148

`A008532(n)+2*A000578(n)`
-/

namespace A008530.P7077486981336272148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n + 2 * A000578 n

end

end A008530.P7077486981336272148

namespace A008530

/-- `A008532(n)+2*A000578(n)` -/
def P7077486981336272148.Spec : Prop :=
  ∀ n, P7077486981336272148.a n = A008530 n

end A008530

/-! ## A008530.P7129706491844992241

`A008531(n)+2*A006003(n)`
-/

namespace A008530.P7129706491844992241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n + 2 * A006003 n

end

end A008530.P7129706491844992241

namespace A008530

/-- `A008531(n)+2*A006003(n)` -/
def P7129706491844992241.Spec : Prop :=
  ∀ n, P7129706491844992241.a n = A008530 n

end A008530

/-! ## A008530.P13988663295781812335

`(A004277(n)+n)*A005893(n)`
-/

namespace A008530.P13988663295781812335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + (n : ℤ)) * A005893 n

end

end A008530.P13988663295781812335

namespace A008530

/-- `(A004277(n)+n)*A005893(n)` -/
def P13988663295781812335.Spec : Prop :=
  ∀ n, P13988663295781812335.a n = A008530 n

end A008530

/-! ## A008530.P13739910092269184610

`(A008706(n)+n)*A002522(n)`
-/

namespace A008530.P13739910092269184610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n + (n : ℤ)) * A002522 n

end

end A008530.P13739910092269184610

namespace A008530

/-- `(A008706(n)+n)*A002522(n)` -/
def P13739910092269184610.Spec : Prop :=
  ∀ n, P13739910092269184610.a n = A008530 n

end A008530

/-! ## A008530.P5701914246956876315

`A008574(n)+n*A005897(n)`
-/

namespace A008530.P5701914246956876315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ) * A005897 n

end

end A008530.P5701914246956876315

namespace A008530

/-- `A008574(n)+n*A005897(n)` -/
def P5701914246956876315.Spec : Prop :=
  ∀ n, P5701914246956876315.a n = A008530 n

end A008530

/-! ## A008530.P12465644436384440899

`A008458(n)+n*A033581(n)`
-/

namespace A008530.P12465644436384440899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (n : ℤ) * A033581 n

end

end A008530.P12465644436384440899

namespace A008530

/-- `A008458(n)+n*A033581(n)` -/
def P12465644436384440899.Spec : Prop :=
  ∀ n, P12465644436384440899.a n = A008530 n

end A008530

/-! ## A008530.P2213495657923374135

`(A008574(n)-n)*A005893(n)`
-/

namespace A008530.P2213495657923374135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n - (n : ℤ)) * A005893 n

end

end A008530.P2213495657923374135

namespace A008530

/-- `(A008574(n)-n)*A005893(n)` -/
def P2213495657923374135.Spec : Prop :=
  ∀ n, P2213495657923374135.a n = A008530 n

end A008530

/-! ## A008530.P2367154093034441088

`A008532(n)+n²*A004277(n)`
-/

namespace A008530.P2367154093034441088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n + (n ^ 2 : ℤ) * A004277 n

end

end A008530.P2367154093034441088

namespace A008530

/-- `A008532(n)+n²*A004277(n)` -/
def P2367154093034441088.Spec : Prop :=
  ∀ n, P2367154093034441088.a n = A008530 n

end A008530

/-! ## A008530.P14189011762392158675

`(A005918(n)-n²)*A008486(n)`
-/

namespace A008530.P14189011762392158675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005918 n - (n ^ 2 : ℤ)) * A008486 n

end

end A008530.P14189011762392158675

namespace A008530

/-- `(A005918(n)-n²)*A008486(n)` -/
def P14189011762392158675.Spec : Prop :=
  ∀ n, P14189011762392158675.a n = A008530 n

end A008530

/-! ## A008530.P17800346473291316994

`∑[A033627(n+1)+n]*A008486(n)`
-/

namespace A008530.P17800346473291316994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008486 n

end

end A008530.P17800346473291316994

namespace A008530

/-- `∑[A033627(n+1)+n]*A008486(n)` -/
def P17800346473291316994.Spec : Prop :=
  ∀ n, P17800346473291316994.a n = A008530 n

end A008530

/-!
# A008531: Coordination sequence for {A_4}* lattice.

The programs for A008531, the canonical program `A008531.P9539615427320958723` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008531 has offset 0).

The definition of A008531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008531.P7322045052944495973

`floor(5/acot(n)^3)`
-/

namespace A008531.P7322045052944495973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

end

end A008531.P7322045052944495973

namespace A008531

/-- `floor(5/acot(n)^3)` -/
def P7322045052944495973.Spec : Prop :=
  ∀ n, P7322045052944495973.a n = A008531 n

end A008531

/-! ## A008531.P17744450127706126027

`round(5/acot(n)^3)`
-/

namespace A008531.P17744450127706126027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / SequenceMachineLib.acot (n : ℝ) ^ 3)

end

end A008531.P17744450127706126027

namespace A008531

/-- `round(5/acot(n)^3)` -/
def P17744450127706126027.Spec : Prop :=
  ∀ n, P17744450127706126027.a n = A008531 n

end A008531

/-! ## A008531.P16742590879780212542

`5*(n^(3%a(n-1))+n)` with `a(0)=1`
-/

namespace A008531.P16742590879780212542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * (n ^ (3 % a (n - 1)) + n)

end

end A008531.P16742590879780212542

namespace A008531

/-- `5*(n^(3%a(n-1))+n)` -/
def P16742590879780212542.Spec : Prop :=
  ∀ n, (P16742590879780212542.a n : ℤ) = A008531 n

end A008531

/-! ## A008531.P9539615427320958723

`abs(a(n-1)+5*(n^3+n))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008531

/-- `abs(a(n-1)+5*(n^3+n))-a(n-1)` -/
def P9539615427320958723.Spec : Prop :=
  ∀ n, P9539615427320958723.a n = A008531 n

theorem P9539615427320958723.correct : P9539615427320958723.Spec := by
  intro n
  simp only [A008531]

end A008531

/-! ## A008531.P117493068206173999

`floor(a(n-1)+5*(n^3+n))-a(n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A008531.P117493068206173999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (5 * (n ^ 3 + n) : ℤ) - a (n - 1)

end

end A008531.P117493068206173999

namespace A008531

/-- `floor(a(n-1)+5*(n^3+n))-a(n-1)` -/
def P117493068206173999.Spec : Prop :=
  ∀ n, P117493068206173999.a n = A008531 n

end A008531

/-! ## A008531.P7954211528755088038

`ceil(a(n-1)+5*(n^3+n))-a(n-1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A008531.P7954211528755088038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (5 * (n ^ 3 + n) : ℤ) - a (n - 1)

end

end A008531.P7954211528755088038

namespace A008531

/-- `ceil(a(n-1)+5*(n^3+n))-a(n-1)` -/
def P7954211528755088038.Spec : Prop :=
  ∀ n, P7954211528755088038.a n = A008531 n

end A008531

/-! ## A008531.P13132878817594720758

`(n²+1)*A008706(n)`
-/

namespace A008531.P13132878817594720758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A008706 n

end

end A008531.P13132878817594720758

namespace A008531

/-- `(n²+1)*A008706(n)` -/
def P13132878817594720758.Spec : Prop :=
  ∀ n, P13132878817594720758.a n = A008531 n

end A008531

/-! ## A008531.P8021879029870536799

`A079908(n)+A061804(n)`
-/

namespace A008531.P8021879029870536799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n + A061804 n

end

end A008531.P8021879029870536799

namespace A008531

/-- `A079908(n)+A061804(n)` -/
def P8021879029870536799.Spec : Prop :=
  ∀ n, P8021879029870536799.a n = A008531 n

end A008531

/-! ## A008531.P11183667205173309189

`A244725(n)+A008706(n)`
-/

namespace A008531.P11183667205173309189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + A008706 n

end

end A008531.P11183667205173309189

namespace A008531

/-- `A244725(n)+A008706(n)` -/
def P11183667205173309189.Spec : Prop :=
  ∀ n, P11183667205173309189.a n = A008531 n

end A008531

/-! ## A008531.P687833742046799297

`A289721(n)+A006003(n)`
-/

namespace A008531.P687833742046799297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289721 n + A006003 n

end

end A008531.P687833742046799297

namespace A008531

/-- `A289721(n)+A006003(n)` -/
def P687833742046799297.Spec : Prop :=
  ∀ n, P687833742046799297.a n = A008531 n

end A008531

/-! ## A008531.P13565643858576660843

`A001386(n)-A033547(n)`
-/

namespace A008531.P13565643858576660843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - A033547 n

end

end A008531.P13565643858576660843

namespace A008531

/-- `A001386(n)-A033547(n)` -/
def P13565643858576660843.Spec : Prop :=
  ∀ n, P13565643858576660843.a n = A008531 n

end A008531

/-! ## A008531.P9520151087675371626

`A008530(n)-A034262(n)`
-/

namespace A008531.P9520151087675371626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 n - A034262 n

end

end A008531.P9520151087675371626

namespace A008531

/-- `A008530(n)-A034262(n)` -/
def P9520151087675371626.Spec : Prop :=
  ∀ n, P9520151087675371626.a n = A008531 n

end A008531

/-! ## A008531.P8049827339371995635

`A001386(n)-2*A004006(n)`
-/

namespace A008531.P8049827339371995635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - 2 * A004006 n

end

end A008531.P8049827339371995635

namespace A008531

/-- `A001386(n)-2*A004006(n)` -/
def P8049827339371995635.Spec : Prop :=
  ∀ n, P8049827339371995635.a n = A008531 n

end A008531

/-! ## A008531.P18445912493991312443

`A001386(n)-(A006527(n)+n)`
-/

namespace A008531.P18445912493991312443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - (A006527 n + (n : ℤ))

end

end A008531.P18445912493991312443

namespace A008531

/-- `A001386(n)-(A006527(n)+n)` -/
def P18445912493991312443.Spec : Prop :=
  ∀ n, P18445912493991312443.a n = A008531 n

end A008531

/-! ## A008531.P3146469200767894659

`A000578(n)+A008532(n)-n`
-/

namespace A008531.P3146469200767894659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A008532 n - (n : ℤ))

end

end A008531.P3146469200767894659

namespace A008531

/-- `A000578(n)+A008532(n)-n` -/
def P3146469200767894659.Spec : Prop :=
  ∀ n, P3146469200767894659.a n = A008531 n

end A008531

/-! ## A008531.P3194294137473102560

`(A008574(n)+n)*A002522(n)`
-/

namespace A008531.P3194294137473102560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n + (n : ℤ)) * A002522 n

end

end A008531.P3194294137473102560

namespace A008531

/-- `(A008574(n)+n)*A002522(n)` -/
def P3194294137473102560.Spec : Prop :=
  ∀ n, P3194294137473102560.a n = A008531 n

end A008531

/-! ## A008531.P1380295793977617105

`A008486(n)+n*A010001(n)`
-/

namespace A008531.P1380295793977617105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (n : ℤ) * A010001 n

end

end A008531.P1380295793977617105

namespace A008531

/-- `A008486(n)+n*A010001(n)` -/
def P1380295793977617105.Spec : Prop :=
  ∀ n, P1380295793977617105.a n = A008531 n

end A008531

/-! ## A008531.P999156567100832803

`(A008458(n)-n)*A002522(n)`
-/

namespace A008531.P999156567100832803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008458 n - (n : ℤ)) * A002522 n

end

end A008531.P999156567100832803

namespace A008531

/-- `(A008458(n)-n)*A002522(n)` -/
def P999156567100832803.Spec : Prop :=
  ∀ n, P999156567100832803.a n = A008531 n

end A008531

/-! ## A008531.P15478666806488058534

`A079908(n)+A105374(n)-A005843(n)`
-/

namespace A008531.P15478666806488058534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n + (A105374 n - A005843 n)

end

end A008531.P15478666806488058534

namespace A008531

/-- `A079908(n)+A105374(n)-A005843(n)` -/
def P15478666806488058534.Spec : Prop :=
  ∀ n, P15478666806488058534.a n = A008531 n

end A008531

/-! ## A008531.P17054539415873388791

`A008706(n)+A000290(n)*A008706(n)`
-/

namespace A008531.P17054539415873388791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A000290 n * A008706 n

end

end A008531.P17054539415873388791

namespace A008531

/-- `A008706(n)+A000290(n)*A008706(n)` -/
def P17054539415873388791.Spec : Prop :=
  ∀ n, P17054539415873388791.a n = A008531 n

end A008531

/-!
# A008532: Coordination sequence for 4-dimensional I-centered cubic orthogonal lattice.

The programs for A008532, the canonical program `A008532.P7941238656224235068` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008532 has offset 0).

The definition of A008532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008532.P7941238656224235068

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=44, a(3)=126, a(4)=280`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008532

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7941238656224235068.Spec : Prop :=
  ∀ n, P7941238656224235068.a n = A008532 n

theorem P7941238656224235068.correct : P7941238656224235068.Spec := by
  intro n
  simp only [A008532]

end A008532

/-! ## A008532.P11171796020538375405

`A008412(n)+C(Δ[n²], 3)+n`
-/

namespace A008532.P11171796020538375405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + n : ℤ)

end

end A008532.P11171796020538375405

namespace A008532

/-- `A008412(n)+C(Δ[n²], 3)+n` -/
def P11171796020538375405.Spec : Prop :=
  ∀ n, P11171796020538375405.a n = A008532 n

end A008532

/-! ## A008532.P3262636321296065056

`A004277(n)+Δ[((1-n)²+n)²]`
-/

namespace A008532.P3262636321296065056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (f1 (n + 1) - f1 n)

end

end A008532.P3262636321296065056

namespace A008532

/-- `A004277(n)+Δ[((1-n)²+n)²]` -/
def P3262636321296065056.Spec : Prop :=
  ∀ n, P3262636321296065056.a n = A008532 n

end A008532

/-! ## A008532.P15060035463773917410

`Δ[(n-(n²+1))²+n²]-A057427(n)`
-/

namespace A008532.P15060035463773917410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (n ^ 2 + 1 : ℤ)) ^ 2 + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 n

end

end A008532.P15060035463773917410

namespace A008532

/-- `Δ[(n-(n²+1))²+n²]-A057427(n)` -/
def P15060035463773917410.Spec : Prop :=
  ∀ n, P15060035463773917410.a n = A008532 n

end A008532

/-! ## A008532.P6909574822815963820

`A033430(n)+A008458(n)`
-/

namespace A008532.P6909574822815963820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n + A008458 n

end

end A008532.P6909574822815963820

namespace A008532

/-- `A033430(n)+A008458(n)` -/
def P6909574822815963820.Spec : Prop :=
  ∀ n, P6909574822815963820.a n = A008532 n

end A008532

/-! ## A008532.P18341941271877997137

`A035597(n)+A008412(n)`
-/

namespace A008532.P18341941271877997137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n + A008412 n

end

end A008532.P18341941271877997137

namespace A008532

/-- `A035597(n)+A008412(n)` -/
def P18341941271877997137.Spec : Prop :=
  ∀ n, P18341941271877997137.a n = A008532 n

end A008532

/-! ## A008532.P12241568338643242680

`A061804(n)+A008574(n)`
-/

namespace A008532.P12241568338643242680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A008574 n

end

end A008532.P12241568338643242680

namespace A008532

/-- `A061804(n)+A008574(n)` -/
def P12241568338643242680.Spec : Prop :=
  ∀ n, P12241568338643242680.a n = A008532 n

end A008532

/-! ## A008532.P15988904248393929725

`A105374(n)+A004277(n)`
-/

namespace A008532.P15988904248393929725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105374 n + A004277 n

end

end A008532.P15988904248393929725

namespace A008532

/-- `A105374(n)+A004277(n)` -/
def P15988904248393929725.Spec : Prop :=
  ∀ n, P15988904248393929725.a n = A008532 n

end A008532

/-! ## A008532.P2831951972878296597

`A119536(n)+A079908(n)`
-/

namespace A008532.P2831951972878296597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 n + A079908 n

end

end A008532.P2831951972878296597

namespace A008532

/-- `A119536(n)+A079908(n)` -/
def P2831951972878296597.Spec : Prop :=
  ∀ n, P2831951972878296597.a n = A008532 n

end A008532

/-! ## A008532.P16975388247757247494

`A001386(n)-A035597(n)`
-/

namespace A008532.P16975388247757247494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - A035597 n

end

end A008532.P16975388247757247494

namespace A008532

/-- `A001386(n)-A035597(n)` -/
def P16975388247757247494.Spec : Prop :=
  ∀ n, P16975388247757247494.a n = A008532 n

end A008532

/-! ## A008532.P14730998668277471992

`A008530(n)-A033431(n)`
-/

namespace A008532.P14730998668277471992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 n - A033431 n

end

end A008532.P14730998668277471992

namespace A008532

/-- `A008530(n)-A033431(n)` -/
def P14730998668277471992.Spec : Prop :=
  ∀ n, P14730998668277471992.a n = A008532 n

end A008532

/-! ## A008532.P14382604285392518917

`lcm(A004277(n), A288534(n))`
-/

namespace A008532.P14382604285392518917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 n) (A288534 n)

end

end A008532.P14382604285392518917

namespace A008532

/-- `lcm(A004277(n), A288534(n))` -/
def P14382604285392518917.Spec : Prop :=
  ∀ n, (P14382604285392518917.a n : ℤ) = A008532 n

end A008532

/-! ## A008532.P5187324663141532002

`A317297(n+1)+A008706(n)`
-/

namespace A008532.P5187324663141532002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) + A008706 n

end

end A008532.P5187324663141532002

namespace A008532

/-- `A317297(n+1)+A008706(n)` -/
def P5187324663141532002.Spec : Prop :=
  ∀ n, P5187324663141532002.a n = A008532 n

end A008532

/-! ## A008532.P991634032595962493

`A101098(n+1)-A144965(n)`
-/

namespace A008532.P991634032595962493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) - A144965 n

end

end A008532.P991634032595962493

namespace A008532

/-- `A101098(n+1)-A144965(n)` -/
def P991634032595962493.Spec : Prop :=
  ∀ n, P991634032595962493.a n = A008532 n

end A008532

/-! ## A008532.P18339920524967918253

`A008412(n)+2*A005900(n)`
-/

namespace A008532.P18339920524967918253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + 2 * A005900 n

end

end A008532.P18339920524967918253

namespace A008532

/-- `A008412(n)+2*A005900(n)` -/
def P18339920524967918253.Spec : Prop :=
  ∀ n, P18339920524967918253.a n = A008532 n

end A008532

/-! ## A008532.P11042441037107727980

`A022144(n)+2*A007588(n)`
-/

namespace A008532.P11042441037107727980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + 2 * A007588 n

end

end A008532.P11042441037107727980

namespace A008532

/-- `A022144(n)+2*A007588(n)` -/
def P11042441037107727980.Spec : Prop :=
  ∀ n, P11042441037107727980.a n = A008532 n

end A008532

/-! ## A008532.P6417687756594943256

`2*A001386(n)-A008529(n)`
-/

namespace A008532.P6417687756594943256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001386 n - A008529 n

end

end A008532.P6417687756594943256

namespace A008532

/-- `2*A001386(n)-A008529(n)` -/
def P6417687756594943256.Spec : Prop :=
  ∀ n, P6417687756594943256.a n = A008532 n

end A008532

/-! ## A008532.P5533236979030684692

`2*A005898(n)-A005897(n)`
-/

namespace A008532.P5533236979030684692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005898 n - A005897 n

end

end A008532.P5533236979030684692

namespace A008532

/-- `2*A005898(n)-A005897(n)` -/
def P5533236979030684692.Spec : Prop :=
  ∀ n, P5533236979030684692.a n = A008532 n

end A008532

/-! ## A008532.P4023136102116162850

`A008529(n)-2*A035597(n)`
-/

namespace A008532.P4023136102116162850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 n - 2 * A035597 n

end

end A008532.P4023136102116162850

namespace A008532

/-- `A008529(n)-2*A035597(n)` -/
def P4023136102116162850.Spec : Prop :=
  ∀ n, P4023136102116162850.a n = A008532 n

end A008532

/-!
# A008533: Coordination sequence for {A_5}* lattice.

The programs for A008533, the canonical program `A008533.P15185711001041139923` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008533 has offset 0).

The definition of A008533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008533.P15185711001041139923

`2*A222408(n)-A008531(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008533

/-- `2*A222408(n)-A008531(n)` -/
def P15185711001041139923.Spec : Prop :=
  ∀ n, P15185711001041139923.a n = A008533 n

theorem P15185711001041139923.correct : P15185711001041139923.Spec := by
  intro n
  simp only [A008533]

end A008533

/-! ## A008533.P11051207828349615271

`A005899(n)+6*A139594(n)`
-/

namespace A008533.P11051207828349615271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + 6 * A139594 n

end

end A008533.P11051207828349615271

namespace A008533

/-- `A005899(n)+6*A139594(n)` -/
def P11051207828349615271.Spec : Prop :=
  ∀ n, P11051207828349615271.a n = A008533 n

end A008533

/-! ## A008533.P17951259276484470128

`5*(A027441(n)-∑[n])+A010003(n)-n²`
-/

namespace A008533.P17951259276484470128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A027441 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + (A010003 n - (n ^ 2 : ℤ))

end

end A008533.P17951259276484470128

namespace A008533

/-- `5*(A027441(n)-∑[n])+A010003(n)-n²` -/
def P17951259276484470128.Spec : Prop :=
  ∀ n, P17951259276484470128.a n = A008533 n

end A008533

/-! ## A008533.P540276038334797466

`A008413(n)+A071270(n)+A037270(n)`
-/

namespace A008533.P540276038334797466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 n + (A071270 n + A037270 n)

end

end A008533.P540276038334797466

namespace A008533

/-- `A008413(n)+A071270(n)+A037270(n)` -/
def P540276038334797466.Spec : Prop :=
  ∀ n, P540276038334797466.a n = A008533 n

end A008533

/-! ## A008533.P6383186092747809399

`A010001(n)+A006003(n)*A008706(n)`
-/

namespace A008533.P6383186092747809399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + A006003 n * A008706 n

end

end A008533.P6383186092747809399

namespace A008533

/-- `A010001(n)+A006003(n)*A008706(n)` -/
def P6383186092747809399.Spec : Prop :=
  ∀ n, P6383186092747809399.a n = A008533 n

end A008533

/-! ## A008533.P3222302657784031591

`A273366(∑[n])-A008531(n)`
-/

namespace A008533.P3222302657784031591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 (∑ j ∈ Finset.range (n + 1), f1 j) - A008531 n

end

end A008533.P3222302657784031591

namespace A008533

/-- `A273366(∑[n])-A008531(n)` -/
def P3222302657784031591.Spec : Prop :=
  ∀ n, P3222302657784031591.a n = A008533 n

end A008533

/-! ## A008533.P9368451651757426880

`A085787(A001105(n))+A005897(n)`
-/

namespace A008533.P9368451651757426880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (A001105 n).toNat + A005897 n

end

end A008533.P9368451651757426880

namespace A008533

/-- `A085787(A001105(n))+A005897(n)` -/
def P9368451651757426880.Spec : Prop :=
  ∀ n, P9368451651757426880.a n = A008533 n

end A008533

/-!
# A008534: Coordination sequence for {A_6}* lattice.

The programs for A008534, there is no canonical definition to state claims against.
-/

/-! ## A008534.P860877029989895306

`2*A222410(n)-A008535(n)`
-/

namespace A008534.P860877029989895306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222410 n - A008535 n

end

end A008534.P860877029989895306

/-! ## A008534.P2414992825499739072

`A000007(n)+(2*A222410(n))%A008535(n)`
-/

namespace A008534.P2414992825499739072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (2 * A222410 n) (A008535 n)

end

end A008534.P2414992825499739072

/-! ## A008534.P8943008521581639463

`Δ[A008535(n)-A222410(n)]`
-/

namespace A008534.P8943008521581639463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008535 n - A222410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008534.P8943008521581639463

/-! ## A008534.P16814188836560711337

`2*A222410(n)-A005905(A004006(n))`
-/

namespace A008534.P16814188836560711337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222410 n - A005905 (A004006 n).toNat

end

end A008534.P16814188836560711337

/-! ## A008534.P3434663188496422411

`2*A222410(n)-A005905(A000125(n)-1)`
-/

namespace A008534.P3434663188496422411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222410 n - A005905 (A000125 n - 1).toNat

end

end A008534.P3434663188496422411

/-!
# A008535: Coordination sequence for {A_7}* lattice.

The programs for A008535, there is no canonical definition to state claims against.
-/

/-! ## A008535.P10053526564824927104

`2*A222410(n)-A008534(n)`
-/

namespace A008535.P10053526564824927104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222410 n - A008534 n

end

end A008535.P10053526564824927104

/-! ## A008535.P15059542441355461191

`A005905(A004006(n))`
-/

namespace A008535.P15059542441355461191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 (A004006 n).toNat

end

end A008535.P15059542441355461191

/-! ## A008535.P18272697646638857744

`A005905(A000125(n)-1)`
-/

namespace A008535.P18272697646638857744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 (A000125 n - 1).toNat

end

end A008535.P18272697646638857744

/-! ## A008535.P3065867665617849708

`A005905(A011826(n+1)-2)`
-/

namespace A008535.P3065867665617849708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 (A011826 (n + 1) - 2).toNat

end

end A008535.P3065867665617849708

/-! ## A008535.P3318409011368259550

`A005905(A000292(n)-C(n, 2))`
-/

namespace A008535.P3318409011368259550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005905 (A000292 n - (Nat.choose n 2 : ℤ)).toNat

end

end A008535.P3318409011368259550

/-!
# A008539: Numbers that do not contain the letter `s'.

The programs for A008539, there is no canonical definition to state claims against.
-/

/-! ## A008539.P5037508612022383696

`record[A222250(n)%A129508(n+5)]`
-/

namespace A008539.P5037508612022383696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222250 n) (A129508 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008539.P5037508612022383696

/-! ## A008539.P17914279576629521369

`record[A222250(n)]%A326063(2*n+1)`
-/

namespace A008539.P17914279576629521369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A326063 (2 * n + 1))

end

end A008539.P17914279576629521369

/-! ## A008539.P8595219776066120202

`eq[A216556(n), A222252(A216556(n))]`
-/

namespace A008539.P8595219776066120202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P8595219776066120202

/-! ## A008539.P6528317562625926318

`eq[A049706(n), A049706(A222249(n))]`
-/

namespace A008539.P6528317562625926318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049706 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P6528317562625926318

/-! ## A008539.P14462801732990254743

`eq[n, A222249(A118759(n))]`
-/

namespace A008539.P14462801732990254743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008539.P14462801732990254743

/-! ## A008539.P9384353962112567173

`eq[A118760(n), A222249(n)]`
-/

namespace A008539.P9384353962112567173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P9384353962112567173

/-! ## A008539.P15493931059359708008

`eq[A222249(n), A292579(n)]`
-/

namespace A008539.P15493931059359708008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P15493931059359708008

/-! ## A008539.P8587984940819634333

`eq[A033619(n+1), A222249(n)]`
-/

namespace A008539.P8587984940819634333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P8587984940819634333

/-! ## A008539.P17319229954610377413

`eq[A130734(n+1), A222249(n)]`
-/

namespace A008539.P17319229954610377413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P17319229954610377413

/-! ## A008539.P15316347005829188575

`eq[A222249(n), A266279(n+1)]`
-/

namespace A008539.P15316347005829188575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008539.P15316347005829188575

/-!
# A008541: Numbers that do not contain the letter `f'.

The programs for A008541, the canonical program `A008541.P9566157956627903149` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008541 has offset 1).

The definition of A008541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008541.P9566157956627903149

`comp[∪[A011534(n+1), A011535(n+1)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008541

/-- `comp[∪[A011534(n+1), A011535(n+1)]]` -/
def P9566157956627903149.Spec : Prop :=
  ∀ n, (P9566157956627903149.a n : ℤ) = A008541 (n + 1)

theorem P9566157956627903149.correct : P9566157956627903149.Spec := by
  intro n
  simp only [A008541, Nat.add_sub_cancel]

end A008541

/-! ## A008541.P15039935252959936788

`∩[A039141(n+1), A052406(n+1)]`
-/

namespace A008541.P15039935252959936788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008541.P15039935252959936788

namespace A008541

/-- `∩[A039141(n+1), A052406(n+1)]` -/
def P15039935252959936788.Spec : Prop :=
  ∀ n, (P15039935252959936788.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P16084858629320847216

`∩[A039141(n+1), A052413(n+1)]`
-/

namespace A008541.P16084858629320847216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008541.P16084858629320847216

namespace A008541

/-- `∩[A039141(n+1), A052413(n+1)]` -/
def P16084858629320847216.Spec : Prop :=
  ∀ n, (P16084858629320847216.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P2202082565690273971

`∩[A052406(n+1), A052413(n+1)]`
-/

namespace A008541.P2202082565690273971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008541.P2202082565690273971

namespace A008541

/-- `∩[A052406(n+1), A052413(n+1)]` -/
def P2202082565690273971.Spec : Prop :=
  ∀ n, (P2202082565690273971.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P16886785713412550264

`A007094(2*n)-A007094(n)`
-/

namespace A008541.P16886785713412550264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (2 * n) - A007094 n

end

end A008541.P16886785713412550264

namespace A008541

/-- `A007094(2*n)-A007094(n)` -/
def P16886785713412550264.Spec : Prop :=
  ∀ n, P16886785713412550264.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P2949278038323261079

`A052406(A037477(2*n+1)-A037477(n))`
-/

namespace A008541.P2949278038323261079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (A037477 (2 * n + 1) - A037477 n).toNat

end

end A008541.P2949278038323261079

namespace A008541

/-- `A052406(A037477(2*n+1)-A037477(n))` -/
def P2949278038323261079.Spec : Prop :=
  ∀ n, P2949278038323261079.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P14321808330646328035

`record[A222241(n)]`
-/

namespace A008541.P14321808330646328035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008541.P14321808330646328035

namespace A008541

/-- `record[A222241(n)]` -/
def P14321808330646328035.Spec : Prop :=
  ∀ n, P14321808330646328035.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P17469366760562331740

`eq[n, A222240(n)]`
-/

namespace A008541.P17469366760562331740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008541.P17469366760562331740

namespace A008541

/-- `eq[n, A222240(n)]` -/
def P17469366760562331740.Spec : Prop :=
  ∀ n, (P17469366760562331740.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P10659325618206284312

`record[A004180(A004179(n))]`
-/

namespace A008541.P10659325618206284312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A004179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008541.P10659325618206284312

namespace A008541

/-- `record[A004180(A004179(n))]` -/
def P10659325618206284312.Spec : Prop :=
  ∀ n, P10659325618206284312.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P1785260934780905807

`record[A222245(A004723(n))]`
-/

namespace A008541.P1785260934780905807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A004723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008541.P1785260934780905807

namespace A008541

/-- `record[A222245(A004723(n))]` -/
def P1785260934780905807.Spec : Prop :=
  ∀ n, P1785260934780905807.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P16581062904544330314

`A222235(record[A222235(n)])`
-/

namespace A008541.P16581062904544330314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A008541.P16581062904544330314

namespace A008541

/-- `A222235(record[A222235(n)])` -/
def P16581062904544330314.Spec : Prop :=
  ∀ n, P16581062904544330314.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P10739388474458538594

`eq[A004179(n), A004180(n)]`
-/

namespace A008541.P10739388474458538594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008541.P10739388474458538594

namespace A008541

/-- `eq[A004179(n), A004180(n)]` -/
def P10739388474458538594.Spec : Prop :=
  ∀ n, (P10739388474458538594.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P9827204217898957658

`A222235(eq[n, A222234(n)])`
-/

namespace A008541.P9827204217898957658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008541.P9827204217898957658

namespace A008541

/-- `A222235(eq[n, A222234(n)])` -/
def P9827204217898957658.Spec : Prop :=
  ∀ n, P9827204217898957658.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P7786933299490495784

`A222245(eq[n, A222241(n)])`
-/

namespace A008541.P7786933299490495784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008541.P7786933299490495784

namespace A008541

/-- `A222245(eq[n, A222241(n)])` -/
def P7786933299490495784.Spec : Prop :=
  ∀ n, P7786933299490495784.a n = A008541 (n + 1)

end A008541

/-! ## A008541.P13947332381132454755

`eq[n*A316865(n), A316866(n)]`
-/

namespace A008541.P13947332381132454755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008541.P13947332381132454755

namespace A008541

/-- `eq[n*A316865(n), A316866(n)]` -/
def P13947332381132454755.Spec : Prop :=
  ∀ n, (P13947332381132454755.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P7602164687481010724

`lt[(A004179(n)-A222240(n))², 1]`
-/

namespace A008541.P7602164687481010724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004179 n - A222240 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A008541.P7602164687481010724

namespace A008541

/-- `lt[(A004179(n)-A222240(n))², 1]` -/
def P7602164687481010724.Spec : Prop :=
  ∀ n, (P7602164687481010724.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P14662091531605463735

`eq[A048379(n), A222245(A048379(n))]`
-/

namespace A008541.P14662091531605463735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008541.P14662091531605463735

namespace A008541

/-- `eq[A048379(n), A222245(A048379(n))]` -/
def P14662091531605463735.Spec : Prop :=
  ∀ n, (P14662091531605463735.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P864447386542805518

`eq[A055640(n), A102669(2*A004179(n))]`
-/

namespace A008541.P864447386542805518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * A004179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008541.P864447386542805518

namespace A008541

/-- `eq[A055640(n), A102669(2*A004179(n))]` -/
def P864447386542805518.Spec : Prop :=
  ∀ n, (P864447386542805518.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P114331589627676119

`eq[A003100(2*n), A222254(A003100(2*n))]`
-/

namespace A008541.P114331589627676119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A003100 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008541.P114331589627676119

namespace A008541

/-- `eq[A003100(2*n), A222254(A003100(2*n))]` -/
def P114331589627676119.Spec : Prop :=
  ∀ n, (P114331589627676119.a n : ℤ) = A008541 (n + 1)

end A008541

/-! ## A008541.P14687821555314918820

`eq[5*n, A222231(5*n)]`
-/

namespace A008541.P14687821555314918820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008541.P14687821555314918820

namespace A008541

/-- `eq[5*n, A222231(5*n)]` -/
def P14687821555314918820.Spec : Prop :=
  ∀ n, (P14687821555314918820.a n : ℤ) = A008541 (n + 1)

end A008541

/-!
# A008542: Sextuple factorial numbers: Product_{k=0..n-1} (6*k+1).

The programs for A008542, there is no canonical definition to state claims against.
-/

/-! ## A008542.P12471141936996089938

`∏[a(n-1)+6]` with `a(0)=1, a(1)=1`
-/

namespace A008542.P12471141936996089938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008542.P12471141936996089938

/-! ## A008542.P5996479721370895037

`(6*n-5)*a(n-1)` with `a(0)=1`
-/

namespace A008542.P5996479721370895037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((6 * n : ℤ) - 5) * a (n - 1)

end

end A008542.P5996479721370895037

/-! ## A008542.P11339109527853852314

`abs(∏[a(n-1)-6])/5` with `a(0)=5`
-/

namespace A008542.P11339109527853852314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 5

end

end A008542.P11339109527853852314

/-! ## A008542.P9477587702651102757

`∏[6*(n-1)%(n+1)+1]`
-/

namespace A008542.P9477587702651102757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008542.P9477587702651102757

/-! ## A008542.P18418316915144284973

`∏[abs(3-10*n)-(4*n+2)]`
-/

namespace A008542.P18418316915144284973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (10 * n : ℤ)| - (4 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008542.P18418316915144284973

/-! ## A008542.P3811620553364319785

`A092082(∑[abs(1-n)])`
-/

namespace A008542.P3811620553364319785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008542.P3811620553364319785

/-! ## A008542.P13011923347719148221

`a(n-1)*A016921(n-1)` with `a(0)=1`
-/

namespace A008542.P13011923347719148221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016921 (n - 1)

end

end A008542.P13011923347719148221

/-! ## A008542.P2386180200529129604

`a(n-1)*A047225(2*n)` with `a(0)=1`
-/

namespace A008542.P2386180200529129604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047225 (2 * n)

end

end A008542.P2386180200529129604

/-! ## A008542.P6623097954399184178

`a(n-1)*record[A019426(n)]` with `a(0)=1, a(1)=1`
-/

namespace A008542.P6623097954399184178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008542.P6623097954399184178

/-! ## A008542.P5974801309307414069

`a(n-1)*record[A165355(n)]` with `a(0)=1, a(1)=1`
-/

namespace A008542.P5974801309307414069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008542.P5974801309307414069

/-!
# A008543: Sextuple factorial numbers: Product_{k=0..n-1} (6*k + 5).

The programs for A008543, there is no canonical definition to state claims against.
-/

/-! ## A008543.P11739532959863234188

`∏[abs(1-6*n)]`
-/

namespace A008543.P11739532959863234188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (6 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008543.P11739532959863234188

/-! ## A008543.P8130439994281890717

`-∏[xor(1, 6*n)-2]`
-/

namespace A008543.P8130439994281890717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (6 * n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008543.P8130439994281890717

/-! ## A008543.P18302470546636097391

`abs(∏[a(n-1)-6])` with `a(0)=1`
-/

namespace A008543.P18302470546636097391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A008543.P18302470546636097391

/-! ## A008543.P5445005712904967549

`floor(∏[a(n-1)+6])` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A008543.P5445005712904967549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008543.P5445005712904967549

/-! ## A008543.P5460393653788400529

`ceil(∏[a(n-1)+6])` with `a(0)=1, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A008543.P5460393653788400529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008543.P5460393653788400529

/-!
# A008544: Triple factorial numbers: Product_{k=0..n-1} (3*k+2).

The programs for A008544, the canonical program `A008544.P7360506934948545949` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008544 has offset 0).

The definition of A008544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008544.P7360506934948545949

`(9*(n-2)*(n-1)+2)*a(n-2)+4*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008544

/-- `(9*(n-2)*(n-1)+2)*a(n-2)+4*a(n-1)` -/
def P7360506934948545949.Spec : Prop :=
  ∀ n, P7360506934948545949.a n = A008544 n

theorem P7360506934948545949.correct : P7360506934948545949.Spec := by
  intro n
  simp only [A008544]

end A008544

/-! ## A008544.P10895700729809219589

`A084939(n)/A000142(n)*A000079(n)`
-/

namespace A008544.P10895700729809219589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084939 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A008544.P10895700729809219589

namespace A008544

/-- `A084939(n)/A000142(n)*A000079(n)` -/
def P10895700729809219589.Spec : Prop :=
  ∀ n, P10895700729809219589.a n = (A008544 n : ℚ)

end A008544

/-! ## A008544.P3561087999436737193

`∏[abs(1-3*n)]`
-/

namespace A008544.P3561087999436737193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008544.P3561087999436737193

namespace A008544

/-- `∏[abs(1-3*n)]` -/
def P3561087999436737193.Spec : Prop :=
  ∀ n, P3561087999436737193.a n = A008544 n

end A008544

/-! ## A008544.P10816177749321805664

`abs(∏[a(n-1)-3])` with `a(0)=1`
-/

namespace A008544.P10816177749321805664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A008544.P10816177749321805664

namespace A008544

/-- `abs(∏[a(n-1)-3])` -/
def P10816177749321805664.Spec : Prop :=
  ∀ n, P10816177749321805664.a n = A008544 n

end A008544

/-! ## A008544.P7987963342661252881

`-∏[a(n-1)+3]` with `a(0)=-1`
-/

namespace A008544.P7987963342661252881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008544.P7987963342661252881

namespace A008544

/-- `-∏[a(n-1)+3]` -/
def P7987963342661252881.Spec : Prop :=
  ∀ n, P7987963342661252881.a n = A008544 n

end A008544

/-! ## A008544.P7978272506830768444

`lcm(3, ∏[1-3*n])/3`
-/

namespace A008544.P7978272506830768444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A008544.P7978272506830768444

namespace A008544

/-- `lcm(3, ∏[1-3*n])/3` -/
def P7978272506830768444.Spec : Prop :=
  ∀ n, P7978272506830768444.a n = (A008544 n : ℚ)

end A008544

/-! ## A008544.P2160146863093000113

`floor(∏[a(n-1)+3])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A008544.P2160146863093000113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008544.P2160146863093000113

namespace A008544

/-- `floor(∏[a(n-1)+3])` -/
def P2160146863093000113.Spec : Prop :=
  ∀ n, (P2160146863093000113.a n : ℤ) = A008544 n

end A008544

/-! ## A008544.P2130672082858364457

`ceil(∏[a(n-1)+3])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A008544.P2130672082858364457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008544.P2130672082858364457

namespace A008544

/-- `ceil(∏[a(n-1)+3])` -/
def P2130672082858364457.Spec : Prop :=
  ∀ n, (P2130672082858364457.a n : ℤ) = A008544 n

end A008544

/-! ## A008544.P5340411553677818592

`round(∏[a(n-1)+3])` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A008544.P5340411553677818592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008544.P5340411553677818592

namespace A008544

/-- `round(∏[a(n-1)+3])` -/
def P5340411553677818592.Spec : Prop :=
  ∀ n, (P5340411553677818592.a n : ℤ) = A008544 n

end A008544

/-! ## A008544.P9188182044437450188

`-∏[n-or(1, -(2*n))]`
-/

namespace A008544.P9188182044437450188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008544.P9188182044437450188

namespace A008544

/-- `-∏[n-or(1, -(2*n))]` -/
def P9188182044437450188.Spec : Prop :=
  ∀ n, P9188182044437450188.a n = A008544 n

end A008544

/-!
# A008545: Quadruple factorial numbers: Product_{k=0..n-1} (4*k + 3).

The programs for A008545, there is no canonical definition to state claims against.
-/

/-! ## A008545.P6895883009769628042

`∏[abs(1-4*n)]`
-/

namespace A008545.P6895883009769628042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008545.P6895883009769628042

/-! ## A008545.P8639122883787625403

`abs(∏[xor(1, -(4*n))])`
-/

namespace A008545.P8639122883787625403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(4 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A008545.P8639122883787625403

/-! ## A008545.P1629779163426917257

`-∏[or(3, 4*(n-1))]`
-/

namespace A008545.P1629779163426917257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (4 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008545.P1629779163426917257

/-! ## A008545.P11213248784339914273

`-∏[xor(3, 4*(n-1))]`
-/

namespace A008545.P11213248784339914273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (4 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008545.P11213248784339914273

/-! ## A008545.P11673119119712862581

`abs(∏[a(n-1)-4])` with `a(0)=1`
-/

namespace A008545.P11673119119712862581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A008545.P11673119119712862581

/-! ## A008545.P16225970606932437717

`-∏[a(n-1)+4]` with `a(0)=-1`
-/

namespace A008545.P16225970606932437717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008545.P16225970606932437717

/-! ## A008545.P6726461039494429334

`floor(∏[a(n-1)+4])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A008545.P6726461039494429334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008545.P6726461039494429334

/-! ## A008545.P762798900856161182

`∏[a(n-1)+4]/2` with `a(0)=2, a(1)=3`
-/

namespace A008545.P762798900856161182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A008545.P762798900856161182

/-! ## A008545.P7826880069116465164

`(4*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A008545.P7826880069116465164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 1) * a (n - 1)

end

end A008545.P7826880069116465164

/-! ## A008545.P15502761628661940957

`-∏[lcm(2, 2*n+1)-3]`
-/

namespace A008545.P15502761628661940957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n + 1) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008545.P15502761628661940957

/-!
# A008546: Quintuple factorial numbers: Product_{k = 0..n-1} (5*k + 4).

The programs for A008546, there is no canonical definition to state claims against.
-/

/-! ## A008546.P4311232672361080138

`∏[abs(1-5*n)]`
-/

namespace A008546.P4311232672361080138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (5 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008546.P4311232672361080138

/-! ## A008546.P17242306852262149329

`abs(∏[a(n-1)-5])` with `a(0)=1`
-/

namespace A008546.P17242306852262149329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A008546.P17242306852262149329

/-! ## A008546.P16024038006803197077

`-∏[a(n-1)+5]` with `a(0)=-1`
-/

namespace A008546.P16024038006803197077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008546.P16024038006803197077

/-! ## A008546.P9153851543926238462

`floor(∏[a(n-1)+5])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A008546.P9153851543926238462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008546.P9153851543926238462

/-! ## A008546.P2286544335047059976

`round(∏[a(n-1)+5])` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A008546.P2286544335047059976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008546.P2286544335047059976

/-! ## A008546.P2124161768264815694

`∏[a(n-1)+5]/2` with `a(0)=2, a(1)=4`
-/

namespace A008546.P2124161768264815694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A008546.P2124161768264815694

/-! ## A008546.P495691616775288549

`(5*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A008546.P495691616775288549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * n : ℤ) - 1) * a (n - 1)

end

end A008546.P495691616775288549

/-! ## A008546.P8125449150152190642

`-∏[lcm(2, 2*n+1)+n-3]`
-/

namespace A008546.P8125449150152190642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n + 1) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008546.P8125449150152190642

/-! ## A008546.P6410106494013751049

`-∏[(n+1)²-lcm(n-1, n-2)]`
-/

namespace A008546.P6410106494013751049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A008546.P6410106494013751049

/-! ## A008546.P8857834718934939734

`A011801(∑[n]+1)`
-/

namespace A008546.P8857834718934939734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A008546.P8857834718934939734

/-!
# A008548: Quintuple factorial numbers: Product_{k=0..n-1} (5*k+1).

The programs for A008548, the canonical program `A008548.P6787257453762326433` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008548 has offset 0).

The definition of A008548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008548.P6787257453762326433

`(10*n-18)*a(n-2)+(5*n-6)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008548

/-- `(10*n-18)*a(n-2)+(5*n-6)*a(n-1)` -/
def P6787257453762326433.Spec : Prop :=
  ∀ n, P6787257453762326433.a n = A008548 n

theorem P6787257453762326433.correct : P6787257453762326433.Spec := by
  intro n
  simp only [A008548]

end A008548

/-! ## A008548.P3274450559653803069

`∏[a(n-1)+5]` with `a(0)=1, a(1)=1`
-/

namespace A008548.P3274450559653803069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008548.P3274450559653803069

namespace A008548

/-- `∏[a(n-1)+5]` -/
def P3274450559653803069.Spec : Prop :=
  ∀ n, (P3274450559653803069.a n : ℤ) = A008548 n

end A008548

/-! ## A008548.P7981790746763146970

`(5*n-4)*a(n-1)` with `a(0)=1`
-/

namespace A008548.P7981790746763146970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * n : ℤ) - 4) * a (n - 1)

end

end A008548.P7981790746763146970

namespace A008548

/-- `(5*n-4)*a(n-1)` -/
def P7981790746763146970.Spec : Prop :=
  ∀ n, P7981790746763146970.a n = A008548 n

end A008548

/-! ## A008548.P6498743185622519053

`∏[5*(n-1)%(n+1)+1]`
-/

namespace A008548.P6498743185622519053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008548.P6498743185622519053

namespace A008548

/-- `∏[5*(n-1)%(n+1)+1]` -/
def P6498743185622519053.Spec : Prop :=
  ∀ n, P6498743185622519053.a n = A008548 n

end A008548

/-! ## A008548.P6837781476824248408

`A049385(C(n, 2)+1)`
-/

namespace A008548.P6837781476824248408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049385 (Nat.choose n 2 + 1)

end

end A008548.P6837781476824248408

namespace A008548

/-- `A049385(C(n, 2)+1)` -/
def P6837781476824248408.Spec : Prop :=
  ∀ n, P6837781476824248408.a n = A008548 n

end A008548

/-! ## A008548.P12653506954019649165

`A049385(∑[abs(1-n)])`
-/

namespace A008548.P12653506954019649165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049385 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008548.P12653506954019649165

namespace A008548

/-- `A049385(∑[abs(1-n)])` -/
def P12653506954019649165.Spec : Prop :=
  ∀ n, P12653506954019649165.a n = A008548 n

end A008548

/-! ## A008548.P1237366862871469325

`∏[A081579(∑[n]+1)]`
-/

namespace A008548.P1237366862871469325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008548.P1237366862871469325

namespace A008548

/-- `∏[A081579(∑[n]+1)]` -/
def P1237366862871469325.Spec : Prop :=
  ∀ n, P1237366862871469325.a n = A008548 n

end A008548

/-! ## A008548.P12412639349275152245

`∏[A046606(∑[n+2])]`
-/

namespace A008548.P12412639349275152245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046606 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008548.P12412639349275152245

namespace A008548

/-- `∏[A046606(∑[n+2])]` -/
def P12412639349275152245.Spec : Prop :=
  ∀ n, P12412639349275152245.a n = A008548 n

end A008548

/-! ## A008548.P6230972411115027444

`∏[record[A078689(n)]-n]`
-/

namespace A008548.P6230972411115027444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008548.P6230972411115027444

namespace A008548

/-- `∏[record[A078689(n)]-n]` -/
def P6230972411115027444.Spec : Prop :=
  ∀ n, P6230972411115027444.a n = A008548 n

end A008548

/-! ## A008548.P13371774025088058218

`∏[record[A174785(n)]-n]`
-/

namespace A008548.P13371774025088058218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A008548.P13371774025088058218

namespace A008548

/-- `∏[record[A174785(n)]-n]` -/
def P13371774025088058218.Spec : Prop :=
  ∀ n, P13371774025088058218.a n = A008548 n

end A008548

/-!
# A008549: Number of ways of choosing at most n-1 items from a set of size 2*n+1.

The programs for A008549, the canonical program `A008549.P3567318639937649678` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008549 has offset 0).

The definition of A008549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008549.P3567318639937649678

`4^n-C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008549

/-- `4^n-C(2*n+1, n)` -/
def P3567318639937649678.Spec : Prop :=
  ∀ n, P3567318639937649678.a n = A008549 n

theorem P3567318639937649678.correct : P3567318639937649678.Spec := by
  intro n
  simp only [A008549]

end A008549

/-! ## A008549.P5375801980553197648

`4^n-∏[4-2/(n+1)]/2`
-/

namespace A008549.P5375801980553197648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A008549.P5375801980553197648

namespace A008549

/-- `4^n-∏[4-2/(n+1)]/2` -/
def P5375801980553197648.Spec : Prop :=
  ∀ n, P5375801980553197648.a n = (A008549 n : ℚ)

end A008549

/-! ## A008549.P12262250200439156562

`A093387(Δ[n²])`
-/

namespace A008549.P12262250200439156562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008549.P12262250200439156562

namespace A008549

/-- `A093387(Δ[n²])` -/
def P12262250200439156562.Spec : Prop :=
  ∀ n, P12262250200439156562.a n = A008549 n

end A008549

/-! ## A008549.P5917315245519812442

`A294175(Δ[n²])`
-/

namespace A008549.P5917315245519812442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008549.P5917315245519812442

namespace A008549

/-- `A294175(Δ[n²])` -/
def P5917315245519812442.Spec : Prop :=
  ∀ n, P5917315245519812442.a n = A008549 n

end A008549

/-! ## A008549.P16408123285213414889

`abs(4^n-A001700(n))`
-/

namespace A008549.P16408123285213414889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A001700 n|

end

end A008549.P16408123285213414889

namespace A008549

/-- `abs(4^n-A001700(n))` -/
def P16408123285213414889.Spec : Prop :=
  ∀ n, P16408123285213414889.a n = A008549 n

end A008549

/-! ## A008549.P9226363362195220517

`xor(A010763(n), A024036(n))`
-/

namespace A008549.P9226363362195220517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010763 n) (A024036 n)

end

end A008549.P9226363362195220517

namespace A008549

/-- `xor(A010763(n), A024036(n))` -/
def P9226363362195220517.Spec : Prop :=
  ∀ n, P9226363362195220517.a n = A008549 n

end A008549

/-! ## A008549.P17568634426158929354

`record[A093387(A289438(2*(n+2))+1)]`
-/

namespace A008549.P17568634426158929354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093387 (A289438 (2 * (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008549.P17568634426158929354

namespace A008549

/-- `record[A093387(A289438(2*(n+2))+1)]` -/
def P17568634426158929354.Spec : Prop :=
  ∀ n, P17568634426158929354.a n = A008549 n

end A008549

/-! ## A008549.P14704399883251476062

`A000346(n)%(4^n)`
-/

namespace A008549.P14704399883251476062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000346 n) (4 ^ n : ℤ)

end

end A008549.P14704399883251476062

namespace A008549

/-- `A000346(n)%(4^n)` -/
def P14704399883251476062.Spec : Prop :=
  ∀ n, P14704399883251476062.a n = A008549 n

end A008549

/-! ## A008549.P15080706885772880811

`A093387(2*(n+1))/2`
-/

namespace A008549.P15080706885772880811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093387 (2 * (n + 1)) : ℚ) / 2

end

end A008549.P15080706885772880811

namespace A008549

/-- `A093387(2*(n+1))/2` -/
def P15080706885772880811.Spec : Prop :=
  ∀ n, P15080706885772880811.a n = (A008549 n : ℚ)

end A008549

/-! ## A008549.P16582602998832844153

`A180967(2*(n+1))/4`
-/

namespace A008549.P16582602998832844153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180967 (2 * (n + 1)) : ℚ) / 4

end

end A008549.P16582602998832844153

namespace A008549

/-- `A180967(2*(n+1))/4` -/
def P16582602998832844153.Spec : Prop :=
  ∀ n, P16582602998832844153.a n = (A008549 n : ℚ)

end A008549

/-! ## A008549.P7150883273255405846

`A171476(n)%A085812(n)`
-/

namespace A008549.P7150883273255405846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171476 n) (A085812 n)

end

end A008549.P7150883273255405846

namespace A008549

/-- `A171476(n)%A085812(n)` -/
def P7150883273255405846.Spec : Prop :=
  ∀ n, P7150883273255405846.a n = A008549 n

end A008549

/-! ## A008549.P2395202026785263161

`and(A000346(n), A024036(n))`
-/

namespace A008549.P2395202026785263161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000346 n) (A024036 n)

end

end A008549.P2395202026785263161

namespace A008549

/-- `and(A000346(n), A024036(n))` -/
def P2395202026785263161.Spec : Prop :=
  ∀ n, P2395202026785263161.a n = A008549 n

end A008549

/-! ## A008549.P101347365623633404

`and(A000346(n), A198693(n))`
-/

namespace A008549.P101347365623633404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000346 n) (A198693 n)

end

end A008549.P101347365623633404

namespace A008549

/-- `and(A000346(n), A198693(n))` -/
def P101347365623633404.Spec : Prop :=
  ∀ n, P101347365623633404.a n = A008549 n

end A008549

/-! ## A008549.P4011849625336507483

`xor(A000302(n), A000346(n))`
-/

namespace A008549.P4011849625336507483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000302 n) (A000346 n)

end

end A008549.P4011849625336507483

namespace A008549

/-- `xor(A000302(n), A000346(n))` -/
def P4011849625336507483.Spec : Prop :=
  ∀ n, P4011849625336507483.a n = A008549 n

end A008549

/-! ## A008549.P5516820373199583612

`(A000346(n)-A001700(n))/2`
-/

namespace A008549.P5516820373199583612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000346 n - A001700 n : ℚ) / 2

end

end A008549.P5516820373199583612

namespace A008549

/-- `(A000346(n)-A001700(n))/2` -/
def P5516820373199583612.Spec : Prop :=
  ∀ n, P5516820373199583612.a n = (A008549 n : ℚ)

end A008549

/-! ## A008549.P7949695061379031949

`record[gcd(A093387(n+1), A294175(n))]`
-/

namespace A008549.P7949695061379031949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093387 (n + 1)) (A294175 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008549.P7949695061379031949

namespace A008549

/-- `record[gcd(A093387(n+1), A294175(n))]` -/
def P7949695061379031949.Spec : Prop :=
  ∀ n, (P7949695061379031949.a n : ℤ) = A008549 n

end A008549

/-! ## A008549.P5190173839989813839

`(A081294(n+1)-A000984(n+1))/2`
-/

namespace A008549.P5190173839989813839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081294 (n + 1) - A000984 (n + 1) : ℚ) / 2

end

end A008549.P5190173839989813839

namespace A008549

/-- `(A081294(n+1)-A000984(n+1))/2` -/
def P5190173839989813839.Spec : Prop :=
  ∀ n, P5190173839989813839.a n = (A008549 n : ℚ)

end A008549

/-! ## A008549.P13467302871329088975

`(A068551(n+1)-A081294(n+1))/2`
-/

namespace A008549.P13467302871329088975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 (n + 1) - A081294 (n + 1) : ℚ) / 2

end

end A008549.P13467302871329088975

namespace A008549

/-- `(A068551(n+1)-A081294(n+1))/2` -/
def P13467302871329088975.Spec : Prop :=
  ∀ n, P13467302871329088975.a n = (A008549 n : ℚ)

end A008549

/-! ## A008549.P5522574865651408450

`and(A000225(2*n), A117186(2*n+1))`
-/

namespace A008549.P5522574865651408450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A117186 (2 * n + 1))

end

end A008549.P5522574865651408450

namespace A008549

/-- `and(A000225(2*n), A117186(2*n+1))` -/
def P5522574865651408450.Spec : Prop :=
  ∀ n, P5522574865651408450.a n = A008549 n

end A008549

/-! ## A008549.P5698472062447174785

`and(A117186(2*n+1), A140683(2*n))`
-/

namespace A008549.P5698472062447174785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117186 (2 * n + 1)) (A140683 (2 * n))

end

end A008549.P5698472062447174785

namespace A008549

/-- `and(A117186(2*n+1), A140683(2*n))` -/
def P5698472062447174785.Spec : Prop :=
  ∀ n, P5698472062447174785.a n = A008549 n

end A008549

/-!
# A008550: Table T(n,k), n>=0 and k>=0, read by antidiagonals: the k-th column given by the k-th Narayana polynomial.

The programs for A008550, there is no canonical definition to state claims against.
-/

/-! ## A008550.P10726439643476486520

`A243631(A061579(n))`
-/

namespace A008550.P10726439643476486520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A061579 n).toNat

end

end A008550.P10726439643476486520

/-! ## A008550.P9025699624474217044

`A243631(A114327(n)+n)`
-/

namespace A008550.P9025699624474217044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A114327 n + (n : ℤ)).toNat

end

end A008550.P9025699624474217044

/-! ## A008550.P4186558252583697054

`A204057(A056943(n+1)+1)`
-/

namespace A008550.P4186558252583697054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A056943 (n + 1) + 1).toNat

end

end A008550.P4186558252583697054

/-! ## A008550.P15702849697276950545

`A243631(A038722(n+1)-1)`
-/

namespace A008550.P15702849697276950545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A038722 (n + 1) - 1).toNat

end

end A008550.P15702849697276950545

/-! ## A008550.P7463695101041563125

`A243631(A185869(n+1)-A016789(n))`
-/

namespace A008550.P7463695101041563125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A185869 (n + 1) - A016789 n).toNat

end

end A008550.P7463695101041563125

/-! ## A008550.P14814171874337681352

`A243631(A185869(n+1)%A016789(n))`
-/

namespace A008550.P14814171874337681352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A008550.P14814171874337681352

/-! ## A008550.P4639586706034180666

`A243631(A038722(n+2))`
-/

namespace A008550.P4639586706034180666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A038722 (n + 2)).toNat

end

end A008550.P4639586706034180666

/-!
# A008551: Number of times n-th energy state appears in statistical sum of Ising model on 4 X 4 X 4 cube.

The programs for A008551, there is no canonical definition to state claims against.
-/

/-! ## A008551.P4413817455463451239

`and(∑[32*n]+3, A275725(n)!)`
-/

namespace A008551.P4413817455463451239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (∑ j ∈ Finset.range (n + 1), f1 j + 3) (Nat.factorial (A275725 n).toNat)

end

end A008551.P4413817455463451239

/-! ## A008551.P14013130494581923740

`and(-A259953(2*(n+1)), A130060(n+1))`
-/

namespace A008551.P14013130494581923740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A259953 (2 * (n + 1))) (A130060 (n + 1))

end

end A008551.P14013130494581923740

/-!
# A008552: Number of 7 X 7 stochastic matrices of integers.

The programs for A008552, there is no canonical definition to state claims against.
-/

/-! ## A008552.P12782045534489933413

`A257493(eq[7, A002262(n)])`
-/

namespace A008552.P12782045534489933413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008552.P12782045534489933413

/-! ## A008552.P4586090524141918495

`A257493(eq[13, A141169(n)])`
-/

namespace A008552.P4586090524141918495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008552.P4586090524141918495

/-! ## A008552.P4504002908184592257

`A257493(eq[8, A002260(n+1)])`
-/

namespace A008552.P4504002908184592257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008552.P4504002908184592257

/-! ## A008552.P13104860110640400594

`A257493(eq[8, A134868(n+1)])`
-/

namespace A008552.P13104860110640400594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008552.P13104860110640400594

/-!
# A008555: Primitive parts of Pell numbers.

The programs for A008555, there is no canonical definition to state claims against.
-/

/-! ## A008555.P12199152571093860210

`abs(A077985(n)/A105606(n+1))`
-/

namespace A008555.P12199152571093860210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A077985 n : ℚ) / (A105606 (n + 1) : ℚ)|

end

end A008555.P12199152571093860210

/-! ## A008555.P6824405514752115053

`∑[A001333(n)]/A105606(n+1)`
-/

namespace A008555.P6824405514752115053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A105606 (n + 1) : ℚ)

end

end A008555.P6824405514752115053

/-! ## A008555.P18037709914431744933

`A000129(n+1)/A105606(n+1)`
-/

namespace A008555.P18037709914431744933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A105606 (n + 1) : ℚ)

end

end A008555.P18037709914431744933

/-! ## A008555.P16032646173299827806

`Δ[A024537(n)]/A105606(n+1)`
-/

namespace A008555.P16032646173299827806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A105606 (n + 1) : ℚ)

end

end A008555.P16032646173299827806

/-! ## A008555.P5129098437067059464

`record[A106513(n)]/A105606(n+1)`
-/

namespace A008555.P5129098437067059464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A105606 (n + 1) : ℚ)

end

end A008555.P5129098437067059464

/-! ## A008555.P9854276942299549323

`record[A103415(n)]/A105606(n+1)`
-/

namespace A008555.P9854276942299549323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A105606 (n + 1) : ℚ)

end

end A008555.P9854276942299549323

/-!
# A008556: Triangle of coefficients of Legendre polynomials 2^n P_n (x).

The programs for A008556, the canonical program `A008556.P3156705809874669738` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008556 has offset 0).

The definition of A008556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008556.P3156705809874669738

`A034868(n)*A094527(A091018(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A008556

/-- `A034868(n)*A094527(A091018(n))` -/
def P3156705809874669738.Spec : Prop :=
  ∀ n, P3156705809874669738.a n = A008556 n

theorem P3156705809874669738.correct : P3156705809874669738.Spec := by
  intro n
  simp only [A008556]

end A008556

/-! ## A008556.P149677666844610208

`A356546(A091018(n))`
-/

namespace A008556.P149677666844610208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356546 (A091018 n).toNat

end

end A008556.P149677666844610208

namespace A008556

/-- `A356546(A091018(n))` -/
def P149677666844610208.Spec : Prop :=
  ∀ n, P149677666844610208.a n = A008556 n

end A008556

/-! ## A008556.P15246429366168156073

`A069466(A091018(n))/A011973(n)`
-/

namespace A008556.P15246429366168156073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 (A091018 n).toNat : ℚ) / (A011973 n : ℚ)

end

end A008556.P15246429366168156073

namespace A008556

/-- `A069466(A091018(n))/A011973(n)` -/
def P15246429366168156073.Spec : Prop :=
  ∀ n, P15246429366168156073.a n = (A008556 n : ℚ)

end A008556

/-! ## A008556.P14606664140671479574

`A144757(2*A003597(n+1))`
-/

namespace A008556.P14606664140671479574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (2 * A003597 (n + 1)).toNat

end

end A008556.P14606664140671479574

namespace A008556

/-- `A144757(2*A003597(n+1))` -/
def P14606664140671479574.Spec : Prop :=
  ∀ n, P14606664140671479574.a n = A008556 n

end A008556

/-! ## A008556.P9100582361261236691

`A144757(lcm(2, A003597(n+1)))`
-/

namespace A008556.P9100582361261236691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144757 (Int.lcm 2 (A003597 (n + 1)))

end

end A008556.P9100582361261236691

namespace A008556

/-- `A144757(lcm(2, A003597(n+1)))` -/
def P9100582361261236691.Spec : Prop :=
  ∀ n, P9100582361261236691.a n = A008556 n

end A008556

/-!
# A008557: Repeatedly convert from decimal to octal.

The programs for A008557, there is no canonical definition to state claims against.
-/

/-! ## A008557.P5874336272132713294

`A008558(n+1)-1`
-/

namespace A008557.P5874336272132713294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008558 (n + 1) - 1

end

end A008557.P5874336272132713294

/-! ## A008557.P16162273864475418326

`xor(1, A008558(A000027(n+1)))`
-/

namespace A008557.P16162273864475418326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008558 (A000027 (n + 1)).toNat)

end

end A008557.P16162273864475418326

/-! ## A008557.P8828814230637273090

`xor(A008558(n+1), A262681(n))`
-/

namespace A008557.P8828814230637273090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008558 (n + 1)) (A262681 n)

end

end A008557.P8828814230637273090

/-! ## A008557.P15027251360984675418

`xor(A008558(n+1), A304042(n))`
-/

namespace A008557.P15027251360984675418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008558 (n + 1)) (A304042 n)

end

end A008557.P15027251360984675418

/-! ## A008557.P8254824888746891967

`xor(A008558(n+1), A361338(n))`
-/

namespace A008557.P8254824888746891967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008558 (n + 1)) (A361338 n)

end

end A008557.P8254824888746891967

/-! ## A008557.P124193378467782438

`xor(A008558(n+1), A133707(n+1))`
-/

namespace A008557.P124193378467782438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008558 (n + 1)) (A133707 (n + 1))

end

end A008557.P124193378467782438

/-! ## A008557.P14389336327205779195

`A023443(A264668(n))+A008558(n+1)`
-/

namespace A008557.P14389336327205779195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A264668 n).toNat + A008558 (n + 1)

end

end A008557.P14389336327205779195

/-! ## A008557.P5009598908674618818

`xor(A007318(A000217(n)), A008558(n+1))`
-/

namespace A008557.P5009598908674618818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A008558 (n + 1))

end

end A008557.P5009598908674618818

/-! ## A008557.P13848851546923242811

`xor(A000041(A025459(n)), A008558(n+1))`
-/

namespace A008557.P13848851546923242811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (A025459 n).toNat) (A008558 (n + 1))

end

end A008557.P13848851546923242811

/-!
# A008558: Repeatedly convert from decimal to octal.

The programs for A008558, there is no canonical definition to state claims against.
-/

/-! ## A008558.P15262520630875353646

`A008557(n+1)+1`
-/

namespace A008558.P15262520630875353646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008557 (n + 1) + 1

end

end A008558.P15262520630875353646

/-! ## A008558.P13150776464233365313

`or(1, A008557(1-(n-2*n)))`
-/

namespace A008558.P13150776464233365313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008557 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A008558.P13150776464233365313

/-! ## A008558.P15229952259807495608

`A007094(a(n-1))` with `a(0)=9`
-/

namespace A008558.P15229952259807495608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A007094 (a (n - 1)).toNat

end

end A008558.P15229952259807495608

/-! ## A008558.P1694466248830662322

`A141310(A008557(n+1))`
-/

namespace A008558.P1694466248830662322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A008557 (n + 1)).toNat

end

end A008558.P1694466248830662322

/-! ## A008558.P9152247193440084418

`A007094(floor(a(A023443(n))))` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A008558.P9152247193440084418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A007094 (a (A023443 n).toNat).toNat

end

end A008558.P9152247193440084418

/-!
# A008560: a(1) = 2; to get a(n), n >= 2, convert a(n-1) from base 3 to base 2.

The programs for A008560, there is no canonical definition to state claims against.
-/

/-! ## A008560.P11190758589362386285

`A007089(A014118(n+1))`
-/

namespace A008560.P11190758589362386285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A014118 (n + 1)).toNat

end

end A008560.P11190758589362386285

/-!
# A008561: a(1) = 3; a(2) = 11; to get a(n), n >= 3, convert a(n-1) from base 3 to base 2.

The programs for A008561, there is no canonical definition to state claims against.
-/

/-! ## A008561.P10338163961436795640

`record[or(A008560(n+1), A016418(n))]`
-/

namespace A008561.P10338163961436795640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008560 (n + 1)) (A016418 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008561.P10338163961436795640

/-! ## A008561.P3879607004951863499

`A008560(n+2)%A231511(A306215(n+1))`
-/

namespace A008561.P3879607004951863499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008560 (n + 2)) (A231511 (A306215 (n + 1)).toNat)

end

end A008561.P3879607004951863499

/-! ## A008561.P10750235625602234824

`A008560(n+2)%A231511(A000079(n))`
-/

namespace A008561.P10750235625602234824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008560 (n + 2)) (A231511 (A000079 n).toNat)

end

end A008561.P10750235625602234824

/-!
# A008571: Digits of powers of 11.

The programs for A008571, there is no canonical definition to state claims against.
-/

/-! ## A008571.P15153525061469712647

`A030700(A034328(n))%12`
-/

namespace A008571.P15153525061469712647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030700 ((A034328 n).toNat + 1)) 12

end

end A008571.P15153525061469712647

/-! ## A008571.P14283305082616311590

`A325678(A060102(n))%9`
-/

namespace A008571.P14283305082616311590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325678 (A060102 n).toNat) 9

end

end A008571.P14283305082616311590

/-! ## A008571.P180627297762783289

`A260999(A214398(n+1))%11`
-/

namespace A008571.P180627297762783289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260999 (A214398 (n + 1)).toNat) 11

end

end A008571.P180627297762783289

/-! ## A008571.P16339511634014257067

`A318573(2^A034328(n))%11`
-/

namespace A008571.P16339511634014257067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318573 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A034328 n : ℤ))).toNat) 11

end

end A008571.P16339511634014257067

/-! ## A008571.P4777686459212066409

`A034328(n)%A084066(A018129(n))`
-/

namespace A008571.P4777686459212066409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034328 n) (A084066 (A018129 n).toNat)

end

end A008571.P4777686459212066409

/-!
# A008574: a(0) = 1, thereafter a(n) = 4n.

The programs for A008574, the canonical program `A008574.P1300280032690682112` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008574 has offset 0).

The definition of A008574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008574.P1300280032690682112

`a(n-1)+4` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008574

/-- `a(n-1)+4` -/
def P1300280032690682112.Spec : Prop :=
  ∀ n, (P1300280032690682112.a n : ℤ) = A008574 n

theorem P1300280032690682112.correct : P1300280032690682112.Spec := by
  intro n
  simp only [A008574]

end A008574

/-!
# A008575: Sectors on dartboard.

The programs for A008575, there is no canonical definition to state claims against.
-/

/-! ## A008575.P13972835934963790869

`A003833(A242718(3*(n+1))+n+1)`
-/

namespace A008575.P13972835934963790869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003833 (A242718 (3 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A008575.P13972835934963790869

/-!
# A008576: Coordination sequence for planar net 4.8.8.

The programs for A008576, the canonical program `A008576.P14557774928279059610` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008576 has offset 0).

The definition of A008576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008576.P14557774928279059610

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008576

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P14557774928279059610.Spec : Prop :=
  ∀ n, P14557774928279059610.a n = A008576 n

theorem P14557774928279059610.correct : P14557774928279059610.Spec := by
  intro n
  simp only [A008576]

end A008576

/-! ## A008576.P7566809421591786864

`ceil(abs(1-8*n)/3)`
-/

namespace A008576.P7566809421591786864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉

end

end A008576.P7566809421591786864

namespace A008576

/-- `ceil(abs(1-8*n)/3)` -/
def P7566809421591786864.Spec : Prop :=
  ∀ n, P7566809421591786864.a n = A008576 n

end A008576

/-! ## A008576.P2991977877273693937

`round(4/(3*acot(2*n)))`
-/

namespace A008576.P2991977877273693937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (3 * SequenceMachineLib.acot (2 * n : ℝ)))

end

end A008576.P2991977877273693937

namespace A008576

/-- `round(4/(3*acot(2*n)))` -/
def P2991977877273693937.Spec : Prop :=
  ∀ n, P2991977877273693937.a n = A008576 n

end A008576

/-! ## A008576.P17455697328503307510

`a(n-3)+8` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A008576.P17455697328503307510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 8] fun n a =>
  a (n - 3) + 8

end

end A008576.P17455697328503307510

namespace A008576

/-- `a(n-3)+8` -/
def P17455697328503307510.Spec : Prop :=
  ∀ n, (P17455697328503307510.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P9232059375973754470

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008576.P9232059375973754470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P9232059375973754470

namespace A008576

/-- `∑[abs(a(n-3))]` -/
def P9232059375973754470.Spec : Prop :=
  ∀ n, (P9232059375973754470.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P6023743376386578976

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008576.P6023743376386578976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P6023743376386578976

namespace A008576

/-- `∑[dr(a(n-3))]` -/
def P6023743376386578976.Spec : Prop :=
  ∀ n, (P6023743376386578976.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P18196689589904370672

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A008576.P18196689589904370672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P18196689589904370672

namespace A008576

/-- `∑[floor(a(n-3))]` -/
def P18196689589904370672.Spec : Prop :=
  ∀ n, (P18196689589904370672.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P5463174598136736631

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A008576.P5463174598136736631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P5463174598136736631

namespace A008576

/-- `∑[ceil(a(n-3))]` -/
def P5463174598136736631.Spec : Prop :=
  ∀ n, (P5463174598136736631.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P7139794748293149145

`∑[round(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`

`round` is left out, it is the identity on integers.
-/

namespace A008576.P7139794748293149145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P7139794748293149145

namespace A008576

/-- `∑[round(a(n-3))]` -/
def P7139794748293149145.Spec : Prop :=
  ∀ n, (P7139794748293149145.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P4325657258533050334

`∑[a((n+1)%3)+1]` with `a(0)=1, a(1)=2`
-/

namespace A008576.P4325657258533050334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 ((n + 1) % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P4325657258533050334

namespace A008576

/-- `∑[a((n+1)%3)+1]` -/
def P4325657258533050334.Spec : Prop :=
  ∀ n, (P4325657258533050334.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P13950753669493149502

`∑[a(n-3)%4]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008576.P13950753669493149502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  f1 (n - 3) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P13950753669493149502

namespace A008576

/-- `∑[a(n-3)%4]` -/
def P13950753669493149502.Spec : Prop :=
  ∀ n, (P13950753669493149502.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P2953124855004816709

`∑[gcd(6, a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008576.P2953124855004816709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P2953124855004816709

namespace A008576

/-- `∑[gcd(6, a(n-3))]` -/
def P2953124855004816709.Spec : Prop :=
  ∀ n, (P2953124855004816709.a n : ℤ) = A008576 n

end A008576

/-! ## A008576.P6413869137225113093

`record[(2*n+1)%xor(7, 1-n)]`
-/

namespace A008576.P6413869137225113093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (Int.xor 7 (1 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008576.P6413869137225113093

namespace A008576

/-- `record[(2*n+1)%xor(7, 1-n)]` -/
def P6413869137225113093.Spec : Prop :=
  ∀ n, P6413869137225113093.a n = A008576 n

end A008576

/-! ## A008576.P9801478063768017275

`ogf((1+2x+2x^2+2x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A008576.P9801478063768017275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 2, 1] [1, -1, 0, -1, 1] n

end

end A008576.P9801478063768017275

namespace A008576

/-- `ogf((1+2x+2x^2+2x^3+x^4)/(1-x-x^3+x^4))` -/
def P9801478063768017275.Spec : Prop :=
  ∀ n, P9801478063768017275.a n = A008576 n

end A008576

/-! ## A008576.P7321803450922372455

`round(A301694(n)/2)`
-/

namespace A008576.P7321803450922372455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301694 n : ℚ) / 2)

end

end A008576.P7321803450922372455

namespace A008576

/-- `round(A301694(n)/2)` -/
def P7321803450922372455.Spec : Prop :=
  ∀ n, P7321803450922372455.a n = A008576 n

end A008576

/-! ## A008576.P9229465429938305543

`A301298(n)-2*n`
-/

namespace A008576.P9229465429938305543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - (2 * n : ℤ)

end

end A008576.P9229465429938305543

namespace A008576

/-- `A301298(n)-2*n` -/
def P9229465429938305543.Spec : Prop :=
  ∀ n, P9229465429938305543.a n = A008576 n

end A008576

/-! ## A008576.P6746368071433882591

`round(A298784(n)/2+n)`
-/

namespace A008576.P6746368071433882591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A298784 n : ℚ) / 2 + (n : ℚ))

end

end A008576.P6746368071433882591

namespace A008576

/-- `round(A298784(n)/2+n)` -/
def P6746368071433882591.Spec : Prop :=
  ∀ n, P6746368071433882591.a n = A008576 n

end A008576

/-! ## A008576.P15918919836983625046

`4*(n+1)-A024352(n+1)`
-/

namespace A008576.P15918919836983625046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A024352 (n + 1)

end

end A008576.P15918919836983625046

namespace A008576

/-- `4*(n+1)-A024352(n+1)` -/
def P15918919836983625046.Spec : Prop :=
  ∀ n, P15918919836983625046.a n = A008576 n

end A008576

/-! ## A008576.P7751899838126217625

`∑[A005117(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008576.P7751899838126217625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  A005117 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P7751899838126217625

namespace A008576

/-- `∑[A005117(a(n-3))]` -/
def P7751899838126217625.Spec : Prop :=
  ∀ n, P7751899838126217625.a n = A008576 n

end A008576

/-! ## A008576.P14718353905129862670

`∑[A006530(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008576.P14718353905129862670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f1 =>
  A006530 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008576.P14718353905129862670

namespace A008576

/-- `∑[A006530(a(n-3))]` -/
def P14718353905129862670.Spec : Prop :=
  ∀ n, P14718353905129862670.a n = A008576 n

end A008576

/-!
# A008577: Crystal ball sequence for planar net 4.8.8.

The programs for A008577, the canonical program `A008577.P9223456219682568888` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008577 has offset 0).

The definition of A008577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008577.P9223456219682568888

`floor((n²+n+1)*4/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008577

/-- `floor((n²+n+1)*4/3)` -/
def P9223456219682568888.Spec : Prop :=
  ∀ n, P9223456219682568888.a n = A008577 n

theorem P9223456219682568888.correct : P9223456219682568888.Spec := by
  intro n
  simp only [A008577]

end A008577

/-! ## A008577.P8895057522841242227

`4*n/3*(n+1)+10/9+A099837(n+2)/9`
-/

namespace A008577.P8895057522841242227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / 3) * (n + 1 : ℚ) + (10 : ℚ) / 9 + (A099837 (n + 2) : ℚ) / 9

end

end A008577.P8895057522841242227

namespace A008577

/-- `4*n/3*(n+1)+10/9+A099837(n+2)/9` -/
def P8895057522841242227.Spec : Prop :=
  ∀ n, P8895057522841242227.a n = (A008577 n : ℚ)

end A008577

/-! ## A008577.P10294039707903157742

`∑[round(4/(3*acot(2*n)))]`
-/

namespace A008577.P10294039707903157742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (3 * SequenceMachineLib.acot (2 * n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P10294039707903157742

namespace A008577

/-- `∑[round(4/(3*acot(2*n)))]` -/
def P10294039707903157742.Spec : Prop :=
  ∀ n, P10294039707903157742.a n = A008577 n

end A008577

/-! ## A008577.P18338258145667018184

`∑[a(n-3)+8]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A008577.P18338258145667018184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 8] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P18338258145667018184

namespace A008577

/-- `∑[a(n-3)+8]` -/
def P18338258145667018184.Spec : Prop :=
  ∀ n, (P18338258145667018184.a n : ℤ) = A008577 n

end A008577

/-! ## A008577.P4026675079601886397

`ceil(or(2, (2*n+1)²)/3)`
-/

namespace A008577.P4026675079601886397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 ((2 * n + 1) ^ 2) : ℚ) / 3⌉

end

end A008577.P4026675079601886397

namespace A008577

/-- `ceil(or(2, (2*n+1)²)/3)` -/
def P4026675079601886397.Spec : Prop :=
  ∀ n, P4026675079601886397.a n = A008577 n

end A008577

/-! ## A008577.P16850621889295750597

`round(or(2, (2*n+1)²)/3)`
-/

namespace A008577.P16850621889295750597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 ((2 * n + 1) ^ 2) : ℚ) / 3)

end

end A008577.P16850621889295750597

namespace A008577

/-- `round(or(2, (2*n+1)²)/3)` -/
def P16850621889295750597.Spec : Prop :=
  ∀ n, P16850621889295750597.a n = A008577 n

end A008577

/-! ## A008577.P17482278538872216006

`ceil(xor(2, (2*n+1)²)/3)`
-/

namespace A008577.P17482278538872216006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 ((2 * n + 1) ^ 2) : ℚ) / 3⌉

end

end A008577.P17482278538872216006

namespace A008577

/-- `ceil(xor(2, (2*n+1)²)/3)` -/
def P17482278538872216006.Spec : Prop :=
  ∀ n, P17482278538872216006.a n = A008577 n

end A008577

/-! ## A008577.P746220891234438523

`round(xor(2, (2*n+1)²)/3)`
-/

namespace A008577.P746220891234438523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 ((2 * n + 1) ^ 2) : ℚ) / 3)

end

end A008577.P746220891234438523

namespace A008577

/-- `round(xor(2, (2*n+1)²)/3)` -/
def P746220891234438523.Spec : Prop :=
  ∀ n, P746220891234438523.a n = A008577 n

end A008577

/-! ## A008577.P17624399008365303747

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A008577.P17624399008365303747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P17624399008365303747

namespace A008577

/-- `∑[∑[floor(a(n-3))]]` -/
def P17624399008365303747.Spec : Prop :=
  ∀ n, (P17624399008365303747.a n : ℤ) = A008577 n

end A008577

/-! ## A008577.P1133625811414138508

`∑[∑[a((n+1)%3)+1]]` with `a(0)=1, a(1)=2`
-/

namespace A008577.P1133625811414138508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 ((n + 1) % 3) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P1133625811414138508

namespace A008577

/-- `∑[∑[a((n+1)%3)+1]]` -/
def P1133625811414138508.Spec : Prop :=
  ∀ n, (P1133625811414138508.a n : ℤ) = A008577 n

end A008577

/-! ## A008577.P14128285714546796888

`ceil(C(2*n+3, 3)/(n+2))`
-/

namespace A008577.P14128285714546796888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 3) 3 : ℚ) / (n + 2 : ℚ)⌉

end

end A008577.P14128285714546796888

namespace A008577

/-- `ceil(C(2*n+3, 3)/(n+2))` -/
def P14128285714546796888.Spec : Prop :=
  ∀ n, P14128285714546796888.a n = A008577 n

end A008577

/-! ## A008577.P4916878367697751785

`∑[∑[a(n-3)%4]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A008577.P4916878367697751785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P4916878367697751785

namespace A008577

/-- `∑[∑[a(n-3)%4]]` -/
def P4916878367697751785.Spec : Prop :=
  ∀ n, (P4916878367697751785.a n : ℤ) = A008577 n

end A008577

/-! ## A008577.P1688953693194105824

`∑[ogf((1+2x+2x^2+2x^3+x^4)/(1-x-x^3+x^4))]`
-/

namespace A008577.P1688953693194105824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 2, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P1688953693194105824

namespace A008577

/-- `∑[ogf((1+2x+2x^2+2x^3+x^4)/(1-x-x^3+x^4))]` -/
def P1688953693194105824.Spec : Prop :=
  ∀ n, P1688953693194105824.a n = A008577 n

end A008577

/-! ## A008577.P1298581075256820612

`round((2*n+1)/atan(3/(2*n+1)))`
-/

namespace A008577.P1298581075256820612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.arctan (3 / (2 * n + 1 : ℚ) : ℝ))

end

end A008577.P1298581075256820612

namespace A008577

/-- `round((2*n+1)/atan(3/(2*n+1)))` -/
def P1298581075256820612.Spec : Prop :=
  ∀ n, P1298581075256820612.a n = A008577 n

end A008577

/-! ## A008577.P357370809057715748

`round((2*n+1)/tanh(3/(2*n+1)))`
-/

namespace A008577.P357370809057715748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.tanh (3 / (2 * n + 1 : ℚ) : ℝ))

end

end A008577.P357370809057715748

namespace A008577

/-- `round((2*n+1)/tanh(3/(2*n+1)))` -/
def P357370809057715748.Spec : Prop :=
  ∀ n, P357370809057715748.a n = A008577 n

end A008577

/-! ## A008577.P10616972588027102564

`ceil((2*n+1)/(3*acot(2*n+1)))`
-/

namespace A008577.P10616972588027102564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / (3 * SequenceMachineLib.acot (2 * n + 1 : ℝ))⌉

end

end A008577.P10616972588027102564

namespace A008577

/-- `ceil((2*n+1)/(3*acot(2*n+1)))` -/
def P10616972588027102564.Spec : Prop :=
  ∀ n, P10616972588027102564.a n = A008577 n

end A008577

/-! ## A008577.P15832291457780223027

`round((2*n+1)/acot((2*n+1)/3))`
-/

namespace A008577.P15832291457780223027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / SequenceMachineLib.acot ((2 * n + 1 : ℚ) / 3 : ℝ))

end

end A008577.P15832291457780223027

namespace A008577

/-- `round((2*n+1)/acot((2*n+1)/3))` -/
def P15832291457780223027.Spec : Prop :=
  ∀ n, P15832291457780223027.a n = A008577 n

end A008577

/-! ## A008577.P17212715888445659233

`∑[A008576(n)]`
-/

namespace A008577.P17212715888445659233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008577.P17212715888445659233

namespace A008577

/-- `∑[A008576(n)]` -/
def P17212715888445659233.Spec : Prop :=
  ∀ n, P17212715888445659233.a n = A008577 n

end A008577

/-! ## A008577.P1273143382612865528

`A211480(n)+1`
-/

namespace A008577.P1273143382612865528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211480 n + 1

end

end A008577.P1273143382612865528

namespace A008577

/-- `A211480(n)+1` -/
def P1273143382612865528.Spec : Prop :=
  ∀ n, P1273143382612865528.a n = A008577 n

end A008577

/-! ## A008577.P8859035568429245959

`A212978(n)-n`
-/

namespace A008577.P8859035568429245959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n - (n : ℤ)

end

end A008577.P8859035568429245959

namespace A008577

/-- `A212978(n)-n` -/
def P8859035568429245959.Spec : Prop :=
  ∀ n, P8859035568429245959.a n = A008577 n

end A008577

/-!
# A008578: Prime numbers at the beginning of the 20th century (today 1 is no longer regarded as a prime).

The programs for A008578, the canonical program `A008578.P3639467937083264764` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008578 has offset 1).

The definition of A008578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008578.P6683222760230901250

`A001747(n+1)/2`
-/

namespace A008578.P6683222760230901250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2

end

end A008578.P6683222760230901250

namespace A008578

/-- `A001747(n+1)/2` -/
def P6683222760230901250.Spec : Prop :=
  ∀ n, P6683222760230901250.a n = (A008578 (n + 1) : ℚ)

theorem P6683222760230901250.correct : P6683222760230901250.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel, A008578.P6683222760230901250.a, A008578.P3639467937083264764.a, A001747, A001747.P198467477273308856.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008578

/-! ## A008578.P3639467937083264764

`A158611(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008578

/-- `A158611(n+2)` -/
def P3639467937083264764.Spec : Prop :=
  ∀ n, P3639467937083264764.a n = A008578 (n + 1)

theorem P3639467937083264764.correct : P3639467937083264764.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel]

end A008578

/-! ## A008578.P13571096977647554567

`A181363(2*n+1)`
-/

namespace A008578.P13571096977647554567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (2 * n + 1)

end

end A008578.P13571096977647554567

namespace A008578

/-- `A181363(2*n+1)` -/
def P13571096977647554567.Spec : Prop :=
  ∀ n, P13571096977647554567.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P12869698618983593719

`A028815(n)-1`
-/

namespace A008578.P12869698618983593719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

end

end A008578.P12869698618983593719

namespace A008578

/-- `A028815(n)-1` -/
def P12869698618983593719.Spec : Prop :=
  ∀ n, P12869698618983593719.a n = A008578 (n + 1)

theorem P12869698618983593719.correct : P12869698618983593719.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel, A008578.P12869698618983593719.a, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008578

/-! ## A008578.P7057826568758373417

`sqrt(A280076(n+1))`
-/

namespace A008578.P7057826568758373417
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

end

end A008578.P7057826568758373417

namespace A008578

/-- `sqrt(A280076(n+1))` -/
def P7057826568758373417.Spec : Prop :=
  ∀ n, P7057826568758373417.a n = (A008578 (n + 1) : ℝ)

end A008578

/-! ## A008578.P8857452814724158770

`record[A259153(n+1)]`
-/

namespace A008578.P8857452814724158770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008578.P8857452814724158770

namespace A008578

/-- `record[A259153(n+1)]` -/
def P8857452814724158770.Spec : Prop :=
  ∀ n, P8857452814724158770.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P15554578906651475028

`A112773(n+1)/3`
-/

namespace A008578.P15554578906651475028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112773 (n + 1) : ℚ) / 3

end

end A008578.P15554578906651475028

namespace A008578

/-- `A112773(n+1)/3` -/
def P15554578906651475028.Spec : Prop :=
  ∀ n, P15554578906651475028.a n = (A008578 (n + 1) : ℚ)

theorem P15554578906651475028.correct : P15554578906651475028.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel, A008578.P15554578906651475028.a, A008578.P3639467937083264764.a, A112773, A112773.P44553575666953962.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008578

/-! ## A008578.P8774372753500012140

`∑{d}[n+1, A030013(#)]`
-/

namespace A008578.P8774372753500012140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d

end

end A008578.P8774372753500012140

namespace A008578

/-- `∑{d}[n+1, A030013(#)]` -/
def P8774372753500012140.Spec : Prop :=
  ∀ n, P8774372753500012140.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P7477444814720561212

`n+1+A162177(n+1)`
-/

namespace A008578.P7477444814720561212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A162177 (n + 1)

end

end A008578.P7477444814720561212

namespace A008578

/-- `n+1+A162177(n+1)` -/
def P7477444814720561212.Spec : Prop :=
  ∀ n, P7477444814720561212.a n = A008578 (n + 1)

theorem P7477444814720561212.correct : P7477444814720561212.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel, A008578.P7477444814720561212.a, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A162177, A162177.P8282933836838632122.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008578

/-! ## A008578.P12719655755189209181

`A090178(n+1)-(n+1)`
-/

namespace A008578.P12719655755189209181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - (n + 1 : ℤ)

end

end A008578.P12719655755189209181

namespace A008578

/-- `A090178(n+1)-(n+1)` -/
def P12719655755189209181.Spec : Prop :=
  ∀ n, P12719655755189209181.a n = A008578 (n + 1)

theorem P12719655755189209181.correct : P12719655755189209181.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel, A008578.P12719655755189209181.a, A008578.P3639467937083264764.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008578

/-! ## A008578.P13185369190627639569

`a(and(2, n²))*A000040(n)` with `a(0)=1`
-/

namespace A008578.P13185369190627639569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.land 2 (n ^ 2)) * A000040 n

end

end A008578.P13185369190627639569

namespace A008578

/-- `a(and(2, n²))*A000040(n)` -/
def P13185369190627639569.Spec : Prop :=
  ∀ n, P13185369190627639569.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P16757347111673176265

`A000040(n/a(and(2, n²)))` with `a(0)=1`
-/

namespace A008578.P16757347111673176265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (SequenceMachineLib.roundAway ((n : ℚ) / (a (Nat.land 2 (n ^ 2)) : ℚ))).toNat

end

end A008578.P16757347111673176265

namespace A008578

/-- `A000040(n/a(and(2, n²)))` -/
def P16757347111673176265.Spec : Prop :=
  ∀ n, P16757347111673176265.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P15103158990657688078

`A000040(n/a(C(2, n+2)))` with `a(0)=1`
-/

namespace A008578.P15103158990657688078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (SequenceMachineLib.roundAway ((n : ℚ) / (a (Nat.choose 2 (n + 2)) : ℚ))).toNat

end

end A008578.P15103158990657688078

namespace A008578

/-- `A000040(n/a(C(2, n+2)))` -/
def P15103158990657688078.Spec : Prop :=
  ∀ n, P15103158990657688078.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P4729795608756572278

`A000040(n*a(and(1, 2*n)))` with `a(0)=1`
-/

namespace A008578.P4729795608756572278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 ((n : ℤ) * a (Nat.land 1 (2 * n))).toNat

end

end A008578.P4729795608756572278

namespace A008578

/-- `A000040(n*a(and(1, 2*n)))` -/
def P4729795608756572278.Spec : Prop :=
  ∀ n, P4729795608756572278.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P5458776551772828974

`A000040(n*a(C(n, n²)))` with `a(0)=1, a(1)=2`
-/

namespace A008578.P5458776551772828974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000040 ((n : ℤ) * a (Nat.choose n (n ^ 2))).toNat

end

end A008578.P5458776551772828974

namespace A008578

/-- `A000040(n*a(C(n, n²)))` -/
def P5458776551772828974.Spec : Prop :=
  ∀ n, P5458776551772828974.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P176407535762495624

`A000040(gcd(n, (n*a(n-1))²²))` with `a(0)=1`
-/

namespace A008578.P176407535762495624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.gcd (n : ℤ) ((((n : ℤ) * a (n - 1)) ^ 2) ^ 2))

end

end A008578.P176407535762495624

namespace A008578

/-- `A000040(gcd(n, (n*a(n-1))²²))` -/
def P176407535762495624.Spec : Prop :=
  ∀ n, P176407535762495624.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P10098843625127780115

`A280560(n)+A082455(n)`
-/

namespace A008578.P10098843625127780115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A082455 n

end

end A008578.P10098843625127780115

namespace A008578

/-- `A280560(n)+A082455(n)` -/
def P10098843625127780115.Spec : Prop :=
  ∀ n, P10098843625127780115.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P5391501963465805022

`A167136(n+1)+A001489(n)`
-/

namespace A008578.P5391501963465805022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + A001489 n

end

end A008578.P5391501963465805022

namespace A008578

/-- `A167136(n+1)+A001489(n)` -/
def P5391501963465805022.Spec : Prop :=
  ∀ n, P5391501963465805022.a n = A008578 (n + 1)

theorem P5391501963465805022.correct : P5391501963465805022.Spec := by
  intro n
  simp only [A008578, Nat.add_sub_cancel, A008578.P5391501963465805022.a, A008578.P3639467937083264764.a, A001489, A001489.P15233530513763566776.a, A158611, A158611.P9275629407611603775.a, A167136, A167136.P17162096113252504066.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008578

/-! ## A008578.P8018428590521642153

`A182986(n+1)+A000007(n)`
-/

namespace A008578.P8018428590521642153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A000007 n

end

end A008578.P8018428590521642153

namespace A008578

/-- `A182986(n+1)+A000007(n)` -/
def P8018428590521642153.Spec : Prop :=
  ∀ n, P8018428590521642153.a n = A008578 (n + 1)

end A008578

/-! ## A008578.P1108132214597432740

`A299763(n+1)+A057428(n)`
-/

namespace A008578.P1108132214597432740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + A057428 n

end

end A008578.P1108132214597432740

namespace A008578

/-- `A299763(n+1)+A057428(n)` -/
def P1108132214597432740.Spec : Prop :=
  ∀ n, P1108132214597432740.a n = A008578 (n + 1)

end A008578

/-!
# A008579: Coordination sequence for planar net 3.6.3.6. Spherical growth function for a certain reflection group in plane.

The programs for A008579, the canonical program `A008579.P11123826267800694639` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008579 has offset 0).

The definition of A008579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008579.P11123826267800694639

`A296910(n)+A237420(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008579

/-- `A296910(n)+A237420(n)` -/
def P11123826267800694639.Spec : Prop :=
  ∀ n, P11123826267800694639.a n = A008579 n

theorem P11123826267800694639.correct : P11123826267800694639.Spec := by
  intro n
  simp only [A008579]

end A008579

/-! ## A008579.P16228954971522234685

`A296910(n)+n*Δ[A008619(n+1)]`
-/

namespace A008579.P16228954971522234685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A008579.P16228954971522234685

namespace A008579

/-- `A296910(n)+n*Δ[A008619(n+1)]` -/
def P16228954971522234685.Spec : Prop :=
  ∀ n, P16228954971522234685.a n = A008579 n

end A008579

/-! ## A008579.P14336109866595603124

`A250122(2*n)`
-/

namespace A008579.P14336109866595603124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (2 * n)

end

end A008579.P14336109866595603124

namespace A008579

/-- `A250122(2*n)` -/
def P14336109866595603124.Spec : Prop :=
  ∀ n, P14336109866595603124.a n = A008579 n

end A008579

/-! ## A008579.P889941185031823938

`and(-1, A250122(A005843(n)))`
-/

namespace A008579.P889941185031823938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A250122 (A005843 n).toNat)

end

end A008579.P889941185031823938

namespace A008579

/-- `and(-1, A250122(A005843(n)))` -/
def P889941185031823938.Spec : Prop :=
  ∀ n, P889941185031823938.a n = A008579 n

end A008579

/-! ## A008579.P18404675791168750218

`∑{d}[A250122(n+n), A000010(#)]`
-/

namespace A008579.P18404675791168750218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A008579.P18404675791168750218

namespace A008579

/-- `∑{d}[A250122(n+n), A000010(#)]` -/
def P18404675791168750218.Spec : Prop :=
  ∀ n, P18404675791168750218.a n = A008579 n

end A008579

/-! ## A008579.P16563146714810891232

`lcm(Δ[A042965(n+1)], A250122(n+n))`
-/

namespace A008579.P16563146714810891232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A250122 (n + n))

end

end A008579.P16563146714810891232

namespace A008579

/-- `lcm(Δ[A042965(n+1)], A250122(n+n))` -/
def P16563146714810891232.Spec : Prop :=
  ∀ n, (P16563146714810891232.a n : ℤ) = A008579 n

end A008579

/-! ## A008579.P2984214343395300820

`A312304(n)+2*A142150(A142150(n))`
-/

namespace A008579.P2984214343395300820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + 2 * A142150 (A142150 n).toNat

end

end A008579.P2984214343395300820

namespace A008579

/-- `A312304(n)+2*A142150(A142150(n))` -/
def P2984214343395300820.Spec : Prop :=
  ∀ n, P2984214343395300820.a n = A008579 n

end A008579

/-! ## A008579.P16270322311549249817

`A312736(n)-A077814(A004396(n))`
-/

namespace A008579.P16270322311549249817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312736 n - A077814 (A004396 n).toNat

end

end A008579.P16270322311549249817

namespace A008579

/-- `A312736(n)-A077814(A004396(n))` -/
def P16270322311549249817.Spec : Prop :=
  ∀ n, P16270322311549249817.a n = A008579 n

theorem P16270322311549249817.correct : P16270322311549249817.Spec := by
  intro n
  simp only [A008579, Nat.add_sub_cancel, A008579.P16270322311549249817.a, A008579.P11123826267800694639.a, A004396, A004396.P17032557045289780609.a, A077814, A077814.P1153780925982348255.a, A237420, A237420.P18309215415516619502.a, A296910, A296910.P15115940855877380852.a, A312736, A312736.P842124473673064007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008579

/-! ## A008579.P16192920140788031851

`A313321(n)+A314776(n)-A008706(n)`
-/

namespace A008579.P16192920140788031851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n + (A314776 n - A008706 n)

end

end A008579.P16192920140788031851

namespace A008579

/-- `A313321(n)+A314776(n)-A008706(n)` -/
def P16192920140788031851.Spec : Prop :=
  ∀ n, P16192920140788031851.a n = A008579 n

end A008579

/-! ## A008579.P2240012847071798218

`2*A313335(n)-A310556(n)`
-/

namespace A008579.P2240012847071798218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313335 n - A310556 n

end

end A008579.P2240012847071798218

namespace A008579

/-- `2*A313335(n)-A310556(n)` -/
def P2240012847071798218.Spec : Prop :=
  ∀ n, P2240012847071798218.a n = A008579 n

end A008579

/-! ## A008579.P5490883944557386446

`A313335(n)+A315484(n)-A008458(n)`
-/

namespace A008579.P5490883944557386446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313335 n + (A315484 n - A008458 n)

end

end A008579.P5490883944557386446

namespace A008579

/-- `A313335(n)+A315484(n)-A008458(n)` -/
def P5490883944557386446.Spec : Prop :=
  ∀ n, P5490883944557386446.a n = A008579 n

end A008579

/-! ## A008579.P16662830206958376523

`A313321(n)+A315505(n)-A008458(n)`
-/

namespace A008579.P16662830206958376523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n + (A315505 n - A008458 n)

end

end A008579.P16662830206958376523

namespace A008579

/-- `A313321(n)+A315505(n)-A008458(n)` -/
def P16662830206958376523.Spec : Prop :=
  ∀ n, P16662830206958376523.a n = A008579 n

end A008579

/-! ## A008579.P6778431837239949752

`A312736(n)+A315711(n)-A008458(n)`
-/

namespace A008579.P6778431837239949752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312736 n + (A315711 n - A008458 n)

end

end A008579.P6778431837239949752

namespace A008579

/-- `A312736(n)+A315711(n)-A008458(n)` -/
def P6778431837239949752.Spec : Prop :=
  ∀ n, P6778431837239949752.a n = A008579 n

end A008579

/-! ## A008579.P14052068582351962890

`A313072(n)+A315564(n)-A008458(n)`
-/

namespace A008579.P14052068582351962890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313072 n + (A315564 n - A008458 n)

end

end A008579.P14052068582351962890

namespace A008579

/-- `A313072(n)+A315564(n)-A008458(n)` -/
def P14052068582351962890.Spec : Prop :=
  ∀ n, P14052068582351962890.a n = A008579 n

end A008579

/-! ## A008579.P3232407683150982943

`2*A310661(2*n)-A314382(2*n)`
-/

namespace A008579.P3232407683150982943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310661 (2 * n) - A314382 (2 * n)

end

end A008579.P3232407683150982943

namespace A008579

/-- `2*A310661(2*n)-A314382(2*n)` -/
def P3232407683150982943.Spec : Prop :=
  ∀ n, P3232407683150982943.a n = A008579 n

end A008579

/-!
# A008580: Crystal ball sequence for planar net 3.6.3.6.

The programs for A008580, the canonical program `A008580.P13874529109032745839` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008580 has offset 0).

The definition of A008580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008580.P13874529109032745839

`2*a(n-2)-a(n-4)+18` with `a(0)=1, a(1)=5, a(2)=13, a(3)=27, a(4)=45`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008580

/-- `2*a(n-2)-a(n-4)+18` -/
def P13874529109032745839.Spec : Prop :=
  ∀ n, P13874529109032745839.a n = A008580 n

theorem P13874529109032745839.correct : P13874529109032745839.Spec := by
  intro n
  simp only [A008580]

end A008580

/-! ## A008580.P10969456258207939524

`∑[A008579(n)]`
-/

namespace A008580.P10969456258207939524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008580.P10969456258207939524

namespace A008580

/-- `∑[A008579(n)]` -/
def P10969456258207939524.Spec : Prop :=
  ∀ n, P10969456258207939524.a n = A008580 n

end A008580

/-! ## A008580.P12483869496939904396

`A299256(n)-a(n-1)` with `a(0)=1`
-/

namespace A008580.P12483869496939904396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299256 n - a (n - 1)

end

end A008580.P12483869496939904396

namespace A008580

/-- `A299256(n)-a(n-1)` -/
def P12483869496939904396.Spec : Prop :=
  ∀ n, P12483869496939904396.a n = A008580 n

end A008580

/-! ## A008580.P7063150408923847173

`A296911(n)+A110660(n)`
-/

namespace A008580.P7063150408923847173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296911 n + A110660 n

end

end A008580.P7063150408923847173

namespace A008580

/-- `A296911(n)+A110660(n)` -/
def P7063150408923847173.Spec : Prop :=
  ∀ n, P7063150408923847173.a n = A008580 n

end A008580

/-! ## A008580.P9897643427924531367

`A008579(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008580.P9897643427924531367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008579 n + a (A023443 n).toNat

end

end A008580.P9897643427924531367

namespace A008580

/-- `A008579(n)+a(A023443(n))` -/
def P9897643427924531367.Spec : Prop :=
  ∀ n, P9897643427924531367.a n = A008580 n

end A008580

/-! ## A008580.P17145914028075302657

`A004526(n)+A296911(n)+A004526(n)²`
-/

namespace A008580.P17145914028075302657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A296911 n + A004526 n ^ 2)

end

end A008580.P17145914028075302657

namespace A008580

/-- `A004526(n)+A296911(n)+A004526(n)²` -/
def P17145914028075302657.Spec : Prop :=
  ∀ n, P17145914028075302657.a n = A008580 n

end A008580

/-! ## A008580.P9394333797218983855

`∑[A250122(2*n)]`
-/

namespace A008580.P9394333797218983855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008580.P9394333797218983855

namespace A008580

/-- `∑[A250122(2*n)]` -/
def P9394333797218983855.Spec : Prop :=
  ∀ n, P9394333797218983855.a n = A008580 n

end A008580

/-! ## A008580.P7548488493300596716

`A250122(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A008580.P7548488493300596716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250122 (n + n) + a (n - 1)

end

end A008580.P7548488493300596716

namespace A008580

/-- `A250122(n+n)+a(n-1)` -/
def P7548488493300596716.Spec : Prop :=
  ∀ n, P7548488493300596716.a n = A008580 n

end A008580

/-! ## A008580.P327683347015797593

`∑[A250122(A004277(n))]-2`
-/

namespace A008580.P327683347015797593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A008580.P327683347015797593

namespace A008580

/-- `∑[A250122(A004277(n))]-2` -/
def P327683347015797593.Spec : Prop :=
  ∀ n, P327683347015797593.a n = A008580 n

end A008580

/-!
# A008581: Molien series for 6-dimensional complex reflection group 4.U_4 (3) of order 2^9 .3^7 .5.7.

The programs for A008581, the canonical program `A008581.P17617564279450248385` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008581 has offset 0).

The definition of A008581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008581.P17617564279450248385

`A266744(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008581

/-- `A266744(n)+a(n-2)` -/
def P17617564279450248385.Spec : Prop :=
  ∀ n, P17617564279450248385.a n = A008581 n

theorem P17617564279450248385.correct : P17617564279450248385.Spec := by
  intro n
  simp only [A008581]

end A008581

/-! ## A008581.P14221589993455829750

`A001402(n)-Δ[A026813(n)]`
-/

namespace A008581.P14221589993455829750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - (f1 (n + 1) - f1 n)

end

end A008581.P14221589993455829750

namespace A008581

/-- `A001402(n)-Δ[A026813(n)]` -/
def P14221589993455829750.Spec : Prop :=
  ∀ n, P14221589993455829750.a n = A008581 n

end A008581

/-! ## A008581.P1162162059062474116

`A001402(n)+A026813(n)-A026813(n+1)`
-/

namespace A008581.P1162162059062474116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n + (A026813 n - A026813 (n + 1))

end

end A008581.P1162162059062474116

namespace A008581

/-- `A001402(n)+A026813(n)-A026813(n+1)` -/
def P1162162059062474116.Spec : Prop :=
  ∀ n, P1162162059062474116.a n = A008581 n

end A008581

/-! ## A008581.P9002220237908668811

`A008636(n)-A026813(n+1)`
-/

namespace A008581.P9002220237908668811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026813 (n + 1)

end

end A008581.P9002220237908668811

namespace A008581

/-- `A008636(n)-A026813(n+1)` -/
def P9002220237908668811.Spec : Prop :=
  ∀ n, P9002220237908668811.a n = A008581 n

end A008581

/-! ## A008581.P4216336982108553638

`Δ[A288341(n)-A008636(n)]`
-/

namespace A008581.P4216336982108553638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288341 n - A008636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008581.P4216336982108553638

namespace A008581

/-- `Δ[A288341(n)-A008636(n)]` -/
def P4216336982108553638.Spec : Prop :=
  ∀ n, P4216336982108553638.a n = A008581 n

end A008581

/-! ## A008581.P5031276869989859309

`∑[A001996(n)-Δ[A026813(n)]]`
-/

namespace A008581.P5031276869989859309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008581.P5031276869989859309

namespace A008581

/-- `∑[A001996(n)-Δ[A026813(n)]]` -/
def P5031276869989859309.Spec : Prop :=
  ∀ n, P5031276869989859309.a n = A008581 n

end A008581

/-! ## A008581.P129584006663799117

`∑[A001996(n)]-A026813(n+1)`
-/

namespace A008581.P129584006663799117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026813 (n + 1)

end

end A008581.P129584006663799117

namespace A008581

/-- `∑[A001996(n)]-A026813(n+1)` -/
def P129584006663799117.Spec : Prop :=
  ∀ n, P129584006663799117.a n = A008581 n

end A008581

/-! ## A008581.P15626418800324799186

`A001402(n+1)-A001996(n+1)`
-/

namespace A008581.P15626418800324799186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (n + 1) - A001996 (n + 1)

end

end A008581.P15626418800324799186

namespace A008581

/-- `A001402(n+1)-A001996(n+1)` -/
def P15626418800324799186.Spec : Prop :=
  ∀ n, P15626418800324799186.a n = A008581 n

end A008581

/-!
# A008582: Molien series for Weyl group E_8.

The programs for A008582, there is no canonical definition to state claims against.
-/

/-! ## A008582.P5063483462479328262

`A000700(2*n+1)-A130543(A058343(n+4))`
-/

namespace A008582.P5063483462479328262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n + 1) - A130543 (A058343 (n + 4)).toNat

end

end A008582.P5063483462479328262

/-! ## A008582.P15427068035270332779

`∑[A014671(2*n)%A325884(2*n+1)]`
-/

namespace A008582.P15427068035270332779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014671 (2 * n)) (A325884 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008582.P15427068035270332779

/-! ## A008582.P14231693903121257013

`A069911(n)-A335520(A302081(n+1))`
-/

namespace A008582.P14231693903121257013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069911 n - A335520 (A302081 (n + 1)).toNat

end

end A008582.P14231693903121257013

/-! ## A008582.P16450544422822387800

`A000700(2*n+1)-A184964(A055327(n+2))`
-/

namespace A008582.P16450544422822387800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n + 1) - A184964 (A055327 (n + 2)).toNat

end

end A008582.P16450544422822387800

/-! ## A008582.P9197212167340445

`A000700(2*n+1)-A240328(A353966(n+3))`
-/

namespace A008582.P9197212167340445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n + 1) - A240328 (A353966 (n + 3)).toNat

end

end A008582.P9197212167340445

/-!
# A008583: Molien series for Weyl group E_7.

The programs for A008583, there is no canonical definition to state claims against.
-/

/-! ## A008583.P11640521610147150980

`round(A032766(A261049(n))/A017984(n))`
-/

namespace A008583.P11640521610147150980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032766 (A261049 n).toNat : ℚ) / (A017984 n : ℚ))

end

end A008583.P11640521610147150980

/-! ## A008583.P11402264938200024414

`A053253(A070824(ceil(2^(n-1))))`
-/

namespace A008583.P11402264938200024414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053253 (A070824 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A008583.P11402264938200024414

/-! ## A008583.P11583130700826794143

`A144197(A014977(n))+A014977(n)`
-/

namespace A008583.P11583130700826794143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144197 (A014977 n).toNat + A014977 n

end

end A008583.P11583130700826794143

/-! ## A008583.P4912168177971290586

`A095913(n+1)+A000035(A011782(n))`
-/

namespace A008583.P4912168177971290586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095913 (n + 1) + A000035 (A011782 n).toNat

end

end A008583.P4912168177971290586

/-! ## A008583.P8333780845803549713

`A095913(n+1)+A010052(A006528(n))`
-/

namespace A008583.P8333780845803549713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095913 (n + 1) + A010052 (A006528 n).toNat

end

end A008583.P8333780845803549713

/-!
# A008584: Molien series for Weyl group E_6.

The programs for A008584, there is no canonical definition to state claims against.
-/

/-! ## A008584.P5179743420993947718

`gcd(A010816(32*n²), A112202(5*n+1))`
-/

namespace A008584.P5179743420993947718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 (32 * n ^ 2)) (A112202 (5 * n + 1))

end

end A008584.P5179743420993947718

/-! ## A008584.P4587384242177313700

`A325678(A029198(n)*A108104(n))`
-/

namespace A008584.P4587384242177313700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A029198 n * A108104 n).toNat

end

end A008584.P4587384242177313700

/-! ## A008584.P8755477334947645931

`A097106(A011782(n))-A112202(5*n+1)`
-/

namespace A008584.P8755477334947645931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097106 (A011782 n).toNat - A112202 (5 * n + 1)

end

end A008584.P8755477334947645931

/-! ## A008584.P4914962022617890103

`A000038(A023373(n+1))-A112202(5*n+1)`
-/

namespace A008584.P4914962022617890103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A023373 (n + 1)).toNat - A112202 (5 * n + 1)

end

end A008584.P4914962022617890103

/-! ## A008584.P13491841589163593889

`A097411(A207144(n+1))-1`
-/

namespace A008584.P13491841589163593889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097411 (A207144 (n + 1)).toNat - 1

end

end A008584.P13491841589163593889

/-!
# A008585: a(n) = 3*n.

The programs for A008585, the canonical program `A008585.P13732812384316341435` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008585 has offset 0).

The definition of A008585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n` (program `A008585.P13732812384316341435`, by `A008585.P13732812384316341435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008585.P13732812384316341435

`3*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008585

/-- `3*n` -/
def P13732812384316341435.Spec : Prop :=
  ∀ n, (P13732812384316341435.a n : ℤ) = A008585 n

theorem P13732812384316341435.correct : P13732812384316341435.Spec := by
  intro n
  simp only [A008585]

end A008585

/-!
# A008586: Multiples of 4.

The programs for A008586, the canonical program `A008586.P15642444062404201100` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008586 has offset 0).

The definition of A008586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008586.P15642444062404201100

`4*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008586

/-- `4*n` -/
def P15642444062404201100.Spec : Prop :=
  ∀ n, (P15642444062404201100.a n : ℤ) = A008586 n

theorem P15642444062404201100.correct : P15642444062404201100.Spec := by
  intro n
  simp only [A008586]

end A008586

/-!
# A008587: Multiples of 5: a(n) = 5 * n.

The programs for A008587, the canonical program `A008587.P15238079008432610842` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008587 has offset 0).

The definition of A008587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n` (program `A008587.P15238079008432610842`, by `A008587.P15238079008432610842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008587.P15238079008432610842

`5*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008587

/-- `5*n` -/
def P15238079008432610842.Spec : Prop :=
  ∀ n, (P15238079008432610842.a n : ℤ) = A008587 n

theorem P15238079008432610842.correct : P15238079008432610842.Spec := by
  intro n
  simp only [A008587]

end A008587

/-!
# A008588: Nonnegative multiples of 6.

The programs for A008588, the canonical program `A008588.P12386450284809463491` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008588 has offset 0).

The definition of A008588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008588.P12386450284809463491

`6*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008588

/-- `6*n` -/
def P12386450284809463491.Spec : Prop :=
  ∀ n, (P12386450284809463491.a n : ℤ) = A008588 n

theorem P12386450284809463491.correct : P12386450284809463491.Spec := by
  intro n
  simp only [A008588]

end A008588

/-!
# A008589: Multiples of 7.

The programs for A008589, the canonical program `A008589.P8963889148823201939` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008589 has offset 0).

The definition of A008589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008589.P8963889148823201939

`7*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008589

/-- `7*n` -/
def P8963889148823201939.Spec : Prop :=
  ∀ n, (P8963889148823201939.a n : ℤ) = A008589 n

theorem P8963889148823201939.correct : P8963889148823201939.Spec := by
  intro n
  simp only [A008589]

end A008589

/-!
# A008590: Multiples of 8.

The programs for A008590, the canonical program `A008590.P15621076316638553644` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008590 has offset 0).

The definition of A008590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008590.P15621076316638553644

`8*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008590

/-- `8*n` -/
def P15621076316638553644.Spec : Prop :=
  ∀ n, (P15621076316638553644.a n : ℤ) = A008590 n

theorem P15621076316638553644.correct : P15621076316638553644.Spec := by
  intro n
  simp only [A008590]

end A008590

/-!
# A008591: Multiples of 9: a(n) = 9*n.

The programs for A008591, the canonical program `A008591.P8937864482545511630` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008591 has offset 0).

The definition of A008591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n` (program `A008591.P8937864482545511630`, by `A008591.P8937864482545511630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008591.P8937864482545511630

`9*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008591

/-- `9*n` -/
def P8937864482545511630.Spec : Prop :=
  ∀ n, (P8937864482545511630.a n : ℤ) = A008591 n

theorem P8937864482545511630.correct : P8937864482545511630.Spec := by
  intro n
  simp only [A008591]

end A008591

/-!
# A008592: Multiples of 10: a(n) = 10*n.

The programs for A008592, the canonical program `A008592.P4981059802862696142` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008592 has offset 0).

The definition of A008592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n` (program `A008592.P4981059802862696142`, by `A008592.P4981059802862696142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008592.P4981059802862696142

`10*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008592

/-- `10*n` -/
def P4981059802862696142.Spec : Prop :=
  ∀ n, (P4981059802862696142.a n : ℤ) = A008592 n

theorem P4981059802862696142.correct : P4981059802862696142.Spec := by
  intro n
  simp only [A008592]

end A008592

/-!
# A008593: Multiples of 11.

The programs for A008593, the canonical program `A008593.P2680892499938115192` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008593 has offset 0).

The definition of A008593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008593.P2680892499938115192

`11*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008593

/-- `11*n` -/
def P2680892499938115192.Spec : Prop :=
  ∀ n, (P2680892499938115192.a n : ℤ) = A008593 n

theorem P2680892499938115192.correct : P2680892499938115192.Spec := by
  intro n
  simp only [A008593]

end A008593

/-!
# A008594: Multiples of 12.

The programs for A008594, the canonical program `A008594.P9877215682521385096` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008594 has offset 0).

The definition of A008594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008594.P9877215682521385096

`12*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008594

/-- `12*n` -/
def P9877215682521385096.Spec : Prop :=
  ∀ n, (P9877215682521385096.a n : ℤ) = A008594 n

theorem P9877215682521385096.correct : P9877215682521385096.Spec := by
  intro n
  simp only [A008594]

end A008594

/-!
# A008595: Multiples of 13.

The programs for A008595, the canonical program `A008595.P16021929412859907016` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008595 has offset 0).

The definition of A008595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008595.P16021929412859907016

`13*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008595

/-- `13*n` -/
def P16021929412859907016.Spec : Prop :=
  ∀ n, (P16021929412859907016.a n : ℤ) = A008595 n

theorem P16021929412859907016.correct : P16021929412859907016.Spec := by
  intro n
  simp only [A008595]

end A008595

/-!
# A008596: Multiples of 14.

The programs for A008596, the canonical program `A008596.P5483684624845691048` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008596 has offset 0).

The definition of A008596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008596.P5483684624845691048

`14*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008596

/-- `14*n` -/
def P5483684624845691048.Spec : Prop :=
  ∀ n, (P5483684624845691048.a n : ℤ) = A008596 n

theorem P5483684624845691048.correct : P5483684624845691048.Spec := by
  intro n
  simp only [A008596]

end A008596

/-!
# A008597: Multiples of 15.

The programs for A008597, the canonical program `A008597.P11564373174620697085` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008597 has offset 0).

The definition of A008597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008597.P11564373174620697085

`15*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008597

/-- `15*n` -/
def P11564373174620697085.Spec : Prop :=
  ∀ n, (P11564373174620697085.a n : ℤ) = A008597 n

theorem P11564373174620697085.correct : P11564373174620697085.Spec := by
  intro n
  simp only [A008597]

end A008597

/-!
# A008598: Multiples of 16.

The programs for A008598, the canonical program `A008598.P6226039880973179911` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008598 has offset 0).

The definition of A008598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008598.P6226039880973179911

`16*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008598

/-- `16*n` -/
def P6226039880973179911.Spec : Prop :=
  ∀ n, (P6226039880973179911.a n : ℤ) = A008598 n

theorem P6226039880973179911.correct : P6226039880973179911.Spec := by
  intro n
  simp only [A008598]

end A008598

/-!
# A008599: Multiples of 17.

The programs for A008599, the canonical program `A008599.P9337740256108162749` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008599 has offset 0).

The definition of A008599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008599.P9337740256108162749

`17*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008599

/-- `17*n` -/
def P9337740256108162749.Spec : Prop :=
  ∀ n, (P9337740256108162749.a n : ℤ) = A008599 n

theorem P9337740256108162749.correct : P9337740256108162749.Spec := by
  intro n
  simp only [A008599]

end A008599

