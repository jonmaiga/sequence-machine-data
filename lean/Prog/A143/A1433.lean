import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
# A143301: Decimal expansion of the Hall-Montgomery constant.

The programs for A143301, there is no canonical definition to state claims against.
-/

/-! ## A143301.P2129601307876889813

`9-A246849(n)`
-/

namespace A143301.P2129601307876889813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A246849 n

end

end A143301.P2129601307876889813

/-!
# A143308: Triangle read by rows, A127446 * A000012, 1<=k<=n.

The programs for A143308, there is no canonical definition to state claims against.
-/

/-! ## A143308.P3324630557362881075

`∑[A010054(n)]*A135539(n+1)`
-/

namespace A143308.P3324630557362881075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A135539 (n + 1)

end

end A143308.P3324630557362881075

/-! ## A143308.P6844160071507636322

`A002024(n+1)*A135539(n+1)`
-/

namespace A143308.P6844160071507636322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A135539 (n + 1)

end

end A143308.P6844160071507636322

/-! ## A143308.P16984391371730197864

`(A003056(n)+1)*A135539(n+1)`
-/

namespace A143308.P16984391371730197864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A135539 (n + 1)

end

end A143308.P16984391371730197864

/-! ## A143308.P14380152334933030287

`A123578(n+1)*A135539(n+1)`
-/

namespace A143308.P14380152334933030287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) * A135539 (n + 1)

end

end A143308.P14380152334933030287

/-! ## A143308.P17627025912398021366

`A002024(n+1)*A072528(A056537(n+1))`
-/

namespace A143308.P17627025912398021366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A072528 (A056537 (n + 1)).toNat

end

end A143308.P17627025912398021366

/-! ## A143308.P6307187301782846244

`A002024(n+1)*A002024(A134699(n+1))`
-/

namespace A143308.P6307187301782846244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A002024 (A134699 (n + 1)).toNat

end

end A143308.P6307187301782846244

/-!
# A143310: Triangle read by rows, A000012 * A127446, 1 <= k <= n.

The programs for A143310, the canonical program `A143310.P10710681991950682703` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143310 has offset 1).

The definition of A143310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143310.P10710681991950682703

`A002260(n+1)*A128489(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143310

/-- `A002260(n+1)*A128489(n+1)` -/
def P10710681991950682703.Spec : Prop :=
  ∀ n, P10710681991950682703.a n = A143310 (n + 1)

theorem P10710681991950682703.correct : P10710681991950682703.Spec := by
  intro n
  simp only [A143310, Nat.add_sub_cancel]

end A143310

/-! ## A143310.P12155637744532861863

`A123229(n+1)/2*A050206(n+2)`
-/

namespace A143310.P12155637744532861863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123229 (n + 1) : ℚ) / 2 * (A050206 (n + 2) : ℚ)

end

end A143310.P12155637744532861863

namespace A143310

/-- `A123229(n+1)/2*A050206(n+2)` -/
def P12155637744532861863.Spec : Prop :=
  ∀ n, P12155637744532861863.a n = (A143310 (n + 1) : ℚ)

end A143310

/-! ## A143310.P15799392393173503249

`C(A050206(n+2), 2)*A002260(n+1)`
-/

namespace A143310.P15799392393173503249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A050206 (n + 2)).toNat 2 : ℤ) * A002260 (n + 1)

end

end A143310.P15799392393173503249

namespace A143310

/-- `C(A050206(n+2), 2)*A002260(n+1)` -/
def P15799392393173503249.Spec : Prop :=
  ∀ n, P15799392393173503249.a n = A143310 (n + 1)

theorem P15799392393173503249.correct : P15799392393173503249.Spec := by
  intro n
  simp only [A143310, Nat.add_sub_cancel, A143310.P15799392393173503249.a, A143310.P10710681991950682703.a, A002260, A002260.P769748059679640451.a, A050206, A050206.P11225108751146401757.a, A128489, A128489.P16282095299326048073.a, A002262, A002262.P12129691700837801527.a, A010783, A010783.P12753590747771486457.a, A038722, A038722.P244822054879230948.a, A002024, A002024.P11700297927830783882.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143310

/-! ## A143310.P17035507296416834126

`sqrt(A133819(n+1))*C(A050206(n+2), 2)`
-/

namespace A143310.P17035507296416834126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (Nat.choose (A050206 (n + 2)).toNat 2 : ℝ)

end

end A143310.P17035507296416834126

namespace A143310

/-- `sqrt(A133819(n+1))*C(A050206(n+2), 2)` -/
def P17035507296416834126.Spec : Prop :=
  ∀ n, P17035507296416834126.a n = (A143310 (n + 1) : ℝ)

end A143310

/-! ## A143310.P9658787207382043789

`(log2(A059268(n))+1)*C(A050206(n+2), 2)`
-/

namespace A143310.P9658787207382043789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 1) * (Nat.choose (A050206 (n + 2)).toNat 2 : ℝ)

end

end A143310.P9658787207382043789

namespace A143310

/-- `(log2(A059268(n))+1)*C(A050206(n+2), 2)` -/
def P9658787207382043789.Spec : Prop :=
  ∀ n, P9658787207382043789.a n = (A143310 (n + 1) : ℝ)

end A143310

/-! ## A143310.P7849954109385592241

`(val(A175840(n), 2)+1)*C(A050206(n+2), 2)`
-/

namespace A143310.P7849954109385592241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A175840 n).toNat 2 + 1) * Nat.choose (A050206 (n + 2)).toNat 2

end

end A143310.P7849954109385592241

namespace A143310

/-- `(val(A175840(n), 2)+1)*C(A050206(n+2), 2)` -/
def P7849954109385592241.Spec : Prop :=
  ∀ n, (P7849954109385592241.a n : ℤ) = A143310 (n + 1)

end A143310

/-! ## A143310.P8721092490520028392

`(A132118(n+1)-n)*C(A050206(n+2), 2)`
-/

namespace A143310.P8721092490520028392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132118 (n + 1) - (n : ℤ)) * (Nat.choose (A050206 (n + 2)).toNat 2 : ℤ)

end

end A143310.P8721092490520028392

namespace A143310

/-- `(A132118(n+1)-n)*C(A050206(n+2), 2)` -/
def P8721092490520028392.Spec : Prop :=
  ∀ n, P8721092490520028392.a n = A143310 (n + 1)

theorem P8721092490520028392.correct : P8721092490520028392.Spec := by
  intro n
  simp only [A143310, Nat.add_sub_cancel, A143310.P8721092490520028392.a, A143310.P10710681991950682703.a, A002260, A002260.P769748059679640451.a, A050206, A050206.P11225108751146401757.a, A128489, A128489.P16282095299326048073.a, A132118, A132118.P2880824693812758185.a, A002262, A002262.P12129691700837801527.a, A010783, A010783.P12753590747771486457.a, A038722, A038722.P244822054879230948.a, A002024, A002024.P11700297927830783882.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143310

/-! ## A143310.P12660402645486487369

`(log2(A059268(n))+1)*C(A010766(n+1)+1, 2)`
-/

namespace A143310.P12660402645486487369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A059268 n : ℝ) + 1) * (Nat.choose (A010766 (n + 1) + 1).toNat 2 : ℝ)

end

end A143310.P12660402645486487369

namespace A143310

/-- `(log2(A059268(n))+1)*C(A010766(n+1)+1, 2)` -/
def P12660402645486487369.Spec : Prop :=
  ∀ n, P12660402645486487369.a n = (A143310 (n + 1) : ℝ)

end A143310

/-! ## A143310.P3373459470039255532

`(val(A018900(n+1), 2)+1)*C(A050206(n+2), 2)`
-/

namespace A143310.P3373459470039255532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A018900 (n + 1)).toNat 2 + 1) * Nat.choose (A050206 (n + 2)).toNat 2

end

end A143310.P3373459470039255532

namespace A143310

/-- `(val(A018900(n+1), 2)+1)*C(A050206(n+2), 2)` -/
def P3373459470039255532.Spec : Prop :=
  ∀ n, (P3373459470039255532.a n : ℤ) = A143310 (n + 1)

end A143310

/-! ## A143310.P17376359596471449212

`(2*n+1-A061885(n))*C(A050206(n+2), 2)`
-/

namespace A143310.P17376359596471449212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A061885 n) * (Nat.choose (A050206 (n + 2)).toNat 2 : ℤ)

end

end A143310.P17376359596471449212

namespace A143310

/-- `(2*n+1-A061885(n))*C(A050206(n+2), 2)` -/
def P17376359596471449212.Spec : Prop :=
  ∀ n, P17376359596471449212.a n = A143310 (n + 1)

theorem P17376359596471449212.correct : P17376359596471449212.Spec := by
  intro n
  simp only [A143310, Nat.add_sub_cancel, A143310.P17376359596471449212.a, A143310.P10710681991950682703.a, A002260, A002260.P769748059679640451.a, A050206, A050206.P11225108751146401757.a, A061885, A061885.P4567764245783084005.a, A128489, A128489.P16282095299326048073.a, A002262, A002262.P12129691700837801527.a, A010783, A010783.P12753590747771486457.a, A038722, A038722.P244822054879230948.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143310

/-!
# A143311: Triangle read by rows, A127648 * A126988; 1<=k<=n.

The programs for A143311, the canonical program `A143311.P1988251396051349915` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143311 has offset 1).

The definition of A143311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143311.P12036478338827563360

`∑[char[∑[n]]]*A126988(n+1)`
-/

namespace A143311.P12036478338827563360
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126988 (n + 1)

end

end A143311.P12036478338827563360

namespace A143311

/-- `∑[char[∑[n]]]*A126988(n+1)` -/
def P12036478338827563360.Spec : Prop :=
  ∀ n, P12036478338827563360.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P1988251396051349915

`lcm(A118013(n+1), A129555(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143311

/-- `lcm(A118013(n+1), A129555(n))` -/
def P1988251396051349915.Spec : Prop :=
  ∀ n, (P1988251396051349915.a n : ℤ) = A143311 (n + 1)

theorem P1988251396051349915.correct : P1988251396051349915.Spec := by
  intro n
  simp only [A143311, Nat.add_sub_cancel]

end A143311

/-! ## A143311.P15543100533950612840

`A010766(n+1)*A127446(n+1)`
-/

namespace A143311.P15543100533950612840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127446 (n + 1)

end

end A143311.P15543100533950612840

namespace A143311

/-- `A010766(n+1)*A127446(n+1)` -/
def P15543100533950612840.Spec : Prop :=
  ∀ n, P15543100533950612840.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P8963438447260172330

`A051731(n+1)*A118013(n+1)`
-/

namespace A143311.P8963438447260172330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A118013 (n + 1)

end

end A143311.P8963438447260172330

namespace A143311

/-- `A051731(n+1)*A118013(n+1)` -/
def P8963438447260172330.Spec : Prop :=
  ∀ n, P8963438447260172330.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P4218874335106105935

`A049834(n+1)*A127446(n+1)`
-/

namespace A143311.P4218874335106105935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127446 (n + 1)

end

end A143311.P4218874335106105935

namespace A143311

/-- `A049834(n+1)*A127446(n+1)` -/
def P4218874335106105935.Spec : Prop :=
  ∀ n, P4218874335106105935.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P956783963515924832

`A051537(n+1)*A127446(n+1)`
-/

namespace A143311.P956783963515924832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127446 (n + 1)

end

end A143311.P956783963515924832

namespace A143311

/-- `A051537(n+1)*A127446(n+1)` -/
def P956783963515924832.Spec : Prop :=
  ∀ n, P956783963515924832.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P12756075042755627988

`A054531(n+1)*A127446(n+1)`
-/

namespace A143311.P12756075042755627988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127446 (n + 1)

end

end A143311.P12756075042755627988

namespace A143311

/-- `A054531(n+1)*A127446(n+1)` -/
def P12756075042755627988.Spec : Prop :=
  ∀ n, P12756075042755627988.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P1373595823203634214

`A059026(n+1)*A127446(n+1)`
-/

namespace A143311.P1373595823203634214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127446 (n + 1)

end

end A143311.P1373595823203634214

namespace A143311

/-- `A059026(n+1)*A127446(n+1)` -/
def P1373595823203634214.Spec : Prop :=
  ∀ n, P1373595823203634214.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P9227237985566538661

`A085383(n+1)*A127093(n+1)`
-/

namespace A143311.P9227237985566538661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1) * A127093 (n + 1)

end

end A143311.P9227237985566538661

namespace A143311

/-- `A085383(n+1)*A127093(n+1)` -/
def P9227237985566538661.Spec : Prop :=
  ∀ n, P9227237985566538661.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P97867738501115732

`A126988(n+1)*A127446(n+1)`
-/

namespace A143311.P97867738501115732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127446 (n + 1)

end

end A143311.P97867738501115732

namespace A143311

/-- `A126988(n+1)*A127446(n+1)` -/
def P97867738501115732.Spec : Prop :=
  ∀ n, P97867738501115732.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P3507419096097161691

`A126988(n+1)*A199408(n+1)`
-/

namespace A143311.P3507419096097161691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A199408 (n + 1)

end

end A143311.P3507419096097161691

namespace A143311

/-- `A126988(n+1)*A199408(n+1)` -/
def P3507419096097161691.Spec : Prop :=
  ∀ n, P3507419096097161691.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P579936764908500321

`A127446(n+1)*A219158(n+1)`
-/

namespace A143311.P579936764908500321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1) * A219158 (n + 1)

end

end A143311.P579936764908500321

namespace A143311

/-- `A127446(n+1)*A219158(n+1)` -/
def P579936764908500321.Spec : Prop :=
  ∀ n, P579936764908500321.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P6575960127200756140

`A127446(n+1)*A234575(n+1)`
-/

namespace A143311.P6575960127200756140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1) * A234575 (n + 1)

end

end A143311.P6575960127200756140

namespace A143311

/-- `A127446(n+1)*A234575(n+1)` -/
def P6575960127200756140.Spec : Prop :=
  ∀ n, P6575960127200756140.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P9890488957707411275

`A126988(n+1)²*A002260(n+1)`
-/

namespace A143311.P9890488957707411275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) ^ 2 * A002260 (n + 1)

end

end A143311.P9890488957707411275

namespace A143311

/-- `A126988(n+1)²*A002260(n+1)` -/
def P9890488957707411275.Spec : Prop :=
  ∀ n, P9890488957707411275.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P1329621546833993108

`A010766(n+1)²*A127093(n+1)`
-/

namespace A143311.P1329621546833993108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) ^ 2 * A127093 (n + 1)

end

end A143311.P1329621546833993108

namespace A143311

/-- `A010766(n+1)²*A127093(n+1)` -/
def P1329621546833993108.Spec : Prop :=
  ∀ n, P1329621546833993108.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P1259197784930741515

`A049834(n+1)²*A127093(n+1)`
-/

namespace A143311.P1259197784930741515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) ^ 2 * A127093 (n + 1)

end

end A143311.P1259197784930741515

namespace A143311

/-- `A049834(n+1)²*A127093(n+1)` -/
def P1259197784930741515.Spec : Prop :=
  ∀ n, P1259197784930741515.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P5502890182567266841

`A126988(n+1)²*A050873(n+1)`
-/

namespace A143311.P5502890182567266841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) ^ 2 * A050873 (n + 1)

end

end A143311.P5502890182567266841

namespace A143311

/-- `A126988(n+1)²*A050873(n+1)` -/
def P5502890182567266841.Spec : Prop :=
  ∀ n, P5502890182567266841.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P11461471360637564675

`A051537(n+1)²*A127093(n+1)`
-/

namespace A143311.P11461471360637564675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) ^ 2 * A127093 (n + 1)

end

end A143311.P11461471360637564675

namespace A143311

/-- `A051537(n+1)²*A127093(n+1)` -/
def P11461471360637564675.Spec : Prop :=
  ∀ n, P11461471360637564675.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P15513985303218604349

`A054531(n+1)²*A127093(n+1)`
-/

namespace A143311.P15513985303218604349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) ^ 2 * A127093 (n + 1)

end

end A143311.P15513985303218604349

namespace A143311

/-- `A054531(n+1)²*A127093(n+1)` -/
def P15513985303218604349.Spec : Prop :=
  ∀ n, P15513985303218604349.a n = A143311 (n + 1)

end A143311

/-! ## A143311.P13427978746083099868

`A059026(n+1)²*A127093(n+1)`
-/

namespace A143311.P13427978746083099868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) ^ 2 * A127093 (n + 1)

end

end A143311.P13427978746083099868

namespace A143311

/-- `A059026(n+1)²*A127093(n+1)` -/
def P13427978746083099868.Spec : Prop :=
  ∀ n, P13427978746083099868.a n = A143311 (n + 1)

end A143311

/-!
# A143312: Triangle read by rows, A054525 * A143311, 1<=k<=n.

The programs for A143312, the canonical program `A143312.P13515450674818281324` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143312 has offset 1).

The definition of A143312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143312.P13515450674818281324

`A001615(A010766(n+1))*A127465(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A143312

/-- `A001615(A010766(n+1))*A127465(n+1)` -/
def P13515450674818281324.Spec : Prop :=
  ∀ n, P13515450674818281324.a n = A143312 (n + 1)

theorem P13515450674818281324.correct : P13515450674818281324.Spec := by
  intro n
  simp only [A143312, Nat.add_sub_cancel]

end A143312

/-! ## A143312.P7334613542858791077

`A007434(A010766(n+1))*A127093(n+1)`
-/

namespace A143312.P7334613542858791077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A010766 (n + 1)).toNat * A127093 (n + 1)

end

end A143312.P7334613542858791077

namespace A143312

/-- `A007434(A010766(n+1))*A127093(n+1)` -/
def P7334613542858791077.Spec : Prop :=
  ∀ n, P7334613542858791077.a n = A143312 (n + 1)

end A143312

/-! ## A143312.P16673433890041866307

`A001615(A049834(n+1))*A127465(n+1)`
-/

namespace A143312.P16673433890041866307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A049834 (n + 1)).toNat * A127465 (n + 1)

end

end A143312.P16673433890041866307

namespace A143312

/-- `A001615(A049834(n+1))*A127465(n+1)` -/
def P16673433890041866307.Spec : Prop :=
  ∀ n, P16673433890041866307.a n = A143312 (n + 1)

end A143312

/-! ## A143312.P921661860296944406

`A001615(A054531(n+1))*A127465(n+1)`
-/

namespace A143312.P921661860296944406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A054531 (n + 1)).toNat * A127465 (n + 1)

end

end A143312.P921661860296944406

namespace A143312

/-- `A001615(A054531(n+1))*A127465(n+1)` -/
def P921661860296944406.Spec : Prop :=
  ∀ n, P921661860296944406.a n = A143312 (n + 1)

end A143312

/-! ## A143312.P16949605456177193956

`A007434(A049834(n+1))*A127093(n+1)`
-/

namespace A143312.P16949605456177193956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A049834 (n + 1)).toNat * A127093 (n + 1)

end

end A143312.P16949605456177193956

namespace A143312

/-- `A007434(A049834(n+1))*A127093(n+1)` -/
def P16949605456177193956.Spec : Prop :=
  ∀ n, P16949605456177193956.a n = A143312 (n + 1)

end A143312

/-! ## A143312.P13582790445100197202

`A007434(A054531(n+1))*A127093(n+1)`
-/

namespace A143312.P13582790445100197202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A054531 (n + 1)).toNat * A127093 (n + 1)

end

end A143312.P13582790445100197202

namespace A143312

/-- `A007434(A054531(n+1))*A127093(n+1)` -/
def P13582790445100197202.Spec : Prop :=
  ∀ n, P13582790445100197202.a n = A143312 (n + 1)

end A143312

/-! ## A143312.P13857193451100462927

`A001615(A051537(n+1))*A127465(n+1)`
-/

namespace A143312.P13857193451100462927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A051537 (n + 1)).toNat * A127465 (n + 1)

end

end A143312.P13857193451100462927

namespace A143312

/-- `A001615(A051537(n+1))*A127465(n+1)` -/
def P13857193451100462927.Spec : Prop :=
  ∀ n, P13857193451100462927.a n = A143312 (n + 1)

end A143312

/-! ## A143312.P16216741296305041564

`A007434(A051537(n+1))*A127093(n+1)`
-/

namespace A143312.P16216741296305041564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A051537 (n + 1)).toNat * A127093 (n + 1)

end

end A143312.P16216741296305041564

namespace A143312

/-- `A007434(A051537(n+1))*A127093(n+1)` -/
def P16216741296305041564.Spec : Prop :=
  ∀ n, P16216741296305041564.a n = A143312 (n + 1)

end A143312

/-!
# A143313: Triangle read by rows, A130540 * A000012, 1<=k<=n.

The programs for A143313, there is no canonical definition to state claims against.
-/

/-! ## A143313.P15826062134733335222

`A048766(A014014(A334466(n+1)))`
-/

namespace A143313.P15826062134733335222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014014 (A334466 (n + 1)).toNat).toNat

end

end A143313.P15826062134733335222

/-!
# A143314: Number of hands of n cards containing a straight flush (for n=1 to 52).

The programs for A143314, there is no canonical definition to state claims against.
-/

/-! ## A143314.P7666198262359526785

`A239906(43^∑[floor(n/4)])`
-/

namespace A143314.P7666198262359526785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239906 (SequenceMachineLib.roundAway ((43 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A143314.P7666198262359526785

/-! ## A143314.P4288727842573497641

`A127033(A075473(n)+1)`
-/

namespace A143314.P4288727842573497641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127033 (A075473 n + 1).toNat

end

end A143314.P4288727842573497641

/-!
# A143315: Triangle read by rows: T(n, k) = 2*A126988(n, k) - signum(A126988(n, k)).

The programs for A143315, the canonical program `A143315.P7020980111509435971` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143315 has offset 1).

The definition of A143315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143315.P15111126140460676595

`A004273(A126988(n+1))`
-/

namespace A143315.P15111126140460676595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A126988 (n + 1)).toNat

end

end A143315.P15111126140460676595

namespace A143315

/-- `A004273(A126988(n+1))` -/
def P15111126140460676595.Spec : Prop :=
  ∀ n, P15111126140460676595.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P7020980111509435971

`A014681(2*A126988(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143315

/-- `A014681(2*A126988(n+1))` -/
def P7020980111509435971.Spec : Prop :=
  ∀ n, P7020980111509435971.a n = A143315 (n + 1)

theorem P7020980111509435971.correct : P7020980111509435971.Spec := by
  intro n
  simp only [A143315, Nat.add_sub_cancel]

end A143315

/-! ## A143315.P3018091169874137573

`2*A126988(n+1)-A051731(n+1)`
-/

namespace A143315.P3018091169874137573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126988 (n + 1) - A051731 (n + 1)

end

end A143315.P3018091169874137573

namespace A143315

/-- `2*A126988(n+1)-A051731(n+1)` -/
def P3018091169874137573.Spec : Prop :=
  ∀ n, P3018091169874137573.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P5050375323219358356

`2*A129234(n+1)-A134560(n+1)`
-/

namespace A143315.P5050375323219358356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129234 (n + 1) - A134560 (n + 1)

end

end A143315.P5050375323219358356

namespace A143315

/-- `2*A129234(n+1)-A134560(n+1)` -/
def P5050375323219358356.Spec : Prop :=
  ∀ n, P5050375323219358356.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P842055435080999029

`A127775(A286158(n+1))`
-/

namespace A143315.P842055435080999029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (A286158 (n + 1)).toNat

end

end A143315.P842055435080999029

namespace A143315

/-- `A127775(A286158(n+1))` -/
def P842055435080999029.Spec : Prop :=
  ∀ n, P842055435080999029.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P17895910289834224654

`A253580(A085383(n+1))`
-/

namespace A143315.P17895910289834224654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A085383 (n + 1)).toNat

end

end A143315.P17895910289834224654

namespace A143315

/-- `A253580(A085383(n+1))` -/
def P17895910289834224654.Spec : Prop :=
  ∀ n, P17895910289834224654.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P17809374713355342822

`A000267(A126988(n+1)²)-1`
-/

namespace A143315.P17809374713355342822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A126988 (n + 1) ^ 2).toNat - 1

end

end A143315.P17809374713355342822

namespace A143315

/-- `A000267(A126988(n+1)²)-1` -/
def P17809374713355342822.Spec : Prop :=
  ∀ n, P17809374713355342822.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P15168974902067046392

`A003056(2*A126988(n+1)²)`
-/

namespace A143315.P15168974902067046392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A126988 (n + 1) ^ 2).toNat

end

end A143315.P15168974902067046392

namespace A143315

/-- `A003056(2*A126988(n+1)²)` -/
def P15168974902067046392.Spec : Prop :=
  ∀ n, P15168974902067046392.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P15193439564599553616

`A134560(A120913(n+1))`
-/

namespace A143315.P15193439564599553616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134560 (A120913 (n + 1)).toNat

end

end A143315.P15193439564599553616

namespace A143315

/-- `A134560(A120913(n+1))` -/
def P15193439564599553616.Spec : Prop :=
  ∀ n, P15193439564599553616.a n = A143315 (n + 1)

end A143315

/-! ## A143315.P4391835950153655027

`A010766(n+1)²-A176808(n+1)²`
-/

namespace A143315.P4391835950153655027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) ^ 2 - A176808 (n + 1) ^ 2

end

end A143315.P4391835950153655027

namespace A143315

/-- `A010766(n+1)²-A176808(n+1)²` -/
def P4391835950153655027.Spec : Prop :=
  ∀ n, P4391835950153655027.a n = A143315 (n + 1)

end A143315

/-!
# A143316: Triangle read by rows, A054525 * A143315, 1<=k<=n.

The programs for A143316, the canonical program `A143316.P17944091046691016971` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143316 has offset 1).

The definition of A143316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143316.P17944091046691016971

`A054523(n+1)*A114002(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A143316

/-- `A054523(n+1)*A114002(n)` -/
def P17944091046691016971.Spec : Prop :=
  ∀ n, P17944091046691016971.a n = A143316 (n + 1)

theorem P17944091046691016971.correct : P17944091046691016971.Spec := by
  intro n
  simp only [A143316, Nat.add_sub_cancel]

end A143316

/-! ## A143316.P1691866882018201382

`A004736(A286156(n+1))*A054523(n+1)`
-/

namespace A143316.P1691866882018201382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286156 (n + 1)).toNat * A054523 (n + 1)

end

end A143316.P1691866882018201382

namespace A143316

/-- `A004736(A286156(n+1))*A054523(n+1)` -/
def P1691866882018201382.Spec : Prop :=
  ∀ n, P1691866882018201382.a n = A143316 (n + 1)

end A143316

/-! ## A143316.P13897265446568410378

`Δ[A133280(n)]*A054523(n+1)`
-/

namespace A143316.P13897265446568410378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054523 (n + 1)

end

end A143316.P13897265446568410378

namespace A143316

/-- `Δ[A133280(n)]*A054523(n+1)` -/
def P13897265446568410378.Spec : Prop :=
  ∀ n, P13897265446568410378.a n = A143316 (n + 1)

end A143316

/-! ## A143316.P9667230908897519794

`A054523(n+1)*A252230(n+1)`
-/

namespace A143316.P9667230908897519794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A252230 (n + 1)

end

end A143316.P9667230908897519794

namespace A143316

/-- `A054523(n+1)*A252230(n+1)` -/
def P9667230908897519794.Spec : Prop :=
  ∀ n, P9667230908897519794.a n = A143316 (n + 1)

end A143316

/-! ## A143316.P1627545358620093485

`A054523(n+1)*A380920(n+1)`
-/

namespace A143316.P1627545358620093485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A380920 (n + 1)

end

end A143316.P1627545358620093485

namespace A143316

/-- `A054523(n+1)*A380920(n+1)` -/
def P1627545358620093485.Spec : Prop :=
  ∀ n, P1627545358620093485.a n = A143316 (n + 1)

end A143316

/-! ## A143316.P17211928427068868320

`A036453(A343516(n+2))*A054523(n+1)`
-/

namespace A143316.P17211928427068868320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A343516 (n + 2)).toNat * A054523 (n + 1)

end

end A143316.P17211928427068868320

namespace A143316

/-- `A036453(A343516(n+2))*A054523(n+1)` -/
def P17211928427068868320.Spec : Prop :=
  ∀ n, P17211928427068868320.a n = A143316 (n + 1)

end A143316

/-! ## A143316.P15449020279103738572

`A020639(A054335(n))*A054523(n+1)`
-/

namespace A143316.P15449020279103738572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054335 n).toNat * A054523 (n + 1)

end

end A143316.P15449020279103738572

namespace A143316

/-- `A020639(A054335(n))*A054523(n+1)` -/
def P15449020279103738572.Spec : Prop :=
  ∀ n, P15449020279103738572.a n = A143316 (n + 1)

end A143316

/-!
# A143317: Triangle read by rows: A051731 * A143239.

The programs for A143317, the canonical program `A143317.P4651974082893048059` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143317 has offset 1).

The definition of A143317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143317.P4651974082893048059

`A000203(A054531(n+1))*A054524(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143317

/-- `A000203(A054531(n+1))*A054524(n+1)` -/
def P4651974082893048059.Spec : Prop :=
  ∀ n, P4651974082893048059.a n = A143317 (n + 1)

theorem P4651974082893048059.correct : P4651974082893048059.Spec := by
  intro n
  simp only [A143317, Nat.add_sub_cancel]

end A143317

/-! ## A143317.P16971166582227116298

`A054524(n+1)*A130540(n+1)`
-/

namespace A143317.P16971166582227116298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A130540 (n + 1)

end

end A143317.P16971166582227116298

namespace A143317

/-- `A054524(n+1)*A130540(n+1)` -/
def P16971166582227116298.Spec : Prop :=
  ∀ n, P16971166582227116298.a n = A143317 (n + 1)

end A143317

/-! ## A143317.P953683831559550590

`A054527(n+1)*A130540(n+1)`
-/

namespace A143317.P953683831559550590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A130540 (n + 1)

end

end A143317.P953683831559550590

namespace A143317

/-- `A054527(n+1)*A130540(n+1)` -/
def P953683831559550590.Spec : Prop :=
  ∀ n, P953683831559550590.a n = A143317 (n + 1)

end A143317

/-! ## A143317.P1589608183060190508

`A054534(n+1)*A130540(n+1)`
-/

namespace A143317.P1589608183060190508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A130540 (n + 1)

end

end A143317.P1589608183060190508

namespace A143317

/-- `A054534(n+1)*A130540(n+1)` -/
def P1589608183060190508.Spec : Prop :=
  ∀ n, P1589608183060190508.a n = A143317 (n + 1)

end A143317

/-! ## A143317.P17670880637956129840

`A127569(A120913(n+1))`
-/

namespace A143317.P17670880637956129840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127569 (A120913 (n + 1)).toNat

end

end A143317.P17670880637956129840

namespace A143317

/-- `A127569(A120913(n+1))` -/
def P17670880637956129840.Spec : Prop :=
  ∀ n, P17670880637956129840.a n = A143317 (n + 1)

end A143317

/-!
# A143320: Triangle read by rows, A000012 * A143317; 1<=k<=n.

The programs for A143320, the canonical program `A143320.P9821139505846208418` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143320 has offset 1).

The definition of A143320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143320.P9821139505846208418

`A024916(A010766(n+1))*A054527(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A143320

/-- `A024916(A010766(n+1))*A054527(n+1)` -/
def P9821139505846208418.Spec : Prop :=
  ∀ n, P9821139505846208418.a n = A143320 (n + 1)

theorem P9821139505846208418.correct : P9821139505846208418.Spec := by
  intro n
  simp only [A143320, Nat.add_sub_cancel]

end A143320

/-!
# A143321: Positive integers k whose sum of distinct prime divisors divides k+1.

The programs for A143321, the canonical program `A143321.P7852709358253310021` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143321 has offset 1).

The definition of A143321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143321.P7852709358253310021

`eq[n+2, lcm(n+2, A008472(n+1))]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143321

/-- `eq[n+2, lcm(n+2, A008472(n+1))]+1` -/
def P7852709358253310021.Spec : Prop :=
  ∀ n, (P7852709358253310021.a n : ℤ) = A143321 (n + 1)

theorem P7852709358253310021.correct : P7852709358253310021.Spec := by
  intro n
  simp only [A143321, Nat.add_sub_cancel]

end A143321

/-! ## A143321.P15868460066396519667

`eq[n+3, A161657(n+2)]+2`
-/

namespace A143321.P15868460066396519667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161657 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A143321.P15868460066396519667

namespace A143321

/-- `eq[n+3, A161657(n+2)]+2` -/
def P15868460066396519667.Spec : Prop :=
  ∀ n, (P15868460066396519667.a n : ℤ) = A143321 (n + 1)

end A143321

/-!
# A143322: Positive integers k whose sum of distinct prime divisors divides k-1.

The programs for A143322, the canonical program `A143322.P3083203462530843430` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143322 has offset 1).

The definition of A143322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143322.P3083203462530843430

`lt[(n+1)%A008472(n+2), 1]+2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143322

/-- `lt[(n+1)%A008472(n+2), 1]+2` -/
def P3083203462530843430.Spec : Prop :=
  ∀ n, (P3083203462530843430.a n : ℤ) = A143322 (n + 1)

theorem P3083203462530843430.correct : P3083203462530843430.Spec := by
  intro n
  simp only [A143322, Nat.add_sub_cancel]

end A143322

/-! ## A143322.P4554477819465330410

`eq[abs(1-n)+1, lcm(n, A008472(n+1))]+1`
-/

namespace A143322.P4554477819465330410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A008472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A143322.P4554477819465330410

namespace A143322

/-- `eq[abs(1-n)+1, lcm(n, A008472(n+1))]+1` -/
def P4554477819465330410.Spec : Prop :=
  ∀ n, (P4554477819465330410.a n : ℤ) = A143322 (n + 1)

end A143322

/-! ## A143322.P9763391923686477468

`eq[abs(1-n)+1, A161656(n+1)]+1`
-/

namespace A143322.P9763391923686477468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143322.P9763391923686477468

namespace A143322

/-- `eq[abs(1-n)+1, A161656(n+1)]+1` -/
def P9763391923686477468.Spec : Prop :=
  ∀ n, (P9763391923686477468.a n : ℤ) = A143322 (n + 1)

end A143322

/-! ## A143322.P15952970814926101404

`eq[n, A028310(A161656(n+1))]+1`
-/

namespace A143322.P15952970814926101404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A161656 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A143322.P15952970814926101404

namespace A143322

/-- `eq[n, A028310(A161656(n+1))]+1` -/
def P15952970814926101404.Spec : Prop :=
  ∀ n, (P15952970814926101404.a n : ℤ) = A143322 (n + 1)

end A143322

/-! ## A143322.P16984065387611843590

`eq[2, (n+1)%A008472(A233583(n+1))]`
-/

namespace A143322.P16984065387611843590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A008472 (A233583 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143322.P16984065387611843590

namespace A143322

/-- `eq[2, (n+1)%A008472(A233583(n+1))]` -/
def P16984065387611843590.Spec : Prop :=
  ∀ n, (P16984065387611843590.a n : ℤ) = A143322 (n + 1)

end A143322

/-!
# A143323: Expansion of eta(q^2)^4 * eta(q^5) * eta(q^20)^2 / ( eta(q) * eta(q^4)^2 * eta(q^10)^2 ) in powers of q.

The programs for A143323, the canonical program `A143323.P3371947964759797463` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143323 has offset 1).

The definition of A143323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111949, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143323.P3371947964759797463

`(-1)^n*A111949(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143323

/-- `(-1)^n*A111949(n+1)` -/
def P3371947964759797463.Spec : Prop :=
  ∀ n, P3371947964759797463.a n = A143323 (n + 1)

theorem P3371947964759797463.correct : P3371947964759797463.Spec := by
  intro n
  simp only [A143323, Nat.add_sub_cancel]

end A143323

/-! ## A143323.P9845832396232571392

`A111949(gcd(n+1, ∑[n]))`
-/

namespace A143323.P9845832396232571392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A143323.P9845832396232571392

namespace A143323

/-- `A111949(gcd(n+1, ∑[n]))` -/
def P9845832396232571392.Spec : Prop :=
  ∀ n, P9845832396232571392.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P7952571904029483995

`A111949(A026741(n+1))`
-/

namespace A143323.P7952571904029483995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A026741 (n + 1)).toNat

end

end A143323.P7952571904029483995

namespace A143323

/-- `A111949(A026741(n+1))` -/
def P7952571904029483995.Spec : Prop :=
  ∀ n, P7952571904029483995.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P8620216544603721329

`A111949((n+1)/A000034(n))`
-/

namespace A143323.P8620216544603721329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A143323.P8620216544603721329

namespace A143323

/-- `A111949((n+1)/A000034(n))` -/
def P8620216544603721329.Spec : Prop :=
  ∀ n, P8620216544603721329.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P11941675065313144252

`ratio[A020985(n)]*A035170(n+1)`
-/

namespace A143323.P11941675065313144252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A035170 (n + 1) : ℚ)

end

end A143323.P11941675065313144252

namespace A143323

/-- `ratio[A020985(n)]*A035170(n+1)` -/
def P11941675065313144252.Spec : Prop :=
  ∀ n, P11941675065313144252.a n = (A143323 (n + 1) : ℚ)

end A143323

/-! ## A143323.P6240783968904531642

`A111949((n+1)/(A000035(n)+1))`
-/

namespace A143323.P6240783968904531642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000035 n + 1 : ℚ))).toNat

end

end A143323.P6240783968904531642

namespace A143323

/-- `A111949((n+1)/(A000035(n)+1))` -/
def P6240783968904531642.Spec : Prop :=
  ∀ n, P6240783968904531642.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P1512853509805218055

`∑{d}[n+1, A111949(#)*A130706((n+1)/#-1)]`
-/

namespace A143323.P1512853509805218055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111949 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A143323.P1512853509805218055

namespace A143323

/-- `∑{d}[n+1, A111949(#)*A130706((n+1)/#-1)]` -/
def P1512853509805218055.Spec : Prop :=
  ∀ n, P1512853509805218055.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P2414620131339353977

`A111949(A029579(A004442(n)))`
-/

namespace A143323.P2414620131339353977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A029579 (A004442 n).toNat).toNat

end

end A143323.P2414620131339353977

namespace A143323

/-- `A111949(A029579(A004442(n)))` -/
def P2414620131339353977.Spec : Prop :=
  ∀ n, P2414620131339353977.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P14381118594847890154

`A035170(n+1)-A028586(A026741(n+1))`
-/

namespace A143323.P14381118594847890154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) - A028586 (A026741 (n + 1)).toNat

end

end A143323.P14381118594847890154

namespace A143323

/-- `A035170(n+1)-A028586(A026741(n+1))` -/
def P14381118594847890154.Spec : Prop :=
  ∀ n, P14381118594847890154.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P14736144804544614501

`A111949(Δ[A001318(n)])`
-/

namespace A143323.P14736144804544614501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (f1 (n + 1) - f1 n).toNat

end

end A143323.P14736144804544614501

namespace A143323

/-- `A111949(Δ[A001318(n)])` -/
def P14736144804544614501.Spec : Prop :=
  ∀ n, P14736144804544614501.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P1892852123411372996

`A111949(A106611(n+1))`
-/

namespace A143323.P1892852123411372996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A106611 (n + 1)).toNat

end

end A143323.P1892852123411372996

namespace A143323

/-- `A111949(A106611(n+1))` -/
def P1892852123411372996.Spec : Prop :=
  ∀ n, P1892852123411372996.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P9189750579100685385

`A111949(A001318(n+1)-A001318(n))`
-/

namespace A143323.P9189750579100685385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A001318 (n + 1) - A001318 n).toNat

end

end A143323.P9189750579100685385

namespace A143323

/-- `A111949(A001318(n+1)-A001318(n))` -/
def P9189750579100685385.Spec : Prop :=
  ∀ n, P9189750579100685385.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P16288548350218439814

`A035170(n+1)-A028586(Δ[A001318(n)])`
-/

namespace A143323.P16288548350218439814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (n + 1) - A028586 (f1 (n + 1) - f1 n).toNat

end

end A143323.P16288548350218439814

namespace A143323

/-- `A035170(n+1)-A028586(Δ[A001318(n)])` -/
def P16288548350218439814.Spec : Prop :=
  ∀ n, P16288548350218439814.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P13365093680931603827

`A033718(Δ[A001318(n)])-A035170(n+1)`
-/

namespace A143323.P13365093680931603827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (f1 (n + 1) - f1 n).toNat - A035170 (n + 1)

end

end A143323.P13365093680931603827

namespace A143323

/-- `A033718(Δ[A001318(n)])-A035170(n+1)` -/
def P13365093680931603827.Spec : Prop :=
  ∀ n, P13365093680931603827.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P2201698976149195514

`A111949(A008619(A022998(n)))`
-/

namespace A143323.P2201698976149195514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A008619 (A022998 n).toNat).toNat

end

end A143323.P2201698976149195514

namespace A143323

/-- `A111949(A008619(A022998(n)))` -/
def P2201698976149195514.Spec : Prop :=
  ∀ n, P2201698976149195514.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P10796907087214507102

`A111949(A008619(A257088(n)))`
-/

namespace A143323.P10796907087214507102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A008619 (A257088 n).toNat).toNat

end

end A143323.P10796907087214507102

namespace A143323

/-- `A111949(A008619(A257088(n)))` -/
def P10796907087214507102.Spec : Prop :=
  ∀ n, P10796907087214507102.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P1236487672912116704

`A111949(A022998(n+1))`
-/

namespace A143323.P1236487672912116704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A022998 (n + 1)).toNat

end

end A143323.P1236487672912116704

namespace A143323

/-- `A111949(A022998(n+1))` -/
def P1236487672912116704.Spec : Prop :=
  ∀ n, P1236487672912116704.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P3381584872613532549

`A111949(A257088(n+1))`
-/

namespace A143323.P3381584872613532549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A257088 (n + 1)).toNat

end

end A143323.P3381584872613532549

namespace A143323

/-- `A111949(A257088(n+1))` -/
def P3381584872613532549.Spec : Prop :=
  ∀ n, P3381584872613532549.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P5461802258964328115

`A111949((n+1)*A000034(n))`
-/

namespace A143323.P5461802258964328115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 ((n + 1 : ℤ) * A000034 n).toNat

end

end A143323.P5461802258964328115

namespace A143323

/-- `A111949((n+1)*A000034(n))` -/
def P5461802258964328115.Spec : Prop :=
  ∀ n, P5461802258964328115.a n = A143323 (n + 1)

end A143323

/-! ## A143323.P1851062523998121340

`A111949(A195140(n+1))`
-/

namespace A143323.P1851062523998121340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (A195140 (n + 1)).toNat

end

end A143323.P1851062523998121340

namespace A143323

/-- `A111949(A195140(n+1))` -/
def P1851062523998121340.Spec : Prop :=
  ∀ n, P1851062523998121340.a n = A143323 (n + 1)

end A143323

/-!
# A143324: Table T(n,k) by antidiagonals. T(n,k) is the number of length n primitive (=aperiodic or period n) k-ary words (n,k >= 1).

The programs for A143324, there is no canonical definition to state claims against.
-/

/-! ## A143324.P16253059986228793799

`A074650(n+1)*A128227(n)`
-/

namespace A143324.P16253059986228793799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A128227 n

end

end A143324.P16253059986228793799

/-! ## A143324.P757130358889641255

`A074650(n+1)*A193738(n)`
-/

namespace A143324.P757130358889641255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A193738 n

end

end A143324.P757130358889641255

/-! ## A143324.P9363756157454157700

`A002260(n+1)*A074650(n+1)`
-/

namespace A143324.P9363756157454157700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A074650 (n + 1)

end

end A143324.P9363756157454157700

/-! ## A143324.P12083586940775443566

`A004736(n+1)*A143325(n+1)`
-/

namespace A143324.P12083586940775443566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A143325 (n + 1)

end

end A143324.P12083586940775443566

/-! ## A143324.P6547442948286772487

`A074650(n+1)*A080511(n+1)`
-/

namespace A143324.P6547442948286772487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A080511 (n + 1)

end

end A143324.P6547442948286772487

/-! ## A143324.P18201272545195706976

`A074650(n+1)*A080818(n+1)`
-/

namespace A143324.P18201272545195706976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A080818 (n + 1)

end

end A143324.P18201272545195706976

/-! ## A143324.P5289749391129173349

`A074650(n+1)*A081517(n+1)`
-/

namespace A143324.P5289749391129173349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A081517 (n + 1)

end

end A143324.P5289749391129173349

/-! ## A143324.P17880850949244599832

`A074650(n+1)*A128077(n+1)`
-/

namespace A143324.P17880850949244599832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A128077 (n + 1)

end

end A143324.P17880850949244599832

/-! ## A143324.P8742493069930561564

`(1-A057944(n)+n)*A074650(n+1)`
-/

namespace A143324.P8742493069930561564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A074650 (n + 1)

end

end A143324.P8742493069930561564

/-! ## A143324.P5452673614912998238

`A143325(n+1)/A143327(n+1)*A143326(n+1)`
-/

namespace A143324.P5452673614912998238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143325 (n + 1) : ℚ) / (A143327 (n + 1) : ℚ) * (A143326 (n + 1) : ℚ)

end

end A143324.P5452673614912998238

/-! ## A143324.P13997572659710432585

`A054619(n+1)/A054630(n+1)*A074650(n+1)`
-/

namespace A143324.P13997572659710432585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054619 (n + 1) : ℚ) / (A054630 (n + 1) : ℚ) * (A074650 (n + 1) : ℚ)

end

end A143324.P13997572659710432585

/-! ## A143324.P6001245944411400791

`A074650(n+1)*A080508(n+1)`
-/

namespace A143324.P6001245944411400791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A080508 (n + 1)

end

end A143324.P6001245944411400791

/-!
# A143325: Table T(n,k) by antidiagonals. T(n,k) is the number of length n primitive (=aperiodic or period n) k-ary words (n,k >= 1) which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A143325, there is no canonical definition to state claims against.
-/

/-! ## A143325.P9067395695250210295

`A143324(n+1)/Δ[A193973(n)]`
-/

namespace A143325.P9067395695250210295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A143325.P9067395695250210295

/-! ## A143325.P3256715820207586398

`A143324(n+1)/A004736(n+1)`
-/

namespace A143325.P3256715820207586398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A143325.P3256715820207586398

/-! ## A143325.P5313793064185501591

`A143324(n+1)/(A025581(n)+1)`
-/

namespace A143325.P5313793064185501591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)

end

end A143325.P5313793064185501591

/-! ## A143325.P16954502789197091339

`2*A143324(n+1)/A212012(n+1)`
-/

namespace A143325.P16954502789197091339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A143324 (n + 1) : ℚ) / (A212012 (n + 1) : ℚ))

end

end A143325.P16954502789197091339

/-! ## A143325.P10500166181542047067

`A143324(n+1)/A002260(A278818(n))`
-/

namespace A143325.P10500166181542047067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A002260 (A278818 n).toNat : ℚ)

end

end A143325.P10500166181542047067

/-! ## A143325.P12094967483720185919

`A143324(n+1)/A002260(A038722(n+1))`
-/

namespace A143325.P12094967483720185919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A143325.P12094967483720185919

/-! ## A143325.P7560862877835367975

`A143324(n+1)/A004525(A212012(n+1))`
-/

namespace A143325.P7560862877835367975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A004525 (A212012 (n + 1)).toNat : ℚ)

end

end A143325.P7560862877835367975

/-! ## A143325.P12794301848474318816

`A143324(n+1)/A143326(n+1)*A143327(n+1)`
-/

namespace A143325.P12794301848474318816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A143326 (n + 1) : ℚ) * (A143327 (n + 1) : ℚ)

end

end A143325.P12794301848474318816

/-! ## A143325.P15792933713280669766

`A143324(n+1)/A000005(A130321(n))`
-/

namespace A143325.P15792933713280669766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A143325.P15792933713280669766

/-!
# A143326: Table T(n,k) by antidiagonals. T(n,k) is the number of primitive (=aperiodic) k-ary words with length less than or equal to n (n,k >= 1).

The programs for A143326, there is no canonical definition to state claims against.
-/

/-! ## A143326.P16006950457873603512

`A004736(n+1)*A143327(n+1)`
-/

namespace A143326.P16006950457873603512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A143327 (n + 1)

end

end A143326.P16006950457873603512

/-! ## A143326.P616384035653855926

`(A025581(n)+1)*A143327(n+1)`
-/

namespace A143326.P616384035653855926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A143327 (n + 1)

end

end A143326.P616384035653855926

/-! ## A143326.P7077755931166603231

`A110654(A099375(n))*A143327(n+1)`
-/

namespace A143326.P7077755931166603231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A099375 n).toNat * A143327 (n + 1)

end

end A143326.P7077755931166603231

/-! ## A143326.P1357420525313265297

`A002260(A278818(n))*A143327(n+1)`
-/

namespace A143326.P1357420525313265297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278818 n).toNat * A143327 (n + 1)

end

end A143326.P1357420525313265297

/-! ## A143326.P1528924609123984812

`A002260(A038722(n+1))*A143327(n+1)`
-/

namespace A143326.P1528924609123984812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A143327 (n + 1)

end

end A143326.P1528924609123984812

/-! ## A143326.P4621343006521342639

`A000720(A104887(n+1))*A143327(n+1)`
-/

namespace A143326.P4621343006521342639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104887 (n + 1)).toNat * A143327 (n + 1)

end

end A143326.P4621343006521342639

/-! ## A143326.P18415882185655953005

`A000005(A130321(n))*A143327(n+1)`
-/

namespace A143326.P18415882185655953005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A143327 (n + 1)

end

end A143326.P18415882185655953005

/-! ## A143326.P12078628962295970970

`A000120(A130330(n))*A143327(n+1)`
-/

namespace A143326.P12078628962295970970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A130330 n).toNat * A143327 (n + 1)

end

end A143326.P12078628962295970970

/-! ## A143326.P8917600100298865381

`A000120(A066884(n+1))*A143327(n+1)`
-/

namespace A143326.P8917600100298865381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A066884 (n + 1)).toNat * A143327 (n + 1)

end

end A143326.P8917600100298865381

/-! ## A143326.P9642786587973520364

`A000005(A140303(n))*A143327(n+1)`
-/

namespace A143326.P9642786587973520364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat * A143327 (n + 1)

end

end A143326.P9642786587973520364

/-!
# A143327: Table T(n,k) by antidiagonals. T(n,k) is the number of primitive (=aperiodic) k-ary words (n,k >= 1) with length less than or equal to n which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

The programs for A143327, there is no canonical definition to state claims against.
-/

/-! ## A143327.P4009596311607793613

`A143326(n+1)/A004736(n+1)`
-/

namespace A143327.P4009596311607793613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A143327.P4009596311607793613

/-! ## A143327.P6710240478563271711

`A143326(n+1)/A008619(A099375(n))`
-/

namespace A143327.P6710240478563271711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A008619 (A099375 n).toNat : ℚ)

end

end A143327.P6710240478563271711

/-! ## A143327.P4865673063102346798

`A143326(n+1)/A002260(A278818(n))`
-/

namespace A143327.P4865673063102346798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A002260 (A278818 n).toNat : ℚ)

end

end A143327.P4865673063102346798

/-! ## A143327.P13791548962213392019

`A143326(n+1)/A002260(A038722(n+1))`
-/

namespace A143327.P13791548962213392019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A143327.P13791548962213392019

/-! ## A143327.P12661945511187939945

`A143326(n+1)/A000720(A104887(n+1))`
-/

namespace A143327.P12661945511187939945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A000720 (A104887 (n + 1)).toNat : ℚ)

end

end A143327.P12661945511187939945

/-! ## A143327.P3052149536103930113

`A143326(n+1)/A000005(A130321(n))`
-/

namespace A143327.P3052149536103930113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A143327.P3052149536103930113

/-! ## A143327.P11852452384923283882

`A143326(n+1)/A000120(A130330(n))`
-/

namespace A143327.P11852452384923283882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143326 (n + 1) : ℚ) / (A000120 (A130330 n).toNat : ℚ)

end

end A143327.P11852452384923283882

/-!
# A143328: Table T(n,k) read by antidiagonals. T(n,k) is the number of primitive (=aperiodic) k-ary Lyndon words (n,k >= 1) with length less than or equal to n.

The programs for A143328, there is no canonical definition to state claims against.
-/

/-! ## A143328.P464157917823714398

`(A347277(n+1)+A050447(n))%p?[A014126(n)]`
-/

namespace A143328.P464157917823714398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347277 (n + 1) + A050447 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A143328.P464157917823714398

/-! ## A143328.P17382232440096961079

`A000038(A001248(n+1))+A347277(n+1)+A050447(n)`
-/

namespace A143328.P17382232440096961079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A001248 (n + 1)).toNat + (A347277 (n + 1) + A050447 n)

end

end A143328.P17382232440096961079

/-! ## A143328.P4885539229659448788

`A000038(A120154(n+1))+A347277(n+1)+A050447(n)`
-/

namespace A143328.P4885539229659448788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A120154 (n + 1)).toNat + (A347277 (n + 1) + A050447 n)

end

end A143328.P4885539229659448788

/-! ## A143328.P2510437907516685568

`A347277(n+1)+A242427(A351720(n+1))+A050447(n)`
-/

namespace A143328.P2510437907516685568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347277 (n + 1) + (A242427 (A351720 (n + 1)).toNat + A050447 n)

end

end A143328.P2510437907516685568

/-! ## A143328.P13928854937251027474

`A347277(n+1)+A050447(n)*A093178(A333458(n+1))`
-/

namespace A143328.P13928854937251027474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347277 (n + 1) + A050447 n * A093178 (A333458 (n + 1)).toNat

end

end A143328.P13928854937251027474

/-!
# A143329: Primes in A143292.

The programs for A143329, the canonical program `A143329.P17825903406367476627` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143329 has offset 1).

The definition of A143329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143329.P17825903406367476627

`p?[A143292(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A143329

/-- `p?[A143292(n+1)]` -/
def P17825903406367476627.Spec : Prop :=
  ∀ n, P17825903406367476627.a n = A143329 (n + 1)

theorem P17825903406367476627.correct : P17825903406367476627.Spec := by
  intro n
  simp only [A143329, Nat.add_sub_cancel]

end A143329

/-! ## A143329.P16346313731256451173

`p?[xor(floor(A000040(n+1)/2), A000040(n+1))]`
-/

namespace A143329.P16346313731256451173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(A000040 (n + 1) : ℚ) / 2⌋ (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P16346313731256451173

namespace A143329

/-- `p?[xor(floor(A000040(n+1)/2), A000040(n+1))]` -/
def P16346313731256451173.Spec : Prop :=
  ∀ n, P16346313731256451173.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P9530913253572160776

`filter[A143292(n+1), A010051(#)]`
-/

namespace A143329.P9530913253572160776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A143329.P9530913253572160776

namespace A143329

/-- `filter[A143292(n+1), A010051(#)]` -/
def P9530913253572160776.Spec : Prop :=
  ∀ n, P9530913253572160776.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P1882246794733991151

`A003188(A281316(n+1))`
-/

namespace A143329.P1882246794733991151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A281316 (n + 1)).toNat

end

end A143329.P1882246794733991151

namespace A143329

/-- `A003188(A281316(n+1))` -/
def P1882246794733991151.Spec : Prop :=
  ∀ n, P1882246794733991151.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P1339110570877965609

`p?[A003188(p?[A209259(n)])]`
-/

namespace A143329.P1339110570877965609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P1339110570877965609

namespace A143329

/-- `p?[A003188(p?[A209259(n)])]` -/
def P1339110570877965609.Spec : Prop :=
  ∀ n, P1339110570877965609.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P12557753044186007072

`p?[A003188(A000040(n+1))]`
-/

namespace A143329.P12557753044186007072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P12557753044186007072

namespace A143329

/-- `p?[A003188(A000040(n+1))]` -/
def P12557753044186007072.Spec : Prop :=
  ∀ n, P12557753044186007072.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P13075342262610983127

`p?[A003188(A008578(n+1))]`
-/

namespace A143329.P13075342262610983127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P13075342262610983127

namespace A143329

/-- `p?[A003188(A008578(n+1))]` -/
def P13075342262610983127.Spec : Prop :=
  ∀ n, P13075342262610983127.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P1096439965194315779

`p?[A003188(record[A006530(n+1)])]`
-/

namespace A143329.P1096439965194315779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P1096439965194315779

namespace A143329

/-- `p?[A003188(record[A006530(n+1)])]` -/
def P1096439965194315779.Spec : Prop :=
  ∀ n, P1096439965194315779.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P9646012396386916343

`p?[A003188(record[A020639(n+1)])]`
-/

namespace A143329.P9646012396386916343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P9646012396386916343

namespace A143329

/-- `p?[A003188(record[A020639(n+1)])]` -/
def P9646012396386916343.Spec : Prop :=
  ∀ n, P9646012396386916343.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P5424062730647868114

`p?[A003188(A006093(n+1)+1)]`
-/

namespace A143329.P5424062730647868114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P5424062730647868114

namespace A143329

/-- `p?[A003188(A006093(n+1)+1)]` -/
def P5424062730647868114.Spec : Prop :=
  ∀ n, P5424062730647868114.a n = A143329 (n + 1)

theorem P5424062730647868114.correct : P5424062730647868114.Spec := by
  intro n
  simp only [A143329, Nat.add_sub_cancel, A143329.P5424062730647868114.f1, A143329.P5424062730647868114.a, A143329.P17825903406367476627.f1, A143329.P17825903406367476627.a, A003188, A003188.P10544524695508875182.a, A006093, A006093.P2906174024863549003.a, A143292, A143292.P9561529969644033132.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143329

/-! ## A143329.P16807506756191086549

`p?[A003188(A040976(n+1)+2)]`
-/

namespace A143329.P16807506756191086549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A040976 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P16807506756191086549

namespace A143329

/-- `p?[A003188(A040976(n+1)+2)]` -/
def P16807506756191086549.Spec : Prop :=
  ∀ n, P16807506756191086549.a n = A143329 (n + 1)

theorem P16807506756191086549.correct : P16807506756191086549.Spec := by
  intro n
  simp only [A143329, Nat.add_sub_cancel, A143329.P16807506756191086549.f1, A143329.P16807506756191086549.a, A143329.P17825903406367476627.f1, A143329.P17825903406367476627.a, A003188, A003188.P10544524695508875182.a, A040976, A040976.P11599754272797435513.a, A143292, A143292.P9561529969644033132.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143329

/-! ## A143329.P7571997623848627927

`p?[A003188(record[A000010(n+1)+1])]`
-/

namespace A143329.P7571997623848627927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P7571997623848627927

namespace A143329

/-- `p?[A003188(record[A000010(n+1)+1])]` -/
def P7571997623848627927.Spec : Prop :=
  ∀ n, P7571997623848627927.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P5668653257451737821

`p?[A003188(A007504(n+1)-A007504(n))]`
-/

namespace A143329.P5668653257451737821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A007504 (n + 1) - A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P5668653257451737821

namespace A143329

/-- `p?[A003188(A007504(n+1)-A007504(n))]` -/
def P5668653257451737821.Spec : Prop :=
  ∀ n, P5668653257451737821.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P365595835653790527

`p?[A003188(record[A014963(n+1)])]`
-/

namespace A143329.P365595835653790527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143329.P365595835653790527

namespace A143329

/-- `p?[A003188(record[A014963(n+1)])]` -/
def P365595835653790527.Spec : Prop :=
  ∀ n, P365595835653790527.a n = A143329 (n + 1)

end A143329

/-! ## A143329.P12228108704253803968

`filter[A143292(n+1), A080339(#)]`
-/

namespace A143329.P12228108704253803968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A143329.P12228108704253803968

namespace A143329

/-- `filter[A143292(n+1), A080339(#)]` -/
def P12228108704253803968.Spec : Prop :=
  ∀ n, P12228108704253803968.a n = A143329 (n + 1)

end A143329

/-!
# A143330: G.f. satisfies: A(x) = (1 + x*A(x)^2)/(1 - x^2).

The programs for A143330, there is no canonical definition to state claims against.
-/

/-! ## A143330.P5944112652264710831

`A171199(n-char[1])`
-/

namespace A143330.P5944112652264710831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171199 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A143330.P5944112652264710831

/-! ## A143330.P2126150561679353534

`A171199(n)+A159075(n)`
-/

namespace A143330.P2126150561679353534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171199 n + A159075 n

end

end A143330.P2126150561679353534

/-! ## A143330.P12097641897298118082

`A171199(n)-A063524(n)`
-/

namespace A143330.P12097641897298118082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171199 n - A063524 n

end

end A143330.P12097641897298118082

/-! ## A143330.P17218521017381890307

`A171199(n)/A373565(n)`
-/

namespace A143330.P17218521017381890307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171199 n : ℚ) / (A373565 n : ℚ)

end

end A143330.P17218521017381890307

/-! ## A143330.P1580010658619795252

`ceil(A171199(n)/A141044(n))`
-/

namespace A143330.P1580010658619795252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171199 n : ℚ) / (A141044 n : ℚ)⌉

end

end A143330.P1580010658619795252

/-! ## A143330.P16381303203917375615

`A171199(n)-A042950(n)%2`
-/

namespace A143330.P16381303203917375615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171199 n - Int.tmod (A042950 n) 2

end

end A143330.P16381303203917375615

/-! ## A143330.P2208337949630981337

`A199969(n+1)+A171199(n)-n`
-/

namespace A143330.P2208337949630981337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + (A171199 n - (n : ℤ))

end

end A143330.P2208337949630981337

/-! ## A143330.P6895235791594374802

`A171199(n)^A001221(A136548(n+1))`
-/

namespace A143330.P6895235791594374802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171199 n : ℚ) ^ (A001221 (A136548 (n + 1)).toNat : ℤ)

end

end A143330.P6895235791594374802

/-! ## A143330.P6057574196235802548

`A171199(n)/A171199(n*A063524(n))`
-/

namespace A143330.P6057574196235802548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171199 n : ℚ) / (A171199 ((n : ℤ) * A063524 n).toNat : ℚ)

end

end A143330.P6057574196235802548

/-! ## A143330.P12332283563220984804

`A171199(n)/A014963((n²+1)*ceil(atan(n+1)))`
-/

namespace A143330.P12332283563220984804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171199 n : ℚ) / (A014963 ((n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉).toNat : ℚ)

end

end A143330.P12332283563220984804

/-!
# A143331: Lengths of successive runs of 0's in the Thue-Morse sequence A010060.

The programs for A143331, the canonical program `A143331.P16828638926480326570` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143331 has offset 1).

The definition of A143331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143331.P16828638926480326570

`A026465(2*n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A143331

/-- `A026465(2*n+1)` -/
def P16828638926480326570.Spec : Prop :=
  ∀ n, P16828638926480326570.a n = A143331 (n + 1)

theorem P16828638926480326570.correct : P16828638926480326570.Spec := by
  intro n
  simp only [A143331, Nat.add_sub_cancel]

end A143331

/-! ## A143331.P14100501949931825461

`floor(sqrt(p?[A254655(n+1)]))`
-/

namespace A143331.P14100501949931825461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A143331.P14100501949931825461

namespace A143331

/-- `floor(sqrt(p?[A254655(n+1)]))` -/
def P14100501949931825461.Spec : Prop :=
  ∀ n, P14100501949931825461.a n = A143331 (n + 1)

end A143331

/-! ## A143331.P841940902087607188

`A285959(n+1)-A285973(n+1)`
-/

namespace A143331.P841940902087607188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - A285973 (n + 1)

end

end A143331.P841940902087607188

namespace A143331

/-- `A285959(n+1)-A285973(n+1)` -/
def P841940902087607188.Spec : Prop :=
  ∀ n, P841940902087607188.a n = A143331 (n + 1)

theorem P841940902087607188.correct : P841940902087607188.Spec := by
  intro n
  simp only [A143331, Nat.add_sub_cancel, A143331.P841940902087607188.a, A143331.P16828638926480326570.a, A026465, A026465.P4870457713372314206.a, A285959, A285959.P12122029514880620375.a, A285973, A285973.P13794099816013091422.a, A104248, A104248.P3887207961911586058.a, A171947, A171947.P16384979975700383487.f1, A171947.P16384979975700383487.f2, A171947.P16384979975700383487.a, A191254, A191254.P17375190648081682118.a, A285961, A285961.P11025727463194114248.a, A091785, A091785.P17722584434212151531.a, A036554, A036554.P8175060370953883075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143331

/-! ## A143331.P11483035500409528665

`A104248(n+1)+A285972(n+1)-A285960(n+1)`
-/

namespace A143331.P11483035500409528665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (n + 1) + (A285972 (n + 1) - A285960 (n + 1))

end

end A143331.P11483035500409528665

namespace A143331

/-- `A104248(n+1)+A285972(n+1)-A285960(n+1)` -/
def P11483035500409528665.Spec : Prop :=
  ∀ n, P11483035500409528665.a n = A143331 (n + 1)

end A143331

/-! ## A143331.P4683213288012772595

`Δ[comp[A091785(n+1)]]`
-/

namespace A143331.P4683213288012772595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143331.P4683213288012772595

namespace A143331

/-- `Δ[comp[A091785(n+1)]]` -/
def P4683213288012772595.Spec : Prop :=
  ∀ n, P4683213288012772595.a n = A143331 (n + 1)

end A143331

/-! ## A143331.P7234037324643267515

`Δ[comp[A171946(2*n+1)]]`
-/

namespace A143331.P7234037324643267515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143331.P7234037324643267515

namespace A143331

/-- `Δ[comp[A171946(2*n+1)]]` -/
def P7234037324643267515.Spec : Prop :=
  ∀ n, P7234037324643267515.a n = A143331 (n + 1)

end A143331

/-! ## A143331.P12216261347022364962

`Δ[lt[A292118(n), 2]]`
-/

namespace A143331.P12216261347022364962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143331.P12216261347022364962

namespace A143331

/-- `Δ[lt[A292118(n), 2]]` -/
def P12216261347022364962.Spec : Prop :=
  ∀ n, P12216261347022364962.a n = A143331 (n + 1)

end A143331

/-! ## A143331.P4486018986537878160

`A284792(A284790(n+1))+1`
-/

namespace A143331.P4486018986537878160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284792 (A284790 (n + 1)).toNat + 1

end

end A143331.P4486018986537878160

namespace A143331

/-- `A284792(A284790(n+1))+1` -/
def P4486018986537878160.Spec : Prop :=
  ∀ n, P4486018986537878160.a n = A143331 (n + 1)

end A143331

/-!
# A143333: Pascal's triangle binomial(n,m) read by rows, all even elements replaced by zero.

The programs for A143333, the canonical program `A143333.P4500561417353850854` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143333 has offset 0).

The definition of A143333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143333.P4500561417353850854

`A007318(n)*A047999(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A143333

/-- `A007318(n)*A047999(n)` -/
def P4500561417353850854.Spec : Prop :=
  ∀ n, P4500561417353850854.a n = A143333 n

theorem P4500561417353850854.correct : P4500561417353850854.Spec := by
  intro n
  simp only [A143333]

end A143333

/-! ## A143333.P14926310087670456951

`A047999(n)*A319861(n)`
-/

namespace A143333.P14926310087670456951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A319861 n

end

end A143333.P14926310087670456951

namespace A143333

/-- `A047999(n)*A319861(n)` -/
def P14926310087670456951.Spec : Prop :=
  ∀ n, P14926310087670456951.a n = A143333 n

end A143333

/-! ## A143333.P16475218364067408150

`A008459(n)%A028326(n)`
-/

namespace A143333.P16475218364067408150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008459 n) (A028326 n)

end

end A143333.P16475218364067408150

namespace A143333

/-- `A008459(n)%A028326(n)` -/
def P16475218364067408150.Spec : Prop :=
  ∀ n, P16475218364067408150.a n = A143333 n

end A143333

/-! ## A143333.P8449664956357081672

`lcm(A007318(n), A143200(n))`
-/

namespace A143333.P8449664956357081672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A143200 n)

end

end A143333.P8449664956357081672

namespace A143333

/-- `lcm(A007318(n), A143200(n))` -/
def P8449664956357081672.Spec : Prop :=
  ∀ n, (P8449664956357081672.a n : ℤ) = A143333 n

end A143333

/-! ## A143333.P8587538602516739466

`lcm(A108086(n), A166282(n))`
-/

namespace A143333.P8587538602516739466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108086 n) (A166282 n)

end

end A143333.P8587538602516739466

namespace A143333

/-- `lcm(A108086(n), A166282(n))` -/
def P8587538602516739466.Spec : Prop :=
  ∀ n, (P8587538602516739466.a n : ℤ) = A143333 n

end A143333

/-! ## A143333.P12781198939004174715

`and(A143200(n), A183154(n))`
-/

namespace A143333.P12781198939004174715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143200 n) (A183154 n)

end

end A143333.P12781198939004174715

namespace A143333

/-- `and(A143200(n), A183154(n))` -/
def P12781198939004174715.Spec : Prop :=
  ∀ n, P12781198939004174715.a n = A143333 n

end A143333

/-! ## A143333.P14345318603952189977

`and(A143200(n), A319861(n))`
-/

namespace A143333.P14345318603952189977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143200 n) (A319861 n)

end

end A143333.P14345318603952189977

namespace A143333

/-- `and(A143200(n), A319861(n))` -/
def P14345318603952189977.Spec : Prop :=
  ∀ n, P14345318603952189977.a n = A143333 n

end A143333

/-! ## A143333.P2422591405644043687

`A166282(n)²*A007318(n)`
-/

namespace A143333.P2422591405644043687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 n ^ 2 * A007318 n

end

end A143333.P2422591405644043687

namespace A143333

/-- `A166282(n)²*A007318(n)` -/
def P2422591405644043687.Spec : Prop :=
  ∀ n, P2422591405644043687.a n = A143333 n

end A143333

/-! ## A143333.P12076468897849541338

`(1-A219463(n))*A007318(n)`
-/

namespace A143333.P12076468897849541338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A219463 n) * A007318 n

end

end A143333.P12076468897849541338

namespace A143333

/-- `(1-A219463(n))*A007318(n)` -/
def P12076468897849541338.Spec : Prop :=
  ∀ n, P12076468897849541338.a n = A143333 n

theorem P12076468897849541338.correct : P12076468897849541338.Spec := by
  intro n
  simp only [A143333, Nat.add_sub_cancel, A143333.P12076468897849541338.a, A143333.P4500561417353850854.a, A007318, A007318.P302227728145965961.a, A047999, A047999.P4496697157608863547.a, A219463, A219463.P16758991508588374760.a, A008975, A008975.P8745923045402742944.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143333

/-! ## A143333.P16326310217348130032

`A028326(n)/2*A047999(n)`
-/

namespace A143333.P16326310217348130032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A047999 n : ℚ)

end

end A143333.P16326310217348130032

namespace A143333

/-- `A028326(n)/2*A047999(n)` -/
def P16326310217348130032.Spec : Prop :=
  ∀ n, P16326310217348130032.a n = (A143333 n : ℚ)

theorem P16326310217348130032.correct : P16326310217348130032.Spec := by
  intro n
  simp only [A143333, Nat.add_sub_cancel, A143333.P16326310217348130032.a, A143333.P4500561417353850854.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A047999, A047999.P4496697157608863547.a, A008975, A008975.P8745923045402742944.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143333

/-! ## A143333.P13841026328107105832

`and(1, A110813(n))*A007318(n)`
-/

namespace A143333.P13841026328107105832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110813 n) * A007318 n

end

end A143333.P13841026328107105832

namespace A143333

/-- `and(1, A110813(n))*A007318(n)` -/
def P13841026328107105832.Spec : Prop :=
  ∀ n, P13841026328107105832.a n = A143333 n

end A143333

/-! ## A143333.P1414854338341109060

`and(1, A134346(n))*A007318(n)`
-/

namespace A143333.P1414854338341109060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A134346 n) * A007318 n

end

end A143333.P1414854338341109060

namespace A143333

/-- `and(1, A134346(n))*A007318(n)` -/
def P1414854338341109060.Spec : Prop :=
  ∀ n, P1414854338341109060.a n = A143333 n

end A143333

/-! ## A143333.P17202507193870598106

`A007318(2*n-n)*and(1, A007318(n))`
-/

namespace A143333.P17202507193870598106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n - n) * Int.land 1 (A007318 n)

end

end A143333.P17202507193870598106

namespace A143333

/-- `A007318(2*n-n)*and(1, A007318(n))` -/
def P17202507193870598106.Spec : Prop :=
  ∀ n, P17202507193870598106.a n = A143333 n

end A143333

/-! ## A143333.P6205118315940946559

`ceil(A134059(n)/3)%2*ceil(A134059(n)/3)`
-/

namespace A143333.P6205118315940946559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A134059 n : ℚ) / 3⌉ 2 * ⌈(A134059 n : ℚ) / 3⌉

end

end A143333.P6205118315940946559

namespace A143333

/-- `ceil(A134059(n)/3)%2*ceil(A134059(n)/3)` -/
def P6205118315940946559.Spec : Prop :=
  ∀ n, P6205118315940946559.a n = A143333 n

end A143333

/-! ## A143333.P12568795244651378397

`A000007(val(A007318(n), 2))*A007318(n)`
-/

namespace A143333.P12568795244651378397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A007318 n).toNat 2) * A007318 n

end

end A143333.P12568795244651378397

namespace A143333

/-- `A000007(val(A007318(n), 2))*A007318(n)` -/
def P12568795244651378397.Spec : Prop :=
  ∀ n, P12568795244651378397.a n = A143333 n

end A143333

/-! ## A143333.P2919252595190022708

`and(1, A007318(n))*A007318(A061579(n))`
-/

namespace A143333.P2919252595190022708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n) * A007318 (A061579 n).toNat

end

end A143333.P2919252595190022708

namespace A143333

/-- `and(1, A007318(n))*A007318(A061579(n))` -/
def P2919252595190022708.Spec : Prop :=
  ∀ n, P2919252595190022708.a n = A143333 n

end A143333

/-! ## A143333.P906942873323095585

`(A051597(n)-A051601(n))*A047999(n)`
-/

namespace A143333.P906942873323095585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051597 n - A051601 n) * A047999 n

end

end A143333.P906942873323095585

namespace A143333

/-- `(A051597(n)-A051601(n))*A047999(n)` -/
def P906942873323095585.Spec : Prop :=
  ∀ n, P906942873323095585.a n = A143333 n

theorem P906942873323095585.correct : P906942873323095585.Spec := by
  intro n
  simp only [A143333, Nat.add_sub_cancel, A143333.P906942873323095585.a, A143333.P4500561417353850854.a, A007318, A007318.P302227728145965961.a, A047999, A047999.P4496697157608863547.a, A051597, A051597.P4383731425265306086.a, A051601, A051601.P16211897946955376091.a, A008975, A008975.P8745923045402742944.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A014410, A014410.P12420516935091573692.a, A028263, A028263.P3177418721069471964.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003057, A003057.P16308936517940939054.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143333

/-! ## A143333.P6787719341967153270

`ceil(A124928(n)/A157532(n+1))*A047999(n)`
-/

namespace A143333.P6787719341967153270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124928 n : ℚ) / (A157532 (n + 1) : ℚ)⌉ * A047999 n

end

end A143333.P6787719341967153270

namespace A143333

/-- `ceil(A124928(n)/A157532(n+1))*A047999(n)` -/
def P6787719341967153270.Spec : Prop :=
  ∀ n, P6787719341967153270.a n = A143333 n

end A143333

/-! ## A143333.P6229416571732593087

`A047999(n)*A355604(n)`
-/

namespace A143333.P6229416571732593087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A355604 n

end

end A143333.P6229416571732593087

namespace A143333

/-- `A047999(n)*A355604(n)` -/
def P6229416571732593087.Spec : Prop :=
  ∀ n, P6229416571732593087.a n = A143333 n

end A143333

/-! ## A143333.P3159712684894378749

`and(A143200(n), A355604(n))`
-/

namespace A143333.P3159712684894378749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143200 n) (A355604 n)

end

end A143333.P3159712684894378749

namespace A143333

/-- `and(A143200(n), A355604(n))` -/
def P3159712684894378749.Spec : Prop :=
  ∀ n, P3159712684894378749.a n = A143333 n

end A143333

/-!
# A143334: Only odd and even version of Pascal's triangle sequence: t(n,m)=If[m*(n - m) == 0, 1, Mod[Binomial[n, m], 2]*Prime[n] + (1 - Mod[Binomial[n, m], 2])*(Prime[n] + 1)].

The programs for A143334, there is no canonical definition to state claims against.
-/

/-! ## A143334.P1164704961259729899

`A056796(A144397(n+1))`
-/

namespace A143334.P1164704961259729899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056796 (A144397 (n + 1)).toNat

end

end A143334.P1164704961259729899

/-! ## A143334.P15119175598353323304

`A070939((n+1)*A230994(n+1))`
-/

namespace A143334.P15119175598353323304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ((n + 1 : ℤ) * A230994 (n + 1)).toNat

end

end A143334.P15119175598353323304

/-! ## A143334.P16656155076282872693

`A000523((n+1)*A230994(n+1)+1)+1`
-/

namespace A143334.P16656155076282872693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ((n + 1 : ℤ) * A230994 (n + 1) + 1).toNat + 1

end

end A143334.P16656155076282872693

/-! ## A143334.P1876932676828004216

`A327704(A310709(A297866(n+1)))`
-/

namespace A143334.P1876932676828004216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327704 (A310709 (A297866 (n + 1)).toNat).toNat

end

end A143334.P1876932676828004216

/-! ## A143334.P7277509626597844533

`A070939(A098356(n)*A299668(n+1))`
-/

namespace A143334.P7277509626597844533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A098356 n * A299668 (n + 1)).toNat

end

end A143334.P7277509626597844533

/-!
# A143335: Expansion of (1 - 2*x^3 - x^4 - 2*x^5 - x^6 - x^7 - x^8 + 2*x^9)/(1 + x - x^3 - x^4 - x^5 - x^6 - x^7 + x^9 + x^10).

The programs for A143335, the canonical program `A143335.P7667389515780326742` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143335 has offset 0).

The definition of A143335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^3-x^4-2x^5-x^6-x^7-x^8+2x^9)/(1+x-x^3-x^4-x^5-x^6-x^7+x^9+x^10))` (program `A143335.P7667389515780326742`, by `A143335.P7667389515780326742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143335.P7667389515780326742

`ogf((1-2x^3-x^4-2x^5-x^6-x^7-x^8+2x^9)/(1+x-x^3-x^4-x^5-x^6-x^7+x^9+x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143335

/-- `ogf((1-2x^3-x^4-2x^5-x^6-x^7-x^8+2x^9)/(1+x-x^3-x^4-x^5-x^6-x^7+x^9+x^10))` -/
def P7667389515780326742.Spec : Prop :=
  ∀ n, P7667389515780326742.a n = A143335 n

theorem P7667389515780326742.correct : P7667389515780326742.Spec := by
  intro n
  simp only [A143335]

end A143335

/-!
# A143336: Expansion of K(k) * (2 * E(k) - K(k)) / (Pi/2)^2 in powers of q where E(k), K(k) are complete elliptic integrals and q = exp(-Pi * K(k') / K(k)).

The programs for A143336, there is no canonical definition to state claims against.
-/

/-! ## A143336.P1933849868967894890

`(-1)^n*A122858(n)`
-/

namespace A143336.P1933849868967894890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122858 n

end

end A143336.P1933849868967894890

/-! ## A143336.P4204396097163797119

`A122858(lcm(2, n))`
-/

namespace A143336.P4204396097163797119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 (Nat.lcm 2 n)

end

end A143336.P4204396097163797119

/-! ## A143336.P7913831580410817373

`A122858(n)/(-1)^n`
-/

namespace A143336.P7913831580410817373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122858 n : ℚ) / ((-1) ^ n : ℚ)

end

end A143336.P7913831580410817373

/-! ## A143336.P11786169818410070489

`A122858(2*gcd(n, ∑[n]))`
-/

namespace A143336.P11786169818410070489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 (2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A143336.P11786169818410070489

/-! ## A143336.P5358819107477623148

`A122858(n*(n%2+1))`
-/

namespace A143336.P5358819107477623148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 (n * (n % 2 + 1))

end

end A143336.P5358819107477623148

/-! ## A143336.P12158414664012283425

`A122858(n*(and(1, n)+1))`
-/

namespace A143336.P12158414664012283425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 (n * (Nat.land 1 n + 1))

end

end A143336.P12158414664012283425

/-! ## A143336.P7405222897829550855

`A122858(A109043(n))`
-/

namespace A143336.P7405222897829550855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 (A109043 n).toNat

end

end A143336.P7405222897829550855

/-! ## A143336.P1261219280966642282

`A122858(2*A026741(n))`
-/

namespace A143336.P1261219280966642282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 (2 * A026741 n).toNat

end

end A143336.P1261219280966642282

/-! ## A143336.P15305939350685008906

`A122858(n*A000034(n))`
-/

namespace A143336.P15305939350685008906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122858 ((n : ℤ) * A000034 n).toNat

end

end A143336.P15305939350685008906

/-! ## A143336.P2697842111190059827

`A000038(n)-abs(A122858(n))`
-/

namespace A143336.P2697842111190059827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - |A122858 n|

end

end A143336.P2697842111190059827

/-!
# A143337: Expansion of K(k) * (6 * E(k) - (1 + 4*k'^2) * K(k)) / (Pi/2)^2 in powers of q where E(k), K(k) are complete elliptic integrals and q = exp(-Pi * K(k') / K(k)).

The programs for A143337, there is no canonical definition to state claims against.
-/

/-! ## A143337.P14587296090691911403

`(-1)^n*A006352(n)`
-/

namespace A143337.P14587296090691911403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006352 n

end

end A143337.P14587296090691911403

/-! ## A143337.P5168754347480796100

`A006352(n)*A033999(n)`
-/

namespace A143337.P5168754347480796100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n * A033999 n

end

end A143337.P5168754347480796100

/-! ## A143337.P10139514134935329396

`A006352(n)*A009001(2*n)`
-/

namespace A143337.P10139514134935329396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n * A009001 (2 * n)

end

end A143337.P10139514134935329396

/-! ## A143337.P17587363297710327469

`A006352(n)*A165326(n+1)`
-/

namespace A143337.P17587363297710327469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n * A165326 (n + 1)

end

end A143337.P17587363297710327469

/-! ## A143337.P2007876734427939506

`A006352(n)/A033999(A007947(n+4))`
-/

namespace A143337.P2007876734427939506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006352 n : ℚ) / (A033999 (A007947 (n + 4)).toNat : ℚ)

end

end A143337.P2007876734427939506

/-! ## A143337.P9844091636483940902

`A006352(n)*A054354(A054353(n+1))`
-/

namespace A143337.P9844091636483940902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n * A054354 (A054353 (n + 1)).toNat

end

end A143337.P9844091636483940902

/-! ## A143337.P16017233847145193945

`A006352(n)*A195017(A000040(n+1))`
-/

namespace A143337.P16017233847145193945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n * A195017 (A000040 (n + 1)).toNat

end

end A143337.P16017233847145193945

/-! ## A143337.P10829477718152560234

`(2*A122858(2*n)-A122858(n))*A033999(n)`
-/

namespace A143337.P10829477718152560234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A122858 (2 * n) - A122858 n) * A033999 n

end

end A143337.P10829477718152560234

/-! ## A143337.P10468403296475140027

`A006352(n)/A057079(3*n)`
-/

namespace A143337.P10468403296475140027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006352 n : ℚ) / (A057079 (3 * n) : ℚ)

end

end A143337.P10468403296475140027

/-! ## A143337.P5504911330564823282

`A006352(n)*A122858(n)/A143336(n)`
-/

namespace A143337.P5504911330564823282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006352 n * A122858 n : ℚ) / (A143336 n : ℚ)

end

end A143337.P5504911330564823282

/-!
# A143338: G.f. A(x) satisfies A(x) = 1 + x*A(x)^3*A(-x).

The programs for A143338, there is no canonical definition to state claims against.
-/

/-! ## A143338.P8157759252188461774

`A184832((n-1)^n+1)+n!`
-/

namespace A143338.P8157759252188461774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184832 (((n : ℤ) - 1) ^ n + 1).toNat + (Nat.factorial n : ℤ)

end

end A143338.P8157759252188461774

/-! ## A143338.P8543746037422689308

`A075162(A148440(n))`
-/

namespace A143338.P8543746037422689308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075162 (A148440 n).toNat

end

end A143338.P8543746037422689308

/-!
# A143339: G.f. satisfies: A(x) = 1 + x*A(x)^2/A(-x).

The programs for A143339, there is no canonical definition to state claims against.
-/

/-! ## A143339.P2967133506911131092

`A143555(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A143339.P2967133506911131092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143555 n - a (n - 2)

end

end A143339.P2967133506911131092

/-! ## A143339.P7370558096776456891

`A349749(2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A143339.P7370558096776456891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A349749 (2 * a (n - 2)).toNat

end

end A143339.P7370558096776456891

/-! ## A143339.P11559266776609981521

`A128539(A079512(n))`
-/

namespace A143339.P11559266776609981521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128539 (A079512 n).toNat

end

end A143339.P11559266776609981521

/-!
# A143340: G.f. satisfies: A(x) = 1 + x*A(x)^3/A(-x).

The programs for A143340, there is no canonical definition to state claims against.
-/

/-! ## A143340.P14854409369663195818

`∑{d}[A048486(A006906(n)), #]`
-/

namespace A143340.P14854409369663195818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048486 (A006906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A143340.P14854409369663195818

/-!
# A143341: G.f. satisfies: A(x) = 1 + x*A(x)^4/A(-x).

The programs for A143341, there is no canonical definition to state claims against.
-/

/-! ## A143341.P350155163639212800

`A345195(3*n)+A335550(A129952(n))`
-/

namespace A143341.P350155163639212800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345195 (3 * n) + A335550 (A129952 n).toNat

end

end A143341.P350155163639212800

/-! ## A143341.P16458037209681539530

`A005842(∑[A097067(n)])+n*A179567(n+1)`
-/

namespace A143341.P16458037209681539530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005842 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ) * A179567 (n + 1)

end

end A143341.P16458037209681539530

/-!
# A143342: G.f. satisfies: A(x) = 1 + x*A(x)^5/A(-x).

The programs for A143342, there is no canonical definition to state claims against.
-/

/-! ## A143342.P4532285401129935932

`A194382(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A143342.P4532285401129935932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194382 (2 * a (n - 1)).toNat

end

end A143342.P4532285401129935932

/-!
# A143343: Triangle T(n,k) (n>=0, 1<=k<=n+1) read by rows: T(n,1)=1 for n>=0, T(1,2)=2. If n>=3 is odd then T(n,k)=1 for all k. If n>=3 is even then if k is prime and k-1 divides n then T(n,k)=k, otherwise T(n,k)=1.

The programs for A143343, there is no canonical definition to state claims against.
-/

/-! ## A143343.P13610124390588206968

`gcd(A247501(n)+1, A132813(n))`
-/

namespace A143343.P13610124390588206968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247501 n + 1) (A132813 n)

end

end A143343.P13610124390588206968

/-! ## A143343.P17166648862844361686

`A213999(gcd(n, A308680(A346085(n))))`
-/

namespace A143343.P17166648862844361686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (Int.gcd (n : ℤ) (A308680 (A346085 n).toNat))

end

end A143343.P17166648862844361686

/-! ## A143343.P13983924939576000256

`gcd(A131830(n), A141310(A131689(n)))`
-/

namespace A143343.P13983924939576000256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131830 n) (A141310 (A131689 n).toNat)

end

end A143343.P13983924939576000256

/-! ## A143343.P1963299418446461146

`gcd(A002260(n+1), A054899(A029744(n+1)))`
-/

namespace A143343.P1963299418446461146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A054899 (A029744 (n + 1)).toNat)

end

end A143343.P1963299418446461146

/-! ## A143343.P13291318513474284083

`gcd(A002260(n+1), A057359(A117792(n)))`
-/

namespace A143343.P13291318513474284083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A057359 (A117792 n).toNat)

end

end A143343.P13291318513474284083

/-!
# A143344: First differences of A022941.

The programs for A143344, there is no canonical definition to state claims against.
-/

/-! ## A143344.P6363259697046657652

`Δ[A022941(n+1)]`
-/

namespace A143344.P6363259697046657652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143344.P6363259697046657652

/-! ## A143344.P17377933137211078885

`Δ[A022940(n+1)-char[1]]`
-/

namespace A143344.P17377933137211078885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143344.P17377933137211078885

/-! ## A143344.P17960525555578172577

`A022941(n+2)-A022941(n+1)`
-/

namespace A143344.P17960525555578172577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - A022941 (n + 1)

end

end A143344.P17960525555578172577

/-! ## A143344.P17234726122208477178

`A156031(Δ[n²])`
-/

namespace A143344.P17234726122208477178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A143344.P17234726122208477178

/-! ## A143344.P3555662092254295538

`record[A156031(n+1)^((n+1)%2)]`
-/

namespace A143344.P3555662092254295538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143344.P3555662092254295538

/-! ## A143344.P10072335750871725918

`record[A156031(A000265(n+1))]`
-/

namespace A143344.P10072335750871725918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143344.P10072335750871725918

/-! ## A143344.P5492754877719753101

`A167151(A225850(A156031(2*n+1)))`
-/

namespace A143344.P5492754877719753101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (A225850 (A156031 (2 * n + 1)).toNat).toNat

end

end A143344.P5492754877719753101

/-! ## A143344.P11410829657588964437

`A156031(A005408(n))%A002522(n+1)`
-/

namespace A143344.P11410829657588964437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156031 (A005408 n).toNat) (A002522 (n + 1))

end

end A143344.P11410829657588964437

/-! ## A143344.P16328767637353496558

`A156031(2*(n+1))-record[Δ[A156031(n+2)]]`
-/

namespace A143344.P16328767637353496558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156031 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143344.P16328767637353496558

/-! ## A143344.P1544650525750846121

`A000196(A352874(n+1)+A000196(n))+n`
-/

namespace A143344.P1544650525750846121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A352874 (n + 1) + A000196 n).toNat + (n : ℤ)

end

end A143344.P1544650525750846121

/-!
# A143346: The number of distinct prime factors occurring in the numbers between n^2 and (n+1)^2.

The programs for A143346, there is no canonical definition to state claims against.
-/

/-! ## A143346.P5563850426523996939

`2*(n+1)-A120254(n+1)`
-/

namespace A143346.P5563850426523996939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A120254 (n + 1)

end

end A143346.P5563850426523996939

/-! ## A143346.P10956037557656855082

`n+2-A120254(n-log2(1/2))+n`
-/

namespace A143346.P10956037557656855082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A120254 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + (n : ℤ)

end

end A143346.P10956037557656855082

/-! ## A143346.P14749660596640052196

`A005408(n)+1-A120254(n+1)`
-/

namespace A143346.P14749660596640052196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A120254 (n + 1))

end

end A143346.P14749660596640052196

/-! ## A143346.P3264464901977341229

`A005843(n)+2-A120254(n+1)`
-/

namespace A143346.P3264464901977341229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A120254 (n + 1))

end

end A143346.P3264464901977341229

/-! ## A143346.P3583636346948516802

`A016789(n)-(A120254(n+1)+n)`
-/

namespace A143346.P3583636346948516802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A120254 (n + 1) + (n : ℤ))

end

end A143346.P3583636346948516802

/-! ## A143346.P11244685228800080307

`A004273(n+2)-(A120254(n+1)+1)`
-/

namespace A143346.P11244685228800080307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2) - (A120254 (n + 1) + 1)

end

end A143346.P11244685228800080307

/-! ## A143346.P9840245232451876569

`n+1-(A120254(n+1)+A001478(n+1))`
-/

namespace A143346.P9840245232451876569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A120254 (n + 1) + A001478 (n + 1))

end

end A143346.P9840245232451876569

/-! ## A143346.P6097906807059932293

`A005408(n)-A023443(A120254(n+1))`
-/

namespace A143346.P6097906807059932293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A023443 (A120254 (n + 1)).toNat

end

end A143346.P6097906807059932293

/-!
# A143348: a(n) = -(-1)^n times sum of divisors of n.

The programs for A143348, the canonical program `A143348.P8640106722930724051` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143348 has offset 1).

The definition of A143348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143348.P8640106722930724051

`(-1)^n*∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143348

/-- `(-1)^n*∑{d}[n+1, #]` -/
def P8640106722930724051.Spec : Prop :=
  ∀ n, P8640106722930724051.a n = A143348 (n + 1)

theorem P8640106722930724051.correct : P8640106722930724051.Spec := by
  intro n
  simp only [A143348, Nat.add_sub_cancel]

end A143348

/-! ## A143348.P13430443045025869080

`∑{d}[n+1, #/(-1)^n]`
-/

namespace A143348.P13430443045025869080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / ((-1) ^ n : ℚ)

end

end A143348.P13430443045025869080

namespace A143348

/-- `∑{d}[n+1, #/(-1)^n]` -/
def P13430443045025869080.Spec : Prop :=
  ∀ n, P13430443045025869080.a n = (A143348 (n + 1) : ℚ)

end A143348

/-! ## A143348.P3772383885974341455

`(-1)^n*A000203(n+1)`
-/

namespace A143348.P3772383885974341455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000203 (n + 1)

end

end A143348.P3772383885974341455

namespace A143348

/-- `(-1)^n*A000203(n+1)` -/
def P3772383885974341455.Spec : Prop :=
  ∀ n, P3772383885974341455.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P3347914640888992631

`(-1)^n*A245092(Δ[n²])`
-/

namespace A143348.P3347914640888992631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A143348.P3347914640888992631

namespace A143348

/-- `(-1)^n*A245092(Δ[n²])` -/
def P3347914640888992631.Spec : Prop :=
  ∀ n, P3347914640888992631.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P8205345482059907897

`(A088580(n+1)-1)*(-1)^n`
-/

namespace A143348.P8205345482059907897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * (-1) ^ n

end

end A143348.P8205345482059907897

namespace A143348

/-- `(A088580(n+1)-1)*(-1)^n` -/
def P8205345482059907897.Spec : Prop :=
  ∀ n, P8205345482059907897.a n = A143348 (n + 1)

theorem P8205345482059907897.correct : P8205345482059907897.Spec := by
  intro n
  simp only [A143348, Nat.add_sub_cancel, A143348.P8205345482059907897.a, A143348.P8640106722930724051.f1, A143348.P8640106722930724051.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143348

/-! ## A143348.P11923301906299631352

`(A155085(n+1)-(n+1))*(-1)^n`
-/

namespace A143348.P11923301906299631352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) * (-1) ^ n

end

end A143348.P11923301906299631352

namespace A143348

/-- `(A155085(n+1)-(n+1))*(-1)^n` -/
def P11923301906299631352.Spec : Prop :=
  ∀ n, P11923301906299631352.a n = A143348 (n + 1)

theorem P11923301906299631352.correct : P11923301906299631352.Spec := by
  intro n
  simp only [A143348, Nat.add_sub_cancel, A143348.P11923301906299631352.a, A143348.P8640106722930724051.f1, A143348.P8640106722930724051.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143348

/-! ## A143348.P10494249514120514044

`Δ[A160664(n)]*A033999(n)`
-/

namespace A143348.P10494249514120514044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A143348.P10494249514120514044

namespace A143348

/-- `Δ[A160664(n)]*A033999(n)` -/
def P10494249514120514044.Spec : Prop :=
  ∀ n, P10494249514120514044.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P11422963857277981031

`A000203(n+1)*A033999(n)`
-/

namespace A143348.P11422963857277981031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A033999 n

end

end A143348.P11422963857277981031

namespace A143348

/-- `A000203(n+1)*A033999(n)` -/
def P11422963857277981031.Spec : Prop :=
  ∀ n, P11422963857277981031.a n = A143348 (n + 1)

theorem P11422963857277981031.correct : P11422963857277981031.Spec := by
  intro n
  simp only [A143348, Nat.add_sub_cancel, A143348.P11422963857277981031.a, A143348.P8640106722930724051.f1, A143348.P8640106722930724051.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143348

/-! ## A143348.P7653382560036942688

`A272027(n+1)/A174971(n)`
-/

namespace A143348.P7653382560036942688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / (A174971 n : ℚ)

end

end A143348.P7653382560036942688

namespace A143348

/-- `A272027(n+1)/A174971(n)` -/
def P7653382560036942688.Spec : Prop :=
  ∀ n, P7653382560036942688.a n = (A143348 (n + 1) : ℚ)

end A143348

/-! ## A143348.P5023720124685806195

`A346865(n+1)/A121613(n)`
-/

namespace A143348.P5023720124685806195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346865 (n + 1) : ℚ) / (A121613 n : ℚ)

end

end A143348.P5023720124685806195

namespace A143348

/-- `A346865(n+1)/A121613(n)` -/
def P5023720124685806195.Spec : Prop :=
  ∀ n, P5023720124685806195.a n = (A143348 (n + 1) : ℚ)

end A143348

/-! ## A143348.P4254171734188258662

`A115607(n+1)-A146076(n+1)`
-/

namespace A143348.P4254171734188258662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (n + 1) - A146076 (n + 1)

end

end A143348.P4254171734188258662

namespace A143348

/-- `A115607(n+1)-A146076(n+1)` -/
def P4254171734188258662.Spec : Prop :=
  ∀ n, P4254171734188258662.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P6176070083401401916

`A038712(n+1)*A115607(n+1)`
-/

namespace A143348.P6176070083401401916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A115607 (n + 1)

end

end A143348.P6176070083401401916

namespace A143348

/-- `A038712(n+1)*A115607(n+1)` -/
def P6176070083401401916.Spec : Prop :=
  ∀ n, P6176070083401401916.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P4434329336669457381

`A162419(n+1)/A002129(n+1)`
-/

namespace A143348.P4434329336669457381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162419 (n + 1) : ℚ) / (A002129 (n + 1) : ℚ)

end

end A143348.P4434329336669457381

namespace A143348

/-- `A162419(n+1)/A002129(n+1)` -/
def P4434329336669457381.Spec : Prop :=
  ∀ n, P4434329336669457381.a n = (A143348 (n + 1) : ℚ)

end A143348

/-! ## A143348.P12560569929521413197

`A000203(n+1)*A009001(2*n)`
-/

namespace A143348.P12560569929521413197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A009001 (2 * n)

end

end A143348.P12560569929521413197

namespace A143348

/-- `A000203(n+1)*A009001(2*n)` -/
def P12560569929521413197.Spec : Prop :=
  ∀ n, P12560569929521413197.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P17004649830109089972

`(A171977(n+1)-1)*A115607(n+1)`
-/

namespace A143348.P17004649830109089972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) - 1) * A115607 (n + 1)

end

end A143348.P17004649830109089972

namespace A143348

/-- `(A171977(n+1)-1)*A115607(n+1)` -/
def P17004649830109089972.Spec : Prop :=
  ∀ n, P17004649830109089972.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P2542097440225005051

`A113184(n+1)-2*A146076(n+1)`
-/

namespace A143348.P2542097440225005051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (n + 1) - 2 * A146076 (n + 1)

end

end A143348.P2542097440225005051

namespace A143348

/-- `A113184(n+1)-2*A146076(n+1)` -/
def P2542097440225005051.Spec : Prop :=
  ∀ n, P2542097440225005051.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P3626873255809501054

`A000203(n+1)/(-1)^A020639(n+2)`
-/

namespace A143348.P3626873255809501054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (-1 : ℚ) ^ (A020639 (n + 2) : ℤ)

end

end A143348.P3626873255809501054

namespace A143348

/-- `A000203(n+1)/(-1)^A020639(n+2)` -/
def P3626873255809501054.Spec : Prop :=
  ∀ n, P3626873255809501054.a n = (A143348 (n + 1) : ℚ)

end A143348

/-! ## A143348.P10188346066044767315

`A000203(lcm(2, n+1))-2*A000203(n+1)`
-/

namespace A143348.P10188346066044767315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lcm 2 (n + 1)) - 2 * A000203 (n + 1)

end

end A143348.P10188346066044767315

namespace A143348

/-- `A000203(lcm(2, n+1))-2*A000203(n+1)` -/
def P10188346066044767315.Spec : Prop :=
  ∀ n, P10188346066044767315.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P10106589622591352233

`A000203(n+1)*A008683(and(1, n-2)+1)`
-/

namespace A143348.P10106589622591352233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008683 (Int.land 1 ((n : ℤ) - 2) + 1).toNat

end

end A143348.P10106589622591352233

namespace A143348

/-- `A000203(n+1)*A008683(and(1, n-2)+1)` -/
def P10106589622591352233.Spec : Prop :=
  ∀ n, P10106589622591352233.a n = A143348 (n + 1)

end A143348

/-! ## A143348.P4106091175569567711

`A000203(n+1)/A008683(2-and(1, n-3))`
-/

namespace A143348.P4106091175569567711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A008683 (2 - Int.land 1 ((n : ℤ) - 3)).toNat : ℚ)

end

end A143348.P4106091175569567711

namespace A143348

/-- `A000203(n+1)/A008683(2-and(1, n-3))` -/
def P4106091175569567711.Spec : Prop :=
  ∀ n, P4106091175569567711.a n = (A143348 (n + 1) : ℚ)

end A143348

/-!
# A143349: Triangle read by rows: A000012 * A054524 = A000012 * A051731 * A128407.

The programs for A143349, the canonical program `A143349.P6165175952052510639` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143349 has offset 1).

The definition of A143349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143349.P6165175952052510639

`A010766(n+1)*A054527(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A143349

/-- `A010766(n+1)*A054527(n+1)` -/
def P6165175952052510639.Spec : Prop :=
  ∀ n, P6165175952052510639.a n = A143349 (n + 1)

theorem P6165175952052510639.correct : P6165175952052510639.Spec := by
  intro n
  simp only [A143349, Nat.add_sub_cancel]

end A143349

/-! ## A143349.P13922357684811170647

`A143469(n+1)/A010766(n+1)`
-/

namespace A143349.P13922357684811170647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143469 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A143349.P13922357684811170647

namespace A143349

/-- `A143469(n+1)/A010766(n+1)` -/
def P13922357684811170647.Spec : Prop :=
  ∀ n, P13922357684811170647.a n = (A143349 (n + 1) : ℚ)

end A143349

/-! ## A143349.P12108253630702608421

`A143469(n+1)/(A050206(n+2)-1)`
-/

namespace A143349.P12108253630702608421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143469 (n + 1) : ℚ) / (A050206 (n + 2) - 1 : ℚ)

end

end A143349.P12108253630702608421

namespace A143349

/-- `A143469(n+1)/(A050206(n+2)-1)` -/
def P12108253630702608421.Spec : Prop :=
  ∀ n, P12108253630702608421.a n = (A143349 (n + 1) : ℚ)

end A143349

/-! ## A143349.P15490580935055294612

`A008683(A002260(n+1))*A010766(n+1)`
-/

namespace A143349.P15490580935055294612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A010766 (n + 1)

end

end A143349.P15490580935055294612

namespace A143349

/-- `A008683(A002260(n+1))*A010766(n+1)` -/
def P15490580935055294612.Spec : Prop :=
  ∀ n, P15490580935055294612.a n = A143349 (n + 1)

end A143349

/-! ## A143349.P15850647354152554077

`A358877(n+1)^(1/3)*A008683(A002260(n+1))`
-/

namespace A143349.P15850647354152554077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A358877 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) * (A008683 (A002260 (n + 1)).toNat : ℝ)

end

end A143349.P15850647354152554077

namespace A143349

/-- `A358877(n+1)^(1/3)*A008683(A002260(n+1))` -/
def P15850647354152554077.Spec : Prop :=
  ∀ n, P15850647354152554077.a n = (A143349 (n + 1) : ℝ)

end A143349

/-!
# A143351: Expansion of x/(1 -x^2 -x^4 -x^7 -x^8 -x^9 -x^10).

The programs for A143351, the canonical program `A143351.P8328518390240535978` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143351 has offset 1).

The definition of A143351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^4-x^7-x^8-x^9-x^10))` (program `A143351.P8328518390240535978`, by `A143351.P8328518390240535978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143351.P11933880707993888510

`a(n-2)+a(n-4)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=0, a(6)=3, a(7)=1, a(8)=6, a(9)=3`
-/

namespace A143351.P11933880707993888510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 2, 0, 3, 1, 6, 3] fun n a =>
  a (n - 2) + a (n - 4) + a (n - 7) + a (n - 8) + a (n - 9) + a (n - 10)

end

end A143351.P11933880707993888510

namespace A143351

/-- `a(n-2)+a(n-4)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` -/
def P11933880707993888510.Spec : Prop :=
  ∀ n, (P11933880707993888510.a n : ℤ) = A143351 (n + 1)

end A143351

/-! ## A143351.P8328518390240535978

`ogf(1/(1-x^2-x^4-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143351

/-- `ogf(1/(1-x^2-x^4-x^7-x^8-x^9-x^10))` -/
def P8328518390240535978.Spec : Prop :=
  ∀ n, P8328518390240535978.a n = A143351 (n + 1)

theorem P8328518390240535978.correct : P8328518390240535978.Spec := by
  intro n
  simp only [A143351, Nat.add_sub_cancel]

end A143351

/-!
# A143352: Triangle read by rows, A051731 * A054524 = (A051731)^2 * A128407; 1<=k<=n.

The programs for A143352, the canonical program `A143352.P578810991757619496` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143352 has offset 1).

The definition of A143352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143352.P578810991757619496

`A054524(n+1)*A127170(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143352

/-- `A054524(n+1)*A127170(n+1)` -/
def P578810991757619496.Spec : Prop :=
  ∀ n, P578810991757619496.a n = A143352 (n + 1)

theorem P578810991757619496.correct : P578810991757619496.Spec := by
  intro n
  simp only [A143352, Nat.add_sub_cancel]

end A143352

/-! ## A143352.P18378882205123237771

`A054527(n+1)*A127170(n+1)`
-/

namespace A143352.P18378882205123237771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A127170 (n + 1)

end

end A143352.P18378882205123237771

namespace A143352

/-- `A054527(n+1)*A127170(n+1)` -/
def P18378882205123237771.Spec : Prop :=
  ∀ n, P18378882205123237771.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P11846778784508152094

`A054534(n+1)*A127170(n+1)`
-/

namespace A143352.P11846778784508152094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A127170 (n + 1)

end

end A143352.P11846778784508152094

namespace A143352

/-- `A054534(n+1)*A127170(n+1)` -/
def P11846778784508152094.Spec : Prop :=
  ∀ n, P11846778784508152094.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P8491427286413548130

`A000005(A010766(n+1))*A054524(n+1)`
-/

namespace A143352.P8491427286413548130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A010766 (n + 1)).toNat * A054524 (n + 1)

end

end A143352.P8491427286413548130

namespace A143352

/-- `A000005(A010766(n+1))*A054524(n+1)` -/
def P8491427286413548130.Spec : Prop :=
  ∀ n, P8491427286413548130.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P11008655834841449625

`A000005(A049834(n+1))*A054524(n+1)`
-/

namespace A143352.P11008655834841449625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049834 (n + 1)).toNat * A054524 (n + 1)

end

end A143352.P11008655834841449625

namespace A143352

/-- `A000005(A049834(n+1))*A054524(n+1)` -/
def P11008655834841449625.Spec : Prop :=
  ∀ n, P11008655834841449625.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P3280380089152791949

`A000005(A051537(n+1))*A054524(n+1)`
-/

namespace A143352.P3280380089152791949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051537 (n + 1)).toNat * A054524 (n + 1)

end

end A143352.P3280380089152791949

namespace A143352

/-- `A000005(A051537(n+1))*A054524(n+1)` -/
def P3280380089152791949.Spec : Prop :=
  ∀ n, P3280380089152791949.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P9419854576266091979

`A000005(A054531(n+1))*A054524(n+1)`
-/

namespace A143352.P9419854576266091979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054531 (n + 1)).toNat * A054524 (n + 1)

end

end A143352.P9419854576266091979

namespace A143352

/-- `A000005(A054531(n+1))*A054524(n+1)` -/
def P9419854576266091979.Spec : Prop :=
  ∀ n, P9419854576266091979.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P5046275814474786023

`A008683(A002260(n+1))*A127170(n+1)`
-/

namespace A143352.P5046275814474786023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A127170 (n + 1)

end

end A143352.P5046275814474786023

namespace A143352

/-- `A008683(A002260(n+1))*A127170(n+1)` -/
def P5046275814474786023.Spec : Prop :=
  ∀ n, P5046275814474786023.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P9923842967449969392

`A008683(A002262(n)+1)*A127170(n+1)`
-/

namespace A143352.P9923842967449969392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002262 n + 1).toNat * A127170 (n + 1)

end

end A143352.P9923842967449969392

namespace A143352

/-- `A008683(A002262(n)+1)*A127170(n+1)` -/
def P9923842967449969392.Spec : Prop :=
  ∀ n, P9923842967449969392.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P13972847978894638214

`A008683(A050873(n+1))*A127170(n+1)`
-/

namespace A143352.P13972847978894638214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050873 (n + 1)).toNat * A127170 (n + 1)

end

end A143352.P13972847978894638214

namespace A143352

/-- `A008683(A050873(n+1))*A127170(n+1)` -/
def P13972847978894638214.Spec : Prop :=
  ∀ n, P13972847978894638214.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P14008112004890094912

`A008683(A123275(n+1))*A127170(n+1)`
-/

namespace A143352.P14008112004890094912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123275 (n + 1)).toNat * A127170 (n + 1)

end

end A143352.P14008112004890094912

namespace A143352

/-- `A008683(A123275(n+1))*A127170(n+1)` -/
def P14008112004890094912.Spec : Prop :=
  ∀ n, P14008112004890094912.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P13396665463745034208

`A054532(comp[∑[n]])*A127170(n+1)`
-/

namespace A143352.P13396665463745034208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A127170 (n + 1)

end

end A143352.P13396665463745034208

namespace A143352

/-- `A054532(comp[∑[n]])*A127170(n+1)` -/
def P13396665463745034208.Spec : Prop :=
  ∀ n, P13396665463745034208.a n = A143352 (n + 1)

end A143352

/-! ## A143352.P15328547183968059182

`A008683(A112544(n+1))*A127170(n+1)`
-/

namespace A143352.P15328547183968059182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A112544 (n + 1)).toNat * A127170 (n + 1)

end

end A143352.P15328547183968059182

namespace A143352

/-- `A008683(A112544(n+1))*A127170(n+1)` -/
def P15328547183968059182.Spec : Prop :=
  ∀ n, P15328547183968059182.a n = A143352 (n + 1)

end A143352

/-!
# A143353: Triangle read by rows, A127172 * A128407 = (A051731)^3 * A128407, 1<=k<=n.

The programs for A143353, the canonical program `A143353.P15910154969480121083` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143353 has offset 1).

The definition of A143353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143353.P6607783380630501622

`A054524(n+1)*A127172(n+1)`
-/

namespace A143353.P6607783380630501622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A127172 (n + 1)

end

end A143353.P6607783380630501622

namespace A143353

/-- `A054524(n+1)*A127172(n+1)` -/
def P6607783380630501622.Spec : Prop :=
  ∀ n, P6607783380630501622.a n = A143353 (n + 1)

end A143353

/-! ## A143353.P2124251653802682187

`A054527(n+1)*A127172(n+1)`
-/

namespace A143353.P2124251653802682187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A127172 (n + 1)

end

end A143353.P2124251653802682187

namespace A143353

/-- `A054527(n+1)*A127172(n+1)` -/
def P2124251653802682187.Spec : Prop :=
  ∀ n, P2124251653802682187.a n = A143353 (n + 1)

end A143353

/-! ## A143353.P16279019075455265738

`A054534(n+1)*A127172(n+1)`
-/

namespace A143353.P16279019075455265738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A127172 (n + 1)

end

end A143353.P16279019075455265738

namespace A143353

/-- `A054534(n+1)*A127172(n+1)` -/
def P16279019075455265738.Spec : Prop :=
  ∀ n, P16279019075455265738.a n = A143353 (n + 1)

end A143353

/-! ## A143353.P15910154969480121083

`A007425(A010766(n+1))*A054524(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143353

/-- `A007425(A010766(n+1))*A054524(n+1)` -/
def P15910154969480121083.Spec : Prop :=
  ∀ n, P15910154969480121083.a n = A143353 (n + 1)

theorem P15910154969480121083.correct : P15910154969480121083.Spec := by
  intro n
  simp only [A143353, Nat.add_sub_cancel]

end A143353

/-! ## A143353.P14309934663692190450

`A007425(A049834(n+1))*A054524(n+1)`
-/

namespace A143353.P14309934663692190450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A049834 (n + 1)).toNat * A054524 (n + 1)

end

end A143353.P14309934663692190450

namespace A143353

/-- `A007425(A049834(n+1))*A054524(n+1)` -/
def P14309934663692190450.Spec : Prop :=
  ∀ n, P14309934663692190450.a n = A143353 (n + 1)

end A143353

/-! ## A143353.P7321114597079790116

`A007425(A051537(n+1))*A054524(n+1)`
-/

namespace A143353.P7321114597079790116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A051537 (n + 1)).toNat * A054524 (n + 1)

end

end A143353.P7321114597079790116

namespace A143353

/-- `A007425(A051537(n+1))*A054524(n+1)` -/
def P7321114597079790116.Spec : Prop :=
  ∀ n, P7321114597079790116.a n = A143353 (n + 1)

end A143353

/-! ## A143353.P1140501484818084691

`A007425(A054531(n+1))*A054524(n+1)`
-/

namespace A143353.P1140501484818084691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A054531 (n + 1)).toNat * A054524 (n + 1)

end

end A143353.P1140501484818084691

namespace A143353

/-- `A007425(A054531(n+1))*A054524(n+1)` -/
def P1140501484818084691.Spec : Prop :=
  ∀ n, P1140501484818084691.a n = A143353 (n + 1)

end A143353

/-! ## A143353.P11145675101729324808

`A007425(A234575(n+1))*A054524(n+1)`
-/

namespace A143353.P11145675101729324808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A234575 (n + 1)).toNat * A054524 (n + 1)

end

end A143353.P11145675101729324808

namespace A143353

/-- `A007425(A234575(n+1))*A054524(n+1)` -/
def P11145675101729324808.Spec : Prop :=
  ∀ n, P11145675101729324808.a n = A143353 (n + 1)

end A143353

/-!
# A143355: Triangle read by rows: T(n,k) = Sum_{d|n} floor(d/k).

The programs for A143355, there is no canonical definition to state claims against.
-/

/-! ## A143355.P16441544387742766880

`A127057(n+1)-A015647(A089408(n))`
-/

namespace A143355.P16441544387742766880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) - A015647 (A089408 n).toNat

end

end A143355.P16441544387742766880

/-! ## A143355.P9029259960420029990

`A127057(n+1)+A083892(A001644(n))`
-/

namespace A143355.P9029259960420029990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) + A083892 (A001644 n).toNat

end

end A143355.P9029259960420029990

/-! ## A143355.P13778611272774742141

`A127057(n+1)+A079978(A023431(n))`
-/

namespace A143355.P13778611272774742141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) + A079978 (A023431 n).toNat

end

end A143355.P13778611272774742141

/-! ## A143355.P17393377223055836605

`A334466(n+1)+A083892(A001644(n))`
-/

namespace A143355.P17393377223055836605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334466 (n + 1) + A083892 (A001644 n).toNat

end

end A143355.P17393377223055836605

/-! ## A143355.P13692467788441657196

`A338213(A127054(n))+A127057(n+1)`
-/

namespace A143355.P13692467788441657196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338213 (A127054 n).toNat + A127057 (n + 1)

end

end A143355.P13692467788441657196

/-!
# A143356: A051731 * A006218.

The programs for A143356, the canonical program `A143356.P8102885452969892794` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143356 has offset 1).

The definition of A143356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143356.P8102885452969892794

`∑{d}[n+1, A006218(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143356

/-- `∑{d}[n+1, A006218(#)]` -/
def P8102885452969892794.Spec : Prop :=
  ∀ n, P8102885452969892794.a n = A143356 (n + 1)

theorem P8102885452969892794.correct : P8102885452969892794.Spec := by
  intro n
  simp only [A143356, Nat.add_sub_cancel]

end A143356

/-! ## A143356.P1316187801466764763

`∑{d}[n+1, A054519(#)-1]`
-/

namespace A143356.P1316187801466764763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A054519 d - 1)

end

end A143356.P1316187801466764763

namespace A143356

/-- `∑{d}[n+1, A054519(#)-1]` -/
def P1316187801466764763.Spec : Prop :=
  ∀ n, P1316187801466764763.a n = A143356 (n + 1)

theorem P1316187801466764763.correct : P1316187801466764763.Spec := by
  intro n
  simp only [A143356, Nat.add_sub_cancel, A143356.P1316187801466764763.f1, A143356.P1316187801466764763.a, A143356.P8102885452969892794.f1, A143356.P8102885452969892794.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A143356

/-! ## A143356.P10953475555500886209

`∑{d}[n+1, A000005(#)*A116477((n+1)/#)]`
-/

namespace A143356.P10953475555500886209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A116477 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143356.P10953475555500886209

namespace A143356

/-- `∑{d}[n+1, A000005(#)*A116477((n+1)/#)]` -/
def P10953475555500886209.Spec : Prop :=
  ∀ n, P10953475555500886209.a n = A143356 (n + 1)

end A143356

/-! ## A143356.P250656688284415688

`∑{d}[n+1, A007425(#)*A332684((n+1)/#)]`
-/

namespace A143356.P250656688284415688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A332684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143356.P250656688284415688

namespace A143356

/-- `∑{d}[n+1, A007425(#)*A332684((n+1)/#)]` -/
def P250656688284415688.Spec : Prop :=
  ∀ n, P250656688284415688.a n = A143356 (n + 1)

end A143356

/-! ## A143356.P14576205793665428011

`∑{d}[n+1, A130054(#)*A333463((n+1)/#)]`
-/

namespace A143356.P14576205793665428011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A333463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143356.P14576205793665428011

namespace A143356

/-- `∑{d}[n+1, A130054(#)*A333463((n+1)/#)]` -/
def P14576205793665428011.Spec : Prop :=
  ∀ n, P14576205793665428011.a n = A143356 (n + 1)

end A143356

/-! ## A143356.P2607927377074219231

`∑{d}[n+1, A056535(A000217(#))]`
-/

namespace A143356.P2607927377074219231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056535 (A000217 d).toNat

end

end A143356.P2607927377074219231

namespace A143356

/-- `∑{d}[n+1, A056535(A000217(#))]` -/
def P2607927377074219231.Spec : Prop :=
  ∀ n, P2607927377074219231.a n = A143356 (n + 1)

end A143356

/-! ## A143356.P202856943886756976

`∑{d}[n+1, A113215(#²)]`
-/

namespace A143356.P202856943886756976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113215 (d ^ 2)

end

end A143356.P202856943886756976

namespace A143356

/-- `∑{d}[n+1, A113215(#²)]` -/
def P202856943886756976.Spec : Prop :=
  ∀ n, P202856943886756976.a n = A143356 (n + 1)

end A143356

/-!
# A143357: Floor((n-1)!/[n(n+1)]).

The programs for A143357, the canonical program `A143357.P4787316650704524771` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143357 has offset 1).

The definition of A143357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n!/((n+1)*(n+2)))` (program `A143357.P4787316650704524771`, by `A143357.P4787316650704524771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143357.P4787316650704524771

`floor(n!/((n+1)*(n+2)))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143357

/-- `floor(n!/((n+1)*(n+2)))` -/
def P4787316650704524771.Spec : Prop :=
  ∀ n, P4787316650704524771.a n = A143357 (n + 1)

theorem P4787316650704524771.correct : P4787316650704524771.Spec := by
  intro n
  simp only [A143357, Nat.add_sub_cancel]

end A143357

/-! ## A143357.P14798736428416138398

`floor(floor(n!/(n+1))/(n+2))`
-/

namespace A143357.P14798736428416138398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(Nat.factorial n : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (n + 2 : ℚ)⌋

end

end A143357.P14798736428416138398

namespace A143357

/-- `floor(floor(n!/(n+1))/(n+2))` -/
def P14798736428416138398.Spec : Prop :=
  ∀ n, P14798736428416138398.a n = A143357 (n + 1)

end A143357

/-! ## A143357.P5292204362009013149

`floor(A000142(n)/A002378(n+1))*A057427(n)`
-/

namespace A143357.P5292204362009013149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 n : ℚ) / (A002378 (n + 1) : ℚ)⌋ * A057427 n

end

end A143357.P5292204362009013149

namespace A143357

/-- `floor(A000142(n)/A002378(n+1))*A057427(n)` -/
def P5292204362009013149.Spec : Prop :=
  ∀ n, P5292204362009013149.a n = A143357 (n + 1)

end A143357

/-! ## A143357.P18064830827047542056

`floor(∏[n+1]/((n+2)*(n+1)²))`
-/

namespace A143357.P18064830827047542056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 2) * (n + 1) ^ 2 : ℚ)⌋

end

end A143357.P18064830827047542056

namespace A143357

/-- `floor(∏[n+1]/((n+2)*(n+1)²))` -/
def P18064830827047542056.Spec : Prop :=
  ∀ n, P18064830827047542056.a n = A143357 (n + 1)

end A143357

/-!
# A143358: Triangle read by rows: T(n,k) = 2^k*binomial(n,k)*binomial(n-k, floor((n-k)/2)), 0 <= k <= n.

The programs for A143358, the canonical program `A143358.P15436520401934876681` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143358 has offset 0).

The definition of A143358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143358.P15436520401934876681

`A059268(n)*A107230(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143358

/-- `A059268(n)*A107230(n)` -/
def P15436520401934876681.Spec : Prop :=
  ∀ n, P15436520401934876681.a n = A143358 n

theorem P15436520401934876681.correct : P15436520401934876681.Spec := by
  intro n
  simp only [A143358]

end A143358

/-! ## A143358.P8918023210065518414

`A001405(A025581(n))*A013609(n)`
-/

namespace A143358.P8918023210065518414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A025581 n).toNat * A013609 n

end

end A143358.P8918023210065518414

namespace A143358

/-- `A001405(A025581(n))*A013609(n)` -/
def P8918023210065518414.Spec : Prop :=
  ∀ n, P8918023210065518414.a n = A143358 n

theorem P8918023210065518414.correct : P8918023210065518414.Spec := by
  intro n
  simp only [A143358, Nat.add_sub_cancel, A143358.P8918023210065518414.a, A143358.P15436520401934876681.a, A001405, A001405.P5205018418992951678.a, A013609, A013609.P8535619279575218406.a, A025581, A025581.P420762180635059694.a, A059268, A059268.P15217573790077737885.a, A107230, A107230.P8874938179694735189.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A137688, A137688.P9746695207037186753.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143358

/-! ## A143358.P14863815833138268846

`A000079(A002262(n))*A107230(n)`
-/

namespace A143358.P14863815833138268846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A107230 n

end

end A143358.P14863815833138268846

namespace A143358

/-- `A000079(A002262(n))*A107230(n)` -/
def P14863815833138268846.Spec : Prop :=
  ∀ n, P14863815833138268846.a n = A143358 n

end A143358

/-! ## A143358.P8609279719474099286

`A107230(n)*A130321(A061579(n))`
-/

namespace A143358.P8609279719474099286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A130321 (A061579 n).toNat

end

end A143358.P8609279719474099286

namespace A143358

/-- `A107230(n)*A130321(A061579(n))` -/
def P8609279719474099286.Spec : Prop :=
  ∀ n, P8609279719474099286.a n = A143358 n

end A143358

/-! ## A143358.P1931502677881527996

`A011782(A002260(n+1))*A107230(n)`
-/

namespace A143358.P1931502677881527996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A107230 n

end

end A143358.P1931502677881527996

namespace A143358

/-- `A011782(A002260(n+1))*A107230(n)` -/
def P1931502677881527996.Spec : Prop :=
  ∀ n, P1931502677881527996.a n = A143358 n

end A143358

/-! ## A143358.P4052229574771635315

`A013609(n)*A210736(A004736(n+1))`
-/

namespace A143358.P4052229574771635315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A210736 (A004736 (n + 1)).toNat

end

end A143358.P4052229574771635315

namespace A143358

/-- `A013609(n)*A210736(A004736(n+1))` -/
def P4052229574771635315.Spec : Prop :=
  ∀ n, P4052229574771635315.a n = A143358 n

end A143358

/-! ## A143358.P3132070409748952819

`A051289(A061579(n))`
-/

namespace A143358.P3132070409748952819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051289 (A061579 n).toNat

end

end A143358.P3132070409748952819

namespace A143358

/-- `A051289(A061579(n))` -/
def P3132070409748952819.Spec : Prop :=
  ∀ n, P3132070409748952819.a n = A143358 n

end A143358

/-! ## A143358.P3488101515564275835

`A006519(A118413(n+1))*A107230(n)`
-/

namespace A143358.P3488101515564275835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A118413 (n + 1)).toNat * A107230 n

end

end A143358.P3488101515564275835

namespace A143358

/-- `A006519(A118413(n+1))*A107230(n)` -/
def P3488101515564275835.Spec : Prop :=
  ∀ n, P3488101515564275835.a n = A143358 n

end A143358

/-!
# A143359: Triangle read by rows, T(n,k) = number of symmetric ordered trees with n edges and root degree k (1 <= k <= n).

The programs for A143359, there is no canonical definition to state claims against.
-/

/-! ## A143359.P12122400046748961749

`A007895(A079219(n)^A025581(n))`
-/

namespace A143359.P12122400046748961749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A079219 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A143359.P12122400046748961749

/-! ## A143359.P17883703018604254229

`A168532(n+1)+A060398(A011782(n))`
-/

namespace A143359.P17883703018604254229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (n + 1) + A060398 (A011782 n).toNat

end

end A143359.P17883703018604254229

/-!
# A143360: Sum of root degrees of all symmetric ordered trees with n edges.

The programs for A143360, the canonical program `A143360.P13854882612011219664` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143360 has offset 1).

The definition of A143360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143360.P10370451345960638958

`A026023(n)+Δ[A191307(n)]`
-/

namespace A143360.P10370451345960638958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 n + (f1 (n + 1) - f1 n)

end

end A143360.P10370451345960638958

namespace A143360

/-- `A026023(n)+Δ[A191307(n)]` -/
def P10370451345960638958.Spec : Prop :=
  ∀ n, P10370451345960638958.a n = A143360 (n + 1)

end A143360

/-! ## A143360.P13854882612011219664

`A037955(n+1)+A026023(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143360

/-- `A037955(n+1)+A026023(n)` -/
def P13854882612011219664.Spec : Prop :=
  ∀ n, P13854882612011219664.a n = A143360 (n + 1)

theorem P13854882612011219664.correct : P13854882612011219664.Spec := by
  intro n
  simp only [A143360, Nat.add_sub_cancel]

end A143360

/-! ## A143360.P8411773405656055431

`A116385(n)+A007007(n+2)`
-/

namespace A143360.P8411773405656055431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n + A007007 (n + 2)

end

end A143360.P8411773405656055431

namespace A143360

/-- `A116385(n)+A007007(n+2)` -/
def P8411773405656055431.Spec : Prop :=
  ∀ n, P8411773405656055431.a n = A143360 (n + 1)

end A143360

/-! ## A143360.P3493463364009161469

`A116385(n)+A037952(n+2)`
-/

namespace A143360.P3493463364009161469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n + A037952 (n + 2)

end

end A143360.P3493463364009161469

namespace A143360

/-- `A116385(n)+A037952(n+2)` -/
def P3493463364009161469.Spec : Prop :=
  ∀ n, P3493463364009161469.a n = A143360 (n + 1)

end A143360

/-! ## A143360.P11212487196064914615

`A026010(n+1)-A208355(n+1)`
-/

namespace A143360.P11212487196064914615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (n + 1) - A208355 (n + 1)

end

end A143360.P11212487196064914615

namespace A143360

/-- `A026010(n+1)-A208355(n+1)` -/
def P11212487196064914615.Spec : Prop :=
  ∀ n, P11212487196064914615.a n = A143360 (n + 1)

end A143360

/-! ## A143360.P10565426542299131724

`A037952(n+1)+2*A037955(n+1)`
-/

namespace A143360.P10565426542299131724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1) + 2 * A037955 (n + 1)

end

end A143360.P10565426542299131724

namespace A143360

/-- `A037952(n+1)+2*A037955(n+1)` -/
def P10565426542299131724.Spec : Prop :=
  ∀ n, P10565426542299131724.a n = A143360 (n + 1)

end A143360

/-! ## A143360.P2463344498180111427

`A116385(n)+record[A008311(n)]`
-/

namespace A143360.P2463344498180111427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143360.P2463344498180111427

namespace A143360

/-- `A116385(n)+record[A008311(n)]` -/
def P2463344498180111427.Spec : Prop :=
  ∀ n, P2463344498180111427.a n = A143360 (n + 1)

end A143360

/-!
# A143361: Triangle read by rows: T(n,k) is the number of 010-avoiding binary words of length n containing k 00 subwords (0<=k<=n-1).

The programs for A143361, there is no canonical definition to state claims against.
-/

/-! ## A143361.P3182108134594654730

`A129708(A056537(n+1))`
-/

namespace A143361.P3182108134594654730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129708 (A056537 (n + 1)).toNat

end

end A143361.P3182108134594654730

/-! ## A143361.P665075060572730538

`A238345(n+1)+A157895((6-n)²)`
-/

namespace A143361.P665075060572730538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (n + 1) + A157895 ((6 - (n : ℤ)) ^ 2).toNat

end

end A143361.P665075060572730538

/-! ## A143361.P14497440257623846719

`A238345(n+1)+A020985(A329605(n+1)²)`
-/

namespace A143361.P14497440257623846719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (n + 1) + A020985 (A329605 (n + 1) ^ 2).toNat

end

end A143361.P14497440257623846719

/-! ## A143361.P6110803051904335589

`A070939(2^A238345(n+1))`
-/

namespace A143361.P6110803051904335589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A238345 (n + 1) : ℤ))).toNat

end

end A143361.P6110803051904335589

/-! ## A143361.P13943328798223487072

`A000005(3^A238345(n+1))`
-/

namespace A143361.P13943328798223487072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A238345 (n + 1) : ℤ))).toNat

end

end A143361.P13943328798223487072

/-!
# A143363: Number of ordered trees with n edges and having no protected vertices. A protected vertex in an ordered tree is a vertex at least 2 edges away from its leaf descendants.

The programs for A143363, there is no canonical definition to state claims against.
-/

/-! ## A143363.P1221579845532513275

`A239366(A035008(n))/A028310(n)`
-/

namespace A143363.P1221579845532513275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239366 (A035008 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A143363.P1221579845532513275

/-! ## A143363.P14467325897250789926

`A239366(A035008(n))/(A000007(n)+n)`
-/

namespace A143363.P14467325897250789926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239366 (A035008 n).toNat : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A143363.P14467325897250789926

/-! ## A143363.P16718500083826073747

`A239366(A035008(n))/(A008486(n)-2*n)`
-/

namespace A143363.P16718500083826073747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239366 (A035008 n).toNat : ℚ) / (A008486 n - (2 * n : ℤ) : ℚ)

end

end A143363.P16718500083826073747

/-! ## A143363.P5390774086979052944

`A239366(A035008(n))/A000196(A010000(n))`
-/

namespace A143363.P5390774086979052944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239366 (A035008 n).toNat : ℚ) / (A000196 (A010000 n).toNat : ℚ)

end

end A143363.P5390774086979052944

/-! ## A143363.P3632196987994146679

`A143362(C(n, 2)+1)`
-/

namespace A143363.P3632196987994146679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143362 (Nat.choose n 2 + 1)

end

end A143363.P3632196987994146679

/-!
# A143364: Triangle read by rows: T(n,k) is the number of {0-1-2}-trees with n edges and k protected vertices (0<=k<=n-1). A {0-1-2}-tree is an ordered tree in which the outdegree of every vertex is 0, 1, or 2. A protected vertex in an ordered tree is a vertex at least 2 edges away from its leaf descendants.

The programs for A143364, there is no canonical definition to state claims against.
-/

/-! ## A143364.P4248523242134823497

`A000005(A319171(n)^A026386(n))`
-/

namespace A143364.P4248523242134823497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A319171 n : ℚ) ^ (A026386 n : ℤ))).toNat

end

end A143364.P4248523242134823497

/-! ## A143364.P9486431704649058678

`A000005(A319171(n)^A026637(n))`
-/

namespace A143364.P9486431704649058678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A319171 n : ℚ) ^ (A026637 n : ℤ))).toNat

end

end A143364.P9486431704649058678

/-! ## A143364.P9301223542224309877

`A000005(A319171(n)^A028262(n))`
-/

namespace A143364.P9301223542224309877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A319171 n : ℚ) ^ (A028262 n : ℤ))).toNat

end

end A143364.P9301223542224309877

/-! ## A143364.P10909112109345872620

`A000005(A345710(n+1)^A026386(n))`
-/

namespace A143364.P10909112109345872620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A345710 (n + 1) : ℚ) ^ (A026386 n : ℤ))).toNat

end

end A143364.P10909112109345872620

/-! ## A143364.P3104144829850857772

`A000005(A345710(n+1)^A026637(n))`
-/

namespace A143364.P3104144829850857772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A345710 (n + 1) : ℚ) ^ (A026637 n : ℤ))).toNat

end

end A143364.P3104144829850857772

/-!
# A143365: Numbers k such that (prime(k)-11)/10 is a prime.

The programs for A143365, there is no canonical definition to state claims against.
-/

/-! ## A143365.P5407075968425945082

`A000720(A089442(n+1))`
-/

namespace A143365.P5407075968425945082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089442 (n + 1)).toNat

end

end A143365.P5407075968425945082

/-! ## A143365.P5293740118013086898

`A058933(p?[A089442(n+1)])`
-/

namespace A143365.P5293740118013086898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P5293740118013086898

/-! ## A143365.P14528016509104085868

`A061395(p?[A089442(n+1)])`
-/

namespace A143365.P14528016509104085868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P14528016509104085868

/-! ## A143365.P10329486949526170711

`A061395(2*A089442(n+1))`
-/

namespace A143365.P10329486949526170711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A089442 (n + 1)).toNat

end

end A143365.P10329486949526170711

/-! ## A143365.P2670733198982597544

`A061395(lcm(2, A089442(n+1)))`
-/

namespace A143365.P2670733198982597544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A089442 (n + 1)))

end

end A143365.P2670733198982597544

/-! ## A143365.P32426370739684534

`A000720(p?[10*A008864(n+1)+1])`
-/

namespace A143365.P32426370739684534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008864 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P32426370739684534

/-! ## A143365.P15735861285301333229

`A000720(p?[10*A000040(n+1)+11])`
-/

namespace A143365.P15735861285301333229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P15735861285301333229

/-! ## A143365.P13814467442107282728

`A058933(p?[10*A000040(n+1)+11])`
-/

namespace A143365.P13814467442107282728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P13814467442107282728

/-! ## A143365.P12465351579274565574

`A061395(p?[10*A000040(n+1)+11])`
-/

namespace A143365.P12465351579274565574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P12465351579274565574

/-! ## A143365.P6415301430066860700

`A263111(p?[10*A000040(n+1)+11])`
-/

namespace A143365.P6415301430066860700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000040 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A143365.P6415301430066860700

/-!
# A143366: Wiener index of the hexagon crown (beehive model) with n hexagons on each side of the outside ring.

The programs for A143366, the canonical program `A143366.P9266415403500582315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143366 has offset 1).

The definition of A143366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143366.P9266415403500582315

`(n+1)*(164*(n+1)^4-30*(n+1)²+1)/5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143366

/-- `(n+1)*(164*(n+1)^4-30*(n+1)²+1)/5` -/
def P9266415403500582315.Spec : Prop :=
  ∀ n, P9266415403500582315.a n = (A143366 (n + 1) : ℚ)

end A143366

/-!
# A143370: Triangle read by rows: T(n,k) is the number of unordered pairs of vertices at distance k in the grid P_2 x P_n (1 <= k <= n). P_m is the path graph on m vertices.

The programs for A143370, there is no canonical definition to state claims against.
-/

/-! ## A143370.P8923878328968003292

`A143940(n+1)-2`
-/

namespace A143370.P8923878328968003292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143940 (n + 1) - 2

end

end A143370.P8923878328968003292

/-! ## A143370.P986822015619097104

`(4-char[∑[n]])*A004736(n+1)-2`
-/

namespace A143370.P986822015619097104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A004736 (n + 1) - 2

end

end A143370.P986822015619097104

/-! ## A143370.P970481782116080982

`(A025581(n)+1)*(4-char[∑[n]])-2`
-/

namespace A143370.P970481782116080982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) - 2

end

end A143370.P970481782116080982

/-! ## A143370.P11739731393944304938

`(4-char[∑[n]])*sqrt(A055461(n+1))-2`
-/

namespace A143370.P11739731393944304938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ) * Real.sqrt (A055461 (n + 1) : ℝ) - 2

end

end A143370.P11739731393944304938

/-! ## A143370.P17832592980953675491

`(4-char[∑[n]])*val(A043569(n+1), 2)-2`
-/

namespace A143370.P17832592980953675491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2 : ℤ) - 2

end

end A143370.P17832592980953675491

/-! ## A143370.P13132399321662283402

`(4-A010054(n))*(C(comp[∑[n]]-n, 2)-n)-2`
-/

namespace A143370.P13132399321662283402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A010054 n) * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 2

end

end A143370.P13132399321662283402

/-! ## A143370.P10022764632197231116

`A023444(A143940(n+1))`
-/

namespace A143370.P10022764632197231116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A143940 (n + 1)).toNat

end

end A143370.P10022764632197231116

/-! ## A143370.P6976641240393698677

`A195019(A143956(n+1))-2`
-/

namespace A143370.P6976641240393698677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (A143956 (n + 1)).toNat - 2

end

end A143370.P6976641240393698677

/-! ## A143370.P13147444780572000550

`A155124(n)+4*A025581(n)`
-/

namespace A143370.P13147444780572000550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n + 4 * A025581 n

end

end A143370.P13147444780572000550

/-! ## A143370.P6866537811753245809

`A155124(n)+2*A099375(n)-2`
-/

namespace A143370.P6866537811753245809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155124 n + 2 * A099375 n - 2

end

end A143370.P6866537811753245809

/-!
# A143372: Expansion of 1/(1 +x -2*x^2 -x^3 -x^4 -3*x^5 +2*x^6 +2*x^7 +3*x^8 +2*x^9 -3*x^10 -7*x^11 -3*x^12 -5*x^13).

The programs for A143372, the canonical program `A143372.P2518337432910299050` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143372 has offset 0).

The definition of A143372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2-x^3-x^4-3x^5+2x^6+2x^7+3x^8+2x^9-3x^10-7x^11-3x^12-5x^13))` (program `A143372.P2518337432910299050`, by `A143372.P2518337432910299050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143372.P2518337432910299050

`ogf(1/(1+x-2x^2-x^3-x^4-3x^5+2x^6+2x^7+3x^8+2x^9-3x^10-7x^11-3x^12-5x^13))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143372

/-- `ogf(1/(1+x-2x^2-x^3-x^4-3x^5+2x^6+2x^7+3x^8+2x^9-3x^10-7x^11-3x^12-5x^13))` -/
def P2518337432910299050.Spec : Prop :=
  ∀ n, P2518337432910299050.a n = A143372 n

theorem P2518337432910299050.correct : P2518337432910299050.Spec := by
  intro n
  simp only [A143372]

end A143372

/-!
# A143373: Expansion of x/(1 - x - 2*x^3 - 2*x^5 - x^7).

The programs for A143373, the canonical program `A143373.P3119392818633559060` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143373 has offset 1).

The definition of A143373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^3-2x^5-x^7))` (program `A143373.P3119392818633559060`, by `A143373.P3119392818633559060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143373.P3119392818633559060

`ogf(1/(1-x-2x^3-2x^5-x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143373

/-- `ogf(1/(1-x-2x^3-2x^5-x^7))` -/
def P3119392818633559060.Spec : Prop :=
  ∀ n, P3119392818633559060.a n = A143373 (n + 1)

theorem P3119392818633559060.correct : P3119392818633559060.Spec := by
  intro n
  simp only [A143373, Nat.add_sub_cancel]

end A143373

/-! ## A143373.P12387333219600712959

`A006670(A071742(n))`
-/

namespace A143373.P12387333219600712959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A071742 n).toNat

end

end A143373.P12387333219600712959

namespace A143373

/-- `A006670(A071742(n))` -/
def P12387333219600712959.Spec : Prop :=
  ∀ n, P12387333219600712959.a n = A143373 (n + 1)

end A143373

/-! ## A143373.P12833865510972566830

`A038124(A192804(n))`
-/

namespace A143373.P12833865510972566830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A192804 n).toNat

end

end A143373.P12833865510972566830

namespace A143373

/-- `A038124(A192804(n))` -/
def P12833865510972566830.Spec : Prop :=
  ∀ n, P12833865510972566830.a n = A143373 (n + 1)

end A143373

/-! ## A143373.P7893042923115268769

`A006670(A360274(n))`
-/

namespace A143373.P7893042923115268769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A360274 n).toNat

end

end A143373.P7893042923115268769

namespace A143373

/-- `A006670(A360274(n))` -/
def P7893042923115268769.Spec : Prop :=
  ∀ n, P7893042923115268769.a n = A143373 (n + 1)

end A143373

/-! ## A143373.P15962733711748966354

`A006670(A391030(n))`
-/

namespace A143373.P15962733711748966354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A391030 n).toNat

end

end A143373.P15962733711748966354

namespace A143373

/-- `A006670(A391030(n))` -/
def P15962733711748966354.Spec : Prop :=
  ∀ n, P15962733711748966354.a n = A143373 (n + 1)

end A143373

/-!
# A143375: Expansion of x/(1 - x^2 - 2*x^5 - x^8 - x^10 - x^12).

The programs for A143375, the canonical program `A143375.P16093677369723484393` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143375 has offset 1).

The definition of A143375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-2x^5-x^8-x^10-x^12))` (program `A143375.P16093677369723484393`, by `A143375.P16093677369723484393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143375.P16093677369723484393

`ogf(1/(1-x^2-2x^5-x^8-x^10-x^12))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143375

/-- `ogf(1/(1-x^2-2x^5-x^8-x^10-x^12))` -/
def P16093677369723484393.Spec : Prop :=
  ∀ n, P16093677369723484393.a n = A143375 (n + 1)

theorem P16093677369723484393.correct : P16093677369723484393.Spec := by
  intro n
  simp only [A143375, Nat.add_sub_cancel]

end A143375

/-! ## A143375.P6268045589662080964

`A339418(n)-A118685(A007894(n))`
-/

namespace A143375.P6268045589662080964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 n - A118685 (A007894 (n + 10)).toNat

end

end A143375.P6268045589662080964

namespace A143375

/-- `A339418(n)-A118685(A007894(n))` -/
def P6268045589662080964.Spec : Prop :=
  ∀ n, P6268045589662080964.a n = A143375 (n + 1)

end A143375

/-! ## A143375.P17021861973869047286

`A339418(A185284(3*n+2)+n)`
-/

namespace A143375.P17021861973869047286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 (A185284 (3 * n + 2) + (n : ℤ)).toNat

end

end A143375.P17021861973869047286

namespace A143375

/-- `A339418(A185284(3*n+2)+n)` -/
def P17021861973869047286.Spec : Prop :=
  ∀ n, P17021861973869047286.a n = A143375 (n + 1)

end A143375

/-! ## A143375.P1736105544618591782

`A339418(A118685(A077896(n))+n)`
-/

namespace A143375.P1736105544618591782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 (A118685 (A077896 n).toNat + (n : ℤ)).toNat

end

end A143375.P1736105544618591782

namespace A143375

/-- `A339418(A118685(A077896(n))+n)` -/
def P1736105544618591782.Spec : Prop :=
  ∀ n, P1736105544618591782.a n = A143375 (n + 1)

end A143375

/-! ## A143375.P14462235694017093412

`A339418(A212619(A228564(n))+n)`
-/

namespace A143375.P14462235694017093412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 (A212619 (A228564 n).toNat + (n : ℤ)).toNat

end

end A143375.P14462235694017093412

namespace A143375

/-- `A339418(A212619(A228564(n))+n)` -/
def P14462235694017093412.Spec : Prop :=
  ∀ n, P14462235694017093412.a n = A143375 (n + 1)

end A143375

/-!
# A143376: Triangle read by rows: T(n,k) is the number of unordered pairs of vertices at distance k in the cube Q_n of dimension n (1 <= k <= n).

The programs for A143376, the canonical program `A143376.P216290818035908107` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143376 has offset 1).

The definition of A143376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143376.P216290818035908107

`A135278(n)*A137688(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143376

/-- `A135278(n)*A137688(n)` -/
def P216290818035908107.Spec : Prop :=
  ∀ n, P216290818035908107.a n = A143376 (n + 1)

theorem P216290818035908107.correct : P216290818035908107.Spec := by
  intro n
  simp only [A143376, Nat.add_sub_cancel]

end A143376

/-! ## A143376.P17618022374794193053

`A130321(n)*A193862(n)`
-/

namespace A143376.P17618022374794193053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193862 n

end

end A143376.P17618022374794193053

namespace A143376

/-- `A130321(n)*A193862(n)` -/
def P17618022374794193053.Spec : Prop :=
  ∀ n, P17618022374794193053.a n = A143376 (n + 1)

end A143376

/-! ## A143376.P15014467779563164440

`A074909(n+1)*A137688(n)`
-/

namespace A143376.P15014467779563164440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A137688 n

end

end A143376.P15014467779563164440

namespace A143376

/-- `A074909(n+1)*A137688(n)` -/
def P15014467779563164440.Spec : Prop :=
  ∀ n, P15014467779563164440.a n = A143376 (n + 1)

end A143376

/-! ## A143376.P9798588016527430417

`A135278(n)/2*A140513(n)`
-/

namespace A143376.P9798588016527430417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n : ℚ) / 2 * (A140513 n : ℚ)

end

end A143376.P9798588016527430417

namespace A143376

/-- `A135278(n)/2*A140513(n)` -/
def P9798588016527430417.Spec : Prop :=
  ∀ n, P9798588016527430417.a n = (A143376 (n + 1) : ℚ)

theorem P9798588016527430417.correct : P9798588016527430417.Spec := by
  intro n
  simp only [A143376, Nat.add_sub_cancel, A143376.P9798588016527430417.a, A143376.P216290818035908107.a, A135278, A135278.P10862305414900331449.a, A137688, A137688.P9746695207037186753.a, A140513, A140513.P13579608035938851890.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A143376

/-! ## A143376.P14981024448899476437

`A000079(A003056(n))*A135278(n)`
-/

namespace A143376.P14981024448899476437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A135278 n

end

end A143376.P14981024448899476437

namespace A143376

/-- `A000079(A003056(n))*A135278(n)` -/
def P14981024448899476437.Spec : Prop :=
  ∀ n, P14981024448899476437.a n = A143376 (n + 1)

end A143376

/-! ## A143376.P12663234061757531194

`A038207(n)/A007318(n)*A193862(n)`
-/

namespace A143376.P12663234061757531194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A193862 n : ℚ)

end

end A143376.P12663234061757531194

namespace A143376

/-- `A038207(n)/A007318(n)*A193862(n)` -/
def P12663234061757531194.Spec : Prop :=
  ∀ n, P12663234061757531194.a n = (A143376 (n + 1) : ℚ)

end A143376

/-! ## A143376.P40659669703608381

`A193858(n)/A193844(n)*A193862(n)`
-/

namespace A143376.P40659669703608381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193858 n : ℚ) / (A193844 n : ℚ) * (A193862 n : ℚ)

end

end A143376.P40659669703608381

namespace A143376

/-- `A193858(n)/A193844(n)*A193862(n)` -/
def P40659669703608381.Spec : Prop :=
  ∀ n, P40659669703608381.a n = (A143376 (n + 1) : ℚ)

end A143376

/-! ## A143376.P2367526810245187882

`2^A003056(n)*A007318(A014132(n+1))`
-/

namespace A143376.P2367526810245187882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ) * (A007318 (A014132 (n + 1)).toNat : ℚ)

end

end A143376.P2367526810245187882

namespace A143376

/-- `2^A003056(n)*A007318(A014132(n+1))` -/
def P2367526810245187882.Spec : Prop :=
  ∀ n, P2367526810245187882.a n = (A143376 (n + 1) : ℚ)

end A143376

/-! ## A143376.P3084402673160686145

`A007318(A014132(n+1))*A011782(A014132(n+1)-(n+1))`
-/

namespace A143376.P3084402673160686145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A011782 (A014132 (n + 1) - (n + 1 : ℤ)).toNat

end

end A143376.P3084402673160686145

namespace A143376

/-- `A007318(A014132(n+1))*A011782(A014132(n+1)-(n+1))` -/
def P3084402673160686145.Spec : Prop :=
  ∀ n, P3084402673160686145.a n = A143376 (n + 1)

end A143376

/-! ## A143376.P18167923605263632008

`A055372(comp[∑[n]])`
-/

namespace A143376.P18167923605263632008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055372 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143376.P18167923605263632008

namespace A143376

/-- `A055372(comp[∑[n]])` -/
def P18167923605263632008.Spec : Prop :=
  ∀ n, P18167923605263632008.a n = A143376 (n + 1)

end A143376

/-! ## A143376.P15087422919612902734

`A074909(n+1)*A184761(A004736(n+1)+n)`
-/

namespace A143376.P15087422919612902734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A184761 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A143376.P15087422919612902734

namespace A143376

/-- `A074909(n+1)*A184761(A004736(n+1)+n)` -/
def P15087422919612902734.Spec : Prop :=
  ∀ n, P15087422919612902734.a n = A143376 (n + 1)

end A143376

/-!
# A143377: Expansion of q^(-1/6) * eta(q)^2 * eta(q^4) / eta(q^2) in powers of q.

The programs for A143377, there is no canonical definition to state claims against.
-/

/-! ## A143377.P17679491822337461112

`(-1)^n*A143380(n)`
-/

namespace A143377.P17679491822337461112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143380 n

end

end A143377.P17679491822337461112

/-! ## A143377.P17375697952870371625

`A143380(n)*A219977(n)`
-/

namespace A143377.P17375697952870371625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 n * A219977 n

end

end A143377.P17375697952870371625

/-! ## A143377.P7328172798199540741

`A143380(n)*A309873(n+1)`
-/

namespace A143377.P7328172798199540741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 n * A309873 (n + 1)

end

end A143377.P7328172798199540741

/-! ## A143377.P2958596898328852878

`A143380(n)/(A057428(n)^n)^A033999(n)`
-/

namespace A143377.P2958596898328852878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143380 n : ℚ) / (A057428 n ^ n : ℚ) ^ (A033999 n : ℤ)

end

end A143377.P2958596898328852878

/-! ## A143377.P17173622717389051077

`A143380(n)/Δ[A285663(or(2, n)+1)]`
-/

namespace A143377.P17173622717389051077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285663 (Nat.lor 2 n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143380 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A143377.P17173622717389051077

/-! ## A143377.P11837343473862598146

`A143380(n)/A033999(n²)`
-/

namespace A143377.P11837343473862598146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143380 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A143377.P11837343473862598146

/-!
# A143378: Expansion of q^(-1/24) * eta(q^2)^5 / (eta(q) * eta(q^4)^2) in powers of q.

The programs for A143378, there is no canonical definition to state claims against.
-/

/-! ## A143378.P14794460475005123768

`A143377(4*n)`
-/

namespace A143378.P14794460475005123768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143377 (4 * n)

end

end A143378.P14794460475005123768

/-! ## A143378.P4925689562013087109

`A143380(4*n)`
-/

namespace A143378.P4925689562013087109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 (4 * n)

end

end A143378.P4925689562013087109

/-! ## A143378.P2669889865905482184

`A143380(A008574(n))-A000007(n)`
-/

namespace A143378.P2669889865905482184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 (A008574 n).toNat - A000007 n

end

end A143378.P2669889865905482184

/-! ## A143378.P5336180125389523849

`A143380(A008586(n))%A016969(n)`
-/

namespace A143378.P5336180125389523849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143380 (A008586 n).toNat) (A016969 n)

end

end A143378.P5336180125389523849

/-! ## A143378.P1649676356591848115

`A143380(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A143378.P1649676356591848115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 (A008574 n + A000007 n).toNat + A000007 n

end

end A143378.P1649676356591848115

/-!
# A143379: Expansion of q^(-7/24) * eta(q) * eta(q^4)^2 / eta(q^2) in powers of q.

The programs for A143379, there is no canonical definition to state claims against.
-/

/-! ## A143379.P6099276083563968371

`A143380(4*n+1)/2`
-/

namespace A143379.P6099276083563968371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143380 (4 * n + 1) : ℚ) / 2

end

end A143379.P6099276083563968371

/-! ## A143379.P14146071607612451853

`A054354(A335242(n)+87)`
-/

namespace A143379.P14146071607612451853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A335242 n + 87).toNat

end

end A143379.P14146071607612451853

/-! ## A143379.P16156628516445539860

`-A011646(A075472(n+1))`
-/

namespace A143379.P16156628516445539860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011646 (A075472 (n + 1)).toNat

end

end A143379.P16156628516445539860

/-! ## A143379.P2664371734368817118

`A010892(A325535(3*n)+1+n)`
-/

namespace A143379.P2664371734368817118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A325535 (3 * n) + 1 + (n : ℤ)).toNat

end

end A143379.P2664371734368817118

/-! ## A143379.P11932147306413774799

`A008683(abs(∑[n]-A054883(n))+1)`
-/

namespace A143379.P11932147306413774799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054883 n| + 1).toNat

end

end A143379.P11932147306413774799

/-!
# A143380: Expansion of q^(-1/6) * eta(q^2)^5 / (eta(q)^2 * eta(q^4)) in powers of q.

The programs for A143380, there is no canonical definition to state claims against.
-/

/-! ## A143380.P609163901586772428

`(-1)^n*A143377(n)`
-/

namespace A143380.P609163901586772428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143377 n

end

end A143380.P609163901586772428

/-! ## A143380.P2455953262495899784

`A143377(n)*A219977(n)`
-/

namespace A143380.P2455953262495899784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143377 n * A219977 n

end

end A143380.P2455953262495899784

/-! ## A143380.P7944303685225724176

`A143377(n)/A033999(n)`
-/

namespace A143380.P7944303685225724176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143377 n : ℚ) / (A033999 n : ℚ)

end

end A143380.P7944303685225724176

/-! ## A143380.P10972297295843273491

`A143377(n)*A309873(n+1)`
-/

namespace A143380.P10972297295843273491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143377 n * A309873 (n + 1)

end

end A143380.P10972297295843273491

/-! ## A143380.P16364611787663906487

`A143377(n)*A319219(A007814(n+1))`
-/

namespace A143380.P16364611787663906487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143377 n * A319219 (A007814 (n + 1)).toNat

end

end A143380.P16364611787663906487

/-!
# A143382: Numerator of Sum_{k=0..n} 1/k!!.

The programs for A143382, there is no canonical definition to state claims against.
-/

/-! ## A143382.P9045754715881434620

`A122651(A318863(2*(n+3)))+n`
-/

namespace A143382.P9045754715881434620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A318863 (2 * (n + 3))).toNat + (n : ℤ)

end

end A143382.P9045754715881434620

/-! ## A143382.P11504795978609235719

`A220080(n)+A054269(A344098(n))`
-/

namespace A143382.P11504795978609235719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220080 n + A054269 (A344098 n).toNat

end

end A143382.P11504795978609235719

/-!
# A143383: Denominator of Sum_{k=0..n} 1/k!!.

The programs for A143383, there is no canonical definition to state claims against.
-/

/-! ## A143383.P13625836834963208583

`A000142(n)/A219609(A146878(n+1))`
-/

namespace A143383.P13625836834963208583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A219609 (A146878 (n + 1)).toNat : ℚ)

end

end A143383.P13625836834963208583

/-! ## A143383.P12159072464270974847

`gcd(n!, A081138(C(n, 4)))`
-/

namespace A143383.P12159072464270974847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A081138 (Nat.choose n 4))

end

end A143383.P12159072464270974847

/-! ## A143383.P8710863524648590534

`A000142(n)/A030101(A323395(n))`
-/

namespace A143383.P8710863524648590534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A030101 (A323395 n).toNat : ℚ)

end

end A143383.P8710863524648590534

/-! ## A143383.P1830611064613818148

`A000142(n)/A327481(A109622(n))`
-/

namespace A143383.P1830611064613818148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A327481 (A109622 n).toNat : ℚ)

end

end A143383.P1830611064613818148

/-! ## A143383.P16395067762102961153

`lcm(A046682(n), A327512(A067653(n)))`
-/

namespace A143383.P16395067762102961153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046682 n) (A327512 (A067653 n).toNat)

end

end A143383.P16395067762102961153

/-!
# A143385: Least a(n) such that M(n)*(M(n)+a(n))-1 and M(n)*(M(n)+a(n))+1 are twin primes with M(i)=i-th Mersenne prime.

The programs for A143385, there is no canonical definition to state claims against.
-/

/-! ## A143385.P17025301170653417045

`A006530(C(A143387(n+1), lcm(14, n)/14))`
-/

namespace A143385.P17025301170653417045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A143387 (n + 1)).toNat (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14)).toNat)

end

end A143385.P17025301170653417045

/-!
# A143387: Least prime a(n) such that M(n)*(M(n)+a(n))-1 and M(n)*(M(n)+a(n))+1 are twin primes with M(i)=i-th Mersenne prime A000043(i).

The programs for A143387, there is no canonical definition to state claims against.
-/

/-! ## A143387.P13820540230217273569

`val(A143385(3*n+2)+1, 3)*A143385(n+1)`
-/

namespace A143387.P13820540230217273569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A143385 (3 * n + 2) + 1).toNat 3 : ℤ) * A143385 (n + 1)

end

end A143387.P13820540230217273569

/-!
# A143388: a(n) = Sum_{k=0..n} A033184(n,k)*A033184(n,n-k), where Catalan triangle entry A033184(n,k) = C(2*n-k,n-k)*(k+1)/(n+1).

The programs for A143388, the canonical program `A143388.P15053924194393028484` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143388 has offset 0).

The definition of A143388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143388.P15053924194393028484

`(n²+3*n+6)*(3*n+1)!/(n!*(2*n+3)!)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143388

/-- `(n²+3*n+6)*(3*n+1)!/(n!*(2*n+3)!)` -/
def P15053924194393028484.Spec : Prop :=
  ∀ n, P15053924194393028484.a n = (A143388 n : ℚ)

end A143388

/-! ## A143388.P1553203970719505892

`A387700(∑[n+3])`
-/

namespace A143388.P1553203970719505892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143388.P1553203970719505892

namespace A143388

/-- `A387700(∑[n+3])` -/
def P1553203970719505892.Spec : Prop :=
  ∀ n, P1553203970719505892.a n = A143388 n

end A143388

/-! ## A143388.P16352453667136485425

`A259475(2*(n+1)²-1)`
-/

namespace A143388.P16352453667136485425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (2 * (n + 1) ^ 2 - 1)

end

end A143388.P16352453667136485425

namespace A143388

/-- `A259475(2*(n+1)²-1)` -/
def P16352453667136485425.Spec : Prop :=
  ∀ n, P16352453667136485425.a n = A143388 n

end A143388

/-! ## A143388.P17040392504900375711

`record[gcd(A259475(n), A259525(n))]`
-/

namespace A143388.P17040392504900375711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259475 n) (A259525 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143388.P17040392504900375711

namespace A143388

/-- `record[gcd(A259475(n), A259525(n))]` -/
def P17040392504900375711.Spec : Prop :=
  ∀ n, (P17040392504900375711.a n : ℤ) = A143388 n

end A143388

/-! ## A143388.P4093679277127989175

`A080234(A081270(n))`
-/

namespace A143388.P4093679277127989175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080234 (A081270 n).toNat

end

end A143388.P4093679277127989175

namespace A143388

/-- `A080234(A081270(n))` -/
def P4093679277127989175.Spec : Prop :=
  ∀ n, P4093679277127989175.a n = A143388 n

end A143388

/-!
# A143390: Numbers in which every suffix (in base 10) is 1 or a prime.

The programs for A143390, there is no canonical definition to state claims against.
-/

/-! ## A143390.P18413527752969595818

`record[A107286(A063278(n+2)²)]`
-/

namespace A143390.P18413527752969595818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A063278 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143390.P18413527752969595818

/-! ## A143390.P9441350852386844328

`eq[A011558(A004657(n)), A072491(n)]`
-/

namespace A143390.P9441350852386844328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A004657 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143390.P9441350852386844328

/-! ## A143390.P8646300542174581033

`eq[A011558(A004657(n)), A074206(n)]`
-/

namespace A143390.P8646300542174581033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A004657 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143390.P8646300542174581033

/-! ## A143390.P11184775033161907900

`eq[A011558(A004657(n)), A078898(n)]`
-/

namespace A143390.P11184775033161907900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A004657 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143390.P11184775033161907900

/-! ## A143390.P5328680803848903735

`eq[A011558(A004657(n)), A107286(n)]`
-/

namespace A143390.P5328680803848903735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A004657 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143390.P5328680803848903735

/-!
# A143391: A binomial recursion sequence: a(n+1) = binomial(a(n),n), with a(1) = 4.

The programs for A143391, the canonical program `A143391.P12863363762020255646` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143391 has offset 1).

The definition of A143391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143391.P12863363762020255646

`C(a(n-1), n)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143391

/-- `C(a(n-1), n)` -/
def P12863363762020255646.Spec : Prop :=
  ∀ n, (P12863363762020255646.a n : ℤ) = A143391 (n + 1)

theorem P12863363762020255646.correct : P12863363762020255646.Spec := by
  intro n
  simp only [A143391, Nat.add_sub_cancel]

end A143391

/-!
# A143392: A quadratic recursion sequence: a(n)=a(n - 1)^2 - 2*a(n - 1) - a(n - 2)^2 + 2*a(n - 2).

The programs for A143392, the canonical program `A143392.P13742651011756710744` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143392 has offset 1).

The definition of A143392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2*a(n-1)-a(n-2)²+2*a(n-2)` (program `A143392.P13742651011756710744`, by `A143392.P13742651011756710744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143392.P13742651011756710744

`a(n-1)²-2*a(n-1)-a(n-2)²+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A143392

/-- `a(n-1)²-2*a(n-1)-a(n-2)²+2*a(n-2)` -/
def P13742651011756710744.Spec : Prop :=
  ∀ n, P13742651011756710744.a n = A143392 (n + 1)

theorem P13742651011756710744.correct : P13742651011756710744.Spec := by
  intro n
  simp only [A143392, Nat.add_sub_cancel]

end A143392

/-! ## A143392.P10434389223229163153

`(2-(a(n-1)+a(n-2)))*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A143392.P10434389223229163153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - (a (n - 1) + a (n - 2))) * (a (n - 2) - a (n - 1))

end

end A143392.P10434389223229163153

namespace A143392

/-- `(2-(a(n-1)+a(n-2)))*(a(n-2)-a(n-1))` -/
def P10434389223229163153.Spec : Prop :=
  ∀ n, P10434389223229163153.a n = A143392 (n + 1)

theorem P10434389223229163153.correct : P10434389223229163153.Spec := by
  intro n
  simp only [A143392, Nat.add_sub_cancel, A143392.P10434389223229163153.a, A143392.P13742651011756710744.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143392

/-! ## A143392.P11974932422919642659

`(2-a(n-1)-a(n-2))*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A143392.P11974932422919642659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - a (n - 1) - a (n - 2)) * (a (n - 2) - a (n - 1))

end

end A143392.P11974932422919642659

namespace A143392

/-- `(2-a(n-1)-a(n-2))*(a(n-2)-a(n-1))` -/
def P11974932422919642659.Spec : Prop :=
  ∀ n, P11974932422919642659.a n = A143392 (n + 1)

theorem P11974932422919642659.correct : P11974932422919642659.Spec := by
  intro n
  simp only [A143392, Nat.add_sub_cancel, A143392.P11974932422919642659.a, A143392.P13742651011756710744.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A143392

/-!
# A143393: a(n) is the least prime p such that p*(p+prime(n))-1 is prime with prime(i)=i-th prime.

The programs for A143393, there is no canonical definition to state claims against.
-/

/-! ## A143393.P7835505681631358795

`p?[A053188(n)%A335434(n+1)]`
-/

namespace A143393.P7835505681631358795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 n) (A335434 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143393.P7835505681631358795

/-! ## A143393.P16120470600465353595

`p?[A301573(n)%A323086(n+1)]`
-/

namespace A143393.P16120470600465353595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301573 n) (A323086 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143393.P16120470600465353595

/-! ## A143393.P2741048021124198778

`p?[A000005(A123684(A274895(n+1)))]`
-/

namespace A143393.P2741048021124198778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123684 (A274895 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A143393.P2741048021124198778

/-! ## A143393.P14537932501735317682

`A073813(A178850(n+1)+A080339(n+1))`
-/

namespace A143393.P14537932501735317682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073813 (A178850 (n + 1) + A080339 (n + 1)).toNat

end

end A143393.P14537932501735317682

/-! ## A143393.P14130664432474536814

`A001918(A324162(3*n+4)+A251419(2*n+1))`
-/

namespace A143393.P14130664432474536814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (A324162 (3 * n + 4) + A251419 (2 * n + 1)).toNat

end

end A143393.P14130664432474536814

/-!
# A143395: Triangle read by rows: T(n,k) = number of forests of k labeled rooted trees of height at most 1, with n labels, where any root may contain >= 1 labels, n >= 0, 0 <= k <= n.

The programs for A143395, there is no canonical definition to state claims against.
-/

/-! ## A143395.P4100707165218141383

`A101290(A245667(n))`
-/

namespace A143395.P4100707165218141383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101290 (A245667 n).toNat

end

end A143395.P4100707165218141383

/-! ## A143395.P3557298755621972217

`A168485(A187557(n))`
-/

namespace A143395.P3557298755621972217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A187557 n).toNat

end

end A143395.P3557298755621972217

/-! ## A143395.P2281037062180096421

`A351831(A022166(n))+A090181(n)`
-/

namespace A143395.P2281037062180096421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A022166 n).toNat + A090181 n

end

end A143395.P2281037062180096421

/-! ## A143395.P16173743044583641978

`A351831(A022166(n))+A151511(n)`
-/

namespace A143395.P16173743044583641978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A022166 n).toNat + A151511 n

end

end A143395.P16173743044583641978

/-! ## A143395.P1669192489394482736

`A030101(C(A350227(n), A357990(n)))`
-/

namespace A143395.P1669192489394482736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Nat.choose (A350227 n).toNat (A357990 n).toNat)

end

end A143395.P1669192489394482736

/-!
# A143396: Triangle T(n,k) = number of forests of labeled rooted trees of height at most 1, with n labels, k of which are used for root nodes and any root may contain >= 1 labels, n >= 0, 0<=k<=n.

The programs for A143396, there is no canonical definition to state claims against.
-/

/-! ## A143396.P742977107684664382

`A007318(n)*A108458(n+1)`
-/

namespace A143396.P742977107684664382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A108458 (n + 1)

end

end A143396.P742977107684664382

/-! ## A143396.P16088984762031345323

`A091918(n)*A108458(n+1)`
-/

namespace A143396.P16088984762031345323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n * A108458 (n + 1)

end

end A143396.P16088984762031345323

/-! ## A143396.P11060921444744987041

`A108458(n+1)*A132749(n)`
-/

namespace A143396.P11060921444744987041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) * A132749 n

end

end A143396.P11060921444744987041

/-! ## A143396.P880180923275808724

`A108458(n+1)*A135227(n)`
-/

namespace A143396.P880180923275808724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) * A135227 n

end

end A143396.P880180923275808724

/-! ## A143396.P10277510922529231394

`A108458(n+1)*A183154(n)`
-/

namespace A143396.P10277510922529231394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) * A183154 n

end

end A143396.P10277510922529231394

/-! ## A143396.P16886126669915284102

`A108458(n+1)*A206735(n)`
-/

namespace A143396.P16886126669915284102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) * A206735 n

end

end A143396.P16886126669915284102

/-! ## A143396.P572343065001485919

`abs(A108086(n)*A108458(n+1))`
-/

namespace A143396.P572343065001485919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A108458 (n + 1)|

end

end A143396.P572343065001485919

/-! ## A143396.P13400633177907590422

`sqrt(A008459(n))*A108458(n+1)`
-/

namespace A143396.P13400633177907590422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A108458 (n + 1) : ℝ)

end

end A143396.P13400633177907590422

/-!
# A143397: Triangle T(n,k)=number of forests of labeled rooted trees of height at most 1, with n labels and k nodes, where any root may contain >= 1 labels, n >= 0, 0<=k<=n.

The programs for A143397, there is no canonical definition to state claims against.
-/

/-! ## A143397.P11051604465267467429

`∑{d}[A256116(n), A045796(#)]`
-/

namespace A143397.P11051604465267467429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045796 d

end

end A143397.P11051604465267467429

/-! ## A143397.P4642348850176160818

`∑{d}[A211608(n), A285189(#)]`
-/

namespace A143397.P4642348850176160818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A285189 d

end

end A143397.P4642348850176160818

/-! ## A143397.P185968934727910216

`A048766(∏{e}[n+1, #+1]*A291451(n))`
-/

namespace A143397.P185968934727910216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A291451 n).toNat

end

end A143397.P185968934727910216

/-! ## A143397.P13652264155790304817

`A053828(A322670(n)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A143397.P13652264155790304817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A322670 n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A143397.P13652264155790304817

/-! ## A143397.P11018082161046352751

`A322603(A267480(n))`
-/

namespace A143397.P11018082161046352751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322603 (A267480 n).toNat

end

end A143397.P11018082161046352751

/-!
# A143398: Triangle T(n,k) = number of forests of labeled rooted trees of height at most 1, with n labels, where each root contains k labels, n>=0, 0<=k<=n.

The programs for A143398, there is no canonical definition to state claims against.
-/

/-! ## A143398.P9126452328008686516

`A000217(A293808(n))-A185284((5-n)²)`
-/

namespace A143398.P9126452328008686516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A293808 n).toNat - A185284 ((5 - (n : ℤ)) ^ 2).toNat

end

end A143398.P9126452328008686516

/-!
# A143399: Expansion of x^k/Product_{t=k..2k} (1-tx) for k=4.

The programs for A143399, there is no canonical definition to state claims against.
-/

/-! ## A143399.P15442436020500842344

`A143395(A077169(n+1)-1)`
-/

namespace A143399.P15442436020500842344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143395 (A077169 (n + 1) - 1).toNat

end

end A143399.P15442436020500842344

/-! ## A143399.P13138582084583591725

`A025462(xor(4, A005967(n+1)))`
-/

namespace A143399.P13138582084583591725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (Int.xor 4 (A005967 (n + 1))).toNat

end

end A143399.P13138582084583591725

/-! ## A143399.P5298986087223218115

`A365321(A365321(∑[round(n*(n-1)/6)]))`
-/

namespace A143399.P5298986087223218115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365321 (A365321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A143399.P5298986087223218115

