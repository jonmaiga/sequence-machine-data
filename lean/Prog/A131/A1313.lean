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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A131300: a(n) = 3*a(n-1) - 2*a(n-2) - a(n-3) + a(n-4) with n>3, a(0)=1, a(1)=2, a(2)=3, a(3)=7.

The programs for A131300, the canonical program `A131300.P17416951020822195630` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131300 has offset 0).

The definition of A131300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` (program `A131300.P17416951020822195630`, by `A131300.P17416951020822195630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131300.P5885568446909876170

`3*A000045(n+2)-2*(n+1)`
-/

namespace A131300.P5885568446909876170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 2) - (2 * (n + 1) : ℤ)

end

end A131300.P5885568446909876170

namespace A131300

/-- `3*A000045(n+2)-2*(n+1)` -/
def P5885568446909876170.Spec : Prop :=
  ∀ n, P5885568446909876170.a n = A131300 n

end A131300

/-! ## A131300.P17416951020822195630

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131300

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P17416951020822195630.Spec : Prop :=
  ∀ n, P17416951020822195630.a n = A131300 n

theorem P17416951020822195630.correct : P17416951020822195630.Spec := by
  intro n
  simp only [A131300]

end A131300

/-! ## A131300.P7712461215979357358

`(3*A131269(n)-n-1)/2`
-/

namespace A131300.P7712461215979357358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A131269 n - (n : ℤ) - 1 : ℚ) / 2

end

end A131300.P7712461215979357358

namespace A131300

/-- `(3*A131269(n)-n-1)/2` -/
def P7712461215979357358.Spec : Prop :=
  ∀ n, P7712461215979357358.a n = (A131300 n : ℚ)

end A131300

/-! ## A131300.P15749885345031788701

`ogf((1-x-x^2+3x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A131300.P15749885345031788701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 3] [1, -3, 2, 1, -1] n

end

end A131300.P15749885345031788701

namespace A131300

/-- `ogf((1-x-x^2+3x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P15749885345031788701.Spec : Prop :=
  ∀ n, P15749885345031788701.a n = A131300 n

end A131300

/-! ## A131300.P5706735306193630541

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A131300.P5706735306193630541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131300.P5706735306193630541

namespace A131300

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P5706735306193630541.Spec : Prop :=
  ∀ n, (P5706735306193630541.a n : ℤ) = A131300 n

end A131300

/-! ## A131300.P7178789834967710918

`2*(a(n-1)+1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A131300.P7178789834967710918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * (a (n - 1) + 1) - a (n - 3)

end

end A131300.P7178789834967710918

namespace A131300

/-- `2*(a(n-1)+1)-a(n-3)` -/
def P7178789834967710918.Spec : Prop :=
  ∀ n, P7178789834967710918.a n = A131300 n

end A131300

/-! ## A131300.P12482069882016911159

`2*a(n-1)-(a(n-3)-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A131300.P12482069882016911159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 2)

end

end A131300.P12482069882016911159

namespace A131300

/-- `2*a(n-1)-(a(n-3)-2)` -/
def P12482069882016911159.Spec : Prop :=
  ∀ n, P12482069882016911159.a n = A131300 n

end A131300

/-! ## A131300.P9022682846835048293

`3-∑[a(n-1)-(2-a(n-2))]` with `a(0)=2, a(1)=-1`
-/

namespace A131300.P9022682846835048293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131300.P9022682846835048293

namespace A131300

/-- `3-∑[a(n-1)-(2-a(n-2))]` -/
def P9022682846835048293.Spec : Prop :=
  ∀ n, P9022682846835048293.a n = A131300 n

end A131300

/-! ## A131300.P1970310959525587244

`a(n-1)-4+a(n-2)+n+n` with `a(0)=1, a(1)=2`
-/

namespace A131300.P1970310959525587244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 4 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A131300.P1970310959525587244

namespace A131300

/-- `a(n-1)-4+a(n-2)+n+n` -/
def P1970310959525587244.Spec : Prop :=
  ∀ n, P1970310959525587244.a n = A131300 n

end A131300

/-! ## A131300.P4362437261256709617

`a(n-1)-(4-a(n-2)-n-n)` with `a(0)=1, a(1)=2`
-/

namespace A131300.P4362437261256709617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (4 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A131300.P4362437261256709617

namespace A131300

/-- `a(n-1)-(4-a(n-2)-n-n)` -/
def P4362437261256709617.Spec : Prop :=
  ∀ n, P4362437261256709617.a n = A131300 n

end A131300

/-! ## A131300.P5586173339390163322

`A192953(n)+1`
-/

namespace A131300.P5586173339390163322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + 1

end

end A131300.P5586173339390163322

namespace A131300

/-- `A192953(n)+1` -/
def P5586173339390163322.Spec : Prop :=
  ∀ n, P5586173339390163322.a n = A131300 n

theorem P5586173339390163322.correct : P5586173339390163322.Spec := by
  intro n
  simp only [A131300, Nat.add_sub_cancel, A131300.P5586173339390163322.a, A131300.P17416951020822195630.a, A192953, A192953.P17417309066290700007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131300

/-! ## A131300.P12723655286968400882

`∑[A111314(abs(1-n))]`
-/

namespace A131300.P12723655286968400882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131300.P12723655286968400882

namespace A131300

/-- `∑[A111314(abs(1-n))]` -/
def P12723655286968400882.Spec : Prop :=
  ∀ n, P12723655286968400882.a n = A131300 n

end A131300

/-! ## A131300.P578609208749378611

`∑[A097135(n)-2]+2`
-/

namespace A131300.P578609208749378611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A131300.P578609208749378611

namespace A131300

/-- `∑[A097135(n)-2]+2` -/
def P578609208749378611.Spec : Prop :=
  ∀ n, P578609208749378611.a n = A131300 n

end A131300

/-! ## A131300.P12988739619314944064

`∑[A187893(n)]-3*n`
-/

namespace A131300.P12988739619314944064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)

end

end A131300.P12988739619314944064

namespace A131300

/-- `∑[A187893(n)]-3*n` -/
def P12988739619314944064.Spec : Prop :=
  ∀ n, P12988739619314944064.a n = A131300 n

end A131300

/-! ## A131300.P7685003580295165697

`A192967(n+1)+1-n`
-/

namespace A131300.P7685003580295165697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 (n + 1) + (1 - (n : ℤ))

end

end A131300.P7685003580295165697

namespace A131300

/-- `A192967(n+1)+1-n` -/
def P7685003580295165697.Spec : Prop :=
  ∀ n, P7685003580295165697.a n = A131300 n

end A131300

/-! ## A131300.P3210253957799302911

`A111314(n+1)-2*n`
-/

namespace A131300.P3210253957799302911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 1) - (2 * n : ℤ)

end

end A131300.P3210253957799302911

namespace A131300

/-- `A111314(n+1)-2*n` -/
def P3210253957799302911.Spec : Prop :=
  ∀ n, P3210253957799302911.a n = A131300 n

end A131300

/-! ## A131300.P13533351310487142312

`A036999(n)-(2*n+5)`
-/

namespace A131300.P13533351310487142312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036999 n - (2 * n + 5 : ℤ)

end

end A131300.P13533351310487142312

namespace A131300

/-- `A036999(n)-(2*n+5)` -/
def P13533351310487142312.Spec : Prop :=
  ∀ n, P13533351310487142312.a n = A131300 n

end A131300

/-! ## A131300.P12101823418856576986

`A377628(n+1)-Δ[n²]`
-/

namespace A131300.P12101823418856576986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A131300.P12101823418856576986

namespace A131300

/-- `A377628(n+1)-Δ[n²]` -/
def P12101823418856576986.Spec : Prop :=
  ∀ n, P12101823418856576986.a n = A131300 n

end A131300

/-! ## A131300.P7529706588119022668

`∑[3*A000045(n)]+1-2*n`
-/

namespace A131300.P7529706588119022668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (2 * n : ℤ)

end

end A131300.P7529706588119022668

namespace A131300

/-- `∑[3*A000045(n)]+1-2*n` -/
def P7529706588119022668.Spec : Prop :=
  ∀ n, P7529706588119022668.a n = A131300 n

end A131300

/-! ## A131300.P1811870182991324589

`A210673(n)+A030119(n)`
-/

namespace A131300.P1811870182991324589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 n + A030119 n

end

end A131300.P1811870182991324589

namespace A131300

/-- `A210673(n)+A030119(n)` -/
def P1811870182991324589.Spec : Prop :=
  ∀ n, P1811870182991324589.a n = A131300 n

end A131300

/-!
# A131301: Regular triangle read by rows: T(n,k) = 3*binomial(floor((n+k)/2),k)-2.

The programs for A131301, the canonical program `A131301.P398240791441946711` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131301 has offset 0).

The definition of A131301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131301.P398240791441946711

`3*A046854(n)-2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131301

/-- `3*A046854(n)-2` -/
def P398240791441946711.Spec : Prop :=
  ∀ n, P398240791441946711.a n = A131301 n

theorem P398240791441946711.correct : P398240791441946711.Spec := by
  intro n
  simp only [A131301]

end A131301

/-! ## A131301.P5705463647065374288

`abs(3*A066170(n))-2`
-/

namespace A131301.P5705463647065374288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A066170 n| - 2

end

end A131301.P5705463647065374288

namespace A131301

/-- `abs(3*A066170(n))-2` -/
def P5705463647065374288.Spec : Prop :=
  ∀ n, P5705463647065374288.a n = A131301 n

end A131301

/-! ## A131301.P17982447682524384613

`A046854(n)+A131270(n)-1`
-/

namespace A131301.P17982447682524384613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131270 n - 1)

end

end A131301.P17982447682524384613

namespace A131301

/-- `A046854(n)+A131270(n)-1` -/
def P17982447682524384613.Spec : Prop :=
  ∀ n, P17982447682524384613.a n = A131301 n

theorem P17982447682524384613.correct : P17982447682524384613.Spec := by
  intro n
  simp only [A131301, Nat.add_sub_cancel, A131301.P17982447682524384613.a, A131301.P398240791441946711.a, A046854, A046854.P6336279902607506651.a, A131270, A131270.P17225762557638996417.a, A102426, A102426.P776678391830445668.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A092865, A092865.P9800871042429563602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131301

/-! ## A131301.P12062856940016050107

`3*(A028326(n)-A131238(n))-2`
-/

namespace A131301.P12062856940016050107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A028326 n - A131238 n) - 2

end

end A131301.P12062856940016050107

namespace A131301

/-- `3*(A028326(n)-A131238(n))-2` -/
def P12062856940016050107.Spec : Prop :=
  ∀ n, P12062856940016050107.a n = A131301 n

theorem P12062856940016050107.correct : P12062856940016050107.Spec := by
  intro n
  simp only [A131301, Nat.add_sub_cancel, A131301.P12062856940016050107.a, A131301.P398240791441946711.a, A028326, A028326.P16610217584664895500.a, A046854, A046854.P6336279902607506651.a, A131238, A131238.P9762830409068789865.a, A007318, A007318.P302227728145965961.a, A102426, A102426.P776678391830445668.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A092865, A092865.P9800871042429563602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131301

/-! ## A131301.P1679530300736090436

`A131270(n)+A131373(n)-A065941(n)`
-/

namespace A131301.P1679530300736090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131270 n + (A131373 n - A065941 n)

end

end A131301.P1679530300736090436

namespace A131301

/-- `A131270(n)+A131373(n)-A065941(n)` -/
def P1679530300736090436.Spec : Prop :=
  ∀ n, P1679530300736090436.a n = A131301 n

theorem P1679530300736090436.correct : P1679530300736090436.Spec := by
  intro n
  simp only [A131301, Nat.add_sub_cancel, A131301.P1679530300736090436.a, A131301.P398240791441946711.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131270, A131270.P17225762557638996417.a, A131373, A131373.P5409400150504785590.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A039961, A039961.P8581143921981610919.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131301

/-! ## A131301.P16322263043471670420

`A131299(A061579(n))`
-/

namespace A131301.P16322263043471670420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131299 (A061579 n).toNat

end

end A131301.P16322263043471670420

namespace A131301

/-- `A131299(A061579(n))` -/
def P16322263043471670420.Spec : Prop :=
  ∀ n, P16322263043471670420.a n = A131301 n

end A131301

/-! ## A131301.P15943441000317176722

`A131299(A038722(n+1)-1)`
-/

namespace A131301.P15943441000317176722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131299 (A038722 (n + 1) - 1).toNat

end

end A131301.P15943441000317176722

namespace A131301

/-- `A131299(A038722(n+1)-1)` -/
def P15943441000317176722.Spec : Prop :=
  ∀ n, P15943441000317176722.a n = A131301 n

end A131301

/-! ## A131301.P4236127323196393370

`A131299(A038722(n+2))`
-/

namespace A131301.P4236127323196393370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131299 (A038722 (n + 2)).toNat

end

end A131301.P4236127323196393370

namespace A131301

/-- `A131299(A038722(n+2))` -/
def P4236127323196393370.Spec : Prop :=
  ∀ n, P4236127323196393370.a n = A131301 n

end A131301

/-! ## A131301.P9036510974059897481

`A014682(A131270(n))-1`
-/

namespace A131301.P9036510974059897481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A131270 n).toNat - 1

end

end A131301.P9036510974059897481

namespace A131301

/-- `A014682(A131270(n))-1` -/
def P9036510974059897481.Spec : Prop :=
  ∀ n, P9036510974059897481.a n = A131301 n

end A131301

/-! ## A131301.P13578275717110051620

`A001651(A131270(n))`
-/

namespace A131301.P13578275717110051620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A131270 n).toNat

end

end A131301.P13578275717110051620

namespace A131301

/-- `A001651(A131270(n))` -/
def P13578275717110051620.Spec : Prop :=
  ∀ n, P13578275717110051620.a n = A131301 n

end A131301

/-! ## A131301.P16384985920332346956

`A085801(A131241(n))`
-/

namespace A131301.P16384985920332346956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085801 (A131241 n).toNat

end

end A131301.P16384985920332346956

namespace A131301

/-- `A085801(A131241(n))` -/
def P16384985920332346956.Spec : Prop :=
  ∀ n, P16384985920332346956.a n = A131301 n

end A131301

/-!
# A131302: 2*A122203 - A000012.

The programs for A131302, there is no canonical definition to state claims against.
-/

/-! ## A131302.P9018454436634471560

`2*A122203(comp[∑[n-1]])-1`
-/

namespace A131302.P9018454436634471560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A131302.P9018454436634471560

/-! ## A131302.P9762571432547179967

`A004273(A122203(comp[∑[n-1]]))`
-/

namespace A131302.P9762571432547179967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A122203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A131302.P9762571432547179967

/-! ## A131302.P8935804176477293274

`A131304(n+1)+A000038(A144879(n+1))`
-/

namespace A131302.P8935804176477293274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131304 (n + 1) + A000038 (A144879 (n + 1)).toNat

end

end A131302.P8935804176477293274

/-! ## A131302.P3383801863080311985

`A131304(A153679(n+1))`
-/

namespace A131302.P3383801863080311985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131304 (A153679 (n + 1)).toNat

end

end A131302.P3383801863080311985

/-! ## A131302.P7543956611396934509

`A131304(n+1)%Δ[A111030(n)]`
-/

namespace A131302.P7543956611396934509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131304 (n + 1)) (f1 (n + 1) - f1 n)

end

end A131302.P7543956611396934509

/-!
# A131303: 2*A122204(deleting the right border of zeros) - A000012.

The programs for A131303, there is no canonical definition to state claims against.
-/

/-! ## A131303.P2491514435642576520

`A151713(n)!*A131305(n)`
-/

namespace A131303.P2491514435642576520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151713 n).toNat : ℤ) * A131305 n

end

end A131303.P2491514435642576520

/-! ## A131303.P3689469410325352194

`A131305(n*(A151713(n)+1))`
-/

namespace A131303.P3689469410325352194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131305 ((n : ℤ) * (A151713 n + 1)).toNat

end

end A131303.P3689469410325352194

/-! ## A131303.P12809536671255673568

`gcd(A073771(n+1), A131305(n))`
-/

namespace A131303.P12809536671255673568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073771 (n + 1)) (A131305 n)

end

end A131303.P12809536671255673568

/-! ## A131303.P4726987660473543155

`A296213(A008517(n+5))+A131305(n)`
-/

namespace A131303.P4726987660473543155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296213 (A008517 (n + 5)).toNat + A131305 n

end

end A131303.P4726987660473543155

/-! ## A131303.P15595487305107417358

`and(A131305(n), A152388(n+1))`
-/

namespace A131303.P15595487305107417358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131305 n) (A152388 (n + 1))

end

end A131303.P15595487305107417358

/-!
# A131304: 2*A089840 - A000012.

The programs for A131304, there is no canonical definition to state claims against.
-/

/-! ## A131304.P6472224550976366315

`A131302(n+1)-A000038(A144879(n+1))`
-/

namespace A131304.P6472224550976366315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131302 (n + 1) - A000038 (A144879 (n + 1)).toNat

end

end A131304.P6472224550976366315

/-! ## A131304.P238885707804324379

`2*A122203(A007401(n+1))-1-A000038(A144879(n+1))`
-/

namespace A131304.P238885707804324379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122203 (A007401 (n + 1)).toNat - 1 - A000038 (A144879 (n + 1)).toNat

end

end A131304.P238885707804324379

/-!
# A131305: 2*A122288 - A000012.

The programs for A131305, there is no canonical definition to state claims against.
-/

/-! ## A131305.P14123604503315920427

`2*A122204(comp[∑[n-1]])-1`
-/

namespace A131305.P14123604503315920427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122204 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A131305.P14123604503315920427

/-! ## A131305.P15774133380519322356

`2*A122283(comp[∑[n-1]])-1`
-/

namespace A131305.P15774133380519322356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122283 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A131305.P15774133380519322356

/-! ## A131305.P9021005013965504790

`A004273(A122204(comp[∑[n-1]]))`
-/

namespace A131305.P9021005013965504790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A122204 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A131305.P9021005013965504790

/-! ## A131305.P6225006175196292299

`A082375(A122283(comp[∑[n-1]])²)`
-/

namespace A131305.P6225006175196292299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A122283 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2).toNat

end

end A131305.P6225006175196292299

/-! ## A131305.P4578507642628541390

`A316355(A122204(comp[∑[n-1]])²)`
-/

namespace A131305.P4578507642628541390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A122204 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2).toNat

end

end A131305.P4578507642628541390

/-! ## A131305.P157470183992186921

`A005843(A122204(comp[∑[n-1]])-1)+1`
-/

namespace A131305.P157470183992186921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A122204 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1).toNat + 1

end

end A131305.P157470183992186921

/-! ## A131305.P4150150502583318545

`A283002(A122204(A014132(n+1)-1))`
-/

namespace A131305.P4150150502583318545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (A122204 (A014132 (n + 1) - 1).toNat).toNat

end

end A131305.P4150150502583318545

/-!
# A131307: (A127701 * A000012 + A000012(signed) * A127701) - A000012.

The programs for A131307, the canonical program `A131307.P11707046731788450443` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131307 has offset 1).

The definition of A131307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131307.P12547463960086190640

`A134444(n)+xor(1, A133728(n+1))`
-/

namespace A131307.P12547463960086190640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134444 n + Int.xor 1 (A133728 (n + 1))

end

end A131307.P12547463960086190640

namespace A131307

/-- `A134444(n)+xor(1, A133728(n+1))` -/
def P12547463960086190640.Spec : Prop :=
  ∀ n, P12547463960086190640.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P11707046731788450443

`2*A128221(n+1)+A025581(n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131307

/-- `2*A128221(n+1)+A025581(n)-1` -/
def P11707046731788450443.Spec : Prop :=
  ∀ n, P11707046731788450443.a n = A131307 (n + 1)

theorem P11707046731788450443.correct : P11707046731788450443.Spec := by
  intro n
  simp only [A131307, Nat.add_sub_cancel]

end A131307

/-! ## A131307.P2170470268873014439

`2*A209279(n+1)-A128174(n+1)`
-/

namespace A131307.P2170470268873014439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209279 (n + 1) - A128174 (n + 1)

end

end A131307.P2170470268873014439

namespace A131307

/-- `2*A209279(n+1)-A128174(n+1)` -/
def P2170470268873014439.Spec : Prop :=
  ∀ n, P2170470268873014439.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P14707729144775569464

`A025581(n)+A004273(A128221(n+1))`
-/

namespace A131307.P14707729144775569464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A004273 (A128221 (n + 1)).toNat

end

end A131307.P14707729144775569464

namespace A131307

/-- `A025581(n)+A004273(A128221(n+1))` -/
def P14707729144775569464.Spec : Prop :=
  ∀ n, P14707729144775569464.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P13885700781512610101

`A208233(eq[1, (floor(sqrt(8*n+1))+3)%4])-1`
-/

namespace A131307.P13885700781512610101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (8 * n + 1) + 3) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A131307.P13885700781512610101

namespace A131307

/-- `A208233(eq[1, (floor(sqrt(8*n+1))+3)%4])-1` -/
def P13885700781512610101.Spec : Prop :=
  ∀ n, P13885700781512610101.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P3464736569862113401

`A220603(A214661(n+1))`
-/

namespace A131307.P3464736569862113401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A214661 (n + 1)).toNat

end

end A131307.P3464736569862113401

namespace A131307

/-- `A220603(A214661(n+1))` -/
def P3464736569862113401.Spec : Prop :=
  ∀ n, P3464736569862113401.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P8045627843837383350

`A220603(2*A245300(n)+1)`
-/

namespace A131307.P8045627843837383350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (2 * A245300 n + 1).toNat

end

end A131307.P8045627843837383350

namespace A131307

/-- `A220603(2*A245300(n)+1)` -/
def P8045627843837383350.Spec : Prop :=
  ∀ n, P8045627843837383350.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P12307816062046868701

`A220603(A005408(A245300(n)))`
-/

namespace A131307.P12307816062046868701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (A005408 (A245300 n).toNat).toNat

end

end A131307.P12307816062046868701

namespace A131307

/-- `A220603(A005408(A245300(n)))` -/
def P12307816062046868701.Spec : Prop :=
  ∀ n, P12307816062046868701.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P14235735165809291211

`A208234(record[A123108(A068225(n+1))])`
-/

namespace A131307.P14235735165809291211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A068225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131307.P14235735165809291211

namespace A131307

/-- `A208234(record[A123108(A068225(n+1))])` -/
def P14235735165809291211.Spec : Prop :=
  ∀ n, P14235735165809291211.a n = A131307 (n + 1)

end A131307

/-! ## A131307.P4798947569588198886

`abs(A095802(n+1)/A158405(n+1))`
-/

namespace A131307.P4798947569588198886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A095802 (n + 1) : ℚ) / (A158405 (n + 1) : ℚ)|

end

end A131307.P4798947569588198886

namespace A131307

/-- `abs(A095802(n+1)/A158405(n+1))` -/
def P4798947569588198886.Spec : Prop :=
  ∀ n, P4798947569588198886.a n = (A131307 (n + 1) : ℚ)

end A131307

/-!
# A131308: Alternate A001477 and tripled 2*A000027.

The programs for A131308, there is no canonical definition to state claims against.
-/

/-! ## A131308.P89993618775267450

`gcd(2, C(n+3, 3))*ceil(n/4)`
-/

namespace A131308.P89993618775267450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (Nat.choose (n + 3) 3) : ℤ) * ⌈(n : ℚ) / 4⌉

end

end A131308.P89993618775267450

/-! ## A131308.P951422458493363742

`ceil(n/4)*Δ[floor(7*n/4)]`
-/

namespace A131308.P951422458493363742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉ * (f1 (n + 1) - f1 n)

end

end A131308.P951422458493363742

/-! ## A131308.P12877548480555353149

`a(gcd(4, n))+a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2, a(4)=1`
-/

namespace A131308.P12877548480555353149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 2, 1] fun n a =>
  a (Nat.gcd 4 n) + a (n - 4)

end

end A131308.P12877548480555353149

/-! ## A131308.P2876187613074723420

`A131508(or(n, gcd(2, n+1)))`
-/

namespace A131308.P2876187613074723420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (Nat.lor n (Nat.gcd 2 (n + 1)))

end

end A131308.P2876187613074723420

/-! ## A131308.P9255760065397908693

`A131508(or(n, 3^(n%2)))`
-/

namespace A131308.P9255760065397908693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (Nat.lor n (3 ^ (n % 2)))

end

end A131308.P9255760065397908693

/-! ## A131308.P17794835376936641876

`A131508(∑[or(2, n)-n]-1)`
-/

namespace A131308.P17794835376936641876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A131308.P17794835376936641876

/-! ## A131308.P16838006986084966769

`A065423(∑[∑[n+1]%2]+1)`
-/

namespace A131308.P16838006986084966769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A131308.P16838006986084966769

/-! ## A131308.P17223294834909433289

`A065423(Δ[ceil(C(n, 2)/2)]+2)`
-/

namespace A131308.P17223294834909433289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (f1 (n + 1) - f1 n + 2).toNat

end

end A131308.P17223294834909433289

/-! ## A131308.P5792617673970161836

`A025480(A127932(n))`
-/

namespace A131308.P5792617673970161836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A127932 n).toNat

end

end A131308.P5792617673970161836

/-! ## A131308.P2955094355829169446

`A131508(A290562(n+1))`
-/

namespace A131308.P2955094355829169446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A290562 (n + 1)).toNat

end

end A131308.P2955094355829169446

/-!
# A131309: Irregular triangle: rows are iterates of the morphism with maps 1 -> 110, 0 -> 10.

The programs for A131309, the canonical program `A131309.P376387322321656178` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131309 has offset 0).

The definition of A131309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131309.P17341807635879462790

`Δ[floor(cot(ϕ/(n+1)))]`
-/

namespace A131309.P17341807635879462790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.goldenRatio / (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131309.P17341807635879462790

namespace A131309

/-- `Δ[floor(cot(ϕ/(n+1)))]` -/
def P17341807635879462790.Spec : Prop :=
  ∀ n, P17341807635879462790.a n = A131309 n

end A131309

/-! ## A131309.P12345449909619238571

`Δ[ceil(cot(ϕ/(n+1)))]`
-/

namespace A131309.P12345449909619238571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.goldenRatio / (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131309.P12345449909619238571

namespace A131309

/-- `Δ[ceil(cot(ϕ/(n+1)))]` -/
def P12345449909619238571.Spec : Prop :=
  ∀ n, P12345449909619238571.a n = A131309 n

end A131309

/-! ## A131309.P3100785967120929096

`Δ[floor(1/tan(ϕ/(n+1)))]`
-/

namespace A131309.P3100785967120929096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tan (Real.goldenRatio / (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131309.P3100785967120929096

namespace A131309

/-- `Δ[floor(1/tan(ϕ/(n+1)))]` -/
def P3100785967120929096.Spec : Prop :=
  ∀ n, P3100785967120929096.a n = A131309 n

end A131309

/-! ## A131309.P16093044585142604736

`Δ[ceil((n/(n+1)+n)/ϕ)]`
-/

namespace A131309.P16093044585142604736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / (n + 1 : ℚ) + (n : ℚ) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131309.P16093044585142604736

namespace A131309

/-- `Δ[ceil((n/(n+1)+n)/ϕ)]` -/
def P16093044585142604736.Spec : Prop :=
  ∀ n, P16093044585142604736.a n = A131309 n

end A131309

/-! ## A131309.P376387322321656178

`Δ[A005379(n)]^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131309

/-- `Δ[A005379(n)]^n` -/
def P376387322321656178.Spec : Prop :=
  ∀ n, P376387322321656178.a n = A131309 n

theorem P376387322321656178.correct : P376387322321656178.Spec := by
  intro n
  simp only [A131309]

end A131309

/-! ## A131309.P15619924071450290196

`A114986(A393813(n+1))`
-/

namespace A131309.P15619924071450290196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A393813 (n + 1)).toNat

end

end A131309.P15619924071450290196

namespace A131309

/-- `A114986(A393813(n+1))` -/
def P15619924071450290196.Spec : Prop :=
  ∀ n, P15619924071450290196.a n = A131309 n

end A131309

/-! ## A131309.P4246203122567233903

`A005379(n+1)+A104162(n+1)-A005378(n)`
-/

namespace A131309.P4246203122567233903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 1) + (A104162 (n + 1) - A005378 n)

end

end A131309.P4246203122567233903

namespace A131309

/-- `A005379(n+1)+A104162(n+1)-A005378(n)` -/
def P4246203122567233903.Spec : Prop :=
  ∀ n, P4246203122567233903.a n = A131309 n

end A131309

/-! ## A131309.P8576614519682532190

`A039984(A165404(n+1))`
-/

namespace A131309.P8576614519682532190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039984 (A165404 (n + 1)).toNat

end

end A131309.P8576614519682532190

namespace A131309

/-- `A039984(A165404(n+1))` -/
def P8576614519682532190.Spec : Prop :=
  ∀ n, P8576614519682532190.a n = A131309 n

end A131309

/-!
# A131310: O.g.f. A(x) satisfies: [x^n] exp(x*A(x)) = [x^n] A(x) / n!.

The programs for A131310, there is no canonical definition to state claims against.
-/

/-! ## A131310.P14209126561445975526

`A043096(2*∏[n!])`
-/

namespace A131310.P14209126561445975526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (2 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A131310.P14209126561445975526

/-!
# A131311: Number of labeled 2-arch graphs on n nodes.

The programs for A131311, there is no canonical definition to state claims against.
-/

/-! ## A131311.P15877502311210941972

`A003179(3*n+1)-A005725(A036762(n+1))`
-/

namespace A131311.P15877502311210941972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 (3 * n + 1) - A005725 (A036762 (n + 1)).toNat

end

end A131311.P15877502311210941972

/-! ## A131311.P15043588857212245491

`A003179(3*n+1)-A005185(A208408(n+2))`
-/

namespace A131311.P15043588857212245491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 (3 * n + 1) - A005185 (A208408 (n + 2)).toNat

end

end A131311.P15043588857212245491

/-!
# A131312: Number of labeled 3-arch graphs on n nodes.

The programs for A131312, there is no canonical definition to state claims against.
-/

/-! ## A131312.P3112713829401263131

`A107056(round(ϕ*a(n-1))+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A131312.P3112713829401263131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  A107056 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 1).toNat

end

end A131312.P3112713829401263131

/-! ## A131312.P5209668620883275778

`A117193(A003080(n))`
-/

namespace A131312.P5209668620883275778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117193 (A003080 n).toNat

end

end A131312.P5209668620883275778

/-!
# A131313: Number of labeled 4-arch graphs on n nodes.

The programs for A131313, there is no canonical definition to state claims against.
-/

/-! ## A131313.P11423053041877842125

`A241386(A182897(n))`
-/

namespace A131313.P11423053041877842125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 (A182897 n).toNat

end

end A131313.P11423053041877842125

/-! ## A131313.P681274386560767164

`A241386(A274626(n))`
-/

namespace A131313.P681274386560767164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 (A274626 n).toNat

end

end A131313.P681274386560767164

/-! ## A131313.P1145565295355270668

`abs(A247498(A009002(n)))`
-/

namespace A131313.P1145565295355270668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247498 (A009002 n).toNat|

end

end A131313.P1145565295355270668

/-!
# A131314: Number of labeled 5-arch graphs on n nodes.

The programs for A131314, there is no canonical definition to state claims against.
-/

/-! ## A131314.P3856441913148145193

`A241093(A076928(n+2))`
-/

namespace A131314.P3856441913148145193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241093 (A076928 (n + 2)).toNat

end

end A131314.P3856441913148145193

/-! ## A131314.P18137469459346369578

`A241093(∏[A231557(n+1)])`
-/

namespace A131314.P18137469459346369578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241093 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131314.P18137469459346369578

/-! ## A131314.P7744619401922626198

`A121464(∑[lcm(n, A165646(n+1))])`
-/

namespace A131314.P7744619401922626198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A165646 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131314.P7744619401922626198

/-! ## A131314.P13723735506223093078

`A241093(A003991(n+1)*A139784(n))`
-/

namespace A131314.P13723735506223093078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241093 (A003991 (n + 1) * A139784 n).toNat

end

end A131314.P13723735506223093078

/-!
# A131315: Number of labeled 6-arch graphs on n nodes.

The programs for A131315, there is no canonical definition to state claims against.
-/

/-! ## A131315.P15531000363822575535

`A265352(A125781(n)*A184954(n))`
-/

namespace A131315.P15531000363822575535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A125781 n * A184954 n).toNat

end

end A131315.P15531000363822575535

/-! ## A131315.P13312223588075190011

`A052643(A324088(n+1))*A324412(n+1)`
-/

namespace A131315.P13312223588075190011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052643 (A324088 (n + 1)).toNat * A324412 (n + 1)

end

end A131315.P13312223588075190011

/-! ## A131315.P16134136050809529361

`A195159(and(A126740(n+1), A197764(n+1)))`
-/

namespace A131315.P16134136050809529361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (Int.land (A126740 (n + 1)) (A197764 (n + 1))).toNat

end

end A131315.P16134136050809529361

/-!
# A131318: Sum of terms within one periodic pattern of that sequence representing the digital sum analog base n of the Fibonacci recurrence.

The programs for A131318, there is no canonical definition to state claims against.
-/

/-! ## A131318.P16372444019016360552

`A340210(A026375(n)-A001222(n+1))`
-/

namespace A131318.P16372444019016360552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340210 (A026375 n - A001222 (n + 1)).toNat

end

end A131318.P16372444019016360552

/-! ## A131318.P15422403282998487276

`A006575(n+1)*A233420(A180383(3*(n+1)))`
-/

namespace A131318.P15422403282998487276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) * A233420 (A180383 (3 * (n + 1))).toNat

end

end A131318.P15422403282998487276

/-!
# A131319: Maximal value arising in the sequence S(n) representing the digital sum analog base n of the Fibonacci recurrence.

The programs for A131319, there is no canonical definition to state claims against.
-/

/-! ## A131319.P11321737991947129479

`2*(n+1)-A131320(n+1)`
-/

namespace A131319.P11321737991947129479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A131320 (n + 1)

end

end A131319.P11321737991947129479

/-! ## A131319.P3511722012947900058

`A005408(n)+1-A131320(n+1)`
-/

namespace A131319.P3511722012947900058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A131320 (n + 1))

end

end A131319.P3511722012947900058

/-! ## A131319.P4561486054710480957

`A005843(n)+2-A131320(n+1)`
-/

namespace A131319.P4561486054710480957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A131320 (n + 1))

end

end A131319.P4561486054710480957

/-! ## A131319.P8599939300625008952

`abs(A004277(n+1)-A131320(n+1))`
-/

namespace A131319.P8599939300625008952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (n + 1) - A131320 (n + 1)|

end

end A131319.P8599939300625008952

/-! ## A131319.P16382663812026309854

`record[A004442(n)]+1-A131320(n+1)`
-/

namespace A131319.P16382663812026309854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (1 - A131320 (n + 1))

end

end A131319.P16382663812026309854

/-! ## A131319.P12511789416506578280

`-(A131320(n+1)+A001489(2*(n+1)))`
-/

namespace A131319.P12511789416506578280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A131320 (n + 1) + A001489 (2 * (n + 1)))

end

end A131319.P12511789416506578280

/-! ## A131319.P6091947329765573051

`A000027(n+1)+n+1-A131320(n+1)`
-/

namespace A131319.P6091947329765573051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n + 1 : ℤ) - A131320 (n + 1))

end

end A131319.P6091947329765573051

/-! ## A131319.P7550249377973401251

`A005408(n)-A023443(A131320(n+1))`
-/

namespace A131319.P7550249377973401251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A023443 (A131320 (n + 1)).toNat

end

end A131319.P7550249377973401251

/-! ## A131319.P1913907355167654577

`A028310(A103517(n)-A131320(n+1))`
-/

namespace A131319.P1913907355167654577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A103517 n - A131320 (n + 1)).toNat

end

end A131319.P1913907355167654577

/-!
# A131320: 2*n - maximal value arising in the sequence S(n) representing the digital sum analog base n of the Fibonacci recurrence.

The programs for A131320, there is no canonical definition to state claims against.
-/

/-! ## A131320.P14138160580935648719

`2*(n+1)-A131319(n+1)`
-/

namespace A131320.P14138160580935648719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A131319 (n + 1)

end

end A131320.P14138160580935648719

/-! ## A131320.P15091203504423864748

`A025581(A131319(n+1)+∑[n])`
-/

namespace A131320.P15091203504423864748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A131319 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A131320.P15091203504423864748

/-! ## A131320.P11012621579839974004

`A005408(n)+1-A131319(n+1)`
-/

namespace A131320.P11012621579839974004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A131319 (n + 1))

end

end A131320.P11012621579839974004

/-! ## A131320.P10164657238692555789

`A005843(n)+2-A131319(n+1)`
-/

namespace A131320.P10164657238692555789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A131319 (n + 1))

end

end A131320.P10164657238692555789

/-! ## A131320.P1358394291194269506

`abs(A157142(n))+1-A131319(n+1)`
-/

namespace A131320.P1358394291194269506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157142 n| + (1 - A131319 (n + 1))

end

end A131320.P1358394291194269506

/-! ## A131320.P16757856771122294961

`Δ[A002522(n)]+1-A131319(n+1)`
-/

namespace A131320.P16757856771122294961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A131319 (n + 1))

end

end A131320.P16757856771122294961

/-! ## A131320.P4697628869993883352

`record[A004442(n)]+1-A131319(n+1)`
-/

namespace A131320.P4697628869993883352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (1 - A131319 (n + 1))

end

end A131320.P4697628869993883352

/-! ## A131320.P13256550208486915491

`A000027(n+1)+n+1-A131319(n+1)`
-/

namespace A131320.P13256550208486915491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n + 1 : ℤ) - A131319 (n + 1))

end

end A131320.P13256550208486915491

/-! ## A131320.P10195938647052182762

`A000196((n+1)²)+n+1-A131319(n+1)`
-/

namespace A131320.P10195938647052182762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1) ^ 2) + ((n + 1 : ℤ) - A131319 (n + 1))

end

end A131320.P10195938647052182762

/-!
# A131321: Triangle read by rows: A168561^2.

The programs for A131321, there is no canonical definition to state claims against.
-/

/-! ## A131321.P17110809058222423522

`∑{d}[A166357(n), A097867(#)]`
-/

namespace A131321.P17110809058222423522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A097867 d

end

end A131321.P17110809058222423522

/-! ## A131321.P1917968166785188735

`A162351(A053121(n)*A112554(n))`
-/

namespace A131321.P1917968166785188735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A053121 n * A112554 n).toNat

end

end A131321.P1917968166785188735

/-! ## A131321.P9549595173103233113

`A162351(lcm(A053121(n), A112554(n)))`
-/

namespace A131321.P9549595173103233113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (Int.lcm (A053121 n) (A112554 n))

end

end A131321.P9549595173103233113

/-! ## A131321.P3797580135176724151

`A162351(or(A053121(n), A166357(n)))`
-/

namespace A131321.P3797580135176724151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (Int.lor (A053121 n) (A166357 n)).toNat

end

end A131321.P3797580135176724151

/-! ## A131321.P12731655656195967920

`A151687(A059419(n+1))`
-/

namespace A131321.P12731655656195967920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151687 (A059419 (n + 1)).toNat

end

end A131321.P12731655656195967920

/-!
# A131322: Row sums of triangle A131321.

The programs for A131322, the canonical program `A131322.P6891094143285642336` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131322 has offset 0).

The definition of A131322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131322.P6891094143285642336

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131322

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P6891094143285642336.Spec : Prop :=
  ∀ n, P6891094143285642336.a n = A131322 n

theorem P6891094143285642336.correct : P6891094143285642336.Spec := by
  intro n
  simp only [A131322]

end A131322

/-! ## A131322.P15122351459196068120

`ogf((1-x^2)/(1-x-3x^2+x^3+x^4))`
-/

namespace A131322.P15122351459196068120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -3, 1, 1] n

end

end A131322.P15122351459196068120

namespace A131322

/-- `ogf((1-x^2)/(1-x-3x^2+x^3+x^4))` -/
def P15122351459196068120.Spec : Prop :=
  ∀ n, P15122351459196068120.a n = A131322 n

end A131322

/-! ## A131322.P5267109410192732501

`A192232(n+1)+A112576(n)`
-/

namespace A131322.P5267109410192732501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (n + 1) + A112576 n

end

end A131322.P5267109410192732501

namespace A131322

/-- `A192232(n+1)+A112576(n)` -/
def P5267109410192732501.Spec : Prop :=
  ∀ n, P5267109410192732501.a n = A131322 n

end A131322

/-! ## A131322.P2851559084580310684

`A112576(n)+∑[A112576(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A131322.P2851559084580310684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A112576 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131322.P2851559084580310684

namespace A131322

/-- `A112576(n)+∑[A112576(n-1)-a(n-1)]` -/
def P2851559084580310684.Spec : Prop :=
  ∀ n, P2851559084580310684.a n = A131322 n

end A131322

/-! ## A131322.P17786452641023836284

`A289846(n)-A112576(n)`
-/

namespace A131322.P17786452641023836284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 n - A112576 n

end

end A131322.P17786452641023836284

namespace A131322

/-- `A289846(n)-A112576(n)` -/
def P17786452641023836284.Spec : Prop :=
  ∀ n, P17786452641023836284.a n = A131322 n

end A131322

/-! ## A131322.P8263429875215128347

`(A289846(n)+A192232(n+1))/2`
-/

namespace A131322.P8263429875215128347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289846 n + A192232 (n + 1) : ℚ) / 2

end

end A131322.P8263429875215128347

namespace A131322

/-- `(A289846(n)+A192232(n+1))/2` -/
def P8263429875215128347.Spec : Prop :=
  ∀ n, P8263429875215128347.a n = (A131322 n : ℚ)

end A131322

/-! ## A131322.P598029260447416714

`2*A112576(n+1)-A192422(n+1)`
-/

namespace A131322.P598029260447416714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112576 (n + 1) - A192422 (n + 1)

end

end A131322.P598029260447416714

namespace A131322

/-- `2*A112576(n+1)-A192422(n+1)` -/
def P598029260447416714.Spec : Prop :=
  ∀ n, P598029260447416714.a n = A131322 n

end A131322

/-! ## A131322.P9966819144304743785

`A183314(n+3)%A183314(n+2)`
-/

namespace A131322.P9966819144304743785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183314 (n + 3)) (A183314 (n + 2))

end

end A131322.P9966819144304743785

namespace A131322

/-- `A183314(n+3)%A183314(n+2)` -/
def P9966819144304743785.Spec : Prop :=
  ∀ n, P9966819144304743785.a n = A131322 n

end A131322

/-! ## A131322.P3145464437552957332

`Δ[Δ[A183314(n+1)]]-A183314(n+1)`
-/

namespace A131322.P3145464437552957332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A183314 (n + 1)

end

end A131322.P3145464437552957332

namespace A131322

/-- `Δ[Δ[A183314(n+1)]]-A183314(n+1)` -/
def P3145464437552957332.Spec : Prop :=
  ∀ n, P3145464437552957332.a n = A131322 n

end A131322

/-! ## A131322.P18297495649436669965

`A112576(n)+A289846(n+5)%(A289846(n+4)+A112576(n+1))`
-/

namespace A131322.P18297495649436669965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n + Int.tmod (A289846 (n + 5)) (A289846 (n + 4) + A112576 (n + 1))

end

end A131322.P18297495649436669965

namespace A131322

/-- `A112576(n)+A289846(n+5)%(A289846(n+4)+A112576(n+1))` -/
def P18297495649436669965.Spec : Prop :=
  ∀ n, P18297495649436669965.a n = A131322 n

end A131322

/-!
# A131323: Odd numbers whose binary expansion ends in an even number of 1's.

The programs for A131323, the canonical program `A131323.P11558536358663034912` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131323 has offset 1).

The definition of A131323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131323.P11558536358663034912

`2*A079523(n+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131323

/-- `2*A079523(n+1)+1` -/
def P11558536358663034912.Spec : Prop :=
  ∀ n, P11558536358663034912.a n = A131323 (n + 1)

theorem P11558536358663034912.correct : P11558536358663034912.Spec := by
  intro n
  simp only [A131323, Nat.add_sub_cancel]

end A131323

/-! ## A131323.P14447925736821106557

`2*comp[or(n, val(n+2, 2))]+3`
-/

namespace A131323.P14447925736821106557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3

end

end A131323.P14447925736821106557

namespace A131323

/-- `2*comp[or(n, val(n+2, 2))]+3` -/
def P14447925736821106557.Spec : Prop :=
  ∀ n, (P14447925736821106557.a n : ℤ) = A131323 (n + 1)

end A131323

/-! ## A131323.P15222283555616589030

`comp[(val(n+1, 2)+n)%2+n]`
-/

namespace A131323.P15222283555616589030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + n) % 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131323.P15222283555616589030

namespace A131323

/-- `comp[(val(n+1, 2)+n)%2+n]` -/
def P15222283555616589030.Spec : Prop :=
  ∀ n, (P15222283555616589030.a n : ℤ) = A131323 (n + 1)

end A131323

/-! ## A131323.P3370103681103923340

`4*eq[0, val(n+1, 2)%2]+3`
-/

namespace A131323.P3370103681103923340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A131323.P3370103681103923340

namespace A131323

/-- `4*eq[0, val(n+1, 2)%2]+3` -/
def P3370103681103923340.Spec : Prop :=
  ∀ n, (P3370103681103923340.a n : ℤ) = A131323 (n + 1)

end A131323

/-! ## A131323.P15444408476297011452

`2*eq[0, xor(n, n-1)%3]-1`
-/

namespace A131323.P15444408476297011452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A131323.P15444408476297011452

namespace A131323

/-- `2*eq[0, xor(n, n-1)%3]-1` -/
def P15444408476297011452.Spec : Prop :=
  ∀ n, P15444408476297011452.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P4170273493301810285

`2*lt[(-(2*n))^val(n+1, 2), 0]+1`
-/

namespace A131323.P4170273493301810285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n : ℤ)) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131323.P4170273493301810285

namespace A131323

/-- `2*lt[(-(2*n))^val(n+1, 2), 0]+1` -/
def P4170273493301810285.Spec : Prop :=
  ∀ n, (P4170273493301810285.a n : ℤ) = A131323 (n + 1)

end A131323

/-! ## A131323.P4977479094640133612

`A108269(n+1)-1`
-/

namespace A131323.P4977479094640133612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1) - 1

end

end A131323.P4977479094640133612

namespace A131323

/-- `A108269(n+1)-1` -/
def P4977479094640133612.Spec : Prop :=
  ∀ n, P4977479094640133612.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P5668342683340425803

`A249034(n+1)-2`
-/

namespace A131323.P5668342683340425803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1) - 2

end

end A131323.P5668342683340425803

namespace A131323

/-- `A249034(n+1)-2` -/
def P5668342683340425803.Spec : Prop :=
  ∀ n, P5668342683340425803.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P18226381179966984384

`2*A036554(n+1)-1`
-/

namespace A131323.P18226381179966984384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036554 (n + 1) - 1

end

end A131323.P18226381179966984384

namespace A131323

/-- `2*A036554(n+1)-1` -/
def P18226381179966984384.Spec : Prop :=
  ∀ n, P18226381179966984384.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P13016375689758032983

`2*A162648(n+1)+3`
-/

namespace A131323.P13016375689758032983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162648 (n + 1) + 3

end

end A131323.P13016375689758032983

namespace A131323

/-- `2*A162648(n+1)+3` -/
def P13016375689758032983.Spec : Prop :=
  ∀ n, P13016375689758032983.a n = A131323 (n + 1)

theorem P13016375689758032983.correct : P13016375689758032983.Spec := by
  intro n
  simp only [A131323, Nat.add_sub_cancel, A131323.P13016375689758032983.a, A131323.P11558536358663034912.a, A079523, A079523.P16371928625451652770.a, A162648, A162648.P16341361686892732013.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131323

/-! ## A131323.P15683926263341330470

`(A225822(n+1)-1)/2`
-/

namespace A131323.P15683926263341330470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225822 (n + 1) - 1 : ℚ) / 2

end

end A131323.P15683926263341330470

namespace A131323

/-- `(A225822(n+1)-1)/2` -/
def P15683926263341330470.Spec : Prop :=
  ∀ n, P15683926263341330470.a n = (A131323 (n + 1) : ℚ)

theorem P15683926263341330470.correct : P15683926263341330470.Spec := by
  intro n
  simp only [A131323, Nat.add_sub_cancel, A131323.P15683926263341330470.a, A131323.P11558536358663034912.a, A079523, A079523.P16371928625451652770.a, A225822, A225822.P16967575723394986569.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131323

/-! ## A131323.P12129721029193951593

`4*A003159(n+1)-1`
-/

namespace A131323.P12129721029193951593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003159 (n + 1) - 1

end

end A131323.P12129721029193951593

namespace A131323

/-- `4*A003159(n+1)-1` -/
def P12129721029193951593.Spec : Prop :=
  ∀ n, P12129721029193951593.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P17138111170981054761

`2*A072939(n+1)-3`
-/

namespace A131323.P17138111170981054761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072939 (n + 1) - 3

end

end A131323.P17138111170981054761

namespace A131323

/-- `2*A072939(n+1)-3` -/
def P17138111170981054761.Spec : Prop :=
  ∀ n, P17138111170981054761.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P1965871137207214870

`4*A121539(n+1)+3`
-/

namespace A131323.P1965871137207214870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A121539 (n + 1) + 3

end

end A131323.P1965871137207214870

namespace A131323

/-- `4*A121539(n+1)+3` -/
def P1965871137207214870.Spec : Prop :=
  ∀ n, P1965871137207214870.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P9740403361381609706

`2*eq[3, A020639(xor(n, n+1))]+1`
-/

namespace A131323.P9740403361381609706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131323.P9740403361381609706

namespace A131323

/-- `2*eq[3, A020639(xor(n, n+1))]+1` -/
def P9740403361381609706.Spec : Prop :=
  ∀ n, (P9740403361381609706.a n : ℤ) = A131323 (n + 1)

end A131323

/-! ## A131323.P16423092972878030618

`A016825(A003159(n+1)-1)+1`
-/

namespace A131323.P16423092972878030618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A003159 (n + 1) - 1).toNat + 1

end

end A131323.P16423092972878030618

namespace A131323

/-- `A016825(A003159(n+1)-1)+1` -/
def P16423092972878030618.Spec : Prop :=
  ∀ n, P16423092972878030618.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P3543203870663242945

`A003158(n+1)+A003156(n+1)`
-/

namespace A131323.P3543203870663242945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) + A003156 (n + 1)

end

end A131323.P3543203870663242945

namespace A131323

/-- `A003158(n+1)+A003156(n+1)` -/
def P3543203870663242945.Spec : Prop :=
  ∀ n, P3543203870663242945.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P15105062213660799012

`A079523(n+1)+A036554(n+1)`
-/

namespace A131323.P15105062213660799012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + A036554 (n + 1)

end

end A131323.P15105062213660799012

namespace A131323

/-- `A079523(n+1)+A036554(n+1)` -/
def P15105062213660799012.Spec : Prop :=
  ∀ n, P15105062213660799012.a n = A131323 (n + 1)

end A131323

/-! ## A131323.P5084857423817468731

`A162648(n+1)+A072939(n+1)`
-/

namespace A131323.P5084857423817468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + A072939 (n + 1)

end

end A131323.P5084857423817468731

namespace A131323

/-- `A162648(n+1)+A072939(n+1)` -/
def P5084857423817468731.Spec : Prop :=
  ∀ n, P5084857423817468731.a n = A131323 (n + 1)

end A131323

/-!
# A131324: Triangle read by rows: T(n,k) = 2*|A049310(n,k)| - (-1)^(n+k).

The programs for A131324, the canonical program `A131324.P848567816765681680` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131324 has offset 0).

The definition of A131324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131324.P848567816765681680

`abs(1-2*A168561(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131324

/-- `abs(1-2*A168561(n))` -/
def P848567816765681680.Spec : Prop :=
  ∀ n, P848567816765681680.a n = A131324 n

theorem P848567816765681680.correct : P848567816765681680.Spec := by
  intro n
  simp only [A131324]

end A131324

/-! ## A131324.P3813536517787726684

`2*A134505(n+1)-1`
-/

namespace A131324.P3813536517787726684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134505 (n + 1) - 1

end

end A131324.P3813536517787726684

namespace A131324

/-- `2*A134505(n+1)-1` -/
def P3813536517787726684.Spec : Prop :=
  ∀ n, P3813536517787726684.a n = A131324 n

end A131324

/-! ## A131324.P6813466565965494372

`2*A131325(n)-A131327(n)`
-/

namespace A131324.P6813466565965494372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131325 n - A131327 n

end

end A131324.P6813466565965494372

namespace A131324

/-- `2*A131325(n)-A131327(n)` -/
def P6813466565965494372.Spec : Prop :=
  ∀ n, P6813466565965494372.a n = A131324 n

end A131324

/-! ## A131324.P7117158319155257424

`A131779(n+1)+A065941(n)-A131775(n+1)`
-/

namespace A131324.P7117158319155257424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131779 (n + 1) + (A065941 n - A131775 (n + 1))

end

end A131324.P7117158319155257424

namespace A131324

/-- `A131779(n+1)+A065941(n)-A131775(n+1)` -/
def P7117158319155257424.Spec : Prop :=
  ∀ n, P7117158319155257424.a n = A131324 n

end A131324

/-! ## A131324.P16708571163783560033

`A000265(A131327(n)+1)`
-/

namespace A131324.P16708571163783560033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A131327 n + 1).toNat

end

end A131324.P16708571163783560033

namespace A131324

/-- `A000265(A131327(n)+1)` -/
def P16708571163783560033.Spec : Prop :=
  ∀ n, P16708571163783560033.a n = A131324 n

end A131324

/-! ## A131324.P11634114671275964404

`A004273(A134505(n+1))`
-/

namespace A131324.P11634114671275964404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A134505 (n + 1)).toNat

end

end A131324.P11634114671275964404

namespace A131324

/-- `A004273(A134505(n+1))` -/
def P11634114671275964404.Spec : Prop :=
  ∀ n, P11634114671275964404.a n = A131324 n

end A131324

/-! ## A131324.P2427426009201793989

`A004396(A131325(n))`
-/

namespace A131324.P2427426009201793989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131325 n).toNat

end

end A131324.P2427426009201793989

namespace A131324

/-- `A004396(A131325(n))` -/
def P2427426009201793989.Spec : Prop :=
  ∀ n, P2427426009201793989.a n = A131324 n

end A131324

/-! ## A131324.P5332334336503514640

`A004525(A131327(n))`
-/

namespace A131324.P5332334336503514640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131327 n).toNat

end

end A131324.P5332334336503514640

namespace A131324

/-- `A004525(A131327(n))` -/
def P5332334336503514640.Spec : Prop :=
  ∀ n, P5332334336503514640.a n = A131324 n

end A131324

/-! ## A131324.P13683495660092537285

`A028234(A131327(n)+1)`
-/

namespace A131324.P13683495660092537285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A131327 n + 1).toNat

end

end A131324.P13683495660092537285

namespace A131324

/-- `A028234(A131327(n)+1)` -/
def P13683495660092537285.Spec : Prop :=
  ∀ n, P13683495660092537285.a n = A131324 n

end A131324

/-! ## A131324.P10375287586108908846

`A008611(2*A131325(n))`
-/

namespace A131324.P10375287586108908846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A131325 n).toNat

end

end A131324.P10375287586108908846

namespace A131324

/-- `A008611(2*A131325(n))` -/
def P10375287586108908846.Spec : Prop :=
  ∀ n, P10375287586108908846.a n = A131324 n

end A131324

/-! ## A131324.P12756219207265111014

`A063195(2*A131325(n))`
-/

namespace A131324.P12756219207265111014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (2 * A131325 n).toNat

end

end A131324.P12756219207265111014

namespace A131324

/-- `A063195(2*A131325(n))` -/
def P12756219207265111014.Spec : Prop :=
  ∀ n, P12756219207265111014.a n = A131324 n

end A131324

/-! ## A131324.P6433723490838487128

`A111709(4*A131325(n))`
-/

namespace A131324.P6433723490838487128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111709 (4 * A131325 n).toNat

end

end A131324.P6433723490838487128

namespace A131324

/-- `A111709(4*A131325(n))` -/
def P6433723490838487128.Spec : Prop :=
  ∀ n, P6433723490838487128.a n = A131324 n

end A131324

/-!
# A131325: Triangle |3*|A049310(n,k)| - 2| read by rows, 0 <= k <= n.

The programs for A131325, the canonical program `A131325.P7766003980206294950` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131325 has offset 0).

The definition of A131325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131325.P7766003980206294950

`abs(2-3*A168561(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131325

/-- `abs(2-3*A168561(n))` -/
def P7766003980206294950.Spec : Prop :=
  ∀ n, P7766003980206294950.a n = A131325 n

theorem P7766003980206294950.correct : P7766003980206294950.Spec := by
  intro n
  simp only [A131325]

end A131325

/-! ## A131325.P9548996717504729152

`round(3*A131327(n)/4)`
-/

namespace A131325.P9548996717504729152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * A131327 n : ℚ) / 4)

end

end A131325.P9548996717504729152

namespace A131325

/-- `round(3*A131327(n)/4)` -/
def P9548996717504729152.Spec : Prop :=
  ∀ n, P9548996717504729152.a n = A131325 n

end A131325

/-! ## A131325.P4109242793221809855

`abs(2-abs(3*A049310(n)))`
-/

namespace A131325.P4109242793221809855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |3 * A049310 n|)|

end

end A131325.P4109242793221809855

namespace A131325

/-- `abs(2-abs(3*A049310(n)))` -/
def P4109242793221809855.Spec : Prop :=
  ∀ n, P4109242793221809855.a n = A131325 n

end A131325

/-! ## A131325.P17248656469418012306

`2*A131324(n)-A168561(n)`
-/

namespace A131325.P17248656469418012306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131324 n - A168561 n

end

end A131325.P17248656469418012306

namespace A131325

/-- `2*A131324(n)-A168561(n)` -/
def P17248656469418012306.Spec : Prop :=
  ∀ n, P17248656469418012306.a n = A131325 n

end A131325

/-! ## A131325.P263928577152838283

`A166517(A004273(A168561(n)))`
-/

namespace A131325.P263928577152838283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A004273 (A168561 n).toNat).toNat

end

end A131325.P263928577152838283

namespace A131325

/-- `A166517(A004273(A168561(n)))` -/
def P263928577152838283.Spec : Prop :=
  ∀ n, P263928577152838283.a n = A131325 n

end A131325

/-! ## A131325.P7180058887474414703

`A006368(A131327(n))`
-/

namespace A131325.P7180058887474414703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A131327 n).toNat

end

end A131325.P7180058887474414703

namespace A131325

/-- `A006368(A131327(n))` -/
def P7180058887474414703.Spec : Prop :=
  ∀ n, P7180058887474414703.a n = A131325 n

end A131325

/-! ## A131325.P4672719552968193191

`A026730(2*A131327(n))`
-/

namespace A131325.P4672719552968193191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (2 * A131327 n).toNat

end

end A131325.P4672719552968193191

namespace A131325

/-- `A026730(2*A131327(n))` -/
def P4672719552968193191.Spec : Prop :=
  ∀ n, P4672719552968193191.a n = A131325 n

end A131325

/-! ## A131325.P4803260512759112240

`A026730(lcm(2, A131327(n)))`
-/

namespace A131325.P4803260512759112240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (Int.lcm 2 (A131327 n))

end

end A131325.P4803260512759112240

namespace A131325

/-- `A026730(lcm(2, A131327(n)))` -/
def P4803260512759112240.Spec : Prop :=
  ∀ n, P4803260512759112240.a n = A131325 n

end A131325

/-! ## A131325.P17536121045860755681

`A008624(3*A131327(n))`
-/

namespace A131325.P17536121045860755681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (3 * A131327 n).toNat

end

end A131325.P17536121045860755681

namespace A131325

/-- `A008624(3*A131327(n))` -/
def P17536121045860755681.Spec : Prop :=
  ∀ n, P17536121045860755681.a n = A131325 n

end A131325

/-! ## A131325.P4135614332463402579

`A059169(3*A131327(n))`
-/

namespace A131325.P4135614332463402579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (3 * A131327 n).toNat

end

end A131325.P4135614332463402579

namespace A131325

/-- `A059169(3*A131327(n))` -/
def P4135614332463402579.Spec : Prop :=
  ∀ n, P4135614332463402579.a n = A131325 n

end A131325

/-! ## A131325.P17340346697553158806

`A008624(abs(A084060(A131327(n))))`
-/

namespace A131325.P17340346697553158806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 |A084060 (A131327 n).toNat|.toNat

end

end A131325.P17340346697553158806

namespace A131325

/-- `A008624(abs(A084060(A131327(n))))` -/
def P17340346697553158806.Spec : Prop :=
  ∀ n, P17340346697553158806.a n = A131325 n

end A131325

/-!
# A131326: Row sums of A131325.

The programs for A131326, the canonical program `A131326.P16360698779778793450` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131326 has offset 0).

The definition of A131326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131326.P16360698779778793450

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131326

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P16360698779778793450.Spec : Prop :=
  ∀ n, P16360698779778793450.a n = A131326 n

theorem P16360698779778793450.correct : P16360698779778793450.Spec := by
  intro n
  simp only [A131326]

end A131326

/-! ## A131326.P3318468230865358078

`ogf((1+2x-x^2)/(1-x-2x^2+x^3+x^4))`
-/

namespace A131326.P3318468230865358078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, -2, 1, 1] n

end

end A131326.P3318468230865358078

namespace A131326

/-- `ogf((1+2x-x^2)/(1-x-2x^2+x^3+x^4))` -/
def P3318468230865358078.Spec : Prop :=
  ∀ n, P3318468230865358078.a n = A131326 n

end A131326

/-! ## A131326.P14169065595211628021

`∑[a(n-3)+2*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A131326.P14169065595211628021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131326.P14169065595211628021

namespace A131326

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P14169065595211628021.Spec : Prop :=
  ∀ n, (P14169065595211628021.a n : ℤ) = A131326 n

end A131326

/-! ## A131326.P16644275510866498068

`a(n-3)+2*(a(n-2)+1)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A131326.P16644275510866498068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 3) + 2 * (a (n - 2) + 1)

end

end A131326.P16644275510866498068

namespace A131326

/-- `a(n-3)+2*(a(n-2)+1)` -/
def P16644275510866498068.Spec : Prop :=
  ∀ n, (P16644275510866498068.a n : ℤ) = A131326 n

end A131326

/-! ## A131326.P5301636413399467690

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A131326.P5301636413399467690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131326.P5301636413399467690

namespace A131326

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P5301636413399467690.Spec : Prop :=
  ∀ n, (P5301636413399467690.a n : ℤ) = A131326 n

end A131326

/-! ## A131326.P17903630029559261902

`a(n-2)+2+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A131326.P17903630029559261902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) + 2 + (a (n - 2) + a (n - 3))

end

end A131326.P17903630029559261902

namespace A131326

/-- `a(n-2)+2+a(n-2)+a(n-3)` -/
def P17903630029559261902.Spec : Prop :=
  ∀ n, (P17903630029559261902.a n : ℤ) = A131326 n

end A131326

/-! ## A131326.P8576145184547452230

`a(n-1)-((1-a(n-2))%3-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A131326.P8576145184547452230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (Int.tmod (1 - a (n - 2)) 3 - a (n - 2))

end

end A131326.P8576145184547452230

namespace A131326

/-- `a(n-1)-((1-a(n-2))%3-a(n-2))` -/
def P8576145184547452230.Spec : Prop :=
  ∀ n, P8576145184547452230.a n = A131326 n

end A131326

/-! ## A131326.P12808851409442014778

`gcd(3, a(n-2))-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A131326.P12808851409442014778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.gcd 3 (a (n - 2)) : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A131326.P12808851409442014778

namespace A131326

/-- `gcd(3, a(n-2))-(1-a(n-1)-a(n-2))` -/
def P12808851409442014778.Spec : Prop :=
  ∀ n, P12808851409442014778.a n = A131326 n

end A131326

/-! ## A131326.P14432257786778515783

`A097133(n+1)-1`
-/

namespace A131326.P14432257786778515783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 (n + 1) - 1

end

end A131326.P14432257786778515783

namespace A131326

/-- `A097133(n+1)-1` -/
def P14432257786778515783.Spec : Prop :=
  ∀ n, P14432257786778515783.a n = A131326 n

end A131326

/-! ## A131326.P8172507772999996350

`A097135(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A131326.P8172507772999996350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A097135 n + a (n - 2)

end

end A131326.P8172507772999996350

namespace A131326

/-- `A097135(n)+a(n-2)` -/
def P8172507772999996350.Spec : Prop :=
  ∀ n, P8172507772999996350.a n = A131326 n

end A131326

/-! ## A131326.P6041064123896338641

`∑[A022086(n)-a(n-1)]` with `a(0)=1`
-/

namespace A131326.P6041064123896338641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A022086 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131326.P6041064123896338641

namespace A131326

/-- `∑[A022086(n)-a(n-1)]` -/
def P6041064123896338641.Spec : Prop :=
  ∀ n, P6041064123896338641.a n = A131326 n

end A131326

/-! ## A131326.P13679514105449588893

`a(n-2)+3*A000045(n)` with `a(0)=1, a(1)=3`
-/

namespace A131326.P13679514105449588893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 * A000045 n

end

end A131326.P13679514105449588893

namespace A131326

/-- `a(n-2)+3*A000045(n)` -/
def P13679514105449588893.Spec : Prop :=
  ∀ n, P13679514105449588893.a n = A131326 n

end A131326

/-! ## A131326.P3772826812619443327

`A111314(n)+A010673(n)`
-/

namespace A131326.P3772826812619443327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + A010673 n

end

end A131326.P3772826812619443327

namespace A131326

/-- `A111314(n)+A010673(n)` -/
def P3772826812619443327.Spec : Prop :=
  ∀ n, P3772826812619443327.a n = A131326 n

end A131326

/-! ## A131326.P12798706685349654986

`A022318(n)-A181716(n)`
-/

namespace A131326.P12798706685349654986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n - A181716 n

end

end A131326.P12798706685349654986

namespace A131326

/-- `A022318(n)-A181716(n)` -/
def P12798706685349654986.Spec : Prop :=
  ∀ n, P12798706685349654986.a n = A131326 n

end A131326

/-! ## A131326.P18224409963132096350

`A131328(n)-A074331(n)`
-/

namespace A131326.P18224409963132096350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131328 n - A074331 n

end

end A131326.P18224409963132096350

namespace A131326

/-- `A131328(n)-A074331(n)` -/
def P18224409963132096350.Spec : Prop :=
  ∀ n, P18224409963132096350.a n = A131326 n

end A131326

/-! ## A131326.P10870626948318259631

`A377628(n)-A033999(n)`
-/

namespace A131326.P10870626948318259631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n - A033999 n

end

end A131326.P10870626948318259631

namespace A131326

/-- `A377628(n)-A033999(n)` -/
def P10870626948318259631.Spec : Prop :=
  ∀ n, P10870626948318259631.a n = A131326 n

end A131326

/-! ## A131326.P7054083682938444826

`A001595(n)+Δ[A052952(n)]`
-/

namespace A131326.P7054083682938444826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (f1 (n + 1) - f1 n)

end

end A131326.P7054083682938444826

namespace A131326

/-- `A001595(n)+Δ[A052952(n)]` -/
def P7054083682938444826.Spec : Prop :=
  ∀ n, P7054083682938444826.a n = A131326 n

end A131326

/-! ## A131326.P12817173867098772260

`A008346(n+1)+A001595(n)`
-/

namespace A131326.P12817173867098772260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 1) + A001595 n

end

end A131326.P12817173867098772260

namespace A131326

/-- `A008346(n+1)+A001595(n)` -/
def P12817173867098772260.Spec : Prop :=
  ∀ n, P12817173867098772260.a n = A131326 n

end A131326

/-! ## A131326.P17663290722308584156

`A066983(n+1)+A001610(n)`
-/

namespace A131326.P17663290722308584156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (n + 1) + A001610 n

end

end A131326.P17663290722308584156

namespace A131326

/-- `A066983(n+1)+A001610(n)` -/
def P17663290722308584156.Spec : Prop :=
  ∀ n, P17663290722308584156.a n = A131326 n

end A131326

/-! ## A131326.P1525483700855242319

`A074331(n)+A062114(n+1)`
-/

namespace A131326.P1525483700855242319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n + A062114 (n + 1)

end

end A131326.P1525483700855242319

namespace A131326

/-- `A074331(n)+A062114(n+1)` -/
def P1525483700855242319.Spec : Prop :=
  ∀ n, P1525483700855242319.a n = A131326 n

end A131326

/-!
# A131327: Triangle |4*|A049310(n,k)| - 3| read by rows, 0<=k<=n.

The programs for A131327, the canonical program `A131327.P2273805108946700537` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131327 has offset 0).

The definition of A131327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131327.P2273805108946700537

`round(4*A131325(n)/3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131327

/-- `round(4*A131325(n)/3)` -/
def P2273805108946700537.Spec : Prop :=
  ∀ n, P2273805108946700537.a n = A131327 n

theorem P2273805108946700537.correct : P2273805108946700537.Spec := by
  intro n
  simp only [A131327]

end A131327

/-! ## A131327.P15025283721213144880

`abs(3-abs(4*A049310(n)))`
-/

namespace A131327.P15025283721213144880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 - |4 * A049310 n|)|

end

end A131327.P15025283721213144880

namespace A131327

/-- `abs(3-abs(4*A049310(n)))` -/
def P15025283721213144880.Spec : Prop :=
  ∀ n, P15025283721213144880.a n = A131327 n

end A131327

/-! ## A131327.P7395029077850408136

`abs(xor(3, -(4*A168561(n))))`
-/

namespace A131327.P7395029077850408136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 (-(4 * A168561 n))|

end

end A131327.P7395029077850408136

namespace A131327

/-- `abs(xor(3, -(4*A168561(n))))` -/
def P7395029077850408136.Spec : Prop :=
  ∀ n, P7395029077850408136.a n = A131327 n

end A131327

/-! ## A131327.P9120553430101095315

`2*A131325(n)-A131324(n)`
-/

namespace A131327.P9120553430101095315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131325 n - A131324 n

end

end A131327.P9120553430101095315

namespace A131327

/-- `2*A131325(n)-A131324(n)` -/
def P9120553430101095315.Spec : Prop :=
  ∀ n, P9120553430101095315.a n = A131327 n

end A131327

/-! ## A131327.P10467676503582553325

`xor(3, A130824(A168561(n)))`
-/

namespace A131327.P10467676503582553325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A130824 (A168561 n).toNat)

end

end A131327.P10467676503582553325

namespace A131327

/-- `xor(3, A130824(A168561(n)))` -/
def P10467676503582553325.Spec : Prop :=
  ∀ n, P10467676503582553325.a n = A131327 n

end A131327

/-! ## A131327.P350212289275326071

`xor(3, A130824(abs(A049310(n))))`
-/

namespace A131327.P350212289275326071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A130824 |A049310 n|.toNat)

end

end A131327.P350212289275326071

namespace A131327

/-- `xor(3, A130824(abs(A049310(n))))` -/
def P350212289275326071.Spec : Prop :=
  ∀ n, P350212289275326071.a n = A131327 n

end A131327

/-! ## A131327.P13405493946875389335

`A006369(A131325(n))`
-/

namespace A131327.P13405493946875389335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A131325 n).toNat

end

end A131327.P13405493946875389335

namespace A131327

/-- `A006369(A131325(n))` -/
def P13405493946875389335.Spec : Prop :=
  ∀ n, P13405493946875389335.a n = A131327 n

end A131327

/-! ## A131327.P14158395631977042993

`A042965(A131325(n)+1)`
-/

namespace A131327.P14158395631977042993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A131325 n + 1).toNat

end

end A131327.P14158395631977042993

namespace A131327

/-- `A042965(A131325(n)+1)` -/
def P14158395631977042993.Spec : Prop :=
  ∀ n, P14158395631977042993.a n = A131327 n

end A131327

/-! ## A131327.P6146358939395754434

`A004396(2*A131325(n))`
-/

namespace A131327.P6146358939395754434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A131325 n).toNat

end

end A131327.P6146358939395754434

namespace A131327

/-- `A004396(2*A131325(n))` -/
def P6146358939395754434.Spec : Prop :=
  ∀ n, P6146358939395754434.a n = A131327 n

end A131327

/-! ## A131327.P13210417379557221533

`A008611(4*A131325(n))`
-/

namespace A131327.P13210417379557221533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * A131325 n).toNat

end

end A131327.P13210417379557221533

namespace A131327

/-- `A008611(4*A131325(n))` -/
def P13210417379557221533.Spec : Prop :=
  ∀ n, P13210417379557221533.a n = A131327 n

end A131327

/-! ## A131327.P18008010682705078023

`A063195(4*A131325(n))`
-/

namespace A131327.P18008010682705078023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (4 * A131325 n).toNat

end

end A131327.P18008010682705078023

namespace A131327

/-- `A063195(4*A131325(n))` -/
def P18008010682705078023.Spec : Prop :=
  ∀ n, P18008010682705078023.a n = A131327 n

end A131327

/-!
# A131328: Row sums of triangle A131327.

The programs for A131328, the canonical program `A131328.P755612913182361280` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131328 has offset 0).

The definition of A131328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131328.P755612913182361280

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131328

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P755612913182361280.Spec : Prop :=
  ∀ n, P755612913182361280.a n = A131328 n

theorem P755612913182361280.correct : P755612913182361280.Spec := by
  intro n
  simp only [A131328]

end A131328

/-! ## A131328.P15188088648411637721

`ogf((1+3x-x^2)/(1-x-2x^2+x^3+x^4))`
-/

namespace A131328.P15188088648411637721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -1, -2, 1, 1] n

end

end A131328.P15188088648411637721

namespace A131328

/-- `ogf((1+3x-x^2)/(1-x-2x^2+x^3+x^4))` -/
def P15188088648411637721.Spec : Prop :=
  ∀ n, P15188088648411637721.a n = A131328 n

end A131328

/-! ## A131328.P8301666949213836479

`∑[a(n-3)+2*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A131328.P8301666949213836479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131328.P8301666949213836479

namespace A131328

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P8301666949213836479.Spec : Prop :=
  ∀ n, (P8301666949213836479.a n : ℤ) = A131328 n

end A131328

/-! ## A131328.P15250620356638879157

`2*a(n-2)+a(n-3)+3` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131328.P15250620356638879157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 3)

end

end A131328.P15250620356638879157

namespace A131328

/-- `2*a(n-2)+a(n-3)+3` -/
def P15250620356638879157.Spec : Prop :=
  ∀ n, (P15250620356638879157.a n : ℤ) = A131328 n

end A131328

/-! ## A131328.P8097752785844878560

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A131328.P8097752785844878560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131328.P8097752785844878560

namespace A131328

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P8097752785844878560.Spec : Prop :=
  ∀ n, (P8097752785844878560.a n : ℤ) = A131328 n

end A131328

/-! ## A131328.P1686718506384200651

`a(n-2)+3+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131328.P1686718506384200651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 2) + 3 + (a (n - 2) + a (n - 3))

end

end A131328.P1686718506384200651

namespace A131328

/-- `a(n-2)+3+a(n-2)+a(n-3)` -/
def P1686718506384200651.Spec : Prop :=
  ∀ n, (P1686718506384200651.a n : ℤ) = A131328 n

end A131328

/-! ## A131328.P6565457992619764694

`a(n-1)-((1-a(n-2))%4-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A131328.P6565457992619764694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (Int.tmod (1 - a (n - 2)) 4 - a (n - 2))

end

end A131328.P6565457992619764694

namespace A131328

/-- `a(n-1)-((1-a(n-2))%4-a(n-2))` -/
def P6565457992619764694.Spec : Prop :=
  ∀ n, P6565457992619764694.a n = A131328 n

end A131328

/-! ## A131328.P12001156389650310852

`gcd(4, a(n-2))-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A131328.P12001156389650310852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.gcd 4 (a (n - 2)) : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A131328.P12001156389650310852

namespace A131328

/-- `gcd(4, a(n-2))-(1-a(n-1)-a(n-2))` -/
def P12001156389650310852.Spec : Prop :=
  ∀ n, P12001156389650310852.a n = A131328 n

end A131328

/-! ## A131328.P5247991102310994222

`a(n-2)+4*A000045(n)` with `a(0)=1, a(1)=4`
-/

namespace A131328.P5247991102310994222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 4 * A000045 n

end

end A131328.P5247991102310994222

namespace A131328

/-- `a(n-2)+4*A000045(n)` -/
def P5247991102310994222.Spec : Prop :=
  ∀ n, P5247991102310994222.a n = A131328 n

end A131328

/-! ## A131328.P10601710658048833384

`∑[4*A212804(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A131328.P10601710658048833384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * A212804 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131328.P10601710658048833384

namespace A131328

/-- `∑[4*A212804(n+1)-a(n-1)]` -/
def P10601710658048833384.Spec : Prop :=
  ∀ n, P10601710658048833384.a n = A131328 n

end A131328

/-! ## A131328.P14447733776826265786

`A131326(n)+A074331(n)`
-/

namespace A131328.P14447733776826265786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 n + A074331 n

end

end A131328.P14447733776826265786

namespace A131328

/-- `A131326(n)+A074331(n)` -/
def P14447733776826265786.Spec : Prop :=
  ∀ n, P14447733776826265786.a n = A131328 n

end A131328

/-! ## A131328.P17228530827908522570

`A052952(n+1)+A001350(n)`
-/

namespace A131328.P17228530827908522570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (n + 1) + A001350 n

end

end A131328.P17228530827908522570

namespace A131328

/-- `A052952(n+1)+A001350(n)` -/
def P17228530827908522570.Spec : Prop :=
  ∀ n, P17228530827908522570.a n = A131328 n

end A131328

/-! ## A131328.P13202271313289315968

`A074331(n+2)+A001350(n)`
-/

namespace A131328.P13202271313289315968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (n + 2) + A001350 n

end

end A131328.P13202271313289315968

namespace A131328

/-- `A074331(n+2)+A001350(n)` -/
def P13202271313289315968.Spec : Prop :=
  ∀ n, P13202271313289315968.a n = A131328 n

end A131328

/-! ## A131328.P8097192637473040185

`A022403(n)-A168361(n+1)`
-/

namespace A131328.P8097192637473040185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n - A168361 (n + 1)

end

end A131328.P8097192637473040185

namespace A131328

/-- `A022403(n)-A168361(n+1)` -/
def P8097192637473040185.Spec : Prop :=
  ∀ n, P8097192637473040185.a n = A131328 n

end A131328

/-! ## A131328.P9966933266785853487

`A245738(n+3)-A078024(n)`
-/

namespace A131328.P9966933266785853487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245738 (n + 3) - A078024 n

end

end A131328.P9966933266785853487

namespace A131328

/-- `A245738(n+3)-A078024(n)` -/
def P9966933266785853487.Spec : Prop :=
  ∀ n, P9966933266785853487.a n = A131328 n

end A131328

/-! ## A131328.P4373434016986192091

`A062114(n+1)+2*A074331(n)`
-/

namespace A131328.P4373434016986192091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (n + 1) + 2 * A074331 n

end

end A131328.P4373434016986192091

namespace A131328

/-- `A062114(n+1)+2*A074331(n)` -/
def P4373434016986192091.Spec : Prop :=
  ∀ n, P4373434016986192091.a n = A131328 n

end A131328

/-! ## A131328.P14386808697433754148

`2*A062114(n+1)-A000035(n+1)`
-/

namespace A131328.P14386808697433754148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062114 (n + 1) - A000035 (n + 1)

end

end A131328.P14386808697433754148

namespace A131328

/-- `2*A062114(n+1)-A000035(n+1)` -/
def P14386808697433754148.Spec : Prop :=
  ∀ n, P14386808697433754148.a n = A131328 n

end A131328

/-! ## A131328.P10296157484886995357

`A022087(n+1)-xor(1, A040001(n+2))`
-/

namespace A131328.P10296157484886995357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 1) - Int.xor 1 (A040001 (n + 2))

end

end A131328.P10296157484886995357

namespace A131328

/-- `A022087(n+1)-xor(1, A040001(n+2))` -/
def P10296157484886995357.Spec : Prop :=
  ∀ n, P10296157484886995357.a n = A131328 n

end A131328

/-! ## A131328.P5795455673873966390

`Δ[A066983(n+2)]+∑[A066983(n+2)]`
-/

namespace A131328.P5795455673873966390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A131328.P5795455673873966390

namespace A131328

/-- `Δ[A066983(n+2)]+∑[A066983(n+2)]` -/
def P5795455673873966390.Spec : Prop :=
  ∀ n, P5795455673873966390.a n = A131328 n

end A131328

/-! ## A131328.P6706534416421628427

`2*A001595(n)+A176895(2*n)²-2`
-/

namespace A131328.P6706534416421628427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001595 n + (A176895 (2 * n) ^ 2 - 2)

end

end A131328.P6706534416421628427

namespace A131328

/-- `2*A001595(n)+A176895(2*n)²-2` -/
def P6706534416421628427.Spec : Prop :=
  ∀ n, P6706534416421628427.a n = A131328 n

end A131328

/-!
# A131331: A046854 * A000012(signed).

The programs for A131331, there is no canonical definition to state claims against.
-/

/-! ## A131331.P11445828431546951374

`A331921(A214407(n)+1)-A025668(A130321(n))`
-/

namespace A131331.P11445828431546951374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331921 (A214407 n + 1).toNat - A025668 (A130321 n).toNat

end

end A131331.P11445828431546951374

/-! ## A131331.P9304522249982989256

`A106316(2^A179898(n))-A025668(A130321(n))`
-/

namespace A131331.P9304522249982989256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106316 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A179898 n : ℤ))).toNat - A025668 (A130321 n).toNat

end

end A131331.P9304522249982989256

/-! ## A131331.P2804853830791402657

`A131576(3^A099174(n))-A025668(A130321(n))`
-/

namespace A131331.P2804853830791402657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A099174 n : ℤ))).toNat - A025668 (A130321 n).toNat

end

end A131331.P2804853830791402657

/-! ## A131331.P6826848378943469894

`A122204(A117436(n))%4-A025668(A130321(n))`
-/

namespace A131331.P6826848378943469894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122204 (A117436 n).toNat) 4 - A025668 (A130321 n).toNat

end

end A131331.P6826848378943469894

/-! ## A131331.P16458394722536068063

`or(A284524(ceil(2^(n-1))), A321198(n))`
-/

namespace A131331.P16458394722536068063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284524 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A321198 n)

end

end A131331.P16458394722536068063

/-!
# A131332: Triangle read by rows: A065941 * A097807.

The programs for A131332, there is no canonical definition to state claims against.
-/

/-! ## A131332.P3227042848330497457

`A066057(A122178(n)+A023531(n))`
-/

namespace A131332.P3227042848330497457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (A122178 n + A023531 n).toNat

end

end A131332.P3227042848330497457

/-! ## A131332.P10162909413799238192

`Δ[A338466(n)]*A283265(A004094(n))`
-/

namespace A131332.P10162909413799238192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A283265 (A004094 n).toNat

end

end A131332.P10162909413799238192

/-! ## A131332.P9976874675651410910

`A339975(A075256(n+1)^A122204(n))`
-/

namespace A131332.P9976874675651410910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (SequenceMachineLib.roundAway ((A075256 (n + 1) : ℚ) ^ (A122204 n : ℤ))).toNat

end

end A131332.P9976874675651410910

/-! ## A131332.P1701790939921828078

`A339975(A075256(n+1)^A122283(n))`
-/

namespace A131332.P1701790939921828078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (SequenceMachineLib.roundAway ((A075256 (n + 1) : ℚ) ^ (A122283 n : ℤ))).toNat

end

end A131332.P1701790939921828078

/-! ## A131332.P11868742027332831284

`A339975(A075256(n+1)^A122285(n))`
-/

namespace A131332.P11868742027332831284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (SequenceMachineLib.roundAway ((A075256 (n + 1) : ℚ) ^ (A122285 n : ℤ))).toNat

end

end A131332.P11868742027332831284

/-!
# A131333: A131332 * A000012.

The programs for A131333, there is no canonical definition to state claims against.
-/

/-! ## A131333.P6350743145362584007

`A292421(A169589(n))`
-/

namespace A131333.P6350743145362584007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292421 (A169589 n).toNat

end

end A131333.P6350743145362584007

/-! ## A131333.P5980722604741360941

`A055980(A169589(n)²)`
-/

namespace A131333.P5980722604741360941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A169589 n ^ 2).toNat

end

end A131333.P5980722604741360941

/-! ## A131333.P16409571346694669892

`A117707(A169589(n)+1)`
-/

namespace A131333.P16409571346694669892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A169589 n + 1).toNat

end

end A131333.P16409571346694669892

/-! ## A131333.P7722848499346406965

`A055980(A169589(n)^2)`
-/

namespace A131333.P7722848499346406965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A169589 n ^ 2).toNat

end

end A131333.P7722848499346406965

/-! ## A131333.P1913539466187299332

`A351219(A036969(n+1)*A130321(n))`
-/

namespace A131333.P1913539466187299332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (A036969 (n + 1) * A130321 n).toNat

end

end A131333.P1913539466187299332

/-!
# A131334: Triangle read by rows: A000012(signed) * A065941 as infinite lower triangular matrices.

The programs for A131334, there is no canonical definition to state claims against.
-/

/-! ## A131334.P16485258689576717796

`A033264(A265679(n+1)+comp[∑[4*n]]%2)`
-/

namespace A131334.P16485258689576717796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A265679 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)).toNat

end

end A131334.P16485258689576717796

/-! ## A131334.P3975148801302715028

`A178112(n)+A007814(A288972(n))`
-/

namespace A131334.P3975148801302715028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 n + A007814 (A288972 n).toNat

end

end A131334.P3975148801302715028

/-! ## A131334.P3213204798319758160

`and(A171275(n+1), A232550(A171275(n+1)))`
-/

namespace A131334.P3213204798319758160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171275 (n + 1)) (A232550 (A171275 (n + 1)).toNat)

end

end A131334.P3213204798319758160

/-! ## A131334.P14591388956111587068

`A083054(A104988(n))`
-/

namespace A131334.P14591388956111587068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (A104988 n).toNat

end

end A131334.P14591388956111587068

/-! ## A131334.P830132018883758466

`A103919(n)^A074290(A005898(n))`
-/

namespace A131334.P830132018883758466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103919 n : ℚ) ^ (A074290 (A005898 n).toNat : ℤ)

end

end A131334.P830132018883758466

/-!
# A131335: A000012 * A131334.

The programs for A131335, there is no canonical definition to state claims against.
-/

/-! ## A131335.P7861919366647578104

`A131334(eq[0, A103451(n)]+2)`
-/

namespace A131335.P7861919366647578104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A131335.P7861919366647578104

/-! ## A131335.P16332997980589104290

`A100802(A082284(A064191(n)²))`
-/

namespace A131335.P16332997980589104290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A082284 (A064191 n ^ 2).toNat).toNat

end

end A131335.P16332997980589104290

/-! ## A131335.P11025224567592426811

`A057022(A004736(n+1)^A335816(A184720(n+1)))`
-/

namespace A131335.P11025224567592426811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A335816 (A184720 (n + 1)).toNat : ℤ))).toNat

end

end A131335.P11025224567592426811

/-! ## A131335.P13262261982575426988

`A110591(C(A055248(n), A305161(n)))`
-/

namespace A131335.P13262261982575426988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (Nat.choose (A055248 n).toNat (A305161 n).toNat)

end

end A131335.P13262261982575426988

/-! ## A131335.P12489322173679372355

`A329320(A091039(n+1))`
-/

namespace A131335.P12489322173679372355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A091039 (n + 1)).toNat

end

end A131335.P12489322173679372355

/-!
# A131336: Triangle read by rows: A131334 * A000012 as infinite lower triangular matrices.

The programs for A131336, there is no canonical definition to state claims against.
-/

/-! ## A131336.P6074337922407265852

`A054450(n)+A007814(A288972(n))`
-/

namespace A131336.P6074337922407265852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 n + A007814 (A288972 n).toNat

end

end A131336.P6074337922407265852

/-! ## A131336.P6005889064634919381

`A383194(A091597(n))`
-/

namespace A131336.P6005889064634919381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383194 (A091597 n).toNat

end

end A131336.P6005889064634919381

/-! ## A131336.P6479318122881424508

`lcm(A050361(A266375(n)), A054450(n))`
-/

namespace A131336.P6479318122881424508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050361 (A266375 n).toNat) (A054450 n)

end

end A131336.P6479318122881424508

/-! ## A131336.P17655848218657035703

`A322306(A316674(n))+A104762(n+1)`
-/

namespace A131336.P17655848218657035703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (A316674 n).toNat + A104762 (n + 1)

end

end A131336.P17655848218657035703

/-! ## A131336.P3082255780683794019

`A054450(n)*A115583(A067538(n+1))`
-/

namespace A131336.P3082255780683794019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 n * A115583 (A067538 (n + 1)).toNat

end

end A131336.P3082255780683794019

/-!
# A131337: Row sums of triangle A131336.

The programs for A131337, the canonical program `A131337.P10555352174447344944` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131337 has offset 1).

The definition of A131337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131337.P10555352174447344944

`A066983(n+1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131337

/-- `A066983(n+1)+a(n-1)+a(n-2)` -/
def P10555352174447344944.Spec : Prop :=
  ∀ n, P10555352174447344944.a n = A131337 (n + 1)

theorem P10555352174447344944.correct : P10555352174447344944.Spec := by
  intro n
  simp only [A131337, Nat.add_sub_cancel]

end A131337

/-! ## A131337.P11315664857477824632

`A131913(n)-a(n-1)` with `a(0)=1`
-/

namespace A131337.P11315664857477824632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131913 n - a (n - 1)

end

end A131337.P11315664857477824632

namespace A131337

/-- `A131913(n)-a(n-1)` -/
def P11315664857477824632.Spec : Prop :=
  ∀ n, P11315664857477824632.a n = A131337 (n + 1)

end A131337

/-! ## A131337.P18099502557046819864

`A023610(n)-A120940(n)`
-/

namespace A131337.P18099502557046819864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - A120940 n

end

end A131337.P18099502557046819864

namespace A131337

/-- `A023610(n)-A120940(n)` -/
def P18099502557046819864.Spec : Prop :=
  ∀ n, P18099502557046819864.a n = A131337 (n + 1)

end A131337

/-! ## A131337.P9956499711626538060

`A120940(n+1)-A001629(n+1)`
-/

namespace A131337.P9956499711626538060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120940 (n + 1) - A001629 (n + 1)

end

end A131337.P9956499711626538060

namespace A131337

/-- `A120940(n+1)-A001629(n+1)` -/
def P9956499711626538060.Spec : Prop :=
  ∀ n, P9956499711626538060.a n = A131337 (n + 1)

end A131337

/-!
# A131339: Number of non-invertible pretzel knots with n crossings.

The programs for A131339, there is no canonical definition to state claims against.
-/

/-! ## A131339.P11218997885862651086

`A105149(A354655(n+1)+A088327(n))`
-/

namespace A131339.P11218997885862651086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (A354655 (n + 1) + A088327 n).toNat

end

end A131339.P11218997885862651086

/-! ## A131339.P2096969589773644785

`A001793(n+1)-A197224(A245235(n))`
-/

namespace A131339.P2096969589773644785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - A197224 (A245235 n).toNat

end

end A131339.P2096969589773644785

/-!
# A131340: Number of 0's in minimal Lucas representation (A130310) of n.

The programs for A131340, there is no canonical definition to state claims against.
-/

/-! ## A131340.P5300271650254790714

`∑{digits}[A130310(n+1), 1-#]`
-/

namespace A131340.P5300271650254790714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A131340.P5300271650254790714

/-!
# A131341: Number of 0's in maximal Lucas representation (A130311) of n.

The programs for A131341, there is no canonical definition to state claims against.
-/

/-! ## A131341.P602718524993444527

`∑{digits}[A130311(n+1), 1-#]`
-/

namespace A131341.P602718524993444527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A131341.P602718524993444527

/-! ## A131341.P5673936455921388864

`A033264(record[xor(2, A003754(n+1))])`
-/

namespace A131341.P5673936455921388864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131341.P5673936455921388864

/-! ## A131341.P11753376581853548131

`A087116(record[xor(2, A003754(n+1))])`
-/

namespace A131341.P11753376581853548131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131341.P11753376581853548131

/-! ## A131341.P4883187805937775689

`A087116(record[xor(4, A247648(n+1))])`
-/

namespace A131341.P4883187805937775689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A247648 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131341.P4883187805937775689

/-! ## A131341.P717098578082738077

`floor(A133771(n+1)/2)`
-/

namespace A131341.P717098578082738077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133771 (n + 1) : ℚ) / 2⌋

end

end A131341.P717098578082738077

/-! ## A131341.P354969446712192751

`A004526(and(or(n, -2), A133771(n+1)))`
-/

namespace A131341.P354969446712192751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land (Int.lor (n : ℤ) (-2)) (A133771 (n + 1))).toNat

end

end A131341.P354969446712192751

/-! ## A131341.P8599582383761658008

`A004526(A151934(n)+A133771(n+1))`
-/

namespace A131341.P8599582383761658008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151934 n + A133771 (n + 1)).toNat

end

end A131341.P8599582383761658008

/-!
# A131342: Primes arising in Newman digit sums.

The programs for A131342, there is no canonical definition to state claims against.
-/

/-! ## A131342.P2084870533580365988

`record[ratio[A051844(n)]]`
-/

namespace A131342.P2084870533580365988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051844 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131342.P2084870533580365988

/-!
# A131343: Number of 1's in maximal Lucas representation (A130311) of n.

The programs for A131343, the canonical program `A131343.P2090840239221504479` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131343 has offset 0).

The definition of A131343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131343.P527998260505709917

`∑{digits}[A130311(n), #]`
-/

namespace A131343.P527998260505709917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A131343.P527998260505709917

namespace A131343

/-- `∑{digits}[A130311(n), #]` -/
def P527998260505709917.Spec : Prop :=
  ∀ n, (P527998260505709917.a n : ℤ) = A131343 n

end A131343

/-! ## A131343.P2090840239221504479

`A112310(A188015(n+1))-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131343

/-- `A112310(A188015(n+1))-1` -/
def P2090840239221504479.Spec : Prop :=
  ∀ n, P2090840239221504479.a n = A131343 n

theorem P2090840239221504479.correct : P2090840239221504479.Spec := by
  intro n
  simp only [A131343]

end A131343

/-! ## A131343.P14689925719221448951

`A000120(lt[A292592(3*n+1), 3])`
-/

namespace A131343.P14689925719221448951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292592 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A131343.P14689925719221448951

namespace A131343

/-- `A000120(lt[A292592(3*n+1), 3])` -/
def P14689925719221448951.Spec : Prop :=
  ∀ n, P14689925719221448951.a n = A131343 n

end A131343

/-! ## A131343.P2548293793099928070

`A003982(A173932(n+1))+dr(A130311(n))`
-/

namespace A131343.P2548293793099928070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A173932 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P2548293793099928070

namespace A131343

/-- `A003982(A173932(n+1))+dr(A130311(n))` -/
def P2548293793099928070.Spec : Prop :=
  ∀ n, P2548293793099928070.a n = A131343 n

end A131343

/-! ## A131343.P10557197055285405299

`A003982(A001844(n))+dr(A130311(n))`
-/

namespace A131343.P10557197055285405299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A001844 n).toNat + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P10557197055285405299

namespace A131343

/-- `A003982(A001844(n))+dr(A130311(n))` -/
def P10557197055285405299.Spec : Prop :=
  ∀ n, P10557197055285405299.a n = A131343 n

end A131343

/-! ## A131343.P11958630248049176518

`A003982(A056220(n+1))+dr(A130311(n))`
-/

namespace A131343.P11958630248049176518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A056220 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P11958630248049176518

namespace A131343

/-- `A003982(A056220(n+1))+dr(A130311(n))` -/
def P11958630248049176518.Spec : Prop :=
  ∀ n, P11958630248049176518.a n = A131343 n

end A131343

/-! ## A131343.P8424498237955715802

`A003982(A000217(2*(n+1)))+dr(A130311(n))`
-/

namespace A131343.P8424498237955715802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A000217 (2 * (n + 1))).toNat + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P8424498237955715802

namespace A131343

/-- `A003982(A000217(2*(n+1)))+dr(A130311(n))` -/
def P8424498237955715802.Spec : Prop :=
  ∀ n, P8424498237955715802.a n = A131343 n

end A131343

/-! ## A131343.P10196291123672413234

`dr(A130311(n)%A193579(n))`
-/

namespace A131343.P10196291123672413234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A130311 n) (A193579 n))

end

end A131343.P10196291123672413234

namespace A131343

/-- `dr(A130311(n)%A193579(n))` -/
def P10196291123672413234.Spec : Prop :=
  ∀ n, (P10196291123672413234.a n : ℤ) = A131343 n

end A131343

/-! ## A131343.P5415187508550368027

`A003982(p?[43*n+2])+dr(A130311(n))`
-/

namespace A131343.P5415187508550368027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P5415187508550368027

namespace A131343

/-- `A003982(p?[43*n+2])+dr(A130311(n))` -/
def P5415187508550368027.Spec : Prop :=
  ∀ n, P5415187508550368027.a n = A131343 n

end A131343

/-! ## A131343.P17659097121235662560

`dr(A010054(∑[n])*A130311(n))`
-/

namespace A131343.P17659097121235662560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A010054 (∑ j ∈ Finset.range (n + 1), f1 j) * A130311 n)

end

end A131343.P17659097121235662560

namespace A131343

/-- `dr(A010054(∑[n])*A130311(n))` -/
def P17659097121235662560.Spec : Prop :=
  ∀ n, (P17659097121235662560.a n : ℤ) = A131343 n

end A131343

/-! ## A131343.P2826516497341683621

`A085604(∑[n+1])+dr(A130311(n))`
-/

namespace A131343.P2826516497341683621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085604 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P2826516497341683621

namespace A131343

/-- `A085604(∑[n+1])+dr(A130311(n))` -/
def P2826516497341683621.Spec : Prop :=
  ∀ n, P2826516497341683621.a n = A131343 n

end A131343

/-! ## A131343.P10205752226801808261

`and(dr(A130311(n)), A030494(n+1))`
-/

namespace A131343.P10205752226801808261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.digitalRoot (A130311 n) : ℤ) (A030494 (n + 1))

end

end A131343.P10205752226801808261

namespace A131343

/-- `and(dr(A130311(n)), A030494(n+1))` -/
def P10205752226801808261.Spec : Prop :=
  ∀ n, P10205752226801808261.a n = A131343 n

end A131343

/-! ## A131343.P18208157239422744161

`A003982(A016754(n))+dr(A130311(n))`
-/

namespace A131343.P18208157239422744161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A016754 n).toNat + (SequenceMachineLib.digitalRoot (A130311 n) : ℤ)

end

end A131343.P18208157239422744161

namespace A131343

/-- `A003982(A016754(n))+dr(A130311(n))` -/
def P18208157239422744161.Spec : Prop :=
  ∀ n, P18208157239422744161.a n = A131343 n

end A131343

/-! ## A131343.P7656509020071500928

`dr(A130311(n)+A003982(A273789(n)))`
-/

namespace A131343.P7656509020071500928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130311 n + A003982 (A273789 n).toNat)

end

end A131343.P7656509020071500928

namespace A131343

/-- `dr(A130311(n)+A003982(A273789(n)))` -/
def P7656509020071500928.Spec : Prop :=
  ∀ n, (P7656509020071500928.a n : ℤ) = A131343 n

end A131343

/-! ## A131343.P1035065065313711188

`dr(A130311(n))*A057427(∑[∑{d}[n, #]]+1)`
-/

namespace A131343.P1035065065313711188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A130311 n) : ℤ) * A057427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A131343.P1035065065313711188

namespace A131343

/-- `dr(A130311(n))*A057427(∑[∑{d}[n, #]]+1)` -/
def P1035065065313711188.Spec : Prop :=
  ∀ n, P1035065065313711188.a n = A131343 n

end A131343

/-! ## A131343.P9352247742105609880

`dr(A000034(A044336(n+1))*A130311(n))`
-/

namespace A131343.P9352247742105609880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000034 (A044336 (n + 1)).toNat * A130311 n)

end

end A131343.P9352247742105609880

namespace A131343

/-- `dr(A000034(A044336(n+1))*A130311(n))` -/
def P9352247742105609880.Spec : Prop :=
  ∀ n, (P9352247742105609880.a n : ℤ) = A131343 n

end A131343

/-! ## A131343.P14224781572639383356

`dr(A010052(n²)*A130311(n))`
-/

namespace A131343.P14224781572639383356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A010052 (n ^ 2) * A130311 n)

end

end A131343.P14224781572639383356

namespace A131343

/-- `dr(A010052(n²)*A130311(n))` -/
def P14224781572639383356.Spec : Prop :=
  ∀ n, (P14224781572639383356.a n : ℤ) = A131343 n

end A131343

/-! ## A131343.P9451106709136952563

`dr(A130311(n))*A010052(A000290(n))`
-/

namespace A131343.P9451106709136952563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A130311 n) : ℤ) * A010052 (A000290 n).toNat

end

end A131343.P9451106709136952563

namespace A131343

/-- `dr(A130311(n))*A010052(A000290(n))` -/
def P9451106709136952563.Spec : Prop :=
  ∀ n, P9451106709136952563.a n = A131343 n

end A131343

/-!
# A131344: A046854 * A065941.

The programs for A131344, there is no canonical definition to state claims against.
-/

/-! ## A131344.P11149346132002116528

`A117707(A347811(n)+A135233(n))`
-/

namespace A131344.P11149346132002116528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A347811 n + A135233 n).toNat

end

end A131344.P11149346132002116528

/-! ## A131344.P12135490293813652956

`A163352(A347811(n)+A135233(n))`
-/

namespace A131344.P12135490293813652956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A347811 n + A135233 n).toNat

end

end A131344.P12135490293813652956

/-! ## A131344.P8513185227979819624

`A094528(A094544(n+1)+A094527(n))`
-/

namespace A131344.P8513185227979819624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094528 (A094544 (n + 1) + A094527 n).toNat

end

end A131344.P8513185227979819624

/-!
# A131345: Triangle read by rows: A065941 * A046854 as infinite lower triangular matrices.

The programs for A131345, there is no canonical definition to state claims against.
-/

/-! ## A131345.P7440047817313045814

`A048766((A131031(n)+A120258(n))²)`
-/

namespace A131345.P7440047817313045814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A131031 n + A120258 n) ^ 2).toNat

end

end A131345.P7440047817313045814

/-! ## A131345.P837150890905289223

`A285189(A319076(n))`
-/

namespace A131345.P837150890905289223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A319076 n).toNat

end

end A131345.P837150890905289223

/-! ## A131345.P12243132435578991101

`A319951(∑{d}[A319075(n), #])`
-/

namespace A131345.P12243132435578991101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A131345.P12243132435578991101

/-! ## A131345.P11907584762454550065

`∑{e}[A039593(A193845(n)+1), #]`
-/

namespace A131345.P11907584762454550065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (A193845 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A131345.P11907584762454550065

/-! ## A131345.P15810907893767073952

`A181834(A147703(n))+A004736(n+1)`
-/

namespace A131345.P15810907893767073952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A147703 n).toNat + A004736 (n + 1)

end

end A131345.P15810907893767073952

/-!
# A131347: a(1)=1. a(n) = a(n-1) + (sum of the terms, from among terms a(1) through a(n-1), which are coprime to sum{k=1 to n-1} a(k)).

The programs for A131347, there is no canonical definition to state claims against.
-/

/-! ## A131347.P7378259727298392837

`A306676(A138653(n))`
-/

namespace A131347.P7378259727298392837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306676 (A138653 n).toNat

end

end A131347.P7378259727298392837

/-! ## A131347.P11759660788643833618

`A306676(A344611(n))`
-/

namespace A131347.P11759660788643833618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306676 (A344611 n).toNat

end

end A131347.P11759660788643833618

/-! ## A131347.P12519671639792374876

`A306676(∑[A182746(n)])`
-/

namespace A131347.P12519671639792374876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131347.P12519671639792374876

/-!
# A131348: Sum of squares of prime quadruplets.

The programs for A131348, there is no canonical definition to state claims against.
-/

/-! ## A131348.P7824305804419324778

`4*((A007530(n+1)+4)²+10)`
-/

namespace A131348.P7824305804419324778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((A007530 (n + 1) + 4) ^ 2 + 10)

end

end A131348.P7824305804419324778

/-! ## A131348.P11463835348259408921

`A133524(A064026(n+2))`
-/

namespace A131348.P11463835348259408921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (A064026 (n + 2)).toNat

end

end A131348.P11463835348259408921

/-!
# A131349: Least Fibonacci number Fibonacci(j) greater than the previous term a(n-1) such that Fibonacci(j) - a(n-1) == 0 (mod n-1) with a(1)=1.

The programs for A131349, there is no canonical definition to state claims against.
-/

/-! ## A131349.P12269052918884350889

`record[A104762(A007716(n)+2*A065154(n+1))]`
-/

namespace A131349.P12269052918884350889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (A007716 n + 2 * A065154 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131349.P12269052918884350889

/-!
# A131350: 2*A007318 - A049310 as infinite lower triangular matrices.

The programs for A131350, the canonical program `A131350.P11902932173127582114` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131350 has offset 0).

The definition of A131350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131350.P11902932173127582114

`A028326(n)-A168561(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131350

/-- `A028326(n)-A168561(n)` -/
def P11902932173127582114.Spec : Prop :=
  ∀ n, P11902932173127582114.a n = A131350 n

theorem P11902932173127582114.correct : P11902932173127582114.Spec := by
  intro n
  simp only [A131350]

end A131350

/-! ## A131350.P16854302992504437804

`A028326(n)-abs(A049310(n))`
-/

namespace A131350.P16854302992504437804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - |A049310 n|

end

end A131350.P16854302992504437804

namespace A131350

/-- `A028326(n)-abs(A049310(n))` -/
def P16854302992504437804.Spec : Prop :=
  ∀ n, P16854302992504437804.a n = A131350 n

end A131350

/-! ## A131350.P14497356463594982486

`A109128(n)+1-A168561(n)`
-/

namespace A131350.P14497356463594982486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A168561 n)

end

end A131350.P14497356463594982486

namespace A131350

/-- `A109128(n)+1-A168561(n)` -/
def P14497356463594982486.Spec : Prop :=
  ∀ n, P14497356463594982486.a n = A131350 n

theorem P14497356463594982486.correct : P14497356463594982486.Spec := by
  intro n
  simp only [A131350, Nat.add_sub_cancel, A131350.P14497356463594982486.a, A131350.P11902932173127582114.a, A028326, A028326.P16610217584664895500.a, A109128, A109128.P11896187039746255515.a, A168561, A168561.P906342881231109173.a, A007318, A007318.P302227728145965961.a, A134513, A134513.P11345042164523319292.a, A369736, A369736.P2745609336317517813.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131350

/-! ## A131350.P17839773389911409401

`2*A007318(n)-A168561(n)`
-/

namespace A131350.P17839773389911409401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A168561 n

end

end A131350.P17839773389911409401

namespace A131350

/-- `2*A007318(n)-A168561(n)` -/
def P17839773389911409401.Spec : Prop :=
  ∀ n, P17839773389911409401.a n = A131350 n

end A131350

/-! ## A131350.P12060058435989725574

`2*A007318(n)-abs(A049310(n))`
-/

namespace A131350.P12060058435989725574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - |A049310 n|

end

end A131350.P12060058435989725574

namespace A131350

/-- `2*A007318(n)-abs(A049310(n))` -/
def P12060058435989725574.Spec : Prop :=
  ∀ n, P12060058435989725574.a n = A131350 n

end A131350

/-! ## A131350.P18080604342569222349

`2*A131376(n)-A131774(n+1)`
-/

namespace A131350.P18080604342569222349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131376 n - A131774 (n + 1)

end

end A131350.P18080604342569222349

namespace A131350

/-- `2*A131376(n)-A131774(n+1)` -/
def P18080604342569222349.Spec : Prop :=
  ∀ n, P18080604342569222349.a n = A131350 n

end A131350

/-! ## A131350.P12862331828171863579

`A134058(A028310(n))-A168561(n)`
-/

namespace A131350.P12862331828171863579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 (A028310 n).toNat - A168561 n

end

end A131350.P12862331828171863579

namespace A131350

/-- `A134058(A028310(n))-A168561(n)` -/
def P12862331828171863579.Spec : Prop :=
  ∀ n, P12862331828171863579.a n = A131350 n

end A131350

/-! ## A131350.P15418714277919871011

`A007318(n)+A131375(n)-A046854(n)`
-/

namespace A131350.P15418714277919871011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131375 n - A046854 n)

end

end A131350.P15418714277919871011

namespace A131350

/-- `A007318(n)+A131375(n)-A046854(n)` -/
def P15418714277919871011.Spec : Prop :=
  ∀ n, P15418714277919871011.a n = A131350 n

theorem P15418714277919871011.correct : P15418714277919871011.Spec := by
  intro n
  simp only [A131350, Nat.add_sub_cancel, A131350.P15418714277919871011.a, A131350.P11902932173127582114.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A046854, A046854.P6336279902607506651.a, A131375, A131375.P2872443932390034919.a, A168561, A168561.P906342881231109173.a, A102426, A102426.P776678391830445668.a, A134513, A134513.P11345042164523319292.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A092865, A092865.P9800871042429563602.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131350

/-! ## A131350.P3759189451431591884

`A007318(n)+A131376(n)-A065941(n)`
-/

namespace A131350.P3759189451431591884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131376 n - A065941 n)

end

end A131350.P3759189451431591884

namespace A131350

/-- `A007318(n)+A131376(n)-A065941(n)` -/
def P3759189451431591884.Spec : Prop :=
  ∀ n, P3759189451431591884.a n = A131350 n

theorem P3759189451431591884.correct : P3759189451431591884.Spec := by
  intro n
  simp only [A131350, Nat.add_sub_cancel, A131350.P3759189451431591884.a, A131350.P11902932173127582114.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A065941, A065941.P15522671980025678303.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P906342881231109173.a, A046854, A046854.P6336279902607506651.a, A108299, A108299.P8064445673908937225.a, A131374, A131374.P1343424990653634680.a, A134513, A134513.P11345042164523319292.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A102426, A102426.P776678391830445668.a, A130194, A130194.P2127097529341530346.a, A131373, A131373.P5409400150504785590.a, A134505, A134505.P6935622930957667742.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A061579, A061579.P7462537595056690109.a, A098925, A098925.P12998610641323261996.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A130777, A130777.P39247602111540675.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131350

/-! ## A131350.P8982812780475421845

`A004277(A007318(n))-A168561(n)`
-/

namespace A131350.P8982812780475421845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007318 n).toNat - A168561 n

end

end A131350.P8982812780475421845

namespace A131350

/-- `A004277(A007318(n))-A168561(n)` -/
def P8982812780475421845.Spec : Prop :=
  ∀ n, P8982812780475421845.a n = A131350 n

end A131350

/-! ## A131350.P2529475333046319767

`A014681(A109128(n))-A168561(n)`
-/

namespace A131350.P2529475333046319767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A109128 n).toNat - A168561 n

end

end A131350.P2529475333046319767

namespace A131350

/-- `A014681(A109128(n))-A168561(n)` -/
def P2529475333046319767.Spec : Prop :=
  ∀ n, P2529475333046319767.a n = A131350 n

end A131350

/-!
# A131351: G.f.: A(x) = 1 + Sum_{n>=1} x^n*[ Product_{k=1..n} F_k(x) ] where F_n(x) = 1 + x*F_n(x)^n.

The programs for A131351, there is no canonical definition to state claims against.
-/

/-! ## A131351.P1698212169109143503

`A091351(eq[1, A287315(n)])`
-/

namespace A131351.P1698212169109143503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131351.P1698212169109143503

/-! ## A131351.P12026238199985380079

`A125781(eq[1, A287315(n)])`
-/

namespace A131351.P12026238199985380079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131351.P12026238199985380079

/-! ## A131351.P10305225664178073325

`A091351(eq[1, A327027(n)])`
-/

namespace A131351.P10305225664178073325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131351.P10305225664178073325

/-! ## A131351.P9819785617987894091

`A091351(eq[A023532(n), A157401(n+1)])`
-/

namespace A131351.P9819785617987894091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131351.P9819785617987894091

/-! ## A131351.P7311836827835054901

`A091351(eq[A048993(n), A157401(n+1)])`
-/

namespace A131351.P7311836827835054901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131351.P7311836827835054901

/-!
# A131352: Row sums of triangle A133935.

The programs for A131352, the canonical program `A131352.P9718556863937062318` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131352 has offset 0).

The definition of A131352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131352.P9148997593822617245

`ogf((1-2x+2x^2-2x^3)/(1-4x+4x^2))`
-/

namespace A131352.P9148997593822617245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -2] [1, -4, 4] n

end

end A131352.P9148997593822617245

namespace A131352

/-- `ogf((1-2x+2x^2-2x^3)/(1-4x+4x^2))` -/
def P9148997593822617245.Spec : Prop :=
  ∀ n, P9148997593822617245.a n = A131352 n

end A131352

/-! ## A131352.P9718556863937062318

`floor((n+4)*2^(n-2))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131352

/-- `floor((n+4)*2^(n-2))` -/
def P9718556863937062318.Spec : Prop :=
  ∀ n, P9718556863937062318.a n = A131352 n

theorem P9718556863937062318.correct : P9718556863937062318.Spec := by
  intro n
  simp only [A131352]

end A131352

/-! ## A131352.P3733845390044343137

`A129954(n)-char[1]`
-/

namespace A131352.P3733845390044343137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A131352.P3733845390044343137

namespace A131352

/-- `A129954(n)-char[1]` -/
def P3733845390044343137.Spec : Prop :=
  ∀ n, P3733845390044343137.a n = A131352 n

end A131352

/-! ## A131352.P13488229549208779683

`A057711(n)+2^n-char[1]`
-/

namespace A131352.P13488229549208779683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + (2 ^ n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A131352.P13488229549208779683

namespace A131352

/-- `A057711(n)+2^n-char[1]` -/
def P13488229549208779683.Spec : Prop :=
  ∀ n, P13488229549208779683.a n = A131352 n

end A131352

/-! ## A131352.P14922385994142119488

`A129953(n)+A011782(n)`
-/

namespace A131352.P14922385994142119488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n + A011782 n

end

end A131352.P14922385994142119488

namespace A131352

/-- `A129953(n)+A011782(n)` -/
def P14922385994142119488.Spec : Prop :=
  ∀ n, P14922385994142119488.a n = A131352 n

end A131352

/-! ## A131352.P5445545884086558154

`A111297(n)+A049610(n)`
-/

namespace A131352.P5445545884086558154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n + A049610 n

end

end A131352.P5445545884086558154

namespace A131352

/-- `A111297(n)+A049610(n)` -/
def P5445545884086558154.Spec : Prop :=
  ∀ n, P5445545884086558154.a n = A131352 n

end A131352

/-! ## A131352.P6836235649343872254

`A131577(n)+A087447(n)`
-/

namespace A131352.P6836235649343872254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A087447 n

end

end A131352.P6836235649343872254

namespace A131352

/-- `A131577(n)+A087447(n)` -/
def P6836235649343872254.Spec : Prop :=
  ∀ n, P6836235649343872254.a n = A131352 n

end A131352

/-! ## A131352.P9920025154953978755

`A139756(n)+A084215(n)`
-/

namespace A131352.P9920025154953978755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A084215 n

end

end A131352.P9920025154953978755

namespace A131352

/-- `A139756(n)+A084215(n)` -/
def P9920025154953978755.Spec : Prop :=
  ∀ n, P9920025154953978755.a n = A131352 n

end A131352

/-! ## A131352.P13405634453355408068

`A159075(n)+A129954(n)`
-/

namespace A131352.P13405634453355408068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A129954 n

end

end A131352.P13405634453355408068

namespace A131352

/-- `A159075(n)+A129954(n)` -/
def P13405634453355408068.Spec : Prop :=
  ∀ n, P13405634453355408068.a n = A131352 n

end A131352

/-! ## A131352.P17090823345582443957

`A129955(n)-A011782(n)`
-/

namespace A131352.P17090823345582443957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - A011782 n

end

end A131352.P17090823345582443957

namespace A131352

/-- `A129955(n)-A011782(n)` -/
def P17090823345582443957.Spec : Prop :=
  ∀ n, P17090823345582443957.a n = A131352 n

end A131352

/-! ## A131352.P3449208438194172708

`A081037(n)*A280560(n)`
-/

namespace A131352.P3449208438194172708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081037 n * A280560 n

end

end A131352.P3449208438194172708

namespace A131352

/-- `A081037(n)*A280560(n)` -/
def P3449208438194172708.Spec : Prop :=
  ∀ n, P3449208438194172708.a n = A131352 n

end A131352

/-! ## A131352.P8317083955728157663

`xor(A063524(n), A129954(n))`
-/

namespace A131352.P8317083955728157663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A129954 n)

end

end A131352.P8317083955728157663

namespace A131352

/-- `xor(A063524(n), A129954(n))` -/
def P8317083955728157663.Spec : Prop :=
  ∀ n, P8317083955728157663.a n = A131352 n

end A131352

/-! ## A131352.P14242915011031495909

`A087447(n)+A034008(n+1)`
-/

namespace A131352.P14242915011031495909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n + A034008 (n + 1)

end

end A131352.P14242915011031495909

namespace A131352

/-- `A087447(n)+A034008(n+1)` -/
def P14242915011031495909.Spec : Prop :=
  ∀ n, P14242915011031495909.a n = A131352 n

end A131352

/-! ## A131352.P15810050979593633445

`A045891(n+1)-A166444(n)`
-/

namespace A131352.P15810050979593633445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) - A166444 n

end

end A131352.P15810050979593633445

namespace A131352

/-- `A045891(n+1)-A166444(n)` -/
def P15810050979593633445.Spec : Prop :=
  ∀ n, P15810050979593633445.a n = A131352 n

end A131352

/-! ## A131352.P17468435648984399385

`A036453(n+1)*A045891(n)`
-/

namespace A131352.P17468435648984399385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A045891 n

end

end A131352.P17468435648984399385

namespace A131352

/-- `A036453(n+1)*A045891(n)` -/
def P17468435648984399385.Spec : Prop :=
  ∀ n, P17468435648984399385.a n = A131352 n

end A131352

/-! ## A131352.P4531408168067081802

`A000079(n)+2*A049610(n)`
-/

namespace A131352.P4531408168067081802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A049610 n

end

end A131352.P4531408168067081802

namespace A131352

/-- `A000079(n)+2*A049610(n)` -/
def P4531408168067081802.Spec : Prop :=
  ∀ n, P4531408168067081802.a n = A131352 n

end A131352

/-! ## A131352.P18305280644613324757

`(2-A000007(n))*A045891(n)`
-/

namespace A131352.P18305280644613324757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A045891 n

end

end A131352.P18305280644613324757

namespace A131352

/-- `(2-A000007(n))*A045891(n)` -/
def P18305280644613324757.Spec : Prop :=
  ∀ n, P18305280644613324757.a n = A131352 n

end A131352

/-! ## A131352.P4051421512634689913

`2*A111297(n)-A000079(n)`
-/

namespace A131352.P4051421512634689913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111297 n - A000079 n

end

end A131352.P4051421512634689913

namespace A131352

/-- `2*A111297(n)-A000079(n)` -/
def P4051421512634689913.Spec : Prop :=
  ∀ n, P4051421512634689913.a n = A131352 n

end A131352

/-! ## A131352.P8449884141798089965

`and(A129954(n), A308567(n+1))`
-/

namespace A131352.P8449884141798089965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129954 n) (A308567 (n + 1))

end

end A131352.P8449884141798089965

namespace A131352

/-- `and(A129954(n), A308567(n+1))` -/
def P8449884141798089965.Spec : Prop :=
  ∀ n, P8449884141798089965.a n = A131352 n

end A131352

/-!
# A131353: Weight distribution of [124,62,20] double circulant code.

The programs for A131353, there is no canonical definition to state claims against.
-/

/-! ## A131353.P10969871919304047266

`A055641(n)*A152090(A198914(n+1))`
-/

namespace A131353.P10969871919304047266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n * A152090 (A198914 (n + 1)).toNat

end

end A131353.P10969871919304047266

/-! ## A131353.P15384963517464467905

`A086008(n)*A250120(A000330(3*n))`
-/

namespace A131353.P15384963517464467905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n * A250120 (A000330 (3 * n)).toNat

end

end A131353.P15384963517464467905

/-! ## A131353.P4605769698363001407

`and(A057065(n+3), A344949(A279375(n)))`
-/

namespace A131353.P4605769698363001407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057065 (n + 3)) (A344949 (A279375 n).toNat)

end

end A131353.P4605769698363001407

/-! ## A131353.P11357863526956252133

`A000203(A006456(3*(n+1)))*A341026(n)`
-/

namespace A131353.P11357863526956252133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006456 (3 * (n + 1))).toNat * A341026 (n + 165)

end

end A131353.P11357863526956252133

/-!
# A131355: Partial sums of A065423 plus one.

The programs for A131355, the canonical program `A131355.P3501845915071661537` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131355 has offset 0).

The definition of A131355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131355.P4444208211817813118

`1+C(n, 2)-C(floor(n/2)+1, 2)`
-/

namespace A131355.P4444208211817813118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + Nat.choose n 2 : ℤ) - (Nat.choose (⌊(n : ℚ) / 2⌋ + 1).toNat 2 : ℤ)

end

end A131355.P4444208211817813118

namespace A131355

/-- `1+C(n, 2)-C(floor(n/2)+1, 2)` -/
def P4444208211817813118.Spec : Prop :=
  ∀ n, P4444208211817813118.a n = A131355 n

end A131355

/-! ## A131355.P5366451008042225540

`(6*n²-10*n+17-(1+2*n)*(-1)^n)/16`
-/

namespace A131355.P5366451008042225540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 : ℤ) - (10 * n : ℤ) + 17 - (1 + 2 * n : ℤ) * (-1) ^ n : ℚ) / 16

end

end A131355.P5366451008042225540

namespace A131355

/-- `(6*n²-10*n+17-(1+2*n)*(-1)^n)/16` -/
def P5366451008042225540.Spec : Prop :=
  ∀ n, P5366451008042225540.a n = (A131355 n : ℚ)

theorem P5366451008042225540.correct : P5366451008042225540.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A131355, Nat.add_sub_cancel, A131355.P5366451008042225540.a, A131355.P3501845915071661537.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A131355, Nat.add_sub_cancel, A131355.P5366451008042225540.a, A131355.P3501845915071661537.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131355

/-! ## A131355.P3501845915071661537

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131355

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P3501845915071661537.Spec : Prop :=
  ∀ n, P3501845915071661537.a n = A131355 n

theorem P3501845915071661537.correct : P3501845915071661537.Spec := by
  intro n
  simp only [A131355]

end A131355

/-! ## A131355.P7215324246325609339

`∑[abs(1-gcd(n, ∑[n]))]`
-/

namespace A131355.P7215324246325609339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131355.P7215324246325609339

namespace A131355

/-- `∑[abs(1-gcd(n, ∑[n]))]` -/
def P7215324246325609339.Spec : Prop :=
  ∀ n, P7215324246325609339.a n = A131355 n

end A131355

/-! ## A131355.P15308989615863292996

`∑[abs(1-lcm(2, n)/2)]`
-/

namespace A131355.P15308989615863292996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 2 n : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131355.P15308989615863292996

namespace A131355

/-- `∑[abs(1-lcm(2, n)/2)]` -/
def P15308989615863292996.Spec : Prop :=
  ∀ n, P15308989615863292996.a n = (A131355 n : ℚ)

end A131355

/-! ## A131355.P2825331211611931575

`∑[abs(n/or(n, -2)+1)]`
-/

namespace A131355.P2825331211611931575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ) + 1|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131355.P2825331211611931575

namespace A131355

/-- `∑[abs(n/or(n, -2)+1)]` -/
def P2825331211611931575.Spec : Prop :=
  ∀ n, P2825331211611931575.a n = (A131355 n : ℚ)

end A131355

/-! ## A131355.P3963842441622869261

`∑[∑[xor(1, n+4)]%(n+2)]`
-/

namespace A131355.P3963842441622869261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131355.P3963842441622869261

namespace A131355

/-- `∑[∑[xor(1, n+4)]%(n+2)]` -/
def P3963842441622869261.Spec : Prop :=
  ∀ n, (P3963842441622869261.a n : ℤ) = A131355 n

end A131355

/-! ## A131355.P12617364216781605876

`∑[n/gcd(2, n²)]-(n-1)`
-/

namespace A131355.P12617364216781605876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1 : ℚ)

end

end A131355.P12617364216781605876

namespace A131355

/-- `∑[n/gcd(2, n²)]-(n-1)` -/
def P12617364216781605876.Spec : Prop :=
  ∀ n, P12617364216781605876.a n = (A131355 n : ℚ)

end A131355

/-! ## A131355.P10414527670683192428

`∑[n/(2-n%2)]+1-n`
-/

namespace A131355.P10414527670683192428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n : ℤ) : ℚ)

end

end A131355.P10414527670683192428

namespace A131355

/-- `∑[n/(2-n%2)]+1-n` -/
def P10414527670683192428.Spec : Prop :=
  ∀ n, P10414527670683192428.a n = (A131355 n : ℚ)

end A131355

/-! ## A131355.P13043957090804786969

`∑[n/(2-and(1, n))]-(n-1)`
-/

namespace A131355.P13043957090804786969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1 : ℚ)

end

end A131355.P13043957090804786969

namespace A131355

/-- `∑[n/(2-and(1, n))]-(n-1)` -/
def P13043957090804786969.Spec : Prop :=
  ∀ n, P13043957090804786969.a n = (A131355 n : ℚ)

end A131355

/-! ## A131355.P167299643723749888

`a(n-1)+∑[n-1]%n` with `a(0)=1`
-/

namespace A131355.P167299643723749888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n : ℤ)

end

end A131355.P167299643723749888

namespace A131355

/-- `a(n-1)+∑[n-1]%n` -/
def P167299643723749888.Spec : Prop :=
  ∀ n, P167299643723749888.a n = A131355 n

end A131355

/-! ## A131355.P10523264503566130715

`∑[∑[∑[ogf((1+2x)/(1+2x+x^2))]]]-2*n`
-/

namespace A131355.P10523264503566130715
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A131355.P10523264503566130715

namespace A131355

/-- `∑[∑[∑[ogf((1+2x)/(1+2x+x^2))]]]-2*n` -/
def P10523264503566130715.Spec : Prop :=
  ∀ n, P10523264503566130715.a n = A131355 n

end A131355

/-! ## A131355.P9457677968575450696

`∑[∑[∑[ogf((1+2x)/(1+2x+x^2))]]]-n-n`
-/

namespace A131355.P9457677968575450696
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - (n : ℤ)

end

end A131355.P9457677968575450696

namespace A131355

/-- `∑[∑[∑[ogf((1+2x)/(1+2x+x^2))]]]-n-n` -/
def P9457677968575450696.Spec : Prop :=
  ∀ n, P9457677968575450696.a n = A131355 n

end A131355

/-! ## A131355.P14341375275464686979

`∑[gcd(2*n, ∑[2*n])/2]-(n-1)`
-/

namespace A131355.P14341375275464686979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1 : ℚ)

end

end A131355.P14341375275464686979

namespace A131355

/-- `∑[gcd(2*n, ∑[2*n])/2]-(n-1)` -/
def P14341375275464686979.Spec : Prop :=
  ∀ n, P14341375275464686979.a n = (A131355 n : ℚ)

end A131355

/-! ## A131355.P5442724306366469907

`A319390(n)-n`
-/

namespace A131355.P5442724306366469907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - (n : ℤ)

end

end A131355.P5442724306366469907

namespace A131355

/-- `A319390(n)-n` -/
def P5442724306366469907.Spec : Prop :=
  ∀ n, P5442724306366469907.a n = A131355 n

end A131355

/-! ## A131355.P17733440536385720068

`A001318(n)+1-n`
-/

namespace A131355.P17733440536385720068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (1 - (n : ℤ))

end

end A131355.P17733440536385720068

namespace A131355

/-- `A001318(n)+1-n` -/
def P17733440536385720068.Spec : Prop :=
  ∀ n, P17733440536385720068.a n = A131355 n

end A131355

/-! ## A131355.P11504163474474419181

`∑[abs(1-A026741(n))]`
-/

namespace A131355.P11504163474474419181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026741 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131355.P11504163474474419181

namespace A131355

/-- `∑[abs(1-A026741(n))]` -/
def P11504163474474419181.Spec : Prop :=
  ∀ n, P11504163474474419181.a n = A131355 n

end A131355

/-! ## A131355.P13372181236922397830

`n²+1-A085787(n)`
-/

namespace A131355.P13372181236922397830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (1 - A085787 n)

end

end A131355.P13372181236922397830

namespace A131355

/-- `n²+1-A085787(n)` -/
def P13372181236922397830.Spec : Prop :=
  ∀ n, P13372181236922397830.a n = A131355 n

end A131355

/-! ## A131355.P14810371489777457088

`∑[n]+1-A165157(n)`
-/

namespace A131355.P14810371489777457088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A165157 n)

end

end A131355.P14810371489777457088

namespace A131355

/-- `∑[n]+1-A165157(n)` -/
def P14810371489777457088.Spec : Prop :=
  ∀ n, P14810371489777457088.a n = A131355 n

end A131355

/-! ## A131355.P7982390080232632069

`∑[n]+2-A101881(n)`
-/

namespace A131355.P7982390080232632069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - A101881 n)

end

end A131355.P7982390080232632069

namespace A131355

/-- `∑[n]+2-A101881(n)` -/
def P7982390080232632069.Spec : Prop :=
  ∀ n, P7982390080232632069.a n = A131355 n

end A131355

/-!
# A131356: Numbers k such that p1 = 10k+9 and p2 = p1+2 are twin primes.

The programs for A131356, the canonical program `A131356.P16117501274095404903` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131356 has offset 1).

The definition of A131356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131356.P16117501274095404903

`A124518(n+1)-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A131356

/-- `A124518(n+1)-1` -/
def P16117501274095404903.Spec : Prop :=
  ∀ n, P16117501274095404903.a n = A131356 (n + 1)

theorem P16117501274095404903.correct : P16117501274095404903.Spec := by
  intro n
  simp only [A131356, Nat.add_sub_cancel]

end A131356

/-! ## A131356.P13355218135479726618

`floor(A060229(n+1)/10)`
-/

namespace A131356.P13355218135479726618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060229 (n + 1) : ℚ) / 10⌋

end

end A131356.P13355218135479726618

namespace A131356

/-- `floor(A060229(n+1)/10)` -/
def P13355218135479726618.Spec : Prop :=
  ∀ n, P13355218135479726618.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P18404391927789801605

`3*A176114(n+1)-1`
-/

namespace A131356.P18404391927789801605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A176114 (n + 1) - 1

end

end A131356.P18404391927789801605

namespace A131356

/-- `3*A176114(n+1)-1` -/
def P18404391927789801605.Spec : Prop :=
  ∀ n, P18404391927789801605.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P1749680665464866965

`(A282326(n+1)-11)/10`
-/

namespace A131356.P1749680665464866965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282326 (n + 1) - 11 : ℚ) / 10

end

end A131356.P1749680665464866965

namespace A131356

/-- `(A282326(n+1)-11)/10` -/
def P1749680665464866965.Spec : Prop :=
  ∀ n, P1749680665464866965.a n = (A131356 (n + 1) : ℚ)

end A131356

/-! ## A131356.P10302995556620282458

`A060229(n+1)%A124518(n+1)`
-/

namespace A131356.P10302995556620282458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060229 (n + 1)) (A124518 (n + 1))

end

end A131356.P10302995556620282458

namespace A131356

/-- `A060229(n+1)%A124518(n+1)` -/
def P10302995556620282458.Spec : Prop :=
  ∀ n, P10302995556620282458.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P15367264801142099322

`∩[A102700(n+1), A126785(n+1)]`
-/

namespace A131356.P15367264801142099322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131356.P15367264801142099322

namespace A131356

/-- `∩[A102700(n+1), A126785(n+1)]` -/
def P15367264801142099322.Spec : Prop :=
  ∀ n, (P15367264801142099322.a n : ℤ) = A131356 (n + 1)

end A131356

/-! ## A131356.P4674904680091320905

`∩[A024912(n+1), A105042(n+1)]-1`
-/

namespace A131356.P4674904680091320905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A131356.P4674904680091320905

namespace A131356

/-- `∩[A024912(n+1), A105042(n+1)]-1` -/
def P4674904680091320905.Spec : Prop :=
  ∀ n, P4674904680091320905.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P7766187680977907850

`floor(sinh(log(A153877(n+1))))`
-/

namespace A131356.P7766187680977907850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A153877 (n + 1) : ℝ))⌋

end

end A131356.P7766187680977907850

namespace A131356

/-- `floor(sinh(log(A153877(n+1))))` -/
def P7766187680977907850.Spec : Prop :=
  ∀ n, P7766187680977907850.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P12544372751531086618

`A008486(A176114(n+1))-1`
-/

namespace A131356.P12544372751531086618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A176114 (n + 1)).toNat - 1

end

end A131356.P12544372751531086618

namespace A131356

/-- `A008486(A176114(n+1))-1` -/
def P12544372751531086618.Spec : Prop :=
  ∀ n, P12544372751531086618.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P13254554861331239227

`A023443(A124518(n+1))`
-/

namespace A131356.P13254554861331239227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A124518 (n + 1)).toNat

end

end A131356.P13254554861331239227

namespace A131356

/-- `A023443(A124518(n+1))` -/
def P13254554861331239227.Spec : Prop :=
  ∀ n, P13254554861331239227.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P7129983479241084017

`eq[A048198(n), A099837(n)]-1`
-/

namespace A131356.P7129983479241084017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A131356.P7129983479241084017

namespace A131356

/-- `eq[A048198(n), A099837(n)]-1` -/
def P7129983479241084017.Spec : Prop :=
  ∀ n, P7129983479241084017.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P3258661893896738281

`eq[A048198(n+1), A099837(n+1)]`
-/

namespace A131356.P3258661893896738281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131356.P3258661893896738281

namespace A131356

/-- `eq[A048198(n+1), A099837(n+1)]` -/
def P3258661893896738281.Spec : Prop :=
  ∀ n, (P3258661893896738281.a n : ℤ) = A131356 (n + 1)

end A131356

/-! ## A131356.P2701808066185452027

`A046667(A153877(n+1))`
-/

namespace A131356.P2701808066185452027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A153877 (n + 1)).toNat

end

end A131356.P2701808066185452027

namespace A131356

/-- `A046667(A153877(n+1))` -/
def P2701808066185452027.Spec : Prop :=
  ∀ n, P2701808066185452027.a n = A131356 (n + 1)

end A131356

/-! ## A131356.P4896788337139732833

`A001281(A153877(n+1)-2)`
-/

namespace A131356.P4896788337139732833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A153877 (n + 1) - 2).toNat

end

end A131356.P4896788337139732833

namespace A131356

/-- `A001281(A153877(n+1)-2)` -/
def P4896788337139732833.Spec : Prop :=
  ∀ n, P4896788337139732833.a n = A131356 (n + 1)

end A131356

/-!
# A131357: a(1) = 1, a(2) = 2; for n > 1, a(n) = sum of the next two smallest integers > a(n-1) which are coprime to the sum s = a(1) + ... + a(n-1).

The programs for A131357, there is no canonical definition to state claims against.
-/

/-! ## A131357.P1882812512004990374

`A053993(2*n)-A347283(A007052(n+1))`
-/

namespace A131357.P1882812512004990374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053993 (2 * n) - A347283 (A007052 (n + 1)).toNat

end

end A131357.P1882812512004990374

/-! ## A131357.P1817315270321283682

`A053993(2*n)-A341612(A005394(n+2))`
-/

namespace A131357.P1817315270321283682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053993 (2 * n) - A341612 (A005394 (n + 2)).toNat

end

end A131357.P1817315270321283682

/-!
# A131358: a(3*k) = 0, a(3*k+1) = k+1, a(3*k+2) = -k.

The programs for A131358, the canonical program `A131358.P15222234439423887019` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131358 has offset 0).

The definition of A131358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131358.P15222234439423887019

`ceil(n*(n/3-round(n/3)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131358

/-- `ceil(n*(n/3-round(n/3)))` -/
def P15222234439423887019.Spec : Prop :=
  ∀ n, P15222234439423887019.a n = A131358 n

theorem P15222234439423887019.correct : P15222234439423887019.Spec := by
  intro n
  simp only [A131358]

end A131358

/-! ## A131358.P12291548870395056704

`Δ[a(n-3)+(n%3)!]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A131358.P12291548870395056704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A131358.P12291548870395056704

namespace A131358

/-- `Δ[a(n-3)+(n%3)!]` -/
def P12291548870395056704.Spec : Prop :=
  ∀ n, P12291548870395056704.a n = A131358 n

end A131358

/-! ## A131358.P271139770603684991

`∑[ogf((x+x^2+x^3+x^4)/(1+2x+3x^2+2x^3+x^4))]`
-/

namespace A131358.P271139770603684991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1] [1, 2, 3, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131358.P271139770603684991

namespace A131358

/-- `∑[ogf((x+x^2+x^3+x^4)/(1+2x+3x^2+2x^3+x^4))]` -/
def P271139770603684991.Spec : Prop :=
  ∀ n, P271139770603684991.a n = A131358 n

end A131358

/-! ## A131358.P3940082653747727250

`(n+1)%3+a(n-3)-1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A131358.P3940082653747727250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  (((n + 1) % 3 : ℕ) : ℤ) + (a (n - 3) - 1)

end

end A131358.P3940082653747727250

namespace A131358

/-- `(n+1)%3+a(n-3)-1` -/
def P3940082653747727250.Spec : Prop :=
  ∀ n, P3940082653747727250.a n = A131358 n

end A131358

/-! ## A131358.P1480245541935254070

`a(n-3)-A163804(n)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A131358.P1480245541935254070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 3) - A163804 n

end

end A131358.P1480245541935254070

namespace A131358

/-- `a(n-3)-A163804(n)` -/
def P1480245541935254070.Spec : Prop :=
  ∀ n, P1480245541935254070.a n = A131358 n

end A131358

/-! ## A131358.P4793290470608738648

`A092942(n)-A186731(n)`
-/

namespace A131358.P4793290470608738648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n - A186731 n

end

end A131358.P4793290470608738648

namespace A131358

/-- `A092942(n)-A186731(n)` -/
def P4793290470608738648.Spec : Prop :=
  ∀ n, P4793290470608738648.a n = A131358 n

end A131358

/-! ## A131358.P16414102271446413640

`A115274(n+1)-A168056(n)`
-/

namespace A131358.P16414102271446413640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115274 (n + 1) - A168056 n

end

end A131358.P16414102271446413640

namespace A131358

/-- `A115274(n+1)-A168056(n)` -/
def P16414102271446413640.Spec : Prop :=
  ∀ n, P16414102271446413640.a n = A131358 n

end A131358

/-! ## A131358.P6770153997571179139

`A028242(A272071(n))*A102283(n)`
-/

namespace A131358.P6770153997571179139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A272071 n).toNat * A102283 n

end

end A131358.P6770153997571179139

namespace A131358

/-- `A028242(A272071(n))*A102283(n)` -/
def P6770153997571179139.Spec : Prop :=
  ∀ n, P6770153997571179139.a n = A131358 n

end A131358

/-! ## A131358.P6386308478847166541

`2*A151842(A091684(n))-A091684(n)`
-/

namespace A131358.P6386308478847166541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151842 (A091684 n).toNat - A091684 n

end

end A131358.P6386308478847166541

namespace A131358

/-- `2*A151842(A091684(n))-A091684(n)` -/
def P6386308478847166541.Spec : Prop :=
  ∀ n, P6386308478847166541.a n = A131358 n

end A131358

/-! ## A131358.P14966630644662259502

`A008611(A102283(n)+n)*A102283(n)`
-/

namespace A131358.P14966630644662259502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A102283 n + (n : ℤ)).toNat * A102283 n

end

end A131358.P14966630644662259502

namespace A131358

/-- `A008611(A102283(n)+n)*A102283(n)` -/
def P14966630644662259502.Spec : Prop :=
  ∀ n, P14966630644662259502.a n = A131358 n

end A131358

/-! ## A131358.P4007958494977912887

`(A064429(n)-n)*A008611(A064429(n))`
-/

namespace A131358.P4007958494977912887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064429 n - (n : ℤ)) * A008611 (A064429 n).toNat

end

end A131358.P4007958494977912887

namespace A131358

/-- `(A064429(n)-n)*A008611(A064429(n))` -/
def P4007958494977912887.Spec : Prop :=
  ∀ n, P4007958494977912887.a n = A131358 n

end A131358

/-! ## A131358.P7988556816050256214

`A128615(n)-A057078(n+1)*A057078(n)`
-/

namespace A131358.P7988556816050256214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 n - A057078 (n + 1) * A057078 n

end

end A131358.P7988556816050256214

namespace A131358

/-- `A128615(n)-A057078(n+1)*A057078(n)` -/
def P7988556816050256214.Spec : Prop :=
  ∀ n, P7988556816050256214.a n = A131358 n

end A131358

/-! ## A131358.P97920721206114431

`A011655(n)-A002264(n+1)*A057078(n+1)`
-/

namespace A131358.P97920721206114431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n - A002264 (n + 1) * A057078 (n + 1)

end

end A131358.P97920721206114431

namespace A131358

/-- `A011655(n)-A002264(n+1)*A057078(n+1)` -/
def P97920721206114431.Spec : Prop :=
  ∀ n, P97920721206114431.a n = A131358 n

end A131358

/-! ## A131358.P3232792844761969798

`(A057078(n+1)-A008611(n))*A057078(n+1)`
-/

namespace A131358.P3232792844761969798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (n + 1) - A008611 n) * A057078 (n + 1)

end

end A131358.P3232792844761969798

namespace A131358

/-- `(A057078(n+1)-A008611(n))*A057078(n+1)` -/
def P3232792844761969798.Spec : Prop :=
  ∀ n, P3232792844761969798.a n = A131358 n

end A131358

/-! ## A131358.P1406979949372779187

`Δ[A026741(A004523(n))]`
-/

namespace A131358.P1406979949372779187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131358.P1406979949372779187

namespace A131358

/-- `Δ[A026741(A004523(n))]` -/
def P1406979949372779187.Spec : Prop :=
  ∀ n, P1406979949372779187.a n = A131358 n

end A131358

/-! ## A131358.P5372521746979452296

`A128615(n)+A079978(n+1)`
-/

namespace A131358.P5372521746979452296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 n + A079978 (n + 1)

end

end A131358.P5372521746979452296

namespace A131358

/-- `A128615(n)+A079978(n+1)` -/
def P5372521746979452296.Spec : Prop :=
  ∀ n, P5372521746979452296.a n = A131358 n

end A131358

/-! ## A131358.P3492380982519664598

`(1-A047878(n+1))*A057078(n+1)`
-/

namespace A131358.P3492380982519664598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A047878 (n + 1)) * A057078 (n + 1)

end

end A131358.P3492380982519664598

namespace A131358

/-- `(1-A047878(n+1))*A057078(n+1)` -/
def P3492380982519664598.Spec : Prop :=
  ∀ n, P3492380982519664598.a n = A131358 n

end A131358

/-! ## A131358.P8064129308690677519

`(2-A194960(n+2))*A057078(n+1)`
-/

namespace A131358.P8064129308690677519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A194960 (n + 2)) * A057078 (n + 1)

end

end A131358.P8064129308690677519

namespace A131358

/-- `(2-A194960(n+2))*A057078(n+1)` -/
def P8064129308690677519.Spec : Prop :=
  ∀ n, P8064129308690677519.a n = A131358 n

end A131358

/-! ## A131358.P13815931920074391470

`A128615(n)+A049347(n+1)*A057078(n+1)`
-/

namespace A131358.P13815931920074391470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 n + A049347 (n + 1) * A057078 (n + 1)

end

end A131358.P13815931920074391470

namespace A131358

/-- `A128615(n)+A049347(n+1)*A057078(n+1)` -/
def P13815931920074391470.Spec : Prop :=
  ∀ n, P13815931920074391470.a n = A131358 n

end A131358

/-! ## A131358.P8570384220221236486

`(A049347(n+1)-A087508(n))*A057078(n+1)`
-/

namespace A131358.P8570384220221236486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 (n + 1) - A087508 n) * A057078 (n + 1)

end

end A131358.P8570384220221236486

namespace A131358

/-- `(A049347(n+1)-A087508(n))*A057078(n+1)` -/
def P8570384220221236486.Spec : Prop :=
  ∀ n, P8570384220221236486.a n = A131358 n

end A131358

/-!
# A131360: a(4n) = a(4n+1) = 0, a(4n+2) = 2n, a(4n+3) = 2n+1.

The programs for A131360, the canonical program `A131360.P9670347099784418459` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131360 has offset 0).

The definition of A131360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131360.P9670347099784418459

`floor((n-1)/2)*A021913(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131360

/-- `floor((n-1)/2)*A021913(n)` -/
def P9670347099784418459.Spec : Prop :=
  ∀ n, P9670347099784418459.a n = A131360 n

theorem P9670347099784418459.correct : P9670347099784418459.Spec := by
  intro n
  simp only [A131360]

end A131360

/-! ## A131360.P3358133814711872397

`(n-gcd(n, and(2, n)))/2`
-/

namespace A131360.P3358133814711872397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.gcd n (Nat.land 2 n) : ℤ) : ℚ) / 2

end

end A131360.P3358133814711872397

namespace A131360

/-- `(n-gcd(n, and(2, n)))/2` -/
def P3358133814711872397.Spec : Prop :=
  ∀ n, P3358133814711872397.a n = (A131360 n : ℚ)

end A131360

/-! ## A131360.P8966083608883003714

`and(n-1, -and(2, n))/2`
-/

namespace A131360.P8966083608883003714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((n : ℤ) - 1) (-(Nat.land 2 n : ℤ)) : ℚ) / 2

end

end A131360.P8966083608883003714

namespace A131360

/-- `and(n-1, -and(2, n))/2` -/
def P8966083608883003714.Spec : Prop :=
  ∀ n, P8966083608883003714.a n = (A131360 n : ℚ)

end A131360

/-! ## A131360.P5880415753861190252

`floor((n-1)*and(2, n)/4)`
-/

namespace A131360.P5880415753861190252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) * ((Nat.land 2 n : ℚ) / 4)⌋

end

end A131360.P5880415753861190252

namespace A131360

/-- `floor((n-1)*and(2, n)/4)` -/
def P5880415753861190252.Spec : Prop :=
  ∀ n, P5880415753861190252.a n = A131360 n

end A131360

/-! ## A131360.P16801566977519830218

`ceil((n-2)*and(2, n)/4)`
-/

namespace A131360.P16801566977519830218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) * ((Nat.land 2 n : ℚ) / 4)⌉

end

end A131360.P16801566977519830218

namespace A131360

/-- `ceil((n-2)*and(2, n)/4)` -/
def P16801566977519830218.Spec : Prop :=
  ∀ n, P16801566977519830218.a n = A131360 n

end A131360

/-! ## A131360.P12841837008573646183

`round((n-2)*and(2, n)/4)`
-/

namespace A131360.P12841837008573646183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) * ((Nat.land 2 n : ℚ) / 4))

end

end A131360.P12841837008573646183

namespace A131360

/-- `round((n-2)*and(2, n)/4)` -/
def P12841837008573646183.Spec : Prop :=
  ∀ n, P12841837008573646183.a n = A131360 n

end A131360

/-! ## A131360.P13335013685113810548

`lcm(and(2, n), and(n, n-1))/2`
-/

namespace A131360.P13335013685113810548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Nat.land 2 n : ℤ) (Int.land (n : ℤ) ((n : ℤ) - 1)) : ℚ) / 2

end

end A131360.P13335013685113810548

namespace A131360

/-- `lcm(and(2, n), and(n, n-1))/2` -/
def P13335013685113810548.Spec : Prop :=
  ∀ n, P13335013685113810548.a n = (A131360 n : ℚ)

end A131360

/-! ## A131360.P18365209365247775723

`gcd(∑[gcd(4, n+1)], ∑[n])-1`
-/

namespace A131360.P18365209365247775723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 1

end

end A131360.P18365209365247775723

namespace A131360

/-- `gcd(∑[gcd(4, n+1)], ∑[n])-1` -/
def P18365209365247775723.Spec : Prop :=
  ∀ n, P18365209365247775723.a n = A131360 n

end A131360

/-! ## A131360.P10090496967410538462

`a(n-4)+and(2, n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A131360.P10090496967410538462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + Nat.land 2 n

end

end A131360.P10090496967410538462

namespace A131360

/-- `a(n-4)+and(2, n)` -/
def P10090496967410538462.Spec : Prop :=
  ∀ n, (P10090496967410538462.a n : ℤ) = A131360 n

end A131360

/-! ## A131360.P14814549090933351310

`floor(C(n+1, and(2, n))/(n+2))`
-/

namespace A131360.P14814549090933351310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) (Nat.land 2 n) : ℚ) / (n + 2 : ℚ)⌋

end

end A131360.P14814549090933351310

namespace A131360

/-- `floor(C(n+1, and(2, n))/(n+2))` -/
def P14814549090933351310.Spec : Prop :=
  ∀ n, P14814549090933351310.a n = A131360 n

end A131360

/-! ## A131360.P16827764201821762123

`and(and(2, n+2)-2, n-1)/2`
-/

namespace A131360.P16827764201821762123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((Nat.land 2 (n + 2) : ℤ) - 2) ((n : ℤ) - 1) : ℚ) / 2

end

end A131360.P16827764201821762123

namespace A131360

/-- `and(and(2, n+2)-2, n-1)/2` -/
def P16827764201821762123.Spec : Prop :=
  ∀ n, P16827764201821762123.a n = (A131360 n : ℚ)

end A131360

/-! ## A131360.P13690986829400164021

`and(n-1, and(2, n-2)-2)/2`
-/

namespace A131360.P13690986829400164021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land ((n : ℤ) - 1) (Int.land 2 ((n : ℤ) - 2) - 2) : ℚ) / 2

end

end A131360.P13690986829400164021

namespace A131360

/-- `and(n-1, and(2, n-2)-2)/2` -/
def P13690986829400164021.Spec : Prop :=
  ∀ n, P13690986829400164021.a n = (A131360 n : ℚ)

end A131360

/-! ## A131360.P17049031623409959908

`A004523(A131742(n))`
-/

namespace A131360.P17049031623409959908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A131742 n).toNat

end

end A131360.P17049031623409959908

namespace A131360

/-- `A004523(A131742(n))` -/
def P17049031623409959908.Spec : Prop :=
  ∀ n, P17049031623409959908.a n = A131360 n

end A131360

/-! ## A131360.P17007407506697972422

`A004524(n*A021913(n))`
-/

namespace A131360.P17007407506697972422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ((n : ℤ) * A021913 n).toNat

end

end A131360.P17007407506697972422

namespace A131360

/-- `A004524(n*A021913(n))` -/
def P17007407506697972422.Spec : Prop :=
  ∀ n, P17007407506697972422.a n = A131360 n

end A131360

/-! ## A131360.P10621817733188898278

`A060755(n*A021913(n))`
-/

namespace A131360.P10621817733188898278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 ((n : ℤ) * A021913 n).toNat

end

end A131360.P10621817733188898278

namespace A131360

/-- `A060755(n*A021913(n))` -/
def P10621817733188898278.Spec : Prop :=
  ∀ n, P10621817733188898278.a n = A131360 n

end A131360

/-! ## A131360.P4719234750975317107

`A080412(n)%A065033(n)`
-/

namespace A131360.P4719234750975317107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080412 n) (A065033 n)

end

end A131360.P4719234750975317107

namespace A131360

/-- `A080412(n)%A065033(n)` -/
def P4719234750975317107.Spec : Prop :=
  ∀ n, P4719234750975317107.a n = A131360 n

end A131360

/-! ## A131360.P5972726448889819255

`A215098(n)%A065033(n)`
-/

namespace A131360.P5972726448889819255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215098 n) (A065033 n)

end

end A131360.P5972726448889819255

namespace A131360

/-- `A215098(n)%A065033(n)` -/
def P5972726448889819255.Spec : Prop :=
  ∀ n, P5972726448889819255.a n = A131360 n

end A131360

/-! ## A131360.P12908530157770671906

`A011886(n)%A290562(n)`
-/

namespace A131360.P12908530157770671906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011886 n) (A290562 n)

end

end A131360.P12908530157770671906

namespace A131360

/-- `A011886(n)%A290562(n)` -/
def P12908530157770671906.Spec : Prop :=
  ∀ n, P12908530157770671906.a n = A131360 n

end A131360

/-! ## A131360.P10279022413976564496

`A004524(lcm(n, A132380(n)))`
-/

namespace A131360.P10279022413976564496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lcm (n : ℤ) (A132380 n))

end

end A131360.P10279022413976564496

namespace A131360

/-- `A004524(lcm(n, A132380(n)))` -/
def P10279022413976564496.Spec : Prop :=
  ∀ n, P10279022413976564496.a n = A131360 n

end A131360

/-! ## A131360.P2308296732918653023

`A004524(and(n, A057077(n)))`
-/

namespace A131360.P2308296732918653023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.land (n : ℤ) (A057077 n)).toNat

end

end A131360.P2308296732918653023

namespace A131360

/-- `A004524(and(n, A057077(n)))` -/
def P2308296732918653023.Spec : Prop :=
  ∀ n, P2308296732918653023.a n = A131360 n

end A131360

/-!
# A131362: Record values in A131361.

The programs for A131362, there is no canonical definition to state claims against.
-/

/-! ## A131362.P11213605245620572785

`record[A131361(n)]`
-/

namespace A131362.P11213605245620572785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131362.P11213605245620572785

/-! ## A131362.P11807553183134088136

`A131361(A131363(n+1))`
-/

namespace A131362.P11807553183134088136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 (A131363 (n + 1)).toNat

end

end A131362.P11807553183134088136

/-! ## A131362.P16570817265227309050

`A131361(eq[A213809(n+1), A264600(n)])`
-/

namespace A131362.P16570817265227309050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131362.P16570817265227309050

/-! ## A131362.P12610914743684441449

`A007306(or(A131130(n), A154252(n)))`
-/

namespace A131362.P12610914743684441449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Int.lor (A131130 n) (A154252 n)).toNat

end

end A131362.P12610914743684441449

/-! ## A131362.P16005681588906087281

`A135042(n)+7%A088158(A000217(n))`
-/

namespace A131362.P16005681588906087281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n + Int.tmod 7 (A088158 (A000217 n).toNat)

end

end A131362.P16005681588906087281

/-!
# A131363: Where record values occur in A131361.

The programs for A131363, there is no canonical definition to state claims against.
-/

/-! ## A131363.P2083282161540721122

`record[(1-A341981(n))*A125887(n+1)]`
-/

namespace A131363.P2083282161540721122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341981 (n + 101)) * A125887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131363.P2083282161540721122

/-! ## A131363.P11474461867458035647

`record[A125887(n+1)*A341981(A341981(n)²)]`
-/

namespace A131363.P11474461867458035647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125887 (n + 1) * A341981 ((A341981 (n + 101) ^ 2).toNat + 101)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131363.P11474461867458035647

/-! ## A131363.P8882794116512965352

`eq[A085942(n)+1, A213809(n+1)]`
-/

namespace A131363.P8882794116512965352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085942 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131363.P8882794116512965352

/-! ## A131363.P1717531759714676577

`eq[A115300(n+1), A194509(n+1)]`
-/

namespace A131363.P1717531759714676577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131363.P1717531759714676577

/-! ## A131363.P14079238349828471837

`record[A076654(n+1)]%A217309(3*n)`
-/

namespace A131363.P14079238349828471837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A217309 (3 * n))

end

end A131363.P14079238349828471837

/-!
# A131364: Number of partitions of n into distinct repdigits of digits of n.

The programs for A131364, there is no canonical definition to state claims against.
-/

/-! ## A131364.P10260432472386322957

`A010815(lcm(A007612(n+1), A056965(n)))`
-/

namespace A131364.P10260432472386322957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.lcm (A007612 (n + 1)) (A056965 n))

end

end A131364.P10260432472386322957

/-! ## A131364.P12109289679789711921

`A136522(A160755(n+1)*A168185(n))`
-/

namespace A131364.P12109289679789711921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A160755 (n + 1) * A168185 n).toNat

end

end A131364.P12109289679789711921

/-! ## A131364.P9300776623545208622

`A065920(C(A293814(n)+A261423(n), n))`
-/

namespace A131364.P9300776623545208622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065920 (Nat.choose (A293814 n + A261423 n).toNat n)

end

end A131364.P9300776623545208622

/-! ## A131364.P9879981803983275446

`or(A136522(n), A266298(A298042(2*(n+1))))`
-/

namespace A131364.P9879981803983275446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136522 n) (A266298 (A298042 (2 * (n + 1))).toNat)

end

end A131364.P9879981803983275446

/-! ## A131364.P13851125585477634217

`C(A257994(A059274(n)), A347689(n))`
-/

namespace A131364.P13851125585477634217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257994 (A059274 n).toNat).toNat (A347689 n).toNat

end

end A131364.P13851125585477634217

/-!
# A131365: Numbers that cannot be written in decimal representation as sum of distinct repdigits of its digits.

The programs for A131365, there is no canonical definition to state claims against.
-/

/-! ## A131365.P13356062931096675188

`eq[0, A131364(n)]`
-/

namespace A131365.P13356062931096675188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131365.P13356062931096675188

/-! ## A131365.P5849750188327389789

`lt[A131364(n+1), 1]+1`
-/

namespace A131365.P5849750188327389789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131365.P5849750188327389789

/-! ## A131365.P10710268192507948204

`lt[A131364(2*n-n), 1]`
-/

namespace A131365.P10710268192507948204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131365.P10710268192507948204

/-! ## A131365.P18033926463672638082

`lt[A000038(n), A000038(A131364(n))]`
-/

namespace A131365.P18033926463672638082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A131364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131365.P18033926463672638082

/-! ## A131365.P16655000781785285805

`lt[A000041(n)*A131364(n), 1]`
-/

namespace A131365.P16655000781785285805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A131364 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131365.P16655000781785285805

/-!
# A131366: Numbers that can be written in decimal representation as sum of distinct repdigits of its digits.

The programs for A131366, there is no canonical definition to state claims against.
-/

/-! ## A131366.P8426440352410249470

`lt[1/(n+1), A131364(n)]`
-/

namespace A131366.P8426440352410249470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A131366.P8426440352410249470

/-! ## A131366.P15155999651130480864

`comp[A131365(n+1)-1]+1`
-/

namespace A131366.P15155999651130480864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131365 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131366.P15155999651130480864

/-! ## A131366.P17057227682261545893

`record[(n+1)%(A131364(n+1)+1+n)]`
-/

namespace A131366.P17057227682261545893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A131364 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131366.P17057227682261545893

/-! ## A131366.P17492734152579449697

`lt[1, A014486(n*A131364(n))]`
-/

namespace A131366.P17492734152579449697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 ((n : ℤ) * A131364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131366.P17492734152579449697

/-! ## A131366.P9399804598931219581

`eq[A000007(n), A000007(A131364(n))]`
-/

namespace A131366.P9399804598931219581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A131364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131366.P9399804598931219581

/-! ## A131366.P3022511160172137584

`eq[A000038(n), A000038(A131364(n))]`
-/

namespace A131366.P3022511160172137584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A131364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131366.P3022511160172137584

/-! ## A131366.P10017083880987896266

`eq[A040002(n), A040002(A131364(n))]`
-/

namespace A131366.P10017083880987896266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A131364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131366.P10017083880987896266

/-! ## A131366.P12247948493472025568

`eq[A040056(n), A040056(A131364(n))]`
-/

namespace A131366.P12247948493472025568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A131364 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131366.P12247948493472025568

/-!
# A131368: Coprime semiprimes: a(n-1) and a(n) are the closest coprime semiprimes.

The programs for A131368, there is no canonical definition to state claims against.
-/

/-! ## A131368.P16975062349056419643

`A094549(a(n-1))` with `a(0)=4`
-/

namespace A131368.P16975062349056419643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A094549 (a (n - 1)).toNat

end

end A131368.P16975062349056419643

/-! ## A131368.P12529834153359697681

`record[A094549(a(A261225(n)))]` with `a(0)=4, a(1)=0`
-/

namespace A131368.P12529834153359697681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  A094549 (f1 (A261225 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131368.P12529834153359697681

/-! ## A131368.P14453156260251006913

`eq[A014673(A151874(n)), A105700(n)]`
-/

namespace A131368.P14453156260251006913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A151874 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131368.P14453156260251006913

/-! ## A131368.P15232280786067161467

`eq[A014673(A151874(n)), A284289(n)]`
-/

namespace A131368.P15232280786067161467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A151874 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131368.P15232280786067161467

/-! ## A131368.P7211068893369109479

`∩[A129336(n+1), A376598(n+1)]`
-/

namespace A131368.P7211068893369109479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131368.P7211068893369109479

/-!
# A131369: Period 10: repeat [5, 4, 5, 4, 3, 4, 5, 4, 5, 0].

The programs for A131369, the canonical program `A131369.P87093201395337302` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131369 has offset 0).

The definition of A131369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131369.P87093201395337302

`a(n-10)` with `a(0)=5, a(1)=4, a(2)=5, a(3)=4, a(4)=3, a(5)=4, a(6)=5, a(7)=4, a(8)=5, a(9)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131369

/-- `a(n-10)` -/
def P87093201395337302.Spec : Prop :=
  ∀ n, (P87093201395337302.a n : ℤ) = A131369 n

theorem P87093201395337302.correct : P87093201395337302.Spec := by
  intro n
  simp only [A131369]

end A131369

/-!
# A131370: a(n) = 3a(n-1) - 3a(n-2) + 2a(n-3), a(0) = 3, a(1) = 2, a(2) = 0.

The programs for A131370, the canonical program `A131370.P981833200713880031` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131370 has offset 0).

The definition of A131370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A131370.P981833200713880031`, by `A131370.P981833200713880031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131370.P981833200713880031

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131370

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P981833200713880031.Spec : Prop :=
  ∀ n, P981833200713880031.a n = A131370 n

theorem P981833200713880031.correct : P981833200713880031.Spec := by
  intro n
  simp only [A131370]

end A131370

/-! ## A131370.P1242430974474710535

`2^n/3+8/3*cos(n*π/3)`
-/

namespace A131370.P1242430974474710535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) / 3 : ℝ) + ((8 : ℚ) / 3 : ℝ) * Real.cos ((n : ℝ) * Real.pi / 3)

end

end A131370.P1242430974474710535

namespace A131370

/-- `2^n/3+8/3*cos(n*π/3)` -/
def P1242430974474710535.Spec : Prop :=
  ∀ n, P1242430974474710535.a n = (A131370 n : ℝ)

end A131370

/-! ## A131370.P513995997667648686

`ogf((3-7x+3x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A131370.P513995997667648686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7, 3] [1, -3, 3, -2] n

end

end A131370.P513995997667648686

namespace A131370

/-- `ogf((3-7x+3x^2)/(1-3x+3x^2-2x^3))` -/
def P513995997667648686.Spec : Prop :=
  ∀ n, P513995997667648686.a n = A131370 n

end A131370

/-! ## A131370.P17134727563287700120

`2^(n-2)+a(n-1)-a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A131370.P17134727563287700120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (a (n - 1) - a (n - 2))

end

end A131370.P17134727563287700120

namespace A131370

/-- `2^(n-2)+a(n-1)-a(n-2)` -/
def P17134727563287700120.Spec : Prop :=
  ∀ n, P17134727563287700120.a n = (A131370 n : ℚ)

end A131370

/-! ## A131370.P6884930399472855355

`2*(a(n-1)+a(n-4))-a(n-3)` with `a(0)=3, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A131370.P6884930399472855355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 0, 0] fun n a =>
  2 * (a (n - 1) + a (n - 4)) - a (n - 3)

end

end A131370.P6884930399472855355

namespace A131370

/-- `2*(a(n-1)+a(n-4))-a(n-3)` -/
def P6884930399472855355.Spec : Prop :=
  ∀ n, P6884930399472855355.a n = A131370 n

end A131370

/-! ## A131370.P12753992683655115341

`1-a(n-2)+a(n-1)+xor(3, or(a(n-1), a(n-2)))` with `a(0)=3, a(1)=2`
-/

namespace A131370.P12753992683655115341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  1 - a (n - 2) + (a (n - 1) + Int.xor 3 (Int.lor (a (n - 1)) (a (n - 2))))

end

end A131370.P12753992683655115341

namespace A131370

/-- `1-a(n-2)+a(n-1)+xor(3, or(a(n-1), a(n-2)))` -/
def P12753992683655115341.Spec : Prop :=
  ∀ n, P12753992683655115341.a n = A131370 n

end A131370

/-! ## A131370.P16660976053838350308

`1-(a(n-2)-xor(3, or(a(n-1), a(n-2)))-a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A131370.P16660976053838350308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  1 - (a (n - 2) - Int.xor 3 (Int.lor (a (n - 1)) (a (n - 2))) - a (n - 1))

end

end A131370.P16660976053838350308

namespace A131370

/-- `1-(a(n-2)-xor(3, or(a(n-1), a(n-2)))-a(n-1))` -/
def P16660976053838350308.Spec : Prop :=
  ∀ n, P16660976053838350308.a n = A131370 n

end A131370

/-! ## A131370.P16273688416203870935

`A087204(n)+A024493(n)`
-/

namespace A131370.P16273688416203870935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n + A024493 n

end

end A131370.P16273688416203870935

namespace A131370

/-- `A087204(n)+A024493(n)` -/
def P16273688416203870935.Spec : Prop :=
  ∀ n, P16273688416203870935.a n = A131370 n

end A131370

/-! ## A131370.P567243392877322932

`A130772(n)+A086953(n)`
-/

namespace A131370.P567243392877322932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130772 n + A086953 n

end

end A131370.P567243392877322932

namespace A131370

/-- `A130772(n)+A086953(n)` -/
def P567243392877322932.Spec : Prop :=
  ∀ n, P567243392877322932.a n = A131370 n

end A131370

/-! ## A131370.P3897872091887772183

`A057079(n+1)+A024493(n)`
-/

namespace A131370.P3897872091887772183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 1) + A024493 n

end

end A131370.P3897872091887772183

namespace A131370

/-- `A057079(n+1)+A024493(n)` -/
def P3897872091887772183.Spec : Prop :=
  ∀ n, P3897872091887772183.a n = A131370 n

end A131370

/-! ## A131370.P11436068718930121383

`A130772(n+1)+A130707(n)`
-/

namespace A131370.P11436068718930121383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130772 (n + 1) + A130707 n

end

end A131370.P11436068718930121383

namespace A131370

/-- `A130772(n+1)+A130707(n)` -/
def P11436068718930121383.Spec : Prop :=
  ∀ n, P11436068718930121383.a n = A131370 n

end A131370

/-! ## A131370.P13775658872800447657

`A184334(n+1)+A086953(n)`
-/

namespace A131370.P13775658872800447657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184334 (n + 1) + A086953 n

end

end A131370.P13775658872800447657

namespace A131370

/-- `A184334(n+1)+A086953(n)` -/
def P13775658872800447657.Spec : Prop :=
  ∀ n, P13775658872800447657.a n = A131370 n

end A131370

/-! ## A131370.P16330826240761352950

`A122876(n+2)+A024493(n)`
-/

namespace A131370.P16330826240761352950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122876 (n + 2) + A024493 n

end

end A131370.P16330826240761352950

namespace A131370

/-- `A122876(n+2)+A024493(n)` -/
def P16330826240761352950.Spec : Prop :=
  ∀ n, P16330826240761352950.a n = A131370 n

end A131370

/-! ## A131370.P10769219156255276490

`A086953(n)-A109265(n+2)`
-/

namespace A131370.P10769219156255276490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n - A109265 (n + 2)

end

end A131370.P10769219156255276490

namespace A131370

/-- `A086953(n)-A109265(n+2)` -/
def P10769219156255276490.Spec : Prop :=
  ∀ n, P10769219156255276490.a n = A131370 n

end A131370

/-! ## A131370.P5317751170882196766

`A131708(n)-A117373(n+2)`
-/

namespace A131370.P5317751170882196766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n - A117373 (n + 2)

end

end A131370.P5317751170882196766

namespace A131370

/-- `A131708(n)-A117373(n+2)` -/
def P5317751170882196766.Spec : Prop :=
  ∀ n, P5317751170882196766.a n = A131370 n

end A131370

/-! ## A131370.P10076480383259191323

`A086953(n)+2*A010892(n)`
-/

namespace A131370.P10076480383259191323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n + 2 * A010892 n

end

end A131370.P10076480383259191323

namespace A131370

/-- `A086953(n)+2*A010892(n)` -/
def P10076480383259191323.Spec : Prop :=
  ∀ n, P10076480383259191323.a n = A131370 n

end A131370

/-! ## A131370.P8755655271888326702

`A086953(n)-A257076(n+3)`
-/

namespace A131370.P8755655271888326702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 n - A257076 (n + 3)

end

end A131370.P8755655271888326702

namespace A131370

/-- `A086953(n)-A257076(n+3)` -/
def P8755655271888326702.Spec : Prop :=
  ∀ n, P8755655271888326702.a n = A131370 n

end A131370

/-! ## A131370.P10950627460771025872

`A010892(n+1)+A024493(n)+A010892(n)`
-/

namespace A131370.P10950627460771025872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (A024493 n + A010892 n)

end

end A131370.P10950627460771025872

namespace A131370

/-- `A010892(n+1)+A024493(n)+A010892(n)` -/
def P10950627460771025872.Spec : Prop :=
  ∀ n, P10950627460771025872.a n = A131370 n

end A131370

/-! ## A131370.P15041632788997509161

`A057079(n+1)+A024495(n)+A010892(n)`
-/

namespace A131370.P15041632788997509161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 1) + (A024495 n + A010892 n)

end

end A131370.P15041632788997509161

namespace A131370

/-- `A057079(n+1)+A024495(n)+A010892(n)` -/
def P15041632788997509161.Spec : Prop :=
  ∀ n, P15041632788997509161.a n = A131370 n

end A131370

/-! ## A131370.P14319791141848281437

`A130151(n+1)+A130151(n)+A086953(n)`
-/

namespace A131370.P14319791141848281437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (n + 1) + (A130151 n + A086953 n)

end

end A131370.P14319791141848281437

namespace A131370

/-- `A130151(n+1)+A130151(n)+A086953(n)` -/
def P14319791141848281437.Spec : Prop :=
  ∀ n, P14319791141848281437.a n = A131370 n

end A131370

/-!
# A131371: Number of anagrams of n that are semiprimes.

The programs for A131371, there is no canonical definition to state claims against.
-/

/-! ## A131371.P3450310549985342663

`A064911(n+1)+A064911(A350100(n+1))`
-/

namespace A131371.P3450310549985342663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) + A064911 (A350100 (n + 1)).toNat

end

end A131371.P3450310549985342663

/-! ## A131371.P3167881888222599731

`and(A056624(3*n+2), A133619(A090979(n+1)))`
-/

namespace A131371.P3167881888222599731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056624 (3 * n + 2)) (A133619 (A090979 (n + 1)).toNat)

end

end A131371.P3167881888222599731

/-! ## A131371.P12468759547908826229

`A064911(n+1)+A064911(A000041(A112021(n+1)))`
-/

namespace A131371.P12468759547908826229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) + A064911 (A000041 (A112021 (n + 1)).toNat).toNat

end

end A131371.P12468759547908826229

/-! ## A131371.P15801898031481786584

`A089526(A089529(n+1))%A275117(n)`
-/

namespace A131371.P15801898031481786584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089526 (A089529 (n + 1)).toNat) (A275117 n)

end

end A131371.P15801898031481786584

/-! ## A131371.P17075594927915527907

`A253074(A001224(n+1))%A081355(n+4)`
-/

namespace A131371.P17075594927915527907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253074 (A001224 (n + 1)).toNat) (A081355 (n + 4))

end

end A131371.P17075594927915527907

/-!
# A131372: Period 7: repeat [1, -1, 0, 1, 0, -1, 1].

The programs for A131372, the canonical program `A131372.P4103189659367902781` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131372 has offset 0).

The definition of A131372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131372.P4103189659367902781

`a(n-7)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1, a(4)=0, a(5)=-1, a(6)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131372

/-- `a(n-7)` -/
def P4103189659367902781.Spec : Prop :=
  ∀ n, P4103189659367902781.a n = A131372 n

theorem P4103189659367902781.correct : P4103189659367902781.Spec := by
  intro n
  simp only [A131372]

end A131372

/-!
# A131373: A046854 + A065941 - A000012.

The programs for A131373, the canonical program `A131373.P5409400150504785590` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131373 has offset 0).

The definition of A131373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131373.P5874015252700590951

`A131400(n)-char[comp[∑[n-1]]]`
-/

namespace A131373.P5874015252700590951
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131400 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A131373.P5874015252700590951

namespace A131373

/-- `A131400(n)-char[comp[∑[n-1]]]` -/
def P5874015252700590951.Spec : Prop :=
  ∀ n, P5874015252700590951.a n = A131373 n

end A131373

/-! ## A131373.P6088424917340481172

`A028326(n)-A131402(n)`
-/

namespace A131373.P6088424917340481172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131402 n

end

end A131373.P6088424917340481172

namespace A131373

/-- `A028326(n)-A131402(n)` -/
def P6088424917340481172.Spec : Prop :=
  ∀ n, P6088424917340481172.a n = A131373 n

theorem P6088424917340481172.correct : P6088424917340481172.Spec := by
  intro n
  simp only [A131373, Nat.add_sub_cancel, A131373.P6088424917340481172.a, A131373.P5409400150504785590.a, A028326, A028326.P16610217584664895500.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131402, A131402.P8210763280089425655.a, A007318, A007318.P302227728145965961.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A039961, A039961.P8581143921981610919.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A061579, A061579.P7462537595056690109.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A092865, A092865.P9800871042429563602.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131373

/-! ## A131373.P5409400150504785590

`A046854(n)+A065941(n)-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131373

/-- `A046854(n)+A065941(n)-1` -/
def P5409400150504785590.Spec : Prop :=
  ∀ n, P5409400150504785590.a n = A131373 n

theorem P5409400150504785590.correct : P5409400150504785590.Spec := by
  intro n
  simp only [A131373]

end A131373

/-! ## A131373.P15921494717330834728

`A109128(n)+1-A131402(n)`
-/

namespace A131373.P15921494717330834728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A131402 n)

end

end A131373.P15921494717330834728

namespace A131373

/-- `A109128(n)+1-A131402(n)` -/
def P15921494717330834728.Spec : Prop :=
  ∀ n, P15921494717330834728.a n = A131373 n

theorem P15921494717330834728.correct : P15921494717330834728.Spec := by
  intro n
  simp only [A131373, Nat.add_sub_cancel, A131373.P15921494717330834728.a, A131373.P5409400150504785590.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A109128, A109128.P11896187039746255515.a, A131402, A131402.P8210763280089425655.a, A028326, A028326.P16610217584664895500.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A007318, A007318.P302227728145965961.a, A039961, A039961.P8581143921981610919.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A130777, A130777.P39247602111540675.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131373

/-! ## A131373.P14158636744528831195

`2*A007318(n)-A131402(n)`
-/

namespace A131373.P14158636744528831195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A131402 n

end

end A131373.P14158636744528831195

namespace A131373

/-- `2*A007318(n)-A131402(n)` -/
def P14158636744528831195.Spec : Prop :=
  ∀ n, P14158636744528831195.a n = A131373 n

theorem P14158636744528831195.correct : P14158636744528831195.Spec := by
  intro n
  simp only [A131373, Nat.add_sub_cancel, A131373.P14158636744528831195.a, A131373.P5409400150504785590.a, A007318, A007318.P302227728145965961.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131402, A131402.P8210763280089425655.a, A028326, A028326.P16610217584664895500.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131373

/-! ## A131373.P2149519682797826671

`A065941(n)+ceil(A131240(n)/2)-1`
-/

namespace A131373.P2149519682797826671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (⌈(A131240 n : ℚ) / 2⌉ - 1)

end

end A131373.P2149519682797826671

namespace A131373

/-- `A065941(n)+ceil(A131240(n)/2)-1` -/
def P2149519682797826671.Spec : Prop :=
  ∀ n, P2149519682797826671.a n = A131373 n

end A131373

/-! ## A131373.P3974355474033779308

`A046854(n)+A023443(A065941(n))`
-/

namespace A131373.P3974355474033779308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + A023443 (A065941 n).toNat

end

end A131373.P3974355474033779308

namespace A131373

/-- `A046854(n)+A023443(A065941(n))` -/
def P3974355474033779308.Spec : Prop :=
  ∀ n, P3974355474033779308.a n = A131373 n

end A131373

/-! ## A131373.P7006964225515737002

`A289207(A131400(n))+1`
-/

namespace A131373.P7006964225515737002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A131400 n).toNat + 1

end

end A131373.P7006964225515737002

namespace A131373

/-- `A289207(A131400(n))+1` -/
def P7006964225515737002.Spec : Prop :=
  ∀ n, P7006964225515737002.a n = A131373 n

end A131373

/-! ## A131373.P4954423643803739113

`A028310(A131400(n)-1)`
-/

namespace A131373.P4954423643803739113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A131400 n - 1).toNat

end

end A131373.P4954423643803739113

namespace A131373

/-- `A028310(A131400(n)-1)` -/
def P4954423643803739113.Spec : Prop :=
  ∀ n, P4954423643803739113.a n = A131373 n

end A131373

/-! ## A131373.P12718022357365813507

`A046854(n)+A004526(A131268(n))`
-/

namespace A131373.P12718022357365813507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + A004526 (A131268 n).toNat

end

end A131373.P12718022357365813507

namespace A131373

/-- `A046854(n)+A004526(A131268(n))` -/
def P12718022357365813507.Spec : Prop :=
  ∀ n, P12718022357365813507.a n = A131373 n

end A131373

/-!
# A131374: A046854 + A065941 - A049310.

The programs for A131374, the canonical program `A131374.P1343424990653634680` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131374 has offset 0).

The definition of A131374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131374.P1343424990653634680

`A131373(n)+1-A168561(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A131374

/-- `A131373(n)+1-A168561(n)` -/
def P1343424990653634680.Spec : Prop :=
  ∀ n, P1343424990653634680.a n = A131374 n

theorem P1343424990653634680.correct : P1343424990653634680.Spec := by
  intro n
  simp only [A131374]

end A131374

/-! ## A131374.P12268202332917669748

`A046854(n)+A131376(n)-A007318(n)`
-/

namespace A131374.P12268202332917669748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131376 n - A007318 n)

end

end A131374.P12268202332917669748

namespace A131374

/-- `A046854(n)+A131376(n)-A007318(n)` -/
def P12268202332917669748.Spec : Prop :=
  ∀ n, P12268202332917669748.a n = A131374 n

theorem P12268202332917669748.correct : P12268202332917669748.Spec := by
  intro n
  simp only [A131374, Nat.add_sub_cancel, A131374.P12268202332917669748.a, A131374.P1343424990653634680.a, A007318, A007318.P302227728145965961.a, A046854, A046854.P6336279902607506651.a, A131373, A131373.P5409400150504785590.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P906342881231109173.a, A065941, A065941.P15522671980025678303.a, A102426, A102426.P776678391830445668.a, A134513, A134513.P11345042164523319292.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A108299, A108299.P8064445673908937225.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A039961, A039961.P8581143921981610919.a, A092865, A092865.P9800871042429563602.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131374

/-! ## A131374.P8682744630435256317

`A065941(n)+A131375(n)-A007318(n)`
-/

namespace A131374.P8682744630435256317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131375 n - A007318 n)

end

end A131374.P8682744630435256317

namespace A131374

/-- `A065941(n)+A131375(n)-A007318(n)` -/
def P8682744630435256317.Spec : Prop :=
  ∀ n, P8682744630435256317.a n = A131374 n

theorem P8682744630435256317.correct : P8682744630435256317.Spec := by
  intro n
  simp only [A131374, Nat.add_sub_cancel, A131374.P8682744630435256317.a, A131374.P1343424990653634680.a, A007318, A007318.P302227728145965961.a, A065941, A065941.P15522671980025678303.a, A131373, A131373.P5409400150504785590.a, A131375, A131375.P2872443932390034919.a, A168561, A168561.P906342881231109173.a, A046854, A046854.P6336279902607506651.a, A108299, A108299.P8064445673908937225.a, A134513, A134513.P11345042164523319292.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A102426, A102426.P776678391830445668.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A061579, A061579.P7462537595056690109.a, A098925, A098925.P12998610641323261996.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A130777, A130777.P39247602111540675.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131374

/-! ## A131374.P14469797966340965108

`A046854(n)+A065941(n)-A168561(n)`
-/

namespace A131374.P14469797966340965108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A065941 n - A168561 n)

end

end A131374.P14469797966340965108

namespace A131374

/-- `A046854(n)+A065941(n)-A168561(n)` -/
def P14469797966340965108.Spec : Prop :=
  ∀ n, P14469797966340965108.a n = A131374 n

theorem P14469797966340965108.correct : P14469797966340965108.Spec := by
  intro n
  simp only [A131374, Nat.add_sub_cancel, A131374.P14469797966340965108.a, A131374.P1343424990653634680.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131373, A131373.P5409400150504785590.a, A168561, A168561.P906342881231109173.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A134513, A134513.P11345042164523319292.a, A246694, A246694.P8696891911788978763.a, A369736, A369736.P2745609336317517813.a, A000007, A000007.P6599383543502402472.a, A039961, A039961.P8581143921981610919.a, A098925, A098925.P12998610641323261996.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131374

/-! ## A131374.P1977046484079110085

`A131375(n)+A131376(n)-A131350(n)`
-/

namespace A131374.P1977046484079110085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131375 n + (A131376 n - A131350 n)

end

end A131374.P1977046484079110085

namespace A131374

/-- `A131375(n)+A131376(n)-A131350(n)` -/
def P1977046484079110085.Spec : Prop :=
  ∀ n, P1977046484079110085.a n = A131374 n

theorem P1977046484079110085.correct : P1977046484079110085.Spec := by
  intro n
  simp only [A131374, Nat.add_sub_cancel, A131374.P1977046484079110085.a, A131374.P1343424990653634680.a, A131350, A131350.P11902932173127582114.a, A131373, A131373.P5409400150504785590.a, A131375, A131375.P2872443932390034919.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P906342881231109173.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A134513, A134513.P11345042164523319292.a, A369736, A369736.P2745609336317517813.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131374

/-! ## A131374.P3255590878838939598

`A131778(n+1)+A046854(n)-A131777(n+1)`
-/

namespace A131374.P3255590878838939598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131778 (n + 1) + (A046854 n - A131777 (n + 1))

end

end A131374.P3255590878838939598

namespace A131374

/-- `A131778(n+1)+A046854(n)-A131777(n+1)` -/
def P3255590878838939598.Spec : Prop :=
  ∀ n, P3255590878838939598.a n = A131374 n

end A131374

/-! ## A131374.P5269588490020804451

`A046854(n+1)+A065941(n)-A153764(n+1)`
-/

namespace A131374.P5269588490020804451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (n + 1) + (A065941 n - A153764 (n + 1))

end

end A131374.P5269588490020804451

namespace A131374

/-- `A046854(n+1)+A065941(n)-A153764(n+1)` -/
def P5269588490020804451.Spec : Prop :=
  ∀ n, P5269588490020804451.a n = A131374 n

end A131374

/-!
# A131375: A007318 + A046854 - A049310.

The programs for A131375, the canonical program `A131375.P2872443932390034919` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131375 has offset 0).

The definition of A131375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131375.P2872443932390034919

`A007318(n)+A046854(n)-A168561(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131375

/-- `A007318(n)+A046854(n)-A168561(n)` -/
def P2872443932390034919.Spec : Prop :=
  ∀ n, P2872443932390034919.a n = A131375 n

theorem P2872443932390034919.correct : P2872443932390034919.Spec := by
  intro n
  simp only [A131375]

end A131375

/-! ## A131375.P15455127846431988901

`A046854(n)+A131376(n)-A065941(n)`
-/

namespace A131375.P15455127846431988901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131376 n - A065941 n)

end

end A131375.P15455127846431988901

namespace A131375

/-- `A046854(n)+A131376(n)-A065941(n)` -/
def P15455127846431988901.Spec : Prop :=
  ∀ n, P15455127846431988901.a n = A131375 n

theorem P15455127846431988901.correct : P15455127846431988901.Spec := by
  intro n
  simp only [A131375, Nat.add_sub_cancel, A131375.P15455127846431988901.a, A131375.P2872443932390034919.a, A007318, A007318.P302227728145965961.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P906342881231109173.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A131374, A131374.P1343424990653634680.a, A134513, A134513.P11345042164523319292.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A130194, A130194.P2127097529341530346.a, A131373, A131373.P5409400150504785590.a, A134505, A134505.P6935622930957667742.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131375

/-! ## A131375.P15383849429946980918

`A131350(n)+A131374(n)-A131376(n)`
-/

namespace A131375.P15383849429946980918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131350 n + (A131374 n - A131376 n)

end

end A131375.P15383849429946980918

namespace A131375

/-- `A131350(n)+A131374(n)-A131376(n)` -/
def P15383849429946980918.Spec : Prop :=
  ∀ n, P15383849429946980918.a n = A131375 n

theorem P15383849429946980918.correct : P15383849429946980918.Spec := by
  intro n
  simp only [A131375, Nat.add_sub_cancel, A131375.P15383849429946980918.a, A131375.P2872443932390034919.a, A007318, A007318.P302227728145965961.a, A046854, A046854.P6336279902607506651.a, A131350, A131350.P11902932173127582114.a, A131374, A131374.P1343424990653634680.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P906342881231109173.a, A028326, A028326.P16610217584664895500.a, A102426, A102426.P776678391830445668.a, A131373, A131373.P5409400150504785590.a, A134513, A134513.P11345042164523319292.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A065941, A065941.P15522671980025678303.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A092865, A092865.P9800871042429563602.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A108299, A108299.P8064445673908937225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131375

/-! ## A131375.P8816261623552338292

`A131374(n)+A131376(n)-A131774(n+1)`
-/

namespace A131375.P8816261623552338292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131374 n + (A131376 n - A131774 (n + 1))

end

end A131375.P8816261623552338292

namespace A131375

/-- `A131374(n)+A131376(n)-A131774(n+1)` -/
def P8816261623552338292.Spec : Prop :=
  ∀ n, P8816261623552338292.a n = A131375 n

end A131375

/-! ## A131375.P3051566886970331799

`A046854(n+1)+A007318(n)-A153764(n+1)`
-/

namespace A131375.P3051566886970331799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (n + 1) + (A007318 n - A153764 (n + 1))

end

end A131375.P3051566886970331799

namespace A131375

/-- `A046854(n+1)+A007318(n)-A153764(n+1)` -/
def P3051566886970331799.Spec : Prop :=
  ∀ n, P3051566886970331799.a n = A131375 n

end A131375

/-!
# A131376: Triangle read by rows: T(n,k) = A007318(n,k) + A065941(n,k) - A168561(n,k).

The programs for A131376, the canonical program `A131376.P4997632316983606857` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131376 has offset 0).

The definition of A131376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131376.P15029975154889159324

`(A131774(n+1)+A131350(n))/2`
-/

namespace A131376.P15029975154889159324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131774 (n + 1) + A131350 n : ℚ) / 2

end

end A131376.P15029975154889159324

namespace A131376

/-- `(A131774(n+1)+A131350(n))/2` -/
def P15029975154889159324.Spec : Prop :=
  ∀ n, P15029975154889159324.a n = (A131376 n : ℚ)

end A131376

/-! ## A131376.P14975269178479845401

`(A131775(n+1)+A131767(n))/2`
-/

namespace A131376.P14975269178479845401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131775 (n + 1) + A131767 n : ℚ) / 2

end

end A131376.P14975269178479845401

namespace A131376

/-- `(A131775(n+1)+A131767(n))/2` -/
def P14975269178479845401.Spec : Prop :=
  ∀ n, P14975269178479845401.a n = (A131376 n : ℚ)

end A131376

/-! ## A131376.P4997632316983606857

`A007318(n)+A131374(n)-A046854(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A131376

/-- `A007318(n)+A131374(n)-A046854(n)` -/
def P4997632316983606857.Spec : Prop :=
  ∀ n, P4997632316983606857.a n = A131376 n

theorem P4997632316983606857.correct : P4997632316983606857.Spec := by
  intro n
  simp only [A131376]

end A131376

/-! ## A131376.P13697179364303443188

`A007318(n)+A065941(n)-A168561(n)`
-/

namespace A131376.P13697179364303443188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A065941 n - A168561 n)

end

end A131376.P13697179364303443188

namespace A131376

/-- `A007318(n)+A065941(n)-A168561(n)` -/
def P13697179364303443188.Spec : Prop :=
  ∀ n, P13697179364303443188.a n = A131376 n

theorem P13697179364303443188.correct : P13697179364303443188.Spec := by
  intro n
  simp only [A131376, Nat.add_sub_cancel, A131376.P13697179364303443188.a, A131376.P4997632316983606857.a, A007318, A007318.P302227728145965961.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131374, A131374.P1343424990653634680.a, A168561, A168561.P906342881231109173.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A131373, A131373.P5409400150504785590.a, A134513, A134513.P11345042164523319292.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A369736, A369736.P2745609336317517813.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A130194, A130194.P2127097529341530346.a, A134505, A134505.P6935622930957667742.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A009531, A009531.P14285492072244400176.a, A010054, A010054.P18347828677204923252.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A107230, A107230.P8874938179694735189.a, A108044, A108044.P8862669361882078575.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131376

/-! ## A131376.P3421403473325196210

`A065941(n)+A131375(n)-A046854(n)`
-/

namespace A131376.P3421403473325196210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A131375 n - A046854 n)

end

end A131376.P3421403473325196210

namespace A131376

/-- `A065941(n)+A131375(n)-A046854(n)` -/
def P3421403473325196210.Spec : Prop :=
  ∀ n, P3421403473325196210.a n = A131376 n

theorem P3421403473325196210.correct : P3421403473325196210.Spec := by
  intro n
  simp only [A131376, Nat.add_sub_cancel, A131376.P3421403473325196210.a, A131376.P4997632316983606857.a, A007318, A007318.P302227728145965961.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131374, A131374.P1343424990653634680.a, A131375, A131375.P2872443932390034919.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A131373, A131373.P5409400150504785590.a, A168561, A168561.P906342881231109173.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000007, A000007.P6599383543502402472.a, A003056, A003056.P5318256527314048597.a, A039961, A039961.P8581143921981610919.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A098925, A098925.P12998610641323261996.a, A134513, A134513.P11345042164523319292.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A369736, A369736.P2745609336317517813.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A061579, A061579.P7462537595056690109.a, A092865, A092865.P9800871042429563602.a, A130194, A130194.P2127097529341530346.a, A130777, A130777.P39247602111540675.a, A134505, A134505.P6935622930957667742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131376

/-! ## A131376.P4950233554531800892

`A001281(A131774(n+1)+A131350(n))`
-/

namespace A131376.P4950233554531800892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131774 (n + 1) + A131350 n).toNat

end

end A131376.P4950233554531800892

namespace A131376

/-- `A001281(A131774(n+1)+A131350(n))` -/
def P4950233554531800892.Spec : Prop :=
  ∀ n, P4950233554531800892.a n = A131376 n

end A131376

/-! ## A131376.P8898336877215654141

`A001281(A131775(n+1)+A131767(n))`
-/

namespace A131376.P8898336877215654141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131775 (n + 1) + A131767 n).toNat

end

end A131376.P8898336877215654141

namespace A131376

/-- `A001281(A131775(n+1)+A131767(n))` -/
def P8898336877215654141.Spec : Prop :=
  ∀ n, P8898336877215654141.a n = A131376 n

end A131376

/-! ## A131376.P7228564849831325482

`A004526(A131774(n+1)+A131350(n))`
-/

namespace A131376.P7228564849831325482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131774 (n + 1) + A131350 n).toNat

end

end A131376.P7228564849831325482

namespace A131376

/-- `A004526(A131774(n+1)+A131350(n))` -/
def P7228564849831325482.Spec : Prop :=
  ∀ n, P7228564849831325482.a n = A131376 n

end A131376

/-! ## A131376.P3613096556075000892

`A004525(A131775(n+1)+A131767(n))`
-/

namespace A131376.P3613096556075000892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131775 (n + 1) + A131767 n).toNat

end

end A131376.P3613096556075000892

namespace A131376

/-- `A004525(A131775(n+1)+A131767(n))` -/
def P3613096556075000892.Spec : Prop :=
  ∀ n, P3613096556075000892.a n = A131376 n

end A131376

/-! ## A131376.P18129323094641836175

`A004526(A131775(n+1)+A131767(n))`
-/

namespace A131376.P18129323094641836175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131775 (n + 1) + A131767 n).toNat

end

end A131376.P18129323094641836175

namespace A131376

/-- `A004526(A131775(n+1)+A131767(n))` -/
def P18129323094641836175.Spec : Prop :=
  ∀ n, P18129323094641836175.a n = A131376 n

end A131376

/-!
# A131377: a(n) = (pi(n)+1) mod 2.

The programs for A131377, the canonical program `A131377.P17164050316230312322` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131377 has offset 0).

The definition of A131377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131377.P17164050316230312322

`∑[C(∑{p}[n, #], n)]%2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131377

/-- `∑[C(∑{p}[n, #], n)]%2` -/
def P17164050316230312322.Spec : Prop :=
  ∀ n, (P17164050316230312322.a n : ℤ) = A131377 n

theorem P17164050316230312322.correct : P17164050316230312322.Spec := by
  intro n
  simp only [A131377]

end A131377

/-! ## A131377.P9110995344561170650

`and(1, ∑[C(∑{p}[n, #], n)])`
-/

namespace A131377.P9110995344561170650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131377.P9110995344561170650

namespace A131377

/-- `and(1, ∑[C(∑{p}[n, #], n)])` -/
def P9110995344561170650.Spec : Prop :=
  ∀ n, (P9110995344561170650.a n : ℤ) = A131377 n

theorem P9110995344561170650.correct : P9110995344561170650.Spec := by
  intro n
  simp only [A131377, Nat.add_sub_cancel, A131377.P9110995344561170650.f2, A131377.P9110995344561170650.f1, A131377.P9110995344561170650.a, A131377.P17164050316230312322.f2, A131377.P17164050316230312322.f1, A131377.P17164050316230312322.a, SequenceMachineLib.memo_apply]
  try simp

end A131377

/-! ## A131377.P6322284080883272786

`(∑[char[p?[xor(1, n)]]]+1)%2`
-/

namespace A131377.P6322284080883272786
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A131377.P6322284080883272786

namespace A131377

/-- `(∑[char[p?[xor(1, n)]]]+1)%2` -/
def P6322284080883272786.Spec : Prop :=
  ∀ n, (P6322284080883272786.a n : ℤ) = A131377 n

end A131377

/-! ## A131377.P9470714477075477817

`1-∑[char[p?[xor(1, n)]]]%2`
-/

namespace A131377.P9470714477075477817
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A131377.P9470714477075477817

namespace A131377

/-- `1-∑[char[p?[xor(1, n)]]]%2` -/
def P9470714477075477817.Spec : Prop :=
  ∀ n, P9470714477075477817.a n = A131377 n

end A131377

/-! ## A131377.P7084002444263413042

`(∑[∑{p}[n, val(#, n)]]+1)%2`
-/

namespace A131377.P7084002444263413042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A131377.P7084002444263413042

namespace A131377

/-- `(∑[∑{p}[n, val(#, n)]]+1)%2` -/
def P7084002444263413042.Spec : Prop :=
  ∀ n, (P7084002444263413042.a n : ℤ) = A131377 n

end A131377

/-! ## A131377.P3742234989346723684

`gcd(2, ∑[∑{p}[n, C(#, n)]])-1`
-/

namespace A131377.P3742234989346723684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A131377.P3742234989346723684

namespace A131377

/-- `gcd(2, ∑[∑{p}[n, C(#, n)]])-1` -/
def P3742234989346723684.Spec : Prop :=
  ∀ n, P3742234989346723684.a n = A131377 n

end A131377

/-! ## A131377.P1734222651365908658

`(∑[char[p?[comp[n²]]]]+1)%2`
-/

namespace A131377.P1734222651365908658
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A131377.P1734222651365908658

namespace A131377

/-- `(∑[char[p?[comp[n²]]]]+1)%2` -/
def P1734222651365908658.Spec : Prop :=
  ∀ n, (P1734222651365908658.a n : ℤ) = A131377 n

end A131377

/-! ## A131377.P2980467630368358910

`((-1)^∑[char[p?[xor(1, n)]]]+1)/2`
-/

namespace A131377.P2980467630368358910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2

end

end A131377.P2980467630368358910

namespace A131377

/-- `((-1)^∑[char[p?[xor(1, n)]]]+1)/2` -/
def P2980467630368358910.Spec : Prop :=
  ∀ n, P2980467630368358910.a n = (A131377 n : ℚ)

end A131377

/-! ## A131377.P7459895684377116945

`1-A131378(n)`
-/

namespace A131377.P7459895684377116945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131378 n

end

end A131377.P7459895684377116945

namespace A131377

/-- `1-A131378(n)` -/
def P7459895684377116945.Spec : Prop :=
  ∀ n, P7459895684377116945.a n = A131377 n

end A131377

/-! ## A131377.P17251504342575366331

`and(1, ∑[A246681(n)])`
-/

namespace A131377.P17251504342575366331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131377.P17251504342575366331

namespace A131377

/-- `and(1, ∑[A246681(n)])` -/
def P17251504342575366331.Spec : Prop :=
  ∀ n, P17251504342575366331.a n = A131377 n

end A131377

/-! ## A131377.P922596141806472485

`(A065357(n)+1)/2`
-/

namespace A131377.P922596141806472485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065357 n + 1 : ℚ) / 2

end

end A131377.P922596141806472485

namespace A131377

/-- `(A065357(n)+1)/2` -/
def P922596141806472485.Spec : Prop :=
  ∀ n, P922596141806472485.a n = (A131377 n : ℚ)

end A131377

/-! ## A131377.P6767678509691368766

`gcd(2, A230980(n))-1`
-/

namespace A131377.P6767678509691368766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A230980 n) : ℤ) - 1

end

end A131377.P6767678509691368766

namespace A131377

/-- `gcd(2, A230980(n))-1` -/
def P6767678509691368766.Spec : Prop :=
  ∀ n, P6767678509691368766.a n = A131377 n

end A131377

/-! ## A131377.P12237799942495166644

`1-char[A057812(n+1)]`
-/

namespace A131377.P12237799942495166644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A131377.P12237799942495166644

namespace A131377

/-- `1-char[A057812(n+1)]` -/
def P12237799942495166644.Spec : Prop :=
  ∀ n, P12237799942495166644.a n = A131377 n

end A131377

/-! ## A131377.P12952113356163496150

`(a(n-1)-A010051(n))²` with `a(0)=1`
-/

namespace A131377.P12952113356163496150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A010051 n) ^ 2

end

end A131377.P12952113356163496150

namespace A131377

/-- `(a(n-1)-A010051(n))²` -/
def P12952113356163496150.Spec : Prop :=
  ∀ n, P12952113356163496150.a n = A131377 n

end A131377

/-! ## A131377.P1561123029665145789

`(a(n-1)-A061007(n))²` with `a(0)=1`
-/

namespace A131377.P1561123029665145789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A061007 n) ^ 2

end

end A131377.P1561123029665145789

namespace A131377

/-- `(a(n-1)-A061007(n))²` -/
def P1561123029665145789.Spec : Prop :=
  ∀ n, P1561123029665145789.a n = A131377 n

end A131377

/-! ## A131377.P4852669326098133557

`∑[char[comp[A018252(n+1)]]]%2`
-/

namespace A131377.P4852669326098133557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A131377.P4852669326098133557

namespace A131377

/-- `∑[char[comp[A018252(n+1)]]]%2` -/
def P4852669326098133557.Spec : Prop :=
  ∀ n, (P4852669326098133557.a n : ℤ) = A131377 n

end A131377

/-! ## A131377.P4378918990530819594

`(∑[char[A000040(n+1)]]+1)%2`
-/

namespace A131377.P4378918990530819594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A131377.P4378918990530819594

namespace A131377

/-- `(∑[char[A000040(n+1)]]+1)%2` -/
def P4378918990530819594.Spec : Prop :=
  ∀ n, (P4378918990530819594.a n : ℤ) = A131377 n

end A131377

/-! ## A131377.P7324514672064350375

`A059841(A230980(n))`
-/

namespace A131377.P7324514672064350375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A230980 n).toNat

end

end A131377.P7324514672064350375

namespace A131377

/-- `A059841(A230980(n))` -/
def P7324514672064350375.Spec : Prop :=
  ∀ n, P7324514672064350375.a n = A131377 n

end A131377

/-! ## A131377.P16128535289039209404

`A257992(A101300(n))`
-/

namespace A131377.P16128535289039209404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A101300 n).toNat

end

end A131377.P16128535289039209404

namespace A131377

/-- `A257992(A101300(n))` -/
def P16128535289039209404.Spec : Prop :=
  ∀ n, P16128535289039209404.a n = A131377 n

end A131377

/-! ## A131377.P10008756379235059153

`A131378(n)+A065357(n)`
-/

namespace A131377.P10008756379235059153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n + A065357 n

end

end A131377.P10008756379235059153

namespace A131377

/-- `A131378(n)+A065357(n)` -/
def P10008756379235059153.Spec : Prop :=
  ∀ n, P10008756379235059153.a n = A131377 n

end A131377

/-!
# A131378: Starting with 0, the sequence a(n) changes from 0 to 1 or back when the next number n is a prime.

The programs for A131378, the canonical program `A131378.P6354467565854677558` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131378 has offset 0).

The definition of A131378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131378.P558061422054719199

`∑[char[p?[xor(1, n)]]]%2`
-/

namespace A131378.P558061422054719199
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A131378.P558061422054719199

namespace A131378

/-- `∑[char[p?[xor(1, n)]]]%2` -/
def P558061422054719199.Spec : Prop :=
  ∀ n, (P558061422054719199.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P6354467565854677558

`∑[∑{p}[n, val(#, n)]]%2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131378

/-- `∑[∑{p}[n, val(#, n)]]%2` -/
def P6354467565854677558.Spec : Prop :=
  ∀ n, (P6354467565854677558.a n : ℤ) = A131378 n

theorem P6354467565854677558.correct : P6354467565854677558.Spec := by
  intro n
  simp only [A131378]

end A131378

/-! ## A131378.P7637644380827752254

`∑[∑{p}[n, C(#, n)]]%2`
-/

namespace A131378.P7637644380827752254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A131378.P7637644380827752254

namespace A131378

/-- `∑[∑{p}[n, C(#, n)]]%2` -/
def P7637644380827752254.Spec : Prop :=
  ∀ n, (P7637644380827752254.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P3559186010668404845

`and(1, ∑[∑{p}[n, val(#, n)]])`
-/

namespace A131378.P3559186010668404845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131378.P3559186010668404845

namespace A131378

/-- `and(1, ∑[∑{p}[n, val(#, n)]])` -/
def P3559186010668404845.Spec : Prop :=
  ∀ n, (P3559186010668404845.a n : ℤ) = A131378 n

theorem P3559186010668404845.correct : P3559186010668404845.Spec := by
  intro n
  simp only [A131378, Nat.add_sub_cancel, A131378.P3559186010668404845.f2, A131378.P3559186010668404845.f1, A131378.P3559186010668404845.a, A131378.P6354467565854677558.f2, A131378.P6354467565854677558.f1, A131378.P6354467565854677558.a, SequenceMachineLib.memo_apply]
  try simp

end A131378

/-! ## A131378.P17528902992215706511

`and(1, ∑[∑{p}[n, C(#, n)]])`
-/

namespace A131378.P17528902992215706511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131378.P17528902992215706511

namespace A131378

/-- `and(1, ∑[∑{p}[n, C(#, n)]])` -/
def P17528902992215706511.Spec : Prop :=
  ∀ n, (P17528902992215706511.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P17869411220249925420

`∑[char[p?[comp[n²]]]]%2`
-/

namespace A131378.P17869411220249925420
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A131378.P17869411220249925420

namespace A131378

/-- `∑[char[p?[comp[n²]]]]%2` -/
def P17869411220249925420.Spec : Prop :=
  ∀ n, (P17869411220249925420.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P14580474323846197320

`∑[C(C(2, ∑{e}[n, #]), 2)]%2`
-/

namespace A131378.P14580474323846197320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A131378.P14580474323846197320

namespace A131378

/-- `∑[C(C(2, ∑{e}[n, #]), 2)]%2` -/
def P14580474323846197320.Spec : Prop :=
  ∀ n, (P14580474323846197320.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P14707945395975805659

`(comp[p?[comp[n²]]+n]+n)%2`
-/

namespace A131378.P14707945395975805659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2

end

end A131378.P14707945395975805659

namespace A131378

/-- `(comp[p?[comp[n²]]+n]+n)%2` -/
def P14707945395975805659.Spec : Prop :=
  ∀ n, (P14707945395975805659.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P2246995556565177151

`and(1, comp[p?[comp[n²]]+n]+n)`
-/

namespace A131378.P2246995556565177151
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A131378.P2246995556565177151

namespace A131378

/-- `and(1, comp[p?[comp[n²]]+n]+n)` -/
def P2246995556565177151.Spec : Prop :=
  ∀ n, (P2246995556565177151.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P6090476323303625470

`∑[char[p?[n-(-1)^n]]]²%2`
-/

namespace A131378.P6090476323303625470
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 2

end

end A131378.P6090476323303625470

namespace A131378

/-- `∑[char[p?[n-(-1)^n]]]²%2` -/
def P6090476323303625470.Spec : Prop :=
  ∀ n, (P6090476323303625470.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P15457873718263826274

`1-A131377(n)`
-/

namespace A131378.P15457873718263826274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131377 n

end

end A131378.P15457873718263826274

namespace A131378

/-- `1-A131377(n)` -/
def P15457873718263826274.Spec : Prop :=
  ∀ n, P15457873718263826274.a n = A131378 n

end A131378

/-! ## A131378.P6783486215422898951

`A230980(n)%2`
-/

namespace A131378.P6783486215422898951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 n) 2

end

end A131378.P6783486215422898951

namespace A131378

/-- `A230980(n)%2` -/
def P6783486215422898951.Spec : Prop :=
  ∀ n, P6783486215422898951.a n = A131378 n

end A131378

/-! ## A131378.P3680357890497790962

`char[A057812(n+1)]`
-/

namespace A131378.P3680357890497790962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A131378.P3680357890497790962

namespace A131378

/-- `char[A057812(n+1)]` -/
def P3680357890497790962.Spec : Prop :=
  ∀ n, (P3680357890497790962.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P15745262053716319828

`(1-A065357(n))/2`
-/

namespace A131378.P15745262053716319828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A065357 n : ℚ) / 2

end

end A131378.P15745262053716319828

namespace A131378

/-- `(1-A065357(n))/2` -/
def P15745262053716319828.Spec : Prop :=
  ∀ n, P15745262053716319828.a n = (A131378 n : ℚ)

theorem P15745262053716319828.correct : P15745262053716319828.Spec := by
  intro n
  simp only [A131378, Nat.add_sub_cancel, A131378.P15745262053716319828.a, A131378.P6354467565854677558.f2, A131378.P6354467565854677558.f1, A131378.P6354467565854677558.a, A065357, A065357.P5981080689720192330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131378

/-! ## A131378.P6406588477419400695

`Δ[A131808(abs(1-n))]`
-/

namespace A131378.P6406588477419400695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131378.P6406588477419400695

namespace A131378

/-- `Δ[A131808(abs(1-n))]` -/
def P6406588477419400695.Spec : Prop :=
  ∀ n, P6406588477419400695.a n = A131378 n

end A131378

/-! ## A131378.P14505950944254083390

`and(1, ∑[char[A000040(n+1)]])`
-/

namespace A131378.P14505950944254083390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131378.P14505950944254083390

namespace A131378

/-- `and(1, ∑[char[A000040(n+1)]])` -/
def P14505950944254083390.Spec : Prop :=
  ∀ n, (P14505950944254083390.a n : ℤ) = A131378 n

end A131378

/-! ## A131378.P16152955833081988256

`A071986(A028310(n))`
-/

namespace A131378.P16152955833081988256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A028310 n).toNat

end

end A131378.P16152955833081988256

namespace A131378

/-- `A071986(A028310(n))` -/
def P16152955833081988256.Spec : Prop :=
  ∀ n, P16152955833081988256.a n = A131378 n

end A131378

/-! ## A131378.P216340067115828592

`A000035(A230980(n))`
-/

namespace A131378.P216340067115828592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A230980 n).toNat

end

end A131378.P216340067115828592

namespace A131378

/-- `A000035(A230980(n))` -/
def P216340067115828592.Spec : Prop :=
  ∀ n, P216340067115828592.a n = A131378 n

end A131378

/-! ## A131378.P10053025058731411636

`A071986(A014684(n+1))`
-/

namespace A131378.P10053025058731411636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A014684 (n + 1)).toNat

end

end A131378.P10053025058731411636

namespace A131378

/-- `A071986(A014684(n+1))` -/
def P10053025058731411636.Spec : Prop :=
  ∀ n, P10053025058731411636.a n = A131378 n

end A131378

/-! ## A131378.P5469368167912345072

`A071986(A136623(n+1))`
-/

namespace A131378.P5469368167912345072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A136623 (n + 1)).toNat

end

end A131378.P5469368167912345072

namespace A131378

/-- `A071986(A136623(n+1))` -/
def P5469368167912345072.Spec : Prop :=
  ∀ n, P5469368167912345072.a n = A131378 n

end A131378

/-!
# A131379: Period 4: repeat [1, 0, -1, 1].

The programs for A131379, the canonical program `A131379.P17342040137244748713` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131379 has offset 0).

The definition of A131379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131379.P17342040137244748713

`a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131379

/-- `a(n-4)` -/
def P17342040137244748713.Spec : Prop :=
  ∀ n, P17342040137244748713.a n = A131379 n

theorem P17342040137244748713.correct : P17342040137244748713.Spec := by
  intro n
  simp only [A131379]

end A131379

/-!
# A131380: a(3n) = 2n, a(3n+1) = 2n+2, a(3n+2) = 2n+1.

The programs for A131380, the canonical program `A131380.P17900854454173559574` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131380 has offset 0).

The definition of A131380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131380.P17900854454173559574

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131380

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P17900854454173559574.Spec : Prop :=
  ∀ n, P17900854454173559574.a n = A131380 n

theorem P17900854454173559574.correct : P17900854454173559574.Spec := by
  intro n
  simp only [A131380]

end A131380

/-! ## A131380.P18296587240843359727

`A080425(n)+2*A002264(n)`
-/

namespace A131380.P18296587240843359727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + 2 * A002264 n

end

end A131380.P18296587240843359727

namespace A131380

/-- `A080425(n)+2*A002264(n)` -/
def P18296587240843359727.Spec : Prop :=
  ∀ n, P18296587240843359727.a n = A131380 n

end A131380

/-! ## A131380.P1618210279194855643

`a(n-3)+2` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A131380.P1618210279194855643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 3) + 2

end

end A131380.P1618210279194855643

namespace A131380

/-- `a(n-3)+2` -/
def P1618210279194855643.Spec : Prop :=
  ∀ n, (P1618210279194855643.a n : ℤ) = A131380 n

end A131380

/-! ## A131380.P5047914631245998518

`∑[ceil(acot(cos(n%3)))]-1`
-/

namespace A131380.P5047914631245998518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (Real.cos ((n % 3 : ℕ) : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A131380.P5047914631245998518

namespace A131380

/-- `∑[ceil(acot(cos(n%3)))]-1` -/
def P5047914631245998518.Spec : Prop :=
  ∀ n, P5047914631245998518.a n = A131380 n

end A131380

/-! ## A131380.P9783562711952896530

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131380.P9783562711952896530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131380.P9783562711952896530

namespace A131380

/-- `∑[floor(a(n-3))]` -/
def P9783562711952896530.Spec : Prop :=
  ∀ n, P9783562711952896530.a n = A131380 n

end A131380

/-! ## A131380.P12645109249913390190

`2-floor(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131380.P12645109249913390190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (-a (n - 3))

end

end A131380.P12645109249913390190

namespace A131380

/-- `2-floor(-a(n-3))` -/
def P12645109249913390190.Spec : Prop :=
  ∀ n, P12645109249913390190.a n = A131380 n

end A131380

/-! ## A131380.P11623868918600934237

`2-ceil(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A131380.P11623868918600934237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (-a (n - 3))

end

end A131380.P11623868918600934237

namespace A131380

/-- `2-ceil(-a(n-3))` -/
def P11623868918600934237.Spec : Prop :=
  ∀ n, P11623868918600934237.a n = A131380 n

end A131380

/-! ## A131380.P1008608249522301030

`2-round(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A131380.P1008608249522301030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (-a (n - 3))

end

end A131380.P1008608249522301030

namespace A131380

/-- `2-round(-a(n-3))` -/
def P1008608249522301030.Spec : Prop :=
  ∀ n, P1008608249522301030.a n = A131380 n

end A131380

/-! ## A131380.P16232866280830082445

`ogf((2x-x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A131380.P16232866280830082445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 1] [1, -1, 0, -1, 1] n

end

end A131380.P16232866280830082445

namespace A131380

/-- `ogf((2x-x^2+x^3)/(1-x-x^3+x^4))` -/
def P16232866280830082445.Spec : Prop :=
  ∀ n, P16232866280830082445.a n = A131380 n

end A131380

/-! ## A131380.P8378716105811210697

`4-(4/2-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A131380.P8378716105811210697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 3))

end

end A131380.P8378716105811210697

namespace A131380

/-- `4-(4/2-a(n-3))` -/
def P8378716105811210697.Spec : Prop :=
  ∀ n, P8378716105811210697.a n = (A131380 n : ℚ)

end A131380

/-! ## A131380.P16382254870897581940

`3-(1-a(n-3))%n` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A131380.P16382254870897581940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  3 - Int.tmod (1 - a (n - 3)) (n : ℤ)

end

end A131380.P16382254870897581940

namespace A131380

/-- `3-(1-a(n-3))%n` -/
def P16382254870897581940.Spec : Prop :=
  ∀ n, P16382254870897581940.a n = A131380 n

end A131380

/-! ## A131380.P1411081016236905581

`record[n-2*n²%16]-2*n`
-/

namespace A131380.P1411081016236905581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (n ^ 2 % 16) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A131380.P1411081016236905581

namespace A131380

/-- `record[n-2*n²%16]-2*n` -/
def P1411081016236905581.Spec : Prop :=
  ∀ n, P1411081016236905581.a n = A131380 n

end A131380

/-! ## A131380.P17934947080189829898

`∑[(a(n-3)^(-1))^(-1)]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=1`
-/

namespace A131380.P17934947080189829898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1, 1] fun n f1 =>
  (f1 (n - 3) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131380.P17934947080189829898

namespace A131380

/-- `∑[(a(n-3)^(-1))^(-1)]` -/
def P17934947080189829898.Spec : Prop :=
  ∀ n, P17934947080189829898.a n = (A131380 n : ℚ)

end A131380

/-! ## A131380.P258323026345199204

`n-floor(n-2-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131380.P258323026345199204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  (n : ℤ) - ((n : ℤ) - 2 - a (n - 3))

end

end A131380.P258323026345199204

namespace A131380

/-- `n-floor(n-2-a(n-3))` -/
def P258323026345199204.Spec : Prop :=
  ∀ n, P258323026345199204.a n = A131380 n

end A131380

/-! ## A131380.P2139274765609041800

`record[2*n-val(n+3, 2)]-2*n`
-/

namespace A131380.P2139274765609041800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.valuation (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A131380.P2139274765609041800

namespace A131380

/-- `record[2*n-val(n+3, 2)]-2*n` -/
def P2139274765609041800.Spec : Prop :=
  ∀ n, P2139274765609041800.a n = A131380 n

end A131380

/-! ## A131380.P13376909859364393667

`∑[2-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A131380.P13376909859364393667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n f1 =>
  2 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131380.P13376909859364393667

namespace A131380

/-- `∑[2-a(n-1)-a(n-2)]` -/
def P13376909859364393667.Spec : Prop :=
  ∀ n, P13376909859364393667.a n = A131380 n

end A131380

/-! ## A131380.P4930888726183327604

`2-(a(n-3)-2*a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A131380.P4930888726183327604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (a (n - 3) - 2 * a (n - 3))

end

end A131380.P4930888726183327604

namespace A131380

/-- `2-(a(n-3)-2*a(n-3))` -/
def P4930888726183327604.Spec : Prop :=
  ∀ n, P4930888726183327604.a n = A131380 n

end A131380

/-! ## A131380.P5281759946246263114

`record[2*n+1-gcd(4, 1-n)]-2*n`
-/

namespace A131380.P5281759946246263114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Int.gcd 4 (1 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A131380.P5281759946246263114

namespace A131380

/-- `record[2*n+1-gcd(4, 1-n)]-2*n` -/
def P5281759946246263114.Spec : Prop :=
  ∀ n, P5281759946246263114.a n = A131380 n

end A131380

/-! ## A131380.P16252562603515674585

`record[and(n+2, n+3)+n-2]-2*n`
-/

namespace A131380.P16252562603515674585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 2) (n + 3) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A131380.P16252562603515674585

namespace A131380

/-- `record[and(n+2, n+3)+n-2]-2*n` -/
def P16252562603515674585.Spec : Prop :=
  ∀ n, P16252562603515674585.a n = A131380 n

end A131380

/-!
# A131381: a(n) = binomial(2*n,n) mod (n+2), with n>=1.

The programs for A131381, the canonical program `A131381.P16791513823144608761` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131381 has offset 1).

The definition of A131381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+1), n+1)%(n+3)` (program `A131381.P16791513823144608761`, by `A131381.P16791513823144608761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131381.P16791513823144608761

`C(2*(n+1), n+1)%(n+3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131381

/-- `C(2*(n+1), n+1)%(n+3)` -/
def P16791513823144608761.Spec : Prop :=
  ∀ n, (P16791513823144608761.a n : ℤ) = A131381 (n + 1)

theorem P16791513823144608761.correct : P16791513823144608761.Spec := by
  intro n
  simp only [A131381, Nat.add_sub_cancel]

end A131381

/-! ## A131381.P6529066157994185097

`A065344(n+1)%(n+3)`
-/

namespace A131381.P6529066157994185097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065344 (n + 1)) (n + 3 : ℤ)

end

end A131381.P6529066157994185097

namespace A131381

/-- `A065344(n+1)%(n+3)` -/
def P6529066157994185097.Spec : Prop :=
  ∀ n, P6529066157994185097.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P7937219769260198999

`A065345(n+1)%(n+3)`
-/

namespace A131381.P7937219769260198999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065345 (n + 1)) (n + 3 : ℤ)

end

end A131381.P7937219769260198999

namespace A131381

/-- `A065345(n+1)%(n+3)` -/
def P7937219769260198999.Spec : Prop :=
  ∀ n, P7937219769260198999.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P16531883904404227531

`A065346(n+1)%(n+3)`
-/

namespace A131381.P16531883904404227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065346 (n + 1)) (n + 3 : ℤ)

end

end A131381.P16531883904404227531

namespace A131381

/-- `A065346(n+1)%(n+3)` -/
def P16531883904404227531.Spec : Prop :=
  ∀ n, P16531883904404227531.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P13561836868422527388

`((n+2)*A067770(n+1))%(n+3)`
-/

namespace A131381.P13561836868422527388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 2 : ℤ) * A067770 (n + 1)) (n + 3 : ℤ)

end

end A131381.P13561836868422527388

namespace A131381

/-- `((n+2)*A067770(n+1))%(n+3)` -/
def P13561836868422527388.Spec : Prop :=
  ∀ n, P13561836868422527388.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P2753481899952643558

`(5*A000108(n+1))%(n+3)`
-/

namespace A131381.P2753481899952643558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A000108 (n + 1)) (n + 3 : ℤ)

end

end A131381.P2753481899952643558

namespace A131381

/-- `(5*A000108(n+1))%(n+3)` -/
def P2753481899952643558.Spec : Prop :=
  ∀ n, P2753481899952643558.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P5803878696764995321

`Δ[A006134(n)]%(n+3)`
-/

namespace A131381.P5803878696764995321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 3 : ℤ)

end

end A131381.P5803878696764995321

namespace A131381

/-- `Δ[A006134(n)]%(n+3)` -/
def P5803878696764995321.Spec : Prop :=
  ∀ n, P5803878696764995321.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P13221944194583941827

`A000984(n+1)%(n+3)`
-/

namespace A131381.P13221944194583941827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) (n + 3 : ℤ)

end

end A131381.P13221944194583941827

namespace A131381

/-- `A000984(n+1)%(n+3)` -/
def P13221944194583941827.Spec : Prop :=
  ∀ n, P13221944194583941827.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P7169563286748718566

`A337499(2*n+1)%(n+3)`
-/

namespace A131381.P7169563286748718566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337499 (2 * n + 1)) (n + 3 : ℤ)

end

end A131381.P7169563286748718566

namespace A131381

/-- `A337499(2*n+1)%(n+3)` -/
def P7169563286748718566.Spec : Prop :=
  ∀ n, P7169563286748718566.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P12199820302965880470

`A051944(n+1)%(n+3)`
-/

namespace A131381.P12199820302965880470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051944 (n + 1)) (n + 3 : ℤ)

end

end A131381.P12199820302965880470

namespace A131381

/-- `A051944(n+1)%(n+3)` -/
def P12199820302965880470.Spec : Prop :=
  ∀ n, P12199820302965880470.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P16616200790038086678

`A028270(n+2)%(n+3)`
-/

namespace A131381.P16616200790038086678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028270 (n + 2)) (n + 3 : ℤ)

end

end A131381.P16616200790038086678

namespace A131381

/-- `A028270(n+2)%(n+3)` -/
def P16616200790038086678.Spec : Prop :=
  ∀ n, P16616200790038086678.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P425871576168179073

`A050477(n+1)%(n+3)`
-/

namespace A131381.P425871576168179073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050477 (n + 1)) (n + 3 : ℤ)

end

end A131381.P425871576168179073

namespace A131381

/-- `A050477(n+1)%(n+3)` -/
def P425871576168179073.Spec : Prop :=
  ∀ n, P425871576168179073.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P14694375680963939635

`A050489(n+1)%(n+3)`
-/

namespace A131381.P14694375680963939635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050489 (n + 1)) (n + 3 : ℤ)

end

end A131381.P14694375680963939635

namespace A131381

/-- `A050489(n+1)%(n+3)` -/
def P14694375680963939635.Spec : Prop :=
  ∀ n, P14694375680963939635.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P3885221930542758015

`A081496(n+2)%(n+3)`
-/

namespace A131381.P3885221930542758015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081496 (n + 2)) (n + 3 : ℤ)

end

end A131381.P3885221930542758015

namespace A131381

/-- `A081496(n+2)%(n+3)` -/
def P3885221930542758015.Spec : Prop :=
  ∀ n, P3885221930542758015.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P2168129318510534698

`A056040(2*(n+1))%(n+3)`
-/

namespace A131381.P2168129318510534698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056040 (2 * (n + 1))) (n + 3 : ℤ)

end

end A131381.P2168129318510534698

namespace A131381

/-- `A056040(2*(n+1))%(n+3)` -/
def P2168129318510534698.Spec : Prop :=
  ∀ n, P2168129318510534698.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P9587927190709512102

`A141222(n+1)%(n+3)`
-/

namespace A131381.P9587927190709512102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141222 (n + 1)) (n + 3 : ℤ)

end

end A131381.P9587927190709512102

namespace A131381

/-- `A141222(n+1)%(n+3)` -/
def P9587927190709512102.Spec : Prop :=
  ∀ n, P9587927190709512102.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P1702993664685958459

`A180266(n+2)%(n+3)`
-/

namespace A131381.P1702993664685958459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180266 (n + 2)) (n + 3 : ℤ)

end

end A131381.P1702993664685958459

namespace A131381

/-- `A180266(n+2)%(n+3)` -/
def P1702993664685958459.Spec : Prop :=
  ∀ n, P1702993664685958459.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P3116115280145135077

`A352626(n+2)%(n+3)`
-/

namespace A131381.P3116115280145135077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352626 (n + 2)) (n + 3 : ℤ)

end

end A131381.P3116115280145135077

namespace A131381

/-- `A352626(n+2)%(n+3)` -/
def P3116115280145135077.Spec : Prop :=
  ∀ n, P3116115280145135077.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P16122957466044119902

`A003583(n+1)%(n+3)`
-/

namespace A131381.P16122957466044119902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003583 (n + 1)) (n + 3 : ℤ)

end

end A131381.P16122957466044119902

namespace A131381

/-- `A003583(n+1)%(n+3)` -/
def P16122957466044119902.Spec : Prop :=
  ∀ n, P16122957466044119902.a n = A131381 (n + 1)

end A131381

/-! ## A131381.P18437934204445992605

`A119578(n+1)%(n+3)`
-/

namespace A131381.P18437934204445992605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119578 (n + 1)) (n + 3 : ℤ)

end

end A131381.P18437934204445992605

namespace A131381

/-- `A119578(n+1)%(n+3)` -/
def P18437934204445992605.Spec : Prop :=
  ∀ n, P18437934204445992605.a n = A131381 (n + 1)

end A131381

/-!
# A131382: Minimal number m such that Sum_digits(n*m)=n.

The programs for A131382, there is no canonical definition to state claims against.
-/

/-! ## A131382.P8859299091669399270

`A002998(n+1)/(n+1)`
-/

namespace A131382.P8859299091669399270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002998 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A131382.P8859299091669399270

/-! ## A131382.P13147180145223284211

`(n+1)^A008683(A358790(n))*A002998(n+1)`
-/

namespace A131382.P13147180145223284211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A358790 n).toNat : ℤ) * (A002998 (n + 1) : ℚ)

end

end A131382.P13147180145223284211

/-! ## A131382.P4410258018802858170

`(n+1)^A008683(A046704(n+1))*A002998(n+1)`
-/

namespace A131382.P4410258018802858170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A046704 (n + 1)).toNat : ℤ) * (A002998 (n + 1) : ℚ)

end

end A131382.P4410258018802858170

/-! ## A131382.P8049983651075161649

`(n+1)^A008683(A077800(n+1))*A002998(n+1)`
-/

namespace A131382.P8049983651075161649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A077800 (n + 1)).toNat : ℤ) * (A002998 (n + 1) : ℚ)

end

end A131382.P8049983651075161649

/-! ## A131382.P12364632622587481322

`(n+1)^A008683(A338018(n+2))*A002998(n+1)`
-/

namespace A131382.P12364632622587481322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A338018 (n + 2)).toNat : ℤ) * (A002998 (n + 1) : ℚ)

end

end A131382.P12364632622587481322

/-! ## A131382.P9637389118376357152

`A082259(∑[n]+1)/(n+1)`
-/

namespace A131382.P9637389118376357152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082259 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A131382.P9637389118376357152

/-! ## A131382.P11276137321666568507

`A082263(∑[n]+1)`
-/

namespace A131382.P11276137321666568507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082263 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A131382.P11276137321666568507

/-! ## A131382.P3457450651368789875

`A245062(∑[n]+1)/(n+1)`
-/

namespace A131382.P3457450651368789875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245062 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A131382.P3457450651368789875

/-!
# A131383: Total digital sum of n: sum of the digital sums of n for all the bases 1 to n (a 'digital sumorial').

The programs for A131383, there is no canonical definition to state claims against.
-/

/-! ## A131383.P4550340027429599232

`∑[A085392((lcm(n+1, ∑[n])+1+n)²)]`
-/

namespace A131383.P4550340027429599232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) + 1 + n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131383.P4550340027429599232

/-! ## A131383.P2114840593378482005

`∑[A039635(∑[A053501(n)])]`
-/

namespace A131383.P2114840593378482005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131383.P2114840593378482005

/-! ## A131383.P11864635484323364327

`∑[A039635(∑[A087447(n)])]`
-/

namespace A131383.P11864635484323364327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131383.P11864635484323364327

/-! ## A131383.P1386008494576895284

`∑[A303077(∑[A053501(n)])]`
-/

namespace A131383.P1386008494576895284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303077 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131383.P1386008494576895284

/-! ## A131383.P7112057790445996355

`∑[A303077(∑[A087447(n)])]`
-/

namespace A131383.P7112057790445996355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303077 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131383.P7112057790445996355

/-!
# A131384: Product of the digital sums of n for all the bases 2 to n (a 'digital-sum factorial').

The programs for A131384, there is no canonical definition to state claims against.
-/

/-! ## A131384.P10201722509702124044

`A004074(A002322(n+1)*A135688(n+1))`
-/

namespace A131384.P10201722509702124044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A002322 (n + 1) * A135688 (n + 1)).toNat

end

end A131384.P10201722509702124044

/-! ## A131384.P12363818526418307466

`∏[A294932(n^n)]`
-/

namespace A131384.P12363818526418307466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131384.P12363818526418307466

/-! ## A131384.P10072337029390902398

`A119918(A054317(n+4))`
-/

namespace A131384.P10072337029390902398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119918 (A054317 (n + 4)).toNat

end

end A131384.P10072337029390902398

/-!
# A131385: Product ceiling(n/1)*ceiling(n/2)*ceiling(n/3)*...*ceiling(n/n) (the 'ceiling factorial').

The programs for A131385, there is no canonical definition to state claims against.
-/

/-! ## A131385.P8907238481129710175

`A065033(n*A359039(n))`
-/

namespace A131385.P8907238481129710175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n : ℤ) * A359039 n).toNat

end

end A131385.P8907238481129710175

/-! ## A131385.P8954988232328140154

`A003963(A270598(n))*A028310(n)`
-/

namespace A131385.P8954988232328140154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A270598 n).toNat * A028310 n

end

end A131385.P8954988232328140154

/-! ## A131385.P16235111907549200778

`A318622(A103454(n))`
-/

namespace A131385.P16235111907549200778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A103454 n).toNat

end

end A131385.P16235111907549200778

/-!
# A131386: a(n) = (-1)^n*n*(n-2).

The programs for A131386, the canonical program `A131386.P9761448446445103520` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131386 has offset 1).

The definition of A131386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*(n+1)*(n-1)` (program `A131386.P9761448446445103520`, by `A131386.P9761448446445103520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131386.P9761448446445103520

`(-1)^(n+1)*(n+1)*(n-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131386

/-- `(-1)^(n+1)*(n+1)*(n-1)` -/
def P9761448446445103520.Spec : Prop :=
  ∀ n, P9761448446445103520.a n = A131386 (n + 1)

theorem P9761448446445103520.correct : P9761448446445103520.Spec := by
  intro n
  simp only [A131386, Nat.add_sub_cancel]

end A131386

/-! ## A131386.P10401226200183643742

`xor(-n², (-1)^n)`
-/

namespace A131386.P10401226200183643742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n ^ 2 : ℤ)) ((-1) ^ n)

end

end A131386.P10401226200183643742

namespace A131386

/-- `xor(-n², (-1)^n)` -/
def P10401226200183643742.Spec : Prop :=
  ∀ n, P10401226200183643742.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P4086857064707212597

`ogf((1+3x)/(1+3x+3x^2+x^3))`
-/

namespace A131386.P4086857064707212597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 3, 3, 1] n

end

end A131386.P4086857064707212597

namespace A131386

/-- `ogf((1+3x)/(1+3x+3x^2+x^3))` -/
def P4086857064707212597.Spec : Prop :=
  ∀ n, P4086857064707212597.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P11694423987020754958

`(1-n²)/(-1)^a(n-1)` with `a(0)=1`
-/

namespace A131386.P11694423987020754958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n ^ 2 : ℤ) : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A131386.P11694423987020754958

namespace A131386

/-- `(1-n²)/(-1)^a(n-1)` -/
def P11694423987020754958.Spec : Prop :=
  ∀ n, P11694423987020754958.a n = (A131386 (n + 1) : ℝ)

end A131386

/-! ## A131386.P5983802045526077714

`∑[a(n-1)-2]/(-1)^n` with `a(0)=1`
-/

namespace A131386.P5983802045526077714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A131386.P5983802045526077714

namespace A131386

/-- `∑[a(n-1)-2]/(-1)^n` -/
def P5983802045526077714.Spec : Prop :=
  ∀ n, P5983802045526077714.a n = (A131386 (n + 1) : ℚ)

end A131386

/-! ## A131386.P12547988445505817019

`floor((-1)^n*∑[a(n-1)-2])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131386.P12547988445505817019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131386.P12547988445505817019

namespace A131386

/-- `floor((-1)^n*∑[a(n-1)-2])` -/
def P12547988445505817019.Spec : Prop :=
  ∀ n, P12547988445505817019.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P9118494000569206601

`(n+1)*(n-1)/(2*and(1, n)-1)`
-/

namespace A131386.P9118494000569206601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n : ℤ) - 1) : ℚ) / ((2 * Nat.land 1 n : ℤ) - 1 : ℚ)

end

end A131386.P9118494000569206601

namespace A131386

/-- `(n+1)*(n-1)/(2*and(1, n)-1)` -/
def P9118494000569206601.Spec : Prop :=
  ∀ n, P9118494000569206601.a n = (A131386 (n + 1) : ℚ)

end A131386

/-! ## A131386.P18283690272252574003

`n+1-Δ[A392334(n)]`
-/

namespace A131386.P18283690272252574003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A131386.P18283690272252574003

namespace A131386

/-- `n+1-Δ[A392334(n)]` -/
def P18283690272252574003.Spec : Prop :=
  ∀ n, P18283690272252574003.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P15372453538757424054

`-((n²-1)/A033999(n))`
-/

namespace A131386.P15372453538757424054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((n ^ 2 : ℤ) - 1 : ℚ) / (A033999 n : ℚ))

end

end A131386.P15372453538757424054

namespace A131386

/-- `-((n²-1)/A033999(n))` -/
def P15372453538757424054.Spec : Prop :=
  ∀ n, P15372453538757424054.a n = (A131386 (n + 1) : ℚ)

end A131386

/-! ## A131386.P714001008561329653

`A157142(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A131386.P714001008561329653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157142 (n - 1) - a (n - 1)

end

end A131386.P714001008561329653

namespace A131386

/-- `A157142(n-1)-a(n-1)` -/
def P714001008561329653.Spec : Prop :=
  ∀ n, P714001008561329653.a n = A131386 (n + 1)

theorem P714001008561329653.correct : P714001008561329653.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131386, Nat.add_sub_cancel, A131386.P714001008561329653.a, A131386.P9761448446445103520.a, A157142, A157142.P6038675094139632517.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131386, Nat.add_sub_cancel, A131386.P714001008561329653.a, A131386.P9761448446445103520.a, A157142, A157142.P6038675094139632517.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131386

/-! ## A131386.P14269281939499654124

`A152032(n)-A266085(n)`
-/

namespace A131386.P14269281939499654124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 n - A266085 n

end

end A131386.P14269281939499654124

namespace A131386

/-- `A152032(n)-A266085(n)` -/
def P14269281939499654124.Spec : Prop :=
  ∀ n, P14269281939499654124.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P3557424278885546302

`A033999(n)+n*A181983(n)`
-/

namespace A131386.P3557424278885546302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (n : ℤ) * A181983 n

end

end A131386.P3557424278885546302

namespace A131386

/-- `A033999(n)+n*A181983(n)` -/
def P3557424278885546302.Spec : Prop :=
  ∀ n, P3557424278885546302.a n = A131386 (n + 1)

theorem P3557424278885546302.correct : P3557424278885546302.Spec := by
  intro n
  simp only [A131386, Nat.add_sub_cancel, A131386.P3557424278885546302.a, A131386.P9761448446445103520.a, A033999, A033999.P17703899380244199787.a, A181983, A181983.P3699358180015306672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131386

/-! ## A131386.P682645746233123112

`A033999(n)-n*A038608(n)`
-/

namespace A131386.P682645746233123112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - (n : ℤ) * A038608 n

end

end A131386.P682645746233123112

namespace A131386

/-- `A033999(n)-n*A038608(n)` -/
def P682645746233123112.Spec : Prop :=
  ∀ n, P682645746233123112.a n = A131386 (n + 1)

theorem P682645746233123112.correct : P682645746233123112.Spec := by
  intro n
  simp only [A131386, Nat.add_sub_cancel, A131386.P682645746233123112.a, A131386.P9761448446445103520.a, A033999, A033999.P17703899380244199787.a, A038608, A038608.P11893247063823867553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131386

/-! ## A131386.P11203690349129450738

`A093178(n)²-A009531(n)²`
-/

namespace A131386.P11203690349129450738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2 - A009531 n ^ 2

end

end A131386.P11203690349129450738

namespace A131386

/-- `A093178(n)²-A009531(n)²` -/
def P11203690349129450738.Spec : Prop :=
  ∀ n, P11203690349129450738.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P6820923857600028851

`2*A093178(n)²-A002522(n)`
-/

namespace A131386.P6820923857600028851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093178 n ^ 2 - A002522 n

end

end A131386.P6820923857600028851

namespace A131386

/-- `2*A093178(n)²-A002522(n)` -/
def P6820923857600028851.Spec : Prop :=
  ∀ n, P6820923857600028851.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P11790264312876986797

`2-Δ[A103832(n)]+n`
-/

namespace A131386.P11790264312876986797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A131386.P11790264312876986797

namespace A131386

/-- `2-Δ[A103832(n)]+n` -/
def P11790264312876986797.Spec : Prop :=
  ∀ n, P11790264312876986797.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P17744657819199184464

`Δ[A103831(n)]-(n+2)`
-/

namespace A131386.P17744657819199184464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A131386.P17744657819199184464

namespace A131386

/-- `Δ[A103831(n)]-(n+2)` -/
def P17744657819199184464.Spec : Prop :=
  ∀ n, P17744657819199184464.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P3365179999451133013

`A181983(n+1)-A374157(n+1)*A374157(n)`
-/

namespace A131386.P3365179999451133013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1) - A374157 (n + 1) * A374157 n

end

end A131386.P3365179999451133013

namespace A131386

/-- `A181983(n+1)-A374157(n+1)*A374157(n)` -/
def P3365179999451133013.Spec : Prop :=
  ∀ n, P3365179999451133013.a n = A131386 (n + 1)

end A131386

/-! ## A131386.P6965747144026680009

`A181983(n+1)+A181983(n+1)-A162395(n+1)`
-/

namespace A131386.P6965747144026680009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1) + (A181983 (n + 1) - A162395 (n + 1))

end

end A131386.P6965747144026680009

namespace A131386

/-- `A181983(n+1)+A181983(n+1)-A162395(n+1)` -/
def P6965747144026680009.Spec : Prop :=
  ∀ n, P6965747144026680009.a n = A131386 (n + 1)

theorem P6965747144026680009.correct : P6965747144026680009.Spec := by
  intro n
  simp only [A131386, Nat.add_sub_cancel, A131386.P6965747144026680009.a, A131386.P9761448446445103520.a, A162395, A162395.P2555601170956106588.a, A181983, A181983.P3699358180015306672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131386

/-! ## A131386.P86891232790644061

`A275543(n²)-A275496(n)`
-/

namespace A131386.P86891232790644061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (n ^ 2) - A275496 n

end

end A131386.P86891232790644061

namespace A131386

/-- `A275543(n²)-A275496(n)` -/
def P86891232790644061.Spec : Prop :=
  ∀ n, P86891232790644061.a n = A131386 (n + 1)

end A131386

/-!
# A131387: Product of the nonzero digital products of n for all the bases 1 to n (a 'total digital-product factorial').

The programs for A131387, there is no canonical definition to state claims against.
-/

/-! ## A131387.P10617596153596445676

`∏[A347711(A046469(n))]`
-/

namespace A131387.P10617596153596445676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347711 (A046469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131387.P10617596153596445676

/-! ## A131387.P396796118952283027

`∏[A137672(A293745(n))]`
-/

namespace A131387.P396796118952283027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137672 (A293745 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131387.P396796118952283027

/-! ## A131387.P6203402370291615809

`∏[A268057(A000032(2*n+1))]`
-/

namespace A131387.P6203402370291615809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268057 (A000032 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A131387.P6203402370291615809

/-! ## A131387.P6003823616792925522

`A003557(∏[A194959(abs(1-4*n))])`
-/

namespace A131387.P6003823616792925522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131387.P6003823616792925522

/-! ## A131387.P8423040385166929836

`A244581(A287629(n))`
-/

namespace A131387.P8423040385166929836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244581 (A287629 n).toNat

end

end A131387.P8423040385166929836

/-!
# A131388: Sequence (a(n)) generated by Rule 1 (in Comments) with a(1) = 1 and d(1) = 0.

The programs for A131388, there is no canonical definition to state claims against.
-/

/-! ## A131388.P1751336332499102062

`A257705(n+1)+1`
-/

namespace A131388.P1751336332499102062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1) + 1

end

end A131388.P1751336332499102062

/-! ## A131388.P14313110601292609720

`∑[A131389(n+1)]+1`
-/

namespace A131388.P14313110601292609720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131388.P14313110601292609720

/-! ## A131388.P10992040601031466344

`∑[A131389(A028310(n)+1)]`
-/

namespace A131388.P10992040601031466344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131388.P10992040601031466344

/-! ## A131388.P4150833804201173402

`∑[A131389(A014682(A103517(n)))]`
-/

namespace A131388.P4150833804201173402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (A014682 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131388.P4150833804201173402

/-! ## A131388.P1972808218565182557

`A257878(A028310(n))+A057427(n)`
-/

namespace A131388.P1972808218565182557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (A028310 n).toNat + A057427 n

end

end A131388.P1972808218565182557

/-! ## A131388.P14478844914978725745

`A257878(n+1)-A131389(n+2)+1`
-/

namespace A131388.P14478844914978725745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (n + 1) - A131389 (n + 2) + 1

end

end A131388.P14478844914978725745

/-! ## A131388.P5465090456352298923

`A257706(n+1)+2-A131389(n+2)`
-/

namespace A131388.P5465090456352298923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257706 (n + 1) + (2 - A131389 (n + 2))

end

end A131388.P5465090456352298923

/-! ## A131388.P15089698342612183729

`A257878(A028310(n))+record[A020639(n+2)]%2`
-/

namespace A131388.P15089698342612183729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (A028310 n).toNat + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A131388.P15089698342612183729

/-! ## A131388.P10651480862208141187

`∑[A131389(A233583(n+2))]`
-/

namespace A131388.P10651480862208141187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131388.P10651480862208141187

/-!
# A131389: Sequence (d(n)) generated by Rule 1 (see Comments) with a(1) = 1 and d(1) = 0.

The programs for A131389, there is no canonical definition to state claims against.
-/

/-! ## A131389.P918731861303970528

`Δ[A257705(floor(n-n/(n+1))+1)]`
-/

namespace A131389.P918731861303970528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131389.P918731861303970528

/-! ## A131389.P8207054568630195634

`Δ[A131388(A028310(n))]`
-/

namespace A131389.P8207054568630195634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131389.P8207054568630195634

/-! ## A131389.P10026787780963640179

`A131388(n+1)-A131388(A028310(n))`
-/

namespace A131389.P10026787780963640179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (n + 1) - A131388 (A028310 n).toNat

end

end A131389.P10026787780963640179

/-! ## A131389.P4169426491826479170

`A257705(n+1)-A257705(A028310(n))`
-/

namespace A131389.P4169426491826479170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1) - A257705 (A028310 n).toNat

end

end A131389.P4169426491826479170

/-! ## A131389.P17577933428287884256

`Δ[A131388(1-A057427(n)+n)]`
-/

namespace A131389.P17577933428287884256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (1 - A057427 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131389.P17577933428287884256

/-! ## A131389.P7340035025674613842

`A131388(n+1)-A131388(A065033(2*n))`
-/

namespace A131389.P7340035025674613842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (n + 1) - A131388 (A065033 (2 * n)).toNat

end

end A131389.P7340035025674613842

/-! ## A131389.P5827114981393825908

`Δ[A131388(A065033(2*n))]`
-/

namespace A131389.P5827114981393825908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131388 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131389.P5827114981393825908

/-!
# A131390: Conjectured permutation of the positive integers; inverse of conjectured permutation A131388.

The programs for A131390, there is no canonical definition to state claims against.
-/

/-! ## A131390.P2497117941600476987

`A131395(A077168(n))`
-/

namespace A131390.P2497117941600476987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131395 (A077168 n).toNat

end

end A131390.P2497117941600476987

/-! ## A131390.P9188356350668025385

`A131395(A043319(n+1))`
-/

namespace A131390.P9188356350668025385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131395 (A043319 (n + 1)).toNat

end

end A131390.P9188356350668025385

/-! ## A131390.P15111234364879707645

`A131395(A044916(n+1))`
-/

namespace A131390.P15111234364879707645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131395 (A044916 (n + 1)).toNat

end

end A131390.P15111234364879707645

/-! ## A131390.P9628553181525503997

`A131395(A055646(n+1))`
-/

namespace A131390.P9628553181525503997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131395 (A055646 (n + 1)).toNat

end

end A131390.P9628553181525503997

/-! ## A131390.P601214571220140615

`A131395(A055647(n)+1)`
-/

namespace A131390.P601214571220140615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131395 (A055647 n + 1).toNat

end

end A131390.P601214571220140615

/-!
# A131391: Positions of positive integers in A131389, minus 1.

The programs for A131391, there is no canonical definition to state claims against.
-/

/-! ## A131391.P16586952670544749139

`comp[A131392(n+1)-1]+1`
-/

namespace A131391.P16586952670544749139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131392 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131391.P16586952670544749139

/-! ## A131391.P10850993734115145226

`A175007(n+2)-1`
-/

namespace A131391.P10850993734115145226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175007 (n + 2) - 1

end

end A131391.P10850993734115145226

/-! ## A131391.P6561908288509590665

`lt[0, A131389(n+1)]`
-/

namespace A131391.P6561908288509590665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131391.P6561908288509590665

/-! ## A131391.P3041862446309959747

`lt[A257705(n+1), A257878(n+1)]+1`
-/

namespace A131391.P3041862446309959747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A131391.P3041862446309959747

/-! ## A131391.P16827290782464457632

`lt[A257705(A028310(n)), A257705(n+1)]`
-/

namespace A131391.P16827290782464457632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131391.P16827290782464457632

/-! ## A131391.P2131299254835333666

`A023443(A175007(n+2))`
-/

namespace A131391.P2131299254835333666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175007 (n + 2)).toNat

end

end A131391.P2131299254835333666

/-!
# A131392: Positions of negative integers in A131389, minus 1.

The programs for A131392, there is no canonical definition to state claims against.
-/

/-! ## A131392.P6278629327440755464

`A175008(n+1)-1`
-/

namespace A131392.P6278629327440755464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175008 (n + 1) - 1

end

end A131392.P6278629327440755464

/-! ## A131392.P10574925946957647101

`lt[A257706(n+1), A257705(n+1)]+1`
-/

namespace A131392.P10574925946957647101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A131392.P10574925946957647101

/-! ## A131392.P3393424709890884969

`lt[A257878(n+1), A257705(n+1)]+1`
-/

namespace A131392.P3393424709890884969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A131392.P3393424709890884969

/-! ## A131392.P1536807715891686698

`lt[A131389(n+1), 0]`
-/

namespace A131392.P1536807715891686698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131392.P1536807715891686698

/-! ## A131392.P10375924032165725991

`lt[A131389(abs(C(2, n)-n)), 0]-1`
-/

namespace A131392.P10375924032165725991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A131392.P10375924032165725991

/-! ## A131392.P18307436995516671794

`lt[A131389(n-a(2%n)), 0]-2` with `a(0)=0`
-/

namespace A131392.P18307436995516671794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A131389 ((n : ℤ) - f1 (2 % n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 2

end

end A131392.P18307436995516671794

/-! ## A131392.P6025540998312044210

`lt[A131389(abs(abs(1-n)-(n-1)-n)), 0]-1`
-/

namespace A131392.P6025540998312044210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 |(|1 - (n : ℤ)| - ((n : ℤ) - 1) - (n : ℤ))|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A131392.P6025540998312044210

/-! ## A131392.P16485117908079586159

`A023443(A175008(n+1))`
-/

namespace A131392.P16485117908079586159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175008 (n + 1)).toNat

end

end A131392.P16485117908079586159

/-! ## A131392.P16884476661866782536

`lt[A257705(n+1), A257705(A028310(n))]`
-/

namespace A131392.P16884476661866782536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131392.P16884476661866782536

/-! ## A131392.P3899373841227174162

`A023444(A175008(n+1)+1)`
-/

namespace A131392.P3899373841227174162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A175008 (n + 1) + 1).toNat

end

end A131392.P3899373841227174162

/-! ## A131392.P3078417983201941417

`A289207(A175008(n+1)+1)`
-/

namespace A131392.P3078417983201941417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A175008 (n + 1) + 1).toNat

end

end A131392.P3078417983201941417

/-! ## A131392.P18152070613137059579

`A004396(A175008(n+1)+1+n)`
-/

namespace A131392.P18152070613137059579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A175008 (n + 1) + 1 + (n : ℤ)).toNat

end

end A131392.P18152070613137059579

/-! ## A131392.P14303056997300109494

`A140106(2*A175008(n+1))`
-/

namespace A131392.P14303056997300109494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A175008 (n + 1)).toNat

end

end A131392.P14303056997300109494

/-!
# A131393: Conjectured permutation of the positive integers using Rule 2 with a(1)=1.

The programs for A131393, there is no canonical definition to state claims against.
-/

/-! ## A131393.P8170460860432287625

`∑[A131394(n+1)]+1`
-/

namespace A131393.P8170460860432287625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A131393.P8170460860432287625

/-! ## A131393.P15102780595035763208

`∑[A131394(A028310(n)+1)]`
-/

namespace A131393.P15102780595035763208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131394 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131393.P15102780595035763208

/-! ## A131393.P9953638983034363754

`A131394(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A131393.P9953638983034363754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131394 (n + 1) + a (A023443 n).toNat

end

end A131393.P9953638983034363754

/-! ## A131393.P2794019092502408643

`∑[A131394(A254667(n+1))]`
-/

namespace A131393.P2794019092502408643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131394 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131393.P2794019092502408643

/-! ## A131393.P17050495638187367458

`∑[A131394(A233583(n+2))]`
-/

namespace A131393.P17050495638187367458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131394 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131393.P17050495638187367458

/-!
# A131394: Conjectured permutation of the integers using Rule 2 with A131393(1)=1.

The programs for A131394, there is no canonical definition to state claims against.
-/

/-! ## A131394.P15861070837011303076

`Δ[A131393(abs((n+2)%(n+1)-n)+1)]`
-/

namespace A131394.P15861070837011303076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (|(((n + 2) % (n + 1) : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P15861070837011303076

/-! ## A131394.P8753062336663960878

`Δ[A131393(A028310(n))]`
-/

namespace A131394.P8753062336663960878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P8753062336663960878

/-! ## A131394.P3529890571441117040

`A131393(n+1)-A131393(A028310(n))`
-/

namespace A131394.P3529890571441117040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1) - A131393 (A028310 n).toNat

end

end A131394.P3529890571441117040

/-! ## A131394.P11880693437333764259

`A131393(n+1)-A131393(A000007(n)+n)`
-/

namespace A131394.P11880693437333764259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1) - A131393 (A000007 n + (n : ℤ)).toNat

end

end A131394.P11880693437333764259

/-! ## A131394.P2277385189461245517

`Δ[A131393(A000007(n)+n)]`
-/

namespace A131394.P2277385189461245517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P2277385189461245517

/-! ## A131394.P14621638713663071853

`Δ[A131393(A004275(n+1)-n)]`
-/

namespace A131394.P14621638713663071853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P14621638713663071853

/-! ## A131394.P10756132776097404704

`Δ[A131393(A008619(A004275(n)))]`
-/

namespace A131394.P10756132776097404704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P10756132776097404704

/-! ## A131394.P1843560833196483222

`Δ[A131393(A008619(A004273(n)))]`
-/

namespace A131394.P1843560833196483222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P1843560833196483222

/-! ## A131394.P2340752926039908710

`A131393(n+1)-A131393(A065033(2*n))`
-/

namespace A131394.P2340752926039908710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1) - A131393 (A065033 (2 * n)).toNat

end

end A131394.P2340752926039908710

/-! ## A131394.P2630350667602956443

`Δ[A131393(A065033(2*n))]`
-/

namespace A131394.P2630350667602956443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P2630350667602956443

/-! ## A131394.P13426194945561301877

`Δ[A131393(A123108(2*n))]`
-/

namespace A131394.P13426194945561301877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P13426194945561301877

/-! ## A131394.P10657423512880403296

`Δ[A131393(A101279(Δ[n²]))]`
-/

namespace A131394.P10657423512880403296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A101279 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P10657423512880403296

/-! ## A131394.P1937459226095243317

`Δ[A131393(A008621(A130824(n)))]`
-/

namespace A131394.P1937459226095243317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A008621 (A130824 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P1937459226095243317

/-! ## A131394.P2350025669147735611

`Δ[A131393(A007318(A000124(n)))]`
-/

namespace A131394.P2350025669147735611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P2350025669147735611

/-! ## A131394.P17630999000728825215

`Δ[A131393(A134478(A000217(n)))]`
-/

namespace A131394.P17630999000728825215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P17630999000728825215

/-! ## A131394.P1701172982970846638

`A131393(n+1)-A131393(A137735(n²))`
-/

namespace A131394.P1701172982970846638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1) - A131393 (A137735 (n ^ 2)).toNat

end

end A131394.P1701172982970846638

/-! ## A131394.P3384057009327482743

`Δ[A131393(A137735(n²))]`
-/

namespace A131394.P3384057009327482743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131394.P3384057009327482743

/-!
# A131395: Conjectured permutation of the positive integers; inverse of conjectured permutation A131393.

The programs for A131395, there is no canonical definition to state claims against.
-/

/-! ## A131395.P3101406272921847737

`or(A002262(A014375(n+1)), A131390(n+1))`
-/

namespace A131395.P3101406272921847737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A014375 (n + 1)).toNat) (A131390 (n + 1))

end

end A131395.P3101406272921847737

/-! ## A131395.P11767578268117382250

`or(A131390(n+1), A185284(A022840(n+1)))`
-/

namespace A131395.P11767578268117382250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131390 (n + 1)) (A185284 (A022840 (n + 1)).toNat)

end

end A131395.P11767578268117382250

/-! ## A131395.P12656990043571977409

`or(A131390(n+1), A337548(A143632(n+4)))`
-/

namespace A131395.P12656990043571977409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131390 (n + 1)) (A337548 (A143632 (n + 4)).toNat)

end

end A131395.P12656990043571977409

/-! ## A131395.P18256147149417421996

`or(A131390(n+1), A185284(A005097(n+6)))`
-/

namespace A131395.P18256147149417421996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131390 (n + 1)) (A185284 (A005097 (n + 6)).toNat)

end

end A131395.P18256147149417421996

/-! ## A131395.P17261478919771043286

`A321293(A131390(n+1))%A128367(3*n+2)`
-/

namespace A131395.P17261478919771043286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321293 (A131390 (n + 1)).toNat) (A128367 (3 * n + 2))

end

end A131395.P17261478919771043286

/-!
# A131396: Positions of n-th positive integer in A131394, minus 1.

The programs for A131396, there is no canonical definition to state claims against.
-/

/-! ## A131396.P4308118601903526020

`lt[0, A131394(n+1)]`
-/

namespace A131396.P4308118601903526020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131396.P4308118601903526020

/-! ## A131396.P8229613122745461046

`comp[A131397(n+1)-1]+1`
-/

namespace A131396.P8229613122745461046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131397 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131396.P8229613122745461046

/-! ## A131396.P12147051583396311518

`eq[char[A131397(n+1)], A000007(n)]`
-/

namespace A131396.P12147051583396311518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A131396.P12147051583396311518

/-! ## A131396.P14710774774773117465

`eq[char[A131397(n+1)], A000038(n)]`
-/

namespace A131396.P14710774774773117465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A131396.P14710774774773117465

/-! ## A131396.P16145483513868810497

`lt[1, 2*Δ[A131393(A000007(n)+n)]]`
-/

namespace A131396.P16145483513868810497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131396.P16145483513868810497

/-! ## A131396.P12702245307948043737

`eq[char[A131397(n+1)], A130706(2*n)]`
-/

namespace A131396.P12702245307948043737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A131396.P12702245307948043737

/-! ## A131396.P6233765585634708814

`lt[A131393(A028310(n)), A131393(n+1)]`
-/

namespace A131396.P6233765585634708814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131396.P6233765585634708814

/-!
# A131397: Positions of negative integers in A131394, minus 1.

The programs for A131397, there is no canonical definition to state claims against.
-/

/-! ## A131397.P16282269248615028022

`lt[A131394(n+1), 0]`
-/

namespace A131397.P16282269248615028022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131394 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131397.P16282269248615028022

/-! ## A131397.P16771431987013364480

`lt[Δ[A131393(n+1)], 1]+1`
-/

namespace A131397.P16771431987013364480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A131397.P16771431987013364480

/-! ## A131397.P691716523490781518

`lt[Δ[A131393(A028310(n))], 0]`
-/

namespace A131397.P691716523490781518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A131397.P691716523490781518

/-! ## A131397.P213125120259383137

`lt[Δ[A131393(A000007(n)+n)], 0]`
-/

namespace A131397.P213125120259383137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A131397.P213125120259383137

/-! ## A131397.P12741844654475529456

`eq[1, A000005(floor(A131394(n+1)/(n+1))+2)]`
-/

namespace A131397.P12741844654475529456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌊(A131394 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131397.P12741844654475529456

/-! ## A131397.P1386613749422126190

`lt[A131393(n+1), A131393(A028310(n))]`
-/

namespace A131397.P1386613749422126190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131397.P1386613749422126190

/-! ## A131397.P8413502358934485360

`lt[A131393(n+1), A131393(A000007(n)+n)]`
-/

namespace A131397.P8413502358934485360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131397.P8413502358934485360

/-! ## A131397.P13583514641312948604

`lt[Δ[A131393(A065033(2*n))], 0]`
-/

namespace A131397.P13583514641312948604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A131397.P13583514641312948604

/-! ## A131397.P10652557339472353895

`lt[Δ[A131393(A123108(2*n))], 0]`
-/

namespace A131397.P10652557339472353895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131393 (A123108 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A131397.P10652557339472353895

/-!
# A131398: 3*A007318 - A097806 - A000012.

The programs for A131398, the canonical program `A131398.P13475172351634249680` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131398 has offset 0).

The definition of A131398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131398.P13475172351634249680

`A131108(n)+A014473(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131398

/-- `A131108(n)+A014473(n)` -/
def P13475172351634249680.Spec : Prop :=
  ∀ n, P13475172351634249680.a n = A131398 n

theorem P13475172351634249680.correct : P13475172351634249680.Spec := by
  intro n
  simp only [A131398]

end A131398

/-! ## A131398.P9423343537326811759

`A132048(n)-Δ[A103451(n)]`
-/

namespace A131398.P9423343537326811759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132048 n - (f1 (n + 1) - f1 n)

end

end A131398.P9423343537326811759

namespace A131398

/-- `A132048(n)-Δ[A103451(n)]` -/
def P9423343537326811759.Spec : Prop :=
  ∀ n, P9423343537326811759.a n = A131398 n

end A131398

/-! ## A131398.P13329028645567990382

`A007318(n)+A131108(n)-1`
-/

namespace A131398.P13329028645567990382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131108 n - 1)

end

end A131398.P13329028645567990382

namespace A131398

/-- `A007318(n)+A131108(n)-1` -/
def P13329028645567990382.Spec : Prop :=
  ∀ n, P13329028645567990382.a n = A131398 n

theorem P13329028645567990382.correct : P13329028645567990382.Spec := by
  intro n
  simp only [A131398, Nat.add_sub_cancel, A131398.P13329028645567990382.a, A131398.P13475172351634249680.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A131108, A131108.P4431672301133884722.a, A028326, A028326.P16610217584664895500.a, A097806, A097806.P6713740258379660295.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131398

/-! ## A131398.P8905850975158835703

`A097806(n)+A131129(n)-1`
-/

namespace A131398.P8905850975158835703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n + (A131129 n - 1)

end

end A131398.P8905850975158835703

namespace A131398

/-- `A097806(n)+A131129(n)-1` -/
def P8905850975158835703.Spec : Prop :=
  ∀ n, P8905850975158835703.a n = A131398 n

end A131398

/-! ## A131398.P9957320223184852936

`3*A007318(n)-ceil(2/A007318(n+1))`
-/

namespace A131398.P9957320223184852936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - ⌈2 / (A007318 (n + 1) : ℚ)⌉

end

end A131398.P9957320223184852936

namespace A131398

/-- `3*A007318(n)-ceil(2/A007318(n+1))` -/
def P9957320223184852936.Spec : Prop :=
  ∀ n, P9957320223184852936.a n = A131398 n

end A131398

/-! ## A131398.P14452496624093546187

`A131060(n)+A000007(A134082(n))`
-/

namespace A131398.P14452496624093546187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + A000007 (A134082 n).toNat

end

end A131398.P14452496624093546187

namespace A131398

/-- `A131060(n)+A000007(A134082(n))` -/
def P14452496624093546187.Spec : Prop :=
  ∀ n, P14452496624093546187.a n = A131398 n

end A131398

/-! ## A131398.P15415663736916447501

`A103451(n)+A132048(n)-A103451(n+1)`
-/

namespace A131398.P15415663736916447501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132048 n - A103451 (n + 1))

end

end A131398.P15415663736916447501

namespace A131398

/-- `A103451(n)+A132048(n)-A103451(n+1)` -/
def P15415663736916447501.Spec : Prop :=
  ∀ n, P15415663736916447501.a n = A131398 n

end A131398

/-! ## A131398.P3135107445113217090

`A132731(n)+A132735(n)-A103451(n+1)`
-/

namespace A131398.P3135107445113217090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132735 n - A103451 (n + 1))

end

end A131398.P3135107445113217090

namespace A131398

/-- `A132731(n)+A132735(n)-A103451(n+1)` -/
def P3135107445113217090.Spec : Prop :=
  ∀ n, P3135107445113217090.a n = A131398 n

end A131398

/-! ## A131398.P3336479408044570743

`A132737(n)+A132823(n)-A103451(n+1)`
-/

namespace A131398.P3336479408044570743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + (A132823 n - A103451 (n + 1))

end

end A131398.P3336479408044570743

namespace A131398

/-- `A132737(n)+A132823(n)-A103451(n+1)` -/
def P3336479408044570743.Spec : Prop :=
  ∀ n, P3336479408044570743.a n = A131398 n

end A131398

/-! ## A131398.P12851586332809059760

`A132729(n)+A173740(n)-A103451(n+1)`
-/

namespace A131398.P12851586332809059760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132729 n + (A173740 n - A103451 (n + 1))

end

end A131398.P12851586332809059760

namespace A131398

/-- `A132729(n)+A173740(n)-A103451(n+1)` -/
def P12851586332809059760.Spec : Prop :=
  ∀ n, P12851586332809059760.a n = A131398 n

end A131398

/-! ## A131398.P13675907702886892531

`A131111(n)-A166124(n+1)`
-/

namespace A131398.P13675907702886892531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n - A166124 (n + 1)

end

end A131398.P13675907702886892531

namespace A131398

/-- `A131111(n)-A166124(n+1)` -/
def P13675907702886892531.Spec : Prop :=
  ∀ n, P13675907702886892531.a n = A131398 n

end A131398

/-! ## A131398.P10066168253649669568

`A016789(A014473(n))-A097806(n)`
-/

namespace A131398.P10066168253649669568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A014473 n).toNat - A097806 n

end

end A131398.P10066168253649669568

namespace A131398

/-- `A016789(A014473(n))-A097806(n)` -/
def P10066168253649669568.Spec : Prop :=
  ∀ n, P10066168253649669568.a n = A131398 n

end A131398

/-! ## A131398.P1914927624723566333

`A001651(A131108(n))`
-/

namespace A131398.P1914927624723566333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A131108 n).toNat

end

end A131398.P1914927624723566333

namespace A131398

/-- `A001651(A131108(n))` -/
def P1914927624723566333.Spec : Prop :=
  ∀ n, P1914927624723566333.a n = A131398 n

end A131398

/-! ## A131398.P18226778068988323874

`A032766(A131108(n)-1)+1`
-/

namespace A131398.P18226778068988323874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A131108 n - 1).toNat + 1

end

end A131398.P18226778068988323874

namespace A131398

/-- `A032766(A131108(n)-1)+1` -/
def P18226778068988323874.Spec : Prop :=
  ∀ n, P18226778068988323874.a n = A131398 n

end A131398

/-! ## A131398.P4738922932961800721

`A001651(A028326(n)-A097806(n))`
-/

namespace A131398.P4738922932961800721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A028326 n - A097806 n).toNat

end

end A131398.P4738922932961800721

namespace A131398

/-- `A001651(A028326(n)-A097806(n))` -/
def P4738922932961800721.Spec : Prop :=
  ∀ n, P4738922932961800721.a n = A131398 n

end A131398

/-! ## A131398.P6493939278657005996

`A131108(n)+A004526(A131108(n)-1)`
-/

namespace A131398.P6493939278657005996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + A004526 (A131108 n - 1).toNat

end

end A131398.P6493939278657005996

namespace A131398

/-- `A131108(n)+A004526(A131108(n)-1)` -/
def P6493939278657005996.Spec : Prop :=
  ∀ n, P6493939278657005996.a n = A131398 n

end A131398

/-! ## A131398.P12986943224314069184

`A080782(A131129(n))`
-/

namespace A131398.P12986943224314069184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A131129 n).toNat

end

end A131398.P12986943224314069184

namespace A131398

/-- `A080782(A131129(n))` -/
def P12986943224314069184.Spec : Prop :=
  ∀ n, P12986943224314069184.a n = A131398 n

end A131398

/-!
# A131399: 3*A007318 - A046854 - A065941.

The programs for A131399, the canonical program `A131399.P11219258702927112905` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131399 has offset 0).

The definition of A131399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131399.P11219258702927112905

`A131402(n)+A014473(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A131399

/-- `A131402(n)+A014473(n)` -/
def P11219258702927112905.Spec : Prop :=
  ∀ n, P11219258702927112905.a n = A131399 n

theorem P11219258702927112905.correct : P11219258702927112905.Spec := by
  intro n
  simp only [A131399]

end A131399

/-! ## A131399.P9988182685708850435

`A007318(n)+A131402(n)-1`
-/

namespace A131399.P9988182685708850435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131402 n - 1)

end

end A131399.P9988182685708850435

namespace A131399

/-- `A007318(n)+A131402(n)-1` -/
def P9988182685708850435.Spec : Prop :=
  ∀ n, P9988182685708850435.a n = A131399 n

theorem P9988182685708850435.correct : P9988182685708850435.Spec := by
  intro n
  simp only [A131399, Nat.add_sub_cancel, A131399.P9988182685708850435.a, A131399.P11219258702927112905.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A131402, A131402.P8210763280089425655.a, A028326, A028326.P16610217584664895500.a, A131373, A131373.P5409400150504785590.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A246694, A246694.P8696891911788978763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131399

/-! ## A131399.P2723991654342469763

`sqrt(A008459(n))+A131402(n)-1`
-/

namespace A131399.P2723991654342469763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (A131402 n - 1 : ℝ)

end

end A131399.P2723991654342469763

namespace A131399

/-- `sqrt(A008459(n))+A131402(n)-1` -/
def P2723991654342469763.Spec : Prop :=
  ∀ n, P2723991654342469763.a n = (A131399 n : ℝ)

end A131399

/-! ## A131399.P6205882328446347173

`floor(A007318(n)+A131404(n)/2)`
-/

namespace A131399.P6205882328446347173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 n : ℚ) + (A131404 n : ℚ) / 2⌋

end

end A131399.P6205882328446347173

namespace A131399

/-- `floor(A007318(n)+A131404(n)/2)` -/
def P6205882328446347173.Spec : Prop :=
  ∀ n, P6205882328446347173.a n = A131399 n

end A131399

/-! ## A131399.P4524851021300748659

`floor((A131404(n)+A028326(n))/2)`
-/

namespace A131399.P4524851021300748659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131404 n + A028326 n : ℚ) / 2⌋

end

end A131399.P4524851021300748659

namespace A131399

/-- `floor((A131404(n)+A028326(n))/2)` -/
def P4524851021300748659.Spec : Prop :=
  ∀ n, P4524851021300748659.a n = A131399 n

end A131399

/-! ## A131399.P11701438562279058607

`A131404(n)-(A131402(n)-A007318(n))`
-/

namespace A131399.P11701438562279058607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131404 n - (A131402 n - A007318 n)

end

end A131399.P11701438562279058607

namespace A131399

/-- `A131404(n)-(A131402(n)-A007318(n))` -/
def P11701438562279058607.Spec : Prop :=
  ∀ n, P11701438562279058607.a n = A131399 n

theorem P11701438562279058607.correct : P11701438562279058607.Spec := by
  intro n
  simp only [A131399, Nat.add_sub_cancel, A131399.P11701438562279058607.a, A131399.P11219258702927112905.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A131402, A131402.P8210763280089425655.a, A131404, A131404.P9939978111616985627.a, A028326, A028326.P16610217584664895500.a, A131373, A131373.P5409400150504785590.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A246694, A246694.P8696891911788978763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131399

/-! ## A131399.P2889527360208447817

`A046854(n)+A131239(n)-A065941(n)`
-/

namespace A131399.P2889527360208447817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (A131239 n - A065941 n)

end

end A131399.P2889527360208447817

namespace A131399

/-- `A046854(n)+A131239(n)-A065941(n)` -/
def P2889527360208447817.Spec : Prop :=
  ∀ n, P2889527360208447817.a n = A131399 n

theorem P2889527360208447817.correct : P2889527360208447817.Spec := by
  intro n
  simp only [A131399, Nat.add_sub_cancel, A131399.P2889527360208447817.a, A131399.P11219258702927112905.a, A014473, A014473.P9301799580602651200.a, A046854, A046854.P6336279902607506651.a, A065941, A065941.P15522671980025678303.a, A131239, A131239.P3024778719204501595.a, A131402, A131402.P8210763280089425655.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A102426, A102426.P776678391830445668.a, A108299, A108299.P8064445673908937225.a, A131238, A131238.P9762830409068789865.a, A131373, A131373.P5409400150504785590.a, A246694, A246694.P8696891911788978763.a, A000007, A000007.P6599383543502402472.a, A039961, A039961.P8581143921981610919.a, A098925, A098925.P12998610641323261996.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A061579, A061579.P7462537595056690109.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A092865, A092865.P9800871042429563602.a, A130777, A130777.P39247602111540675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131399

/-! ## A131399.P2869812831786893017

`A131402(n)-A024000(A007318(n))`
-/

namespace A131399.P2869812831786893017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131402 n - A024000 (A007318 n).toNat

end

end A131399.P2869812831786893017

namespace A131399

/-- `A131402(n)-A024000(A007318(n))` -/
def P2869812831786893017.Spec : Prop :=
  ∀ n, P2869812831786893017.a n = A131399 n

end A131399

/-! ## A131399.P8290148827800897505

`A007318(n)+A004524(A131404(n))`
-/

namespace A131399.P8290148827800897505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A004524 (A131404 n).toNat

end

end A131399.P8290148827800897505

namespace A131399

/-- `A007318(n)+A004524(A131404(n))` -/
def P8290148827800897505.Spec : Prop :=
  ∀ n, P8290148827800897505.a n = A131399 n

end A131399

/-! ## A131399.P11426461975493771639

`A014473(n)+A000463(A131404(n))`
-/

namespace A131399.P11426461975493771639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A000463 (A131404 n).toNat

end

end A131399.P11426461975493771639

namespace A131399

/-- `A014473(n)+A000463(A131404(n))` -/
def P11426461975493771639.Spec : Prop :=
  ∀ n, P11426461975493771639.a n = A131399 n

end A131399

/-! ## A131399.P13554845995267135748

`A004526(A131404(n)+2*A007318(n))`
-/

namespace A131399.P13554845995267135748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131404 n + 2 * A007318 n).toNat

end

end A131399.P13554845995267135748

namespace A131399

/-- `A004526(A131404(n)+2*A007318(n))` -/
def P13554845995267135748.Spec : Prop :=
  ∀ n, P13554845995267135748.a n = A131399 n

end A131399

