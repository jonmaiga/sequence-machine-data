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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A139600: Square array T(n,k) = n*(k-1)*k/2+k, of nonnegative numbers together with polygonal numbers, read by antidiagonals upwards.

The programs for A139600, the canonical program `A139600.P2385885643436997506` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139600 has offset 0).

The definition of A139600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))*(col(n)-1)*col(n)/2+col(n)` (program `A139600.P13707967228682434256`, by `A139600.P13707967228682434256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139600.P13707967228682434256

`(row(n)-col(n))*(col(n)-1)*col(n)/2+col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139600.P13707967228682434256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ)

end

end A139600.P13707967228682434256

namespace A139600

/-- `(row(n)-col(n))*(col(n)-1)*col(n)/2+col(n)` -/
def P13707967228682434256.Spec : Prop :=
  ∀ n, P13707967228682434256.a n = (A139600 n : ℚ)

theorem P13707967228682434256.correct : P13707967228682434256.Spec := by
  intro n
  simp only [A139600, Nat.add_sub_cancel, A139600.P13707967228682434256.a, A139600.P2385885643436997506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139600

/-! ## A139600.P2385885643436997506

`col(n)+(row(n)-col(n))*C(col(n), 2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139600

/-- `col(n)+(row(n)-col(n))*C(col(n), 2)` -/
def P2385885643436997506.Spec : Prop :=
  ∀ n, P2385885643436997506.a n = A139600 n

theorem P2385885643436997506.correct : P2385885643436997506.Spec := by
  intro n
  simp only [A139600]

end A139600

/-! ## A139600.P403147436126724356

`col(n)-(col(n)-row(n))*C(col(n), 2)`
-/

namespace A139600.P403147436126724356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n) 2 : ℤ)

end

end A139600.P403147436126724356

namespace A139600

/-- `col(n)-(col(n)-row(n))*C(col(n), 2)` -/
def P403147436126724356.Spec : Prop :=
  ∀ n, P403147436126724356.a n = A139600 n

end A139600

/-! ## A139600.P3248004968588172204

`A057145(n+2)-A077028(n)`
-/

namespace A139600.P3248004968588172204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A077028 n

end

end A139600.P3248004968588172204

namespace A139600

/-- `A057145(n+2)-A077028(n)` -/
def P3248004968588172204.Spec : Prop :=
  ∀ n, P3248004968588172204.a n = A139600 n

end A139600

/-! ## A139600.P6747487630700443533

`A086273(n+1)-A076110(n+1)`
-/

namespace A139600.P6747487630700443533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (n + 1) - A076110 (n + 1)

end

end A139600.P6747487630700443533

namespace A139600

/-- `A086273(n+1)-A076110(n+1)` -/
def P6747487630700443533.Spec : Prop :=
  ∀ n, P6747487630700443533.a n = A139600 n

end A139600

/-! ## A139600.P16160043942244605232

`A057145(n+2)-(A004247(n)+1)`
-/

namespace A139600.P16160043942244605232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - (A004247 n + 1)

end

end A139600.P16160043942244605232

namespace A139600

/-- `A057145(n+2)-(A004247(n)+1)` -/
def P16160043942244605232.Spec : Prop :=
  ∀ n, P16160043942244605232.a n = A139600 n

end A139600

/-! ## A139600.P4811908956301558473

`A062707(A056943(n))+A002262(n)`
-/

namespace A139600.P4811908956301558473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A056943 n).toNat + A002262 n

end

end A139600.P4811908956301558473

namespace A139600

/-- `A062707(A056943(n))+A002262(n)` -/
def P4811908956301558473.Spec : Prop :=
  ∀ n, P4811908956301558473.a n = A139600 n

end A139600

/-! ## A139600.P4977409180096048637

`A139601(n)-A161680(A002262(n))`
-/

namespace A139600.P4977409180096048637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n - A161680 (A002262 n).toNat

end

end A139600.P4977409180096048637

namespace A139600

/-- `A139601(n)-A161680(A002262(n))` -/
def P4977409180096048637.Spec : Prop :=
  ∀ n, P4977409180096048637.a n = A139600 n

end A139600

/-! ## A139600.P2892737894287532099

`A057145(n+2)-A000463(A130154(n+1))`
-/

namespace A139600.P2892737894287532099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A000463 (A130154 (n + 1)).toNat

end

end A139600.P2892737894287532099

namespace A139600

/-- `A057145(n+2)-A000463(A130154(n+1))` -/
def P2892737894287532099.Spec : Prop :=
  ∀ n, P2892737894287532099.a n = A139600 n

end A139600

/-! ## A139600.P7236982823683751560

`A077028(n)+A300401(n)-A134394(n+1)`
-/

namespace A139600.P7236982823683751560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A300401 n - A134394 (n + 1))

end

end A139600.P7236982823683751560

namespace A139600

/-- `A077028(n)+A300401(n)-A134394(n+1)` -/
def P7236982823683751560.Spec : Prop :=
  ∀ n, P7236982823683751560.a n = A139600 n

end A139600

/-! ## A139600.P1736064709850122495

`A086271(n+1)+A139601(n)-A086273(n+1)`
-/

namespace A139600.P1736064709850122495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) + (A139601 n - A086273 (n + 1))

end

end A139600.P1736064709850122495

namespace A139600

/-- `A086271(n+1)+A139601(n)-A086273(n+1)` -/
def P1736064709850122495.Spec : Prop :=
  ∀ n, P1736064709850122495.a n = A139600 n

end A139600

/-! ## A139600.P2030580411994608736

`A057145(n+2)+A002262(n)²-A076110(n+1)`
-/

namespace A139600.P2030580411994608736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + (A002262 n ^ 2 - A076110 (n + 1))

end

end A139600.P2030580411994608736

namespace A139600

/-- `A057145(n+2)+A002262(n)²-A076110(n+1)` -/
def P2030580411994608736.Spec : Prop :=
  ∀ n, P2030580411994608736.a n = A139600 n

end A139600

/-! ## A139600.P2811564802633387193

`2*A139601(n)-A139601(A007401(n+1))`
-/

namespace A139600.P2811564802633387193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139601 n - A139601 (A007401 (n + 1)).toNat

end

end A139600.P2811564802633387193

namespace A139600

/-- `2*A139601(n)-A139601(A007401(n+1))` -/
def P2811564802633387193.Spec : Prop :=
  ∀ n, P2811564802633387193.a n = A139600 n

end A139600

/-! ## A139600.P15223211519679127619

`A057145(n+2)-A026806(A287326(n))`
-/

namespace A139600.P15223211519679127619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A026806 (A287326 n).toNat

end

end A139600.P15223211519679127619

namespace A139600

/-- `A057145(n+2)-A026806(A287326(n))` -/
def P15223211519679127619.Spec : Prop :=
  ∀ n, P15223211519679127619.a n = A139600 n

end A139600

/-! ## A139600.P9723066438343996297

`A057145(n+2)-A074909(A285192(n))`
-/

namespace A139600.P9723066438343996297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A074909 (A285192 n).toNat

end

end A139600.P9723066438343996297

namespace A139600

/-- `A057145(n+2)-A074909(A285192(n))` -/
def P9723066438343996297.Spec : Prop :=
  ∀ n, P9723066438343996297.a n = A139600 n

end A139600

/-! ## A139600.P6383637957087242614

`A057145(n+2)-A057145(A285192(n)+2)`
-/

namespace A139600.P6383637957087242614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A057145 (A285192 n + 2).toNat

end

end A139600.P6383637957087242614

namespace A139600

/-- `A057145(n+2)-A057145(A285192(n)+2)` -/
def P6383637957087242614.Spec : Prop :=
  ∀ n, P6383637957087242614.a n = A139600 n

end A139600

/-!
# A139601: Square array of polygonal numbers read by ascending antidiagonals: T(n, k) = (n + 1)*(k - 1)*k/2 + k.

The programs for A139601, the canonical program `A139601.P14717086239868575484` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139601 has offset 0).

The definition of A139601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(col(n)-1)*col(n)/2+col(n)` (program `A139601.P5510625023433763536`, by `A139601.P5510625023433763536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139601.P13994695374065272464

`col(n)/2*((col(n)-1)*(row(n)-col(n)+1)+2)`
-/

namespace A139601.P13994695374065272464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) / 2 * (((SequenceMachineLib.triCol n : ℤ) - 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) + 2 : ℚ)

end

end A139601.P13994695374065272464

namespace A139601

/-- `col(n)/2*((col(n)-1)*(row(n)-col(n)+1)+2)` -/
def P13994695374065272464.Spec : Prop :=
  ∀ n, P13994695374065272464.a n = (A139601 n : ℚ)

theorem P13994695374065272464.correct : P13994695374065272464.Spec := by
  intro n
  simp only [A139601, Nat.add_sub_cancel, A139601.P13994695374065272464.a, A139601.P14717086239868575484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139601

/-! ## A139601.P5510625023433763536

`(row(n)-col(n)+1)*(col(n)-1)*col(n)/2+col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139601.P5510625023433763536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ)

end

end A139601.P5510625023433763536

namespace A139601

/-- `(row(n)-col(n)+1)*(col(n)-1)*col(n)/2+col(n)` -/
def P5510625023433763536.Spec : Prop :=
  ∀ n, P5510625023433763536.a n = (A139601 n : ℚ)

theorem P5510625023433763536.correct : P5510625023433763536.Spec := by
  intro n
  simp only [A139601, Nat.add_sub_cancel, A139601.P5510625023433763536.a, A139601.P14717086239868575484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139601

/-! ## A139601.P14717086239868575484

`(row(n)-col(n)+1)*C(col(n), 2)+col(n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139601

/-- `(row(n)-col(n)+1)*C(col(n), 2)+col(n)` -/
def P14717086239868575484.Spec : Prop :=
  ∀ n, P14717086239868575484.a n = A139601 n

theorem P14717086239868575484.correct : P14717086239868575484.Spec := by
  intro n
  simp only [A139601]

end A139601

/-! ## A139601.P11016005463994312656

`A086271(n+1)-A128139(n)`
-/

namespace A139601.P11016005463994312656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) - A128139 n

end

end A139601.P11016005463994312656

namespace A139601

/-- `A086271(n+1)-A128139(n)` -/
def P11016005463994312656.Spec : Prop :=
  ∀ n, P11016005463994312656.a n = A139601 n

theorem P11016005463994312656.correct : P11016005463994312656.Spec := by
  intro n
  simp only [A139601, Nat.add_sub_cancel, A139601.P11016005463994312656.a, A139601.P14717086239868575484.a, A086271, A086271.P16008910328647451104.a, A128139, A128139.P11791759487030447530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139601

/-! ## A139601.P5449037690679874302

`A127779(n+1)-A129312(n+1)`
-/

namespace A139601.P5449037690679874302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) - A129312 (n + 1)

end

end A139601.P5449037690679874302

namespace A139601

/-- `A127779(n+1)-A129312(n+1)` -/
def P5449037690679874302.Spec : Prop :=
  ∀ n, P5449037690679874302.a n = A139601 n

theorem P5449037690679874302.correct : P5449037690679874302.Spec := by
  intro n
  simp only [A139601, Nat.add_sub_cancel, A139601.P5449037690679874302.a, A139601.P14717086239868575484.a, A127779, A127779.P6962824600330842233.a, A129312, A129312.P198002191961826283.a, A086271, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139601

/-! ## A139601.P4620377753489103354

`A139600(n)+A303273(n)-A077028(n)`
-/

namespace A139601.P4620377753489103354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + (A303273 n - A077028 n)

end

end A139601.P4620377753489103354

namespace A139601

/-- `A139600(n)+A303273(n)-A077028(n)` -/
def P4620377753489103354.Spec : Prop :=
  ∀ n, P4620377753489103354.a n = A139601 n

end A139601

/-! ## A139601.P5195925506940920127

`A139600(comp[∑[n-1]])`
-/

namespace A139601.P5195925506940920127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A139601.P5195925506940920127

namespace A139601

/-- `A139600(comp[∑[n-1]])` -/
def P5195925506940920127.Spec : Prop :=
  ∀ n, P5195925506940920127.a n = A139601 n

end A139601

/-! ## A139601.P2972811953020204138

`A062707(A038722(n+1))+A002262(n)`
-/

namespace A139601.P2972811953020204138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A038722 (n + 1)).toNat + A002262 n

end

end A139601.P2972811953020204138

namespace A139601

/-- `A062707(A038722(n+1))+A002262(n)` -/
def P2972811953020204138.Spec : Prop :=
  ∀ n, P2972811953020204138.a n = A139601 n

end A139601

/-! ## A139601.P8906364610503763752

`A035214(n)*A139600(A007401(n+1))`
-/

namespace A139601.P8906364610503763752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A139600 (A007401 (n + 1)).toNat

end

end A139601.P8906364610503763752

namespace A139601

/-- `A035214(n)*A139600(A007401(n+1))` -/
def P8906364610503763752.Spec : Prop :=
  ∀ n, P8906364610503763752.a n = A139601 n

end A139601

/-! ## A139601.P1887959932613901329

`A139600(A007401(n+1))%A000124(n)`
-/

namespace A139601.P1887959932613901329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139600 (A007401 (n + 1)).toNat) (A000124 n)

end

end A139601.P1887959932613901329

namespace A139601

/-- `A139600(A007401(n+1))%A000124(n)` -/
def P1887959932613901329.Spec : Prop :=
  ∀ n, P1887959932613901329.a n = A139601 n

end A139601

/-! ## A139601.P17418538324389061408

`A001221(A007645(n+1))*A139600(A007401(n+1))`
-/

namespace A139601.P17418538324389061408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007645 (n + 1)).toNat * A139600 (A007401 (n + 1)).toNat

end

end A139601.P17418538324389061408

namespace A139601

/-- `A001221(A007645(n+1))*A139600(A007401(n+1))` -/
def P17418538324389061408.Spec : Prop :=
  ∀ n, P17418538324389061408.a n = A139601 n

end A139601

/-! ## A139601.P13524012700854099144

`A001221(A006512(n+1))*A139600(A007401(n+1))`
-/

namespace A139601.P13524012700854099144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006512 (n + 1)).toNat * A139600 (A007401 (n + 1)).toNat

end

end A139601.P13524012700854099144

namespace A139601

/-- `A001221(A006512(n+1))*A139600(A007401(n+1))` -/
def P13524012700854099144.Spec : Prop :=
  ∀ n, P13524012700854099144.a n = A139601 n

end A139601

/-!
# A139602: The smallest prime p that makes the pair p+/ -6n both primes while no other pair of p+/ -6k+6*n, 0<k<n both primes.

The programs for A139602, there is no canonical definition to state claims against.
-/

/-! ## A139602.P7448329407190654140

`A000040(A196934(n+1))`
-/

namespace A139602.P7448329407190654140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A196934 (n + 1)).toNat

end

end A139602.P7448329407190654140

/-! ## A139602.P7939383403122239469

`A008578(A196934(n+1)+1)`
-/

namespace A139602.P7939383403122239469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A196934 (n + 1) + 1).toNat

end

end A139602.P7939383403122239469

/-! ## A139602.P8388303300229643293

`A175787(A196934(n+1)+1)`
-/

namespace A139602.P8388303300229643293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A196934 (n + 1) + 1).toNat

end

end A139602.P8388303300229643293

/-! ## A139602.P1606648412828641160

`A045319(A196934(n+1)-1)`
-/

namespace A139602.P1606648412828641160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A196934 (n + 1) - 1).toNat

end

end A139602.P1606648412828641160

/-! ## A139602.P240632525903085693

`A045344(A196934(n+1)-1)`
-/

namespace A139602.P240632525903085693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A196934 (n + 1) - 1).toNat

end

end A139602.P240632525903085693

/-! ## A139602.P13059786294067386360

`A065091(A196934(n+1)-1)`
-/

namespace A139602.P13059786294067386360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A196934 (n + 1) - 1).toNat

end

end A139602.P13059786294067386360

/-! ## A139602.P5722989277826164436

`A161346(A196934(n+1)+2)`
-/

namespace A139602.P5722989277826164436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (A196934 (n + 1) + 2).toNat

end

end A139602.P5722989277826164436

/-! ## A139602.P5815460768451560306

`A004139(A196934(n+1)-2)`
-/

namespace A139602.P5815460768451560306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A196934 (n + 1) - 2).toNat

end

end A139602.P5815460768451560306

/-! ## A139602.P13512390877496762519

`A215848(A196934(n+1)-2)`
-/

namespace A139602.P13512390877496762519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A196934 (n + 1) - 2).toNat

end

end A139602.P13512390877496762519

/-! ## A139602.P10479906969672489734

`A073846(2*A196934(n+1))`
-/

namespace A139602.P10479906969672489734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A196934 (n + 1)).toNat

end

end A139602.P10479906969672489734

/-!
# A139606: a(n) = 15*n + 6.

The programs for A139606, the canonical program `A139606.P1530920041274023681` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139606 has offset 0).

The definition of A139606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n+6` (program `A139606.P1530920041274023681`, by `A139606.P1530920041274023681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139606.P1530920041274023681

`15*n+6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139606

/-- `15*n+6` -/
def P1530920041274023681.Spec : Prop :=
  ∀ n, (P1530920041274023681.a n : ℤ) = A139606 n

theorem P1530920041274023681.correct : P1530920041274023681.Spec := by
  intro n
  simp only [A139606]

end A139606

/-!
# A139607: a(n) = 21*n + 7.

The programs for A139607, the canonical program `A139607.P13295499326777898792` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139607 has offset 0).

The definition of A139607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*n+7` (program `A139607.P13295499326777898792`, by `A139607.P13295499326777898792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139607.P13295499326777898792

`21*n+7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139607

/-- `21*n+7` -/
def P13295499326777898792.Spec : Prop :=
  ∀ n, (P13295499326777898792.a n : ℤ) = A139607 n

theorem P13295499326777898792.correct : P13295499326777898792.Spec := by
  intro n
  simp only [A139607]

end A139607

/-!
# A139608: a(n) = 28*n + 8.

The programs for A139608, the canonical program `A139608.P8254575958050881308` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139608 has offset 0).

The definition of A139608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*n+8` (program `A139608.P8254575958050881308`, by `A139608.P8254575958050881308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139608.P8254575958050881308

`28*n+8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139608

/-- `28*n+8` -/
def P8254575958050881308.Spec : Prop :=
  ∀ n, (P8254575958050881308.a n : ℤ) = A139608 n

theorem P8254575958050881308.correct : P8254575958050881308.Spec := by
  intro n
  simp only [A139608]

end A139608

/-!
# A139609: a(n) = 36*n + 9.

The programs for A139609, the canonical program `A139609.P9444052933734431748` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139609 has offset 0).

The definition of A139609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*n+9` (program `A139609.P9444052933734431748`, by `A139609.P9444052933734431748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139609.P9444052933734431748

`36*n+9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139609

/-- `36*n+9` -/
def P9444052933734431748.Spec : Prop :=
  ∀ n, (P9444052933734431748.a n : ℤ) = A139609 n

theorem P9444052933734431748.correct : P9444052933734431748.Spec := by
  intro n
  simp only [A139609]

end A139609

/-!
# A139610: a(n) = 45*n + 10.

The programs for A139610, the canonical program `A139610.P6058302411788783885` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139610 has offset 0).

The definition of A139610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `45*n+10` (program `A139610.P6058302411788783885`, by `A139610.P6058302411788783885.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139610.P6058302411788783885

`45*n+10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139610

/-- `45*n+10` -/
def P6058302411788783885.Spec : Prop :=
  ∀ n, (P6058302411788783885.a n : ℤ) = A139610 n

theorem P6058302411788783885.correct : P6058302411788783885.Spec := by
  intro n
  simp only [A139610]

end A139610

/-!
# A139611: a(n) = 55*n + 11.

The programs for A139611, the canonical program `A139611.P3591595190001089006` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139611 has offset 0).

The definition of A139611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `55*n+11` (program `A139611.P3591595190001089006`, by `A139611.P3591595190001089006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139611.P3591595190001089006

`55*n+11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139611

/-- `55*n+11` -/
def P3591595190001089006.Spec : Prop :=
  ∀ n, (P3591595190001089006.a n : ℤ) = A139611 n

theorem P3591595190001089006.correct : P3591595190001089006.Spec := by
  intro n
  simp only [A139611]

end A139611

/-!
# A139612: a(n) = 66*n + 12.

The programs for A139612, the canonical program `A139612.P10686912881989619765` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139612 has offset 0).

The definition of A139612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `66*n+12` (program `A139612.P10686912881989619765`, by `A139612.P10686912881989619765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139612.P10686912881989619765

`66*n+12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139612

/-- `66*n+12` -/
def P10686912881989619765.Spec : Prop :=
  ∀ n, (P10686912881989619765.a n : ℤ) = A139612 n

theorem P10686912881989619765.correct : P10686912881989619765.Spec := by
  intro n
  simp only [A139612]

end A139612

/-!
# A139613: a(n) = 78*n + 13.

The programs for A139613, the canonical program `A139613.P5878513851431442439` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139613 has offset 0).

The definition of A139613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `78*n+13` (program `A139613.P5878513851431442439`, by `A139613.P5878513851431442439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139613.P5878513851431442439

`78*n+13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139613

/-- `78*n+13` -/
def P5878513851431442439.Spec : Prop :=
  ∀ n, (P5878513851431442439.a n : ℤ) = A139613 n

theorem P5878513851431442439.correct : P5878513851431442439.Spec := by
  intro n
  simp only [A139613]

end A139613

/-!
# A139614: a(n) = 91*n + 14.

The programs for A139614, the canonical program `A139614.P5734372235331300801` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139614 has offset 0).

The definition of A139614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `91*n+14` (program `A139614.P5734372235331300801`, by `A139614.P5734372235331300801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139614.P5734372235331300801

`91*n+14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139614

/-- `91*n+14` -/
def P5734372235331300801.Spec : Prop :=
  ∀ n, (P5734372235331300801.a n : ℤ) = A139614 n

theorem P5734372235331300801.correct : P5734372235331300801.Spec := by
  intro n
  simp only [A139614]

end A139614

/-!
# A139615: a(n) = 105*n + 15.

The programs for A139615, the canonical program `A139615.P8027146946817463945` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139615 has offset 0).

The definition of A139615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `105*n+15` (program `A139615.P8027146946817463945`, by `A139615.P8027146946817463945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139615.P8027146946817463945

`105*n+15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139615

/-- `105*n+15` -/
def P8027146946817463945.Spec : Prop :=
  ∀ n, (P8027146946817463945.a n : ℤ) = A139615 n

theorem P8027146946817463945.correct : P8027146946817463945.Spec := by
  intro n
  simp only [A139615]

end A139615

/-!
# A139616: a(n) = 120*n + 16.

The programs for A139616, the canonical program `A139616.P8350917539072669987` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139616 has offset 0).

The definition of A139616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `120*n+16` (program `A139616.P8350917539072669987`, by `A139616.P8350917539072669987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139616.P8350917539072669987

`120*n+16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139616

/-- `120*n+16` -/
def P8350917539072669987.Spec : Prop :=
  ∀ n, (P8350917539072669987.a n : ℤ) = A139616 n

theorem P8350917539072669987.correct : P8350917539072669987.Spec := by
  intro n
  simp only [A139616]

end A139616

/-!
# A139617: a(n) = 136*n + 17.

The programs for A139617, the canonical program `A139617.P895898327414302760` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139617 has offset 0).

The definition of A139617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `136*n+17` (program `A139617.P895898327414302760`, by `A139617.P895898327414302760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139617.P895898327414302760

`136*n+17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139617

/-- `136*n+17` -/
def P895898327414302760.Spec : Prop :=
  ∀ n, (P895898327414302760.a n : ℤ) = A139617 n

theorem P895898327414302760.correct : P895898327414302760.Spec := by
  intro n
  simp only [A139617]

end A139617

/-!
# A139618: a(n) = 153*n + 18.

The programs for A139618, the canonical program `A139618.P17232588607114063387` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139618 has offset 0).

The definition of A139618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `153*n+18` (program `A139618.P17232588607114063387`, by `A139618.P17232588607114063387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139618.P17232588607114063387

`153*n+18`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139618

/-- `153*n+18` -/
def P17232588607114063387.Spec : Prop :=
  ∀ n, (P17232588607114063387.a n : ℤ) = A139618 n

theorem P17232588607114063387.correct : P17232588607114063387.Spec := by
  intro n
  simp only [A139618]

end A139618

/-!
# A139619: a(n) = 171*n + 19.

The programs for A139619, the canonical program `A139619.P1227540199340165336` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139619 has offset 0).

The definition of A139619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `171*n+19` (program `A139619.P1227540199340165336`, by `A139619.P1227540199340165336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139619.P1227540199340165336

`171*n+19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139619

/-- `171*n+19` -/
def P1227540199340165336.Spec : Prop :=
  ∀ n, (P1227540199340165336.a n : ℤ) = A139619 n

theorem P1227540199340165336.correct : P1227540199340165336.Spec := by
  intro n
  simp only [A139619]

end A139619

/-!
# A139620: a(n) = 190*n + 20.

The programs for A139620, the canonical program `A139620.P7518449164216742625` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139620 has offset 0).

The definition of A139620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `190*n+20` (program `A139620.P7518449164216742625`, by `A139620.P7518449164216742625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139620.P7518449164216742625

`190*n+20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139620

/-- `190*n+20` -/
def P7518449164216742625.Spec : Prop :=
  ∀ n, (P7518449164216742625.a n : ℤ) = A139620 n

theorem P7518449164216742625.correct : P7518449164216742625.Spec := by
  intro n
  simp only [A139620]

end A139620

/-!
# A139622: Triangle read by rows: T(n,k) is the number of strongly connected directed multigraphs with loops, with n arcs and k vertices.

The programs for A139622, there is no canonical definition to state claims against.
-/

/-! ## A139622.P18360863633608200844

`A275314(A026758(n)!)`
-/

namespace A139622.P18360863633608200844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (Nat.factorial (A026758 n).toNat)

end

end A139622.P18360863633608200844

/-! ## A139622.P14176610437389993596

`A003035(A110470(n)+3)`
-/

namespace A139622.P14176610437389993596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003035 (A110470 n + 3).toNat

end

end A139622.P14176610437389993596

/-! ## A139622.P9500105699951096999

`A167383(11*A026758(n))`
-/

namespace A139622.P9500105699951096999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 (11 * A026758 n).toNat

end

end A139622.P9500105699951096999

/-! ## A139622.P2278208564367619748

`A167383(lcm(11, A026758(n)))`
-/

namespace A139622.P2278208564367619748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167383 (Int.lcm 11 (A026758 n))

end

end A139622.P2278208564367619748

/-! ## A139622.P4821330821115159036

`A003035(A055080(n+1)+3)`
-/

namespace A139622.P4821330821115159036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003035 (A055080 (n + 1) + 3).toNat

end

end A139622.P4821330821115159036

/-!
# A139623: Table read by rows: T(n,k) is the number of directed multigraphs with loops and no vertex of degree 0, with n arcs and k vertices, which are transitive (the existence of a path between two points implies the existence of an arc between those two points).

The programs for A139623, there is no canonical definition to state claims against.
-/

/-! ## A139623.P13775327459285151322

`or(A032766(A327615(n+1)), A054899(n))`
-/

namespace A139623.P13775327459285151322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032766 (A327615 (n + 1)).toNat) (A054899 n)

end

end A139623.P13775327459285151322

/-! ## A139623.P1755060003641897670

`or(A032766(A327615(n+1)), A059995(n))`
-/

namespace A139623.P1755060003641897670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032766 (A327615 (n + 1)).toNat) (A059995 n)

end

end A139623.P1755060003641897670

/-! ## A139623.P5448997043305584303

`or(A032766(A327615(n+1)), A084114(n+1))`
-/

namespace A139623.P5448997043305584303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032766 (A327615 (n + 1)).toNat) (A084114 (n + 1))

end

end A139623.P5448997043305584303

/-! ## A139623.P8173715145390543257

`A032766(or(A161088(n+1), A327615(n+1)))`
-/

namespace A139623.P8173715145390543257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.lor (A161088 (n + 1)) (A327615 (n + 1))).toNat

end

end A139623.P8173715145390543257

/-!
# A139626: a(n) = binomial(n+4, 4)*6^n.

The programs for A139626, the canonical program `A139626.P17761454882569050565` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139626 has offset 0).

The definition of A139626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*6^n` (program `A139626.P17761454882569050565`, by `A139626.P17761454882569050565.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139626.P15975047823457028847

`6^n*C(n+4, 4)`
-/

namespace A139626.P15975047823457028847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 4) 4

end

end A139626.P15975047823457028847

namespace A139626

/-- `6^n*C(n+4, 4)` -/
def P15975047823457028847.Spec : Prop :=
  ∀ n, (P15975047823457028847.a n : ℤ) = A139626 n

theorem P15975047823457028847.correct : P15975047823457028847.Spec := by
  intro n
  simp only [A139626, Nat.add_sub_cancel, A139626.P15975047823457028847.a, A139626.P17761454882569050565.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139626

/-! ## A139626.P17761454882569050565

`C(n+4, 4)*6^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139626

/-- `C(n+4, 4)*6^n` -/
def P17761454882569050565.Spec : Prop :=
  ∀ n, (P17761454882569050565.a n : ℤ) = A139626 n

theorem P17761454882569050565.correct : P17761454882569050565.Spec := by
  intro n
  simp only [A139626]

end A139626

/-! ## A139626.P18204651707014816669

`A000332(n+4)*A000400(n)`
-/

namespace A139626.P18204651707014816669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A000400 n

end

end A139626.P18204651707014816669

namespace A139626

/-- `A000332(n+4)*A000400(n)` -/
def P18204651707014816669.Spec : Prop :=
  ∀ n, P18204651707014816669.a n = A139626 n

theorem P18204651707014816669.correct : P18204651707014816669.Spec := by
  intro n
  simp only [A139626, Nat.add_sub_cancel, A139626.P18204651707014816669.a, A139626.P17761454882569050565.a, A000332, A000332.P5946310388023661265.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139626

/-! ## A139626.P5313600723676919599

`6^n*∑[∑[∑[n+1]]]`
-/

namespace A139626.P5313600723676919599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139626.P5313600723676919599

namespace A139626

/-- `6^n*∑[∑[∑[n+1]]]` -/
def P5313600723676919599.Spec : Prop :=
  ∀ n, (P5313600723676919599.a n : ℤ) = A139626 n

end A139626

/-! ## A139626.P12751152372260473238

`2^(n+1)*A036217(n)/2`
-/

namespace A139626.P12751152372260473238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) * A036217 n : ℚ) / 2

end

end A139626.P12751152372260473238

namespace A139626

/-- `2^(n+1)*A036217(n)/2` -/
def P12751152372260473238.Spec : Prop :=
  ∀ n, P12751152372260473238.a n = (A139626 n : ℚ)

end A139626

/-! ## A139626.P2537097174013146794

`lcm(A003472(n+4), A036217(n))`
-/

namespace A139626.P2537097174013146794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003472 (n + 4)) (A036217 n)

end

end A139626.P2537097174013146794

namespace A139626

/-- `lcm(A003472(n+4), A036217(n))` -/
def P2537097174013146794.Spec : Prop :=
  ∀ n, (P2537097174013146794.a n : ℤ) = A139626 n

end A139626

/-! ## A139626.P15102054397947331911

`A000051(n)*A036217(n)-A036217(n)`
-/

namespace A139626.P15102054397947331911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A036217 n - A036217 n

end

end A139626.P15102054397947331911

namespace A139626

/-- `A000051(n)*A036217(n)-A036217(n)` -/
def P15102054397947331911.Spec : Prop :=
  ∀ n, P15102054397947331911.a n = A139626 n

end A139626

/-! ## A139626.P7614262832475676644

`A038255(eq[4, A002262(n)])`
-/

namespace A139626.P7614262832475676644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139626.P7614262832475676644

namespace A139626

/-- `A038255(eq[4, A002262(n)])` -/
def P7614262832475676644.Spec : Prop :=
  ∀ n, P7614262832475676644.a n = A139626 n

end A139626

/-! ## A139626.P6294323470675781053

`A038255(A000124(n+4)+3)`
-/

namespace A139626.P6294323470675781053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A000124 (n + 4) + 3).toNat

end

end A139626.P6294323470675781053

namespace A139626

/-- `A038255(A000124(n+4)+3)` -/
def P6294323470675781053.Spec : Prop :=
  ∀ n, P6294323470675781053.a n = A139626 n

end A139626

/-! ## A139626.P1560639936654054381

`A038255(A000217(n+4)+4)`
-/

namespace A139626.P1560639936654054381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 (A000217 (n + 4) + 4).toNat

end

end A139626.P1560639936654054381

namespace A139626

/-- `A038255(A000217(n+4)+4)` -/
def P1560639936654054381.Spec : Prop :=
  ∀ n, P1560639936654054381.a n = A139626 n

end A139626

/-! ## A139626.P11004417669640172768

`A013613(∑[n+4]+n+6)`
-/

namespace A139626.P11004417669640172768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 6))

end

end A139626.P11004417669640172768

namespace A139626

/-- `A013613(∑[n+4]+n+6)` -/
def P11004417669640172768.Spec : Prop :=
  ∀ n, P11004417669640172768.a n = A139626 n

end A139626

/-!
# A139627: Number of strongly connected directed multigraphs with loops allowed and with n arcs.

The programs for A139627, there is no canonical definition to state claims against.
-/

/-! ## A139627.P6593808189940366999

`A143841(∑[4*n])`
-/

namespace A139627.P6593808189940366999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139627.P6593808189940366999

/-! ## A139627.P16734452403295830790

`gcd(A000038(n), A143841(A046092(n)))`
-/

namespace A139627.P16734452403295830790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143841 (A046092 n).toNat)

end

end A139627.P16734452403295830790

/-! ## A139627.P15943061172227463290

`or(A000007(n), A143841(A046092(n)))`
-/

namespace A139627.P15943061172227463290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A143841 (A046092 n).toNat)

end

end A139627.P15943061172227463290

/-! ## A139627.P15902884018312726787

`lcm(A034947(n+1), A143841(A046092(n)))`
-/

namespace A139627.P15902884018312726787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A143841 (A046092 n).toNat)

end

end A139627.P15902884018312726787

/-! ## A139627.P3975128942588479472

`A143841(A046092(n))+A008683(4*(n+1))`
-/

namespace A139627.P3975128942588479472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143841 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A139627.P3975128942588479472

/-!
# A139630: Row sums of A139625, number of strongly connected directed multigraphs with loops and no vertex of degree 0, with n arcs, which are transitive (the existence of a path between two points implies the existence of an arc between those two points).

The programs for A139630, there is no canonical definition to state claims against.
-/

/-! ## A139630.P1479295875483055071

`or(A095861(A027039(n)), A292975(n))`
-/

namespace A139630.P1479295875483055071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095861 (A027039 n).toNat) (A292975 n)

end

end A139630.P1479295875483055071

/-! ## A139630.P16834713816720255382

`A263352(2*n+2)+A054521(A319768(n))`
-/

namespace A139630.P16834713816720255382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263352 (2 * n + 2) + A054521 (A319768 n).toNat

end

end A139630.P16834713816720255382

/-! ## A139630.P4361076814275335355

`A263352(2*n+2)+A180466(A201496(n+1))`
-/

namespace A139630.P4361076814275335355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263352 (2 * n + 2) + A180466 (A201496 (n + 1)).toNat

end

end A139630.P4361076814275335355

/-! ## A139630.P3005804252027395769

`A263352(2*(n+1))+A028920(A247726(2*n+1))`
-/

namespace A139630.P3005804252027395769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263352 (2 * (n + 1)) + A028920 (A247726 (2 * n + 1)).toNat

end

end A139630.P3005804252027395769

/-!
# A139631: Expansion of chi(x^5) / chi(-x^2) in powers of x where chi() is a Ramanujan theta function.

The programs for A139631, there is no canonical definition to state claims against.
-/

/-! ## A139631.P1732072650054466786

`A139632(2*n)`
-/

namespace A139631.P1732072650054466786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139632 (2 * n)

end

end A139631.P1732072650054466786

/-! ## A139631.P10881605161552621469

`abs(A145706(n))`
-/

namespace A139631.P10881605161552621469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145706 n|

end

end A139631.P10881605161552621469

/-! ## A139631.P16248558131620592355

`A033999(n)*A145706(n)`
-/

namespace A139631.P16248558131620592355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145706 n

end

end A139631.P16248558131620592355

/-! ## A139631.P12308315851692164975

`gcd(A000038(n), A145706(n))`
-/

namespace A139631.P12308315851692164975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145706 n)

end

end A139631.P12308315851692164975

/-! ## A139631.P12728351695351027153

`lcm(A020985(n), A145706(n))`
-/

namespace A139631.P12728351695351027153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145706 n)

end

end A139631.P12728351695351027153

/-! ## A139631.P14801881288610877897

`A145702(2*n)`
-/

namespace A139631.P14801881288610877897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145702 (2 * n)

end

end A139631.P14801881288610877897

/-! ## A139631.P18036307826278944947

`abs(A145704(2*n))`
-/

namespace A139631.P18036307826278944947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145704 (2 * n)|

end

end A139631.P18036307826278944947

/-! ## A139631.P3351211333743802599

`abs(A145705(2*n))`
-/

namespace A139631.P3351211333743802599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145705 (2 * n)|

end

end A139631.P3351211333743802599

/-! ## A139631.P1888493316934335099

`A033999(n)*A145704(2*n)`
-/

namespace A139631.P1888493316934335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145704 (2 * n)

end

end A139631.P1888493316934335099

/-! ## A139631.P14200277569897924794

`A033999(n)*A145705(2*n)`
-/

namespace A139631.P14200277569897924794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145705 (2 * n)

end

end A139631.P14200277569897924794

/-! ## A139631.P4841869154437509850

`lcm(A057077(n), A145705(2*n))`
-/

namespace A139631.P4841869154437509850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A145705 (2 * n))

end

end A139631.P4841869154437509850

/-! ## A139631.P6888525418837197323

`lcm(A065357(n), A145704(2*n))`
-/

namespace A139631.P6888525418837197323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A145704 (2 * n))

end

end A139631.P6888525418837197323

/-! ## A139631.P14083895573827508430

`A057077(2*n)*A145704(2*n)`
-/

namespace A139631.P14083895573827508430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A145704 (2 * n)

end

end A139631.P14083895573827508430

/-! ## A139631.P9969226949918142572

`A057077(2*n)*A145705(2*n)`
-/

namespace A139631.P9969226949918142572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A145705 (2 * n)

end

end A139631.P9969226949918142572

/-! ## A139631.P6371692847054189907

`A087960(2*n)*A145704(2*n)`
-/

namespace A139631.P6371692847054189907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A145704 (2 * n)

end

end A139631.P6371692847054189907

/-! ## A139631.P10311702048893638608

`A087960(2*n)*A145705(2*n)`
-/

namespace A139631.P10311702048893638608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A145705 (2 * n)

end

end A139631.P10311702048893638608

/-! ## A139631.P15378991868605387082

`gcd(A145704(2*n), A145705(2*n))`
-/

namespace A139631.P15378991868605387082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145704 (2 * n)) (A145705 (2 * n))

end

end A139631.P15378991868605387082

/-! ## A139631.P14483436255111620114

`A034947(2*n+1)*A145704(2*n)`
-/

namespace A139631.P14483436255111620114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A145704 (2 * n)

end

end A139631.P14483436255111620114

/-!
# A139632: Expansion of chi(q) * chi(-q^5) in powers of q where chi() is a Ramanujan theta function.

The programs for A139632, there is no canonical definition to state claims against.
-/

/-! ## A139632.P9357264327994860100

`(-1)^floor((n+1)/2)*A145705(n)`
-/

namespace A139632.P9357264327994860100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A145705 n : ℚ)

end

end A139632.P9357264327994860100

/-! ## A139632.P7351144021883385372

`abs(A145702(n))`
-/

namespace A139632.P7351144021883385372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145702 n|

end

end A139632.P7351144021883385372

/-! ## A139632.P17523620903139018792

`A033999(n)*A145702(n)`
-/

namespace A139632.P17523620903139018792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145702 n

end

end A139632.P17523620903139018792

/-! ## A139632.P15914327042133712232

`gcd(A000038(n), A145702(n))`
-/

namespace A139632.P15914327042133712232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145702 n)

end

end A139632.P15914327042133712232

/-! ## A139632.P5164865162012453453

`lcm(A020985(n), A145702(n))`
-/

namespace A139632.P5164865162012453453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145702 n)

end

end A139632.P5164865162012453453

/-! ## A139632.P17584627048247087111

`A145702(n)/A057077(A057077(n)+n)`
-/

namespace A139632.P17584627048247087111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145702 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A139632.P17584627048247087111

/-! ## A139632.P16480116180416471282

`A057077(2*n)*A145702(n)`
-/

namespace A139632.P16480116180416471282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A145702 n

end

end A139632.P16480116180416471282

/-! ## A139632.P11277191342417856660

`A087960(2*n)*A145702(n)`
-/

namespace A139632.P11277191342417856660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A145702 n

end

end A139632.P11277191342417856660

/-! ## A139632.P8006439339623205750

`abs(A145704(n))`
-/

namespace A139632.P8006439339623205750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145704 n|

end

end A139632.P8006439339623205750

/-! ## A139632.P15852236082208830868

`abs(A145705(n))`
-/

namespace A139632.P15852236082208830868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145705 n|

end

end A139632.P15852236082208830868

/-! ## A139632.P6929296974345441964

`A057077(n)*A145704(n)`
-/

namespace A139632.P6929296974345441964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A145704 n

end

end A139632.P6929296974345441964

/-! ## A139632.P15609429858259898657

`gcd(A145704(n), A145705(n))`
-/

namespace A139632.P15609429858259898657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145704 n) (A145705 n)

end

end A139632.P15609429858259898657

/-! ## A139632.P13493137321598010955

`lcm(A033999(n), A145704(n))`
-/

namespace A139632.P13493137321598010955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A145704 n)

end

end A139632.P13493137321598010955

/-! ## A139632.P7629260101394808494

`lcm(A057077(n), A145705(n))`
-/

namespace A139632.P7629260101394808494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A145705 n)

end

end A139632.P7629260101394808494

/-! ## A139632.P17210992164466903698

`A033999(A110654(n+3))*A145704(n)`
-/

namespace A139632.P17210992164466903698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A110654 (n + 3)).toNat * A145704 n

end

end A139632.P17210992164466903698

/-! ## A139632.P544235226705641532

`A033999(n)*A033999(A110654(n))*A145704(n)`
-/

namespace A139632.P544235226705641532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A033999 (A110654 n).toNat * A145704 n

end

end A139632.P544235226705641532

/-! ## A139632.P16165333753196747640

`A145702(n)/A087960(n²)`
-/

namespace A139632.P16165333753196747640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145702 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A139632.P16165333753196747640

/-!
# A139633: Triangle read by rows: binomial transform of a diagonalized matrix of A026741.

The programs for A139633, the canonical program `A139633.P14427635210752987056` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139633 has offset 1).

The definition of A139633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139633.P10741131710628804131

`A103406(n)/(char[comp[n²]+n]+1)`
-/

namespace A139633.P10741131710628804131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A139633.P10741131710628804131

namespace A139633

/-- `A103406(n)/(char[comp[n²]+n]+1)` -/
def P10741131710628804131.Spec : Prop :=
  ∀ n, P10741131710628804131.a n = (A139633 (n + 1) : ℚ)

end A139633

/-! ## A139633.P6792730384495608111

`A141611(n)/A104567(n+1)`
-/

namespace A139633.P6792730384495608111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A104567 (n + 1) : ℚ)

end

end A139633.P6792730384495608111

namespace A139633

/-- `A141611(n)/A104567(n+1)` -/
def P6792730384495608111.Spec : Prop :=
  ∀ n, P6792730384495608111.a n = (A139633 (n + 1) : ℚ)

end A139633

/-! ## A139633.P14427635210752987056

`gcd(A103406(n), A124847(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139633

/-- `gcd(A103406(n), A124847(n+1))` -/
def P14427635210752987056.Spec : Prop :=
  ∀ n, (P14427635210752987056.a n : ℤ) = A139633 (n + 1)

theorem P14427635210752987056.correct : P14427635210752987056.Spec := by
  intro n
  simp only [A139633, Nat.add_sub_cancel]

end A139633

/-! ## A139633.P10771827381606563191

`lcm(A028326(n), A103406(n))/2`
-/

namespace A139633.P10771827381606563191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A028326 n) (A103406 n) : ℚ) / 2

end

end A139633.P10771827381606563191

namespace A139633

/-- `lcm(A028326(n), A103406(n))/2` -/
def P10771827381606563191.Spec : Prop :=
  ∀ n, P10771827381606563191.a n = (A139633 (n + 1) : ℚ)

end A139633

/-! ## A139633.P15897153702963875660

`A007318(n)/2*lcm(2, A002260(n+1))`
-/

namespace A139633.P15897153702963875660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / 2 * (Int.lcm 2 (A002260 (n + 1)) : ℚ)

end

end A139633.P15897153702963875660

namespace A139633

/-- `A007318(n)/2*lcm(2, A002260(n+1))` -/
def P15897153702963875660.Spec : Prop :=
  ∀ n, P15897153702963875660.a n = (A139633 (n + 1) : ℚ)

end A139633

/-! ## A139633.P14398909715539271175

`A007318(n)*A026741(A002260(n+1))`
-/

namespace A139633.P14398909715539271175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026741 (A002260 (n + 1)).toNat

end

end A139633.P14398909715539271175

namespace A139633

/-- `A007318(n)*A026741(A002260(n+1))` -/
def P14398909715539271175.Spec : Prop :=
  ∀ n, P14398909715539271175.a n = A139633 (n + 1)

end A139633

/-! ## A139633.P7978073858651638356

`A007318(n)*A026741(A002262(n)+1)`
-/

namespace A139633.P7978073858651638356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026741 (A002262 n + 1).toNat

end

end A139633.P7978073858651638356

namespace A139633

/-- `A007318(n)*A026741(A002262(n)+1)` -/
def P7978073858651638356.Spec : Prop :=
  ∀ n, P7978073858651638356.a n = A139633 (n + 1)

end A139633

/-! ## A139633.P3036219321375665142

`A026741(A002260(n+1))*A026741(A028326(n))`
-/

namespace A139633.P3036219321375665142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002260 (n + 1)).toNat * A026741 (A028326 n).toNat

end

end A139633.P3036219321375665142

namespace A139633

/-- `A026741(A002260(n+1))*A026741(A028326(n))` -/
def P3036219321375665142.Spec : Prop :=
  ∀ n, P3036219321375665142.a n = A139633 (n + 1)

end A139633

/-! ## A139633.P3335757318042588073

`lcm(A007318(n), A026741(A103406(n)))`
-/

namespace A139633.P3335757318042588073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A026741 (A103406 n).toNat)

end

end A139633.P3335757318042588073

namespace A139633

/-- `lcm(A007318(n), A026741(A103406(n)))` -/
def P3335757318042588073.Spec : Prop :=
  ∀ n, (P3335757318042588073.a n : ℤ) = A139633 (n + 1)

end A139633

/-! ## A139633.P4825903479295465883

`A007318(n)*A007735(A043569(n+1))`
-/

namespace A139633.P4825903479295465883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007735 (A043569 (n + 1)).toNat

end

end A139633.P4825903479295465883

namespace A139633

/-- `A007318(n)*A007735(A043569(n+1))` -/
def P4825903479295465883.Spec : Prop :=
  ∀ n, P4825903479295465883.a n = A139633 (n + 1)

end A139633

/-!
# A139634: a(n) = 10*2^(n-1) - 9.

The programs for A139634, the canonical program `A139634.P2304444689878185334` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139634 has offset 1).

The definition of A139634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*2^n-9` (program `A139634.P2304444689878185334`, by `A139634.P2304444689878185334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139634.P2304444689878185334

`10*2^n-9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139634

/-- `10*2^n-9` -/
def P2304444689878185334.Spec : Prop :=
  ∀ n, P2304444689878185334.a n = A139634 (n + 1)

theorem P2304444689878185334.correct : P2304444689878185334.Spec := by
  intro n
  simp only [A139634, Nat.add_sub_cancel]

end A139634

/-! ## A139634.P15828910065947937057

`ogf((1+8x)/(1-3x+2x^2))`
-/

namespace A139634.P15828910065947937057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -3, 2] n

end

end A139634.P15828910065947937057

namespace A139634

/-- `ogf((1+8x)/(1-3x+2x^2))` -/
def P15828910065947937057.Spec : Prop :=
  ∀ n, P15828910065947937057.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P3195056319416332986

`∑[2*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A139634.P3195056319416332986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P3195056319416332986

namespace A139634

/-- `∑[2*a(n-1)]` -/
def P3195056319416332986.Spec : Prop :=
  ∀ n, (P3195056319416332986.a n : ℤ) = A139634 (n + 1)

end A139634

/-! ## A139634.P12086488258550129111

`2*(a(n-1)+9/2)` with `a(0)=1`
-/

namespace A139634.P12086488258550129111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (9 : ℚ) / 2)

end

end A139634.P12086488258550129111

namespace A139634

/-- `2*(a(n-1)+9/2)` -/
def P12086488258550129111.Spec : Prop :=
  ∀ n, P12086488258550129111.a n = (A139634 (n + 1) : ℚ)

theorem P12086488258550129111.correct : P12086488258550129111.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139634, Nat.add_sub_cancel, A139634.P12086488258550129111.a, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139634, Nat.add_sub_cancel, A139634.P12086488258550129111.a, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139634

/-! ## A139634.P7091551545400295502

`or(1, 2*(a(n-1)+4))` with `a(0)=1`
-/

namespace A139634.P7091551545400295502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * (a (n - 1) + 4))

end

end A139634.P7091551545400295502

namespace A139634

/-- `or(1, 2*(a(n-1)+4))` -/
def P7091551545400295502.Spec : Prop :=
  ∀ n, (P7091551545400295502.a n : ℤ) = A139634 (n + 1)

end A139634

/-! ## A139634.P2328285086117665201

`xor(1, 2*(a(n-1)+4))` with `a(0)=1`
-/

namespace A139634.P2328285086117665201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * (a (n - 1) + 4))

end

end A139634.P2328285086117665201

namespace A139634

/-- `xor(1, 2*(a(n-1)+4))` -/
def P2328285086117665201.Spec : Prop :=
  ∀ n, (P2328285086117665201.a n : ℤ) = A139634 (n + 1)

end A139634

/-! ## A139634.P10653200380156259669

`∑[2^n*5%(4*(n+1))]`
-/

namespace A139634.P10653200380156259669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (5 % (4 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P10653200380156259669

namespace A139634

/-- `∑[2^n*5%(4*(n+1))]` -/
def P10653200380156259669.Spec : Prop :=
  ∀ n, (P10653200380156259669.a n : ℤ) = A139634 (n + 1)

end A139634

/-! ## A139634.P14394241739988435796

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A139634.P14394241739988435796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P14394241739988435796

namespace A139634

/-- `∑[a(n-1)+a(n-1)]` -/
def P14394241739988435796.Spec : Prop :=
  ∀ n, (P14394241739988435796.a n : ℤ) = A139634 (n + 1)

end A139634

/-! ## A139634.P14740762362951646642

`2*(5-(1/2-a(n-1)))` with `a(0)=1`
-/

namespace A139634.P14740762362951646642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A139634.P14740762362951646642

namespace A139634

/-- `2*(5-(1/2-a(n-1)))` -/
def P14740762362951646642.Spec : Prop :=
  ∀ n, P14740762362951646642.a n = (A139634 (n + 1) : ℚ)

theorem P14740762362951646642.correct : P14740762362951646642.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139634, Nat.add_sub_cancel, A139634.P14740762362951646642.a, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139634, Nat.add_sub_cancel, A139634.P14740762362951646642.a, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139634

/-! ## A139634.P17949495497263453131

`floor(a(n-1)+a(n-1)+9)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A139634.P17949495497263453131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 9)

end

end A139634.P17949495497263453131

namespace A139634

/-- `floor(a(n-1)+a(n-1)+9)` -/
def P17949495497263453131.Spec : Prop :=
  ∀ n, (P17949495497263453131.a n : ℤ) = A139634 (n + 1)

theorem P17949495497263453131.correct : P17949495497263453131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139634, Nat.add_sub_cancel, A139634.P17949495497263453131.a, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139634, Nat.add_sub_cancel, A139634.P17949495497263453131.a, A139634.P2304444689878185334.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139634

/-! ## A139634.P5355950071259833768

`∑[lcm(5, 2*a((2*n)%(n+1)))]` with `a(0)=1`
-/

namespace A139634.P5355950071259833768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 5 (2 * f1 (2 * n % (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P5355950071259833768

namespace A139634

/-- `∑[lcm(5, 2*a((2*n)%(n+1)))]` -/
def P5355950071259833768.Spec : Prop :=
  ∀ n, (P5355950071259833768.a n : ℤ) = A139634 (n + 1)

end A139634

/-! ## A139634.P5093134910479428681

`abs(Δ[A145593(n+1)])`
-/

namespace A139634.P5093134910479428681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A139634.P5093134910479428681

namespace A139634

/-- `abs(Δ[A145593(n+1)])` -/
def P5093134910479428681.Spec : Prop :=
  ∀ n, P5093134910479428681.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P1814918162839961426

`∑[A000079(n)*A272007(2*n)]`
-/

namespace A139634.P1814918162839961426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A272007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P1814918162839961426

namespace A139634

/-- `∑[A000079(n)*A272007(2*n)]` -/
def P1814918162839961426.Spec : Prop :=
  ∀ n, P1814918162839961426.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P7230032723301155866

`∑[A063759(n)²+A131572(n)²]`
-/

namespace A139634.P7230032723301155866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n ^ 2 + A131572 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P7230032723301155866

namespace A139634

/-- `∑[A063759(n)²+A131572(n)²]` -/
def P7230032723301155866.Spec : Prop :=
  ∀ n, P7230032723301155866.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P1688968058336853487

`(A139700(n+1)+2)/3`
-/

namespace A139634.P1688968058336853487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139700 (n + 1) + 2 : ℚ) / 3

end

end A139634.P1688968058336853487

namespace A139634

/-- `(A139700(n+1)+2)/3` -/
def P1688968058336853487.Spec : Prop :=
  ∀ n, P1688968058336853487.a n = (A139634 (n + 1) : ℚ)

theorem P1688968058336853487.correct : P1688968058336853487.Spec := by
  intro n
  simp only [A139634, Nat.add_sub_cancel, A139634.P1688968058336853487.a, A139634.P2304444689878185334.a, A139700, A139700.P14305388242412979496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139634

/-! ## A139634.P16328082288979501137

`A304517(n+1)%A086225(n)`
-/

namespace A139634.P16328082288979501137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304517 (n + 1)) (A086225 n)

end

end A139634.P16328082288979501137

namespace A139634

/-- `A304517(n+1)%A086225(n)` -/
def P16328082288979501137.Spec : Prop :=
  ∀ n, P16328082288979501137.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P11069743110067639566

`A250653(n+1)%A083683(n)`
-/

namespace A139634.P11069743110067639566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250653 (n + 1)) (A083683 n)

end

end A139634.P11069743110067639566

namespace A139634

/-- `A250653(n+1)%A083683(n)` -/
def P11069743110067639566.Spec : Prop :=
  ∀ n, P11069743110067639566.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P14262221534611604295

`A305064(n)%A304517(n+1)`
-/

namespace A139634.P14262221534611604295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305064 n) (A304517 (n + 1))

end

end A139634.P14262221534611604295

namespace A139634

/-- `A305064(n)%A304517(n+1)` -/
def P14262221534611604295.Spec : Prop :=
  ∀ n, P14262221534611604295.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P3656174940555143542

`A304385(n+1)%A198275(n)`
-/

namespace A139634.P3656174940555143542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304385 (n + 1)) (A198275 n)

end

end A139634.P3656174940555143542

namespace A139634

/-- `A304385(n+1)%A198275(n)` -/
def P3656174940555143542.Spec : Prop :=
  ∀ n, P3656174940555143542.a n = A139634 (n + 1)

end A139634

/-! ## A139634.P3001807658861466154

`∑[and(A020714(n), A198275(2*(n+1)))]`
-/

namespace A139634.P3001807658861466154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020714 n) (A198275 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139634.P3001807658861466154

namespace A139634

/-- `∑[and(A020714(n), A198275(2*(n+1)))]` -/
def P3001807658861466154.Spec : Prop :=
  ∀ n, P3001807658861466154.a n = A139634 (n + 1)

end A139634

/-!
# A139635: Binomial transform of [1, 11, 11, 11, ...].

The programs for A139635, the canonical program `A139635.P9209159401882610777` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139635 has offset 1).

The definition of A139635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139635.P9209159401882610777

`11*2^n-10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139635

/-- `11*2^n-10` -/
def P9209159401882610777.Spec : Prop :=
  ∀ n, P9209159401882610777.a n = A139635 (n + 1)

theorem P9209159401882610777.correct : P9209159401882610777.Spec := by
  intro n
  simp only [A139635, Nat.add_sub_cancel]

end A139635

/-! ## A139635.P9421352215231574096

`ogf((1+9x)/(1-3x+2x^2))`
-/

namespace A139635.P9421352215231574096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -3, 2] n

end

end A139635.P9421352215231574096

namespace A139635

/-- `ogf((1+9x)/(1-3x+2x^2))` -/
def P9421352215231574096.Spec : Prop :=
  ∀ n, P9421352215231574096.a n = A139635 (n + 1)

end A139635

/-! ## A139635.P17789802341764700527

`2*(a(n-1)+5)` with `a(0)=1`
-/

namespace A139635.P17789802341764700527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 5)

end

end A139635.P17789802341764700527

namespace A139635

/-- `2*(a(n-1)+5)` -/
def P17789802341764700527.Spec : Prop :=
  ∀ n, (P17789802341764700527.a n : ℤ) = A139635 (n + 1)

theorem P17789802341764700527.correct : P17789802341764700527.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P17789802341764700527.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P17789802341764700527.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P3192819590333319679

`∑[2*a(n-1)]` with `a(0)=1, a(1)=11`
-/

namespace A139635.P3192819590333319679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139635.P3192819590333319679

namespace A139635

/-- `∑[2*a(n-1)]` -/
def P3192819590333319679.Spec : Prop :=
  ∀ n, (P3192819590333319679.a n : ℤ) = A139635 (n + 1)

end A139635

/-! ## A139635.P5325167111367963327

`2*(5-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A139635.P5325167111367963327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 - (-a (n - 1)))

end

end A139635.P5325167111367963327

namespace A139635

/-- `2*(5-floor(-a(n-1)))` -/
def P5325167111367963327.Spec : Prop :=
  ∀ n, P5325167111367963327.a n = A139635 (n + 1)

theorem P5325167111367963327.correct : P5325167111367963327.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P5325167111367963327.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P5325167111367963327.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P2256779952254723748

`2*(5-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A139635.P2256779952254723748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 - (-a (n - 1)))

end

end A139635.P2256779952254723748

namespace A139635

/-- `2*(5-ceil(-a(n-1)))` -/
def P2256779952254723748.Spec : Prop :=
  ∀ n, P2256779952254723748.a n = A139635 (n + 1)

theorem P2256779952254723748.correct : P2256779952254723748.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P2256779952254723748.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P2256779952254723748.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P8713140696730361957

`2*(5-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A139635.P8713140696730361957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 - (-a (n - 1)))

end

end A139635.P8713140696730361957

namespace A139635

/-- `2*(5-round(-a(n-1)))` -/
def P8713140696730361957.Spec : Prop :=
  ∀ n, P8713140696730361957.a n = A139635 (n + 1)

theorem P8713140696730361957.correct : P8713140696730361957.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P8713140696730361957.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P8713140696730361957.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P1365290067387612181

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=11`
-/

namespace A139635.P1365290067387612181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139635.P1365290067387612181

namespace A139635

/-- `∑[a(n-1)+a(n-1)]` -/
def P1365290067387612181.Spec : Prop :=
  ∀ n, (P1365290067387612181.a n : ℤ) = A139635 (n + 1)

end A139635

/-! ## A139635.P10722135920442392243

`(a(n-1)+5)/(1-1/2)` with `a(0)=1`
-/

namespace A139635.P10722135920442392243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 5) / (1 - (1 : ℚ) / 2)

end

end A139635.P10722135920442392243

namespace A139635

/-- `(a(n-1)+5)/(1-1/2)` -/
def P10722135920442392243.Spec : Prop :=
  ∀ n, P10722135920442392243.a n = (A139635 (n + 1) : ℚ)

theorem P10722135920442392243.correct : P10722135920442392243.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P10722135920442392243.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P10722135920442392243.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P4626771350552869125

`4*(3-(1-a(n-1))/2)` with `a(0)=1`
-/

namespace A139635.P4626771350552869125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (3 - (1 - a (n - 1)) / 2)

end

end A139635.P4626771350552869125

namespace A139635

/-- `4*(3-(1-a(n-1))/2)` -/
def P4626771350552869125.Spec : Prop :=
  ∀ n, P4626771350552869125.a n = (A139635 (n + 1) : ℚ)

theorem P4626771350552869125.correct : P4626771350552869125.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P4626771350552869125.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P4626771350552869125.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P13700456536972280848

`floor(a(n-1)+a(n-1)+10)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A139635.P13700456536972280848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 10)

end

end A139635.P13700456536972280848

namespace A139635

/-- `floor(a(n-1)+a(n-1)+10)` -/
def P13700456536972280848.Spec : Prop :=
  ∀ n, (P13700456536972280848.a n : ℤ) = A139635 (n + 1)

theorem P13700456536972280848.correct : P13700456536972280848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P13700456536972280848.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P13700456536972280848.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P10147199042943087848

`2*(2*a(n-1)-(a(n-1)-5))` with `a(0)=1`
-/

namespace A139635.P10147199042943087848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 1) - 5))

end

end A139635.P10147199042943087848

namespace A139635

/-- `2*(2*a(n-1)-(a(n-1)-5))` -/
def P10147199042943087848.Spec : Prop :=
  ∀ n, P10147199042943087848.a n = A139635 (n + 1)

theorem P10147199042943087848.correct : P10147199042943087848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139635, Nat.add_sub_cancel, A139635.P10147199042943087848.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139635, Nat.add_sub_cancel, A139635.P10147199042943087848.a, A139635.P9209159401882610777.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139635

/-! ## A139635.P16613334543786644917

`5*(2*a((2*n)%(n+1))/5+2)` with `a(0)=1`
-/

namespace A139635.P16613334543786644917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * (2 * a (2 * n % (n + 1)) / 5 + 2)

end

end A139635.P16613334543786644917

namespace A139635

/-- `5*(2*a((2*n)%(n+1))/5+2)` -/
def P16613334543786644917.Spec : Prop :=
  ∀ n, P16613334543786644917.a n = (A139635 (n + 1) : ℚ)

end A139635

/-! ## A139635.P5716951335865004155

`A182462(n)%A110288(n)`
-/

namespace A139635.P5716951335865004155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182462 n) (A110288 n)

end

end A139635.P5716951335865004155

namespace A139635

/-- `A182462(n)%A110288(n)` -/
def P5716951335865004155.Spec : Prop :=
  ∀ n, P5716951335865004155.a n = A139635 (n + 1)

end A139635

/-! ## A139635.P13480334604222291237

`A304517(n+1)%A171389(n)`
-/

namespace A139635.P13480334604222291237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304517 (n + 1)) (A171389 n)

end

end A139635.P13480334604222291237

namespace A139635

/-- `A304517(n+1)%A171389(n)` -/
def P13480334604222291237.Spec : Prop :=
  ∀ n, P13480334604222291237.a n = A139635 (n + 1)

end A139635

/-! ## A139635.P16167364648221960916

`(A265207(2*(n+1))-A007283(n+1))/2`
-/

namespace A139635.P16167364648221960916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265207 (2 * (n + 1)) - A007283 (n + 1) : ℚ) / 2

end

end A139635.P16167364648221960916

namespace A139635

/-- `(A265207(2*(n+1))-A007283(n+1))/2` -/
def P16167364648221960916.Spec : Prop :=
  ∀ n, P16167364648221960916.a n = (A139635 (n + 1) : ℚ)

end A139635

/-!
# A139636: If n = the k-th prime, then a(n) = the (k+1)th prime. If n = the k-th composite, then a(n) = the (k+1)th composite.

The programs for A139636, the canonical program `A139636.P15944924081291007344` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139636 has offset 2).

The definition of A139636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139636.P15392795872980016800

`A236675(A236675(n+2))`
-/

namespace A139636.P15392795872980016800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236675 (A236675 (n + 2)).toNat

end

end A139636.P15392795872980016800

namespace A139636

/-- `A236675(A236675(n+2))` -/
def P15392795872980016800.Spec : Prop :=
  ∀ n, P15392795872980016800.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P6281920554432868154

`A067747(A066250(n+1)+2)`
-/

namespace A139636.P6281920554432868154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A066250 (n + 1) + 2).toNat

end

end A139636.P6281920554432868154

namespace A139636

/-- `A067747(A066250(n+1)+2)` -/
def P6281920554432868154.Spec : Prop :=
  ∀ n, P6281920554432868154.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P9238888535960670047

`A067747(A073898(n+2)+1)`
-/

namespace A139636.P9238888535960670047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A073898 (n + 2) + 1).toNat

end

end A139636.P9238888535960670047

namespace A139636

/-- `A067747(A073898(n+2)+1)` -/
def P9238888535960670047.Spec : Prop :=
  ∀ n, P9238888535960670047.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P18047148007088179842

`A129131(A066248(n+1)+2)`
-/

namespace A139636.P18047148007088179842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A066248 (n + 1) + 2).toNat

end

end A139636.P18047148007088179842

namespace A139636

/-- `A129131(A066248(n+1)+2)` -/
def P18047148007088179842.Spec : Prop :=
  ∀ n, P18047148007088179842.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P9542141962491907804

`A073846(A066250(n+1)+3)`
-/

namespace A139636.P9542141962491907804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A066250 (n + 1) + 3).toNat

end

end A139636.P9542141962491907804

namespace A139636

/-- `A073846(A066250(n+1)+3)` -/
def P9542141962491907804.Spec : Prop :=
  ∀ n, P9542141962491907804.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P15944924081291007344

`A073846(A073898(n+2)+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139636

/-- `A073846(A073898(n+2)+2)` -/
def P15944924081291007344.Spec : Prop :=
  ∀ n, P15944924081291007344.a n = A139636 (n + 2)

theorem P15944924081291007344.correct : P15944924081291007344.Spec := by
  intro n
  simp only [A139636, Nat.add_sub_cancel]

end A139636

/-! ## A139636.P5093454520685615040

`A067747(abs(xor(1, -A066248(n+1)))+2)`
-/

namespace A139636.P5093454520685615040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (|Int.xor 1 (-A066248 (n + 1))| + 2).toNat

end

end A139636.P5093454520685615040

namespace A139636

/-- `A067747(abs(xor(1, -A066248(n+1)))+2)` -/
def P5093454520685615040.Spec : Prop :=
  ∀ n, P5093454520685615040.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P3290485602657774250

`A073846(abs(xor(1, -A066248(n+1)))+3)`
-/

namespace A139636.P3290485602657774250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (|Int.xor 1 (-A066248 (n + 1))| + 3).toNat

end

end A139636.P3290485602657774250

namespace A139636

/-- `A073846(abs(xor(1, -A066248(n+1)))+3)` -/
def P3290485602657774250.Spec : Prop :=
  ∀ n, P3290485602657774250.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P13873642843837567311

`A073846(A010051(n+2)+2*A026233(n+2)+1)`
-/

namespace A139636.P13873642843837567311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A010051 (n + 2) + 2 * A026233 (n + 2) + 1).toNat

end

end A139636.P13873642843837567311

namespace A139636

/-- `A073846(A010051(n+2)+2*A026233(n+2)+1)` -/
def P13873642843837567311.Spec : Prop :=
  ∀ n, P13873642843837567311.a n = A139636 (n + 2)

end A139636

/-! ## A139636.P17946075217112516198

`A067747(2*A066136(n+2)-A010051(n+2)+2)`
-/

namespace A139636.P17946075217112516198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A066136 (n + 2) - A010051 (n + 2) + 2).toNat

end

end A139636.P17946075217112516198

namespace A139636

/-- `A067747(2*A066136(n+2)-A010051(n+2)+2)` -/
def P17946075217112516198.Spec : Prop :=
  ∀ n, P17946075217112516198.a n = A139636 (n + 2)

end A139636

/-!
# A139639: Numbers n such that 168n+31 is prime.

The programs for A139639, the canonical program `A139639.P8647594145252721171` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139639 has offset 1).

The definition of A139639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139639.P391328730265568528

`(A137658(n+1)-1)/7`
-/

namespace A139639.P391328730265568528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137658 (n + 1) - 1 : ℚ) / 7

end

end A139639.P391328730265568528

namespace A139639

/-- `(A137658(n+1)-1)/7` -/
def P391328730265568528.Spec : Prop :=
  ∀ n, P391328730265568528.a n = (A139639 (n + 1) : ℚ)

end A139639

/-! ## A139639.P13306081010369460100

`(A137659(n+1)-1)/24`
-/

namespace A139639.P13306081010369460100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137659 (n + 1) - 1 : ℚ) / 24

end

end A139639.P13306081010369460100

namespace A139639

/-- `(A137659(n+1)-1)/24` -/
def P13306081010369460100.Spec : Prop :=
  ∀ n, P13306081010369460100.a n = (A139639 (n + 1) : ℚ)

end A139639

/-! ## A139639.P5172594937212436075

`(A137657(n+1)-31)/168`
-/

namespace A139639.P5172594937212436075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137657 (n + 1) - 31 : ℚ) / 168

end

end A139639.P5172594937212436075

namespace A139639

/-- `(A137657(n+1)-31)/168` -/
def P5172594937212436075.Spec : Prop :=
  ∀ n, P5172594937212436075.a n = (A139639 (n + 1) : ℚ)

end A139639

/-! ## A139639.P8647594145252721171

`floor(floor(p?[12*14*n+31]/24)/7)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139639

/-- `floor(floor(p?[12*14*n+31]/24)/7)` -/
def P8647594145252721171.Spec : Prop :=
  ∀ n, P8647594145252721171.a n = A139639 (n + 1)

theorem P8647594145252721171.correct : P8647594145252721171.Spec := by
  intro n
  simp only [A139639, Nat.add_sub_cancel]

end A139639

/-! ## A139639.P10918671024517366755

`lt[A245838(A139611(n)-1+n), 2]`
-/

namespace A139639.P10918671024517366755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A139611 n - 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A139639.P10918671024517366755

namespace A139639

/-- `lt[A245838(A139611(n)-1+n), 2]` -/
def P10918671024517366755.Spec : Prop :=
  ∀ n, (P10918671024517366755.a n : ℤ) = A139639 (n + 1)

end A139639

/-! ## A139639.P3626121439015791486

`A132270((p?[12*14*n+31]-7)/24)`
-/

namespace A139639.P3626121439015791486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℚ) / 24)).toNat

end

end A139639.P3626121439015791486

namespace A139639

/-- `A132270((p?[12*14*n+31]-7)/24)` -/
def P3626121439015791486.Spec : Prop :=
  ∀ n, P3626121439015791486.a n = A139639 (n + 1)

end A139639

/-! ## A139639.P3943111942497814041

`A132270(or(1, round(p?[12*14*n+31]/24)))`
-/

namespace A139639.P3943111942497814041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (Int.lor 1 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24))).toNat

end

end A139639.P3943111942497814041

namespace A139639

/-- `A132270(or(1, round(p?[12*14*n+31]/24)))` -/
def P3943111942497814041.Spec : Prop :=
  ∀ n, P3943111942497814041.a n = A139639 (n + 1)

end A139639

/-! ## A139639.P9818563788106728351

`eq[1, A001222(12*14*n+31)]`
-/

namespace A139639.P9818563788106728351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * (14 * n) + 31)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139639.P9818563788106728351

namespace A139639

/-- `eq[1, A001222(12*14*n+31)]` -/
def P9818563788106728351.Spec : Prop :=
  ∀ n, (P9818563788106728351.a n : ℤ) = A139639 (n + 1)

end A139639

/-! ## A139639.P9270318802705144221

`eq[2, A000005(12*14*n+31)]`
-/

namespace A139639.P9270318802705144221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (14 * n) + 31)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139639.P9270318802705144221

namespace A139639

/-- `eq[2, A000005(12*14*n+31)]` -/
def P9270318802705144221.Spec : Prop :=
  ∀ n, (P9270318802705144221.a n : ℤ) = A139639 (n + 1)

end A139639

/-! ## A139639.P8321755328037203855

`floor(floor(record[A006530(12*14*n+31)]/24)/7)`
-/

namespace A139639.P8321755328037203855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * (14 * n) + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 24⌋ : ℚ) / 7⌋

end

end A139639.P8321755328037203855

namespace A139639

/-- `floor(floor(record[A006530(12*14*n+31)]/24)/7)` -/
def P8321755328037203855.Spec : Prop :=
  ∀ n, P8321755328037203855.a n = A139639 (n + 1)

end A139639

/-! ## A139639.P11135616763460079234

`eq[12*14*n+31, A020639(12*14*n+31)]`
-/

namespace A139639.P11135616763460079234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * (14 * n) + 31)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139639.P11135616763460079234

namespace A139639

/-- `eq[12*14*n+31, A020639(12*14*n+31)]` -/
def P11135616763460079234.Spec : Prop :=
  ∀ n, (P11135616763460079234.a n : ℤ) = A139639 (n + 1)

end A139639

/-! ## A139639.P6234831637649625734

`eq[3, A051686(A017041(A008574(n)))]`
-/

namespace A139639.P6234831637649625734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A017041 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139639.P6234831637649625734

namespace A139639

/-- `eq[3, A051686(A017041(A008574(n)))]` -/
def P6234831637649625734.Spec : Prop :=
  ∀ n, (P6234831637649625734.a n : ℤ) = A139639 (n + 1)

end A139639

/-!
# A139640: Numbers of the form of 4x^2 - 4xy + 7y^2 (=24k+7) but not of the form 4x^2 + 4xy + 7y^2.

The programs for A139640, there is no canonical definition to state claims against.
-/

/-! ## A139640.P685107327185254879

`24*A140738(n+1)+7`
-/

namespace A139640.P685107327185254879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A140738 (n + 1) + 7

end

end A139640.P685107327185254879

/-! ## A139640.P16422770976332692726

`A135659(A140738(n+1))`
-/

namespace A139640.P16422770976332692726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A140738 (n + 1)).toNat

end

end A139640.P16422770976332692726

/-! ## A139640.P16755190611269626879

`A004771(3*A140738(n+1))`
-/

namespace A139640.P16755190611269626879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (3 * A140738 (n + 1)).toNat

end

end A139640.P16755190611269626879

/-! ## A139640.P6465705742247722923

`A140716(A140738(n+1)+A140738(n+1)+1)`
-/

namespace A139640.P6465705742247722923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (A140738 (n + 1) + (A140738 (n + 1) + 1)).toNat

end

end A139640.P6465705742247722923

/-!
# A139641: a(n) = binomial(n+4, 4)*7^n.

The programs for A139641, the canonical program `A139641.P17094028863206983592` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139641 has offset 0).

The definition of A139641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*7^n` (program `A139641.P17094028863206983592`, by `A139641.P17094028863206983592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139641.P10592542233047657603

`7^n*C(n+4, 4)`
-/

namespace A139641.P10592542233047657603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * Nat.choose (n + 4) 4

end

end A139641.P10592542233047657603

namespace A139641

/-- `7^n*C(n+4, 4)` -/
def P10592542233047657603.Spec : Prop :=
  ∀ n, (P10592542233047657603.a n : ℤ) = A139641 n

theorem P10592542233047657603.correct : P10592542233047657603.Spec := by
  intro n
  simp only [A139641, Nat.add_sub_cancel, A139641.P10592542233047657603.a, A139641.P17094028863206983592.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139641

/-! ## A139641.P17094028863206983592

`C(n+4, 4)*7^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139641

/-- `C(n+4, 4)*7^n` -/
def P17094028863206983592.Spec : Prop :=
  ∀ n, (P17094028863206983592.a n : ℤ) = A139641 n

theorem P17094028863206983592.correct : P17094028863206983592.Spec := by
  intro n
  simp only [A139641]

end A139641

/-! ## A139641.P6197746038732411139

`7^n*∑[∑[∑[n+1]]]`
-/

namespace A139641.P6197746038732411139
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139641.P6197746038732411139

namespace A139641

/-- `7^n*∑[∑[∑[n+1]]]` -/
def P6197746038732411139.Spec : Prop :=
  ∀ n, (P6197746038732411139.a n : ℤ) = A139641 n

end A139641

/-! ## A139641.P6970300305531822101

`3*a(n-1)+(28/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A139641.P6970300305531822101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (28 / (n : ℚ) + 4) * a (n - 1)

end

end A139641.P6970300305531822101

namespace A139641

/-- `3*a(n-1)+(28/n+4)*a(n-1)` -/
def P6970300305531822101.Spec : Prop :=
  ∀ n, P6970300305531822101.a n = (A139641 n : ℚ)

end A139641

/-! ## A139641.P5098289101299660941

`A027466(A155212(n)+12)`
-/

namespace A139641.P5098289101299660941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A155212 n + 12).toNat

end

end A139641.P5098289101299660941

namespace A139641

/-- `A027466(A155212(n)+12)` -/
def P5098289101299660941.Spec : Prop :=
  ∀ n, P5098289101299660941.a n = A139641 n

end A139641

/-! ## A139641.P14290495891930471475

`A027466(eq[4, A002262(n)])`
-/

namespace A139641.P14290495891930471475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139641.P14290495891930471475

namespace A139641

/-- `A027466(eq[4, A002262(n)])` -/
def P14290495891930471475.Spec : Prop :=
  ∀ n, P14290495891930471475.a n = A139641 n

end A139641

/-! ## A139641.P13262854967211725783

`A027466(A165157(2*(n+2))+7)`
-/

namespace A139641.P13262854967211725783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A165157 (2 * (n + 2)) + 7).toNat

end

end A139641.P13262854967211725783

namespace A139641

/-- `A027466(A165157(2*(n+2))+7)` -/
def P13262854967211725783.Spec : Prop :=
  ∀ n, P13262854967211725783.a n = A139641 n

end A139641

/-! ## A139641.P776662108008971324

`A027466(A000217(n+5)-(n+1))`
-/

namespace A139641.P776662108008971324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A139641.P776662108008971324

namespace A139641

/-- `A027466(A000217(n+5)-(n+1))` -/
def P776662108008971324.Spec : Prop :=
  ∀ n, P776662108008971324.a n = A139641 n

end A139641

/-! ## A139641.P13606985165207056535

`A013614(eq[4, A025581(n)])`
-/

namespace A139641.P13606985165207056535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139641.P13606985165207056535

namespace A139641

/-- `A013614(eq[4, A025581(n)])` -/
def P13606985165207056535.Spec : Prop :=
  ∀ n, P13606985165207056535.a n = A139641 n

end A139641

/-! ## A139641.P16343463563994493044

`A027474(n+2)*A036217(n)/A027472(n+3)`
-/

namespace A139641.P16343463563994493044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027474 (n + 2) * A036217 n : ℚ) / (A027472 (n + 3) : ℚ)

end

end A139641.P16343463563994493044

namespace A139641

/-- `A027474(n+2)*A036217(n)/A027472(n+3)` -/
def P16343463563994493044.Spec : Prop :=
  ∀ n, P16343463563994493044.a n = (A139641 n : ℚ)

end A139641

/-!
# A139643: Primes of the form x^2+Ny^2, with N=102.

The programs for A139643, there is no canonical definition to state claims against.
-/

/-! ## A139643.P15621974078971074833

`∪[A139661(n+1), A139957(n+1)]`
-/

namespace A139643.P15621974078971074833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P15621974078971074833

/-! ## A139643.P5050072452165571971

`∩[A033199(n+1), A106904(n+1)]`
-/

namespace A139643.P5050072452165571971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P5050072452165571971

/-! ## A139643.P3137531366677729166

`∩[A033199(n+1), A038889(n+1)]`
-/

namespace A139643.P3137531366677729166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P3137531366677729166

/-! ## A139643.P2938091341241692736

`∩[A001132(n+1), A106904(n+1)]`
-/

namespace A139643.P2938091341241692736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P2938091341241692736

/-! ## A139643.P4244929739000018859

`∩[A033199(n+1), A296938(n+1)]`
-/

namespace A139643.P4244929739000018859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P4244929739000018859

/-! ## A139643.P2232785001024540186

`∩[A038873(n+1), A106904(n+1)]`
-/

namespace A139643.P2232785001024540186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P2232785001024540186

/-! ## A139643.P18215274322725104133

`∩[A097958(n+1), A106904(n+1)]`
-/

namespace A139643.P18215274322725104133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P18215274322725104133

/-! ## A139643.P10136547156516843841

`∩[A033199(n+1), A191034(n+1)]`
-/

namespace A139643.P10136547156516843841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P10136547156516843841

/-! ## A139643.P2831386961069205000

`∩[A106904(n+1), A157437(n+1)]`
-/

namespace A139643.P2831386961069205000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P2831386961069205000

/-! ## A139643.P13468104169519922182

`∩[A106904(n+1), A296924(n+1)]`
-/

namespace A139643.P13468104169519922182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P13468104169519922182

/-! ## A139643.P13758814563364811110

`∩[A033199(n+1), A038909(n+1)]`
-/

namespace A139643.P13758814563364811110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P13758814563364811110

/-! ## A139643.P9888894786839945463

`∩[A038909(n+1), A106904(n+1)]`
-/

namespace A139643.P9888894786839945463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P9888894786839945463

/-! ## A139643.P8463573033329688723

`∩[A033199(n+1), A191025(n+1)]`
-/

namespace A139643.P8463573033329688723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P8463573033329688723

/-! ## A139643.P9731572991188531475

`∩[A106904(n+1), A191025(n+1)]`
-/

namespace A139643.P9731572991188531475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P9731572991188531475

/-! ## A139643.P14460115334796267036

`∩[A055673(n+1), A106904(n+1)]`
-/

namespace A139643.P14460115334796267036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P14460115334796267036

/-! ## A139643.P16609855672313854049

`∩[A106904(n+1), A270951(n+1)]`
-/

namespace A139643.P16609855672313854049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P16609855672313854049

/-! ## A139643.P14466852396809652747

`∩[A106904(n+1), A366526(n+1)]`
-/

namespace A139643.P14466852396809652747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P14466852396809652747

/-! ## A139643.P12084269819931246165

`∩[A038889(n+1), A155712(n+1)]`
-/

namespace A139643.P12084269819931246165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P12084269819931246165

/-! ## A139643.P14802264560550582858

`∩[A038909(n+1), A155712(n+1)]`
-/

namespace A139643.P14802264560550582858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P14802264560550582858

/-! ## A139643.P16294625876902086486

`∩[A106904(n+1), A155712(n+1)]`
-/

namespace A139643.P16294625876902086486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139643.P16294625876902086486

/-!
# A139644: Primes of the form x^2 + 105*y^2.

The programs for A139644, the canonical program `A139644.P6101316226407434603` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139644 has offset 1).

The definition of A139644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139644.P17701852014381760306

`∩[A033215(n+1), A139495(n+1)]`
-/

namespace A139644.P17701852014381760306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P17701852014381760306

namespace A139644

/-- `∩[A033215(n+1), A139495(n+1)]` -/
def P17701852014381760306.Spec : Prop :=
  ∀ n, (P17701852014381760306.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P8821724432851476776

`∩[A033215(n+1), A107152(n+1)]`
-/

namespace A139644.P8821724432851476776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P8821724432851476776

namespace A139644

/-- `∩[A033215(n+1), A107152(n+1)]` -/
def P8821724432851476776.Spec : Prop :=
  ∀ n, (P8821724432851476776.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P6101316226407434603

`∩[A107152(n+1), A139495(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139644

/-- `∩[A107152(n+1), A139495(n+1)]` -/
def P6101316226407434603.Spec : Prop :=
  ∀ n, (P6101316226407434603.a n : ℤ) = A139644 (n + 1)

theorem P6101316226407434603.correct : P6101316226407434603.Spec := by
  intro n
  simp only [A139644, Nat.add_sub_cancel]

end A139644

/-! ## A139644.P17818409759856885023

`∩[A033215(n+1), A139503(n+1)]`
-/

namespace A139644.P17818409759856885023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P17818409759856885023

namespace A139644

/-- `∩[A033215(n+1), A139503(n+1)]` -/
def P17818409759856885023.Spec : Prop :=
  ∀ n, (P17818409759856885023.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P13550377766336710888

`∩[A107152(n+1), A139503(n+1)]`
-/

namespace A139644.P13550377766336710888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P13550377766336710888

namespace A139644

/-- `∩[A107152(n+1), A139503(n+1)]` -/
def P13550377766336710888.Spec : Prop :=
  ∀ n, (P13550377766336710888.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P17856752052633078199

`∩[A033215(n+1), A243174(n+1)]`
-/

namespace A139644.P17856752052633078199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P17856752052633078199

namespace A139644

/-- `∩[A033215(n+1), A243174(n+1)]` -/
def P17856752052633078199.Spec : Prop :=
  ∀ n, (P17856752052633078199.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P3295207842200003741

`∩[A033215(n+1), A243188(n+1)]`
-/

namespace A139644.P3295207842200003741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P3295207842200003741

namespace A139644

/-- `∩[A033215(n+1), A243188(n+1)]` -/
def P3295207842200003741.Spec : Prop :=
  ∀ n, (P3295207842200003741.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P7787048983378483782

`∩[A008846(n+1), A139503(n+1)]`
-/

namespace A139644.P7787048983378483782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P7787048983378483782

namespace A139644

/-- `∩[A008846(n+1), A139503(n+1)]` -/
def P7787048983378483782.Spec : Prop :=
  ∀ n, (P7787048983378483782.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P894581619848998129

`∩[A107134(n+1), A107152(n+1)]`
-/

namespace A139644.P894581619848998129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P894581619848998129

namespace A139644

/-- `∩[A107134(n+1), A107152(n+1)]` -/
def P894581619848998129.Spec : Prop :=
  ∀ n, (P894581619848998129.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P4166805922564674526

`∩[A107134(n+1), A139503(n+1)]`
-/

namespace A139644.P4166805922564674526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P4166805922564674526

namespace A139644

/-- `∩[A107134(n+1), A139503(n+1)]` -/
def P4166805922564674526.Spec : Prop :=
  ∀ n, (P4166805922564674526.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P13742894026166884787

`∩[A107134(n+1), A243174(n+1)]`
-/

namespace A139644.P13742894026166884787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P13742894026166884787

namespace A139644

/-- `∩[A107134(n+1), A243174(n+1)]` -/
def P13742894026166884787.Spec : Prop :=
  ∀ n, (P13742894026166884787.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P8911183302631727499

`∩[A107152(n+1), A141172(n+1)]`
-/

namespace A139644.P8911183302631727499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P8911183302631727499

namespace A139644

/-- `∩[A107152(n+1), A141172(n+1)]` -/
def P8911183302631727499.Spec : Prop :=
  ∀ n, (P8911183302631727499.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P9335811303243949479

`∩[A033215(n+1), A106881(n+1)]`
-/

namespace A139644.P9335811303243949479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P9335811303243949479

namespace A139644

/-- `∩[A033215(n+1), A106881(n+1)]` -/
def P9335811303243949479.Spec : Prop :=
  ∀ n, (P9335811303243949479.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P1608898302010883285

`∩[A106881(n+1), A107152(n+1)]`
-/

namespace A139644.P1608898302010883285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P1608898302010883285

namespace A139644

/-- `∩[A106881(n+1), A107152(n+1)]` -/
def P1608898302010883285.Spec : Prop :=
  ∀ n, (P1608898302010883285.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P8065934303833659300

`∩[A106881(n+1), A243188(n+1)]`
-/

namespace A139644.P8065934303833659300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P8065934303833659300

namespace A139644

/-- `∩[A106881(n+1), A243188(n+1)]` -/
def P8065934303833659300.Spec : Prop :=
  ∀ n, (P8065934303833659300.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P16812360173133685802

`∩[A033212(n+1), A033215(n+1)]`
-/

namespace A139644.P16812360173133685802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P16812360173133685802

namespace A139644

/-- `∩[A033212(n+1), A033215(n+1)]` -/
def P16812360173133685802.Spec : Prop :=
  ∀ n, (P16812360173133685802.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P18365028450361771451

`∩[A033212(n+1), A107134(n+1)]`
-/

namespace A139644.P18365028450361771451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P18365028450361771451

namespace A139644

/-- `∩[A033212(n+1), A107134(n+1)]` -/
def P18365028450361771451.Spec : Prop :=
  ∀ n, (P18365028450361771451.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P10776920233913559288

`∩[A033212(n+1), A139495(n+1)]`
-/

namespace A139644.P10776920233913559288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P10776920233913559288

namespace A139644

/-- `∩[A033212(n+1), A139495(n+1)]` -/
def P10776920233913559288.Spec : Prop :=
  ∀ n, (P10776920233913559288.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P13934658538532500110

`∩[A033212(n+1), A141172(n+1)]`
-/

namespace A139644.P13934658538532500110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P13934658538532500110

namespace A139644

/-- `∩[A033212(n+1), A141172(n+1)]` -/
def P13934658538532500110.Spec : Prop :=
  ∀ n, (P13934658538532500110.a n : ℤ) = A139644 (n + 1)

end A139644

/-! ## A139644.P15469806032060745655

`∩[A068228(n+1), A106881(n+1)]`
-/

namespace A139644.P15469806032060745655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139644.P15469806032060745655

namespace A139644

/-- `∩[A068228(n+1), A106881(n+1)]` -/
def P15469806032060745655.Spec : Prop :=
  ∀ n, (P15469806032060745655.a n : ℤ) = A139644 (n + 1)

end A139644

/-!
# A139645: Primes of the form x^2 + 112*y^2.

The programs for A139645, the canonical program `A139645.P1524683957140260505` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139645 has offset 1).

The definition of A139645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139645.P8091669265813441246

`∩[A045390(n+1), A107134(n+1)]`
-/

namespace A139645.P8091669265813441246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P8091669265813441246

namespace A139645

/-- `∩[A045390(n+1), A107134(n+1)]` -/
def P8091669265813441246.Spec : Prop :=
  ∀ n, (P8091669265813441246.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P509043063428052979

`∩[A008846(n+1), A141190(n+1)]`
-/

namespace A139645.P509043063428052979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P509043063428052979

namespace A139645

/-- `∩[A008846(n+1), A141190(n+1)]` -/
def P509043063428052979.Spec : Prop :=
  ∀ n, (P509043063428052979.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P1524683957140260505

`∩[A007519(n+1), A274675(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139645

/-- `∩[A007519(n+1), A274675(n+1)]` -/
def P1524683957140260505.Spec : Prop :=
  ∀ n, (P1524683957140260505.a n : ℤ) = A139645 (n + 1)

theorem P1524683957140260505.correct : P1524683957140260505.Spec := by
  intro n
  simp only [A139645, Nat.add_sub_cancel]

end A139645

/-! ## A139645.P17093076591953364827

`∩[A008846(n+1), A274675(n+1)]`
-/

namespace A139645.P17093076591953364827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P17093076591953364827

namespace A139645

/-- `∩[A008846(n+1), A274675(n+1)]` -/
def P17093076591953364827.Spec : Prop :=
  ∀ n, (P17093076591953364827.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P249055937273847504

`∩[A274675(n+1), A332227(n+1)]`
-/

namespace A139645.P249055937273847504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P249055937273847504

namespace A139645

/-- `∩[A274675(n+1), A332227(n+1)]` -/
def P249055937273847504.Spec : Prop :=
  ∀ n, (P249055937273847504.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P13971589067962450296

`∩[A107134(n+1), A332226(n+1)]`
-/

namespace A139645.P13971589067962450296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P13971589067962450296

namespace A139645

/-- `∩[A107134(n+1), A332226(n+1)]` -/
def P13971589067962450296.Spec : Prop :=
  ∀ n, (P13971589067962450296.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P4804648240178404126

`∩[A141172(n+1), A332226(n+1)]`
-/

namespace A139645.P4804648240178404126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P4804648240178404126

namespace A139645

/-- `∩[A141172(n+1), A332226(n+1)]` -/
def P4804648240178404126.Spec : Prop :=
  ∀ n, (P4804648240178404126.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P16365354984021017937

`∩[A141190(n+1), A332226(n+1)]`
-/

namespace A139645.P16365354984021017937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P16365354984021017937

namespace A139645

/-- `∩[A141190(n+1), A332226(n+1)]` -/
def P16365354984021017937.Spec : Prop :=
  ∀ n, (P16365354984021017937.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P10010136597349441113

`∩[A274675(n+1), A332226(n+1)]`
-/

namespace A139645.P10010136597349441113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P10010136597349441113

namespace A139645

/-- `∩[A274675(n+1), A332226(n+1)]` -/
def P10010136597349441113.Spec : Prop :=
  ∀ n, (P10010136597349441113.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P10490948799350129571

`∩[A004625(n+1), A274675(n+1)]`
-/

namespace A139645.P10490948799350129571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P10490948799350129571

namespace A139645

/-- `∩[A004625(n+1), A274675(n+1)]` -/
def P10490948799350129571.Spec : Prop :=
  ∀ n, (P10490948799350129571.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P8373790592079437012

`∩[A141190(n+1), A191218(n+1)]`
-/

namespace A139645.P8373790592079437012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P8373790592079437012

namespace A139645

/-- `∩[A141190(n+1), A191218(n+1)]` -/
def P8373790592079437012.Spec : Prop :=
  ∀ n, (P8373790592079437012.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P7555650377617918026

`∩[A191218(n+1), A274675(n+1)]`
-/

namespace A139645.P7555650377617918026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P7555650377617918026

namespace A139645

/-- `∩[A191218(n+1), A274675(n+1)]` -/
def P7555650377617918026.Spec : Prop :=
  ∀ n, (P7555650377617918026.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P9237691022346803744

`∩[A004625(n+1), A038885(n+1)]`
-/

namespace A139645.P9237691022346803744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P9237691022346803744

namespace A139645

/-- `∩[A004625(n+1), A038885(n+1)]` -/
def P9237691022346803744.Spec : Prop :=
  ∀ n, (P9237691022346803744.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P11052865964764489175

`∩[A007519(n+1), A038885(n+1)]`
-/

namespace A139645.P11052865964764489175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P11052865964764489175

namespace A139645

/-- `∩[A007519(n+1), A038885(n+1)]` -/
def P11052865964764489175.Spec : Prop :=
  ∀ n, (P11052865964764489175.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P3178333282967631368

`∩[A038885(n+1), A242663(n+1)]`
-/

namespace A139645.P3178333282967631368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P3178333282967631368

namespace A139645

/-- `∩[A038885(n+1), A242663(n+1)]` -/
def P3178333282967631368.Spec : Prop :=
  ∀ n, (P3178333282967631368.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P5793409845928899980

`∩[A038885(n+1), A332226(n+1)]`
-/

namespace A139645.P5793409845928899980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P5793409845928899980

namespace A139645

/-- `∩[A038885(n+1), A332226(n+1)]` -/
def P5793409845928899980.Spec : Prop :=
  ∀ n, (P5793409845928899980.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P8051486921895310439

`∩[A001132(n+1), A107134(n+1)]`
-/

namespace A139645.P8051486921895310439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P8051486921895310439

namespace A139645

/-- `∩[A001132(n+1), A107134(n+1)]` -/
def P8051486921895310439.Spec : Prop :=
  ∀ n, (P8051486921895310439.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P10805592958475011724

`∩[A097958(n+1), A107134(n+1)]`
-/

namespace A139645.P10805592958475011724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P10805592958475011724

namespace A139645

/-- `∩[A097958(n+1), A107134(n+1)]` -/
def P10805592958475011724.Spec : Prop :=
  ∀ n, (P10805592958475011724.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P2875127760978205058

`∩[A004625(n+1), A038878(n+1)]`
-/

namespace A139645.P2875127760978205058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P2875127760978205058

namespace A139645

/-- `∩[A004625(n+1), A038878(n+1)]` -/
def P2875127760978205058.Spec : Prop :=
  ∀ n, (P2875127760978205058.a n : ℤ) = A139645 (n + 1)

end A139645

/-! ## A139645.P9179792557319958067

`∩[A007519(n+1), A038878(n+1)]`
-/

namespace A139645.P9179792557319958067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139645.P9179792557319958067

namespace A139645

/-- `∩[A007519(n+1), A038878(n+1)]` -/
def P9179792557319958067.Spec : Prop :=
  ∀ n, (P9179792557319958067.a n : ℤ) = A139645 (n + 1)

end A139645

/-!
# A139646: Primes of the form x^2 + 130*y^2.

The programs for A139646, there is no canonical definition to state claims against.
-/

/-! ## A139646.P1106942978586639855

`∪[A139663(n+1), A139970(n+1)]`
-/

namespace A139646.P1106942978586639855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P1106942978586639855

/-! ## A139646.P15229064381335270461

`p?[A141111(n+1)%or(4, A141111(n+1))]`
-/

namespace A139646.P15229064381335270461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141111 (n + 1)) (Int.lor 4 (A141111 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139646.P15229064381335270461

/-! ## A139646.P554787375122798570

`∩[A033201(n+1), A141111(n+1)]`
-/

namespace A139646.P554787375122798570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P554787375122798570

/-! ## A139646.P3785395211465883710

`∩[A033201(n+1), A038945(n+1)]`
-/

namespace A139646.P3785395211465883710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P3785395211465883710

/-! ## A139646.P11655428969642238275

`∩[A033201(n+1), A038883(n+1)]`
-/

namespace A139646.P11655428969642238275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P11655428969642238275

/-! ## A139646.P13142244353708689804

`∩[A033201(n+1), A296937(n+1)]`
-/

namespace A139646.P13142244353708689804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P13142244353708689804

/-! ## A139646.P13715525298028024691

`∩[A141111(n+1), A293859(n+1)]`
-/

namespace A139646.P13715525298028024691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P13715525298028024691

/-! ## A139646.P1366750579868853593

`∩[A033200(n+1), A141111(n+1)]`
-/

namespace A139646.P1366750579868853593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P1366750579868853593

/-! ## A139646.P13159363948638393382

`∩[A033203(n+1), A141111(n+1)]`
-/

namespace A139646.P13159363948638393382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P13159363948638393382

/-! ## A139646.P666606922843808511

`∩[A033201(n+1), A270997(n+1)]`
-/

namespace A139646.P666606922843808511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P666606922843808511

/-! ## A139646.P3268992505994391478

`∩[A141111(n+1), A341784(n+1)]`
-/

namespace A139646.P3268992505994391478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P3268992505994391478

/-! ## A139646.P3071517279911971205

`∩[A141111(n+1), A365082(n+1)]`
-/

namespace A139646.P3071517279911971205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P3071517279911971205

/-! ## A139646.P6395744723280029181

`∩[A020673(n+1), A038883(n+1)]`
-/

namespace A139646.P6395744723280029181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P6395744723280029181

/-! ## A139646.P4196705584403984659

`∩[A020673(n+1), A038945(n+1)]`
-/

namespace A139646.P4196705584403984659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P4196705584403984659

/-! ## A139646.P16468948111568320169

`∩[A020673(n+1), A141111(n+1)]`
-/

namespace A139646.P16468948111568320169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P16468948111568320169

/-! ## A139646.P7435426375971176094

`∩[A020673(n+1), A296937(n+1)]`
-/

namespace A139646.P7435426375971176094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P7435426375971176094

/-! ## A139646.P14911013283740882517

`∩[A034031(n+1), A141111(n+1)]`
-/

namespace A139646.P14911013283740882517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P14911013283740882517

/-! ## A139646.P10073896793377936871

`∩[A033201(n+1), A035256(n+1)]`
-/

namespace A139646.P10073896793377936871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P10073896793377936871

/-! ## A139646.P5660518670734161607

`∩[A057127(n+1), A141111(n+1)]`
-/

namespace A139646.P5660518670734161607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P5660518670734161607

/-! ## A139646.P9793760959617758887

`∩[A047471(n+1), A141111(n+1)]`
-/

namespace A139646.P9793760959617758887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139646.P9793760959617758887

/-!
# A139647: Primes of the form x^2 + 133*y^2.

The programs for A139647, the canonical program `A139647.P13605728883241360849` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139647 has offset 1).

The definition of A139647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139647.P11125026053699624360

`∩[A107134(n+1), A142956(n+1)]`
-/

namespace A139647.P11125026053699624360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P11125026053699624360

namespace A139647

/-- `∩[A107134(n+1), A142956(n+1)]` -/
def P11125026053699624360.Spec : Prop :=
  ∀ n, (P11125026053699624360.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P10146330394410686002

`∩[A141172(n+1), A142956(n+1)]`
-/

namespace A139647.P10146330394410686002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P10146330394410686002

namespace A139647

/-- `∩[A141172(n+1), A142956(n+1)]` -/
def P10146330394410686002.Spec : Prop :=
  ∀ n, (P10146330394410686002.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P10724151056370852197

`∩[A038891(n+1), A107134(n+1)]`
-/

namespace A139647.P10724151056370852197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P10724151056370852197

namespace A139647

/-- `∩[A038891(n+1), A107134(n+1)]` -/
def P10724151056370852197.Spec : Prop :=
  ∀ n, (P10724151056370852197.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P7673563895165499473

`∩[A038891(n+1), A141172(n+1)]`
-/

namespace A139647.P7673563895165499473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P7673563895165499473

namespace A139647

/-- `∩[A038891(n+1), A141172(n+1)]` -/
def P7673563895165499473.Spec : Prop :=
  ∀ n, (P7673563895165499473.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P17398143580022298461

`∩[A107134(n+1), A191019(n+1)]`
-/

namespace A139647.P17398143580022298461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P17398143580022298461

namespace A139647

/-- `∩[A107134(n+1), A191019(n+1)]` -/
def P17398143580022298461.Spec : Prop :=
  ∀ n, (P17398143580022298461.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P2972588597088294616

`∩[A141172(n+1), A191019(n+1)]`
-/

namespace A139647.P2972588597088294616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P2972588597088294616

namespace A139647

/-- `∩[A141172(n+1), A191019(n+1)]` -/
def P2972588597088294616.Spec : Prop :=
  ∀ n, (P2972588597088294616.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P13570937327189988796

`∩[A106863(n+1), A107134(n+1)]`
-/

namespace A139647.P13570937327189988796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P13570937327189988796

namespace A139647

/-- `∩[A106863(n+1), A107134(n+1)]` -/
def P13570937327189988796.Spec : Prop :=
  ∀ n, (P13570937327189988796.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P14921192367450550972

`∩[A106863(n+1), A141172(n+1)]`
-/

namespace A139647.P14921192367450550972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P14921192367450550972

namespace A139647

/-- `∩[A106863(n+1), A141172(n+1)]` -/
def P14921192367450550972.Spec : Prop :=
  ∀ n, (P14921192367450550972.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P9109261658911323054

`∩[A038878(n+1), A142956(n+1)]`
-/

namespace A139647.P9109261658911323054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P9109261658911323054

namespace A139647

/-- `∩[A038878(n+1), A142956(n+1)]` -/
def P9109261658911323054.Spec : Prop :=
  ∀ n, (P9109261658911323054.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P13605728883241360849

`∩[A033207(n+1), A142956(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139647

/-- `∩[A033207(n+1), A142956(n+1)]` -/
def P13605728883241360849.Spec : Prop :=
  ∀ n, (P13605728883241360849.a n : ℤ) = A139647 (n + 1)

theorem P13605728883241360849.correct : P13605728883241360849.Spec := by
  intro n
  simp only [A139647, Nat.add_sub_cancel]

end A139647

/-! ## A139647.P6108502959616398438

`∩[A045373(n+1), A142956(n+1)]`
-/

namespace A139647.P6108502959616398438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P6108502959616398438

namespace A139647

/-- `∩[A045373(n+1), A142956(n+1)]` -/
def P6108502959616398438.Spec : Prop :=
  ∀ n, (P6108502959616398438.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P9849664827605987019

`∩[A045386(n+1), A142956(n+1)]`
-/

namespace A139647.P9849664827605987019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P9849664827605987019

namespace A139647

/-- `∩[A045386(n+1), A142956(n+1)]` -/
def P9849664827605987019.Spec : Prop :=
  ∀ n, (P9849664827605987019.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P17537783748791586933

`∩[A107134(n+1), A297175(n+1)]`
-/

namespace A139647.P17537783748791586933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P17537783748791586933

namespace A139647

/-- `∩[A107134(n+1), A297175(n+1)]` -/
def P17537783748791586933.Spec : Prop :=
  ∀ n, (P17537783748791586933.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P7251766658307109849

`∩[A141172(n+1), A297175(n+1)]`
-/

namespace A139647.P7251766658307109849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P7251766658307109849

namespace A139647

/-- `∩[A141172(n+1), A297175(n+1)]` -/
def P7251766658307109849.Spec : Prop :=
  ∀ n, (P7251766658307109849.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P3983455123606077041

`∩[A142956(n+1), A296934(n+1)]`
-/

namespace A139647.P3983455123606077041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P3983455123606077041

namespace A139647

/-- `∩[A142956(n+1), A296934(n+1)]` -/
def P3983455123606077041.Spec : Prop :=
  ∀ n, (P3983455123606077041.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P14771634320717647729

`∩[A107134(n+1), A341787(n+1)]`
-/

namespace A139647.P14771634320717647729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P14771634320717647729

namespace A139647

/-- `∩[A107134(n+1), A341787(n+1)]` -/
def P14771634320717647729.Spec : Prop :=
  ∀ n, (P14771634320717647729.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P2624607226477534784

`∩[A141172(n+1), A341787(n+1)]`
-/

namespace A139647.P2624607226477534784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P2624607226477534784

namespace A139647

/-- `∩[A141172(n+1), A341787(n+1)]` -/
def P2624607226477534784.Spec : Prop :=
  ∀ n, (P2624607226477534784.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P18286912574179241223

`∩[A038891(n+1), A155568(n+1)]`
-/

namespace A139647.P18286912574179241223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P18286912574179241223

namespace A139647

/-- `∩[A038891(n+1), A155568(n+1)]` -/
def P18286912574179241223.Spec : Prop :=
  ∀ n, (P18286912574179241223.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P4753221236835029484

`∩[A106863(n+1), A155568(n+1)]`
-/

namespace A139647.P4753221236835029484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P4753221236835029484

namespace A139647

/-- `∩[A106863(n+1), A155568(n+1)]` -/
def P4753221236835029484.Spec : Prop :=
  ∀ n, (P4753221236835029484.a n : ℤ) = A139647 (n + 1)

end A139647

/-! ## A139647.P7744243523868294975

`∩[A142956(n+1), A155568(n+1)]`
-/

namespace A139647.P7744243523868294975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139647.P7744243523868294975

namespace A139647

/-- `∩[A142956(n+1), A155568(n+1)]` -/
def P7744243523868294975.Spec : Prop :=
  ∀ n, (P7744243523868294975.a n : ℤ) = A139647 (n + 1)

end A139647

/-!
# A139648: Primes of the form x^2 + 165*y^2.

The programs for A139648, there is no canonical definition to state claims against.
-/

/-! ## A139648.P10534659447535372311

`∩[A033222(n+1), A107152(n+1)]`
-/

namespace A139648.P10534659447535372311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P10534659447535372311

/-! ## A139648.P803994581341869439

`∩[A033222(n+1), A139496(n+1)]`
-/

namespace A139648.P803994581341869439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P803994581341869439

/-! ## A139648.P11850271667632861802

`∩[A107152(n+1), A139496(n+1)]`
-/

namespace A139648.P11850271667632861802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P11850271667632861802

/-! ## A139648.P8788140901731279145

`∩[A033222(n+1), A243174(n+1)]`
-/

namespace A139648.P8788140901731279145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P8788140901731279145

/-! ## A139648.P15937627207099460195

`∩[A033222(n+1), A243188(n+1)]`
-/

namespace A139648.P15937627207099460195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P15937627207099460195

/-! ## A139648.P15618123433265732721

`∩[A139496(n+1), A243188(n+1)]`
-/

namespace A139648.P15618123433265732721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P15618123433265732721

/-! ## A139648.P4297330243256180287

`∩[A008846(n+1), A139496(n+1)]`
-/

namespace A139648.P4297330243256180287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P4297330243256180287

/-! ## A139648.P18158860048153875050

`∩[A107013(n+1), A107152(n+1)]`
-/

namespace A139648.P18158860048153875050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P18158860048153875050

/-! ## A139648.P8747619428516108246

`∩[A107152(n+1), A141177(n+1)]`
-/

namespace A139648.P8747619428516108246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P8747619428516108246

/-! ## A139648.P10671036623589022656

`∩[A107013(n+1), A243188(n+1)]`
-/

namespace A139648.P10671036623589022656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P10671036623589022656

/-! ## A139648.P4973995233544121489

`∩[A141177(n+1), A243188(n+1)]`
-/

namespace A139648.P4973995233544121489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P4973995233544121489

/-! ## A139648.P18072063783108210924

`∩[A033222(n+1), A267478(n+1)]`
-/

namespace A139648.P18072063783108210924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P18072063783108210924

/-! ## A139648.P12687319616725757362

`∩[A107152(n+1), A267478(n+1)]`
-/

namespace A139648.P12687319616725757362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P12687319616725757362

/-! ## A139648.P11572630910965295475

`∩[A243188(n+1), A267478(n+1)]`
-/

namespace A139648.P11572630910965295475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P11572630910965295475

/-! ## A139648.P7275328605335696581

`∩[A107152(n+1), A141182(n+1)]`
-/

namespace A139648.P7275328605335696581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P7275328605335696581

/-! ## A139648.P16049264517023741161

`∩[A139496(n+1), A141182(n+1)]`
-/

namespace A139648.P16049264517023741161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P16049264517023741161

/-! ## A139648.P8045337573232027384

`∩[A141182(n+1), A243174(n+1)]`
-/

namespace A139648.P8045337573232027384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P8045337573232027384

/-! ## A139648.P717489018763918762

`∩[A141182(n+1), A243188(n+1)]`
-/

namespace A139648.P717489018763918762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P717489018763918762

/-! ## A139648.P15131633387710140941

`∩[A033212(n+1), A033222(n+1)]`
-/

namespace A139648.P15131633387710140941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P15131633387710140941

/-! ## A139648.P16222821224382316831

`∩[A033212(n+1), A141182(n+1)]`
-/

namespace A139648.P16222821224382316831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139648.P16222821224382316831

/-!
# A139649: Primes of the form x^2 + 177*y^2.

The programs for A139649, there is no canonical definition to state claims against.
-/

/-! ## A139649.P13837073919993102686

`∩[12*n+1, A038939(n+2)]`
-/

namespace A139649.P13837073919993102686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P13837073919993102686

/-! ## A139649.P11563078234639762779

`∩[A038939(n+1), A068228(n+1)]`
-/

namespace A139649.P11563078234639762779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P11563078234639762779

/-! ## A139649.P16266701800946871335

`∩[A068228(n+1), A191038(n+1)]`
-/

namespace A139649.P16266701800946871335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P16266701800946871335

/-! ## A139649.P2716363475222442269

`∩[A038939(n+1), A351537(n+1)]`
-/

namespace A139649.P2716363475222442269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P2716363475222442269

/-! ## A139649.P12008419794204390479

`∩[A038939(n+1), A354467(n+1)]`
-/

namespace A139649.P12008419794204390479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P12008419794204390479

/-! ## A139649.P2987385491188120887

`∩[A068228(n+1), A374156(n+1)]`
-/

namespace A139649.P2987385491188120887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P2987385491188120887

/-! ## A139649.P7786936673485504653

`∩[A191038(n+1), A351537(n+1)]`
-/

namespace A139649.P7786936673485504653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P7786936673485504653

/-! ## A139649.P1287948272049690884

`∩[A191038(n+1), A354467(n+1)]`
-/

namespace A139649.P1287948272049690884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P1287948272049690884

/-! ## A139649.P2590365848805588527

`∩[A351537(n+1), A374156(n+1)]`
-/

namespace A139649.P2590365848805588527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P2590365848805588527

/-! ## A139649.P14517640235101298540

`∩[A354467(n+1), A374156(n+1)]`
-/

namespace A139649.P14517640235101298540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P14517640235101298540

/-! ## A139649.P5073742982463682017

`∩[A038939(n+1), A353198(n+1)]`
-/

namespace A139649.P5073742982463682017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P5073742982463682017

/-! ## A139649.P10973218186267980272

`∩[A191038(n+1), A353198(n+1)]`
-/

namespace A139649.P10973218186267980272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P10973218186267980272

/-! ## A139649.P3963447945742799289

`∩[A353198(n+1), A374156(n+1)]`
-/

namespace A139649.P3963447945742799289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P3963447945742799289

/-! ## A139649.P16817395340405344740

`∩[A038939(n+1), A155560(n+1)]`
-/

namespace A139649.P16817395340405344740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P16817395340405344740

/-! ## A139649.P16453275941334606372

`∩[A155560(n+1), A191038(n+1)]`
-/

namespace A139649.P16453275941334606372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P16453275941334606372

/-! ## A139649.P4811065179596651219

`∩[A155560(n+1), A374156(n+1)]`
-/

namespace A139649.P4811065179596651219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P4811065179596651219

/-! ## A139649.P9836256562000384318

`∩[A038939(n+1), A264732(n+1)]`
-/

namespace A139649.P9836256562000384318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P9836256562000384318

/-! ## A139649.P9647551251343767274

`∩[A191038(n+1), A264732(n+1)]`
-/

namespace A139649.P9647551251343767274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P9647551251343767274

/-! ## A139649.P3103476998740664712

`∩[A264732(n+1), A374156(n+1)]`
-/

namespace A139649.P3103476998740664712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P3103476998740664712

/-! ## A139649.P14175163102954711602

`∩[A038939(n+1), A155563(n+1)]`
-/

namespace A139649.P14175163102954711602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139649.P14175163102954711602

/-!
# A139650: Primes of the form x^2 + 190*y^2.

The programs for A139650, there is no canonical definition to state claims against.
-/

/-! ## A139650.P6553669879520432048

`∪[A139664(n+1), A139977(n+1)]`
-/

namespace A139650.P6553669879520432048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P6553669879520432048

/-! ## A139650.P16147097002852945208

`∩[A141180(n+1), A267603(n+1)]`
-/

namespace A139650.P16147097002852945208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P16147097002852945208

/-! ## A139650.P12079751754971093634

`∩[A141180(n+1), A191028(n+1)]`
-/

namespace A139650.P12079751754971093634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P12079751754971093634

/-! ## A139650.P1022937078393234585

`∩[A191028(n+1), A267603(n+1)]`
-/

namespace A139650.P1022937078393234585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P1022937078393234585

/-! ## A139650.P13392272380998439562

`∩[A106863(n+1), A141180(n+1)]`
-/

namespace A139650.P13392272380998439562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P13392272380998439562

/-! ## A139650.P18328689950128063800

`∩[A001132(n+1), A267603(n+1)]`
-/

namespace A139650.P18328689950128063800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P18328689950128063800

/-! ## A139650.P15553274805806733182

`∩[A038873(n+1), A267603(n+1)]`
-/

namespace A139650.P15553274805806733182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P15553274805806733182

/-! ## A139650.P693734169991939773

`∩[A141180(n+1), A191019(n+1)]`
-/

namespace A139650.P693734169991939773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P693734169991939773

/-! ## A139650.P13571472284816382631

`∩[A097958(n+1), A267603(n+1)]`
-/

namespace A139650.P13571472284816382631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P13571472284816382631

/-! ## A139650.P4142143028423416170

`∩[A097955(n+1), A267603(n+1)]`
-/

namespace A139650.P4142143028423416170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P4142143028423416170

/-! ## A139650.P577084369379849008

`∩[A141180(n+1), A191057(n+1)]`
-/

namespace A139650.P577084369379849008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P577084369379849008

/-! ## A139650.P10350158967488932273

`∩[A141180(n+1), A341787(n+1)]`
-/

namespace A139650.P10350158967488932273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P10350158967488932273

/-! ## A139650.P14684667091233698160

`∩[A055673(n+1), A267603(n+1)]`
-/

namespace A139650.P14684667091233698160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P14684667091233698160

/-! ## A139650.P3932833886469823587

`∩[A267603(n+1), A270951(n+1)]`
-/

namespace A139650.P3932833886469823587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P3932833886469823587

/-! ## A139650.P14574848248013122980

`∩[A267603(n+1), A319040(n+1)]`
-/

namespace A139650.P14574848248013122980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P14574848248013122980

/-! ## A139650.P9771997480335564670

`∩[A267603(n+1), A366526(n+1)]`
-/

namespace A139650.P9771997480335564670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P9771997480335564670

/-! ## A139650.P5791521476081852499

`∩[A106863(n+1), A390526(n+1)]`
-/

namespace A139650.P5791521476081852499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P5791521476081852499

/-! ## A139650.P14056464884151454086

`∩[A191019(n+1), A390526(n+1)]`
-/

namespace A139650.P14056464884151454086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P14056464884151454086

/-! ## A139650.P7398993296357419101

`∩[A191028(n+1), A390526(n+1)]`
-/

namespace A139650.P7398993296357419101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P7398993296357419101

/-! ## A139650.P5717950565005132036

`∩[A191057(n+1), A390526(n+1)]`
-/

namespace A139650.P5717950565005132036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139650.P5717950565005132036

/-!
# A139651: Primes of the form x^2 + 210*y^2.

The programs for A139651, the canonical program `A139651.P8932239673314536185` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139651 has offset 1).

The definition of A139651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139651.P8932239673314536185

`∪[A139665(n+1), A139985(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139651

/-- `∪[A139665(n+1), A139985(n+1)]` -/
def P8932239673314536185.Spec : Prop :=
  ∀ n, (P8932239673314536185.a n : ℤ) = A139651 (n + 1)

theorem P8932239673314536185.correct : P8932239673314536185.Spec := by
  intro n
  simp only [A139651, Nat.add_sub_cancel]

end A139651

/-! ## A139651.P2998563470014756157

`∩[A033229(n+1), A139503(n+1)]`
-/

namespace A139651.P2998563470014756157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P2998563470014756157

namespace A139651

/-- `∩[A033229(n+1), A139503(n+1)]` -/
def P2998563470014756157.Spec : Prop :=
  ∀ n, (P2998563470014756157.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P9875913446351643214

`∩[A033229(n+1), A243174(n+1)]`
-/

namespace A139651.P9875913446351643214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P9875913446351643214

namespace A139651

/-- `∩[A033229(n+1), A243174(n+1)]` -/
def P9875913446351643214.Spec : Prop :=
  ∀ n, (P9875913446351643214.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P139594754471597930

`∩[A033229(n+1), A106881(n+1)]`
-/

namespace A139651.P139594754471597930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P139594754471597930

namespace A139651

/-- `∩[A033229(n+1), A106881(n+1)]` -/
def P139594754471597930.Spec : Prop :=
  ∀ n, (P139594754471597930.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P13939301626027740141

`∩[A033212(n+1), A033229(n+1)]`
-/

namespace A139651.P13939301626027740141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P13939301626027740141

namespace A139651

/-- `∩[A033212(n+1), A033229(n+1)]` -/
def P13939301626027740141.Spec : Prop :=
  ∀ n, (P13939301626027740141.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P4015391772466789607

`∩[A033212(n+1), A141190(n+1)]`
-/

namespace A139651.P4015391772466789607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P4015391772466789607

namespace A139651

/-- `∩[A033212(n+1), A141190(n+1)]` -/
def P4015391772466789607.Spec : Prop :=
  ∀ n, (P4015391772466789607.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P11550741611814732481

`∩[A139503(n+1), A141190(n+1)]`
-/

namespace A139651.P11550741611814732481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P11550741611814732481

namespace A139651

/-- `∩[A139503(n+1), A141190(n+1)]` -/
def P11550741611814732481.Spec : Prop :=
  ∀ n, (P11550741611814732481.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P13451627560017097959

`∩[A141190(n+1), A243174(n+1)]`
-/

namespace A139651.P13451627560017097959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P13451627560017097959

namespace A139651

/-- `∩[A141190(n+1), A243174(n+1)]` -/
def P13451627560017097959.Spec : Prop :=
  ∀ n, (P13451627560017097959.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P433058877135855413

`∩[A106881(n+1), A106950(n+1)]`
-/

namespace A139651.P433058877135855413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P433058877135855413

namespace A139651

/-- `∩[A106881(n+1), A106950(n+1)]` -/
def P433058877135855413.Spec : Prop :=
  ∀ n, (P433058877135855413.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P2174363133201357735

`∩[A106950(n+1), A139503(n+1)]`
-/

namespace A139651.P2174363133201357735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P2174363133201357735

namespace A139651

/-- `∩[A106950(n+1), A139503(n+1)]` -/
def P2174363133201357735.Spec : Prop :=
  ∀ n, (P2174363133201357735.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P4099925329986349021

`∩[A106881(n+1), A141170(n+1)]`
-/

namespace A139651.P4099925329986349021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P4099925329986349021

namespace A139651

/-- `∩[A106881(n+1), A141170(n+1)]` -/
def P4099925329986349021.Spec : Prop :=
  ∀ n, (P4099925329986349021.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P14480705512816729620

`∩[A139503(n+1), A141170(n+1)]`
-/

namespace A139651.P14480705512816729620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P14480705512816729620

namespace A139651

/-- `∩[A139503(n+1), A141170(n+1)]` -/
def P14480705512816729620.Spec : Prop :=
  ∀ n, (P14480705512816729620.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P14234484580121615916

`∩[A033201(n+1), A033229(n+1)]`
-/

namespace A139651.P14234484580121615916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P14234484580121615916

namespace A139651

/-- `∩[A033201(n+1), A033229(n+1)]` -/
def P14234484580121615916.Spec : Prop :=
  ∀ n, (P14234484580121615916.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P11517454218838837097

`∩[A033201(n+1), A139492(n+1)]`
-/

namespace A139651.P11517454218838837097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P11517454218838837097

namespace A139651

/-- `∩[A033201(n+1), A139492(n+1)]` -/
def P11517454218838837097.Spec : Prop :=
  ∀ n, (P11517454218838837097.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P7291290806305650128

`∩[A033201(n+1), A139503(n+1)]`
-/

namespace A139651.P7291290806305650128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P7291290806305650128

namespace A139651

/-- `∩[A033201(n+1), A139503(n+1)]` -/
def P7291290806305650128.Spec : Prop :=
  ∀ n, (P7291290806305650128.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P5418911988960263965

`∩[A033201(n+1), A243172(n+1)]`
-/

namespace A139651.P5418911988960263965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P5418911988960263965

namespace A139651

/-- `∩[A033201(n+1), A243172(n+1)]` -/
def P5418911988960263965.Spec : Prop :=
  ∀ n, (P5418911988960263965.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P10865491322669676795

`∩[A038885(n+1), A139503(n+1)]`
-/

namespace A139651.P10865491322669676795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P10865491322669676795

namespace A139651

/-- `∩[A038885(n+1), A139503(n+1)]` -/
def P10865491322669676795.Spec : Prop :=
  ∀ n, (P10865491322669676795.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P847686959828581404

`∩[A038876(n+1), A139503(n+1)]`
-/

namespace A139651.P847686959828581404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P847686959828581404

namespace A139651

/-- `∩[A038876(n+1), A139503(n+1)]` -/
def P847686959828581404.Spec : Prop :=
  ∀ n, (P847686959828581404.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P1691279872472478736

`∩[A097934(n+1), A139503(n+1)]`
-/

namespace A139651.P1691279872472478736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P1691279872472478736

namespace A139651

/-- `∩[A097934(n+1), A139503(n+1)]` -/
def P1691279872472478736.Spec : Prop :=
  ∀ n, (P1691279872472478736.a n : ℤ) = A139651 (n + 1)

end A139651

/-! ## A139651.P15849878688485420251

`∩[A033229(n+1), A038872(n+1)]`
-/

namespace A139651.P15849878688485420251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139651.P15849878688485420251

namespace A139651

/-- `∩[A033229(n+1), A038872(n+1)]` -/
def P15849878688485420251.Spec : Prop :=
  ∀ n, (P15849878688485420251.a n : ℤ) = A139651 (n + 1)

end A139651

/-!
# A139652: Primes of the form x^2 + 232*y^2.

The programs for A139652, there is no canonical definition to state claims against.
-/

/-! ## A139652.P12592490713553385172

`∩[A007519(n+1), A033237(n+1)]`
-/

namespace A139652.P12592490713553385172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P12592490713553385172

/-! ## A139652.P12819653933278599108

`∩[A008846(n+1), A033237(n+1)]`
-/

namespace A139652.P12819653933278599108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P12819653933278599108

/-! ## A139652.P3365176474041433970

`∩[A033237(n+1), A045390(n+1)]`
-/

namespace A139652.P3365176474041433970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P3365176474041433970

/-! ## A139652.P15356813238643622233

`∩[A209544(n+1), A033237(n+1)]`
-/

namespace A139652.P15356813238643622233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P15356813238643622233

/-! ## A139652.P528996813299279003

`∩[A033237(n+1), A242663(n+1)]`
-/

namespace A139652.P528996813299279003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P528996813299279003

/-! ## A139652.P2395990099956213903

`∩[A332227(n+1), A033237(n+1)]`
-/

namespace A139652.P2395990099956213903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P2395990099956213903

/-! ## A139652.P13238983881714913441

`∩[A033237(n+1), A332226(n+1)]`
-/

namespace A139652.P13238983881714913441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P13238983881714913441

/-! ## A139652.P2820424935913852956

`∩[A004625(n+1), A033237(n+1)]`
-/

namespace A139652.P2820424935913852956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P2820424935913852956

/-! ## A139652.P12957544067308790011

`∩[A033237(n+1), A191218(n+1)]`
-/

namespace A139652.P12957544067308790011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P12957544067308790011

/-! ## A139652.P3814501306268859701

`∩[A001132(n+1), A033237(n+1)]`
-/

namespace A139652.P3814501306268859701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P3814501306268859701

/-! ## A139652.P6377498004068164919

`∩[A002144(n+1), A033237(n+1)]`
-/

namespace A139652.P6377498004068164919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P6377498004068164919

/-! ## A139652.P16001381791898516170

`∩[A002313(n+1), A033237(n+1)]`
-/

namespace A139652.P16001381791898516170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P16001381791898516170

/-! ## A139652.P12739512067272666218

`∩[A004625(n+1), A038901(n+1)]`
-/

namespace A139652.P12739512067272666218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P12739512067272666218

/-! ## A139652.P3361135846558635964

`∩[A007519(n+1), A038901(n+1)]`
-/

namespace A139652.P3361135846558635964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P3361135846558635964

/-! ## A139652.P11820784747538432785

`∩[A033237(n+1), A038873(n+1)]`
-/

namespace A139652.P11820784747538432785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P11820784747538432785

/-! ## A139652.P12254756911920474218

`∩[A038901(n+1), A045390(n+1)]`
-/

namespace A139652.P12254756911920474218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P12254756911920474218

/-! ## A139652.P14698836616507976274

`∩[A033237(n+1), A097958(n+1)]`
-/

namespace A139652.P14698836616507976274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P14698836616507976274

/-! ## A139652.P6596907791249386020

`∩[A038901(n+1), A242663(n+1)]`
-/

namespace A139652.P6596907791249386020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P6596907791249386020

/-! ## A139652.P14319343611929626880

`∩[A038901(n+1), A332226(n+1)]`
-/

namespace A139652.P14319343611929626880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P14319343611929626880

/-! ## A139652.P10341683582987628267

`∩[A191022(n+1), A242663(n+1)]`
-/

namespace A139652.P10341683582987628267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139652.P10341683582987628267

/-!
# A139653: Primes of the form x^2 + 253*y^2.

The programs for A139653, there is no canonical definition to state claims against.
-/

/-! ## A139653.P1802455138969942758

`∩[A141182(n+1), A141336(n+1)]`
-/

namespace A139653.P1802455138969942758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P1802455138969942758

/-! ## A139653.P4746604075572658847

`∩[A141182(n+1), A191021(n+1)]`
-/

namespace A139653.P4746604075572658847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P4746604075572658847

/-! ## A139653.P2429024395621461537

`∩[A141182(n+1), A296932(n+1)]`
-/

namespace A139653.P2429024395621461537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P2429024395621461537

/-! ## A139653.P11868765846846789374

`∩[A038881(n+1), A141336(n+1)]`
-/

namespace A139653.P11868765846846789374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P11868765846846789374

/-! ## A139653.P17976865316790187015

`∩[A056874(n+1), A141336(n+1)]`
-/

namespace A139653.P17976865316790187015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P17976865316790187015

/-! ## A139653.P5899327692514320406

`∩[A141336(n+1), A296920(n+1)]`
-/

namespace A139653.P5899327692514320406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P5899327692514320406

/-! ## A139653.P2304697574132721304

`∩[A038897(n+1), A141182(n+1)]`
-/

namespace A139653.P2304697574132721304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P2304697574132721304

/-! ## A139653.P14799343340747869125

`∩[A141336(n+1), A296935(n+1)]`
-/

namespace A139653.P14799343340747869125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P14799343340747869125

/-! ## A139653.P549128869016572768

`∩[A141182(n+1), A297177(n+1)]`
-/

namespace A139653.P549128869016572768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P549128869016572768

/-! ## A139653.P14501532215772296005

`∩[A141336(n+1), A341785(n+1)]`
-/

namespace A139653.P14501532215772296005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P14501532215772296005

/-! ## A139653.P16967583260011804561

`∩[A038897(n+1), A243166(n+1)]`
-/

namespace A139653.P16967583260011804561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P16967583260011804561

/-! ## A139653.P3749136282744617197

`∩[A141336(n+1), A243166(n+1)]`
-/

namespace A139653.P3749136282744617197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P3749136282744617197

/-! ## A139653.P9682625720097106351

`∩[A191021(n+1), A243166(n+1)]`
-/

namespace A139653.P9682625720097106351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P9682625720097106351

/-! ## A139653.P4939840889000027716

`∩[A243166(n+1), A296932(n+1)]`
-/

namespace A139653.P4939840889000027716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P4939840889000027716

/-! ## A139653.P7335835732039141897

`∩[A243166(n+1), A297177(n+1)]`
-/

namespace A139653.P7335835732039141897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P7335835732039141897

/-! ## A139653.P4279607459309605243

`∩[A035255(n+1), A141336(n+1)]`
-/

namespace A139653.P4279607459309605243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P4279607459309605243

/-! ## A139653.P1231946746087466016

`∩[A035247(n+1), A141336(n+1)]`
-/

namespace A139653.P1231946746087466016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P1231946746087466016

/-! ## A139653.P6166815110440271074

`∩[A035261(n+1), A141182(n+1)]`
-/

namespace A139653.P6166815110440271074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P6166815110440271074

/-! ## A139653.P5332056195031535390

`∩[A035240(n+1), A141182(n+1)]`
-/

namespace A139653.P5332056195031535390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P5332056195031535390

/-! ## A139653.P5004737418840080836

`∩[A141336(n+1), A267755(n)]`
-/

namespace A139653.P5004737418840080836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139653.P5004737418840080836

/-!
# A139654: Primes of the form x^2+273y^2.

The programs for A139654, there is no canonical definition to state claims against.
-/

/-! ## A139654.P6979797268600510103

`∩[A033210(n+1), A033215(n+1)]`
-/

namespace A139654.P6979797268600510103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P6979797268600510103

/-! ## A139654.P3075805039462704210

`∩[A033215(n+1), A106989(n+1)]`
-/

namespace A139654.P3075805039462704210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P3075805039462704210

/-! ## A139654.P16847468219941165180

`∩[A033215(n+1), A139494(n+1)]`
-/

namespace A139654.P16847468219941165180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P16847468219941165180

/-! ## A139654.P4399945924430702341

`∩[A107134(n+1), A139494(n+1)]`
-/

namespace A139654.P4399945924430702341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P4399945924430702341

/-! ## A139654.P281987653343769206

`∩[A139494(n+1), A141172(n+1)]`
-/

namespace A139654.P281987653343769206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P281987653343769206

/-! ## A139654.P14988840595796783084

`∩[A033215(n+1), A267455(n+1)]`
-/

namespace A139654.P14988840595796783084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P14988840595796783084

/-! ## A139654.P2803847225015506406

`∩[A107134(n+1), A267455(n+1)]`
-/

namespace A139654.P2803847225015506406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P2803847225015506406

/-! ## A139654.P14297957529491108775

`∩[A141172(n+1), A267455(n+1)]`
-/

namespace A139654.P14297957529491108775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P14297957529491108775

/-! ## A139654.P6810573901447376187

`∩[A033210(n+1), A139492(n+1)]`
-/

namespace A139654.P6810573901447376187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P6810573901447376187

/-! ## A139654.P7319068855415775011

`∩[A068228(n+1), A106989(n+1)]`
-/

namespace A139654.P7319068855415775011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P7319068855415775011

/-! ## A139654.P14776635980985230204

`∩[A033210(n+1), A243172(n+1)]`
-/

namespace A139654.P14776635980985230204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P14776635980985230204

/-! ## A139654.P12909444773877392263

`∩[A106989(n+1), A351537(n+1)]`
-/

namespace A139654.P12909444773877392263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P12909444773877392263

/-! ## A139654.P16517309249868898258

`∩[A106989(n+1), A354467(n+1)]`
-/

namespace A139654.P16517309249868898258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P16517309249868898258

/-! ## A139654.P8659021836698485107

`∩[A033215(n+1), A038979(n+1)]`
-/

namespace A139654.P8659021836698485107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P8659021836698485107

/-! ## A139654.P18395408628288924504

`∩[A033215(n+1), A191029(n+1)]`
-/

namespace A139654.P18395408628288924504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P18395408628288924504

/-! ## A139654.P12038175782607875879

`∩[A033215(n+1), A296926(n+1)]`
-/

namespace A139654.P12038175782607875879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P12038175782607875879

/-! ## A139654.P10973987852534339462

`∩[A033215(n+1), A296928(n+1)]`
-/

namespace A139654.P10973987852534339462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P10973987852534339462

/-! ## A139654.P5094159764306328549

`∩[A033215(n+1), A038883(n+1)]`
-/

namespace A139654.P5094159764306328549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P5094159764306328549

/-! ## A139654.P13195808665163706541

`∩[A033215(n+1), A038917(n+1)]`
-/

namespace A139654.P13195808665163706541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P13195808665163706541

/-! ## A139654.P8246220526824244945

`∩[A033215(n+1), A296937(n+1)]`
-/

namespace A139654.P8246220526824244945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139654.P8246220526824244945

/-!
# A139655: Primes of the form x^2 + 280*y^2.

The programs for A139655, the canonical program `A139655.P8337853474759955749` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139655 has offset 1).

The definition of A139655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139655.P8337853474759955749

`∩[A107145(n+1), A139645(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139655

/-- `∩[A107145(n+1), A139645(n+1)]` -/
def P8337853474759955749.Spec : Prop :=
  ∀ n, (P8337853474759955749.a n : ℤ) = A139655 (n + 1)

theorem P8337853474759955749.correct : P8337853474759955749.Spec := by
  intro n
  simp only [A139655, Nat.add_sub_cancel]

end A139655

/-! ## A139655.P8194503289398645240

`∩[A033245(n+1), A107145(n+1)]`
-/

namespace A139655.P8194503289398645240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P8194503289398645240

namespace A139655

/-- `∩[A033245(n+1), A107145(n+1)]` -/
def P8194503289398645240.Spec : Prop :=
  ∀ n, (P8194503289398645240.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P11839898796143235320

`∩[A033245(n+1), A139495(n+1)]`
-/

namespace A139655.P11839898796143235320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P11839898796143235320

namespace A139655

/-- `∩[A033245(n+1), A139495(n+1)]` -/
def P11839898796143235320.Spec : Prop :=
  ∀ n, (P11839898796143235320.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P17245405220679743979

`∩[A033245(n+1), A139645(n+1)]`
-/

namespace A139655.P17245405220679743979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P17245405220679743979

namespace A139655

/-- `∩[A033245(n+1), A139645(n+1)]` -/
def P17245405220679743979.Spec : Prop :=
  ∀ n, (P17245405220679743979.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P16613743369232532257

`∩[A033245(n+1), A332227(n+1)]`
-/

namespace A139655.P16613743369232532257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P16613743369232532257

namespace A139655

/-- `∩[A033245(n+1), A332227(n+1)]` -/
def P16613743369232532257.Spec : Prop :=
  ∀ n, (P16613743369232532257.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P2149992750655550321

`∩[A139495(n+1), A332227(n+1)]`
-/

namespace A139655.P2149992750655550321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P2149992750655550321

namespace A139655

/-- `∩[A139495(n+1), A332227(n+1)]` -/
def P2149992750655550321.Spec : Prop :=
  ∀ n, (P2149992750655550321.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P15088994114068766504

`∩[A008846(n+1), A033245(n+1)]`
-/

namespace A139655.P15088994114068766504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P15088994114068766504

namespace A139655

/-- `∩[A008846(n+1), A033245(n+1)]` -/
def P15088994114068766504.Spec : Prop :=
  ∀ n, (P15088994114068766504.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P15308654159818502497

`∩[A033245(n+1), A107134(n+1)]`
-/

namespace A139655.P15308654159818502497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P15308654159818502497

namespace A139655

/-- `∩[A033245(n+1), A107134(n+1)]` -/
def P15308654159818502497.Spec : Prop :=
  ∀ n, (P15308654159818502497.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P950180443378345282

`∩[A107134(n+1), A107145(n+1)]`
-/

namespace A139655.P950180443378345282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P950180443378345282

namespace A139655

/-- `∩[A107134(n+1), A107145(n+1)]` -/
def P950180443378345282.Spec : Prop :=
  ∀ n, (P950180443378345282.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P3819542315326651335

`∩[A033245(n+1), A141172(n+1)]`
-/

namespace A139655.P3819542315326651335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P3819542315326651335

namespace A139655

/-- `∩[A033245(n+1), A141172(n+1)]` -/
def P3819542315326651335.Spec : Prop :=
  ∀ n, (P3819542315326651335.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P1448264968485714245

`∩[A107145(n+1), A141172(n+1)]`
-/

namespace A139655.P1448264968485714245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P1448264968485714245

namespace A139655

/-- `∩[A107145(n+1), A141172(n+1)]` -/
def P1448264968485714245.Spec : Prop :=
  ∀ n, (P1448264968485714245.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P11462581995825398738

`∩[A106881(n+1), A107145(n+1)]`
-/

namespace A139655.P11462581995825398738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P11462581995825398738

namespace A139655

/-- `∩[A106881(n+1), A107145(n+1)]` -/
def P11462581995825398738.Spec : Prop :=
  ∀ n, (P11462581995825398738.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P9341324428577294719

`∩[A106881(n+1), A139645(n+1)]`
-/

namespace A139655.P9341324428577294719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P9341324428577294719

namespace A139655

/-- `∩[A106881(n+1), A139645(n+1)]` -/
def P9341324428577294719.Spec : Prop :=
  ∀ n, (P9341324428577294719.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P607578670472977478

`∩[A141172(n+1), A141180(n+1)]`
-/

namespace A139655.P607578670472977478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P607578670472977478

namespace A139655

/-- `∩[A141172(n+1), A141180(n+1)]` -/
def P607578670472977478.Spec : Prop :=
  ∀ n, (P607578670472977478.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P164477658568572322

`∩[A106881(n+1), A332227(n+1)]`
-/

namespace A139655.P164477658568572322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P164477658568572322

namespace A139655

/-- `∩[A106881(n+1), A332227(n+1)]` -/
def P164477658568572322.Spec : Prop :=
  ∀ n, (P164477658568572322.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P6768300582340395563

`∩[A007519(n+1), A033245(n+1)]`
-/

namespace A139655.P6768300582340395563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P6768300582340395563

namespace A139655

/-- `∩[A007519(n+1), A033245(n+1)]` -/
def P6768300582340395563.Spec : Prop :=
  ∀ n, (P6768300582340395563.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P13284600723687746383

`∩[A007519(n+1), A106881(n+1)]`
-/

namespace A139655.P13284600723687746383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P13284600723687746383

namespace A139655

/-- `∩[A007519(n+1), A106881(n+1)]` -/
def P13284600723687746383.Spec : Prop :=
  ∀ n, (P13284600723687746383.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P15626352345301061387

`∩[A007519(n+1), A139495(n+1)]`
-/

namespace A139655.P15626352345301061387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P15626352345301061387

namespace A139655

/-- `∩[A007519(n+1), A139495(n+1)]` -/
def P15626352345301061387.Spec : Prop :=
  ∀ n, (P15626352345301061387.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P13788958096311222220

`∩[A033245(n+1), A045390(n+1)]`
-/

namespace A139655.P13788958096311222220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P13788958096311222220

namespace A139655

/-- `∩[A033245(n+1), A045390(n+1)]` -/
def P13788958096311222220.Spec : Prop :=
  ∀ n, (P13788958096311222220.a n : ℤ) = A139655 (n + 1)

end A139655

/-! ## A139655.P5604179445313118152

`∩[A045390(n+1), A106881(n+1)]`
-/

namespace A139655.P5604179445313118152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P5604179445313118152

namespace A139655

/-- `∩[A045390(n+1), A106881(n+1)]` -/
def P5604179445313118152.Spec : Prop :=
  ∀ n, (P5604179445313118152.a n : ℤ) = A139655 (n + 1)

end A139655

/-!
# A139656: Primes of the form x^2 + 312*y^2.

The programs for A139656, there is no canonical definition to state claims against.
-/

/-! ## A139656.P1332554310654977678

`∩[A033250(n+1), A107008(n+1)]`
-/

namespace A139656.P1332554310654977678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P1332554310654977678

/-! ## A139656.P15303099080680150841

`p?[and(-5, A033250(n+1))]`
-/

namespace A139656.P15303099080680150841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A033250 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139656.P15303099080680150841

/-! ## A139656.P13513204123232593103

`∩[A033250(n+1), A332227(n+1)]`
-/

namespace A139656.P13513204123232593103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P13513204123232593103

/-! ## A139656.P17236198337638076525

`∩[A008846(n+1), A033250(n+1)]`
-/

namespace A139656.P17236198337638076525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P17236198337638076525

/-! ## A139656.P12098016871149128062

`∩[A033250(n+1), A242663(n+1)]`
-/

namespace A139656.P12098016871149128062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P12098016871149128062

/-! ## A139656.P3236344784225142745

`∩[A033210(n+1), A033250(n+1)]`
-/

namespace A139656.P3236344784225142745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P3236344784225142745

/-! ## A139656.P2178532400675429893

`∩[A033210(n+1), A107008(n+1)]`
-/

namespace A139656.P2178532400675429893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P2178532400675429893

/-! ## A139656.P12820621501591119956

`∩[A033199(n+1), A033210(n+1)]`
-/

namespace A139656.P12820621501591119956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P12820621501591119956

/-! ## A139656.P11117054367046733874

`∩[A007519(n+1), A033250(n+1)]`
-/

namespace A139656.P11117054367046733874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P11117054367046733874

/-! ## A139656.P10445777215156617953

`∩[A033250(n+1), A045390(n+1)]`
-/

namespace A139656.P10445777215156617953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P10445777215156617953

/-! ## A139656.P16989237292660209780

`∩[A007519(n+1), A139494(n+1)]`
-/

namespace A139656.P16989237292660209780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P16989237292660209780

/-! ## A139656.P12344633711323248036

`∩[A045390(n+1), A139494(n+1)]`
-/

namespace A139656.P12344633711323248036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P12344633711323248036

/-! ## A139656.P9114794010042937559

`∩[A033250(n+1), A209544(n+1)]`
-/

namespace A139656.P9114794010042937559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P9114794010042937559

/-! ## A139656.P5822919075898126266

`∩[A107008(n+1), A139494(n+1)]`
-/

namespace A139656.P5822919075898126266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P5822919075898126266

/-! ## A139656.P15508183284110756680

`∩[A007519(n+1), A267455(n+1)]`
-/

namespace A139656.P15508183284110756680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P15508183284110756680

/-! ## A139656.P6148446582838484855

`∩[A045390(n+1), A267455(n+1)]`
-/

namespace A139656.P6148446582838484855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P6148446582838484855

/-! ## A139656.P18019765676558063434

`∩[A209544(n+1), A139494(n+1)]`
-/

namespace A139656.P18019765676558063434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P18019765676558063434

/-! ## A139656.P15312499100834181629

`∩[A107008(n+1), A267455(n+1)]`
-/

namespace A139656.P15312499100834181629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P15312499100834181629

/-! ## A139656.P215019488202109063

`∩[A139494(n+1), A242663(n+1)]`
-/

namespace A139656.P215019488202109063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P215019488202109063

/-! ## A139656.P15997124358589479585

`∩[A139494(n+1), A332227(n+1)]`
-/

namespace A139656.P15997124358589479585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139656.P15997124358589479585

/-!
# A139657: Primes of the form x^2 + 330*y^2.

The programs for A139657, there is no canonical definition to state claims against.
-/

/-! ## A139657.P8028513037647522285

`∪[A139666(n+1), A140000(n+1)]`
-/

namespace A139657.P8028513037647522285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P8028513037647522285

/-! ## A139657.P16581425079473111881

`∩[A033212(n+1), A141776(n+1)]`
-/

namespace A139657.P16581425079473111881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P16581425079473111881

/-! ## A139657.P4851115532059872599

`∩[A139496(n+1), A141776(n+1)]`
-/

namespace A139657.P4851115532059872599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P4851115532059872599

/-! ## A139657.P8989359361117265620

`∩[A141776(n+1), A243174(n+1)]`
-/

namespace A139657.P8989359361117265620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P8989359361117265620

/-! ## A139657.P2104049498654178205

`∩[A106950(n+1), A139496(n+1)]`
-/

namespace A139657.P2104049498654178205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P2104049498654178205

/-! ## A139657.P9845245834983140844

`∩[A139496(n+1), A141170(n+1)]`
-/

namespace A139657.P9845245834983140844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P9845245834983140844

/-! ## A139657.P10046800389438811451

`∩[A106950(n+1), A267478(n+1)]`
-/

namespace A139657.P10046800389438811451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P10046800389438811451

/-! ## A139657.P3667504978387263752

`∩[A141170(n+1), A267478(n+1)]`
-/

namespace A139657.P3667504978387263752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P3667504978387263752

/-! ## A139657.P808912971919148550

`∩[A033201(n+1), A107013(n+1)]`
-/

namespace A139657.P808912971919148550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P808912971919148550

/-! ## A139657.P9952777167788015037

`∩[A033201(n+1), A139496(n+1)]`
-/

namespace A139657.P9952777167788015037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P9952777167788015037

/-! ## A139657.P12620385528779471147

`∩[A033201(n+1), A141177(n+1)]`
-/

namespace A139657.P12620385528779471147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P12620385528779471147

/-! ## A139657.P7662499993859061819

`∩[A038876(n+1), A139496(n+1)]`
-/

namespace A139657.P7662499993859061819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P7662499993859061819

/-! ## A139657.P13243105398663044150

`∩[A097934(n+1), A139496(n+1)]`
-/

namespace A139657.P13243105398663044150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P13243105398663044150

/-! ## A139657.P1990092670925641601

`∩[A038903(n+1), A139496(n+1)]`
-/

namespace A139657.P1990092670925641601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P1990092670925641601

/-! ## A139657.P13373586147853989431

`∩[A097959(n+1), A139496(n+1)]`
-/

namespace A139657.P13373586147853989431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P13373586147853989431

/-! ## A139657.P16017774933862436605

`∩[A139496(n+1), A293859(n+1)]`
-/

namespace A139657.P16017774933862436605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P16017774933862436605

/-! ## A139657.P14941544392355503564

`∩[A033200(n+1), A139496(n+1)]`
-/

namespace A139657.P14941544392355503564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P14941544392355503564

/-! ## A139657.P4373149407135743128

`∩[A033203(n+1), A139496(n+1)]`
-/

namespace A139657.P4373149407135743128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P4373149407135743128

/-! ## A139657.P14934419757792642360

`∩[A038895(n+1), A139496(n+1)]`
-/

namespace A139657.P14934419757792642360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P14934419757792642360

/-! ## A139657.P12951239545345264961

`∩[A139496(n+1), A391371(n+1)]`
-/

namespace A139657.P12951239545345264961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139657.P12951239545345264961

/-!
# A139658: Primes of the form x^2 + 345*y^2.

The programs for A139658, there is no canonical definition to state claims against.
-/

/-! ## A139658.P10255542949644811885

`∩[A107152(n+1), A141336(n+1)]`
-/

namespace A139658.P10255542949644811885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P10255542949644811885

/-! ## A139658.P1315282180614784333

`∩[A141336(n+1), A243174(n+1)]`
-/

namespace A139658.P1315282180614784333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P1315282180614784333

/-! ## A139658.P16602119506282036862

`∩[A141336(n+1), A243188(n+1)]`
-/

namespace A139658.P16602119506282036862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P16602119506282036862

/-! ## A139658.P4167719772502521508

`∩[A033212(n+1), A141336(n+1)]`
-/

namespace A139658.P4167719772502521508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P4167719772502521508

/-! ## A139658.P8197610582234955844

`∩[A141336(n+1), A155570(n+1)]`
-/

namespace A139658.P8197610582234955844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P8197610582234955844

/-! ## A139658.P5227272892467230304

`∩[A038951(n+1), A107152(n+1)]`
-/

namespace A139658.P5227272892467230304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P5227272892467230304

/-! ## A139658.P13129097381817566943

`∩[A038951(n+1), A155570(n+1)]`
-/

namespace A139658.P13129097381817566943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P13129097381817566943

/-! ## A139658.P13102851247192309930

`∩[A038951(n+1), A243188(n+1)]`
-/

namespace A139658.P13102851247192309930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P13102851247192309930

/-! ## A139658.P8230190776038282719

`∩[A107152(n+1), A191021(n+1)]`
-/

namespace A139658.P8230190776038282719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P8230190776038282719

/-! ## A139658.P10355852873850569069

`∩[A107152(n+1), A191042(n+1)]`
-/

namespace A139658.P10355852873850569069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P10355852873850569069

/-! ## A139658.P8991595770741193593

`∩[A155570(n+1), A191021(n+1)]`
-/

namespace A139658.P8991595770741193593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P8991595770741193593

/-! ## A139658.P17245234000755660786

`∩[A155570(n+1), A191042(n+1)]`
-/

namespace A139658.P17245234000755660786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P17245234000755660786

/-! ## A139658.P15306549912793895342

`∩[A107152(n+1), A296932(n+1)]`
-/

namespace A139658.P15306549912793895342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P15306549912793895342

/-! ## A139658.P9733633218537135831

`∩[A191021(n+1), A243188(n+1)]`
-/

namespace A139658.P9733633218537135831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P9733633218537135831

/-! ## A139658.P11492961741601865815

`∩[A191042(n+1), A243188(n+1)]`
-/

namespace A139658.P11492961741601865815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P11492961741601865815

/-! ## A139658.P16371657038316408158

`∩[A155570(n+1), A296932(n+1)]`
-/

namespace A139658.P16371657038316408158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P16371657038316408158

/-! ## A139658.P11126506559894693216

`∩[A243188(n+1), A296932(n+1)]`
-/

namespace A139658.P11126506559894693216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P11126506559894693216

/-! ## A139658.P6358358457546086243

`∩[A038897(n+1), A107152(n+1)]`
-/

namespace A139658.P6358358457546086243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P6358358457546086243

/-! ## A139658.P5891494199631111846

`∩[A038897(n+1), A155570(n+1)]`
-/

namespace A139658.P5891494199631111846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P5891494199631111846

/-! ## A139658.P7226300988066384305

`∩[A038897(n+1), A243188(n+1)]`
-/

namespace A139658.P7226300988066384305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139658.P7226300988066384305

/-!
# A139659: Primes of the form x^2 + 357*y^2.

The programs for A139659, there is no canonical definition to state claims against.
-/

/-! ## A139659.P6165789521179138670

`∩[A033215(n+1), A139499(n+1)]`
-/

namespace A139659.P6165789521179138670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P6165789521179138670

/-! ## A139659.P6825415925122002563

`∩[A008846(n+1), A139499(n+1)]`
-/

namespace A139659.P6825415925122002563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P6825415925122002563

/-! ## A139659.P18315544429720053831

`∩[A107134(n+1), A139499(n+1)]`
-/

namespace A139659.P18315544429720053831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P18315544429720053831

/-! ## A139659.P7945019165805092526

`∩[A139499(n+1), A141172(n+1)]`
-/

namespace A139659.P7945019165805092526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P7945019165805092526

/-! ## A139659.P1429211848534152807

`∩[A068228(n+1), A139499(n+1)]`
-/

namespace A139659.P1429211848534152807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P1429211848534152807

/-! ## A139659.P11111243954434579360

`∩[A139499(n+1), A363147(n+1)]`
-/

namespace A139659.P11111243954434579360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P11111243954434579360

/-! ## A139659.P1310242703768576514

`∩[A033215(n+1), A106904(n+1)]`
-/

namespace A139659.P1310242703768576514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P1310242703768576514

/-! ## A139659.P16936745643209819402

`∩[A106904(n+1), A107134(n+1)]`
-/

namespace A139659.P16936745643209819402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P16936745643209819402

/-! ## A139659.P11205367639077064191

`∩[A106904(n+1), A141172(n+1)]`
-/

namespace A139659.P11205367639077064191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P11205367639077064191

/-! ## A139659.P6199942173372807027

`∩[A139499(n+1), A351537(n+1)]`
-/

namespace A139659.P6199942173372807027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P6199942173372807027

/-! ## A139659.P4520318864781562895

`∩[A139499(n+1), A354467(n+1)]`
-/

namespace A139659.P4520318864781562895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P4520318864781562895

/-! ## A139659.P2368449174215990593

`∩[A139499(n+1), A191218(n+1)]`
-/

namespace A139659.P2368449174215990593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P2368449174215990593

/-! ## A139659.P123927418164401077

`∩[A033215(n+1), A038889(n+1)]`
-/

namespace A139659.P123927418164401077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P123927418164401077

/-! ## A139659.P12296512918876485270

`∩[A033215(n+1), A038929(n+1)]`
-/

namespace A139659.P12296512918876485270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P12296512918876485270

/-! ## A139659.P6265868499781817212

`∩[A038874(n+1), A139499(n+1)]`
-/

namespace A139659.P6265868499781817212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P6265868499781817212

/-! ## A139659.P14942341295599184366

`∩[A038929(n+1), A139499(n+1)]`
-/

namespace A139659.P14942341295599184366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P14942341295599184366

/-! ## A139659.P7269738138618790234

`∩[A097933(n+1), A139499(n+1)]`
-/

namespace A139659.P7269738138618790234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P7269738138618790234

/-! ## A139659.P14751633404649683693

`∩[A033215(n+1), A296938(n+1)]`
-/

namespace A139659.P14751633404649683693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P14751633404649683693

/-! ## A139659.P3765332361785586047

`∩[A139499(n+1), A296933(n+1)]`
-/

namespace A139659.P3765332361785586047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P3765332361785586047

/-! ## A139659.P3140429034451739158

`∩[A038878(n+1), A139499(n+1)]`
-/

namespace A139659.P3140429034451739158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139659.P3140429034451739158

/-!
# A139660: Primes of the form x^2 + 385*y^2.

The programs for A139660, there is no canonical definition to state claims against.
-/

/-! ## A139660.P888048682782237623

`∩[A139495(n+1), A316621(n+1)]`
-/

namespace A139660.P888048682782237623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P888048682782237623

/-! ## A139660.P6809360999592892189

`∩[A139493(n+1), A139495(n+1)]`
-/

namespace A139660.P6809360999592892189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P6809360999592892189

/-! ## A139660.P4674631400309814175

`∩[A139495(n+1), A267478(n+1)]`
-/

namespace A139660.P4674631400309814175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P4674631400309814175

/-! ## A139660.P10619122125148264704

`∩[A139495(n+1), A141182(n+1)]`
-/

namespace A139660.P10619122125148264704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P10619122125148264704

/-! ## A139660.P6958622893216205162

`∩[A107134(n+1), A267478(n+1)]`
-/

namespace A139660.P6958622893216205162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P6958622893216205162

/-! ## A139660.P3697212058606185387

`∩[A141172(n+1), A267478(n+1)]`
-/

namespace A139660.P3697212058606185387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P3697212058606185387

/-! ## A139660.P13281738117331648199

`∩[A106881(n+1), A141182(n+1)]`
-/

namespace A139660.P13281738117331648199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P13281738117331648199

/-! ## A139660.P16837182579323465672

`∩[A033205(n+1), A139493(n+1)]`
-/

namespace A139660.P16837182579323465672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P16837182579323465672

/-! ## A139660.P14720237056065769191

`∩[A033205(n+1), A316621(n+1)]`
-/

namespace A139660.P14720237056065769191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P14720237056065769191

/-! ## A139660.P17941365858236596847

`∩[A139493(n+1), A216815(n+1)]`
-/

namespace A139660.P17941365858236596847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P17941365858236596847

/-! ## A139660.P5068805117983711513

`∩[A216815(n+1), A316621(n+1)]`
-/

namespace A139660.P5068805117983711513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P5068805117983711513

/-! ## A139660.P3829456514296776277

`∩[A091729(n+1), A139493(n+1)]`
-/

namespace A139660.P3829456514296776277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P3829456514296776277

/-! ## A139660.P13620058141905719083

`∩[A139495(n+1), A191036(n+1)]`
-/

namespace A139660.P13620058141905719083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P13620058141905719083

/-! ## A139660.P5243877270207440400

`∩[A038881(n+1), A139495(n+1)]`
-/

namespace A139660.P5243877270207440400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P5243877270207440400

/-! ## A139660.P2875046236146232404

`∩[A038933(n+1), A139495(n+1)]`
-/

namespace A139660.P2875046236146232404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P2875046236146232404

/-! ## A139660.P17444903253426153539

`∩[A038961(n+1), A139495(n+1)]`
-/

namespace A139660.P17444903253426153539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P17444903253426153539

/-! ## A139660.P6845799041928976236

`∩[A056874(n+1), A139495(n+1)]`
-/

namespace A139660.P6845799041928976236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P6845799041928976236

/-! ## A139660.P5342848884650959427

`∩[A139495(n+1), A296920(n+1)]`
-/

namespace A139660.P5342848884650959427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P5342848884650959427

/-! ## A139660.P14029054422956459345

`∩[A139495(n+1), A296935(n+1)]`
-/

namespace A139660.P14029054422956459345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P14029054422956459345

/-! ## A139660.P17423219647113246265

`∩[A139495(n+1), A341785(n+1)]`
-/

namespace A139660.P17423219647113246265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139660.P17423219647113246265

/-!
# A139661: Primes of the form x^2 + 408*y^2.

The programs for A139661, there is no canonical definition to state claims against.
-/

/-! ## A139661.P14632882799779826021

`∩[A107008(n+1), A139643(n+1)]`
-/

namespace A139661.P14632882799779826021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P14632882799779826021

/-! ## A139661.P16676021589967165391

`p?[and(-5, A139643(n+1))]`
-/

namespace A139661.P16676021589967165391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A139643 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139661.P16676021589967165391

/-! ## A139661.P10183759195794872222

`∩[A139643(n+1), A332227(n+1)]`
-/

namespace A139661.P10183759195794872222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P10183759195794872222

/-! ## A139661.P6028904336636552495

`∩[A008846(n+1), A139643(n+1)]`
-/

namespace A139661.P6028904336636552495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P6028904336636552495

/-! ## A139661.P4222293451542753109

`∩[A139643(n+1), A242663(n+1)]`
-/

namespace A139661.P4222293451542753109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P4222293451542753109

/-! ## A139661.P16607156517547914001

`∩[A007519(n+1), A139643(n+1)]`
-/

namespace A139661.P16607156517547914001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P16607156517547914001

/-! ## A139661.P7937291421896504709

`∩[A045390(n+1), A139643(n+1)]`
-/

namespace A139661.P7937291421896504709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P7937291421896504709

/-! ## A139661.P4571478644824823980

`∩[A139643(n+1), A209544(n+1)]`
-/

namespace A139661.P4571478644824823980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P4571478644824823980

/-! ## A139661.P10332992347772714436

`∩[A139643(n+1), A354084(n+1)]`
-/

namespace A139661.P10332992347772714436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P10332992347772714436

/-! ## A139661.P14308571775276742591

`∩[A068228(n+1), A139643(n+1)]`
-/

namespace A139661.P14308571775276742591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P14308571775276742591

/-! ## A139661.P16856510565767835902

`∩[A130063(n+1), A139643(n+1)]`
-/

namespace A139661.P16856510565767835902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P16856510565767835902

/-! ## A139661.P4597222413073255819

`∩[A139643(n+1), A363147(n+1)]`
-/

namespace A139661.P4597222413073255819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P4597222413073255819

/-! ## A139661.P11589591864595422492

`∩[A007519(n+1), A106904(n+1)]`
-/

namespace A139661.P11589591864595422492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P11589591864595422492

/-! ## A139661.P457979170454774340

`∩[A045390(n+1), A106904(n+1)]`
-/

namespace A139661.P457979170454774340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P457979170454774340

/-! ## A139661.P772626437119562266

`∩[A106904(n+1), A107008(n+1)]`
-/

namespace A139661.P772626437119562266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P772626437119562266

/-! ## A139661.P13998724924782024590

`∩[A106904(n+1), A130063(n+1)]`
-/

namespace A139661.P13998724924782024590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P13998724924782024590

/-! ## A139661.P4030044959056519224

`∩[A106950(n+1), A139643(n+1)]`
-/

namespace A139661.P4030044959056519224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P4030044959056519224

/-! ## A139661.P12487078341355113401

`∩[A139643(n+1), A141170(n+1)]`
-/

namespace A139661.P12487078341355113401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P12487078341355113401

/-! ## A139661.P11171006390316156914

`∩[A106904(n+1), A209544(n+1)]`
-/

namespace A139661.P11171006390316156914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P11171006390316156914

/-! ## A139661.P15282245175771854424

`∩[A106904(n+1), A242663(n+1)]`
-/

namespace A139661.P15282245175771854424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139661.P15282245175771854424

/-!
# A139662: Primes of the form x^2 + 462*y^2.

The programs for A139662, there is no canonical definition to state claims against.
-/

/-! ## A139662.P1547031993487203427

`∪[A139668(n+1), A140030(n+1)]`
-/

namespace A139662.P1547031993487203427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P1547031993487203427

/-! ## A139662.P2973309298630946633

`∩[A033199(n+1), A139493(n+1)]`
-/

namespace A139662.P2973309298630946633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P2973309298630946633

/-! ## A139662.P16602237500194348843

`∩[A033199(n+1), A316621(n+1)]`
-/

namespace A139662.P16602237500194348843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P16602237500194348843

/-! ## A139662.P5892073660909408567

`∩[A033216(n+1), A139492(n+1)]`
-/

namespace A139662.P5892073660909408567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P5892073660909408567

/-! ## A139662.P449658823945981825

`∩[A107013(n+1), A274675(n+1)]`
-/

namespace A139662.P449658823945981825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P449658823945981825

/-! ## A139662.P7719866318310658672

`∩[A141177(n+1), A274675(n+1)]`
-/

namespace A139662.P7719866318310658672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P7719866318310658672

/-! ## A139662.P10999721648833193851

`∩[A033216(n+1), A243172(n+1)]`
-/

namespace A139662.P10999721648833193851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P10999721648833193851

/-! ## A139662.P12316540176320215357

`∩[A139493(n+1), A155712(n+1)]`
-/

namespace A139662.P12316540176320215357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P12316540176320215357

/-! ## A139662.P14368993733146785667

`∩[A139493(n+1), A390498(n+1)]`
-/

namespace A139662.P14368993733146785667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P14368993733146785667

/-! ## A139662.P14986680469127001321

`∩[A139493(n+1), A140716(n+1)]`
-/

namespace A139662.P14986680469127001321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P14986680469127001321

/-! ## A139662.P2400514229612371507

`∩[A139493(n+1), A155716(n+1)]`
-/

namespace A139662.P2400514229612371507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P2400514229612371507

/-! ## A139662.P8488638864022486654

`∩[A002481(n+1), A139493(n+1)]`
-/

namespace A139662.P8488638864022486654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139662.P8488638864022486654

/-!
# A139663: Primes of the form x^2 + 520*y^2.

The programs for A139663, there is no canonical definition to state claims against.
-/

/-! ## A139663.P3026497558951473870

`∩[A107145(n+1), A139646(n+1)]`
-/

namespace A139663.P3026497558951473870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P3026497558951473870

/-! ## A139663.P10087656960408389215

`∩[A139646(n+1), A332227(n+1)]`
-/

namespace A139663.P10087656960408389215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P10087656960408389215

/-! ## A139663.P6357837671230461145

`∩[A008846(n+1), A139646(n+1)]`
-/

namespace A139663.P6357837671230461145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P6357837671230461145

/-! ## A139663.P9429973339616272265

`∩[A139646(n+1), A242663(n+1)]`
-/

namespace A139663.P9429973339616272265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P9429973339616272265

/-! ## A139663.P463670234419197705

`∩[A033210(n+1), A107145(n+1)]`
-/

namespace A139663.P463670234419197705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P463670234419197705

/-! ## A139663.P6993251024407161866

`∩[A033210(n+1), A139646(n+1)]`
-/

namespace A139663.P6993251024407161866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P6993251024407161866

/-! ## A139663.P11770192845689964987

`∩[A033210(n+1), A141180(n+1)]`
-/

namespace A139663.P11770192845689964987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P11770192845689964987

/-! ## A139663.P7478217704131735302

`∩[A139646(n+1), A141180(n+1)]`
-/

namespace A139663.P7478217704131735302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P7478217704131735302

/-! ## A139663.P17539727689046173949

`∩[A007519(n+1), A139646(n+1)]`
-/

namespace A139663.P17539727689046173949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P17539727689046173949

/-! ## A139663.P8034222804621121728

`∩[A045390(n+1), A139646(n+1)]`
-/

namespace A139663.P8034222804621121728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P8034222804621121728

/-! ## A139663.P3951217393518023484

`∩[A139646(n+1), A209544(n+1)]`
-/

namespace A139663.P3951217393518023484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P3951217393518023484

/-! ## A139663.P11675181224536375624

`∩[A007519(n+1), A141111(n+1)]`
-/

namespace A139663.P11675181224536375624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P11675181224536375624

/-! ## A139663.P2222651809351406382

`∩[A045390(n+1), A141111(n+1)]`
-/

namespace A139663.P2222651809351406382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P2222651809351406382

/-! ## A139663.P1343208026887526021

`∩[A107145(n+1), A141111(n+1)]`
-/

namespace A139663.P1343208026887526021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P1343208026887526021

/-! ## A139663.P7240168891198609939

`∩[A141111(n+1), A209544(n+1)]`
-/

namespace A139663.P7240168891198609939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P7240168891198609939

/-! ## A139663.P12060017597479326624

`∩[A141111(n+1), A242663(n+1)]`
-/

namespace A139663.P12060017597479326624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P12060017597479326624

/-! ## A139663.P14426335383258850836

`∩[A141111(n+1), A332227(n+1)]`
-/

namespace A139663.P14426335383258850836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P14426335383258850836

/-! ## A139663.P4544481419408638909

`∩[A033205(n+1), A139646(n+1)]`
-/

namespace A139663.P4544481419408638909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P4544481419408638909

/-! ## A139663.P15635628633135699375

`∩[A139646(n+1), A216815(n+1)]`
-/

namespace A139663.P15635628633135699375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P15635628633135699375

/-! ## A139663.P1590045627776477468

`∩[A139646(n+1), A363147(n+1)]`
-/

namespace A139663.P1590045627776477468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139663.P1590045627776477468

/-!
# A139664: Primes of the form x^2 + 760*y^2.

The programs for A139664, the canonical program `A139664.P5772820645049705131` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139664 has offset 1).

The definition of A139664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139664.P8322219451718316980

`∩[A107145(n+1), A139650(n+1)]`
-/

namespace A139664.P8322219451718316980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P8322219451718316980

namespace A139664

/-- `∩[A107145(n+1), A139650(n+1)]` -/
def P8322219451718316980.Spec : Prop :=
  ∀ n, (P8322219451718316980.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P4905571650659487387

`∩[A139650(n+1), A332227(n+1)]`
-/

namespace A139664.P4905571650659487387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P4905571650659487387

namespace A139664

/-- `∩[A139650(n+1), A332227(n+1)]` -/
def P4905571650659487387.Spec : Prop :=
  ∀ n, (P4905571650659487387.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P14262411592825066118

`∩[A008846(n+1), A139650(n+1)]`
-/

namespace A139664.P14262411592825066118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P14262411592825066118

namespace A139664

/-- `∩[A008846(n+1), A139650(n+1)]` -/
def P14262411592825066118.Spec : Prop :=
  ∀ n, (P14262411592825066118.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P582639693352113959

`∩[A139650(n+1), A242663(n+1)]`
-/

namespace A139664.P582639693352113959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P582639693352113959

namespace A139664

/-- `∩[A139650(n+1), A242663(n+1)]` -/
def P582639693352113959.Spec : Prop :=
  ∀ n, (P582639693352113959.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P5772820645049705131

`∩[A107145(n+1), A142956(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139664

/-- `∩[A107145(n+1), A142956(n+1)]` -/
def P5772820645049705131.Spec : Prop :=
  ∀ n, (P5772820645049705131.a n : ℤ) = A139664 (n + 1)

theorem P5772820645049705131.correct : P5772820645049705131.Spec := by
  intro n
  simp only [A139664, Nat.add_sub_cancel]

end A139664

/-! ## A139664.P15422837291490914999

`∩[A139650(n+1), A142956(n+1)]`
-/

namespace A139664.P15422837291490914999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P15422837291490914999

namespace A139664

/-- `∩[A139650(n+1), A142956(n+1)]` -/
def P15422837291490914999.Spec : Prop :=
  ∀ n, (P15422837291490914999.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P13175624314331904665

`∩[A141180(n+1), A142956(n+1)]`
-/

namespace A139664.P13175624314331904665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P13175624314331904665

namespace A139664

/-- `∩[A141180(n+1), A142956(n+1)]` -/
def P13175624314331904665.Spec : Prop :=
  ∀ n, (P13175624314331904665.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P16123633169695707231

`∩[A007519(n+1), A139650(n+1)]`
-/

namespace A139664.P16123633169695707231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P16123633169695707231

namespace A139664

/-- `∩[A007519(n+1), A139650(n+1)]` -/
def P16123633169695707231.Spec : Prop :=
  ∀ n, (P16123633169695707231.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P7179481045511693076

`∩[A045390(n+1), A139650(n+1)]`
-/

namespace A139664.P7179481045511693076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P7179481045511693076

namespace A139664

/-- `∩[A045390(n+1), A139650(n+1)]` -/
def P7179481045511693076.Spec : Prop :=
  ∀ n, (P7179481045511693076.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P343638354442949551

`∩[A139650(n+1), A209544(n+1)]`
-/

namespace A139664.P343638354442949551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P343638354442949551

namespace A139664

/-- `∩[A139650(n+1), A209544(n+1)]` -/
def P343638354442949551.Spec : Prop :=
  ∀ n, (P343638354442949551.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P12213693713690380757

`∩[A033205(n+1), A139650(n+1)]`
-/

namespace A139664.P12213693713690380757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P12213693713690380757

namespace A139664

/-- `∩[A033205(n+1), A139650(n+1)]` -/
def P12213693713690380757.Spec : Prop :=
  ∀ n, (P12213693713690380757.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P13182807885546927448

`∩[A007519(n+1), A267603(n+1)]`
-/

namespace A139664.P13182807885546927448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P13182807885546927448

namespace A139664

/-- `∩[A007519(n+1), A267603(n+1)]` -/
def P13182807885546927448.Spec : Prop :=
  ∀ n, (P13182807885546927448.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P12987627035428860241

`∩[A045390(n+1), A267603(n+1)]`
-/

namespace A139664.P12987627035428860241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P12987627035428860241

namespace A139664

/-- `∩[A045390(n+1), A267603(n+1)]` -/
def P12987627035428860241.Spec : Prop :=
  ∀ n, (P12987627035428860241.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P7897191259420306143

`∩[A139650(n+1), A216815(n+1)]`
-/

namespace A139664.P7897191259420306143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P7897191259420306143

namespace A139664

/-- `∩[A139650(n+1), A216815(n+1)]` -/
def P7897191259420306143.Spec : Prop :=
  ∀ n, (P7897191259420306143.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P12831927570595419574

`∩[A107145(n+1), A267603(n+1)]`
-/

namespace A139664.P12831927570595419574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P12831927570595419574

namespace A139664

/-- `∩[A107145(n+1), A267603(n+1)]` -/
def P12831927570595419574.Spec : Prop :=
  ∀ n, (P12831927570595419574.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P5461819396936310288

`∩[A209544(n+1), A267603(n+1)]`
-/

namespace A139664.P5461819396936310288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P5461819396936310288

namespace A139664

/-- `∩[A209544(n+1), A267603(n+1)]` -/
def P5461819396936310288.Spec : Prop :=
  ∀ n, (P5461819396936310288.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P6420076380072783471

`∩[A139650(n+1), A363147(n+1)]`
-/

namespace A139664.P6420076380072783471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P6420076380072783471

namespace A139664

/-- `∩[A139650(n+1), A363147(n+1)]` -/
def P6420076380072783471.Spec : Prop :=
  ∀ n, (P6420076380072783471.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P14628829519794099213

`∩[A242663(n+1), A267603(n+1)]`
-/

namespace A139664.P14628829519794099213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P14628829519794099213

namespace A139664

/-- `∩[A242663(n+1), A267603(n+1)]` -/
def P14628829519794099213.Spec : Prop :=
  ∀ n, (P14628829519794099213.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P10380184686369950500

`∩[A267603(n+1), A332227(n+1)]`
-/

namespace A139664.P10380184686369950500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P10380184686369950500

namespace A139664

/-- `∩[A267603(n+1), A332227(n+1)]` -/
def P10380184686369950500.Spec : Prop :=
  ∀ n, (P10380184686369950500.a n : ℤ) = A139664 (n + 1)

end A139664

/-! ## A139664.P13714141359180318409

`∩[A033201(n+1), A139650(n+1)]`
-/

namespace A139664.P13714141359180318409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139664.P13714141359180318409

namespace A139664

/-- `∩[A033201(n+1), A139650(n+1)]` -/
def P13714141359180318409.Spec : Prop :=
  ∀ n, (P13714141359180318409.a n : ℤ) = A139664 (n + 1)

end A139664

/-!
# A139665: Primes of the form x^2 + 840*y^2.

The programs for A139665, the canonical program `A139665.P1560313932667054479` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139665 has offset 1).

The definition of A139665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139665.P566823444810776563

`∩[A139644(n+1), A139651(n+1)]`
-/

namespace A139665.P566823444810776563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P566823444810776563

namespace A139665

/-- `∩[A139644(n+1), A139651(n+1)]` -/
def P566823444810776563.Spec : Prop :=
  ∀ n, (P566823444810776563.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P6332480574909302638

`∩[A139506(n+1), A139644(n+1)]`
-/

namespace A139665.P6332480574909302638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P6332480574909302638

namespace A139665

/-- `∩[A139506(n+1), A139644(n+1)]` -/
def P6332480574909302638.Spec : Prop :=
  ∀ n, (P6332480574909302638.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P17927297998786327468

`∩[A139506(n+1), A139651(n+1)]`
-/

namespace A139665.P17927297998786327468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P17927297998786327468

namespace A139665

/-- `∩[A139506(n+1), A139651(n+1)]` -/
def P17927297998786327468.Spec : Prop :=
  ∀ n, (P17927297998786327468.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P17201982783515741246

`∩[A139506(n+1), A139655(n+1)]`
-/

namespace A139665.P17201982783515741246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P17201982783515741246

namespace A139665

/-- `∩[A139506(n+1), A139655(n+1)]` -/
def P17201982783515741246.Spec : Prop :=
  ∀ n, (P17201982783515741246.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P2993617049643443207

`∩[A139644(n+1), A139655(n+1)]`
-/

namespace A139665.P2993617049643443207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P2993617049643443207

namespace A139665

/-- `∩[A139644(n+1), A139655(n+1)]` -/
def P2993617049643443207.Spec : Prop :=
  ∀ n, (P2993617049643443207.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P11238577790015020462

`∩[A139651(n+1), A139655(n+1)]`
-/

namespace A139665.P11238577790015020462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P11238577790015020462

namespace A139665

/-- `∩[A139651(n+1), A139655(n+1)]` -/
def P11238577790015020462.Spec : Prop :=
  ∀ n, (P11238577790015020462.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P11864660854956294291

`∩[A139502(n+1), A139506(n+1)]`
-/

namespace A139665.P11864660854956294291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P11864660854956294291

namespace A139665

/-- `∩[A139502(n+1), A139506(n+1)]` -/
def P11864660854956294291.Spec : Prop :=
  ∀ n, (P11864660854956294291.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P17293589995731290200

`∩[A139502(n+1), A139644(n+1)]`
-/

namespace A139665.P17293589995731290200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P17293589995731290200

namespace A139665

/-- `∩[A139502(n+1), A139644(n+1)]` -/
def P17293589995731290200.Spec : Prop :=
  ∀ n, (P17293589995731290200.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P16732564565492613876

`∩[A139502(n+1), A139651(n+1)]`
-/

namespace A139665.P16732564565492613876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P16732564565492613876

namespace A139665

/-- `∩[A139502(n+1), A139651(n+1)]` -/
def P16732564565492613876.Spec : Prop :=
  ∀ n, (P16732564565492613876.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P1560313932667054479

`∩[A139502(n+1), A139655(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139665

/-- `∩[A139502(n+1), A139655(n+1)]` -/
def P1560313932667054479.Spec : Prop :=
  ∀ n, (P1560313932667054479.a n : ℤ) = A139665 (n + 1)

theorem P1560313932667054479.correct : P1560313932667054479.Spec := by
  intro n
  simp only [A139665, Nat.add_sub_cancel]

end A139665

/-! ## A139665.P14433485145282568864

`∩[A033215(n+1), A107145(n+1)]`
-/

namespace A139665.P14433485145282568864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P14433485145282568864

namespace A139665

/-- `∩[A033215(n+1), A107145(n+1)]` -/
def P14433485145282568864.Spec : Prop :=
  ∀ n, (P14433485145282568864.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P866808330946533833

`∩[A033215(n+1), A139502(n+1)]`
-/

namespace A139665.P866808330946533833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P866808330946533833

namespace A139665

/-- `∩[A033215(n+1), A139502(n+1)]` -/
def P866808330946533833.Spec : Prop :=
  ∀ n, (P866808330946533833.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P18026803369095030689

`∩[A033215(n+1), A139651(n+1)]`
-/

namespace A139665.P18026803369095030689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P18026803369095030689

namespace A139665

/-- `∩[A033215(n+1), A139651(n+1)]` -/
def P18026803369095030689.Spec : Prop :=
  ∀ n, (P18026803369095030689.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P5288332610986864629

`∩[A033215(n+1), A139655(n+1)]`
-/

namespace A139665.P5288332610986864629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P5288332610986864629

namespace A139665

/-- `∩[A033215(n+1), A139655(n+1)]` -/
def P5288332610986864629.Spec : Prop :=
  ∀ n, (P5288332610986864629.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P17672461840978968679

`∩[A107145(n+1), A139506(n+1)]`
-/

namespace A139665.P17672461840978968679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P17672461840978968679

namespace A139665

/-- `∩[A107145(n+1), A139506(n+1)]` -/
def P17672461840978968679.Spec : Prop :=
  ∀ n, (P17672461840978968679.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P2389350569754592455

`∩[A107145(n+1), A139644(n+1)]`
-/

namespace A139665.P2389350569754592455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P2389350569754592455

namespace A139665

/-- `∩[A107145(n+1), A139644(n+1)]` -/
def P2389350569754592455.Spec : Prop :=
  ∀ n, (P2389350569754592455.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P10454197094417172650

`∩[A107145(n+1), A139651(n+1)]`
-/

namespace A139665.P10454197094417172650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P10454197094417172650

namespace A139665

/-- `∩[A107145(n+1), A139651(n+1)]` -/
def P10454197094417172650.Spec : Prop :=
  ∀ n, (P10454197094417172650.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P15163984095261687745

`∩[A139502(n+1), A139495(n+1)]`
-/

namespace A139665.P15163984095261687745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P15163984095261687745

namespace A139665

/-- `∩[A139502(n+1), A139495(n+1)]` -/
def P15163984095261687745.Spec : Prop :=
  ∀ n, (P15163984095261687745.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P1516737888846933114

`∩[A139495(n+1), A139506(n+1)]`
-/

namespace A139665.P1516737888846933114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P1516737888846933114

namespace A139665

/-- `∩[A139495(n+1), A139506(n+1)]` -/
def P1516737888846933114.Spec : Prop :=
  ∀ n, (P1516737888846933114.a n : ℤ) = A139665 (n + 1)

end A139665

/-! ## A139665.P10246473813538549019

`∩[A139495(n+1), A139651(n+1)]`
-/

namespace A139665.P10246473813538549019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P10246473813538549019

namespace A139665

/-- `∩[A139495(n+1), A139651(n+1)]` -/
def P10246473813538549019.Spec : Prop :=
  ∀ n, (P10246473813538549019.a n : ℤ) = A139665 (n + 1)

end A139665

/-!
# A139666: Primes of the form x^2 + 1320*y^2.

The programs for A139666, there is no canonical definition to state claims against.
-/

/-! ## A139666.P15756693551404911716

`∩[A139502(n+1), A139648(n+1)]`
-/

namespace A139666.P15756693551404911716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P15756693551404911716

/-! ## A139666.P7803730503015402578

`∩[A139502(n+1), A139657(n+1)]`
-/

namespace A139666.P7803730503015402578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P7803730503015402578

/-! ## A139666.P5339576367032682204

`∩[A139648(n+1), A139657(n+1)]`
-/

namespace A139666.P5339576367032682204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P5339576367032682204

/-! ## A139666.P4339205736952798126

`∩[A033222(n+1), A139502(n+1)]`
-/

namespace A139666.P4339205736952798126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P4339205736952798126

/-! ## A139666.P7010589639324286586

`∩[A033222(n+1), A139657(n+1)]`
-/

namespace A139666.P7010589639324286586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P7010589639324286586

/-! ## A139666.P12209431094116482682

`∩[A033222(n+1), A107145(n+1)]`
-/

namespace A139666.P12209431094116482682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P12209431094116482682

/-! ## A139666.P14572237278507190356

`∩[A107145(n+1), A139648(n+1)]`
-/

namespace A139666.P14572237278507190356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P14572237278507190356

/-! ## A139666.P17639085740551829009

`∩[A107145(n+1), A139657(n+1)]`
-/

namespace A139666.P17639085740551829009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P17639085740551829009

/-! ## A139666.P15320777457062726571

`∩[A107152(n+1), A139657(n+1)]`
-/

namespace A139666.P15320777457062726571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P15320777457062726571

/-! ## A139666.P7865722703270708805

`∩[A107008(n+1), A139648(n+1)]`
-/

namespace A139666.P7865722703270708805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P7865722703270708805

/-! ## A139666.P6203539398576990573

`∩[A107008(n+1), A139657(n+1)]`
-/

namespace A139666.P6203539398576990573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P6203539398576990573

/-! ## A139666.P13630088638049559817

`∩[A033220(n+1), A033222(n+1)]`
-/

namespace A139666.P13630088638049559817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P13630088638049559817

/-! ## A139666.P10432100873067782389

`∩[A033220(n+1), A107202(n+1)]`
-/

namespace A139666.P10432100873067782389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P10432100873067782389

/-! ## A139666.P18330995940446779619

`∩[A033220(n+1), A139648(n+1)]`
-/

namespace A139666.P18330995940446779619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P18330995940446779619

/-! ## A139666.P8654248329973005492

`∩[A033220(n+1), A139657(n+1)]`
-/

namespace A139666.P8654248329973005492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P8654248329973005492

/-! ## A139666.P2964761388370175868

`∩[A107152(n+1), A107202(n+1)]`
-/

namespace A139666.P2964761388370175868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P2964761388370175868

/-! ## A139666.P1236901259616435703

`∩[A107202(n+1), A139502(n+1)]`
-/

namespace A139666.P1236901259616435703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P1236901259616435703

/-! ## A139666.P10476743691037737667

`∩[A107202(n+1), A139648(n+1)]`
-/

namespace A139666.P10476743691037737667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P10476743691037737667

/-! ## A139666.P12746482938966772771

`∩[A107202(n+1), A139657(n+1)]`
-/

namespace A139666.P12746482938966772771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P12746482938966772771

/-! ## A139666.P18023759930251081531

`∩[A107008(n+1), A139496(n+1)]`
-/

namespace A139666.P18023759930251081531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139666.P18023759930251081531

/-!
# A139667: Primes of the form x^2 + 1365*y^2.

The programs for A139667, there is no canonical definition to state claims against.
-/

/-! ## A139667.P10519933074819547433

`∩[A139644(n+1), A139654(n+1)]`
-/

namespace A139667.P10519933074819547433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P10519933074819547433

/-! ## A139667.P11311270770053673987

`∩[A139508(n+1), A139644(n+1)]`
-/

namespace A139667.P11311270770053673987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P11311270770053673987

/-! ## A139667.P2940981397027896780

`∩[A139508(n+1), A139654(n+1)]`
-/

namespace A139667.P2940981397027896780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P2940981397027896780

/-! ## A139667.P662272827531898818

`∩[A139495(n+1), A139508(n+1)]`
-/

namespace A139667.P662272827531898818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P662272827531898818

/-! ## A139667.P2057120584681612152

`∩[A139495(n+1), A139654(n+1)]`
-/

namespace A139667.P2057120584681612152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P2057120584681612152

/-! ## A139667.P2936825256341555585

`∩[A033215(n+1), A139508(n+1)]`
-/

namespace A139667.P2936825256341555585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P2936825256341555585

/-! ## A139667.P250330536142299135

`∩[A107152(n+1), A139654(n+1)]`
-/

namespace A139667.P250330536142299135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P250330536142299135

/-! ## A139667.P8724052748656005579

`∩[A139503(n+1), A139508(n+1)]`
-/

namespace A139667.P8724052748656005579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P8724052748656005579

/-! ## A139667.P9813818940382665480

`∩[A139503(n+1), A139654(n+1)]`
-/

namespace A139667.P9813818940382665480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P9813818940382665480

/-! ## A139667.P15714229907076971514

`∩[A033210(n+1), A139503(n+1)]`
-/

namespace A139667.P15714229907076971514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P15714229907076971514

/-! ## A139667.P14088039485915811651

`∩[A033210(n+1), A139644(n+1)]`
-/

namespace A139667.P14088039485915811651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P14088039485915811651

/-! ## A139667.P2761814716547893900

`∩[A107134(n+1), A139508(n+1)]`
-/

namespace A139667.P2761814716547893900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P2761814716547893900

/-! ## A139667.P11627682096221570145

`∩[A139508(n+1), A141172(n+1)]`
-/

namespace A139667.P11627682096221570145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P11627682096221570145

/-! ## A139667.P15248005966439386775

`∩[A106989(n+1), A107152(n+1)]`
-/

namespace A139667.P15248005966439386775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P15248005966439386775

/-! ## A139667.P13702722053950442179

`∩[A106881(n+1), A139508(n+1)]`
-/

namespace A139667.P13702722053950442179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P13702722053950442179

/-! ## A139667.P5128140893300311550

`∩[A106989(n+1), A139508(n+1)]`
-/

namespace A139667.P5128140893300311550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P5128140893300311550

/-! ## A139667.P12377069934689453722

`∩[A106881(n+1), A139654(n+1)]`
-/

namespace A139667.P12377069934689453722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P12377069934689453722

/-! ## A139667.P3423209257171216545

`∩[A106989(n+1), A139644(n+1)]`
-/

namespace A139667.P3423209257171216545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P3423209257171216545

/-! ## A139667.P13959057564164463237

`∩[A033212(n+1), A139654(n+1)]`
-/

namespace A139667.P13959057564164463237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P13959057564164463237

/-! ## A139667.P10077510320339984406

`∩[A139494(n+1), A139495(n+1)]`
-/

namespace A139667.P10077510320339984406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139667.P10077510320339984406

/-!
# A139668: Primes of the form x^2 + 1848*y^2.

The programs for A139668, there is no canonical definition to state claims against.
-/

/-! ## A139668.P15028097436883176455

`∩[A139506(n+1), A139662(n+1)]`
-/

namespace A139668.P15028097436883176455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P15028097436883176455

/-! ## A139668.P16585413566703231085

`∩[A033222(n+1), A139506(n+1)]`
-/

namespace A139668.P16585413566703231085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P16585413566703231085

/-! ## A139668.P7108477237762825972

`∩[A033222(n+1), A139662(n+1)]`
-/

namespace A139668.P7108477237762825972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P7108477237762825972

/-! ## A139668.P8832033059581777848

`∩[A033222(n+1), A139645(n+1)]`
-/

namespace A139668.P8832033059581777848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P8832033059581777848

/-! ## A139668.P5540270002119438727

`∩[A033215(n+1), A139662(n+1)]`
-/

namespace A139668.P5540270002119438727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P5540270002119438727

/-! ## A139668.P8998011219057511520

`∩[A107008(n+1), A139662(n+1)]`
-/

namespace A139668.P8998011219057511520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P8998011219057511520

/-! ## A139668.P2894111986772319495

`∩[A139645(n+1), A139662(n+1)]`
-/

namespace A139668.P2894111986772319495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P2894111986772319495

/-! ## A139668.P16284209634760749495

`∩[A033215(n+1), A107202(n+1)]`
-/

namespace A139668.P16284209634760749495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P16284209634760749495

/-! ## A139668.P3129325324560915243

`∩[A107202(n+1), A139506(n+1)]`
-/

namespace A139668.P3129325324560915243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P3129325324560915243

/-! ## A139668.P9733916366504969411

`∩[A107202(n+1), A139662(n+1)]`
-/

namespace A139668.P9733916366504969411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P9733916366504969411

/-! ## A139668.P16765177976121522950

`∩[A033222(n+1), A033229(n+1)]`
-/

namespace A139668.P16765177976121522950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P16765177976121522950

/-! ## A139668.P2066288042686659478

`∩[A033229(n+1), A107202(n+1)]`
-/

namespace A139668.P2066288042686659478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P2066288042686659478

/-! ## A139668.P9011320317714276932

`∩[A033229(n+1), A139662(n+1)]`
-/

namespace A139668.P9011320317714276932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P9011320317714276932

/-! ## A139668.P2387911211966264054

`p?[and(-5, A139662(n+1))]`
-/

namespace A139668.P2387911211966264054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A139662 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139668.P2387911211966264054

/-! ## A139668.P5269169640571175630

`∩[A139662(n+1), A332227(n+1)]`
-/

namespace A139668.P5269169640571175630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P5269169640571175630

/-! ## A139668.P16942469374222034348

`∩[A107008(n+1), A139493(n+1)]`
-/

namespace A139668.P16942469374222034348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P16942469374222034348

/-! ## A139668.P543943943146516638

`∩[A139493(n+1), A139506(n+1)]`
-/

namespace A139668.P543943943146516638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P543943943146516638

/-! ## A139668.P3176655076092562060

`∩[A107013(n+1), A139506(n+1)]`
-/

namespace A139668.P3176655076092562060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P3176655076092562060

/-! ## A139668.P6530751513506952371

`∩[A107013(n+1), A139645(n+1)]`
-/

namespace A139668.P6530751513506952371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P6530751513506952371

/-! ## A139668.P11800190625630347071

`∩[A139506(n+1), A141177(n+1)]`
-/

namespace A139668.P11800190625630347071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139668.P11800190625630347071

/-!
# A139669: Number of isomorphism classes of finite groups of order 11*2^n.

The programs for A139669, there is no canonical definition to state claims against.
-/

/-! ## A139669.P3295273164924865253

`A000001(11*2^n)`
-/

namespace A139669.P3295273164924865253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (11 * 2 ^ n)

end

end A139669.P3295273164924865253

/-! ## A139669.P1373160189461854589

`record[A000001(11*(n+1))]`
-/

namespace A139669.P1373160189461854589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (11 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139669.P1373160189461854589

/-! ## A139669.P12788014645483313711

`and(-1, A000001(A005015(n)))`
-/

namespace A139669.P12788014645483313711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000001 (A005015 n).toNat)

end

end A139669.P12788014645483313711

/-! ## A139669.P4130122456300043850

`A006927(n)+A000001(A005015(n))`
-/

namespace A139669.P4130122456300043850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 n + A000001 (A005015 n).toNat

end

end A139669.P4130122456300043850

/-!
# A139670: Number of n X n symmetric binary matrices with all row sums 4.

The programs for A139670, there is no canonical definition to state claims against.
-/

/-! ## A139670.P8056219263768512894

`A333157(A052905(n+2))`
-/

namespace A139670.P8056219263768512894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A052905 (n + 2)).toNat

end

end A139670.P8056219263768512894

/-! ## A139670.P12094710422859137279

`A333157(A155212(n)+12)`
-/

namespace A139670.P12094710422859137279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A155212 n + 12).toNat

end

end A139670.P12094710422859137279

/-! ## A139670.P4093662209629376766

`A333157(eq[4, A002262(n)])`
-/

namespace A139670.P4093662209629376766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139670.P4093662209629376766

/-! ## A139670.P5173732605958843974

`A333157(eq[4, A025581(n)])`
-/

namespace A139670.P5173732605958843974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139670.P5173732605958843974

/-! ## A139670.P2301822187520328251

`A333157(A046691(n+3)-1)`
-/

namespace A139670.P2301822187520328251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A046691 (n + 3) - 1).toNat

end

end A139670.P2301822187520328251

/-!
# A139671: Number of n X n symmetric binary matrices with all row sums 5.

The programs for A139671, there is no canonical definition to state claims against.
-/

/-! ## A139671.P4251481598269164846

`A333157(eq[5, A002262(n)])`
-/

namespace A139671.P4251481598269164846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139671.P4251481598269164846

/-! ## A139671.P4191045316279725738

`A333157(eq[5, A025581(n)])`
-/

namespace A139671.P4191045316279725738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139671.P4191045316279725738

/-! ## A139671.P4372714914055553859

`A333157(Δ[A023551(n+1)])`
-/

namespace A139671.P4372714914055553859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (f1 (n + 1) - f1 n).toNat

end

end A139671.P4372714914055553859

/-! ## A139671.P10621199544958145867

`A333157(A052905(n+3)-1)`
-/

namespace A139671.P10621199544958145867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A052905 (n + 3) - 1).toNat

end

end A139671.P10621199544958145867

/-! ## A139671.P14037037739196106373

`A333157(eq[6, A004736(n+1)])`
-/

namespace A139671.P14037037739196106373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139671.P14037037739196106373

/-!
# A139672: Convolution of A008619 and A001400.

The programs for A139672, the canonical program `A139672.P7340700097007253715` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139672 has offset 1).

The definition of A139672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139672.P7340700097007253715

`ogf(1/(1-2x-x^2+3x^3+x^5-2x^6-2x^7+x^8+3x^10-x^11-2x^12+x^13))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139672

/-- `ogf(1/(1-2x-x^2+3x^3+x^5-2x^6-2x^7+x^8+3x^10-x^11-2x^12+x^13))` -/
def P7340700097007253715.Spec : Prop :=
  ∀ n, P7340700097007253715.a n = A139672 (n + 1)

theorem P7340700097007253715.correct : P7340700097007253715.Spec := by
  intro n
  simp only [A139672, Nat.add_sub_cancel]

end A139672

/-! ## A139672.P16331376886917432233

`∑[A115264(n)]`
-/

namespace A139672.P16331376886917432233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P16331376886917432233

namespace A139672

/-- `∑[A115264(n)]` -/
def P16331376886917432233.Spec : Prop :=
  ∀ n, P16331376886917432233.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P18012011966844068782

`∑[∑[A254594(n)]]`
-/

namespace A139672.P18012011966844068782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P18012011966844068782

namespace A139672

/-- `∑[∑[A254594(n)]]` -/
def P18012011966844068782.Spec : Prop :=
  ∀ n, P18012011966844068782.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P3520457070733411606

`A002621(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A139672.P3520457070733411606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002621 n + a (n - 2)

end

end A139672.P3520457070733411606

namespace A139672

/-- `A002621(n)+a(n-2)` -/
def P3520457070733411606.Spec : Prop :=
  ∀ n, P3520457070733411606.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P4378660436712160148

`∑[A001400(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A139672.P4378660436712160148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A001400 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P4378660436712160148

namespace A139672

/-- `∑[A001400(n)+a(n-2)]` -/
def P4378660436712160148.Spec : Prop :=
  ∀ n, P4378660436712160148.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P16954433293535891037

`∑[∑[A181120(A052938(n+1))]]`
-/

namespace A139672.P16954433293535891037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A052938 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P16954433293535891037

namespace A139672

/-- `∑[∑[A181120(A052938(n+1))]]` -/
def P16954433293535891037.Spec : Prop :=
  ∀ n, P16954433293535891037.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P7561139087898492101

`∑[∑[A254708(n)-A165188(n+1)]]`
-/

namespace A139672.P7561139087898492101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A165188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P7561139087898492101

namespace A139672

/-- `∑[∑[A254708(n)-A165188(n+1)]]` -/
def P7561139087898492101.Spec : Prop :=
  ∀ n, P7561139087898492101.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P16334902663850528423

`∑[A210631(n+12)]`
-/

namespace A139672.P16334902663850528423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P16334902663850528423

namespace A139672

/-- `∑[A210631(n+12)]` -/
def P16334902663850528423.Spec : Prop :=
  ∀ n, P16334902663850528423.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P9500327473428527910

`∑[∑[A029223(3*n)]]`
-/

namespace A139672.P9500327473428527910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P9500327473428527910

namespace A139672

/-- `∑[∑[A029223(3*n)]]` -/
def P9500327473428527910.Spec : Prop :=
  ∀ n, P9500327473428527910.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P3550647405437399567

`∑[∑[A029268(A136320(n))]]`
-/

namespace A139672.P3550647405437399567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A136320 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P3550647405437399567

namespace A139672

/-- `∑[∑[A029268(A136320(n))]]` -/
def P3550647405437399567.Spec : Prop :=
  ∀ n, P3550647405437399567.a n = A139672 (n + 1)

end A139672

/-! ## A139672.P9173855601083769022

`∑[∑[A029268(A047270(n+1))]]`
-/

namespace A139672.P9173855601083769022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029268 (A047270 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139672.P9173855601083769022

namespace A139672

/-- `∑[∑[A029268(A047270(n+1))]]` -/
def P9173855601083769022.Spec : Prop :=
  ∀ n, P9173855601083769022.a n = A139672 (n + 1)

end A139672

/-!
# A139673: Number of n X n symmetric binary matrices with all row sums 6.

The programs for A139673, there is no canonical definition to state claims against.
-/

/-! ## A139673.P16575871994068442566

`A333157(eq[6, A002262(n)])`
-/

namespace A139673.P16575871994068442566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139673.P16575871994068442566

/-! ## A139673.P7230911539745353960

`A333157(eq[6, A025581(n)])`
-/

namespace A139673.P7230911539745353960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139673.P7230911539745353960

/-! ## A139673.P15625141699429093470

`A333157(A055999(n+4)-1)`
-/

namespace A139673.P15625141699429093470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A055999 (n + 4) - 1).toNat

end

end A139673.P15625141699429093470

/-! ## A139673.P13771301355839057280

`A333157(A000096(n+5)+7)`
-/

namespace A139673.P13771301355839057280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A000096 (n + 5) + 7).toNat

end

end A139673.P13771301355839057280

/-! ## A139673.P5805638090888485084

`A333157(eq[7, A004736(n+1)])`
-/

namespace A139673.P5805638090888485084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139673.P5805638090888485084

/-!
# A139674: Number of n X n symmetric binary matrices with all row sums 7.

The programs for A139674, there is no canonical definition to state claims against.
-/

/-! ## A139674.P10105133023356862486

`A333157(eq[7, A002262(n)])`
-/

namespace A139674.P10105133023356862486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139674.P10105133023356862486

/-! ## A139674.P17744692238112734494

`A333157(eq[7, A025581(n)])`
-/

namespace A139674.P17744692238112734494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139674.P17744692238112734494

/-! ## A139674.P3452728194294699942

`A333157(eq[7, A144328(n+1)])`
-/

namespace A139674.P3452728194294699942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139674.P3452728194294699942

/-! ## A139674.P6016509846022377554

`A333157(eq[8, A004736(n+1)])`
-/

namespace A139674.P6016509846022377554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139674.P6016509846022377554

/-!
# A139675: Number of n X n symmetric binary matrices with all row sums 8.

The programs for A139675, there is no canonical definition to state claims against.
-/

/-! ## A139675.P16252292197456198732

`A333157(A051936(n+9))`
-/

namespace A139675.P16252292197456198732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A051936 (n + 9)).toNat

end

end A139675.P16252292197456198732

/-! ## A139675.P5986830764818665776

`A333157(eq[8, A144328(n+1)])`
-/

namespace A139675.P5986830764818665776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139675.P5986830764818665776

/-! ## A139675.P16513226359469679673

`A333157(eq[9, A002260(n+1)])`
-/

namespace A139675.P16513226359469679673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139675.P16513226359469679673

/-! ## A139675.P6164609796854681132

`A333157(eq[9, A004736(n+1)])`
-/

namespace A139675.P6164609796854681132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139675.P6164609796854681132

/-!
# A139677: a(n) = 4*Pi2(2*n) where Pi2 is the twin-prime counting function (A007508).

The programs for A139677, there is no canonical definition to state claims against.
-/

/-! ## A139677.P9956308731978582868

`4*A007508(2*(n+1))`
-/

namespace A139677.P9956308731978582868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007508 (2 * (n + 1))

end

end A139677.P9956308731978582868

/-!
# A139678: Number of n X n symmetric binary matrices with no row sum greater than 2.

The programs for A139678, there is no canonical definition to state claims against.
-/

/-! ## A139678.P2374809877940563050

`A334548(∑[n+3])`
-/

namespace A139678.P2374809877940563050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139678.P2374809877940563050

/-! ## A139678.P3151814392775273814

`record[A334548(A193974(n))]`
-/

namespace A139678.P3151814392775273814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139678.P3151814392775273814

/-! ## A139678.P5347663108129839437

`∑{digits}[n, A334548(A141214(#))]`
-/

namespace A139678.P5347663108129839437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A334548 (A141214 x).toNat).sum

end

end A139678.P5347663108129839437

/-! ## A139678.P17682427808915135393

`record[A334548(record[A087401(n)])]`
-/

namespace A139678.P17682427808915135393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139678.P17682427808915135393

/-! ## A139678.P8738082952803649933

`A334548(A141214(n))+char[9]`
-/

namespace A139678.P8738082952803649933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A139678.P8738082952803649933

/-!
# A139679: Number of n X n symmetric binary matrices with no row sum greater than 3.

The programs for A139679, there is no canonical definition to state claims against.
-/

/-! ## A139679.P1770349140851807944

`A334548(∑[n+4]+2)`
-/

namespace A139679.P1770349140851807944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A139679.P1770349140851807944

/-! ## A139679.P14906032453078675216

`record[A334548(abs(∑[3-n]-2))]`
-/

namespace A139679.P14906032453078675216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 |∑ j ∈ Finset.range (n + 1), f2 j - 2|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139679.P14906032453078675216

/-! ## A139679.P18184817215424675309

`record[gcd(A122960(n+1), A334548(n))]`
-/

namespace A139679.P18184817215424675309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122960 (n + 1)) (A334548 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139679.P18184817215424675309

/-! ## A139679.P1839815309365809461

`A334548(A046691(n+2))+A033483(n)`
-/

namespace A139679.P1839815309365809461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A046691 (n + 2)).toNat + A033483 n

end

end A139679.P1839815309365809461

/-!
# A139680: Number of n X n symmetric binary matrices with no row sum greater than 4.

The programs for A139680, there is no canonical definition to state claims against.
-/

/-! ## A139680.P12534849783463017047

`A334548(∑[round(acot(n)+n)+5]+2)`
-/

namespace A139680.P12534849783463017047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A139680.P12534849783463017047

/-! ## A139680.P5062991704646063242

`A334548(A052905(n+2))`
-/

namespace A139680.P5062991704646063242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A052905 (n + 2)).toNat

end

end A139680.P5062991704646063242

/-! ## A139680.P7603098368857683847

`A334548(A056115(n)+10)`
-/

namespace A139680.P7603098368857683847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 (A056115 n + 10).toNat

end

end A139680.P7603098368857683847

/-!
# A139685: Number of n X n symmetric binary matrices with no row sum greater than 9.

The programs for A139685, there is no canonical definition to state claims against.
-/

/-! ## A139685.P14210617203357935998

`∏[∏{p}[4^n, #^n]]`
-/

namespace A139685.P14210617203357935998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139685.P14210617203357935998

/-! ## A139685.P10354617084712735795

`2^lcm(∑[dr(n)], ∑[n])`
-/

namespace A139685.P10354617084712735795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A139685.P10354617084712735795

/-! ## A139685.P9280495549609599300

`∏[record[A120880(n)]]`
-/

namespace A139685.P9280495549609599300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139685.P9280495549609599300

/-! ## A139685.P2727819173230622929

`∏[record[A151668(n)]]`
-/

namespace A139685.P2727819173230622929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139685.P2727819173230622929

/-! ## A139685.P1407006885893990286

`∏[record[A164281(n)]]`
-/

namespace A139685.P1407006885893990286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A139685.P1407006885893990286

/-!
# A139686: Odd multiplicative orders of 2 modulo primes.

The programs for A139686, there is no canonical definition to state claims against.
-/

/-! ## A139686.P8664858241348230163

`A014664(eq[1, gcd(4, A014664(n+2))]+2)`
-/

namespace A139686.P8664858241348230163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A014664 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A139686.P8664858241348230163

/-! ## A139686.P12792054883862467852

`A014664(eq[1, and(1, A014664(n+2))]+2)`
-/

namespace A139686.P12792054883862467852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014664 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A139686.P12792054883862467852

/-! ## A139686.P15876401032768110960

`A014664(eq[1, A240663(n+2)+1]+2)`
-/

namespace A139686.P15876401032768110960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240663 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A139686.P15876401032768110960

/-! ## A139686.P13269358251155562835

`A014664(eq[A014664(n+2), A082654(n+2)]+2)`
-/

namespace A139686.P13269358251155562835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A139686.P13269358251155562835

/-! ## A139686.P1930330665051593388

`A002326(floor(A014663(n+1)/2))`
-/

namespace A139686.P1930330665051593388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(A014663 (n + 1) : ℚ) / 2⌋.toNat

end

end A139686.P1930330665051593388

/-! ## A139686.P307922919364825490

`A002326((A014663(n+1)-1)/2)`
-/

namespace A139686.P307922919364825490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A014663 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A139686.P307922919364825490

/-! ## A139686.P11640022259381352672

`A002326(A000010(A014663(n+1))/2)`
-/

namespace A139686.P11640022259381352672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A000010 (A014663 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A139686.P11640022259381352672

/-! ## A139686.P11039066282377950578

`filter[A014664(n+2), A000035(#)]`
-/

namespace A139686.P11039066282377950578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A139686.P11039066282377950578

/-! ## A139686.P3228968176087745839

`filter[A014664(n+2), A266070(#)]`
-/

namespace A139686.P3228968176087745839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A139686.P3228968176087745839

/-! ## A139686.P5484490938209601304

`filter[A014664(n+3), A266719(#)]`
-/

namespace A139686.P5484490938209601304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A139686.P5484490938209601304

/-! ## A139686.P17306025200805099048

`filter[A014664(n+3), A296066(#)]`
-/

namespace A139686.P17306025200805099048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A139686.P17306025200805099048

/-! ## A139686.P16482846747499148022

`filter[A014664(n+4), A267256(#)]`
-/

namespace A139686.P16482846747499148022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014664 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A139686.P16482846747499148022

/-! ## A139686.P1523161209835186698

`A007733(A014663(n+1))`
-/

namespace A139686.P1523161209835186698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A014663 (n + 1)).toNat

end

end A139686.P1523161209835186698

/-! ## A139686.P13249838236664046481

`A007733(2*A049564(n+2))`
-/

namespace A139686.P13249838236664046481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * A049564 (n + 2)).toNat

end

end A139686.P13249838236664046481

/-!
# A139687: Triangle T(n,k) read by rows: number of nonnegative lattice paths starting at height floor(n/2), with ceiling(n/2) up-steps and k down-steps.

The programs for A139687, the canonical program `A139687.P14828024016880359546` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139687 has offset 0).

The definition of A139687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139687.P14828024016880359546

`C(ceil(row(n)/2)+col(n), col(n))-C(ceil(row(n)/2)+col(n), row(n)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139687

/-- `C(ceil(row(n)/2)+col(n), col(n))-C(ceil(row(n)/2)+col(n), row(n)+1)` -/
def P14828024016880359546.Spec : Prop :=
  ∀ n, P14828024016880359546.a n = A139687 n

theorem P14828024016880359546.correct : P14828024016880359546.Spec := by
  intro n
  simp only [A139687]

end A139687

/-!
# A139688: Half the number of n X n binary matrices with row sum i equal to column sum i, i in 1..n.

The programs for A139688, there is no canonical definition to state claims against.
-/

/-! ## A139688.P5857983613855336003

`A229865(n+1)/2`
-/

namespace A139688.P5857983613855336003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229865 (n + 1) : ℚ) / 2

end

end A139688.P5857983613855336003

/-! ## A139688.P14566319441120826540

`Δ[∑[A229865(n)]/2]`
-/

namespace A139688.P14566319441120826540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229865 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139688.P14566319441120826540

/-! ## A139688.P402667684849415364

`2^n*A007080(n+1)`
-/

namespace A139688.P402667684849415364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007080 (n + 1)

end

end A139688.P402667684849415364

/-! ## A139688.P705653568147106927

`A007080(n+1)*A000079(n)`
-/

namespace A139688.P705653568147106927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (n + 1) * A000079 n

end

end A139688.P705653568147106927

/-! ## A139688.P394898887212324349

`A007080(n+1)*A011782(n+1)`
-/

namespace A139688.P394898887212324349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (n + 1) * A011782 (n + 1)

end

end A139688.P394898887212324349

/-!
# A139689: If (n-th Chen prime) + 2 is a prime then 1 else 0.

The programs for A139689, there is no canonical definition to state claims against.
-/

/-! ## A139689.P16894259116094903187

`A010051(A139690(n+1))`
-/

namespace A139689.P16894259116094903187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A139690 (n + 1)).toNat

end

end A139689.P16894259116094903187

/-! ## A139689.P12027125710411098664

`A010051(A109611(n+1)+2)`
-/

namespace A139689.P12027125710411098664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A109611 (n + 1) + 2).toNat

end

end A139689.P12027125710411098664

/-! ## A139689.P10855398950878780622

`2-A001222(Δ[A118482(n)]+2)`
-/

namespace A139689.P10855398950878780622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (f1 (n + 1) - f1 n + 2).toNat

end

end A139689.P10855398950878780622

/-! ## A139689.P8052787130169109764

`2-A001222(A109611(n+1)+2)`
-/

namespace A139689.P8052787130169109764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (A109611 (n + 1) + 2).toNat

end

end A139689.P8052787130169109764

/-! ## A139689.P7337424543949459016

`and(A001222(A139690(n+1)), A139648(n+1))`
-/

namespace A139689.P7337424543949459016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139648 (n + 1))

end

end A139689.P7337424543949459016

/-! ## A139689.P14970627744441316862

`and(A001222(A139690(n+1)), A139649(n+1))`
-/

namespace A139689.P14970627744441316862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139649 (n + 1))

end

end A139689.P14970627744441316862

/-! ## A139689.P2308636861255298150

`and(A001222(A139690(n+1)), A139652(n+1))`
-/

namespace A139689.P2308636861255298150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139652 (n + 1))

end

end A139689.P2308636861255298150

/-! ## A139689.P3627883963291895177

`and(A001222(A139690(n+1)), A139653(n+1))`
-/

namespace A139689.P3627883963291895177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139653 (n + 1))

end

end A139689.P3627883963291895177

/-! ## A139689.P5557580182965389264

`and(A001222(A139690(n+1)), A139654(n+1))`
-/

namespace A139689.P5557580182965389264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139654 (n + 1))

end

end A139689.P5557580182965389264

/-! ## A139689.P1221937289078143809

`and(A001222(A139690(n+1)), A139655(n+1))`
-/

namespace A139689.P1221937289078143809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139655 (n + 1))

end

end A139689.P1221937289078143809

/-! ## A139689.P14749683580461099036

`and(A001222(A139690(n+1)), A139656(n+1))`
-/

namespace A139689.P14749683580461099036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139656 (n + 1))

end

end A139689.P14749683580461099036

/-! ## A139689.P17821134317999264941

`and(A001222(A139690(n+1)), A139660(n+1))`
-/

namespace A139689.P17821134317999264941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A139690 (n + 1)).toNat) (A139660 (n + 1))

end

end A139689.P17821134317999264941

/-! ## A139689.P6634283879111920146

`1-A064911(A109611(n+1)+2)`
-/

namespace A139689.P6634283879111920146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064911 (A109611 (n + 1) + 2).toNat

end

end A139689.P6634283879111920146

/-! ## A139689.P13382083257263174785

`A353670(A109611(n+1)+2)`
-/

namespace A139689.P13382083257263174785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (A109611 (n + 1) + 2).toNat

end

end A139689.P13382083257263174785

/-! ## A139689.P8352889676230821082

`A322353(2*A139690(n+1))`
-/

namespace A139689.P8352889676230821082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (2 * A139690 (n + 1)).toNat

end

end A139689.P8352889676230821082

/-! ## A139689.P3718270643890500678

`A064911(2*A139690(n+1))`
-/

namespace A139689.P3718270643890500678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A139690 (n + 1)).toNat

end

end A139689.P3718270643890500678

/-! ## A139689.P13622394001491827017

`A353475(2*A139690(n+1))`
-/

namespace A139689.P13622394001491827017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (2 * A139690 (n + 1)).toNat

end

end A139689.P13622394001491827017

/-! ## A139689.P5557041171946536599

`A064911(2*(A109611(n+1)+2))`
-/

namespace A139689.P5557041171946536599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (A109611 (n + 1) + 2)).toNat

end

end A139689.P5557041171946536599

/-! ## A139689.P3776378267790912287

`A064911(A139690(n+1)+A139690(n+1))`
-/

namespace A139689.P3776378267790912287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A139690 (n + 1) + A139690 (n + 1)).toNat

end

end A139689.P3776378267790912287

/-!
# A139690: a(n) = A109611(n) + 2.

The programs for A139690, there is no canonical definition to state claims against.
-/

/-! ## A139690.P11860555278954859753

`A109611(n+1)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139690.P11860555278954859753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1) + 2

end

end A139690.P11860555278954859753

/-! ## A139690.P12218927455606926543

`A118776(n)+a(n-1)` with `a(0)=4`
-/

namespace A139690.P12218927455606926543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A118776 n + a (n - 1)

end

end A139690.P12218927455606926543

/-! ## A139690.P8404778024783311448

`∪[A006512(n+1), A062721(n+1)]`
-/

namespace A139690.P8404778024783311448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139690.P8404778024783311448

/-! ## A139690.P224138198990871159

`∪[A001359(n+1), A063637(n+1)]+2`
-/

namespace A139690.P224138198990871159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A139690.P224138198990871159

/-! ## A139690.P9591482671536939027

`∪[A063637(n+1), A124588(n+1)]+2`
-/

namespace A139690.P9591482671536939027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A139690.P9591482671536939027

/-! ## A139690.P16477426967192955981

`∪[A063637(n+1), A238528(n+1)]+2`
-/

namespace A139690.P16477426967192955981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A139690.P16477426967192955981

/-! ## A139690.P12622861937515773800

`Δ[A118482(n)]+2`
-/

namespace A139690.P12622861937515773800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A139690.P12622861937515773800

/-! ## A139690.P7446112822365319444

`A007429(A109611(n+1))`
-/

namespace A139690.P7446112822365319444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A109611 (n + 1)).toNat

end

end A139690.P7446112822365319444

/-! ## A139690.P10414399708720382134

`filter[A052147(n+1), A101040(#)]`
-/

namespace A139690.P10414399708720382134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A139690.P10414399708720382134

/-! ## A139690.P11638552562226189127

`p?[A037143(n+1)-2]+2`
-/

namespace A139690.P11638552562226189127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A139690.P11638552562226189127

/-! ## A139690.P11009722658793375921

`p?[lt[A001222(n+1), 3]-1]+2`
-/

namespace A139690.P11009722658793375921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A139690.P11009722658793375921

/-! ## A139690.P15605473691385860785

`p?[abs(1-lt[A305809(n+1), 3])]+2`
-/

namespace A139690.P15605473691385860785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A139690.P15605473691385860785

/-! ## A139690.P4288481354989285990

`∩[A037143(n+1), A052147(n+1)]`
-/

namespace A139690.P4288481354989285990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139690.P4288481354989285990

/-! ## A139690.P2443793933891492170

`p?[lt[A292504(n+2), 3]]+2`
-/

namespace A139690.P2443793933891492170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2

end

end A139690.P2443793933891492170

/-! ## A139690.P4812964589422310676

`p?[lt[∑{e}[n+1, #], 3]-1]+2`
-/

namespace A139690.P4812964589422310676
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f4 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A139690.P4812964589422310676

/-! ## A139690.P14067292316944747272

`p?[lt[A001055(n+1)-1, 2]-1]+2`
-/

namespace A139690.P14067292316944747272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A139690.P14067292316944747272

/-! ## A139690.P4889930571916571806

`A003969(A109611(n+1))`
-/

namespace A139690.P4889930571916571806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (A109611 (n + 1)).toNat

end

end A139690.P4889930571916571806

/-! ## A139690.P17621219815367232036

`A004086(A118495(n+1))+2`
-/

namespace A139690.P17621219815367232036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A118495 (n + 1)).toNat + 2

end

end A139690.P17621219815367232036

/-! ## A139690.P15814061590559565629

`eq[A003415(n), A281119(n+2)]+2`
-/

namespace A139690.P15814061590559565629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A139690.P15814061590559565629

/-! ## A139690.P8298522050268579181

`eq[A018783(n), A281119(n+2)]+2`
-/

namespace A139690.P8298522050268579181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A139690.P8298522050268579181

/-!
# A139693: a(n) is the smallest positive integer m where, for k divides m, minimum(|k - m/k|) = n.

The programs for A139693, the canonical program `A139693.P17569586885177204197` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139693 has offset 0).

The definition of A139693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139693.P7571451199905629941

`lcm(A151800(n)-a(n-1), A151800(n))` with `a(0)=1`
-/

namespace A139693.P7571451199905629941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A151800 n - (a (n - 1) : ℤ)) (A151800 n)

end

end A139693.P7571451199905629941

namespace A139693

/-- `lcm(A151800(n)-a(n-1), A151800(n))` -/
def P7571451199905629941.Spec : Prop :=
  ∀ n, (P7571451199905629941.a n : ℤ) = A139693 n

end A139693

/-! ## A139693.P17569586885177204197

`lcm(A007918(n+1)-a(n-1), A007918(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139693

/-- `lcm(A007918(n+1)-a(n-1), A007918(n+1))` -/
def P17569586885177204197.Spec : Prop :=
  ∀ n, (P17569586885177204197.a n : ℤ) = A139693 n

theorem P17569586885177204197.correct : P17569586885177204197.Spec := by
  intro n
  simp only [A139693]

end A139693

/-! ## A139693.P2657854051567059104

`A159477(n+1)²-A013636(n)`
-/

namespace A139693.P2657854051567059104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) ^ 2 - A013636 n

end

end A139693.P2657854051567059104

namespace A139693

/-- `A159477(n+1)²-A013636(n)` -/
def P2657854051567059104.Spec : Prop :=
  ∀ n, P2657854051567059104.a n = A139693 n

end A139693

/-! ## A139693.P12986414369344029349

`A159477(n+1)²-n*A151800(n)`
-/

namespace A139693.P12986414369344029349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) ^ 2 - (n : ℤ) * A151800 n

end

end A139693.P12986414369344029349

namespace A139693

/-- `A159477(n+1)²-n*A151800(n)` -/
def P12986414369344029349.Spec : Prop :=
  ∀ n, P12986414369344029349.a n = A139693 n

end A139693

/-! ## A139693.P2341039070413559711

`A013632(A028310(n))*A159477(n+1)`
-/

namespace A139693.P2341039070413559711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A028310 n).toNat * A159477 (n + 1)

end

end A139693.P2341039070413559711

namespace A139693

/-- `A013632(A028310(n))*A159477(n+1)` -/
def P2341039070413559711.Spec : Prop :=
  ∀ n, P2341039070413559711.a n = A139693 n

end A139693

/-! ## A139693.P6590948674937065483

`(A151800(n)-A028310(n))*A159477(n+1)`
-/

namespace A139693.P6590948674937065483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151800 n - A028310 n) * A159477 (n + 1)

end

end A139693.P6590948674937065483

namespace A139693

/-- `(A151800(n)-A028310(n))*A159477(n+1)` -/
def P6590948674937065483.Spec : Prop :=
  ∀ n, P6590948674937065483.a n = A139693 n

end A139693

/-! ## A139693.P11748654351032964310

`lcm(A159477(n+1), A181983(A159477(n+1)-n))`
-/

namespace A139693.P11748654351032964310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A159477 (n + 1)) (A181983 (A159477 (n + 1) - (n : ℤ)).toNat)

end

end A139693.P11748654351032964310

namespace A139693

/-- `lcm(A159477(n+1), A181983(A159477(n+1)-n))` -/
def P11748654351032964310.Spec : Prop :=
  ∀ n, (P11748654351032964310.a n : ℤ) = A139693 n

end A139693

/-! ## A139693.P108828963167541450

`(A024000(n)-A024000(A159477(n+1)))*A159477(n+1)`
-/

namespace A139693.P108828963167541450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024000 n - A024000 (A159477 (n + 1)).toNat) * A159477 (n + 1)

end

end A139693.P108828963167541450

namespace A139693

/-- `(A024000(n)-A024000(A159477(n+1)))*A159477(n+1)` -/
def P108828963167541450.Spec : Prop :=
  ∀ n, P108828963167541450.a n = A139693 n

end A139693

/-! ## A139693.P9394422786322119581

`(A159477(n+1)-A000720(A008578(n+1)))*A159477(n+1)`
-/

namespace A139693.P9394422786322119581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159477 (n + 1) - A000720 (A008578 (n + 1)).toNat) * A159477 (n + 1)

end

end A139693.P9394422786322119581

namespace A139693

/-- `(A159477(n+1)-A000720(A008578(n+1)))*A159477(n+1)` -/
def P9394422786322119581.Spec : Prop :=
  ∀ n, P9394422786322119581.a n = A139693 n

end A139693

/-! ## A139693.P15467507470464153395

`(A159477(A119257(n+1))-n)*A159477(n+1)`
-/

namespace A139693.P15467507470464153395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159477 (A119257 (n + 1)).toNat - (n : ℤ)) * A159477 (n + 1)

end

end A139693.P15467507470464153395

namespace A139693

/-- `(A159477(A119257(n+1))-n)*A159477(n+1)` -/
def P15467507470464153395.Spec : Prop :=
  ∀ n, P15467507470464153395.a n = A139693 n

end A139693

/-! ## A139693.P17303019693026639685

`A028310((A159477(n+1)-n)*A159477(n+1))`
-/

namespace A139693.P17303019693026639685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((A159477 (n + 1) - (n : ℤ)) * A159477 (n + 1)).toNat

end

end A139693.P17303019693026639685

namespace A139693

/-- `A028310((A159477(n+1)-n)*A159477(n+1))` -/
def P17303019693026639685.Spec : Prop :=
  ∀ n, P17303019693026639685.a n = A139693 n

end A139693

/-! ## A139693.P3114856424056070691

`(A007918(n+1)*A013632(n))%A000230(n+1)`
-/

namespace A139693.P3114856424056070691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007918 (n + 1) * A013632 n) (A000230 (n + 1))

end

end A139693.P3114856424056070691

namespace A139693

/-- `(A007918(n+1)*A013632(n))%A000230(n+1)` -/
def P3114856424056070691.Spec : Prop :=
  ∀ n, P3114856424056070691.a n = A139693 n

end A139693

/-!
# A139695: a(1)=1. a(n) = the smallest integer > a(n-1) such that |d(a(n)) - d(a(n-1))| = n-1, where d(m) = the number of positive divisors of m.

The programs for A139695, there is no canonical definition to state claims against.
-/

/-! ## A139695.P157188064553007330

`A059253((A120070(n+2)+1)^n)`
-/

namespace A139695.P157188064553007330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 ((A120070 (n + 2) + 1) ^ n).toNat

end

end A139695.P157188064553007330

/-! ## A139695.P5822345340569445597

`A000009(A001315(n))%A036785(n+1)`
-/

namespace A139695.P5822345340569445597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A001315 n).toNat) (A036785 (n + 1))

end

end A139695.P5822345340569445597

/-!
# A139696: a(n) = the number of divisors of A139695(n).

The programs for A139696, there is no canonical definition to state claims against.
-/

/-! ## A139696.P1282496461600607521

`A008343(n+1)+2%A103639(n)`
-/

namespace A139696.P1282496461600607521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008343 (n + 1) + Int.tmod 2 (A103639 n)

end

end A139696.P1282496461600607521

/-! ## A139696.P6189968527570555822

`A008343(n+1)+A000038(A097479(n))`
-/

namespace A139696.P6189968527570555822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008343 (n + 1) + A000038 (A097479 n).toNat

end

end A139696.P6189968527570555822

/-! ## A139696.P12523210238383220236

`A130130(A211810(n+1))+A008343(n+1)`
-/

namespace A139696.P12523210238383220236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A211810 (n + 1)).toNat + A008343 (n + 1)

end

end A139696.P12523210238383220236

/-! ## A139696.P14699513724104771626

`(A008343(n+1)+2)%A291868(n+1)`
-/

namespace A139696.P14699513724104771626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008343 (n + 1) + 2) (A291868 (n + 1))

end

end A139696.P14699513724104771626

/-! ## A139696.P2769211171064172771

`A036579(A001248(n+1))+A008343(n+1)`
-/

namespace A139696.P2769211171064172771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (A001248 (n + 1)).toNat + A008343 (n + 1)

end

end A139696.P2769211171064172771

/-!
# A139697: Binomial transform of [1, 12, 12, 12, ...].

The programs for A139697, the canonical program `A139697.P3441591318575593331` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139697 has offset 1).

The definition of A139697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139697.P3441591318575593331

`12*2^n-11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139697

/-- `12*2^n-11` -/
def P3441591318575593331.Spec : Prop :=
  ∀ n, P3441591318575593331.a n = A139697 (n + 1)

theorem P3441591318575593331.correct : P3441591318575593331.Spec := by
  intro n
  simp only [A139697, Nat.add_sub_cancel]

end A139697

/-! ## A139697.P16998084055521311372

`ogf((1+10x)/(1-3x+2x^2))`
-/

namespace A139697.P16998084055521311372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -3, 2] n

end

end A139697.P16998084055521311372

namespace A139697

/-- `ogf((1+10x)/(1-3x+2x^2))` -/
def P16998084055521311372.Spec : Prop :=
  ∀ n, P16998084055521311372.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P3429400852484367234

`∑[2*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A139697.P3429400852484367234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P3429400852484367234

namespace A139697

/-- `∑[2*a(n-1)]` -/
def P3429400852484367234.Spec : Prop :=
  ∀ n, (P3429400852484367234.a n : ℤ) = A139697 (n + 1)

end A139697

/-! ## A139697.P939144367359548565

`2*(a(n-1)+11/2)` with `a(0)=1`
-/

namespace A139697.P939144367359548565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (11 : ℚ) / 2)

end

end A139697.P939144367359548565

namespace A139697

/-- `2*(a(n-1)+11/2)` -/
def P939144367359548565.Spec : Prop :=
  ∀ n, P939144367359548565.a n = (A139697 (n + 1) : ℚ)

theorem P939144367359548565.correct : P939144367359548565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139697, Nat.add_sub_cancel, A139697.P939144367359548565.a, A139697.P3441591318575593331.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139697, Nat.add_sub_cancel, A139697.P939144367359548565.a, A139697.P3441591318575593331.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139697

/-! ## A139697.P2492386828951606554

`or(1, 2*(a(n-1)+5))` with `a(0)=1`
-/

namespace A139697.P2492386828951606554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * (a (n - 1) + 5))

end

end A139697.P2492386828951606554

namespace A139697

/-- `or(1, 2*(a(n-1)+5))` -/
def P2492386828951606554.Spec : Prop :=
  ∀ n, (P2492386828951606554.a n : ℤ) = A139697 (n + 1)

end A139697

/-! ## A139697.P10126147276728743040

`xor(1, 2*(a(n-1)+5))` with `a(0)=1`
-/

namespace A139697.P10126147276728743040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * (a (n - 1) + 5))

end

end A139697.P10126147276728743040

namespace A139697

/-- `xor(1, 2*(a(n-1)+5))` -/
def P10126147276728743040.Spec : Prop :=
  ∀ n, (P10126147276728743040.a n : ℤ) = A139697 (n + 1)

end A139697

/-! ## A139697.P941894928585112920

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A139697.P941894928585112920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P941894928585112920

namespace A139697

/-- `∑[a(n-1)+a(n-1)]` -/
def P941894928585112920.Spec : Prop :=
  ∀ n, (P941894928585112920.a n : ℤ) = A139697 (n + 1)

end A139697

/-! ## A139697.P311396217560706407

`∑[(6*2^n)^C(n, C(n, n²))]`
-/

namespace A139697.P311396217560706407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * 2 ^ n) ^ Nat.choose n (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P311396217560706407

namespace A139697

/-- `∑[(6*2^n)^C(n, C(n, n²))]` -/
def P311396217560706407.Spec : Prop :=
  ∀ n, (P311396217560706407.a n : ℤ) = A139697 (n + 1)

end A139697

/-! ## A139697.P15391741541640982763

`xor(1, 12*A000225(n))`
-/

namespace A139697.P15391741541640982763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (12 * A000225 n)

end

end A139697.P15391741541640982763

namespace A139697

/-- `xor(1, 12*A000225(n))` -/
def P15391741541640982763.Spec : Prop :=
  ∀ n, P15391741541640982763.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P7941913189902601539

`abs(1-2*A048488(n))`
-/

namespace A139697.P7941913189902601539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A048488 n|

end

end A139697.P7941913189902601539

namespace A139697

/-- `abs(1-2*A048488(n))` -/
def P7941913189902601539.Spec : Prop :=
  ∀ n, P7941913189902601539.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P14585992622731057609

`abs(6-A048488(n+1))`
-/

namespace A139697.P14585992622731057609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A048488 (n + 1)|

end

end A139697.P14585992622731057609

namespace A139697

/-- `abs(6-A048488(n+1))` -/
def P14585992622731057609.Spec : Prop :=
  ∀ n, P14585992622731057609.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P15980855764889572916

`∑[lcm(a(n-1), A007283(n+1))]` with `a(0)=1`
-/

namespace A139697.P15980855764889572916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A007283 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P15980855764889572916

namespace A139697

/-- `∑[lcm(a(n-1), A007283(n+1))]` -/
def P15980855764889572916.Spec : Prop :=
  ∀ n, (P15980855764889572916.a n : ℤ) = A139697 (n + 1)

end A139697

/-! ## A139697.P6615605290232658491

`∑[A003945(A114637(n+1))]`
-/

namespace A139697.P6615605290232658491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A114637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P6615605290232658491

namespace A139697

/-- `∑[A003945(A114637(n+1))]` -/
def P6615605290232658491.Spec : Prop :=
  ∀ n, P6615605290232658491.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P15052164775545382937

`∑[record[A010685(n)*A063759(n)]]`
-/

namespace A139697.P15052164775545382937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A063759 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P15052164775545382937

namespace A139697

/-- `∑[record[A010685(n)*A063759(n)]]` -/
def P15052164775545382937.Spec : Prop :=
  ∀ n, P15052164775545382937.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P6855157022269261614

`∑[(A131572(n)+A063759(n))*A063759(n)]`
-/

namespace A139697.P6855157022269261614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131572 n + A063759 n) * A063759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P6855157022269261614

namespace A139697

/-- `∑[(A131572(n)+A063759(n))*A063759(n)]` -/
def P6855157022269261614.Spec : Prop :=
  ∀ n, P6855157022269261614.a n = A139697 (n + 1)

end A139697

/-! ## A139697.P3055979998205033224

`Δ[A058968(n+3)-10*n]`
-/

namespace A139697.P3055979998205033224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058968 (n + 3) - (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139697.P3055979998205033224

namespace A139697

/-- `Δ[A058968(n+3)-10*n]` -/
def P3055979998205033224.Spec : Prop :=
  ∀ n, P3055979998205033224.a n = A139697 (n + 1)

theorem P3055979998205033224.correct : P3055979998205033224.Spec := by
  intro n
  simp only [A139697, Nat.add_sub_cancel, A139697.P3055979998205033224.f1, A139697.P3055979998205033224.a, A139697.P3441591318575593331.a, A058968, A058968.P10462157645897289924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139697

/-! ## A139697.P5701757306808957706

`Δ[A229788(n+1)+(2-n)²]`
-/

namespace A139697.P5701757306808957706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229788 (n + 1) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139697.P5701757306808957706

namespace A139697

/-- `Δ[A229788(n+1)+(2-n)²]` -/
def P5701757306808957706.Spec : Prop :=
  ∀ n, P5701757306808957706.a n = A139697 (n + 1)

theorem P5701757306808957706.correct : P5701757306808957706.Spec := by
  intro n
  simp only [A139697, Nat.add_sub_cancel, A139697.P5701757306808957706.f1, A139697.P5701757306808957706.a, A139697.P3441591318575593331.a, A229788, A229788.P15727209731233721255.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139697

/-! ## A139697.P12506820274494843440

`∑[A082505(2*n+1)/A011782(n)]`
-/

namespace A139697.P12506820274494843440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082505 (2 * n + 1) : ℚ) / (A011782 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139697.P12506820274494843440

namespace A139697

/-- `∑[A082505(2*n+1)/A011782(n)]` -/
def P12506820274494843440.Spec : Prop :=
  ∀ n, P12506820274494843440.a n = (A139697 (n + 1) : ℚ)

end A139697

/-!
# A139698: Binomial transform of [1, 25, 25, 25, ...].

The programs for A139698, the canonical program `A139698.P268275234337463081` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139698 has offset 1).

The definition of A139698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139698.P268275234337463081

`25*2^n-24`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139698

/-- `25*2^n-24` -/
def P268275234337463081.Spec : Prop :=
  ∀ n, P268275234337463081.a n = A139698 (n + 1)

theorem P268275234337463081.correct : P268275234337463081.Spec := by
  intro n
  simp only [A139698, Nat.add_sub_cancel]

end A139698

/-! ## A139698.P15313958572599004812

`ogf((1+23x)/(1-3x+2x^2))`
-/

namespace A139698.P15313958572599004812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 23] [1, -3, 2] n

end

end A139698.P15313958572599004812

namespace A139698

/-- `ogf((1+23x)/(1-3x+2x^2))` -/
def P15313958572599004812.Spec : Prop :=
  ∀ n, P15313958572599004812.a n = A139698 (n + 1)

end A139698

/-! ## A139698.P3086076778593242288

`2*(a(n-1)+12)` with `a(0)=1`
-/

namespace A139698.P3086076778593242288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 12)

end

end A139698.P3086076778593242288

namespace A139698

/-- `2*(a(n-1)+12)` -/
def P3086076778593242288.Spec : Prop :=
  ∀ n, (P3086076778593242288.a n : ℤ) = A139698 (n + 1)

theorem P3086076778593242288.correct : P3086076778593242288.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139698, Nat.add_sub_cancel, A139698.P3086076778593242288.a, A139698.P268275234337463081.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139698, Nat.add_sub_cancel, A139698.P3086076778593242288.a, A139698.P268275234337463081.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139698

/-! ## A139698.P11619875966382763974

`∑[2*a(n-1)]` with `a(0)=1, a(1)=25`
-/

namespace A139698.P11619875966382763974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139698.P11619875966382763974

namespace A139698

/-- `∑[2*a(n-1)]` -/
def P11619875966382763974.Spec : Prop :=
  ∀ n, (P11619875966382763974.a n : ℤ) = A139698 (n + 1)

end A139698

/-! ## A139698.P7471176574874953738

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=25`
-/

namespace A139698.P7471176574874953738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139698.P7471176574874953738

namespace A139698

/-- `∑[a(n-1)+a(n-1)]` -/
def P7471176574874953738.Spec : Prop :=
  ∀ n, (P7471176574874953738.a n : ℤ) = A139698 (n + 1)

end A139698

/-! ## A139698.P6474142241758609678

`Δ[A250777(n+1)-A183010(n)]`
-/

namespace A139698.P6474142241758609678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250777 (n + 1) - A183010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139698.P6474142241758609678

namespace A139698

/-- `Δ[A250777(n+1)-A183010(n)]` -/
def P6474142241758609678.Spec : Prop :=
  ∀ n, P6474142241758609678.a n = A139698 (n + 1)

theorem P6474142241758609678.correct : P6474142241758609678.Spec := by
  intro n
  simp only [A139698, Nat.add_sub_cancel, A139698.P6474142241758609678.f1, A139698.P6474142241758609678.a, A139698.P268275234337463081.a, A183010, A183010.P1615208601139071033.a, A250777, A250777.P17477242451036941458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139698

/-! ## A139698.P10621034095782961306

`ceil(A139701(n+1)/4)`
-/

namespace A139698.P10621034095782961306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139701 (n + 1) : ℚ) / 4⌉

end

end A139698.P10621034095782961306

namespace A139698

/-- `ceil(A139701(n+1)/4)` -/
def P10621034095782961306.Spec : Prop :=
  ∀ n, P10621034095782961306.a n = A139698 (n + 1)

end A139698

/-! ## A139698.P11526698255948537605

`A305065(A005843(n))%A248877(n+1)`
-/

namespace A139698.P11526698255948537605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305065 (A005843 n).toNat) (A248877 (n + 1))

end

end A139698.P11526698255948537605

namespace A139698

/-- `A305065(A005843(n))%A248877(n+1)` -/
def P11526698255948537605.Spec : Prop :=
  ∀ n, P11526698255948537605.a n = A139698 (n + 1)

end A139698

/-!
# A139699: Positive integers x,y such that prime(x)*prime(x+y) = y^2 + 1, ordered by increasing x+y.

The programs for A139699, there is no canonical definition to state claims against.
-/

/-! ## A139699.P10831275501856102537

`A350528(A080037(n))+n`
-/

namespace A139699.P10831275501856102537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350528 (A080037 n).toNat + (n : ℤ)

end

end A139699.P10831275501856102537

