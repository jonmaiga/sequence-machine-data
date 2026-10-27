import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

/-!
# A078200: a(n) = A078199(n)/n; i.e., smallest k such that frequency of each occurring digit in k*n is the same.

The programs for A078200, there is no canonical definition to state claims against.
-/

/-! ## A078200.P8866678146785533948

`A078199(n)%(n+99)`
-/

namespace A078200.P8866678146785533948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078199 (n + 100)) (n + 99 : ℤ)

end

end A078200.P8866678146785533948

/-! ## A078200.P5165388314326488044

`A078199(n)/(1-A001478(n+99))`
-/

namespace A078200.P5165388314326488044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078199 (n + 100) : ℚ) / (1 - A001478 (n + 99) : ℚ)

end

end A078200.P5165388314326488044

/-!
# A078204: Smallest multiple of the concatenation of 1 up to n that begins with the concatenation of n down to 1.

The programs for A078204, there is no canonical definition to state claims against.
-/

/-! ## A078204.P16101414943523923750

`A007908(n+1)*A078205(n+1)`
-/

namespace A078204.P16101414943523923750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) * A078205 (n + 1)

end

end A078204.P16101414943523923750

/-!
# A078205: a(n) = A078204(n) / A007908(n).

The programs for A078205, there is no canonical definition to state claims against.
-/

/-! ## A078205.P12404421499063340526

`A078204(n+1)/A007908(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078205.P12404421499063340526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078204 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)

end

end A078205.P12404421499063340526

/-!
# A078206: Smallest multiple of the concatenation of n down to 1 that begins with the concatenation of 1 up to n.

The programs for A078206, there is no canonical definition to state claims against.
-/

/-! ## A078206.P6821486422847039442

`A000422(n+1)*A078207(n+1)`
-/

namespace A078206.P6821486422847039442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) * A078207 (n + 1)

end

end A078206.P6821486422847039442

/-! ## A078206.P7443831880108024747

`A052246(n+1)/10*A078207(n+1)`
-/

namespace A078206.P7443831880108024747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (n + 1) : ℚ) / 10 * (A078207 (n + 1) : ℚ)

end

end A078206.P7443831880108024747

/-!
# A078207: a(n) = A078206(n) / A000422(n).

The programs for A078207, there is no canonical definition to state claims against.
-/

/-! ## A078207.P1048417697328359418

`A078206(n+1)/A000422(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078207.P1048417697328359418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078206 (n + 1) : ℚ) / (A000422 (n + 1) : ℚ)

end

end A078207.P1048417697328359418

/-! ## A078207.P1726084421245412031

`A078206(n+1)/round(A052246(n+1)/10)`
-/

namespace A078207.P1726084421245412031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078206 (n + 1) : ℚ) / (SequenceMachineLib.roundAway ((A052246 (n + 1) : ℚ) / 10) : ℚ)

end

end A078207.P1726084421245412031

/-! ## A078207.P13293260070474633212

`A078206(n+1)/(A083453(n+1)+(n+1)^(n+1))`
-/

namespace A078207.P13293260070474633212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078206 (n + 1) : ℚ) / (A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ) : ℚ)

end

end A078207.P13293260070474633212

/-!
# A078208: Smallest multiple of n beginning with the n-th prime.

The programs for A078208, there is no canonical definition to state claims against.
-/

/-! ## A078208.P15789399959624720337

`xor(A273037(A273117(n)), A273122(n))`
-/

namespace A078208.P15789399959624720337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A273037 (A273117 n).toNat) (A273122 n)

end

end A078208.P15789399959624720337

/-!
# A078213: Smallest multiple of n beginning and ending in n and with a digit sum that is divisible by n.

The programs for A078213, there is no canonical definition to state claims against.
-/

/-! ## A078213.P3028099269756326706

`(n+1)*A078214(n+1)`
-/

namespace A078213.P3028099269756326706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078214 (n + 1)

end

end A078213.P3028099269756326706

/-! ## A078213.P17424594802311342364

`A078214(A080513(2*n))*A080513(2*n)`
-/

namespace A078213.P17424594802311342364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078214 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A078213.P17424594802311342364

/-!
# A078214: a(n) = A078213(n)/n.

The programs for A078214, there is no canonical definition to state claims against.
-/

/-! ## A078214.P15922420339038970605

`A078213(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078214.P15922420339038970605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078213 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078214.P15922420339038970605

/-!
# A078215: a(1) = 1; a(n) for n > 1 is the smallest multiple of a(n-1) that is a square and begins with n.

The programs for A078215, there is no canonical definition to state claims against.
-/

/-! ## A078215.P81270827727338026

`A078216(n+1)²`
-/

namespace A078215.P81270827727338026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078216 (n + 1) ^ 2

end

end A078215.P81270827727338026

/-! ## A078215.P11839749400379853244

`∏[A078815(n+1)]`
-/

namespace A078215.P11839749400379853244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078215.P11839749400379853244

/-! ## A078215.P1742898281278611387

`A078216(n+1)^A020639(A005897(n))`
-/

namespace A078215.P1742898281278611387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078216 (n + 1) : ℚ) ^ (A020639 (A005897 n).toNat : ℤ)

end

end A078215.P1742898281278611387

/-! ## A078215.P18138854958555298869

`A078216(n+2)*A078216(n+2)/A078815(n+2)`
-/

namespace A078215.P18138854958555298869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078216 (n + 2) * A078216 (n + 2) : ℚ) / (A078815 (n + 2) : ℚ)

end

end A078215.P18138854958555298869

/-! ## A078215.P15935265610167663468

`A078216(n+1)^A014963(A000079(n))`
-/

namespace A078215.P15935265610167663468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078216 (n + 1) : ℚ) ^ (A014963 (A000079 n).toNat : ℤ)

end

end A078215.P15935265610167663468

/-!
# A078216: a(n) = A078215(n)^(1/2).

The programs for A078216, there is no canonical definition to state claims against.
-/

/-! ## A078216.P11796069634579475986

`A078215(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078216.P11796069634579475986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A078215 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A078216.P11796069634579475986

/-! ## A078216.P16605700035213913891

`∏[sqrt(A078815(n+1))]`
-/

namespace A078216.P16605700035213913891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078815 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078216.P16605700035213913891

/-! ## A078216.P5489516119758615330

`sqrt(A078215(n+1))`
-/

namespace A078216.P5489516119758615330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078215 (n + 1) : ℝ)

end

end A078216.P5489516119758615330

/-!
# A078217: Smallest multiple of n that begins with the concatenation of the positive integers <= n and coprime to n (in increasing order).

The programs for A078217, there is no canonical definition to state claims against.
-/

/-! ## A078217.P10318945584241336572

`(n+1)*A078811(n+1)`
-/

namespace A078217.P10318945584241336572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078811 (n + 1)

end

end A078217.P10318945584241336572

/-! ## A078217.P15434181531290878125

`lcm(A078811(n+1), A110591(A078797(n+1)))`
-/

namespace A078217.P15434181531290878125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078811 (n + 1)) (A110591 (A078797 (n + 1)).toNat)

end

end A078217.P15434181531290878125

/-!
# A078218: Smallest multiple of n that begins with the concatenation of the divisors of n (in increasing order).

The programs for A078218, there is no canonical definition to state claims against.
-/

/-! ## A078218.P7765423455367315554

`(n+1)*A078810(n+1)`
-/

namespace A078218.P7765423455367315554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078810 (n + 1)

end

end A078218.P7765423455367315554

/-! ## A078218.P6800153568458971738

`abs(xor(n, -1)*A078810(A008619(2*n)))`
-/

namespace A078218.P6800153568458971738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A078810 (A008619 (2 * n)).toNat|

end

end A078218.P6800153568458971738

/-! ## A078218.P7759273950703849991

`A078810(A077168(n))*(n+1)`
-/

namespace A078218.P7759273950703849991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078810 (A077168 n).toNat * (n + 1 : ℤ)

end

end A078218.P7759273950703849991

/-! ## A078218.P11954811215247243233

`A132378(A037278(n+1))`
-/

namespace A078218.P11954811215247243233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132378 (A037278 (n + 1)).toNat

end

end A078218.P11954811215247243233

/-! ## A078218.P5454493838142526794

`A132378(A390599(n+1))`
-/

namespace A078218.P5454493838142526794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132378 (A390599 (n + 1)).toNat

end

end A078218.P5454493838142526794

/-!
# A078221: a(1) = 1, a(n+1) > a(n) is the smallest multiple of a(n) using only odd digits.

The programs for A078221, there is no canonical definition to state claims against.
-/

/-! ## A078221.P14550993981880110509

`(a(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A078221.P14550993981880110509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  (a (n - 1) + 2) * a (n - 1)

end

end A078221.P14550993981880110509

/-! ## A078221.P14449955361774677249

`A114322(2^n)`
-/

namespace A078221.P14449955361774677249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (2 ^ n)

end

end A078221.P14449955361774677249

/-! ## A078221.P541184433663992189

`A338712(2^n)`
-/

namespace A078221.P541184433663992189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338712 (2 ^ n)

end

end A078221.P541184433663992189

/-! ## A078221.P11643000967731824418

`A004655(2^n)-1`
-/

namespace A078221.P11643000967731824418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (2 ^ n) - 1

end

end A078221.P11643000967731824418

/-! ## A078221.P17403952641572222700

`A018074(2^n)-1`
-/

namespace A078221.P17403952641572222700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 (2 ^ n) - 1

end

end A078221.P17403952641572222700

/-!
# A078222: A(1) = 2, a(n+1) > a(n) is the smallest multiple of a(n) using only even digits.

The programs for A078222, the canonical program `A078222.P8739035768015798481` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078222 has offset 1).

The definition of A078222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078222.P8739035768015798481

`10*a(n-2)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=24, a(4)=48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078222

/-- `10*a(n-2)` -/
def P8739035768015798481.Spec : Prop :=
  ∀ n, (P8739035768015798481.a n : ℤ) = A078222 (n + 1)

theorem P8739035768015798481.correct : P8739035768015798481.Spec := by
  intro n
  simp only [A078222, Nat.add_sub_cancel]

end A078222

/-! ## A078222.P62968536284644418

`∏[A040642(a(n-1))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A078222.P62968536284644418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 3] fun n f1 =>
  A040642 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078222.P62968536284644418

namespace A078222

/-- `∏[A040642(a(n-1))]` -/
def P62968536284644418.Spec : Prop :=
  ∀ n, P62968536284644418.a n = A078222 (n + 1)

end A078222

/-! ## A078222.P12197492384008414072

`∏[A000040(A214247(A000982(n)))]`
-/

namespace A078222.P12197492384008414072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A214247 (A000982 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078222.P12197492384008414072

namespace A078222

/-- `∏[A000040(A214247(A000982(n)))]` -/
def P12197492384008414072.Spec : Prop :=
  ∀ n, P12197492384008414072.a n = A078222 (n + 1)

end A078222

/-! ## A078222.P10513107640980924262

`∏[A020639(5*A079143(n+1))]`
-/

namespace A078222.P10513107640980924262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * A079143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078222.P10513107640980924262

namespace A078222

/-- `∏[A020639(5*A079143(n+1))]` -/
def P10513107640980924262.Spec : Prop :=
  ∀ n, P10513107640980924262.a n = A078222 (n + 1)

end A078222

/-! ## A078222.P12487209328005709108

`∏[A006530(A257113(A152271(n)))]`
-/

namespace A078222.P12487209328005709108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257113 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078222.P12487209328005709108

namespace A078222

/-- `∏[A006530(A257113(A152271(n)))]` -/
def P12487209328005709108.Spec : Prop :=
  ∀ n, P12487209328005709108.a n = A078222 (n + 1)

end A078222

/-!
# A078223: a(1) = 2, a(n+1) > a(n) is the smallest multiple of a(n) using only even digits but not divisible by 10 (i.e., having no trailing zeros).

The programs for A078223, there is no canonical definition to state claims against.
-/

/-! ## A078223.P7847505684503473135

`∏[A078224(round(acot(n)+n))]`
-/

namespace A078223.P7847505684503473135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078224 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078223.P7847505684503473135

/-! ## A078223.P3739873152779940473

`a(n-1)*A078224(n)` with `a(0)=2`
-/

namespace A078223.P3739873152779940473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A078224 n

end

end A078223.P3739873152779940473

/-! ## A078223.P780465332176126736

`∏[A078224(A028310(n))]`
-/

namespace A078223.P780465332176126736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078224 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078223.P780465332176126736

/-! ## A078223.P6200129991580008938

`∏[A078224(A233583(n+1))]`
-/

namespace A078223.P6200129991580008938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078224 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078223.P6200129991580008938

/-! ## A078223.P13907930706595570546

`∏[A078224(A000005(ceil(2^(n-1))))]`
-/

namespace A078223.P13907930706595570546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078224 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078223.P13907930706595570546

/-!
# A078224: a(n) = A078223(n+1)/A078223(n).

The programs for A078224, there is no canonical definition to state claims against.
-/

/-! ## A078224.P508441962168939179

`A078223(n+2)/A078223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078224.P508441962168939179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078223 (n + 2) : ℚ) / (A078223 (n + 1) : ℚ)

end

end A078224.P508441962168939179

/-! ## A078224.P10561226364831179465

`ratio[A078223(n+1)]`
-/

namespace A078224.P10561226364831179465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078223 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078224.P10561226364831179465

/-! ## A078224.P2610804206095073756

`ratio[record[A078223(A064067(n))]]`
-/

namespace A078224.P2610804206095073756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078223 (A064067 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078224.P2610804206095073756

/-! ## A078224.P12677907987146942332

`ratio[record[A078223(A117910(n))]]`
-/

namespace A078224.P12677907987146942332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078223 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078224.P12677907987146942332

/-! ## A078224.P2304022277908171048

`ratio[record[A078223(A152271(n))]]`
-/

namespace A078224.P2304022277908171048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078223 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078224.P2304022277908171048

/-!
# A078225: a(n) = A078221(n+1)/A078221(n).

The programs for A078225, there is no canonical definition to state claims against.
-/

/-! ## A078225.P1207463350848722057

`A078221(n+2)/A078221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078225.P1207463350848722057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078221 (n + 2) : ℚ) / (A078221 (n + 1) : ℚ)

end

end A078225.P1207463350848722057

/-! ## A078225.P18404391218623501691

`(a(n-1)-2%n)*a(n-1)+2` with `a(0)=3, a(1)=3`
-/

namespace A078225.P18404391218623501691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  (a (n - 1) - ((2 % n : ℕ) : ℤ)) * a (n - 1) + 2

end

end A078225.P18404391218623501691

/-! ## A078225.P16813657384252982507

`or(1, A017934(A011782(n)))`
-/

namespace A078225.P16813657384252982507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A017934 (A011782 n).toNat)

end

end A078225.P16813657384252982507

/-! ## A078225.P3871014197905922048

`ceil(sqrt(Δ[a(n-1)²]))+1` with `a(0)=3, a(1)=6, a(2)=10`
-/

namespace A078225.P3871014197905922048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 10] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ + 1

end

end A078225.P3871014197905922048

/-!
# A078226: a(1) = 1, a(n+1) is the smallest odd multiple of a(n) (other than a(n) itself) in which the digits are alternately even and odd.

The programs for A078226, there is no canonical definition to state claims against.
-/

/-! ## A078226.P3098278714260154906

`a(n-1)*A078229(n)` with `a(0)=1`
-/

namespace A078226.P3098278714260154906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A078229 n

end

end A078226.P3098278714260154906

/-! ## A078226.P118022724601497769

`∏[A078229(n+1)]/A078229(n+1)`
-/

namespace A078226.P118022724601497769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078229 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A078229 (n + 1) : ℚ)

end

end A078226.P118022724601497769

/-! ## A078226.P9788022695462751113

`∏[A166469(A102941(n+1)²)]`
-/

namespace A078226.P9788022695462751113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A102941 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078226.P9788022695462751113

/-! ## A078226.P17340418263788039363

`∏[A184395(A285282(n+1)²)]`
-/

namespace A078226.P17340418263788039363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A285282 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078226.P17340418263788039363

/-!
# A078227: a(1) = 2, a(n+1) is the smallest multiple of a(n) such that the digits are alternately odd and even. The unit digit is always even and parity alternates.

The programs for A078227, there is no canonical definition to state claims against.
-/

/-! ## A078227.P17172583612464596085

`∏[A078228(round(acot(n)+n))]`
-/

namespace A078227.P17172583612464596085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078228 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078227.P17172583612464596085

/-! ## A078227.P807697229709739847

`a(n-1)*A078228(n)` with `a(0)=2`
-/

namespace A078227.P807697229709739847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A078228 n

end

end A078227.P807697229709739847

/-! ## A078227.P267972854092353206

`∏[A078228(A028310(n))]`
-/

namespace A078227.P267972854092353206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078228 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078227.P267972854092353206

/-! ## A078227.P7307432822275640227

`∏[A078228(A233583(n+1))]`
-/

namespace A078227.P7307432822275640227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078228 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078227.P7307432822275640227

/-! ## A078227.P9801096401290360138

`∏[A078228(A000005(ceil(2^(n-1))))]`
-/

namespace A078227.P9801096401290360138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078228 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078227.P9801096401290360138

/-!
# A078228: a(n) = A078227(n+1)/A078227(n).

The programs for A078228, there is no canonical definition to state claims against.
-/

/-! ## A078228.P3289720710422902061

`A078227(n+2)/A078227(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078228.P3289720710422902061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078227 (n + 2) : ℚ) / (A078227 (n + 1) : ℚ)

end

end A078228.P3289720710422902061

/-! ## A078228.P14944110598624819348

`ratio[A078227(n+1)]`
-/

namespace A078228.P14944110598624819348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078227 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078228.P14944110598624819348

/-! ## A078228.P4128098298455548289

`ratio[record[A078227(A117910(n))]]`
-/

namespace A078228.P4128098298455548289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078227 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078228.P4128098298455548289

/-! ## A078228.P11467009442862846150

`ratio[record[A078227(A152271(n))]]`
-/

namespace A078228.P11467009442862846150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078227 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078228.P11467009442862846150

/-! ## A078228.P7319011157387984641

`ratio[record[A078227(A193592(n))]]`
-/

namespace A078228.P7319011157387984641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078227 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078228.P7319011157387984641

/-!
# A078229: a(n) = A078226(n+1)/A078226(n).

The programs for A078229, there is no canonical definition to state claims against.
-/

/-! ## A078229.P13084708974123173806

`A078226(n+2)/A078226(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078229.P13084708974123173806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078226 (n + 2) : ℚ) / (A078226 (n + 1) : ℚ)

end

end A078229.P13084708974123173806

/-! ## A078229.P2834436100436927141

`ratio[A078226(n+1)]`
-/

namespace A078229.P2834436100436927141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078226 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078229.P2834436100436927141

/-! ## A078229.P7244265392850723429

`ratio[record[A078226(A117910(n))]]`
-/

namespace A078229.P7244265392850723429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078226 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078229.P7244265392850723429

/-! ## A078229.P10541627210540523310

`ratio[record[A078226(A137735(n))]]`
-/

namespace A078229.P10541627210540523310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078226 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078229.P10541627210540523310

/-! ## A078229.P892513205070658067

`ratio[record[A078226(A152271(n))]]`
-/

namespace A078229.P892513205070658067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078226 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078229.P892513205070658067

/-!
# A078230: Smallest multiple of n^n that begins with n.

The programs for A078230, there is no canonical definition to state claims against.
-/

/-! ## A078230.P1689435402022570628

`(n+1)^(n+1)*A078231(n+1)`
-/

namespace A078230.P1689435402022570628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) * A078231 (n + 1)

end

end A078230.P1689435402022570628

/-!
# A078231: a(n) = A078230(n)/(n^n).

The programs for A078231, there is no canonical definition to state claims against.
-/

/-! ## A078231.P7434181390002651660

`A078230(n+1)/(n+1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078231.P7434181390002651660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078230 (n + 1) : ℚ) / ((n + 1) ^ (n + 1) : ℚ)

end

end A078231.P7434181390002651660

/-!
# A078234: a(1) = 5, a(n+1) is the smallest multiple of a(n) using only prime digits (2,3,5,7).

The programs for A078234, there is no canonical definition to state claims against.
-/

/-! ## A078234.P9976881990775121539

`A074160(a(n-1))` with `a(0)=5`
-/

namespace A078234.P9976881990775121539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A074160 (a (n - 1)).toNat

end

end A078234.P9976881990775121539

/-! ## A078234.P17537382181852889944

`abs(∏[A133191(n+4)%A004207(n+2)-6])`
-/

namespace A078234.P17537382181852889944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133191 (n + 4)) (A004207 (n + 2)) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A078234.P17537382181852889944

/-!
# A078235: a(1) = 7, a(n+1) = smallest multiple of a(n) using only prime digits(2,3,5,7).

The programs for A078235, there is no canonical definition to state claims against.
-/

/-! ## A078235.P10669129240740156193

`A074160(a(n-1))` with `a(0)=7`
-/

namespace A078235.P10669129240740156193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A074160 (a (n - 1)).toNat

end

end A078235.P10669129240740156193

/-!
# A078236: a(1) = 4, a(n+1) = smallest multiple of a(n) using only composite digits (4,6,8,9,0) and which is not divisible by 10.

The programs for A078236, there is no canonical definition to state claims against.
-/

/-! ## A078236.P10035244023058517311

`∏[dr(A311928(A087289(n)))]`
-/

namespace A078236.P10035244023058517311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A311928 (A087289 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078236.P10035244023058517311

/-!
# A078237: a(1) = 6, a(n+1) = smallest multiple of a(n) using only digits (4,6,8,9,0) and not divisible by 10.

The programs for A078237, there is no canonical definition to state claims against.
-/

/-! ## A078237.P13339076419903706165

`A078236(n+2)-A000038(n)`
-/

namespace A078237.P13339076419903706165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078236 (n + 2) - A000038 n

end

end A078237.P13339076419903706165

/-! ## A078237.P558513182370865401

`Δ[A000038(n)+∑[A078236(n+1)]]`
-/

namespace A078237.P558513182370865401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078236 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078237.P558513182370865401

/-! ## A078237.P15507263171104571560

`A078236(n+2)-A000122(A002445(n))`
-/

namespace A078237.P15507263171104571560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078236 (n + 2) - A000122 (A002445 n).toNat

end

end A078237.P15507263171104571560

/-! ## A078237.P14228266400572398124

`A078236(n+2)-A000122(A037165(n+1))`
-/

namespace A078237.P14228266400572398124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078236 (n + 2) - A000122 (A037165 (n + 1)).toNat

end

end A078237.P14228266400572398124

/-! ## A078237.P14635689183410259743

`A078236(n+2)-A000122(A100784(n+1))`
-/

namespace A078237.P14635689183410259743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078236 (n + 2) - A000122 (A100784 (n + 1)).toNat

end

end A078237.P14635689183410259743

/-!
# A078239: a(n) = smallest multiple of n using only prime digits, with a(n) = 0 if there are none.

The programs for A078239, there is no canonical definition to state claims against.
-/

/-! ## A078239.P14385085464165830585

`(n+1)*A342992(n+1)`
-/

namespace A078239.P14385085464165830585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A342992 (n + 1)

end

end A078239.P14385085464165830585

/-!
# A078241: Smallest multiple of n using only digits 0 and 2.

The programs for A078241, there is no canonical definition to state claims against.
-/

/-! ## A078241.P15593478657768390454

`(n+1)*A096681(n+1)`
-/

namespace A078241.P15593478657768390454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096681 (n + 1)

end

end A078241.P15593478657768390454

/-! ## A078241.P6486331506227428266

`(n+1)*A096683(2*(n+1))`
-/

namespace A078241.P6486331506227428266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096683 (2 * (n + 1))

end

end A078241.P6486331506227428266

/-! ## A078241.P15566424930926943352

`A078245(3*(n+1))/3`
-/

namespace A078241.P15566424930926943352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (3 * (n + 1)) : ℚ) / 3

end

end A078241.P15566424930926943352

/-! ## A078241.P12690695329066132525

`(n+1)*A079339(5*(n+1))`
-/

namespace A078241.P12690695329066132525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079339 (5 * (n + 1))

end

end A078241.P12690695329066132525

/-! ## A078241.P16424086151589390451

`A078243(2*(n+1))/2`
-/

namespace A078241.P16424086151589390451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078243 (2 * (n + 1)) : ℚ) / 2

end

end A078241.P16424086151589390451

/-!
# A078242: Smallest multiple of n using only digits 0 and 3.

The programs for A078242, there is no canonical definition to state claims against.
-/

/-! ## A078242.P6047012510543121570

`(n+1)*A096682(n+1)`
-/

namespace A078242.P6047012510543121570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096682 (n + 1)

end

end A078242.P6047012510543121570

/-! ## A078242.P4387843558041503963

`A078245(n+1)*A079339(n+1)/A096681(n+1)`
-/

namespace A078242.P4387843558041503963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (n + 1) * A079339 (n + 1) : ℚ) / (A096681 (n + 1) : ℚ)

end

end A078242.P4387843558041503963

/-! ## A078242.P12005031514666248487

`A078245(2*(n+1))/2`
-/

namespace A078242.P12005031514666248487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (2 * (n + 1)) : ℚ) / 2

end

end A078242.P12005031514666248487

/-! ## A078242.P265255044683306677

`A078248(3*(n+1))/3`
-/

namespace A078242.P265255044683306677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078248 (3 * (n + 1)) : ℚ) / 3

end

end A078242.P265255044683306677

/-! ## A078242.P11121686441609313695

`(n+1)*A096688(3*(n+1))`
-/

namespace A078242.P11121686441609313695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096688 (3 * (n + 1))

end

end A078242.P11121686441609313695

/-!
# A078243: Smallest multiple of n using only digits 0 and 4.

The programs for A078243, there is no canonical definition to state claims against.
-/

/-! ## A078243.P8813526642988952239

`(n+1)*A096683(n+1)`
-/

namespace A078243.P8813526642988952239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096683 (n + 1)

end

end A078243.P8813526642988952239

/-! ## A078243.P15677592011921018525

`(n+1)*A096687(2*(n+1))`
-/

namespace A078243.P15677592011921018525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096687 (2 * (n + 1))

end

end A078243.P15677592011921018525

/-! ## A078243.P16984748327996870337

`(n+1)*A096681(5*(n+1))`
-/

namespace A078243.P16984748327996870337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096681 (5 * (n + 1))

end

end A078243.P16984748327996870337

/-! ## A078243.P16604037808393309906

`A096683(A110514(2*n))*A110514(2*n)`
-/

namespace A078243.P16604037808393309906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096683 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A078243.P16604037808393309906

/-! ## A078243.P4797985754149988262

`A078247(2*(n+1))/2`
-/

namespace A078243.P4797985754149988262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078247 (2 * (n + 1)) : ℚ) / 2

end

end A078243.P4797985754149988262

/-!
# A078244: Smallest multiple of n using only digits 0 and 5.

The programs for A078244, there is no canonical definition to state claims against.
-/

/-! ## A078244.P4650770623930889706

`A004290(2*(n+1))/2`
-/

namespace A078244.P4650770623930889706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004290 (2 * (n + 1)) : ℚ) / 2

end

end A078244.P4650770623930889706

/-! ## A078244.P508335593513008474

`A370571(2*(n+1))/2`
-/

namespace A078244.P508335593513008474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370571 (2 * (n + 1)) : ℚ) / 2

end

end A078244.P508335593513008474

/-! ## A078244.P12634866893392756622

`(n+1)*A079339(2*(n+1))`
-/

namespace A078244.P12634866893392756622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A079339 (2 * (n + 1))

end

end A078244.P12634866893392756622

/-! ## A078244.P11157259312268985704

`(n+1)*A096681(4*(n+1))`
-/

namespace A078244.P11157259312268985704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096681 (4 * (n + 1))

end

end A078244.P11157259312268985704

/-! ## A078244.P8522216774619478326

`A078241(A008574(n+1))/4`
-/

namespace A078244.P8522216774619478326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (A008574 (n + 1)).toNat : ℚ) / 4

end

end A078244.P8522216774619478326

/-!
# A078245: Smallest multiple of n using only digits 0 and 6.

The programs for A078245, there is no canonical definition to state claims against.
-/

/-! ## A078245.P8554425625451651260

`A078242(n+1)/A079339(n+1)*A096681(n+1)`
-/

namespace A078245.P8554425625451651260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078242 (n + 1) : ℚ) / (A079339 (n + 1) : ℚ) * (A096681 (n + 1) : ℚ)

end

end A078245.P8554425625451651260

/-! ## A078245.P17100587718275728770

`(n+1)*A096681(n+1)/A079339(n+1)*A096682(n+1)`
-/

namespace A078245.P17100587718275728770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A096681 (n + 1) : ℚ) / (A079339 (n + 1) : ℚ) * (A096682 (n + 1) : ℚ))

end

end A078245.P17100587718275728770

/-! ## A078245.P8744701902698988279

`A078241(n+1)/A004290(n+1)*A078242(n+1)`
-/

namespace A078245.P8744701902698988279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (n + 1) : ℚ) / (A004290 (n + 1) : ℚ) * (A078242 (n + 1) : ℚ)

end

end A078245.P8744701902698988279

/-! ## A078245.P662137090928775983

`A078241(n+1)/A079339(n+1)*A096682(n+1)`
-/

namespace A078245.P662137090928775983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (n + 1) : ℚ) / (A079339 (n + 1) : ℚ) * (A096682 (n + 1) : ℚ)

end

end A078245.P662137090928775983

/-! ## A078245.P7102392378964425891

`(n+1)*A096682(5*(n+1))`
-/

namespace A078245.P7102392378964425891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096682 (5 * (n + 1))

end

end A078245.P7102392378964425891

/-! ## A078245.P16202169409905666855

`(n+1)*A096685(n+1)`
-/

namespace A078245.P16202169409905666855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096685 (n + 1)

end

end A078245.P16202169409905666855

/-!
# A078246: Smallest multiple of n using only digits 0 and 7.

The programs for A078246, there is no canonical definition to state claims against.
-/

/-! ## A078246.P8333864232795411799

`(n+1)*A096686(n+1)`
-/

namespace A078246.P8333864232795411799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096686 (n + 1)

end

end A078246.P8333864232795411799

/-! ## A078246.P18362738895252542431

`A096686(A110514(2*n))*A110514(2*n)`
-/

namespace A078246.P18362738895252542431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096686 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A078246.P18362738895252542431

/-! ## A078246.P5354944249251220946

`A096686(n+1)/(n+1)^A163805(A016813(n))`
-/

namespace A078246.P5354944249251220946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096686 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ)

end

end A078246.P5354944249251220946

/-! ## A078246.P2220412548198324674

`lcm(A000005(2^n), A096686(n+1))`
-/

namespace A078246.P2220412548198324674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (2 ^ n)) (A096686 (n + 1))

end

end A078246.P2220412548198324674

/-! ## A078246.P18435881685533172037

`lcm(A001222(A007283(n)), A096686(n+1))`
-/

namespace A078246.P18435881685533172037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A007283 n).toNat) (A096686 (n + 1))

end

end A078246.P18435881685533172037

/-!
# A078247: Smallest multiple of n using only digits 0 and 8.

The programs for A078247, there is no canonical definition to state claims against.
-/

/-! ## A078247.P3898290847208204756

`(n+1)*A096687(n+1)`
-/

namespace A078247.P3898290847208204756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096687 (n + 1)

end

end A078247.P3898290847208204756

/-! ## A078247.P17461314979073824308

`2*A078243(gcd(n+1, ∑[n]))`
-/

namespace A078247.P17461314979073824308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078243 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A078247.P17461314979073824308

/-! ## A078247.P15151214039912371334

`(n+1)*A096683(5*(n+1))`
-/

namespace A078247.P15151214039912371334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096683 (5 * (n + 1))

end

end A078247.P15151214039912371334

/-! ## A078247.P1611508209507040370

`A096687(A110514(2*n))*A110514(2*n)`
-/

namespace A078247.P1611508209507040370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096687 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A078247.P1611508209507040370

/-! ## A078247.P2156408852073688508

`(n+1)*A096681(5*5*(n+1))`
-/

namespace A078247.P2156408852073688508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096681 (5 * (5 * (n + 1)))

end

end A078247.P2156408852073688508

/-!
# A078248: Smallest multiple of n using only digits 0 and 9.

The programs for A078248, there is no canonical definition to state claims against.
-/

/-! ## A078248.P7232103354344272879

`3*A078242(A060789(2*(n+1)))`
-/

namespace A078248.P7232103354344272879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078242 (A060789 (2 * (n + 1))).toNat

end

end A078248.P7232103354344272879

/-! ## A078248.P12529032693795818086

`(n+1)*A096688(n+1)`
-/

namespace A078248.P12529032693795818086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096688 (n + 1)

end

end A078248.P12529032693795818086

/-! ## A078248.P5647332842621316147

`A096688(Δ[n²]-n)*A110514(2*n)`
-/

namespace A078248.P5647332842621316147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat * A110514 (2 * n)

end

end A078248.P5647332842621316147

/-! ## A078248.P3425259185130987702

`A088599(lcm(9, A088599(n+1)))`
-/

namespace A078248.P3425259185130987702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088599 (Int.lcm 9 (A088599 (n + 1)))

end

end A078248.P3425259185130987702

/-! ## A078248.P12956613443270830484

`lcm(A096688(A109050(n+1)), A109050(n+1))`
-/

namespace A078248.P12956613443270830484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096688 (A109050 (n + 1)).toNat) (A109050 (n + 1))

end

end A078248.P12956613443270830484

/-!
# A078251: a(n) = smallest multiple of the n-th prime whose decimal expansion is nnn...n, or 0 if no such number exists.

The programs for A078251, there is no canonical definition to state claims against.
-/

/-! ## A078251.P8506235653623721561

`(n+1)*A077573(A032563(n+1))`
-/

namespace A078251.P8506235653623721561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077573 (A032563 (n + 1)).toNat

end

end A078251.P8506235653623721561

/-! ## A078251.P2231682302993358454

`(n+1)*sqrt(A077186(n+1))`
-/

namespace A078251.P2231682302993358454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A077186 (n + 1) : ℝ)

end

end A078251.P2231682302993358454

/-!
# A078252: Smallest n-digit multiple of n in which the even-numbered digits are all equal and the odd-numbered digits are all equal, or 0 if no such number exists.

The programs for A078252, there is no canonical definition to state claims against.
-/

/-! ## A078252.P15963432845402413567

`(n+1)*A078253(n+1)`
-/

namespace A078252.P15963432845402413567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078253 (n + 1)

end

end A078252.P15963432845402413567

/-! ## A078252.P3102465274110348637

`abs((ϕ²-(ϕ-n))*A078253(ϕ²-(ϕ-n)))`
-/

namespace A078252.P3102465274110348637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))) * (A078253 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)|

end

end A078252.P3102465274110348637

/-! ## A078252.P8803685081256473630

`A078253(ϕ²-(ϕ-n))*A110514(2*n)`
-/

namespace A078252.P8803685081256473630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078253 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat * A110514 (2 * n)

end

end A078252.P8803685081256473630

/-! ## A078252.P6057028606372989564

`A078253(ϕ²-(ϕ-n))*A328399(2*n)`
-/

namespace A078252.P6057028606372989564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078253 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat * A328399 (2 * n)

end

end A078252.P6057028606372989564

/-!
# A078253: a(n) = A078252(n)/n.

The programs for A078253, there is no canonical definition to state claims against.
-/

/-! ## A078253.P4785210891281696451

`A078252(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078253.P4785210891281696451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078252 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078253.P4785210891281696451

/-!
# A078254: Triangular numbers in which alternate digits are equal.

The programs for A078254, there is no canonical definition to state claims against.
-/

/-! ## A078254.P2969658230375331754

`∩[C(n+1, 2), A033619(n+1)]`
-/

namespace A078254.P2969658230375331754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078254.P2969658230375331754

/-! ## A078254.P15914798908315199991

`∩[A033619(n+1), A000217(n)]`
-/

namespace A078254.P15914798908315199991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078254.P15914798908315199991

/-! ## A078254.P5820774127016175027

`∩[A033619(n+1), A161680(n+1)]`
-/

namespace A078254.P5820774127016175027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078254.P5820774127016175027

/-! ## A078254.P11214227081567899418

`∩[A033619(n+1), A213516(n+1)]`
-/

namespace A078254.P11214227081567899418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078254.P11214227081567899418

/-! ## A078254.P17440719200062475597

`∩[A033619(n+1), A000124(n)-1]`
-/

namespace A078254.P17440719200062475597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078254.P17440719200062475597

/-!
# A078255: Squares with distinct digits. To make an infinite sequence, we also include m-digit numbers in which each digit occurs no more than ceiling(m/10) times.

The programs for A078255, there is no canonical definition to state claims against.
-/

/-! ## A078255.P9747783408141154781

`∩[A052061(n+1), A052081(n+1)]²`
-/

namespace A078255.P9747783408141154781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A078255.P9747783408141154781

/-! ## A078255.P9220525782693287605

`∩[A052062(n+1), A052081(n+1)²]`
-/

namespace A078255.P9220525782693287605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078255.P9220525782693287605

/-! ## A078255.P10218145195958372051

`A000290(∩[A052061(n+1), A052081(n+1)])`
-/

namespace A078255.P10218145195958372051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052081 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078255.P10218145195958372051

/-! ## A078255.P339668286183237589

`∩[A010784(n+1), n²]`
-/

namespace A078255.P339668286183237589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A078255.P339668286183237589

/-! ## A078255.P11313013249054839647

`∩[A000290(n), A010784(n+1)]`
-/

namespace A078255.P11313013249054839647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078255.P11313013249054839647

/-! ## A078255.P3090981907050382287

`record[A137564(n²)]`
-/

namespace A078255.P3090981907050382287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078255.P3090981907050382287

/-! ## A078255.P12659860727880625618

`record[A320485(n²)]`
-/

namespace A078255.P12659860727880625618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078255.P12659860727880625618

/-! ## A078255.P14715082321507396968

`record[A320486(n²)]`
-/

namespace A078255.P14715082321507396968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078255.P14715082321507396968

/-! ## A078255.P6066000492377788707

`filter[n², A178788(#)]`
-/

namespace A078255.P6066000492377788707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j) = 1) n)

end

end A078255.P6066000492377788707

/-! ## A078255.P8413554830786996910

`eq[1, A178788(n²)]²`
-/

namespace A078255.P8413554830786996910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A078255.P8413554830786996910

/-!
# A078256: Triangular numbers in which frequency of occurrence of every digit is same.

The programs for A078256, there is no canonical definition to state claims against.
-/

/-! ## A078256.P5014759607945672490

`∩[A266279(n+1), A000217(n)]`
-/

namespace A078256.P5014759607945672490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078256.P5014759607945672490

/-! ## A078256.P9144636027922307609

`record[and(n, A073424(n)*A321800(n))]`
-/

namespace A078256.P9144636027922307609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A073424 n * A321800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078256.P9144636027922307609

/-! ## A078256.P13076925984468993008

`record[(A321797(n)+A320486(n))/A059268(n)]`
-/

namespace A078256.P13076925984468993008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321797 n + A320486 n : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078256.P13076925984468993008

/-! ## A078256.P5676656967324861035

`record[(A321797(n)+A320486(n))/(A002262(n)+1)]`
-/

namespace A078256.P5676656967324861035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321797 n + A320486 n : ℚ) / (A002262 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078256.P5676656967324861035

/-! ## A078256.P9465165121746742307

`record[(A321797(n)+A320486(n))/A308502(n+1)]`
-/

namespace A078256.P9465165121746742307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321797 n + A320486 n : ℚ) / (A308502 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078256.P9465165121746742307

/-!
# A078257: a(n) = denominator(N) where N = 0.123...n (concatenation of 1 to n after decimal point).

The programs for A078257, there is no canonical definition to state claims against.
-/

/-! ## A078257.P1267881727109385539

`A275626(A394883(n+1))`
-/

namespace A078257.P1267881727109385539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275626 (A394883 (n + 1)).toNat

end

end A078257.P1267881727109385539

/-!
# A078258: a(n) = numerator(N), where N = 0.123...n (concatenation of 1 to n after decimal point).

The programs for A078258, there is no canonical definition to state claims against.
-/

/-! ## A078258.P12320980811043858837

`A172495(n+1)%A078257(n+1)`
-/

namespace A078258.P12320980811043858837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172495 (n + 1)) (A078257 (n + 1))

end

end A078258.P12320980811043858837

/-! ## A078258.P15228901725162867439

`lcm(A007908(n+1), A007942(n+1))/A007942(n+1)`
-/

namespace A078258.P15228901725162867439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007908 (n + 1)) (A007942 (n + 1)) : ℚ) / (A007942 (n + 1) : ℚ)

end

end A078258.P15228901725162867439

/-! ## A078258.P11231987377797759613

`A172506(n+1)%A078257(n+1)`
-/

namespace A078258.P11231987377797759613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172506 (n + 1)) (A078257 (n + 1))

end

end A078258.P11231987377797759613

/-! ## A078258.P1625987117044368239

`gcd(A007908(n+1), A172506(n+1))`
-/

namespace A078258.P1625987117044368239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007908 (n + 1)) (A172506 (n + 1))

end

end A078258.P1625987117044368239

/-!
# A078259: a(n) = denominator(N), where N = 0.135..(2n-1) is the concatenation of the first n odd numbers after decimal point.

The programs for A078259, there is no canonical definition to state claims against.
-/

/-! ## A078259.P4231321498696927247

`A007090(2^A050539(n+2))`
-/

namespace A078259.P4231321498696927247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050539 (n + 2) : ℤ))).toNat

end

end A078259.P4231321498696927247

/-!
# A078260: a(n) = denominator(N), where N = 0.246...(2n) is the concatenation of the first n even numbers after decimal point.

The programs for A078260, there is no canonical definition to state claims against.
-/

/-! ## A078260.P13076249790713106803

`∏[A242894(A013611(n))]`
-/

namespace A078260.P13076249790713106803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242894 (A013611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078260.P13076249790713106803

/-!
# A078262: Sum of the forward and reverse concatenations of 1 to n.

The programs for A078262, there is no canonical definition to state claims against.
-/

/-! ## A078262.P10950202729305369085

`A000422(n+1)+A007908(n+1)`
-/

namespace A078262.P10950202729305369085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + A007908 (n + 1)

end

end A078262.P10950202729305369085

/-! ## A078262.P16484087903443872991

`A000422(n+1)+∑[A078998(n+1)]`
-/

namespace A078262.P16484087903443872991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078262.P16484087903443872991

/-! ## A078262.P8158500367947756098

`A000422(n+1)+A359124(n+1)-1`
-/

namespace A078262.P8158500367947756098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + (A359124 (n + 1) - 1)

end

end A078262.P8158500367947756098

/-! ## A078262.P10700421468386977154

`A019566(n+1)+2*A007908(n+1)`
-/

namespace A078262.P10700421468386977154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + 2 * A007908 (n + 1)

end

end A078262.P10700421468386977154

/-! ## A078262.P11156653841355034403

`2*A000422(n+1)-A019566(n+1)`
-/

namespace A078262.P11156653841355034403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000422 (n + 1) - A019566 (n + 1)

end

end A078262.P11156653841355034403

/-! ## A078262.P14756260212692369674

`A007908(n+1)+A052246(n+1)/10`
-/

namespace A078262.P14756260212692369674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007908 (n + 1) : ℚ) + (A052246 (n + 1) : ℚ) / 10

end

end A078262.P14756260212692369674

/-! ## A078262.P15985994683260440542

`A019566(n+1)+∑[2*A078998(n+1)]`
-/

namespace A078262.P15985994683260440542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078262.P15985994683260440542

/-! ## A078262.P8983304029154176923

`A007908(n+1)+A083453(n+1)+(n+1)^(n+1)`
-/

namespace A078262.P8983304029154176923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) + (A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ))

end

end A078262.P8983304029154176923

/-! ## A078262.P7284788805102909251

`A252043(A033061(n+1))+A000422(n+1)`
-/

namespace A078262.P7284788805102909251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A033061 (n + 1)).toNat + A000422 (n + 1)

end

end A078262.P7284788805102909251

/-! ## A078262.P15656795198748597600

`A252043(A058183(n+1))+A000422(n+1)`
-/

namespace A078262.P15656795198748597600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 1)).toNat + A000422 (n + 1)

end

end A078262.P15656795198748597600

/-!
# A078263: Product of the forward and reverse concatenations of 1 to n.

The programs for A078263, there is no canonical definition to state claims against.
-/

/-! ## A078263.P2717246021931588635

`A000422(n+1)*A007908(n+1)`
-/

namespace A078263.P2717246021931588635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) * A007908 (n + 1)

end

end A078263.P2717246021931588635

/-! ## A078263.P12481958742923143474

`∑[A078998(n+1)]*A000422(n+1)`
-/

namespace A078263.P12481958742923143474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000422 (n + 1)

end

end A078263.P12481958742923143474

/-! ## A078263.P13056059036814736625

`(A359124(n+1)-1)*A000422(n+1)`
-/

namespace A078263.P13056059036814736625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A359124 (n + 1) - 1) * A000422 (n + 1)

end

end A078263.P13056059036814736625

/-! ## A078263.P18028304672748062025

`(A019566(n+1)+A007908(n+1))*A007908(n+1)`
-/

namespace A078263.P18028304672748062025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019566 (n + 1) + A007908 (n + 1)) * A007908 (n + 1)

end

end A078263.P18028304672748062025

/-! ## A078263.P14208557831285351485

`(A000422(n+1)-A019566(n+1))*A000422(n+1)`
-/

namespace A078263.P14208557831285351485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000422 (n + 1) - A019566 (n + 1)) * A000422 (n + 1)

end

end A078263.P14208557831285351485

/-!
# A078264: Integer part of the geometric mean of the forward and reverse concatenations of 1 to n.

The programs for A078264, there is no canonical definition to state claims against.
-/

/-! ## A078264.P12364701115137646040

`floor(A078263(n+1)^(1/2))`
-/

namespace A078264.P12364701115137646040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078263 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A078264.P12364701115137646040

/-! ## A078264.P843435079369794719

`floor(sqrt(A078263(n+1)))`
-/

namespace A078264.P843435079369794719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A078263 (n + 1))

end

end A078264.P843435079369794719

/-! ## A078264.P8032721486059164939

`floor(sqrt(A000422(n+1)*A007908(n+1)))`
-/

namespace A078264.P8032721486059164939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000422 (n + 1) * A007908 (n + 1))

end

end A078264.P8032721486059164939

/-! ## A078264.P17522541579287398250

`floor(sqrt((A359124(n+1)-1)*A000422(n+1)))`
-/

namespace A078264.P17522541579287398250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A359124 (n + 1) - 1) * A000422 (n + 1))

end

end A078264.P17522541579287398250

/-! ## A078264.P4703955520753928360

`floor(sqrt(A052246(n+1)/10*A007908(n+1)))`
-/

namespace A078264.P4703955520753928360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A052246 (n + 1) : ℚ) / 10 * (A007908 (n + 1) : ℚ) : ℝ)⌋

end

end A078264.P4703955520753928360

/-!
# A078265: Integer part of the geometric mean of all the distinct numbers formed by permuting the digits of concatenation of numbers from 1 to n.

The programs for A078265, there is no canonical definition to state claims against.
-/

/-! ## A078265.P3959309915062083117

`A250120(A304969(3*n)-A000108(2*n))`
-/

namespace A078265.P3959309915062083117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A304969 (3 * n) - A000108 (2 * n)).toNat

end

end A078265.P3959309915062083117

/-!
# A078266: Integer part of the arithmetic mean of all the distinct numbers formed by permuting the digits of concatenation of numbers from 1 to n.

The programs for A078266, there is no canonical definition to state claims against.
-/

/-! ## A078266.P16089119102599974009

`floor(record[(n+1)*A127805(n)]/(n+1))`
-/

namespace A078266.P16089119102599974009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A078266.P16089119102599974009

/-! ## A078266.P592065024940735967

`floor(∑[A000005(4^n)-n]*∑[10^n]/(n+1))`
-/

namespace A078266.P592065024940735967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 ^ n) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A078266.P592065024940735967

/-! ## A078266.P18165727552625023385

`floor(record[A127805(n)]*A025747(n)/(n+1))`
-/

namespace A078266.P18165727552625023385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A025747 n : ℚ) / (n + 1 : ℚ)⌋

end

end A078266.P18165727552625023385

/-! ## A078266.P6003684001372004472

`floor(A083956(A078213(n+1))/A078213(n+1))`
-/

namespace A078266.P6003684001372004472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083956 (A078213 (n + 1)).toNat : ℚ) / (A078213 (n + 1) : ℚ)⌋

end

end A078266.P6003684001372004472

/-!
# A078267: Smallest k such that k*N is an integer where N is obtained by placing the string "n" after a decimal point.

The programs for A078267, the canonical program `A078267.P17940789187434632380` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078267 has offset 1).

The definition of A078267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078268, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078267.P17940789187434632380

`A078268(n+1)*10^A055642(n+1)/(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A078267

/-- `A078268(n+1)*10^A055642(n+1)/(n+1)` -/
def P17940789187434632380.Spec : Prop :=
  ∀ n, P17940789187434632380.a n = (A078267 (n + 1) : ℚ)

end A078267

/-! ## A078267.P5933041275574929662

`A075559(n+1)/(n+1)-1`
-/

namespace A078267.P5933041275574929662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075559 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A078267.P5933041275574929662

namespace A078267

/-- `A075559(n+1)/(n+1)-1` -/
def P5933041275574929662.Spec : Prop :=
  ∀ n, P5933041275574929662.a n = (A078267 (n + 1) : ℚ)

end A078267

/-! ## A078267.P383795578019229368

`A078268(n+1)+A068823(n+1)/(n+1)`
-/

namespace A078267.P383795578019229368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078268 (n + 1) : ℚ) + (A068823 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078267.P383795578019229368

namespace A078267

/-- `A078268(n+1)+A068823(n+1)/(n+1)` -/
def P383795578019229368.Spec : Prop :=
  ∀ n, P383795578019229368.a n = (A078267 (n + 1) : ℚ)

end A078267

/-! ## A078267.P2751576850674459110

`A172503(n+1)/gcd(A005915(n)², A172503(n+1))`
-/

namespace A078267.P2751576850674459110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172503 (n + 1) : ℚ) / (Int.gcd (A005915 n ^ 2) (A172503 (n + 1)) : ℚ)

end

end A078267.P2751576850674459110

namespace A078267

/-- `A172503(n+1)/gcd(A005915(n)², A172503(n+1))` -/
def P2751576850674459110.Spec : Prop :=
  ∀ n, P2751576850674459110.a n = (A078267 (n + 1) : ℚ)

end A078267

/-! ## A078267.P17178556876764703738

`A122098(n+1)-1`
-/

namespace A078267.P17178556876764703738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122098 (n + 1) - 1

end

end A078267.P17178556876764703738

namespace A078267

/-- `A122098(n+1)-1` -/
def P17178556876764703738.Spec : Prop :=
  ∀ n, P17178556876764703738.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P5298599674472633360

`A023443(A122098(n+1))`
-/

namespace A078267.P5298599674472633360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122098 (n + 1)).toNat

end

end A078267.P5298599674472633360

namespace A078267

/-- `A023443(A122098(n+1))` -/
def P5298599674472633360.Spec : Prop :=
  ∀ n, P5298599674472633360.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P11163851931503880808

`A023444(A122098(n+1)+1)`
-/

namespace A078267.P11163851931503880808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A122098 (n + 1) + 1).toNat

end

end A078267.P11163851931503880808

namespace A078267

/-- `A023444(A122098(n+1)+1)` -/
def P11163851931503880808.Spec : Prop :=
  ∀ n, P11163851931503880808.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P3711453248770668028

`A140106(2*A122098(n+1))`
-/

namespace A078267.P3711453248770668028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A122098 (n + 1)).toNat

end

end A078267.P3711453248770668028

namespace A078267

/-- `A140106(2*A122098(n+1))` -/
def P3711453248770668028.Spec : Prop :=
  ∀ n, P3711453248770668028.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P18007223784043667473

`A059169(4*A122098(n+1))`
-/

namespace A078267.P18007223784043667473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A122098 (n + 1)).toNat

end

end A078267.P18007223784043667473

namespace A078267

/-- `A059169(4*A122098(n+1))` -/
def P18007223784043667473.Spec : Prop :=
  ∀ n, P18007223784043667473.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P2193696877912115570

`A244895(10*n+9)+A122098(n+1)`
-/

namespace A078267.P2193696877912115570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (10 * n + 9) + A122098 (n + 1)

end

end A078267.P2193696877912115570

namespace A078267

/-- `A244895(10*n+9)+A122098(n+1)` -/
def P2193696877912115570.Spec : Prop :=
  ∀ n, P2193696877912115570.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P6542052225946372752

`A140106(A122098(n+1)+A122098(n+1)+1)`
-/

namespace A078267.P6542052225946372752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A122098 (n + 1) + (A122098 (n + 1) + 1)).toNat

end

end A078267.P6542052225946372752

namespace A078267

/-- `A140106(A122098(n+1)+A122098(n+1)+1)` -/
def P6542052225946372752.Spec : Prop :=
  ∀ n, P6542052225946372752.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P9273583662872920164

`A226219(A237416(n+1))-A057427(A131063(n))`
-/

namespace A078267.P9273583662872920164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat - A057427 (A131063 n).toNat

end

end A078267.P9273583662872920164

namespace A078267

/-- `A226219(A237416(n+1))-A057427(A131063(n))` -/
def P9273583662872920164.Spec : Prop :=
  ∀ n, P9273583662872920164.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P11311419350453839726

`A226219(A237416(n+1))-A054977(A308269(n+1))`
-/

namespace A078267.P11311419350453839726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat - A054977 (A308269 (n + 1)).toNat

end

end A078267.P11311419350453839726

namespace A078267

/-- `A226219(A237416(n+1))-A054977(A308269(n+1))` -/
def P11311419350453839726.Spec : Prop :=
  ∀ n, P11311419350453839726.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P6345258592310584073

`A226219(A237416(n+1))-A057427(A137688(n))`
-/

namespace A078267.P6345258592310584073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat - A057427 (A137688 n).toNat

end

end A078267.P6345258592310584073

namespace A078267

/-- `A226219(A237416(n+1))-A057427(A137688(n))` -/
def P6345258592310584073.Spec : Prop :=
  ∀ n, P6345258592310584073.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P5492201256818730072

`A226219(A237416(n+1))-A246588(A130321(n))`
-/

namespace A078267.P5492201256818730072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat - A246588 (A130321 n).toNat

end

end A078267.P5492201256818730072

namespace A078267

/-- `A226219(A237416(n+1))-A246588(A130321(n))` -/
def P5492201256818730072.Spec : Prop :=
  ∀ n, P5492201256818730072.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P6466556187505418272

`A226219(A237416(n+1))-abs(A122188(n+1))`
-/

namespace A078267.P6466556187505418272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A237416 (n + 1)).toNat - |A122188 (n + 1)|

end

end A078267.P6466556187505418272

namespace A078267

/-- `A226219(A237416(n+1))-abs(A122188(n+1))` -/
def P6466556187505418272.Spec : Prop :=
  ∀ n, P6466556187505418272.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P4186534913127889904

`A226219(A044332(n+1))-1`
-/

namespace A078267.P4186534913127889904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226219 (A044332 (n + 1)).toNat - 1

end

end A078267.P4186534913127889904

namespace A078267

/-- `A226219(A044332(n+1))-1` -/
def P4186534913127889904.Spec : Prop :=
  ∀ n, P4186534913127889904.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P18289763416368822748

`A303612(A158128(n+1)-1)`
-/

namespace A078267.P18289763416368822748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303612 (A158128 (n + 1) - 1).toNat

end

end A078267.P18289763416368822748

namespace A078267

/-- `A303612(A158128(n+1)-1)` -/
def P18289763416368822748.Spec : Prop :=
  ∀ n, P18289763416368822748.a n = A078267 (n + 1)

end A078267

/-! ## A078267.P14072022944055053715

`A224927(A111708(n)+n+1)`
-/

namespace A078267.P14072022944055053715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224927 (A111708 n + (n + 1 : ℤ)).toNat

end

end A078267.P14072022944055053715

namespace A078267

/-- `A224927(A111708(n)+n+1)` -/
def P14072022944055053715.Spec : Prop :=
  ∀ n, P14072022944055053715.a n = A078267 (n + 1)

end A078267

/-!
# A078268: Smallest integer which is an integer multiple of the number N obtained by placing the string "n" after a decimal point.

The programs for A078268, the canonical program `A078268.P12910837297517375735` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078268 has offset 1).

The definition of A078268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078268.P12910837297517375735

`(n+1)/A068822(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078268

/-- `(n+1)/A068822(n+1)` -/
def P12910837297517375735.Spec : Prop :=
  ∀ n, P12910837297517375735.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P1543533270852087227

`(n+1)*A078267(n+1)/10^A055642(n+1)`
-/

namespace A078268.P1543533270852087227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A078267 (n + 1) : ℚ) / (10 : ℚ) ^ (A055642 (n + 1) : ℤ)

end

end A078268.P1543533270852087227

namespace A078268

/-- `(n+1)*A078267(n+1)/10^A055642(n+1)` -/
def P1543533270852087227.Spec : Prop :=
  ∀ n, P1543533270852087227.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P3492160529264066526

`(n+1)/gcd(n+1, A061601(n))`
-/

namespace A078268.P3492160529264066526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A061601 n) : ℚ)

end

end A078268.P3492160529264066526

namespace A078268

/-- `(n+1)/gcd(n+1, A061601(n))` -/
def P3492160529264066526.Spec : Prop :=
  ∀ n, P3492160529264066526.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P8658716857702352365

`(n+1)/gcd(A002378(n), A127421(n+1))`
-/

namespace A078268.P8658716857702352365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A002378 n) (A127421 (n + 1)) : ℚ)

end

end A078268.P8658716857702352365

namespace A078268

/-- `(n+1)/gcd(A002378(n), A127421(n+1))` -/
def P8658716857702352365.Spec : Prop :=
  ∀ n, P8658716857702352365.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P5896789334617613964

`(n+1)/gcd(A033286(n+1), A075110(n+1))`
-/

namespace A078268.P5896789334617613964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A033286 (n + 1)) (A075110 (n + 1)) : ℚ)

end

end A078268.P5896789334617613964

namespace A078268

/-- `(n+1)/gcd(A033286(n+1), A075110(n+1))` -/
def P5896789334617613964.Spec : Prop :=
  ∀ n, P5896789334617613964.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P15724176134793361754

`lcm(n+1, A261618(n+1))/A261618(n+1)`
-/

namespace A078268.P15724176134793361754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A261618 (n + 1)) : ℚ) / (A261618 (n + 1) : ℚ)

end

end A078268.P15724176134793361754

namespace A078268

/-- `lcm(n+1, A261618(n+1))/A261618(n+1)` -/
def P15724176134793361754.Spec : Prop :=
  ∀ n, P15724176134793361754.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P12093410323374693723

`lcm(A000027(n+1), A127421(n+1))/A127421(n+1)`
-/

namespace A078268.P12093410323374693723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A127421 (n + 1)) : ℚ) / (A127421 (n + 1) : ℚ)

end

end A078268.P12093410323374693723

namespace A078268

/-- `lcm(A000027(n+1), A127421(n+1))/A127421(n+1)` -/
def P12093410323374693723.Spec : Prop :=
  ∀ n, P12093410323374693723.a n = (A078268 (n + 1) : ℚ)

end A078268

/-! ## A078268.P2061413239582767997

`A068823(n+1)/A089186(n+1)`
-/

namespace A078268.P2061413239582767997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068823 (n + 1) : ℚ) / (A089186 (n + 1) : ℚ)

end

end A078268.P2061413239582767997

namespace A078268

/-- `A068823(n+1)/A089186(n+1)` -/
def P2061413239582767997.Spec : Prop :=
  ∀ n, P2061413239582767997.a n = (A078268 (n + 1) : ℚ)

end A078268

/-!
# A078269: a(n) is the number from which if odd-positioned digits are deleted then one gets the concatenation of 1 to n, while if even-positioned digits are deleted then one gets reverse concatenation of 1 to n. Position of least significant digit is considered to be 1.

The programs for A078269, there is no canonical definition to state claims against.
-/

/-! ## A078269.P13685650496142704818

`11*A078270(n+1)`
-/

namespace A078269.P13685650496142704818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A078270 (n + 1)

end

end A078269.P13685650496142704818

/-!
# A078270: a(n) = A078269(n)/11.

The programs for A078270, there is no canonical definition to state claims against.
-/

/-! ## A078270.P9988604368986509600

`A078269(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078270.P9988604368986509600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078269 (n + 1) : ℚ) / 11

end

end A078270.P9988604368986509600

/-! ## A078270.P7353690246544165509

`record[ratio[A078269(A050603(n))]]`
-/

namespace A078270.P7353690246544165509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078269 (A050603 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078270.P7353690246544165509

/-!
# A078271: a(n) is the number from which if even-positioned digits are deleted then one gets the concatenation of 1 to n, while if odd-positioned digits are deleted then one gets reverse concatenation of 1 to n. Position of least significant digit is considered to be 1.

The programs for A078271, there is no canonical definition to state claims against.
-/

/-! ## A078271.P16327594924731212497

`11*A078272(n+1)`
-/

namespace A078271.P16327594924731212497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A078272 (n + 1)

end

end A078271.P16327594924731212497

/-!
# A078272: a(n) = A078271(n)/11.

The programs for A078272, there is no canonical definition to state claims against.
-/

/-! ## A078272.P8897916290532779625

`A078271(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078272.P8897916290532779625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078271 (n + 1) : ℚ) / 11

end

end A078272.P8897916290532779625

/-! ## A078272.P6329271730537175017

`record[ratio[A078271(A050603(n))]]`
-/

namespace A078272.P6329271730537175017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078271 (A050603 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078272.P6329271730537175017

/-!
# A078274: a(n) is the number from which if odd-positioned digits are deleted then one gets the concatenation of first n odd numbers, while if even-positioned digits are deleted then one gets reverse concatenation of first n odd numbers. Position of least significant digit is considered to be 1.

The programs for A078274, there is no canonical definition to state claims against.
-/

/-! ## A078274.P3051447892650741701

`11*A078277(n+1)`
-/

namespace A078274.P3051447892650741701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A078277 (n + 1)

end

end A078274.P3051447892650741701

/-!
# A078275: a(n) is the number from which if odd-positioned digits are deleted then one gets the concatenation of first n even numbers, while if even-positioned digits are deleted then one gets reverse concatenation of first n even numbers. Position of least significant digit is considered to be 1.

The programs for A078275, there is no canonical definition to state claims against.
-/

/-! ## A078275.P7373433493476171015

`11*A078276(n+1)`
-/

namespace A078275.P7373433493476171015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A078276 (n + 1)

end

end A078275.P7373433493476171015

/-!
# A078276: a(n) = A078275(n)/11.

The programs for A078276, there is no canonical definition to state claims against.
-/

/-! ## A078276.P14445981979507260296

`A078275(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078276.P14445981979507260296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078275 (n + 1) : ℚ) / 11

end

end A078276.P14445981979507260296

/-!
# A078277: a(n) = A078274(n)/11.

The programs for A078277, there is no canonical definition to state claims against.
-/

/-! ## A078277.P11157814978600968769

`A078274(n+1)/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078277.P11157814978600968769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078274 (n + 1) : ℚ) / 11

end

end A078277.P11157814978600968769

/-!
# A078278: a(n) is the number from which if odd-positioned digits are deleted then one gets the concatenation of first n prime numbers, while if even-positioned digits are deleted then one gets reverse concatenation of first n prime numbers. Position of least significant digit is considered to be 1.

The programs for A078278, there is no canonical definition to state claims against.
-/

/-! ## A078278.P5260422778490278321

`22*A078281(n+1)`
-/

namespace A078278.P5260422778490278321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A078281 (n + 1)

end

end A078278.P5260422778490278321

/-!
# A078279: a(n) is the number from which if odd-positioned digits are deleted then one gets the concatenation of first n composite numbers, while if even-positioned digits are deleted then one gets reverse concatenation of first n composite numbers. Position of least significant digit is considered to be 1.

The programs for A078279, there is no canonical definition to state claims against.
-/

/-! ## A078279.P14342201723757595817

`22*A078280(n+1)`
-/

namespace A078279.P14342201723757595817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A078280 (n + 1)

end

end A078279.P14342201723757595817

/-!
# A078280: a(n) = A078279(n)/22.

The programs for A078280, there is no canonical definition to state claims against.
-/

/-! ## A078280.P3699411141270411165

`A078279(n+1)/22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078280.P3699411141270411165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078279 (n + 1) : ℚ) / 22

end

end A078280.P3699411141270411165

/-!
# A078281: A078278(n)/22.

The programs for A078281, there is no canonical definition to state claims against.
-/

/-! ## A078281.P808924861145810315

`A078278(n+1)/22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078281.P808924861145810315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078278 (n + 1) : ℚ) / 22

end

end A078281.P808924861145810315

/-!
# A078282: a(1) = 1, a(n) is the smallest multiple of n which begins with a(n-1) and is greater than a(n-1).

The programs for A078282, there is no canonical definition to state claims against.
-/

/-! ## A078282.P7817301712585718875

`A214437(n+1)^gcd(11, n)`
-/

namespace A078282.P7817301712585718875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214437 (n + 1) ^ Nat.gcd 11 n

end

end A078282.P7817301712585718875

/-! ## A078282.P15837259459192580030

`A214437(∏{p}[n+1, #]^∏{e}[n+1, #])`
-/

namespace A078282.P15837259459192580030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214437 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A078282.P15837259459192580030

/-! ## A078282.P17751155502191120326

`A214437(∑[A053501(n)])`
-/

namespace A078282.P17751155502191120326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078282.P17751155502191120326

/-! ## A078282.P7746447043133359768

`A214437(A061378(n)+1)`
-/

namespace A078282.P7746447043133359768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214437 (A061378 n + 1).toNat

end

end A078282.P7746447043133359768

/-!
# A078283: a(1) = 1, a(n) is the smallest multiple of n which is obtained by inserting/prefixing or suffixing at least one digit in a(n-1).

The programs for A078283, there is no canonical definition to state claims against.
-/

/-! ## A078283.P15238079133117475773

`(n+1)*A078284(n+1)`
-/

namespace A078283.P15238079133117475773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078284 (n + 1)

end

end A078283.P15238079133117475773

/-! ## A078283.P15445141827175127233

`A080502(n+1)+A000038(A005773(n))`
-/

namespace A078283.P15445141827175127233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080502 (n + 1) + A000038 (A005773 n).toNat

end

end A078283.P15445141827175127233

/-! ## A078283.P13754275829166869004

`A080502(n+1)*A247026(A000217(n))`
-/

namespace A078283.P13754275829166869004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080502 (n + 1) * A247026 (A000217 n).toNat

end

end A078283.P13754275829166869004

/-! ## A078283.P18333363588263442802

`C(A080502(n+1), A001221(A000244(n)))`
-/

namespace A078283.P18333363588263442802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080502 (n + 1)).toNat (A001221 (A000244 n).toNat).toNat

end

end A078283.P18333363588263442802

/-! ## A078283.P11056901083399370226

`A080502(n+1)*A309913(A001403(n+1))`
-/

namespace A078283.P11056901083399370226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080502 (n + 1) * A309913 (A001403 (n + 1)).toNat

end

end A078283.P11056901083399370226

/-!
# A078284: a(n) = A078283(n)/n.

The programs for A078284, there is no canonical definition to state claims against.
-/

/-! ## A078284.P6418358860808797921

`A078283(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078284.P6418358860808797921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078283 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078284.P6418358860808797921

/-! ## A078284.P18318830671960054873

`((n+1)%A004771(n))^-1*A078283(n+1)`
-/

namespace A078284.P18318830671960054873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (n + 1 : ℤ) (A004771 n) : ℚ) ^ (-1 : ℤ) * (A078283 (n + 1) : ℚ)

end

end A078284.P18318830671960054873

/-! ## A078284.P9118946490336686220

`lcm(A080503(n+1), A257098(A319755(n)))`
-/

namespace A078284.P9118946490336686220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080503 (n + 1)) (A257098 (A319755 n).toNat)

end

end A078284.P9118946490336686220

/-! ## A078284.P7661476506573287698

`A080503(n+1)+A010815(A050952(n+1))`
-/

namespace A078284.P7661476506573287698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080503 (n + 1) + A010815 (A050952 (n + 1)).toNat

end

end A078284.P7661476506573287698

/-! ## A078284.P9074375901494094388

`A080503(n+1)+A010815(A202736(n+3))`
-/

namespace A078284.P9074375901494094388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080503 (n + 1) + A010815 (A202736 (n + 3)).toNat

end

end A078284.P9074375901494094388

/-!
# A078285: Least nontrivial multiple of the n-th prime beginning with 1.

The programs for A078285, the canonical program `A078285.P17863953192826726886` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078285 has offset 1).

The definition of A078285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078285.P17863953192826726886

`A377565(A000040(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078285

/-- `A377565(A000040(n+1))` -/
def P17863953192826726886.Spec : Prop :=
  ∀ n, P17863953192826726886.a n = A078285 (n + 1)

theorem P17863953192826726886.correct : P17863953192826726886.Spec := by
  intro n
  simp only [A078285, Nat.add_sub_cancel]

end A078285

/-! ## A078285.P3766621899932111489

`A377565(A006005(n+1))`
-/

namespace A078285.P3766621899932111489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A006005 (n + 1)).toNat

end

end A078285.P3766621899932111489

namespace A078285

/-- `A377565(A006005(n+1))` -/
def P3766621899932111489.Spec : Prop :=
  ∀ n, P3766621899932111489.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P13813385801033422566

`A377565(A161847(n+1))`
-/

namespace A078285.P13813385801033422566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A161847 (n + 1)).toNat

end

end A078285.P13813385801033422566

namespace A078285

/-- `A377565(A161847(n+1))` -/
def P13813385801033422566.Spec : Prop :=
  ∀ n, P13813385801033422566.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P654775984322463325

`A377565(A008578(n+2))`
-/

namespace A078285.P654775984322463325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A008578 (n + 2)).toNat

end

end A078285.P654775984322463325

namespace A078285

/-- `A377565(A008578(n+2))` -/
def P654775984322463325.Spec : Prop :=
  ∀ n, P654775984322463325.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P9498922844681442523

`A377565(A075643(n+2))`
-/

namespace A078285.P9498922844681442523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A075643 (n + 2)).toNat

end

end A078285.P9498922844681442523

namespace A078285

/-- `A377565(A075643(n+2))` -/
def P9498922844681442523.Spec : Prop :=
  ∀ n, P9498922844681442523.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P12220015011312215884

`A377565(A182986(n+2))`
-/

namespace A078285.P12220015011312215884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A182986 (n + 2)).toNat

end

end A078285.P12220015011312215884

namespace A078285

/-- `A377565(A182986(n+2))` -/
def P12220015011312215884.Spec : Prop :=
  ∀ n, P12220015011312215884.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P1151901546440788935

`A000040(n+1)*A097327(Δ[A007504(n)])`
-/

namespace A078285.P1151901546440788935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A097327 (f1 (n + 1) - f1 n).toNat

end

end A078285.P1151901546440788935

namespace A078285

/-- `A000040(n+1)*A097327(Δ[A007504(n)])` -/
def P1151901546440788935.Spec : Prop :=
  ∀ n, P1151901546440788935.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P11690750293484917299

`Δ[A007504(n)]*A097327(A008578(n+2))`
-/

namespace A078285.P11690750293484917299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097327 (A008578 (n + 2)).toNat

end

end A078285.P11690750293484917299

namespace A078285

/-- `Δ[A007504(n)]*A097327(A008578(n+2))` -/
def P11690750293484917299.Spec : Prop :=
  ∀ n, P11690750293484917299.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P13322771877205398554

`A000040(n+1)*A097327(record[A051698(n)])`
-/

namespace A078285.P13322771877205398554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A097327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078285.P13322771877205398554

namespace A078285

/-- `A000040(n+1)*A097327(record[A051698(n)])` -/
def P13322771877205398554.Spec : Prop :=
  ∀ n, P13322771877205398554.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P493102555084025288

`A000040(n+1)*A097327(record[A162753(n)])`
-/

namespace A078285.P493102555084025288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A097327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078285.P493102555084025288

namespace A078285

/-- `A000040(n+1)*A097327(record[A162753(n)])` -/
def P493102555084025288.Spec : Prop :=
  ∀ n, P493102555084025288.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P9820060022585165414

`A000040(n+1)*A097327(p?[A014681(n)])`
-/

namespace A078285.P9820060022585165414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A097327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078285.P9820060022585165414

namespace A078285

/-- `A000040(n+1)*A097327(p?[A014681(n)])` -/
def P9820060022585165414.Spec : Prop :=
  ∀ n, P9820060022585165414.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P635215938860485377

`p?[A007989(n)]*A097327(A008578(n+2))`
-/

namespace A078285.P635215938860485377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097327 (A008578 (n + 2)).toNat

end

end A078285.P635215938860485377

namespace A078285

/-- `p?[A007989(n)]*A097327(A008578(n+2))` -/
def P635215938860485377.Spec : Prop :=
  ∀ n, P635215938860485377.a n = A078285 (n + 1)

end A078285

/-! ## A078285.P5108650674847090926

`record[A014963(n+2)]*A097327(A008578(n+2))`
-/

namespace A078285.P5108650674847090926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A097327 (A008578 (n + 2)).toNat

end

end A078285.P5108650674847090926

namespace A078285

/-- `record[A014963(n+2)]*A097327(A008578(n+2))` -/
def P5108650674847090926.Spec : Prop :=
  ∀ n, P5108650674847090926.a n = A078285 (n + 1)

end A078285

/-!
# A078287: Least nontrivial multiple of the n-th prime beginning with 3.

The programs for A078287, there is no canonical definition to state claims against.
-/

/-! ## A078287.P739882408800277207

`A295430(record[2*n+2-∑{d}[n+1, #]]+1)`
-/

namespace A078287.P739882408800277207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A078287.P739882408800277207

/-! ## A078287.P16956410256618379636

`A295430(A000040(n+1))`
-/

namespace A078287.P16956410256618379636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (A000040 (n + 1)).toNat

end

end A078287.P16956410256618379636

/-! ## A078287.P8901181471032756662

`A295430(A008578(n+2))`
-/

namespace A078287.P8901181471032756662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (A008578 (n + 2)).toNat

end

end A078287.P8901181471032756662

/-! ## A078287.P14923480076790429251

`A295430(A116974(n+2))`
-/

namespace A078287.P14923480076790429251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (A116974 (n + 2)).toNat

end

end A078287.P14923480076790429251

/-! ## A078287.P3515451147311423913

`A295430(A182986(n+2))`
-/

namespace A078287.P3515451147311423913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (A182986 (n + 2)).toNat

end

end A078287.P3515451147311423913

/-! ## A078287.P8030393595618944063

`A295430(record[A006530(n+2)])`
-/

namespace A078287.P8030393595618944063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078287.P8030393595618944063

/-! ## A078287.P15416561064249820695

`A295430(record[A014963(n+2)])`
-/

namespace A078287.P15416561064249820695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078287.P15416561064249820695

/-! ## A078287.P17164174650705314157

`A295430(record[A020639(n+2)])`
-/

namespace A078287.P17164174650705314157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078287.P17164174650705314157

/-! ## A078287.P9249922752302120027

`A295430(record[A093819(n+1)+1])`
-/

namespace A078287.P9249922752302120027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078287.P9249922752302120027

/-!
# A078288: Least nontrivial multiple of the n-th prime beginning with 4.

The programs for A078288, there is no canonical definition to state claims against.
-/

/-! ## A078288.P2636615020543774178

`A082794(record[p?[A188462(n+1)]])`
-/

namespace A078288.P2636615020543774178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078288.P2636615020543774178

/-! ## A078288.P11646998363105055144

`A082794(record[p?[A036445(n+2)]])`
-/

namespace A078288.P11646998363105055144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078288.P11646998363105055144

/-! ## A078288.P9140455536122721568

`A082794(A000040(n+1)^A340366(n+3))`
-/

namespace A078288.P9140455536122721568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082794 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A340366 (n + 3) : ℤ))).toNat

end

end A078288.P9140455536122721568

/-! ## A078288.P11208855836706967023

`A082794(A008578(n+2)%A342922(n+1))`
-/

namespace A078288.P11208855836706967023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082794 (Int.tmod (A008578 (n + 2)) (A342922 (n + 1))).toNat

end

end A078288.P11208855836706967023

/-! ## A078288.P4571563407555585506

`A082794(A000040(n+1)%A234696(n+5))`
-/

namespace A078288.P4571563407555585506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082794 (Int.tmod (A000040 (n + 1)) (A234696 (n + 5))).toNat

end

end A078288.P4571563407555585506

/-!
# A078290: Least nontrivial multiple of the n-th prime beginning with 6.

The programs for A078290, there is no canonical definition to state claims against.
-/

/-! ## A078290.P14051684033030191498

`A082796(record[p?[A112382(n)]])`
-/

namespace A078290.P14051684033030191498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078290.P14051684033030191498

/-! ## A078290.P3144525030600067161

`A082796(p?[n*A210442(n)])`
-/

namespace A078290.P3144525030600067161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078290.P3144525030600067161

/-! ## A078290.P9380635898302009403

`A082796(record[A006530(A105658(n))])`
-/

namespace A078290.P9380635898302009403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078290.P9380635898302009403

/-! ## A078290.P356832105100511107

`A082796(A000040(n+1)^A278657(n))`
-/

namespace A078290.P356832105100511107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082796 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A078290.P356832105100511107

/-! ## A078290.P5528254564095592118

`A082796(A278657(n)²²*A000040(n+1))`
-/

namespace A078290.P5528254564095592118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082796 ((A278657 n ^ 2) ^ 2 * A000040 (n + 1)).toNat

end

end A078290.P5528254564095592118

/-!
# A078292: Least nontrivial multiple of the n-th prime beginning with 8.

The programs for A078292, there is no canonical definition to state claims against.
-/

/-! ## A078292.P15129994863650659335

`A082798(p?[A229300(n+1)])`
-/

namespace A078292.P15129994863650659335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082798 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078292.P15129994863650659335

/-! ## A078292.P17944227099935556102

`A082798(A000040(n+1)%A358022(n))`
-/

namespace A078292.P17944227099935556102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082798 (Int.tmod (A000040 (n + 1)) (A358022 n)).toNat

end

end A078292.P17944227099935556102

/-! ## A078292.P18332568406217878827

`A082798(A000040(n+1))%A352225(n+1)`
-/

namespace A078292.P18332568406217878827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082798 (A000040 (n + 1)).toNat) (A352225 (n + 1))

end

end A078292.P18332568406217878827

/-! ## A078292.P12250043220244596488

`A082798(record[A164880(n+2)%A082798(n+1)])`
-/

namespace A078292.P12250043220244596488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164880 (n + 2)) (A082798 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078292.P12250043220244596488

/-! ## A078292.P11487466592308365085

`A082798(lt[A175027(n), n])`
-/

namespace A078292.P11487466592308365085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175027 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082798 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A078292.P11487466592308365085

/-!
# A078293: Least nontrivial multiple of the n-th prime beginning with 9.

The programs for A078293, there is no canonical definition to state claims against.
-/

/-! ## A078293.P8834018969976125303

`A187090(record[A164880(n+2)])`
-/

namespace A078293.P8834018969976125303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164880 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078293.P8834018969976125303

/-! ## A078293.P166223587077581107

`A187090(p?[A118759(n)-3])`
-/

namespace A078293.P166223587077581107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078293.P166223587077581107

/-! ## A078293.P11412644181616815472

`A187090(A000040(n+1)%A187095(n+1))`
-/

namespace A078293.P11412644181616815472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187090 (Int.tmod (A000040 (n + 1)) (A187095 (n + 1))).toNat

end

end A078293.P11412644181616815472

/-! ## A078293.P16148721365390329811

`A187090(lt[A175027(n), n])`
-/

namespace A078293.P16148721365390329811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175027 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187090 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A078293.P16148721365390329811

/-!
# A078295: Smallest multiple of n whose digits can be re-arranged to be a substring of the cyclic concatenation 1234567890123435678901234...

The programs for A078295, there is no canonical definition to state claims against.
-/

/-! ## A078295.P2893942026700582884

`lcm(n+1, A238016(A309951(n)))`
-/

namespace A078295.P2893942026700582884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A238016 (A309951 n).toNat)

end

end A078295.P2893942026700582884

/-! ## A078295.P175577794834341428

`(n+1)*A132588(A028257(n+1))`
-/

namespace A078295.P175577794834341428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A132588 (A028257 (n + 1)).toNat

end

end A078295.P175577794834341428

/-! ## A078295.P5677169356854433593

`A319646(C(n, 9))+n`
-/

namespace A078295.P5677169356854433593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319646 (Nat.choose n 9) + (n : ℤ)

end

end A078295.P5677169356854433593

/-! ## A078295.P1039763970851334101

`ratio[-A249157(n+1)!]`
-/

namespace A078295.P1039763970851334101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (A249157 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078295.P1039763970851334101

/-! ## A078295.P9722194174379184674

`ratio[record[A087187(n+1)]!/2]`
-/

namespace A078295.P9722194174379184674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087187 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A078295.P9722194174379184674

/-!
# A078296: a(1) = 1, a(n) for n > 1 is the smallest multiple of a(n-1) that begins with the concatenation 123... up to n.

The programs for A078296, there is no canonical definition to state claims against.
-/

/-! ## A078296.P7240848542000045151

`∏[A078397(n+1)]/A078397(n+1)`
-/

namespace A078296.P7240848542000045151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078397 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A078397 (n + 1) : ℚ)

end

end A078296.P7240848542000045151

/-!
# A078299: Numbers which can be expressed as the sum of two distinct primes in exactly four ways.

The programs for A078299, there is no canonical definition to state claims against.
-/

/-! ## A078299.P12907396492727878622

`eq[9, or(1, A002126(n))]`
-/

namespace A078299.P12907396492727878622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078299.P12907396492727878622

/-! ## A078299.P17943415753214653492

`eq[4, A117929(n+1)]+1`
-/

namespace A078299.P17943415753214653492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078299.P17943415753214653492

/-! ## A078299.P9790254362296409654

`eq[4, A117929(xor(n, C(2, n)))]`
-/

namespace A078299.P9790254362296409654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (Nat.xor n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078299.P9790254362296409654

/-! ## A078299.P16085154971751285555

`eq[4, floor(A002126(n+1)/2)]+1`
-/

namespace A078299.P16085154971751285555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002126 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078299.P16085154971751285555

/-! ## A078299.P14757462329276778522

`eq[4, floor(A073610(n+1)/2)]+1`
-/

namespace A078299.P14757462329276778522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073610 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078299.P14757462329276778522

