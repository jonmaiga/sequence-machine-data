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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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
# A038300: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*10^j.

The programs for A038300, the canonical program `A038300.P16302804784907082499` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038300 has offset 0).

The definition of A038300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038300.P16302804784907082499

`A038295(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038300

/-- `A038295(n)*A059268(n)` -/
def P16302804784907082499.Spec : Prop :=
  ∀ n, P16302804784907082499.a n = A038300 n

theorem P16302804784907082499.correct : P16302804784907082499.Spec := by
  intro n
  simp only [A038300]

end A038300

/-! ## A038300.P15733645978341791930

`A038220(n)*A120027(n)`
-/

namespace A038300.P15733645978341791930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A120027 n

end

end A038300.P15733645978341791930

namespace A038300

/-- `A038220(n)*A120027(n)` -/
def P15733645978341791930.Spec : Prop :=
  ∀ n, P15733645978341791930.a n = A038300 n

end A038300

/-! ## A038300.P3869630990516208939

`A038228(n)*A140303(n)`
-/

namespace A038300.P3869630990516208939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038228 n * A140303 n

end

end A038300.P3869630990516208939

namespace A038300

/-- `A038228(n)*A140303(n)` -/
def P3869630990516208939.Spec : Prop :=
  ∀ n, P3869630990516208939.a n = A038300 n

end A038300

/-! ## A038300.P292709254492825792

`A013622(n)*A175840(n)`
-/

namespace A038300.P292709254492825792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A175840 n

end

end A038300.P292709254492825792

namespace A038300

/-- `A013622(n)*A175840(n)` -/
def P292709254492825792.Spec : Prop :=
  ∀ n, P292709254492825792.a n = A038300 n

end A038300

/-! ## A038300.P9290731141238392756

`lcm(A013609(n), A038295(n))`
-/

namespace A038300.P9290731141238392756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038295 n)

end

end A038300.P9290731141238392756

namespace A038300

/-- `lcm(A013609(n), A038295(n))` -/
def P9290731141238392756.Spec : Prop :=
  ∀ n, (P9290731141238392756.a n : ℤ) = A038300 n

end A038300

/-! ## A038300.P6569913004878878530

`lcm(A013612(n), A038292(n))`
-/

namespace A038300.P6569913004878878530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038292 n)

end

end A038300.P6569913004878878530

namespace A038300

/-- `lcm(A013612(n), A038292(n))` -/
def P6569913004878878530.Spec : Prop :=
  ∀ n, (P6569913004878878530.a n : ℤ) = A038300 n

end A038300

/-! ## A038300.P17184988093585847369

`lcm(A013617(n), A038291(n))`
-/

namespace A038300.P17184988093585847369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013617 n) (A038291 n)

end

end A038300.P17184988093585847369

namespace A038300

/-- `lcm(A013617(n), A038291(n))` -/
def P17184988093585847369.Spec : Prop :=
  ∀ n, (P17184988093585847369.a n : ℤ) = A038300 n

end A038300

/-! ## A038300.P12864403330184605398

`A140303(n)²*A013617(n)`
-/

namespace A038300.P12864403330184605398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013617 n

end

end A038300.P12864403330184605398

namespace A038300

/-- `A140303(n)²*A013617(n)` -/
def P12864403330184605398.Spec : Prop :=
  ∀ n, P12864403330184605398.a n = A038300 n

end A038300

/-! ## A038300.P5329684682311600964

`A038264(n)/A038240(n)*A038264(n)`
-/

namespace A038300.P5329684682311600964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n : ℚ) / (A038240 n : ℚ) * (A038264 n : ℚ)

end

end A038300.P5329684682311600964

namespace A038300

/-- `A038264(n)/A038240(n)*A038264(n)` -/
def P5329684682311600964.Spec : Prop :=
  ∀ n, P5329684682311600964.a n = (A038300 n : ℚ)

end A038300

/-! ## A038300.P2229130557509173421

`(A027467(n)/A038243(n))²*A013617(n)`
-/

namespace A038300.P2229130557509173421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027467 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013617 n : ℚ)

end

end A038300.P2229130557509173421

namespace A038300

/-- `(A027467(n)/A038243(n))²*A013617(n)` -/
def P2229130557509173421.Spec : Prop :=
  ∀ n, P2229130557509173421.a n = (A038300 n : ℚ)

end A038300

/-! ## A038300.P13603756576557400863

`A038311(A061579(n))`
-/

namespace A038300.P13603756576557400863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038311 (A061579 n).toNat

end

end A038300.P13603756576557400863

namespace A038300

/-- `A038311(A061579(n))` -/
def P13603756576557400863.Spec : Prop :=
  ∀ n, P13603756576557400863.a n = A038300 n

end A038300

/-! ## A038300.P17009450830656745589

`A038228(n)²/gcd(A038216(n), A038228(n))`
-/

namespace A038300.P17009450830656745589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038228 n ^ 2 : ℚ) / (Int.gcd (A038216 n) (A038228 n) : ℚ)

end

end A038300.P17009450830656745589

namespace A038300

/-- `A038228(n)²/gcd(A038216(n), A038228(n))` -/
def P17009450830656745589.Spec : Prop :=
  ∀ n, P17009450830656745589.a n = (A038300 n : ℚ)

end A038300

/-! ## A038300.P6514594641844166610

`A038264(n)²/A038240(n)`
-/

namespace A038300.P6514594641844166610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n ^ 2 : ℚ) / (A038240 n : ℚ)

end

end A038300.P6514594641844166610

namespace A038300

/-- `A038264(n)²/A038240(n)` -/
def P6514594641844166610.Spec : Prop :=
  ∀ n, P6514594641844166610.a n = (A038300 n : ℚ)

end A038300

/-!
# A038301: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*11^j.

The programs for A038301, the canonical program `A038301.P13802189218561258901` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038301 has offset 0).

The definition of A038301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038301.P13802189218561258901

`A038229(n)*A140303(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038301

/-- `A038229(n)*A140303(n)` -/
def P13802189218561258901.Spec : Prop :=
  ∀ n, P13802189218561258901.a n = A038301 n

theorem P13802189218561258901.correct : P13802189218561258901.Spec := by
  intro n
  simp only [A038301]

end A038301

/-! ## A038301.P11855032304562859725

`lcm(A013618(n), A038291(n))`
-/

namespace A038301.P11855032304562859725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038291 n)

end

end A038301.P11855032304562859725

namespace A038301

/-- `lcm(A013618(n), A038291(n))` -/
def P11855032304562859725.Spec : Prop :=
  ∀ n, (P11855032304562859725.a n : ℤ) = A038301 n

end A038301

/-! ## A038301.P9777508428314938076

`A140303(n)²*A013618(n)`
-/

namespace A038301.P9777508428314938076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013618 n

end

end A038301.P9777508428314938076

namespace A038301

/-- `A140303(n)²*A013618(n)` -/
def P9777508428314938076.Spec : Prop :=
  ∀ n, P9777508428314938076.a n = A038301 n

theorem P9777508428314938076.correct : P9777508428314938076.Spec := by
  intro n
  simp only [A038301, Nat.add_sub_cancel, A038301.P9777508428314938076.a, A038301.P13802189218561258901.a, A013618, A013618.P387738794400138058.a, A038229, A038229.P16179588272599030162.a, A140303, A140303.P8111893884846108163.a, A000244, A000244.P17162167222172810417.a, A001020, A001020.P6110418391945528251.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038301

/-! ## A038301.P5145792231988229624

`A001020(A002262(n))*A038291(n)`
-/

namespace A038301.P5145792231988229624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A038291 n

end

end A038301.P5145792231988229624

namespace A038301

/-- `A001020(A002262(n))*A038291(n)` -/
def P5145792231988229624.Spec : Prop :=
  ∀ n, P5145792231988229624.a n = A038301 n

end A038301

/-! ## A038301.P14172401224178289646

`A038265(n)/A038241(n)*A038265(n)`
-/

namespace A038301.P14172401224178289646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n : ℚ) / (A038241 n : ℚ) * (A038265 n : ℚ)

end

end A038301.P14172401224178289646

namespace A038301

/-- `A038265(n)/A038241(n)*A038265(n)` -/
def P14172401224178289646.Spec : Prop :=
  ∀ n, P14172401224178289646.a n = (A038301 n : ℚ)

end A038301

/-! ## A038301.P17056965156441736477

`A038323(A061579(n))`
-/

namespace A038301.P17056965156441736477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038323 (A061579 n).toNat

end

end A038301.P17056965156441736477

namespace A038301

/-- `A038323(A061579(n))` -/
def P17056965156441736477.Spec : Prop :=
  ∀ n, P17056965156441736477.a n = A038301 n

end A038301

/-! ## A038301.P18121513227329231827

`A038229(n)²/gcd(A038217(n), A038229(n))`
-/

namespace A038301.P18121513227329231827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038229 n ^ 2 : ℚ) / (Int.gcd (A038217 n) (A038229 n) : ℚ)

end

end A038301.P18121513227329231827

namespace A038301

/-- `A038229(n)²/gcd(A038217(n), A038229(n))` -/
def P18121513227329231827.Spec : Prop :=
  ∀ n, P18121513227329231827.a n = (A038301 n : ℚ)

end A038301

/-! ## A038301.P10598224285974611067

`A038265(n)²/A038241(n)`
-/

namespace A038301.P10598224285974611067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n ^ 2 : ℚ) / (A038241 n : ℚ)

end

end A038301.P10598224285974611067

namespace A038301

/-- `A038265(n)²/A038241(n)` -/
def P10598224285974611067.Spec : Prop :=
  ∀ n, P10598224285974611067.a n = (A038301 n : ℚ)

end A038301

/-! ## A038301.P1402032500518911871

`A038291(n)*A116525(A059268(n))`
-/

namespace A038301.P1402032500518911871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038291 n * A116525 (A059268 n).toNat

end

end A038301.P1402032500518911871

namespace A038301

/-- `A038291(n)*A116525(A059268(n))` -/
def P1402032500518911871.Spec : Prop :=
  ∀ n, P1402032500518911871.a n = A038301 n

end A038301

/-! ## A038301.P6505781960350208238

`A056926(A008459(n))*A108687(n+1)`
-/

namespace A038301.P6505781960350208238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A008459 n).toNat * A108687 (n + 1)

end

end A038301.P6505781960350208238

namespace A038301

/-- `A056926(A008459(n))*A108687(n+1)` -/
def P6505781960350208238.Spec : Prop :=
  ∀ n, P6505781960350208238.a n = A038301 n

end A038301

/-!
# A038302: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*12^j.

The programs for A038302, the canonical program `A038302.P8800221940297156874` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038302 has offset 0).

The definition of A038302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038302.P8800221940297156874

`A038296(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038302

/-- `A038296(n)*A059268(n)` -/
def P8800221940297156874.Spec : Prop :=
  ∀ n, P8800221940297156874.a n = A038302 n

theorem P8800221940297156874.correct : P8800221940297156874.Spec := by
  intro n
  simp only [A038302]

end A038302

/-! ## A038302.P3311632534867282840

`A038222(n)*A098355(n)`
-/

namespace A038302.P3311632534867282840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A098355 n

end

end A038302.P3311632534867282840

namespace A038302

/-- `A038222(n)*A098355(n)` -/
def P3311632534867282840.Spec : Prop :=
  ∀ n, P3311632534867282840.a n = A038302 n

end A038302

/-! ## A038302.P1963904088970473011

`A038220(n)*A100852(n)`
-/

namespace A038302.P1963904088970473011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A100852 n

end

end A038302.P1963904088970473011

namespace A038302

/-- `A038220(n)*A100852(n)` -/
def P1963904088970473011.Spec : Prop :=
  ∀ n, P1963904088970473011.a n = A038302 n

end A038302

/-! ## A038302.P2871949827165543202

`A038230(n)*A140303(n)`
-/

namespace A038302.P2871949827165543202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038230 n * A140303 n

end

end A038302.P2871949827165543202

namespace A038302

/-- `A038230(n)*A140303(n)` -/
def P2871949827165543202.Spec : Prop :=
  ∀ n, P2871949827165543202.a n = A038302 n

end A038302

/-! ## A038302.P4675468186926691805

`A038224(n)*A175840(n)`
-/

namespace A038302.P4675468186926691805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A175840 n

end

end A038302.P4675468186926691805

namespace A038302

/-- `A038224(n)*A175840(n)` -/
def P4675468186926691805.Spec : Prop :=
  ∀ n, P4675468186926691805.a n = A038302 n

end A038302

/-! ## A038302.P14178313685787507988

`A038221(n)*A356036(n)`
-/

namespace A038302.P14178313685787507988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A356036 n

end

end A038302.P14178313685787507988

namespace A038302

/-- `A038221(n)*A356036(n)` -/
def P14178313685787507988.Spec : Prop :=
  ∀ n, P14178313685787507988.a n = A038302 n

end A038302

/-! ## A038302.P4162586714489612563

`lcm(A013611(n), A038293(n))`
-/

namespace A038302.P4162586714489612563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038293 n)

end

end A038302.P4162586714489612563

namespace A038302

/-- `lcm(A013611(n), A038293(n))` -/
def P4162586714489612563.Spec : Prop :=
  ∀ n, (P4162586714489612563.a n : ℤ) = A038302 n

end A038302

/-! ## A038302.P17080641532363643766

`lcm(A013619(n), A038296(n))`
-/

namespace A038302.P17080641532363643766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013619 n) (A038296 n)

end

end A038302.P17080641532363643766

namespace A038302

/-- `lcm(A013619(n), A038296(n))` -/
def P17080641532363643766.Spec : Prop :=
  ∀ n, (P17080641532363643766.a n : ℤ) = A038302 n

end A038302

/-! ## A038302.P9001060936511088474

`A059268(n)²*A038293(n)`
-/

namespace A038302.P9001060936511088474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038293 n

end

end A038302.P9001060936511088474

namespace A038302

/-- `A059268(n)²*A038293(n)` -/
def P9001060936511088474.Spec : Prop :=
  ∀ n, P9001060936511088474.a n = A038302 n

theorem P9001060936511088474.correct : P9001060936511088474.Spec := by
  intro n
  simp only [A038302, Nat.add_sub_cancel, A038302.P9001060936511088474.a, A038302.P8800221940297156874.a, A038293, A038293.P2198873287583605851.a, A038296, A038296.P12595348449861327754.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A027465, A027465.P7731495138669227415.a, A098355, A098355.P3959088483127255059.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038302

/-! ## A038302.P4931013021115602879

`A140303(n)²*A013619(n)`
-/

namespace A038302.P4931013021115602879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A013619 n

end

end A038302.P4931013021115602879

namespace A038302

/-- `A140303(n)²*A013619(n)` -/
def P4931013021115602879.Spec : Prop :=
  ∀ n, P4931013021115602879.a n = A038302 n

end A038302

/-! ## A038302.P4381318799417462460

`A175840(n)²*A013610(n)`
-/

namespace A038302.P4381318799417462460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n ^ 2 * A013610 n

end

end A038302.P4381318799417462460

namespace A038302

/-- `A175840(n)²*A013610(n)` -/
def P4381318799417462460.Spec : Prop :=
  ∀ n, P4381318799417462460.a n = A038302 n

end A038302

/-! ## A038302.P9142615959119443371

`A038224(n)/A013610(n)*A038224(n)`
-/

namespace A038302.P9142615959119443371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A013610 n : ℚ) * (A038224 n : ℚ)

end

end A038302.P9142615959119443371

namespace A038302

/-- `A038224(n)/A013610(n)*A038224(n)` -/
def P9142615959119443371.Spec : Prop :=
  ∀ n, P9142615959119443371.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P11492390576504882543

`A038266(n)/A038242(n)*A038266(n)`
-/

namespace A038302.P11492390576504882543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A038242 n : ℚ) * (A038266 n : ℚ)

end

end A038302.P11492390576504882543

namespace A038302

/-- `A038266(n)/A038242(n)*A038266(n)` -/
def P11492390576504882543.Spec : Prop :=
  ∀ n, P11492390576504882543.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P13754912665556940042

`A038296(n)/A038293(n)*A038296(n)`
-/

namespace A038302.P13754912665556940042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n : ℚ) / (A038293 n : ℚ) * (A038296 n : ℚ)

end

end A038302.P13754912665556940042

namespace A038302

/-- `A038296(n)/A038293(n)*A038296(n)` -/
def P13754912665556940042.Spec : Prop :=
  ∀ n, P13754912665556940042.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P5074440530378592407

`(A027467(n)/A038243(n))²*A013619(n)`
-/

namespace A038302.P5074440530378592407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A027467 n : ℚ) / (A038243 n : ℚ)) ^ 2 * (A013619 n : ℚ)

end

end A038302.P5074440530378592407

namespace A038302

/-- `(A027467(n)/A038243(n))²*A013619(n)` -/
def P5074440530378592407.Spec : Prop :=
  ∀ n, P5074440530378592407.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P8677047393236087839

`A038335(A061579(n))`
-/

namespace A038302.P8677047393236087839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038335 (A061579 n).toNat

end

end A038302.P8677047393236087839

namespace A038302

/-- `A038335(A061579(n))` -/
def P8677047393236087839.Spec : Prop :=
  ∀ n, P8677047393236087839.a n = A038302 n

end A038302

/-! ## A038302.P9890996492142248558

`A038224(n)²/A013610(n)`
-/

namespace A038302.P9890996492142248558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n ^ 2 : ℚ) / (A013610 n : ℚ)

end

end A038302.P9890996492142248558

namespace A038302

/-- `A038224(n)²/A013610(n)` -/
def P9890996492142248558.Spec : Prop :=
  ∀ n, P9890996492142248558.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P18257233289410303944

`A038230(n)²/gcd(A038218(n), A038230(n))`
-/

namespace A038302.P18257233289410303944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n ^ 2 : ℚ) / (Int.gcd (A038218 n) (A038230 n) : ℚ)

end

end A038302.P18257233289410303944

namespace A038302

/-- `A038230(n)²/gcd(A038218(n), A038230(n))` -/
def P18257233289410303944.Spec : Prop :=
  ∀ n, P18257233289410303944.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P18188561810696705570

`A038296(n)²/A038293(n)`
-/

namespace A038302.P18188561810696705570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n ^ 2 : ℚ) / (A038293 n : ℚ)

end

end A038302.P18188561810696705570

namespace A038302

/-- `A038296(n)²/A038293(n)` -/
def P18188561810696705570.Spec : Prop :=
  ∀ n, P18188561810696705570.a n = (A038302 n : ℚ)

end A038302

/-! ## A038302.P9884536926446966181

`A038296(n)²/gcd(A038296(n), A038299(n))`
-/

namespace A038302.P9884536926446966181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n ^ 2 : ℚ) / (Int.gcd (A038296 n) (A038299 n) : ℚ)

end

end A038302.P9884536926446966181

namespace A038302

/-- `A038296(n)²/gcd(A038296(n), A038299(n))` -/
def P9884536926446966181.Spec : Prop :=
  ∀ n, P9884536926446966181.a n = (A038302 n : ℚ)

end A038302

/-!
# A038303: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*1^j.

The programs for A038303, the canonical program `A038303.P11464826789693520715` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038303 has offset 0).

The definition of A038303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038303.P11464826789693520715

`10*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038303

/-- `10*T(n-1,k)+T(n-1,k-1)` -/
def P11464826789693520715.Spec : Prop :=
  ∀ n, (P11464826789693520715.a n : ℤ) = A038303 n

theorem P11464826789693520715.correct : P11464826789693520715.Spec := by
  intro n
  simp only [A038303]

end A038303

/-! ## A038303.P9809714490949260166

`A038243(n)*A130321(n)`
-/

namespace A038303.P9809714490949260166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A130321 n

end

end A038303.P9809714490949260166

namespace A038303

/-- `A038243(n)*A130321(n)` -/
def P9809714490949260166.Spec : Prop :=
  ∀ n, P9809714490949260166.a n = A038303 n

end A038303

/-! ## A038303.P4600755052353070157

`lcm(A038207(n), A038243(n))`
-/

namespace A038303.P4600755052353070157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A038243 n)

end

end A038303.P4600755052353070157

namespace A038303

/-- `lcm(A038207(n), A038243(n))` -/
def P4600755052353070157.Spec : Prop :=
  ∀ n, (P4600755052353070157.a n : ℤ) = A038303 n

end A038303

/-! ## A038303.P12243006323040973135

`A038243(n)*A059268(A061579(n))`
-/

namespace A038303.P12243006323040973135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A059268 (A061579 n).toNat

end

end A038303.P12243006323040973135

namespace A038303

/-- `A038243(n)*A059268(A061579(n))` -/
def P12243006323040973135.Spec : Prop :=
  ∀ n, P12243006323040973135.a n = A038303 n

end A038303

/-! ## A038303.P8027724481133307580

`A038207(n)/A007318(n)*A038243(n)`
-/

namespace A038303.P8027724481133307580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A038243 n : ℚ)

end

end A038303.P8027724481133307580

namespace A038303

/-- `A038207(n)/A007318(n)*A038243(n)` -/
def P8027724481133307580.Spec : Prop :=
  ∀ n, P8027724481133307580.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P7979167053252695148

`A038243(n)/A027465(n)*A038255(n)`
-/

namespace A038303.P7979167053252695148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038243 n : ℚ) / (A027465 n : ℚ) * (A038255 n : ℚ)

end

end A038303.P7979167053252695148

namespace A038303

/-- `A038243(n)/A027465(n)*A038255(n)` -/
def P7979167053252695148.Spec : Prop :=
  ∀ n, P7979167053252695148.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P6501456131026425707

`A038231(n)/A038207(n)*A038243(n)`
-/

namespace A038303.P6501456131026425707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038231 n : ℚ) / (A038207 n : ℚ) * (A038243 n : ℚ)

end

end A038303.P6501456131026425707

namespace A038303

/-- `A038231(n)/A038207(n)*A038243(n)` -/
def P6501456131026425707.Spec : Prop :=
  ∀ n, P6501456131026425707.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P11647004331861584858

`A013617(A061579(n))`
-/

namespace A038303.P11647004331861584858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 (A061579 n).toNat

end

end A038303.P11647004331861584858

namespace A038303

/-- `A013617(A061579(n))` -/
def P11647004331861584858.Spec : Prop :=
  ∀ n, P11647004331861584858.a n = A038303 n

end A038303

/-! ## A038303.P5631679480140018962

`A013617(A038722(n+1)-1)`
-/

namespace A038303.P5631679480140018962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 (A038722 (n + 1) - 1).toNat

end

end A038303.P5631679480140018962

namespace A038303

/-- `A013617(A038722(n+1)-1)` -/
def P5631679480140018962.Spec : Prop :=
  ∀ n, P5631679480140018962.a n = A038303 n

end A038303

/-! ## A038303.P3337395977244429300

`A013617(A038722(n+2))`
-/

namespace A038303.P3337395977244429300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 (A038722 (n + 2)).toNat

end

end A038303.P3337395977244429300

namespace A038303

/-- `A013617(A038722(n+2))` -/
def P3337395977244429300.Spec : Prop :=
  ∀ n, P3337395977244429300.a n = A038303 n

end A038303

/-! ## A038303.P3782186889246445816

`abs(A165293(n+1))`
-/

namespace A038303.P3782186889246445816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165293 (n + 1)|

end

end A038303.P3782186889246445816

namespace A038303

/-- `abs(A165293(n+1))` -/
def P3782186889246445816.Spec : Prop :=
  ∀ n, P3782186889246445816.a n = A038303 n

end A038303

/-! ## A038303.P15819126649556470317

`gcd(A000038(n), A165293(n+1))`
-/

namespace A038303.P15819126649556470317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A165293 (n + 1))

end

end A038303.P15819126649556470317

namespace A038303

/-- `gcd(A000038(n), A165293(n+1))` -/
def P15819126649556470317.Spec : Prop :=
  ∀ n, (P15819126649556470317.a n : ℤ) = A038303 n

end A038303

/-! ## A038303.P1846980364467887134

`lcm(A007318(n), A165293(n+1))`
-/

namespace A038303.P1846980364467887134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A165293 (n + 1))

end

end A038303.P1846980364467887134

namespace A038303

/-- `lcm(A007318(n), A165293(n+1))` -/
def P1846980364467887134.Spec : Prop :=
  ∀ n, (P1846980364467887134.a n : ℤ) = A038303 n

end A038303

/-! ## A038303.P9467550164237056750

`A038304(n)/A059268(n)`
-/

namespace A038303.P9467550164237056750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n : ℚ) / (A059268 n : ℚ)

end

end A038303.P9467550164237056750

namespace A038303

/-- `A038304(n)/A059268(n)` -/
def P9467550164237056750.Spec : Prop :=
  ∀ n, P9467550164237056750.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P14737658014750531009

`gcd(A038304(n), A038305(n))`
-/

namespace A038303.P14737658014750531009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038304 n) (A038305 n)

end

end A038303.P14737658014750531009

namespace A038303

/-- `gcd(A038304(n), A038305(n))` -/
def P14737658014750531009.Spec : Prop :=
  ∀ n, (P14737658014750531009.a n : ℤ) = A038303 n

end A038303

/-! ## A038303.P6777943266175151632

`A038305(n)/A000244(A002262(n))`
-/

namespace A038303.P6777943266175151632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038305 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A038303.P6777943266175151632

namespace A038303

/-- `A038305(n)/A000244(A002262(n))` -/
def P6777943266175151632.Spec : Prop :=
  ∀ n, P6777943266175151632.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P12018474567741758212

`A038306(n)/A059268(n)²`
-/

namespace A038303.P12018474567741758212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038303.P12018474567741758212

namespace A038303

/-- `A038306(n)/A059268(n)²` -/
def P12018474567741758212.Spec : Prop :=
  ∀ n, P12018474567741758212.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P12413843673867599956

`A038304(n)/A038306(n)*A038304(n)`
-/

namespace A038303.P12413843673867599956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n : ℚ) / (A038306 n : ℚ) * (A038304 n : ℚ)

end

end A038303.P12413843673867599956

namespace A038303

/-- `A038304(n)/A038306(n)*A038304(n)` -/
def P12413843673867599956.Spec : Prop :=
  ∀ n, P12413843673867599956.a n = (A038303 n : ℚ)

end A038303

/-! ## A038303.P13382352144197634635

`gcd(A038306(n), A038307(n))`
-/

namespace A038303.P13382352144197634635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038306 n) (A038307 n)

end

end A038303.P13382352144197634635

namespace A038303

/-- `gcd(A038306(n), A038307(n))` -/
def P13382352144197634635.Spec : Prop :=
  ∀ n, (P13382352144197634635.a n : ℤ) = A038303 n

end A038303

/-! ## A038303.P7909755737795105763

`A038207(n)/A013621(n)*A038307(n)`
-/

namespace A038303.P7909755737795105763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A013621 n : ℚ) * (A038307 n : ℚ)

end

end A038303.P7909755737795105763

namespace A038303

/-- `A038207(n)/A013621(n)*A038307(n)` -/
def P7909755737795105763.Spec : Prop :=
  ∀ n, P7909755737795105763.a n = (A038303 n : ℚ)

end A038303

/-!
# A038304: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*2^j.

The programs for A038304, the canonical program `A038304.P16871392387466480336` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038304 has offset 0).

The definition of A038304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038304.P15545921734353589560

`A038303(n)*A059268(n)`
-/

namespace A038304.P15545921734353589560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n * A059268 n

end

end A038304.P15545921734353589560

namespace A038304

/-- `A038303(n)*A059268(n)` -/
def P15545921734353589560.Spec : Prop :=
  ∀ n, P15545921734353589560.a n = A038304 n

end A038304

/-! ## A038304.P16871392387466480336

`A038244(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038304

/-- `A038244(n)*A130321(n)` -/
def P16871392387466480336.Spec : Prop :=
  ∀ n, P16871392387466480336.a n = A038304 n

theorem P16871392387466480336.correct : P16871392387466480336.Spec := by
  intro n
  simp only [A038304]

end A038304

/-! ## A038304.P8626850960213261993

`A038243(n)*A137688(n)`
-/

namespace A038304.P8626850960213261993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A137688 n

end

end A038304.P8626850960213261993

namespace A038304

/-- `A038243(n)*A137688(n)` -/
def P8626850960213261993.Spec : Prop :=
  ∀ n, P8626850960213261993.a n = A038304 n

end A038304

/-! ## A038304.P5794747690347046272

`lcm(A038208(n), A038243(n))`
-/

namespace A038304.P5794747690347046272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038208 n) (A038243 n)

end

end A038304.P5794747690347046272

namespace A038304

/-- `lcm(A038208(n), A038243(n))` -/
def P5794747690347046272.Spec : Prop :=
  ∀ n, (P5794747690347046272.a n : ℤ) = A038304 n

end A038304

/-! ## A038304.P16022305194306265682

`Δ[A007664(n)]*A038243(n)`
-/

namespace A038304.P16022305194306265682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038243 n

end

end A038304.P16022305194306265682

namespace A038304

/-- `Δ[A007664(n)]*A038243(n)` -/
def P16022305194306265682.Spec : Prop :=
  ∀ n, P16022305194306265682.a n = A038304 n

end A038304

/-! ## A038304.P17619991532802740352

`A038243(n)*A059268(n)*A059268(A061579(n))`
-/

namespace A038304.P17619991532802740352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A059268 n * A059268 (A061579 n).toNat

end

end A038304.P17619991532802740352

namespace A038304

/-- `A038243(n)*A059268(n)*A059268(A061579(n))` -/
def P17619991532802740352.Spec : Prop :=
  ∀ n, P17619991532802740352.a n = A038304 n

end A038304

/-! ## A038304.P8716238472809835453

`A038216(A061579(n))`
-/

namespace A038304.P8716238472809835453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038216 (A061579 n).toNat

end

end A038304.P8716238472809835453

namespace A038304

/-- `A038216(A061579(n))` -/
def P8716238472809835453.Spec : Prop :=
  ∀ n, P8716238472809835453.a n = A038304 n

end A038304

/-! ## A038304.P5996403064176192901

`A038306(n)/A059268(n)`
-/

namespace A038304.P5996403064176192901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A059268 n : ℚ)

end

end A038304.P5996403064176192901

namespace A038304

/-- `A038306(n)/A059268(n)` -/
def P5996403064176192901.Spec : Prop :=
  ∀ n, P5996403064176192901.a n = (A038304 n : ℚ)

end A038304

/-! ## A038304.P16188831290543489815

`sqrt(A038303(n))*sqrt(A038306(n))`
-/

namespace A038304.P16188831290543489815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038303 n : ℝ) * Real.sqrt (A038306 n : ℝ)

end

end A038304.P16188831290543489815

namespace A038304

/-- `sqrt(A038303(n))*sqrt(A038306(n))` -/
def P16188831290543489815.Spec : Prop :=
  ∀ n, P16188831290543489815.a n = (A038304 n : ℝ)

end A038304

/-! ## A038304.P7683473686594079865

`gcd(A038306(n), A038308(n))`
-/

namespace A038304.P7683473686594079865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038306 n) (A038308 n)

end

end A038304.P7683473686594079865

namespace A038304

/-- `gcd(A038306(n), A038308(n))` -/
def P7683473686594079865.Spec : Prop :=
  ∀ n, (P7683473686594079865.a n : ℤ) = A038304 n

end A038304

/-! ## A038304.P14902650902266053970

`A038310(n)/A059268(n)²`
-/

namespace A038304.P14902650902266053970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038310 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038304.P14902650902266053970

namespace A038304

/-- `A038310(n)/A059268(n)²` -/
def P14902650902266053970.Spec : Prop :=
  ∀ n, P14902650902266053970.a n = (A038304 n : ℚ)

end A038304

/-! ## A038304.P17362062274034648696

`A038306(n)/A038310(n)*A038306(n)`
-/

namespace A038304.P17362062274034648696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A038310 n : ℚ) * (A038306 n : ℚ)

end

end A038304.P17362062274034648696

namespace A038304

/-- `A038306(n)/A038310(n)*A038306(n)` -/
def P17362062274034648696.Spec : Prop :=
  ∀ n, P17362062274034648696.a n = (A038304 n : ℚ)

end A038304

/-! ## A038304.P17269085156137103318

`gcd(A038310(n), A038312(n))`
-/

namespace A038304.P17269085156137103318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038310 n) (A038312 n)

end

end A038304.P17269085156137103318

namespace A038304

/-- `gcd(A038310(n), A038312(n))` -/
def P17269085156137103318.Spec : Prop :=
  ∀ n, (P17269085156137103318.a n : ℤ) = A038304 n

end A038304

/-! ## A038304.P15349116889339712194

`sqrt(A038303(n)*A038306(n))`
-/

namespace A038304.P15349116889339712194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038303 n * A038306 n : ℝ)

end

end A038304.P15349116889339712194

namespace A038304

/-- `sqrt(A038303(n)*A038306(n))` -/
def P15349116889339712194.Spec : Prop :=
  ∀ n, P15349116889339712194.a n = (A038304 n : ℝ)

end A038304

/-! ## A038304.P1064449762078830941

`A038306(n)²/A038310(n)`
-/

namespace A038304.P1064449762078830941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n ^ 2 : ℚ) / (A038310 n : ℚ)

end

end A038304.P1064449762078830941

namespace A038304

/-- `A038306(n)²/A038310(n)` -/
def P1064449762078830941.Spec : Prop :=
  ∀ n, P1064449762078830941.a n = (A038304 n : ℚ)

end A038304

/-!
# A038305: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*3^j.

The programs for A038305, the canonical program `A038305.P6107892818087992147` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038305 has offset 0).

The definition of A038305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038305.P5845382312132003536

`A036561(n)*A038243(n)`
-/

namespace A038305.P5845382312132003536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038243 n

end

end A038305.P5845382312132003536

namespace A038305

/-- `A036561(n)*A038243(n)` -/
def P5845382312132003536.Spec : Prop :=
  ∀ n, P5845382312132003536.a n = A038305 n

end A038305

/-! ## A038305.P11639005938665587341

`A038245(n)*A130321(n)`
-/

namespace A038305.P11639005938665587341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038245 n * A130321 n

end

end A038305.P11639005938665587341

namespace A038305

/-- `A038245(n)*A130321(n)` -/
def P11639005938665587341.Spec : Prop :=
  ∀ n, P11639005938665587341.a n = A038305 n

end A038305

/-! ## A038305.P17365220152270170858

`lcm(A013620(n), A038243(n))`
-/

namespace A038305.P17365220152270170858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013620 n) (A038243 n)

end

end A038305.P17365220152270170858

namespace A038305

/-- `lcm(A013620(n), A038243(n))` -/
def P17365220152270170858.Spec : Prop :=
  ∀ n, (P17365220152270170858.a n : ℤ) = A038305 n

end A038305

/-! ## A038305.P15452300280266057303

`lcm(A013610(n), A038303(n))`
-/

namespace A038305.P15452300280266057303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038303 n)

end

end A038305.P15452300280266057303

namespace A038305

/-- `lcm(A013610(n), A038303(n))` -/
def P15452300280266057303.Spec : Prop :=
  ∀ n, (P15452300280266057303.a n : ℤ) = A038305 n

end A038305

/-! ## A038305.P6245242128476614306

`lcm(A038207(n), A038245(n))`
-/

namespace A038305.P6245242128476614306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A038245 n)

end

end A038305.P6245242128476614306

namespace A038305

/-- `lcm(A038207(n), A038245(n))` -/
def P6245242128476614306.Spec : Prop :=
  ∀ n, (P6245242128476614306.a n : ℤ) = A038305 n

end A038305

/-! ## A038305.P6107892818087992147

`lcm(A165293(n+1), A317498(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038305

/-- `lcm(A165293(n+1), A317498(n))` -/
def P6107892818087992147.Spec : Prop :=
  ∀ n, (P6107892818087992147.a n : ℤ) = A038305 n

theorem P6107892818087992147.correct : P6107892818087992147.Spec := by
  intro n
  simp only [A038305]

end A038305

/-! ## A038305.P1501350523879085356

`A038303(n)*A140303(A112367(n))`
-/

namespace A038305.P1501350523879085356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n * A140303 (A112367 n).toNat

end

end A038305.P1501350523879085356

namespace A038305

/-- `A038303(n)*A140303(A112367(n))` -/
def P1501350523879085356.Spec : Prop :=
  ∀ n, P1501350523879085356.a n = A038305 n

end A038305

/-! ## A038305.P13811420236275690297

`lcm(A013622(A061579(n)), A065109(n))`
-/

namespace A038305.P13811420236275690297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013622 (A061579 n).toNat) (A065109 n)

end

end A038305.P13811420236275690297

namespace A038305

/-- `lcm(A013622(A061579(n)), A065109(n))` -/
def P13811420236275690297.Spec : Prop :=
  ∀ n, (P13811420236275690297.a n : ℤ) = A038305 n

end A038305

/-! ## A038305.P3146556968243923258

`A038228(A061579(n))`
-/

namespace A038305.P3146556968243923258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038228 (A061579 n).toNat

end

end A038305.P3146556968243923258

namespace A038305

/-- `A038228(A061579(n))` -/
def P3146556968243923258.Spec : Prop :=
  ∀ n, P3146556968243923258.a n = A038305 n

end A038305

/-! ## A038305.P15558007001670178227

`A038308(n)/A059268(n)`
-/

namespace A038305.P15558007001670178227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A059268 n : ℚ)

end

end A038305.P15558007001670178227

namespace A038305

/-- `A038308(n)/A059268(n)` -/
def P15558007001670178227.Spec : Prop :=
  ∀ n, P15558007001670178227.a n = (A038305 n : ℚ)

end A038305

/-! ## A038305.P12157830046089848851

`gcd(A038308(n), A038311(n))`
-/

namespace A038305.P12157830046089848851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038308 n) (A038311 n)

end

end A038305.P12157830046089848851

namespace A038305

/-- `gcd(A038308(n), A038311(n))` -/
def P12157830046089848851.Spec : Prop :=
  ∀ n, (P12157830046089848851.a n : ℤ) = A038305 n

end A038305

/-! ## A038305.P13461710924145127810

`sqrt(A038303(n))*sqrt(A038311(n))`
-/

namespace A038305.P13461710924145127810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038303 n : ℝ) * Real.sqrt (A038311 n : ℝ)

end

end A038305.P13461710924145127810

namespace A038305

/-- `sqrt(A038303(n))*sqrt(A038311(n))` -/
def P13461710924145127810.Spec : Prop :=
  ∀ n, P13461710924145127810.a n = (A038305 n : ℝ)

end A038305

/-! ## A038305.P13270062192188499423

`A038314(n)/A059268(n)²`
-/

namespace A038305.P13270062192188499423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038305.P13270062192188499423

namespace A038305

/-- `A038314(n)/A059268(n)²` -/
def P13270062192188499423.Spec : Prop :=
  ∀ n, P13270062192188499423.a n = (A038305 n : ℚ)

end A038305

/-! ## A038305.P16966587036753510921

`A038308(n)/A038314(n)*A038308(n)`
-/

namespace A038305.P16966587036753510921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A038314 n : ℚ) * (A038308 n : ℚ)

end

end A038305.P16966587036753510921

namespace A038305

/-- `A038308(n)/A038314(n)*A038308(n)` -/
def P16966587036753510921.Spec : Prop :=
  ∀ n, P16966587036753510921.a n = (A038305 n : ℚ)

end A038305

/-! ## A038305.P5797505825847501984

`sqrt(A038303(n)*A038311(n))`
-/

namespace A038305.P5797505825847501984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038303 n * A038311 n : ℝ)

end

end A038305.P5797505825847501984

namespace A038305

/-- `sqrt(A038303(n)*A038311(n))` -/
def P5797505825847501984.Spec : Prop :=
  ∀ n, P5797505825847501984.a n = (A038305 n : ℝ)

end A038305

/-! ## A038305.P13894097338597330877

`A038308(n)²/A038314(n)`
-/

namespace A038305.P13894097338597330877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n ^ 2 : ℚ) / (A038314 n : ℚ)

end

end A038305.P13894097338597330877

namespace A038305

/-- `A038308(n)²/A038314(n)` -/
def P13894097338597330877.Spec : Prop :=
  ∀ n, P13894097338597330877.a n = (A038305 n : ℚ)

end A038305

/-!
# A038306: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*4^j.

The programs for A038306, the canonical program `A038306.P5805800662738392835` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038306 has offset 0).

The definition of A038306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038306.P5805800662738392835

`A038304(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038306

/-- `A038304(n)*A059268(n)` -/
def P5805800662738392835.Spec : Prop :=
  ∀ n, P5805800662738392835.a n = A038306 n

theorem P5805800662738392835.correct : P5805800662738392835.Spec := by
  intro n
  simp only [A038306]

end A038306

/-! ## A038306.P9000780307452840262

`A038246(n)*A130321(n)`
-/

namespace A038306.P9000780307452840262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038246 n * A130321 n

end

end A038306.P9000780307452840262

namespace A038306

/-- `A038246(n)*A130321(n)` -/
def P9000780307452840262.Spec : Prop :=
  ∀ n, P9000780307452840262.a n = A038306 n

theorem P9000780307452840262.correct : P9000780307452840262.Spec := by
  intro n
  simp only [A038306, Nat.add_sub_cancel, A038306.P9000780307452840262.a, A038306.P5805800662738392835.a, A038246, A038246.P15260867033814283851.a, A038304, A038304.P16871392387466480336.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A038244, A038244.P8625253642017748950.a, A140513, A140513.P13579608035938851890.a, A000351, A000351.P3157381177678935815.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A013609, A013609.P14824901554590578180.a, A025581, A025581.P16112744757063613497.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038306

/-! ## A038306.P16608944965426006848

`A038244(n)*A137688(n)`
-/

namespace A038306.P16608944965426006848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A137688 n

end

end A038306.P16608944965426006848

namespace A038306

/-- `A038244(n)*A137688(n)` -/
def P16608944965426006848.Spec : Prop :=
  ∀ n, P16608944965426006848.a n = A038306 n

end A038306

/-! ## A038306.P13490051612067347535

`A038243(n)*A368043(n)`
-/

namespace A038306.P13490051612067347535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A368043 n

end

end A038306.P13490051612067347535

namespace A038306

/-- `A038243(n)*A368043(n)` -/
def P13490051612067347535.Spec : Prop :=
  ∀ n, P13490051612067347535.a n = A038306 n

end A038306

/-! ## A038306.P3750036413397854528

`lcm(A038210(n), A038243(n))`
-/

namespace A038306.P3750036413397854528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038210 n) (A038243 n)

end

end A038306.P3750036413397854528

namespace A038306

/-- `lcm(A038210(n), A038243(n))` -/
def P3750036413397854528.Spec : Prop :=
  ∀ n, (P3750036413397854528.a n : ℤ) = A038306 n

end A038306

/-! ## A038306.P1454637661752536403

`A059268(n)²*A038303(n)`
-/

namespace A038306.P1454637661752536403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038303 n

end

end A038306.P1454637661752536403

namespace A038306

/-- `A059268(n)²*A038303(n)` -/
def P1454637661752536403.Spec : Prop :=
  ∀ n, P1454637661752536403.a n = A038306 n

end A038306

/-! ## A038306.P15669299803730550942

`Δ[A007664(n)]*A038244(n)`
-/

namespace A038306.P15669299803730550942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038244 n

end

end A038306.P15669299803730550942

namespace A038306

/-- `Δ[A007664(n)]*A038244(n)` -/
def P15669299803730550942.Spec : Prop :=
  ∀ n, P15669299803730550942.a n = A038306 n

end A038306

/-! ## A038306.P17929742827240656071

`2^A025581(n)*A038246(n)`
-/

namespace A038306.P17929742827240656071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A038246 n : ℚ)

end

end A038306.P17929742827240656071

namespace A038306

/-- `2^A025581(n)*A038246(n)` -/
def P17929742827240656071.Spec : Prop :=
  ∀ n, P17929742827240656071.a n = (A038306 n : ℚ)

end A038306

/-! ## A038306.P16936507719898693492

`A038304(n)/A038303(n)*A038304(n)`
-/

namespace A038306.P16936507719898693492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n : ℚ) / (A038303 n : ℚ) * (A038304 n : ℚ)

end

end A038306.P16936507719898693492

namespace A038306

/-- `A038304(n)/A038303(n)*A038304(n)` -/
def P16936507719898693492.Spec : Prop :=
  ∀ n, P16936507719898693492.a n = (A038306 n : ℚ)

end A038306

/-! ## A038306.P7584980268926634389

`A038240(A061579(n))`
-/

namespace A038306.P7584980268926634389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038240 (A061579 n).toNat

end

end A038306.P7584980268926634389

namespace A038306

/-- `A038240(A061579(n))` -/
def P7584980268926634389.Spec : Prop :=
  ∀ n, P7584980268926634389.a n = A038306 n

end A038306

/-! ## A038306.P17232255164207512452

`A038310(n)/A059268(n)`
-/

namespace A038306.P17232255164207512452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038310 n : ℚ) / (A059268 n : ℚ)

end

end A038306.P17232255164207512452

namespace A038306

/-- `A038310(n)/A059268(n)` -/
def P17232255164207512452.Spec : Prop :=
  ∀ n, P17232255164207512452.a n = (A038306 n : ℚ)

end A038306

/-! ## A038306.P11679045813256347193

`sqrt(A038304(n))*sqrt(A038310(n))`
-/

namespace A038306.P11679045813256347193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038304 n : ℝ) * Real.sqrt (A038310 n : ℝ)

end

end A038306.P11679045813256347193

namespace A038306

/-- `sqrt(A038304(n))*sqrt(A038310(n))` -/
def P11679045813256347193.Spec : Prop :=
  ∀ n, P11679045813256347193.a n = (A038306 n : ℝ)

end A038306

/-! ## A038306.P6971193058240175558

`A038308(n)/A038311(n)*A038308(n)`
-/

namespace A038306.P6971193058240175558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A038311 n : ℚ) * (A038308 n : ℚ)

end

end A038306.P6971193058240175558

namespace A038306

/-- `A038308(n)/A038311(n)*A038308(n)` -/
def P6971193058240175558.Spec : Prop :=
  ∀ n, P6971193058240175558.a n = (A038306 n : ℚ)

end A038306

/-! ## A038306.P12743506954896982687

`gcd(A038310(n), A038314(n))`
-/

namespace A038306.P12743506954896982687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038310 n) (A038314 n)

end

end A038306.P12743506954896982687

namespace A038306

/-- `gcd(A038310(n), A038314(n))` -/
def P12743506954896982687.Spec : Prop :=
  ∀ n, (P12743506954896982687.a n : ℤ) = A038306 n

end A038306

/-! ## A038306.P13406652703904063722

`A038304(n)²/A038303(n)`
-/

namespace A038306.P13406652703904063722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n ^ 2 : ℚ) / (A038303 n : ℚ)

end

end A038306.P13406652703904063722

namespace A038306

/-- `A038304(n)²/A038303(n)` -/
def P13406652703904063722.Spec : Prop :=
  ∀ n, P13406652703904063722.a n = (A038306 n : ℚ)

end A038306

/-! ## A038306.P8685926650793731406

`A038304(n)²/gcd(A038304(n), A038305(n))`
-/

namespace A038306.P8685926650793731406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038304 n ^ 2 : ℚ) / (Int.gcd (A038304 n) (A038305 n) : ℚ)

end

end A038306.P8685926650793731406

namespace A038306

/-- `A038304(n)²/gcd(A038304(n), A038305(n))` -/
def P8685926650793731406.Spec : Prop :=
  ∀ n, P8685926650793731406.a n = (A038306 n : ℚ)

end A038306

/-! ## A038306.P5528202293284253608

`sqrt(A038304(n)*A038310(n))`
-/

namespace A038306.P5528202293284253608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038304 n * A038310 n : ℝ)

end

end A038306.P5528202293284253608

namespace A038306

/-- `sqrt(A038304(n)*A038310(n))` -/
def P5528202293284253608.Spec : Prop :=
  ∀ n, P5528202293284253608.a n = (A038306 n : ℝ)

end A038306

/-! ## A038306.P2330150833544095323

`A038308(n)²/A038311(n)`
-/

namespace A038306.P2330150833544095323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n ^ 2 : ℚ) / (A038311 n : ℚ)

end

end A038306.P2330150833544095323

namespace A038306

/-- `A038308(n)²/A038311(n)` -/
def P2330150833544095323.Spec : Prop :=
  ∀ n, P2330150833544095323.a n = (A038306 n : ℚ)

end A038306

/-!
# A038307: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*5^j.

The programs for A038307, the canonical program `A038307.P4193007568946257475` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038307 has offset 0).

The definition of A038307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038307.P4193007568946257475

`A038247(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038307

/-- `A038247(n)*A130321(n)` -/
def P4193007568946257475.Spec : Prop :=
  ∀ n, P4193007568946257475.a n = A038307 n

theorem P4193007568946257475.correct : P4193007568946257475.Spec := by
  intro n
  simp only [A038307]

end A038307

/-! ## A038307.P15629768472093516611

`lcm(A013621(n), A038247(n))`
-/

namespace A038307.P15629768472093516611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013621 n) (A038247 n)

end

end A038307.P15629768472093516611

namespace A038307

/-- `lcm(A013621(n), A038247(n))` -/
def P15629768472093516611.Spec : Prop :=
  ∀ n, (P15629768472093516611.a n : ℤ) = A038307 n

end A038307

/-! ## A038307.P1042776104960383453

`sqrt(A262616(n))*A038247(n)`
-/

namespace A038307.P1042776104960383453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A038247 n : ℝ)

end

end A038307.P1042776104960383453

namespace A038307

/-- `sqrt(A262616(n))*A038247(n)` -/
def P1042776104960383453.Spec : Prop :=
  ∀ n, P1042776104960383453.a n = (A038307 n : ℝ)

end A038307

/-! ## A038307.P11050666850435101070

`Δ[A259669(n)]*A038207(n)`
-/

namespace A038307.P11050666850435101070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038207 n

end

end A038307.P11050666850435101070

namespace A038307

/-- `Δ[A259669(n)]*A038207(n)` -/
def P11050666850435101070.Spec : Prop :=
  ∀ n, P11050666850435101070.a n = A038307 n

end A038307

/-! ## A038307.P9846070307292222105

`A038243(n)*A232646(n+1)`
-/

namespace A038307.P9846070307292222105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A232646 (n + 1)

end

end A038307.P9846070307292222105

namespace A038307

/-- `A038243(n)*A232646(n+1)` -/
def P9846070307292222105.Spec : Prop :=
  ∀ n, P9846070307292222105.a n = A038307 n

end A038307

/-! ## A038307.P5311670175280054423

`A038252(A061579(n))`
-/

namespace A038307.P5311670175280054423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038252 (A061579 n).toNat

end

end A038307.P5311670175280054423

namespace A038307

/-- `A038252(A061579(n))` -/
def P5311670175280054423.Spec : Prop :=
  ∀ n, P5311670175280054423.a n = A038307 n

end A038307

/-! ## A038307.P1778529214140120387

`A038312(n)/A059268(n)`
-/

namespace A038307.P1778529214140120387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038312 n : ℚ) / (A059268 n : ℚ)

end

end A038307.P1778529214140120387

namespace A038307

/-- `A038312(n)/A059268(n)` -/
def P1778529214140120387.Spec : Prop :=
  ∀ n, P1778529214140120387.a n = (A038307 n : ℚ)

end A038307

/-!
# A038308: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*6^j.

The programs for A038308, the canonical program `A038308.P13048394951449472334` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038308 has offset 0).

The definition of A038308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038308.P13048394951449472334

`A036561(n)*A038244(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038308

/-- `A036561(n)*A038244(n)` -/
def P13048394951449472334.Spec : Prop :=
  ∀ n, P13048394951449472334.a n = A038308 n

theorem P13048394951449472334.correct : P13048394951449472334.Spec := by
  intro n
  simp only [A038308]

end A038308

/-! ## A038308.P1269958735266766646

`A038305(n)*A059268(n)`
-/

namespace A038308.P1269958735266766646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038305 n * A059268 n

end

end A038308.P1269958735266766646

namespace A038308

/-- `A038305(n)*A059268(n)` -/
def P1269958735266766646.Spec : Prop :=
  ∀ n, P1269958735266766646.a n = A038308 n

end A038308

/-! ## A038308.P18026896324755761773

`A038243(n)*A100851(n)`
-/

namespace A038308.P18026896324755761773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A100851 n

end

end A038308.P18026896324755761773

namespace A038308

/-- `A038243(n)*A100851(n)` -/
def P18026896324755761773.Spec : Prop :=
  ∀ n, P18026896324755761773.a n = A038308 n

end A038308

/-! ## A038308.P15809194629642086424

`A038248(n)*A130321(n)`
-/

namespace A038308.P15809194629642086424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038248 n * A130321 n

end

end A038308.P15809194629642086424

namespace A038308

/-- `A038248(n)*A130321(n)` -/
def P15809194629642086424.Spec : Prop :=
  ∀ n, P15809194629642086424.a n = A038308 n

end A038308

/-! ## A038308.P2572539777546846063

`A038245(n)*A137688(n)`
-/

namespace A038308.P2572539777546846063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038245 n * A137688 n

end

end A038308.P2572539777546846063

namespace A038308

/-- `A038245(n)*A137688(n)` -/
def P2572539777546846063.Spec : Prop :=
  ∀ n, P2572539777546846063.a n = A038308 n

end A038308

/-! ## A038308.P4777027380652141681

`lcm(A013610(n), A038304(n))`
-/

namespace A038308.P4777027380652141681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038304 n)

end

end A038308.P4777027380652141681

namespace A038308

/-- `lcm(A013610(n), A038304(n))` -/
def P4777027380652141681.Spec : Prop :=
  ∀ n, (P4777027380652141681.a n : ℤ) = A038308 n

end A038308

/-! ## A038308.P16721584002389088525

`lcm(A038208(n), A038245(n))`
-/

namespace A038308.P16721584002389088525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038208 n) (A038245 n)

end

end A038308.P16721584002389088525

namespace A038308

/-- `lcm(A038208(n), A038245(n))` -/
def P16721584002389088525.Spec : Prop :=
  ∀ n, (P16721584002389088525.a n : ℤ) = A038308 n

end A038308

/-! ## A038308.P1353100579320652492

`lcm(A038212(n), A038243(n))`
-/

namespace A038308.P1353100579320652492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038212 n) (A038243 n)

end

end A038308.P1353100579320652492

namespace A038308

/-- `lcm(A038212(n), A038243(n))` -/
def P1353100579320652492.Spec : Prop :=
  ∀ n, (P1353100579320652492.a n : ℤ) = A038308 n

end A038308

/-! ## A038308.P18368721268341300597

`2^A002262(n)*A038305(n)`
-/

namespace A038308.P18368721268341300597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A038305 n : ℚ)

end

end A038308.P18368721268341300597

namespace A038308

/-- `2^A002262(n)*A038305(n)` -/
def P18368721268341300597.Spec : Prop :=
  ∀ n, P18368721268341300597.a n = (A038308 n : ℚ)

end A038308

/-! ## A038308.P8581058410908881133

`A038264(A061579(n))`
-/

namespace A038308.P8581058410908881133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038264 (A061579 n).toNat

end

end A038308.P8581058410908881133

namespace A038308

/-- `A038264(A061579(n))` -/
def P8581058410908881133.Spec : Prop :=
  ∀ n, P8581058410908881133.a n = A038308 n

end A038308

/-! ## A038308.P11881472875708304142

`sqrt(A038306(n))*sqrt(A038311(n))`
-/

namespace A038308.P11881472875708304142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038306 n : ℝ) * Real.sqrt (A038311 n : ℝ)

end

end A038308.P11881472875708304142

namespace A038308

/-- `sqrt(A038306(n))*sqrt(A038311(n))` -/
def P11881472875708304142.Spec : Prop :=
  ∀ n, P11881472875708304142.a n = (A038308 n : ℝ)

end A038308

/-! ## A038308.P14720304101618071969

`A038314(n)/A059268(n)`
-/

namespace A038308.P14720304101618071969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A059268 n : ℚ)

end

end A038308.P14720304101618071969

namespace A038308

/-- `A038314(n)/A059268(n)` -/
def P14720304101618071969.Spec : Prop :=
  ∀ n, P14720304101618071969.a n = (A038308 n : ℚ)

end A038308

/-! ## A038308.P265611725138598921

`sqrt(A038305(n))*sqrt(A038314(n))`
-/

namespace A038308.P265611725138598921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038305 n : ℝ) * Real.sqrt (A038314 n : ℝ)

end

end A038308.P265611725138598921

namespace A038308

/-- `sqrt(A038305(n))*sqrt(A038314(n))` -/
def P265611725138598921.Spec : Prop :=
  ∀ n, P265611725138598921.a n = (A038308 n : ℝ)

end A038308

/-! ## A038308.P17257096853279571337

`sqrt(A038305(n)*A038314(n))`
-/

namespace A038308.P17257096853279571337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038305 n * A038314 n : ℝ)

end

end A038308.P17257096853279571337

namespace A038308

/-- `sqrt(A038305(n)*A038314(n))` -/
def P17257096853279571337.Spec : Prop :=
  ∀ n, P17257096853279571337.a n = (A038308 n : ℝ)

end A038308

/-! ## A038308.P14072554731101561748

`sqrt(A038306(n)*A038311(n))`
-/

namespace A038308.P14072554731101561748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038306 n * A038311 n : ℝ)

end

end A038308.P14072554731101561748

namespace A038308

/-- `sqrt(A038306(n)*A038311(n))` -/
def P14072554731101561748.Spec : Prop :=
  ∀ n, P14072554731101561748.a n = (A038308 n : ℝ)

end A038308

/-! ## A038308.P138894542469611403

`gcd(A038314(n)²/A038310(n), A038314(n))`
-/

namespace A038308.P138894542469611403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038314 n ^ 2 : ℚ) / (A038310 n : ℚ))) (A038314 n)

end

end A038308.P138894542469611403

namespace A038308

/-- `gcd(A038314(n)²/A038310(n), A038314(n))` -/
def P138894542469611403.Spec : Prop :=
  ∀ n, (P138894542469611403.a n : ℤ) = A038308 n

end A038308

/-!
# A038309: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*7^j.

The programs for A038309, the canonical program `A038309.P12037403270942558099` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038309 has offset 0).

The definition of A038309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038309.P12037403270942558099

`A036565(n)*A038243(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038309

/-- `A036565(n)*A038243(n)` -/
def P12037403270942558099.Spec : Prop :=
  ∀ n, P12037403270942558099.a n = A038309 n

theorem P12037403270942558099.correct : P12037403270942558099.Spec := by
  intro n
  simp only [A038309]

end A038309

/-! ## A038309.P5124297314046230767

`A013626(n)*A130321(n)`
-/

namespace A038309.P5124297314046230767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013626 n * A130321 n

end

end A038309.P5124297314046230767

namespace A038309

/-- `A013626(n)*A130321(n)` -/
def P5124297314046230767.Spec : Prop :=
  ∀ n, P5124297314046230767.a n = A038309 n

end A038309

/-! ## A038309.P13998591867651893770

`lcm(A013623(n), A013626(n))`
-/

namespace A038309.P13998591867651893770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013623 n) (A013626 n)

end

end A038309.P13998591867651893770

namespace A038309

/-- `lcm(A013623(n), A013626(n))` -/
def P13998591867651893770.Spec : Prop :=
  ∀ n, (P13998591867651893770.a n : ℤ) = A038309 n

end A038309

/-! ## A038309.P6365926876678947827

`lcm(A013614(n), A038303(n))`
-/

namespace A038309.P6365926876678947827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038303 n)

end

end A038309.P6365926876678947827

namespace A038309

/-- `lcm(A013614(n), A038303(n))` -/
def P6365926876678947827.Spec : Prop :=
  ∀ n, (P6365926876678947827.a n : ℤ) = A038309 n

end A038309

/-! ## A038309.P13904648661334705707

`sqrt(A262616(n))*A013626(n)`
-/

namespace A038309.P13904648661334705707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A013626 n : ℝ)

end

end A038309.P13904648661334705707

namespace A038309

/-- `sqrt(A262616(n))*A013626(n)` -/
def P13904648661334705707.Spec : Prop :=
  ∀ n, P13904648661334705707.a n = (A038309 n : ℝ)

end A038309

/-! ## A038309.P15156733154915916413

`A038276(A061579(n))`
-/

namespace A038309.P15156733154915916413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038276 (A061579 n).toNat

end

end A038309.P15156733154915916413

namespace A038309

/-- `A038276(A061579(n))` -/
def P15156733154915916413.Spec : Prop :=
  ∀ n, P15156733154915916413.a n = A038309 n

end A038309

/-!
# A038310: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*8^j.

The programs for A038310, the canonical program `A038310.P6116586220362870793` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038310 has offset 0).

The definition of A038310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038310.P6116586220362870793

`A038306(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038310

/-- `A038306(n)*A059268(n)` -/
def P6116586220362870793.Spec : Prop :=
  ∀ n, P6116586220362870793.a n = A038310 n

theorem P6116586220362870793.correct : P6116586220362870793.Spec := by
  intro n
  simp only [A038310]

end A038310

/-! ## A038310.P15031619278802430626

`A038250(n)*A130321(n)`
-/

namespace A038310.P15031619278802430626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038250 n * A130321 n

end

end A038310.P15031619278802430626

namespace A038310

/-- `A038250(n)*A130321(n)` -/
def P15031619278802430626.Spec : Prop :=
  ∀ n, P15031619278802430626.a n = A038310 n

theorem P15031619278802430626.correct : P15031619278802430626.Spec := by
  intro n
  simp only [A038310, Nat.add_sub_cancel, A038310.P15031619278802430626.a, A038310.P6116586220362870793.a, A038250, A038250.P15038229439455009426.a, A038306, A038306.P5805800662738392835.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A038246, A038246.P15260867033814283851.a, A038304, A038304.P16871392387466480336.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A038244, A038244.P8625253642017748950.a, A137688, A137688.P9746695207037186753.a, A000351, A000351.P3157381177678935815.a, A003056, A003056.P5318256527314048597.a, A013609, A013609.P14824901554590578180.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038310

/-! ## A038310.P5445486236406814409

`A038246(n)*A137688(n)`
-/

namespace A038310.P5445486236406814409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038246 n * A137688 n

end

end A038310.P5445486236406814409

namespace A038310

/-- `A038246(n)*A137688(n)` -/
def P5445486236406814409.Spec : Prop :=
  ∀ n, P5445486236406814409.a n = A038310 n

end A038310

/-! ## A038310.P16982493630018053654

`A038244(n)*A368043(n)`
-/

namespace A038310.P16982493630018053654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A368043 n

end

end A038310.P16982493630018053654

namespace A038310

/-- `A038244(n)*A368043(n)` -/
def P16982493630018053654.Spec : Prop :=
  ∀ n, P16982493630018053654.a n = A038310 n

end A038310

/-! ## A038310.P12633794128476972531

`lcm(A038214(n), A038243(n))`
-/

namespace A038310.P12633794128476972531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038214 n) (A038243 n)

end

end A038310.P12633794128476972531

namespace A038310

/-- `lcm(A038214(n), A038243(n))` -/
def P12633794128476972531.Spec : Prop :=
  ∀ n, (P12633794128476972531.a n : ℤ) = A038310 n

end A038310

/-! ## A038310.P1469113185123621368

`A059268(n)²*A038304(n)`
-/

namespace A038310.P1469113185123621368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038304 n

end

end A038310.P1469113185123621368

namespace A038310

/-- `A059268(n)²*A038304(n)` -/
def P1469113185123621368.Spec : Prop :=
  ∀ n, P1469113185123621368.a n = A038310 n

theorem P1469113185123621368.correct : P1469113185123621368.Spec := by
  intro n
  simp only [A038310, Nat.add_sub_cancel, A038310.P1469113185123621368.a, A038310.P6116586220362870793.a, A038304, A038304.P16871392387466480336.a, A038306, A038306.P5805800662738392835.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A038244, A038244.P8625253642017748950.a, A130321, A130321.P54397649261359622.a, A140513, A140513.P13579608035938851890.a, A000351, A000351.P3157381177678935815.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A013609, A013609.P14824901554590578180.a, A025581, A025581.P16112744757063613497.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038310

/-! ## A038310.P7979373495466861030

`Δ[A007664(n)]*A038246(n)`
-/

namespace A038310.P7979373495466861030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038246 n

end

end A038310.P7979373495466861030

namespace A038310

/-- `Δ[A007664(n)]*A038246(n)` -/
def P7979373495466861030.Spec : Prop :=
  ∀ n, P7979373495466861030.a n = A038310 n

end A038310

/-! ## A038310.P5175355287260300827

`A038306(n)/A038304(n)*A038306(n)`
-/

namespace A038310.P5175355287260300827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n : ℚ) / (A038304 n : ℚ) * (A038306 n : ℚ)

end

end A038310.P5175355287260300827

namespace A038310

/-- `A038306(n)/A038304(n)*A038306(n)` -/
def P5175355287260300827.Spec : Prop :=
  ∀ n, P5175355287260300827.a n = (A038310 n : ℚ)

end A038310

/-! ## A038310.P10512837907960490219

`A038303(n)*A059268(n)*A059268(n)²`
-/

namespace A038310.P10512837907960490219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n * A059268 n * A059268 n ^ 2

end

end A038310.P10512837907960490219

namespace A038310

/-- `A038303(n)*A059268(n)*A059268(n)²` -/
def P10512837907960490219.Spec : Prop :=
  ∀ n, P10512837907960490219.a n = A038310 n

end A038310

/-! ## A038310.P4142539629183322056

`(A038304(n)/A038303(n))²*A038304(n)`
-/

namespace A038310.P4142539629183322056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038304 n : ℚ) / (A038303 n : ℚ)) ^ 2 * (A038304 n : ℚ)

end

end A038310.P4142539629183322056

namespace A038310

/-- `(A038304(n)/A038303(n))²*A038304(n)` -/
def P4142539629183322056.Spec : Prop :=
  ∀ n, P4142539629183322056.a n = (A038310 n : ℚ)

end A038310

/-! ## A038310.P12861289433707194325

`sqrt(A038306(n)/A038303(n))*A038306(n)`
-/

namespace A038310.P12861289433707194325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A038306 n : ℚ) / (A038303 n : ℚ) : ℝ) * (A038306 n : ℝ)

end

end A038310.P12861289433707194325

namespace A038310

/-- `sqrt(A038306(n)/A038303(n))*A038306(n)` -/
def P12861289433707194325.Spec : Prop :=
  ∀ n, P12861289433707194325.a n = (A038310 n : ℝ)

end A038310

/-! ## A038310.P5326196680138725998

`A038288(A061579(n))`
-/

namespace A038310.P5326196680138725998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038288 (A061579 n).toNat

end

end A038310.P5326196680138725998

namespace A038310

/-- `A038288(A061579(n))` -/
def P5326196680138725998.Spec : Prop :=
  ∀ n, P5326196680138725998.a n = A038310 n

end A038310

/-! ## A038310.P15217397896842262932

`A038306(n)²/A038304(n)`
-/

namespace A038310.P15217397896842262932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n ^ 2 : ℚ) / (A038304 n : ℚ)

end

end A038310.P15217397896842262932

namespace A038310

/-- `A038306(n)²/A038304(n)` -/
def P15217397896842262932.Spec : Prop :=
  ∀ n, P15217397896842262932.a n = (A038310 n : ℚ)

end A038310

/-! ## A038310.P15239676463141580641

`A038306(n)²/gcd(A038306(n), A038308(n))`
-/

namespace A038310.P15239676463141580641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038306 n ^ 2 : ℚ) / (Int.gcd (A038306 n) (A038308 n) : ℚ)

end

end A038310.P15239676463141580641

namespace A038310

/-- `A038306(n)²/gcd(A038306(n), A038308(n))` -/
def P15239676463141580641.Spec : Prop :=
  ∀ n, P15239676463141580641.a n = (A038310 n : ℚ)

end A038310

/-!
# A038311: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*9^j.

The programs for A038311, the canonical program `A038311.P7291639214337696738` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038311 has offset 0).

The definition of A038311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038311.P18181313480710631065

`A036561(n)*A038245(n)`
-/

namespace A038311.P18181313480710631065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038245 n

end

end A038311.P18181313480710631065

namespace A038311

/-- `A036561(n)*A038245(n)` -/
def P18181313480710631065.Spec : Prop :=
  ∀ n, P18181313480710631065.a n = A038311 n

end A038311

/-! ## A038311.P7291639214337696738

`A038251(n)*A130321(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038311

/-- `A038251(n)*A130321(n)` -/
def P7291639214337696738.Spec : Prop :=
  ∀ n, P7291639214337696738.a n = A038311 n

theorem P7291639214337696738.correct : P7291639214337696738.Spec := by
  intro n
  simp only [A038311]

end A038311

/-! ## A038311.P5723246523095358072

`lcm(A013620(n), A038251(n))`
-/

namespace A038311.P5723246523095358072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013620 n) (A038251 n)

end

end A038311.P5723246523095358072

namespace A038311

/-- `lcm(A013620(n), A038251(n))` -/
def P5723246523095358072.Spec : Prop :=
  ∀ n, (P5723246523095358072.a n : ℤ) = A038311 n

end A038311

/-! ## A038311.P18359590229421776914

`lcm(A013616(n), A038303(n))`
-/

namespace A038311.P18359590229421776914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013616 n) (A038303 n)

end

end A038311.P18359590229421776914

namespace A038311

/-- `lcm(A013616(n), A038303(n))` -/
def P18359590229421776914.Spec : Prop :=
  ∀ n, (P18359590229421776914.a n : ℤ) = A038311 n

end A038311

/-! ## A038311.P5683282192247517770

`lcm(A038215(n), A038243(n))`
-/

namespace A038311.P5683282192247517770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038215 n) (A038243 n)

end

end A038311.P5683282192247517770

namespace A038311

/-- `lcm(A038215(n), A038243(n))` -/
def P5683282192247517770.Spec : Prop :=
  ∀ n, (P5683282192247517770.a n : ℤ) = A038311 n

end A038311

/-! ## A038311.P931720882516837199

`A000244(A002262(n))*A038305(n)`
-/

namespace A038311.P931720882516837199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A038305 n

end

end A038311.P931720882516837199

namespace A038311

/-- `A000244(A002262(n))*A038305(n)` -/
def P931720882516837199.Spec : Prop :=
  ∀ n, P931720882516837199.a n = A038311 n

end A038311

/-! ## A038311.P9780302840488174184

`A140303(A112367(n))²*A038303(n)`
-/

namespace A038311.P9780302840488174184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A112367 n).toNat ^ 2 * A038303 n

end

end A038311.P9780302840488174184

namespace A038311

/-- `A140303(A112367(n))²*A038303(n)` -/
def P9780302840488174184.Spec : Prop :=
  ∀ n, P9780302840488174184.a n = A038311 n

end A038311

/-! ## A038311.P6398585320899663253

`A038305(n)/A038303(n)*A038305(n)`
-/

namespace A038311.P6398585320899663253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038305 n : ℚ) / (A038303 n : ℚ) * (A038305 n : ℚ)

end

end A038311.P6398585320899663253

namespace A038311

/-- `A038305(n)/A038303(n)*A038305(n)` -/
def P6398585320899663253.Spec : Prop :=
  ∀ n, P6398585320899663253.a n = (A038311 n : ℚ)

end A038311

/-! ## A038311.P15712755466035267706

`A038308(n)/A038306(n)*A038308(n)`
-/

namespace A038311.P15712755466035267706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A038306 n : ℚ) * (A038308 n : ℚ)

end

end A038311.P15712755466035267706

namespace A038311

/-- `A038308(n)/A038306(n)*A038308(n)` -/
def P15712755466035267706.Spec : Prop :=
  ∀ n, P15712755466035267706.a n = (A038311 n : ℚ)

end A038311

/-! ## A038311.P1461926140834108539

`A038300(A061579(n))`
-/

namespace A038311.P1461926140834108539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038300 (A061579 n).toNat

end

end A038311.P1461926140834108539

namespace A038311

/-- `A038300(A061579(n))` -/
def P1461926140834108539.Spec : Prop :=
  ∀ n, P1461926140834108539.a n = A038311 n

end A038311

/-! ## A038311.P7500887795421550373

`A038305(n)²/A038303(n)`
-/

namespace A038311.P7500887795421550373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038305 n ^ 2 : ℚ) / (A038303 n : ℚ)

end

end A038311.P7500887795421550373

namespace A038311

/-- `A038305(n)²/A038303(n)` -/
def P7500887795421550373.Spec : Prop :=
  ∀ n, P7500887795421550373.a n = (A038311 n : ℚ)

end A038311

/-! ## A038311.P5953032481678574368

`A038305(n)²/gcd(A038304(n), A038305(n))`
-/

namespace A038311.P5953032481678574368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038305 n ^ 2 : ℚ) / (Int.gcd (A038304 n) (A038305 n) : ℚ)

end

end A038311.P5953032481678574368

namespace A038311

/-- `A038305(n)²/gcd(A038304(n), A038305(n))` -/
def P5953032481678574368.Spec : Prop :=
  ∀ n, P5953032481678574368.a n = (A038311 n : ℚ)

end A038311

/-! ## A038311.P6791805972760837239

`A038308(n)²/A038306(n)`
-/

namespace A038311.P6791805972760837239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n ^ 2 : ℚ) / (A038306 n : ℚ)

end

end A038311.P6791805972760837239

namespace A038311

/-- `A038308(n)²/A038306(n)` -/
def P6791805972760837239.Spec : Prop :=
  ∀ n, P6791805972760837239.a n = (A038311 n : ℚ)

end A038311

/-!
# A038312: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*10^j.

The programs for A038312, the canonical program `A038312.P16927072279910717967` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038312 has offset 0).

The definition of A038312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038312.P16927072279910717967

`A038307(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038312

/-- `A038307(n)*A059268(n)` -/
def P16927072279910717967.Spec : Prop :=
  ∀ n, P16927072279910717967.a n = A038312 n

theorem P16927072279910717967.correct : P16927072279910717967.Spec := by
  intro n
  simp only [A038312]

end A038312

/-! ## A038312.P4642696873345555070

`A038252(n)*A130321(n)`
-/

namespace A038312.P4642696873345555070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038252 n * A130321 n

end

end A038312.P4642696873345555070

namespace A038312

/-- `A038252(n)*A130321(n)` -/
def P4642696873345555070.Spec : Prop :=
  ∀ n, P4642696873345555070.a n = A038312 n

theorem P4642696873345555070.correct : P4642696873345555070.Spec := by
  intro n
  simp only [A038312, Nat.add_sub_cancel, A038312.P4642696873345555070.a, A038312.P16927072279910717967.a, A038252, A038252.P12906081018445517339.a, A038307, A038307.P4193007568946257475.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A038247, A038247.P6184106318051769325.a, A140513, A140513.P13579608035938851890.a, A000351, A000351.P3157381177678935815.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, A007318, A007318.P11755526479805562006.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038312

/-! ## A038312.P3727445338291286809

`A038247(n)*A137688(n)`
-/

namespace A038312.P3727445338291286809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038247 n * A137688 n

end

end A038312.P3727445338291286809

namespace A038312

/-- `A038247(n)*A137688(n)` -/
def P3727445338291286809.Spec : Prop :=
  ∀ n, P3727445338291286809.a n = A038312 n

end A038312

/-! ## A038312.P16740938298757342796

`lcm(A038208(n), A038247(n))`
-/

namespace A038312.P16740938298757342796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038208 n) (A038247 n)

end

end A038312.P16740938298757342796

namespace A038312

/-- `lcm(A038208(n), A038247(n))` -/
def P16740938298757342796.Spec : Prop :=
  ∀ n, (P16740938298757342796.a n : ℤ) = A038312 n

end A038312

/-! ## A038312.P7484112790338968356

`lcm(A038216(n), A038252(n))`
-/

namespace A038312.P7484112790338968356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038216 n) (A038252 n)

end

end A038312.P7484112790338968356

namespace A038312

/-- `lcm(A038216(n), A038252(n))` -/
def P7484112790338968356.Spec : Prop :=
  ∀ n, (P7484112790338968356.a n : ℤ) = A038312 n

end A038312

/-! ## A038312.P10998309039245801495

`lcm(A038304(n), A038307(n))`
-/

namespace A038312.P10998309039245801495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038304 n) (A038307 n)

end

end A038312.P10998309039245801495

namespace A038312

/-- `lcm(A038304(n), A038307(n))` -/
def P10998309039245801495.Spec : Prop :=
  ∀ n, (P10998309039245801495.a n : ℤ) = A038312 n

end A038312

/-! ## A038312.P8733587545534101673

`A038244(n)*A232646(n+1)`
-/

namespace A038312.P8733587545534101673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A232646 (n + 1)

end

end A038312.P8733587545534101673

namespace A038312

/-- `A038244(n)*A232646(n+1)` -/
def P8733587545534101673.Spec : Prop :=
  ∀ n, P8733587545534101673.a n = A038312 n

end A038312

/-! ## A038312.P16733296052042544281

`5^A003056(n)*A038208(n)`
-/

namespace A038312.P16733296052042544281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A003056 n : ℤ) * (A038208 n : ℚ)

end

end A038312.P16733296052042544281

namespace A038312

/-- `5^A003056(n)*A038208(n)` -/
def P16733296052042544281.Spec : Prop :=
  ∀ n, P16733296052042544281.a n = (A038312 n : ℚ)

end A038312

/-! ## A038312.P6154600142618286859

`10^A003056(n)*A007318(n)`
-/

namespace A038312.P6154600142618286859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A038312.P6154600142618286859

namespace A038312

/-- `10^A003056(n)*A007318(n)` -/
def P6154600142618286859.Spec : Prop :=
  ∀ n, P6154600142618286859.a n = (A038312 n : ℚ)

end A038312

/-! ## A038312.P15144717552417431552

`A007318(n)*A011557(A003056(n))`
-/

namespace A038312.P15144717552417431552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011557 (A003056 n).toNat

end

end A038312.P15144717552417431552

namespace A038312

/-- `A007318(n)*A011557(A003056(n))` -/
def P15144717552417431552.Spec : Prop :=
  ∀ n, P15144717552417431552.a n = A038312 n

end A038312

/-! ## A038312.P1273263504259448010

`A038303(n)*A038303(A112367(n))`
-/

namespace A038312.P1273263504259448010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 n * A038303 (A112367 n).toNat

end

end A038312.P1273263504259448010

namespace A038312

/-- `A038303(n)*A038303(A112367(n))` -/
def P1273263504259448010.Spec : Prop :=
  ∀ n, P1273263504259448010.a n = A038312 n

end A038312

/-! ## A038312.P16379902083974439964

`A007318(n)*A011557(∑[A073424(n)])`
-/

namespace A038312.P16379902083974439964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011557 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038312.P16379902083974439964

namespace A038312

/-- `A007318(n)*A011557(∑[A073424(n)])` -/
def P16379902083974439964.Spec : Prop :=
  ∀ n, P16379902083974439964.a n = A038312 n

end A038312

/-! ## A038312.P13750593464063630869

`ceil(A134059(n)/3)*A011557(A003056(n))`
-/

namespace A038312.P13750593464063630869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A011557 (A003056 n).toNat

end

end A038312.P13750593464063630869

namespace A038312

/-- `ceil(A134059(n)/3)*A011557(A003056(n))` -/
def P13750593464063630869.Spec : Prop :=
  ∀ n, P13750593464063630869.a n = A038312 n

end A038312

/-! ## A038312.P1062746771189953458

`ceil(A135087(n)/4)*A011557(A003056(n))`
-/

namespace A038312.P1062746771189953458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A011557 (A003056 n).toNat

end

end A038312.P1062746771189953458

namespace A038312

/-- `ceil(A135087(n)/4)*A011557(A003056(n))` -/
def P1062746771189953458.Spec : Prop :=
  ∀ n, P1062746771189953458.a n = A038312 n

end A038312

/-! ## A038312.P16500818221215977595

`ceil(A135089(n)/5)*A011557(A003056(n))`
-/

namespace A038312.P16500818221215977595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A011557 (A003056 n).toNat

end

end A038312.P16500818221215977595

namespace A038312

/-- `ceil(A135089(n)/5)*A011557(A003056(n))` -/
def P16500818221215977595.Spec : Prop :=
  ∀ n, P16500818221215977595.a n = A038312 n

end A038312

/-! ## A038312.P8731408461537764891

`A134059(A028310(n))/3*A011557(A003056(n))`
-/

namespace A038312.P8731408461537764891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A011557 (A003056 n).toNat : ℚ)

end

end A038312.P8731408461537764891

namespace A038312

/-- `A134059(A028310(n))/3*A011557(A003056(n))` -/
def P8731408461537764891.Spec : Prop :=
  ∀ n, P8731408461537764891.a n = (A038312 n : ℚ)

end A038312

/-! ## A038312.P14190066557560638204

`(A285118(n)+A285116(n))*A011557(A003056(n))`
-/

namespace A038312.P14190066557560638204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A011557 (A003056 n).toNat

end

end A038312.P14190066557560638204

namespace A038312

/-- `(A285118(n)+A285116(n))*A011557(A003056(n))` -/
def P14190066557560638204.Spec : Prop :=
  ∀ n, P14190066557560638204.a n = A038312 n

end A038312

/-! ## A038312.P16839895870121419503

`ceil(A134060(n)/3)*A011557(A003056(n))`
-/

namespace A038312.P16839895870121419503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A011557 (A003056 n).toNat

end

end A038312.P16839895870121419503

namespace A038312

/-- `ceil(A134060(n)/3)*A011557(A003056(n))` -/
def P16839895870121419503.Spec : Prop :=
  ∀ n, P16839895870121419503.a n = A038312 n

end A038312

/-!
# A038313: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*11^j.

The programs for A038313, the canonical program `A038313.P14065364112438360125` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038313 has offset 0).

The definition of A038313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038313.P14065364112438360125

`A038253(n)*A130321(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038313

/-- `A038253(n)*A130321(n)` -/
def P14065364112438360125.Spec : Prop :=
  ∀ n, P14065364112438360125.a n = A038313 n

theorem P14065364112438360125.correct : P14065364112438360125.Spec := by
  intro n
  simp only [A038313]

end A038313

/-! ## A038313.P663888749721906966

`lcm(A013618(n), A038303(n))`
-/

namespace A038313.P663888749721906966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038303 n)

end

end A038313.P663888749721906966

namespace A038313

/-- `lcm(A013618(n), A038303(n))` -/
def P663888749721906966.Spec : Prop :=
  ∀ n, (P663888749721906966.a n : ℤ) = A038313 n

end A038313

/-! ## A038313.P9375729733763562362

`lcm(A038207(n), A038253(n))`
-/

namespace A038313.P9375729733763562362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A038253 n)

end

end A038313.P9375729733763562362

namespace A038313

/-- `lcm(A038207(n), A038253(n))` -/
def P9375729733763562362.Spec : Prop :=
  ∀ n, (P9375729733763562362.a n : ℤ) = A038313 n

end A038313

/-! ## A038313.P14710610507128316493

`lcm(A038217(n), A038243(n))`
-/

namespace A038313.P14710610507128316493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038217 n) (A038243 n)

end

end A038313.P14710610507128316493

namespace A038313

/-- `lcm(A038217(n), A038243(n))` -/
def P14710610507128316493.Spec : Prop :=
  ∀ n, (P14710610507128316493.a n : ℤ) = A038313 n

end A038313

/-! ## A038313.P14794969921143735859

`A038324(A061579(n))`
-/

namespace A038313.P14794969921143735859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038324 (A061579 n).toNat

end

end A038313.P14794969921143735859

namespace A038313

/-- `A038324(A061579(n))` -/
def P14794969921143735859.Spec : Prop :=
  ∀ n, P14794969921143735859.a n = A038313 n

end A038313

/-!
# A038314: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*12^j.

The programs for A038314, the canonical program `A038314.P15385511615733957854` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038314 has offset 0).

The definition of A038314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038314.P15385511615733957854

`A036561(n)*A038246(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038314

/-- `A036561(n)*A038246(n)` -/
def P15385511615733957854.Spec : Prop :=
  ∀ n, P15385511615733957854.a n = A038314 n

theorem P15385511615733957854.correct : P15385511615733957854.Spec := by
  intro n
  simp only [A038314]

end A038314

/-! ## A038314.P14215042783969142747

`A038308(n)*A059268(n)`
-/

namespace A038314.P14215042783969142747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038308 n * A059268 n

end

end A038314.P14215042783969142747

namespace A038314

/-- `A038308(n)*A059268(n)` -/
def P14215042783969142747.Spec : Prop :=
  ∀ n, P14215042783969142747.a n = A038314 n

theorem P14215042783969142747.correct : P14215042783969142747.Spec := by
  intro n
  simp only [A038314, Nat.add_sub_cancel, A038314.P14215042783969142747.a, A038314.P15385511615733957854.a, A036561, A036561.P7490084913005378529.a, A038246, A038246.P15260867033814283851.a, A038308, A038308.P13048394951449472334.a, A059268, A059268.P15217573790077737885.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A038244, A038244.P8625253642017748950.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A000351, A000351.P3157381177678935815.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A013609, A013609.P14824901554590578180.a, A025581, A025581.P16112744757063613497.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038314

/-! ## A038314.P2524503387208770249

`A038244(n)*A100851(n)`
-/

namespace A038314.P2524503387208770249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038244 n * A100851 n

end

end A038314.P2524503387208770249

namespace A038314

/-- `A038244(n)*A100851(n)` -/
def P2524503387208770249.Spec : Prop :=
  ∀ n, P2524503387208770249.a n = A038314 n

end A038314

/-! ## A038314.P15347301153436738352

`A038254(n)*A130321(n)`
-/

namespace A038314.P15347301153436738352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038254 n * A130321 n

end

end A038314.P15347301153436738352

namespace A038314

/-- `A038254(n)*A130321(n)` -/
def P15347301153436738352.Spec : Prop :=
  ∀ n, P15347301153436738352.a n = A038314 n

end A038314

/-! ## A038314.P14602693159558807408

`A038248(n)*A137688(n)`
-/

namespace A038314.P14602693159558807408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038248 n * A137688 n

end

end A038314.P14602693159558807408

namespace A038314

/-- `A038248(n)*A137688(n)` -/
def P14602693159558807408.Spec : Prop :=
  ∀ n, P14602693159558807408.a n = A038314 n

end A038314

/-! ## A038314.P11749829186133795086

`A038245(n)*A368043(n)`
-/

namespace A038314.P11749829186133795086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038245 n * A368043 n

end

end A038314.P11749829186133795086

namespace A038314

/-- `A038245(n)*A368043(n)` -/
def P11749829186133795086.Spec : Prop :=
  ∀ n, P11749829186133795086.a n = A038314 n

end A038314

/-! ## A038314.P13034534345752045301

`lcm(A013610(n), A038306(n))`
-/

namespace A038314.P13034534345752045301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038306 n)

end

end A038314.P13034534345752045301

namespace A038314

/-- `lcm(A013610(n), A038306(n))` -/
def P13034534345752045301.Spec : Prop :=
  ∀ n, (P13034534345752045301.a n : ℤ) = A038314 n

end A038314

/-! ## A038314.P3531244086716679817

`lcm(A038210(n), A038245(n))`
-/

namespace A038314.P3531244086716679817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038210 n) (A038245 n)

end

end A038314.P3531244086716679817

namespace A038314

/-- `lcm(A038210(n), A038245(n))` -/
def P3531244086716679817.Spec : Prop :=
  ∀ n, (P3531244086716679817.a n : ℤ) = A038314 n

end A038314

/-! ## A038314.P11391521984373587035

`lcm(A038218(n), A038243(n))`
-/

namespace A038314.P11391521984373587035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038218 n) (A038243 n)

end

end A038314.P11391521984373587035

namespace A038314

/-- `lcm(A038218(n), A038243(n))` -/
def P11391521984373587035.Spec : Prop :=
  ∀ n, (P11391521984373587035.a n : ℤ) = A038314 n

end A038314

/-! ## A038314.P16362993651155750315

`A059268(n)²*A038305(n)`
-/

namespace A038314.P16362993651155750315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038305 n

end

end A038314.P16362993651155750315

namespace A038314

/-- `A059268(n)²*A038305(n)` -/
def P16362993651155750315.Spec : Prop :=
  ∀ n, P16362993651155750315.a n = A038314 n

end A038314

/-! ## A038314.P11704157036589776155

`A038308(n)/A038305(n)*A038308(n)`
-/

namespace A038314.P11704157036589776155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A038305 n : ℚ) * (A038308 n : ℚ)

end

end A038314.P11704157036589776155

namespace A038314

/-- `A038308(n)/A038305(n)*A038308(n)` -/
def P11704157036589776155.Spec : Prop :=
  ∀ n, P11704157036589776155.a n = (A038314 n : ℚ)

end A038314

/-! ## A038314.P18314273204223844294

`A038336(A061579(n))`
-/

namespace A038314.P18314273204223844294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038336 (A061579 n).toNat

end

end A038314.P18314273204223844294

namespace A038314

/-- `A038336(A061579(n))` -/
def P18314273204223844294.Spec : Prop :=
  ∀ n, P18314273204223844294.a n = A038314 n

end A038314

/-! ## A038314.P9375344798004632093

`A038336(A038722(n+1)-1)`
-/

namespace A038314.P9375344798004632093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038336 (A038722 (n + 1) - 1).toNat

end

end A038314.P9375344798004632093

namespace A038314

/-- `A038336(A038722(n+1)-1)` -/
def P9375344798004632093.Spec : Prop :=
  ∀ n, P9375344798004632093.a n = A038314 n

end A038314

/-! ## A038314.P17954014473554899600

`A038336(A002024(n+1)²-(n+1))`
-/

namespace A038314.P17954014473554899600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038336 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A038314.P17954014473554899600

namespace A038314

/-- `A038336(A002024(n+1)²-(n+1))` -/
def P17954014473554899600.Spec : Prop :=
  ∀ n, P17954014473554899600.a n = A038314 n

end A038314

/-! ## A038314.P16280889716422978152

`A038336(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A038314.P16280889716422978152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038336 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A038314.P16280889716422978152

namespace A038314

/-- `A038336(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P16280889716422978152.Spec : Prop :=
  ∀ n, P16280889716422978152.a n = A038314 n

end A038314

/-! ## A038314.P15319742922303809017

`A038308(n)²/A038305(n)`
-/

namespace A038314.P15319742922303809017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n ^ 2 : ℚ) / (A038305 n : ℚ)

end

end A038314.P15319742922303809017

namespace A038314

/-- `A038308(n)²/A038305(n)` -/
def P15319742922303809017.Spec : Prop :=
  ∀ n, P15319742922303809017.a n = (A038314 n : ℚ)

end A038314

/-! ## A038314.P7789968348581315248

`A038308(n)²/gcd(A038308(n), A038311(n))`
-/

namespace A038314.P7789968348581315248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n ^ 2 : ℚ) / (Int.gcd (A038308 n) (A038311 n) : ℚ)

end

end A038314.P7789968348581315248

namespace A038314

/-- `A038308(n)²/gcd(A038308(n), A038311(n))` -/
def P7789968348581315248.Spec : Prop :=
  ∀ n, P7789968348581315248.a n = (A038314 n : ℚ)

end A038314

/-! ## A038314.P8402062122139236890

`lcm(A038208(n), A038305(n))²/A038305(n)`
-/

namespace A038314.P8402062122139236890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A038208 n) (A038305 n) ^ 2 : ℚ) / (A038305 n : ℚ)

end

end A038314.P8402062122139236890

namespace A038314

/-- `lcm(A038208(n), A038305(n))²/A038305(n)` -/
def P8402062122139236890.Spec : Prop :=
  ∀ n, P8402062122139236890.a n = (A038314 n : ℚ)

end A038314

/-!
# A038315: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*1^j.

The programs for A038315, the canonical program `A038315.P17727703157821261592` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038315 has offset 0).

The definition of A038315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038315.P15288203264462900198

`T(n-1,k-1)+11*T(n-1,k)` with `a(0)=1`
-/

namespace A038315.P15288203264462900198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 11 * SequenceMachineLib.triUp a n

end

end A038315.P15288203264462900198

namespace A038315

/-- `T(n-1,k-1)+11*T(n-1,k)` -/
def P15288203264462900198.Spec : Prop :=
  ∀ n, (P15288203264462900198.a n : ℤ) = A038315 n

end A038315

/-! ## A038315.P17727703157821261592

`A007318(n)*A001020(A025581(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038315

/-- `A007318(n)*A001020(A025581(n))` -/
def P17727703157821261592.Spec : Prop :=
  ∀ n, P17727703157821261592.a n = A038315 n

theorem P17727703157821261592.correct : P17727703157821261592.Spec := by
  intro n
  simp only [A038315]

end A038315

/-! ## A038315.P6754151771642694644

`A013618(A061579(n))`
-/

namespace A038315.P6754151771642694644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 (A061579 n).toNat

end

end A038315.P6754151771642694644

namespace A038315

/-- `A013618(A061579(n))` -/
def P6754151771642694644.Spec : Prop :=
  ∀ n, P6754151771642694644.a n = A038315 n

end A038315

/-! ## A038315.P13207758782225026967

`A013618(A114327(n)+n)`
-/

namespace A038315.P13207758782225026967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 (A114327 n + (n : ℤ)).toNat

end

end A038315.P13207758782225026967

namespace A038315

/-- `A013618(A114327(n)+n)` -/
def P13207758782225026967.Spec : Prop :=
  ∀ n, P13207758782225026967.a n = A038315 n

end A038315

/-! ## A038315.P17175646609800267309

`A013618(A038722(n+1)-1)`
-/

namespace A038315.P17175646609800267309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 (A038722 (n + 1) - 1).toNat

end

end A038315.P17175646609800267309

namespace A038315

/-- `A013618(A038722(n+1)-1)` -/
def P17175646609800267309.Spec : Prop :=
  ∀ n, P17175646609800267309.a n = A038315 n

end A038315

/-! ## A038315.P8185685117510956583

`A013618(A038722(n+2))`
-/

namespace A038315.P8185685117510956583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 (A038722 (n + 2)).toNat

end

end A038315.P8185685117510956583

namespace A038315

/-- `A013618(A038722(n+2))` -/
def P8185685117510956583.Spec : Prop :=
  ∀ n, P8185685117510956583.a n = A038315 n

end A038315

/-! ## A038315.P14386910995050419174

`A038316(n)/A059268(n)`
-/

namespace A038315.P14386910995050419174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038316 n : ℚ) / (A059268 n : ℚ)

end

end A038315.P14386910995050419174

namespace A038315

/-- `A038316(n)/A059268(n)` -/
def P14386910995050419174.Spec : Prop :=
  ∀ n, P14386910995050419174.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P4186749448157331033

`gcd(A038316(n), A038317(n))`
-/

namespace A038315.P4186749448157331033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038316 n) (A038317 n)

end

end A038315.P4186749448157331033

namespace A038315

/-- `gcd(A038316(n), A038317(n))` -/
def P4186749448157331033.Spec : Prop :=
  ∀ n, (P4186749448157331033.a n : ℤ) = A038315 n

end A038315

/-! ## A038315.P11809248987571180968

`A038318(n)/A059268(n)²`
-/

namespace A038315.P11809248987571180968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038315.P11809248987571180968

namespace A038315

/-- `A038318(n)/A059268(n)²` -/
def P11809248987571180968.Spec : Prop :=
  ∀ n, P11809248987571180968.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P80250005641211293

`A038316(n)/A038318(n)*A038316(n)`
-/

namespace A038315.P80250005641211293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038316 n : ℚ) / (A038318 n : ℚ) * (A038316 n : ℚ)

end

end A038315.P80250005641211293

namespace A038315

/-- `A038316(n)/A038318(n)*A038316(n)` -/
def P80250005641211293.Spec : Prop :=
  ∀ n, P80250005641211293.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P15791574814264296246

`gcd(A038318(n), A038319(n))`
-/

namespace A038315.P15791574814264296246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038318 n) (A038319 n)

end

end A038315.P15791574814264296246

namespace A038315

/-- `gcd(A038318(n), A038319(n))` -/
def P15791574814264296246.Spec : Prop :=
  ∀ n, (P15791574814264296246.a n : ℤ) = A038315 n

end A038315

/-! ## A038315.P2201093624078615183

`gcd(A038320(n), A038321(n))`
-/

namespace A038315.P2201093624078615183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038320 n) (A038321 n)

end

end A038315.P2201093624078615183

namespace A038315

/-- `gcd(A038320(n), A038321(n))` -/
def P2201093624078615183.Spec : Prop :=
  ∀ n, (P2201093624078615183.a n : ℤ) = A038315 n

end A038315

/-! ## A038315.P15875013140575437218

`(A038318(n)/A038322(n))²*A038318(n)`
-/

namespace A038315.P15875013140575437218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038318 n : ℚ) / (A038322 n : ℚ)) ^ 2 * (A038318 n : ℚ)

end

end A038315.P15875013140575437218

namespace A038315

/-- `(A038318(n)/A038322(n))²*A038318(n)` -/
def P15875013140575437218.Spec : Prop :=
  ∀ n, P15875013140575437218.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P5545917563398674887

`A038322(n)/(A059268(n)²*A059268(n))`
-/

namespace A038315.P5545917563398674887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038322 n : ℚ) / (A059268 n ^ 2 * A059268 n : ℚ)

end

end A038315.P5545917563398674887

namespace A038315

/-- `A038322(n)/(A059268(n)²*A059268(n))` -/
def P5545917563398674887.Spec : Prop :=
  ∀ n, P5545917563398674887.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P11529664007629154134

`sqrt(A038316(n)/A038322(n))*A038316(n)`
-/

namespace A038315.P11529664007629154134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A038316 n : ℚ) / (A038322 n : ℚ) : ℝ) * (A038316 n : ℝ)

end

end A038315.P11529664007629154134

namespace A038315

/-- `sqrt(A038316(n)/A038322(n))*A038316(n)` -/
def P11529664007629154134.Spec : Prop :=
  ∀ n, P11529664007629154134.a n = (A038315 n : ℝ)

end A038315

/-! ## A038315.P18419691318241101324

`gcd(A038322(n), A038323(n))`
-/

namespace A038315.P18419691318241101324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038322 n) (A038323 n)

end

end A038315.P18419691318241101324

namespace A038315

/-- `gcd(A038322(n), A038323(n))` -/
def P18419691318241101324.Spec : Prop :=
  ∀ n, (P18419691318241101324.a n : ℤ) = A038315 n

end A038315

/-! ## A038315.P649202038866093251

`gcd(A038324(n), A038325(n))`
-/

namespace A038315.P649202038866093251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038324 n) (A038325 n)

end

end A038315.P649202038866093251

namespace A038315

/-- `gcd(A038324(n), A038325(n))` -/
def P649202038866093251.Spec : Prop :=
  ∀ n, (P649202038866093251.a n : ℤ) = A038315 n

end A038315

/-! ## A038315.P7907800878000574850

`A218018(n)/A233543(n)`
-/

namespace A038315.P7907800878000574850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218018 n : ℚ) / (A233543 n : ℚ)

end

end A038315.P7907800878000574850

namespace A038315

/-- `A218018(n)/A233543(n)` -/
def P7907800878000574850.Spec : Prop :=
  ∀ n, P7907800878000574850.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P4717155729274356081

`A027466(n)/A218017(n)*A218018(n)`
-/

namespace A038315.P4717155729274356081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A218017 n : ℚ) * (A218018 n : ℚ)

end

end A038315.P4717155729274356081

namespace A038315

/-- `A027466(n)/A218017(n)*A218018(n)` -/
def P4717155729274356081.Spec : Prop :=
  ∀ n, P4717155729274356081.a n = (A038315 n : ℚ)

end A038315

/-! ## A038315.P5367564794890969404

`A038316(n)²/A038318(n)`
-/

namespace A038315.P5367564794890969404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038316 n ^ 2 : ℚ) / (A038318 n : ℚ)

end

end A038315.P5367564794890969404

namespace A038315

/-- `A038316(n)²/A038318(n)` -/
def P5367564794890969404.Spec : Prop :=
  ∀ n, P5367564794890969404.a n = (A038315 n : ℚ)

end A038315

/-!
# A038316: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*2^j.

The programs for A038316, the canonical program `A038316.P17113037635497531853` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038316 has offset 0).

The definition of A038316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038316.P17113037635497531853

`A038315(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038316

/-- `A038315(n)*A059268(n)` -/
def P17113037635497531853.Spec : Prop :=
  ∀ n, P17113037635497531853.a n = A038316 n

theorem P17113037635497531853.correct : P17113037635497531853.Spec := by
  intro n
  simp only [A038316]

end A038316

/-! ## A038316.P3811697617646417152

`lcm(A013609(n), A038315(n))`
-/

namespace A038316.P3811697617646417152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038315 n)

end

end A038316.P3811697617646417152

namespace A038316

/-- `lcm(A013609(n), A038315(n))` -/
def P3811697617646417152.Spec : Prop :=
  ∀ n, (P3811697617646417152.a n : ℤ) = A038316 n

end A038316

/-! ## A038316.P18408923940797565652

`2^A002262(n)*A038315(n)`
-/

namespace A038316.P18408923940797565652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A038315 n : ℚ)

end

end A038316.P18408923940797565652

namespace A038316

/-- `2^A002262(n)*A038315(n)` -/
def P18408923940797565652.Spec : Prop :=
  ∀ n, P18408923940797565652.a n = (A038316 n : ℚ)

end A038316

/-! ## A038316.P13888719463524660212

`A001020(A025581(n))*A013609(n)`
-/

namespace A038316.P13888719463524660212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013609 n

end

end A038316.P13888719463524660212

namespace A038316

/-- `A001020(A025581(n))*A013609(n)` -/
def P13888719463524660212.Spec : Prop :=
  ∀ n, P13888719463524660212.a n = A038316 n

end A038316

/-! ## A038316.P8233631140331677363

`A000079(A002262(n))*A038315(n)`
-/

namespace A038316.P8233631140331677363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A038315 n

end

end A038316.P8233631140331677363

namespace A038316

/-- `A000079(A002262(n))*A038315(n)` -/
def P8233631140331677363.Spec : Prop :=
  ∀ n, P8233631140331677363.a n = A038316 n

end A038316

/-! ## A038316.P4779042592188716771

`A038315(n)*A137688(A112367(n))`
-/

namespace A038316.P4779042592188716771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A137688 (A112367 n).toNat

end

end A038316.P4779042592188716771

namespace A038316

/-- `A038315(n)*A137688(A112367(n))` -/
def P4779042592188716771.Spec : Prop :=
  ∀ n, P4779042592188716771.a n = A038316 n

end A038316

/-! ## A038316.P17942026723403730318

`A038217(A061579(n))`
-/

namespace A038316.P17942026723403730318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038217 (A061579 n).toNat

end

end A038316.P17942026723403730318

namespace A038316

/-- `A038217(A061579(n))` -/
def P17942026723403730318.Spec : Prop :=
  ∀ n, P17942026723403730318.a n = A038316 n

end A038316

/-! ## A038316.P16499025532522643823

`A038318(n)/A059268(n)`
-/

namespace A038316.P16499025532522643823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n : ℚ) / (A059268 n : ℚ)

end

end A038316.P16499025532522643823

namespace A038316

/-- `A038318(n)/A059268(n)` -/
def P16499025532522643823.Spec : Prop :=
  ∀ n, P16499025532522643823.a n = (A038316 n : ℚ)

end A038316

/-! ## A038316.P2446663151867840276

`sqrt(A038315(n))*sqrt(A038318(n))`
-/

namespace A038316.P2446663151867840276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038315 n : ℝ) * Real.sqrt (A038318 n : ℝ)

end

end A038316.P2446663151867840276

namespace A038316

/-- `sqrt(A038315(n))*sqrt(A038318(n))` -/
def P2446663151867840276.Spec : Prop :=
  ∀ n, P2446663151867840276.a n = (A038316 n : ℝ)

end A038316

/-! ## A038316.P14486673114389134124

`gcd(A038318(n), A038320(n))`
-/

namespace A038316.P14486673114389134124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038318 n) (A038320 n)

end

end A038316.P14486673114389134124

namespace A038316

/-- `gcd(A038318(n), A038320(n))` -/
def P14486673114389134124.Spec : Prop :=
  ∀ n, (P14486673114389134124.a n : ℤ) = A038316 n

end A038316

/-! ## A038316.P6418845175393346541

`A038320(n)/A000244(A002262(n))`
-/

namespace A038316.P6418845175393346541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n : ℚ) / (A000244 (A002262 n).toNat : ℚ)

end

end A038316.P6418845175393346541

namespace A038316

/-- `A038320(n)/A000244(A002262(n))` -/
def P6418845175393346541.Spec : Prop :=
  ∀ n, P6418845175393346541.a n = (A038316 n : ℚ)

end A038316

/-! ## A038316.P14729606733851160614

`A038322(n)/A059268(n)²`
-/

namespace A038316.P14729606733851160614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038322 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038316.P14729606733851160614

namespace A038316

/-- `A038322(n)/A059268(n)²` -/
def P14729606733851160614.Spec : Prop :=
  ∀ n, P14729606733851160614.a n = (A038316 n : ℚ)

end A038316

/-! ## A038316.P13165751079683386160

`A038318(n)/A038322(n)*A038318(n)`
-/

namespace A038316.P13165751079683386160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n : ℚ) / (A038322 n : ℚ) * (A038318 n : ℚ)

end

end A038316.P13165751079683386160

namespace A038316

/-- `A038318(n)/A038322(n)*A038318(n)` -/
def P13165751079683386160.Spec : Prop :=
  ∀ n, P13165751079683386160.a n = (A038316 n : ℚ)

end A038316

/-! ## A038316.P15299547693556460850

`gcd(A038322(n), A038324(n))`
-/

namespace A038316.P15299547693556460850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038322 n) (A038324 n)

end

end A038316.P15299547693556460850

namespace A038316

/-- `gcd(A038322(n), A038324(n))` -/
def P15299547693556460850.Spec : Prop :=
  ∀ n, (P15299547693556460850.a n : ℤ) = A038316 n

end A038316

/-! ## A038316.P8785743108692839598

`sqrt(A038315(n)*A038318(n))`
-/

namespace A038316.P8785743108692839598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038315 n * A038318 n : ℝ)

end

end A038316.P8785743108692839598

namespace A038316

/-- `sqrt(A038315(n)*A038318(n))` -/
def P8785743108692839598.Spec : Prop :=
  ∀ n, P8785743108692839598.a n = (A038316 n : ℝ)

end A038316

/-! ## A038316.P16765829211635700966

`A038318(n)²/A038322(n)`
-/

namespace A038316.P16765829211635700966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n ^ 2 : ℚ) / (A038322 n : ℚ)

end

end A038316.P16765829211635700966

namespace A038316

/-- `A038318(n)²/A038322(n)` -/
def P16765829211635700966.Spec : Prop :=
  ∀ n, P16765829211635700966.a n = (A038316 n : ℚ)

end A038316

/-!
# A038317: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*3^j.

The programs for A038317, the canonical program `A038317.P3117406455626042156` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038317 has offset 0).

The definition of A038317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038317.P3117406455626042156

`lcm(A013610(n), A038315(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038317

/-- `lcm(A013610(n), A038315(n))` -/
def P3117406455626042156.Spec : Prop :=
  ∀ n, (P3117406455626042156.a n : ℤ) = A038317 n

theorem P3117406455626042156.correct : P3117406455626042156.Spec := by
  intro n
  simp only [A038317]

end A038317

/-! ## A038317.P12085461112369556224

`3^A002262(n)*A038315(n)`
-/

namespace A038317.P12085461112369556224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A038315 n : ℚ)

end

end A038317.P12085461112369556224

namespace A038317

/-- `3^A002262(n)*A038315(n)` -/
def P12085461112369556224.Spec : Prop :=
  ∀ n, P12085461112369556224.a n = (A038317 n : ℚ)

end A038317

/-! ## A038317.P5224282773919758838

`A001020(A025581(n))*A013610(n)`
-/

namespace A038317.P5224282773919758838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013610 n

end

end A038317.P5224282773919758838

namespace A038317

/-- `A001020(A025581(n))*A013610(n)` -/
def P5224282773919758838.Spec : Prop :=
  ∀ n, P5224282773919758838.a n = A038317 n

end A038317

/-! ## A038317.P14881986633552422263

`A000244(A002262(n))*A038315(n)`
-/

namespace A038317.P14881986633552422263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A038315 n

end

end A038317.P14881986633552422263

namespace A038317

/-- `A000244(A002262(n))*A038315(n)` -/
def P14881986633552422263.Spec : Prop :=
  ∀ n, P14881986633552422263.a n = A038317 n

end A038317

/-! ## A038317.P12988537205242118156

`A038315(n)*A140303(A112367(n))`
-/

namespace A038317.P12988537205242118156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A140303 (A112367 n).toNat

end

end A038317.P12988537205242118156

namespace A038317

/-- `A038315(n)*A140303(A112367(n))` -/
def P12988537205242118156.Spec : Prop :=
  ∀ n, P12988537205242118156.a n = A038317 n

end A038317

/-! ## A038317.P1803311495899587676

`A038229(A061579(n))`
-/

namespace A038317.P1803311495899587676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038229 (A061579 n).toNat

end

end A038317.P1803311495899587676

namespace A038317

/-- `A038229(A061579(n))` -/
def P1803311495899587676.Spec : Prop :=
  ∀ n, P1803311495899587676.a n = A038317 n

end A038317

/-! ## A038317.P7910511658109473384

`A038320(n)/A059268(n)`
-/

namespace A038317.P7910511658109473384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n : ℚ) / (A059268 n : ℚ)

end

end A038317.P7910511658109473384

namespace A038317

/-- `A038320(n)/A059268(n)` -/
def P7910511658109473384.Spec : Prop :=
  ∀ n, P7910511658109473384.a n = (A038317 n : ℚ)

end A038317

/-! ## A038317.P13536523527651438755

`gcd(A038320(n), A038323(n))`
-/

namespace A038317.P13536523527651438755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038320 n) (A038323 n)

end

end A038317.P13536523527651438755

namespace A038317

/-- `gcd(A038320(n), A038323(n))` -/
def P13536523527651438755.Spec : Prop :=
  ∀ n, (P13536523527651438755.a n : ℤ) = A038317 n

end A038317

/-! ## A038317.P7955362415407396510

`sqrt(A038315(n))*sqrt(A038323(n))`
-/

namespace A038317.P7955362415407396510
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038315 n : ℝ) * Real.sqrt (A038323 n : ℝ)

end

end A038317.P7955362415407396510

namespace A038317

/-- `sqrt(A038315(n))*sqrt(A038323(n))` -/
def P7955362415407396510.Spec : Prop :=
  ∀ n, P7955362415407396510.a n = (A038317 n : ℝ)

end A038317

/-! ## A038317.P10043724758075620589

`A038326(n)/A059268(n)²`
-/

namespace A038317.P10043724758075620589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038326 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038317.P10043724758075620589

namespace A038317

/-- `A038326(n)/A059268(n)²` -/
def P10043724758075620589.Spec : Prop :=
  ∀ n, P10043724758075620589.a n = (A038317 n : ℚ)

end A038317

/-! ## A038317.P1054901883080481265

`A038320(n)/A038326(n)*A038320(n)`
-/

namespace A038317.P1054901883080481265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n : ℚ) / (A038326 n : ℚ) * (A038320 n : ℚ)

end

end A038317.P1054901883080481265

namespace A038317

/-- `A038320(n)/A038326(n)*A038320(n)` -/
def P1054901883080481265.Spec : Prop :=
  ∀ n, P1054901883080481265.a n = (A038317 n : ℚ)

end A038317

/-! ## A038317.P9830891905022725230

`sqrt(A038315(n)*A038323(n))`
-/

namespace A038317.P9830891905022725230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038315 n * A038323 n : ℝ)

end

end A038317.P9830891905022725230

namespace A038317

/-- `sqrt(A038315(n)*A038323(n))` -/
def P9830891905022725230.Spec : Prop :=
  ∀ n, P9830891905022725230.a n = (A038317 n : ℝ)

end A038317

/-! ## A038317.P11714510096423650715

`A038320(n)²/A038326(n)`
-/

namespace A038317.P11714510096423650715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n ^ 2 : ℚ) / (A038326 n : ℚ)

end

end A038317.P11714510096423650715

namespace A038317

/-- `A038320(n)²/A038326(n)` -/
def P11714510096423650715.Spec : Prop :=
  ∀ n, P11714510096423650715.a n = (A038317 n : ℚ)

end A038317

/-!
# A038318: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*4^j.

The programs for A038318, the canonical program `A038318.P611432276331124910` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038318 has offset 0).

The definition of A038318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038318.P611432276331124910

`A038316(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038318

/-- `A038316(n)*A059268(n)` -/
def P611432276331124910.Spec : Prop :=
  ∀ n, P611432276331124910.a n = A038318 n

theorem P611432276331124910.correct : P611432276331124910.Spec := by
  intro n
  simp only [A038318]

end A038318

/-! ## A038318.P13414513651596503607

`lcm(A013611(n), A038315(n))`
-/

namespace A038318.P13414513651596503607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038315 n)

end

end A038318.P13414513651596503607

namespace A038318

/-- `lcm(A013611(n), A038315(n))` -/
def P13414513651596503607.Spec : Prop :=
  ∀ n, (P13414513651596503607.a n : ℤ) = A038318 n

end A038318

/-! ## A038318.P6084203188297060979

`A059268(n)²*A038315(n)`
-/

namespace A038318.P6084203188297060979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038315 n

end

end A038318.P6084203188297060979

namespace A038318

/-- `A059268(n)²*A038315(n)` -/
def P6084203188297060979.Spec : Prop :=
  ∀ n, P6084203188297060979.a n = A038318 n

theorem P6084203188297060979.correct : P6084203188297060979.Spec := by
  intro n
  simp only [A038318, Nat.add_sub_cancel, A038318.P6084203188297060979.a, A038318.P611432276331124910.a, A038315, A038315.P17727703157821261592.a, A038316, A038316.P17113037635497531853.a, A059268, A059268.P15217573790077737885.a, A001020, A001020.P6110418391945528251.a, A007318, A007318.P11755526479805562006.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P16112744757063613497.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038318

/-! ## A038318.P10303320923916669757

`4^A002262(n)*A038315(n)`
-/

namespace A038318.P10303320923916669757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002262 n : ℤ) * (A038315 n : ℚ)

end

end A038318.P10303320923916669757

namespace A038318

/-- `4^A002262(n)*A038315(n)` -/
def P10303320923916669757.Spec : Prop :=
  ∀ n, P10303320923916669757.a n = (A038318 n : ℚ)

end A038318

/-! ## A038318.P9792696487902501229

`A001020(A025581(n))*A013611(n)`
-/

namespace A038318.P9792696487902501229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013611 n

end

end A038318.P9792696487902501229

namespace A038318

/-- `A001020(A025581(n))*A013611(n)` -/
def P9792696487902501229.Spec : Prop :=
  ∀ n, P9792696487902501229.a n = A038318 n

end A038318

/-! ## A038318.P3181846471033168319

`A137688(A112367(n))²*A038315(n)`
-/

namespace A038318.P3181846471033168319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 (A112367 n).toNat ^ 2 * A038315 n

end

end A038318.P3181846471033168319

namespace A038318

/-- `A137688(A112367(n))²*A038315(n)` -/
def P3181846471033168319.Spec : Prop :=
  ∀ n, P3181846471033168319.a n = A038318 n

end A038318

/-! ## A038318.P11914049114367395922

`A000079(2*A002262(n))*A038315(n)`
-/

namespace A038318.P11914049114367395922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A002262 n).toNat * A038315 n

end

end A038318.P11914049114367395922

namespace A038318

/-- `A000079(2*A002262(n))*A038315(n)` -/
def P11914049114367395922.Spec : Prop :=
  ∀ n, P11914049114367395922.a n = A038318 n

end A038318

/-! ## A038318.P3793883286525312840

`A038316(n)/A038315(n)*A038316(n)`
-/

namespace A038318.P3793883286525312840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038316 n : ℚ) / (A038315 n : ℚ) * (A038316 n : ℚ)

end

end A038318.P3793883286525312840

namespace A038318

/-- `A038316(n)/A038315(n)*A038316(n)` -/
def P3793883286525312840.Spec : Prop :=
  ∀ n, P3793883286525312840.a n = (A038318 n : ℚ)

end A038318

/-! ## A038318.P776642982932263536

`A038241(A061579(n))`
-/

namespace A038318.P776642982932263536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038241 (A061579 n).toNat

end

end A038318.P776642982932263536

namespace A038318

/-- `A038241(A061579(n))` -/
def P776642982932263536.Spec : Prop :=
  ∀ n, P776642982932263536.a n = A038318 n

end A038318

/-! ## A038318.P3099411762925256643

`A038322(n)/A059268(n)`
-/

namespace A038318.P3099411762925256643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038322 n : ℚ) / (A059268 n : ℚ)

end

end A038318.P3099411762925256643

namespace A038318

/-- `A038322(n)/A059268(n)` -/
def P3099411762925256643.Spec : Prop :=
  ∀ n, P3099411762925256643.a n = (A038318 n : ℚ)

end A038318

/-! ## A038318.P9069709558304894745

`sqrt(A038316(n))*sqrt(A038322(n))`
-/

namespace A038318.P9069709558304894745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038316 n : ℝ) * Real.sqrt (A038322 n : ℝ)

end

end A038318.P9069709558304894745

namespace A038318

/-- `sqrt(A038316(n))*sqrt(A038322(n))` -/
def P9069709558304894745.Spec : Prop :=
  ∀ n, P9069709558304894745.a n = (A038318 n : ℝ)

end A038318

/-! ## A038318.P345599741092180066

`A038320(n)/A038323(n)*A038320(n)`
-/

namespace A038318.P345599741092180066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n : ℚ) / (A038323 n : ℚ) * (A038320 n : ℚ)

end

end A038318.P345599741092180066

namespace A038318

/-- `A038320(n)/A038323(n)*A038320(n)` -/
def P345599741092180066.Spec : Prop :=
  ∀ n, P345599741092180066.a n = (A038318 n : ℚ)

end A038318

/-! ## A038318.P14190128248300440849

`gcd(A038322(n), A038326(n))`
-/

namespace A038318.P14190128248300440849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038322 n) (A038326 n)

end

end A038318.P14190128248300440849

namespace A038318

/-- `gcd(A038322(n), A038326(n))` -/
def P14190128248300440849.Spec : Prop :=
  ∀ n, (P14190128248300440849.a n : ℤ) = A038318 n

end A038318

/-! ## A038318.P13804403715729692229

`A038316(n)²/A038315(n)`
-/

namespace A038318.P13804403715729692229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038316 n ^ 2 : ℚ) / (A038315 n : ℚ)

end

end A038318.P13804403715729692229

namespace A038318

/-- `A038316(n)²/A038315(n)` -/
def P13804403715729692229.Spec : Prop :=
  ∀ n, P13804403715729692229.a n = (A038318 n : ℚ)

end A038318

/-! ## A038318.P9801256239401976238

`A038316(n)²/gcd(A038316(n), A038317(n))`
-/

namespace A038318.P9801256239401976238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038316 n ^ 2 : ℚ) / (Int.gcd (A038316 n) (A038317 n) : ℚ)

end

end A038318.P9801256239401976238

namespace A038318

/-- `A038316(n)²/gcd(A038316(n), A038317(n))` -/
def P9801256239401976238.Spec : Prop :=
  ∀ n, P9801256239401976238.a n = (A038318 n : ℚ)

end A038318

/-! ## A038318.P3161939241623420705

`sqrt(A038316(n)*A038322(n))`
-/

namespace A038318.P3161939241623420705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038316 n * A038322 n : ℝ)

end

end A038318.P3161939241623420705

namespace A038318

/-- `sqrt(A038316(n)*A038322(n))` -/
def P3161939241623420705.Spec : Prop :=
  ∀ n, P3161939241623420705.a n = (A038318 n : ℝ)

end A038318

/-! ## A038318.P5028236374820591769

`A038320(n)²/A038323(n)`
-/

namespace A038318.P5028236374820591769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n ^ 2 : ℚ) / (A038323 n : ℚ)

end

end A038318.P5028236374820591769

namespace A038318

/-- `A038320(n)²/A038323(n)` -/
def P5028236374820591769.Spec : Prop :=
  ∀ n, P5028236374820591769.a n = (A038318 n : ℚ)

end A038318

/-!
# A038319: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*5^j.

The programs for A038319, the canonical program `A038319.P6713445332554745158` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038319 has offset 0).

The definition of A038319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038319.P2569331326917354857

`lcm(A013612(n), A038315(n))`
-/

namespace A038319.P2569331326917354857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038315 n)

end

end A038319.P2569331326917354857

namespace A038319

/-- `lcm(A013612(n), A038315(n))` -/
def P2569331326917354857.Spec : Prop :=
  ∀ n, (P2569331326917354857.a n : ℤ) = A038319 n

end A038319

/-! ## A038319.P2826005412067466818

`A001020(A025581(n))*A013612(n)`
-/

namespace A038319.P2826005412067466818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013612 n

end

end A038319.P2826005412067466818

namespace A038319

/-- `A001020(A025581(n))*A013612(n)` -/
def P2826005412067466818.Spec : Prop :=
  ∀ n, P2826005412067466818.a n = A038319 n

end A038319

/-! ## A038319.P6713445332554745158

`A000351(A002262(n))*A038315(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038319

/-- `A000351(A002262(n))*A038315(n)` -/
def P6713445332554745158.Spec : Prop :=
  ∀ n, P6713445332554745158.a n = A038319 n

theorem P6713445332554745158.correct : P6713445332554745158.Spec := by
  intro n
  simp only [A038319]

end A038319

/-! ## A038319.P16255584148260899552

`A038243(A112367(n))*A038315(n)`
-/

namespace A038319.P16255584148260899552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (A112367 n).toNat * A038315 n

end

end A038319.P16255584148260899552

namespace A038319

/-- `A038243(A112367(n))*A038315(n)` -/
def P16255584148260899552.Spec : Prop :=
  ∀ n, P16255584148260899552.a n = A038319 n

end A038319

/-! ## A038319.P503180740189852485

`A013612(n)/A007318(n)*A038315(n)`
-/

namespace A038319.P503180740189852485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013612 n : ℚ) / (A007318 n : ℚ) * (A038315 n : ℚ)

end

end A038319.P503180740189852485

namespace A038319

/-- `A013612(n)/A007318(n)*A038315(n)` -/
def P503180740189852485.Spec : Prop :=
  ∀ n, P503180740189852485.a n = (A038319 n : ℚ)

end A038319

/-! ## A038319.P18100965034647862035

`A038253(A061579(n))`
-/

namespace A038319.P18100965034647862035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038253 (A061579 n).toNat

end

end A038319.P18100965034647862035

namespace A038319

/-- `A038253(A061579(n))` -/
def P18100965034647862035.Spec : Prop :=
  ∀ n, P18100965034647862035.a n = A038319 n

end A038319

/-! ## A038319.P14662201808740237609

`A038324(n)/A059268(n)`
-/

namespace A038319.P14662201808740237609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038324 n : ℚ) / (A059268 n : ℚ)

end

end A038319.P14662201808740237609

namespace A038319

/-- `A038324(n)/A059268(n)` -/
def P14662201808740237609.Spec : Prop :=
  ∀ n, P14662201808740237609.a n = (A038319 n : ℚ)

end A038319

/-! ## A038319.P17605550002479010494

`A038315(n)/A038328(n)*A038336(n)`
-/

namespace A038319.P17605550002479010494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038315 n : ℚ) / (A038328 n : ℚ) * (A038336 n : ℚ)

end

end A038319.P17605550002479010494

namespace A038319

/-- `A038315(n)/A038328(n)*A038336(n)` -/
def P17605550002479010494.Spec : Prop :=
  ∀ n, P17605550002479010494.a n = (A038319 n : ℚ)

end A038319

/-! ## A038319.P10511145899545665111

`A013612(n)*A033047(A130321(n))`
-/

namespace A038319.P10511145899545665111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 n * A033047 (A130321 n).toNat

end

end A038319.P10511145899545665111

namespace A038319

/-- `A013612(n)*A033047(A130321(n))` -/
def P10511145899545665111.Spec : Prop :=
  ∀ n, P10511145899545665111.a n = A038319 n

end A038319

/-!
# A038320: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*6^j.

The programs for A038320, the canonical program `A038320.P3855008514307432265` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038320 has offset 0).

The definition of A038320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038320.P3855008514307432265

`A038317(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038320

/-- `A038317(n)*A059268(n)` -/
def P3855008514307432265.Spec : Prop :=
  ∀ n, P3855008514307432265.a n = A038320 n

theorem P3855008514307432265.correct : P3855008514307432265.Spec := by
  intro n
  simp only [A038320]

end A038320

/-! ## A038320.P10708465173420840150

`lcm(A013609(n), A038317(n))`
-/

namespace A038320.P10708465173420840150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038317 n)

end

end A038320.P10708465173420840150

namespace A038320

/-- `lcm(A013609(n), A038317(n))` -/
def P10708465173420840150.Spec : Prop :=
  ∀ n, (P10708465173420840150.a n : ℤ) = A038320 n

end A038320

/-! ## A038320.P354674793999986577

`lcm(A013610(n), A038316(n))`
-/

namespace A038320.P354674793999986577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038316 n)

end

end A038320.P354674793999986577

namespace A038320

/-- `lcm(A013610(n), A038316(n))` -/
def P354674793999986577.Spec : Prop :=
  ∀ n, (P354674793999986577.a n : ℤ) = A038320 n

end A038320

/-! ## A038320.P14724868885549952292

`lcm(A013613(n), A038315(n))`
-/

namespace A038320.P14724868885549952292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013613 n) (A038315 n)

end

end A038320.P14724868885549952292

namespace A038320

/-- `lcm(A013613(n), A038315(n))` -/
def P14724868885549952292.Spec : Prop :=
  ∀ n, (P14724868885549952292.a n : ℤ) = A038320 n

end A038320

/-! ## A038320.P9315128516383041214

`A001020(A025581(n))*A013613(n)`
-/

namespace A038320.P9315128516383041214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013613 n

end

end A038320.P9315128516383041214

namespace A038320

/-- `A001020(A025581(n))*A013613(n)` -/
def P9315128516383041214.Spec : Prop :=
  ∀ n, P9315128516383041214.a n = A038320 n

end A038320

/-! ## A038320.P11140087021768312659

`A038265(A061579(n))`
-/

namespace A038320.P11140087021768312659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038265 (A061579 n).toNat

end

end A038320.P11140087021768312659

namespace A038320

/-- `A038265(A061579(n))` -/
def P11140087021768312659.Spec : Prop :=
  ∀ n, P11140087021768312659.a n = A038320 n

end A038320

/-! ## A038320.P1079320299936410929

`sqrt(A038318(n))*sqrt(A038323(n))`
-/

namespace A038320.P1079320299936410929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038318 n : ℝ) * Real.sqrt (A038323 n : ℝ)

end

end A038320.P1079320299936410929

namespace A038320

/-- `sqrt(A038318(n))*sqrt(A038323(n))` -/
def P1079320299936410929.Spec : Prop :=
  ∀ n, P1079320299936410929.a n = (A038320 n : ℝ)

end A038320

/-! ## A038320.P17307179532940433344

`A038326(n)/A059268(n)`
-/

namespace A038320.P17307179532940433344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038326 n : ℚ) / (A059268 n : ℚ)

end

end A038320.P17307179532940433344

namespace A038320

/-- `A038326(n)/A059268(n)` -/
def P17307179532940433344.Spec : Prop :=
  ∀ n, P17307179532940433344.a n = (A038320 n : ℚ)

end A038320

/-! ## A038320.P2873306529231842137

`sqrt(A038317(n))*sqrt(A038326(n))`
-/

namespace A038320.P2873306529231842137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038317 n : ℝ) * Real.sqrt (A038326 n : ℝ)

end

end A038320.P2873306529231842137

namespace A038320

/-- `sqrt(A038317(n))*sqrt(A038326(n))` -/
def P2873306529231842137.Spec : Prop :=
  ∀ n, P2873306529231842137.a n = (A038320 n : ℝ)

end A038320

/-! ## A038320.P16538803800162205710

`sqrt(A038317(n)*A038326(n))`
-/

namespace A038320.P16538803800162205710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038317 n * A038326 n : ℝ)

end

end A038320.P16538803800162205710

namespace A038320

/-- `sqrt(A038317(n)*A038326(n))` -/
def P16538803800162205710.Spec : Prop :=
  ∀ n, P16538803800162205710.a n = (A038320 n : ℝ)

end A038320

/-! ## A038320.P13794212650250849848

`sqrt(A038318(n)*A038323(n))`
-/

namespace A038320.P13794212650250849848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038318 n * A038323 n : ℝ)

end

end A038320.P13794212650250849848

namespace A038320

/-- `sqrt(A038318(n)*A038323(n))` -/
def P13794212650250849848.Spec : Prop :=
  ∀ n, P13794212650250849848.a n = (A038320 n : ℝ)

end A038320

/-! ## A038320.P15574492070102212674

`gcd(A038326(n)²/A038322(n), A038326(n))`
-/

namespace A038320.P15574492070102212674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A038326 n ^ 2 : ℚ) / (A038322 n : ℚ))) (A038326 n)

end

end A038320.P15574492070102212674

namespace A038320

/-- `gcd(A038326(n)²/A038322(n), A038326(n))` -/
def P15574492070102212674.Spec : Prop :=
  ∀ n, (P15574492070102212674.a n : ℤ) = A038320 n

end A038320

/-!
# A038321: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*7^j.

The programs for A038321, the canonical program `A038321.P10357941656397293464` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038321 has offset 0).

The definition of A038321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038321.P10357941656397293464

`lcm(A013614(n), A038315(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038321

/-- `lcm(A013614(n), A038315(n))` -/
def P10357941656397293464.Spec : Prop :=
  ∀ n, (P10357941656397293464.a n : ℤ) = A038321 n

theorem P10357941656397293464.correct : P10357941656397293464.Spec := by
  intro n
  simp only [A038321]

end A038321

/-! ## A038321.P488612315510164554

`A001020(A025581(n))*A013614(n)`
-/

namespace A038321.P488612315510164554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013614 n

end

end A038321.P488612315510164554

namespace A038321

/-- `A001020(A025581(n))*A013614(n)` -/
def P488612315510164554.Spec : Prop :=
  ∀ n, P488612315510164554.a n = A038321 n

end A038321

/-! ## A038321.P9978091660068422884

`A000420(A002262(n))*A038315(n)`
-/

namespace A038321.P9978091660068422884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A002262 n).toNat * A038315 n

end

end A038321.P9978091660068422884

namespace A038321

/-- `A000420(A002262(n))*A038315(n)` -/
def P9978091660068422884.Spec : Prop :=
  ∀ n, P9978091660068422884.a n = A038321 n

end A038321

/-! ## A038321.P1579473785612190503

`A038277(A061579(n))`
-/

namespace A038321.P1579473785612190503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038277 (A061579 n).toNat

end

end A038321.P1579473785612190503

namespace A038321

/-- `A038277(A061579(n))` -/
def P1579473785612190503.Spec : Prop :=
  ∀ n, P1579473785612190503.a n = A038321 n

end A038321

/-! ## A038321.P14797254302076947817

`A038277(A114327(n)+n)`
-/

namespace A038321.P14797254302076947817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038277 (A114327 n + (n : ℤ)).toNat

end

end A038321.P14797254302076947817

namespace A038321

/-- `A038277(A114327(n)+n)` -/
def P14797254302076947817.Spec : Prop :=
  ∀ n, P14797254302076947817.a n = A038321 n

end A038321

/-!
# A038322: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*8^j.

The programs for A038322, the canonical program `A038322.P14117856518855591407` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038322 has offset 0).

The definition of A038322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038322.P14117856518855591407

`A038318(n)*A059268(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038322

/-- `A038318(n)*A059268(n)` -/
def P14117856518855591407.Spec : Prop :=
  ∀ n, P14117856518855591407.a n = A038322 n

theorem P14117856518855591407.correct : P14117856518855591407.Spec := by
  intro n
  simp only [A038322]

end A038322

/-! ## A038322.P15454715087857609052

`lcm(A013615(n), A038315(n))`
-/

namespace A038322.P15454715087857609052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013615 n) (A038315 n)

end

end A038322.P15454715087857609052

namespace A038322

/-- `lcm(A013615(n), A038315(n))` -/
def P15454715087857609052.Spec : Prop :=
  ∀ n, (P15454715087857609052.a n : ℤ) = A038322 n

end A038322

/-! ## A038322.P3533996184974509499

`A059268(n)²*A038316(n)`
-/

namespace A038322.P3533996184974509499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038316 n

end

end A038322.P3533996184974509499

namespace A038322

/-- `A059268(n)²*A038316(n)` -/
def P3533996184974509499.Spec : Prop :=
  ∀ n, P3533996184974509499.a n = A038322 n

theorem P3533996184974509499.correct : P3533996184974509499.Spec := by
  intro n
  simp only [A038322, Nat.add_sub_cancel, A038322.P3533996184974509499.a, A038322.P14117856518855591407.a, A038316, A038316.P17113037635497531853.a, A038318, A038318.P611432276331124910.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A038315, A038315.P17727703157821261592.a, A140513, A140513.P13579608035938851890.a, A001020, A001020.P6110418391945528251.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038322

/-! ## A038322.P5065465963867005376

`A001020(A025581(n))*A013615(n)`
-/

namespace A038322.P5065465963867005376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013615 n

end

end A038322.P5065465963867005376

namespace A038322

/-- `A001020(A025581(n))*A013615(n)` -/
def P5065465963867005376.Spec : Prop :=
  ∀ n, P5065465963867005376.a n = A038322 n

end A038322

/-! ## A038322.P12001351515012872622

`A038318(n)/A038316(n)*A038318(n)`
-/

namespace A038322.P12001351515012872622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n : ℚ) / (A038316 n : ℚ) * (A038318 n : ℚ)

end

end A038322.P12001351515012872622

namespace A038322

/-- `A038318(n)/A038316(n)*A038318(n)` -/
def P12001351515012872622.Spec : Prop :=
  ∀ n, P12001351515012872622.a n = (A038322 n : ℚ)

end A038322

/-! ## A038322.P1899616570701181079

`A038315(n)*A059268(n)*A059268(n)²`
-/

namespace A038322.P1899616570701181079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A059268 n * A059268 n ^ 2

end

end A038322.P1899616570701181079

namespace A038322

/-- `A038315(n)*A059268(n)*A059268(n)²` -/
def P1899616570701181079.Spec : Prop :=
  ∀ n, P1899616570701181079.a n = A038322 n

theorem P1899616570701181079.correct : P1899616570701181079.Spec := by
  intro n
  simp only [A038322, Nat.add_sub_cancel, A038322.P1899616570701181079.a, A038322.P14117856518855591407.a, A038315, A038315.P17727703157821261592.a, A038318, A038318.P611432276331124910.a, A059268, A059268.P15217573790077737885.a, A001020, A001020.P6110418391945528251.a, A007318, A007318.P11755526479805562006.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P16112744757063613497.a, A038316, A038316.P17113037635497531853.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038322

/-! ## A038322.P2698165480811870843

`(A038316(n)/A038315(n))²*A038316(n)`
-/

namespace A038322.P2698165480811870843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038316 n : ℚ) / (A038315 n : ℚ)) ^ 2 * (A038316 n : ℚ)

end

end A038322.P2698165480811870843

namespace A038322

/-- `(A038316(n)/A038315(n))²*A038316(n)` -/
def P2698165480811870843.Spec : Prop :=
  ∀ n, P2698165480811870843.a n = (A038322 n : ℚ)

end A038322

/-! ## A038322.P11368736637151430637

`sqrt(A038318(n)/A038315(n))*A038318(n)`
-/

namespace A038322.P11368736637151430637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A038318 n : ℚ) / (A038315 n : ℚ) : ℝ) * (A038318 n : ℝ)

end

end A038322.P11368736637151430637

namespace A038322

/-- `sqrt(A038318(n)/A038315(n))*A038318(n)` -/
def P11368736637151430637.Spec : Prop :=
  ∀ n, P11368736637151430637.a n = (A038322 n : ℝ)

end A038322

/-! ## A038322.P4924025572656017777

`A038289(A061579(n))`
-/

namespace A038322.P4924025572656017777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038289 (A061579 n).toNat

end

end A038322.P4924025572656017777

namespace A038322

/-- `A038289(A061579(n))` -/
def P4924025572656017777.Spec : Prop :=
  ∀ n, P4924025572656017777.a n = A038322 n

end A038322

/-! ## A038322.P14901501478829746907

`A038318(n)²/A038316(n)`
-/

namespace A038322.P14901501478829746907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n ^ 2 : ℚ) / (A038316 n : ℚ)

end

end A038322.P14901501478829746907

namespace A038322

/-- `A038318(n)²/A038316(n)` -/
def P14901501478829746907.Spec : Prop :=
  ∀ n, P14901501478829746907.a n = (A038322 n : ℚ)

end A038322

/-! ## A038322.P10041445912873946249

`A038318(n)²/gcd(A038318(n), A038320(n))`
-/

namespace A038322.P10041445912873946249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038318 n ^ 2 : ℚ) / (Int.gcd (A038318 n) (A038320 n) : ℚ)

end

end A038322.P10041445912873946249

namespace A038322

/-- `A038318(n)²/gcd(A038318(n), A038320(n))` -/
def P10041445912873946249.Spec : Prop :=
  ∀ n, P10041445912873946249.a n = (A038322 n : ℚ)

end A038322

/-!
# A038323: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*9^j.

The programs for A038323, the canonical program `A038323.P3138295503608263290` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038323 has offset 0).

The definition of A038323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038323.P3138295503608263290

`lcm(A013616(n), A038315(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038323

/-- `lcm(A013616(n), A038315(n))` -/
def P3138295503608263290.Spec : Prop :=
  ∀ n, (P3138295503608263290.a n : ℤ) = A038323 n

theorem P3138295503608263290.correct : P3138295503608263290.Spec := by
  intro n
  simp only [A038323]

end A038323

/-! ## A038323.P9006699919437107471

`A000244(A002262(n))²*A038315(n)`
-/

namespace A038323.P9006699919437107471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat ^ 2 * A038315 n

end

end A038323.P9006699919437107471

namespace A038323

/-- `A000244(A002262(n))²*A038315(n)` -/
def P9006699919437107471.Spec : Prop :=
  ∀ n, P9006699919437107471.a n = A038323 n

end A038323

/-! ## A038323.P16650301307940395378

`A140303(A112367(n))²*A038315(n)`
-/

namespace A038323.P16650301307940395378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 (A112367 n).toNat ^ 2 * A038315 n

end

end A038323.P16650301307940395378

namespace A038323

/-- `A140303(A112367(n))²*A038315(n)` -/
def P16650301307940395378.Spec : Prop :=
  ∀ n, P16650301307940395378.a n = A038323 n

end A038323

/-! ## A038323.P11063121409914445660

`A000244(2*A002262(n))*A038315(n)`
-/

namespace A038323.P11063121409914445660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A002262 n).toNat * A038315 n

end

end A038323.P11063121409914445660

namespace A038323

/-- `A000244(2*A002262(n))*A038315(n)` -/
def P11063121409914445660.Spec : Prop :=
  ∀ n, P11063121409914445660.a n = A038323 n

end A038323

/-! ## A038323.P4389679670268976163

`A038317(n)/A038315(n)*A038317(n)`
-/

namespace A038323.P4389679670268976163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038317 n : ℚ) / (A038315 n : ℚ) * (A038317 n : ℚ)

end

end A038323.P4389679670268976163

namespace A038323

/-- `A038317(n)/A038315(n)*A038317(n)` -/
def P4389679670268976163.Spec : Prop :=
  ∀ n, P4389679670268976163.a n = (A038323 n : ℚ)

end A038323

/-! ## A038323.P4969066185029071772

`A038320(n)/A038318(n)*A038320(n)`
-/

namespace A038323.P4969066185029071772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n : ℚ) / (A038318 n : ℚ) * (A038320 n : ℚ)

end

end A038323.P4969066185029071772

namespace A038323

/-- `A038320(n)/A038318(n)*A038320(n)` -/
def P4969066185029071772.Spec : Prop :=
  ∀ n, P4969066185029071772.a n = (A038323 n : ℚ)

end A038323

/-! ## A038323.P402498937636586964

`A038301(A061579(n))`
-/

namespace A038323.P402498937636586964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038301 (A061579 n).toNat

end

end A038323.P402498937636586964

namespace A038323

/-- `A038301(A061579(n))` -/
def P402498937636586964.Spec : Prop :=
  ∀ n, P402498937636586964.a n = A038323 n

end A038323

/-! ## A038323.P16151093141694367505

`A038301(A038722(n+1)-1)`
-/

namespace A038323.P16151093141694367505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038301 (A038722 (n + 1) - 1).toNat

end

end A038323.P16151093141694367505

namespace A038323

/-- `A038301(A038722(n+1)-1)` -/
def P16151093141694367505.Spec : Prop :=
  ∀ n, P16151093141694367505.a n = A038323 n

end A038323

/-! ## A038323.P14748139155774405533

`A038317(n)²/A038315(n)`
-/

namespace A038323.P14748139155774405533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038317 n ^ 2 : ℚ) / (A038315 n : ℚ)

end

end A038323.P14748139155774405533

namespace A038323

/-- `A038317(n)²/A038315(n)` -/
def P14748139155774405533.Spec : Prop :=
  ∀ n, P14748139155774405533.a n = (A038323 n : ℚ)

end A038323

/-! ## A038323.P10191703553489855696

`A038317(n)²/gcd(A038316(n), A038317(n))`
-/

namespace A038323.P10191703553489855696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038317 n ^ 2 : ℚ) / (Int.gcd (A038316 n) (A038317 n) : ℚ)

end

end A038323.P10191703553489855696

namespace A038323

/-- `A038317(n)²/gcd(A038316(n), A038317(n))` -/
def P10191703553489855696.Spec : Prop :=
  ∀ n, P10191703553489855696.a n = (A038323 n : ℚ)

end A038323

/-! ## A038323.P15100584524289153100

`A038320(n)²/A038318(n)`
-/

namespace A038323.P15100584524289153100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n ^ 2 : ℚ) / (A038318 n : ℚ)

end

end A038323.P15100584524289153100

namespace A038323

/-- `A038320(n)²/A038318(n)` -/
def P15100584524289153100.Spec : Prop :=
  ∀ n, P15100584524289153100.a n = (A038323 n : ℚ)

end A038323

/-!
# A038324: Triangle read by rows whose (i,j)-th entry is binomial(i,j)*11^(i-j)*10^j.

The programs for A038324, the canonical program `A038324.P6800404260969209044` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038324 has offset 0).

The definition of A038324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038324.P6800404260969209044

`A038319(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038324

/-- `A038319(n)*A059268(n)` -/
def P6800404260969209044.Spec : Prop :=
  ∀ n, P6800404260969209044.a n = A038324 n

theorem P6800404260969209044.correct : P6800404260969209044.Spec := by
  intro n
  simp only [A038324]

end A038324

/-! ## A038324.P12966598686010229082

`lcm(A013609(n), A038319(n))`
-/

namespace A038324.P12966598686010229082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A038319 n)

end

end A038324.P12966598686010229082

namespace A038324

/-- `lcm(A013609(n), A038319(n))` -/
def P12966598686010229082.Spec : Prop :=
  ∀ n, (P12966598686010229082.a n : ℤ) = A038324 n

end A038324

/-! ## A038324.P3265255218002759808

`lcm(A013612(n), A038316(n))`
-/

namespace A038324.P3265255218002759808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038316 n)

end

end A038324.P3265255218002759808

namespace A038324

/-- `lcm(A013612(n), A038316(n))` -/
def P3265255218002759808.Spec : Prop :=
  ∀ n, (P3265255218002759808.a n : ℤ) = A038324 n

end A038324

/-! ## A038324.P1241124241973930030

`lcm(A013617(n), A038315(n))`
-/

namespace A038324.P1241124241973930030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013617 n) (A038315 n)

end

end A038324.P1241124241973930030

namespace A038324

/-- `lcm(A013617(n), A038315(n))` -/
def P1241124241973930030.Spec : Prop :=
  ∀ n, (P1241124241973930030.a n : ℤ) = A038324 n

end A038324

/-! ## A038324.P3494890456916765218

`A001020(A025581(n))*A013617(n)`
-/

namespace A038324.P3494890456916765218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013617 n

end

end A038324.P3494890456916765218

namespace A038324

/-- `A001020(A025581(n))*A013617(n)` -/
def P3494890456916765218.Spec : Prop :=
  ∀ n, P3494890456916765218.a n = A038324 n

end A038324

/-! ## A038324.P10914801000122735029

`A038313(A061579(n))`
-/

namespace A038324.P10914801000122735029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038313 (A061579 n).toNat

end

end A038324.P10914801000122735029

namespace A038324

/-- `A038313(A061579(n))` -/
def P10914801000122735029.Spec : Prop :=
  ∀ n, P10914801000122735029.a n = A038324 n

end A038324

/-!
# A038325: Triangle read by rows whose (i,j)-th entry is binomial(i,j)*11^(i-j)*11^j.

The programs for A038325, the canonical program `A038325.P3094052679453155458` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038325 has offset 0).

The definition of A038325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038325.P17696039821927987426

`11^∑[char[∑[n+1]]]*A007318(n)`
-/

namespace A038325.P17696039821927987426
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A007318 n

end

end A038325.P17696039821927987426

namespace A038325

/-- `11^∑[char[∑[n+1]]]*A007318(n)` -/
def P17696039821927987426.Spec : Prop :=
  ∀ n, P17696039821927987426.a n = A038325 n

end A038325

/-! ## A038325.P3094052679453155458

`A007318(n)*A001020(A003056(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038325

/-- `A007318(n)*A001020(A003056(n))` -/
def P3094052679453155458.Spec : Prop :=
  ∀ n, P3094052679453155458.a n = A038325 n

theorem P3094052679453155458.correct : P3094052679453155458.Spec := by
  intro n
  simp only [A038325]

end A038325

/-! ## A038325.P3475870700869402182

`A001020(A025581(n))*A013618(n)`
-/

namespace A038325.P3475870700869402182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A025581 n).toNat * A013618 n

end

end A038325.P3475870700869402182

namespace A038325

/-- `A001020(A025581(n))*A013618(n)` -/
def P3475870700869402182.Spec : Prop :=
  ∀ n, P3475870700869402182.a n = A038325 n

end A038325

/-! ## A038325.P4574786678931135238

`A001020(A002262(n))*A038315(n)`
-/

namespace A038325.P4574786678931135238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A038315 n

end

end A038325.P4574786678931135238

namespace A038325

/-- `A001020(A002262(n))*A038315(n)` -/
def P4574786678931135238.Spec : Prop :=
  ∀ n, P4574786678931135238.a n = A038325 n

end A038325

/-! ## A038325.P13999841616734262828

`A007318(n)*A038315(A057944(n))`
-/

namespace A038325.P13999841616734262828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A038315 (A057944 n).toNat

end

end A038325.P13999841616734262828

namespace A038325

/-- `A007318(n)*A038315(A057944(n))` -/
def P13999841616734262828.Spec : Prop :=
  ∀ n, P13999841616734262828.a n = A038325 n

end A038325

/-! ## A038325.P10018325153814811240

`A038315(n)*A038315(A112367(n))`
-/

namespace A038325.P10018325153814811240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 n * A038315 (A112367 n).toNat

end

end A038325.P10018325153814811240

namespace A038325

/-- `A038315(n)*A038315(A112367(n))` -/
def P10018325153814811240.Spec : Prop :=
  ∀ n, P10018325153814811240.a n = A038325 n

end A038325

/-! ## A038325.P7115576157552063266

`A033047(A059268(n))*A038315(n)`
-/

namespace A038325.P7115576157552063266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (A059268 n).toNat * A038315 n

end

end A038325.P7115576157552063266

namespace A038325

/-- `A033047(A059268(n))*A038315(n)` -/
def P7115576157552063266.Spec : Prop :=
  ∀ n, P7115576157552063266.a n = A038325 n

end A038325

/-! ## A038325.P18437384488499355517

`A007318(n)*A033047(A137688(n))`
-/

namespace A038325.P18437384488499355517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A033047 (A137688 n).toNat

end

end A038325.P18437384488499355517

namespace A038325

/-- `A007318(n)*A033047(A137688(n))` -/
def P18437384488499355517.Spec : Prop :=
  ∀ n, P18437384488499355517.a n = A038325 n

end A038325

/-!
# A038326: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*12^j.

The programs for A038326, the canonical program `A038326.P6367717680035470483` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038326 has offset 0).

The definition of A038326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038326.P6367717680035470483

`A038320(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038326

/-- `A038320(n)*A059268(n)` -/
def P6367717680035470483.Spec : Prop :=
  ∀ n, P6367717680035470483.a n = A038326 n

theorem P6367717680035470483.correct : P6367717680035470483.Spec := by
  intro n
  simp only [A038326]

end A038326

/-! ## A038326.P17404344142701091117

`lcm(A013610(n), A038318(n))`
-/

namespace A038326.P17404344142701091117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013610 n) (A038318 n)

end

end A038326.P17404344142701091117

namespace A038326

/-- `lcm(A013610(n), A038318(n))` -/
def P17404344142701091117.Spec : Prop :=
  ∀ n, (P17404344142701091117.a n : ℤ) = A038326 n

end A038326

/-! ## A038326.P14989765692354306821

`lcm(A013611(n), A038317(n))`
-/

namespace A038326.P14989765692354306821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013611 n) (A038317 n)

end

end A038326.P14989765692354306821

namespace A038326

/-- `lcm(A013611(n), A038317(n))` -/
def P14989765692354306821.Spec : Prop :=
  ∀ n, (P14989765692354306821.a n : ℤ) = A038326 n

end A038326

/-! ## A038326.P561740394631969650

`lcm(A013619(n), A038315(n))`
-/

namespace A038326.P561740394631969650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013619 n) (A038315 n)

end

end A038326.P561740394631969650

namespace A038326

/-- `lcm(A013619(n), A038315(n))` -/
def P561740394631969650.Spec : Prop :=
  ∀ n, (P561740394631969650.a n : ℤ) = A038326 n

end A038326

/-! ## A038326.P11229506588374563669

`A059268(n)²*A038317(n)`
-/

namespace A038326.P11229506588374563669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038317 n

end

end A038326.P11229506588374563669

namespace A038326

/-- `A059268(n)²*A038317(n)` -/
def P11229506588374563669.Spec : Prop :=
  ∀ n, P11229506588374563669.a n = A038326 n

theorem P11229506588374563669.correct : P11229506588374563669.Spec := by
  intro n
  simp only [A038326, Nat.add_sub_cancel, A038326.P11229506588374563669.a, A038326.P6367717680035470483.a, A038317, A038317.P3117406455626042156.a, A038320, A038320.P3855008514307432265.a, A059268, A059268.P15217573790077737885.a, A013610, A013610.P10799143111782411430.a, A018900, A018900.P2868698677378612256.a, A038315, A038315.P17727703157821261592.a, A140513, A140513.P13579608035938851890.a, A001020, A001020.P6110418391945528251.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038326

/-! ## A038326.P5818330290181098434

`A038320(n)/A038317(n)*A038320(n)`
-/

namespace A038326.P5818330290181098434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n : ℚ) / (A038317 n : ℚ) * (A038320 n : ℚ)

end

end A038326.P5818330290181098434

namespace A038326

/-- `A038320(n)/A038317(n)*A038320(n)` -/
def P5818330290181098434.Spec : Prop :=
  ∀ n, P5818330290181098434.a n = (A038326 n : ℚ)

end A038326

/-! ## A038326.P2150879206264369939

`A038337(A061579(n))`
-/

namespace A038326.P2150879206264369939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038337 (A061579 n).toNat

end

end A038326.P2150879206264369939

namespace A038326

/-- `A038337(A061579(n))` -/
def P2150879206264369939.Spec : Prop :=
  ∀ n, P2150879206264369939.a n = A038326 n

end A038326

/-! ## A038326.P14258958999956198383

`A038320(n)²/A038317(n)`
-/

namespace A038326.P14258958999956198383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n ^ 2 : ℚ) / (A038317 n : ℚ)

end

end A038326.P14258958999956198383

namespace A038326

/-- `A038320(n)²/A038317(n)` -/
def P14258958999956198383.Spec : Prop :=
  ∀ n, P14258958999956198383.a n = (A038326 n : ℚ)

end A038326

/-! ## A038326.P10917843713195168939

`A038320(n)²/gcd(A038320(n), A038323(n))`
-/

namespace A038326.P10917843713195168939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038320 n ^ 2 : ℚ) / (Int.gcd (A038320 n) (A038323 n) : ℚ)

end

end A038326.P10917843713195168939

namespace A038326

/-- `A038320(n)²/gcd(A038320(n), A038323(n))` -/
def P10917843713195168939.Spec : Prop :=
  ∀ n, P10917843713195168939.a n = (A038326 n : ℚ)

end A038326

/-!
# A038327: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*1^j.

The programs for A038327, the canonical program `A038327.P13753667775385349031` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038327 has offset 0).

The definition of A038327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038327.P13753667775385349031

`A038255(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038327

/-- `A038255(n)*A130321(n)` -/
def P13753667775385349031.Spec : Prop :=
  ∀ n, P13753667775385349031.a n = A038327 n

theorem P13753667775385349031.correct : P13753667775385349031.Spec := by
  intro n
  simp only [A038327]

end A038327

/-! ## A038327.P7156017737357421428

`A038231(n)*A140303(n)`
-/

namespace A038327.P7156017737357421428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A140303 n

end

end A038327.P7156017737357421428

namespace A038327

/-- `A038231(n)*A140303(n)` -/
def P7156017737357421428.Spec : Prop :=
  ∀ n, P7156017737357421428.a n = A038327 n

end A038327

/-! ## A038327.P16366782693297254671

`A027465(n)*A262616(n)`
-/

namespace A038327.P16366782693297254671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A262616 n

end

end A038327.P16366782693297254671

namespace A038327

/-- `A027465(n)*A262616(n)` -/
def P16366782693297254671.Spec : Prop :=
  ∀ n, P16366782693297254671.a n = A038327 n

end A038327

/-! ## A038327.P14396151449890822450

`lcm(A027465(n), A038231(n))`
-/

namespace A038327.P14396151449890822450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038231 n)

end

end A038327.P14396151449890822450

namespace A038327

/-- `lcm(A027465(n), A038231(n))` -/
def P14396151449890822450.Spec : Prop :=
  ∀ n, (P14396151449890822450.a n : ℤ) = A038327 n

end A038327

/-! ## A038327.P4070087585024967464

`A130321(n)²*A027465(n)`
-/

namespace A038327.P4070087585024967464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A027465 n

end

end A038327.P4070087585024967464

namespace A038327

/-- `A130321(n)²*A027465(n)` -/
def P4070087585024967464.Spec : Prop :=
  ∀ n, P4070087585024967464.a n = A038327 n

theorem P4070087585024967464.correct : P4070087585024967464.Spec := by
  intro n
  simp only [A038327, Nat.add_sub_cancel, A038327.P4070087585024967464.a, A038327.P13753667775385349031.a, A027465, A027465.P7731495138669227415.a, A038255, A038255.P9618650369920174651.a, A130321, A130321.P54397649261359622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038327

/-! ## A038327.P13334216381647830410

`4^A025581(n)*A027465(n)`
-/

namespace A038327.P13334216381647830410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025581 n : ℤ) * (A027465 n : ℚ)

end

end A038327.P13334216381647830410

namespace A038327

/-- `4^A025581(n)*A027465(n)` -/
def P13334216381647830410.Spec : Prop :=
  ∀ n, P13334216381647830410.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P3442608929795758520

`A007318(n)*A001021(A025581(n))`
-/

namespace A038327.P3442608929795758520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001021 (A025581 n).toNat

end

end A038327.P3442608929795758520

namespace A038327

/-- `A007318(n)*A001021(A025581(n))` -/
def P3442608929795758520.Spec : Prop :=
  ∀ n, P3442608929795758520.a n = A038327 n

end A038327

/-! ## A038327.P17132997632050885020

`A038207(n)*A130321(n)*A140303(n)`
-/

namespace A038327.P17132997632050885020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A130321 n * A140303 n

end

end A038327.P17132997632050885020

namespace A038327

/-- `A038207(n)*A130321(n)*A140303(n)` -/
def P17132997632050885020.Spec : Prop :=
  ∀ n, P17132997632050885020.a n = A038327 n

end A038327

/-! ## A038327.P13750006585171945818

`A038207(n)/A007318(n)*A038255(n)`
-/

namespace A038327.P13750006585171945818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A038255 n : ℚ)

end

end A038327.P13750006585171945818

namespace A038327

/-- `A038207(n)/A007318(n)*A038255(n)` -/
def P13750006585171945818.Spec : Prop :=
  ∀ n, P13750006585171945818.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P17904213806297368241

`A038255(n)/A027465(n)*A038255(n)`
-/

namespace A038327.P17904213806297368241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038255 n : ℚ) / (A027465 n : ℚ) * (A038255 n : ℚ)

end

end A038327.P17904213806297368241

namespace A038327

/-- `A038255(n)/A027465(n)*A038255(n)` -/
def P17904213806297368241.Spec : Prop :=
  ∀ n, P17904213806297368241.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P6820493893464316411

`A038231(n)/A038207(n)*A038255(n)`
-/

namespace A038327.P6820493893464316411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038231 n : ℚ) / (A038207 n : ℚ) * (A038255 n : ℚ)

end

end A038327.P6820493893464316411

namespace A038327

/-- `A038231(n)/A038207(n)*A038255(n)` -/
def P6820493893464316411.Spec : Prop :=
  ∀ n, P6820493893464316411.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P8107055576655313862

`(A038207(n)/A007318(n))²*A027465(n)`
-/

namespace A038327.P8107055576655313862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038207 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A027465 n : ℚ)

end

end A038327.P8107055576655313862

namespace A038327

/-- `(A038207(n)/A007318(n))²*A027465(n)` -/
def P8107055576655313862.Spec : Prop :=
  ∀ n, P8107055576655313862.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P9550324217479984441

`(A038231(n)/A038207(n))²*A027465(n)`
-/

namespace A038327.P9550324217479984441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038231 n : ℚ) / (A038207 n : ℚ)) ^ 2 * (A027465 n : ℚ)

end

end A038327.P9550324217479984441

namespace A038327

/-- `(A038231(n)/A038207(n))²*A027465(n)` -/
def P9550324217479984441.Spec : Prop :=
  ∀ n, P9550324217479984441.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P6177547172534051452

`A013619(A061579(n))`
-/

namespace A038327.P6177547172534051452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 (A061579 n).toNat

end

end A038327.P6177547172534051452

namespace A038327

/-- `A013619(A061579(n))` -/
def P6177547172534051452.Spec : Prop :=
  ∀ n, P6177547172534051452.a n = A038327 n

end A038327

/-! ## A038327.P10187953548046350440

`A013619(A114327(n)+n)`
-/

namespace A038327.P10187953548046350440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 (A114327 n + (n : ℤ)).toNat

end

end A038327.P10187953548046350440

namespace A038327

/-- `A013619(A114327(n)+n)` -/
def P10187953548046350440.Spec : Prop :=
  ∀ n, P10187953548046350440.a n = A038327 n

end A038327

/-! ## A038327.P8328053105448371835

`A013619(A038722(n+1)-1)`
-/

namespace A038327.P8328053105448371835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 (A038722 (n + 1) - 1).toNat

end

end A038327.P8328053105448371835

namespace A038327

/-- `A013619(A038722(n+1)-1)` -/
def P8328053105448371835.Spec : Prop :=
  ∀ n, P8328053105448371835.a n = A038327 n

end A038327

/-! ## A038327.P14325793770499852524

`A013619(A038722(n+2))`
-/

namespace A038327.P14325793770499852524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013619 (A038722 (n + 2)).toNat

end

end A038327.P14325793770499852524

namespace A038327

/-- `A013619(A038722(n+2))` -/
def P14325793770499852524.Spec : Prop :=
  ∀ n, P14325793770499852524.a n = A038327 n

end A038327

/-! ## A038327.P8126973944246099188

`A038328(n)/A059268(n)`
-/

namespace A038327.P8126973944246099188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038328 n : ℚ) / (A059268 n : ℚ)

end

end A038327.P8126973944246099188

namespace A038327

/-- `A038328(n)/A059268(n)` -/
def P8126973944246099188.Spec : Prop :=
  ∀ n, P8126973944246099188.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P14604163994923691992

`A038328(n)/A130321(A112367(n))`
-/

namespace A038327.P14604163994923691992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038328 n : ℚ) / (A130321 (A112367 n).toNat : ℚ)

end

end A038327.P14604163994923691992

namespace A038327

/-- `A038328(n)/A130321(A112367(n))` -/
def P14604163994923691992.Spec : Prop :=
  ∀ n, P14604163994923691992.a n = (A038327 n : ℚ)

end A038327

/-! ## A038327.P889275415194859036

`gcd(A038328(n), A038329(n))`
-/

namespace A038327.P889275415194859036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038328 n) (A038329 n)

end

end A038327.P889275415194859036

namespace A038327

/-- `gcd(A038328(n), A038329(n))` -/
def P889275415194859036.Spec : Prop :=
  ∀ n, (P889275415194859036.a n : ℤ) = A038327 n

end A038327

/-!
# A038328: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*2^j.

The programs for A038328, the canonical program `A038328.P13362805777604187505` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038328 has offset 0).

The definition of A038328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038328.P13362805777604187505

`A038327(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038328

/-- `A038327(n)*A059268(n)` -/
def P13362805777604187505.Spec : Prop :=
  ∀ n, P13362805777604187505.a n = A038328 n

theorem P13362805777604187505.correct : P13362805777604187505.Spec := by
  intro n
  simp only [A038328]

end A038328

/-! ## A038328.P5370096851305053288

`A038256(n)*A130321(n)`
-/

namespace A038328.P5370096851305053288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A130321 n

end

end A038328.P5370096851305053288

namespace A038328

/-- `A038256(n)*A130321(n)` -/
def P5370096851305053288.Spec : Prop :=
  ∀ n, P5370096851305053288.a n = A038328 n

theorem P5370096851305053288.correct : P5370096851305053288.Spec := by
  intro n
  simp only [A038328, Nat.add_sub_cancel, A038328.P5370096851305053288.a, A038328.P13362805777604187505.a, A038256, A038256.P10874332263028825232.a, A038327, A038327.P13753667775385349031.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A038255, A038255.P9618650369920174651.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A027465, A027465.P7731495138669227415.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038328

/-! ## A038328.P13090993727052754772

`A038255(n)*A137688(n)`
-/

namespace A038328.P13090993727052754772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A137688 n

end

end A038328.P13090993727052754772

namespace A038328

/-- `A038255(n)*A137688(n)` -/
def P13090993727052754772.Spec : Prop :=
  ∀ n, P13090993727052754772.a n = A038328 n

end A038328

/-! ## A038328.P13968364145914744507

`A038232(n)*A140303(n)`
-/

namespace A038328.P13968364145914744507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A140303 n

end

end A038328.P13968364145914744507

namespace A038328

/-- `A038232(n)*A140303(n)` -/
def P13968364145914744507.Spec : Prop :=
  ∀ n, P13968364145914744507.a n = A038328 n

end A038328

/-! ## A038328.P14182850600946574836

`A038231(n)*A175840(n)`
-/

namespace A038328.P14182850600946574836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A175840 n

end

end A038328.P14182850600946574836

namespace A038328

/-- `A038231(n)*A175840(n)` -/
def P14182850600946574836.Spec : Prop :=
  ∀ n, P14182850600946574836.a n = A038328 n

end A038328

/-! ## A038328.P6587637144215973420

`A038220(n)*A262616(n)`
-/

namespace A038328.P6587637144215973420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n * A262616 n

end

end A038328.P6587637144215973420

namespace A038328

/-- `A038220(n)*A262616(n)` -/
def P6587637144215973420.Spec : Prop :=
  ∀ n, P6587637144215973420.a n = A038328 n

end A038328

/-! ## A038328.P2875828904324849977

`lcm(A027465(n), A038232(n))`
-/

namespace A038328.P2875828904324849977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038232 n)

end

end A038328.P2875828904324849977

namespace A038328

/-- `lcm(A027465(n), A038232(n))` -/
def P2875828904324849977.Spec : Prop :=
  ∀ n, (P2875828904324849977.a n : ℤ) = A038328 n

end A038328

/-! ## A038328.P3437763990335203030

`A130321(n)²*A038220(n)`
-/

namespace A038328.P3437763990335203030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038220 n

end

end A038328.P3437763990335203030

namespace A038328

/-- `A130321(n)²*A038220(n)` -/
def P3437763990335203030.Spec : Prop :=
  ∀ n, P3437763990335203030.a n = A038328 n

end A038328

/-! ## A038328.P12661995101127770692

`Δ[A007664(n)]*A038255(n)`
-/

namespace A038328.P12661995101127770692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038255 n

end

end A038328.P12661995101127770692

namespace A038328

/-- `Δ[A007664(n)]*A038255(n)` -/
def P12661995101127770692.Spec : Prop :=
  ∀ n, P12661995101127770692.a n = A038328 n

end A038328

/-! ## A038328.P3212891845781624570

`A038218(A061579(n))`
-/

namespace A038328.P3212891845781624570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038218 (A061579 n).toNat

end

end A038328.P3212891845781624570

namespace A038328

/-- `A038218(A061579(n))` -/
def P3212891845781624570.Spec : Prop :=
  ∀ n, P3212891845781624570.a n = A038328 n

end A038328

/-! ## A038328.P7210167257024598294

`A038218(A114327(n)+n)`
-/

namespace A038328.P7210167257024598294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038218 (A114327 n + (n : ℤ)).toNat

end

end A038328.P7210167257024598294

namespace A038328

/-- `A038218(A114327(n)+n)` -/
def P7210167257024598294.Spec : Prop :=
  ∀ n, P7210167257024598294.a n = A038328 n

end A038328

/-! ## A038328.P7964240052089407219

`A038218(A038722(n+1)-1)`
-/

namespace A038328.P7964240052089407219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038218 (A038722 (n + 1) - 1).toNat

end

end A038328.P7964240052089407219

namespace A038328

/-- `A038218(A038722(n+1)-1)` -/
def P7964240052089407219.Spec : Prop :=
  ∀ n, P7964240052089407219.a n = A038328 n

end A038328

/-! ## A038328.P14462960426159042398

`A038330(n)/A059268(n)`
-/

namespace A038328.P14462960426159042398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A059268 n : ℚ)

end

end A038328.P14462960426159042398

namespace A038328

/-- `A038330(n)/A059268(n)` -/
def P14462960426159042398.Spec : Prop :=
  ∀ n, P14462960426159042398.a n = (A038328 n : ℚ)

end A038328

/-! ## A038328.P11890311013740530580

`sqrt(A038327(n))*sqrt(A038330(n))`
-/

namespace A038328.P11890311013740530580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038327 n : ℝ) * Real.sqrt (A038330 n : ℝ)

end

end A038328.P11890311013740530580

namespace A038328

/-- `sqrt(A038327(n))*sqrt(A038330(n))` -/
def P11890311013740530580.Spec : Prop :=
  ∀ n, P11890311013740530580.a n = (A038328 n : ℝ)

end A038328

/-! ## A038328.P12495038539738860562

`gcd(A038330(n), A038332(n))`
-/

namespace A038328.P12495038539738860562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038330 n) (A038332 n)

end

end A038328.P12495038539738860562

namespace A038328

/-- `gcd(A038330(n), A038332(n))` -/
def P12495038539738860562.Spec : Prop :=
  ∀ n, (P12495038539738860562.a n : ℤ) = A038328 n

end A038328

/-! ## A038328.P3110988167910470545

`A038334(n)/A059268(n)²`
-/

namespace A038328.P3110988167910470545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038328.P3110988167910470545

namespace A038328

/-- `A038334(n)/A059268(n)²` -/
def P3110988167910470545.Spec : Prop :=
  ∀ n, P3110988167910470545.a n = (A038328 n : ℚ)

end A038328

/-! ## A038328.P15271279365301250927

`A038330(n)/A038334(n)*A038330(n)`
-/

namespace A038328.P15271279365301250927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A038334 n : ℚ) * (A038330 n : ℚ)

end

end A038328.P15271279365301250927

namespace A038328

/-- `A038330(n)/A038334(n)*A038330(n)` -/
def P15271279365301250927.Spec : Prop :=
  ∀ n, P15271279365301250927.a n = (A038328 n : ℚ)

end A038328

/-! ## A038328.P16675627683277851292

`gcd(A038334(n), A038336(n))`
-/

namespace A038328.P16675627683277851292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038334 n) (A038336 n)

end

end A038328.P16675627683277851292

namespace A038328

/-- `gcd(A038334(n), A038336(n))` -/
def P16675627683277851292.Spec : Prop :=
  ∀ n, (P16675627683277851292.a n : ℤ) = A038328 n

end A038328

/-! ## A038328.P2825643706520628316

`A038256(n)²/gcd(A038256(n), A038292(n))`
-/

namespace A038328.P2825643706520628316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038256 n ^ 2 : ℚ) / (Int.gcd (A038256 n) (A038292 n) : ℚ)

end

end A038328.P2825643706520628316

namespace A038328

/-- `A038256(n)²/gcd(A038256(n), A038292(n))` -/
def P2825643706520628316.Spec : Prop :=
  ∀ n, P2825643706520628316.a n = (A038328 n : ℚ)

end A038328

/-! ## A038328.P13542681820006363944

`sqrt(A038327(n)*A038330(n))`
-/

namespace A038328.P13542681820006363944
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038327 n * A038330 n : ℝ)

end

end A038328.P13542681820006363944

namespace A038328

/-- `sqrt(A038327(n)*A038330(n))` -/
def P13542681820006363944.Spec : Prop :=
  ∀ n, P13542681820006363944.a n = (A038328 n : ℝ)

end A038328

/-!
# A038329: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*3^j.

The programs for A038329, the canonical program `A038329.P4069789945351460797` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038329 has offset 0).

The definition of A038329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038329.P4069789945351460797

`A036561(n)*A038255(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038329

/-- `A036561(n)*A038255(n)` -/
def P4069789945351460797.Spec : Prop :=
  ∀ n, P4069789945351460797.a n = A038329 n

theorem P4069789945351460797.correct : P4069789945351460797.Spec := by
  intro n
  simp only [A038329]

end A038329

/-! ## A038329.P10095467920139290167

`A038231(n)*A098355(n)`
-/

namespace A038329.P10095467920139290167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A098355 n

end

end A038329.P10095467920139290167

namespace A038329

/-- `A038231(n)*A098355(n)` -/
def P10095467920139290167.Spec : Prop :=
  ∀ n, P10095467920139290167.a n = A038329 n

end A038329

/-! ## A038329.P15035110104960526630

`A038257(n)*A130321(n)`
-/

namespace A038329.P15035110104960526630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038257 n * A130321 n

end

end A038329.P15035110104960526630

namespace A038329

/-- `A038257(n)*A130321(n)` -/
def P15035110104960526630.Spec : Prop :=
  ∀ n, P15035110104960526630.a n = A038329 n

theorem P15035110104960526630.correct : P15035110104960526630.Spec := by
  intro n
  simp only [A038329, Nat.add_sub_cancel, A038329.P15035110104960526630.a, A038329.P4069789945351460797.a, A036561, A036561.P7490084913005378529.a, A038255, A038255.P9618650369920174651.a, A038257, A038257.P13466949147217766730.a, A130321, A130321.P54397649261359622.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A027465, A027465.P7731495138669227415.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038329

/-! ## A038329.P14182031409660390472

`A038233(n)*A140303(n)`
-/

namespace A038329.P14182031409660390472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A140303 n

end

end A038329.P14182031409660390472

namespace A038329

/-- `A038233(n)*A140303(n)` -/
def P14182031409660390472.Spec : Prop :=
  ∀ n, P14182031409660390472.a n = A038329 n

end A038329

/-! ## A038329.P6780352072937592154

`A038221(n)*A262616(n)`
-/

namespace A038329.P6780352072937592154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 n * A262616 n

end

end A038329.P6780352072937592154

namespace A038329

/-- `A038221(n)*A262616(n)` -/
def P6780352072937592154.Spec : Prop :=
  ∀ n, P6780352072937592154.a n = A038329 n

end A038329

/-! ## A038329.P14362808087534459296

`lcm(A038221(n), A038231(n))`
-/

namespace A038329.P14362808087534459296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038221 n) (A038231 n)

end

end A038329.P14362808087534459296

namespace A038329

/-- `lcm(A038221(n), A038231(n))` -/
def P14362808087534459296.Spec : Prop :=
  ∀ n, (P14362808087534459296.a n : ℤ) = A038329 n

end A038329

/-! ## A038329.P13288639865959514346

`lcm(A038233(n), A038257(n))`
-/

namespace A038329.P13288639865959514346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038233 n) (A038257 n)

end

end A038329.P13288639865959514346

namespace A038329

/-- `lcm(A038233(n), A038257(n))` -/
def P13288639865959514346.Spec : Prop :=
  ∀ n, (P13288639865959514346.a n : ℤ) = A038329 n

end A038329

/-! ## A038329.P12817625938121875114

`A130321(n)²*A038221(n)`
-/

namespace A038329.P12817625938121875114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038221 n

end

end A038329.P12817625938121875114

namespace A038329

/-- `A130321(n)²*A038221(n)` -/
def P12817625938121875114.Spec : Prop :=
  ∀ n, P12817625938121875114.a n = A038329 n

end A038329

/-! ## A038329.P5646615091225340597

`A013620(n)/A007318(n)*A038255(n)`
-/

namespace A038329.P5646615091225340597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) * (A038255 n : ℚ)

end

end A038329.P5646615091225340597

namespace A038329

/-- `A013620(n)/A007318(n)*A038255(n)` -/
def P5646615091225340597.Spec : Prop :=
  ∀ n, P5646615091225340597.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P17657969304637230700

`A038257(n)/A038221(n)*A038257(n)`
-/

namespace A038329.P17657969304637230700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A038221 n : ℚ) * (A038257 n : ℚ)

end

end A038329.P17657969304637230700

namespace A038329

/-- `A038257(n)/A038221(n)*A038257(n)` -/
def P17657969304637230700.Spec : Prop :=
  ∀ n, P17657969304637230700.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P307926111392759862

`A038230(A061579(n))`
-/

namespace A038329.P307926111392759862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038230 (A061579 n).toNat

end

end A038329.P307926111392759862

namespace A038329

/-- `A038230(A061579(n))` -/
def P307926111392759862.Spec : Prop :=
  ∀ n, P307926111392759862.a n = A038329 n

end A038329

/-! ## A038329.P14118482669726628256

`A038332(n)/A059268(n)`
-/

namespace A038329.P14118482669726628256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A059268 n : ℚ)

end

end A038329.P14118482669726628256

namespace A038329

/-- `A038332(n)/A059268(n)` -/
def P14118482669726628256.Spec : Prop :=
  ∀ n, P14118482669726628256.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P15556904384839942964

`gcd(A038332(n), A038335(n))`
-/

namespace A038329.P15556904384839942964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038332 n) (A038335 n)

end

end A038329.P15556904384839942964

namespace A038329

/-- `gcd(A038332(n), A038335(n))` -/
def P15556904384839942964.Spec : Prop :=
  ∀ n, (P15556904384839942964.a n : ℤ) = A038329 n

end A038329

/-! ## A038329.P8129565262968832135

`sqrt(A038327(n))*sqrt(A038335(n))`
-/

namespace A038329.P8129565262968832135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038327 n : ℝ) * Real.sqrt (A038335 n : ℝ)

end

end A038329.P8129565262968832135

namespace A038329

/-- `sqrt(A038327(n))*sqrt(A038335(n))` -/
def P8129565262968832135.Spec : Prop :=
  ∀ n, P8129565262968832135.a n = (A038329 n : ℝ)

end A038329

/-! ## A038329.P15485574368269649969

`A038338(n)/A059268(n)²`
-/

namespace A038329.P15485574368269649969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A038329.P15485574368269649969

namespace A038329

/-- `A038338(n)/A059268(n)²` -/
def P15485574368269649969.Spec : Prop :=
  ∀ n, P15485574368269649969.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P12012933717220019845

`A038332(n)/A038338(n)*A038332(n)`
-/

namespace A038329.P12012933717220019845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A038338 n : ℚ) * (A038332 n : ℚ)

end

end A038329.P12012933717220019845

namespace A038329

/-- `A038332(n)/A038338(n)*A038332(n)` -/
def P12012933717220019845.Spec : Prop :=
  ∀ n, P12012933717220019845.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P6554116969975707600

`A038257(n)²/A038221(n)`
-/

namespace A038329.P6554116969975707600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n ^ 2 : ℚ) / (A038221 n : ℚ)

end

end A038329.P6554116969975707600

namespace A038329

/-- `A038257(n)²/A038221(n)` -/
def P6554116969975707600.Spec : Prop :=
  ∀ n, P6554116969975707600.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P5521864348403929743

`A038257(n)²/gcd(A038257(n), A038293(n))`
-/

namespace A038329.P5521864348403929743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n ^ 2 : ℚ) / (Int.gcd (A038257 n) (A038293 n) : ℚ)

end

end A038329.P5521864348403929743

namespace A038329

/-- `A038257(n)²/gcd(A038257(n), A038293(n))` -/
def P5521864348403929743.Spec : Prop :=
  ∀ n, P5521864348403929743.a n = (A038329 n : ℚ)

end A038329

/-! ## A038329.P6442724809286297268

`sqrt(A038327(n)*A038335(n))`
-/

namespace A038329.P6442724809286297268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038327 n * A038335 n : ℝ)

end

end A038329.P6442724809286297268

namespace A038329

/-- `sqrt(A038327(n)*A038335(n))` -/
def P6442724809286297268.Spec : Prop :=
  ∀ n, P6442724809286297268.a n = (A038329 n : ℝ)

end A038329

/-! ## A038329.P3735627316246179625

`A038332(n)²/A038338(n)`
-/

namespace A038329.P3735627316246179625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n ^ 2 : ℚ) / (A038338 n : ℚ)

end

end A038329.P3735627316246179625

namespace A038329

/-- `A038332(n)²/A038338(n)` -/
def P3735627316246179625.Spec : Prop :=
  ∀ n, P3735627316246179625.a n = (A038329 n : ℚ)

end A038329

/-!
# A038330: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*4^j.

The programs for A038330, the canonical program `A038330.P7312664792564112654` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038330 has offset 0).

The definition of A038330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038330.P7312664792564112654

`A038328(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038330

/-- `A038328(n)*A059268(n)` -/
def P7312664792564112654.Spec : Prop :=
  ∀ n, P7312664792564112654.a n = A038330 n

theorem P7312664792564112654.correct : P7312664792564112654.Spec := by
  intro n
  simp only [A038330]

end A038330

/-! ## A038330.P5366736710909021127

`A038258(n)*A130321(n)`
-/

namespace A038330.P5366736710909021127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038258 n * A130321 n

end

end A038330.P5366736710909021127

namespace A038330

/-- `A038258(n)*A130321(n)` -/
def P5366736710909021127.Spec : Prop :=
  ∀ n, P5366736710909021127.a n = A038330 n

theorem P5366736710909021127.correct : P5366736710909021127.Spec := by
  intro n
  simp only [A038330, Nat.add_sub_cancel, A038330.P5366736710909021127.a, A038330.P7312664792564112654.a, A038258, A038258.P18171415489042003972.a, A038328, A038328.P13362805777604187505.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A038256, A038256.P10874332263028825232.a, A038327, A038327.P13753667775385349031.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A038255, A038255.P9618650369920174651.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A027465, A027465.P7731495138669227415.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038330

/-! ## A038330.P9332855706962584303

`A038256(n)*A137688(n)`
-/

namespace A038330.P9332855706962584303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A137688 n

end

end A038330.P9332855706962584303

namespace A038330

/-- `A038256(n)*A137688(n)` -/
def P9332855706962584303.Spec : Prop :=
  ∀ n, P9332855706962584303.a n = A038330 n

end A038330

/-! ## A038330.P3825898806171970000

`A038234(n)*A140303(n)`
-/

namespace A038330.P3825898806171970000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038234 n * A140303 n

end

end A038330.P3825898806171970000

namespace A038330

/-- `A038234(n)*A140303(n)` -/
def P3825898806171970000.Spec : Prop :=
  ∀ n, P3825898806171970000.a n = A038330 n

end A038330

/-! ## A038330.P15021586315548081311

`A038232(n)*A175840(n)`
-/

namespace A038330.P15021586315548081311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A175840 n

end

end A038330.P15021586315548081311

namespace A038330

/-- `A038232(n)*A175840(n)` -/
def P15021586315548081311.Spec : Prop :=
  ∀ n, P15021586315548081311.a n = A038330 n

end A038330

/-! ## A038330.P12100835846037845793

`A038222(n)*A262616(n)`
-/

namespace A038330.P12100835846037845793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A262616 n

end

end A038330.P12100835846037845793

namespace A038330

/-- `A038222(n)*A262616(n)` -/
def P12100835846037845793.Spec : Prop :=
  ∀ n, P12100835846037845793.a n = A038330 n

end A038330

/-! ## A038330.P3060664035713719887

`A038231(n)*A356036(n)`
-/

namespace A038330.P3060664035713719887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A356036 n

end

end A038330.P3060664035713719887

namespace A038330

/-- `A038231(n)*A356036(n)` -/
def P3060664035713719887.Spec : Prop :=
  ∀ n, P3060664035713719887.a n = A038330 n

end A038330

/-! ## A038330.P6929172346256360197

`A038255(n)*A368043(n)`
-/

namespace A038330.P6929172346256360197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A368043 n

end

end A038330.P6929172346256360197

namespace A038330

/-- `A038255(n)*A368043(n)` -/
def P6929172346256360197.Spec : Prop :=
  ∀ n, P6929172346256360197.a n = A038330 n

end A038330

/-! ## A038330.P6460581193259820029

`lcm(A027465(n), A038234(n))`
-/

namespace A038330.P6460581193259820029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038234 n)

end

end A038330.P6460581193259820029

namespace A038330

/-- `lcm(A027465(n), A038234(n))` -/
def P6460581193259820029.Spec : Prop :=
  ∀ n, (P6460581193259820029.a n : ℤ) = A038330 n

end A038330

/-! ## A038330.P14095033280687559450

`A059268(n)²*A038327(n)`
-/

namespace A038330.P14095033280687559450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038327 n

end

end A038330.P14095033280687559450

namespace A038330

/-- `A059268(n)²*A038327(n)` -/
def P14095033280687559450.Spec : Prop :=
  ∀ n, P14095033280687559450.a n = A038330 n

theorem P14095033280687559450.correct : P14095033280687559450.Spec := by
  intro n
  simp only [A038330, Nat.add_sub_cancel, A038330.P14095033280687559450.a, A038330.P7312664792564112654.a, A038327, A038327.P13753667775385349031.a, A038328, A038328.P13362805777604187505.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A038255, A038255.P9618650369920174651.a, A130321, A130321.P54397649261359622.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A027465, A027465.P7731495138669227415.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038330

/-! ## A038330.P1787209371712561875

`A137688(n)²*A027465(n)`
-/

namespace A038330.P1787209371712561875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A027465 n

end

end A038330.P1787209371712561875

namespace A038330

/-- `A137688(n)²*A027465(n)` -/
def P1787209371712561875.Spec : Prop :=
  ∀ n, P1787209371712561875.a n = A038330 n

end A038330

/-! ## A038330.P11124245644728515754

`A130321(n)²*A038222(n)`
-/

namespace A038330.P11124245644728515754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038222 n

end

end A038330.P11124245644728515754

namespace A038330

/-- `A130321(n)²*A038222(n)` -/
def P11124245644728515754.Spec : Prop :=
  ∀ n, P11124245644728515754.a n = A038330 n

end A038330

/-! ## A038330.P15203237742179960009

`4^A003056(n)*A027465(n)`
-/

namespace A038330.P15203237742179960009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A003056 n : ℤ) * (A027465 n : ℚ)

end

end A038330.P15203237742179960009

namespace A038330

/-- `4^A003056(n)*A027465(n)` -/
def P15203237742179960009.Spec : Prop :=
  ∀ n, P15203237742179960009.a n = (A038330 n : ℚ)

end A038330

/-! ## A038330.P14303794637203751449

`Δ[A007664(n)]²*A027465(n)`
-/

namespace A038330.P14303794637203751449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A027465 n

end

end A038330.P14303794637203751449

namespace A038330

/-- `Δ[A007664(n)]²*A027465(n)` -/
def P14303794637203751449.Spec : Prop :=
  ∀ n, P14303794637203751449.a n = A038330 n

end A038330

/-! ## A038330.P13301033085714393200

`A038328(n)*A130321(A112367(n))`
-/

namespace A038330.P13301033085714393200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038328 n * A130321 (A112367 n).toNat

end

end A038330.P13301033085714393200

namespace A038330

/-- `A038328(n)*A130321(A112367(n))` -/
def P13301033085714393200.Spec : Prop :=
  ∀ n, P13301033085714393200.a n = A038330 n

end A038330

/-! ## A038330.P14224370017638214056

`A038328(n)/A038327(n)*A038328(n)`
-/

namespace A038330.P14224370017638214056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038328 n : ℚ) / (A038327 n : ℚ) * (A038328 n : ℚ)

end

end A038330.P14224370017638214056

namespace A038330

/-- `A038328(n)/A038327(n)*A038328(n)` -/
def P14224370017638214056.Spec : Prop :=
  ∀ n, P14224370017638214056.a n = (A038330 n : ℚ)

end A038330

/-! ## A038330.P3460584238925179213

`A038242(A061579(n))`
-/

namespace A038330.P3460584238925179213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038242 (A061579 n).toNat

end

end A038330.P3460584238925179213

namespace A038330

/-- `A038242(A061579(n))` -/
def P3460584238925179213.Spec : Prop :=
  ∀ n, P3460584238925179213.a n = A038330 n

end A038330

/-! ## A038330.P3211962263829981331

`A038334(n)/A059268(n)`
-/

namespace A038330.P3211962263829981331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038334 n : ℚ) / (A059268 n : ℚ)

end

end A038330.P3211962263829981331

namespace A038330

/-- `A038334(n)/A059268(n)` -/
def P3211962263829981331.Spec : Prop :=
  ∀ n, P3211962263829981331.a n = (A038330 n : ℚ)

end A038330

/-! ## A038330.P14271123753086023742

`sqrt(A038328(n))*sqrt(A038334(n))`
-/

namespace A038330.P14271123753086023742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038328 n : ℝ) * Real.sqrt (A038334 n : ℝ)

end

end A038330.P14271123753086023742

namespace A038330

/-- `sqrt(A038328(n))*sqrt(A038334(n))` -/
def P14271123753086023742.Spec : Prop :=
  ∀ n, P14271123753086023742.a n = (A038330 n : ℝ)

end A038330

/-! ## A038330.P15241333329131156107

`A038332(n)/A038335(n)*A038332(n)`
-/

namespace A038330.P15241333329131156107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A038335 n : ℚ) * (A038332 n : ℚ)

end

end A038330.P15241333329131156107

namespace A038330

/-- `A038332(n)/A038335(n)*A038332(n)` -/
def P15241333329131156107.Spec : Prop :=
  ∀ n, P15241333329131156107.a n = (A038330 n : ℚ)

end A038330

/-!
# A038331: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*5^j.

The programs for A038331, the canonical program `A038331.P5405017633700267871` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038331 has offset 0).

The definition of A038331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038331.P11714856916742811860

`A013628(n)*A140303(n)`
-/

namespace A038331.P11714856916742811860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013628 n * A140303 n

end

end A038331.P11714856916742811860

namespace A038331

/-- `A013628(n)*A140303(n)` -/
def P11714856916742811860.Spec : Prop :=
  ∀ n, P11714856916742811860.a n = A038331 n

end A038331

/-! ## A038331.P5405017633700267871

`A038231(n)*A120027(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038331

/-- `A038231(n)*A120027(n)` -/
def P5405017633700267871.Spec : Prop :=
  ∀ n, P5405017633700267871.a n = A038331 n

theorem P5405017633700267871.correct : P5405017633700267871.Spec := by
  intro n
  simp only [A038331]

end A038331

/-! ## A038331.P15556464085022378657

`A038259(n)*A130321(n)`
-/

namespace A038331.P15556464085022378657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038259 n * A130321 n

end

end A038331.P15556464085022378657

namespace A038331

/-- `A038259(n)*A130321(n)` -/
def P15556464085022378657.Spec : Prop :=
  ∀ n, P15556464085022378657.a n = A038331 n

end A038331

/-! ## A038331.P967845455540156702

`A013622(n)*A262616(n)`
-/

namespace A038331.P967845455540156702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 n * A262616 n

end

end A038331.P967845455540156702

namespace A038331

/-- `A013622(n)*A262616(n)` -/
def P967845455540156702.Spec : Prop :=
  ∀ n, P967845455540156702.a n = A038331 n

end A038331

/-! ## A038331.P13134855851321534269

`lcm(A013622(n), A013628(n))`
-/

namespace A038331.P13134855851321534269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013622 n) (A013628 n)

end

end A038331.P13134855851321534269

namespace A038331

/-- `lcm(A013622(n), A013628(n))` -/
def P13134855851321534269.Spec : Prop :=
  ∀ n, (P13134855851321534269.a n : ℤ) = A038331 n

end A038331

/-! ## A038331.P13280335479154628405

`lcm(A013612(n), A038327(n))`
-/

namespace A038331.P13280335479154628405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038327 n)

end

end A038331.P13280335479154628405

namespace A038331

/-- `lcm(A013612(n), A038327(n))` -/
def P13280335479154628405.Spec : Prop :=
  ∀ n, (P13280335479154628405.a n : ℤ) = A038331 n

end A038331

/-! ## A038331.P9607293191730623999

`lcm(A038231(n), A038259(n))`
-/

namespace A038331.P9607293191730623999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038231 n) (A038259 n)

end

end A038331.P9607293191730623999

namespace A038331

/-- `lcm(A038231(n), A038259(n))` -/
def P9607293191730623999.Spec : Prop :=
  ∀ n, (P9607293191730623999.a n : ℤ) = A038331 n

end A038331

/-! ## A038331.P4068776974407786244

`A130321(n)²*A013622(n)`
-/

namespace A038331.P4068776974407786244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013622 n

end

end A038331.P4068776974407786244

namespace A038331

/-- `A130321(n)²*A013622(n)` -/
def P4068776974407786244.Spec : Prop :=
  ∀ n, P4068776974407786244.a n = A038331 n

end A038331

/-! ## A038331.P9673015663553156197

`A038255(n)*A232646(n+1)`
-/

namespace A038331.P9673015663553156197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A232646 (n + 1)

end

end A038331.P9673015663553156197

namespace A038331

/-- `A038255(n)*A232646(n+1)` -/
def P9673015663553156197.Spec : Prop :=
  ∀ n, P9673015663553156197.a n = A038331 n

end A038331

/-! ## A038331.P6548507268987371870

`A038254(A061579(n))`
-/

namespace A038331.P6548507268987371870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038254 (A061579 n).toNat

end

end A038331.P6548507268987371870

namespace A038331

/-- `A038254(A061579(n))` -/
def P6548507268987371870.Spec : Prop :=
  ∀ n, P6548507268987371870.a n = A038331 n

end A038331

/-! ## A038331.P3841523490381716009

`A038336(n)/A059268(n)`
-/

namespace A038331.P3841523490381716009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038336 n : ℚ) / (A059268 n : ℚ)

end

end A038331.P3841523490381716009

namespace A038331

/-- `A038336(n)/A059268(n)` -/
def P3841523490381716009.Spec : Prop :=
  ∀ n, P3841523490381716009.a n = (A038331 n : ℚ)

end A038331

/-!
# A038332: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*6^j.

The programs for A038332, the canonical program `A038332.P474245065712382521` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038332 has offset 0).

The definition of A038332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038332.P474245065712382521

`A036561(n)*A038256(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038332

/-- `A036561(n)*A038256(n)` -/
def P474245065712382521.Spec : Prop :=
  ∀ n, P474245065712382521.a n = A038332 n

theorem P474245065712382521.correct : P474245065712382521.Spec := by
  intro n
  simp only [A038332]

end A038332

/-! ## A038332.P18112746799955539417

`A038329(n)*A059268(n)`
-/

namespace A038332.P18112746799955539417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038329 n * A059268 n

end

end A038332.P18112746799955539417

namespace A038332

/-- `A038329(n)*A059268(n)` -/
def P18112746799955539417.Spec : Prop :=
  ∀ n, P18112746799955539417.a n = A038332 n

theorem P18112746799955539417.correct : P18112746799955539417.Spec := by
  intro n
  simp only [A038332, Nat.add_sub_cancel, A038332.P18112746799955539417.a, A038332.P474245065712382521.a, A036561, A036561.P7490084913005378529.a, A038256, A038256.P10874332263028825232.a, A038329, A038329.P4069789945351460797.a, A059268, A059268.P15217573790077737885.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A038255, A038255.P9618650369920174651.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A027465, A027465.P7731495138669227415.a, A130321, A130321.P54397649261359622.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038332

/-! ## A038332.P6271948790183517796

`A038232(n)*A098355(n)`
-/

namespace A038332.P6271948790183517796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A098355 n

end

end A038332.P6271948790183517796

namespace A038332

/-- `A038232(n)*A098355(n)` -/
def P6271948790183517796.Spec : Prop :=
  ∀ n, P6271948790183517796.a n = A038332 n

end A038332

/-! ## A038332.P16041823351011297042

`A038231(n)*A100852(n)`
-/

namespace A038332.P16041823351011297042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n * A100852 n

end

end A038332.P16041823351011297042

namespace A038332

/-- `A038231(n)*A100852(n)` -/
def P16041823351011297042.Spec : Prop :=
  ∀ n, P16041823351011297042.a n = A038332 n

end A038332

/-! ## A038332.P17929107176016164673

`A038255(n)*A100851(n)`
-/

namespace A038332.P17929107176016164673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n * A100851 n

end

end A038332.P17929107176016164673

namespace A038332

/-- `A038255(n)*A100851(n)` -/
def P17929107176016164673.Spec : Prop :=
  ∀ n, P17929107176016164673.a n = A038332 n

end A038332

/-! ## A038332.P11184212557609019655

`A038260(n)*A130321(n)`
-/

namespace A038332.P11184212557609019655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038260 n * A130321 n

end

end A038332.P11184212557609019655

namespace A038332

/-- `A038260(n)*A130321(n)` -/
def P11184212557609019655.Spec : Prop :=
  ∀ n, P11184212557609019655.a n = A038332 n

end A038332

/-! ## A038332.P6738661579775055957

`A038257(n)*A137688(n)`
-/

namespace A038332.P6738661579775055957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038257 n * A137688 n

end

end A038332.P6738661579775055957

namespace A038332

/-- `A038257(n)*A137688(n)` -/
def P6738661579775055957.Spec : Prop :=
  ∀ n, P6738661579775055957.a n = A038332 n

end A038332

/-! ## A038332.P11052295215449785303

`A038236(n)*A140303(n)`
-/

namespace A038332.P11052295215449785303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038236 n * A140303 n

end

end A038332.P11052295215449785303

namespace A038332

/-- `A038236(n)*A140303(n)` -/
def P11052295215449785303.Spec : Prop :=
  ∀ n, P11052295215449785303.a n = A038332 n

end A038332

/-! ## A038332.P17110786465826038508

`A038233(n)*A175840(n)`
-/

namespace A038332.P17110786465826038508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A175840 n

end

end A038332.P17110786465826038508

namespace A038332

/-- `A038233(n)*A175840(n)` -/
def P17110786465826038508.Spec : Prop :=
  ∀ n, P17110786465826038508.a n = A038332 n

end A038332

/-! ## A038332.P18067073163013022427

`A038224(n)*A262616(n)`
-/

namespace A038332.P18067073163013022427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038224 n * A262616 n

end

end A038332.P18067073163013022427

namespace A038332

/-- `A038224(n)*A262616(n)` -/
def P18067073163013022427.Spec : Prop :=
  ∀ n, P18067073163013022427.a n = A038332 n

end A038332

/-! ## A038332.P8900956846086591526

`lcm(A038221(n), A038232(n))`
-/

namespace A038332.P8900956846086591526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038221 n) (A038232 n)

end

end A038332.P8900956846086591526

namespace A038332

/-- `lcm(A038221(n), A038232(n))` -/
def P8900956846086591526.Spec : Prop :=
  ∀ n, (P8900956846086591526.a n : ℤ) = A038332 n

end A038332

/-! ## A038332.P15584295050525748370

`lcm(A038224(n), A038236(n))`
-/

namespace A038332.P15584295050525748370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038224 n) (A038236 n)

end

end A038332.P15584295050525748370

namespace A038332

/-- `lcm(A038224(n), A038236(n))` -/
def P15584295050525748370.Spec : Prop :=
  ∀ n, (P15584295050525748370.a n : ℤ) = A038332 n

end A038332

/-! ## A038332.P14150186846356092109

`lcm(A038257(n), A038328(n))`
-/

namespace A038332.P14150186846356092109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038257 n) (A038328 n)

end

end A038332.P14150186846356092109

namespace A038332

/-- `lcm(A038257(n), A038328(n))` -/
def P14150186846356092109.Spec : Prop :=
  ∀ n, (P14150186846356092109.a n : ℤ) = A038332 n

end A038332

/-! ## A038332.P16606506336612202203

`A130321(n)²*A038224(n)`
-/

namespace A038332.P16606506336612202203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038224 n

end

end A038332.P16606506336612202203

namespace A038332

/-- `A130321(n)²*A038224(n)` -/
def P16606506336612202203.Spec : Prop :=
  ∀ n, P16606506336612202203.a n = A038332 n

end A038332

/-! ## A038332.P9029938227703969943

`A038266(A061579(n))`
-/

namespace A038332.P9029938227703969943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038266 (A061579 n).toNat

end

end A038332.P9029938227703969943

namespace A038332

/-- `A038266(A061579(n))` -/
def P9029938227703969943.Spec : Prop :=
  ∀ n, P9029938227703969943.a n = A038332 n

end A038332

/-! ## A038332.P1801338294776211526

`sqrt(A038330(n))*sqrt(A038335(n))`
-/

namespace A038332.P1801338294776211526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038330 n : ℝ) * Real.sqrt (A038335 n : ℝ)

end

end A038332.P1801338294776211526

namespace A038332

/-- `sqrt(A038330(n))*sqrt(A038335(n))` -/
def P1801338294776211526.Spec : Prop :=
  ∀ n, P1801338294776211526.a n = (A038332 n : ℝ)

end A038332

/-! ## A038332.P6632758932399323462

`A038338(n)/A059268(n)`
-/

namespace A038332.P6632758932399323462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A059268 n : ℚ)

end

end A038332.P6632758932399323462

namespace A038332

/-- `A038338(n)/A059268(n)` -/
def P6632758932399323462.Spec : Prop :=
  ∀ n, P6632758932399323462.a n = (A038332 n : ℚ)

end A038332

/-! ## A038332.P15197511905747851389

`sqrt(A038329(n))*sqrt(A038338(n))`
-/

namespace A038332.P15197511905747851389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038329 n : ℝ) * Real.sqrt (A038338 n : ℝ)

end

end A038332.P15197511905747851389

namespace A038332

/-- `sqrt(A038329(n))*sqrt(A038338(n))` -/
def P15197511905747851389.Spec : Prop :=
  ∀ n, P15197511905747851389.a n = (A038332 n : ℝ)

end A038332

/-! ## A038332.P12970376865598051984

`sqrt(A038329(n)*A038338(n))`
-/

namespace A038332.P12970376865598051984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038329 n * A038338 n : ℝ)

end

end A038332.P12970376865598051984

namespace A038332

/-- `sqrt(A038329(n)*A038338(n))` -/
def P12970376865598051984.Spec : Prop :=
  ∀ n, P12970376865598051984.a n = (A038332 n : ℝ)

end A038332

/-! ## A038332.P7243848850749067625

`sqrt(A038330(n)*A038335(n))`
-/

namespace A038332.P7243848850749067625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038330 n * A038335 n : ℝ)

end

end A038332.P7243848850749067625

namespace A038332

/-- `sqrt(A038330(n)*A038335(n))` -/
def P7243848850749067625.Spec : Prop :=
  ∀ n, P7243848850749067625.a n = (A038332 n : ℝ)

end A038332

/-!
# A038333: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*7^j.

The programs for A038333, the canonical program `A038333.P10434678551363861500` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038333 has offset 0).

The definition of A038333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038333.P10434678551363861500

`A036565(n)*A038255(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038333

/-- `A036565(n)*A038255(n)` -/
def P10434678551363861500.Spec : Prop :=
  ∀ n, P10434678551363861500.a n = A038333 n

theorem P10434678551363861500.correct : P10434678551363861500.Spec := by
  intro n
  simp only [A038333]

end A038333

/-! ## A038333.P10116970321653817820

`A013627(n)*A130321(n)`
-/

namespace A038333.P10116970321653817820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013627 n * A130321 n

end

end A038333.P10116970321653817820

namespace A038333

/-- `A013627(n)*A130321(n)` -/
def P10116970321653817820.Spec : Prop :=
  ∀ n, P10116970321653817820.a n = A038333 n

end A038333

/-! ## A038333.P17160235874152869997

`A013625(n)*A140303(n)`
-/

namespace A038333.P17160235874152869997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013625 n * A140303 n

end

end A038333.P17160235874152869997

namespace A038333

/-- `A013625(n)*A140303(n)` -/
def P17160235874152869997.Spec : Prop :=
  ∀ n, P17160235874152869997.a n = A038333 n

end A038333

/-! ## A038333.P14400067428311414936

`A013624(n)*A262616(n)`
-/

namespace A038333.P14400067428311414936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013624 n * A262616 n

end

end A038333.P14400067428311414936

namespace A038333

/-- `A013624(n)*A262616(n)` -/
def P14400067428311414936.Spec : Prop :=
  ∀ n, P14400067428311414936.a n = A038333 n

end A038333

/-! ## A038333.P7252030060927340272

`lcm(A013624(n), A013625(n))`
-/

namespace A038333.P7252030060927340272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013624 n) (A013625 n)

end

end A038333.P7252030060927340272

namespace A038333

/-- `lcm(A013624(n), A013625(n))` -/
def P7252030060927340272.Spec : Prop :=
  ∀ n, (P7252030060927340272.a n : ℤ) = A038333 n

end A038333

/-! ## A038333.P7184609926970709536

`lcm(A013627(n), A038231(n))`
-/

namespace A038333.P7184609926970709536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013627 n) (A038231 n)

end

end A038333.P7184609926970709536

namespace A038333

/-- `lcm(A013627(n), A038231(n))` -/
def P7184609926970709536.Spec : Prop :=
  ∀ n, (P7184609926970709536.a n : ℤ) = A038333 n

end A038333

/-! ## A038333.P121229519680202213

`lcm(A013614(n), A038327(n))`
-/

namespace A038333.P121229519680202213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013614 n) (A038327 n)

end

end A038333.P121229519680202213

namespace A038333

/-- `lcm(A013614(n), A038327(n))` -/
def P121229519680202213.Spec : Prop :=
  ∀ n, (P121229519680202213.a n : ℤ) = A038333 n

end A038333

/-! ## A038333.P2443993502405515331

`A130321(n)²*A013624(n)`
-/

namespace A038333.P2443993502405515331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A013624 n

end

end A038333.P2443993502405515331

namespace A038333

/-- `A130321(n)²*A013624(n)` -/
def P2443993502405515331.Spec : Prop :=
  ∀ n, P2443993502405515331.a n = A038333 n

end A038333

/-! ## A038333.P13949840019424806024

`A013627(n)/A013624(n)*A013627(n)`
-/

namespace A038333.P13949840019424806024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n : ℚ) / (A013624 n : ℚ) * (A013627 n : ℚ)

end

end A038333.P13949840019424806024

namespace A038333

/-- `A013627(n)/A013624(n)*A013627(n)` -/
def P13949840019424806024.Spec : Prop :=
  ∀ n, P13949840019424806024.a n = (A038333 n : ℚ)

end A038333

/-! ## A038333.P3051922501229350285

`A038278(A061579(n))`
-/

namespace A038333.P3051922501229350285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038278 (A061579 n).toNat

end

end A038333.P3051922501229350285

namespace A038333

/-- `A038278(A061579(n))` -/
def P3051922501229350285.Spec : Prop :=
  ∀ n, P3051922501229350285.a n = A038333 n

end A038333

/-! ## A038333.P2475138185741608539

`A013627(n)²/A013624(n)`
-/

namespace A038333.P2475138185741608539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n ^ 2 : ℚ) / (A013624 n : ℚ)

end

end A038333.P2475138185741608539

namespace A038333

/-- `A013627(n)²/A013624(n)` -/
def P2475138185741608539.Spec : Prop :=
  ∀ n, P2475138185741608539.a n = (A038333 n : ℚ)

end A038333

/-! ## A038333.P5920380205323474040

`A013627(n)²/gcd(A013627(n), A038297(n))`
-/

namespace A038333.P5920380205323474040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013627 n ^ 2 : ℚ) / (Int.gcd (A013627 n) (A038297 n) : ℚ)

end

end A038333.P5920380205323474040

namespace A038333

/-- `A013627(n)²/gcd(A013627(n), A038297(n))` -/
def P5920380205323474040.Spec : Prop :=
  ∀ n, P5920380205323474040.a n = (A038333 n : ℚ)

end A038333

/-!
# A038334: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*8^j.

The programs for A038334, the canonical program `A038334.P12500587317932867183` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038334 has offset 0).

The definition of A038334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038334.P12500587317932867183

`A038330(n)*A059268(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038334

/-- `A038330(n)*A059268(n)` -/
def P12500587317932867183.Spec : Prop :=
  ∀ n, P12500587317932867183.a n = A038334 n

theorem P12500587317932867183.correct : P12500587317932867183.Spec := by
  intro n
  simp only [A038334]

end A038334

/-! ## A038334.P18041644963683607485

`A038262(n)*A130321(n)`
-/

namespace A038334.P18041644963683607485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038262 n * A130321 n

end

end A038334.P18041644963683607485

namespace A038334

/-- `A038262(n)*A130321(n)` -/
def P18041644963683607485.Spec : Prop :=
  ∀ n, P18041644963683607485.a n = A038334 n

theorem P18041644963683607485.correct : P18041644963683607485.Spec := by
  intro n
  simp only [A038334, Nat.add_sub_cancel, A038334.P18041644963683607485.a, A038334.P12500587317932867183.a, A038262, A038262.P11562986506712065470.a, A038330, A038330.P7312664792564112654.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P54397649261359622.a, A018900, A018900.P2868698677378612256.a, A038258, A038258.P18171415489042003972.a, A038328, A038328.P13362805777604187505.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A038256, A038256.P10874332263028825232.a, A038327, A038327.P13753667775385349031.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A038255, A038255.P9618650369920174651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038334

/-! ## A038334.P11753904977791298549

`A038258(n)*A137688(n)`
-/

namespace A038334.P11753904977791298549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038258 n * A137688 n

end

end A038334.P11753904977791298549

namespace A038334

/-- `A038258(n)*A137688(n)` -/
def P11753904977791298549.Spec : Prop :=
  ∀ n, P11753904977791298549.a n = A038334 n

end A038334

/-! ## A038334.P242770562065704202

`A038238(n)*A140303(n)`
-/

namespace A038334.P242770562065704202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038238 n * A140303 n

end

end A038334.P242770562065704202

namespace A038334

/-- `A038238(n)*A140303(n)` -/
def P242770562065704202.Spec : Prop :=
  ∀ n, P242770562065704202.a n = A038334 n

end A038334

/-! ## A038334.P15313283692568516742

`A038234(n)*A175840(n)`
-/

namespace A038334.P15313283692568516742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038234 n * A175840 n

end

end A038334.P15313283692568516742

namespace A038334

/-- `A038234(n)*A175840(n)` -/
def P15313283692568516742.Spec : Prop :=
  ∀ n, P15313283692568516742.a n = A038334 n

end A038334

/-! ## A038334.P9638825300584908564

`A038226(n)*A262616(n)`
-/

namespace A038334.P9638825300584908564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038226 n * A262616 n

end

end A038334.P9638825300584908564

namespace A038334

/-- `A038226(n)*A262616(n)` -/
def P9638825300584908564.Spec : Prop :=
  ∀ n, P9638825300584908564.a n = A038334 n

end A038334

/-! ## A038334.P7932685202481844403

`A038232(n)*A356036(n)`
-/

namespace A038334.P7932685202481844403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A356036 n

end

end A038334.P7932685202481844403

namespace A038334

/-- `A038232(n)*A356036(n)` -/
def P7932685202481844403.Spec : Prop :=
  ∀ n, P7932685202481844403.a n = A038334 n

end A038334

/-! ## A038334.P441112579788512050

`A038256(n)*A368043(n)`
-/

namespace A038334.P441112579788512050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A368043 n

end

end A038334.P441112579788512050

namespace A038334

/-- `A038256(n)*A368043(n)` -/
def P441112579788512050.Spec : Prop :=
  ∀ n, P441112579788512050.a n = A038334 n

end A038334

/-! ## A038334.P1204081446185176390

`lcm(A027465(n), A038238(n))`
-/

namespace A038334.P1204081446185176390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038238 n)

end

end A038334.P1204081446185176390

namespace A038334

/-- `lcm(A027465(n), A038238(n))` -/
def P1204081446185176390.Spec : Prop :=
  ∀ n, (P1204081446185176390.a n : ℤ) = A038334 n

end A038334

/-! ## A038334.P716487026320477281

`A059268(n)²*A038328(n)`
-/

namespace A038334.P716487026320477281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038328 n

end

end A038334.P716487026320477281

namespace A038334

/-- `A059268(n)²*A038328(n)` -/
def P716487026320477281.Spec : Prop :=
  ∀ n, P716487026320477281.a n = A038334 n

theorem P716487026320477281.correct : P716487026320477281.Spec := by
  intro n
  simp only [A038334, Nat.add_sub_cancel, A038334.P716487026320477281.a, A038334.P12500587317932867183.a, A038328, A038328.P13362805777604187505.a, A038330, A038330.P7312664792564112654.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A038327, A038327.P13753667775385349031.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A038255, A038255.P9618650369920174651.a, A130321, A130321.P54397649261359622.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A027465, A027465.P7731495138669227415.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038334

/-! ## A038334.P11647848686360696932

`A130321(n)²*A038226(n)`
-/

namespace A038334.P11647848686360696932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038226 n

end

end A038334.P11647848686360696932

namespace A038334

/-- `A130321(n)²*A038226(n)` -/
def P11647848686360696932.Spec : Prop :=
  ∀ n, P11647848686360696932.a n = A038334 n

end A038334

/-! ## A038334.P4570033615728115859

`A137688(n)²*A038220(n)`
-/

namespace A038334.P4570033615728115859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A038220 n

end

end A038334.P4570033615728115859

namespace A038334

/-- `A137688(n)²*A038220(n)` -/
def P4570033615728115859.Spec : Prop :=
  ∀ n, P4570033615728115859.a n = A038334 n

end A038334

/-! ## A038334.P16867690830875076396

`A130321(A112367(n))²*A038328(n)`
-/

namespace A038334.P16867690830875076396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A112367 n).toNat ^ 2 * A038328 n

end

end A038334.P16867690830875076396

namespace A038334

/-- `A130321(A112367(n))²*A038328(n)` -/
def P16867690830875076396.Spec : Prop :=
  ∀ n, P16867690830875076396.a n = A038334 n

end A038334

/-! ## A038334.P4848712227268856991

`A038262(n)/A038226(n)*A038262(n)`
-/

namespace A038334.P4848712227268856991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n : ℚ) / (A038226 n : ℚ) * (A038262 n : ℚ)

end

end A038334.P4848712227268856991

namespace A038334

/-- `A038262(n)/A038226(n)*A038262(n)` -/
def P4848712227268856991.Spec : Prop :=
  ∀ n, P4848712227268856991.a n = (A038334 n : ℚ)

end A038334

/-! ## A038334.P1948213278431142136

`A038330(n)/A038328(n)*A038330(n)`
-/

namespace A038334.P1948213278431142136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038330 n : ℚ) / (A038328 n : ℚ) * (A038330 n : ℚ)

end

end A038334.P1948213278431142136

namespace A038334

/-- `A038330(n)/A038328(n)*A038330(n)` -/
def P1948213278431142136.Spec : Prop :=
  ∀ n, P1948213278431142136.a n = (A038334 n : ℚ)

end A038334

/-! ## A038334.P12403538952835129695

`A038327(n)*A059268(n)*A059268(n)²`
-/

namespace A038334.P12403538952835129695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038327 n * A059268 n * A059268 n ^ 2

end

end A038334.P12403538952835129695

namespace A038334

/-- `A038327(n)*A059268(n)*A059268(n)²` -/
def P12403538952835129695.Spec : Prop :=
  ∀ n, P12403538952835129695.a n = A038334 n

theorem P12403538952835129695.correct : P12403538952835129695.Spec := by
  intro n
  simp only [A038334, Nat.add_sub_cancel, A038334.P12403538952835129695.a, A038334.P12500587317932867183.a, A038327, A038327.P13753667775385349031.a, A038330, A038330.P7312664792564112654.a, A059268, A059268.P15217573790077737885.a, A018900, A018900.P2868698677378612256.a, A038255, A038255.P9618650369920174651.a, A038328, A038328.P13362805777604187505.a, A130321, A130321.P54397649261359622.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A027465, A027465.P7731495138669227415.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038334

/-! ## A038334.P2221164574899485051

`(A038328(n)/A038327(n))²*A038328(n)`
-/

namespace A038334.P2221164574899485051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038328 n : ℚ) / (A038327 n : ℚ)) ^ 2 * (A038328 n : ℚ)

end

end A038334.P2221164574899485051

namespace A038334

/-- `(A038328(n)/A038327(n))²*A038328(n)` -/
def P2221164574899485051.Spec : Prop :=
  ∀ n, P2221164574899485051.a n = (A038334 n : ℚ)

end A038334

/-! ## A038334.P6641896867891933312

`sqrt(A038330(n)/A038327(n))*A038330(n)`
-/

namespace A038334.P6641896867891933312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A038330 n : ℚ) / (A038327 n : ℚ) : ℝ) * (A038330 n : ℝ)

end

end A038334.P6641896867891933312

namespace A038334

/-- `sqrt(A038330(n)/A038327(n))*A038330(n)` -/
def P6641896867891933312.Spec : Prop :=
  ∀ n, P6641896867891933312.a n = (A038334 n : ℝ)

end A038334

/-! ## A038334.P4040727093506887028

`A038290(A061579(n))`
-/

namespace A038334.P4040727093506887028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038290 (A061579 n).toNat

end

end A038334.P4040727093506887028

namespace A038334

/-- `A038290(A061579(n))` -/
def P4040727093506887028.Spec : Prop :=
  ∀ n, P4040727093506887028.a n = A038334 n

end A038334

/-! ## A038334.P9108350624413524882

`A038262(n)²/A038226(n)`
-/

namespace A038334.P9108350624413524882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038262 n ^ 2 : ℚ) / (A038226 n : ℚ)

end

end A038334.P9108350624413524882

namespace A038334

/-- `A038262(n)²/A038226(n)` -/
def P9108350624413524882.Spec : Prop :=
  ∀ n, P9108350624413524882.a n = (A038334 n : ℚ)

end A038334

/-!
# A038335: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*9^j.

The programs for A038335, the canonical program `A038335.P623811621264060916` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038335 has offset 0).

The definition of A038335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038335.P623811621264060916

`A036561(n)*A038257(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038335

/-- `A036561(n)*A038257(n)` -/
def P623811621264060916.Spec : Prop :=
  ∀ n, P623811621264060916.a n = A038335 n

theorem P623811621264060916.correct : P623811621264060916.Spec := by
  intro n
  simp only [A038335]

end A038335

/-! ## A038335.P16700788278723261840

`A038233(n)*A098355(n)`
-/

namespace A038335.P16700788278723261840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A098355 n

end

end A038335.P16700788278723261840

namespace A038335

/-- `A038233(n)*A098355(n)` -/
def P16700788278723261840.Spec : Prop :=
  ∀ n, P16700788278723261840.a n = A038335 n

end A038335

/-! ## A038335.P7906922811091076455

`A038263(n)*A130321(n)`
-/

namespace A038335.P7906922811091076455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038263 n * A130321 n

end

end A038335.P7906922811091076455

namespace A038335

/-- `A038263(n)*A130321(n)` -/
def P7906922811091076455.Spec : Prop :=
  ∀ n, P7906922811091076455.a n = A038335 n

end A038335

/-! ## A038335.P15929663903787469280

`A038239(n)*A140303(n)`
-/

namespace A038335.P15929663903787469280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038239 n * A140303 n

end

end A038335.P15929663903787469280

namespace A038335

/-- `A038239(n)*A140303(n)` -/
def P15929663903787469280.Spec : Prop :=
  ∀ n, P15929663903787469280.a n = A038335 n

end A038335

/-! ## A038335.P7713556414024681807

`A038227(n)*A262616(n)`
-/

namespace A038335.P7713556414024681807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038227 n * A262616 n

end

end A038335.P7713556414024681807

namespace A038335

/-- `A038227(n)*A262616(n)` -/
def P7713556414024681807.Spec : Prop :=
  ∀ n, P7713556414024681807.a n = A038335 n

end A038335

/-! ## A038335.P15450990811554985785

`lcm(A038227(n), A038231(n))`
-/

namespace A038335.P15450990811554985785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038227 n) (A038231 n)

end

end A038335.P15450990811554985785

namespace A038335

/-- `lcm(A038227(n), A038231(n))` -/
def P15450990811554985785.Spec : Prop :=
  ∀ n, (P15450990811554985785.a n : ℤ) = A038335 n

end A038335

/-! ## A038335.P3646043348030859507

`lcm(A038233(n), A038263(n))`
-/

namespace A038335.P3646043348030859507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038233 n) (A038263 n)

end

end A038335.P3646043348030859507

namespace A038335

/-- `lcm(A038233(n), A038263(n))` -/
def P3646043348030859507.Spec : Prop :=
  ∀ n, (P3646043348030859507.a n : ℤ) = A038335 n

end A038335

/-! ## A038335.P17428798373500373116

`A036561(n)²*A027465(n)`
-/

namespace A038335.P17428798373500373116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n ^ 2 * A027465 n

end

end A038335.P17428798373500373116

namespace A038335

/-- `A036561(n)²*A027465(n)` -/
def P17428798373500373116.Spec : Prop :=
  ∀ n, P17428798373500373116.a n = A038335 n

theorem P17428798373500373116.correct : P17428798373500373116.Spec := by
  intro n
  simp only [A038335, Nat.add_sub_cancel, A038335.P17428798373500373116.a, A038335.P623811621264060916.a, A027465, A027465.P7731495138669227415.a, A036561, A036561.P7490084913005378529.a, A038257, A038257.P13466949147217766730.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038335

/-! ## A038335.P767871233958723594

`A130321(n)²*A038227(n)`
-/

namespace A038335.P767871233958723594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038227 n

end

end A038335.P767871233958723594

namespace A038335

/-- `A130321(n)²*A038227(n)` -/
def P767871233958723594.Spec : Prop :=
  ∀ n, P767871233958723594.a n = A038335 n

end A038335

/-! ## A038335.P11872312925379850566

`A038257(n)/A027465(n)*A038257(n)`
-/

namespace A038335.P11872312925379850566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n : ℚ) / (A027465 n : ℚ) * (A038257 n : ℚ)

end

end A038335.P11872312925379850566

namespace A038335

/-- `A038257(n)/A027465(n)*A038257(n)` -/
def P11872312925379850566.Spec : Prop :=
  ∀ n, P11872312925379850566.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P18149217810079721489

`A038329(n)/A038327(n)*A038329(n)`
-/

namespace A038335.P18149217810079721489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038329 n : ℚ) / (A038327 n : ℚ) * (A038329 n : ℚ)

end

end A038335.P18149217810079721489

namespace A038335

/-- `A038329(n)/A038327(n)*A038329(n)` -/
def P18149217810079721489.Spec : Prop :=
  ∀ n, P18149217810079721489.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P9535323763518361599

`A038332(n)/A038330(n)*A038332(n)`
-/

namespace A038335.P9535323763518361599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A038330 n : ℚ) * (A038332 n : ℚ)

end

end A038335.P9535323763518361599

namespace A038335

/-- `A038332(n)/A038330(n)*A038332(n)` -/
def P9535323763518361599.Spec : Prop :=
  ∀ n, P9535323763518361599.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P16852359289119610475

`(A013620(n)/A007318(n))²*A027465(n)`
-/

namespace A038335.P16852359289119610475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013620 n : ℚ) / (A007318 n : ℚ)) ^ 2 * (A027465 n : ℚ)

end

end A038335.P16852359289119610475

namespace A038335

/-- `(A013620(n)/A007318(n))²*A027465(n)` -/
def P16852359289119610475.Spec : Prop :=
  ∀ n, P16852359289119610475.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P16292645116812981213

`A038302(A061579(n))`
-/

namespace A038335.P16292645116812981213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038302 (A061579 n).toNat

end

end A038335.P16292645116812981213

namespace A038335

/-- `A038302(A061579(n))` -/
def P16292645116812981213.Spec : Prop :=
  ∀ n, P16292645116812981213.a n = A038335 n

end A038335

/-! ## A038335.P8452183071430513440

`A038257(n)²/A027465(n)`
-/

namespace A038335.P8452183071430513440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038257 n ^ 2 : ℚ) / (A027465 n : ℚ)

end

end A038335.P8452183071430513440

namespace A038335

/-- `A038257(n)²/A027465(n)` -/
def P8452183071430513440.Spec : Prop :=
  ∀ n, P8452183071430513440.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P945542313785608815

`A038263(n)²/gcd(A038263(n), A038299(n))`
-/

namespace A038335.P945542313785608815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038263 n ^ 2 : ℚ) / (Int.gcd (A038263 n) (A038299 n) : ℚ)

end

end A038335.P945542313785608815

namespace A038335

/-- `A038263(n)²/gcd(A038263(n), A038299(n))` -/
def P945542313785608815.Spec : Prop :=
  ∀ n, P945542313785608815.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P6608455961722075003

`A038329(n)²/A038327(n)`
-/

namespace A038335.P6608455961722075003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038329 n ^ 2 : ℚ) / (A038327 n : ℚ)

end

end A038335.P6608455961722075003

namespace A038335

/-- `A038329(n)²/A038327(n)` -/
def P6608455961722075003.Spec : Prop :=
  ∀ n, P6608455961722075003.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P4301590547095695953

`A038329(n)²/gcd(A038328(n), A038329(n))`
-/

namespace A038335.P4301590547095695953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038329 n ^ 2 : ℚ) / (Int.gcd (A038328 n) (A038329 n) : ℚ)

end

end A038335.P4301590547095695953

namespace A038335

/-- `A038329(n)²/gcd(A038328(n), A038329(n))` -/
def P4301590547095695953.Spec : Prop :=
  ∀ n, P4301590547095695953.a n = (A038335 n : ℚ)

end A038335

/-! ## A038335.P12838786059788983214

`A038332(n)²/A038330(n)`
-/

namespace A038335.P12838786059788983214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n ^ 2 : ℚ) / (A038330 n : ℚ)

end

end A038335.P12838786059788983214

namespace A038335

/-- `A038332(n)²/A038330(n)` -/
def P12838786059788983214.Spec : Prop :=
  ∀ n, P12838786059788983214.a n = (A038335 n : ℚ)

end A038335

/-!
# A038336: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*10^j.

The programs for A038336, the canonical program `A038336.P2038556633556668892` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038336 has offset 0).

The definition of A038336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038336.P2038556633556668892

`A038331(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038336

/-- `A038331(n)*A059268(n)` -/
def P2038556633556668892.Spec : Prop :=
  ∀ n, P2038556633556668892.a n = A038336 n

theorem P2038556633556668892.correct : P2038556633556668892.Spec := by
  intro n
  simp only [A038336]

end A038336

/-! ## A038336.P16305048673312364224

`A038232(n)*A120027(n)`
-/

namespace A038336.P16305048673312364224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A120027 n

end

end A038336.P16305048673312364224

namespace A038336

/-- `A038232(n)*A120027(n)` -/
def P16305048673312364224.Spec : Prop :=
  ∀ n, P16305048673312364224.a n = A038336 n

theorem P16305048673312364224.correct : P16305048673312364224.Spec := by
  intro n
  simp only [A038336, Nat.add_sub_cancel, A038336.P16305048673312364224.a, A038336.P2038556633556668892.a, A038232, A038232.P2014966778022240931.a, A038331, A038331.P5405017633700267871.a, A059268, A059268.P15217573790077737885.a, A120027, A120027.P1714917155360020650.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A038231, A038231.P8834405961696806127.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038336

/-! ## A038336.P11034461683294862985

`A038264(n)*A130321(n)`
-/

namespace A038336.P11034461683294862985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038264 n * A130321 n

end

end A038336.P11034461683294862985

namespace A038336

/-- `A038264(n)*A130321(n)` -/
def P11034461683294862985.Spec : Prop :=
  ∀ n, P11034461683294862985.a n = A038336 n

end A038336

/-! ## A038336.P2495526161277854499

`A038259(n)*A137688(n)`
-/

namespace A038336.P2495526161277854499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038259 n * A137688 n

end

end A038336.P2495526161277854499

namespace A038336

/-- `A038259(n)*A137688(n)` -/
def P2495526161277854499.Spec : Prop :=
  ∀ n, P2495526161277854499.a n = A038336 n

end A038336

/-! ## A038336.P2680008071673205735

`A038240(n)*A140303(n)`
-/

namespace A038336.P2680008071673205735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038240 n * A140303 n

end

end A038336.P2680008071673205735

namespace A038336

/-- `A038240(n)*A140303(n)` -/
def P2680008071673205735.Spec : Prop :=
  ∀ n, P2680008071673205735.a n = A038336 n

end A038336

/-! ## A038336.P3424022312563192801

`A013628(n)*A175840(n)`
-/

namespace A038336.P3424022312563192801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013628 n * A175840 n

end

end A038336.P3424022312563192801

namespace A038336

/-- `A013628(n)*A175840(n)` -/
def P3424022312563192801.Spec : Prop :=
  ∀ n, P3424022312563192801.a n = A038336 n

end A038336

/-! ## A038336.P12118167771243488655

`A038228(n)*A262616(n)`
-/

namespace A038336.P12118167771243488655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038228 n * A262616 n

end

end A038336.P12118167771243488655

namespace A038336

/-- `A038228(n)*A262616(n)` -/
def P12118167771243488655.Spec : Prop :=
  ∀ n, P12118167771243488655.a n = A038336 n

end A038336

/-! ## A038336.P18439019472097827101

`lcm(A013622(n), A038232(n))`
-/

namespace A038336.P18439019472097827101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013622 n) (A038232 n)

end

end A038336.P18439019472097827101

namespace A038336

/-- `lcm(A013622(n), A038232(n))` -/
def P18439019472097827101.Spec : Prop :=
  ∀ n, (P18439019472097827101.a n : ℤ) = A038336 n

end A038336

/-! ## A038336.P14155385997516183798

`lcm(A013612(n), A038328(n))`
-/

namespace A038336.P14155385997516183798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013612 n) (A038328 n)

end

end A038336.P14155385997516183798

namespace A038336

/-- `lcm(A013612(n), A038328(n))` -/
def P14155385997516183798.Spec : Prop :=
  ∀ n, (P14155385997516183798.a n : ℤ) = A038336 n

end A038336

/-! ## A038336.P2513985314193815178

`lcm(A027465(n), A038240(n))`
-/

namespace A038336.P2513985314193815178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038240 n)

end

end A038336.P2513985314193815178

namespace A038336

/-- `lcm(A027465(n), A038240(n))` -/
def P2513985314193815178.Spec : Prop :=
  ∀ n, (P2513985314193815178.a n : ℤ) = A038336 n

end A038336

/-! ## A038336.P4109808280017398993

`A130321(n)²*A038228(n)`
-/

namespace A038336.P4109808280017398993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038228 n

end

end A038336.P4109808280017398993

namespace A038336

/-- `A130321(n)²*A038228(n)` -/
def P4109808280017398993.Spec : Prop :=
  ∀ n, P4109808280017398993.a n = A038336 n

end A038336

/-! ## A038336.P11975984758325901129

`A038256(n)*A232646(n+1)`
-/

namespace A038336.P11975984758325901129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A232646 (n + 1)

end

end A038336.P11975984758325901129

namespace A038336

/-- `A038256(n)*A232646(n+1)` -/
def P11975984758325901129.Spec : Prop :=
  ∀ n, P11975984758325901129.a n = A038336 n

end A038336

/-! ## A038336.P16555944747920697913

`A038259(n)/2*A140513(n)`
-/

namespace A038336.P16555944747920697913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038259 n : ℚ) / 2 * (A140513 n : ℚ)

end

end A038336.P16555944747920697913

namespace A038336

/-- `A038259(n)/2*A140513(n)` -/
def P16555944747920697913.Spec : Prop :=
  ∀ n, P16555944747920697913.a n = (A038336 n : ℚ)

end A038336

/-! ## A038336.P16322143534941952259

`A000079(A003056(n))*A038259(n)`
-/

namespace A038336.P16322143534941952259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A038259 n

end

end A038336.P16322143534941952259

namespace A038336

/-- `A000079(A003056(n))*A038259(n)` -/
def P16322143534941952259.Spec : Prop :=
  ∀ n, P16322143534941952259.a n = A038336 n

end A038336

/-! ## A038336.P16753140018308881060

`A038300(n)/A038292(n)*A038328(n)`
-/

namespace A038336.P16753140018308881060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038300 n : ℚ) / (A038292 n : ℚ) * (A038328 n : ℚ)

end

end A038336.P16753140018308881060

namespace A038336

/-- `A038300(n)/A038292(n)*A038328(n)` -/
def P16753140018308881060.Spec : Prop :=
  ∀ n, P16753140018308881060.a n = (A038336 n : ℚ)

end A038336

/-! ## A038336.P13519804752179667537

`A038314(A061579(n))`
-/

namespace A038336.P13519804752179667537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038314 (A061579 n).toNat

end

end A038336.P13519804752179667537

namespace A038336

/-- `A038314(A061579(n))` -/
def P13519804752179667537.Spec : Prop :=
  ∀ n, P13519804752179667537.a n = A038336 n

end A038336

/-! ## A038336.P8325513698101482124

`A038314(A114327(n)+n)`
-/

namespace A038336.P8325513698101482124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038314 (A114327 n + (n : ℤ)).toNat

end

end A038336.P8325513698101482124

namespace A038336

/-- `A038314(A114327(n)+n)` -/
def P8325513698101482124.Spec : Prop :=
  ∀ n, P8325513698101482124.a n = A038336 n

end A038336

/-! ## A038336.P4734531472035512973

`A038314(A038722(n+1)-1)`
-/

namespace A038336.P4734531472035512973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038314 (A038722 (n + 1) - 1).toNat

end

end A038336.P4734531472035512973

namespace A038336

/-- `A038314(A038722(n+1)-1)` -/
def P4734531472035512973.Spec : Prop :=
  ∀ n, P4734531472035512973.a n = A038336 n

end A038336

/-! ## A038336.P14133627944222433091

`A038264(n)²/gcd(A038264(n), A038300(n))`
-/

namespace A038336.P14133627944222433091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038264 n ^ 2 : ℚ) / (Int.gcd (A038264 n) (A038300 n) : ℚ)

end

end A038336.P14133627944222433091

namespace A038336

/-- `A038264(n)²/gcd(A038264(n), A038300(n))` -/
def P14133627944222433091.Spec : Prop :=
  ∀ n, P14133627944222433091.a n = (A038336 n : ℚ)

end A038336

/-! ## A038336.P12981583717411744629

`A000010(A140513(n))*A038259(n)`
-/

namespace A038336.P12981583717411744629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140513 n).toNat * A038259 n

end

end A038336.P12981583717411744629

namespace A038336

/-- `A000010(A140513(n))*A038259(n)` -/
def P12981583717411744629.Spec : Prop :=
  ∀ n, P12981583717411744629.a n = A038336 n

end A038336

/-!
# A038337: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*11^j.

The programs for A038337, the canonical program `A038337.P13596972797405458484` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038337 has offset 0).

The definition of A038337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038337.P13596972797405458484

`A038265(n)*A130321(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038337

/-- `A038265(n)*A130321(n)` -/
def P13596972797405458484.Spec : Prop :=
  ∀ n, P13596972797405458484.a n = A038337 n

theorem P13596972797405458484.correct : P13596972797405458484.Spec := by
  intro n
  simp only [A038337]

end A038337

/-! ## A038337.P13884979676869163659

`A038241(n)*A140303(n)`
-/

namespace A038337.P13884979676869163659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038241 n * A140303 n

end

end A038337.P13884979676869163659

namespace A038337

/-- `A038241(n)*A140303(n)` -/
def P13884979676869163659.Spec : Prop :=
  ∀ n, P13884979676869163659.a n = A038337 n

theorem P13884979676869163659.correct : P13884979676869163659.Spec := by
  intro n
  simp only [A038337, Nat.add_sub_cancel, A038337.P13884979676869163659.a, A038337.P13596972797405458484.a, A038241, A038241.P10458296533401089343.a, A038265, A038265.P17989473238907539147.a, A130321, A130321.P54397649261359622.a, A140303, A140303.P8111893884846108163.a, A000244, A000244.P17162167222172810417.a, A038217, A038217.P11166805108262565731.a, A038229, A038229.P16179588272599030162.a, A013618, A013618.P387738794400138058.a, A001020, A001020.P6110418391945528251.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038337

/-! ## A038337.P13313958377748575174

`A038229(n)*A262616(n)`
-/

namespace A038337.P13313958377748575174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038229 n * A262616 n

end

end A038337.P13313958377748575174

namespace A038337

/-- `A038229(n)*A262616(n)` -/
def P13313958377748575174.Spec : Prop :=
  ∀ n, P13313958377748575174.a n = A038337 n

end A038337

/-! ## A038337.P2897183740769961238

`lcm(A013618(n), A038327(n))`
-/

namespace A038337.P2897183740769961238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013618 n) (A038327 n)

end

end A038337.P2897183740769961238

namespace A038337

/-- `lcm(A013618(n), A038327(n))` -/
def P2897183740769961238.Spec : Prop :=
  ∀ n, (P2897183740769961238.a n : ℤ) = A038337 n

end A038337

/-! ## A038337.P18190153319160333538

`lcm(A027465(n), A038241(n))`
-/

namespace A038337.P18190153319160333538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038241 n)

end

end A038337.P18190153319160333538

namespace A038337

/-- `lcm(A027465(n), A038241(n))` -/
def P18190153319160333538.Spec : Prop :=
  ∀ n, (P18190153319160333538.a n : ℤ) = A038337 n

end A038337

/-! ## A038337.P6355376762810890567

`lcm(A038229(n), A038231(n))`
-/

namespace A038337.P6355376762810890567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038229 n) (A038231 n)

end

end A038337.P6355376762810890567

namespace A038337

/-- `lcm(A038229(n), A038231(n))` -/
def P6355376762810890567.Spec : Prop :=
  ∀ n, (P6355376762810890567.a n : ℤ) = A038337 n

end A038337

/-! ## A038337.P10676667968546571062

`A130321(n)²*A038229(n)`
-/

namespace A038337.P10676667968546571062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038229 n

end

end A038337.P10676667968546571062

namespace A038337

/-- `A130321(n)²*A038229(n)` -/
def P10676667968546571062.Spec : Prop :=
  ∀ n, P10676667968546571062.a n = A038337 n

theorem P10676667968546571062.correct : P10676667968546571062.Spec := by
  intro n
  simp only [A038337, Nat.add_sub_cancel, A038337.P10676667968546571062.a, A038337.P13596972797405458484.a, A038229, A038229.P16179588272599030162.a, A038265, A038265.P17989473238907539147.a, A130321, A130321.P54397649261359622.a, A013618, A013618.P387738794400138058.a, A140303, A140303.P8111893884846108163.a, A000244, A000244.P17162167222172810417.a, A001020, A001020.P6110418391945528251.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038337

/-! ## A038337.P11219175627405984171

`A038265(n)/A038229(n)*A038265(n)`
-/

namespace A038337.P11219175627405984171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n : ℚ) / (A038229 n : ℚ) * (A038265 n : ℚ)

end

end A038337.P11219175627405984171

namespace A038337

/-- `A038265(n)/A038229(n)*A038265(n)` -/
def P11219175627405984171.Spec : Prop :=
  ∀ n, P11219175627405984171.a n = (A038337 n : ℚ)

end A038337

/-! ## A038337.P8549007647770514224

`A038326(A061579(n))`
-/

namespace A038337.P8549007647770514224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038326 (A061579 n).toNat

end

end A038337.P8549007647770514224

namespace A038337

/-- `A038326(A061579(n))` -/
def P8549007647770514224.Spec : Prop :=
  ∀ n, P8549007647770514224.a n = A038337 n

end A038337

/-! ## A038337.P6349601948208500329

`A038265(n)²/A038229(n)`
-/

namespace A038337.P6349601948208500329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n ^ 2 : ℚ) / (A038229 n : ℚ)

end

end A038337.P6349601948208500329

namespace A038337

/-- `A038265(n)²/A038229(n)` -/
def P6349601948208500329.Spec : Prop :=
  ∀ n, P6349601948208500329.a n = (A038337 n : ℚ)

end A038337

/-! ## A038337.P3969521942588930959

`A038265(n)²/gcd(A038265(n), A038301(n))`
-/

namespace A038337.P3969521942588930959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038265 n ^ 2 : ℚ) / (Int.gcd (A038265 n) (A038301 n) : ℚ)

end

end A038337.P3969521942588930959

namespace A038337

/-- `A038265(n)²/gcd(A038265(n), A038301(n))` -/
def P3969521942588930959.Spec : Prop :=
  ∀ n, P3969521942588930959.a n = (A038337 n : ℚ)

end A038337

/-!
# A038338: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*12^j.

The programs for A038338, the canonical program `A038338.P9478678368109461526` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038338 has offset 0).

The definition of A038338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038338.P9478678368109461526

`A036561(n)*A038258(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038338

/-- `A036561(n)*A038258(n)` -/
def P9478678368109461526.Spec : Prop :=
  ∀ n, P9478678368109461526.a n = A038338 n

theorem P9478678368109461526.correct : P9478678368109461526.Spec := by
  intro n
  simp only [A038338]

end A038338

/-! ## A038338.P10990194993324641051

`A038332(n)*A059268(n)`
-/

namespace A038338.P10990194993324641051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038332 n * A059268 n

end

end A038338.P10990194993324641051

namespace A038338

/-- `A038332(n)*A059268(n)` -/
def P10990194993324641051.Spec : Prop :=
  ∀ n, P10990194993324641051.a n = A038338 n

theorem P10990194993324641051.correct : P10990194993324641051.Spec := by
  intro n
  simp only [A038338, Nat.add_sub_cancel, A038338.P10990194993324641051.a, A038338.P9478678368109461526.a, A036561, A036561.P7490084913005378529.a, A038258, A038258.P18171415489042003972.a, A038332, A038332.P474245065712382521.a, A059268, A059268.P15217573790077737885.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A038256, A038256.P10874332263028825232.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A038255, A038255.P9618650369920174651.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A027465, A027465.P7731495138669227415.a, A130321, A130321.P54397649261359622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038338

/-! ## A038338.P3676084579326542638

`A038234(n)*A098355(n)`
-/

namespace A038338.P3676084579326542638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038234 n * A098355 n

end

end A038338.P3676084579326542638

namespace A038338

/-- `A038234(n)*A098355(n)` -/
def P3676084579326542638.Spec : Prop :=
  ∀ n, P3676084579326542638.a n = A038338 n

end A038338

/-! ## A038338.P7040195864007397339

`A038232(n)*A100852(n)`
-/

namespace A038338.P7040195864007397339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A100852 n

end

end A038338.P7040195864007397339

namespace A038338

/-- `A038232(n)*A100852(n)` -/
def P7040195864007397339.Spec : Prop :=
  ∀ n, P7040195864007397339.a n = A038338 n

end A038338

/-! ## A038338.P5812208595614699083

`A038256(n)*A100851(n)`
-/

namespace A038338.P5812208595614699083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A100851 n

end

end A038338.P5812208595614699083

namespace A038338

/-- `A038256(n)*A100851(n)` -/
def P5812208595614699083.Spec : Prop :=
  ∀ n, P5812208595614699083.a n = A038338 n

end A038338

/-! ## A038338.P4559377829385949474

`A038266(n)*A130321(n)`
-/

namespace A038338.P4559377829385949474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038266 n * A130321 n

end

end A038338.P4559377829385949474

namespace A038338

/-- `A038266(n)*A130321(n)` -/
def P4559377829385949474.Spec : Prop :=
  ∀ n, P4559377829385949474.a n = A038338 n

end A038338

/-! ## A038338.P16190415083727085872

`A038260(n)*A137688(n)`
-/

namespace A038338.P16190415083727085872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038260 n * A137688 n

end

end A038338.P16190415083727085872

namespace A038338

/-- `A038260(n)*A137688(n)` -/
def P16190415083727085872.Spec : Prop :=
  ∀ n, P16190415083727085872.a n = A038338 n

end A038338

/-! ## A038338.P10014366606824304213

`A038242(n)*A140303(n)`
-/

namespace A038338.P10014366606824304213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038242 n * A140303 n

end

end A038338.P10014366606824304213

namespace A038338

/-- `A038242(n)*A140303(n)` -/
def P10014366606824304213.Spec : Prop :=
  ∀ n, P10014366606824304213.a n = A038338 n

end A038338

/-! ## A038338.P17986167067315789362

`A038236(n)*A175840(n)`
-/

namespace A038338.P17986167067315789362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038236 n * A175840 n

end

end A038338.P17986167067315789362

namespace A038338

/-- `A038236(n)*A175840(n)` -/
def P17986167067315789362.Spec : Prop :=
  ∀ n, P17986167067315789362.a n = A038338 n

end A038338

/-! ## A038338.P14304981120411836281

`A038230(n)*A262616(n)`
-/

namespace A038338.P14304981120411836281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038230 n * A262616 n

end

end A038338.P14304981120411836281

namespace A038338

/-- `A038230(n)*A262616(n)` -/
def P14304981120411836281.Spec : Prop :=
  ∀ n, P14304981120411836281.a n = A038338 n

end A038338

/-! ## A038338.P5438452784985019443

`A038233(n)*A356036(n)`
-/

namespace A038338.P5438452784985019443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038233 n * A356036 n

end

end A038338.P5438452784985019443

namespace A038338

/-- `A038233(n)*A356036(n)` -/
def P5438452784985019443.Spec : Prop :=
  ∀ n, P5438452784985019443.a n = A038338 n

end A038338

/-! ## A038338.P12873758214248302588

`A038257(n)*A368043(n)`
-/

namespace A038338.P12873758214248302588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038257 n * A368043 n

end

end A038338.P12873758214248302588

namespace A038338

/-- `A038257(n)*A368043(n)` -/
def P12873758214248302588.Spec : Prop :=
  ∀ n, P12873758214248302588.a n = A038338 n

end A038338

/-! ## A038338.P11336477671268083609

`lcm(A038221(n), A038234(n))`
-/

namespace A038338.P11336477671268083609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038221 n) (A038234 n)

end

end A038338.P11336477671268083609

namespace A038338

/-- `lcm(A038221(n), A038234(n))` -/
def P11336477671268083609.Spec : Prop :=
  ∀ n, (P11336477671268083609.a n : ℤ) = A038338 n

end A038338

/-! ## A038338.P12210879154677713922

`lcm(A038224(n), A038242(n))`
-/

namespace A038338.P12210879154677713922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038224 n) (A038242 n)

end

end A038338.P12210879154677713922

namespace A038338

/-- `lcm(A038224(n), A038242(n))` -/
def P12210879154677713922.Spec : Prop :=
  ∀ n, (P12210879154677713922.a n : ℤ) = A038338 n

end A038338

/-! ## A038338.P11693228193564726549

`lcm(A038230(n), A038330(n))`
-/

namespace A038338.P11693228193564726549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038230 n) (A038330 n)

end

end A038338.P11693228193564726549

namespace A038338

/-- `lcm(A038230(n), A038330(n))` -/
def P11693228193564726549.Spec : Prop :=
  ∀ n, (P11693228193564726549.a n : ℤ) = A038338 n

end A038338

/-! ## A038338.P14617846609015685209

`A059268(n)²*A038329(n)`
-/

namespace A038338.P14617846609015685209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A038329 n

end

end A038338.P14617846609015685209

namespace A038338

/-- `A059268(n)²*A038329(n)` -/
def P14617846609015685209.Spec : Prop :=
  ∀ n, P14617846609015685209.a n = A038338 n

theorem P14617846609015685209.correct : P14617846609015685209.Spec := by
  intro n
  simp only [A038338, Nat.add_sub_cancel, A038338.P14617846609015685209.a, A038338.P9478678368109461526.a, A036561, A036561.P7490084913005378529.a, A038258, A038258.P18171415489042003972.a, A038329, A038329.P4069789945351460797.a, A059268, A059268.P15217573790077737885.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A018900, A018900.P2868698677378612256.a, A038255, A038255.P9618650369920174651.a, A038256, A038256.P10874332263028825232.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A027465, A027465.P7731495138669227415.a, A130321, A130321.P54397649261359622.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A038338

/-! ## A038338.P14531651780581731062

`A130321(n)²*A038230(n)`
-/

namespace A038338.P14531651780581731062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A038230 n

end

end A038338.P14531651780581731062

namespace A038338

/-- `A130321(n)²*A038230(n)` -/
def P14531651780581731062.Spec : Prop :=
  ∀ n, P14531651780581731062.a n = A038338 n

end A038338

/-! ## A038338.P1940178388321921806

`A137688(n)²*A038221(n)`
-/

namespace A038338.P1940178388321921806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 * A038221 n

end

end A038338.P1940178388321921806

namespace A038338

/-- `A137688(n)²*A038221(n)` -/
def P1940178388321921806.Spec : Prop :=
  ∀ n, P1940178388321921806.a n = A038338 n

end A038338

/-! ## A038338.P2471699629635362328

`12^A003056(n)*A007318(n)`
-/

namespace A038338.P2471699629635362328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A038338.P2471699629635362328

namespace A038338

/-- `12^A003056(n)*A007318(n)` -/
def P2471699629635362328.Spec : Prop :=
  ∀ n, P2471699629635362328.a n = (A038338 n : ℚ)

end A038338

/-! ## A038338.P17691728259191550434

`Δ[A007664(n)]²*A038221(n)`
-/

namespace A038338.P17691728259191550434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A038221 n

end

end A038338.P17691728259191550434

namespace A038338

/-- `Δ[A007664(n)]²*A038221(n)` -/
def P17691728259191550434.Spec : Prop :=
  ∀ n, P17691728259191550434.a n = A038338 n

end A038338

/-!
# A038339: Bottom line of 5-wave sequence A038201, also bisection of A006358.

The programs for A038339, there is no canonical definition to state claims against.
-/

/-! ## A038339.P100816032856192051

`A006358(2*n)`
-/

namespace A038339.P100816032856192051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (2 * n)

end

end A038339.P100816032856192051

/-! ## A038339.P17686882361079178269

`A373569(2*n)`
-/

namespace A038339.P17686882361079178269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373569 (2 * n)

end

end A038339.P17686882361079178269

/-! ## A038339.P17273255860292463514

`∑[A038341(2*n)]`
-/

namespace A038339.P17273255860292463514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038341 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038339.P17273255860292463514

/-! ## A038339.P14147388130714381620

`A038201(8*n+4)`
-/

namespace A038339.P14147388130714381620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (8 * n + 4)

end

end A038339.P14147388130714381620

/-! ## A038339.P5668706649973511221

`∑[A120747(2*(n+1))]`
-/

namespace A038339.P5668706649973511221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038339.P5668706649973511221

/-! ## A038339.P948209599124603416

`record[A006358(A014681(n))]`
-/

namespace A038339.P948209599124603416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038339.P948209599124603416

/-! ## A038339.P12304432742311228804

`record[A006358(n)/A033999(n)]`
-/

namespace A038339.P12304432742311228804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006358 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038339.P12304432742311228804

/-! ## A038339.P12502631160869225177

`record[A006358(n%A109613(n))]`
-/

namespace A038339.P12502631160869225177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (Int.tmod (n : ℤ) (A109613 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038339.P12502631160869225177

/-! ## A038339.P3038065972612291955

`record[A006358(lcm(n, A056594(n)))]`
-/

namespace A038339.P3038065972612291955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038339.P3038065972612291955

/-! ## A038339.P16200196688628700459

`record[A038201(A058281(2*n)-1)]`
-/

namespace A038339.P16200196688628700459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A058281 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038339.P16200196688628700459

/-!
# A038340: Second line of 5-wave sequence A038201.

The programs for A038340, there is no canonical definition to state claims against.
-/

/-! ## A038340.P3552851549469332831

`A038201(A047522(n+1))`
-/

namespace A038340.P3552851549469332831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A047522 (n + 1)).toNat

end

end A038340.P3552851549469332831

/-! ## A038340.P1218951677168607863

`A038201(or(1, A047452(n+1)))`
-/

namespace A038340.P1218951677168607863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (Int.lor 1 (A047452 (n + 1))).toNat

end

end A038340.P1218951677168607863

/-! ## A038340.P110083301530260983

`A038201(A010684(n)+4*n)`
-/

namespace A038340.P110083301530260983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A010684 n + (4 * n : ℤ)).toNat

end

end A038340.P110083301530260983

/-! ## A038340.P14200387254277466982

`A038201(A165326(n)+A016825(n))`
-/

namespace A038340.P14200387254277466982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A165326 n + A016825 n).toNat

end

end A038340.P14200387254277466982

/-! ## A038340.P11111391530169611031

`A038201(A047452(n+1)+A000035(n))`
-/

namespace A038340.P11111391530169611031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A047452 (n + 1) + A000035 n).toNat

end

end A038340.P11111391530169611031

/-! ## A038340.P15069610804764347767

`A120747(n+2)+A069006(n)-A038341(n)`
-/

namespace A038340.P15069610804764347767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (n + 2) + (A069006 n - A038341 n)

end

end A038340.P15069610804764347767

/-!
# A038341: Fourth line of 5-wave sequence A038201.

The programs for A038341, there is no canonical definition to state claims against.
-/

/-! ## A038341.P7814099406679815647

`A038201(record[and(n, -6)]+3)`
-/

namespace A038341.P7814099406679815647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A038341.P7814099406679815647

/-! ## A038341.P651518324698875526

`A038201(A047621(n+1))`
-/

namespace A038341.P651518324698875526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A047621 (n + 1)).toNat

end

end A038341.P651518324698875526

/-! ## A038341.P4717968031555960254

`A038201(A004273(record[xor(2, n)]))`
-/

namespace A038341.P4717968031555960254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A038341.P4717968031555960254

/-! ## A038341.P5479575211611296987

`A038201(A004442(n)+3*n+2)`
-/

namespace A038341.P5479575211611296987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A004442 n + (3 * n + 2 : ℤ)).toNat

end

end A038341.P5479575211611296987

/-! ## A038341.P4523851154228979134

`A038201(A016825(n)-A165326(n))`
-/

namespace A038341.P4523851154228979134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A016825 n - A165326 n).toNat

end

end A038341.P4523851154228979134

/-! ## A038341.P1433246313131955156

`A038201(A165326(n+1)+A016825(n))`
-/

namespace A038341.P1433246313131955156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A165326 (n + 1) + A016825 n).toNat

end

end A038341.P1433246313131955156

/-! ## A038341.P3736431966447033104

`A120747(n+2)+A069006(n)-A038340(n)`
-/

namespace A038341.P3736431966447033104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (n + 2) + (A069006 n - A038340 n)

end

end A038341.P3736431966447033104

/-!
# A038342: G.f.: 1/(1 - 3 x - 3 x^2 + 4 x^3 + x^4 - x^5).

The programs for A038342, the canonical program `A038342.P6399310212395469356` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038342 has offset 0).

The definition of A038342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038342.P6399310212395469356

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=41, a(4)=146`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038342

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P6399310212395469356.Spec : Prop :=
  ∀ n, P6399310212395469356.a n = A038342 n

theorem P6399310212395469356.correct : P6399310212395469356.Spec := by
  intro n
  simp only [A038342]

end A038342

/-! ## A038342.P8277990700903990065

`ogf(1/(1-3x-3x^2+4x^3+x^4-x^5))`
-/

namespace A038342.P8277990700903990065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -3, 4, 1, -1] n

end

end A038342.P8277990700903990065

namespace A038342

/-- `ogf(1/(1-3x-3x^2+4x^3+x^4-x^5))` -/
def P8277990700903990065.Spec : Prop :=
  ∀ n, P8277990700903990065.a n = A038342 n

end A038342

/-! ## A038342.P16088821919848565545

`∑[A069006(n)]`
-/

namespace A038342.P16088821919848565545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P16088821919848565545

namespace A038342

/-- `∑[A069006(n)]` -/
def P16088821919848565545.Spec : Prop :=
  ∀ n, P16088821919848565545.a n = A038342 n

end A038342

/-! ## A038342.P2028646995815601434

`A038201(4*n+2)`
-/

namespace A038342.P2028646995815601434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (4 * n + 2)

end

end A038342.P2028646995815601434

namespace A038342

/-- `A038201(4*n+2)` -/
def P2028646995815601434.Spec : Prop :=
  ∀ n, P2028646995815601434.a n = A038342 n

end A038342

/-! ## A038342.P13255713270883909128

`∑[A038201(Δ[A000384(n)])]`
-/

namespace A038342.P13255713270883909128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P13255713270883909128

namespace A038342

/-- `∑[A038201(Δ[A000384(n)])]` -/
def P13255713270883909128.Spec : Prop :=
  ∀ n, P13255713270883909128.a n = A038342 n

end A038342

/-! ## A038342.P13279539111374389956

`∑[A038201(record[A058281(n)])]`
-/

namespace A038342.P13279539111374389956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P13279539111374389956

namespace A038342

/-- `∑[A038201(record[A058281(n)])]` -/
def P13279539111374389956.Spec : Prop :=
  ∀ n, P13279539111374389956.a n = A038342 n

end A038342

/-! ## A038342.P1250175786248009437

`∑[A038201(A130824(n)+3)]`
-/

namespace A038342.P1250175786248009437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A130824 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P1250175786248009437

namespace A038342

/-- `∑[A038201(A130824(n)+3)]` -/
def P1250175786248009437.Spec : Prop :=
  ∀ n, P1250175786248009437.a n = A038342 n

end A038342

/-! ## A038342.P11510784926130330573

`∑[A038201(A005408(2*n))]`
-/

namespace A038342.P11510784926130330573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A005408 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P11510784926130330573

namespace A038342

/-- `∑[A038201(A005408(2*n))]` -/
def P11510784926130330573.Spec : Prop :=
  ∀ n, P11510784926130330573.a n = A038342 n

end A038342

/-! ## A038342.P397879554202380988

`record[A038201(A058281(n)+1)]`
-/

namespace A038342.P397879554202380988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A058281 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038342.P397879554202380988

namespace A038342

/-- `record[A038201(A058281(n)+1)]` -/
def P397879554202380988.Spec : Prop :=
  ∀ n, P397879554202380988.a n = A038342 n

end A038342

/-! ## A038342.P4883855122025301784

`record[A038201(2*A004442(n))]`
-/

namespace A038342.P4883855122025301784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (2 * A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038342.P4883855122025301784

namespace A038342

/-- `record[A038201(2*A004442(n))]` -/
def P4883855122025301784.Spec : Prop :=
  ∀ n, P4883855122025301784.a n = A038342 n

end A038342

/-! ## A038342.P13450980800480527756

`record[A038201(A117910(4*n))]`
-/

namespace A038342.P13450980800480527756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A117910 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038342.P13450980800480527756

namespace A038342

/-- `record[A038201(A117910(4*n))]` -/
def P13450980800480527756.Spec : Prop :=
  ∀ n, P13450980800480527756.a n = A038342 n

end A038342

/-! ## A038342.P15325898062685048986

`∑[A038201(A004273(Δ[n²]))]`
-/

namespace A038342.P15325898062685048986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A004273 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P15325898062685048986

namespace A038342

/-- `∑[A038201(A004273(Δ[n²]))]` -/
def P15325898062685048986.Spec : Prop :=
  ∀ n, P15325898062685048986.a n = A038342 n

end A038342

/-! ## A038342.P6669343746986739081

`∑[record[A038201(A309492(n+1))]]`
-/

namespace A038342.P6669343746986739081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A309492 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P6669343746986739081

namespace A038342

/-- `∑[record[A038201(A309492(n+1))]]` -/
def P6669343746986739081.Spec : Prop :=
  ∀ n, P6669343746986739081.a n = A038342 n

end A038342

/-! ## A038342.P9975263318321173836

`∑[A038201(Δ[n*A004273(n)])]`
-/

namespace A038342.P9975263318321173836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038342.P9975263318321173836

namespace A038342

/-- `∑[A038201(Δ[n*A004273(n)])]` -/
def P9975263318321173836.Spec : Prop :=
  ∀ n, P9975263318321173836.a n = A038342 n

end A038342

/-! ## A038342.P763423709417654904

`record[A038201(A309492(n+1)+1)]`
-/

namespace A038342.P763423709417654904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A309492 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038342.P763423709417654904

namespace A038342

/-- `record[A038201(A309492(n+1)+1)]` -/
def P763423709417654904.Spec : Prop :=
  ∀ n, P763423709417654904.a n = A038342 n

end A038342

/-! ## A038342.P18096550626120141251

`record[A038201(2*n*A000035(n))]`
-/

namespace A038342.P18096550626120141251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (2 * ((n : ℤ) * A000035 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038342.P18096550626120141251

namespace A038342

/-- `record[A038201(2*n*A000035(n))]` -/
def P18096550626120141251.Spec : Prop :=
  ∀ n, P18096550626120141251.a n = A038342 n

end A038342

/-! ## A038342.P16245706137492529226

`A165326(n)²*A038201(A016825(n))`
-/

namespace A038342.P16245706137492529226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A038201 (A016825 n).toNat

end

end A038342.P16245706137492529226

namespace A038342

/-- `A165326(n)²*A038201(A016825(n))` -/
def P16245706137492529226.Spec : Prop :=
  ∀ n, P16245706137492529226.a n = A038342 n

end A038342

/-! ## A038342.P11825003340356673730

`A038201(A130824(n+1))+A000007(n+1)`
-/

namespace A038342.P11825003340356673730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A130824 (n + 1)).toNat + A000007 (n + 1)

end

end A038342.P11825003340356673730

namespace A038342

/-- `A038201(A130824(n+1))+A000007(n+1)` -/
def P11825003340356673730.Spec : Prop :=
  ∀ n, P11825003340356673730.a n = A038342 n

end A038342

/-! ## A038342.P1154340848228534413

`Δ[A006358(n+1)-A230081(n+1)]`
-/

namespace A038342.P1154340848228534413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (n + 1) - A230081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038342.P1154340848228534413

namespace A038342

/-- `Δ[A006358(n+1)-A230081(n+1)]` -/
def P1154340848228534413.Spec : Prop :=
  ∀ n, P1154340848228534413.a n = A038342 n

end A038342

/-!
# A038343: Maximal value of difference between successive primes among the first 10^n primes.

The programs for A038343, there is no canonical definition to state claims against.
-/

/-! ## A038343.P1717358893935382822

`A005250(A195934(n+1)+A132975(n+1))`
-/

namespace A038343.P1717358893935382822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A195934 (n + 1) + A132975 (n + 1)).toNat

end

end A038343.P1717358893935382822

/-! ## A038343.P9795206740079581649

`A005250(A194424(3*n+4)*A243756(n+4))`
-/

namespace A038343.P9795206740079581649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A194424 (3 * n + 4) * A243756 (n + 4)).toNat

end

end A038343.P9795206740079581649

/-!
# A038344: Numbers k such that phi(k) + sigma(k) is a prime.

The programs for A038344, there is no canonical definition to state claims against.
-/

/-! ## A038344.P4135320233841107663

`eq[2, A067349(n+1)]+1`
-/

namespace A038344.P4135320233841107663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038344.P4135320233841107663

/-! ## A038344.P5887113045958101594

`eq[1, A001222(A065387(n+1))]+1`
-/

namespace A038344.P5887113045958101594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038344.P5887113045958101594

/-! ## A038344.P4367929358560594233

`record[A020639(A065387(n+1))-A209187(n+1)]`
-/

namespace A038344.P4367929358560594233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A065387 (n + 1)).toNat - A209187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038344.P4367929358560594233

/-! ## A038344.P10354989007044535589

`record[A325959(n+1)%A020639(A065387(n+1))]`
-/

namespace A038344.P10354989007044535589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325959 (n + 1)) (A020639 (A065387 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038344.P10354989007044535589

/-! ## A038344.P12897556190672990899

`record[A325976(n+1)%A020639(A065387(n+1))]`
-/

namespace A038344.P12897556190672990899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325976 (n + 1)) (A020639 (A065387 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038344.P12897556190672990899

/-!
# A038346: Sum of first n primes of form 4k+1.

The programs for A038346, the canonical program `A038346.P8303541009987102684` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038346 has offset 1).

The definition of A038346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038346.P8303541009987102684

`∑[p?[4*n+1]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038346

/-- `∑[p?[4*n+1]]` -/
def P8303541009987102684.Spec : Prop :=
  ∀ n, (P8303541009987102684.a n : ℤ) = A038346 (n + 1)

theorem P8303541009987102684.correct : P8303541009987102684.Spec := by
  intro n
  simp only [A038346, Nat.add_sub_cancel]

end A038346

/-! ## A038346.P8046575631157393708

`p?[a(n-1)+4]+a(n-1)` with `a(0)=5`
-/

namespace A038346.P8046575631157393708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + a (n - 1)

end

end A038346.P8046575631157393708

namespace A038346

/-- `p?[a(n-1)+4]+a(n-1)` -/
def P8046575631157393708.Spec : Prop :=
  ∀ n, (P8046575631157393708.a n : ℤ) = A038346 (n + 1)

end A038346

/-! ## A038346.P15874230654920793794

`∑[A002144(n+1)]`
-/

namespace A038346.P15874230654920793794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P15874230654920793794

namespace A038346

/-- `∑[A002144(n+1)]` -/
def P15874230654920793794.Spec : Prop :=
  ∀ n, P15874230654920793794.a n = A038346 (n + 1)

theorem P15874230654920793794.correct : P15874230654920793794.Spec := by
  intro n
  simp only [A038346, Nat.add_sub_cancel, A038346.P15874230654920793794.f1, A038346.P15874230654920793794.a, A038346.P8303541009987102684.f2, A038346.P8303541009987102684.f1, A038346.P8303541009987102684.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038346

/-! ## A038346.P9575403790985825344

`∑[A055131(n)/3]`
-/

namespace A038346.P9575403790985825344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P9575403790985825344

namespace A038346

/-- `∑[A055131(n)/3]` -/
def P9575403790985825344.Spec : Prop :=
  ∀ n, P9575403790985825344.a n = (A038346 (n + 1) : ℚ)

theorem P9575403790985825344.correct : P9575403790985825344.Spec := by
  intro n
  simp only [A038346, Nat.add_sub_cancel, A038346.P9575403790985825344.f1, A038346.P9575403790985825344.a, A038346.P8303541009987102684.f2, A038346.P8303541009987102684.f1, A038346.P8303541009987102684.a, A055131, A055131.P8908878053079909028.f1, A055131.P8908878053079909028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038346

/-! ## A038346.P617340341925890276

`∑[sqrt(A080109(n+1))]`
-/

namespace A038346.P617340341925890276
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P617340341925890276

namespace A038346

/-- `∑[sqrt(A080109(n+1))]` -/
def P617340341925890276.Spec : Prop :=
  ∀ n, P617340341925890276.a n = (A038346 (n + 1) : ℝ)

end A038346

/-! ## A038346.P8440784843900657438

`∑[A152680(n+1)+1]`
-/

namespace A038346.P8440784843900657438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P8440784843900657438

namespace A038346

/-- `∑[A152680(n+1)+1]` -/
def P8440784843900657438.Spec : Prop :=
  ∀ n, P8440784843900657438.a n = A038346 (n + 1)

theorem P8440784843900657438.correct : P8440784843900657438.Spec := by
  intro n
  simp only [A038346, Nat.add_sub_cancel, A038346.P8440784843900657438.f1, A038346.P8440784843900657438.a, A038346.P8303541009987102684.f2, A038346.P8303541009987102684.f1, A038346.P8303541009987102684.a, A152680, A152680.P7400182187401258968.a, A002144, A002144.P15538936588089724505.f1, A002144.P15538936588089724505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038346

/-! ## A038346.P4495012260045353449

`∑[A002313(n+2)]`
-/

namespace A038346.P4495012260045353449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P4495012260045353449

namespace A038346

/-- `∑[A002313(n+2)]` -/
def P4495012260045353449.Spec : Prop :=
  ∀ n, P4495012260045353449.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P9684248101930501947

`∑[A280084(n+2)]`
-/

namespace A038346.P9684248101930501947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P9684248101930501947

namespace A038346

/-- `∑[A280084(n+2)]` -/
def P9684248101930501947.Spec : Prop :=
  ∀ n, P9684248101930501947.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P12527230128276625190

`∑[A267101(A080148(n+1))]`
-/

namespace A038346.P12527230128276625190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A080148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P12527230128276625190

namespace A038346

/-- `∑[A267101(A080148(n+1))]` -/
def P12527230128276625190.Spec : Prop :=
  ∀ n, P12527230128276625190.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P9991923122884931890

`∑[A111744(2*n+1)]`
-/

namespace A038346.P9991923122884931890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P9991923122884931890

namespace A038346

/-- `∑[A111744(2*n+1)]` -/
def P9991923122884931890.Spec : Prop :=
  ∀ n, P9991923122884931890.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P13280041356977280407

`∑[A108546(2*n+3)]`
-/

namespace A038346.P13280041356977280407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P13280041356977280407

namespace A038346

/-- `∑[A108546(2*n+3)]` -/
def P13280041356977280407.Spec : Prop :=
  ∀ n, P13280041356977280407.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P3178664972664061701

`∑[A000040(A080147(n+1))]`
-/

namespace A038346.P3178664972664061701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P3178664972664061701

namespace A038346

/-- `∑[A000040(A080147(n+1))]` -/
def P3178664972664061701.Spec : Prop :=
  ∀ n, P3178664972664061701.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P12470927530062508590

`∑[A000040(eq[0, and(2, A000040(n+1))]+1)]`
-/

namespace A038346.P12470927530062508590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P12470927530062508590

namespace A038346

/-- `∑[A000040(eq[0, and(2, A000040(n+1))]+1)]` -/
def P12470927530062508590.Spec : Prop :=
  ∀ n, P12470927530062508590.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P1631984493557545162

`∑[record[p?[and(n, n+2)]]]`
-/

namespace A038346.P1631984493557545162
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P1631984493557545162

namespace A038346

/-- `∑[record[p?[and(n, n+2)]]]` -/
def P1631984493557545162.Spec : Prop :=
  ∀ n, (P1631984493557545162.a n : ℤ) = A038346 (n + 1)

end A038346

/-! ## A038346.P7978525356984715532

`∑[record[A006530(4*n+5)]]`
-/

namespace A038346.P7978525356984715532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P7978525356984715532

namespace A038346

/-- `∑[record[A006530(4*n+5)]]` -/
def P7978525356984715532.Spec : Prop :=
  ∀ n, P7978525356984715532.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P13848352118041920739

`∑[A139794(3*(n+1))]`
-/

namespace A038346.P13848352118041920739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139794 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P13848352118041920739

namespace A038346

/-- `∑[A139794(3*(n+1))]` -/
def P13848352118041920739.Spec : Prop :=
  ∀ n, P13848352118041920739.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P1157574311116590111

`∑[A004431(A024514(n+1))]`
-/

namespace A038346.P1157574311116590111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (A024514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P1157574311116590111

namespace A038346

/-- `∑[A004431(A024514(n+1))]` -/
def P1157574311116590111.Spec : Prop :=
  ∀ n, P1157574311116590111.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P14736696464648959678

`∑[A000404(A024520(n+2))]`
-/

namespace A038346.P14736696464648959678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A024520 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P14736696464648959678

namespace A038346

/-- `∑[A000404(A024520(n+2))]` -/
def P14736696464648959678.Spec : Prop :=
  ∀ n, P14736696464648959678.a n = A038346 (n + 1)

end A038346

/-! ## A038346.P350166901553677144

`∑[record[A358440(n+1)]]`
-/

namespace A038346.P350166901553677144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358440 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P350166901553677144

namespace A038346

/-- `∑[record[A358440(n+1)]]` -/
def P350166901553677144.Spec : Prop :=
  ∀ n, P350166901553677144.a n = A038346 (n + 1)

end A038346

/-!
# A038347: Sum of first n primes of form 4k-1.

The programs for A038347, the canonical program `A038347.P3801300426540644980` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038347 has offset 1).

The definition of A038347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038347.P3801300426540644980

`∑[p?[4*n-1]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038347

/-- `∑[p?[4*n-1]]` -/
def P3801300426540644980.Spec : Prop :=
  ∀ n, P3801300426540644980.a n = A038347 (n + 1)

theorem P3801300426540644980.correct : P3801300426540644980.Spec := by
  intro n
  simp only [A038347, Nat.add_sub_cancel]

end A038347

/-! ## A038347.P6092168701464152069

`p?[a(n-1)+4]+a(n-1)` with `a(0)=3`
-/

namespace A038347.P6092168701464152069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + a (n - 1)

end

end A038347.P6092168701464152069

namespace A038347

/-- `p?[a(n-1)+4]+a(n-1)` -/
def P6092168701464152069.Spec : Prop :=
  ∀ n, (P6092168701464152069.a n : ℤ) = A038347 (n + 1)

end A038347

/-! ## A038347.P15730340434200587304

`∑[A002145(n+1)]`
-/

namespace A038347.P15730340434200587304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P15730340434200587304

namespace A038347

/-- `∑[A002145(n+1)]` -/
def P15730340434200587304.Spec : Prop :=
  ∀ n, P15730340434200587304.a n = A038347 (n + 1)

theorem P15730340434200587304.correct : P15730340434200587304.Spec := by
  intro n
  simp only [A038347, Nat.add_sub_cancel, A038347.P15730340434200587304.f1, A038347.P15730340434200587304.a, A038347.P3801300426540644980.f2, A038347.P3801300426540644980.f1, A038347.P3801300426540644980.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038347

/-! ## A038347.P11730522427065422865

`∑[A339900(Δ[n²])]`
-/

namespace A038347.P11730522427065422865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P11730522427065422865

namespace A038347

/-- `∑[A339900(Δ[n²])]` -/
def P11730522427065422865.Spec : Prop :=
  ∀ n, P11730522427065422865.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P6046117402508448082

`∑[sqrt(A087691(n+1))]`
-/

namespace A038347.P6046117402508448082
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087691 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P6046117402508448082

namespace A038347

/-- `∑[sqrt(A087691(n+1))]` -/
def P6046117402508448082.Spec : Prop :=
  ∀ n, P6046117402508448082.a n = (A038347 (n + 1) : ℝ)

end A038347

/-! ## A038347.P9642433529137429985

`∑[A090658(n+1)-1]`
-/

namespace A038347.P9642433529137429985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090658 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P9642433529137429985

namespace A038347

/-- `∑[A090658(n+1)-1]` -/
def P9642433529137429985.Spec : Prop :=
  ∀ n, P9642433529137429985.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P3810705540576256043

`∑[A089217(n+1)-2]`
-/

namespace A038347.P3810705540576256043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089217 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P3810705540576256043

namespace A038347

/-- `∑[A089217(n+1)-2]` -/
def P3810705540576256043.Spec : Prop :=
  ∀ n, P3810705540576256043.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P10274532437675620626

`∑[A045326(n+2)]`
-/

namespace A038347.P10274532437675620626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P10274532437675620626

namespace A038347

/-- `∑[A045326(n+2)]` -/
def P10274532437675620626.Spec : Prop :=
  ∀ n, P10274532437675620626.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P11752968533812930117

`∑[A281664(n+2)+1]`
-/

namespace A038347.P11752968533812930117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281664 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P11752968533812930117

namespace A038347

/-- `∑[A281664(n+2)+1]` -/
def P11752968533812930117.Spec : Prop :=
  ∀ n, P11752968533812930117.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P12253510780903866300

`∑[A000040(A080148(n+1))]`
-/

namespace A038347.P12253510780903866300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080148 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P12253510780903866300

namespace A038347

/-- `∑[A000040(A080148(n+1))]` -/
def P12253510780903866300.Spec : Prop :=
  ∀ n, P12253510780903866300.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P17788712017579822640

`∑[A108546(2*(n+1))]`
-/

namespace A038347.P17788712017579822640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P17788712017579822640

namespace A038347

/-- `∑[A108546(2*(n+1))]` -/
def P17788712017579822640.Spec : Prop :=
  ∀ n, P17788712017579822640.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P6938491775013326621

`∑[A111744(2*(n+1))]`
-/

namespace A038347.P6938491775013326621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P6938491775013326621

namespace A038347

/-- `∑[A111744(2*(n+1))]` -/
def P6938491775013326621.Spec : Prop :=
  ∀ n, P6938491775013326621.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P16331932703421231402

`∑[A267101(A080147(n+1))]`
-/

namespace A038347.P16331932703421231402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A080147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P16331932703421231402

namespace A038347

/-- `∑[A267101(A080147(n+1))]` -/
def P16331932703421231402.Spec : Prop :=
  ∀ n, P16331932703421231402.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P9047282450937683115

`∑[record[p?[or(2, n+1)]]]`
-/

namespace A038347.P9047282450937683115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P9047282450937683115

namespace A038347

/-- `∑[record[p?[or(2, n+1)]]]` -/
def P9047282450937683115.Spec : Prop :=
  ∀ n, (P9047282450937683115.a n : ℤ) = A038347 (n + 1)

end A038347

/-! ## A038347.P18420895205278284922

`∑[record[A006530(4*n+3)]]`
-/

namespace A038347.P18420895205278284922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P18420895205278284922

namespace A038347

/-- `∑[record[A006530(4*n+3)]]` -/
def P18420895205278284922.Spec : Prop :=
  ∀ n, P18420895205278284922.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P12888750207218429119

`∑[record[A020639(4*n+3)]]`
-/

namespace A038347.P12888750207218429119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P12888750207218429119

namespace A038347

/-- `∑[record[A020639(4*n+3)]]` -/
def P12888750207218429119.Spec : Prop :=
  ∀ n, P12888750207218429119.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P3871645956435375517

`∑[record[A125255(n+1)]]`
-/

namespace A038347.P3871645956435375517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P3871645956435375517

namespace A038347

/-- `∑[record[A125255(n+1)]]` -/
def P3871645956435375517.Spec : Prop :=
  ∀ n, P3871645956435375517.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P11424802324954568985

`∑[A004767(A095278(n+1))]`
-/

namespace A038347.P11424802324954568985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A095278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P11424802324954568985

namespace A038347

/-- `∑[A004767(A095278(n+1))]` -/
def P11424802324954568985.Spec : Prop :=
  ∀ n, P11424802324954568985.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P176593284600844268

`∑[record[A051417(2*n+1)]]`
-/

namespace A038347.P176593284600844268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P176593284600844268

namespace A038347

/-- `∑[record[A051417(2*n+1)]]` -/
def P176593284600844268.Spec : Prop :=
  ∀ n, P176593284600844268.a n = A038347 (n + 1)

end A038347

/-! ## A038347.P9713006465103132768

`∑[record[A076565(2*n+1)]]`
-/

namespace A038347.P9713006465103132768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P9713006465103132768

namespace A038347

/-- `∑[record[A076565(2*n+1)]]` -/
def P9713006465103132768.Spec : Prop :=
  ∀ n, P9713006465103132768.a n = A038347 (n + 1)

end A038347

/-!
# A038348: Expansion of (1/(1-x^2))*Product_{m>=0} 1/(1-x^(2m+1)).

The programs for A038348, there is no canonical definition to state claims against.
-/

/-! ## A038348.P13729663960285647378

`A036469(n)-a(n-1)` with `a(0)=1`
-/

namespace A038348.P13729663960285647378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036469 n - a (n - 1)

end

end A038348.P13729663960285647378

/-! ## A038348.P10659693128692820502

`A000009(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A038348.P10659693128692820502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000009 n + a (n - 2)

end

end A038348.P10659693128692820502

/-! ## A038348.P13566593675593323530

`∑[A025147(n)]`
-/

namespace A038348.P13566593675593323530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P13566593675593323530

/-! ## A038348.P15981134543615917198

`∑[abs(∑[A081360(n)])]`
-/

namespace A038348.P15981134543615917198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P15981134543615917198

/-! ## A038348.P7358523407060168236

`A026906(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A038348.P7358523407060168236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026906 n + (1 - a (n - 1))

end

end A038348.P7358523407060168236

/-! ## A038348.P8126629463155628733

`∑[A000009(n)-A096765(n)]`
-/

namespace A038348.P8126629463155628733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P8126629463155628733

/-! ## A038348.P1133256413993005803

`(A036469(n)+A025147(n))/2`
-/

namespace A038348.P1133256413993005803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036469 n + A025147 n : ℚ) / 2

end

end A038348.P1133256413993005803

/-! ## A038348.P14665452980944208383

`A015723(n+1)-A265251(n+1)`
-/

namespace A038348.P14665452980944208383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (n + 1) - A265251 (n + 1)

end

end A038348.P14665452980944208383

/-! ## A038348.P14854172357345279435

`2*A268345(n+1)-A346822(n+1)`
-/

namespace A038348.P14854172357345279435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268345 (n + 1) - A346822 (n + 1)

end

end A038348.P14854172357345279435

/-! ## A038348.P4550565219202894979

`A000009(n)+A265251(n)+A090858(n)`
-/

namespace A038348.P4550565219202894979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A265251 n + A090858 n)

end

end A038348.P4550565219202894979

/-! ## A038348.P9806773726028906129

`A268345(n+1)-(A268345(n)+A000009(n+1))`
-/

namespace A038348.P9806773726028906129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268345 (n + 1) - (A268345 n + A000009 (n + 1))

end

end A038348.P9806773726028906129

/-! ## A038348.P3443565934967642758

`A116676(n+1)+A116680(n+1)-A265251(n+1)`
-/

namespace A038348.P3443565934967642758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116676 (n + 1) + (A116680 (n + 1) - A265251 (n + 1))

end

end A038348.P3443565934967642758

/-! ## A038348.P9984156220383230119

`∑[A096765(n+1)]`
-/

namespace A038348.P9984156220383230119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P9984156220383230119

/-! ## A038348.P18118964166811055250

`∑[A270144(n+1)+A270144(n)]`
-/

namespace A038348.P18118964166811055250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270144 (n + 1) + A270144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P18118964166811055250

/-! ## A038348.P4190643457931914399

`A265251(n+2)+A090858(n+2)`
-/

namespace A038348.P4190643457931914399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (n + 2) + A090858 (n + 2)

end

end A038348.P4190643457931914399

/-! ## A038348.P540372527098709824

`A268345(n+1)-A096914(n+3)`
-/

namespace A038348.P540372527098709824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268345 (n + 1) - A096914 (n + 3)

end

end A038348.P540372527098709824

/-! ## A038348.P2472355716807240883

`A346822(n+1)-2*A096914(n+3)`
-/

namespace A038348.P2472355716807240883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 (n + 1) - 2 * A096914 (n + 3)

end

end A038348.P2472355716807240883

/-! ## A038348.P11840450819138293189

`A036469(n+1)+A096914(n+2)-A096914(n+3)`
-/

namespace A038348.P11840450819138293189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1) + (A096914 (n + 2) - A096914 (n + 3))

end

end A038348.P11840450819138293189

/-! ## A038348.P11977596975674134627

`∑[A000041(n)-A047967(n)-A096765(n)]`
-/

namespace A038348.P11977596975674134627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n - A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P11977596975674134627

/-! ## A038348.P12645410578510419476

`∑[A096749(n)+A025148(n)]`
-/

namespace A038348.P12645410578510419476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 n + A025148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038348.P12645410578510419476

/-!
# A038349: Partial sums of primes congruent to 1 mod 6.

The programs for A038349, the canonical program `A038349.P17188223682718886745` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038349 has offset 1).

The definition of A038349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038349.P17188223682718886745

`∑[p?[3*n+1]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038349

/-- `∑[p?[3*n+1]]` -/
def P17188223682718886745.Spec : Prop :=
  ∀ n, (P17188223682718886745.a n : ℤ) = A038349 (n + 1)

theorem P17188223682718886745.correct : P17188223682718886745.Spec := by
  intro n
  simp only [A038349, Nat.add_sub_cancel]

end A038349

/-! ## A038349.P16851344244169178775

`∑[A002476(n+1)]`
-/

namespace A038349.P16851344244169178775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P16851344244169178775

namespace A038349

/-- `∑[A002476(n+1)]` -/
def P16851344244169178775.Spec : Prop :=
  ∀ n, P16851344244169178775.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P9653274708120698916

`∑[A112772(n+1)/2]`
-/

namespace A038349.P9653274708120698916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112772 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P9653274708120698916

namespace A038349

/-- `∑[A112772(n+1)/2]` -/
def P9653274708120698916.Spec : Prop :=
  ∀ n, P9653274708120698916.a n = (A038349 (n + 1) : ℚ)

end A038349

/-! ## A038349.P8222925520892069445

`∑[3*A024892(n+1)+1]`
-/

namespace A038349.P8222925520892069445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024892 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P8222925520892069445

namespace A038349

/-- `∑[3*A024892(n+1)+1]` -/
def P8222925520892069445.Spec : Prop :=
  ∀ n, P8222925520892069445.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P6983689818645537120

`∑[3*A153183(n+1)-2]`
-/

namespace A038349.P6983689818645537120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153183 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P6983689818645537120

namespace A038349

/-- `∑[3*A153183(n+1)-2]` -/
def P6983689818645537120.Spec : Prop :=
  ∀ n, P6983689818645537120.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P4584345311315831676

`∑[record[A002476(A324343(n))]]`
-/

namespace A038349.P4584345311315831676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P4584345311315831676

namespace A038349

/-- `∑[record[A002476(A324343(n))]]` -/
def P4584345311315831676.Spec : Prop :=
  ∀ n, P4584345311315831676.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P2432648776845925817

`∑[A007645(n+2)]`
-/

namespace A038349.P2432648776845925817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P2432648776845925817

namespace A038349

/-- `∑[A007645(n+2)]` -/
def P2432648776845925817.Spec : Prop :=
  ∀ n, P2432648776845925817.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P9476703275058072096

`∑[A045375(n+2)]`
-/

namespace A038349.P9476703275058072096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P9476703275058072096

namespace A038349

/-- `∑[A045375(n+2)]` -/
def P9476703275058072096.Spec : Prop :=
  ∀ n, P9476703275058072096.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P14607356821344203441

`∑[A123365(n+2)]`
-/

namespace A038349.P14607356821344203441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P14607356821344203441

namespace A038349

/-- `∑[A123365(n+2)]` -/
def P14607356821344203441.Spec : Prop :=
  ∀ n, P14607356821344203441.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P15855810825214847765

`A172113(n+2)-3`
-/

namespace A038349.P15855810825214847765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172113 (n + 2) - 3

end

end A038349.P15855810825214847765

namespace A038349

/-- `A172113(n+2)-3` -/
def P15855810825214847765.Spec : Prop :=
  ∀ n, P15855810825214847765.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P17286768473259886013

`∑[A045331(n+3)]`
-/

namespace A038349.P17286768473259886013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P17286768473259886013

namespace A038349

/-- `∑[A045331(n+3)]` -/
def P17286768473259886013.Spec : Prop :=
  ∀ n, P17286768473259886013.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P14533681019097466792

`∑[A000040(A091178(n+1))]`
-/

namespace A038349.P14533681019097466792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P14533681019097466792

namespace A038349

/-- `∑[A000040(A091178(n+1))]` -/
def P14533681019097466792.Spec : Prop :=
  ∀ n, P14533681019097466792.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P5240842323701514892

`∑[A000040(A171820(n+2))]`
-/

namespace A038349.P5240842323701514892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A171820 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P5240842323701514892

namespace A038349

/-- `∑[A000040(A171820(n+2))]` -/
def P5240842323701514892.Spec : Prop :=
  ∀ n, P5240842323701514892.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P9661119289922129405

`∑[record[A020639(6*n+7)]]`
-/

namespace A038349.P9661119289922129405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P9661119289922129405

namespace A038349

/-- `∑[record[A020639(6*n+7)]]` -/
def P9661119289922129405.Spec : Prop :=
  ∀ n, P9661119289922129405.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P4744747001722414973

`∑[record[A107744(n+1)]]`
-/

namespace A038349.P4744747001722414973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P4744747001722414973

namespace A038349

/-- `∑[record[A107744(n+1)]]` -/
def P4744747001722414973.Spec : Prop :=
  ∀ n, P4744747001722414973.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P15192972572069934660

`∑[record[A392240(n+1)]]`
-/

namespace A038349.P15192972572069934660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392240 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P15192972572069934660

namespace A038349

/-- `∑[record[A392240(n+1)]]` -/
def P15192972572069934660.Spec : Prop :=
  ∀ n, P15192972572069934660.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P1518274656338781174

`∑[A006530(A112772(n+1))]`
-/

namespace A038349.P1518274656338781174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A112772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P1518274656338781174

namespace A038349

/-- `∑[A006530(A112772(n+1))]` -/
def P1518274656338781174.Spec : Prop :=
  ∀ n, P1518274656338781174.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P11283894199557099774

`∑[A024614(A024618(n+2))]`
-/

namespace A038349.P11283894199557099774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (A024618 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P11283894199557099774

namespace A038349

/-- `∑[A024614(A024618(n+2))]` -/
def P11283894199557099774.Spec : Prop :=
  ∀ n, P11283894199557099774.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P14967956500231561938

`∑[A003136(A024679(n+2))]`
-/

namespace A038349.P14967956500231561938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024679 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P14967956500231561938

namespace A038349

/-- `∑[A003136(A024679(n+2))]` -/
def P14967956500231561938.Spec : Prop :=
  ∀ n, P14967956500231561938.a n = A038349 (n + 1)

end A038349

/-! ## A038349.P6552866589673134589

`∑[record[A051544(n+2)]]`
-/

namespace A038349.P6552866589673134589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P6552866589673134589

namespace A038349

/-- `∑[record[A051544(n+2)]]` -/
def P6552866589673134589.Spec : Prop :=
  ∀ n, P6552866589673134589.a n = A038349 (n + 1)

end A038349

/-!
# A038351: Numbers whose base-6 representation has the same nonzero number of 1's and 5's.

The programs for A038351, there is no canonical definition to state claims against.
-/

/-! ## A038351.P5504815978328137486

`∩[A039023(n+1), A333656(n+1)]`
-/

namespace A038351.P5504815978328137486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038351.P5504815978328137486

/-!
# A038352: Numbers whose base-6 representation has the same nonzero number of 2's and 3's.

The programs for A038352, there is no canonical definition to state claims against.
-/

/-! ## A038352.P2375520785978868860

`eq[A092196(A084984(n+1)), A173526(n+1)]`
-/

namespace A038352.P2375520785978868860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A084984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038352.P2375520785978868860

/-!
# A038354: Numbers whose base-6 representation has the same nonzero number of 2's and 5's.

The programs for A038354, there is no canonical definition to state claims against.
-/

/-! ## A038354.P11731231840423678434

`∩[A039026(n+1), A333656(n+1)]`
-/

namespace A038354.P11731231840423678434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038354.P11731231840423678434

/-!
# A038355: Numbers whose base-6 representation has the same nonzero number of 3's and 4's.

The programs for A038355, there is no canonical definition to state claims against.
-/

/-! ## A038355.P13498721539566091661

`A037465(A039292(n+1)%A035125(3*n+1))`
-/

namespace A038355.P13498721539566091661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A039292 (n + 1)) (A035125 (3 * n + 1))).toNat

end

end A038355.P13498721539566091661

/-! ## A038355.P2072350371061230352

`A037465(A039292(n+1)*A270752(n+1))`
-/

namespace A038355.P2072350371061230352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A039292 (n + 1) * A270752 (n + 1)).toNat

end

end A038355.P2072350371061230352

/-!
# A038356: Numbers whose base-6 representation has the same nonzero number of 3's and 5's.

The programs for A038356, there is no canonical definition to state claims against.
-/

/-! ## A038356.P1718215616710391113

`∩[A039028(n+1), A333656(n+1)]`
-/

namespace A038356.P1718215616710391113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038356.P1718215616710391113

/-! ## A038356.P3970075162662379541

`eq[2, A260088(A338863(n))]`
-/

namespace A038356.P3970075162662379541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260088 (A338863 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038356.P3970075162662379541

/-! ## A038356.P16137140903184983249

`A043909(n+1)-A114611(A000040(3*n+5))`
-/

namespace A038356.P16137140903184983249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (n + 1) - A114611 (A000040 (3 * n + 5)).toNat

end

end A038356.P16137140903184983249

/-!
# A038357: Ranks of certain relations among Euler sums of weight n.

The programs for A038357, there is no canonical definition to state claims against.
-/

/-! ## A038357.P13323977181095387416

`∑[floor(A365046(n+1)/sqrt(2))]`
-/

namespace A038357.P13323977181095387416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A365046 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038357.P13323977181095387416

/-! ## A038357.P5202201341567438940

`A001951(2^n)-∑[2^floor(n/2)]`
-/

namespace A038357.P5202201341567438940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001951 (2 ^ n) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038357.P5202201341567438940

/-! ## A038357.P217601096889792523

`floor((A336866(3*n+1)+1+n)/5)`
-/

namespace A038357.P217601096889792523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A336866 (3 * n + 1) + 1 + (n : ℤ) : ℚ) / 5⌋

end

end A038357.P217601096889792523

/-! ## A038357.P5850670315003801129

`floor((∑[A100953(3*n+2)]/3+2)/5)`
-/

namespace A038357.P5850670315003801129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100953 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3 + 2) / 5⌋

end

end A038357.P5850670315003801129

/-!
# A038359: Ranks of certain relations among Euler sums of weight n.

The programs for A038359, there is no canonical definition to state claims against.
-/

/-! ## A038359.P16747067731192174921

`ogf((1+x+2x^3+x^4+2x^5+3x^6+2x^7)/(1-2x))`
-/

namespace A038359.P16747067731192174921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2, 1, 2, 3, 2] [1, -2] n

end

end A038359.P16747067731192174921

/-! ## A038359.P2411233639247073822

`floor(A290292(n+2)/4)`
-/

namespace A038359.P2411233639247073822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290292 (n + 2) : ℚ) / 4⌋

end

end A038359.P2411233639247073822

/-! ## A038359.P8983846921424175083

`A038360(n+3)-char[7]`
-/

namespace A038359.P8983846921424175083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038360 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A038359.P8983846921424175083

/-! ## A038359.P456032888767886349

`∑[2^n]-A109436(n)`
-/

namespace A038359.P456032888767886349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A109436 n

end

end A038359.P456032888767886349

/-!
# A038360: Ranks of certain relations among Euler sums of weight n.

The programs for A038360, the canonical program `A038360.P13331399108565173454` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038360 has offset 3).

The definition of A038360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038360.P13331399108565173454

`A000079(n+1)-A000931(n+6)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038360

/-- `A000079(n+1)-A000931(n+6)` -/
def P13331399108565173454.Spec : Prop :=
  ∀ n, P13331399108565173454.a n = A038360 (n + 3)

theorem P13331399108565173454.correct : P13331399108565173454.Spec := by
  intro n
  simp only [A038360, Nat.add_sub_cancel]

end A038360

/-! ## A038360.P15049004621840739799

`ogf((1+x-x^2)/(1-2x-x^2+x^3+2x^4))`
-/

namespace A038360.P15049004621840739799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -1, 1, 2] n

end

end A038360.P15049004621840739799

namespace A038360

/-- `ogf((1+x-x^2)/(1-2x-x^2+x^3+2x^4))` -/
def P15049004621840739799.Spec : Prop :=
  ∀ n, P15049004621840739799.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P8337820253546618372

`A216714(n+6)`
-/

namespace A038360.P8337820253546618372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216714 (n + 6)

end

end A038360.P8337820253546618372

namespace A038360

/-- `A216714(n+6)` -/
def P8337820253546618372.Spec : Prop :=
  ∀ n, P8337820253546618372.a n = A038360 (n + 3)

theorem P8337820253546618372.correct : P8337820253546618372.Spec := by
  intro n
  simp only [A038360, Nat.add_sub_cancel, A038360.P8337820253546618372.a, A038360.P13331399108565173454.a, A000079, A000079.P10855139691139572931.a, A000931, A000931.P8773435820604439870.a, A216714, A216714.P12598557137374359763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038360

/-! ## A038360.P16336906158266107770

`∑[2^n-A000931(n+1)]`
-/

namespace A038360.P16336906158266107770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038360.P16336906158266107770

namespace A038360

/-- `∑[2^n-A000931(n+1)]` -/
def P16336906158266107770.Spec : Prop :=
  ∀ n, P16336906158266107770.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P5329820748509557477

`2^(n+1)-A134816(n+2)`
-/

namespace A038360.P5329820748509557477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A134816 (n + 2)

end

end A038360.P5329820748509557477

namespace A038360

/-- `2^(n+1)-A134816(n+2)` -/
def P5329820748509557477.Spec : Prop :=
  ∀ n, P5329820748509557477.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P16210224068838060248

`2^(n+1)-A182097(n+3)`
-/

namespace A038360.P16210224068838060248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A182097 (n + 3)

end

end A038360.P16210224068838060248

namespace A038360

/-- `2^(n+1)-A182097(n+3)` -/
def P16210224068838060248.Spec : Prop :=
  ∀ n, P16210224068838060248.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P3103388836695315884

`A278137(n)+A167821(n+1)`
-/

namespace A038360.P3103388836695315884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278137 n + A167821 (n + 1)

end

end A038360.P3103388836695315884

namespace A038360

/-- `A278137(n)+A167821(n+1)` -/
def P3103388836695315884.Spec : Prop :=
  ∀ n, P3103388836695315884.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P3399035250466604746

`A000225(n+1)-∑[A000931(n+1)]`
-/

namespace A038360.P3399035250466604746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038360.P3399035250466604746

namespace A038360

/-- `A000225(n+1)-∑[A000931(n+1)]` -/
def P3399035250466604746.Spec : Prop :=
  ∀ n, P3399035250466604746.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P10396754302142012644

`A000051(n+1)-(A134816(n+2)+1)`
-/

namespace A038360.P10396754302142012644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A134816 (n + 2) + 1)

end

end A038360.P10396754302142012644

namespace A038360

/-- `A000051(n+1)-(A134816(n+2)+1)` -/
def P10396754302142012644.Spec : Prop :=
  ∀ n, P10396754302142012644.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P11450013339346486448

`A000225(n+1)+1-A134816(n+2)`
-/

namespace A038360.P11450013339346486448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A134816 (n + 2))

end

end A038360.P11450013339346486448

namespace A038360

/-- `A000225(n+1)+1-A134816(n+2)` -/
def P11450013339346486448.Spec : Prop :=
  ∀ n, P11450013339346486448.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P13958686726785505518

`A000079(n+1)-A127682(2*(n+1))`
-/

namespace A038360.P13958686726785505518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A127682 (2 * (n + 1))

end

end A038360.P13958686726785505518

namespace A038360

/-- `A000079(n+1)-A127682(2*(n+1))` -/
def P13958686726785505518.Spec : Prop :=
  ∀ n, P13958686726785505518.a n = A038360 (n + 3)

end A038360

/-! ## A038360.P6304409896613103514

`A000079(n+1)-(A182097(n+1)+A182097(n))`
-/

namespace A038360.P6304409896613103514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A182097 (n + 1) + A182097 n)

end

end A038360.P6304409896613103514

namespace A038360

/-- `A000079(n+1)-(A182097(n+1)+A182097(n))` -/
def P6304409896613103514.Spec : Prop :=
  ∀ n, P6304409896613103514.a n = A038360 (n + 3)

end A038360

/-!
# A038361: Partial sums of primes congruent to 5 mod 6.

The programs for A038361, the canonical program `A038361.P4855428418005756058` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038361 has offset 1).

The definition of A038361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038361.P4855428418005756058

`∑[p?[3*n+5]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038361

/-- `∑[p?[3*n+5]]` -/
def P4855428418005756058.Spec : Prop :=
  ∀ n, (P4855428418005756058.a n : ℤ) = A038361 (n + 1)

theorem P4855428418005756058.correct : P4855428418005756058.Spec := by
  intro n
  simp only [A038361, Nat.add_sub_cancel]

end A038361

/-! ## A038361.P9173443408654375215

`p?[a(n-1)+3]+a(n-1)` with `a(0)=5`
-/

namespace A038361.P9173443408654375215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + a (n - 1)

end

end A038361.P9173443408654375215

namespace A038361

/-- `p?[a(n-1)+3]+a(n-1)` -/
def P9173443408654375215.Spec : Prop :=
  ∀ n, (P9173443408654375215.a n : ℤ) = A038361 (n + 1)

end A038361

/-! ## A038361.P9604178540754014596

`∑[A007528(n+1)]`
-/

namespace A038361.P9604178540754014596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P9604178540754014596

namespace A038361

/-- `∑[A007528(n+1)]` -/
def P9604178540754014596.Spec : Prop :=
  ∀ n, P9604178540754014596.a n = A038361 (n + 1)

theorem P9604178540754014596.correct : P9604178540754014596.Spec := by
  intro n
  simp only [A038361, Nat.add_sub_cancel, A038361.P9604178540754014596.f1, A038361.P9604178540754014596.a, A038361.P4855428418005756058.f2, A038361.P4855428418005756058.f1, A038361.P4855428418005756058.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038361

/-! ## A038361.P5938301523398016164

`∑[∑[A358548(n+1)]+2]`
-/

namespace A038361.P5938301523398016164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P5938301523398016164

namespace A038361

/-- `∑[∑[A358548(n+1)]+2]` -/
def P5938301523398016164.Spec : Prop :=
  ∀ n, P5938301523398016164.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P536341907226350989

`∑[record[A007528(A344180(n))]]`
-/

namespace A038361.P536341907226350989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P536341907226350989

namespace A038361

/-- `∑[record[A007528(A344180(n))]]` -/
def P536341907226350989.Spec : Prop :=
  ∀ n, P536341907226350989.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P10038868103276915354

`∑[A022759(n+1)-A002476(n+1)]`
-/

namespace A038361.P10038868103276915354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (n + 1) - A002476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P10038868103276915354

namespace A038361

/-- `∑[A022759(n+1)-A002476(n+1)]` -/
def P10038868103276915354.Spec : Prop :=
  ∀ n, P10038868103276915354.a n = A038361 (n + 1)

theorem P10038868103276915354.correct : P10038868103276915354.Spec := by
  intro n
  simp only [A038361, Nat.add_sub_cancel, A038361.P10038868103276915354.f1, A038361.P10038868103276915354.a, A038361.P4855428418005756058.f2, A038361.P4855428418005756058.f1, A038361.P4855428418005756058.a, A002476, A002476.P3741233015524542667.a, A022759, A022759.P8203283099031169534.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A024899, A024899.P11184081980913290394.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038361

/-! ## A038361.P16649575582406335183

`∑[A022759(n+1)-A112772(n+1)/2]`
-/

namespace A038361.P16649575582406335183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022759 (n + 1) : ℚ) - (A112772 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P16649575582406335183

namespace A038361

/-- `∑[A022759(n+1)-A112772(n+1)/2]` -/
def P16649575582406335183.Spec : Prop :=
  ∀ n, P16649575582406335183.a n = (A038361 (n + 1) : ℚ)

end A038361

/-! ## A038361.P6525224220064468705

`∑[A022759(n+1)-(3*A024892(n+1)+1)]`
-/

namespace A038361.P6525224220064468705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (n + 1) - (3 * A024892 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P6525224220064468705

namespace A038361

/-- `∑[A022759(n+1)-(3*A024892(n+1)+1)]` -/
def P6525224220064468705.Spec : Prop :=
  ∀ n, P6525224220064468705.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P5104251294406727000

`∑[A022759(n+1)-(3*A153183(n+1)-2)]`
-/

namespace A038361.P5104251294406727000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (n + 1) - (3 * A153183 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P5104251294406727000

namespace A038361

/-- `∑[A022759(n+1)-(3*A153183(n+1)-2)]` -/
def P5104251294406727000.Spec : Prop :=
  ∀ n, P5104251294406727000.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P10665252839703853783

`∑[A003627(n+2)]`
-/

namespace A038361.P10665252839703853783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P10665252839703853783

namespace A038361

/-- `∑[A003627(n+2)]` -/
def P10665252839703853783.Spec : Prop :=
  ∀ n, P10665252839703853783.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P12196345241652075697

`∑[A045410(n+2)]`
-/

namespace A038361.P12196345241652075697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P12196345241652075697

namespace A038361

/-- `∑[A045410(n+2)]` -/
def P12196345241652075697.Spec : Prop :=
  ∀ n, P12196345241652075697.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P12699259650703325133

`A172188(n+2)-2`
-/

namespace A038361.P12699259650703325133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172188 (n + 2) - 2

end

end A038361.P12699259650703325133

namespace A038361

/-- `A172188(n+2)-2` -/
def P12699259650703325133.Spec : Prop :=
  ∀ n, P12699259650703325133.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P7395292537609704339

`∑[A056955(n+2)]-3`
-/

namespace A038361.P7395292537609704339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A038361.P7395292537609704339

namespace A038361

/-- `∑[A056955(n+2)]-3` -/
def P7395292537609704339.Spec : Prop :=
  ∀ n, P7395292537609704339.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P967975126499719874

`∑[A112774(n+2)/2]`
-/

namespace A038361.P967975126499719874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112774 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P967975126499719874

namespace A038361

/-- `∑[A112774(n+2)/2]` -/
def P967975126499719874.Spec : Prop :=
  ∀ n, P967975126499719874.a n = (A038361 (n + 1) : ℚ)

end A038361

/-! ## A038361.P13538602274492851411

`∑[A045309(n+3)]`
-/

namespace A038361.P13538602274492851411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P13538602274492851411

namespace A038361

/-- `∑[A045309(n+3)]` -/
def P13538602274492851411.Spec : Prop :=
  ∀ n, P13538602274492851411.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P4779140541209665241

`∑[record[A323704(n+3)]]`
-/

namespace A038361.P4779140541209665241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P4779140541209665241

namespace A038361

/-- `∑[record[A323704(n+3)]]` -/
def P4779140541209665241.Spec : Prop :=
  ∀ n, P4779140541209665241.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P11404396095521508096

`∑[A000040(A091177(n+2))]`
-/

namespace A038361.P11404396095521508096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091177 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P11404396095521508096

namespace A038361

/-- `∑[A000040(A091177(n+2))]` -/
def P11404396095521508096.Spec : Prop :=
  ∀ n, P11404396095521508096.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P3193951146964445899

`∑[A000040(A133677(n+3))]`
-/

namespace A038361.P3193951146964445899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A133677 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P3193951146964445899

namespace A038361

/-- `∑[A000040(A133677(n+3))]` -/
def P3193951146964445899.Spec : Prop :=
  ∀ n, P3193951146964445899.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P8036833748743651754

`∑[record[A006530(3*n+5)]]`
-/

namespace A038361.P8036833748743651754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P8036833748743651754

namespace A038361

/-- `∑[record[A006530(3*n+5)]]` -/
def P8036833748743651754.Spec : Prop :=
  ∀ n, P8036833748743651754.a n = A038361 (n + 1)

end A038361

/-! ## A038361.P9667719323188029488

`∑[record[A020639(3*n+5)]]`
-/

namespace A038361.P9667719323188029488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P9667719323188029488

namespace A038361

/-- `∑[record[A020639(3*n+5)]]` -/
def P9667719323188029488.Spec : Prop :=
  ∀ n, P9667719323188029488.a n = A038361 (n + 1)

end A038361

/-!
# A038365: Numbers n with property that digits of n are not present in 2n.

The programs for A038365, there is no canonical definition to state claims against.
-/

/-! ## A038365.P16087532804133386960

`eq[2, A378865(n+1)]+1`
-/

namespace A038365.P16087532804133386960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038365.P16087532804133386960

/-! ## A038365.P4145509312327903628

`eq[2*n, A074157(A028310(n))]`
-/

namespace A038365.P4145509312327903628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038365.P4145509312327903628

/-! ## A038365.P9061883372859206608

`eq[n, A074157(A065033(n))]/2`
-/

namespace A038365.P9061883372859206608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A065033 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A038365.P9061883372859206608

/-! ## A038365.P4094750014555710776

`lt[and(A086066(2*n), A086066(n)), 1]`
-/

namespace A038365.P4094750014555710776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086066 (2 * n)) (A086066 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A038365.P4094750014555710776

/-! ## A038365.P12768877008000355062

`A065033(eq[n, A074157(A065033(n))])`
-/

namespace A038365.P12768877008000355062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038365.P12768877008000355062

/-!
# A038366: n is divisible by (product of digits) + (sum of digits).

The programs for A038366, the canonical program `A038366.P4711874104874146746` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038366 has offset 1).

The definition of A038366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038366.P4711874104874146746

`eq[lcm(n, A061762(n)), A028310(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038366

/-- `eq[lcm(n, A061762(n)), A028310(n)]` -/
def P4711874104874146746.Spec : Prop :=
  ∀ n, (P4711874104874146746.a n : ℤ) = A038366 (n + 1)

theorem P4711874104874146746.correct : P4711874104874146746.Spec := by
  intro n
  simp only [A038366, Nat.add_sub_cancel]

end A038366

/-! ## A038366.P11020800800028548310

`A000196(A343131(n+10)²)`
-/

namespace A038366.P11020800800028548310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A343131 (n + 10) ^ 2).toNat

end

end A038366.P11020800800028548310

namespace A038366

/-- `A000196(A343131(n+10)²)` -/
def P11020800800028548310.Spec : Prop :=
  ∀ n, P11020800800028548310.a n = A038366 (n + 1)

end A038366

/-! ## A038366.P9842156643450138386

`A343131(n+10)+A000007(A000032(n))`
-/

namespace A038366.P9842156643450138386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (n + 10) + A000007 (A000032 n).toNat

end

end A038366.P9842156643450138386

namespace A038366

/-- `A343131(n+10)+A000007(A000032(n))` -/
def P9842156643450138386.Spec : Prop :=
  ∀ n, P9842156643450138386.a n = A038366 (n + 1)

end A038366

/-! ## A038366.P12951720529663049757

`∩[A001637(n+1), A343131(n+1)]`
-/

namespace A038366.P12951720529663049757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038366.P12951720529663049757

namespace A038366

/-- `∩[A001637(n+1), A343131(n+1)]` -/
def P12951720529663049757.Spec : Prop :=
  ∀ n, (P12951720529663049757.a n : ℤ) = A038366 (n + 1)

end A038366

/-!
# A038367: Numbers n with property that (product of digits of n) is divisible by (sum of digits of n).

The programs for A038367, there is no canonical definition to state claims against.
-/

/-! ## A038367.P5966040078540139587

`∪[A061013(n+1), A098394(n+1)]`
-/

namespace A038367.P5966040078540139587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038367.P5966040078540139587

/-! ## A038367.P1723099495959761244

`∪[A061013(n+1), A212499(n+1)]`
-/

namespace A038367.P1723099495959761244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038367.P1723099495959761244

/-! ## A038367.P9083927817168204487

`∪[A061013(n+1), A011540(n+2)]`
-/

namespace A038367.P9083927817168204487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038367.P9083927817168204487

/-! ## A038367.P13959529853928408387

`lt[A007954(n+1)%A007953(n+1), 1]+1`
-/

namespace A038367.P13959529853928408387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (n + 1)) (A007953 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A038367.P13959529853928408387

/-! ## A038367.P2349495618954136508

`eq[0, A000166(A214949(n))]`
-/

namespace A038367.P2349495618954136508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A214949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038367.P2349495618954136508

/-!
# A038368: n is divisible by |(product of digits) - (sum of digits)|.

The programs for A038368, the canonical program `A038368.P13573452781370203554` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038368 has offset 1).

The definition of A038368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038368.P13573452781370203554

`eq[lcm(n, A062329(n)), A028310(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038368

/-- `eq[lcm(n, A062329(n)), A028310(n)]` -/
def P13573452781370203554.Spec : Prop :=
  ∀ n, (P13573452781370203554.a n : ℤ) = A038368 (n + 1)

theorem P13573452781370203554.correct : P13573452781370203554.Spec := by
  intro n
  simp only [A038368, Nat.add_sub_cancel]

end A038368

/-! ## A038368.P9306138490952592349

`eq[A125005(3*n+4)!, A031346(n)]`
-/

namespace A038368.P9306138490952592349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A125005 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038368.P9306138490952592349

namespace A038368

/-- `eq[A125005(3*n+4)!, A031346(n)]` -/
def P9306138490952592349.Spec : Prop :=
  ∀ n, (P9306138490952592349.a n : ℤ) = A038368 (n + 1)

end A038368

/-! ## A038368.P8922197755807583661

`lt[A005994(A133500(n)), A342421(n+1)]`
-/

namespace A038368.P8922197755807583661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 (A133500 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038368.P8922197755807583661

namespace A038368

/-- `lt[A005994(A133500(n)), A342421(n+1)]` -/
def P8922197755807583661.Spec : Prop :=
  ∀ n, (P8922197755807583661.a n : ℤ) = A038368 (n + 1)

end A038368

/-! ## A038368.P17192395436664495881

`eq[A031346(n), A142468(A325227(2*(n+2)))]`
-/

namespace A038368.P17192395436664495881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142468 (A325227 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038368.P17192395436664495881

namespace A038368

/-- `eq[A031346(n), A142468(A325227(2*(n+2)))]` -/
def P17192395436664495881.Spec : Prop :=
  ∀ n, (P17192395436664495881.a n : ℤ) = A038368 (n + 1)

end A038368

/-! ## A038368.P5773225724704295444

`eq[A031346(n), A327537(A023854(3*n+2))]`
-/

namespace A038368.P5773225724704295444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327537 (A023854 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038368.P5773225724704295444

namespace A038368

/-- `eq[A031346(n), A327537(A023854(3*n+2))]` -/
def P5773225724704295444.Spec : Prop :=
  ∀ n, (P5773225724704295444.a n : ℤ) = A038368 (n + 1)

end A038368

/-!
# A038370: Smallest prime with "n^2" as central digit(s).

The programs for A038370, there is no canonical definition to state claims against.
-/

/-! ## A038370.P15968912782967058846

`A069691(n²)`
-/

namespace A038370.P15968912782967058846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (n ^ 2)

end

end A038370.P15968912782967058846

/-! ## A038370.P11604072525921206965

`or(1, A069691(A000290(n)))`
-/

namespace A038370.P11604072525921206965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069691 (A000290 n).toNat)

end

end A038370.P11604072525921206965

/-! ## A038370.P10415404559998543366

`or(A059841(n), A069691(n*n))`
-/

namespace A038370.P10415404559998543366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A069691 (n * n))

end

end A038370.P10415404559998543366

/-! ## A038370.P6598596741157791467

`A054977(n+1)*A069691(A000290(n))`
-/

namespace A038370.P6598596741157791467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A069691 (A000290 n).toNat

end

end A038370.P6598596741157791467

/-! ## A038370.P3339984155886911868

`A185012(n+3)+A069691(A000290(n))`
-/

namespace A038370.P3339984155886911868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 3) + A069691 (A000290 n).toNat

end

end A038370.P3339984155886911868

/-! ## A038370.P9387309837404141745

`A069691(A000290(n))%A346344(n+1)`
-/

namespace A038370.P9387309837404141745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069691 (A000290 n).toNat) (A346344 (n + 1))

end

end A038370.P9387309837404141745

/-! ## A038370.P4095956303049457590

`A069691(A000290(n))+C(n+5, A075595(n+1))`
-/

namespace A038370.P4095956303049457590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (A000290 n).toNat + (Nat.choose (n + 5) (A075595 (n + 1)).toNat : ℤ)

end

end A038370.P4095956303049457590

/-! ## A038370.P3054313694984905358

`A069691(A000290(n))+C(n+5, A091375(n+1))`
-/

namespace A038370.P3054313694984905358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (A000290 n).toNat + (Nat.choose (n + 5) (A091375 (n + 1)).toNat : ℤ)

end

end A038370.P3054313694984905358

/-! ## A038370.P2253030836663181277

`A069691(A000290(n))+C(n+5, A343986(n+1))`
-/

namespace A038370.P2253030836663181277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (A000290 n).toNat + (Nat.choose (n + 5) (A343986 (n + 1)).toNat : ℤ)

end

end A038370.P2253030836663181277

/-! ## A038370.P2381083287728296718

`A069691(A000290(n))+C(n+5, A252815(n+4))`
-/

namespace A038370.P2381083287728296718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (A000290 n).toNat + (Nat.choose (n + 5) (A252815 (n + 4)).toNat : ℤ)

end

end A038370.P2381083287728296718

/-! ## A038370.P5778761621926690505

`A069691(A000290(n))+C(n+5, A002383(2*n+4))`
-/

namespace A038370.P5778761621926690505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069691 (A000290 n).toNat + (Nat.choose (n + 5) (A002383 (2 * n + 4)).toNat : ℤ)

end

end A038370.P5778761621926690505

/-! ## A038370.P9672103994004895503

`A084413(n²)`
-/

namespace A038370.P9672103994004895503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 (n ^ 2)

end

end A038370.P9672103994004895503

/-!
# A038371: Smallest prime factor of 10^n + 1.

The programs for A038371, there is no canonical definition to state claims against.
-/

/-! ## A038371.P7033010724855126029

`A077805(2^n+1)`
-/

namespace A038371.P7033010724855126029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (2 ^ n + 1)

end

end A038371.P7033010724855126029

/-! ## A038371.P10980744009164597391

`p?[A077805(A052552(n))]`
-/

namespace A038371.P10980744009164597391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A052552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038371.P10980744009164597391

/-! ## A038371.P9045496928350036092

`p?[A077805(A094373(n))]`
-/

namespace A038371.P9045496928350036092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A094373 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038371.P9045496928350036092

/-! ## A038371.P16515200567207314328

`p?[A077805(Δ[A052968(n)])]`
-/

namespace A038371.P16515200567207314328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052968 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038371.P16515200567207314328

/-!
# A038372: Largest subset of integers [ 1...n ] such that no member divides two others.

The programs for A038372, there is no canonical definition to state claims against.
-/

/-! ## A038372.P11827164248994535589

`∑[(((n+1)²/∏{p}[n+1, #])%A046034(n+1))²%3]`
-/

namespace A038372.P11827164248994535589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))) (A046034 (n + 1)) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038372.P11827164248994535589

/-! ## A038372.P1330359674590403913

`∑[A240025(A322026(n+1))]`
-/

namespace A038372.P1330359674590403913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (A322026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038372.P1330359674590403913

/-! ## A038372.P17727398875198750161

`∑[A011655(A039592(n+2))]`
-/

namespace A038372.P17727398875198750161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A039592 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038372.P17727398875198750161

/-! ## A038372.P12903385136454173451

`∑[A011655(A249816(2*(n+1)))]`
-/

namespace A038372.P12903385136454173451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A249816 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038372.P12903385136454173451

/-! ## A038372.P18307047884788697848

`∑[abs(A129667(A068219(3*(n+1))))]`
-/

namespace A038372.P18307047884788697848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129667 (A068219 (3 * (n + 1))).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038372.P18307047884788697848

/-!
# A038373: Number of n-step self-avoiding paths on quadrant grid starting at quadrant origin.

The programs for A038373, there is no canonical definition to state claims against.
-/

/-! ## A038373.P5791343099241418247

`A006530(A001316(n))*A046170(A028310(n))`
-/

namespace A038373.P5791343099241418247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A046170 (A028310 n).toNat

end

end A038373.P5791343099241418247

/-! ## A038373.P15943887320670507363

`A020639(A008458(n))*A046170(A028310(n))`
-/

namespace A038373.P15943887320670507363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A046170 (A028310 n).toNat

end

end A038373.P15943887320670507363

/-! ## A038373.P1920423271084695431

`A014963(A062383(n))*A046170(A028310(n))`
-/

namespace A038373.P1920423271084695431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062383 n).toNat * A046170 (A028310 n).toNat

end

end A038373.P1920423271084695431

/-! ## A038373.P11877820396172956118

`A014963(A137688(n))*A046170(A028310(n))`
-/

namespace A038373.P11877820396172956118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137688 n).toNat * A046170 (A028310 n).toNat

end

end A038373.P11877820396172956118

/-!
# A038374: Length of longest contiguous block of 1's in binary expansion of n.

The programs for A038374, the canonical program `A038374.P4401150672186507094` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038374 has offset 1).

The definition of A038374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038374.P4401150672186507094

`val(A278222(n+1), 2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A038374

/-- `val(A278222(n+1), 2)` -/
def P4401150672186507094.Spec : Prop :=
  ∀ n, (P4401150672186507094.a n : ℤ) = A038374 (n + 1)

theorem P4401150672186507094.correct : P4401150672186507094.Spec := by
  intro n
  simp only [A038374, Nat.add_sub_cancel]

end A038374

/-! ## A038374.P843048956488619243

`A043276(A090078(n+1))`
-/

namespace A038374.P843048956488619243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A090078 (n + 1)).toNat

end

end A038374.P843048956488619243

namespace A038374

/-- `A043276(A090078(n+1))` -/
def P843048956488619243.Spec : Prop :=
  ∀ n, P843048956488619243.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P16157800099732176442

`A043276(A161820(n+1))`
-/

namespace A038374.P16157800099732176442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A161820 (n + 1)).toNat

end

end A038374.P16157800099732176442

namespace A038374

/-- `A043276(A161820(n+1))` -/
def P16157800099732176442.Spec : Prop :=
  ∀ n, P16157800099732176442.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P13668263741382698589

`A043276(A175945(n+1))`
-/

namespace A038374.P13668263741382698589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A175945 (n + 1)).toNat

end

end A038374.P13668263741382698589

namespace A038374

/-- `A043276(A175945(n+1))` -/
def P13668263741382698589.Spec : Prop :=
  ∀ n, P13668263741382698589.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P16760417706863145575

`val(lcm(2, A278222(A153152(n))), 2)`
-/

namespace A038374.P16760417706863145575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm 2 (A278222 (A153152 n).toNat)) 2

end

end A038374.P16760417706863145575

namespace A038374

/-- `val(lcm(2, A278222(A153152(n))), 2)` -/
def P16760417706863145575.Spec : Prop :=
  ∀ n, (P16760417706863145575.a n : ℤ) = A038374 (n + 1)

end A038374

/-! ## A038374.P4014181734351504619

`A330036(n+1)-A087117(n+1)`
-/

namespace A038374.P4014181734351504619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 (n + 1) - A087117 (n + 1)

end

end A038374.P4014181734351504619

namespace A038374

/-- `A330036(n+1)-A087117(n+1)` -/
def P4014181734351504619.Spec : Prop :=
  ∀ n, P4014181734351504619.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P2439682861534193928

`log2(gcd(2*A001316(n+1), A278222(n+1)))`
-/

namespace A038374.P2439682861534193928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (2 * A001316 (n + 1)) (A278222 (n + 1)) : ℝ)

end

end A038374.P2439682861534193928

namespace A038374

/-- `log2(gcd(2*A001316(n+1), A278222(n+1)))` -/
def P2439682861534193928.Spec : Prop :=
  ∀ n, P2439682861534193928.a n = (A038374 (n + 1) : ℝ)

end A038374

/-! ## A038374.P338620590470070137

`A001222(and(1-A278222(n+1), A278222(n+1)))`
-/

namespace A038374.P338620590470070137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (1 - A278222 (n + 1)) (A278222 (n + 1))).toNat

end

end A038374.P338620590470070137

namespace A038374

/-- `A001222(and(1-A278222(n+1), A278222(n+1)))` -/
def P338620590470070137.Spec : Prop :=
  ∀ n, P338620590470070137.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P1670876975489878728

`A061395(A246029(n+1))`
-/

namespace A038374.P1670876975489878728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 (n + 1)).toNat

end

end A038374.P1670876975489878728

namespace A038374

/-- `A061395(A246029(n+1))` -/
def P1670876975489878728.Spec : Prop :=
  ∀ n, P1670876975489878728.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P14507555446437265218

`A051903(A278222(n+1))`
-/

namespace A038374.P14507555446437265218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278222 (n + 1)).toNat

end

end A038374.P14507555446437265218

namespace A038374

/-- `A051903(A278222(n+1))` -/
def P14507555446437265218.Spec : Prop :=
  ∀ n, P14507555446437265218.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P8631484897074454459

`A374176(A038558(n+1))`
-/

namespace A038374.P8631484897074454459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A038558 (n + 1)).toNat

end

end A038374.P8631484897074454459

namespace A038374

/-- `A374176(A038558(n+1))` -/
def P8631484897074454459.Spec : Prop :=
  ∀ n, P8631484897074454459.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P4260000091375309401

`A087117(A010078(n+2))`
-/

namespace A038374.P4260000091375309401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 2)).toNat

end

end A038374.P4260000091375309401

namespace A038374

/-- `A087117(A010078(n+2))` -/
def P4260000091375309401.Spec : Prop :=
  ∀ n, P4260000091375309401.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P10866575504781619688

`A007814(A278222(1+n))`
-/

namespace A038374.P10866575504781619688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278222 (1 + n)).toNat

end

end A038374.P10866575504781619688

namespace A038374

/-- `A007814(A278222(1+n))` -/
def P10866575504781619688.Spec : Prop :=
  ∀ n, P10866575504781619688.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P17479970605426486442

`A089309(A278222(n+1)-1)`
-/

namespace A038374.P17479970605426486442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A278222 (n + 1) - 1).toNat

end

end A038374.P17479970605426486442

namespace A038374

/-- `A089309(A278222(n+1)-1)` -/
def P17479970605426486442.Spec : Prop :=
  ∀ n, P17479970605426486442.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P11160488355152112564

`A136480(A278222(n+1)-1)`
-/

namespace A038374.P11160488355152112564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A278222 (n + 1) - 1).toNat

end

end A038374.P11160488355152112564

namespace A038374

/-- `A136480(A278222(n+1)-1)` -/
def P11160488355152112564.Spec : Prop :=
  ∀ n, P11160488355152112564.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P16510015706853481021

`A050604(A278222(n+1)-2)`
-/

namespace A038374.P16510015706853481021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 (A278222 (n + 1) - 2).toNat

end

end A038374.P16510015706853481021

namespace A038374

/-- `A050604(A278222(n+1)-2)` -/
def P16510015706853481021.Spec : Prop :=
  ∀ n, P16510015706853481021.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P14823906957255391002

`A067029(A278222(2*(n+1)))`
-/

namespace A038374.P14823906957255391002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A278222 (2 * (n + 1))).toNat

end

end A038374.P14823906957255391002

namespace A038374

/-- `A067029(A278222(2*(n+1)))` -/
def P14823906957255391002.Spec : Prop :=
  ∀ n, P14823906957255391002.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P10421111300917223612

`A001511(A278222(n+1)/2)`
-/

namespace A038374.P10421111300917223612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A278222 (n + 1) : ℚ) / 2)).toNat

end

end A038374.P10421111300917223612

namespace A038374

/-- `A001511(A278222(n+1)/2)` -/
def P10421111300917223612.Spec : Prop :=
  ∀ n, P10421111300917223612.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P14693146094115583019

`A001511(Δ[∑[A278222(n)]/2])`
-/

namespace A038374.P14693146094115583019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A038374.P14693146094115583019

namespace A038374

/-- `A001511(Δ[∑[A278222(n)]/2])` -/
def P14693146094115583019.Spec : Prop :=
  ∀ n, P14693146094115583019.a n = A038374 (n + 1)

end A038374

/-! ## A038374.P1729964120122868070

`A067029(A046523(A278222(n+2+n)))`
-/

namespace A038374.P1729964120122868070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A046523 (A278222 (n + 2 + n)).toNat).toNat

end

end A038374.P1729964120122868070

namespace A038374

/-- `A067029(A046523(A278222(n+2+n)))` -/
def P1729964120122868070.Spec : Prop :=
  ∀ n, P1729964120122868070.a n = A038374 (n + 1)

end A038374

/-!
# A038375: Maximal number of spanning paths in a tournament on n nodes.

The programs for A038375, there is no canonical definition to state claims against.
-/

/-! ## A038375.P12282791677562032302

`3*A161207(a(n-1)+1)/2` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A038375.P12282791677562032302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  3 * ((A161207 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) / 2)

end

end A038375.P12282791677562032302

/-! ## A038375.P2101920573348003981

`A334929(A118037(n))`
-/

namespace A038375.P2101920573348003981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334929 (A118037 n).toNat

end

end A038375.P2101920573348003981

/-! ## A038375.P4193922888030213369

`A316774(A098544(n+1))-1`
-/

namespace A038375.P4193922888030213369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 (A098544 (n + 1)).toNat - 1

end

end A038375.P4193922888030213369

/-!
# A038376: a(n) = (n-3)*A006918(n-2)/2 for n >= 2, with a(0) = a(1) = 0.

The programs for A038376, the canonical program `A038376.P17117509248692698682` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038376 has offset 0).

The definition of A038376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038376.P17117509248692698682

`n*(n-3)*(2*n²-3*(-1)^n-5)/96`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038376

/-- `n*(n-3)*(2*n²-3*(-1)^n-5)/96` -/
def P17117509248692698682.Spec : Prop :=
  ∀ n, P17117509248692698682.a n = (A038376 n : ℚ)

end A038376

/-! ## A038376.P9222728463903550397

`A336529(n)-A213850(n+1)`
-/

namespace A038376.P9222728463903550397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336529 n - A213850 (n + 1)

end

end A038376.P9222728463903550397

namespace A038376

/-- `A336529(n)-A213850(n+1)` -/
def P9222728463903550397.Spec : Prop :=
  ∀ n, P9222728463903550397.a n = A038376 n

end A038376

/-! ## A038376.P3755665582713814154

`A336529(n)-∑[A023855(n+1)]`
-/

namespace A038376.P3755665582713814154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336529 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038376.P3755665582713814154

namespace A038376

/-- `A336529(n)-∑[A023855(n+1)]` -/
def P3755665582713814154.Spec : Prop :=
  ∀ n, P3755665582713814154.a n = A038376 n

end A038376

/-! ## A038376.P871715138578998072

`2*A333319(n+1)-Δ[A330299(n+1)]`
-/

namespace A038376.P871715138578998072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333319 (n + 1) - (f1 (n + 1) - f1 n)

end

end A038376.P871715138578998072

namespace A038376

/-- `2*A333319(n+1)-Δ[A330299(n+1)]` -/
def P871715138578998072.Spec : Prop :=
  ∀ n, P871715138578998072.a n = A038376 n

end A038376

/-! ## A038376.P13830283770201439429

`A159708(A150617(n))`
-/

namespace A038376.P13830283770201439429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159708 (A150617 n).toNat

end

end A038376.P13830283770201439429

namespace A038376

/-- `A159708(A150617(n))` -/
def P13830283770201439429.Spec : Prop :=
  ∀ n, P13830283770201439429.a n = A038376 n

end A038376

/-!
# A038377: Number of odd nonprimes <= (2n+1)^2.

The programs for A038377, the canonical program `A038377.P1335350978526226774` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038377 has offset 0).

The definition of A038377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038377.P83387664487737319

`A037040(n)+1`
-/

namespace A038377.P83387664487737319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037040 n + 1

end

end A038377.P83387664487737319

namespace A038377

/-- `A037040(n)+1` -/
def P83387664487737319.Spec : Prop :=
  ∀ n, P83387664487737319.a n = A038377 n

theorem P83387664487737319.correct : P83387664487737319.Spec := by
  intro n
  simp only [A038377, Nat.add_sub_cancel, A038377.P83387664487737319.a, A038377.P1335350978526226774.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037040, A037040.P6394171430064314896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038377

/-! ## A038377.P1335350978526226774

`2*n²+2*n+2-A000720((2*n+1)²+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038377

/-- `2*n²+2*n+2-A000720((2*n+1)²+1)` -/
def P1335350978526226774.Spec : Prop :=
  ∀ n, P1335350978526226774.a n = A038377 n

theorem P1335350978526226774.correct : P1335350978526226774.Spec := by
  intro n
  simp only [A038377]

end A038377

/-! ## A038377.P1277517872240690448

`1-A037040(n)*A057428(n)`
-/

namespace A038377.P1277517872240690448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037040 n * A057428 n

end

end A038377.P1277517872240690448

namespace A038377

/-- `1-A037040(n)*A057428(n)` -/
def P1277517872240690448.Spec : Prop :=
  ∀ n, P1277517872240690448.a n = A038377 n

end A038377

/-! ## A038377.P2271477551272035770

`A005408(n)-(2*n-A037040(n))`
-/

namespace A038377.P2271477551272035770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A037040 n)

end

end A038377.P2271477551272035770

namespace A038377

/-- `A005408(n)-(2*n-A037040(n))` -/
def P2271477551272035770.Spec : Prop :=
  ∀ n, P2271477551272035770.a n = A038377 n

theorem P2271477551272035770.correct : P2271477551272035770.Spec := by
  intro n
  simp only [A038377, Nat.add_sub_cancel, A038377.P2271477551272035770.a, A038377.P1335350978526226774.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005408, A005408.P17437947328870227736.a, A037040, A037040.P6394171430064314896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038377

/-! ## A038377.P7377592339715959702

`A008619(n)-(A004526(n)-A037040(n))`
-/

namespace A038377.P7377592339715959702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A037040 n)

end

end A038377.P7377592339715959702

namespace A038377

/-- `A008619(n)-(A004526(n)-A037040(n))` -/
def P7377592339715959702.Spec : Prop :=
  ∀ n, P7377592339715959702.a n = A038377 n

theorem P7377592339715959702.correct : P7377592339715959702.Spec := by
  intro n
  simp only [A038377, Nat.add_sub_cancel, A038377.P7377592339715959702.a, A038377.P1335350978526226774.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A037040, A037040.P6394171430064314896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038377

/-! ## A038377.P14539344736343612386

`1-(A000035(2*n)-A037040(n))`
-/

namespace A038377.P14539344736343612386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A037040 n)

end

end A038377.P14539344736343612386

namespace A038377

/-- `1-(A000035(2*n)-A037040(n))` -/
def P14539344736343612386.Spec : Prop :=
  ∀ n, P14539344736343612386.a n = A038377 n

end A038377

/-! ## A038377.P5454171778795552646

`A001844(n)+1-A000720(A069894(n))`
-/

namespace A038377.P5454171778795552646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + (1 - A000720 (A069894 n).toNat)

end

end A038377.P5454171778795552646

namespace A038377

/-- `A001844(n)+1-A000720(A069894(n))` -/
def P5454171778795552646.Spec : Prop :=
  ∀ n, P5454171778795552646.a n = A038377 n

end A038377

/-! ## A038377.P1524025640585154046

`A328399(2*A037040(n))`
-/

namespace A038377.P1524025640585154046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A037040 n).toNat

end

end A038377.P1524025640585154046

namespace A038377

/-- `A328399(2*A037040(n))` -/
def P1524025640585154046.Spec : Prop :=
  ∀ n, P1524025640585154046.a n = A038377 n

end A038377

/-! ## A038377.P18050196637526633680

`A028310(A037040(n)-A057428(n))`
-/

namespace A038377.P18050196637526633680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A037040 n - A057428 n).toNat

end

end A038377.P18050196637526633680

namespace A038377

/-- `A028310(A037040(n)-A057428(n))` -/
def P18050196637526633680.Spec : Prop :=
  ∀ n, P18050196637526633680.a n = A038377 n

end A038377

/-! ## A038377.P5642821199976793765

`A210469(∑[4*n]+1)+1`
-/

namespace A038377.P5642821199976793765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A038377.P5642821199976793765

namespace A038377

/-- `A210469(∑[4*n]+1)+1` -/
def P5642821199976793765.Spec : Prop :=
  ∀ n, P5642821199976793765.a n = A038377 n

end A038377

/-!
# A038378: Integers which have more distinct digits than any smaller number.

The programs for A038378, there is no canonical definition to state claims against.
-/

/-! ## A038378.P13615432227942030495

`10*a(n-1)+n` with `a(0)=0, a(1)=10`
-/

namespace A038378.P13615432227942030495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 * a (n - 1) + n

end

end A038378.P13615432227942030495

/-! ## A038378.P17767186873361875266

`a(n-1)/tan(acot(10))+n` with `a(0)=0, a(1)=10`
-/

namespace A038378.P17767186873361875266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (10 : ℝ)) + (n : ℝ)

end

end A038378.P17767186873361875266

/-! ## A038378.P13561137431940968810

`n-(a(n-1)-11*a(n-1))` with `a(0)=0, a(1)=10`
-/

namespace A038378.P13561137431940968810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  (n : ℤ) - (a (n - 1) - 11 * a (n - 1))

end

end A038378.P13561137431940968810

/-! ## A038378.P17600575884023713503

`∑[floor(10^n/9)]+9*floor(10^(n-1))`
-/

namespace A038378.P17600575884023713503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A038378.P17600575884023713503

/-! ## A038378.P12458261436323531468

`A086068(∑[2^n])`
-/

namespace A038378.P12458261436323531468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038378.P12458261436323531468

/-!
# A038380: Number of perifusenes with one internal vertex.

The programs for A038380, there is no canonical definition to state claims against.
-/

/-! ## A038380.P16156989919959058174

`A008651(A000734(n))`
-/

namespace A038380.P16156989919959058174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A000734 n).toNat

end

end A038380.P16156989919959058174

/-! ## A038380.P343557429685084734

`A008651(A363555(n)+2)`
-/

namespace A038380.P343557429685084734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A363555 n + 2).toNat

end

end A038380.P343557429685084734

/-! ## A038380.P134333432433860586

`A059995(lcm(2, A186999(n)))`
-/

namespace A038380.P134333432433860586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lcm 2 (A186999 n))

end

end A038380.P134333432433860586

/-! ## A038380.P17749373748587741361

`A168201(floor(sqrt(A277638(n))))`
-/

namespace A038380.P17749373748587741361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (Int.sqrt (A277638 n)).toNat

end

end A038380.P17749373748587741361

/-!
# A038381: Number of perifusenes with one internal vertex and symmetry point group C_s.

The programs for A038381, there is no canonical definition to state claims against.
-/

/-! ## A038381.P15055403393751640802

`A038384(n)+A038382(n)`
-/

namespace A038381.P15055403393751640802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038384 n + A038382 n

end

end A038381.P15055403393751640802

/-! ## A038381.P7690075736164504625

`A038382(n)+A038385(n)-A067168(A166300(n))`
-/

namespace A038381.P7690075736164504625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038382 n + (A038385 n - A067168 ((A166300 n).toNat + 10))

end

end A038381.P7690075736164504625

/-! ## A038381.P13044707736957679805

`A038382(n)+A038385(n)-A235145(A328358(n))`
-/

namespace A038381.P13044707736957679805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038382 n + (A038385 n - A235145 (A328358 n).toNat)

end

end A038381.P13044707736957679805

/-! ## A038381.P10263917732322923094

`A038385(n*(C(n, 9)+1))+A038382(n)`
-/

namespace A038381.P10263917732322923094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038385 (n * (Nat.choose n 9 + 1)) + A038382 n

end

end A038381.P10263917732322923094

/-! ## A038381.P9977805435740250455

`A038385(C(n, C(n, 9)+1))+A038382(n)`
-/

namespace A038381.P9977805435740250455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038385 (Nat.choose n (Nat.choose n 9 + 1)) + A038382 n

end

end A038381.P9977805435740250455

/-!
# A038382: Number of perifusenes with one internal vertex.

The programs for A038382, there is no canonical definition to state claims against.
-/

/-! ## A038382.P12911513735949579130

`A038381(n)-A038384(n)`
-/

namespace A038382.P12911513735949579130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038381 n - A038384 n

end

end A038382.P12911513735949579130

/-! ## A038382.P18170908935295981237

`A038381(n)-A038385(n*(C(n, 9)+1))`
-/

namespace A038382.P18170908935295981237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038381 n - A038385 (n * (Nat.choose n 9 + 1))

end

end A038382.P18170908935295981237

/-! ## A038382.P1452784571756959230

`A038381(n)-A038385(C(n, C(n, 9)+1))`
-/

namespace A038382.P1452784571756959230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038381 n - A038385 (Nat.choose n (Nat.choose n 9 + 1))

end

end A038382.P1452784571756959230

/-! ## A038382.P13850252145511892634

`A038381(n)-A038385(A073790(n))`
-/

namespace A038382.P13850252145511892634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038381 n - A038385 (A073790 n).toNat

end

end A038382.P13850252145511892634

/-!
# A038383: Number of perifusenes with one internal vertex.

The programs for A038383, there is no canonical definition to state claims against.
-/

/-! ## A038383.P16024273687856569128

`A059995(A241891(n)-n)`
-/

namespace A038383.P16024273687856569128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A241891 n - (n : ℤ)).toNat

end

end A038383.P16024273687856569128

/-! ## A038383.P2923779291377901268

`A059995(or(A084152(n), A097861(n)))`
-/

namespace A038383.P2923779291377901268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lor (A084152 n) (A097861 n)).toNat

end

end A038383.P2923779291377901268

/-! ## A038383.P16889675139963788471

`A059995(or(A084152(n), A333498(n)))`
-/

namespace A038383.P16889675139963788471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lor (A084152 n) (A333498 n)).toNat

end

end A038383.P16889675139963788471

/-! ## A038383.P318411811896834062

`A059995(A256486(n+1)+A241891(n))`
-/

namespace A038383.P318411811896834062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A256486 (n + 1) + A241891 n).toNat

end

end A038383.P318411811896834062

/-!
# A038384: Number of perifusenes with one internal vertex.

The programs for A038384, there is no canonical definition to state claims against.
-/

/-! ## A038384.P18127616698330383533

`A038381(n)-A038382(n)`
-/

namespace A038384.P18127616698330383533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038381 n - A038382 n

end

end A038384.P18127616698330383533

/-! ## A038384.P4813694934174283061

`A038381(n)+A038382(n)*A134824(n)`
-/

namespace A038384.P4813694934174283061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038381 n + A038382 n * A134824 n

end

end A038384.P4813694934174283061

/-! ## A038384.P16665848687399232336

`A038385(n)-A067168(A166300(n))`
-/

namespace A038384.P16665848687399232336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038385 n - A067168 ((A166300 n).toNat + 10)

end

end A038384.P16665848687399232336

/-! ## A038384.P14680451032442085621

`A038385(n)-A235145(A328358(n))`
-/

namespace A038384.P14680451032442085621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038385 n - A235145 (A328358 n).toNat

end

end A038384.P14680451032442085621

/-! ## A038384.P11565067061175939655

`and(A004770(A010552(n)), A038385(n))`
-/

namespace A038384.P11565067061175939655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004770 (A010552 n).toNat) (A038385 n)

end

end A038384.P11565067061175939655

/-!
# A038385: Number of perifusenes with one internal vertex.

The programs for A038385, there is no canonical definition to state claims against.
-/

/-! ## A038385.P6734553930488461315

`A038380(n)%A028310(A038383(n))`
-/

namespace A038385.P6734553930488461315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038380 n) (A028310 (A038383 n).toNat)

end

end A038385.P6734553930488461315

/-! ## A038385.P11379697605724815513

`A067168(A166300(n))+A038384(n)`
-/

namespace A038385.P11379697605724815513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067168 ((A166300 n).toNat + 10) + A038384 n

end

end A038385.P11379697605724815513

/-! ## A038385.P2421808912791447071

`A235145(A328358(n))+A038384(n)`
-/

namespace A038385.P2421808912791447071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A328358 n).toNat + A038384 n

end

end A038385.P2421808912791447071

/-! ## A038385.P1700433125708698764

`A038384(n)+A025443(A241462(n+1))`
-/

namespace A038385.P1700433125708698764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038384 n + A025443 (A241462 (n + 1)).toNat

end

end A038385.P1700433125708698764

/-! ## A038385.P6028269275855927141

`A038384(n)+A038379(A306752(n))-1`
-/

namespace A038385.P6028269275855927141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038384 n + (A038379 (A306752 n).toNat - 1)

end

end A038385.P6028269275855927141

/-!
# A038387: a(n) is the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and a(n) are both integers.

The programs for A038387, the canonical program `A038387.P4721270746372343696` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038387 has offset 1).

The definition of A038387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038387.P17794330451943491074

`gcd(n+1, A379705(n+1))`
-/

namespace A038387.P17794330451943491074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A379705 (n + 1))

end

end A038387.P17794330451943491074

namespace A038387

/-- `gcd(n+1, A379705(n+1))` -/
def P17794330451943491074.Spec : Prop :=
  ∀ n, (P17794330451943491074.a n : ℤ) = A038387 (n + 1)

end A038387

/-! ## A038387.P6375556966485192176

`A038388(n+1)²/(n+1)`
-/

namespace A038387.P6375556966485192176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038388 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A038387.P6375556966485192176

namespace A038387

/-- `A038388(n+1)²/(n+1)` -/
def P6375556966485192176.Spec : Prop :=
  ∀ n, P6375556966485192176.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P9962552851575608554

`2*A038389(n+1)-(n+1)`
-/

namespace A038387.P9962552851575608554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038389 (n + 1) - (n + 1 : ℤ)

end

end A038387.P9962552851575608554

namespace A038387

/-- `2*A038389(n+1)-(n+1)` -/
def P9962552851575608554.Spec : Prop :=
  ∀ n, P9962552851575608554.a n = A038387 (n + 1)

end A038387

/-! ## A038387.P13241547407184514532

`(n+1)/A008833(lcm(2, n+1)/2)`
-/

namespace A038387.P13241547407184514532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A038387.P13241547407184514532

namespace A038387

/-- `(n+1)/A008833(lcm(2, n+1)/2)` -/
def P13241547407184514532.Spec : Prop :=
  ∀ n, P13241547407184514532.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P3576722976851356000

`A000034(n)*A364900(n)`
-/

namespace A038387.P3576722976851356000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A364900 n

end

end A038387.P3576722976851356000

namespace A038387

/-- `A000034(n)*A364900(n)` -/
def P3576722976851356000.Spec : Prop :=
  ∀ n, P3576722976851356000.a n = A038387 (n + 1)

end A038387

/-! ## A038387.P542578952788611085

`(n+1)/A008833(A062828(n+1))`
-/

namespace A038387.P542578952788611085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (A062828 (n + 1)).toNat : ℚ)

end

end A038387.P542578952788611085

namespace A038387

/-- `(n+1)/A008833(A062828(n+1))` -/
def P542578952788611085.Spec : Prop :=
  ∀ n, P542578952788611085.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P3128566396191779097

`(n+1)/A008833(A186646(n+1))`
-/

namespace A038387.P3128566396191779097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (A186646 (n + 1)).toNat : ℚ)

end

end A038387.P3128566396191779097

namespace A038387

/-- `(n+1)/A008833(A186646(n+1))` -/
def P3128566396191779097.Spec : Prop :=
  ∀ n, P3128566396191779097.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P11339898466482563675

`gcd((2*A055491(n+1))², A066990(n+1))`
-/

namespace A038387.P11339898466482563675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * A055491 (n + 1)) ^ 2) (A066990 (n + 1))

end

end A038387.P11339898466482563675

namespace A038387

/-- `gcd((2*A055491(n+1))², A066990(n+1))` -/
def P11339898466482563675.Spec : Prop :=
  ∀ n, (P11339898466482563675.a n : ℤ) = A038387 (n + 1)

end A038387

/-! ## A038387.P4721270746372343696

`gcd(2*A007913(2*(n+1)), A000578(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038387

/-- `gcd(2*A007913(2*(n+1)), A000578(n+1))` -/
def P4721270746372343696.Spec : Prop :=
  ∀ n, (P4721270746372343696.a n : ℤ) = A038387 (n + 1)

theorem P4721270746372343696.correct : P4721270746372343696.Spec := by
  intro n
  simp only [A038387, Nat.add_sub_cancel]

end A038387

/-! ## A038387.P17473354974312521500

`A038388(A038389(n+1)+A038389(n+1)-(n+1))`
-/

namespace A038387.P17473354974312521500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A038389 (n + 1) + (A038389 (n + 1) - (n + 1 : ℤ))).toNat

end

end A038387.P17473354974312521500

namespace A038387

/-- `A038388(A038389(n+1)+A038389(n+1)-(n+1))` -/
def P17473354974312521500.Spec : Prop :=
  ∀ n, P17473354974312521500.a n = A038387 (n + 1)

end A038387

/-! ## A038387.P10997606252665368045

`A000034(n)*A007913(A000034(n)*A007913(n+1))`
-/

namespace A038387.P10997606252665368045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A007913 (A000034 n * A007913 (n + 1)).toNat

end

end A038387.P10997606252665368045

namespace A038387

/-- `A000034(n)*A007913(A000034(n)*A007913(n+1))` -/
def P10997606252665368045.Spec : Prop :=
  ∀ n, P10997606252665368045.a n = A038387 (n + 1)

end A038387

/-! ## A038387.P11292328834473799735

`2*A007913(2*(n+1))/A010685(n+1)`
-/

namespace A038387.P11292328834473799735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A007913 (2 * (n + 1)) : ℚ) / (A010685 (n + 1) : ℚ))

end

end A038387.P11292328834473799735

namespace A038387

/-- `2*A007913(2*(n+1))/A010685(n+1)` -/
def P11292328834473799735.Spec : Prop :=
  ∀ n, P11292328834473799735.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P3205568805452146588

`A007913(n+1)*A010685(A010685(n)+A007913(n+1))`
-/

namespace A038387.P3205568805452146588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A010685 (A010685 n + A007913 (n + 1)).toNat

end

end A038387.P3205568805452146588

namespace A038387

/-- `A007913(n+1)*A010685(A010685(n)+A007913(n+1))` -/
def P3205568805452146588.Spec : Prop :=
  ∀ n, P3205568805452146588.a n = A038387 (n + 1)

end A038387

/-! ## A038387.P210325915121854573

`A007913(2*(n+1))*A177002(2*n)/2`
-/

namespace A038387.P210325915121854573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (2 * (n + 1)) * A177002 (2 * n) : ℚ) / 2

end

end A038387.P210325915121854573

namespace A038387

/-- `A007913(2*(n+1))*A177002(2*n)/2` -/
def P210325915121854573.Spec : Prop :=
  ∀ n, P210325915121854573.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P4500740149926027153

`gcd(A053143(2*n+2)/A008619(2*n), A008619(2*n))`
-/

namespace A038387.P4500740149926027153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A053143 (2 * n + 2) : ℚ) / (A008619 (2 * n) : ℚ))) (A008619 (2 * n))

end

end A038387.P4500740149926027153

namespace A038387

/-- `gcd(A053143(2*n+2)/A008619(2*n), A008619(2*n))` -/
def P4500740149926027153.Spec : Prop :=
  ∀ n, (P4500740149926027153.a n : ℤ) = A038387 (n + 1)

end A038387

/-! ## A038387.P11607862097382649856

`A007913(2*(n+1))/A302033(2*n+1)*A302033(2*n)`
-/

namespace A038387.P11607862097382649856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (2 * (n + 1)) : ℚ) / (A302033 (2 * n + 1) : ℚ) * (A302033 (2 * n) : ℚ)

end

end A038387.P11607862097382649856

namespace A038387

/-- `A007913(2*(n+1))/A302033(2*n+1)*A302033(2*n)` -/
def P11607862097382649856.Spec : Prop :=
  ∀ n, P11607862097382649856.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P9192627212623599160

`A007913(2*n+2)/A014695(2*n+1)*A014695(2*n)`
-/

namespace A038387.P9192627212623599160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (2 * n + 2) : ℚ) / (A014695 (2 * n + 1) : ℚ) * (A014695 (2 * n) : ℚ)

end

end A038387.P9192627212623599160

namespace A038387

/-- `A007913(2*n+2)/A014695(2*n+1)*A014695(2*n)` -/
def P9192627212623599160.Spec : Prop :=
  ∀ n, P9192627212623599160.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P6181042267172569384

`A007913(n+1)/A302138(n+1)*A302138(A302138(n+1))`
-/

namespace A038387.P6181042267172569384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A302138 (n + 1) : ℚ) * (A302138 (A302138 (n + 1)).toNat : ℚ)

end

end A038387.P6181042267172569384

namespace A038387

/-- `A007913(n+1)/A302138(n+1)*A302138(A302138(n+1))` -/
def P6181042267172569384.Spec : Prop :=
  ∀ n, P6181042267172569384.a n = (A038387 (n + 1) : ℚ)

end A038387

/-! ## A038387.P13630414320950179612

`A007913(n+1)*A010685(n*A007913(n+1))`
-/

namespace A038387.P13630414320950179612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A010685 ((n : ℤ) * A007913 (n + 1)).toNat

end

end A038387.P13630414320950179612

namespace A038387

/-- `A007913(n+1)*A010685(n*A007913(n+1))` -/
def P13630414320950179612.Spec : Prop :=
  ∀ n, P13630414320950179612.a n = A038387 (n + 1)

end A038387

/-! ## A038387.P8880883597100618794

`A038388(n+1)/A038388(A129202(n))*A038388(n+1)`
-/

namespace A038387.P8880883597100618794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038388 (n + 1) : ℚ) / (A038388 (A129202 n).toNat : ℚ) * (A038388 (n + 1) : ℚ)

end

end A038387.P8880883597100618794

namespace A038387

/-- `A038388(n+1)/A038388(A129202(n))*A038388(n+1)` -/
def P8880883597100618794.Spec : Prop :=
  ∀ n, P8880883597100618794.a n = (A038387 (n + 1) : ℚ)

end A038387

/-!
# A038388: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives G values.

The programs for A038388, the canonical program `A038388.P12225938423161256159` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038388 has offset 1).

The definition of A038388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038388.P3269595645767900949

`gcd(n+1, A242219(n+1))`
-/

namespace A038388.P3269595645767900949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A242219 (n + 1))

end

end A038388.P3269595645767900949

namespace A038388

/-- `gcd(n+1, A242219(n+1))` -/
def P3269595645767900949.Spec : Prop :=
  ∀ n, (P3269595645767900949.a n : ℤ) = A038388 (n + 1)

end A038388

/-! ## A038388.P12225938423161256159

`sqrt((n+1)*A038387(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038388

/-- `sqrt((n+1)*A038387(n+1))` -/
def P12225938423161256159.Spec : Prop :=
  ∀ n, P12225938423161256159.a n = (A038388 (n + 1) : ℝ)

end A038388

/-! ## A038388.P15158832344442816414

`(n+1)/A000188(A026741(n+1))`
-/

namespace A038388.P15158832344442816414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (A026741 (n + 1)).toNat : ℚ)

end

end A038388.P15158832344442816414

namespace A038388

/-- `(n+1)/A000188(A026741(n+1))` -/
def P15158832344442816414.Spec : Prop :=
  ∀ n, P15158832344442816414.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P3392331338825114061

`gcd(2, A350388(n+1))*A019554(n+1)`
-/

namespace A038388.P3392331338825114061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A350388 (n + 1)) : ℤ) * A019554 (n + 1)

end

end A038388.P3392331338825114061

namespace A038388

/-- `gcd(2, A350388(n+1))*A019554(n+1)` -/
def P3392331338825114061.Spec : Prop :=
  ∀ n, P3392331338825114061.a n = A038388 (n + 1)

end A038388

/-! ## A038388.P14096839284888196469

`(n+1)/A000196((n+1)/A038387(n+1))`
-/

namespace A038388.P14096839284888196469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038387 (n + 1) : ℚ))).toNat : ℚ)

end

end A038388.P14096839284888196469

namespace A038388

/-- `(n+1)/A000196((n+1)/A038387(n+1))` -/
def P14096839284888196469.Spec : Prop :=
  ∀ n, P14096839284888196469.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P7185412969601778625

`A000188(2*A003557(n+1))*A007947(n+1)`
-/

namespace A038388.P7185412969601778625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A003557 (n + 1)).toNat * A007947 (n + 1)

end

end A038388.P7185412969601778625

namespace A038388

/-- `A000188(2*A003557(n+1))*A007947(n+1)` -/
def P7185412969601778625.Spec : Prop :=
  ∀ n, P7185412969601778625.a n = A038388 (n + 1)

end A038388

/-! ## A038388.P4687595116812533798

`A019554(n+1)*A336643(2*A336643(n+1))`
-/

namespace A038388.P4687595116812533798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A336643 (2 * A336643 (n + 1)).toNat

end

end A038388.P4687595116812533798

namespace A038388

/-- `A019554(n+1)*A336643(2*A336643(n+1))` -/
def P4687595116812533798.Spec : Prop :=
  ∀ n, P4687595116812533798.a n = A038388 (n + 1)

end A038388

/-! ## A038388.P10894251200947441626

`A019554(n+1)*A105931(A105931(n+1)+n)`
-/

namespace A038388.P10894251200947441626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A105931 (A105931 (n + 1) + (n : ℤ)).toNat

end

end A038388.P10894251200947441626

namespace A038388

/-- `A019554(n+1)*A105931(A105931(n+1)+n)` -/
def P10894251200947441626.Spec : Prop :=
  ∀ n, P10894251200947441626.a n = A038388 (n + 1)

end A038388

/-! ## A038388.P18075767846680194289

`A019554((n+1)*(n%2+1))`
-/

namespace A038388.P18075767846680194289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 ((n + 1) * (n % 2 + 1))

end

end A038388.P18075767846680194289

namespace A038388

/-- `A019554((n+1)*(n%2+1))` -/
def P18075767846680194289.Spec : Prop :=
  ∀ n, P18075767846680194289.a n = A038388 (n + 1)

end A038388

/-! ## A038388.P10772830051657678430

`A019554((char[2*n+1]+1)*(n+1))`
-/

namespace A038388.P10772830051657678430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1))

end

end A038388.P10772830051657678430

namespace A038388

/-- `A019554((char[2*n+1]+1)*(n+1))` -/
def P10772830051657678430.Spec : Prop :=
  ∀ n, P10772830051657678430.a n = A038388 (n + 1)

end A038388

/-! ## A038388.P16260554730538535220

`A019554(2*(n+1))/gcd(2, n)`
-/

namespace A038388.P16260554730538535220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A038388.P16260554730538535220

namespace A038388

/-- `A019554(2*(n+1))/gcd(2, n)` -/
def P16260554730538535220.Spec : Prop :=
  ∀ n, P16260554730538535220.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P3916033402439909511

`(n+1)/A000188(A064680(n+1))`
-/

namespace A038388.P3916033402439909511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (A064680 (n + 1)).toNat : ℚ)

end

end A038388.P3916033402439909511

namespace A038388

/-- `(n+1)/A000188(A064680(n+1))` -/
def P3916033402439909511.Spec : Prop :=
  ∀ n, P3916033402439909511.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P6289908891487445844

`A019554(2*(n+1))/A000034(n+1)`
-/

namespace A038388.P6289908891487445844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A038388.P6289908891487445844

namespace A038388

/-- `A019554(2*(n+1))/A000034(n+1)` -/
def P6289908891487445844.Spec : Prop :=
  ∀ n, P6289908891487445844.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P804933862012406447

`A019554(2*(n+1))/(2-A000035(n))`
-/

namespace A038388.P804933862012406447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) / (2 - A000035 n : ℚ)

end

end A038388.P804933862012406447

namespace A038388

/-- `A019554(2*(n+1))/(2-A000035(n))` -/
def P804933862012406447.Spec : Prop :=
  ∀ n, P804933862012406447.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P8765881465830847214

`A019554(2*(n+1))/(A000035(n+1)+1)`
-/

namespace A038388.P8765881465830847214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) / (A000035 (n + 1) + 1 : ℚ)

end

end A038388.P8765881465830847214

namespace A038388

/-- `A019554(2*(n+1))/(A000035(n+1)+1)` -/
def P8765881465830847214.Spec : Prop :=
  ∀ n, P8765881465830847214.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P5396308824562255214

`lcm(A019554(2*(n+1)), A019554(n+2))/A019554(n+2)`
-/

namespace A038388.P5396308824562255214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A019554 (2 * (n + 1))) (A019554 (n + 2)) : ℚ) / (A019554 (n + 2) : ℚ)

end

end A038388.P5396308824562255214

namespace A038388

/-- `lcm(A019554(2*(n+1)), A019554(n+2))/A019554(n+2)` -/
def P5396308824562255214.Spec : Prop :=
  ∀ n, P5396308824562255214.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P15224985697349112

`A019554(2*(n+1))/(A186646(2*(n+1))-A283971(2*n))`
-/

namespace A038388.P15224985697349112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * (n + 1)) : ℚ) / (A186646 (2 * (n + 1)) - A283971 (2 * n) : ℚ)

end

end A038388.P15224985697349112

namespace A038388

/-- `A019554(2*(n+1))/(A186646(2*(n+1))-A283971(2*n))` -/
def P15224985697349112.Spec : Prop :=
  ∀ n, P15224985697349112.a n = (A038388 (n + 1) : ℚ)

end A038388

/-! ## A038388.P11338929744234326339

`gcd(A000188(2*(n+1))*A007913(2*(n+1)), A000578(n+1))`
-/

namespace A038388.P11338929744234326339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (2 * (n + 1)) * A007913 (2 * (n + 1))) (A000578 (n + 1))

end

end A038388.P11338929744234326339

namespace A038388

/-- `gcd(A000188(2*(n+1))*A007913(2*(n+1)), A000578(n+1))` -/
def P11338929744234326339.Spec : Prop :=
  ∀ n, (P11338929744234326339.a n : ℤ) = A038388 (n + 1)

end A038388

/-! ## A038388.P7518669982922935254

`gcd(A019555(2*A355264(n+1)), A355264(n+1))`
-/

namespace A038388.P7518669982922935254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019555 (2 * A355264 (n + 1)).toNat) (A355264 (n + 1))

end

end A038388.P7518669982922935254

namespace A038388

/-- `gcd(A019555(2*A355264(n+1)), A355264(n+1))` -/
def P7518669982922935254.Spec : Prop :=
  ∀ n, (P7518669982922935254.a n : ℤ) = A038388 (n + 1)

end A038388

/-! ## A038388.P2105846040081093025

`A000196((n+1)*A038387(n+1))`
-/

namespace A038388.P2105846040081093025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1 : ℤ) * A038387 (n + 1)).toNat

end

end A038388.P2105846040081093025

namespace A038388

/-- `A000196((n+1)*A038387(n+1))` -/
def P2105846040081093025.Spec : Prop :=
  ∀ n, P2105846040081093025.a n = A038388 (n + 1)

end A038388

/-!
# A038389: Let f(n) be the smallest number such that the arithmetic mean (A) and geometric mean (G) of n and f(n) are both integers; sequence gives A values.

The programs for A038389, the canonical program `A038389.P11327127064887863338` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038389 has offset 1).

The definition of A038389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038389.P11327127064887863338

`round((A038387(n+1)+n)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038389

/-- `round((A038387(n+1)+n)/2)` -/
def P11327127064887863338.Spec : Prop :=
  ∀ n, P11327127064887863338.a n = A038389 (n + 1)

theorem P11327127064887863338.correct : P11327127064887863338.Spec := by
  intro n
  simp only [A038389, Nat.add_sub_cancel]

end A038389

/-! ## A038389.P13942125212677419470

`A014682(A038387(n+1)+n+1)`
-/

namespace A038389.P13942125212677419470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A038387 (n + 1) + (n + 1 : ℤ)).toNat

end

end A038389.P13942125212677419470

namespace A038389

/-- `A014682(A038387(n+1)+n+1)` -/
def P13942125212677419470.Spec : Prop :=
  ∀ n, P13942125212677419470.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P2359928824030757129

`n+1-A004526(n+1-A038387(n+1))`
-/

namespace A038389.P2359928824030757129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004526 ((n + 1 : ℤ) - A038387 (n + 1)).toNat

end

end A038389.P2359928824030757129

namespace A038389

/-- `n+1-A004526(n+1-A038387(n+1))` -/
def P2359928824030757129.Spec : Prop :=
  ∀ n, P2359928824030757129.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P8338817082971334395

`A008619(A038387(n+1))+A004526(n)`
-/

namespace A038389.P8338817082971334395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A038387 (n + 1)).toNat + A004526 n

end

end A038389.P8338817082971334395

namespace A038389

/-- `A008619(A038387(n+1))+A004526(n)` -/
def P8338817082971334395.Spec : Prop :=
  ∀ n, P8338817082971334395.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P9162393923038411386

`A110654(A038387(n+1))+A110654(n)`
-/

namespace A038389.P9162393923038411386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A038387 (n + 1)).toNat + A110654 n

end

end A038389.P9162393923038411386

namespace A038389

/-- `A110654(A038387(n+1))+A110654(n)` -/
def P9162393923038411386.Spec : Prop :=
  ∀ n, P9162393923038411386.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P5668109727829149090

`A084964(A038387(n+1))+A084964(n)-1`
-/

namespace A038389.P5668109727829149090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A038387 (n + 1)).toNat + (A084964 n - 1)

end

end A038389.P5668109727829149090

namespace A038389

/-- `A084964(A038387(n+1))+A084964(n)-1` -/
def P5668109727829149090.Spec : Prop :=
  ∀ n, P5668109727829149090.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P14656997556307683695

`A008619((n+1)/A008833(lcm(2, n+1)/2))+A004526(n)`
-/

namespace A038389.P14656997556307683695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat : ℚ))).toNat + A004526 n

end

end A038389.P14656997556307683695

namespace A038389

/-- `A008619((n+1)/A008833(lcm(2, n+1)/2))+A004526(n)` -/
def P14656997556307683695.Spec : Prop :=
  ∀ n, P14656997556307683695.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P17758771732987183912

`A008619(2*A007913(2*(n+1))/A010685(n+1))+A004526(n)`
-/

namespace A038389.P17758771732987183912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (2 * ((A007913 (2 * (n + 1)) : ℚ) / (A010685 (n + 1) : ℚ)))).toNat + A004526 n

end

end A038389.P17758771732987183912

namespace A038389

/-- `A008619(2*A007913(2*(n+1))/A010685(n+1))+A004526(n)` -/
def P17758771732987183912.Spec : Prop :=
  ∀ n, P17758771732987183912.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P7267090565779761751

`A008619(A038387(n+1)+n)`
-/

namespace A038389.P7267090565779761751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A038387 (n + 1) + (n : ℤ)).toNat

end

end A038389.P7267090565779761751

namespace A038389

/-- `A008619(A038387(n+1)+n)` -/
def P7267090565779761751.Spec : Prop :=
  ∀ n, P7267090565779761751.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P7936518965818305801

`A110654(A038387(n+1)+n)`
-/

namespace A038389.P7936518965818305801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A038387 (n + 1) + (n : ℤ)).toNat

end

end A038389.P7936518965818305801

namespace A038389

/-- `A110654(A038387(n+1)+n)` -/
def P7936518965818305801.Spec : Prop :=
  ∀ n, P7936518965818305801.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P17322301895153154163

`A004526(A038387(n+1)+1+n)`
-/

namespace A038389.P17322301895153154163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038387 (n + 1) + 1 + (n : ℤ)).toNat

end

end A038389.P17322301895153154163

namespace A038389

/-- `A004526(A038387(n+1)+1+n)` -/
def P17322301895153154163.Spec : Prop :=
  ∀ n, P17322301895153154163.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P18111416792230072090

`A025480(A038387(n+1)+1+n)`
-/

namespace A038389.P18111416792230072090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A038387 (n + 1) + 1 + (n : ℤ)).toNat

end

end A038389.P18111416792230072090

namespace A038389

/-- `A025480(A038387(n+1)+1+n)` -/
def P18111416792230072090.Spec : Prop :=
  ∀ n, P18111416792230072090.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P2958642710676910605

`A084964(A038387(n+1)+n)+1`
-/

namespace A038389.P2958642710676910605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A038387 (n + 1) + (n : ℤ)).toNat + 1

end

end A038389.P2958642710676910605

namespace A038389

/-- `A084964(A038387(n+1)+n)+1` -/
def P2958642710676910605.Spec : Prop :=
  ∀ n, P2958642710676910605.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P4990541378696855727

`A211316(A038387(n+1)+1+n)`
-/

namespace A038389.P4990541378696855727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (A038387 (n + 1) + 1 + (n : ℤ)).toNat

end

end A038389.P4990541378696855727

namespace A038389

/-- `A211316(A038387(n+1)+1+n)` -/
def P4990541378696855727.Spec : Prop :=
  ∀ n, P4990541378696855727.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P10925025468343708085

`A110514(A038387(n+1)-1+n)`
-/

namespace A038389.P10925025468343708085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A038387 (n + 1) - 1 + (n : ℤ)).toNat

end

end A038389.P10925025468343708085

namespace A038389

/-- `A110514(A038387(n+1)-1+n)` -/
def P10925025468343708085.Spec : Prop :=
  ∀ n, P10925025468343708085.a n = A038389 (n + 1)

end A038389

/-! ## A038389.P9169843675377496318

`A110654(A038388(n+1)²/(n+1)+n)`
-/

namespace A038389.P9169843675377496318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A038388 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ) + (n : ℚ))).toNat

end

end A038389.P9169843675377496318

namespace A038389

/-- `A110654(A038388(n+1)²/(n+1)+n)` -/
def P9169843675377496318.Spec : Prop :=
  ∀ n, P9169843675377496318.a n = A038389 (n + 1)

end A038389

/-!
# A038390: Bisection of A028289.

The programs for A038390, the canonical program `A038390.P17392846748677909356` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038390 has offset 0).

The definition of A038390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038390.P17392846748677909356

`∑[C(A004523(n)+2, 2)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038390

/-- `∑[C(A004523(n)+2, 2)]` -/
def P17392846748677909356.Spec : Prop :=
  ∀ n, (P17392846748677909356.a n : ℤ) = A038390 n

theorem P17392846748677909356.correct : P17392846748677909356.Spec := by
  intro n
  simp only [A038390]

end A038390

/-! ## A038390.P8604951054448551492

`∑[A000217(∑[abs(1-n%3)])]`
-/

namespace A038390.P8604951054448551492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n % 3 : ℕ) : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P8604951054448551492

namespace A038390

/-- `∑[A000217(∑[abs(1-n%3)])]` -/
def P8604951054448551492.Spec : Prop :=
  ∀ n, P8604951054448551492.a n = A038390 n

end A038390

/-! ## A038390.P9422154382434911603

`A008822(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A038390.P9422154382434911603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A008822 n + a (n - 3)

end

end A038390.P9422154382434911603

namespace A038390

/-- `A008822(n)+a(n-3)` -/
def P9422154382434911603.Spec : Prop :=
  ∀ n, P9422154382434911603.a n = A038390 n

end A038390

/-! ## A038390.P2749108707612763998

`∑[A000217(n+1-ceil(n/3))]`
-/

namespace A038390.P2749108707612763998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1 : ℤ) - ⌈(n : ℚ) / 3⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P2749108707612763998

namespace A038390

/-- `∑[A000217(n+1-ceil(n/3))]` -/
def P2749108707612763998.Spec : Prop :=
  ∀ n, P2749108707612763998.a n = A038390 n

end A038390

/-! ## A038390.P2959029452967814166

`∑[C(A032793(n+1)-(n-1), 2)]`
-/

namespace A038390.P2959029452967814166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032793 (n + 1) - ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P2959029452967814166

namespace A038390

/-- `∑[C(A032793(n+1)-(n-1), 2)]` -/
def P2959029452967814166.Spec : Prop :=
  ∀ n, (P2959029452967814166.a n : ℤ) = A038390 n

end A038390

/-! ## A038390.P15082176636815379421

`A000217(n-ceil(n/3)+1)+a(n-1)` with `a(0)=1`
-/

namespace A038390.P15082176636815379421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000217 ((n : ℤ) - ⌈(n : ℚ) / 3⌉ + 1).toNat + a (n - 1)

end

end A038390.P15082176636815379421

namespace A038390

/-- `A000217(n-ceil(n/3)+1)+a(n-1)` -/
def P15082176636815379421.Spec : Prop :=
  ∀ n, P15082176636815379421.a n = A038390 n

end A038390

/-! ## A038390.P4933760643284343544

`∑[A161680(A004396(n+1)+1)]`
-/

namespace A038390.P4933760643284343544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004396 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P4933760643284343544

namespace A038390

/-- `∑[A161680(A004396(n+1)+1)]` -/
def P4933760643284343544.Spec : Prop :=
  ∀ n, P4933760643284343544.a n = A038390 n

end A038390

/-! ## A038390.P9897674735286262104

`A092352(n+1)-Δ[A092353(n)]`
-/

namespace A038390.P9897674735286262104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092352 (n + 1) - (f1 (n + 1) - f1 n)

end

end A038390.P9897674735286262104

namespace A038390

/-- `A092352(n+1)-Δ[A092353(n)]` -/
def P9897674735286262104.Spec : Prop :=
  ∀ n, P9897674735286262104.a n = A038390 n

end A038390

/-! ## A038390.P6581088316191214778

`∑[A000124(Δ[A096777(n+1)])-1]`
-/

namespace A038390.P6581088316191214778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P6581088316191214778

namespace A038390

/-- `∑[A000124(Δ[A096777(n+1)])-1]` -/
def P6581088316191214778.Spec : Prop :=
  ∀ n, P6581088316191214778.a n = A038390 n

end A038390

/-! ## A038390.P6609051357128797663

`∑[A008805(A008611(n)+n)]`
-/

namespace A038390.P6609051357128797663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A008611 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P6609051357128797663

namespace A038390

/-- `∑[A008805(A008611(n)+n)]` -/
def P6609051357128797663.Spec : Prop :=
  ∀ n, P6609051357128797663.a n = A038390 n

end A038390

/-! ## A038390.P12357077360554256199

`∑[∑[A142150(A004773(n)+2)]]`
-/

namespace A038390.P12357077360554256199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004773 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P12357077360554256199

namespace A038390

/-- `∑[∑[A142150(A004773(n)+2)]]` -/
def P12357077360554256199.Spec : Prop :=
  ∀ n, P12357077360554256199.a n = A038390 n

end A038390

/-! ## A038390.P14510519008235947995

`∑[A130519(Δ[A030511(n+3)])]`
-/

namespace A038390.P14510519008235947995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030511 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P14510519008235947995

namespace A038390

/-- `∑[A130519(Δ[A030511(n+3)])]` -/
def P14510519008235947995.Spec : Prop :=
  ∀ n, P14510519008235947995.a n = A038390 n

end A038390

/-! ## A038390.P11808234748448651356

`∑[A008805(A004396(2*n))]`
-/

namespace A038390.P11808234748448651356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A004396 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P11808234748448651356

namespace A038390

/-- `∑[A008805(A004396(2*n))]` -/
def P11808234748448651356.Spec : Prop :=
  ∀ n, P11808234748448651356.a n = A038390 n

end A038390

/-! ## A038390.P18409301835237231186

`∑[A001972(2*A002264(2*n))]`
-/

namespace A038390.P18409301835237231186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * A002264 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P18409301835237231186

namespace A038390

/-- `∑[A001972(2*A002264(2*n))]` -/
def P18409301835237231186.Spec : Prop :=
  ∀ n, P18409301835237231186.a n = A038390 n

end A038390

/-! ## A038390.P9862044657728435181

`∑[A008795(2*A002264(2*n))]`
-/

namespace A038390.P9862044657728435181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * A002264 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P9862044657728435181

namespace A038390

/-- `∑[A008795(2*A002264(2*n))]` -/
def P9862044657728435181.Spec : Prop :=
  ∀ n, P9862044657728435181.a n = A038390 n

end A038390

/-! ## A038390.P10189850307527685856

`∑[A002378(A008620(2*n))/2]`
-/

namespace A038390.P10189850307527685856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A008620 (2 * n)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P10189850307527685856

namespace A038390

/-- `∑[A002378(A008620(2*n))/2]` -/
def P10189850307527685856.Spec : Prop :=
  ∀ n, P10189850307527685856.a n = (A038390 n : ℚ)

end A038390

/-! ## A038390.P1936114409705866620

`∑[A001399(2*n)-A008615(2*n)²]`
-/

namespace A038390.P1936114409705866620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) - A008615 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P1936114409705866620

namespace A038390

/-- `∑[A001399(2*n)-A008615(2*n)²]` -/
def P1936114409705866620.Spec : Prop :=
  ∀ n, P1936114409705866620.a n = A038390 n

end A038390

/-! ## A038390.P7719704366945675641

`A002264(n+1)+∑[A084265(A002264(2*n))]`
-/

namespace A038390.P7719704366945675641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 (A002264 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P7719704366945675641

namespace A038390

/-- `A002264(n+1)+∑[A084265(A002264(2*n))]` -/
def P7719704366945675641.Spec : Prop :=
  ∀ n, P7719704366945675641.a n = A038390 n

end A038390

/-! ## A038390.P7816613946199127386

`A028289(2*n)`
-/

namespace A038390.P7816613946199127386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028289 (2 * n)

end

end A038390.P7816613946199127386

namespace A038390

/-- `A028289(2*n)` -/
def P7816613946199127386.Spec : Prop :=
  ∀ n, P7816613946199127386.a n = A038390 n

end A038390

/-! ## A038390.P10469893536563879977

`∑[∑[A087508(2*n+1)]]`
-/

namespace A038390.P10469893536563879977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P10469893536563879977

namespace A038390

/-- `∑[∑[A087508(2*n+1)]]` -/
def P10469893536563879977.Spec : Prop :=
  ∀ n, P10469893536563879977.a n = A038390 n

end A038390

/-!
# A038391: Expansion of (x^3+2*x+1) / ((x-1)^4*(x^2+x+1)^2).

The programs for A038391, the canonical program `A038391.P2787240252700195184` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038391 has offset 0).

The definition of A038391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` (program `A038391.P2787240252700195184`, by `A038391.P2787240252700195184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038391.P2787240252700195184

`ogf((1+2x+x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038391

/-- `ogf((1+2x+x^3)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P2787240252700195184.Spec : Prop :=
  ∀ n, P2787240252700195184.a n = A038391 n

theorem P2787240252700195184.correct : P2787240252700195184.Spec := by
  intro n
  simp only [A038391]

end A038391

/-! ## A038391.P1858464290229097486

`∑[C(round(2*(n/3+1)), 2)]`
-/

namespace A038391.P1858464290229097486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3 + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P1858464290229097486

namespace A038391

/-- `∑[C(round(2*(n/3+1)), 2)]` -/
def P1858464290229097486.Spec : Prop :=
  ∀ n, (P1858464290229097486.a n : ℤ) = A038391 n

end A038391

/-! ## A038391.P10543296591665398680

`∑[∑[round((lcm(3, n+1)-n)/3)]]`
-/

namespace A038391.P10543296591665398680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm 3 (n + 1) : ℤ) - (n : ℤ) : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P10543296591665398680

namespace A038391

/-- `∑[∑[round((lcm(3, n+1)-n)/3)]]` -/
def P10543296591665398680.Spec : Prop :=
  ∀ n, P10543296591665398680.a n = A038391 n

end A038391

/-! ## A038391.P12439224055702486187

`∑[∑[A117909(n)]]`
-/

namespace A038391.P12439224055702486187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P12439224055702486187

namespace A038391

/-- `∑[∑[A117909(n)]]` -/
def P12439224055702486187.Spec : Prop :=
  ∀ n, P12439224055702486187.a n = A038391 n

end A038391

/-! ## A038391.P12337059006076579583

`∑[A000217(∑[(n+1)²%3])]`
-/

namespace A038391.P12337059006076579583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P12337059006076579583

namespace A038391

/-- `∑[A000217(∑[(n+1)²%3])]` -/
def P12337059006076579583.Spec : Prop :=
  ∀ n, P12337059006076579583.a n = A038391 n

end A038391

/-! ## A038391.P5838506289219075982

`∑[A000217(round(2*n/3)+1)]`
-/

namespace A038391.P5838506289219075982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P5838506289219075982

namespace A038391

/-- `∑[A000217(round(2*n/3)+1)]` -/
def P5838506289219075982.Spec : Prop :=
  ∀ n, P5838506289219075982.a n = A038391 n

end A038391

/-! ## A038391.P3258036728162143417

`∑[A161680(A004396(n)+2)]`
-/

namespace A038391.P3258036728162143417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004396 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P3258036728162143417

namespace A038391

/-- `∑[A161680(A004396(n)+2)]` -/
def P3258036728162143417.Spec : Prop :=
  ∀ n, P3258036728162143417.a n = A038391 n

end A038391

/-! ## A038391.P10871857009988364402

`∑[A008805(2*A004396(n))]`
-/

namespace A038391.P10871857009988364402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (2 * A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P10871857009988364402

namespace A038391

/-- `∑[A008805(2*A004396(n))]` -/
def P10871857009988364402.Spec : Prop :=
  ∀ n, P10871857009988364402.a n = A038391 n

end A038391

/-! ## A038391.P15277493461321702322

`∑[∑[A166514(A131452(n)+2)]]`
-/

namespace A038391.P15277493461321702322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A131452 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P15277493461321702322

namespace A038391

/-- `∑[∑[A166514(A131452(n)+2)]]` -/
def P15277493461321702322.Spec : Prop :=
  ∀ n, P15277493461321702322.a n = A038391 n

end A038391

/-! ## A038391.P17076757894452321206

`∑[A008805(A112689(2*n)+n)]`
-/

namespace A038391.P17076757894452321206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A112689 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P17076757894452321206

namespace A038391

/-- `∑[A008805(A112689(2*n)+n)]` -/
def P17076757894452321206.Spec : Prop :=
  ∀ n, P17076757894452321206.a n = A038391 n

end A038391

/-! ## A038391.P275983060658020144

`A028289(Δ[n²])`
-/

namespace A038391.P275983060658020144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038391.P275983060658020144

namespace A038391

/-- `A028289(Δ[n²])` -/
def P275983060658020144.Spec : Prop :=
  ∀ n, P275983060658020144.a n = A038391 n

end A038391

/-! ## A038391.P11530282900421952764

`A393554(2*n+1)+A014126(n)`
-/

namespace A038391.P11530282900421952764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393554 (2 * n + 1) + A014126 n

end

end A038391.P11530282900421952764

namespace A038391

/-- `A393554(2*n+1)+A014126(n)` -/
def P11530282900421952764.Spec : Prop :=
  ∀ n, P11530282900421952764.a n = A038391 n

end A038391

/-! ## A038391.P14589201632381844827

`∑[A001972(2*A002264(2*n+1))]`
-/

namespace A038391.P14589201632381844827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * A002264 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P14589201632381844827

namespace A038391

/-- `∑[A001972(2*A002264(2*n+1))]` -/
def P14589201632381844827.Spec : Prop :=
  ∀ n, P14589201632381844827.a n = A038391 n

end A038391

/-! ## A038391.P6376827363506205128

`∑[A008795(2*A002264(2*n+1))]`
-/

namespace A038391.P6376827363506205128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (2 * A002264 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P6376827363506205128

namespace A038391

/-- `∑[A008795(2*A002264(2*n+1))]` -/
def P6376827363506205128.Spec : Prop :=
  ∀ n, P6376827363506205128.a n = A038391 n

end A038391

/-! ## A038391.P8772550114397956559

`∑[A002378(A008620(2*n+1))/2]`
-/

namespace A038391.P8772550114397956559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A008620 (2 * n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P8772550114397956559

namespace A038391

/-- `∑[A002378(A008620(2*n+1))/2]` -/
def P8772550114397956559.Spec : Prop :=
  ∀ n, P8772550114397956559.a n = (A038391 n : ℚ)

end A038391

/-! ## A038391.P7435138766050323623

`∑[A008805(A151898(2*n+1)+n)]`
-/

namespace A038391.P7435138766050323623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A151898 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P7435138766050323623

namespace A038391

/-- `∑[A008805(A151898(2*n+1)+n)]` -/
def P7435138766050323623.Spec : Prop :=
  ∀ n, P7435138766050323623.a n = A038391 n

end A038391

/-! ## A038391.P12889211451103825338

`∑[A008620(n)*A194960(2*n+1)]`
-/

namespace A038391.P12889211451103825338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A194960 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P12889211451103825338

namespace A038391

/-- `∑[A008620(n)*A194960(2*n+1)]` -/
def P12889211451103825338.Spec : Prop :=
  ∀ n, P12889211451103825338.a n = A038391 n

end A038391

/-! ## A038391.P16065974576402948590

`A307872(2*n+1)+A000212(n+2)`
-/

namespace A038391.P16065974576402948590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (2 * n + 1) + A000212 (n + 2)

end

end A038391.P16065974576402948590

namespace A038391

/-- `A307872(2*n+1)+A000212(n+2)` -/
def P16065974576402948590.Spec : Prop :=
  ∀ n, P16065974576402948590.a n = A038391 n

end A038391

/-! ## A038391.P13327152405976202588

`A393554(2*n+1)+A001400(2*n)`
-/

namespace A038391.P13327152405976202588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393554 (2 * n + 1) + A001400 (2 * n)

end

end A038391.P13327152405976202588

namespace A038391

/-- `A393554(2*n+1)+A001400(2*n)` -/
def P13327152405976202588.Spec : Prop :=
  ∀ n, P13327152405976202588.a n = A038391 n

end A038391

/-! ## A038391.P6871521445631491520

`A213042(2*n+1)+A213042(2*n)`
-/

namespace A038391.P6871521445631491520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213042 (2 * n + 1) + A213042 (2 * n)

end

end A038391.P6871521445631491520

namespace A038391

/-- `A213042(2*n+1)+A213042(2*n)` -/
def P6871521445631491520.Spec : Prop :=
  ∀ n, P6871521445631491520.a n = A038391 n

end A038391

/-!
# A038392: Number of mono-4-polyhexes with n cells.

The programs for A038392, there is no canonical definition to state claims against.
-/

/-! ## A038392.P12719855885943615383

`or(char[n²], A044045(n))`
-/

namespace A038392.P12719855885943615383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A044045 n)

end

end A038392.P12719855885943615383

/-! ## A038392.P10489113926293101453

`A044045(floor(acot(n)+n))`
-/

namespace A038392.P10489113926293101453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A038392.P10489113926293101453

/-! ## A038392.P12214068069132453165

`A044045(n^floor(atan(n)))`
-/

namespace A038392.P12214068069132453165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A038392.P12214068069132453165

/-! ## A038392.P9378201703059616731

`A044045(A028310(n))`
-/

namespace A038392.P9378201703059616731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (A028310 n).toNat

end

end A038392.P9378201703059616731

/-! ## A038392.P8958389568289583458

`A044045(A000007(n)+n)`
-/

namespace A038392.P8958389568289583458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (A000007 n + (n : ℤ)).toNat

end

end A038392.P8958389568289583458

/-! ## A038392.P5166618395773727024

`A044045(A004277(n)-n)`
-/

namespace A038392.P5166618395773727024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (A004277 n - (n : ℤ)).toNat

end

end A038392.P5166618395773727024

/-! ## A038392.P17556819233235922486

`A044045(gcd(n, A004277(n)))`
-/

namespace A038392.P17556819233235922486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (Int.gcd (n : ℤ) (A004277 n))

end

end A038392.P17556819233235922486

/-! ## A038392.P2991234198292196599

`A044045(or(n, A000007(n)))`
-/

namespace A038392.P2991234198292196599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A038392.P2991234198292196599

/-! ## A038392.P8187057241069303962

`A044045(xor(n, A000007(n)))`
-/

namespace A038392.P8187057241069303962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A038392.P8187057241069303962

/-! ## A038392.P8480934172915786481

`A044045(abs(n-A000007(n)))`
-/

namespace A038392.P8480934172915786481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 |(n : ℤ) - A000007 n|.toNat

end

end A038392.P8480934172915786481

/-! ## A038392.P10470739401080468806

`A044045(n^abs(A057428(n)))`
-/

namespace A038392.P10470739401080468806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|A057428 n| : ℤ))).toNat

end

end A038392.P10470739401080468806

/-! ## A038392.P7153436587101832316

`A044045(n)+A057428(n)+1`
-/

namespace A038392.P7153436587101832316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n + (A057428 n + 1)

end

end A038392.P7153436587101832316

/-! ## A038392.P10854835411882834477

`A044045(A004273(n)+1-n)`
-/

namespace A038392.P10854835411882834477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (A004273 n + (1 - (n : ℤ))).toNat

end

end A038392.P10854835411882834477

/-! ## A038392.P12813953688923481289

`A002212(n)-A030529(n+2)`
-/

namespace A038392.P12813953688923481289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A030529 (n + 2)

end

end A038392.P12813953688923481289

/-! ## A038392.P8211551819093670112

`A044045(1-(n-A004273(n)))`
-/

namespace A038392.P8211551819093670112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A038392.P8211551819093670112

/-! ## A038392.P7205510253373227317

`A044045(A097331(2*n)+n)`
-/

namespace A038392.P7205510253373227317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (A097331 (2 * n) + (n : ℤ)).toNat

end

end A038392.P7205510253373227317

/-! ## A038392.P2874552112477079559

`A044045(n)+A008683((n+1)²)`
-/

namespace A038392.P2874552112477079559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n + A008683 ((n + 1) ^ 2)

end

end A038392.P2874552112477079559

/-! ## A038392.P16744805328555535178

`A044045(char[A189551(n+1)]+n)`
-/

namespace A038392.P16744805328555535178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189551 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A038392.P16744805328555535178

/-! ## A038392.P2774241881922200972

`A097331(A004277(n))+A044045(n)`
-/

namespace A038392.P2774241881922200972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A004277 n).toNat + A044045 n

end

end A038392.P2774241881922200972

/-! ## A038392.P6349000574478113720

`A046697(n+1)-A044046(n)`
-/

namespace A038392.P6349000574478113720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) - A044046 n

end

end A038392.P6349000574478113720

/-!
# A038393: Number of 4n-step self-avoiding closed paths on first quadrant grid, passing through origin, symmetric about line y = x.

The programs for A038393, there is no canonical definition to state claims against.
-/

/-! ## A038393.P3807007703754569406

`∑[A348365(n+1)-(n^4)%5]`
-/

namespace A038393.P3807007703754569406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348365 (n + 1) - ((n ^ 4 % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038393.P3807007703754569406

/-! ## A038393.P7772631524955068702

`A001462(A136461(n))`
-/

namespace A038393.P7772631524955068702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A136461 n).toNat

end

end A038393.P7772631524955068702

/-! ## A038393.P10504091423301619753

`A054846(A205576(n))`
-/

namespace A038393.P10504091423301619753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A205576 n).toNat

end

end A038393.P10504091423301619753

/-!
# A038394: Concatenate first n primes in reverse order.

The programs for A038394, there is no canonical definition to state claims against.
-/

/-! ## A038394.P10169416284735943266

`∑[A000040(n+1)*record[A276596(n+1)]]`
-/

namespace A038394.P10169416284735943266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038394.P10169416284735943266

/-! ## A038394.P12480495937912966094

`A066622(n+1)%A048529(A000041(n+2))`
-/

namespace A038394.P12480495937912966094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066622 (n + 1)) (A048529 (A000041 (n + 2)).toNat)

end

end A038394.P12480495937912966094

/-!
# A038395: Concatenation of the first n odd numbers in reverse order.

The programs for A038395, there is no canonical definition to state claims against.
-/

/-! ## A038395.P16190494084771766637

`∑[10^n*A000005(9^n)]`
-/

namespace A038395.P16190494084771766637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000005 (9 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038395.P16190494084771766637

/-! ## A038395.P4207268965834434581

`∑[(A001222(9^n)+1)*10^n]`
-/

namespace A038395.P4207268965834434581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (9 ^ n) + 1) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038395.P4207268965834434581

/-!
# A038396: Concatenate first n even numbers in reverse order.

The programs for A038396, there is no canonical definition to state claims against.
-/

/-! ## A038396.P11904947177682518115

`∑[2*(n+1)*record[A276596(n+1)]]`
-/

namespace A038396.P11904947177682518115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038396.P11904947177682518115

/-!
# A038399: Concatenate first n nonzero Fibonacci numbers in reverse order.

The programs for A038399, there is no canonical definition to state claims against.
-/

/-! ## A038399.P12119304063151326140

`A249604(∑[A304972(n+1)^n])`
-/

namespace A038399.P12119304063151326140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038399.P12119304063151326140

/-! ## A038399.P4600501933301867367

`A249604(n+1)*A381356(A115329(n))`
-/

namespace A038399.P4600501933301867367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249604 (n + 1) * A381356 (A115329 n).toNat

end

end A038399.P4600501933301867367

