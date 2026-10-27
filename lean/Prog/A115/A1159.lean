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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A115900: Numbers k such that k + sigma(k) and k + phi(k) are palindromes.

The programs for A115900, there is no canonical definition to state claims against.
-/

/-! ## A115900.P1215336038451601275

`∩[A115895(n+1), A115896(n+1)]`
-/

namespace A115900.P1215336038451601275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115900.P1215336038451601275

/-! ## A115900.P8127460027733548738

`∩[A115896(n+1), A115895(A005555(n))]`
-/

namespace A115900.P8127460027733548738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115895 (A005555 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115900.P8127460027733548738

/-!
# A115901: Numbers k such that prime(k) - k and prime(k) + k are palindromes.

The programs for A115901, there is no canonical definition to state claims against.
-/

/-! ## A115901.P15084757080381608046

`∩[A115884(n+1), A115885(n+1)]`
-/

namespace A115901.P15084757080381608046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115901.P15084757080381608046

/-! ## A115901.P13260868318645036180

`eq[val(n+1, 3), A222673((n+1)/3^val(n+1, 3))]`
-/

namespace A115901.P13260868318645036180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115901.P13260868318645036180

/-!
# A115902: Expansion of (1-8*x)^(-3/2).

The programs for A115902, the canonical program `A115902.P2573848008066962846` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115902 has offset 0).

The definition of A115902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115902.P16222116894536140585

`2^n*(2*n+1)*C(2*n, n)`
-/

namespace A115902.P16222116894536140585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (2 * n + 1) * Nat.choose (2 * n) n

end

end A115902.P16222116894536140585

namespace A115902

/-- `2^n*(2*n+1)*C(2*n, n)` -/
def P16222116894536140585.Spec : Prop :=
  ∀ n, (P16222116894536140585.a n : ℤ) = A115902 n

theorem P16222116894536140585.correct : P16222116894536140585.Spec := by
  intro n
  simp only [A115902, Nat.add_sub_cancel, A115902.P16222116894536140585.a, A115902.P2573848008066962846.a, A002457, A002457.P9253550667326779954.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115902

/-! ## A115902.P2573848008066962846

`2^n*A002457(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115902

/-- `2^n*A002457(n)` -/
def P2573848008066962846.Spec : Prop :=
  ∀ n, P2573848008066962846.a n = A115902 n

theorem P2573848008066962846.correct : P2573848008066962846.Spec := by
  intro n
  simp only [A115902]

end A115902

/-! ## A115902.P16961017910651149671

`(2*n+1)*A059304(n)`
-/

namespace A115902.P16961017910651149671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A059304 n

end

end A115902.P16961017910651149671

namespace A115902

/-- `(2*n+1)*A059304(n)` -/
def P16961017910651149671.Spec : Prop :=
  ∀ n, P16961017910651149671.a n = A115902 n

theorem P16961017910651149671.correct : P16961017910651149671.Spec := by
  intro n
  simp only [A115902, Nat.add_sub_cancel, A115902.P16961017910651149671.a, A115902.P2573848008066962846.a, A002457, A002457.P9253550667326779954.a, A059304, A059304.P7987591590417581669.a, A000079, A000079.P10855139691139572931.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115902

/-! ## A115902.P16845131840027342571

`(4/n+8)*a(n-1)` with `a(0)=1`
-/

namespace A115902.P16845131840027342571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (n : ℚ) + 8) * a (n - 1)

end

end A115902.P16845131840027342571

namespace A115902

/-- `(4/n+8)*a(n-1)` -/
def P16845131840027342571.Spec : Prop :=
  ∀ n, P16845131840027342571.a n = (A115902 n : ℚ)

end A115902

/-! ## A115902.P314402632750291496

`(n+1)*2^n*C(Δ[n²], n)`
-/

namespace A115902.P314402632750291496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 ^ n * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n)

end

end A115902.P314402632750291496

namespace A115902

/-- `(n+1)*2^n*C(Δ[n²], n)` -/
def P314402632750291496.Spec : Prop :=
  ∀ n, (P314402632750291496.a n : ℤ) = A115902 n

end A115902

/-! ## A115902.P5296928488146234109

`(n+1)*∏[8-4/(n+1)]/4`
-/

namespace A115902.P5296928488146234109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 - 4 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j) / 4)

end

end A115902.P5296928488146234109

namespace A115902

/-- `(n+1)*∏[8-4/(n+1)]/4` -/
def P5296928488146234109.Spec : Prop :=
  ∀ n, P5296928488146234109.a n = (A115902 n : ℚ)

end A115902

/-! ## A115902.P2340807904633362906

`and(Δ[(2*n)²]/n*a(n-1), -2)` with `a(0)=1`
-/

namespace A115902.P2340807904633362906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n : ℚ) * (a (n - 1) : ℚ))) (-2)

end

end A115902.P2340807904633362906

namespace A115902

/-- `and(Δ[(2*n)²]/n*a(n-1), -2)` -/
def P2340807904633362906.Spec : Prop :=
  ∀ n, P2340807904633362906.a n = A115902 n

end A115902

/-! ## A115902.P7631284444911542070

`A098660(2*n)+8*a(n-1)` with `a(0)=1`
-/

namespace A115902.P7631284444911542070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098660 (2 * n) + 8 * a (n - 1)

end

end A115902.P7631284444911542070

namespace A115902

/-- `A098660(2*n)+8*a(n-1)` -/
def P7631284444911542070.Spec : Prop :=
  ∀ n, P7631284444911542070.a n = A115902 n

end A115902

/-! ## A115902.P2012217537417241972

`record[(n+1)/2^val(n+1, 2)*A098660(n)]`
-/

namespace A115902.P2012217537417241972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A098660 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115902.P2012217537417241972

namespace A115902

/-- `record[(n+1)/2^val(n+1, 2)*A098660(n)]` -/
def P2012217537417241972.Spec : Prop :=
  ∀ n, P2012217537417241972.a n = (A115902 n : ℚ)

end A115902

/-! ## A115902.P38303983340005742

`8*a(n-1)+(n+1)*2^n*A000108(n)` with `a(0)=1`
-/

namespace A115902.P38303983340005742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) + (n + 1 : ℤ) * ((2 ^ n : ℤ) * A000108 n)

end

end A115902.P38303983340005742

namespace A115902

/-- `8*a(n-1)+(n+1)*2^n*A000108(n)` -/
def P38303983340005742.Spec : Prop :=
  ∀ n, P38303983340005742.a n = A115902 n

end A115902

/-! ## A115902.P17290619669455855729

`lcm(A001800(n), A129195(n))`
-/

namespace A115902.P17290619669455855729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001800 n) (A129195 n)

end

end A115902.P17290619669455855729

namespace A115902

/-- `lcm(A001800(n), A129195(n))` -/
def P17290619669455855729.Spec : Prop :=
  ∀ n, (P17290619669455855729.a n : ℤ) = A115902 n

end A115902

/-! ## A115902.P14353122967591354269

`A014480(n)*A028329(n)/2`
-/

namespace A115902.P14353122967591354269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014480 n * A028329 n : ℚ) / 2

end

end A115902.P14353122967591354269

namespace A115902

/-- `A014480(n)*A028329(n)/2` -/
def P14353122967591354269.Spec : Prop :=
  ∀ n, P14353122967591354269.a n = (A115902 n : ℚ)

end A115902

/-! ## A115902.P14744619676530470445

`record[(n+1)*A016116(n)*A126930(n)]`
-/

namespace A115902.P14744619676530470445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A016116 n * A126930 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115902.P14744619676530470445

namespace A115902

/-- `record[(n+1)*A016116(n)*A126930(n)]` -/
def P14744619676530470445.Spec : Prop :=
  ∀ n, P14744619676530470445.a n = A115902 n

end A115902

/-! ## A115902.P15944282956512597424

`lcm(A098660(2*n+1), A098660(2*n))`
-/

namespace A115902.P15944282956512597424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098660 (2 * n + 1)) (A098660 (2 * n))

end

end A115902.P15944282956512597424

namespace A115902

/-- `lcm(A098660(2*n+1), A098660(2*n))` -/
def P15944282956512597424.Spec : Prop :=
  ∀ n, (P15944282956512597424.a n : ℤ) = A115902 n

end A115902

/-! ## A115902.P2182679234771075534

`A004277(n+1)*A098660(2*n)-A098660(2*n)`
-/

namespace A115902.P2182679234771075534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A098660 (2 * n) - A098660 (2 * n)

end

end A115902.P2182679234771075534

namespace A115902

/-- `A004277(n+1)*A098660(2*n)-A098660(2*n)` -/
def P2182679234771075534.Spec : Prop :=
  ∀ n, P2182679234771075534.a n = A115902 n

end A115902

/-! ## A115902.P220847557546450575

`a(n-1)*Δ[(2*n)²]/n` with `a(0)=1`
-/

namespace A115902.P220847557546450575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n : ℚ)

end

end A115902.P220847557546450575

namespace A115902

/-- `a(n-1)*Δ[(2*n)²]/n` -/
def P220847557546450575.Spec : Prop :=
  ∀ n, P220847557546450575.a n = (A115902 n : ℚ)

end A115902

/-! ## A115902.P103861014967959214

`4*comp[A004277(n)]*a(n-1)/n` with `a(0)=1`
-/

namespace A115902.P103861014967959214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) * a (n - 1) / (n : ℚ)

end

end A115902.P103861014967959214

namespace A115902

/-- `4*comp[A004277(n)]*a(n-1)/n` -/
def P103861014967959214.Spec : Prop :=
  ∀ n, P103861014967959214.a n = (A115902 n : ℚ)

end A115902

/-!
# A115903: Expansion of (1-12*x)^(-3/2).

The programs for A115903, the canonical program `A115903.P5062678535628825191` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115903 has offset 0).

The definition of A115903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115903.P6420036579861792684

`3^n*(2*n+1)*C(2*n, n)`
-/

namespace A115903.P6420036579861792684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (2 * n + 1) * Nat.choose (2 * n) n

end

end A115903.P6420036579861792684

namespace A115903

/-- `3^n*(2*n+1)*C(2*n, n)` -/
def P6420036579861792684.Spec : Prop :=
  ∀ n, (P6420036579861792684.a n : ℤ) = A115903 n

theorem P6420036579861792684.correct : P6420036579861792684.Spec := by
  intro n
  simp only [A115903, Nat.add_sub_cancel, A115903.P6420036579861792684.a, A115903.P5062678535628825191.a, A002457, A002457.P9253550667326779954.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115903

/-! ## A115903.P5062678535628825191

`3^n*A002457(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115903

/-- `3^n*A002457(n)` -/
def P5062678535628825191.Spec : Prop :=
  ∀ n, P5062678535628825191.a n = A115903 n

theorem P5062678535628825191.correct : P5062678535628825191.Spec := by
  intro n
  simp only [A115903]

end A115903

/-! ## A115903.P7406238098725541438

`(2*n+1)*A098658(n)`
-/

namespace A115903.P7406238098725541438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A098658 n

end

end A115903.P7406238098725541438

namespace A115903

/-- `(2*n+1)*A098658(n)` -/
def P7406238098725541438.Spec : Prop :=
  ∀ n, P7406238098725541438.a n = A115903 n

theorem P7406238098725541438.correct : P7406238098725541438.Spec := by
  intro n
  simp only [A115903, Nat.add_sub_cancel, A115903.P7406238098725541438.a, A115903.P5062678535628825191.a, A002457, A002457.P9253550667326779954.a, A098658, A098658.P14881965061736061030.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115903

/-! ## A115903.P17852952981009008779

`3^n*(2*n)!/n!²*(2*n+1)`
-/

namespace A115903.P17852952981009008779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ) * (2 * n + 1 : ℚ)

end

end A115903.P17852952981009008779

namespace A115903

/-- `3^n*(2*n)!/n!²*(2*n+1)` -/
def P17852952981009008779.Spec : Prop :=
  ∀ n, P17852952981009008779.a n = (A115903 n : ℚ)

end A115903

/-! ## A115903.P1797264836848266579

`(6/n+12)*a(n-1)` with `a(0)=1`
-/

namespace A115903.P1797264836848266579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 / (n : ℚ) + 12) * a (n - 1)

end

end A115903.P1797264836848266579

namespace A115903

/-- `(6/n+12)*a(n-1)` -/
def P1797264836848266579.Spec : Prop :=
  ∀ n, P1797264836848266579.a n = (A115903 n : ℚ)

end A115903

/-! ## A115903.P12818630167675892086

`6*a(n-1)/n*Δ[n²]` with `a(0)=1`
-/

namespace A115903.P12818630167675892086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) / (n : ℚ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A115903.P12818630167675892086

namespace A115903

/-- `6*a(n-1)/n*Δ[n²]` -/
def P12818630167675892086.Spec : Prop :=
  ∀ n, P12818630167675892086.a n = (A115903 n : ℚ)

end A115903

/-! ## A115903.P16699828648665964497

`3*a(n-1)/n*Δ[n*2*n]` with `a(0)=1`
-/

namespace A115903.P16699828648665964497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) / (n : ℚ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A115903.P16699828648665964497

namespace A115903

/-- `3*a(n-1)/n*Δ[n*2*n]` -/
def P16699828648665964497.Spec : Prop :=
  ∀ n, P16699828648665964497.a n = (A115903 n : ℚ)

end A115903

/-! ## A115903.P3512412295727738938

`(n+1)*A098399(n)`
-/

namespace A115903.P3512412295727738938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098399 n

end

end A115903.P3512412295727738938

namespace A115903

/-- `(n+1)*A098399(n)` -/
def P3512412295727738938.Spec : Prop :=
  ∀ n, P3512412295727738938.a n = A115903 n

end A115903

/-! ## A115903.P10550039837978373851

`∑[n+1]*A101600(n)`
-/

namespace A115903.P10550039837978373851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A101600 n

end

end A115903.P10550039837978373851

namespace A115903

/-- `∑[n+1]*A101600(n)` -/
def P10550039837978373851.Spec : Prop :=
  ∀ n, P10550039837978373851.a n = A115903 n

end A115903

/-!
# A115904: Numbers k such that k + sigma(k) is a triangular number.

The programs for A115904, there is no canonical definition to state claims against.
-/

/-! ## A115904.P9475657073145842397

`eq[1, A095831(A000203(n+1)+n)]+1`
-/

namespace A115904.P9475657073145842397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (A000203 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115904.P9475657073145842397

/-! ## A115904.P12004678084989372272

`eq[2, A004736(A000203(n+1)+n)]+1`
-/

namespace A115904.P12004678084989372272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000203 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115904.P12004678084989372272

/-! ## A115904.P9762658553040463205

`eq[1, A131033(A000203(n+1)+n+1)]+1`
-/

namespace A115904.P9762658553040463205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131033 (A000203 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115904.P9762658553040463205

/-! ## A115904.P10680411659469252905

`eq[2, A035214(A000203(n+1)+n+1)]+1`
-/

namespace A115904.P10680411659469252905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000203 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115904.P10680411659469252905

/-! ## A115904.P11619617824179404238

`eq[2, A002260(A000203(n+1)+n+3)]+1`
-/

namespace A115904.P11619617824179404238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000203 (n + 1) + (n + 3 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115904.P11619617824179404238

/-!
# A115905: Numbers k such that k + phi(k) is a triangular number.

The programs for A115905, the canonical program `A115905.P435895685124942086` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115905 has offset 1).

The definition of A115905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115905.P435895685124942086

`eq[1, A002260(A000010(n+1)+n+2)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115905

/-- `eq[1, A002260(A000010(n+1)+n+2)]+1` -/
def P435895685124942086.Spec : Prop :=
  ∀ n, (P435895685124942086.a n : ℤ) = A115905 (n + 1)

theorem P435895685124942086.correct : P435895685124942086.Spec := by
  intro n
  simp only [A115905, Nat.add_sub_cancel]

end A115905

/-! ## A115905.P3641317514541882507

`eq[2, A004736(A000010(n+1)+n)]+1`
-/

namespace A115905.P3641317514541882507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000010 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115905.P3641317514541882507

namespace A115905

/-- `eq[2, A004736(A000010(n+1)+n)]+1` -/
def P3641317514541882507.Spec : Prop :=
  ∀ n, (P3641317514541882507.a n : ℤ) = A115905 (n + 1)

end A115905

/-! ## A115905.P13714239571960831085

`eq[1, A025581(A000010(n+2)+n)]+2`
-/

namespace A115905.P13714239571960831085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000010 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A115905.P13714239571960831085

namespace A115905

/-- `eq[1, A025581(A000010(n+2)+n)]+2` -/
def P13714239571960831085.Spec : Prop :=
  ∀ n, (P13714239571960831085.a n : ℤ) = A115905 (n + 1)

end A115905

/-! ## A115905.P154321193219388405

`eq[1, A134226(A000010(n+1)+n+2)]+1`
-/

namespace A115905.P154321193219388405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (A000010 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115905.P154321193219388405

namespace A115905

/-- `eq[1, A134226(A000010(n+1)+n+2)]+1` -/
def P154321193219388405.Spec : Prop :=
  ∀ n, (P154321193219388405.a n : ℤ) = A115905 (n + 1)

end A115905

/-! ## A115905.P8874130098627993956

`eq[0, A318557(A000010(n+1)+n)]+1`
-/

namespace A115905.P8874130098627993956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000010 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115905.P8874130098627993956

namespace A115905

/-- `eq[0, A318557(A000010(n+1)+n)]+1` -/
def P8874130098627993956.Spec : Prop :=
  ∀ n, (P8874130098627993956.a n : ℤ) = A115905 (n + 1)

end A115905

/-! ## A115905.P10808085214860376214

`lt[A324362(A000010(n+1)+n+1), 1]+1`
-/

namespace A115905.P10808085214860376214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115905.P10808085214860376214

namespace A115905

/-- `lt[A324362(A000010(n+1)+n+1), 1]+1` -/
def P10808085214860376214.Spec : Prop :=
  ∀ n, (P10808085214860376214.a n : ℤ) = A115905 (n + 1)

end A115905

/-!
# A115906: Numbers k such that k + sigma(k) + phi(k) is a triangular number.

The programs for A115906, there is no canonical definition to state claims against.
-/

/-! ## A115906.P7485456983685564792

`eq[1, A004736(A065387(n+1)+n+1)]+1`
-/

namespace A115906.P7485456983685564792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A065387 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115906.P7485456983685564792

/-! ## A115906.P7912101879024837481

`record[gcd(A193005(2*n), A193039(n+1))]`
-/

namespace A115906.P7912101879024837481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193005 (2 * n)) (A193039 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115906.P7912101879024837481

/-! ## A115906.P13173097282430362390

`eq[A008615(n), A286180(A166333(n))]`
-/

namespace A115906.P13173097282430362390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A166333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115906.P13173097282430362390

/-!
# A115908: Numbers k such that phi(k) + prime(k) is a triangular number.

The programs for A115908, there is no canonical definition to state claims against.
-/

/-! ## A115908.P5527666453698387408

`∑[A111172(2*n+1)%A111151(n+2)]`
-/

namespace A115908.P5527666453698387408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111172 (2 * n + 1)) (A111151 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115908.P5527666453698387408

/-! ## A115908.P4863646662798596336

`A274225(A002293(n))+A147824(n)`
-/

namespace A115908.P4863646662798596336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (A002293 n).toNat + A147824 n

end

end A115908.P4863646662798596336

/-!
# A115909: Numbers k such that sigma(k)*k is a triangular number.

The programs for A115909, there is no canonical definition to state claims against.
-/

/-! ## A115909.P13738107765008108305

`record[A017666(n+1)/A004736(A009242(n+1))]`
-/

namespace A115909.P13738107765008108305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A004736 (A009242 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115909.P13738107765008108305

/-! ## A115909.P234360004412290759

`record[A017666(n+1)/A004736(A249670(n+1))]`
-/

namespace A115909.P234360004412290759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017666 (n + 1) : ℚ) / (A004736 (A249670 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115909.P234360004412290759

/-! ## A115909.P1207888900627535984

`record[and(A138100(n+1), A275077(n))]`
-/

namespace A115909.P1207888900627535984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138100 (n + 1)) (A275077 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115909.P1207888900627535984

/-! ## A115909.P671083861734048197

`eq[1, A002260(A064987(n+1)+1)]+1`
-/

namespace A115909.P671083861734048197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064987 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115909.P671083861734048197

/-! ## A115909.P16339000211883352800

`eq[A343097(A093555(n+4)), A354582(n)]`
-/

namespace A115909.P16339000211883352800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A093555 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115909.P16339000211883352800

/-!
# A115911: Numbers k such that phi(k)*sigma(k) is a triangular number.

The programs for A115911, there is no canonical definition to state claims against.
-/

/-! ## A115911.P12672560979108041479

`A192189(A042807(n+1))`
-/

namespace A115911.P12672560979108041479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192189 (A042807 (n + 1)).toNat

end

end A115911.P12672560979108041479

/-! ## A115911.P13240538896305503042

`A263028(record[A025581(3^n)])`
-/

namespace A115911.P13240538896305503042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115911.P13240538896305503042

/-!
# A115914: Numbers k such that k + sigma(k) is a brilliant number (A078972).

The programs for A115914, there is no canonical definition to state claims against.
-/

/-! ## A115914.P10299288207064457672

`A279001(A030140(n+1)-A030132(n))`
-/

namespace A115914.P10299288207064457672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279001 (A030140 (n + 1) - A030132 n).toNat

end

end A115914.P10299288207064457672

/-! ## A115914.P15575008840375482675

`A155754(A221351(∑[n+1]+2))+A094298(3*n+2)`
-/

namespace A115914.P15575008840375482675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155754 (A221351 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat + A094298 (3 * n + 2)

end

end A115914.P15575008840375482675

/-!
# A115916: Numbers k such that sigma(k) + phi(k) is a brilliant number (A078972).

The programs for A115916, there is no canonical definition to state claims against.
-/

/-! ## A115916.P4566422022224045642

`(n+2)*A008835(n!)`
-/

namespace A115916.P4566422022224045642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008835 (Nat.factorial n)

end

end A115916.P4566422022224045642

/-! ## A115916.P5520612781285330970

`(n+2)*A164561((n+2)²)`
-/

namespace A115916.P5520612781285330970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A164561 ((n + 2) ^ 2)

end

end A115916.P5520612781285330970

/-! ## A115916.P15090884281918552009

`(n+2)*A053164(n!)²²`
-/

namespace A115916.P15090884281918552009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A053164 (Nat.factorial n) ^ 2) ^ 2

end

end A115916.P15090884281918552009

/-! ## A115916.P10761512499011650381

`(n+2)*A008835(-∏[n-C(2, n+2)])`
-/

namespace A115916.P10761512499011650381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008835 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A115916.P10761512499011650381

/-!
# A115919: Numbers k such that sigma(k) - phi(k) is a prime number.

The programs for A115919, there is no canonical definition to state claims against.
-/

/-! ## A115919.P1094478161422234576

`∪[A067252(n+1), Δ[A007504(n)]]`
-/

namespace A115919.P1094478161422234576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115919.P1094478161422234576

/-! ## A115919.P17174786695038397228

`∪[A000040(n+1), A067252(n+1)]`
-/

namespace A115919.P17174786695038397228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115919.P17174786695038397228

/-! ## A115919.P15797031264657788687

`∪[A067252(n+1), A175787(n+1)]`
-/

namespace A115919.P15797031264657788687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115919.P15797031264657788687

/-! ## A115919.P1737069705326544626

`eq[1, A001222(A051612(n+2))]+2`
-/

namespace A115919.P1737069705326544626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051612 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A115919.P1737069705326544626

/-! ## A115919.P11051053239384580928

`eq[1, A003415(A051612(n+1))]+1`
-/

namespace A115919.P11051053239384580928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A051612 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115919.P11051053239384580928

/-!
# A115920: Numbers k such that the digits of sigma(k) are a permutation of those of k, in base 10.

The programs for A115920, there is no canonical definition to state claims against.
-/

/-! ## A115920.P16829010885884241751

`∩[A247315(n+1), A249899(n+1)]`
-/

namespace A115920.P16829010885884241751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115920.P16829010885884241751

/-! ## A115920.P13702665288415072228

`filter[A249899(n+1), A307183(#)]`
-/

namespace A115920.P13702665288415072228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307183 (f1 j).toNat = 1) n)

end

end A115920.P13702665288415072228

/-! ## A115920.P1586746930516513622

`∩[A249899(n+1), A267415(n+1)]`
-/

namespace A115920.P1586746930516513622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115920.P1586746930516513622

/-!
# A115921: Numbers k such that the decimal digits of phi(k) are a permutation of those of k.

The programs for A115921, there is no canonical definition to state claims against.
-/

/-! ## A115921.P4059714310490238964

`∩[A082060(n+1), A247316(n+1)]`
-/

namespace A115921.P4059714310490238964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115921.P4059714310490238964

/-!
# A115922: Numbers k such that k and 2*k, taken together are pandigital.

The programs for A115922, there is no canonical definition to state claims against.
-/

/-! ## A115922.P13944604441874200154

`∩[A115925(n+1), A253172(n+1)]/2`
-/

namespace A115922.P13944604441874200154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253172 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A115922.P13944604441874200154

/-!
# A115925: Numbers k such that k and 5*k, taken together, are pandigital.

The programs for A115925, there is no canonical definition to state claims against.
-/

/-! ## A115925.P13910900315582028686

`2*A064160(n)`
-/

namespace A115925.P13910900315582028686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064160 n

end

end A115925.P13910900315582028686

/-! ## A115925.P11588895758828186168

`A004277(A064160(n))`
-/

namespace A115925.P11588895758828186168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A064160 n).toNat

end

end A115925.P11588895758828186168

/-! ## A115925.P16963926906022583444

`A004275(A064160(n)+1)`
-/

namespace A115925.P16963926906022583444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A064160 n + 1).toNat

end

end A115925.P16963926906022583444

/-! ## A115925.P13525581920509093681

`A004278(A064160(n)+2)`
-/

namespace A115925.P13525581920509093681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A064160 n + 2).toNat

end

end A115925.P13525581920509093681

/-! ## A115925.P5789396267587960097

`A103517(A064160(n)-1)`
-/

namespace A115925.P5789396267587960097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A064160 n - 1).toNat

end

end A115925.P5789396267587960097

/-!
# A115926: Numbers k such that phi(k) = reversal(k)-k.

The programs for A115926, there is no canonical definition to state claims against.
-/

/-! ## A115926.P8293579369482269465

`filter[A072392(n+1), A187074(#)]`
-/

namespace A115926.P8293579369482269465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A115926.P8293579369482269465

/-!
# A115939: Numbers k such that the k-th triangular number contains each of the 10 decimal digits exactly once.

The programs for A115939, there is no canonical definition to state claims against.
-/

/-! ## A115939.P16938769245460473198

`floor(sqrt(2*A115940(n+1)))`
-/

namespace A115939.P16938769245460473198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A115940 (n + 1))

end

end A115939.P16938769245460473198

/-! ## A115939.P9361981109430540107

`A000027(round(sqrt(2*A115940(n+1))))`
-/

namespace A115939.P9361981109430540107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A115940 (n + 1) : ℝ))).toNat

end

end A115939.P9361981109430540107

/-! ## A115939.P14835379006322215167

`round(sqrt(2*(A115940(n+1)-A000005(n+1))))`
-/

namespace A115939.P14835379006322215167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (A115940 (n + 1) - A000005 (n + 1)) : ℝ))

end

end A115939.P14835379006322215167

/-! ## A115939.P17601168027341879337

`round(sqrt(2*A115940(n+1)-A000040(n+4)))`
-/

namespace A115939.P17601168027341879337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A115940 (n + 1) - A000040 (n + 4) : ℝ))

end

end A115939.P17601168027341879337

/-! ## A115939.P16660550355692195407

`round(sqrt(2*A115940(n+1)))%A176655(n+1)`
-/

namespace A115939.P16660550355692195407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A115940 (n + 1) : ℝ))) (A176655 (n + 1))

end

end A115939.P16660550355692195407

/-! ## A115939.P12628609571524331698

`round(sqrt(2*A115940(n+1))*A014963(12*(n+1)))`
-/

namespace A115939.P12628609571524331698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A115940 (n + 1) : ℝ) * (A014963 (12 * (n + 1)) : ℝ))

end

end A115939.P12628609571524331698

/-!
# A115944: Number of partitions of n into distinct factorials.

The programs for A115944, the canonical program `A115944.P14075242755931929840` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115944 has offset 0).

The definition of A115944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115944.P2965049813022520249

`char[A059590(n)]`
-/

namespace A115944.P2965049813022520249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115944.P2965049813022520249

namespace A115944

/-- `char[A059590(n)]` -/
def P2965049813022520249.Spec : Prop :=
  ∀ n, (P2965049813022520249.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P9728035507992226362

`C(A276008(n), n)`
-/

namespace A115944.P9728035507992226362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A276008 n).toNat n

end

end A115944.P9728035507992226362

namespace A115944

/-- `C(A276008(n), n)` -/
def P9728035507992226362.Spec : Prop :=
  ∀ n, (P9728035507992226362.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P5002733820736291913

`C(2, A276009(n)²)`
-/

namespace A115944.P5002733820736291913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A276009 n ^ 2).toNat

end

end A115944.P5002733820736291913

namespace A115944

/-- `C(2, A276009(n)²)` -/
def P5002733820736291913.Spec : Prop :=
  ∀ n, (P5002733820736291913.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P17694646717359756286

`floor(1/A227153(n))`
-/

namespace A115944.P17694646717359756286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A227153 n : ℚ)⌋

end

end A115944.P17694646717359756286

namespace A115944

/-- `floor(1/A227153(n))` -/
def P17694646717359756286.Spec : Prop :=
  ∀ n, P17694646717359756286.a n = A115944 n

end A115944

/-! ## A115944.P14075242755931929840

`floor(1/A343504(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115944

/-- `floor(1/A343504(n))` -/
def P14075242755931929840.Spec : Prop :=
  ∀ n, P14075242755931929840.a n = A115944 n

theorem P14075242755931929840.correct : P14075242755931929840.Spec := by
  intro n
  simp only [A115944]

end A115944

/-! ## A115944.P8208437155464984251

`floor(1/A351577(n))`
-/

namespace A115944.P8208437155464984251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A351577 n : ℚ)⌋

end

end A115944.P8208437155464984251

namespace A115944

/-- `floor(1/A351577(n))` -/
def P8208437155464984251.Spec : Prop :=
  ∀ n, P8208437155464984251.a n = A115944 n

end A115944

/-! ## A115944.P18286177616188257265

`A246359(n)!%2`
-/

namespace A115944.P18286177616188257265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A246359 n).toNat % 2

end

end A115944.P18286177616188257265

namespace A115944

/-- `A246359(n)!%2` -/
def P18286177616188257265.Spec : Prop :=
  ∀ n, (P18286177616188257265.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P15673032967205126602

`A000007(A257684(n))`
-/

namespace A115944.P15673032967205126602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A257684 n).toNat

end

end A115944.P15673032967205126602

namespace A115944

/-- `A000007(A257684(n))` -/
def P15673032967205126602.Spec : Prop :=
  ∀ n, P15673032967205126602.a n = A115944 n

end A115944

/-! ## A115944.P8902258364729975327

`A000007(A276009(n))`
-/

namespace A115944.P8902258364729975327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A276009 n).toNat

end

end A115944.P8902258364729975327

namespace A115944

/-- `A000007(A276009(n))` -/
def P8902258364729975327.Spec : Prop :=
  ∀ n, P8902258364729975327.a n = A115944 n

end A115944

/-! ## A115944.P1485975017837979694

`char[A277011(A048678(n))]`
-/

namespace A115944.P1485975017837979694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A048678 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115944.P1485975017837979694

namespace A115944

/-- `char[A277011(A048678(n))]` -/
def P1485975017837979694.Spec : Prop :=
  ∀ n, (P1485975017837979694.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P2873568495735953575

`A154281(A343504(n)+3)`
-/

namespace A115944.P2873568495735953575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (A343504 n + 3).toNat

end

end A115944.P2873568495735953575

namespace A115944

/-- `A154281(A343504(n)+3)` -/
def P2873568495735953575.Spec : Prop :=
  ∀ n, P2873568495735953575.a n = A115944 n

end A115944

/-! ## A115944.P16986460501783093779

`C(A060130(n), A034968(n))`
-/

namespace A115944.P16986460501783093779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A060130 n).toNat (A034968 n).toNat

end

end A115944.P16986460501783093779

namespace A115944

/-- `C(A060130(n), A034968(n))` -/
def P16986460501783093779.Spec : Prop :=
  ∀ n, (P16986460501783093779.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P12943227424856749380

`∏{d}[A276009(n), A276009(#)]`
-/

namespace A115944.P12943227424856749380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A276009 d

end

end A115944.P12943227424856749380

namespace A115944

/-- `∏{d}[A276009(n), A276009(#)]` -/
def P12943227424856749380.Spec : Prop :=
  ∀ n, P12943227424856749380.a n = A115944 n

end A115944

/-! ## A115944.P16574761247304061043

`1-A019431(n-A276008(n))`
-/

namespace A115944.P16574761247304061043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019431 ((n : ℤ) - A276008 n).toNat

end

end A115944.P16574761247304061043

namespace A115944

/-- `1-A019431(n-A276008(n))` -/
def P16574761247304061043.Spec : Prop :=
  ∀ n, P16574761247304061043.a n = A115944 n

end A115944

/-! ## A115944.P4375486398254800720

`C(8, A016945(n)*A276009(n))`
-/

namespace A115944.P4375486398254800720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 (A016945 n * A276009 n).toNat

end

end A115944.P4375486398254800720

namespace A115944

/-- `C(8, A016945(n)*A276009(n))` -/
def P4375486398254800720.Spec : Prop :=
  ∀ n, (P4375486398254800720.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P11491317681403518357

`A265333(n*a(A257687(n)))` with `a(0)=1`
-/

namespace A115944.P11491317681403518357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265333 ((n : ℤ) * a (A257687 n).toNat).toNat

end

end A115944.P11491317681403518357

namespace A115944

/-- `A265333(n*a(A257687(n)))` -/
def P11491317681403518357.Spec : Prop :=
  ∀ n, P11491317681403518357.a n = A115944 n

end A115944

/-! ## A115944.P16941019330598901664

`A257684(a(n-1))^A257684(n)` with `a(0)=1`
-/

namespace A115944.P16941019330598901664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A257684 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A257684 n : ℤ)

end

end A115944.P16941019330598901664

namespace A115944

/-- `A257684(a(n-1))^A257684(n)` -/
def P16941019330598901664.Spec : Prop :=
  ∀ n, P16941019330598901664.a n = (A115944 n : ℚ)

end A115944

/-! ## A115944.P1698559909398304718

`char[A283984(n)-A283984(A004526(n))]`
-/

namespace A115944.P1698559909398304718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283984 n - A283984 (A004526 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115944.P1698559909398304718

namespace A115944

/-- `char[A283984(n)-A283984(A004526(n))]` -/
def P1698559909398304718.Spec : Prop :=
  ∀ n, (P1698559909398304718.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P9108325123935695921

`char[eq[A034968(n), A060502(n)]]`
-/

namespace A115944.P9108325123935695921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115944.P9108325123935695921

namespace A115944

/-- `char[eq[A034968(n), A060502(n)]]` -/
def P9108325123935695921.Spec : Prop :=
  ∀ n, (P9108325123935695921.a n : ℤ) = A115944 n

end A115944

/-! ## A115944.P2712026048915280485

`A208575(A005361(A227153(n)²))`
-/

namespace A115944.P2712026048915280485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (A005361 (A227153 n ^ 2).toNat).toNat

end

end A115944.P2712026048915280485

namespace A115944

/-- `A208575(A005361(A227153(n)²))` -/
def P2712026048915280485.Spec : Prop :=
  ∀ n, P2712026048915280485.a n = A115944 n

end A115944

/-!
# A115945: Numbers that cannot be written as a sum of distinct factorials.

The programs for A115945, the canonical program `A115945.P7684042128696424024` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115945 has offset 1).

The definition of A115945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115945.P9214237515656125806

`comp[A059590(n)]`
-/

namespace A115945.P9214237515656125806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115945.P9214237515656125806

namespace A115945

/-- `comp[A059590(n)]` -/
def P9214237515656125806.Spec : Prop :=
  ∀ n, (P9214237515656125806.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P8376011760175394921

`lt[0, A276009(n)]`
-/

namespace A115945.P8376011760175394921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P8376011760175394921

namespace A115945

/-- `lt[0, A276009(n)]` -/
def P8376011760175394921.Spec : Prop :=
  ∀ n, (P8376011760175394921.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P16295888631993431836

`lt[1, 1-A276008(n)+n]`
-/

namespace A115945.P16295888631993431836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A276008 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P16295888631993431836

namespace A115945

/-- `lt[1, 1-A276008(n)+n]` -/
def P16295888631993431836.Spec : Prop :=
  ∀ n, (P16295888631993431836.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P4971547175291186141

`lt[0, A302242(A275735(n))]`
-/

namespace A115945.P4971547175291186141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P4971547175291186141

namespace A115945

/-- `lt[0, A302242(A275735(n))]` -/
def P4971547175291186141.Spec : Prop :=
  ∀ n, (P4971547175291186141.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P9413949455916953826

`lt[A059590(A275728(n)), n]`
-/

namespace A115945.P9413949455916953826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A275728 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115945.P9413949455916953826

namespace A115945

/-- `lt[A059590(A275728(n)), n]` -/
def P9413949455916953826.Spec : Prop :=
  ∀ n, (P9413949455916953826.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P587343151108424584

`lt[A275732(n), A275734(n)]`
-/

namespace A115945.P587343151108424584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115945.P587343151108424584

namespace A115945

/-- `lt[A275732(n), A275734(n)]` -/
def P587343151108424584.Spec : Prop :=
  ∀ n, (P587343151108424584.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P18249021811284983805

`lt[A278234(n), A278236(n)]`
-/

namespace A115945.P18249021811284983805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115945.P18249021811284983805

namespace A115945

/-- `lt[A278234(n), A278236(n)]` -/
def P18249021811284983805.Spec : Prop :=
  ∀ n, (P18249021811284983805.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P6470407547113828723

`eq[1, A019431(n-A276008(n))]`
-/

namespace A115945.P6470407547113828723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 ((n : ℤ) - A276008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115945.P6470407547113828723

namespace A115945

/-- `eq[1, A019431(n-A276008(n))]` -/
def P6470407547113828723.Spec : Prop :=
  ∀ n, (P6470407547113828723.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P12512101586202161529

`eq[0, A276009(a(n-1))^A276009(n)]` with `a(0)=1`
-/

namespace A115945.P12512101586202161529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (A276009 (SequenceMachineLib.roundAway (f2 (n - 1))).toNat : ℚ) ^ (A276009 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A115945.P12512101586202161529

namespace A115945

/-- `eq[0, A276009(a(n-1))^A276009(n)]` -/
def P12512101586202161529.Spec : Prop :=
  ∀ n, (P12512101586202161529.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P14383296994816255426

`lt[0, A257684(n)]`
-/

namespace A115945.P14383296994816255426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P14383296994816255426

namespace A115945

/-- `lt[0, A257684(n)]` -/
def P14383296994816255426.Spec : Prop :=
  ∀ n, (P14383296994816255426.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P6990427775611948804

`lt[1, A351577(n)]`
-/

namespace A115945.P6990427775611948804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P6990427775611948804

namespace A115945

/-- `lt[1, A351577(n)]` -/
def P6990427775611948804.Spec : Prop :=
  ∀ n, (P6990427775611948804.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P6528665418965493161

`eq[2, 2%(A246359(n)+1)]`
-/

namespace A115945.P6528665418965493161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A246359 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115945.P6528665418965493161

namespace A115945

/-- `eq[2, 2%(A246359(n)+1)]` -/
def P6528665418965493161.Spec : Prop :=
  ∀ n, (P6528665418965493161.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P14771036901074180151

`lt[A351951(n), A351950(n)]`
-/

namespace A115945.P14771036901074180151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115945.P14771036901074180151

namespace A115945

/-- `lt[A351951(n), A351950(n)]` -/
def P14771036901074180151.Spec : Prop :=
  ∀ n, (P14771036901074180151.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P7684042128696424024

`eq[0, A115944(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115945

/-- `eq[0, A115944(n)]` -/
def P7684042128696424024.Spec : Prop :=
  ∀ n, (P7684042128696424024.a n : ℤ) = A115945 (n + 1)

theorem P7684042128696424024.correct : P7684042128696424024.Spec := by
  intro n
  simp only [A115945, Nat.add_sub_cancel]

end A115945

/-! ## A115945.P2054407738760176028

`lt[1, A343504(n)]`
-/

namespace A115945.P2054407738760176028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P2054407738760176028

namespace A115945

/-- `lt[1, A343504(n)]` -/
def P2054407738760176028.Spec : Prop :=
  ∀ n, (P2054407738760176028.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P8607650270375318902

`lt[1, A227153(n)]`
-/

namespace A115945.P8607650270375318902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P8607650270375318902

namespace A115945

/-- `lt[1, A227153(n)]` -/
def P8607650270375318902.Spec : Prop :=
  ∀ n, (P8607650270375318902.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P13722368580771976204

`comp[A225901(record[A225901(n)])]`
-/

namespace A115945.P13722368580771976204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115945.P13722368580771976204

namespace A115945

/-- `comp[A225901(record[A225901(n)])]` -/
def P13722368580771976204.Spec : Prop :=
  ∀ n, (P13722368580771976204.a n : ℤ) = A115945 (n + 1)

end A115945

/-! ## A115945.P10632697984154830746

`lt[1, A344180(A277012(n))]`
-/

namespace A115945.P10632697984154830746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115945.P10632697984154830746

namespace A115945

/-- `lt[1, A344180(A277012(n))]` -/
def P10632697984154830746.Spec : Prop :=
  ∀ n, (P10632697984154830746.a n : ℤ) = A115945 (n + 1)

end A115945

/-!
# A115948: a(n) = (2^(semiprime(n)-1)) modulo (semiprime(n)^2).

The programs for A115948, there is no canonical definition to state claims against.
-/

/-! ## A115948.P12048200451476938330

`A220105(A001358(n+1))`
-/

namespace A115948.P12048200451476938330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A001358 (n + 1)).toNat

end

end A115948.P12048200451476938330

/-! ## A115948.P1248250158677757119

`A298944(A176193(n+1))`
-/

namespace A115948.P1248250158677757119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298944 (A176193 (n + 1)).toNat

end

end A115948.P1248250158677757119

/-! ## A115948.P12956922121871333430

`A220105(A176540(n+2))`
-/

namespace A115948.P12956922121871333430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (A176540 (n + 2)).toNat

end

end A115948.P12956922121871333430

/-! ## A115948.P15168559194321385098

`A220105(lt[1, A105700(n)])`
-/

namespace A115948.P15168559194321385098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115948.P15168559194321385098

/-! ## A115948.P2974035614009152285

`A220105(eq[2, A105700(n)])`
-/

namespace A115948.P2974035614009152285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115948.P2974035614009152285

/-!
# A115951: Expansion of 1/sqrt(1-4*x*y-4*x^2*y).

The programs for A115951, the canonical program `A115951.P2766778575542611630` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115951 has offset 0).

The definition of A115951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115951.P2766778575542611630

`C(2*col(n), col(n))*C(col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115951

/-- `C(2*col(n), col(n))*C(col(n), row(n)-col(n))` -/
def P2766778575542611630.Spec : Prop :=
  ∀ n, (P2766778575542611630.a n : ℤ) = A115951 n

theorem P2766778575542611630.correct : P2766778575542611630.Spec := by
  intro n
  simp only [A115951]

end A115951

/-! ## A115951.P4960584140320868380

`C(col(n), row(n)-col(n))*A000984(col(n))`
-/

namespace A115951.P4960584140320868380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℤ) * A000984 (SequenceMachineLib.triCol n)

end

end A115951.P4960584140320868380

namespace A115951

/-- `C(col(n), row(n)-col(n))*A000984(col(n))` -/
def P4960584140320868380.Spec : Prop :=
  ∀ n, P4960584140320868380.a n = A115951 n

theorem P4960584140320868380.correct : P4960584140320868380.Spec := by
  intro n
  simp only [A115951, Nat.add_sub_cancel, A115951.P4960584140320868380.a, A115951.P2766778575542611630.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115951

/-! ## A115951.P6088595594853294034

`A068555(n)*A098158(n)`
-/

namespace A115951.P6088595594853294034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 n * A098158 n

end

end A115951.P6088595594853294034

namespace A115951

/-- `A068555(n)*A098158(n)` -/
def P6088595594853294034.Spec : Prop :=
  ∀ n, P6088595594853294034.a n = A115951 n

end A115951

/-! ## A115951.P16420993260897275712

`A002260(n+1)*A117434(n)`
-/

namespace A115951.P16420993260897275712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A117434 n

end

end A115951.P16420993260897275712

namespace A115951

/-- `A002260(n+1)*A117434(n)` -/
def P16420993260897275712.Spec : Prop :=
  ∀ n, P16420993260897275712.a n = A115951 n

end A115951

/-! ## A115951.P6042226907569509540

`A051125(n+1)*A117434(n)`
-/

namespace A115951.P6042226907569509540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) * A117434 n

end

end A115951.P6042226907569509540

namespace A115951

/-- `A051125(n+1)*A117434(n)` -/
def P6042226907569509540.Spec : Prop :=
  ∀ n, P6042226907569509540.a n = A115951 n

end A115951

/-! ## A115951.P7743574039726416838

`A117434(n)*A123229(n+1)`
-/

namespace A115951.P7743574039726416838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A123229 (n + 1)

end

end A115951.P7743574039726416838

namespace A115951

/-- `A117434(n)*A123229(n+1)` -/
def P7743574039726416838.Spec : Prop :=
  ∀ n, P7743574039726416838.a n = A115951 n

end A115951

/-! ## A115951.P4714540749218687601

`A117434(n)*A131818(n+1)`
-/

namespace A115951.P4714540749218687601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A131818 (n + 1)

end

end A115951.P4714540749218687601

namespace A115951

/-- `A117434(n)*A131818(n+1)` -/
def P4714540749218687601.Spec : Prop :=
  ∀ n, P4714540749218687601.a n = A115951 n

end A115951

/-! ## A115951.P14280331361285641812

`A117434(n)*A134544(n+1)`
-/

namespace A115951.P14280331361285641812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A134544 (n + 1)

end

end A115951.P14280331361285641812

namespace A115951

/-- `A117434(n)*A134544(n+1)` -/
def P14280331361285641812.Spec : Prop :=
  ∀ n, P14280331361285641812.a n = A115951 n

end A115951

/-! ## A115951.P242486217151531537

`A117434(n)*A134868(n+1)`
-/

namespace A115951.P242486217151531537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A134868 (n + 1)

end

end A115951.P242486217151531537

namespace A115951

/-- `A117434(n)*A134868(n+1)` -/
def P242486217151531537.Spec : Prop :=
  ∀ n, P242486217151531537.a n = A115951 n

end A115951

/-! ## A115951.P2016812605274900166

`A117434(n)*A135223(n+1)`
-/

namespace A115951.P2016812605274900166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A135223 (n + 1)

end

end A115951.P2016812605274900166

namespace A115951

/-- `A117434(n)*A135223(n+1)` -/
def P2016812605274900166.Spec : Prop :=
  ∀ n, P2016812605274900166.a n = A115951 n

end A115951

/-! ## A115951.P2602545215359095410

`A115179(n)*A140756(n+1)`
-/

namespace A115951.P2602545215359095410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115179 n * A140756 (n + 1)

end

end A115951.P2602545215359095410

namespace A115951

/-- `A115179(n)*A140756(n+1)` -/
def P2602545215359095410.Spec : Prop :=
  ∀ n, P2602545215359095410.a n = A115951 n

end A115951

/-! ## A115951.P8908796298268139156

`A117434(n)*A143310(n+1)`
-/

namespace A115951.P8908796298268139156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A143310 (n + 1)

end

end A115951.P8908796298268139156

namespace A115951

/-- `A117434(n)*A143310(n+1)` -/
def P8908796298268139156.Spec : Prop :=
  ∀ n, P8908796298268139156.a n = A115951 n

end A115951

/-! ## A115951.P16119099259732098646

`A117434(n)*A187881(n+1)`
-/

namespace A115951.P16119099259732098646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A187881 (n + 1)

end

end A115951.P16119099259732098646

namespace A115951

/-- `A117434(n)*A187881(n+1)` -/
def P16119099259732098646.Spec : Prop :=
  ∀ n, P16119099259732098646.a n = A115951 n

end A115951

/-! ## A115951.P4226849231514068829

`A117434(n)*A384147(n+1)`
-/

namespace A115951.P4226849231514068829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A384147 (n + 1)

end

end A115951.P4226849231514068829

namespace A115951

/-- `A117434(n)*A384147(n+1)` -/
def P4226849231514068829.Spec : Prop :=
  ∀ n, P4226849231514068829.a n = A115951 n

end A115951

/-! ## A115951.P6633028313217857659

`A117434(n)*A384660(n+1)`
-/

namespace A115951.P6633028313217857659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A384660 (n + 1)

end

end A115951.P6633028313217857659

namespace A115951

/-- `A117434(n)*A384660(n+1)` -/
def P6633028313217857659.Spec : Prop :=
  ∀ n, P6633028313217857659.a n = A115951 n

end A115951

/-! ## A115951.P6895553615946961861

`A119900(n)*A135573(n)`
-/

namespace A115951.P6895553615946961861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 n * A135573 n

end

end A115951.P6895553615946961861

namespace A115951

/-- `A119900(n)*A135573(n)` -/
def P6895553615946961861.Spec : Prop :=
  ∀ n, P6895553615946961861.a n = A115951 n

end A115951

/-!
# A115952: Expansion of (1-x+x*y)/(1-x^2*y^2) - x^2/(1-x^2*y).

The programs for A115952, the canonical program `A115952.P13887102095914468109` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115952 has offset 0).

The definition of A115952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115952.P14884687993360831891

`A115713(n)%3`
-/

namespace A115952.P14884687993360831891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115713 n) 3

end

end A115952.P14884687993360831891

namespace A115952

/-- `A115713(n)%3` -/
def P14884687993360831891.Spec : Prop :=
  ∀ n, P14884687993360831891.a n = A115952 n

end A115952

/-! ## A115952.P13887102095914468109

`Δ[-A266502(A133280(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115952

/-- `Δ[-A266502(A133280(n))]` -/
def P13887102095914468109.Spec : Prop :=
  ∀ n, P13887102095914468109.a n = A115952 n

theorem P13887102095914468109.correct : P13887102095914468109.Spec := by
  intro n
  simp only [A115952]

end A115952

/-! ## A115952.P13471941921231998589

`Δ[-A266502(eq[1, A071028(n)])]`
-/

namespace A115952.P13471941921231998589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A266502 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115952.P13471941921231998589

namespace A115952

/-- `Δ[-A266502(eq[1, A071028(n)])]` -/
def P13471941921231998589.Spec : Prop :=
  ∀ n, P13471941921231998589.a n = A115952 n

end A115952

/-! ## A115952.P13186269933773133536

`A115713(n)/(2-A115715(n))²`
-/

namespace A115952.P13186269933773133536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115713 n : ℚ) / ((2 - A115715 n) ^ 2 : ℚ)

end

end A115952.P13186269933773133536

namespace A115952

/-- `A115713(n)/(2-A115715(n))²` -/
def P13186269933773133536.Spec : Prop :=
  ∀ n, P13186269933773133536.a n = (A115952 n : ℚ)

end A115952

/-! ## A115952.P11677244144281812866

`A115713(n)/A115639(A115715(n))`
-/

namespace A115952.P11677244144281812866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115713 n : ℚ) / (A115639 (A115715 n).toNat : ℚ)

end

end A115952.P11677244144281812866

namespace A115952

/-- `A115713(n)/A115639(A115715(n))` -/
def P11677244144281812866.Spec : Prop :=
  ∀ n, P11677244144281812866.a n = (A115952 n : ℚ)

end A115952

/-! ## A115952.P15395019025002654815

`Δ[-(A115718(n)%3)]`
-/

namespace A115952.P15395019025002654815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A115718 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115952.P15395019025002654815

namespace A115952

/-- `Δ[-(A115718(n)%3)]` -/
def P15395019025002654815.Spec : Prop :=
  ∀ n, P15395019025002654815.a n = A115952 n

end A115952

/-! ## A115952.P9238842745795006078

`Δ[-A115955(n)]`
-/

namespace A115952.P9238842745795006078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A115955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115952.P9238842745795006078

namespace A115952

/-- `Δ[-A115955(n)]` -/
def P9238842745795006078.Spec : Prop :=
  ∀ n, P9238842745795006078.a n = A115952 n

end A115952

/-! ## A115952.P6253097027986943057

`A115955(n)-A115955(n+1)`
-/

namespace A115952.P6253097027986943057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115955 n - A115955 (n + 1)

end

end A115952.P6253097027986943057

namespace A115952

/-- `A115955(n)-A115955(n+1)` -/
def P6253097027986943057.Spec : Prop :=
  ∀ n, P6253097027986943057.a n = A115952 n

end A115952

/-!
# A115953: Periodic {1,-1,0,0,1,-2,1,0,0,-1,1,-1}.

The programs for A115953, the canonical program `A115953.P1207985049942794865` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115953 has offset 0).

The definition of A115953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115953.P1207985049942794865

`A115714(n)%3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115953

/-- `A115714(n)%3` -/
def P1207985049942794865.Spec : Prop :=
  ∀ n, P1207985049942794865.a n = A115953 n

theorem P1207985049942794865.correct : P1207985049942794865.Spec := by
  intro n
  simp only [A115953]

end A115953

/-!
# A115954: Inverse of number triangle A115952.

The programs for A115954, there is no canonical definition to state claims against.
-/

/-! ## A115954.P4920932385266743439

`abs(A115526(n))`
-/

namespace A115954.P4920932385266743439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115526 n|

end

end A115954.P4920932385266743439

/-! ## A115954.P15631725722251188541

`gcd(A000038(n), A115526(n))`
-/

namespace A115954.P15631725722251188541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115526 n)

end

end A115954.P15631725722251188541

/-! ## A115954.P2284335711681794353

`and(A115526(n), A157694(n))`
-/

namespace A115954.P2284335711681794353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115526 n) (A157694 n)

end

end A115954.P2284335711681794353

/-! ## A115954.P18433487002161055905

`and(A115526(n), A158388(n))`
-/

namespace A115954.P18433487002161055905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115526 n) (A158388 n)

end

end A115954.P18433487002161055905

/-! ## A115954.P13189794357015560521

`and(A115526(n), A250662(n))`
-/

namespace A115954.P13189794357015560521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115526 n) (A250662 n)

end

end A115954.P13189794357015560521

/-! ## A115954.P7164848882380873480

`A115715(n)%3`
-/

namespace A115954.P7164848882380873480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115715 n) 3

end

end A115954.P7164848882380873480

/-! ## A115954.P13876326630126526350

`abs(A115636(n)%3)`
-/

namespace A115954.P13876326630126526350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A115636 n) 3|

end

end A115954.P13876326630126526350

/-! ## A115954.P3286088721448417616

`A000120(A115715(n))`
-/

namespace A115954.P3286088721448417616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A115715 n).toNat

end

end A115954.P3286088721448417616

/-! ## A115954.P361343949704079886

`A000120(abs(A115636(n)))`
-/

namespace A115954.P361343949704079886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 |A115636 n|.toNat

end

end A115954.P361343949704079886

/-! ## A115954.P6619896501532279658

`A059620(abs(A115636(n)))`
-/

namespace A115954.P6619896501532279658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 |A115636 n|.toNat

end

end A115954.P6619896501532279658

/-! ## A115954.P9648771810083983151

`A165471(A115715(n)²)`
-/

namespace A115954.P9648771810083983151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (A115715 n ^ 2).toNat

end

end A115954.P9648771810083983151

/-! ## A115954.P11150923953985684620

`A165586(A115715(n)²)`
-/

namespace A115954.P11150923953985684620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A115715 n ^ 2).toNat

end

end A115954.P11150923953985684620

/-! ## A115954.P2741771729926044800

`A165471(2*A115715(n))`
-/

namespace A115954.P2741771729926044800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (2 * A115715 n).toNat

end

end A115954.P2741771729926044800

/-! ## A115954.P3376572638922077716

`A240857(2*A115715(n))`
-/

namespace A115954.P3376572638922077716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (2 * A115715 n).toNat

end

end A115954.P3376572638922077716

/-! ## A115954.P14858552041932528301

`A057428(2*A115715(n))²`
-/

namespace A115954.P14858552041932528301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * A115715 n).toNat ^ 2

end

end A115954.P14858552041932528301

/-! ## A115954.P15349765967070995245

`A062157(2*A115715(n))²`
-/

namespace A115954.P15349765967070995245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * A115715 n).toNat ^ 2

end

end A115954.P15349765967070995245

/-! ## A115954.P8084061371286861052

`A240857(A115715(n)+A115715(n))`
-/

namespace A115954.P8084061371286861052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (A115715 n + A115715 n).toNat

end

end A115954.P8084061371286861052

/-! ## A115954.P10277649298926114950

`A115715(n*A115633(A115715(n)))`
-/

namespace A115954.P10277649298926114950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115715 ((n : ℤ) * A115633 (A115715 n).toNat).toNat

end

end A115954.P10277649298926114950

/-! ## A115954.P18327401442831396040

`A057078(A115636(n)+A016777(n))²`
-/

namespace A115954.P18327401442831396040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A115636 n + A016777 n).toNat ^ 2

end

end A115954.P18327401442831396040

/-! ## A115954.P8613232184834322097

`and(A115526(n), A251072(n))`
-/

namespace A115954.P8613232184834322097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115526 n) (A251072 n)

end

end A115954.P8613232184834322097

/-!
# A115955: Product of A115952 and summing matrix (1/(1-x),x).

The programs for A115955, there is no canonical definition to state claims against.
-/

/-! ## A115955.P2295407509747383080

`a(1-floor(sqrt(8*n))+n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A115955.P2295407509747383080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  a (1 - (Nat.sqrt (8 * n) : ℤ) + (n : ℤ)).toNat

end

end A115955.P2295407509747383080

/-! ## A115955.P2729380648694339407

`A115718(n)%3`
-/

namespace A115955.P2729380648694339407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115718 n) 3

end

end A115955.P2729380648694339407

/-! ## A115955.P16957940654778232134

`A267050(comp[∑[n]]+n)`
-/

namespace A115955.P16957940654778232134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A115955.P16957940654778232134

/-! ## A115955.P18050411089710876177

`abs(∑[A115952(abs(1-n))])`
-/

namespace A115955.P18050411089710876177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115952 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115955.P18050411089710876177

/-! ## A115955.P9569312463870548919

`char[(n+1)*A115718(n+1)]`
-/

namespace A115955.P9569312463870548919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A115955.P9569312463870548919

/-! ## A115955.P15863570061613208472

`A266502(A133280(n))`
-/

namespace A115955.P15863570061613208472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A133280 n).toNat

end

end A115955.P15863570061613208472

/-! ## A115955.P12145552447515197114

`A266502(A220508(n))`
-/

namespace A115955.P12145552447515197114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A220508 n).toNat

end

end A115955.P12145552447515197114

/-! ## A115955.P9760034191599985602

`A266502(eq[1, A071028(n)])`
-/

namespace A115955.P9760034191599985602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115955.P9760034191599985602

/-! ## A115955.P2641396778594045243

`A101688(n)*A115718(n)`
-/

namespace A115955.P2641396778594045243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A115718 n

end

end A115955.P2641396778594045243

/-! ## A115955.P14409588635158256519

`lcm(A115718(n), A187034(n))`
-/

namespace A115955.P14409588635158256519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115718 n) (A187034 n)

end

end A115955.P14409588635158256519

/-!
# A115956: Numbers k having exactly 2 distinct prime factors, the largest of which is greater than or equal to sqrt(k) (i.e., sqrt(k)-rough numbers with exactly 2 distinct prime factors).

The programs for A115956, there is no canonical definition to state claims against.
-/

/-! ## A115956.P11591776396326743870

`record[A217434(A360529(n+1))]`
-/

namespace A115956.P11591776396326743870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A360529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115956.P11591776396326743870

/-! ## A115956.P633104527275511088

`filter[A063538(n+1), A215480(#)]`
-/

namespace A115956.P633104527275511088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A115956.P633104527275511088

/-! ## A115956.P9562714693251307087

`filter[A063762(n+1), A215480(#)]`
-/

namespace A115956.P9562714693251307087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A115956.P9562714693251307087

/-! ## A115956.P3794936993718911036

`filter[A063763(n+1), A215480(#)]`
-/

namespace A115956.P3794936993718911036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A115956.P3794936993718911036

/-! ## A115956.P17701405883020542228

`filter[A064052(n+1), A215480(#)]`
-/

namespace A115956.P17701405883020542228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A115956.P17701405883020542228

/-! ## A115956.P129873377528125809

`filter[A122144(n+1), A215480(#)]`
-/

namespace A115956.P129873377528125809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A115956.P129873377528125809

/-! ## A115956.P17371356444611580164

`filter[A007774(n+1), A341591(#)]`
-/

namespace A115956.P17371356444611580164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115956.P17371356444611580164

/-! ## A115956.P7909537162789397672

`filter[A007774(n+1), A341642(#)]`
-/

namespace A115956.P7909537162789397672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115956.P7909537162789397672

/-! ## A115956.P11587192161809122570

`filter[A030231(n+1), A341591(#)]`
-/

namespace A115956.P11587192161809122570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115956.P11587192161809122570

/-! ## A115956.P11109545805913472383

`filter[A030231(n+1), A341642(#)]`
-/

namespace A115956.P11109545805913472383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115956.P11109545805913472383

/-!
# A115957: Numbers k having exactly 3 distinct prime factors, the largest of which is greater than or equal to sqrt(k) (i.e., sqrt(k)-rough numbers with exactly 3 distinct prime factors).

The programs for A115957, the canonical program `A115957.P5839293666489066599` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115957 has offset 1).

The definition of A115957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115957.P5839293666489066599

`∩[A030230(n+1), A063763(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115957

/-- `∩[A030230(n+1), A063763(n+1)]` -/
def P5839293666489066599.Spec : Prop :=
  ∀ n, (P5839293666489066599.a n : ℤ) = A115957 (n + 1)

theorem P5839293666489066599.correct : P5839293666489066599.Spec := by
  intro n
  simp only [A115957, Nat.add_sub_cancel]

end A115957

/-! ## A115957.P17087090847621654836

`∩[A033992(n+1), A063763(n+1)]`
-/

namespace A115957.P17087090847621654836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P17087090847621654836

namespace A115957

/-- `∩[A033992(n+1), A063763(n+1)]` -/
def P17087090847621654836.Spec : Prop :=
  ∀ n, (P17087090847621654836.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P16219947455634462705

`∩[A063763(n+1), A214195(n+1)]`
-/

namespace A115957.P16219947455634462705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P16219947455634462705

namespace A115957

/-- `∩[A063763(n+1), A214195(n+1)]` -/
def P16219947455634462705.Spec : Prop :=
  ∀ n, (P16219947455634462705.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P17854936403326353538

`∩[A033992(n+1), A063762(n+1)]`
-/

namespace A115957.P17854936403326353538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P17854936403326353538

namespace A115957

/-- `∩[A033992(n+1), A063762(n+1)]` -/
def P17854936403326353538.Spec : Prop :=
  ∀ n, (P17854936403326353538.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P9689788516672135483

`∩[A063762(n+1), A214195(n+1)]`
-/

namespace A115957.P9689788516672135483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P9689788516672135483

namespace A115957

/-- `∩[A063762(n+1), A214195(n+1)]` -/
def P9689788516672135483.Spec : Prop :=
  ∀ n, (P9689788516672135483.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P16328399332297383758

`∩[A033992(n+1), A064052(n+1)]`
-/

namespace A115957.P16328399332297383758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P16328399332297383758

namespace A115957

/-- `∩[A033992(n+1), A064052(n+1)]` -/
def P16328399332297383758.Spec : Prop :=
  ∀ n, (P16328399332297383758.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P14901686692560041299

`∩[A064052(n+1), A214195(n+1)]`
-/

namespace A115957.P14901686692560041299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P14901686692560041299

namespace A115957

/-- `∩[A064052(n+1), A214195(n+1)]` -/
def P14901686692560041299.Spec : Prop :=
  ∀ n, (P14901686692560041299.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P8245262973953394697

`∩[A033992(n+1), A063538(n+1)]`
-/

namespace A115957.P8245262973953394697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P8245262973953394697

namespace A115957

/-- `∩[A033992(n+1), A063538(n+1)]` -/
def P8245262973953394697.Spec : Prop :=
  ∀ n, (P8245262973953394697.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P17365646167549523467

`∩[A063538(n+1), A214195(n+1)]`
-/

namespace A115957.P17365646167549523467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P17365646167549523467

namespace A115957

/-- `∩[A063538(n+1), A214195(n+1)]` -/
def P17365646167549523467.Spec : Prop :=
  ∀ n, (P17365646167549523467.a n : ℤ) = A115957 (n + 1)

end A115957

/-! ## A115957.P9263152887560705429

`filter[A063763(n+1), A092248(#)]`
-/

namespace A115957.P9263152887560705429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A115957.P9263152887560705429

namespace A115957

/-- `filter[A063763(n+1), A092248(#)]` -/
def P9263152887560705429.Spec : Prop :=
  ∀ n, P9263152887560705429.a n = A115957 (n + 1)

end A115957

/-! ## A115957.P10714861627840867341

`filter[A033992(n+1), A341591(#)]`
-/

namespace A115957.P10714861627840867341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115957.P10714861627840867341

namespace A115957

/-- `filter[A033992(n+1), A341591(#)]` -/
def P10714861627840867341.Spec : Prop :=
  ∀ n, P10714861627840867341.a n = A115957 (n + 1)

end A115957

/-! ## A115957.P10065829503249189985

`filter[A033992(n+1), A341642(#)]`
-/

namespace A115957.P10065829503249189985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115957.P10065829503249189985

namespace A115957

/-- `filter[A033992(n+1), A341642(#)]` -/
def P10065829503249189985.Spec : Prop :=
  ∀ n, P10065829503249189985.a n = A115957 (n + 1)

end A115957

/-! ## A115957.P18269398166107262110

`filter[A214195(n+1), A341591(#)]`
-/

namespace A115957.P18269398166107262110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115957.P18269398166107262110

namespace A115957

/-- `filter[A214195(n+1), A341591(#)]` -/
def P18269398166107262110.Spec : Prop :=
  ∀ n, P18269398166107262110.a n = A115957 (n + 1)

end A115957

/-! ## A115957.P3910900947654654461

`filter[A214195(n+1), A341642(#)]`
-/

namespace A115957.P3910900947654654461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115957.P3910900947654654461

namespace A115957

/-- `filter[A214195(n+1), A341642(#)]` -/
def P3910900947654654461.Spec : Prop :=
  ∀ n, P3910900947654654461.a n = A115957 (n + 1)

end A115957

/-! ## A115957.P14086094684138131395

`filter[A373350(3*n+1), A341591(#)]`
-/

namespace A115957.P14086094684138131395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373350 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115957.P14086094684138131395

namespace A115957

/-- `filter[A373350(3*n+1), A341591(#)]` -/
def P14086094684138131395.Spec : Prop :=
  ∀ n, P14086094684138131395.a n = A115957 (n + 1)

end A115957

/-! ## A115957.P8332225875725857751

`filter[A373350(3*n+1), A341642(#)]`
-/

namespace A115957.P8332225875725857751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373350 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115957.P8332225875725857751

namespace A115957

/-- `filter[A373350(3*n+1), A341642(#)]` -/
def P8332225875725857751.Spec : Prop :=
  ∀ n, P8332225875725857751.a n = A115957 (n + 1)

end A115957

/-!
# A115958: Numbers k having exactly 4 distinct prime factors, the largest of which is greater than or equal to sqrt(k) (i.e., sqrt(k)-rough numbers with exactly 4 distinct prime factors).

The programs for A115958, the canonical program `A115958.P9505693266875593204` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115958 has offset 1).

The definition of A115958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115958.P9505693266875593204

`filter[A033993(n+1), A341591(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A115958

/-- `filter[A033993(n+1), A341591(#)]` -/
def P9505693266875593204.Spec : Prop :=
  ∀ n, P9505693266875593204.a n = A115958 (n + 1)

theorem P9505693266875593204.correct : P9505693266875593204.Spec := by
  intro n
  simp only [A115958, Nat.add_sub_cancel]

end A115958

/-! ## A115958.P3970883857595541876

`filter[A151797(n+1), A341591(#)]`
-/

namespace A115958.P3970883857595541876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115958.P3970883857595541876

namespace A115958

/-- `filter[A151797(n+1), A341591(#)]` -/
def P3970883857595541876.Spec : Prop :=
  ∀ n, P3970883857595541876.a n = A115958 (n + 1)

end A115958

/-! ## A115958.P640876738616065116

`filter[A151797(n+1), A341642(#)]`
-/

namespace A115958.P640876738616065116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115958.P640876738616065116

namespace A115958

/-- `filter[A151797(n+1), A341642(#)]` -/
def P640876738616065116.Spec : Prop :=
  ∀ n, P640876738616065116.a n = A115958 (n + 1)

end A115958

/-! ## A115958.P11373283960627930029

`filter[A376861(n+1), A341591(#)]`
-/

namespace A115958.P11373283960627930029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A115958.P11373283960627930029

namespace A115958

/-- `filter[A376861(n+1), A341591(#)]` -/
def P11373283960627930029.Spec : Prop :=
  ∀ n, P11373283960627930029.a n = A115958 (n + 1)

end A115958

/-! ## A115958.P14575396980790626360

`filter[A376861(n+1), A341642(#)]`
-/

namespace A115958.P14575396980790626360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341642 (f1 j).toNat = 1) n)

end

end A115958.P14575396980790626360

namespace A115958

/-- `filter[A376861(n+1), A341642(#)]` -/
def P14575396980790626360.Spec : Prop :=
  ∀ n, P14575396980790626360.a n = A115958 (n + 1)

end A115958

/-!
# A115959: Numbers k having exactly 5 distinct prime factors, the largest of which is greater than or equal to sqrt(k) (i.e., sqrt(k)-rough numbers with exactly 5 distinct prime factors).

The programs for A115959, there is no canonical definition to state claims against.
-/

/-! ## A115959.P262888514529106645

`record[A007947(lcm(3, A064114(n+18)))]`
-/

namespace A115959.P262888514529106645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.lcm 3 (A064114 (n + 18)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115959.P262888514529106645

/-!
# A115961: a(n)=least number having exactly n distinct prime factors, the largest of which is greater than or equal to sqrt(a(n)).

The programs for A115961, there is no canonical definition to state claims against.
-/

/-! ## A115961.P7523800697152540199

`A002110(n)*A038710(n)`
-/

namespace A115961.P7523800697152540199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A038710 n

end

end A115961.P7523800697152540199

/-! ## A115961.P9104877987219480862

`A038710(n)*A096334(∑[n])`
-/

namespace A115961.P9104877987219480862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n * A096334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115961.P9104877987219480862

/-! ## A115961.P6537140579321182456

`A038710(n)*A121281(∑[n])`
-/

namespace A115961.P6537140579321182456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n * A121281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115961.P6537140579321182456

/-! ## A115961.P15111343018174314109

`(A006862(n)-1)*A038710(n)`
-/

namespace A115961.P15111343018174314109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006862 n - 1) * A038710 n

end

end A115961.P15111343018174314109

/-! ## A115961.P1910762843371409904

`∏[A008578(n+1)]*A038710(n)`
-/

namespace A115961.P1910762843371409904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A038710 n

end

end A115961.P1910762843371409904

/-!
# A115963: Numerator of Sum_{i=1..n} 1/prime(i)^3.

The programs for A115963, there is no canonical definition to state claims against.
-/

/-! ## A115963.P12117006060732486270

`A075987(n+1)-A115964(n+1)`
-/

namespace A115963.P12117006060732486270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075987 (n + 1) - A115964 (n + 1)

end

end A115963.P12117006060732486270

/-!
# A115964: Denominator of Sum_{i=1..n} 1/prime(i)^3.

The programs for A115964, the canonical program `A115964.P16204198474867126447` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115964 has offset 1).

The definition of A115964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115964.P16204198474867126447

`A002110(n+1)^3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115964

/-- `A002110(n+1)^3` -/
def P16204198474867126447.Spec : Prop :=
  ∀ n, P16204198474867126447.a n = A115964 (n + 1)

theorem P16204198474867126447.correct : P16204198474867126447.Spec := by
  intro n
  simp only [A115964, Nat.add_sub_cancel]

end A115964

/-! ## A115964.P5522253291619549538

`∏[A030078(n+1)]`
-/

namespace A115964.P5522253291619549538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115964.P5522253291619549538

namespace A115964

/-- `∏[A030078(n+1)]` -/
def P5522253291619549538.Spec : Prop :=
  ∀ n, P5522253291619549538.a n = A115964 (n + 1)

end A115964

/-! ## A115964.P11301288662551647451

`∏[A000040(n+1)^3]`
-/

namespace A115964.P11301288662551647451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115964.P11301288662551647451

namespace A115964

/-- `∏[A000040(n+1)^3]` -/
def P11301288662551647451.Spec : Prop :=
  ∀ n, P11301288662551647451.a n = A115964 (n + 1)

end A115964

/-! ## A115964.P8901008350402173660

`∏[record[A006530(n+2)^3]]`
-/

namespace A115964.P8901008350402173660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115964.P8901008350402173660

namespace A115964

/-- `∏[record[A006530(n+2)^3]]` -/
def P8901008350402173660.Spec : Prop :=
  ∀ n, P8901008350402173660.a n = A115964 (n + 1)

end A115964

/-! ## A115964.P14649666916098677915

`∏[record[A020639(n+2)^3]]`
-/

namespace A115964.P14649666916098677915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A115964.P14649666916098677915

namespace A115964

/-- `∏[record[A020639(n+2)^3]]` -/
def P14649666916098677915.Spec : Prop :=
  ∀ n, P14649666916098677915.a n = A115964 (n + 1)

end A115964

/-!
# A115965: Number of planar subpartitions of the size n pyramidal planar partition.

The programs for A115965, there is no canonical definition to state claims against.
-/

/-! ## A115965.P6987095729511463537

`and(∏{p}[n+1, -#], A321645(C(n, 2)+2))`
-/

namespace A115965.P6987095729511463537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) (A321645 (Nat.choose n 2 + 2))

end

end A115965.P6987095729511463537

/-!
# A115966: Inverse permutation to sequence A094077.

The programs for A115966, there is no canonical definition to state claims against.
-/

/-! ## A115966.P1504044817227533023

`ceil(A026251(n+1)/ratio[n+1])`
-/

namespace A115966.P1504044817227533023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026251 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉

end

end A115966.P1504044817227533023

/-! ## A115966.P14427985218714441236

`A026251(n+1)-A080764(n)`
-/

namespace A115966.P14427985218714441236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026251 (n + 1) - A080764 n

end

end A115966.P14427985218714441236

/-! ## A115966.P2502497576822220327

`A026251(n+1)-A188295(n+2)`
-/

namespace A115966.P2502497576822220327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026251 (n + 1) - A188295 (n + 2)

end

end A115966.P2502497576822220327

/-! ## A115966.P8871524770194960030

`2*A026249(n+1)-A080764(n)`
-/

namespace A115966.P8871524770194960030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026249 (n + 1) - A080764 n

end

end A115966.P8871524770194960030

/-! ## A115966.P18263886358173515874

`A026251(n+1)-Δ[A049472(n+1)]`
-/

namespace A115966.P18263886358173515874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026251 (n + 1) - (f1 (n + 1) - f1 n)

end

end A115966.P18263886358173515874

/-! ## A115966.P15845991481151267365

`A004277(A026249(n+1))-A080764(n)`
-/

namespace A115966.P15845991481151267365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A026249 (n + 1)).toNat - A080764 n

end

end A115966.P15845991481151267365

/-! ## A115966.P11257306250221530289

`A000267(A026249(n+1)²-A080764(n))`
-/

namespace A115966.P11257306250221530289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A026249 (n + 1) ^ 2 - A080764 n).toNat

end

end A115966.P11257306250221530289

/-! ## A115966.P5904879806223562790

`A171588(n+1)+A004273(A026249(n+1))`
-/

namespace A115966.P5904879806223562790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + A004273 (A026249 (n + 1)).toNat

end

end A115966.P5904879806223562790

/-! ## A115966.P10113750011477136520

`A004273(A026249(n+1))+Δ[A183138(n+1)]`
-/

namespace A115966.P10113750011477136520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026249 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A115966.P10113750011477136520

/-! ## A115966.P15971471659563854530

`A026251(n+1)-A001222(Δ[A003152(n+1)])`
-/

namespace A115966.P15971471659563854530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026251 (n + 1) - A001222 (f1 (n + 1) - f1 n).toNat

end

end A115966.P15971471659563854530

/-!
# A115967: Expansion of 1/(2*sqrt(1-2*x-3*x^2) - 1).

The programs for A115967, there is no canonical definition to state claims against.
-/

/-! ## A115967.P15234432046540599984

`A004001(A218836(n)+A006516(n))`
-/

namespace A115967.P15234432046540599984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A218836 n + A006516 n).toNat

end

end A115967.P15234432046540599984

/-! ## A115967.P13627534057783266625

`A157271(A217779(n))`
-/

namespace A115967.P13627534057783266625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A217779 n).toNat

end

end A115967.P13627534057783266625

/-!
# A115968: Expansion of 1/(sqrt(1-4*x) + sqrt(1-2*x-3*x^2) - 1).

The programs for A115968, there is no canonical definition to state claims against.
-/

/-! ## A115968.P2468645242879311303

`A195072(∑[A290924(n)])`
-/

namespace A115968.P2468645242879311303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115968.P2468645242879311303

/-!
# A115969: Expansion of 1/(2*sqrt(1-6*x+x^2) - 1).

The programs for A115969, there is no canonical definition to state claims against.
-/

/-! ## A115969.P954875170041627092

`A105081(∑[A082412(n)])`
-/

namespace A115969.P954875170041627092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A115969.P954875170041627092

/-!
# A115970: Expansion of 1/(4*sqrt(1-4*x) - 3).

The programs for A115970, the canonical program `A115970.P12697513617867407272` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115970 has offset 0).

The definition of A115970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115970.P12697513617867407272

`(64*a(n-1)-8*A000108(n-1))/7` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115970

/-- `(64*a(n-1)-8*A000108(n-1))/7` -/
def P12697513617867407272.Spec : Prop :=
  ∀ n, P12697513617867407272.a n = (A115970 n : ℚ)

end A115970

/-! ## A115970.P10522982979521818722

`A067347(eq[8, A002262(n)])`
-/

namespace A115970.P10522982979521818722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115970.P10522982979521818722

namespace A115970

/-- `A067347(eq[8, A002262(n)])` -/
def P10522982979521818722.Spec : Prop :=
  ∀ n, P10522982979521818722.a n = A115970 n

end A115970

/-! ## A115970.P17290438904420311450

`A067347(eq[9, A002260(n+1)])`
-/

namespace A115970.P17290438904420311450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115970.P17290438904420311450

namespace A115970

/-- `A067347(eq[9, A002260(n+1)])` -/
def P17290438904420311450.Spec : Prop :=
  ∀ n, P17290438904420311450.a n = A115970 n

end A115970

/-! ## A115970.P18293354910554559631

`A156362(2*n)/7^n`
-/

namespace A115970.P18293354910554559631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156362 (2 * n) : ℚ) / (7 ^ n : ℚ)

end

end A115970.P18293354910554559631

namespace A115970

/-- `A156362(2*n)/7^n` -/
def P18293354910554559631.Spec : Prop :=
  ∀ n, P18293354910554559631.a n = (A115970 n : ℚ)

end A115970

/-!
# A115971: a(0) = 0. If a(n) = 0, then a(2^n) through a(2^(n+1)-1) are each equal to 1. If a(n) = 1, then a(m + 2^n) = a(m) for each m, 0 <= m <= 2^n -1.

The programs for A115971, there is no canonical definition to state claims against.
-/

/-! ## A115971.P14527840031339072436

`1-A236677(n)`
-/

namespace A115971.P14527840031339072436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A236677 n

end

end A115971.P14527840031339072436

/-! ## A115971.P14259966124122090059

`char[comp[A079599(n)]]`
-/

namespace A115971.P14259966124122090059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115971.P14259966124122090059

/-! ## A115971.P659302035658768882

`ceil(A034798(n)/4)`
-/

namespace A115971.P659302035658768882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034798 n : ℚ) / 4⌉

end

end A115971.P659302035658768882

/-! ## A115971.P4526045172028964484

`(A236677(n)+A071053(n))%2`
-/

namespace A115971.P4526045172028964484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236677 n + A071053 n) 2

end

end A115971.P4526045172028964484

/-! ## A115971.P12888371966989224279

`(A236677(n)+A000265(n+1))%2`
-/

namespace A115971.P12888371966989224279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236677 n + A000265 (n + 1)) 2

end

end A115971.P12888371966989224279

/-! ## A115971.P16561573384143530822

`(A236677(n)+A031938(n+1))%2`
-/

namespace A115971.P16561573384143530822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236677 n + A031938 (n + 1)) 2

end

end A115971.P16561573384143530822

/-! ## A115971.P5987504976826180799

`(A236677(n)+A083737(n+1))%2`
-/

namespace A115971.P5987504976826180799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236677 n + A083737 (n + 1)) 2

end

end A115971.P5987504976826180799

/-! ## A115971.P14281699006931316289

`(A236677(n)+A145127(2*(n+2)))%2`
-/

namespace A115971.P14281699006931316289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236677 n + A145127 (2 * (n + 2))) 2

end

end A115971.P14281699006931316289

/-! ## A115971.P11882392003944789952

`1-A320006(A001196(n))`
-/

namespace A115971.P11882392003944789952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A320006 (A001196 n).toNat

end

end A115971.P11882392003944789952

/-! ## A115971.P1299693528275711020

`1-A320006(A106485(n))`
-/

namespace A115971.P1299693528275711020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A320006 (A106485 n).toNat

end

end A115971.P1299693528275711020

/-! ## A115971.P300328838059582203

`A010051(and(n, A329900(n²+10)²)+1)`
-/

namespace A115971.P300328838059582203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.land (n : ℤ) (A329900 (n ^ 2 + 10) ^ 2) + 1).toNat

end

end A115971.P300328838059582203

/-! ## A115971.P6571603761852664357

`and(1, gcd(n, A000217(∑[n])))`
-/

namespace A115971.P6571603761852664357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Int.gcd (n : ℤ) (A000217 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A115971.P6571603761852664357

/-! ## A115971.P955692737632356148

`or(n, A000217(A000217(n)))%2`
-/

namespace A115971.P955692737632356148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (n : ℤ) (A000217 (A000217 n).toNat)) 2

end

end A115971.P955692737632356148

/-! ## A115971.P3914785845349827823

`A000217(A000217(n))%A020639(n+2)`
-/

namespace A115971.P3914785845349827823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A000217 n).toNat) (A020639 (n + 2))

end

end A115971.P3914785845349827823

/-! ## A115971.P10182434783778701987

`(A000045(2*n)%A000032(n+1))%3`
-/

namespace A115971.P10182434783778701987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000045 (2 * n)) (A000032 (n + 1))) 3

end

end A115971.P10182434783778701987

/-! ## A115971.P14625586826364440716

`ceil(and(5, n)/ϕ^(2*n))`
-/

namespace A115971.P14625586826364440716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 5 n : ℝ) / Real.goldenRatio ^ (2 * n)⌉

end

end A115971.P14625586826364440716

/-! ## A115971.P4752630627513778331

`and(A032154(n), A215502(n))`
-/

namespace A115971.P4752630627513778331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032154 n) (A215502 n)

end

end A115971.P4752630627513778331

/-! ## A115971.P2324412840974707621

`and(A209530(n+1), A213482(n))`
-/

namespace A115971.P2324412840974707621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A209530 (n + 1)) (A213482 n)

end

end A115971.P2324412840974707621

/-! ## A115971.P17825594399459299230

`and(A209530(n+1), A213488(n))`
-/

namespace A115971.P17825594399459299230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A209530 (n + 1)) (A213488 n)

end

end A115971.P17825594399459299230

/-! ## A115971.P17467653804883360562

`and(A209530(n+1), A217366(n))`
-/

namespace A115971.P17467653804883360562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A209530 (n + 1)) (A217366 n)

end

end A115971.P17467653804883360562

/-!
# A115972: a(n) = least prime P(n) such that P(n)-2*p(n) is prime and P(n+1)>P(n) with p(n)=n-th prime.

The programs for A115972, there is no canonical definition to state claims against.
-/

/-! ## A115972.P17296664517104434721

`A151800(A179328(n+1)+4)`
-/

namespace A115972.P17296664517104434721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A179328 (n + 1) + 4).toNat

end

end A115972.P17296664517104434721

/-! ## A115972.P16955359639821870635

`A007918(A179328(n+1)+5)`
-/

namespace A115972.P16955359639821870635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A179328 (n + 1) + 5).toNat

end

end A115972.P16955359639821870635

/-!
# A115973: Number of distinct prime factors of p^p + 1 where p is prime(n).

The programs for A115973, there is no canonical definition to state claims against.
-/

/-! ## A115973.P1866555915648673539

`A344869(A000040(n+1))`
-/

namespace A115973.P1866555915648673539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 (A000040 (n + 1)).toNat

end

end A115973.P1866555915648673539

/-! ## A115973.P14936273290120257017

`A344869(A006005(n+1))`
-/

namespace A115973.P14936273290120257017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 (A006005 (n + 1)).toNat

end

end A115973.P14936273290120257017

/-! ## A115973.P5086373689681686959

`A344869(A049551(n+1))`
-/

namespace A115973.P5086373689681686959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 (A049551 (n + 1)).toNat

end

end A115973.P5086373689681686959

/-! ## A115973.P13631041146642252209

`A344869(A049569(n+1))`
-/

namespace A115973.P13631041146642252209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 (A049569 (n + 1)).toNat

end

end A115973.P13631041146642252209

/-! ## A115973.P14460211848431734737

`A344869(A057448(n+1))`
-/

namespace A115973.P14460211848431734737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344869 (A057448 (n + 1)).toNat

end

end A115973.P14460211848431734737

/-!
# A115974: Number of Feynman diagrams (vanishing and non-vanishing) of order 2n for the proper self-energy function of quantum electrodynamics (QED).

The programs for A115974, there is no canonical definition to state claims against.
-/

/-! ## A115974.P7497219776184693940

`A127058(∑[n]-A057428(n))`
-/

namespace A115974.P7497219776184693940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127058 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057428 n).toNat

end

end A115974.P7497219776184693940

/-! ## A115974.P14798250121426525726

`A127058(∑[n]+A057428(n)²)`
-/

namespace A115974.P14798250121426525726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127058 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A057428 n ^ 2).toNat

end

end A115974.P14798250121426525726

/-! ## A115974.P1526736347985656316

`A127058(eq[n, n*A002262(n)])`
-/

namespace A115974.P1526736347985656316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115974.P1526736347985656316

/-! ## A115974.P2166669360227508350

`A127058(A134869(n+1)-(n+1))`
-/

namespace A115974.P2166669360227508350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127058 (A134869 (n + 1) - (n + 1 : ℤ)).toNat

end

end A115974.P2166669360227508350

/-! ## A115974.P17274020425179911403

`record[A127058(A175686(A006369(n)))]`
-/

namespace A115974.P17274020425179911403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127058 (A175686 (A006369 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115974.P17274020425179911403

/-!
# A115975: Numbers of the form p^k, where p is a prime and k is a Fibonacci number.

The programs for A115975, the canonical program `A115975.P17265388920896280111` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115975 has offset 1).

The definition of A115975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115975.P17265388920896280111

`record[n/a(A318464(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A115975

/-- `record[n/a(A318464(n))]` -/
def P17265388920896280111.Spec : Prop :=
  ∀ n, P17265388920896280111.a n = (A115975 (n + 1) : ℚ)

end A115975

/-! ## A115975.P17876512396828216730

`lt[A318464(n+1), 2]+1`
-/

namespace A115975.P17876512396828216730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318464 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115975.P17876512396828216730

namespace A115975

/-- `lt[A318464(n+1), 2]+1` -/
def P17876512396828216730.Spec : Prop :=
  ∀ n, (P17876512396828216730.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P4688597666817492375

`lt[A318465(n+1), 3]+1`
-/

namespace A115975.P4688597666817492375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318465 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115975.P4688597666817492375

namespace A115975

/-- `lt[A318465(n+1), 3]+1` -/
def P4688597666817492375.Spec : Prop :=
  ∀ n, (P4688597666817492375.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P14602788621080084773

`∩[A000961(n+1), A115105(n+1)]`
-/

namespace A115975.P14602788621080084773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115975.P14602788621080084773

namespace A115975

/-- `∩[A000961(n+1), A115105(n+1)]` -/
def P14602788621080084773.Spec : Prop :=
  ∀ n, (P14602788621080084773.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P10093931852667783957

`∩[A036116(n+1), A115105(n+1)]`
-/

namespace A115975.P10093931852667783957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115975.P10093931852667783957

namespace A115975

/-- `∩[A036116(n+1), A115105(n+1)]` -/
def P10093931852667783957.Spec : Prop :=
  ∀ n, (P10093931852667783957.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P10302059862035074849

`∩[A115105(n+1), A164336(n+1)]`
-/

namespace A115975.P10302059862035074849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115975.P10302059862035074849

namespace A115975

/-- `∩[A115105(n+1), A164336(n+1)]` -/
def P10302059862035074849.Spec : Prop :=
  ∀ n, (P10302059862035074849.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P18331384488435177066

`∩[A000961(n+1), A115063(n+1)]`
-/

namespace A115975.P18331384488435177066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115975.P18331384488435177066

namespace A115975

/-- `∩[A000961(n+1), A115063(n+1)]` -/
def P18331384488435177066.Spec : Prop :=
  ∀ n, (P18331384488435177066.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P16945398050452660612

`∩[A115063(n+1), A164336(n+1)]`
-/

namespace A115975.P16945398050452660612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115975.P16945398050452660612

namespace A115975

/-- `∩[A115063(n+1), A164336(n+1)]` -/
def P16945398050452660612.Spec : Prop :=
  ∀ n, (P16945398050452660612.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P408569208161942352

`lt[A331107(n+1), n+3]+1`
-/

namespace A115975.P408569208161942352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331107 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115975.P408569208161942352

namespace A115975

/-- `lt[A331107(n+1), n+3]+1` -/
def P408569208161942352.Spec : Prop :=
  ∀ n, (P408569208161942352.a n : ℤ) = A115975 (n + 1)

end A115975

/-! ## A115975.P18031752499916391660

`record[A028233(A115063(n+1))]`
-/

namespace A115975.P18031752499916391660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A115063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115975.P18031752499916391660

namespace A115975

/-- `record[A028233(A115063(n+1))]` -/
def P18031752499916391660.Spec : Prop :=
  ∀ n, P18031752499916391660.a n = A115975 (n + 1)

end A115975

/-! ## A115975.P17092986940514288412

`filter[A115063(n+1), A010055(#)]`
-/

namespace A115975.P17092986940514288412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A115975.P17092986940514288412

namespace A115975

/-- `filter[A115063(n+1), A010055(#)]` -/
def P17092986940514288412.Spec : Prop :=
  ∀ n, P17092986940514288412.a n = A115975 (n + 1)

end A115975

/-! ## A115975.P15423320866301008078

`filter[A115105(n+1), A010055(#)]`
-/

namespace A115975.P15423320866301008078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A115975.P15423320866301008078

namespace A115975

/-- `filter[A115105(n+1), A010055(#)]` -/
def P15423320866301008078.Spec : Prop :=
  ∀ n, P15423320866301008078.a n = A115975 (n + 1)

end A115975

/-!
# A115976: Numbers k that divide 2^(k-2) + 1.

The programs for A115976, there is no canonical definition to state claims against.
-/

/-! ## A115976.P8206887372730540710

`record[A244673(n+1)%2*A244673(n+1)]`
-/

namespace A115976.P8206887372730540710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244673 (n + 1)) 2 * A244673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115976.P8206887372730540710

/-!
# A115977: Expansion of elliptic modular function lambda in powers of the nome q.

The programs for A115977, there is no canonical definition to state claims against.
-/

/-! ## A115977.P1891248038754529084

`16*A005798(n+1)`
-/

namespace A115977.P1891248038754529084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A005798 (n + 1)

end

end A115977.P1891248038754529084

/-! ## A115977.P17108707183091126008

`(-1)^n*A132136(n+1)`
-/

namespace A115977.P17108707183091126008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132136 (n + 1)

end

end A115977.P17108707183091126008

/-! ## A115977.P16667053409910175511

`A014972(n+1)*A033999(n)`
-/

namespace A115977.P16667053409910175511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 (n + 1) * A033999 n

end

end A115977.P16667053409910175511

/-! ## A115977.P14504311450318572386

`A132136(n+1)/A033999(n)`
-/

namespace A115977.P14504311450318572386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132136 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A115977.P14504311450318572386

/-! ## A115977.P9048281446846717063

`A014972(n)/A128692(n)*A014972(n+1)`
-/

namespace A115977.P9048281446846717063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 n : ℚ) / (A128692 n : ℚ) * (A014972 (n + 1) : ℚ)

end

end A115977.P9048281446846717063

/-! ## A115977.P1812783616863698548

`-A128692(n+1)`
-/

namespace A115977.P1812783616863698548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128692 (n + 1)

end

end A115977.P1812783616863698548

/-! ## A115977.P9339181409955195464

`A000007(n+1)-A128692(n+1)`
-/

namespace A115977.P9339181409955195464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A128692 (n + 1)

end

end A115977.P9339181409955195464

/-! ## A115977.P8322559756170636504

`A000038(n+1)-A128692(n+1)`
-/

namespace A115977.P8322559756170636504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A128692 (n + 1)

end

end A115977.P8322559756170636504

/-! ## A115977.P13728766233221280646

`1-(A128692(n+1)+A057427(n+1))`
-/

namespace A115977.P13728766233221280646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A128692 (n + 1) + A057427 (n + 1))

end

end A115977.P13728766233221280646

/-! ## A115977.P10585171374652071586

`1-(A128692(n+1)+A000034(2*n))`
-/

namespace A115977.P10585171374652071586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A128692 (n + 1) + A000034 (2 * n))

end

end A115977.P10585171374652071586

/-! ## A115977.P7810573729403141293

`1-(A128692(n+1)+A033999(2*n))`
-/

namespace A115977.P7810573729403141293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A128692 (n + 1) + A033999 (2 * n))

end

end A115977.P7810573729403141293

/-! ## A115977.P10340894668196626300

`A056594(2*n+1)-A128692(n+1)`
-/

namespace A115977.P10340894668196626300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A128692 (n + 1)

end

end A115977.P10340894668196626300

/-! ## A115977.P15149227982480223711

`A033999(2*n+1)*A128692(n+1)`
-/

namespace A115977.P15149227982480223711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A128692 (n + 1)

end

end A115977.P15149227982480223711

/-! ## A115977.P9638200437722636037

`(A280560(2*n+1)+1)*A128692(n+1)`
-/

namespace A115977.P9638200437722636037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280560 (2 * n + 1) + 1) * A128692 (n + 1)

end

end A115977.P9638200437722636037

/-! ## A115977.P17132566529354688058

`A027379(n+1)-(A128692(n+1)+A055998(n+1))`
-/

namespace A115977.P17132566529354688058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (n + 1) - (A128692 (n + 1) + A055998 (n + 1))

end

end A115977.P17132566529354688058

/-! ## A115977.P6032397439197939542

`A014972(n+1)-(A132136(n+1)+A128692(n+1))`
-/

namespace A115977.P6032397439197939542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 (n + 1) - (A132136 (n + 1) + A128692 (n + 1))

end

end A115977.P6032397439197939542

/-! ## A115977.P2918208612857115878

`A001285(2*n)-(A128692(n+1)+A001285(4*n))`
-/

namespace A115977.P2918208612857115878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (2 * n) - (A128692 (n + 1) + A001285 (4 * n))

end

end A115977.P2918208612857115878

/-!
# A115978: Expansion of phi(-q) * phi(-q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A115978, there is no canonical definition to state claims against.
-/

/-! ## A115978.P14301432133939638604

`(-1)^n*A033716(n)`
-/

namespace A115978.P14301432133939638604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033716 n

end

end A115978.P14301432133939638604

/-! ## A115978.P12697371965026373501

`A217220(n)-A217221(n)`
-/

namespace A115978.P12697371965026373501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n - A217221 n

end

end A115978.P12697371965026373501

/-! ## A115978.P3691245855113252087

`A033716(n)*A033999(n)`
-/

namespace A115978.P3691245855113252087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A033999 n

end

end A115978.P3691245855113252087

/-! ## A115978.P4374883080902370727

`A097109(n)*A131713(n)`
-/

namespace A115978.P4374883080902370727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n * A131713 n

end

end A115978.P4374883080902370727

/-! ## A115978.P3189969170484521259

`A180318(n)/A010684(n)`
-/

namespace A115978.P3189969170484521259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A010684 n : ℚ)

end

end A115978.P3189969170484521259

/-! ## A115978.P6059985903413840173

`A180318(n)/A167817(n)`
-/

namespace A115978.P6059985903413840173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A167817 n : ℚ)

end

end A115978.P6059985903413840173

/-! ## A115978.P4123138576005310736

`A180318(n)/A073575(n+1)`
-/

namespace A115978.P4123138576005310736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A115978.P4123138576005310736

/-! ## A115978.P15756564689320344325

`A180318(n)/A287765(n+1)`
-/

namespace A115978.P15756564689320344325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A287765 (n + 1) : ℚ)

end

end A115978.P15756564689320344325

/-! ## A115978.P15764891329448166442

`A217220(n)/A327767(n+1)`
-/

namespace A115978.P15764891329448166442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A327767 (n + 1) : ℚ)

end

end A115978.P15764891329448166442

/-! ## A115978.P4258785175833282392

`2*A033716(n)-A004016(n)`
-/

namespace A115978.P4258785175833282392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033716 n - A004016 n

end

end A115978.P4258785175833282392

/-! ## A115978.P5361957349333781425

`A180318(n)/(2-A033999(n))`
-/

namespace A115978.P5361957349333781425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (2 - A033999 n : ℚ)

end

end A115978.P5361957349333781425

/-! ## A115978.P2572984127485234062

`(2-A057079(n)²)*A097109(n)`
-/

namespace A115978.P2572984127485234062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A097109 n

end

end A115978.P2572984127485234062

/-! ## A115978.P5299013953402831072

`(2-A132954(n)²)*A097109(n)`
-/

namespace A115978.P5299013953402831072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A097109 n

end

end A115978.P5299013953402831072

/-! ## A115978.P8800348970458101818

`A217220(n)/(2-A000034(n)²)`
-/

namespace A115978.P8800348970458101818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (2 - A000034 n ^ 2 : ℚ)

end

end A115978.P8800348970458101818

/-! ## A115978.P2945270857996726855

`A217220(n)/(2-A068073(n)²)`
-/

namespace A115978.P2945270857996726855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (2 - A068073 n ^ 2 : ℚ)

end

end A115978.P2945270857996726855

/-! ## A115978.P13872081973771782741

`A217220(n)/(2-A071222(n)²)`
-/

namespace A115978.P13872081973771782741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (2 - A071222 n ^ 2 : ℚ)

end

end A115978.P13872081973771782741

/-! ## A115978.P11610114120858852808

`A217220(n)/(2-A177002(n)²)`
-/

namespace A115978.P11610114120858852808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (2 - A177002 n ^ 2 : ℚ)

end

end A115978.P11610114120858852808

/-! ## A115978.P14337048513896704217

`2*A033716(n)-A033716(4*n)`
-/

namespace A115978.P14337048513896704217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033716 n - A033716 (4 * n)

end

end A115978.P14337048513896704217

/-! ## A115978.P1585126608640823066

`A217220(n)/(2-A053589(n+1)²)`
-/

namespace A115978.P1585126608640823066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (2 - A053589 (n + 1) ^ 2 : ℚ)

end

end A115978.P1585126608640823066

/-! ## A115978.P13653867740766480588

`A217220(n)/(2-A055770(n+1)²)`
-/

namespace A115978.P13653867740766480588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (2 - A055770 (n + 1) ^ 2 : ℚ)

end

end A115978.P13653867740766480588

/-!
# A115979: Expansion of (1 - theta_4(q)*theta_4(q^3))/2 in powers of q.

The programs for A115979, the canonical program `A115979.P10695303619460681874` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115979 has offset 1).

The definition of A115979 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115979.P10695303619460681874

`(-1)^n*A096936(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115979

/-- `(-1)^n*A096936(n+1)` -/
def P10695303619460681874.Spec : Prop :=
  ∀ n, P10695303619460681874.a n = A115979 (n + 1)

theorem P10695303619460681874.correct : P10695303619460681874.Spec := by
  intro n
  simp only [A115979, Nat.add_sub_cancel]

end A115979

/-! ## A115979.P15554359256030701221

`A096936(n+1)*A130151(n)`
-/

namespace A115979.P15554359256030701221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1) * A130151 n

end

end A115979.P15554359256030701221

namespace A115979

/-- `A096936(n+1)*A130151(n)` -/
def P15554359256030701221.Spec : Prop :=
  ∀ n, P15554359256030701221.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P10110816148770793001

`A096936(n+1)*A131556(n)`
-/

namespace A115979.P10110816148770793001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1) * A131556 n

end

end A115979.P10110816148770793001

namespace A115979

/-- `A096936(n+1)*A131556(n)` -/
def P10110816148770793001.Spec : Prop :=
  ∀ n, P10110816148770793001.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P2084199891929366420

`A096936(n+1)*A132951(n)`
-/

namespace A115979.P2084199891929366420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1) * A132951 n

end

end A115979.P2084199891929366420

namespace A115979

/-- `A096936(n+1)*A132951(n)` -/
def P2084199891929366420.Spec : Prop :=
  ∀ n, P2084199891929366420.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P4361683379337522876

`A096936(n+1)/A033999(n)`
-/

namespace A115979.P4361683379337522876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A115979.P4361683379337522876

namespace A115979

/-- `A096936(n+1)/A033999(n)` -/
def P4361683379337522876.Spec : Prop :=
  ∀ n, P4361683379337522876.a n = (A115979 (n + 1) : ℚ)

end A115979

/-! ## A115979.P17484575499858119050

`A096936(n+1)/A057079(n)`
-/

namespace A115979.P17484575499858119050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (n + 1) : ℚ) / (A057079 n : ℚ)

end

end A115979.P17484575499858119050

namespace A115979

/-- `A096936(n+1)/A057079(n)` -/
def P17484575499858119050.Spec : Prop :=
  ∀ n, P17484575499858119050.a n = (A115979 (n + 1) : ℚ)

end A115979

/-! ## A115979.P16916019367722562925

`A035263(n+1)*A136748(n+1)`
-/

namespace A115979.P16916019367722562925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A136748 (n + 1)

end

end A115979.P16916019367722562925

namespace A115979

/-- `A035263(n+1)*A136748(n+1)` -/
def P16916019367722562925.Spec : Prop :=
  ∀ n, P16916019367722562925.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P7488610994190457586

`A096936(n+1)*A105931(n+1)`
-/

namespace A115979.P7488610994190457586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1) * A105931 (n + 1)

end

end A115979.P7488610994190457586

namespace A115979

/-- `A096936(n+1)*A105931(n+1)` -/
def P7488610994190457586.Spec : Prop :=
  ∀ n, P7488610994190457586.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P16089646160153175236

`A136748(n+1)*A137893(n+1)`
-/

namespace A115979.P16089646160153175236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136748 (n + 1) * A137893 (n + 1)

end

end A115979.P16089646160153175236

namespace A115979

/-- `A136748(n+1)*A137893(n+1)` -/
def P16089646160153175236.Spec : Prop :=
  ∀ n, P16089646160153175236.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P5006142661700186272

`A035263(n+1)*A244375(n+1)`
-/

namespace A115979.P5006142661700186272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A244375 (n + 1)

end

end A115979.P5006142661700186272

namespace A115979

/-- `A035263(n+1)*A244375(n+1)` -/
def P5006142661700186272.Spec : Prop :=
  ∀ n, P5006142661700186272.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P6314538205944454924

`A137893(n+1)*A244375(n+1)`
-/

namespace A115979.P6314538205944454924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1) * A244375 (n + 1)

end

end A115979.P6314538205944454924

namespace A115979

/-- `A137893(n+1)*A244375(n+1)` -/
def P6314538205944454924.Spec : Prop :=
  ∀ n, P6314538205944454924.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P10371970321205208642

`(2-A105931(n+1))*A113447(n+1)`
-/

namespace A115979.P10371970321205208642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A105931 (n + 1)) * A113447 (n + 1)

end

end A115979.P10371970321205208642

namespace A115979

/-- `(2-A105931(n+1))*A113447(n+1)` -/
def P10371970321205208642.Spec : Prop :=
  ∀ n, P10371970321205208642.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P3821230961462449894

`(2-A105931(n+1))*A137608(n+1)`
-/

namespace A115979.P3821230961462449894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A105931 (n + 1)) * A137608 (n + 1)

end

end A115979.P3821230961462449894

namespace A115979

/-- `(2-A105931(n+1))*A137608(n+1)` -/
def P3821230961462449894.Spec : Prop :=
  ∀ n, P3821230961462449894.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P3935208710107314220

`A004016(n+1)/2-A033716(n+1)`
-/

namespace A115979.P3935208710107314220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 (n + 1) : ℚ) / 2 - (A033716 (n + 1) : ℚ)

end

end A115979.P3935208710107314220

namespace A115979

/-- `A004016(n+1)/2-A033716(n+1)` -/
def P3935208710107314220.Spec : Prop :=
  ∀ n, P3935208710107314220.a n = (A115979 (n + 1) : ℚ)

end A115979

/-! ## A115979.P17977887907362949787

`(A217221(n+1)-A217220(n+1))/2`
-/

namespace A115979.P17977887907362949787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217221 (n + 1) - A217220 (n + 1) : ℚ) / 2

end

end A115979.P17977887907362949787

namespace A115979

/-- `(A217221(n+1)-A217220(n+1))/2` -/
def P17977887907362949787.Spec : Prop :=
  ∀ n, P17977887907362949787.a n = (A115979 (n + 1) : ℚ)

end A115979

/-! ## A115979.P14016247652342012735

`∑{d}[n+1, A036987(#-1)*A136748((n+1)/#)]`
-/

namespace A115979.P14016247652342012735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A136748 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115979.P14016247652342012735

namespace A115979

/-- `∑{d}[n+1, A036987(#-1)*A136748((n+1)/#)]` -/
def P14016247652342012735.Spec : Prop :=
  ∀ n, P14016247652342012735.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P5607787146288180534

`∑{d}[n+1, A112298(#)*A127802((n+1)/#-1)]`
-/

namespace A115979.P5607787146288180534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112298 d * A127802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A115979.P5607787146288180534

namespace A115979

/-- `∑{d}[n+1, A112298(#)*A127802((n+1)/#-1)]` -/
def P5607787146288180534.Spec : Prop :=
  ∀ n, P5607787146288180534.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P2163348423155963338

`∑{d}[n+1, A010892(#-1)*A033999((n+1)/#-1)]`
-/

namespace A115979.P2163348423155963338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 (d - 1) * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A115979.P2163348423155963338

namespace A115979

/-- `∑{d}[n+1, A010892(#-1)*A033999((n+1)/#-1)]` -/
def P2163348423155963338.Spec : Prop :=
  ∀ n, P2163348423155963338.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P891924506303909157

`(A010873(n+1)-A010873(n))*A002324(n+1)`
-/

namespace A115979.P891924506303909157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010873 (n + 1) - A010873 n) * A002324 (n + 1)

end

end A115979.P891924506303909157

namespace A115979

/-- `(A010873(n+1)-A010873(n))*A002324(n+1)` -/
def P891924506303909157.Spec : Prop :=
  ∀ n, P891924506303909157.a n = A115979 (n + 1)

end A115979

/-! ## A115979.P3846223475070248641

`-(A115978(n+1)/2)`
-/

namespace A115979.P3846223475070248641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A115978 (n + 1) : ℚ) / 2)

end

end A115979.P3846223475070248641

namespace A115979

/-- `-(A115978(n+1)/2)` -/
def P3846223475070248641.Spec : Prop :=
  ∀ n, P3846223475070248641.a n = (A115979 (n + 1) : ℚ)

end A115979

/-!
# A115981: The number of compositions of n which cannot be viewed as stacks.

The programs for A115981, there is no canonical definition to state claims against.
-/

/-! ## A115981.P5162122422815330700

`A011782(n)-A001523(n)`
-/

namespace A115981.P5162122422815330700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A001523 n

end

end A115981.P5162122422815330700

/-! ## A115981.P15000139606280435522

`∑[A034008(n)]-A001523(n)`
-/

namespace A115981.P15000139606280435522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001523 n

end

end A115981.P15000139606280435522

/-! ## A115981.P11060667109453511426

`A288133(n+1)-(A001523(n)+n)`
-/

namespace A115981.P11060667109453511426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) - (A001523 n + (n : ℤ))

end

end A115981.P11060667109453511426

/-! ## A115981.P5209884468586496655

`A332726(n)+A332727(n)-A001523(n)`
-/

namespace A115981.P5209884468586496655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332726 n + (A332727 n - A001523 n)

end

end A115981.P5209884468586496655

/-! ## A115981.P7389239799608348261

`A332836(n)+A332871(n)-A001523(n)`
-/

namespace A115981.P7389239799608348261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332836 n + (A332871 n - A001523 n)

end

end A115981.P7389239799608348261

/-! ## A115981.P2568968907491214474

`A020639(A004277(n))^(n-1)-A001523(n)`
-/

namespace A115981.P2568968907491214474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A004277 n).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A001523 n : ℚ)

end

end A115981.P2568968907491214474

/-! ## A115981.P8219923683017116937

`Δ[A056469(n)]-A001523(n)`
-/

namespace A115981.P8219923683017116937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001523 n

end

end A115981.P8219923683017116937

/-! ## A115981.P12210319247647382612

`Δ[A131577(n)]-A001523(n)`
-/

namespace A115981.P12210319247647382612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001523 n

end

end A115981.P12210319247647382612

/-! ## A115981.P6196053983807866978

`floor(A000051(n)/2-A001523(n))`
-/

namespace A115981.P6196053983807866978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000051 n : ℚ) / 2 - (A001523 n : ℚ)⌋

end

end A115981.P6196053983807866978

/-! ## A115981.P13717367216689794295

`A080928(∑[n])-A001523(n)`
-/

namespace A115981.P13717367216689794295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080928 (∑ j ∈ Finset.range (n + 1), f1 j) - A001523 n

end

end A115981.P13717367216689794295

/-! ## A115981.P2701986063396583716

`A039991(∑[n])-A001523(n)`
-/

namespace A115981.P2701986063396583716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (∑ j ∈ Finset.range (n + 1), f1 j) - A001523 n

end

end A115981.P2701986063396583716

/-! ## A115981.P18324246202569561826

`A049063(n²)-A001523(n)`
-/

namespace A115981.P18324246202569561826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (n ^ 2) - A001523 n

end

end A115981.P18324246202569561826

/-!
# A115982: Number of planar partitions that are not corners.

The programs for A115982, there is no canonical definition to state claims against.
-/

/-! ## A115982.P3045780358664900558

`A000219(n+1)-A006330(n+1)`
-/

namespace A115982.P3045780358664900558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - A006330 (n + 1)

end

end A115982.P3045780358664900558

/-! ## A115982.P10234918018580183473

`A000219(n+1)+A001523(n+1)-A000712(n+1)`
-/

namespace A115982.P10234918018580183473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) + (A001523 (n + 1) - A000712 (n + 1))

end

end A115982.P10234918018580183473

/-! ## A115982.P907119860808340530

`Δ[A091360(n)-∑[A006330(n)]]`
-/

namespace A115982.P907119860808340530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115982.P907119860808340530

/-! ## A115982.P10215014467404745055

`Δ[A091360(n)]-A006330(n+1)`
-/

namespace A115982.P10215014467404745055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006330 (n + 1)

end

end A115982.P10215014467404745055

/-! ## A115982.P8388015054768772714

`A116600(n+1)-A115981(n+1)`
-/

namespace A115982.P8388015054768772714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116600 (n + 1) - A115981 (n + 1)

end

end A115982.P8388015054768772714

/-! ## A115982.P14189520772961627536

`A001523(n+1)+A116600(n+1)-A011782(n+1)`
-/

namespace A115982.P14189520772961627536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (n + 1) + (A116600 (n + 1) - A011782 (n + 1))

end

end A115982.P14189520772961627536

/-! ## A115982.P8407217612768376798

`A000219(n+1)-record[A247255(n+1)]`
-/

namespace A115982.P8407217612768376798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115982.P8407217612768376798

/-!
# A115984: Positive n which are the average of a run of at least 2 consecutive primes.

The programs for A115984, there is no canonical definition to state claims against.
-/

/-! ## A115984.P1194215473013749285

`comp[A115985(n+1)-1]+1`
-/

namespace A115984.P1194215473013749285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A115984.P1194215473013749285

/-! ## A115984.P2576140097645655227

`∩[A060863(n+1), comp[A115985(n+1)]]`
-/

namespace A115984.P2576140097645655227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060863 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A115984.P2576140097645655227

/-! ## A115984.P2122869672783139112

`lt[A010051(n+1), A122821(n+1)]+1`
-/

namespace A115984.P2122869672783139112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A115984.P2122869672783139112

/-! ## A115984.P10112550368103008032

`lt[A080339(n+1), A122821(n+1)]+1`
-/

namespace A115984.P10112550368103008032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A115984.P10112550368103008032

/-! ## A115984.P16161755434881165046

`comp[∪[A004853(2*n+1), A115985(n+1)]]`
-/

namespace A115984.P16161755434881165046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115985 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A115984.P16161755434881165046

/-!
# A115985: Positive n which are not the average of a run of at least 2 consecutive primes.

The programs for A115985, there is no canonical definition to state claims against.
-/

/-! ## A115985.P16654590229105471691

`eq[A010051(n+1), A122821(n+1)]+1`
-/

namespace A115985.P16654590229105471691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115985.P16654590229105471691

/-! ## A115985.P10783688158467444274

`eq[char[A000040(n+1)-1], A122821(n+1)]+1`
-/

namespace A115985.P10783688158467444274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A115985.P10783688158467444274

/-! ## A115985.P14293201897140667161

`eq[char[A115984(n+1)], A151878(n)]`
-/

namespace A115985.P14293201897140667161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A115985.P14293201897140667161

/-! ## A115985.P13424115798898503983

`eq[char[A115984(n+1)], A151933(n)]`
-/

namespace A115985.P13424115798898503983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A115985.P13424115798898503983

/-! ## A115985.P10571381390490585328

`eq[char[A115984(n+1)], A210709(n)]`
-/

namespace A115985.P10571381390490585328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A115985.P10571381390490585328

/-!
# A115987: Numbers m such that 3^m is the average of two primes p and nextprime(p).

The programs for A115987, there is no canonical definition to state claims against.
-/

/-! ## A115987.P17709380568097334327

`eq[2, A180131(n)]`
-/

namespace A115987.P17709380568097334327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115987.P17709380568097334327

/-! ## A115987.P1849455931073380729

`lt[A180131(A028310(n)), 3]`
-/

namespace A115987.P1849455931073380729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180131 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115987.P1849455931073380729

/-! ## A115987.P364261401095206854

`lt[A001221(A180131(n)-1), 1]`
-/

namespace A115987.P364261401095206854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A180131 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115987.P364261401095206854

/-! ## A115987.P5594688231661659422

`lt[A180131(n), A001221(n+1)+2]`
-/

namespace A115987.P5594688231661659422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115987.P5594688231661659422

/-! ## A115987.P2473181796047452761

`lt[A180131(n), A001221(A051488(n+1))]`
-/

namespace A115987.P2473181796047452761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051488 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115987.P2473181796047452761

/-!
# A115988: 

The programs for A115988, there is no canonical definition to state claims against.
-/

/-! ## A115988.P16448645496892998898

`3^A115987(n+1)`
-/

namespace A115988.P16448645496892998898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A115987 (n + 1) : ℤ)

end

end A115988.P16448645496892998898

/-!
# A115990: Riordan array (1/sqrt(1-2*x-3*x^2), (1-2*x-3*x^2)/(2*(1-3*x)) - sqrt(1-2*x-3*x^2)/2).

The programs for A115990, there is no canonical definition to state claims against.
-/

/-! ## A115990.P12063012440466341412

`A094531(n)-A048675(A225816(A004863(n+1)))`
-/

namespace A115990.P12063012440466341412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 n - A048675 (A225816 (A004863 (n + 1)).toNat).toNat

end

end A115990.P12063012440466341412

/-! ## A115990.P11184240225931365652

`A112232(A109267(n))`
-/

namespace A115990.P11184240225931365652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112232 (A109267 n).toNat

end

end A115990.P11184240225931365652

/-! ## A115990.P1223386930843105833

`A123580(A109267(A028310(n)))`
-/

namespace A115990.P1223386930843105833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A109267 (A028310 n).toNat).toNat

end

end A115990.P1223386930843105833

/-! ## A115990.P971681958697814334

`A123580(and(A109267(n), A260196(n)))`
-/

namespace A115990.P971681958697814334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (Int.land (A109267 n) (A260196 n)).toNat

end

end A115990.P971681958697814334

/-!
# A115991: Number triangle T(n,k) = Sum_{j=0..n} C(n-k,j-k)*C(j,n-j)*2^(n-j).

The programs for A115991, there is no canonical definition to state claims against.
-/

/-! ## A115991.P3185564642897409224

`A114003(A305117(n)^A025581(n))`
-/

namespace A115991.P3185564642897409224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (SequenceMachineLib.roundAway ((A305117 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A115991.P3185564642897409224

/-! ## A115991.P2979606809297795014

`A114003(A194816(n+1)^A025581(n))`
-/

namespace A115991.P2979606809297795014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (SequenceMachineLib.roundAway ((A194816 (n + 1) : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A115991.P2979606809297795014

/-! ## A115991.P7761478941342882492

`A114003(A305117(n)^A025669(n+1))`
-/

namespace A115991.P7761478941342882492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (SequenceMachineLib.roundAway ((A305117 n : ℚ) ^ (A025669 (n + 1) : ℤ))).toNat

end

end A115991.P7761478941342882492

/-! ## A115991.P721659904050573318

`A114003(A194816(n+1)^A025669(n+1))`
-/

namespace A115991.P721659904050573318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (SequenceMachineLib.roundAway ((A194816 (n + 1) : ℚ) ^ (A025669 (n + 1) : ℤ))).toNat

end

end A115991.P721659904050573318

/-! ## A115991.P15365289117476500650

`A020910(A094527(n)%A001426(n))`
-/

namespace A115991.P15365289117476500650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020910 (Int.tmod (A094527 n) (A001426 n)).toNat

end

end A115991.P15365289117476500650

/-!
# A115992: Number of non-attacking queens that can be placed on a "hyper-chessboard" = hypercube of size 3, dimension n. That is, the size of the largest subset S of {0,1,2}^n such that for each pair (x0,y0,...), (x1,y1,...) of distinct elements of S, the absolute differences vector (|x1-x0|, |y1-y0|, ...) has at least two distinct non-null coordinates.

The programs for A115992, there is no canonical definition to state claims against.
-/

/-! ## A115992.P17236475863152882675

`floor(exp(n/2))-floor(n/4)`
-/

namespace A115992.P17236475863152882675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n : ℚ) / 2 : ℝ)⌋ - ⌊(n : ℚ) / 4⌋

end

end A115992.P17236475863152882675

/-! ## A115992.P3095075993629994895

`ogf((1-3x+2x^2-2x^4+3x^5-x^6)/(1-4x+4x^2))`
-/

namespace A115992.P3095075993629994895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, 0, -2, 3, -1] [1, -4, 4] n

end

end A115992.P3095075993629994895

/-! ## A115992.P9363355925015462941

`floor(cosh(log(root(2*(n+1)*4^n, 3))))`
-/

namespace A115992.P9363355925015462941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((2 * (n + 1) * 4 ^ n : ℝ) ^ (1 / (3 : ℝ))))⌋

end

end A115992.P9363355925015462941

/-! ## A115992.P10850646474976382051

`A115993(n)%61`
-/

namespace A115992.P10850646474976382051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115993 n) 61

end

end A115992.P10850646474976382051

/-!
# A115993: Size |S| of the largest subset S of {0,1}^n whose measure m(S) is <= 2^n, where m is the additive measure defined on each element x of S by m({x}) = 2^k(x), where k(x) is the number of non-null coordinates of x.

The programs for A115993, there is no canonical definition to state claims against.
-/

/-! ## A115993.P16360797285925613436

`A069623(A001998(n))`
-/

namespace A115993.P16360797285925613436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A001998 n).toNat

end

end A115993.P16360797285925613436

/-! ## A115993.P10906939322204174388

`A076411(A001998(n)+1)`
-/

namespace A115993.P10906939322204174388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A001998 n + 1).toNat

end

end A115993.P10906939322204174388

/-! ## A115993.P1149576218597372170

`A093607(n)-A333382(A342340(n))`
-/

namespace A115993.P1149576218597372170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093607 n - A333382 (A342340 n).toNat

end

end A115993.P1149576218597372170

/-! ## A115993.P815168866561847572

`A069623(A056332(n+1)+A001223(n+1))`
-/

namespace A115993.P815168866561847572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A056332 (n + 1) + A001223 (n + 1)).toNat

end

end A115993.P815168866561847572

/-! ## A115993.P2071083961080201832

`A069623(A069623(n+1)+A056332(n+1))`
-/

namespace A115993.P2071083961080201832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A069623 (n + 1) + A056332 (n + 1)).toNat

end

end A115993.P2071083961080201832

/-!
# A115994: Triangle read by rows: T(n,k) is number of partitions of n with Durfee square of size k (n>=1; 1<=k<=floor(sqrt(n))).

The programs for A115994, there is no canonical definition to state claims against.
-/

/-! ## A115994.P431285110570931627

`A115720(comp[A327672(n)])`
-/

namespace A115994.P431285110570931627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115994.P431285110570931627

/-! ## A115994.P6107164491158531341

`A115720(comp[∑[A135034(n)]])`
-/

namespace A115994.P6107164491158531341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115994.P6107164491158531341

/-! ## A115994.P9044746624123993151

`A115720(lt[0, n*A115720(n)])`
-/

namespace A115994.P9044746624123993151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115994.P9044746624123993151

/-! ## A115994.P1760256050541734948

`A115720(lt[C(n, n²), A115720(n)])`
-/

namespace A115994.P1760256050541734948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115994.P1760256050541734948

/-! ## A115994.P10363213340587045855

`A115720(lt[char[2^n], A115720(n)])`
-/

namespace A115994.P10363213340587045855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A115994.P10363213340587045855

/-!
# A115995: Sum of the sizes of the Durfee squares of all partitions of n.

The programs for A115995, there is no canonical definition to state claims against.
-/

/-! ## A115995.P16555532372883085390

`∑[A208474(A028310(n))]-1`
-/

namespace A115995.P16555532372883085390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A115995.P16555532372883085390

/-! ## A115995.P14279401715609704594

`∑[A208474(n+1)]-A208474(n+1)`
-/

namespace A115995.P14279401715609704594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A208474 (n + 1)

end

end A115995.P14279401715609704594

/-! ## A115995.P16860528550295907669

`A006128(n)-A114089(A028310(n))`
-/

namespace A115995.P16860528550295907669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A114089 (A028310 n).toNat

end

end A115995.P16860528550295907669

/-! ## A115995.P17982025942787285041

`∑[A208474(A233583(n+1))]-1`
-/

namespace A115995.P17982025942787285041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A115995.P17982025942787285041

/-! ## A115995.P7370990689956069429

`∑[A057427(n)*A208474(A233583(n+1))]`
-/

namespace A115995.P7370990689956069429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A208474 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115995.P7370990689956069429

/-! ## A115995.P8461676567564637484

`∑[A208474(A233583(n+1))%A285585(n)]`
-/

namespace A115995.P8461676567564637484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208474 (A233583 (n + 1)).toNat) (A285585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115995.P8461676567564637484

/-!
# A115996: Numbers k such that the concatenation of the k-th prime with k gives a palindrome.

The programs for A115996, there is no canonical definition to state claims against.
-/

/-! ## A115996.P18285106943018463544

`A109304(eq[A162979(n), A284388(n+5)])`
-/

namespace A115996.P18285106943018463544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109304 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115996.P18285106943018463544

/-!
# A115997: Numbers k such that the concatenation of k with the k-th prime gives a palindrome.

The programs for A115997, there is no canonical definition to state claims against.
-/

/-! ## A115997.P11825569378690433705

`A109304(A004202(2*n+1)-1)`
-/

namespace A115997.P11825569378690433705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109304 (A004202 (2 * n + 1) - 1).toNat

end

end A115997.P11825569378690433705

/-!
# A115998: Primes p such that adding their adjacent digits in pairs, the digits of their index pi(p) is obtained, in some order.

The programs for A115998, there is no canonical definition to state claims against.
-/

/-! ## A115998.P7445999363511854383

`A000040(A115999(n+1))`
-/

namespace A115998.P7445999363511854383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A115999 (n + 1)).toNat

end

end A115998.P7445999363511854383

/-!
# A115999: The digits of n, in some order, are obtained by adding pairs of adjacent digits of the n-th prime.

The programs for A115999, there is no canonical definition to state claims against.
-/

/-! ## A115999.P425287445936607396

`A000720(A115998(n+1))`
-/

namespace A115999.P425287445936607396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A115998 (n + 1)).toNat

end

end A115999.P425287445936607396

