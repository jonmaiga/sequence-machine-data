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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A170800: a(n) = n^10*(n^8 + 1)/2.

The programs for A170800, the canonical program `A170800.P5730364514695317762` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170800 has offset 0).

The definition of A170800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^8+1)/2` (program `A170800.P6018407891355324564`, by `A170800.P6018407891355324564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170800.P6018407891355324564

`n^10*(n^8+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170800.P6018407891355324564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 10 * (n ^ 8 + 1) : ℚ) / 2

end

end A170800.P6018407891355324564

namespace A170800

/-- `n^10*(n^8+1)/2` -/
def P6018407891355324564.Spec : Prop :=
  ∀ n, P6018407891355324564.a n = (A170800 n : ℚ)

theorem P6018407891355324564.correct : P6018407891355324564.Spec := by
  intro n
  simp only [A170800, Nat.add_sub_cancel, A170800.P6018407891355324564.a, A170800.P5730364514695317762.a, A170780, A170780.P4315347097548912859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170800

/-! ## A170800.P1584906378328490150

`n*A170790(n)`
-/

namespace A170800.P1584906378328490150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A170790 n

end

end A170800.P1584906378328490150

namespace A170800

/-- `n*A170790(n)` -/
def P1584906378328490150.Spec : Prop :=
  ∀ n, P1584906378328490150.a n = A170800 n

end A170800

/-! ## A170800.P5730364514695317762

`n*n*A170780(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A170800

/-- `n*n*A170780(n)` -/
def P5730364514695317762.Spec : Prop :=
  ∀ n, P5730364514695317762.a n = A170800 n

theorem P5730364514695317762.correct : P5730364514695317762.Spec := by
  intro n
  simp only [A170800]

end A170800

/-! ## A170800.P9467138258411637286

`A001017(n)*A168116(n)`
-/

namespace A170800.P9467138258411637286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n * A168116 n

end

end A170800.P9467138258411637286

namespace A170800

/-- `A001017(n)*A168116(n)` -/
def P9467138258411637286.Spec : Prop :=
  ∀ n, P9467138258411637286.a n = A170800 n

end A170800

/-! ## A170800.P1083158511846949088

`A001016(n)*A168126(n)`
-/

namespace A170800.P1083158511846949088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n * A168126 n

end

end A170800.P1083158511846949088

namespace A170800

/-- `A001016(n)*A168126(n)` -/
def P1083158511846949088.Spec : Prop :=
  ∀ n, P1083158511846949088.a n = A170800 n

theorem P1083158511846949088.correct : P1083158511846949088.Spec := by
  intro n
  simp only [A170800, Nat.add_sub_cancel, A170800.P1083158511846949088.a, A170800.P5730364514695317762.a, A001016, A001016.P10257285112668202493.a, A168126, A168126.P16335936482429578033.a, A170780, A170780.P4315347097548912859.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170800

/-! ## A170800.P15290665424589765757

`A001015(n)*A168189(n)`
-/

namespace A170800.P15290665424589765757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n * A168189 n

end

end A170800.P15290665424589765757

namespace A170800

/-- `A001015(n)*A168189(n)` -/
def P15290665424589765757.Spec : Prop :=
  ∀ n, P15290665424589765757.a n = A170800 n

theorem P15290665424589765757.correct : P15290665424589765757.Spec := by
  intro n
  simp only [A170800, Nat.add_sub_cancel, A170800.P15290665424589765757.a, A170800.P5730364514695317762.a, A001015, A001015.P16876498052081657174.a, A168189, A168189.P7493123367083644094.a, A170780, A170780.P4315347097548912859.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170800

/-! ## A170800.P16294328322379632481

`lcm(n, A000584(n)*A168462(n))`
-/

namespace A170800.P16294328322379632481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000584 n * A168462 n)

end

end A170800.P16294328322379632481

namespace A170800

/-- `lcm(n, A000584(n)*A168462(n))` -/
def P16294328322379632481.Spec : Prop :=
  ∀ n, (P16294328322379632481.a n : ℤ) = A170800 n

end A170800

/-! ## A170800.P5578532750782577026

`lcm(A000583(n)*A168632(n), A000583(n))`
-/

namespace A170800.P5578532750782577026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000583 n * A168632 n) (A000583 n)

end

end A170800.P5578532750782577026

namespace A170800

/-- `lcm(A000583(n)*A168632(n), A000583(n))` -/
def P5578532750782577026.Spec : Prop :=
  ∀ n, (P5578532750782577026.a n : ℤ) = A170800 n

end A170800

/-! ## A170800.P11021367799630686166

`A168372(n²)`
-/

namespace A170800.P11021367799630686166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168372 (n ^ 2)

end

end A170800.P11021367799630686166

namespace A170800

/-- `A168372(n²)` -/
def P11021367799630686166.Spec : Prop :=
  ∀ n, P11021367799630686166.a n = A170800 n

theorem P11021367799630686166.correct : P11021367799630686166.Spec := by
  intro n
  simp only [A170800, Nat.add_sub_cancel, A170800.P11021367799630686166.a, A170800.P5730364514695317762.a, A168372, A168372.P10457771885874801747.a, A170780, A170780.P4315347097548912859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170800

/-! ## A170800.P8597988445964007075

`n²*A071231(n²)`
-/

namespace A170800.P8597988445964007075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A071231 (n ^ 2)

end

end A170800.P8597988445964007075

namespace A170800

/-- `n²*A071231(n²)` -/
def P8597988445964007075.Spec : Prop :=
  ∀ n, P8597988445964007075.a n = A170800 n

theorem P8597988445964007075.correct : P8597988445964007075.Spec := by
  intro n
  simp only [A170800, Nat.add_sub_cancel, A170800.P8597988445964007075.a, A170800.P5730364514695317762.a, A071231, A071231.P12099353623809023742.a, A170780, A170780.P4315347097548912859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170800

/-!
# A170801: a(n) = n^10*(n^9 + 1)/2.

The programs for A170801, the canonical program `A170801.P2943933428734988844` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170801 has offset 0).

The definition of A170801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^9+1)/2` (program `A170801.P9476762825795269021`, by `A170801.P9476762825795269021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170801.P417672589898329976

`(n^19+n^10)/2`
-/

namespace A170801.P417672589898329976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 19 + n ^ 10 : ℚ) / 2

end

end A170801.P417672589898329976

namespace A170801

/-- `(n^19+n^10)/2` -/
def P417672589898329976.Spec : Prop :=
  ∀ n, P417672589898329976.a n = (A170801 n : ℚ)

theorem P417672589898329976.correct : P417672589898329976.Spec := by
  intro n
  simp only [A170801, Nat.add_sub_cancel, A170801.P417672589898329976.a, A170801.P2943933428734988844.a, A170791, A170791.P6988810630567430149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170801

/-! ## A170801.P9476762825795269021

`n^10*(n^9+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170801.P9476762825795269021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 10 * (n ^ 9 + 1) : ℚ) / 2

end

end A170801.P9476762825795269021

namespace A170801

/-- `n^10*(n^9+1)/2` -/
def P9476762825795269021.Spec : Prop :=
  ∀ n, P9476762825795269021.a n = (A170801 n : ℚ)

theorem P9476762825795269021.correct : P9476762825795269021.Spec := by
  intro n
  simp only [A170801, Nat.add_sub_cancel, A170801.P9476762825795269021.a, A170801.P2943933428734988844.a, A170791, A170791.P6988810630567430149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170801

/-! ## A170801.P2943933428734988844

`n*A170791(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A170801

/-- `n*A170791(n)` -/
def P2943933428734988844.Spec : Prop :=
  ∀ n, P2943933428734988844.a n = A170801 n

theorem P2943933428734988844.correct : P2943933428734988844.Spec := by
  intro n
  simp only [A170801]

end A170801

/-! ## A170801.P11412187054716016388

`n*n*A170781(n)`
-/

namespace A170801.P11412187054716016388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A170781 n)

end

end A170801.P11412187054716016388

namespace A170801

/-- `n*n*A170781(n)` -/
def P11412187054716016388.Spec : Prop :=
  ∀ n, P11412187054716016388.a n = A170801 n

theorem P11412187054716016388.correct : P11412187054716016388.Spec := by
  intro n
  simp only [A170801, Nat.add_sub_cancel, A170801.P11412187054716016388.a, A170801.P2943933428734988844.a, A170781, A170781.P7318002403656196438.a, A170791, A170791.P6988810630567430149.a, A168666, A168666.P14135901475622080394.a, A060891, A060891.P3794235143874389866.a, A168660, A168660.P1508116402199283379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170801

/-! ## A170801.P4063020484093249917

`A001017(n)*A168118(n)`
-/

namespace A170801.P4063020484093249917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n * A168118 n

end

end A170801.P4063020484093249917

namespace A170801

/-- `A001017(n)*A168118(n)` -/
def P4063020484093249917.Spec : Prop :=
  ∀ n, P4063020484093249917.a n = A170801 n

end A170801

/-! ## A170801.P17256419035578426091

`A001016(n)*A168153(n)`
-/

namespace A170801.P17256419035578426091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n * A168153 n

end

end A170801.P17256419035578426091

namespace A170801

/-- `A001016(n)*A168153(n)` -/
def P17256419035578426091.Spec : Prop :=
  ∀ n, P17256419035578426091.a n = A170801 n

end A170801

/-! ## A170801.P9411970075214355893

`lcm(A168118(n), A170793(n))`
-/

namespace A170801.P9411970075214355893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A170793 n)

end

end A170801.P9411970075214355893

namespace A170801

/-- `lcm(A168118(n), A170793(n))` -/
def P9411970075214355893.Spec : Prop :=
  ∀ n, (P9411970075214355893.a n : ℤ) = A170801 n

end A170801

/-!
# A170802: a(n) = n^10*(n^10 + 1)/2.

The programs for A170802, the canonical program `A170802.P15191684365988023827` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170802 has offset 0).

The definition of A170802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^10+1)/2` (program `A170802.P17166855087906838546`, by `A170802.P17166855087906838546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170802.P6474538868739957458

`(n^20+n^10)/2`
-/

namespace A170802.P6474538868739957458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 20 + n ^ 10 : ℚ) / 2

end

end A170802.P6474538868739957458

namespace A170802

/-- `(n^20+n^10)/2` -/
def P6474538868739957458.Spec : Prop :=
  ∀ n, P6474538868739957458.a n = (A170802 n : ℚ)

theorem P6474538868739957458.correct : P6474538868739957458.Spec := by
  intro n
  simp only [A170802, Nat.add_sub_cancel, A170802.P6474538868739957458.a, A170802.P15191684365988023827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170802

/-! ## A170802.P17166855087906838546

`n^10*(n^10+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170802.P17166855087906838546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 10 * (n ^ 10 + 1) : ℚ) / 2

end

end A170802.P17166855087906838546

namespace A170802

/-- `n^10*(n^10+1)/2` -/
def P17166855087906838546.Spec : Prop :=
  ∀ n, P17166855087906838546.a n = (A170802 n : ℚ)

theorem P17166855087906838546.correct : P17166855087906838546.Spec := by
  intro n
  simp only [A170802, Nat.add_sub_cancel, A170802.P17166855087906838546.a, A170802.P15191684365988023827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170802

/-! ## A170802.P15191684365988023827

`C(n^10+1, 2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170802

/-- `C(n^10+1, 2)` -/
def P15191684365988023827.Spec : Prop :=
  ∀ n, (P15191684365988023827.a n : ℤ) = A170802 n

theorem P15191684365988023827.correct : P15191684365988023827.Spec := by
  intro n
  simp only [A170802]

end A170802

/-! ## A170802.P10737338108488910388

`n*A170792(n)`
-/

namespace A170802.P10737338108488910388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A170792 n

end

end A170802.P10737338108488910388

namespace A170802

/-- `n*A170792(n)` -/
def P10737338108488910388.Spec : Prop :=
  ∀ n, P10737338108488910388.a n = A170802 n

theorem P10737338108488910388.correct : P10737338108488910388.Spec := by
  intro n
  simp only [A170802, Nat.add_sub_cancel, A170802.P10737338108488910388.a, A170802.P15191684365988023827.a, A170792, A170792.P183484335092405969.a, A168667, A168667.P16359901788460067128.a, A060892, A060892.P2885025687055146704.a, A168636, A168636.P5475317110681192900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170802

/-! ## A170802.P5932323522683688591

`n*n*A170782(n)`
-/

namespace A170802.P5932323522683688591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A170782 n)

end

end A170802.P5932323522683688591

namespace A170802

/-- `n*n*A170782(n)` -/
def P5932323522683688591.Spec : Prop :=
  ∀ n, P5932323522683688591.a n = A170802 n

theorem P5932323522683688591.correct : P5932323522683688591.Spec := by
  intro n
  simp only [A170802, Nat.add_sub_cancel, A170802.P5932323522683688591.a, A170802.P15191684365988023827.a, A170782, A170782.P12420685918550385898.a, A168667, A168667.P16359901788460067128.a, A060892, A060892.P2885025687055146704.a, A168636, A168636.P5475317110681192900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170802

/-! ## A170802.P41110386089976486

`A001017(n)*A168119(n)`
-/

namespace A170802.P41110386089976486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n * A168119 n

end

end A170802.P41110386089976486

namespace A170802

/-- `A001017(n)*A168119(n)` -/
def P41110386089976486.Spec : Prop :=
  ∀ n, P41110386089976486.a n = A170802 n

end A170802

/-! ## A170802.P9932277603108166235

`A071236(n²)`
-/

namespace A170802.P9932277603108166235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071236 (n ^ 2)

end

end A170802.P9932277603108166235

namespace A170802

/-- `A071236(n²)` -/
def P9932277603108166235.Spec : Prop :=
  ∀ n, P9932277603108166235.a n = A170802 n

theorem P9932277603108166235.correct : P9932277603108166235.Spec := by
  intro n
  simp only [A170802, Nat.add_sub_cancel, A170802.P9932277603108166235.a, A170802.P15191684365988023827.a, A071236, A071236.P15431836850010159814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170802

/-! ## A170802.P16826398882351388613

`n²*A168196(n²)`
-/

namespace A170802.P16826398882351388613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168196 (n ^ 2)

end

end A170802.P16826398882351388613

namespace A170802

/-- `n²*A168196(n²)` -/
def P16826398882351388613.Spec : Prop :=
  ∀ n, P16826398882351388613.a n = A170802 n

end A170802

/-!
# A170803: Partial sums of A006899.

The programs for A170803, the canonical program `A170803.P9311692233870048813` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170803 has offset 1).

The definition of A170803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170803.P9311692233870048813

`∑[∪[2^n, 3^n]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170803

/-- `∑[∪[2^n, 3^n]]` -/
def P9311692233870048813.Spec : Prop :=
  ∀ n, (P9311692233870048813.a n : ℤ) = A170803 (n + 1)

theorem P9311692233870048813.correct : P9311692233870048813.Spec := by
  intro n
  simp only [A170803, Nat.add_sub_cancel]

end A170803

/-! ## A170803.P723149477704295021

`∑[A006899(n+1)]`
-/

namespace A170803.P723149477704295021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P723149477704295021

namespace A170803

/-- `∑[A006899(n+1)]` -/
def P723149477704295021.Spec : Prop :=
  ∀ n, P723149477704295021.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P544058980989700968

`A170804(n+2)-1`
-/

namespace A170803.P544058980989700968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170804 (n + 2) - 1

end

end A170803.P544058980989700968

namespace A170803

/-- `A170804(n+2)-1` -/
def P544058980989700968.Spec : Prop :=
  ∀ n, P544058980989700968.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P6984065540779746828

`A170805(n+2)-2`
-/

namespace A170803.P6984065540779746828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 2) - 2

end

end A170803.P6984065540779746828

namespace A170803

/-- `A170805(n+2)-2` -/
def P6984065540779746828.Spec : Prop :=
  ∀ n, P6984065540779746828.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P13370341388504439363

`∑[abs(Δ[A170805(n+1)])]`
-/

namespace A170803.P13370341388504439363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P13370341388504439363

namespace A170803

/-- `∑[abs(Δ[A170805(n+1)])]` -/
def P13370341388504439363.Spec : Prop :=
  ∀ n, P13370341388504439363.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P1697133588692188476

`∑[A108906(n)+a(n-1)]` with `a(0)=1`
-/

namespace A170803.P1697133588692188476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A108906 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P1697133588692188476

namespace A170803

/-- `∑[A108906(n)+a(n-1)]` -/
def P1697133588692188476.Spec : Prop :=
  ∀ n, P1697133588692188476.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P4240200341717725243

`∑[∑[A108906(A028310(n))]]`
-/

namespace A170803.P4240200341717725243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P4240200341717725243

namespace A170803

/-- `∑[∑[A108906(A028310(n))]]` -/
def P4240200341717725243.Spec : Prop :=
  ∀ n, P4240200341717725243.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P1906025907545485090

`∑[record[A006899(A117910(n))]]`
-/

namespace A170803.P1906025907545485090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P1906025907545485090

namespace A170803

/-- `∑[record[A006899(A117910(n))]]` -/
def P1906025907545485090.Spec : Prop :=
  ∀ n, P1906025907545485090.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P4475440456869475767

`∑[record[A006899(A141256(n))]]`
-/

namespace A170803.P4475440456869475767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P4475440456869475767

namespace A170803

/-- `∑[record[A006899(A141256(n))]]` -/
def P4475440456869475767.Spec : Prop :=
  ∀ n, P4475440456869475767.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P4230483983490859112

`∑[record[A006899(A328399(n))]]`
-/

namespace A170803.P4230483983490859112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P4230483983490859112

namespace A170803

/-- `∑[record[A006899(A328399(n))]]` -/
def P4230483983490859112.Spec : Prop :=
  ∀ n, P4230483983490859112.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P8927530250738303477

`∑[record[A006899(A344180(n))]]`
-/

namespace A170803.P8927530250738303477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P8927530250738303477

namespace A170803

/-- `∑[record[A006899(A344180(n))]]` -/
def P8927530250738303477.Spec : Prop :=
  ∀ n, P8927530250738303477.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P15929204445005927055

`∑[∑[A108906(A233583(n+1))]]`
-/

namespace A170803.P15929204445005927055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P15929204445005927055

namespace A170803

/-- `∑[∑[A108906(A233583(n+1))]]` -/
def P15929204445005927055.Spec : Prop :=
  ∀ n, P15929204445005927055.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P1014764118915238273

`∑[∑[A108906(A123108(2*n))]]`
-/

namespace A170803.P1014764118915238273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P1014764118915238273

namespace A170803

/-- `∑[∑[A108906(A123108(2*n))]]` -/
def P1014764118915238273.Spec : Prop :=
  ∀ n, P1014764118915238273.a n = A170803 (n + 1)

end A170803

/-! ## A170803.P12391740045494328906

`∑[A085239(n+1)^A085238(n+1)]`
-/

namespace A170803.P12391740045494328906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085239 (n + 1) : ℚ) ^ (A085238 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P12391740045494328906

namespace A170803

/-- `∑[A085239(n+1)^A085238(n+1)]` -/
def P12391740045494328906.Spec : Prop :=
  ∀ n, P12391740045494328906.a n = (A170803 (n + 1) : ℚ)

end A170803

/-! ## A170803.P4532488447328982309

`∑[record[A347288(n)/gcd(2, A347288(n))]]`
-/

namespace A170803.P4532488447328982309
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347288 n : ℚ) / (Int.gcd 2 (A347288 n) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170803.P4532488447328982309

namespace A170803

/-- `∑[record[A347288(n)/gcd(2, A347288(n))]]` -/
def P4532488447328982309.Spec : Prop :=
  ∀ n, P4532488447328982309.a n = (A170803 (n + 1) : ℚ)

end A170803

/-!
# A170804: Partial sums of (A006899, prefixed by a 1).

The programs for A170804, the canonical program `A170804.P14400445769344292584` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170804 has offset 1).

The definition of A170804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170804.P2035600821707149134

`∑[abs(Δ[A170805(n)])]`
-/

namespace A170804.P2035600821707149134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170804.P2035600821707149134

namespace A170804

/-- `∑[abs(Δ[A170805(n)])]` -/
def P2035600821707149134.Spec : Prop :=
  ∀ n, P2035600821707149134.a n = A170804 (n + 1)

end A170804

/-! ## A170804.P15048563722136562382

`A170805(n+1)-1`
-/

namespace A170804.P15048563722136562382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 1) - 1

end

end A170804.P15048563722136562382

namespace A170804

/-- `A170805(n+1)-1` -/
def P15048563722136562382.Spec : Prop :=
  ∀ n, P15048563722136562382.a n = A170804 (n + 1)

end A170804

/-! ## A170804.P14400445769344292584

`A006899(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A170804

/-- `A006899(n)+a(n-1)` -/
def P14400445769344292584.Spec : Prop :=
  ∀ n, P14400445769344292584.a n = A170804 (n + 1)

theorem P14400445769344292584.correct : P14400445769344292584.Spec := by
  intro n
  simp only [A170804, Nat.add_sub_cancel]

end A170804

/-! ## A170804.P10413650924928535388

`A170803(n+1)+1-A006899(n+1)`
-/

namespace A170804.P10413650924928535388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170803 (n + 1) + (1 - A006899 (n + 1))

end

end A170804.P10413650924928535388

namespace A170804

/-- `A170803(n+1)+1-A006899(n+1)` -/
def P10413650924928535388.Spec : Prop :=
  ∀ n, P10413650924928535388.a n = A170804 (n + 1)

end A170804

/-! ## A170804.P11398410436302939066

`∑[A006899(A134478(∑[n]))]`
-/

namespace A170804.P11398410436302939066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170804.P11398410436302939066

namespace A170804

/-- `∑[A006899(A134478(∑[n]))]` -/
def P11398410436302939066.Spec : Prop :=
  ∀ n, P11398410436302939066.a n = A170804 (n + 1)

end A170804

/-!
# A170805: a(n) = A170803(n-1) + 2, with a(0) = 1, a(1) = 2.

The programs for A170805, the canonical program `A170805.P803000743788282295` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170805 has offset 0).

The definition of A170805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170805.P1116011864442051489

`∑[A006899(floor(n-atan(n))+1)]`
-/

namespace A170805.P1116011864442051489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170805.P1116011864442051489

namespace A170805

/-- `∑[A006899(floor(n-atan(n))+1)]` -/
def P1116011864442051489.Spec : Prop :=
  ∀ n, P1116011864442051489.a n = A170805 n

end A170805

/-! ## A170805.P803000743788282295

`A006899(n-1)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A170805

/-- `A006899(n-1)+a(n-1)` -/
def P803000743788282295.Spec : Prop :=
  ∀ n, P803000743788282295.a n = A170805 n

theorem P803000743788282295.correct : P803000743788282295.Spec := by
  intro n
  simp only [A170805]

end A170805

/-! ## A170805.P8865981715953611158

`∑[A006899(A289207(n)+1)]`
-/

namespace A170805.P8865981715953611158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A289207 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170805.P8865981715953611158

namespace A170805

/-- `∑[A006899(A289207(n)+1)]` -/
def P8865981715953611158.Spec : Prop :=
  ∀ n, P8865981715953611158.a n = A170805 n

end A170805

/-! ## A170805.P8600893857192308800

`∑[A006899(A233583(n+1)-1)]`
-/

namespace A170805.P8600893857192308800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170805.P8600893857192308800

namespace A170805

/-- `∑[A006899(A233583(n+1)-1)]` -/
def P8600893857192308800.Spec : Prop :=
  ∀ n, P8600893857192308800.a n = A170805 n

end A170805

/-! ## A170805.P10357902740342707777

`∑[A006899(A134478(C(n, 2)))]`
-/

namespace A170805.P10357902740342707777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (A134478 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170805.P10357902740342707777

namespace A170805

/-- `∑[A006899(A134478(C(n, 2)))]` -/
def P10357902740342707777.Spec : Prop :=
  ∀ n, P10357902740342707777.a n = A170805 n

end A170805

/-!
# A170806: Primes in lunar arithmetic in base 3 written in base 3.

The programs for A170806, there is no canonical definition to state claims against.
-/

/-! ## A170806.P6446846404228827140

`A007089(A130206(n+1))`
-/

namespace A170806.P6446846404228827140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A130206 (n + 1)).toNat

end

end A170806.P6446846404228827140

/-! ## A170806.P8502521404811792839

`∩[A171795(n+2), A007089(n)]`
-/

namespace A170806.P8502521404811792839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171795 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A170806.P8502521404811792839

/-! ## A170806.P9737555986940809052

`∩[A171795(n+1), A277964(n+1)]`
-/

namespace A170806.P9737555986940809052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A170806.P9737555986940809052

/-! ## A170806.P11384108819302350726

`A007089(eq[2, A187141(n+2)]+2)`
-/

namespace A170806.P11384108819302350726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A170806.P11384108819302350726

/-!
# A170816: a(n)=A140475(n)-A141468(n).

The programs for A170816, the canonical program `A170816.P3100006871981450052` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170816 has offset 1).

The definition of A170816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A170816.P3100006871981450052

`A140475(n+1)-A141468(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A170816

/-- `A140475(n+1)-A141468(n+1)` -/
def P3100006871981450052.Spec : Prop :=
  ∀ n, P3100006871981450052.a n = A170816 (n + 1)

theorem P3100006871981450052.correct : P3100006871981450052.Spec := by
  intro n
  simp only [A170816, Nat.add_sub_cancel]

end A170816

/-! ## A170816.P16381963417549588176

`A171577(n+2)-A141468(n+1)`
-/

namespace A170816.P16381963417549588176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (n + 2) - A141468 (n + 1)

end

end A170816.P16381963417549588176

namespace A170816

/-- `A171577(n+2)-A141468(n+1)` -/
def P16381963417549588176.Spec : Prop :=
  ∀ n, P16381963417549588176.a n = A170816 (n + 1)

end A170816

/-! ## A170816.P5514185722968301914

`A171525(n+3)-comp[A060264(n)]`
-/

namespace A170816.P5514185722968301914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A170816.P5514185722968301914

namespace A170816

/-- `A171525(n+3)-comp[A060264(n)]` -/
def P5514185722968301914.Spec : Prop :=
  ∀ n, P5514185722968301914.a n = A170816 (n + 1)

end A170816

/-! ## A170816.P6725876491946360379

`A171525(n+3)-comp[A134204(n)]`
-/

namespace A170816.P6725876491946360379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A170816.P6725876491946360379

namespace A170816

/-- `A171525(n+3)-comp[A134204(n)]` -/
def P6725876491946360379.Spec : Prop :=
  ∀ n, P6725876491946360379.a n = A170816 (n + 1)

end A170816

/-! ## A170816.P18098739333551007773

`A171525(n+3)-comp[A151800(n)]`
-/

namespace A170816.P18098739333551007773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A170816.P18098739333551007773

namespace A170816

/-- `A171525(n+3)-comp[A151800(n)]` -/
def P18098739333551007773.Spec : Prop :=
  ∀ n, P18098739333551007773.a n = A170816 (n + 1)

end A170816

/-! ## A170816.P2008714184063587368

`A171525(n+3)-comp[A088732(n)]`
-/

namespace A170816.P2008714184063587368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A170816.P2008714184063587368

namespace A170816

/-- `A171525(n+3)-comp[A088732(n)]` -/
def P2008714184063587368.Spec : Prop :=
  ∀ n, P2008714184063587368.a n = A170816 (n + 1)

end A170816

/-!
# A170817: a(n) = product of distinct primes of form 4k+1 that divide n.

The programs for A170817, the canonical program `A170817.P11548764296532079712` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170817 has offset 1).

The definition of A170817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170817.P11548764296532079712

`∏{p}[n+1, A140210(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A170817

/-- `∏{p}[n+1, A140210(#)]` -/
def P11548764296532079712.Spec : Prop :=
  ∀ n, P11548764296532079712.a n = A170817 (n + 1)

theorem P11548764296532079712.correct : P11548764296532079712.Spec := by
  intro n
  simp only [A170817, Nat.add_sub_cancel]

end A170817

/-! ## A170817.P4115414381457208083

`A170818(∏{p}[n+1, #])`
-/

namespace A170817.P4115414381457208083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A170817.P4115414381457208083

namespace A170817

/-- `A170818(∏{p}[n+1, #])` -/
def P4115414381457208083.Spec : Prop :=
  ∀ n, P4115414381457208083.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P1351585233036641475

`∏{p}[n+1, gcd(#, A000010(#)%4)]`
-/

namespace A170817.P1351585233036641475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (Int.tmod (A000010 p) 4)

end

end A170817.P1351585233036641475

namespace A170817

/-- `∏{p}[n+1, gcd(#, A000010(#)%4)]` -/
def P1351585233036641475.Spec : Prop :=
  ∀ n, (P1351585233036641475.a n : ℤ) = A170817 (n + 1)

end A170817

/-! ## A170817.P13710285328728865275

`A170818(A007947(n+1))`
-/

namespace A170817.P13710285328728865275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A007947 (n + 1)).toNat

end

end A170817.P13710285328728865275

namespace A170817

/-- `A170818(A007947(n+1))` -/
def P13710285328728865275.Spec : Prop :=
  ∀ n, P13710285328728865275.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P1882139116514553520

`A170818(A015052(n+1))`
-/

namespace A170817.P1882139116514553520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A015052 (n + 1)).toNat

end

end A170817.P1882139116514553520

namespace A170817

/-- `A170818(A015052(n+1))` -/
def P1882139116514553520.Spec : Prop :=
  ∀ n, P1882139116514553520.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P15778620290034657625

`A170818(A015053(n+1))`
-/

namespace A170817.P15778620290034657625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A015053 (n + 1)).toNat

end

end A170817.P15778620290034657625

namespace A170817

/-- `A170818(A015053(n+1))` -/
def P15778620290034657625.Spec : Prop :=
  ∀ n, P15778620290034657625.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P15239418131317027497

`A170818(A053166(n+1))`
-/

namespace A170817.P15239418131317027497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A053166 (n + 1)).toNat

end

end A170817.P15239418131317027497

namespace A170817

/-- `A170818(A053166(n+1))` -/
def P15239418131317027497.Spec : Prop :=
  ∀ n, P15239418131317027497.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P16897133180960348902

`A170818(A066069(n+1))`
-/

namespace A170817.P16897133180960348902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A066069 (n + 1)).toNat

end

end A170817.P16897133180960348902

namespace A170817

/-- `A170818(A066069(n+1))` -/
def P16897133180960348902.Spec : Prop :=
  ∀ n, P16897133180960348902.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P10397014050568951815

`A170818(A083346(n+1))`
-/

namespace A170817.P10397014050568951815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A083346 (n + 1)).toNat

end

end A170817.P10397014050568951815

namespace A170817

/-- `A170818(A083346(n+1))` -/
def P10397014050568951815.Spec : Prop :=
  ∀ n, P10397014050568951815.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P7321243914255536294

`A170818(A099985(n+1))`
-/

namespace A170817.P7321243914255536294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A099985 (n + 1)).toNat

end

end A170817.P7321243914255536294

namespace A170817

/-- `A170818(A099985(n+1))` -/
def P7321243914255536294.Spec : Prop :=
  ∀ n, P7321243914255536294.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P2978848767918731346

`A204455(A072436(n+1))`
-/

namespace A170817.P2978848767918731346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A072436 (n + 1)).toNat

end

end A170817.P2978848767918731346

namespace A170817

/-- `A204455(A072436(n+1))` -/
def P2978848767918731346.Spec : Prop :=
  ∀ n, P2978848767918731346.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P8814231288094560737

`A170818(gcd(n+1, A144845(n)))`
-/

namespace A170817.P8814231288094560737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (Int.gcd (n + 1 : ℤ) (A144845 n))

end

end A170817.P8814231288094560737

namespace A170817

/-- `A170818(gcd(n+1, A144845(n)))` -/
def P8814231288094560737.Spec : Prop :=
  ∀ n, P8814231288094560737.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P9860624413446398911

`A007947((n+1)/A072438(n+1))`
-/

namespace A170817.P9860624413446398911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A170817.P9860624413446398911

namespace A170817

/-- `A007947((n+1)/A072438(n+1))` -/
def P9860624413446398911.Spec : Prop :=
  ∀ n, P9860624413446398911.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P1587163121770199571

`A170818((n+1)/A003557(n+1))`
-/

namespace A170817.P1587163121770199571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A170817.P1587163121770199571

namespace A170817

/-- `A170818((n+1)/A003557(n+1))` -/
def P1587163121770199571.Spec : Prop :=
  ∀ n, P1587163121770199571.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P15216161682223530788

`A204455((n+1)/A072438(n+1))`
-/

namespace A170817.P15216161682223530788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A170817.P15216161682223530788

namespace A170817

/-- `A204455((n+1)/A072438(n+1))` -/
def P15216161682223530788.Spec : Prop :=
  ∀ n, P15216161682223530788.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P7326402447840026319

`A204455(n+1)/A170819(n+1)`
-/

namespace A170817.P7326402447840026319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204455 (n + 1) : ℚ) / (A170819 (n + 1) : ℚ)

end

end A170817.P7326402447840026319

namespace A170817

/-- `A204455(n+1)/A170819(n+1)` -/
def P7326402447840026319.Spec : Prop :=
  ∀ n, P7326402447840026319.a n = (A170817 (n + 1) : ℚ)

end A170817

/-! ## A170817.P7107823997612943207

`A170818(A170824(n+1)*A170825(n+1))`
-/

namespace A170817.P7107823997612943207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A170824 (n + 1) * A170825 (n + 1)).toNat

end

end A170817.P7107823997612943207

namespace A170817

/-- `A170818(A170824(n+1)*A170825(n+1))` -/
def P7107823997612943207.Spec : Prop :=
  ∀ n, P7107823997612943207.a n = A170817 (n + 1)

end A170817

/-! ## A170817.P10057540818727747989

`gcd(A100652(n), A170818(n+1))`
-/

namespace A170817.P10057540818727747989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100652 n) (A170818 (n + 1))

end

end A170817.P10057540818727747989

namespace A170817

/-- `gcd(A100652(n), A170818(n+1))` -/
def P10057540818727747989.Spec : Prop :=
  ∀ n, (P10057540818727747989.a n : ℤ) = A170817 (n + 1)

end A170817

/-! ## A170817.P13466006961924996682

`gcd(A100650(n), A170818(n+1))`
-/

namespace A170817.P13466006961924996682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100650 n) (A170818 (n + 1))

end

end A170817.P13466006961924996682

namespace A170817

/-- `gcd(A100650(n), A170818(n+1))` -/
def P13466006961924996682.Spec : Prop :=
  ∀ n, (P13466006961924996682.a n : ℤ) = A170817 (n + 1)

end A170817

/-! ## A170817.P9613966513357500641

`gcd(A080397(n), A170818(n+1))`
-/

namespace A170817.P9613966513357500641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080397 n) (A170818 (n + 1))

end

end A170817.P9613966513357500641

namespace A170817

/-- `gcd(A080397(n), A170818(n+1))` -/
def P9613966513357500641.Spec : Prop :=
  ∀ n, (P9613966513357500641.a n : ℤ) = A170817 (n + 1)

end A170817

/-!
# A170818: a(n) is the product of primes (with multiplicity) of form 4*k+1 that divide n.

The programs for A170818, the canonical program `A170818.P6198424121185234946` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170818 has offset 1).

The definition of A170818 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072438, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A170818.P6198424121185234946

`(n+1)/A072438(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A170818

/-- `(n+1)/A072438(n+1)` -/
def P6198424121185234946.Spec : Prop :=
  ∀ n, P6198424121185234946.a n = (A170818 (n + 1) : ℚ)

end A170818

/-! ## A170818.P8133272380736559116

`floor((n+1)/2^val(n+1, 2))/A097706(n+1)`
-/

namespace A170818.P8133272380736559116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (A097706 (n + 1) : ℚ)

end

end A170818.P8133272380736559116

namespace A170818

/-- `floor((n+1)/2^val(n+1, 2))/A097706(n+1)` -/
def P8133272380736559116.Spec : Prop :=
  ∀ n, P8133272380736559116.a n = (A170818 (n + 1) : ℚ)

end A170818

/-! ## A170818.P12254125661521369427

`A072436(A000265(n+1))`
-/

namespace A170818.P12254125661521369427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A000265 (n + 1)).toNat

end

end A170818.P12254125661521369427

namespace A170818

/-- `A072436(A000265(n+1))` -/
def P12254125661521369427.Spec : Prop :=
  ∀ n, P12254125661521369427.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P13965785438700816321

`A072436(A065330(n+1))`
-/

namespace A170818.P13965785438700816321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A065330 (n + 1)).toNat

end

end A170818.P13965785438700816321

namespace A170818

/-- `A072436(A065330(n+1))` -/
def P13965785438700816321.Spec : Prop :=
  ∀ n, P13965785438700816321.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P6723785997457117397

`A093411(A072436(n+1))`
-/

namespace A170818.P6723785997457117397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A072436 (n + 1)).toNat

end

end A170818.P6723785997457117397

namespace A170818

/-- `A093411(A072436(n+1))` -/
def P6723785997457117397.Spec : Prop :=
  ∀ n, P6723785997457117397.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P15160111624953450378

`A072436(2*A025480(n)+1)`
-/

namespace A170818.P15160111624953450378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (2 * A025480 n + 1).toNat

end

end A170818.P15160111624953450378

namespace A170818

/-- `A072436(2*A025480(n)+1)` -/
def P15160111624953450378.Spec : Prop :=
  ∀ n, P15160111624953450378.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P11446395003933142166

`A072436((n+1)/A006519(n+1))`
-/

namespace A170818.P11446395003933142166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A170818.P11446395003933142166

namespace A170818

/-- `A072436((n+1)/A006519(n+1))` -/
def P11446395003933142166.Spec : Prop :=
  ∀ n, P11446395003933142166.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P6502870037101137272

`A000265((n+1)/A097706(n+1))`
-/

namespace A170818.P6502870037101137272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A170818.P6502870037101137272

namespace A170818

/-- `A000265((n+1)/A097706(n+1))` -/
def P6502870037101137272.Spec : Prop :=
  ∀ n, P6502870037101137272.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P9930597333957455237

`A065330((n+1)/A097706(n+1))`
-/

namespace A170818.P9930597333957455237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A170818.P9930597333957455237

namespace A170818

/-- `A065330((n+1)/A097706(n+1))` -/
def P9930597333957455237.Spec : Prop :=
  ∀ n, P9930597333957455237.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P16577167830314418655

`A072436(gcd(n+1, A040026(n+1)))`
-/

namespace A170818.P16577167830314418655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (Int.gcd (n + 1 : ℤ) (A040026 (n + 1)))

end

end A170818.P16577167830314418655

namespace A170818

/-- `A072436(gcd(n+1, A040026(n+1)))` -/
def P16577167830314418655.Spec : Prop :=
  ∀ n, P16577167830314418655.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P2077094808071434627

`A072436((n+1)/A072436(A065338(n+1)))`
-/

namespace A170818.P2077094808071434627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (A065338 (n + 1)).toNat : ℚ))).toNat

end

end A170818.P2077094808071434627

namespace A170818

/-- `A072436((n+1)/A072436(A065338(n+1)))` -/
def P2077094808071434627.Spec : Prop :=
  ∀ n, P2077094808071434627.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P734542585030238910

`A028234(2*(n+1))/A097706(n+1)`
-/

namespace A170818.P734542585030238910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (2 * (n + 1)) : ℚ) / (A097706 (n + 1) : ℚ)

end

end A170818.P734542585030238910

namespace A170818

/-- `A028234(2*(n+1))/A097706(n+1)` -/
def P734542585030238910.Spec : Prop :=
  ∀ n, P734542585030238910.a n = (A170818 (n + 1) : ℚ)

end A170818

/-! ## A170818.P17873775642627747652

`A072436(A166466(n+1))`
-/

namespace A170818.P17873775642627747652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A166466 (n + 1)).toNat

end

end A170818.P17873775642627747652

namespace A170818

/-- `A072436(A166466(n+1))` -/
def P17873775642627747652.Spec : Prop :=
  ∀ n, P17873775642627747652.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P4337576169453850216

`A267099(A097706(A267099(n+1)))`
-/

namespace A170818.P4337576169453850216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A097706 (A267099 (n + 1)).toNat).toNat

end

end A170818.P4337576169453850216

namespace A170818

/-- `A267099(A097706(A267099(n+1)))` -/
def P4337576169453850216.Spec : Prop :=
  ∀ n, P4337576169453850216.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P10608366742999653636

`A072436(A394497(n+1))`
-/

namespace A170818.P10608366742999653636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A394497 (n + 1)).toNat

end

end A170818.P10608366742999653636

namespace A170818

/-- `A072436(A394497(n+1))` -/
def P10608366742999653636.Spec : Prop :=
  ∀ n, P10608366742999653636.a n = A170818 (n + 1)

end A170818

/-! ## A170818.P5369575252547498305

`gcd((n+1)/and(n+1, -(n+1)), A071383((n+1)/and(n+1, -(n+1))))`
-/

namespace A170818.P5369575252547498305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (A071383 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat)

end

end A170818.P5369575252547498305

namespace A170818

/-- `gcd((n+1)/and(n+1, -(n+1)), A071383((n+1)/and(n+1, -(n+1))))` -/
def P5369575252547498305.Spec : Prop :=
  ∀ n, (P5369575252547498305.a n : ℤ) = A170818 (n + 1)

end A170818

/-! ## A170818.P13949540555049984806

`gcd(n+1, A071383(n+1))`
-/

namespace A170818.P13949540555049984806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071383 (n + 1))

end

end A170818.P13949540555049984806

namespace A170818

/-- `gcd(n+1, A071383(n+1))` -/
def P13949540555049984806.Spec : Prop :=
  ∀ n, (P13949540555049984806.a n : ℤ) = A170818 (n + 1)

end A170818

/-! ## A170818.P15669168793724874079

`gcd(n+1, A052199(n+1))`
-/

namespace A170818.P15669168793724874079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A052199 (n + 1))

end

end A170818.P15669168793724874079

namespace A170818

/-- `gcd(n+1, A052199(n+1))` -/
def P15669168793724874079.Spec : Prop :=
  ∀ n, (P15669168793724874079.a n : ℤ) = A170818 (n + 1)

end A170818

/-! ## A170818.P6311777642874630062

`gcd(A072436(n+1), A396748(n))`
-/

namespace A170818.P6311777642874630062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072436 (n + 1)) (A396748 n)

end

end A170818.P6311777642874630062

namespace A170818

/-- `gcd(A072436(n+1), A396748(n))` -/
def P6311777642874630062.Spec : Prop :=
  ∀ n, (P6311777642874630062.a n : ℤ) = A170818 (n + 1)

end A170818

/-! ## A170818.P12357949513093022244

`gcd(A052199(n+1), A154920(n))`
-/

namespace A170818.P12357949513093022244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052199 (n + 1)) (A154920 n)

end

end A170818.P12357949513093022244

namespace A170818

/-- `gcd(A052199(n+1), A154920(n))` -/
def P12357949513093022244.Spec : Prop :=
  ∀ n, (P12357949513093022244.a n : ℤ) = A170818 (n + 1)

end A170818

/-!
# A170819: a(n) = product of distinct primes of the form 4k-1 that divide n.

The programs for A170819, the canonical program `A170819.P5191989612477156499` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170819 has offset 1).

The definition of A170819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A170819.P5191989612477156499

`A097706(A007947(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A170819

/-- `A097706(A007947(n+1))` -/
def P5191989612477156499.Spec : Prop :=
  ∀ n, P5191989612477156499.a n = A170819 (n + 1)

theorem P5191989612477156499.correct : P5191989612477156499.Spec := by
  intro n
  simp only [A170819, Nat.add_sub_cancel]

end A170819

/-! ## A170819.P7918731460294384057

`∏{p}[n+1, gcd(#, or(3, #))]`
-/

namespace A170819.P7918731460294384057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd p (Nat.lor 3 p)

end

end A170819.P7918731460294384057

namespace A170819

/-- `∏{p}[n+1, gcd(#, or(3, #))]` -/
def P7918731460294384057.Spec : Prop :=
  ∀ n, (P7918731460294384057.a n : ℤ) = A170819 (n + 1)

end A170819

/-! ## A170819.P1002882911326002319

`A097706(∏{p}[n+1, #])`
-/

namespace A170819.P1002882911326002319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A170819.P1002882911326002319

namespace A170819

/-- `A097706(∏{p}[n+1, #])` -/
def P1002882911326002319.Spec : Prop :=
  ∀ n, P1002882911326002319.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P16916093736444568624

`∏{p}[n+1, A140211(#)]`
-/

namespace A170819.P16916093736444568624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140211 p

end

end A170819.P16916093736444568624

namespace A170819

/-- `∏{p}[n+1, A140211(#)]` -/
def P16916093736444568624.Spec : Prop :=
  ∀ n, P16916093736444568624.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P1538495821872785794

`A363340(∏{p}[n+1, #])`
-/

namespace A170819.P1538495821872785794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363340 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A170819.P1538495821872785794

namespace A170819

/-- `A363340(∏{p}[n+1, #])` -/
def P1538495821872785794.Spec : Prop :=
  ∀ n, P1538495821872785794.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P7853394390193686801

`A204455(A072438(n+1))`
-/

namespace A170819.P7853394390193686801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A072438 (n + 1)).toNat

end

end A170819.P7853394390193686801

namespace A170819

/-- `A204455(A072438(n+1))` -/
def P7853394390193686801.Spec : Prop :=
  ∀ n, P7853394390193686801.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P11088432527286502767

`A204455(A097706(n+1))`
-/

namespace A170819.P11088432527286502767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A097706 (n + 1)).toNat

end

end A170819.P11088432527286502767

namespace A170819

/-- `A204455(A097706(n+1))` -/
def P11088432527286502767.Spec : Prop :=
  ∀ n, P11088432527286502767.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P17509431244630157934

`A363340(A331737(n+1))`
-/

namespace A170819.P17509431244630157934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363340 (A331737 (n + 1)).toNat

end

end A170819.P17509431244630157934

namespace A170819

/-- `A363340(A331737(n+1))` -/
def P17509431244630157934.Spec : Prop :=
  ∀ n, P17509431244630157934.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P2684435525028558149

`A363340(A350390(n+1))`
-/

namespace A170819.P2684435525028558149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363340 (A350390 (n + 1)).toNat

end

end A170819.P2684435525028558149

namespace A170819

/-- `A363340(A350390(n+1))` -/
def P2684435525028558149.Spec : Prop :=
  ∀ n, P2684435525028558149.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P11954591611636936469

`A363340(A372379(n+1))`
-/

namespace A170819.P11954591611636936469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363340 (A372379 (n + 1)).toNat

end

end A170819.P11954591611636936469

namespace A170819

/-- `A363340(A372379(n+1))` -/
def P11954591611636936469.Spec : Prop :=
  ∀ n, P11954591611636936469.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P7088382062103726827

`A097706(A099985(n+1)/2)`
-/

namespace A170819.P7088382062103726827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A170819.P7088382062103726827

namespace A170819

/-- `A097706(A099985(n+1)/2)` -/
def P7088382062103726827.Spec : Prop :=
  ∀ n, P7088382062103726827.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P16562563590931360903

`gcd(A097706(n+1), A144845(n))`
-/

namespace A170819.P16562563590931360903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097706 (n + 1)) (A144845 n)

end

end A170819.P16562563590931360903

namespace A170819

/-- `gcd(A097706(n+1), A144845(n))` -/
def P16562563590931360903.Spec : Prop :=
  ∀ n, (P16562563590931360903.a n : ℤ) = A170819 (n + 1)

end A170819

/-! ## A170819.P14846013855155811935

`A072438(A007947(2*(n+1))/2)`
-/

namespace A170819.P14846013855155811935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A170819.P14846013855155811935

namespace A170819

/-- `A072438(A007947(2*(n+1))/2)` -/
def P14846013855155811935.Spec : Prop :=
  ∀ n, P14846013855155811935.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P11854587048317427208

`A097706((n+1)/A003557(n+1))`
-/

namespace A170819.P11854587048317427208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A170819.P11854587048317427208

namespace A170819

/-- `A097706((n+1)/A003557(n+1))` -/
def P11854587048317427208.Spec : Prop :=
  ∀ n, P11854587048317427208.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P10089753371732585361

`A204455((n+1)/A072436(n+1))`
-/

namespace A170819.P10089753371732585361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A170819.P10089753371732585361

namespace A170819

/-- `A204455((n+1)/A072436(n+1))` -/
def P10089753371732585361.Spec : Prop :=
  ∀ n, P10089753371732585361.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P14724144774388787887

`A097706(A015052(A015052(n+1)))`
-/

namespace A170819.P14724144774388787887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A015052 (A015052 (n + 1)).toNat).toNat

end

end A170819.P14724144774388787887

namespace A170819

/-- `A097706(A015052(A015052(n+1)))` -/
def P14724144774388787887.Spec : Prop :=
  ∀ n, P14724144774388787887.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P16583551270516420190

`A097706(A019555(A019555(n+1)))`
-/

namespace A170819.P16583551270516420190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A019555 (A019555 (n + 1)).toNat).toNat

end

end A170819.P16583551270516420190

namespace A170819

/-- `A097706(A019555(A019555(n+1)))` -/
def P16583551270516420190.Spec : Prop :=
  ∀ n, P16583551270516420190.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P15511089485582632653

`A097706(A053166(A053166(n+1)))`
-/

namespace A170819.P15511089485582632653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A170819.P15511089485582632653

namespace A170819

/-- `A097706(A053166(A053166(n+1)))` -/
def P15511089485582632653.Spec : Prop :=
  ∀ n, P15511089485582632653.a n = A170819 (n + 1)

end A170819

/-! ## A170819.P13658694278466512952

`A099985(n+1)/A099985(A170818(n+1))`
-/

namespace A170819.P13658694278466512952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 (n + 1) : ℚ) / (A099985 (A170818 (n + 1)).toNat : ℚ)

end

end A170819.P13658694278466512952

namespace A170819

/-- `A099985(n+1)/A099985(A170818(n+1))` -/
def P13658694278466512952.Spec : Prop :=
  ∀ n, P13658694278466512952.a n = (A170819 (n + 1) : ℚ)

end A170819

/-! ## A170819.P5290639186368643526

`A363340(A000265(A007947(A000265(n+1))))`
-/

namespace A170819.P5290639186368643526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363340 (A000265 (A007947 (A000265 (n + 1)).toNat).toNat).toNat

end

end A170819.P5290639186368643526

namespace A170819

/-- `A363340(A000265(A007947(A000265(n+1))))` -/
def P5290639186368643526.Spec : Prop :=
  ∀ n, P5290639186368643526.a n = A170819 (n + 1)

end A170819

/-!
# A170820: Let p = n-th prime; a(n) = (p-1)/(order of (p+3)/2 mod p).

The programs for A170820, there is no canonical definition to state claims against.
-/

/-! ## A170820.P12391028500456969816

`round(A045319(n+2)/A320383(n+3))`
-/

namespace A170820.P12391028500456969816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045319 (n + 2) : ℚ) / (A320383 (n + 3) : ℚ))

end

end A170820.P12391028500456969816

/-! ## A170820.P15531802942563886389

`A001917(n+3)*A014664(n+3)/A320383(n+3)`
-/

namespace A170820.P15531802942563886389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001917 (n + 3) * A014664 (n + 3) : ℚ) / (A320383 (n + 3) : ℚ)

end

end A170820.P15531802942563886389

/-! ## A170820.P9153525675262641308

`floor(p?[A175212(n+1)]/A320383(n+3))`
-/

namespace A170820.P9153525675262641308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A320383 (n + 3) : ℚ)⌋

end

end A170820.P9153525675262641308

/-! ## A170820.P15512184968372338321

`A000010(A045344(n+2))/A320383(n+3)`
-/

namespace A170820.P15512184968372338321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A045344 (n + 2)).toNat : ℚ) / (A320383 (n + 3) : ℚ)

end

end A170820.P15512184968372338321

/-! ## A170820.P2441830247449563391

`A000010(A065091(n+2))/A320383(n+3)`
-/

namespace A170820.P2441830247449563391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A065091 (n + 2)).toNat : ℚ) / (A320383 (n + 3) : ℚ)

end

end A170820.P2441830247449563391

/-! ## A170820.P3653127073020879230

`eq[A007918(n), A097062(n)]/A320383(n+3)`
-/

namespace A170820.P3653127073020879230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / (A320383 (n + 3) : ℚ)

end

end A170820.P3653127073020879230

/-!
# A170821: Let p = n-th prime; a(n) = smallest k >= 0 such that 4k == 3 mod p.

The programs for A170821, the canonical program `A170821.P16768579857515380064` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170821 has offset 2).

The definition of A170821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170821.P16768579857515380064

`A033638(A065091(n+1))%A065091(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A170821

/-- `A033638(A065091(n+1))%A065091(n+1)` -/
def P16768579857515380064.Spec : Prop :=
  ∀ n, P16768579857515380064.a n = A170821 (n + 2)

theorem P16768579857515380064.correct : P16768579857515380064.Spec := by
  intro n
  simp only [A170821, Nat.add_sub_cancel]

end A170821

/-! ## A170821.P14748781670752350457

`A004652(A000040(n+2))%A000040(n+2)`
-/

namespace A170821.P14748781670752350457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004652 (A000040 (n + 2)).toNat) (A000040 (n + 2))

end

end A170821.P14748781670752350457

namespace A170821

/-- `A004652(A000040(n+2))%A000040(n+2)` -/
def P14748781670752350457.Spec : Prop :=
  ∀ n, P14748781670752350457.a n = A170821 (n + 2)

end A170821

/-! ## A170821.P716113692612402866

`A033638(A008578(n+3))%A008578(n+3)`
-/

namespace A170821.P716113692612402866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033638 (A008578 (n + 3)).toNat) (A008578 (n + 3))

end

end A170821.P716113692612402866

namespace A170821

/-- `A033638(A008578(n+3))%A008578(n+3)` -/
def P716113692612402866.Spec : Prop :=
  ∀ n, P716113692612402866.a n = A170821 (n + 2)

end A170821

/-! ## A170821.P13160508101053408167

`A077043(A000040(n+2)+1)%A000040(n+2)`
-/

namespace A170821.P13160508101053408167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077043 (A000040 (n + 2) + 1).toNat) (A000040 (n + 2))

end

end A170821.P13160508101053408167

namespace A170821

/-- `A077043(A000040(n+2)+1)%A000040(n+2)` -/
def P13160508101053408167.Spec : Prop :=
  ∀ n, P13160508101053408167.a n = A170821 (n + 2)

end A170821

/-! ## A170821.P4137707874605440253

`A083392(A000040(n+2)+1)%A000040(n+2)`
-/

namespace A170821.P4137707874605440253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083392 (A000040 (n + 2) + 1).toNat) (A000040 (n + 2))

end

end A170821.P4137707874605440253

namespace A170821

/-- `A083392(A000040(n+2)+1)%A000040(n+2)` -/
def P4137707874605440253.Spec : Prop :=
  ∀ n, P4137707874605440253.a n = A170821 (n + 2)

end A170821

/-! ## A170821.P131611724970483359

`A002620(A000040(n+2)+2)%A000040(n+2)`
-/

namespace A170821.P131611724970483359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 (A000040 (n + 2) + 2).toNat) (A000040 (n + 2))

end

end A170821.P131611724970483359

namespace A170821

/-- `A002620(A000040(n+2)+2)%A000040(n+2)` -/
def P131611724970483359.Spec : Prop :=
  ∀ n, P131611724970483359.a n = A170821 (n + 2)

end A170821

/-! ## A170821.P12412757115174970423

`A076921(A000040(n+2)+2)%A000040(n+2)`
-/

namespace A170821.P12412757115174970423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076921 (A000040 (n + 2) + 2).toNat) (A000040 (n + 2))

end

end A170821.P12412757115174970423

namespace A170821

/-- `A076921(A000040(n+2)+2)%A000040(n+2)` -/
def P12412757115174970423.Spec : Prop :=
  ∀ n, P12412757115174970423.a n = A170821 (n + 2)

end A170821

/-! ## A170821.P11863816881923813785

`A001399(3*A000040(n+2))%A000040(n+2)`
-/

namespace A170821.P11863816881923813785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 (3 * A000040 (n + 2)).toNat) (A000040 (n + 2))

end

end A170821.P11863816881923813785

namespace A170821

/-- `A001399(3*A000040(n+2))%A000040(n+2)` -/
def P11863816881923813785.Spec : Prop :=
  ∀ n, P11863816881923813785.a n = A170821 (n + 2)

end A170821

/-!
# A170823: An infinite word on the alphabet 1, 2, 3 by Bollobas.

The programs for A170823, the canonical program `A170823.P2846578837375981881` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170823 has offset 0).

The definition of A170823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170823.P2846578837375981881

`A060582(record[A163327(n)])+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A170823

/-- `A060582(record[A163327(n)])+1` -/
def P2846578837375981881.Spec : Prop :=
  ∀ n, P2846578837375981881.a n = A170823 n

theorem P2846578837375981881.correct : P2846578837375981881.Spec := by
  intro n
  simp only [A170823]

end A170823

/-! ## A170823.P12707237158269415280

`A005408(n)-(2*n-A060582(record[A163327(n)]))`
-/

namespace A170823.P12707237158269415280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A060582 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A170823.P12707237158269415280

namespace A170823

/-- `A005408(n)-(2*n-A060582(record[A163327(n)]))` -/
def P12707237158269415280.Spec : Prop :=
  ∀ n, P12707237158269415280.a n = A170823 n

theorem P12707237158269415280.correct : P12707237158269415280.Spec := by
  intro n
  simp only [A170823, Nat.add_sub_cancel, A170823.P12707237158269415280.f1, A170823.P12707237158269415280.a, A170823.P2846578837375981881.f1, A170823.P2846578837375981881.a, A005408, A005408.P17437947328870227736.a, A060582, A060582.P2354958509821228698.a, A163327, A163327.P8461444291336420103.a, A037314, A037314.P11971780737559590080.f1, A037314.P11971780737559590080.a, A163325, A163325.P6103091774135699919.a, A163326, A163326.P13554713311581923438.a, A120437, A120437.P11021873601031036809.a, A066443, A066443.P4391103697561392204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A170823

/-! ## A170823.P1367519205151060056

`A007413(A212740(n)+A026626(n))`
-/

namespace A170823.P1367519205151060056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (A212740 n + A026626 n).toNat

end

end A170823.P1367519205151060056

namespace A170823

/-- `A007413(A212740(n)+A026626(n))` -/
def P1367519205151060056.Spec : Prop :=
  ∀ n, P1367519205151060056.a n = A170823 n

end A170823

/-! ## A170823.P11584250413296535443

`A007413(A245774(n+1)-A006068(n))`
-/

namespace A170823.P11584250413296535443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (A245774 (n + 1) - A006068 n).toNat

end

end A170823.P11584250413296535443

namespace A170823

/-- `A007413(A245774(n+1)-A006068(n))` -/
def P11584250413296535443.Spec : Prop :=
  ∀ n, P11584250413296535443.a n = A170823 n

end A170823

/-! ## A170823.P17148394592542061663

`A005680(xor(A007088(n), A061345(n)))`
-/

namespace A170823.P17148394592542061663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (Int.xor (A007088 n) (A061345 n)).toNat

end

end A170823.P17148394592542061663

namespace A170823

/-- `A005680(xor(A007088(n), A061345(n)))` -/
def P17148394592542061663.Spec : Prop :=
  ∀ n, P17148394592542061663.a n = A170823 n

end A170823

/-!
# A170824: a(n) = product of distinct primes of form 6k+1 that divide n.

The programs for A170824, the canonical program `A170824.P11297377801870063513` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170824 has offset 1).

The definition of A170824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170824.P11297377801870063513

`∏{p}[n+1, A140213(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A170824

/-- `∏{p}[n+1, A140213(#)]` -/
def P11297377801870063513.Spec : Prop :=
  ∀ n, P11297377801870063513.a n = A170824 (n + 1)

theorem P11297377801870063513.correct : P11297377801870063513.Spec := by
  intro n
  simp only [A170824, Nat.add_sub_cancel]

end A170824

/-! ## A170824.P3287780705944213698

`A248909(∏{p}[n+1, #])`
-/

namespace A170824.P3287780705944213698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A170824.P3287780705944213698

namespace A170824

/-- `A248909(∏{p}[n+1, #])` -/
def P3287780705944213698.Spec : Prop :=
  ∀ n, P3287780705944213698.a n = A170824 (n + 1)

end A170824

/-! ## A170824.P6812535765490188801

`∏{p}[n+1, #^A092573(#)]`
-/

namespace A170824.P6812535765490188801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A092573 p : ℤ)

end

end A170824.P6812535765490188801

namespace A170824

/-- `∏{p}[n+1, #^A092573(#)]` -/
def P6812535765490188801.Spec : Prop :=
  ∀ n, P6812535765490188801.a n = (A170824 (n + 1) : ℚ)

end A170824

/-! ## A170824.P5033610601839739671

`∏{p}[n+1, #^(A007089(#)%2)]`
-/

namespace A170824.P5033610601839739671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (Int.tmod (A007089 p) 2 : ℤ)

end

end A170824.P5033610601839739671

namespace A170824

/-- `∏{p}[n+1, #^(A007089(#)%2)]` -/
def P5033610601839739671.Spec : Prop :=
  ∀ n, P5033610601839739671.a n = (A170824 (n + 1) : ℚ)

end A170824

/-! ## A170824.P15290678915809714994

`∏{p}[n+1, gcd(#, A000010(#)%3)]`
-/

namespace A170824.P15290678915809714994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (Int.tmod (A000010 p) 3)

end

end A170824.P15290678915809714994

namespace A170824

/-- `∏{p}[n+1, gcd(#, A000010(#)%3)]` -/
def P15290678915809714994.Spec : Prop :=
  ∀ n, (P15290678915809714994.a n : ℤ) = A170824 (n + 1)

end A170824

/-! ## A170824.P9675820627939800144

`∏{d}[A248909(n+1), A089026(#)]`
-/

namespace A170824.P9675820627939800144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A089026 d

end

end A170824.P9675820627939800144

namespace A170824

/-- `∏{d}[A248909(n+1), A089026(#)]` -/
def P9675820627939800144.Spec : Prop :=
  ∀ n, P9675820627939800144.a n = A170824 (n + 1)

end A170824

/-! ## A170824.P759265640388088352

`A216913(gcd(n+1, A307233(n+1)))`
-/

namespace A170824.P759265640388088352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216913 (Int.gcd (n + 1 : ℤ) (A307233 (n + 1)))

end

end A170824.P759265640388088352

namespace A170824

/-- `A216913(gcd(n+1, A307233(n+1)))` -/
def P759265640388088352.Spec : Prop :=
  ∀ n, P759265640388088352.a n = A170824 (n + 1)

end A170824

/-! ## A170824.P14447168769297113815

`A248909(A170817(n+1)*A170819(n+1))`
-/

namespace A170824.P14447168769297113815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (A170817 (n + 1) * A170819 (n + 1)).toNat

end

end A170824.P14447168769297113815

namespace A170824

/-- `A248909(A170817(n+1)*A170819(n+1))` -/
def P14447168769297113815.Spec : Prop :=
  ∀ n, P14447168769297113815.a n = A170824 (n + 1)

end A170824

/-! ## A170824.P4663511855154864757

`A216913(n+1)/gcd(A106185(n), A216913(n+1))`
-/

namespace A170824.P4663511855154864757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216913 (n + 1) : ℚ) / (Int.gcd (A106185 n) (A216913 (n + 1)) : ℚ)

end

end A170824.P4663511855154864757

namespace A170824

/-- `A216913(n+1)/gcd(A106185(n), A216913(n+1))` -/
def P4663511855154864757.Spec : Prop :=
  ∀ n, P4663511855154864757.a n = (A170824 (n + 1) : ℚ)

end A170824

/-! ## A170824.P9177591206901131743

`A248909((n+1)/A062378(A140213(n+1)))`
-/

namespace A170824.P9177591206901131743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (A140213 (n + 1)).toNat : ℚ))).toNat

end

end A170824.P9177591206901131743

namespace A170824

/-- `A248909((n+1)/A062378(A140213(n+1)))` -/
def P9177591206901131743.Spec : Prop :=
  ∀ n, P9177591206901131743.a n = A170824 (n + 1)

end A170824

/-!
# A170825: a(n) is the product of the distinct primes of form 6*k-1 that divide n.

The programs for A170825, the canonical program `A170825.P11151299437683366187` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170825 has offset 1).

The definition of A170825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343431, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A170825.P11151299437683366187

`A343431(A007947(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A170825

/-- `A343431(A007947(n+1))` -/
def P11151299437683366187.Spec : Prop :=
  ∀ n, P11151299437683366187.a n = A170825 (n + 1)

theorem P11151299437683366187.correct : P11151299437683366187.Spec := by
  intro n
  simp only [A170825, Nat.add_sub_cancel]

end A170825

/-! ## A170825.P13477936713844077505

`∏{p}[n+1, A140214(#)]`
-/

namespace A170825.P13477936713844077505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A140214 p

end

end A170825.P13477936713844077505

namespace A170825

/-- `∏{p}[n+1, A140214(#)]` -/
def P13477936713844077505.Spec : Prop :=
  ∀ n, P13477936713844077505.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P4369455573058424769

`A343431(∏{p}[n+1, #])`
-/

namespace A170825.P4369455573058424769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A170825.P4369455573058424769

namespace A170825

/-- `A343431(∏{p}[n+1, #])` -/
def P4369455573058424769.Spec : Prop :=
  ∀ n, P4369455573058424769.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P13176744647833806375

`∏{p}[n+1, #^(A143097(#)%2)]`
-/

namespace A170825.P13176744647833806375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (Int.tmod (A143097 p) 2 : ℤ)

end

end A170825.P13176744647833806375

namespace A170825

/-- `∏{p}[n+1, #^(A143097(#)%2)]` -/
def P13176744647833806375.Spec : Prop :=
  ∀ n, P13176744647833806375.a n = (A170825 (n + 1) : ℚ)

end A170825

/-! ## A170825.P5095953888431960760

`∏{p}[n+1, gcd(#, A000203(#)%6)]`
-/

namespace A170825.P5095953888431960760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (Int.tmod (A000203 p) 6)

end

end A170825.P5095953888431960760

namespace A170825

/-- `∏{p}[n+1, gcd(#, A000203(#)%6)]` -/
def P5095953888431960760.Spec : Prop :=
  ∀ n, (P5095953888431960760.a n : ℤ) = A170825 (n + 1)

end A170825

/-! ## A170825.P11938239422527475219

`A343431(A015052(n+1))`
-/

namespace A170825.P11938239422527475219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A015052 (n + 1)).toNat

end

end A170825.P11938239422527475219

namespace A170825

/-- `A343431(A015052(n+1))` -/
def P11938239422527475219.Spec : Prop :=
  ∀ n, P11938239422527475219.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P1740117641359594924

`A343431(A015053(n+1))`
-/

namespace A170825.P1740117641359594924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A015053 (n + 1)).toNat

end

end A170825.P1740117641359594924

namespace A170825

/-- `A343431(A015053(n+1))` -/
def P1740117641359594924.Spec : Prop :=
  ∀ n, P1740117641359594924.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P14293707749825942390

`A343431(A066069(n+1))`
-/

namespace A170825.P14293707749825942390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A066069 (n + 1)).toNat

end

end A170825.P14293707749825942390

namespace A170825

/-- `A343431(A066069(n+1))` -/
def P14293707749825942390.Spec : Prop :=
  ∀ n, P14293707749825942390.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P11285308551483087201

`A343431(A204455(n+1))`
-/

namespace A170825.P11285308551483087201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A204455 (n + 1)).toNat

end

end A170825.P11285308551483087201

namespace A170825

/-- `A343431(A204455(n+1))` -/
def P11285308551483087201.Spec : Prop :=
  ∀ n, P11285308551483087201.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P13366981720724898193

`A343431(gcd(n+1, A144845(n)))`
-/

namespace A170825.P13366981720724898193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (Int.gcd (n + 1 : ℤ) (A144845 n))

end

end A170825.P13366981720724898193

namespace A170825

/-- `A343431(gcd(n+1, A144845(n)))` -/
def P13366981720724898193.Spec : Prop :=
  ∀ n, P13366981720724898193.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P8093868446430871863

`A007947(2*A343430(n+1))/2`
-/

namespace A170825.P8093868446430871863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (2 * A343430 (n + 1)).toNat : ℚ) / 2

end

end A170825.P8093868446430871863

namespace A170825

/-- `A007947(2*A343430(n+1))/2` -/
def P8093868446430871863.Spec : Prop :=
  ∀ n, P8093868446430871863.a n = (A170825 (n + 1) : ℚ)

end A170825

/-! ## A170825.P9995961361431156631

`∏{p}[n+1, gcd(A020639(#), A035178(#))]`
-/

namespace A170825.P9995961361431156631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (A020639 p) (A035178 p)

end

end A170825.P9995961361431156631

namespace A170825

/-- `∏{p}[n+1, gcd(A020639(#), A035178(#))]` -/
def P9995961361431156631.Spec : Prop :=
  ∀ n, (P9995961361431156631.a n : ℤ) = A170825 (n + 1)

end A170825

/-! ## A170825.P15679771473076347639

`∏{p}[n+1, #^(A159977(#+1)%2)]`
-/

namespace A170825.P15679771473076347639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (Int.tmod (A159977 (p + 1)) 2 : ℤ)

end

end A170825.P15679771473076347639

namespace A170825

/-- `∏{p}[n+1, #^(A159977(#+1)%2)]` -/
def P15679771473076347639.Spec : Prop :=
  ∀ n, P15679771473076347639.a n = (A170825 (n + 1) : ℚ)

end A170825

/-! ## A170825.P9923363014293492841

`A343431(A170817(n+1)*A170819(n+1))`
-/

namespace A170825.P9923363014293492841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A170817 (n + 1) * A170819 (n + 1)).toNat

end

end A170825.P9923363014293492841

namespace A170825

/-- `A343431(A170817(n+1)*A170819(n+1))` -/
def P9923363014293492841.Spec : Prop :=
  ∀ n, P9923363014293492841.a n = A170825 (n + 1)

end A170825

/-! ## A170825.P7312019872832825432

`gcd(A003968(n+1), A326314(n+1))`
-/

namespace A170825.P7312019872832825432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003968 (n + 1)) (A326314 (n + 1))

end

end A170825.P7312019872832825432

namespace A170825

/-- `gcd(A003968(n+1), A326314(n+1))` -/
def P7312019872832825432.Spec : Prop :=
  ∀ n, (P7312019872832825432.a n : ℤ) = A170825 (n + 1)

end A170825

/-! ## A170825.P14523773767891088275

`gcd(A100650(n), A343431(n+1))`
-/

namespace A170825.P14523773767891088275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100650 n) (A343431 (n + 1))

end

end A170825.P14523773767891088275

namespace A170825

/-- `gcd(A100650(n), A343431(n+1))` -/
def P14523773767891088275.Spec : Prop :=
  ∀ n, (P14523773767891088275.a n : ℤ) = A170825 (n + 1)

end A170825

/-! ## A170825.P8476397778457388641

`gcd(A080397(n), A343431(n+1))`
-/

namespace A170825.P8476397778457388641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080397 n) (A343431 (n + 1))

end

end A170825.P8476397778457388641

namespace A170825

/-- `gcd(A080397(n), A343431(n+1))` -/
def P8476397778457388641.Spec : Prop :=
  ∀ n, (P8476397778457388641.a n : ℤ) = A170825 (n + 1)

end A170825

/-! ## A170825.P10315743608876443494

`A343431(A000026(A343431((n+1)²)))`
-/

namespace A170825.P10315743608876443494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A000026 (A343431 ((n + 1) ^ 2)).toNat).toNat

end

end A170825.P10315743608876443494

namespace A170825

/-- `A343431(A000026(A343431((n+1)²)))` -/
def P10315743608876443494.Spec : Prop :=
  ∀ n, P10315743608876443494.a n = A170825 (n + 1)

end A170825

/-!
# A170826: a(n) = gcd(n^2, n!).

The programs for A170826, the canonical program `A170826.P11256001461793790936` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170826 has offset 1).

The definition of A170826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd((n+1)², (n+1)!)` (program `A170826.P11256001461793790936`, by `A170826.P11256001461793790936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170826.P11256001461793790936

`gcd((n+1)², (n+1)!)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170826

/-- `gcd((n+1)², (n+1)!)` -/
def P11256001461793790936.Spec : Prop :=
  ∀ n, (P11256001461793790936.a n : ℤ) = A170826 (n + 1)

theorem P11256001461793790936.correct : P11256001461793790936.Spec := by
  intro n
  simp only [A170826, Nat.add_sub_cancel]

end A170826

/-! ## A170826.P9179738393814190625

`(n+1)!/A092043(n+1)`
-/

namespace A170826.P9179738393814190625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A092043 (n + 1) : ℚ)

end

end A170826.P9179738393814190625

namespace A170826

/-- `(n+1)!/A092043(n+1)` -/
def P9179738393814190625.Spec : Prop :=
  ∀ n, P9179738393814190625.a n = (A170826 (n + 1) : ℚ)

end A170826

/-! ## A170826.P3479579713280450916

`(n+1)²-A072230(n+1)`
-/

namespace A170826.P3479579713280450916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A072230 (n + 1)

end

end A170826.P3479579713280450916

namespace A170826

/-- `(n+1)²-A072230(n+1)` -/
def P3479579713280450916.Spec : Prop :=
  ∀ n, P3479579713280450916.a n = A170826 (n + 1)

end A170826

/-! ## A170826.P15641836628222440463

`(n+1)²/A014973(n+1)`
-/

namespace A170826.P15641836628222440463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A014973 (n + 1) : ℚ)

end

end A170826.P15641836628222440463

namespace A170826

/-- `(n+1)²/A014973(n+1)` -/
def P15641836628222440463.Spec : Prop :=
  ∀ n, P15641836628222440463.a n = (A170826 (n + 1) : ℚ)

end A170826

/-! ## A170826.P15044600059626184880

`(n+1)*(n+1-A061006(n+1))`
-/

namespace A170826.P15044600059626184880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A061006 (n + 1))

end

end A170826.P15044600059626184880

namespace A170826

/-- `(n+1)*(n+1-A061006(n+1))` -/
def P15044600059626184880.Spec : Prop :=
  ∀ n, P15044600059626184880.a n = A170826 (n + 1)

end A170826

/-! ## A170826.P2400884370464771761

`gcd(A072230(n+1), A162395(n+1))`
-/

namespace A170826.P2400884370464771761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072230 (n + 1)) (A162395 (n + 1))

end

end A170826.P2400884370464771761

namespace A170826

/-- `gcd(A072230(n+1), A162395(n+1))` -/
def P2400884370464771761.Spec : Prop :=
  ∀ n, (P2400884370464771761.a n : ℤ) = A170826 (n + 1)

end A170826

/-! ## A170826.P5286378600939793267

`A000217(n+1)+A000217(n)-A072230(n+1)`
-/

namespace A170826.P5286378600939793267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A072230 (n + 1))

end

end A170826.P5286378600939793267

namespace A170826

/-- `A000217(n+1)+A000217(n)-A072230(n+1)` -/
def P5286378600939793267.Spec : Prop :=
  ∀ n, P5286378600939793267.a n = A170826 (n + 1)

end A170826

/-! ## A170826.P13866370679315633541

`A181859(n+1)*A181861(n+1)`
-/

namespace A170826.P13866370679315633541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 (n + 1) * A181861 (n + 1)

end

end A170826.P13866370679315633541

namespace A170826

/-- `A181859(n+1)*A181861(n+1)` -/
def P13866370679315633541.Spec : Prop :=
  ∀ n, P13866370679315633541.a n = A170826 (n + 1)

end A170826

/-! ## A170826.P17928714528938082729

`gcd(A067911(n+1), A099764(n))`
-/

namespace A170826.P17928714528938082729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067911 (n + 1)) (A099764 n)

end

end A170826.P17928714528938082729

namespace A170826

/-- `gcd(A067911(n+1), A099764(n))` -/
def P17928714528938082729.Spec : Prop :=
  ∀ n, (P17928714528938082729.a n : ℤ) = A170826 (n + 1)

end A170826

/-! ## A170826.P796002817412603717

`gcd(A051696(n+1), A099764(n))`
-/

namespace A170826.P796002817412603717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051696 (n + 1)) (A099764 n)

end

end A170826.P796002817412603717

namespace A170826

/-- `gcd(A051696(n+1), A099764(n))` -/
def P796002817412603717.Spec : Prop :=
  ∀ n, (P796002817412603717.a n : ℤ) = A170826 (n + 1)

end A170826

/-!
# A170827: Sum of digits after the decimal point in the decimal expansion of (3/2)^n.

The programs for A170827, there is no canonical definition to state claims against.
-/

/-! ## A170827.P5923545129977363096

`Δ[A170828(A289207(n+1))]`
-/

namespace A170827.P5923545129977363096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170827.P5923545129977363096

/-! ## A170827.P4112448338320141956

`Δ[A170828(A028310(n)-1)]`
-/

namespace A170827.P4112448338320141956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170827.P4112448338320141956

/-! ## A170827.P16487722628873582013

`Δ[A170828(A004273(n)-n)]`
-/

namespace A170827.P16487722628873582013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170827.P16487722628873582013

/-! ## A170827.P10864471316652170565

`Δ[A170828(A289207(2*n)/2)]`
-/

namespace A170827.P10864471316652170565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170827.P10864471316652170565

/-! ## A170827.P6680725106655805080

`A170828(n)-A170828((n-1)%(n+1))`
-/

namespace A170827.P6680725106655805080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 n - A170828 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A170827.P6680725106655805080

/-! ## A170827.P3888873529883959359

`A170828(n)-A170828(A289207(n+1))`
-/

namespace A170827.P3888873529883959359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 n - A170828 (A289207 (n + 1)).toNat

end

end A170827.P3888873529883959359

/-! ## A170827.P14516376230365294926

`A170828(n)-A170828(A028310(n)-1)`
-/

namespace A170827.P14516376230365294926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 n - A170828 (A028310 n - 1).toNat

end

end A170827.P14516376230365294926

/-! ## A170827.P5742598253454764408

`A170828(n)-A170828(A004273(n)-n)`
-/

namespace A170827.P5742598253454764408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 n - A170828 (A004273 n - (n : ℤ)).toNat

end

end A170827.P5742598253454764408

/-! ## A170827.P7345289855610076692

`A170828(n)-A170828(log2(A011782(n)))`
-/

namespace A170827.P7345289855610076692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 n - A170828 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A170827.P7345289855610076692

/-! ## A170827.P14733129571183842087

`Δ[A170828(log2(A011782(n)))]`
-/

namespace A170827.P14733129571183842087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170828 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170827.P14733129571183842087

/-! ## A170827.P13079744464746072894

`∑{digits}[A204544(n), #]`
-/

namespace A170827.P13079744464746072894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A170827.P13079744464746072894

/-! ## A170827.P7245253929667995907

`∑{digits}[A000351(n)*A002380(n), #]`
-/

namespace A170827.P7245253929667995907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A002380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A170827.P7245253929667995907

/-!
# A170828: Partial sums of A170827.

The programs for A170828, there is no canonical definition to state claims against.
-/

/-! ## A170828.P12325752155860270034

`∑[A170827(n)]`
-/

namespace A170828.P12325752155860270034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170828.P12325752155860270034

/-! ## A170828.P5514287474536902612

`∑[∑{digits}[A204544(n), #]]`
-/

namespace A170828.P5514287474536902612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204544 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170828.P5514287474536902612

/-! ## A170828.P1195733395829435442

`∑[∑{digits}[A000351(n)*A002380(n), #]]`
-/

namespace A170828.P1195733395829435442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A002380 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170828.P1195733395829435442

/-! ## A170828.P8294035939748511351

`∑{d}[2^n, A170827(log2(#))]`
-/

namespace A170828.P8294035939748511351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A170827 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A170828.P8294035939748511351

/-!
# A170829: a(n) = gcd(Catalan(n), n!).

The programs for A170829, the canonical program `A170829.P1071044855149871105` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170829 has offset 0).

The definition of A170829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000108(n), n!)` (program `A170829.P1071044855149871105`, by `A170829.P1071044855149871105.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170829.P1071044855149871105

`gcd(A000108(n), n!)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A170829

/-- `gcd(A000108(n), n!)` -/
def P1071044855149871105.Spec : Prop :=
  ∀ n, (P1071044855149871105.a n : ℤ) = A170829 n

theorem P1071044855149871105.correct : P1071044855149871105.Spec := by
  intro n
  simp only [A170829]

end A170829

/-! ## A170829.P15237391015942110333

`A263931(n)/A005451(n+1)`
-/

namespace A170829.P15237391015942110333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263931 n : ℚ) / (A005451 (n + 1) : ℚ)

end

end A170829.P15237391015942110333

namespace A170829

/-- `A263931(n)/A005451(n+1)` -/
def P15237391015942110333.Spec : Prop :=
  ∀ n, P15237391015942110333.a n = (A170829 n : ℚ)

end A170829

/-! ## A170829.P17288554921621234408

`A263931(n)/gcd(A131738(n), A263931(n))`
-/

namespace A170829.P17288554921621234408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263931 n : ℚ) / (Int.gcd (A131738 n) (A263931 n) : ℚ)

end

end A170829.P17288554921621234408

namespace A170829

/-- `A263931(n)/gcd(A131738(n), A263931(n))` -/
def P17288554921621234408.Spec : Prop :=
  ∀ n, P17288554921621234408.a n = (A170829 n : ℚ)

end A170829

/-! ## A170829.P14376997847737230120

`A000108(n)/A144186(n)`
-/

namespace A170829.P14376997847737230120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A144186 n : ℚ)

end

end A170829.P14376997847737230120

namespace A170829

/-- `A000108(n)/A144186(n)` -/
def P14376997847737230120.Spec : Prop :=
  ∀ n, P14376997847737230120.a n = (A170829 n : ℚ)

end A170829

/-! ## A170829.P1587537886382042314

`gcd(A168491(n), A263931(n))`
-/

namespace A170829.P1587537886382042314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168491 n) (A263931 n)

end

end A170829.P1587537886382042314

namespace A170829

/-- `gcd(A168491(n), A263931(n))` -/
def P1587537886382042314.Spec : Prop :=
  ∀ n, (P1587537886382042314.a n : ℤ) = A170829 n

end A170829

/-! ## A170829.P15234032423938223985

`gcd(A001791(n), A135322(n))`
-/

namespace A170829.P15234032423938223985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001791 n) (A135322 n)

end

end A170829.P15234032423938223985

namespace A170829

/-- `gcd(A001791(n), A135322(n))` -/
def P15234032423938223985.Spec : Prop :=
  ∀ n, (P15234032423938223985.a n : ℤ) = A170829 n

end A170829

/-! ## A170829.P13303408049180189992

`gcd(A001700(n), A135322(n))`
-/

namespace A170829.P13303408049180189992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001700 n) (A135322 n)

end

end A170829.P13303408049180189992

namespace A170829

/-- `gcd(A001700(n), A135322(n))` -/
def P13303408049180189992.Spec : Prop :=
  ∀ n, (P13303408049180189992.a n : ℤ) = A170829 n

end A170829

/-! ## A170829.P13951234517581370393

`gcd(A051960(n), A263931(n))`
-/

namespace A170829.P13951234517581370393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051960 n) (A263931 n)

end

end A170829.P13951234517581370393

namespace A170829

/-- `gcd(A051960(n), A263931(n))` -/
def P13951234517581370393.Spec : Prop :=
  ∀ n, (P13951234517581370393.a n : ℤ) = A170829 n

end A170829

/-! ## A170829.P12477051112335786816

`gcd(A126930(2*n+1), A182923(2*n))`
-/

namespace A170829.P12477051112335786816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 (2 * n + 1)) (A182923 (2 * n))

end

end A170829.P12477051112335786816

namespace A170829

/-- `gcd(A126930(2*n+1), A182923(2*n))` -/
def P12477051112335786816.Spec : Prop :=
  ∀ n, (P12477051112335786816.a n : ℤ) = A170829 n

end A170829

/-! ## A170829.P4095555436444854046

`gcd(C(2*n, n)/(n+1), n!)`
-/

namespace A170829.P4095555436444854046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))) (Nat.factorial n : ℤ)

end

end A170829.P4095555436444854046

namespace A170829

/-- `gcd(C(2*n, n)/(n+1), n!)` -/
def P4095555436444854046.Spec : Prop :=
  ∀ n, (P4095555436444854046.a n : ℤ) = A170829 n

end A170829

/-!
# A170831: a(n) = 2^(floor(n/2))+2^(floor(n/2)-1)-2^(floor((n-1)/3)).

The programs for A170831, the canonical program `A170831.P11931213341435273746` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170831 has offset 2).

The definition of A170831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170831.P11931213341435273746

`2^floor((n+2)/2)+2^(floor((n+2)/2)-1)-2^floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170831

/-- `2^floor((n+2)/2)+2^(floor((n+2)/2)-1)-2^floor((n+1)/3)` -/
def P11931213341435273746.Spec : Prop :=
  ∀ n, P11931213341435273746.a n = (A170831 (n + 2) : ℚ)

end A170831

/-! ## A170831.P9484647796777476834

`2*a(n-2)+2*a(n-3)-4*a(n-5)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=4, a(4)=10`
-/

namespace A170831.P9484647796777476834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 4, 10] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) - 4 * a (n - 5)

end

end A170831.P9484647796777476834

namespace A170831

/-- `2*a(n-2)+2*a(n-3)-4*a(n-5)` -/
def P9484647796777476834.Spec : Prop :=
  ∀ n, P9484647796777476834.a n = A170831 (n + 2)

end A170831

/-! ## A170831.P12550675747489003130

`ogf((2+2x-4x^3-2x^4)/(1-2x^2-2x^3+4x^5))`
-/

namespace A170831.P12550675747489003130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 0, -4, -2] [1, 0, -2, -2, 0, 4] n

end

end A170831.P12550675747489003130

namespace A170831

/-- `ogf((2+2x-4x^3-2x^4)/(1-2x^2-2x^3+4x^5))` -/
def P12550675747489003130.Spec : Prop :=
  ∀ n, P12550675747489003130.a n = A170831 (n + 2)

end A170831

/-! ## A170831.P6218305829305838285

`A065365(A170832(n+2))`
-/

namespace A170831.P6218305829305838285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A170832 (n + 2)).toNat

end

end A170831.P6218305829305838285

namespace A170831

/-- `A065365(A170832(n+2))` -/
def P6218305829305838285.Spec : Prop :=
  ∀ n, P6218305829305838285.a n = A170831 (n + 2)

end A170831

/-! ## A170831.P8643583584217104712

`A059905(A170833(n+2))`
-/

namespace A170831.P8643583584217104712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A170833 (n + 2)).toNat

end

end A170831.P8643583584217104712

namespace A170831

/-- `A059905(A170833(n+2))` -/
def P8643583584217104712.Spec : Prop :=
  ∀ n, P8643583584217104712.a n = A170831 (n + 2)

end A170831

/-!
# A170832: a(n) = 3^(floor(n/2))+3^(floor(n/2)-1)-3^(floor((n-1)/3)).

The programs for A170832, the canonical program `A170832.P8466777058666994696` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170832 has offset 2).

The definition of A170832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170832.P8466777058666994696

`3^floor((n+2)/2)+3^(floor((n+2)/2)-1)-3^floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170832

/-- `3^floor((n+2)/2)+3^(floor((n+2)/2)-1)-3^floor((n+1)/3)` -/
def P8466777058666994696.Spec : Prop :=
  ∀ n, P8466777058666994696.a n = (A170832 (n + 2) : ℚ)

end A170832

/-! ## A170832.P16614763757318841197

`3*a(n-2)+3*a(n-3)-9*a(n-5)` with `a(0)=3, a(1)=3, a(2)=9, a(3)=9, a(4)=33`
-/

namespace A170832.P16614763757318841197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 9, 9, 33] fun n a =>
  3 * a (n - 2) + 3 * a (n - 3) - 9 * a (n - 5)

end

end A170832.P16614763757318841197

namespace A170832

/-- `3*a(n-2)+3*a(n-3)-9*a(n-5)` -/
def P16614763757318841197.Spec : Prop :=
  ∀ n, P16614763757318841197.a n = A170832 (n + 2)

end A170832

/-! ## A170832.P6549988347291355325

`ogf((3+3x-9x^3-3x^4)/(1-3x^2-3x^3+9x^5))`
-/

namespace A170832.P6549988347291355325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 0, -9, -3] [1, 0, -3, -3, 0, 9] n

end

end A170832.P6549988347291355325

namespace A170832

/-- `ogf((3+3x-9x^3-3x^4)/(1-3x^2-3x^3+9x^5))` -/
def P6549988347291355325.Spec : Prop :=
  ∀ n, P6549988347291355325.a n = A170832 (n + 2)

end A170832

/-! ## A170832.P8006388173586595783

`A166699(A170831(n+2))`
-/

namespace A170832.P8006388173586595783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166699 (A170831 (n + 2)).toNat

end

end A170832.P8006388173586595783

namespace A170832

/-- `A166699(A170831(n+2))` -/
def P8006388173586595783.Spec : Prop :=
  ∀ n, P8006388173586595783.a n = A170832 (n + 2)

end A170832

/-! ## A170832.P582730765578178943

`A191110(lcm(2, A170831(n+2)))`
-/

namespace A170832.P582730765578178943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (Int.lcm 2 (A170831 (n + 2)))

end

end A170832.P582730765578178943

namespace A170832

/-- `A191110(lcm(2, A170831(n+2)))` -/
def P582730765578178943.Spec : Prop :=
  ∀ n, P582730765578178943.a n = A170832 (n + 2)

end A170832

/-!
# A170833: a(n) = 4^(floor(n/2))+4^(floor(n/2)-1)-4^(floor((n-1)/3)).

The programs for A170833, the canonical program `A170833.P5916120971791279919` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170833 has offset 2).

The definition of A170833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170833.P9602463899690804334

`4*a(n-2)+4*a(n-3)-16*a(n-5)` with `a(0)=4, a(1)=4, a(2)=16, a(3)=16, a(4)=76`
-/

namespace A170833.P9602463899690804334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 16, 16, 76] fun n a =>
  4 * a (n - 2) + 4 * a (n - 3) - 16 * a (n - 5)

end

end A170833.P9602463899690804334

namespace A170833

/-- `4*a(n-2)+4*a(n-3)-16*a(n-5)` -/
def P9602463899690804334.Spec : Prop :=
  ∀ n, P9602463899690804334.a n = A170833 (n + 2)

end A170833

/-! ## A170833.P5916120971791279919

`4^floor((n+2)/2)+4^(floor((n+2)/2)-1)-4^floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170833

/-- `4^floor((n+2)/2)+4^(floor((n+2)/2)-1)-4^floor((n+1)/3)` -/
def P5916120971791279919.Spec : Prop :=
  ∀ n, P5916120971791279919.a n = (A170833 (n + 2) : ℚ)

end A170833

/-! ## A170833.P11928296152097896263

`ogf((4+4x-16x^3-4x^4)/(1-4x^2-4x^3+16x^5))`
-/

namespace A170833.P11928296152097896263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 0, -16, -4] [1, 0, -4, -4, 0, 16] n

end

end A170833.P11928296152097896263

namespace A170833

/-- `ogf((4+4x-16x^3-4x^4)/(1-4x^2-4x^3+16x^5))` -/
def P11928296152097896263.Spec : Prop :=
  ∀ n, P11928296152097896263.a n = A170833 (n + 2)

end A170833

/-! ## A170833.P5635701921681832036

`A166700(A170831(n+2))`
-/

namespace A170833.P5635701921681832036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166700 (A170831 (n + 2)).toNat

end

end A170833.P5635701921681832036

namespace A170833

/-- `A166700(A170831(n+2))` -/
def P5635701921681832036.Spec : Prop :=
  ∀ n, P5635701921681832036.a n = A170833 (n + 2)

end A170833

/-! ## A170833.P15833165356805585523

`A166700(A016116(n+2)+A016116(n)-A173862(n+2))`
-/

namespace A170833.P15833165356805585523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166700 (A016116 (n + 2) + (A016116 n - A173862 (n + 2))).toNat

end

end A170833.P15833165356805585523

namespace A170833

/-- `A166700(A016116(n+2)+A016116(n)-A173862(n+2))` -/
def P15833165356805585523.Spec : Prop :=
  ∀ n, P15833165356805585523.a n = A170833 (n + 2)

end A170833

/-!
# A170834: a(n) = 5^(floor(n/2))+5^(floor(n/2)-1)-5^(floor((n-1)/3)).

The programs for A170834, the canonical program `A170834.P7707564578098555318` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170834 has offset 2).

The definition of A170834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170834.P7707564578098555318

`5*a(n-2)+5*a(n-3)-25*a(n-5)` with `a(0)=5, a(1)=5, a(2)=25, a(3)=25, a(4)=145`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170834

/-- `5*a(n-2)+5*a(n-3)-25*a(n-5)` -/
def P7707564578098555318.Spec : Prop :=
  ∀ n, P7707564578098555318.a n = A170834 (n + 2)

theorem P7707564578098555318.correct : P7707564578098555318.Spec := by
  intro n
  simp only [A170834, Nat.add_sub_cancel]

end A170834

/-! ## A170834.P9398841432695542311

`5^floor((n+2)/2)+5^(floor((n+2)/2)-1)-5^floor((n+1)/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170834.P9398841432695542311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n + 2 : ℚ) / 2⌋ : ℤ) + (5 : ℚ) ^ (⌊(n + 2 : ℚ) / 2⌋ - 1 : ℤ) - (5 : ℚ) ^ (⌊(n + 1 : ℚ) / 3⌋ : ℤ)

end

end A170834.P9398841432695542311

namespace A170834

/-- `5^floor((n+2)/2)+5^(floor((n+2)/2)-1)-5^floor((n+1)/3)` -/
def P9398841432695542311.Spec : Prop :=
  ∀ n, P9398841432695542311.a n = (A170834 (n + 2) : ℚ)

end A170834

/-! ## A170834.P10137929192953753036

`ogf((5+5x-25x^3-5x^4)/(1-5x^2-5x^3+25x^5))`
-/

namespace A170834.P10137929192953753036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5, 0, -25, -5] [1, 0, -5, -5, 0, 25] n

end

end A170834.P10137929192953753036

namespace A170834

/-- `ogf((5+5x-25x^3-5x^4)/(1-5x^2-5x^3+25x^5))` -/
def P10137929192953753036.Spec : Prop :=
  ∀ n, P10137929192953753036.a n = A170834 (n + 2)

end A170834

/-! ## A170834.P1915211854183952268

`A166701(A170831(n+2))`
-/

namespace A170834.P1915211854183952268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166701 (A170831 (n + 2)).toNat

end

end A170834.P1915211854183952268

namespace A170834

/-- `A166701(A170831(n+2))` -/
def P1915211854183952268.Spec : Prop :=
  ∀ n, P1915211854183952268.a n = A170834 (n + 2)

end A170834

/-! ## A170834.P6443741863408873104

`A166701(A016116(n+2)+A016116(n)-A173862(n+2))`
-/

namespace A170834.P6443741863408873104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166701 (A016116 (n + 2) + (A016116 n - A173862 (n + 2))).toNat

end

end A170834.P6443741863408873104

namespace A170834

/-- `A166701(A016116(n+2)+A016116(n)-A173862(n+2))` -/
def P6443741863408873104.Spec : Prop :=
  ∀ n, P6443741863408873104.a n = A170834 (n + 2)

end A170834

/-!
# A170836: First differences of A170837.

The programs for A170836, the canonical program `A170836.P14270454318042908875` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170836 has offset 0).

The definition of A170836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170836.P14270454318042908875

`ogf((x+3x^2+12x^3)/(1-x))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170836

/-- `ogf((x+3x^2+12x^3)/(1-x))` -/
def P14270454318042908875.Spec : Prop :=
  ∀ n, P14270454318042908875.a n = A170836 n

theorem P14270454318042908875.correct : P14270454318042908875.Spec := by
  intro n
  simp only [A170836]

end A170836

/-!
# A170837: a(0)=0, a(1)=1, and a(n) = 16*n - 27 for n >= 2.

The programs for A170837, the canonical program `A170837.P9918761581516786330` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170837 has offset 0).

The definition of A170837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170837.P9918761581516786330

`ogf((x+3x^2+12x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170837

/-- `ogf((x+3x^2+12x^3)/(1-2x+x^2))` -/
def P9918761581516786330.Spec : Prop :=
  ∀ n, P9918761581516786330.a n = A170837 n

theorem P9918761581516786330.correct : P9918761581516786330.Spec := by
  intro n
  simp only [A170837]

end A170837

/-!
# A170840: G.f.: Product_{k>=2} (1 + x^(2^k-1) + 3x^(2^k)).

The programs for A170840, there is no canonical definition to state claims against.
-/

/-! ## A170840.P13252979997886698872

`gcd(A170843(n), A170852(A170852(n)+1))`
-/

namespace A170840.P13252979997886698872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170843 n) (A170852 (A170852 n + 1).toNat)

end

end A170840.P13252979997886698872

/-! ## A170840.P12514212849002132151

`gcd(A170843(n)%A170850(n), A170852(n))`
-/

namespace A170840.P12514212849002132151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A170843 n) (A170850 n)) (A170852 n)

end

end A170840.P12514212849002132151

/-! ## A170840.P16426675255439388142

`gcd(A170843(A055648(n)), A170852(n))`
-/

namespace A170840.P16426675255439388142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170843 (A055648 n).toNat) (A170852 n)

end

end A170840.P16426675255439388142

/-! ## A170840.P1893425915766726751

`xor(A196067(A255494(n)), A294203(n))`
-/

namespace A170840.P1893425915766726751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A196067 (A255494 n).toNat) (A294203 n)

end

end A170840.P1893425915766726751

/-! ## A170840.P12721435889479048167

`A290453(n)*A290455(A290415(n+1))`
-/

namespace A170840.P12721435889479048167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 n * A290455 (A290415 (n + 1)).toNat

end

end A170840.P12721435889479048167

/-!
# A170842: G.f.: Product_{k>=1} (1 + 2x^(2^k-1) + 3x^(2^k)).

The programs for A170842, there is no canonical definition to state claims against.
-/

/-! ## A170842.P6756025363220851258

`A170841(n)/3-a(n-1)` with `a(0)=1`
-/

namespace A170842.P6756025363220851258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A170841 n : ℚ) / 3 - a (n - 1)

end

end A170842.P6756025363220851258

/-!
# A170844: G.f.: Product_{k>=0} (1 + 3x^(2^k-1) + x^(2^k)).

The programs for A170844, there is no canonical definition to state claims against.
-/

/-! ## A170844.P13538161422869993154

`A170860(n+1)+4*A170860(n+2)`
-/

namespace A170844.P13538161422869993154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170860 (n + 1) + 4 * A170860 (n + 2)

end

end A170844.P13538161422869993154

/-!
# A170845: G.f.: Product_{k>=1} (1 + 3x^(2^k-1) + x^(2^k)).

The programs for A170845, there is no canonical definition to state claims against.
-/

/-! ## A170845.P10086738174624658603

`A170860(n+2)`
-/

namespace A170845.P10086738174624658603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170860 (n + 2)

end

end A170845.P10086738174624658603

/-! ## A170845.P5556726350891133369

`gcd(floor(acot(n)²), A170860(ceil(n*exp(acot(n)))))`
-/

namespace A170845.P5556726350891133369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A170860 ⌈(n : ℝ) * Real.exp (SequenceMachineLib.acot (n : ℝ))⌉.toNat)

end

end A170845.P5556726350891133369

/-! ## A170845.P4804144352097215088

`A000027(A170860(1-xor(n, -1)))`
-/

namespace A170845.P4804144352097215088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A170860 (1 - Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A170845.P4804144352097215088

/-! ## A170845.P6796290319657263565

`or(char[1], A170860(2-A001489(n)))`
-/

namespace A170845.P6796290319657263565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A170860 (2 - A001489 n).toNat)

end

end A170845.P6796290319657263565

/-! ## A170845.P18205611721457672221

`or(A000007(n), A170860(1-xor(n, -1)))`
-/

namespace A170845.P18205611721457672221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A170860 (1 - Int.xor (n : ℤ) (-1)).toNat)

end

end A170845.P18205611721457672221

/-! ## A170845.P6324675333859999350

`A007318(C(2, n))*A170860(1-xor(n, -1))`
-/

namespace A170845.P6324675333859999350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A170860 (1 - Int.xor (n : ℤ) (-1)).toNat

end

end A170845.P6324675333859999350

/-! ## A170845.P10522566768933058379

`A007318(((-1)^n)²)*A170860(1-xor(n, -1))`
-/

namespace A170845.P10522566768933058379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A170860 (1 - Int.xor (n : ℤ) (-1)).toNat

end

end A170845.P10522566768933058379

/-!
# A170846: G.f.: Product_{k>=2} (1 + 3x^(2^k-1) + x^(2^k)).

The programs for A170846, there is no canonical definition to state claims against.
-/

/-! ## A170846.P11635248487762188122

`gcd(A170849(n), A170852(A170852(n)+1))`
-/

namespace A170846.P11635248487762188122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170849 n) (A170852 (A170852 n + 1).toNat)

end

end A170846.P11635248487762188122

/-! ## A170846.P38326602562897413

`gcd(A170849(n)%A170850(n), A170852(n))`
-/

namespace A170846.P38326602562897413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A170849 n) (A170850 n)) (A170852 n)

end

end A170846.P38326602562897413

/-! ## A170846.P7288275278849989690

`A170849(n)/gcd(A000079(n), A253585(n+1))`
-/

namespace A170846.P7288275278849989690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170849 n : ℚ) / (Int.gcd (A000079 n) (A253585 (n + 1)) : ℚ)

end

end A170846.P7288275278849989690

/-! ## A170846.P321373450195425358

`A170849(n)/A006519(A253585(n+1))`
-/

namespace A170846.P321373450195425358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170849 n : ℚ) / (A006519 (A253585 (n + 1)).toNat : ℚ)

end

end A170846.P321373450195425358

/-!
# A170849: G.f.: Product_{k>=2} (1 + 3x^(2^k-1) + 2x^(2^k)).

The programs for A170849, there is no canonical definition to state claims against.
-/

/-! ## A170849.P15711663389170039304

`gcd(16, A253585(n+1))*A170846(n)`
-/

namespace A170849.P15711663389170039304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 16 (A253585 (n + 1)) : ℤ) * A170846 n

end

end A170849.P15711663389170039304

/-! ## A170849.P2039431183829010191

`A006519(A253585(n+1))*A170846(n)`
-/

namespace A170849.P2039431183829010191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A253585 (n + 1)).toNat * A170846 n

end

end A170849.P2039431183829010191

/-!
# A170850: G.f.: Product_{k>=0} (1 + 3x^(2^k-1) + 3x^(2^k)).

The programs for A170850, there is no canonical definition to state claims against.
-/

/-! ## A170850.P6332563936013153444

`A320456(A162793(∑[∑{d}[n+1, #]+1]))`
-/

namespace A170850.P6332563936013153444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A162793 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A170850.P6332563936013153444

/-!
# A170851: G.f.: Product_{k>=1} (1 + 3x^(2^k-1) + 3x^(2^k)).

The programs for A170851, there is no canonical definition to state claims against.
-/

/-! ## A170851.P2875437111696403697

`A170852(A296766(n+1))+A170852(n)`
-/

namespace A170851.P2875437111696403697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170852 (A296766 (n + 1)).toNat + A170852 n

end

end A170851.P2875437111696403697

/-!
# A170854: a(0) = 0, a(1) = 1; a(2^i + j) = 3a(j) + 2a(j + 1) for 0 <= j < 2^i.

The programs for A170854, there is no canonical definition to state claims against.
-/

/-! ## A170854.P17808529404231513303

`xor(1, A170859(n))`
-/

namespace A170854.P17808529404231513303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A170859 n)

end

end A170854.P17808529404231513303

/-! ## A170854.P15202248778196707811

`A170859(n)-A033999(n)`
-/

namespace A170854.P15202248778196707811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170859 n - A033999 n

end

end A170854.P15202248778196707811

/-! ## A170854.P15964744728109719089

`A170864(n)-A170859(n)`
-/

namespace A170854.P15964744728109719089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170864 n - A170859 n

end

end A170854.P15964744728109719089

/-! ## A170854.P12922871358561380757

`A170869(n)-A170864(n)`
-/

namespace A170854.P12922871358561380757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170869 n - A170864 n

end

end A170854.P12922871358561380757

/-! ## A170854.P14570865538107255238

`A170859(n)+n-A004442(n)`
-/

namespace A170854.P14570865538107255238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170859 n + ((n : ℤ) - A004442 n)

end

end A170854.P14570865538107255238

/-! ## A170854.P12154423581099248867

`A170859(n)+A008683(gcd(n, n+2))`
-/

namespace A170854.P12154423581099248867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170859 n + A008683 (Nat.gcd n (n + 2))

end

end A170854.P12154423581099248867

/-! ## A170854.P15260437691425030456

`A170859(n)+(-1)^A020639(n+1)`
-/

namespace A170854.P15260437691425030456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170859 n : ℚ) + (-1 : ℚ) ^ (A020639 (n + 1) : ℤ)

end

end A170854.P15260437691425030456

/-! ## A170854.P15700945254826855555

`A170859(n)-A066170(∑[n])`
-/

namespace A170854.P15700945254826855555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170859 n - A066170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A170854.P15700945254826855555

/-! ## A170854.P3666534088373774555

`A004442(A170859(n))`
-/

namespace A170854.P3666534088373774555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A170859 n).toNat

end

end A170854.P3666534088373774555

/-! ## A170854.P5796497902312628858

`A008611(A170869(n))`
-/

namespace A170854.P5796497902312628858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A170869 n).toNat

end

end A170854.P5796497902312628858

/-!
# A170855: a(0) = 0, a(1) = 1; a(2^i + j) = a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170855, there is no canonical definition to state claims against.
-/

/-! ## A170855.P6859300625245305873

`A170865(n)-A170860(n)`
-/

namespace A170855.P6859300625245305873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170865 n - A170860 n

end

end A170855.P6859300625245305873

/-! ## A170855.P11278783573257634004

`A170870(n)-A170865(n)`
-/

namespace A170855.P11278783573257634004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170870 n - A170865 n

end

end A170855.P11278783573257634004

/-! ## A170855.P13348035587051595987

`(A170870(n)-A170860(n))/2`
-/

namespace A170855.P13348035587051595987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170870 n - A170860 n : ℚ) / 2

end

end A170855.P13348035587051595987

/-! ## A170855.P16730923749476345385

`A014682(A170870(n)-A170860(n))`
-/

namespace A170855.P16730923749476345385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170870 n - A170860 n).toNat

end

end A170855.P16730923749476345385

/-! ## A170855.P6194472235877980159

`A004525(A170870(n)-A170860(n))`
-/

namespace A170855.P6194472235877980159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170870 n - A170860 n).toNat

end

end A170855.P6194472235877980159

/-! ## A170855.P14405962496097475635

`A004526(A170870(n)-A170860(n))`
-/

namespace A170855.P14405962496097475635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170870 n - A170860 n).toNat

end

end A170855.P14405962496097475635

/-! ## A170855.P17873633832481685645

`A025480(A170870(n)-A170860(n))`
-/

namespace A170855.P17873633832481685645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170870 n - A170860 n).toNat

end

end A170855.P17873633832481685645

/-! ## A170855.P6402131283300921573

`A029578(A170870(n)-A170860(n))`
-/

namespace A170855.P6402131283300921573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A170870 n - A170860 n).toNat

end

end A170855.P6402131283300921573

/-! ## A170855.P9792195526431162964

`A170865(n)-A170845(abs(2-n))%(2-n²)`
-/

namespace A170855.P9792195526431162964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170865 n - Int.tmod (A170845 |2 - (n : ℤ)|.toNat) (2 - (n ^ 2 : ℤ))

end

end A170855.P9792195526431162964

/-!
# A170856: a(0) = 0, a(1) = 1; a(2^i + j) = 2a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170856, there is no canonical definition to state claims against.
-/

/-! ## A170856.P10295302077716675502

`A170866(n)-A170861(n)`
-/

namespace A170856.P10295302077716675502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170866 n - A170861 n

end

end A170856.P10295302077716675502

/-! ## A170856.P1772603206639045536

`A170871(n)-A170866(n)`
-/

namespace A170856.P1772603206639045536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170871 n - A170866 n

end

end A170856.P1772603206639045536

/-! ## A170856.P9335943908367471164

`(A170871(n)-A170861(n))/2`
-/

namespace A170856.P9335943908367471164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170871 n - A170861 n : ℚ) / 2

end

end A170856.P9335943908367471164

/-! ## A170856.P6792458320053636173

`A014682(A170871(n)-A170861(n))`
-/

namespace A170856.P6792458320053636173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170871 n - A170861 n).toNat

end

end A170856.P6792458320053636173

/-! ## A170856.P14942470462977357832

`A001281(A170871(n)-A170861(n))`
-/

namespace A170856.P14942470462977357832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A170871 n - A170861 n).toNat

end

end A170856.P14942470462977357832

/-! ## A170856.P9039225544111000043

`A004525(A170871(n)-A170861(n))`
-/

namespace A170856.P9039225544111000043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170871 n - A170861 n).toNat

end

end A170856.P9039225544111000043

/-! ## A170856.P17689864597590941831

`A004526(A170871(n)-A170861(n))`
-/

namespace A170856.P17689864597590941831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170871 n - A170861 n).toNat

end

end A170856.P17689864597590941831

/-! ## A170856.P5232919590340948972

`A025480(A170871(n)-A170861(n))`
-/

namespace A170856.P5232919590340948972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170871 n - A170861 n).toNat

end

end A170856.P5232919590340948972

/-! ## A170856.P16556203913178546643

`A026741(A170871(n)-A170861(n))`
-/

namespace A170856.P16556203913178546643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A170871 n - A170861 n).toNat

end

end A170856.P16556203913178546643

/-! ## A170856.P15941509545030670384

`A110654(A170871(n)-A170861(n))`
-/

namespace A170856.P15941509545030670384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A170871 n - A170861 n).toNat

end

end A170856.P15941509545030670384

/-!
# A170857: a(0) = 0, a(1) = 1; a(2^i + j) = 3a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170857, there is no canonical definition to state claims against.
-/

/-! ## A170857.P10145710011641036996

`A170867(n)-A170862(n)`
-/

namespace A170857.P10145710011641036996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170867 n - A170862 n

end

end A170857.P10145710011641036996

/-! ## A170857.P4734995552965994584

`A170872(n)-A170867(n)`
-/

namespace A170857.P4734995552965994584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170872 n - A170867 n

end

end A170857.P4734995552965994584

/-! ## A170857.P11167752712729428204

`(A170872(n)-A170862(n))/2`
-/

namespace A170857.P11167752712729428204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170872 n - A170862 n : ℚ) / 2

end

end A170857.P11167752712729428204

/-! ## A170857.P11501554869138340609

`A014682(A170872(n)-A170862(n))`
-/

namespace A170857.P11501554869138340609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170872 n - A170862 n).toNat

end

end A170857.P11501554869138340609

/-! ## A170857.P4966302021712744005

`A001281(A170872(n)-A170862(n))`
-/

namespace A170857.P4966302021712744005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A170872 n - A170862 n).toNat

end

end A170857.P4966302021712744005

/-! ## A170857.P1320658003854242602

`A004525(A170872(n)-A170862(n))`
-/

namespace A170857.P1320658003854242602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170872 n - A170862 n).toNat

end

end A170857.P1320658003854242602

/-! ## A170857.P15602254521164567946

`A004526(A170872(n)-A170862(n))`
-/

namespace A170857.P15602254521164567946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170872 n - A170862 n).toNat

end

end A170857.P15602254521164567946

/-! ## A170857.P1306140250721232243

`A025480(A170872(n)-A170862(n))`
-/

namespace A170857.P1306140250721232243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170872 n - A170862 n).toNat

end

end A170857.P1306140250721232243

/-! ## A170857.P17588482950846801970

`abs(A001057(A170872(n)-A170862(n)))`
-/

namespace A170857.P17588482950846801970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A170872 n - A170862 n).toNat|

end

end A170857.P17588482950846801970

/-! ## A170857.P3612258180801276531

`A008619(A170872(n)-A170862(n))-1`
-/

namespace A170857.P3612258180801276531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A170872 n - A170862 n).toNat - 1

end

end A170857.P3612258180801276531

/-!
# A170858: a(0) = 1, a(1) = 0; a(2^i + j) = 3a(j) + a(j + 1) for 0 <= j < 2^i.

The programs for A170858, there is no canonical definition to state claims against.
-/

/-! ## A170858.P15461785858837754748

`A170863(n)-A162956(n)`
-/

namespace A170858.P15461785858837754748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170863 n - A162956 n

end

end A170858.P15461785858837754748

/-! ## A170858.P11738979486296436768

`A170868(n)-2*A162956(n)`
-/

namespace A170858.P11738979486296436768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170868 n - 2 * A162956 n

end

end A170858.P11738979486296436768

/-! ## A170858.P3334872634129373592

`2*A170863(n)-A170868(n)`
-/

namespace A170858.P3334872634129373592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170863 n - A170868 n

end

end A170858.P3334872634129373592

/-! ## A170858.P8013888623941131448

`A170868(n)-A005843(A162956(n))`
-/

namespace A170858.P8013888623941131448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170868 n - A005843 (A162956 n).toNat

end

end A170858.P8013888623941131448

/-! ## A170858.P1762101503117360999

`A004277(A170863(n))-A170868(n)`
-/

namespace A170858.P1762101503117360999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170863 n).toNat - A170868 n

end

end A170858.P1762101503117360999

/-!
# A170859: a(0) = 1, a(1) = 0; a(2^i + j) = 3a(j) + 2a(j + 1) for 0 <= j < 2^i.

The programs for A170859, there is no canonical definition to state claims against.
-/

/-! ## A170859.P18327895246209020143

`xor(1, A170854(n))`
-/

namespace A170859.P18327895246209020143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A170854 n)

end

end A170859.P18327895246209020143

/-! ## A170859.P11271226967901379619

`A170854(n)+A033999(n)`
-/

namespace A170859.P11271226967901379619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170854 n + A033999 n

end

end A170859.P11271226967901379619

/-! ## A170859.P14087463422553703142

`A170864(n)-A170854(n)`
-/

namespace A170859.P14087463422553703142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170864 n - A170854 n

end

end A170859.P14087463422553703142

/-! ## A170859.P16078396458506066298

`A170854(n)+A009001(2*n)`
-/

namespace A170859.P16078396458506066298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170854 n + A009001 (2 * n)

end

end A170859.P16078396458506066298

/-! ## A170859.P14024107452170102040

`A170869(n)-2*A170854(n)`
-/

namespace A170859.P14024107452170102040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170869 n - 2 * A170854 n

end

end A170859.P14024107452170102040

/-! ## A170859.P2153076968656899185

`2*A170864(n)-A170869(n)`
-/

namespace A170859.P2153076968656899185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170864 n - A170869 n

end

end A170859.P2153076968656899185

/-! ## A170859.P1247728561215837336

`A004442(n)+A170854(n)-n`
-/

namespace A170859.P1247728561215837336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + (A170854 n - (n : ℤ))

end

end A170859.P1247728561215837336

/-! ## A170859.P17553637369018244945

`A170854(n)+(-1)^A000290(n)`
-/

namespace A170859.P17553637369018244945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170854 n : ℚ) + (-1 : ℚ) ^ (A000290 n : ℤ)

end

end A170859.P17553637369018244945

/-! ## A170859.P15228584991056143735

`A170854(n)-A008683(gcd(n, n+2))`
-/

namespace A170859.P15228584991056143735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170854 n - A008683 (Nat.gcd n (n + 2))

end

end A170859.P15228584991056143735

/-! ## A170859.P10019935594269905525

`A004442(A170854(n))`
-/

namespace A170859.P10019935594269905525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A170854 n).toNat

end

end A170859.P10019935594269905525

/-! ## A170859.P1964053083889367222

`A008611(A170869(n)-1)`
-/

namespace A170859.P1964053083889367222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A170869 n - 1).toNat

end

end A170859.P1964053083889367222

/-!
# A170860: a(0) = 1, a(1) = 0; a(2^i + j) = a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170860, there is no canonical definition to state claims against.
-/

/-! ## A170860.P1406320893596499631

`A170865(n)-A170855(n)`
-/

namespace A170860.P1406320893596499631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170865 n - A170855 n

end

end A170860.P1406320893596499631

/-! ## A170860.P1531072496096063607

`A170870(n)-2*A170855(n)`
-/

namespace A170860.P1531072496096063607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170870 n - 2 * A170855 n

end

end A170860.P1531072496096063607

/-! ## A170860.P578804636979780049

`2*A170865(n)-A170870(n)`
-/

namespace A170860.P578804636979780049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170865 n - A170870 n

end

end A170860.P578804636979780049

/-! ## A170860.P10431218132809361215

`(1-char[1])*A170845(abs(2-n))`
-/

namespace A170860.P10431218132809361215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A170845 |2 - (n : ℤ)|.toNat

end

end A170860.P10431218132809361215

/-! ## A170860.P5621348259584489648

`A170845(abs(n-(char[1]+2)))-char[1]`
-/

namespace A170860.P5621348259584489648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170845 |(n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0) + 2 : ℕ) : ℤ)|.toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A170860.P5621348259584489648

/-! ## A170860.P17189602295440358514

`A170845(abs(2-n))%(A006261(n)+1)`
-/

namespace A170860.P17189602295440358514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170845 |2 - (n : ℤ)|.toNat) (A006261 n + 1)

end

end A170860.P17189602295440358514

/-! ## A170860.P18156334345739513105

`abs(A134323(n+1)*A170845(abs(2-n)))`
-/

namespace A170860.P18156334345739513105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A134323 (n + 1) * A170845 |2 - (n : ℤ)|.toNat)|

end

end A170860.P18156334345739513105

/-! ## A170860.P7738195892464201488

`A170845(abs(2-n))*A267635(2*A138636(n+1))`
-/

namespace A170860.P7738195892464201488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170845 |2 - (n : ℤ)|.toNat * A267635 (2 * A138636 (n + 1)).toNat

end

end A170860.P7738195892464201488

/-!
# A170861: a(0) = 1, a(1) = 0; a(2^i + j) = 2a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170861, there is no canonical definition to state claims against.
-/

/-! ## A170861.P3774725039488449799

`A170866(n)-A170856(n)`
-/

namespace A170861.P3774725039488449799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170866 n - A170856 n

end

end A170861.P3774725039488449799

/-! ## A170861.P12896278570116644471

`A170871(n)-2*A170856(n)`
-/

namespace A170861.P12896278570116644471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170871 n - 2 * A170856 n

end

end A170861.P12896278570116644471

/-! ## A170861.P3653493121695820757

`2*A170866(n)-A170871(n)`
-/

namespace A170861.P3653493121695820757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170866 n - A170871 n

end

end A170861.P3653493121695820757

/-! ## A170861.P14168735486422041332

`A170866(n)+A057428(n)*A170856(n)`
-/

namespace A170861.P14168735486422041332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170866 n + A057428 n * A170856 n

end

end A170861.P14168735486422041332

/-! ## A170861.P10500635794772890973

`A170866(n)%(A170856(n)+A000038(n))`
-/

namespace A170861.P10500635794772890973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170866 n) (A170856 n + A000038 n)

end

end A170861.P10500635794772890973

/-! ## A170861.P13463704720802225033

`A170871(n)-A005843(A170856(n))`
-/

namespace A170861.P13463704720802225033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170871 n - A005843 (A170856 n).toNat

end

end A170861.P13463704720802225033

/-! ## A170861.P15847267822672811913

`A170866(n)+A001478(A170856(n)+1)+1`
-/

namespace A170861.P15847267822672811913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170866 n + (A001478 (A170856 n + 1).toNat + 1)

end

end A170861.P15847267822672811913

/-! ## A170861.P13951341002630216035

`A004277(A170866(n))-A170871(n)`
-/

namespace A170861.P13951341002630216035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170866 n).toNat - A170871 n

end

end A170861.P13951341002630216035

/-!
# A170862: a(0) = 1, a(1) = 0; a(2^i + j) = 3a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170862, there is no canonical definition to state claims against.
-/

/-! ## A170862.P14513448348815354039

`A170867(n)-A170857(n)`
-/

namespace A170862.P14513448348815354039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170867 n - A170857 n

end

end A170862.P14513448348815354039

/-! ## A170862.P15310356652743652527

`A170872(n)-2*A170857(n)`
-/

namespace A170862.P15310356652743652527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170872 n - 2 * A170857 n

end

end A170862.P15310356652743652527

/-! ## A170862.P7428688559471299264

`2*A170867(n)-A170872(n)`
-/

namespace A170862.P7428688559471299264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170867 n - A170872 n

end

end A170862.P7428688559471299264

/-! ## A170862.P17648412201643506069

`A170867(n)+A170857(n)/A064179(A000028(n+1))`
-/

namespace A170862.P17648412201643506069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170867 n : ℚ) + (A170857 n : ℚ) / (A064179 (A000028 (n + 1)).toNat : ℚ)

end

end A170862.P17648412201643506069

/-! ## A170862.P17513380992825663821

`A170872(n)-A005843(A170857(n))`
-/

namespace A170862.P17513380992825663821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170872 n - A005843 (A170857 n).toNat

end

end A170862.P17513380992825663821

/-! ## A170862.P8652018103700501316

`A170867(n)+A001489(A170857(n)+1)+1`
-/

namespace A170862.P8652018103700501316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170867 n + (A001489 (A170857 n + 1).toNat + 1)

end

end A170862.P8652018103700501316

/-! ## A170862.P14255061663342564653

`A004277(A170867(n))-A170872(n)`
-/

namespace A170862.P14255061663342564653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170867 n).toNat - A170872 n

end

end A170862.P14255061663342564653

/-!
# A170863: a(0) = 1, a(1) = 1; a(2^i + j) = 3a(j) + a(j + 1) for 0 <= j < 2^i.

The programs for A170863, there is no canonical definition to state claims against.
-/

/-! ## A170863.P7096718207780792809

`A170858(n)+A162956(n)`
-/

namespace A170863.P7096718207780792809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170858 n + A162956 n

end

end A170863.P7096718207780792809

/-! ## A170863.P16078657724402820674

`A170868(n)-A162956(n)`
-/

namespace A170863.P16078657724402820674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170868 n - A162956 n

end

end A170863.P16078657724402820674

/-! ## A170863.P1236367841826579260

`(A170868(n)+A170858(n))/2`
-/

namespace A170863.P1236367841826579260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170868 n + A170858 n : ℚ) / 2

end

end A170863.P1236367841826579260

/-! ## A170863.P14741717481802237900

`A014682(A170868(n)+A170858(n))`
-/

namespace A170863.P14741717481802237900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170868 n + A170858 n).toNat

end

end A170863.P14741717481802237900

/-! ## A170863.P9836813981929996180

`A001281(A170868(n)+A170858(n))`
-/

namespace A170863.P9836813981929996180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A170868 n + A170858 n).toNat

end

end A170863.P9836813981929996180

/-! ## A170863.P14336805180844936385

`A004525(A170868(n)+A170858(n))`
-/

namespace A170863.P14336805180844936385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170868 n + A170858 n).toNat

end

end A170863.P14336805180844936385

/-! ## A170863.P9339425176137008434

`A004526(A170868(n)+A170858(n))`
-/

namespace A170863.P9339425176137008434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170868 n + A170858 n).toNat

end

end A170863.P9339425176137008434

/-! ## A170863.P5677932290790377830

`A025480(A170868(n)+A170858(n))`
-/

namespace A170863.P5677932290790377830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170868 n + A170858 n).toNat

end

end A170863.P5677932290790377830

/-! ## A170863.P7351720592605152817

`A008619(A170858(n)+A170868(n)-1)`
-/

namespace A170863.P7351720592605152817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A170858 n + (A170868 n - 1)).toNat

end

end A170863.P7351720592605152817

/-! ## A170863.P8045331030600838633

`A008619(A170858(n)-(1-A170868(n)))`
-/

namespace A170863.P8045331030600838633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A170858 n - (1 - A170868 n)).toNat

end

end A170863.P8045331030600838633

/-!
# A170864: a(0) = 1, a(1) = 1; a(2^i + j) = 3a(j) + 2a(j + 1) for 0 <= j < 2^i.

The programs for A170864, there is no canonical definition to state claims against.
-/

/-! ## A170864.P11726848134485508917

`2*or(1, A170854(n))-1`
-/

namespace A170864.P11726848134485508917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A170854 n) - 1

end

end A170864.P11726848134485508917

/-! ## A170864.P3767466411250757853

`2*or(1, A170859(n))-1`
-/

namespace A170864.P3767466411250757853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A170859 n) - 1

end

end A170864.P3767466411250757853

/-! ## A170864.P5629293851434521855

`A170859(n)+A170854(n)`
-/

namespace A170864.P5629293851434521855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170859 n + A170854 n

end

end A170864.P5629293851434521855

/-! ## A170864.P3358581092171905859

`A170869(n)-A170854(n)`
-/

namespace A170864.P3358581092171905859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170869 n - A170854 n

end

end A170864.P3358581092171905859

/-! ## A170864.P1301477765829767479

`A033999(n)+2*A170854(n)`
-/

namespace A170864.P1301477765829767479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A170854 n

end

end A170864.P1301477765829767479

/-! ## A170864.P17979610870807947588

`2*A170859(n)-A033999(n)`
-/

namespace A170864.P17979610870807947588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170859 n - A033999 n

end

end A170864.P17979610870807947588

/-! ## A170864.P11982458302030457064

`A249916(A170854(n))`
-/

namespace A170864.P11982458302030457064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (A170854 n).toNat

end

end A170864.P11982458302030457064

/-! ## A170864.P9032346826444455355

`A004273(or(1, A170854(n)))`
-/

namespace A170864.P9032346826444455355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor 1 (A170854 n)).toNat

end

end A170864.P9032346826444455355

/-! ## A170864.P310569955510428776

`A004273(or(1, A170859(n)))`
-/

namespace A170864.P310569955510428776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor 1 (A170859 n)).toNat

end

end A170864.P310569955510428776

/-! ## A170864.P9417737764427333642

`A042948(or(1, A170854(n)))`
-/

namespace A170864.P9417737764427333642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (Int.lor 1 (A170854 n)).toNat

end

end A170864.P9417737764427333642

/-! ## A170864.P13154282773994376318

`A004277(or(1, A170859(n)))-1`
-/

namespace A170864.P13154282773994376318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lor 1 (A170859 n)).toNat - 1

end

end A170864.P13154282773994376318

/-! ## A170864.P3266993957805167681

`A004396(A170869(n))`
-/

namespace A170864.P3266993957805167681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A170869 n).toNat

end

end A170864.P3266993957805167681

/-!
# A170865: a(0) = 1, a(1) = 1; a(2^i + j) = a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170865, there is no canonical definition to state claims against.
-/

/-! ## A170865.P5819424898000172347

`A170860(n)+A170855(n)`
-/

namespace A170865.P5819424898000172347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170860 n + A170855 n

end

end A170865.P5819424898000172347

/-! ## A170865.P3584686476927713169

`A170870(n)-A170855(n)`
-/

namespace A170865.P3584686476927713169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170870 n - A170855 n

end

end A170865.P3584686476927713169

/-! ## A170865.P9688750532309725692

`(A170870(n)+A170860(n))/2`
-/

namespace A170865.P9688750532309725692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170870 n + A170860 n : ℚ) / 2

end

end A170865.P9688750532309725692

/-! ## A170865.P3908197612332495583

`A014682(A170870(n)+A170860(n))`
-/

namespace A170865.P3908197612332495583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170870 n + A170860 n).toNat

end

end A170865.P3908197612332495583

/-! ## A170865.P15815372782483969651

`A004525(A170870(n)+A170860(n))`
-/

namespace A170865.P15815372782483969651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170870 n + A170860 n).toNat

end

end A170865.P15815372782483969651

/-! ## A170865.P13205976600837742336

`A004526(A170870(n)+A170860(n))`
-/

namespace A170865.P13205976600837742336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170870 n + A170860 n).toNat

end

end A170865.P13205976600837742336

/-! ## A170865.P4108089652730461285

`A025480(A170870(n)+A170860(n))`
-/

namespace A170865.P4108089652730461285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170870 n + A170860 n).toNat

end

end A170865.P4108089652730461285

/-! ## A170865.P13053545882288286732

`A029578(A170870(n)+A170860(n))`
-/

namespace A170865.P13053545882288286732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A170870 n + A170860 n).toNat

end

end A170865.P13053545882288286732

/-! ## A170865.P13296615329405210586

`A170855(n)+(1-char[1])*A170845(abs(2-n))`
-/

namespace A170865.P13296615329405210586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170855 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A170845 |2 - (n : ℤ)|.toNat

end

end A170865.P13296615329405210586

/-!
# A170866: a(0) = 1, a(1) = 1; a(2^i + j) = 2a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170866, there is no canonical definition to state claims against.
-/

/-! ## A170866.P1137220561342384200

`A170861(n)+A170856(n)`
-/

namespace A170866.P1137220561342384200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170861 n + A170856 n

end

end A170866.P1137220561342384200

/-! ## A170866.P7803439447579835485

`A170871(n)-A170856(n)`
-/

namespace A170866.P7803439447579835485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170871 n - A170856 n

end

end A170866.P7803439447579835485

/-! ## A170866.P7739518438727082073

`(A170871(n)+A170861(n))/2`
-/

namespace A170866.P7739518438727082073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170871 n + A170861 n : ℚ) / 2

end

end A170866.P7739518438727082073

/-! ## A170866.P16781132795305461667

`A000265(A170871(n)+A170861(n))`
-/

namespace A170866.P16781132795305461667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A170871 n + A170861 n).toNat

end

end A170866.P16781132795305461667

/-! ## A170866.P12866442620793601441

`A014682(A170871(n)+A170861(n))`
-/

namespace A170866.P12866442620793601441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170871 n + A170861 n).toNat

end

end A170866.P12866442620793601441

/-! ## A170866.P6982160145455151191

`A001281(A170871(n)+A170861(n))`
-/

namespace A170866.P6982160145455151191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A170871 n + A170861 n).toNat

end

end A170866.P6982160145455151191

/-! ## A170866.P4006657779222580459

`A004525(A170871(n)+A170861(n))`
-/

namespace A170866.P4006657779222580459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170871 n + A170861 n).toNat

end

end A170866.P4006657779222580459

/-! ## A170866.P13605756466122896182

`A004526(A170871(n)+A170861(n))`
-/

namespace A170866.P13605756466122896182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170871 n + A170861 n).toNat

end

end A170866.P13605756466122896182

/-! ## A170866.P6932065619406720931

`A025480(A170871(n)+A170861(n))`
-/

namespace A170866.P6932065619406720931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170871 n + A170861 n).toNat

end

end A170866.P6932065619406720931

/-! ## A170866.P16071296257064558280

`A026741(A170871(n)+A170861(n))`
-/

namespace A170866.P16071296257064558280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A170871 n + A170861 n).toNat

end

end A170866.P16071296257064558280

/-!
# A170867: a(0) = 1, a(1) = 1; a(2^i + j) = 3a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170867, there is no canonical definition to state claims against.
-/

/-! ## A170867.P10599945922186809803

`A170862(n)+A170857(n)`
-/

namespace A170867.P10599945922186809803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170862 n + A170857 n

end

end A170867.P10599945922186809803

/-! ## A170867.P16028755057413611345

`A170872(n)-A170857(n)`
-/

namespace A170867.P16028755057413611345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170872 n - A170857 n

end

end A170867.P16028755057413611345

/-! ## A170867.P2329272832227507708

`(A170872(n)+A170862(n))/2`
-/

namespace A170867.P2329272832227507708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170872 n + A170862 n : ℚ) / 2

end

end A170867.P2329272832227507708

/-! ## A170867.P456692855109553295

`A014682(A170872(n)+A170862(n))`
-/

namespace A170867.P456692855109553295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A170872 n + A170862 n).toNat

end

end A170867.P456692855109553295

/-! ## A170867.P9229426738438405436

`A001281(A170872(n)+A170862(n))`
-/

namespace A170867.P9229426738438405436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A170872 n + A170862 n).toNat

end

end A170867.P9229426738438405436

/-! ## A170867.P5430278749719173367

`A004525(A170872(n)+A170862(n))`
-/

namespace A170867.P5430278749719173367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A170872 n + A170862 n).toNat

end

end A170867.P5430278749719173367

/-! ## A170867.P12349675548277803486

`A004526(A170872(n)+A170862(n))`
-/

namespace A170867.P12349675548277803486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A170872 n + A170862 n).toNat

end

end A170867.P12349675548277803486

/-! ## A170867.P7291506653692661643

`A025480(A170872(n)+A170862(n))`
-/

namespace A170867.P7291506653692661643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A170872 n + A170862 n).toNat

end

end A170867.P7291506653692661643

/-! ## A170867.P2981173632898091182

`abs(A001057(A170872(n)+A170862(n)))`
-/

namespace A170867.P2981173632898091182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A170872 n + A170862 n).toNat|

end

end A170867.P2981173632898091182

/-! ## A170867.P14769186460515084457

`A001057(A170862(n)+A170872(n)-1)`
-/

namespace A170867.P14769186460515084457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A170862 n + (A170872 n - 1)).toNat

end

end A170867.P14769186460515084457

/-!
# A170868: a(0) = 1, a(1) = 2; a(2^i + j) = 3a(j) + a(j + 1) for 0 <= j < 2^i.

The programs for A170868, there is no canonical definition to state claims against.
-/

/-! ## A170868.P3827610830061380028

`A170863(n)+A162956(n)`
-/

namespace A170868.P3827610830061380028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170863 n + A162956 n

end

end A170868.P3827610830061380028

/-! ## A170868.P1956978271695315165

`A170858(n)+2*A162956(n)`
-/

namespace A170868.P1956978271695315165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170858 n + 2 * A162956 n

end

end A170868.P1956978271695315165

/-! ## A170868.P13119475850877599895

`2*A170863(n)-A170858(n)`
-/

namespace A170868.P13119475850877599895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170863 n - A170858 n

end

end A170868.P13119475850877599895

/-! ## A170868.P14279725057641789673

`A170858(n)+A005843(A162956(n))`
-/

namespace A170868.P14279725057641789673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170858 n + A005843 (A162956 n).toNat

end

end A170868.P14279725057641789673

/-! ## A170868.P843748223833698285

`A004277(A170863(n))-A170858(n)`
-/

namespace A170868.P843748223833698285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170863 n).toNat - A170858 n

end

end A170868.P843748223833698285

/-!
# A170869: a(0) = 1, a(1) = 2; a(2^i + j) = 3a(j) + 2a(j + 1) for 0 <= j < 2^i.

The programs for A170869, there is no canonical definition to state claims against.
-/

/-! ## A170869.P7797217373698358208

`xor(1, 3*A170854(n))`
-/

namespace A170869.P7797217373698358208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * A170854 n)

end

end A170869.P7797217373698358208

/-! ## A170869.P2032625995100638976

`A170864(n)+A170854(n)`
-/

namespace A170869.P2032625995100638976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170864 n + A170854 n

end

end A170869.P2032625995100638976

/-! ## A170869.P18363808371639195567

`A170859(n)+2*A170854(n)`
-/

namespace A170869.P18363808371639195567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170859 n + 2 * A170854 n

end

end A170869.P18363808371639195567

/-! ## A170869.P5200819258562365144

`2*A170864(n)-A170859(n)`
-/

namespace A170869.P5200819258562365144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170864 n - A170859 n

end

end A170869.P5200819258562365144

/-! ## A170869.P12244476447986288989

`A008683(Δ[or(1, n)]+1)+3*A170854(n)`
-/

namespace A170869.P12244476447986288989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 3 * A170854 n

end

end A170869.P12244476447986288989

/-! ## A170869.P8219598953437260513

`A004442(3*A170854(n))`
-/

namespace A170869.P8219598953437260513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (3 * A170854 n).toNat

end

end A170869.P8219598953437260513

/-! ## A170869.P9531905789151650374

`A004442(lcm(3, A170854(n)))`
-/

namespace A170869.P9531905789151650374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.lcm 3 (A170854 n))

end

end A170869.P9531905789151650374

/-!
# A170870: a(0) = 1, a(1) = 2; a(2^i + j) = a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170870, there is no canonical definition to state claims against.
-/

/-! ## A170870.P12987863669004746402

`A170865(n)+A170855(n)`
-/

namespace A170870.P12987863669004746402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170865 n + A170855 n

end

end A170870.P12987863669004746402

/-! ## A170870.P15347408488679241902

`A170860(n)+2*A170855(n)`
-/

namespace A170870.P15347408488679241902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170860 n + 2 * A170855 n

end

end A170870.P15347408488679241902

/-! ## A170870.P379396610360818867

`2*A170865(n)-A170860(n)`
-/

namespace A170870.P379396610360818867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170865 n - A170860 n

end

end A170870.P379396610360818867

/-! ## A170870.P2904259407959789956

`A170860(n)+A005843(A170855(n))`
-/

namespace A170870.P2904259407959789956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170860 n + A005843 (A170855 n).toNat

end

end A170870.P2904259407959789956

/-! ## A170870.P4572228670888937308

`A004277(A170865(n))-A170860(n)`
-/

namespace A170870.P4572228670888937308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170865 n).toNat - A170860 n

end

end A170870.P4572228670888937308

/-!
# A170871: a(0) = 1, a(1) = 2; a(2^i + j) = 2a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170871, there is no canonical definition to state claims against.
-/

/-! ## A170871.P7727648441715710172

`A170866(n)+A170856(n)`
-/

namespace A170871.P7727648441715710172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170866 n + A170856 n

end

end A170871.P7727648441715710172

/-! ## A170871.P6206144891333916881

`A170861(n)+2*A170856(n)`
-/

namespace A170871.P6206144891333916881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170861 n + 2 * A170856 n

end

end A170871.P6206144891333916881

/-! ## A170871.P2312374471636880993

`2*A170866(n)-A170861(n)`
-/

namespace A170871.P2312374471636880993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170866 n - A170861 n

end

end A170871.P2312374471636880993

/-! ## A170871.P14120597752764243811

`A170866(n)-A057428(n)*A170856(n)`
-/

namespace A170871.P14120597752764243811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170866 n - A057428 n * A170856 n

end

end A170871.P14120597752764243811

/-! ## A170871.P9673592652858056509

`A170861(n)+A005843(A170856(n))`
-/

namespace A170871.P9673592652858056509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170861 n + A005843 (A170856 n).toNat

end

end A170871.P9673592652858056509

/-! ## A170871.P17617799702685777159

`A004277(A170866(n))-A170861(n)`
-/

namespace A170871.P17617799702685777159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170866 n).toNat - A170861 n

end

end A170871.P17617799702685777159

/-!
# A170872: a(0) = 1, a(1) = 2; a(2^i + j) = 3a(j) + 3a(j + 1) for 0 <= j < 2^i.

The programs for A170872, there is no canonical definition to state claims against.
-/

/-! ## A170872.P692091544739476395

`A170867(n)+A170857(n)`
-/

namespace A170872.P692091544739476395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170867 n + A170857 n

end

end A170872.P692091544739476395

/-! ## A170872.P10176833786470448361

`A170862(n)+2*A170857(n)`
-/

namespace A170872.P10176833786470448361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170862 n + 2 * A170857 n

end

end A170872.P10176833786470448361

/-! ## A170872.P2026994192203935384

`2*A170867(n)-A170862(n)`
-/

namespace A170872.P2026994192203935384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170867 n - A170862 n

end

end A170872.P2026994192203935384

/-! ## A170872.P6736438526725469437

`A170862(n)+A005843(A170857(n))`
-/

namespace A170872.P6736438526725469437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170862 n + A005843 (A170857 n).toNat

end

end A170872.P6736438526725469437

/-! ## A170872.P9463555280482165338

`A004277(A170867(n))-A170862(n)`
-/

namespace A170872.P9463555280482165338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A170867 n).toNat - A170862 n

end

end A170872.P9463555280482165338

/-!
# A170873: Hexadecimal expansion of e.

The programs for A170873, there is no canonical definition to state claims against.
-/

/-! ## A170873.P6836266066062585969

`A027437(4*n)%16`
-/

namespace A170873.P6836266066062585969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027437 (4 * n)) 16

end

end A170873.P6836266066062585969

/-!
# A170875: First differences of A170876.

The programs for A170875, there is no canonical definition to state claims against.
-/

/-! ## A170875.P9892819956936785847

`Δ[A170876(log2(ceil(2^(n-1))))]`
-/

namespace A170875.P9892819956936785847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170876 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170875.P9892819956936785847

/-! ## A170875.P2633825281803088540

`abs(Δ[A170876(A289207(n+1))])`
-/

namespace A170875.P2633825281803088540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170876 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A170875.P2633825281803088540

/-! ## A170875.P1591343383935652528

`A170876(n)-A170876((2*n)%(n+1))`
-/

namespace A170875.P1591343383935652528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170876 n - A170876 (2 * n % (n + 1))

end

end A170875.P1591343383935652528

/-! ## A170875.P2777326943098380838

`A170876(n)-A170876(floor(n²/(n+1)))`
-/

namespace A170875.P2777326943098380838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170876 n - A170876 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A170875.P2777326943098380838

/-! ## A170875.P4756945737807168424

`Δ[A170876(A289207(n+1))]+A008683(4*(n+1))`
-/

namespace A170875.P4756945737807168424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170876 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (4 * (n + 1))

end

end A170875.P4756945737807168424

/-!
# A170876: Number of toothpicks after n stages of 3-D toothpick structure defined in Comments.

The programs for A170876, there is no canonical definition to state claims against.
-/

/-! ## A170876.P16763529051513277714

`∑[A170875(n)]`
-/

namespace A170876.P16763529051513277714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170876.P16763529051513277714

/-! ## A170876.P5506108269001916077

`A170837(lt[A296372(n+1), A047564(n+3)])`
-/

namespace A170876.P5506108269001916077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A170876.P5506108269001916077

/-! ## A170876.P17984543431899309487

`∑[A157226(C(n+8, 8))²]`
-/

namespace A170876.P17984543431899309487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157226 (Nat.choose (n + 8) 8) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170876.P17984543431899309487

/-!
# A170877: Number of binary words of length n with properties that there is no pair of adjacent 1's and no subword of the form X^4 for any string X.

The programs for A170877, there is no canonical definition to state claims against.
-/

/-! ## A170877.P13132828970964026208

`A003056(A126646(n))-A185224(n)`
-/

namespace A170877.P13132828970964026208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A126646 n).toNat - A185224 n

end

end A170877.P13132828970964026208

/-! ## A170877.P4291299787205502326

`A003056(A130752(n))-A326443(n)`
-/

namespace A170877.P4291299787205502326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A130752 n).toNat - A326443 n

end

end A170877.P4291299787205502326

/-! ## A170877.P8221532741939788916

`A003056(A151821(n+1))-A326446(n)`
-/

namespace A170877.P8221532741939788916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A151821 (n + 1)).toNat - A326446 n

end

end A170877.P8221532741939788916

/-! ## A170877.P11785135934607398117

`A002024(A347377(n+1)+A076971(n+1))`
-/

namespace A170877.P11785135934607398117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A347377 (n + 1) + A076971 (n + 1)).toNat

end

end A170877.P11785135934607398117

/-! ## A170877.P17621401118671669112

`A003056(A000079(n+1))-A326525(n+1)`
-/

namespace A170877.P17621401118671669112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000079 (n + 1)).toNat - A326525 (n + 1)

end

end A170877.P17621401118671669112

/-!
# A170878: First differences of A072272.

The programs for A170878, there is no canonical definition to state claims against.
-/

/-! ## A170878.P14003724052389652923

`Δ[A072272(n)]`
-/

namespace A170878.P14003724052389652923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170878.P14003724052389652923

/-! ## A170878.P6525931443704275931

`A072272(n+1)-A072272(n)`
-/

namespace A170878.P6525931443704275931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072272 (n + 1) - A072272 n

end

end A170878.P6525931443704275931

/-! ## A170878.P9786277012261621919

`A271806(2*n+1)+A271806(2*n)`
-/

namespace A170878.P9786277012261621919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271806 (2 * n + 1) + A271806 (2 * n)

end

end A170878.P9786277012261621919

/-! ## A170878.P6913004239653853093

`A271803(A109043(n+1))-A271803(2*n)`
-/

namespace A170878.P6913004239653853093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (A109043 (n + 1)).toNat - A271803 (2 * n)

end

end A170878.P6913004239653853093

/-! ## A170878.P17872507678841666339

`Δ[A271803(2*n)]`
-/

namespace A170878.P17872507678841666339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170878.P17872507678841666339

/-! ## A170878.P6444905246793878532

`A271803(2*(n+1))-A271803(2*n)`
-/

namespace A170878.P6444905246793878532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271803 (2 * (n + 1)) - A271803 (2 * n)

end

end A170878.P6444905246793878532

/-! ## A170878.P13443784405212669807

`Δ[A151885(Δ[n²])]`
-/

namespace A170878.P13443784405212669807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170878.P13443784405212669807

/-! ## A170878.P15160885909494063195

`A151888(2*(n+1))+A151888(2*n+3)`
-/

namespace A170878.P15160885909494063195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 (2 * (n + 1)) + A151888 (2 * n + 3)

end

end A170878.P15160885909494063195

/-! ## A170878.P8463913232117611782

`A151885(2*n+3)-A151885(2*n+1)`
-/

namespace A170878.P8463913232117611782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151885 (2 * n + 3) - A151885 (2 * n + 1)

end

end A170878.P8463913232117611782

/-! ## A170878.P4698844420698874025

`A247649(A048678(n+1))-A247649(A048678(n))`
-/

namespace A170878.P4698844420698874025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A048678 (n + 1)).toNat - A247649 (A048678 n).toNat

end

end A170878.P4698844420698874025

/-! ## A170878.P17684325245069416347

`A247649(A000695(n+1))-A247649(A000695(n))`
-/

namespace A170878.P17684325245069416347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A000695 (n + 1)).toNat - A247649 (A000695 n).toNat

end

end A170878.P17684325245069416347

/-! ## A170878.P5996017568700393773

`A247649(A124108(n+1))-A247649(A124108(n))`
-/

namespace A170878.P5996017568700393773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A124108 (n + 1)).toNat - A247649 (A124108 n).toNat

end

end A170878.P5996017568700393773

/-!
# A170879: Partial sums of A151747.

The programs for A170879, there is no canonical definition to state claims against.
-/

/-! ## A170879.P16650873139553097315

`∑[A151747(n)]`
-/

namespace A170879.P16650873139553097315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170879.P16650873139553097315

/-! ## A170879.P12077870327755431

`A143754(n+4)+A151747(n)+a(n-1)` with `a(0)=0`
-/

namespace A170879.P12077870327755431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A143754 (n + 4) + (A151747 n + a (n - 1))

end

end A170879.P12077870327755431

/-! ## A170879.P18080234098550060901

`∑[record[A304793(A026633(n))]]`
-/

namespace A170879.P18080234098550060901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A026633 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170879.P18080234098550060901

/-! ## A170879.P6467784939444904775

`∑[eq[A025865(n+2), A025925(n+1)]]`
-/

namespace A170879.P6467784939444904775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170879.P6467784939444904775

/-! ## A170879.P13485265824946566470

`∑[lt[A054899(3*n+4), A038566(n+1)]]`
-/

namespace A170879.P13485265824946566470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170879.P13485265824946566470

/-!
# A170880: Partial sums of A151728.

The programs for A170880, there is no canonical definition to state claims against.
-/

/-! ## A170880.P15894589895412251850

`A151728(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A170880.P15894589895412251850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151728 (n - 1) + a (n - 1)

end

end A170880.P15894589895412251850

/-! ## A170880.P17247924072351391532

`∑[A151728(n)]-A151728(n)`
-/

namespace A170880.P17247924072351391532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151728 n

end

end A170880.P17247924072351391532

/-! ## A170880.P8502201391738492792

`(∑[A151727(n)]-A151727(n))/4`
-/

namespace A170880.P8502201391738492792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151727 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A151727 n : ℤ) : ℚ) / 4

end

end A170880.P8502201391738492792

/-! ## A170880.P14226275191674449267

`∑[2*A151729(n)+1]-(2*A151729(n)+1)`
-/

namespace A170880.P14226275191674449267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151729 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * A151729 n + 1)

end

end A170880.P14226275191674449267

/-! ## A170880.P6537284357904056348

`∑[A151726(n+65)/4]-A151726(n+65)/4`
-/

namespace A170880.P6537284357904056348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151726 (n + 65) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A151726 (n + 65) : ℚ) / 4

end

end A170880.P6537284357904056348

/-! ## A170880.P8124493009596661074

`A110657(∑[A151727(n)]-A151727(n))`
-/

namespace A170880.P8124493009596661074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (∑ j ∈ Finset.range (n + 1), f1 j - A151727 n).toNat

end

end A170880.P8124493009596661074

/-! ## A170880.P5386015822136654241

`A160164(n+1)-A007494(A151548(n))`
-/

namespace A170880.P5386015822136654241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (n + 1) - A007494 (A151548 n).toNat

end

end A170880.P5386015822136654241

/-! ## A170880.P8985249773662355756

`-A246425(∑[A151727(n)]-A151727(n))`
-/

namespace A170880.P8985249773662355756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (∑ j ∈ Finset.range (n + 1), f1 j - A151727 n).toNat

end

end A170880.P8985249773662355756

/-! ## A170880.P10875156108300593606

`A025480(∑[A151727(n)]-A151727(n)+1)`
-/

namespace A170880.P10875156108300593606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ j ∈ Finset.range (n + 1), f1 j - A151727 n + 1).toNat

end

end A170880.P10875156108300593606

/-!
# A170881: a(0)=0; thereafter a(n) = (3*n+1)*2^(n-2)+1.

The programs for A170881, the canonical program `A170881.P2088150213583724677` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170881 has offset 0).

The definition of A170881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170881.P9447736917696089710

`ogf((x-2x^2+x^3+x^4)/(1-5x+8x^2-4x^3))`
-/

namespace A170881.P9447736917696089710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1, 1] [1, -5, 8, -4] n

end

end A170881.P9447736917696089710

namespace A170881

/-- `ogf((x-2x^2+x^3+x^4)/(1-5x+8x^2-4x^3))` -/
def P9447736917696089710.Spec : Prop :=
  ∀ n, P9447736917696089710.a n = A170881 n

end A170881

/-! ## A170881.P2088150213583724677

`5*a(n-1)-8*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8, a(4)=21`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170881

/-- `5*a(n-1)-8*a(n-2)+4*a(n-3)` -/
def P2088150213583724677.Spec : Prop :=
  ∀ n, P2088150213583724677.a n = A170881 n

theorem P2088150213583724677.correct : P2088150213583724677.Spec := by
  intro n
  simp only [A170881]

end A170881

/-! ## A170881.P3512157021578574735

`A084860(n)-A255047(n)`
-/

namespace A170881.P3512157021578574735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 n - A255047 n

end

end A170881.P3512157021578574735

namespace A170881

/-- `A084860(n)-A255047(n)` -/
def P3512157021578574735.Spec : Prop :=
  ∀ n, P3512157021578574735.a n = A170881 n

end A170881

/-! ## A170881.P4454553933034761040

`A098156(n)-A266550(n+1)`
-/

namespace A170881.P4454553933034761040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 n - A266550 (n + 1)

end

end A170881.P4454553933034761040

namespace A170881

/-- `A098156(n)-A266550(n+1)` -/
def P4454553933034761040.Spec : Prop :=
  ∀ n, P4454553933034761040.a n = A170881 n

end A170881

/-! ## A170881.P1049342023785048705

`∑[A098156(n)]-A098156(n)`
-/

namespace A170881.P1049342023785048705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098156 n

end

end A170881.P1049342023785048705

namespace A170881

/-- `∑[A098156(n)]-A098156(n)` -/
def P1049342023785048705.Spec : Prop :=
  ∀ n, P1049342023785048705.a n = A170881 n

end A170881

/-! ## A170881.P4399320706871330858

`A131056(n+1)-A109975(n)`
-/

namespace A170881.P4399320706871330858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131056 (n + 1) - A109975 n

end

end A170881.P4399320706871330858

namespace A170881

/-- `A131056(n+1)-A109975(n)` -/
def P4399320706871330858.Spec : Prop :=
  ∀ n, P4399320706871330858.a n = A170881 n

end A170881

/-! ## A170881.P13349329941624293686

`A229079(A055998(n))-A057428(n)`
-/

namespace A170881.P13349329941624293686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A055998 n).toNat - A057428 n

end

end A170881.P13349329941624293686

namespace A170881

/-- `A229079(A055998(n))-A057428(n)` -/
def P13349329941624293686.Spec : Prop :=
  ∀ n, P13349329941624293686.a n = A170881 n

end A170881

/-!
# A170882: First differences of "corner" sequence associated with A161644 and A161645.

The programs for A170882, there is no canonical definition to state claims against.
-/

/-! ## A170882.P5015429227143041829

`Δ[A170883(A004273(n)-n)]`
-/

namespace A170882.P5015429227143041829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P5015429227143041829

/-! ## A170882.P1677622319217087677

`Δ[A170883(n-A057427(n))]`
-/

namespace A170882.P1677622319217087677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P1677622319217087677

/-! ## A170882.P3832370377897504363

`Δ[A170883(A000007(n)-1+n)]`
-/

namespace A170882.P3832370377897504363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P3832370377897504363

/-! ## A170882.P8704343304423347662

`Δ[A170883(A004526(A004273(n)))]`
-/

namespace A170882.P8704343304423347662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P8704343304423347662

/-! ## A170882.P10501070995914291004

`Δ[A170883(A004526(A004275(n)))]`
-/

namespace A170882.P10501070995914291004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P10501070995914291004

/-! ## A170882.P15136964294681353710

`A170883(n)-A170883(A004273(n)-n)`
-/

namespace A170882.P15136964294681353710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 n - A170883 (A004273 n - (n : ℤ)).toNat

end

end A170882.P15136964294681353710

/-! ## A170882.P1496062839312370174

`A170883(n)-A170883(n-A057427(n))`
-/

namespace A170882.P1496062839312370174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 n - A170883 ((n : ℤ) - A057427 n).toNat

end

end A170882.P1496062839312370174

/-! ## A170882.P12205571750763318866

`Δ[A170883(A261216(A161680(n)))]`
-/

namespace A170882.P12205571750763318866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A261216 (A161680 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P12205571750763318866

/-! ## A170882.P3597642652781111248

`Δ[A170883(A014473(A000124(n)))]`
-/

namespace A170882.P3597642652781111248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A014473 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P3597642652781111248

/-! ## A170882.P15424833236164678789

`Δ[A170883(A002262(A055998(n)))]`
-/

namespace A170882.P15424833236164678789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P15424833236164678789

/-! ## A170882.P1039027476796980920

`A170883(n)-A170883(A259361(n²))`
-/

namespace A170882.P1039027476796980920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 n - A170883 (A259361 (n ^ 2)).toNat

end

end A170882.P1039027476796980920

/-! ## A170882.P4422510567658387101

`Δ[A170883(A259361(n²))]`
-/

namespace A170882.P4422510567658387101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170882.P4422510567658387101

/-!
# A170883: "Corner" sequence associated with A161644 and A161645.

The programs for A170883, there is no canonical definition to state claims against.
-/

/-! ## A170883.P3653889125831851345

`∑[A170882(n)]`
-/

namespace A170883.P3653889125831851345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170883.P3653889125831851345

/-! ## A170883.P13386703400868625620

`A049472(A170894(n)+A170888(n))`
-/

namespace A170883.P13386703400868625620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A170894 n + A170888 n).toNat

end

end A170883.P13386703400868625620

/-! ## A170883.P14934632531928279099

`A222254(n)+A158925(A090703(2*(n+1)))`
-/

namespace A170883.P14934632531928279099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n + A158925 (A090703 (2 * (n + 1))).toNat

end

end A170883.P14934632531928279099

/-!
# A170884: In the toothpick structure of A160160, the number of nodes occupied after n steps, assuming that the toothpicks have length 2.

The programs for A170884, there is no canonical definition to state claims against.
-/

/-! ## A170884.P1614692914809975572

`∑[A170885(n)]`
-/

namespace A170884.P1614692914809975572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170884.P1614692914809975572

/-! ## A170884.P13198087106753095252

`A160430(n)-2*A160160(n)`
-/

namespace A170884.P13198087106753095252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160430 n - 2 * A160160 n

end

end A170884.P13198087106753095252

/-! ## A170884.P10877692716674887468

`A160430(n)-∑[2*A160161(n)]`
-/

namespace A170884.P10877692716674887468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160430 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170884.P10877692716674887468

/-! ## A170884.P2122170938458031335

`or(2, A254667(a(n-1))+A170885(n))` with `a(0)=0`
-/

namespace A170884.P2122170938458031335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 2 (A254667 (a (n - 1)).toNat + A170885 n)

end

end A170884.P2122170938458031335

/-! ## A170884.P14499419886251665406

`A160430(n)-A005843(A160160(n))`
-/

namespace A170884.P14499419886251665406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160430 n - A005843 (A160160 n).toNat

end

end A170884.P14499419886251665406

/-!
# A170885: First differences of A170884.

The programs for A170885, there is no canonical definition to state claims against.
-/

/-! ## A170885.P17258231350815210624

`Δ[A170884(log2(ceil(2^(n-1))))]`
-/

namespace A170885.P17258231350815210624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170884 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170885.P17258231350815210624

/-! ## A170885.P9053048595603240035

`A000720(n+1)*A214636(A056391(n+1)+1)`
-/

namespace A170885.P9053048595603240035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A214636 (A056391 (n + 1) + 1).toNat

end

end A170885.P9053048595603240035

/-!
# A170886: Similar to A160406, but always staying outside the wedge, starting at stage 1 with a toothpick whose midpoint touches the vertex of the wedge.

The programs for A170886, there is no canonical definition to state claims against.
-/

/-! ## A170886.P11407425231347721827

`∑[A170887(n)]`
-/

namespace A170886.P11407425231347721827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170886.P11407425231347721827

/-! ## A170886.P4358947761647060471

`A170889(n)+A323646(n)-A160406(n)`
-/

namespace A170886.P4358947761647060471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 n + (A323646 n - A160406 n)

end

end A170886.P4358947761647060471

/-! ## A170886.P18402563014387785023

`∑{d}[A000079(n), A170887(log2(#))]`
-/

namespace A170886.P18402563014387785023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A170887 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A170886.P18402563014387785023

/-! ## A170886.P3336033969717144879

`∑[∑[A361166(A329559(n+1))]]`
-/

namespace A170886.P3336033969717144879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361166 (A329559 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170886.P3336033969717144879

/-! ## A170886.P6356099705597880622

`record[A161682(n+2)%A161660(n+1)]`
-/

namespace A170886.P6356099705597880622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161682 (n + 2)) (A161660 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170886.P6356099705597880622

/-!
# A170887: First differences of toothpick sequence A170886.

The programs for A170887, there is no canonical definition to state claims against.
-/

/-! ## A170887.P3977380099718964670

`Δ[A170886(A259361(n²))]`
-/

namespace A170887.P3977380099718964670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P3977380099718964670

/-! ## A170887.P10133577244743565224

`Δ[A170886(log2(A011782(n)))]`
-/

namespace A170887.P10133577244743565224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P10133577244743565224

/-! ## A170887.P16071441797001308873

`Δ[A170886(A289207(n+1))]`
-/

namespace A170887.P16071441797001308873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P16071441797001308873

/-! ## A170887.P3508204719155005190

`Δ[A170886(A028310(n)-1)]`
-/

namespace A170887.P3508204719155005190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P3508204719155005190

/-! ## A170887.P1920025585822754680

`Δ[A170886(A057428(n)+n)]`
-/

namespace A170887.P1920025585822754680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P1920025585822754680

/-! ## A170887.P188344300017953156

`Δ[A170886(A004273(n)-n)]`
-/

namespace A170887.P188344300017953156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P188344300017953156

/-! ## A170887.P4712550904011170557

`Δ[A170886(n-A057427(n))]`
-/

namespace A170887.P4712550904011170557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P4712550904011170557

/-! ## A170887.P18373482868465144874

`Δ[A170886(A289207(2*n)/2)]`
-/

namespace A170887.P18373482868465144874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P18373482868465144874

/-! ## A170887.P7021066439844819945

`Δ[A170886(A004524(A004273(n)))]`
-/

namespace A170887.P7021066439844819945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P7021066439844819945

/-! ## A170887.P9282413012322243514

`Δ[A170886(A004526(A004275(n)))]`
-/

namespace A170887.P9282413012322243514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170887.P9282413012322243514

/-!
# A170888: Similar to A160406, but always staying outside the wedge, starting at stage 0 with a vertical half-toothpick which protrudes from the vertex of the wedge.

The programs for A170888, there is no canonical definition to state claims against.
-/

/-! ## A170888.P17939506543340954711

`∑[A170889(n)]`
-/

namespace A170888.P17939506543340954711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170888.P17939506543340954711

/-! ## A170888.P16166869232345900312

`floor(A160406(n)+A139250(n)/2)`
-/

namespace A170888.P16166869232345900312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160406 n : ℚ) + (A139250 n : ℚ) / 2⌋

end

end A170888.P16166869232345900312

/-! ## A170888.P10397340956961698543

`A160406(n)+A004524(A139250(n))`
-/

namespace A170888.P10397340956961698543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n + A004524 (A139250 n).toNat

end

end A170888.P10397340956961698543

/-! ## A170888.P13935052775129261182

`A160406(n)+A002265(A160164(n))`
-/

namespace A170888.P13935052775129261182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n + A002265 (A160164 n).toNat

end

end A170888.P13935052775129261182

/-! ## A170888.P14527578516629813954

`A131508(A160740(n)+A160164(n))`
-/

namespace A170888.P14527578516629813954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A160740 n + A160164 n).toNat

end

end A170888.P14527578516629813954

/-! ## A170888.P9784721677530502937

`A160406(n)+A004524(∑[A139251(n)])`
-/

namespace A170888.P9784721677530502937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n + A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A170888.P9784721677530502937

/-! ## A170888.P16820485794931628958

`A160406(n)+A004526(∑[A139251(n)])`
-/

namespace A170888.P16820485794931628958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n + A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A170888.P16820485794931628958

/-! ## A170888.P4798534310658151372

`A139250(n)-∑[A004524(A151704(n))]`
-/

namespace A170888.P4798534310658151372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A151704 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170888.P4798534310658151372

/-! ## A170888.P12587531034229451107

`∑[A139251(n)-A004524(A151704(n))]`
-/

namespace A170888.P12587531034229451107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A004524 (A151704 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170888.P12587531034229451107

/-! ## A170888.P8353232367070229722

`A160406(n)+A004524(A266530(2*n+1))`
-/

namespace A170888.P8353232367070229722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n + A004524 (A266530 (2 * n + 1)).toNat

end

end A170888.P8353232367070229722

/-!
# A170889: First differences of toothpick sequence A170888.

The programs for A170889, there is no canonical definition to state claims against.
-/

/-! ## A170889.P4753653728038809278

`A028242(A151704(record[A038572(n)]))`
-/

namespace A170889.P4753653728038809278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A151704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A170889.P4753653728038809278

/-! ## A170889.P13140955394790966997

`A028242(A151704(record[A154441(n)]))`
-/

namespace A170889.P13140955394790966997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A151704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A170889.P13140955394790966997

/-! ## A170889.P16064642333370945165

`A139251(n)-A004524(A151704(n))`
-/

namespace A170889.P16064642333370945165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A004524 (A151704 n).toNat

end

end A170889.P16064642333370945165

/-! ## A170889.P6198616391623883407

`A139251(n)-A289207(Δ[A160406(n)])`
-/

namespace A170889.P6198616391623883407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A289207 (f1 (n + 1) - f1 n).toNat

end

end A170889.P6198616391623883407

/-! ## A170889.P10771941391918744534

`A139251(n)-A289207(A160407(n+1))`
-/

namespace A170889.P10771941391918744534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A289207 (A160407 (n + 1)).toNat

end

end A170889.P10771941391918744534

/-! ## A170889.P5049511164965172314

`A139251(n)-A004524(A151569(n)-2*A160552(n))`
-/

namespace A170889.P5049511164965172314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A004524 (A151569 n - 2 * A160552 n).toNat

end

end A170889.P5049511164965172314

/-! ## A170889.P4615097729738368083

`Δ[A170888(A259361(n²))]`
-/

namespace A170889.P4615097729738368083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170888 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170889.P4615097729738368083

/-! ## A170889.P16631789593473205368

`Δ[A170888(A004273(n)-n)]`
-/

namespace A170889.P16631789593473205368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170888 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170889.P16631789593473205368

/-! ## A170889.P7754510278753756120

`Δ[A170888(A000196(n²-n))]`
-/

namespace A170889.P7754510278753756120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170888 (A000196 (n ^ 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170889.P7754510278753756120

/-! ## A170889.P474843030336167425

`Δ[A170888(A004526(A004273(n)))]`
-/

namespace A170889.P474843030336167425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170888 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170889.P474843030336167425

/-!
# A170890: Toothpick sequence similar to A160406, but always staying outside the wedge, starting with a horizontal half-toothpick which protrudes from the vertex of the wedge.

The programs for A170890, there is no canonical definition to state claims against.
-/

/-! ## A170890.P9679476738722918972

`∑[A170891(n)]`
-/

namespace A170890.P9679476738722918972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170890.P9679476738722918972

/-! ## A170890.P1072776921779077627

`∑[∑[A031346(A038315(n))]]`
-/

namespace A170890.P1072776921779077627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A038315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170890.P1072776921779077627

/-! ## A170890.P100424915212165139

`∑[∑[A086251(A048854(n))]]`
-/

namespace A170890.P100424915212165139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A048854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170890.P100424915212165139

/-! ## A170890.P1056139617783658719

`∑[∑[A178691(A111418(n))]]`
-/

namespace A170890.P1056139617783658719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A111418 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170890.P1056139617783658719

/-! ## A170890.P9502529178129669661

`∑[∑[A299203(A135885(n))]]`
-/

namespace A170890.P9502529178129669661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (A135885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170890.P9502529178129669661

/-!
# A170891: First differences of the toothpick sequence A170890.

The programs for A170891, there is no canonical definition to state claims against.
-/

/-! ## A170891.P4272998507094386413

`Δ[A170890(A259361(n²))]`
-/

namespace A170891.P4272998507094386413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P4272998507094386413

/-! ## A170891.P16757227353786057060

`Δ[A170890(log2(A011782(n)))]`
-/

namespace A170891.P16757227353786057060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P16757227353786057060

/-! ## A170891.P190367828025459461

`Δ[A170890(A028310(n)-1)]`
-/

namespace A170891.P190367828025459461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P190367828025459461

/-! ## A170891.P5628792075608105778

`Δ[A170890(n-A057427(n))]`
-/

namespace A170891.P5628792075608105778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P5628792075608105778

/-! ## A170891.P16336755240408284119

`Δ[A170890(A140106(Δ[n²]))]`
-/

namespace A170891.P16336755240408284119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A140106 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P16336755240408284119

/-! ## A170891.P6329555197664764885

`Δ[A170890(A004526(A004275(n)))]`
-/

namespace A170891.P6329555197664764885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P6329555197664764885

/-! ## A170891.P9814604122686417672

`Δ[A170890(A087401(A000124(n)))]`
-/

namespace A170891.P9814604122686417672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A087401 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P9814604122686417672

/-! ## A170891.P2844118746189443327

`Δ[A170890(A079067(A008578(n+1)))]`
-/

namespace A170891.P2844118746189443327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (A079067 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170891.P2844118746189443327

/-! ## A170891.P6439669663039022329

`A170890(n)-A170890(A259361(n²))`
-/

namespace A170891.P6439669663039022329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 n - A170890 (A259361 (n ^ 2)).toNat

end

end A170891.P6439669663039022329

/-! ## A170891.P5162592686530044917

`A170890(n)-A170890(log2(A011782(n)))`
-/

namespace A170891.P5162592686530044917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 n - A170890 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A170891.P5162592686530044917

/-!
# A170892: Toothpick sequence similar to A160406, but always staying outside the wedge, starting at stage 1 with a vertical toothpick whose endpoint touches the vertex of the wedge.

The programs for A170892, there is no canonical definition to state claims against.
-/

/-! ## A170892.P11520148408328303677

`∑[A170893(n)]`
-/

namespace A170892.P11520148408328303677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170892.P11520148408328303677

/-! ## A170892.P4037575199354435859

`A160730(n)-A160406(n)`
-/

namespace A170892.P4037575199354435859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - A160406 n

end

end A170892.P4037575199354435859

/-! ## A170892.P16916404404602662257

`A245092(a(n-1))+A170893(n)` with `a(0)=0`
-/

namespace A170892.P16916404404602662257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A245092 (a (n - 1)).toNat + A170893 n

end

end A170892.P16916404404602662257

/-! ## A170892.P15075229878481514737

`∑[A323647(n+1)]-(A160406(n)+1)`
-/

namespace A170892.P15075229878481514737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A160406 n + 1)

end

end A170892.P15075229878481514737

/-! ## A170892.P5775216186670239554

`A160730(n)-A110657(A160740(n))`
-/

namespace A170892.P5775216186670239554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - A110657 (A160740 n).toNat

end

end A170892.P5775216186670239554

/-! ## A170892.P17748155876174894054

`A004442(∑[A323647(n+1)])-A160406(n)`
-/

namespace A170892.P17748155876174894054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A160406 n

end

end A170892.P17748155876174894054

/-! ## A170892.P17097639457586741821

`∑[A323647(n+1)-A160407(A028310(n))]`
-/

namespace A170892.P17097639457586741821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1) - A160407 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170892.P17097639457586741821

/-! ## A170892.P12212919995706514362

`A273724(∑[A323647(n+1)])-A160406(n)`
-/

namespace A170892.P12212919995706514362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A160406 n

end

end A170892.P12212919995706514362

/-! ## A170892.P11283883086435703493

`A263273(A263273(a(n-1)))+A170893(n)` with `a(0)=0`
-/

namespace A170892.P11283883086435703493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A263273 (A263273 (a (n - 1)).toNat).toNat + A170893 n

end

end A170892.P11283883086435703493

/-! ## A170892.P10756891841857881487

`A160730(n)-A002264(A160738(n))`
-/

namespace A170892.P10756891841857881487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n - A002264 (A160738 n).toNat

end

end A170892.P10756891841857881487

/-!
# A170893: First differences of the toothpick sequence A170892.

The programs for A170893, there is no canonical definition to state claims against.
-/

/-! ## A170893.P17584519121746051684

`Δ[A170892(A259361(n²))]`
-/

namespace A170893.P17584519121746051684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P17584519121746051684

/-! ## A170893.P10302941898405250683

`Δ[A170892(log2(A011782(n)))]`
-/

namespace A170893.P10302941898405250683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P10302941898405250683

/-! ## A170893.P2493414853319357627

`Δ[A170892(A289207(n+1))]`
-/

namespace A170893.P2493414853319357627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P2493414853319357627

/-! ## A170893.P12095839549359077609

`Δ[A170892(A028310(n)-1)]`
-/

namespace A170893.P12095839549359077609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P12095839549359077609

/-! ## A170893.P1448345571110755781

`Δ[A170892(A025581(C(n, 2)))]`
-/

namespace A170893.P1448345571110755781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A025581 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P1448345571110755781

/-! ## A170893.P8927341864605559473

`Δ[A170892(A004273(n)-n)]`
-/

namespace A170893.P8927341864605559473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P8927341864605559473

/-! ## A170893.P5801273247529821064

`Δ[A170892(n-A057427(n))]`
-/

namespace A170893.P5801273247529821064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P5801273247529821064

/-! ## A170893.P7782777756826326931

`Δ[A170892(n-A178334(n))]`
-/

namespace A170893.P7782777756826326931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 ((n : ℤ) - A178334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P7782777756826326931

/-! ## A170893.P2849269956942686681

`Δ[A170892(A289207(2*n)/2)]`
-/

namespace A170893.P2849269956942686681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P2849269956942686681

/-! ## A170893.P1027257915741426823

`Δ[A170892(A004526(A004273(n)))]`
-/

namespace A170893.P1027257915741426823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170892 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170893.P1027257915741426823

/-!
# A170894: Similar to A160406, always staying outside the wedge, but starting with a horizontal toothpick whose endpoint touches the vertex of the wedge.

The programs for A170894, there is no canonical definition to state claims against.
-/

/-! ## A170894.P10082086636994930591

`∑[A170895(n)]`
-/

namespace A170894.P10082086636994930591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170894.P10082086636994930591

/-! ## A170894.P6898309754551058046

`round((A187220(n)+lt[∏{p}[2*n, n-3+#], (n+1)²])/3)`
-/

namespace A170894.P6898309754551058046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 3 + (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A187220 n + (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℤ) : ℚ) / 3)

end

end A170894.P6898309754551058046

/-! ## A170894.P2126532182121111000

`A191925(∑[A319416(n)])`
-/

namespace A170894.P2126532182121111000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A170894.P2126532182121111000

/-! ## A170894.P9447986696525923232

`A168112(n)+A026814(n)`
-/

namespace A170894.P9447986696525923232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168112 n + A026814 n

end

end A170894.P9447986696525923232

/-! ## A170894.P12964335626229015428

`A168112(n)+A035564(n)`
-/

namespace A170894.P12964335626229015428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168112 n + A035564 n

end

end A170894.P12964335626229015428

/-!
# A170896: Number of ON cells after n generations of the Schrandt-Ulam cellular automaton on the square grid that is described in the Comments.

The programs for A170896, there is no canonical definition to state claims against.
-/

/-! ## A170896.P7490873176506362774

`∑[A170897(n)]`
-/

namespace A170896.P7490873176506362774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170896.P7490873176506362774

/-! ## A170896.P5730031083109785047

`∑{d}[A000079(n), A170897(log2(#))]`
-/

namespace A170896.P5730031083109785047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A170897 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A170896.P5730031083109785047

/-! ## A170896.P1756105259781022888

`∑{d}[A000918(n)+2, A170897(log2(#))]`
-/

namespace A170896.P1756105259781022888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A170897 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A170896.P1756105259781022888

/-! ## A170896.P478086961465441727

`A267190(A001222(2^n))+A000578(A308979(n))`
-/

namespace A170896.P478086961465441727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (A001222 (2 ^ n)).toNat + A000578 (A308979 n).toNat

end

end A170896.P478086961465441727

/-! ## A170896.P17280614704335492958

`A267190(A052409(2^n))+A008586(A308979(n))`
-/

namespace A170896.P17280614704335492958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267190 (A052409 (2 ^ n)).toNat + A008586 (A308979 n).toNat

end

end A170896.P17280614704335492958

/-!
# A170897: Number of new cells turned ON at generation n in cellular automaton described in A170896.

The programs for A170897, there is no canonical definition to state claims against.
-/

/-! ## A170897.P11173339813628027460

`Δ[A170896(comp[2*(n+1)]-n)]`
-/

namespace A170897.P11173339813628027460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170897.P11173339813628027460

/-! ## A170897.P13121117945957394321

`A170896(n)-A170896(A289207(n+1))`
-/

namespace A170897.P13121117945957394321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 n - A170896 (A289207 (n + 1)).toNat

end

end A170897.P13121117945957394321

/-! ## A170897.P9392367808706198329

`A170896(n)-A170896(n-A057427(n))`
-/

namespace A170897.P9392367808706198329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 n - A170896 ((n : ℤ) - A057427 n).toNat

end

end A170897.P9392367808706198329

/-! ## A170897.P14370181114229606256

`Δ[A170896(A289207(n+1))]*A158388(n)`
-/

namespace A170897.P14370181114229606256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A158388 n

end

end A170897.P14370181114229606256

/-! ## A170897.P8657535630581878259

`Δ[A170896(A289207(n+1))]%A008574(n)`
-/

namespace A170897.P8657535630581878259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A008574 n)

end

end A170897.P8657535630581878259

/-! ## A170897.P14731026736173068427

`A000007(n+1)+Δ[A170896(A289207(n+1))]`
-/

namespace A170897.P14731026736173068427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A170897.P14731026736173068427

/-! ## A170897.P2096569563855416640

`Δ[A170896(A289207(n+1))+A057427(n+1)]`
-/

namespace A170897.P2096569563855416640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 (A289207 (n + 1)).toNat + A057427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170897.P2096569563855416640

/-! ## A170897.P6607322901793479430

`Δ[A019429(2*n)*A170896(A289207(n+1))]`
-/

namespace A170897.P6607322901793479430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n) * A170896 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170897.P6607322901793479430

/-! ## A170897.P11715455086870234661

`Δ[A170896(A289207(n+1))+n*A000038(n)]`
-/

namespace A170897.P11715455086870234661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 (A289207 (n + 1)).toNat + (n : ℤ) * A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170897.P11715455086870234661

/-! ## A170897.P5759693375689292737

`A170896(n)-A170896(log2(A011782(n)))`
-/

namespace A170897.P5759693375689292737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170896 n - A170896 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A170897.P5759693375689292737

/-!
# A170898: Triangle read by rows, obtained by dividing A151724 by 6.

The programs for A170898, there is no canonical definition to state claims against.
-/

/-! ## A170898.P1537294997040273632

`A170905(n+2)-1`
-/

namespace A170898.P1537294997040273632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (n + 2) - 1

end

end A170898.P1537294997040273632

/-! ## A170898.P16622534223832599401

`2*A170899(n)+1`
-/

namespace A170898.P16622534223832599401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A170899 n + 1

end

end A170898.P16622534223832599401

/-! ## A170898.P6170126184621153458

`A151724(n+2)/6`
-/

namespace A170898.P6170126184621153458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151724 (n + 2) : ℚ) / 6

end

end A170898.P6170126184621153458

/-! ## A170898.P6072737676195010657

`Δ[A169780(n+1)]-1`
-/

namespace A170898.P6072737676195010657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A170898.P6072737676195010657

/-! ## A170898.P15405638920160716654

`n+1-Δ[A169788(n+1)]`
-/

namespace A170898.P15405638920160716654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A170898.P15405638920160716654

/-! ## A170898.P2916542307088097838

`A008615(A151724(n+2))`
-/

namespace A170898.P2916542307088097838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A151724 (n + 2)).toNat

end

end A170898.P2916542307088097838

/-! ## A170898.P11716761929853277177

`A342276(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A170898.P11716761929853277177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A342276 n + a (n - 2)

end

end A170898.P11716761929853277177

/-! ## A170898.P4624649720939111897

`A342272(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A170898.P4624649720939111897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A342272 (n + 1) - a (n - 1)

end

end A170898.P4624649720939111897

/-! ## A170898.P14532382748910846190

`A170906((n+2)*(n+3))-1`
-/

namespace A170898.P14532382748910846190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170906 ((n + 2) * (n + 3)) - 1

end

end A170898.P14532382748910846190

/-! ## A170898.P4885419070774769733

`2*A169778(n+2)-1`
-/

namespace A170898.P4885419070774769733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169778 (n + 2) - 1

end

end A170898.P4885419070774769733

/-!
# A170899: Triangle read by rows, obtained by subtracting 1 from the terms of A170898 and dividing by 2.

The programs for A170899, there is no canonical definition to state claims against.
-/

/-! ## A170899.P2453586224831753707

`(A151724(n+2)/6-1)/2`
-/

namespace A170899.P2453586224831753707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A151724 (n + 2) : ℚ) / 6 - 1) / 2

end

end A170899.P2453586224831753707

/-! ## A170899.P8349999431399034922

`A342275(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A170899.P8349999431399034922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342275 (n - 1) + a (n - 1)

end

end A170899.P8349999431399034922

/-! ## A170899.P772972569978778409

`∑[A342275(n)]-A342275(n)`
-/

namespace A170899.P772972569978778409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A342275 n

end

end A170899.P772972569978778409

/-! ## A170899.P15054963651988350397

`floor(A170898(n)/2)`
-/

namespace A170899.P15054963651988350397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A170898 n : ℚ) / 2⌋

end

end A170899.P15054963651988350397

/-! ## A170899.P9126563524589557544

`A170905(n+2)/2-1`
-/

namespace A170899.P9126563524589557544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170905 (n + 2) : ℚ) / 2 - 1

end

end A170899.P9126563524589557544

/-! ## A170899.P18149519575863412407

`A004524(A170898(n))`
-/

namespace A170899.P18149519575863412407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A170898 n).toNat

end

end A170899.P18149519575863412407

/-! ## A170899.P8337614164238808953

`A006370(Δ[A169780(n+1)])-1`
-/

namespace A170899.P8337614164238808953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat - 1

end

end A170899.P8337614164238808953

/-! ## A170899.P355066612980786661

`A169778(n+2)-1`
-/

namespace A170899.P355066612980786661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (n + 2) - 1

end

end A170899.P355066612980786661

/-! ## A170899.P12263468771978375143

`A110658(A256139(n+1))`
-/

namespace A170899.P12263468771978375143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A256139 (n + 1)).toNat

end

end A170899.P12263468771978375143

