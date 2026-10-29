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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A341700: Sum of the primes p satisfying n < p <= 2n.

The programs for A341700, the canonical program `A341700.P6811357210950876321` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341700 has offset 1).

The definition of A341700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341700.P6811357210950876321

`A034387(2*(n+1))-A034387(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A341700

/-- `A034387(2*(n+1))-A034387(n+1)` -/
def P6811357210950876321.Spec : Prop :=
  ∀ n, P6811357210950876321.a n = A341700 (n + 1)

theorem P6811357210950876321.correct : P6811357210950876321.Spec := by
  intro n
  simp only [A341700, Nat.add_sub_cancel]

end A341700

/-! ## A341700.P14208436655376045572

`A063955(2*(n+1))`
-/

namespace A341700.P14208436655376045572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * (n + 1))

end

end A341700.P14208436655376045572

namespace A341700

/-- `A063955(2*(n+1))` -/
def P14208436655376045572.Spec : Prop :=
  ∀ n, P14208436655376045572.a n = A341700 (n + 1)

end A341700

/-! ## A341700.P10042557291233860425

`A294487(2*n+3)`
-/

namespace A341700.P10042557291233860425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (2 * n + 3)

end

end A341700.P10042557291233860425

namespace A341700

/-- `A294487(2*n+3)` -/
def P10042557291233860425.Spec : Prop :=
  ∀ n, P10042557291233860425.a n = A341700 (n + 1)

end A341700

/-! ## A341700.P14015135966171478827

`root(A063955(n+2+n), 2)²`
-/

namespace A341700.P14015135966171478827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A063955 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A341700.P14015135966171478827

namespace A341700

/-- `root(A063955(n+2+n), 2)²` -/
def P14015135966171478827.Spec : Prop :=
  ∀ n, P14015135966171478827.a n = (A341700 (n + 1) : ℝ)

end A341700

/-! ## A341700.P7006088572989391976

`A073837(n+1)-∑{p}[n+1, C(#, n)]`
-/

namespace A341700.P7006088572989391976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ)

end

end A341700.P7006088572989391976

namespace A341700

/-- `A073837(n+1)-∑{p}[n+1, C(#, n)]` -/
def P7006088572989391976.Spec : Prop :=
  ∀ n, P7006088572989391976.a n = A341700 (n + 1)

end A341700

/-! ## A341700.P8712264185981999639

`A028310(A063955(n+2+n))`
-/

namespace A341700.P8712264185981999639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A063955 (n + 2 + n)).toNat

end

end A341700.P8712264185981999639

namespace A341700

/-- `A028310(A063955(n+2+n))` -/
def P8712264185981999639.Spec : Prop :=
  ∀ n, P8712264185981999639.a n = A341700 (n + 1)

end A341700

/-! ## A341700.P16534436720849475771

`A073837(n+1)-A061397(n+1)`
-/

namespace A341700.P16534436720849475771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073837 (n + 1) - A061397 (n + 1)

end

end A341700.P16534436720849475771

namespace A341700

/-- `A073837(n+1)-A061397(n+1)` -/
def P16534436720849475771.Spec : Prop :=
  ∀ n, P16534436720849475771.a n = A341700 (n + 1)

end A341700

/-! ## A341700.P17017453640951628426

`A063955(n+2+n)/A007318(∑[n])`
-/

namespace A341700.P17017453640951628426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063955 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A341700.P17017453640951628426

namespace A341700

/-- `A063955(n+2+n)/A007318(∑[n])` -/
def P17017453640951628426.Spec : Prop :=
  ∀ n, P17017453640951628426.a n = (A341700 (n + 1) : ℚ)

end A341700

/-! ## A341700.P14603541377612798459

`A158662(2*(n+1))-A158662(n+1)`
-/

namespace A341700.P14603541377612798459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (2 * (n + 1)) - A158662 (n + 1)

end

end A341700.P14603541377612798459

namespace A341700

/-- `A158662(2*(n+1))-A158662(n+1)` -/
def P14603541377612798459.Spec : Prop :=
  ∀ n, P14603541377612798459.a n = A341700 (n + 1)

theorem P14603541377612798459.correct : P14603541377612798459.Spec := by
  intro n
  simp only [A341700, Nat.add_sub_cancel, A341700.P14603541377612798459.a, A341700.P6811357210950876321.a, A034387, A034387.P4934732080317010833.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341700

/-!
# A341701: a(n) = largest m > 0 such that the decimal concatenation n||n-1||n-2||...||m is prime, or -1 if no such prime exists.

The programs for A341701, there is no canonical definition to state claims against.
-/

/-! ## A341701.P7334465391953506199

`A341931(n)+A341932(n)-A341702(n)`
-/

namespace A341701.P7334465391953506199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341931 n + (A341932 n - A341702 n)

end

end A341701.P7334465391953506199

/-! ## A341701.P1531234146536436332

`or(A000005(A027306(n)), A341702(n))`
-/

namespace A341701.P1531234146536436332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A027306 n).toNat) (A341702 n)

end

end A341701.P1531234146536436332

/-!
# A341702: a(n) is the smallest k < n such that the decimal concatenation n||n-1||n-2||...||n-k is prime, or -1 if no such prime exists.

The programs for A341702, there is no canonical definition to state claims against.
-/

/-! ## A341702.P187794099266972188

`A341931(n)+A341932(n)-A341701(n)`
-/

namespace A341702.P187794099266972188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341931 n + (A341932 n - A341701 n)

end

end A341702.P187794099266972188

/-! ## A341702.P2825768122761856432

`A341932(n)%A089120(A182949(n+1))`
-/

namespace A341702.P2825768122761856432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341932 n) (A089120 (A182949 (n + 1)).toNat)

end

end A341702.P2825768122761856432

/-! ## A341702.P13011708270723445412

`A341932(n)%A089120(A163840(n))`
-/

namespace A341702.P13011708270723445412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341932 n) (A089120 (A163840 n).toNat)

end

end A341702.P13011708270723445412

/-! ## A341702.P100700747401811163

`(A341932(n)^A014963(A030656(n)))%2`
-/

namespace A341702.P100700747401811163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A341932 n : ℚ) ^ (A014963 (A030656 n).toNat : ℤ))) 2

end

end A341702.P100700747401811163

/-! ## A341702.P5576528905754682010

`A333248(gcd(A040081(n+1), A078905(n+1)))`
-/

namespace A341702.P5576528905754682010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333248 (Int.gcd (A040081 (n + 1)) (A078905 (n + 1)))

end

end A341702.P5576528905754682010

/-!
# A341703: a(n) = 6*binomial(n,4) + 2*binomial(n,2) + 1.

The programs for A341703, the canonical program `A341703.P11625102259490537725` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341703 has offset 0).

The definition of A341703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n, 4)+2*C(n, 2)+1` (program `A341703.P11625102259490537725`, by `A341703.P11625102259490537725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341703.P11625102259490537725

`6*C(n, 4)+2*C(n, 2)+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341703

/-- `6*C(n, 4)+2*C(n, 2)+1` -/
def P11625102259490537725.Spec : Prop :=
  ∀ n, (P11625102259490537725.a n : ℤ) = A341703 n

theorem P11625102259490537725.correct : P11625102259490537725.Spec := by
  intro n
  simp only [A341703]

end A341703

/-! ## A341703.P2417347940327609490

`ogf((1-4x+8x^2-8x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A341703.P2417347940327609490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 8, -8, 9] [1, -5, 10, -10, 5, -1] n

end

end A341703.P2417347940327609490

namespace A341703

/-- `ogf((1-4x+8x^2-8x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2417347940327609490.Spec : Prop :=
  ∀ n, P2417347940327609490.a n = A341703 n

end A341703

/-! ## A341703.P5361896452672397283

`(4-10*n+15*n²-6*n^3+n^4)/4`
-/

namespace A341703.P5361896452672397283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - (10 * n : ℤ) + (15 * n ^ 2 : ℤ) - (6 * n ^ 3 : ℤ) + (n ^ 4 : ℤ) : ℚ) / 4

end

end A341703.P5361896452672397283

namespace A341703

/-- `(4-10*n+15*n²-6*n^3+n^4)/4` -/
def P5361896452672397283.Spec : Prop :=
  ∀ n, P5361896452672397283.a n = (A341703 n : ℚ)

theorem P5361896452672397283.correct : P5361896452672397283.Spec := by
  intro n
  simp only [A341703, Nat.add_sub_cancel, A341703.P5361896452672397283.a, A341703.P11625102259490537725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341703

/-! ## A341703.P16182766380283250087

`∑[n]+(n-1-C(n, 2))²`
-/

namespace A341703.P16182766380283250087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) ^ 2

end

end A341703.P16182766380283250087

namespace A341703

/-- `∑[n]+(n-1-C(n, 2))²` -/
def P16182766380283250087.Spec : Prop :=
  ∀ n, P16182766380283250087.a n = A341703 n

end A341703

/-! ## A341703.P17190217162694633267

`6*C(n, 4)+n²-n+1`
-/

namespace A341703.P17190217162694633267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose n 4 : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ)) + 1

end

end A341703.P17190217162694633267

namespace A341703

/-- `6*C(n, 4)+n²-n+1` -/
def P17190217162694633267.Spec : Prop :=
  ∀ n, P17190217162694633267.a n = A341703 n

theorem P17190217162694633267.correct : P17190217162694633267.Spec := by
  intro n
  simp only [A341703, Nat.add_sub_cancel, A341703.P17190217162694633267.a, A341703.P11625102259490537725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341703

/-! ## A341703.P3610983507026518709

`a(n-1)+(n-2)^3+n` with `a(0)=1`
-/

namespace A341703.P3610983507026518709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((n : ℤ) - 2) ^ 3 + (n : ℤ))

end

end A341703.P3610983507026518709

namespace A341703

/-- `a(n-1)+(n-2)^3+n` -/
def P3610983507026518709.Spec : Prop :=
  ∀ n, P3610983507026518709.a n = A341703 n

end A341703

/-! ## A341703.P9930784897454808482

`A327319(n)+A152947(n+1)`
-/

namespace A341703.P9930784897454808482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327319 n + A152947 (n + 1)

end

end A341703.P9930784897454808482

namespace A341703

/-- `A327319(n)+A152947(n+1)` -/
def P9930784897454808482.Spec : Prop :=
  ∀ n, P9930784897454808482.a n = A341703 n

theorem P9930784897454808482.correct : P9930784897454808482.Spec := by
  intro n
  simp only [A341703, Nat.add_sub_cancel, A341703.P9930784897454808482.a, A341703.P11625102259490537725.a, A152947, A152947.P16367813442806996368.a, A327319, A327319.P13809795220041064015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341703

/-! ## A341703.P14889974194338473829

`or(1, A327319(n)+A161680(n))`
-/

namespace A341703.P14889974194338473829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A327319 n + A161680 n)

end

end A341703.P14889974194338473829

namespace A341703

/-- `or(1, A327319(n)+A161680(n))` -/
def P14889974194338473829.Spec : Prop :=
  ∀ n, P14889974194338473829.a n = A341703 n

end A341703

/-! ## A341703.P15267570406008126209

`or(1, A062026(log2(A011782(n))))`
-/

namespace A341703.P15267570406008126209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062026 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat)

end

end A341703.P15267570406008126209

namespace A341703

/-- `or(1, A062026(log2(A011782(n))))` -/
def P15267570406008126209.Spec : Prop :=
  ∀ n, P15267570406008126209.a n = A341703 n

end A341703

/-! ## A341703.P5595292553487218129

`(A062026(log2(A011782(n)))+1)%A198633(n)`
-/

namespace A341703.P5595292553487218129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062026 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + 1) (A198633 n)

end

end A341703.P5595292553487218129

namespace A341703

/-- `(A062026(log2(A011782(n)))+1)%A198633(n)` -/
def P5595292553487218129.Spec : Prop :=
  ∀ n, P5595292553487218129.a n = A341703 n

end A341703

/-!
# A341704: a(n) = 20*binomial(n,6) + 2*binomial(n,3) + 1.

The programs for A341704, the canonical program `A341704.P6450920323107244498` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341704 has offset 0).

The definition of A341704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*C(n, 6)+2*C(n, 3)+1` (program `A341704.P6450920323107244498`, by `A341704.P6450920323107244498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341704.P6450920323107244498

`20*C(n, 6)+2*C(n, 3)+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341704

/-- `20*C(n, 6)+2*C(n, 3)+1` -/
def P6450920323107244498.Spec : Prop :=
  ∀ n, (P6450920323107244498.a n : ℤ) = A341704 n

theorem P6450920323107244498.correct : P6450920323107244498.Spec := by
  intro n
  simp only [A341704]

end A341704

/-! ## A341704.P8317485538428558900

`ogf((1-6x+15x^2-18x^3+9x^4+19x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A341704.P8317485538428558900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 15, -18, 9, 0, 19] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A341704.P8317485538428558900

namespace A341704

/-- `ogf((1-6x+15x^2-18x^3+9x^4+19x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8317485538428558900.Spec : Prop :=
  ∀ n, P8317485538428558900.a n = A341704 n

end A341704

/-! ## A341704.P6886278555194188627

`2*A275427(A073790(n))-1`
-/

namespace A341704.P6886278555194188627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275427 (A073790 n).toNat - 1

end

end A341704.P6886278555194188627

namespace A341704

/-- `2*A275427(A073790(n))-1` -/
def P6886278555194188627.Spec : Prop :=
  ∀ n, P6886278555194188627.a n = A341704 n

end A341704

/-! ## A341704.P11931483623555350200

`A162226(A349138(n+5)+A000108(n))`
-/

namespace A341704.P11931483623555350200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A349138 (n + 5) + A000108 n).toNat

end

end A341704.P11931483623555350200

namespace A341704

/-- `A162226(A349138(n+5)+A000108(n))` -/
def P11931483623555350200.Spec : Prop :=
  ∀ n, P11931483623555350200.a n = A341704 n

end A341704

/-!
# A341705: a(n) = 70*binomial(n,8) + 2*binomial(n,4) + 1.

The programs for A341705, the canonical program `A341705.P8011593203518497260` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341705 has offset 0).

The definition of A341705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `70*C(n, 8)+2*C(n, 4)+1` (program `A341705.P8011593203518497260`, by `A341705.P8011593203518497260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341705.P8011593203518497260

`70*C(n, 8)+2*C(n, 4)+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341705

/-- `70*C(n, 8)+2*C(n, 4)+1` -/
def P8011593203518497260.Spec : Prop :=
  ∀ n, (P8011593203518497260.a n : ℤ) = A341705 n

theorem P8011593203518497260.correct : P8011593203518497260.Spec := by
  intro n
  simp only [A341705]

end A341705

/-! ## A341705.P8273459502517465708

`A332057(A000704(n))`
-/

namespace A341705.P8273459502517465708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332057 (A000704 n).toNat

end

end A341705.P8273459502517465708

namespace A341705

/-- `A332057(A000704(n))` -/
def P8273459502517465708.Spec : Prop :=
  ∀ n, P8273459502517465708.a n = A341705 n

end A341705

/-! ## A341705.P5431210412965642971

`A004273(A351932(n))`
-/

namespace A341705.P5431210412965642971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A351932 n).toNat

end

end A341705.P5431210412965642971

namespace A341705

/-- `A004273(A351932(n))` -/
def P5431210412965642971.Spec : Prop :=
  ∀ n, P5431210412965642971.a n = A341705 n

end A341705

/-! ## A341705.P14177293011434363185

`A005408(A351932(n)-1)`
-/

namespace A341705.P14177293011434363185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A351932 n - 1).toNat

end

end A341705.P14177293011434363185

namespace A341705

/-- `A005408(A351932(n)-1)` -/
def P14177293011434363185.Spec : Prop :=
  ∀ n, P14177293011434363185.a n = A341705 n

end A341705

/-! ## A341705.P6852159144737710938

`A339966(2*A000704(n))`
-/

namespace A341705.P6852159144737710938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (2 * A000704 n).toNat

end

end A341705.P6852159144737710938

namespace A341705

/-- `A339966(2*A000704(n))` -/
def P6852159144737710938.Spec : Prop :=
  ∀ n, P6852159144737710938.a n = A341705 n

end A341705

/-!
# A341706: Row 2 of semigroup multiplication table shown in A341317 and A341318.

The programs for A341706, the canonical program `A341706.P8453003018031914151` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341706 has offset 0).

The definition of A341706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341706.P8453003018031914151

`A000326(round(sqrt(2*n)))+n`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341706

/-- `A000326(round(sqrt(2*n)))+n` -/
def P8453003018031914151.Spec : Prop :=
  ∀ n, P8453003018031914151.a n = A341706 n

theorem P8453003018031914151.correct : P8453003018031914151.Spec := by
  intro n
  simp only [A341706]

end A341706

/-! ## A341706.P2702865848654235202

`record[2*A053187(n)-A053188(n)]`
-/

namespace A341706.P2702865848654235202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053187 n - A053188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341706.P2702865848654235202

namespace A341706

/-- `record[2*A053187(n)-A053188(n)]` -/
def P2702865848654235202.Spec : Prop :=
  ∀ n, P2702865848654235202.a n = A341706 n

end A341706

/-! ## A341706.P18268240889601662962

`record[(n+1)%A056011(n+1)]`
-/

namespace A341706.P18268240889601662962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A056011 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341706.P18268240889601662962

namespace A341706

/-- `record[(n+1)%A056011(n+1)]` -/
def P18268240889601662962.Spec : Prop :=
  ∀ n, P18268240889601662962.a n = A341706 n

end A341706

/-! ## A341706.P3030439902880416295

`record[(n+1)*A114327(n)%2]`
-/

namespace A341706.P3030439902880416295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A114327 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341706.P3030439902880416295

namespace A341706

/-- `record[(n+1)*A114327(n)%2]` -/
def P3030439902880416295.Spec : Prop :=
  ∀ n, P3030439902880416295.a n = A341706 n

end A341706

/-! ## A341706.P992668668615891333

`record[A211394(n+1)%A221216(n+1)]`
-/

namespace A341706.P992668668615891333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211394 (n + 1)) (A221216 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341706.P992668668615891333

namespace A341706

/-- `record[A211394(n+1)%A221216(n+1)]` -/
def P992668668615891333.Spec : Prop :=
  ∀ n, P992668668615891333.a n = A341706 n

end A341706

/-! ## A341706.P3917393360559473432

`record[(n+1)*A267053(2*n+1)]`
-/

namespace A341706.P3917393360559473432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267053 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341706.P3917393360559473432

namespace A341706

/-- `record[(n+1)*A267053(2*n+1)]` -/
def P3917393360559473432.Spec : Prop :=
  ∀ n, P3917393360559473432.a n = A341706 n

end A341706

/-! ## A341706.P16354080625490947340

`eq[A027907(A068225(2*n+1)), A027907(2*n)]`
-/

namespace A341706.P16354080625490947340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A068225 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341706.P16354080625490947340

namespace A341706

/-- `eq[A027907(A068225(2*n+1)), A027907(2*n)]` -/
def P16354080625490947340.Spec : Prop :=
  ∀ n, (P16354080625490947340.a n : ℤ) = A341706 n

end A341706

/-! ## A341706.P3630893049030793520

`A165775(comp[A004202(n+1)])`
-/

namespace A341706.P3630893049030793520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165775 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A341706.P3630893049030793520

namespace A341706

/-- `A165775(comp[A004202(n+1)])` -/
def P3630893049030793520.Spec : Prop :=
  ∀ n, P3630893049030793520.a n = A341706 n

end A341706

/-! ## A341706.P2916805171172726706

`A341317(∑[n+3])`
-/

namespace A341706.P2916805171172726706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341706.P2916805171172726706

namespace A341706

/-- `A341317(∑[n+3])` -/
def P2916805171172726706.Spec : Prop :=
  ∀ n, P2916805171172726706.a n = A341706 n

end A341706

/-!
# A341707: a(n) is the binary representation of n converted to yranib.

The programs for A341707, there is no canonical definition to state claims against.
-/

/-! ## A341707.P39199848776500945

`A056964(A053644(n))-(A000038(A000070(n))+n)`
-/

namespace A341707.P39199848776500945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A053644 n).toNat - (A000038 (A000070 n).toNat + (n : ℤ))

end

end A341707.P39199848776500945

/-! ## A341707.P510428810194068384

`A004086(A051903(A277933(n)))`
-/

namespace A341707.P510428810194068384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A051903 (A277933 n).toNat).toNat

end

end A341707.P510428810194068384

/-!
# A341709: Write n as a sum of powers of 2 then replace each power of 2 in the sum by its decimal reversal A004094(n).

The programs for A341709, there is no canonical definition to state claims against.
-/

/-! ## A341709.P8248651807086832489

`A085970(A080786(A076359(n+1)))+n`
-/

namespace A341709.P8248651807086832489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A080786 (A076359 (n + 1)).toNat).toNat + (n : ℤ)

end

end A341709.P8248651807086832489

/-! ## A341709.P17806999213880768898

`or(n, A184955(n)/2)`
-/

namespace A341709.P17806999213880768898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((A184955 n : ℚ) / 2))

end

end A341709.P17806999213880768898

/-! ## A341709.P8472942883193250129

`A005963(A208183(n))+n`
-/

namespace A341709.P8472942883193250129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005963 (A208183 n).toNat + (n : ℤ)

end

end A341709.P8472942883193250129

/-! ## A341709.P6154892960346654520

`A077814(A184955(n))+n`
-/

namespace A341709.P6154892960346654520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (A184955 n).toNat + (n : ℤ)

end

end A341709.P6154892960346654520

/-! ## A341709.P13419945114672643715

`A230414(A324680(n))+n`
-/

namespace A341709.P13419945114672643715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 (A324680 n).toNat + (n : ℤ)

end

end A341709.P13419945114672643715

/-!
# A341710: a(n) = A120963(n)/2.

The programs for A341710, there is no canonical definition to state claims against.
-/

/-! ## A341710.P7966802831309900450

`A120963(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341710.P7966802831309900450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120963 (n + 1) : ℚ) / 2

end

end A341710.P7966802831309900450

/-! ## A341710.P9453911686193642612

`∪[A341712(n+1), A341711(n)]`
-/

namespace A341710.P9453911686193642612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341711 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341710.P9453911686193642612

/-! ## A341710.P3027547968485066559

`2^A008683(A003629(n+1))*A120963(n+1)`
-/

namespace A341710.P3027547968485066559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A120963 (n + 1) : ℚ)

end

end A341710.P3027547968485066559

/-! ## A341710.P15487953850401842572

`Δ[A361152(n)]`
-/

namespace A341710.P15487953850401842572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341710.P15487953850401842572

/-! ## A341710.P11410468762455697001

`A361152(n+1)-A361152(n)`
-/

namespace A341710.P11410468762455697001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361152 (n + 1) - A361152 n

end

end A341710.P11410468762455697001

/-! ## A341710.P7618049932138376453

`Δ[A051894(n)/2]`
-/

namespace A341710.P7618049932138376453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051894 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341710.P7618049932138376453

/-! ## A341710.P15779821698023579329

`Δ[∑[A120963(n)]/2]`
-/

namespace A341710.P15779821698023579329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341710.P15779821698023579329

/-! ## A341710.P15664839494286131987

`record[A120963(A112382(n))/2]`
-/

namespace A341710.P15664839494286131987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120963 (A112382 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341710.P15664839494286131987

/-!
# A341711: a(n) = A120963(2*n+1)/2.

The programs for A341711, there is no canonical definition to state claims against.
-/

/-! ## A341711.P14929316318633162538

`A120963(2*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341711.P14929316318633162538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120963 (2 * n + 1) : ℚ) / 2

end

end A341711.P14929316318633162538

/-! ## A341711.P17316551358257627168

`A341710(Δ[n²])`
-/

namespace A341711.P17316551358257627168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341710 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341711.P17316551358257627168

/-! ## A341711.P16892256317466776314

`∑[A347428(2*n)]`
-/

namespace A341711.P16892256317466776314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347428 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341711.P16892256317466776314

/-! ## A341711.P8161004270529715019

`or(1, A341710(2*n+1))`
-/

namespace A341711.P8161004270529715019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341710 (2 * n + 1))

end

end A341711.P8161004270529715019

/-! ## A341711.P12506912326580241128

`A120963(2*n+1)-A341710(2*n+1)`
-/

namespace A341711.P12506912326580241128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 (2 * n + 1) - A341710 (2 * n + 1)

end

end A341711.P12506912326580241128

/-! ## A341711.P10130183099546706419

`A361152(2*n+1)-A361152(2*n)`
-/

namespace A341711.P10130183099546706419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361152 (2 * n + 1) - A361152 (2 * n)

end

end A341711.P10130183099546706419

/-! ## A341711.P12115755906545153369

`A360520(2*n)-A120963(2*n)`
-/

namespace A341711.P12115755906545153369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360520 (2 * n) - A120963 (2 * n)

end

end A341711.P12115755906545153369

/-! ## A341711.P1003310765931245462

`A360520(Δ[n²])/3`
-/

namespace A341711.P1003310765931245462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A341711.P1003310765931245462

/-!
# A341712: a(n) = A120963(2*n)/2.

The programs for A341712, there is no canonical definition to state claims against.
-/

/-! ## A341712.P3007524740736088420

`A120963(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341712.P3007524740736088420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120963 (2 * (n + 1)) : ℚ) / 2

end

end A341712.P3007524740736088420

/-! ## A341712.P15768890307281837429

`A341710(2*(n+1))`
-/

namespace A341712.P15768890307281837429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341710 (2 * (n + 1))

end

end A341712.P15768890307281837429

/-! ## A341712.P6010299907037413195

`record[A341710(xor(1, n)+1)]`
-/

namespace A341712.P6010299907037413195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341710 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341712.P6010299907037413195

/-! ## A341712.P17896583458243070172

`or(C(2, n+2), A341710(n+2+n))`
-/

namespace A341712.P17896583458243070172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A341710 (n + 2 + n))

end

end A341712.P17896583458243070172

/-! ## A341712.P9631017084970213420

`Δ[∑[A120963(2*n)]/2]`
-/

namespace A341712.P9631017084970213420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341712.P9631017084970213420

/-!
# A341713: Indices of Ennesrem primes: k such that A004094(k)-1 is prime.

The programs for A341713, there is no canonical definition to state claims against.
-/

/-! ## A341713.P12198859414429419615

`A327539(A092473(n))+A002182(n+1)`
-/

namespace A341713.P12198859414429419615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (A092473 n).toNat + A002182 (n + 1)

end

end A341713.P12198859414429419615

/-!
# A341714: Coefficients in the expansion of Product_{m>=1} (1 - q^(13*m))/(1 - q^m).

The programs for A341714, there is no canonical definition to state claims against.
-/

/-! ## A341714.P4109603243089919219

`A286653(eq[12, A025581(n)])`
-/

namespace A341714.P4109603243089919219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341714.P4109603243089919219

/-! ## A341714.P897029864086901076

`A286653(eq[13, A193739(n)])`
-/

namespace A341714.P897029864086901076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341714.P897029864086901076

/-! ## A341714.P18071922270548171844

`A124094(A000217(n+12)+n)`
-/

namespace A341714.P18071922270548171844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A341714.P18071922270548171844

/-! ## A341714.P4223762340046491463

`A286653(A000217(n+12)+n)`
-/

namespace A341714.P4223762340046491463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A341714.P4223762340046491463

/-! ## A341714.P3861481719847273829

`A286653(A161680(n+13)+n)`
-/

namespace A341714.P3861481719847273829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A161680 (n + 13) + (n : ℤ)).toNat

end

end A341714.P3861481719847273829

/-! ## A341714.P16557710808846388621

`A124094(A046691(n+10)+n+4)`
-/

namespace A341714.P16557710808846388621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (A046691 (n + 10) + (n + 4 : ℤ)).toNat

end

end A341714.P16557710808846388621

/-!
# A341716: a(n) = smallest k such that the decimal concatenation n||n+1||n+2||...||n+k is prime, or -1 if no such prime exists.

The programs for A341716, there is no canonical definition to state claims against.
-/

/-! ## A341716.P3331614062509571349

`A244424(n+2)-1`
-/

namespace A341716.P3331614062509571349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244424 (n + 2) - 1

end

end A341716.P3331614062509571349

/-! ## A341716.P5275652483027626236

`A341717(n+2)-(n+2)`
-/

namespace A341716.P5275652483027626236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341717 (n + 2) - (n + 2 : ℤ)

end

end A341716.P5275652483027626236

/-! ## A341716.P6673692092322977742

`eq[11, A025581(n)]-a(n-2)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=1, a(5)=0, a(6)=1`
-/

namespace A341716.P6673692092322977742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 0, 1, 0, 1] fun n a =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - a (n - 2)

end

end A341716.P6673692092322977742

/-! ## A341716.P2422977443297253088

`A017521(2*a(n-1))+a(n-1)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=1, a(5)=0`
-/

namespace A341716.P2422977443297253088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 0, 1, 0] fun n a =>
  A017521 (2 * a (n - 1)).toNat + a (n - 1)

end

end A341716.P2422977443297253088

/-!
# A341717: a(n) = smallest m >= n such that the decimal concatenation n||n+1||n+2||...||m is prime, or -1 if no such prime exists.

The programs for A341717, there is no canonical definition to state claims against.
-/

/-! ## A341717.P17260857786725672733

`A244424(n+2)+1+n`
-/

namespace A341717.P17260857786725672733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244424 (n + 2) + 1 + (n : ℤ)

end

end A341717.P17260857786725672733

/-! ## A341717.P2112667606183827813

`A341716(n+2)+2+n`
-/

namespace A341717.P2112667606183827813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341716 (n + 2) + 2 + (n : ℤ)

end

end A341717.P2112667606183827813

/-! ## A341717.P16177717157350304341

`A161172(A247765(n+1))+n`
-/

namespace A341717.P16177717157350304341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161172 (A247765 (n + 1)).toNat + (n : ℤ)

end

end A341717.P16177717157350304341

/-! ## A341717.P11849752275543258651

`A020725(A244424(n+2)+n)`
-/

namespace A341717.P11849752275543258651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A244424 (n + 2) + (n : ℤ)).toNat

end

end A341717.P11849752275543258651

/-!
# A341718: Subtract 1 from each term of A004094 (the powers of 2 written backwards).

The programs for A341718, there is no canonical definition to state claims against.
-/

/-! ## A341718.P5121348304766787779

`A004094(n)-1`
-/

namespace A341718.P5121348304766787779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n - 1

end

end A341718.P5121348304766787779

/-! ## A341718.P5610388580458757885

`A057428(n+1)+A004094(n)`
-/

namespace A341718.P5610388580458757885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A004094 n

end

end A341718.P5610388580458757885

/-! ## A341718.P13286359909388431022

`A033999(2*n+1)+A004094(n)`
-/

namespace A341718.P13286359909388431022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A004094 n

end

end A341718.P13286359909388431022

/-! ## A341718.P7991890063582599605

`A056594(A016825(n))+A004094(n)`
-/

namespace A341718.P7991890063582599605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016825 n).toNat + A004094 n

end

end A341718.P7991890063582599605

/-! ## A341718.P18379448195005829695

`A094267(A004768(n))+A004094(n)`
-/

namespace A341718.P18379448195005829695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A004768 n).toNat + A004094 n

end

end A341718.P18379448195005829695

/-! ## A341718.P266972621221956916

`A089263(A139873(n+1))+A004094(n)`
-/

namespace A341718.P266972621221956916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A139873 (n + 1)).toNat + A004094 n

end

end A341718.P266972621221956916

/-! ## A341718.P10651061062678770280

`A103452(A000217(n+7))+A004094(n)`
-/

namespace A341718.P10651061062678770280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (A000217 (n + 7)).toNat + A004094 n

end

end A341718.P10651061062678770280

/-! ## A341718.P2876516411092441483

`A266330(A000096(n))+A004094(n)`
-/

namespace A341718.P2876516411092441483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266330 (A000096 n).toNat + A004094 n

end

end A341718.P2876516411092441483

/-! ## A341718.P3895990091980103059

`A307427(A055784(n+1))+A004094(n)`
-/

namespace A341718.P3895990091980103059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (A055784 (n + 1)).toNat + A004094 n

end

end A341718.P3895990091980103059

/-! ## A341718.P8568967037147419183

`A307427(A055782(n+1))+A004094(n)`
-/

namespace A341718.P8568967037147419183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (A055782 (n + 1)).toNat + A004094 n

end

end A341718.P8568967037147419183

/-!
# A341719: Number of partitions of n into 9 primes (counting 1 as a prime).

The programs for A341719, there is no canonical definition to state claims against.
-/

/-! ## A341719.P848657025309560561

`A341972(A055645(n))-A259195(n)`
-/

namespace A341719.P848657025309560561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341972 ((A055645 n).toNat + 10) - A259195 n

end

end A341719.P848657025309560561

/-! ## A341719.P16288753334837103623

`A341972(A055645(n))+A347578(n)-A347609(n)`
-/

namespace A341719.P16288753334837103623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341972 ((A055645 n).toNat + 10) + (A347578 n - A347609 n)

end

end A341719.P16288753334837103623

/-! ## A341719.P8076803455835166815

`A347578(A055645(n))-(A347609(n)-A341972(n))`
-/

namespace A341719.P8076803455835166815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A055645 n).toNat - (A347609 n - A341972 (n + 10))

end

end A341719.P8076803455835166815

/-! ## A341719.P8115469270275434905

`A341972(A055645(n))-A308854(n)/A233583(n+1)`
-/

namespace A341719.P8115469270275434905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341972 ((A055645 n).toNat + 10) : ℚ) - (A308854 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A341719.P8115469270275434905

/-! ## A341719.P17006024388856156571

`A341972(A055645(n))-A308854(n)/A065033(2*n)`
-/

namespace A341719.P17006024388856156571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341972 ((A055645 n).toNat + 10) : ℚ) - (A308854 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A341719.P17006024388856156571

/-!
# A341720: a(n) = smallest k > 0 such that the decimal concatenation n||n+1||n+2||...||n+k is prime, or -1 if no such prime exists.

The programs for A341720, there is no canonical definition to state claims against.
-/

/-! ## A341720.P8226838240617224737

`A084559(n+2)-(n+2)`
-/

namespace A341720.P8226838240617224737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084559 (n + 2) - (n + 2 : ℤ)

end

end A341720.P8226838240617224737

/-! ## A341720.P8986786397431160670

`A023444(A084559(n+2)-n)`
-/

namespace A341720.P8986786397431160670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A084559 (n + 2) - (n : ℤ)).toNat

end

end A341720.P8986786397431160670

/-! ## A341720.P13951075185020475892

`A257541(A000079(n+3))+A084559(n+2)`
-/

namespace A341720.P13951075185020475892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A000079 (n + 3)).toNat + A084559 (n + 2)

end

end A341720.P13951075185020475892

/-!
# A341721: a(n) = minimum number of total votes needed for one party to win if there are n voters divided into equal districts.

The programs for A341721, there is no canonical definition to state claims against.
-/

/-! ## A341721.P15980240006649058951

`A290323(n+1)-A010894(A005496(n))`
-/

namespace A341721.P15980240006649058951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (n + 1) - A010894 ((A005496 n).toNat + 21)

end

end A341721.P15980240006649058951

/-! ## A341721.P8876130175010859001

`A290323(n+1)+A010815(A133019(n+1))`
-/

namespace A341721.P8876130175010859001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (n + 1) + A010815 (A133019 (n + 1)).toNat

end

end A341721.P8876130175010859001

/-! ## A341721.P6672596124582973572

`A290323(n+1)-A025469(A335405(n))`
-/

namespace A341721.P6672596124582973572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (n + 1) - A025469 (A335405 n).toNat

end

end A341721.P6672596124582973572

/-! ## A341721.P15007488531128218659

`A290323(n+1)-A083892(A335405(n+1))`
-/

namespace A341721.P15007488531128218659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (n + 1) - A083892 (A335405 (n + 1)).toNat

end

end A341721.P15007488531128218659

/-! ## A341721.P10574007191750943860

`A001222(A107848(n+1))%A107848(2*n+1)-A243148(3*n+1)`
-/

namespace A341721.P10574007191750943860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A107848 (n + 1)).toNat) (A107848 (2 * n + 1)) - A243148 (3 * n + 1)

end

end A341721.P10574007191750943860

/-!
# A341722: The part of n in base phi right of the decimal point (reversed), using a greedy algorithm representation (more precisely, using the Bergman-canonical representation).

The programs for A341722, there is no canonical definition to state claims against.
-/

/-! ## A341722.P16412515787559067822

`A215023(∑[A284749(n+1)-A286746(n+1)])`
-/

namespace A341722.P16412515787559067822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1) - A286746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215023 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341722.P16412515787559067822

/-! ## A341722.P11093699238438953772

`A215023(∑[val(A217802(n)+n, 2)])`
-/

namespace A341722.P11093699238438953772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A217802 n + (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341722.P11093699238438953772

/-! ## A341722.P10851938069148224037

`A112867(A019252(n+3)-char[1])`
-/

namespace A341722.P10851938069148224037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (A019252 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A341722.P10851938069148224037

/-!
# A341723: Triangle read by rows: coefficients of expansion of certain weighted sums P_1(n,k) of Fibonacci numbers as a sum of powers.

The programs for A341723, there is no canonical definition to state claims against.
-/

/-! ## A341723.P9473122651460421639

`(-1)^(row(n)-col(n))*C(row(n), col(n))*A000556(row(n)-col(n))`
-/

namespace A341723.P9473122651460421639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (A000556 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A341723.P9473122651460421639

/-! ## A341723.P3391602747425302869

`A000556(A025581(n))*A130595(n)`
-/

namespace A341723.P3391602747425302869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 (A025581 n).toNat * A130595 n

end

end A341723.P3391602747425302869

/-!
# A341724: Triangle read by rows: coefficients of expansion of certain sums P_2(n,k) of Fibonacci numbers as a sum of powers.

The programs for A341724, there is no canonical definition to state claims against.
-/

/-! ## A341724.P17370610107093196543

`(-1)^(row(n)-col(n))*C(row(n), col(n))*A000557(row(n)-col(n))`
-/

namespace A341724.P17370610107093196543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (A000557 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A341724.P17370610107093196543

/-! ## A341724.P4678976386465340762

`A000557(A025660(n+1))*A130595(n)`
-/

namespace A341724.P4678976386465340762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 (A025660 (n + 1)).toNat * A130595 n

end

end A341724.P4678976386465340762

/-!
# A341725: Triangle read by rows: coefficients in expansion of Asveld's polynomials p_j(x).

The programs for A341725, there is no canonical definition to state claims against.
-/

/-! ## A341725.P10424573801657924129

`C(row(n), col(n))*A005923(row(n)-col(n))`
-/

namespace A341725.P10424573801657924129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A005923 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A341725.P10424573801657924129

/-! ## A341725.P15263157314824031471

`Δ[A102363(n)]*A005923(A025581(n))`
-/

namespace A341725.P15263157314824031471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005923 (A025581 n).toNat

end

end A341725.P15263157314824031471

/-!
# A341726: Column 1 of A341723.

The programs for A341726, there is no canonical definition to state claims against.
-/

/-! ## A341726.P16408390811207425439

`Δ[A001057(n)]*A000556(n)`
-/

namespace A341726.P16408390811207425439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000556 n

end

end A341726.P16408390811207425439

/-! ## A341726.P9539217000181226342

`A000556(n)*A181983(n+1)`
-/

namespace A341726.P9539217000181226342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n * A181983 (n + 1)

end

end A341726.P9539217000181226342

/-! ## A341726.P2374464811093121766

`xor(n, A033999(n))*A000556(n)`
-/

namespace A341726.P2374464811093121766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A033999 n) * A000556 n

end

end A341726.P2374464811093121766

/-! ## A341726.P3773884194649886351

`(n+1)*A062157(n+1)*A000556(n)`
-/

namespace A341726.P3773884194649886351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062157 (n + 1) * A000556 n

end

end A341726.P3773884194649886351

/-! ## A341726.P10898726140147064718

`(A000557(n)-A320352(n))*Δ[A001057(n)]`
-/

namespace A341726.P10898726140147064718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000557 n - A320352 n) * (f1 (n + 1) - f1 n)

end

end A341726.P10898726140147064718

/-!
# A341727: Column 1 of A341724.

The programs for A341727, there is no canonical definition to state claims against.
-/

/-! ## A341727.P6337783649513788181

`(-1)^n*(n+1)*A000557(n)`
-/

namespace A341727.P6337783649513788181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (n + 1 : ℤ) * A000557 n

end

end A341727.P6337783649513788181

/-! ## A341727.P7513237770612685841

`(-1)^n*∑{#}[n+1, A000556(#)*(n+1-#)*C(n+1, #)]`
-/

namespace A341727.P7513237770612685841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ k ∈ Finset.range (f1 n + 1), A000556 k * ((n + 1 : ℤ) - (k : ℤ)) * (Nat.choose (n + 1) k : ℤ))

end

end A341727.P7513237770612685841

/-! ## A341727.P11909232047263555703

`ceil(A245155(n)/2)*Δ[A001057(n)]`
-/

namespace A341727.P11909232047263555703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245155 n : ℚ) / 2⌉ * (f1 (n + 1) - f1 n)

end

end A341727.P11909232047263555703

/-! ## A341727.P12658284222155338418

`(n+1)*A341724(∑[n])`
-/

namespace A341727.P12658284222155338418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A341724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341727.P12658284222155338418

/-!
# A341728: Column 1 of A341725.

The programs for A341728, there is no canonical definition to state claims against.
-/

/-! ## A341728.P11372105590674619762

`(n+1)*A005923(n)`
-/

namespace A341728.P11372105590674619762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005923 n

end

end A341728.P11372105590674619762

/-! ## A341728.P3146573659048514458

`∑{#}[n+1, (n+1-#)*C(n+1, #)*A000557(#)]`
-/

namespace A341728.P3146573659048514458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1 : ℤ) - (k : ℤ)) * (Nat.choose (n + 1) k : ℤ) * A000557 k

end

end A341728.P3146573659048514458

/-! ## A341728.P8464323335403448945

`A005923(n)*A008619(2*n)`
-/

namespace A341728.P8464323335403448945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005923 n * A008619 (2 * n)

end

end A341728.P8464323335403448945

/-! ## A341728.P1801427553406642125

`(n+1)*(A245155(n)-A320352(n))`
-/

namespace A341728.P1801427553406642125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A245155 n - A320352 n)

end

end A341728.P1801427553406642125

/-! ## A341728.P14780368610760539901

`A005923(n)*A213634(A005408(n))`
-/

namespace A341728.P14780368610760539901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005923 n * A213634 (A005408 n).toNat

end

end A341728.P14780368610760539901

/-!
# A341729: Maximum number of sides in any cell in a regular n-gon with all diagonals drawn (cf. A007678).

The programs for A341729, there is no canonical definition to state claims against.
-/

/-! ## A341729.P18179526890960877734

`A090739(A051049(n)*A052126(n+1))`
-/

namespace A341729.P18179526890960877734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (A051049 n * A052126 (n + 1)).toNat

end

end A341729.P18179526890960877734

/-! ## A341729.P7672547525670666283

`A070939(A351626(n+3)+A277928(n+1))`
-/

namespace A341729.P7672547525670666283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A351626 (n + 3) + A277928 (n + 1)).toNat

end

end A341729.P7672547525670666283

/-! ## A341729.P6028404598809408555

`A070939(A287197(n+1)+A001065(2*(n+2)))`
-/

namespace A341729.P6028404598809408555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A287197 (n + 1) + A001065 (2 * (n + 2))).toNat

end

end A341729.P6028404598809408555

/-!
# A341730: Maximum number of sides in any cell in a regular 2n-gon with all diagonals drawn (cf. A007678).

The programs for A341730, there is no canonical definition to state claims against.
-/

/-! ## A341730.P6727436085654007022

`A341729(2*(n+2))`
-/

namespace A341730.P6727436085654007022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341729 (2 * (n + 2))

end

end A341730.P6727436085654007022

/-! ## A341730.P9279897388965142599

`A349784(2*(n+2))`
-/

namespace A341730.P9279897388965142599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349784 (2 * (n + 2))

end

end A341730.P9279897388965142599

/-! ## A341730.P7829065541684456816

`A349784(n+4+n)%15`
-/

namespace A341730.P7829065541684456816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349784 (n + 4 + n)) 15

end

end A341730.P7829065541684456816

/-! ## A341730.P5349518386093220679

`A341729(Δ[n²]+3)%16`
-/

namespace A341730.P5349518386093220679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341729 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat) 16

end

end A341730.P5349518386093220679

/-! ## A341730.P16621671786309032231

`A000027(A349784(n+4+n))`
-/

namespace A341730.P16621671786309032231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A349784 (n + 4 + n)).toNat

end

end A341730.P16621671786309032231

/-! ## A341730.P2918901651464729250

`A001222(2^A349784(n+4+n))`
-/

namespace A341730.P2918901651464729250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A349784 (n + 4 + n) : ℤ))).toNat

end

end A341730.P2918901651464729250

/-! ## A341730.P13611076243369839783

`A001222(2^A341729(Δ[n²]+3))`
-/

namespace A341730.P13611076243369839783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A341729 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat : ℤ))).toNat

end

end A341730.P13611076243369839783

/-! ## A341730.P16038959750528428422

`A341729(Δ[n²]+3)/and(1, 1-A000041(n))!`
-/

namespace A341730.P16038959750528428422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341729 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat : ℚ) / (Nat.factorial (Int.land 1 (1 - A000041 n)).toNat : ℚ)

end

end A341730.P16038959750528428422

/-!
# A341731: The array L(n,k) of Barcucci et al. (2021) read by antidiagonals.

The programs for A341731, there is no canonical definition to state claims against.
-/

/-! ## A341731.P10072431962193025222

`A000010(record[A000119(2^n)])`
-/

namespace A341731.P10072431962193025222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341731.P10072431962193025222

/-! ## A341731.P13989446798586610388

`A293484(record[A000119(2^n)])`
-/

namespace A341731.P13989446798586610388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341731.P13989446798586610388

/-! ## A341731.P891680441353332640

`∏{e}[∑[A279785(A279785(n))], #+1]`
-/

namespace A341731.P891680441353332640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279785 (A279785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A341731.P891680441353332640

/-! ## A341731.P8967196604044411517

`A000010(A085152(n+2)+∑{digits}[n, and(8, #)/8])`
-/

namespace A341731.P8967196604044411517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A085152 (n + 2) : ℚ) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum)).toNat

end

end A341731.P8967196604044411517

/-! ## A341731.P1252855279621209877

`A000005(A149688(n)*A225530(n))`
-/

namespace A341731.P1252855279621209877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A149688 n * A225530 n).toNat

end

end A341731.P1252855279621209877

/-!
# A341732: Row 2 of array in A341731.

The programs for A341732, the canonical program `A341732.P13236215540058293646` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341732 has offset 4).

The definition of A341732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341732.P13236215540058293646

`∪[A128634(n+1)+A001453(n+2), A128634(n+2)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A341732

/-- `∪[A128634(n+1)+A001453(n+2), A128634(n+2)]` -/
def P13236215540058293646.Spec : Prop :=
  ∀ n, (P13236215540058293646.a n : ℤ) = A341732 (n + 4)

theorem P13236215540058293646.correct : P13236215540058293646.Spec := by
  intro n
  simp only [A341732, Nat.add_sub_cancel]

end A341732

/-!
# A341733: Row 3 of array in A341731.

The programs for A341733, there is no canonical definition to state claims against.
-/

/-! ## A341733.P8768653199657887412

`A341731(C(n+3, 2))`
-/

namespace A341733.P8768653199657887412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341731 (Nat.choose (n + 3) 2)

end

end A341733.P8768653199657887412

/-!
# A341734: a(n) = A007678(2*n)/(2*n).

The programs for A341734, there is no canonical definition to state claims against.
-/

/-! ## A341734.P9217107768154476736

`A007678(2*(n+1))/(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341734.P9217107768154476736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007678 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A341734.P9217107768154476736

/-! ## A341734.P9402041261504441859

`A085611(n+1)+n²`
-/

namespace A341734.P9402041261504441859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085611 (n + 1) + (n ^ 2 : ℤ)

end

end A341734.P9402041261504441859

/-! ## A341734.P1522350940145166843

`A056891(2*(n+1))-1`
-/

namespace A341734.P1522350940145166843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056891 (2 * (n + 1)) - 1

end

end A341734.P1522350940145166843

/-! ## A341734.P17004534124538962507

`A057428(n+1)+A056891(2*(n+1))`
-/

namespace A341734.P17004534124538962507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056891 (2 * (n + 1))

end

end A341734.P17004534124538962507

/-! ## A341734.P8290843699415194718

`record[A007678(n+1)/A038608(n+1)]`
-/

namespace A341734.P8290843699415194718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007678 (n + 1) : ℚ) / (A038608 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341734.P8290843699415194718

/-! ## A341734.P15835135733623728573

`A219009(A056896(n+1))+A056891(2*n+2)`
-/

namespace A341734.P15835135733623728573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (A056896 (n + 1)).toNat + A056891 (2 * n + 2)

end

end A341734.P15835135733623728573

/-! ## A341734.P16104655195524450212

`A219009(record[A014963(n+2)])+A056891(2*(n+1))`
-/

namespace A341734.P16104655195524450212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A056891 (2 * (n + 1))

end

end A341734.P16104655195524450212

/-! ## A341734.P16771683667048345366

`A094267(12*n+1)+A056891(2*(n+1))`
-/

namespace A341734.P16771683667048345366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (12 * n + 1) + A056891 (2 * (n + 1))

end

end A341734.P16771683667048345366

/-!
# A341735: a(n) = A007678(2*n+1).

The programs for A341735, the canonical program `A341735.P14864873163863833946` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341735 has offset 0).

The definition of A341735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341735.P15630111140373524847

`ogf((x+6x^2+5x^3+4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A341735.P15630111140373524847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6, 5, 4] [1, -5, 10, -10, 5, -1] n

end

end A341735.P15630111140373524847

namespace A341735

/-- `ogf((x+6x^2+5x^3+4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15630111140373524847.Spec : Prop :=
  ∀ n, P15630111140373524847.a n = A341735 n

end A341735

/-! ## A341735.P14864873163863833946

`n*(2*n-1)*(2*n²-n+5)/6`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341735

/-- `n*(2*n-1)*(2*n²-n+5)/6` -/
def P14864873163863833946.Spec : Prop :=
  ∀ n, P14864873163863833946.a n = (A341735 n : ℚ)

end A341735

/-! ## A341735.P6561189235817328843

`A007678(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341735.P6561189235817328843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (2 * n + 1)

end

end A341735.P6561189235817328843

namespace A341735

/-- `A007678(2*n+1)` -/
def P6561189235817328843.Spec : Prop :=
  ∀ n, P6561189235817328843.a n = A341735 n

end A341735

/-! ## A341735.P10350747345368765672

`C(2*n+1, 4)+C(2*n, 2)`
-/

namespace A341735.P10350747345368765672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 4 + Nat.choose (2 * n) 2

end

end A341735.P10350747345368765672

namespace A341735

/-- `C(2*n+1, 4)+C(2*n, 2)` -/
def P10350747345368765672.Spec : Prop :=
  ∀ n, (P10350747345368765672.a n : ℤ) = A341735 n

end A341735

/-! ## A341735.P2933601315705522453

`A302709(n)-A317297(n+1)`
-/

namespace A341735.P2933601315705522453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302709 n - A317297 (n + 1)

end

end A341735.P2933601315705522453

namespace A341735

/-- `A302709(n)-A317297(n+1)` -/
def P2933601315705522453.Spec : Prop :=
  ∀ n, P2933601315705522453.a n = A341735 n

end A341735

/-! ## A341735.P15552939237318484179

`A006522(Δ[n²])`
-/

namespace A341735.P15552939237318484179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A341735.P15552939237318484179

namespace A341735

/-- `A006522(Δ[n²])` -/
def P15552939237318484179.Spec : Prop :=
  ∀ n, P15552939237318484179.a n = A341735 n

end A341735

/-! ## A341735.P18323664501016062986

`record[A007678(n^(n%2))]`
-/

namespace A341735.P18323664501016062986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P18323664501016062986

namespace A341735

/-- `record[A007678(n^(n%2))]` -/
def P18323664501016062986.Spec : Prop :=
  ∀ n, P18323664501016062986.a n = A341735 n

end A341735

/-! ## A341735.P5632588344211559103

`A055795(2*n+1)-2*n`
-/

namespace A341735.P5632588344211559103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (2 * n + 1) - (2 * n : ℤ)

end

end A341735.P5632588344211559103

namespace A341735

/-- `A055795(2*n+1)-2*n` -/
def P5632588344211559103.Spec : Prop :=
  ∀ n, P5632588344211559103.a n = A341735 n

end A341735

/-! ## A341735.P1740475829970042709

`A000127(2*n+1)-(2*n+1)`
-/

namespace A341735.P1740475829970042709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A341735.P1740475829970042709

namespace A341735

/-- `A000127(2*n+1)-(2*n+1)` -/
def P1740475829970042709.Spec : Prop :=
  ∀ n, P1740475829970042709.a n = A341735 n

end A341735

/-! ## A341735.P12041080668755750292

`A006533(2*n+1)-(2*n+1)`
-/

namespace A341735.P12041080668755750292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A341735.P12041080668755750292

namespace A341735

/-- `A006533(2*n+1)-(2*n+1)` -/
def P12041080668755750292.Spec : Prop :=
  ∀ n, P12041080668755750292.a n = A341735 n

end A341735

/-! ## A341735.P8570822015165136007

`record[A006522((n+1)/2^val(n+1, 2))]`
-/

namespace A341735.P8570822015165136007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P8570822015165136007

namespace A341735

/-- `record[A006522((n+1)/2^val(n+1, 2))]` -/
def P8570822015165136007.Spec : Prop :=
  ∀ n, P8570822015165136007.a n = A341735 n

end A341735

/-! ## A341735.P4949240808309603872

`record[A006522(A004442(n))]`
-/

namespace A341735.P4949240808309603872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P4949240808309603872

namespace A341735

/-- `record[A006522(A004442(n))]` -/
def P4949240808309603872.Spec : Prop :=
  ∀ n, P4949240808309603872.a n = A341735 n

end A341735

/-! ## A341735.P1651545724848968139

`record[A007678(A029579(n))]`
-/

namespace A341735.P1651545724848968139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P1651545724848968139

namespace A341735

/-- `record[A007678(A029579(n))]` -/
def P1651545724848968139.Spec : Prop :=
  ∀ n, P1651545724848968139.a n = A341735 n

end A341735

/-! ## A341735.P5009235425875684058

`record[A000035(n)*A006522(n)]`
-/

namespace A341735.P5009235425875684058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A006522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P5009235425875684058

namespace A341735

/-- `record[A000035(n)*A006522(n)]` -/
def P5009235425875684058.Spec : Prop :=
  ∀ n, P5009235425875684058.a n = A341735 n

end A341735

/-! ## A341735.P15108295799126079113

`xor(1, xor(1, A007678(A005408(n))))`
-/

namespace A341735.P15108295799126079113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A007678 (A005408 n).toNat))

end

end A341735.P15108295799126079113

namespace A341735

/-- `xor(1, xor(1, A007678(A005408(n))))` -/
def P15108295799126079113.Spec : Prop :=
  ∀ n, P15108295799126079113.a n = A341735 n

end A341735

/-! ## A341735.P3472964725722002456

`A000447(n)+A000332(2*n)`
-/

namespace A341735.P3472964725722002456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + A000332 (2 * n)

end

end A341735.P3472964725722002456

namespace A341735

/-- `A000447(n)+A000332(2*n)` -/
def P3472964725722002456.Spec : Prop :=
  ∀ n, P3472964725722002456.a n = A341735 n

end A341735

/-! ## A341735.P16962736517694567214

`record[A007678(n+1)/A053381(n)]`
-/

namespace A341735.P16962736517694567214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007678 (n + 1) : ℚ) / (A053381 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P16962736517694567214

namespace A341735

/-- `record[A007678(n+1)/A053381(n)]` -/
def P16962736517694567214.Spec : Prop :=
  ∀ n, P16962736517694567214.a n = (A341735 n : ℚ)

end A341735

/-! ## A341735.P101982124913058834

`A000384(n)+A000332(2*n+1)`
-/

namespace A341735.P101982124913058834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + A000332 (2 * n + 1)

end

end A341735.P101982124913058834

namespace A341735

/-- `A000384(n)+A000332(2*n+1)` -/
def P101982124913058834.Spec : Prop :=
  ∀ n, P101982124913058834.a n = A341735 n

end A341735

/-! ## A341735.P2114851552131889057

`A007678(A005408(n))*A057427(n)`
-/

namespace A341735.P2114851552131889057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A005408 n).toNat * A057427 n

end

end A341735.P2114851552131889057

namespace A341735

/-- `A007678(A005408(n))*A057427(n)` -/
def P2114851552131889057.Spec : Prop :=
  ∀ n, P2114851552131889057.a n = A341735 n

end A341735

/-! ## A341735.P2843501454255190228

`record[(A135565(n+1)-(A006561(n+1)+n))*A033999(n)]`
-/

namespace A341735.P2843501454255190228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135565 (n + 1) - (A006561 (n + 1) + (n : ℤ))) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341735.P2843501454255190228

namespace A341735

/-- `record[(A135565(n+1)-(A006561(n+1)+n))*A033999(n)]` -/
def P2843501454255190228.Spec : Prop :=
  ∀ n, P2843501454255190228.a n = A341735 n

end A341735

/-!
# A341736: a(n) is the label of the square of the n-th element in the semigroup S = {(0,0), (i,j): i >= j >= 1}.

The programs for A341736, there is no canonical definition to state claims against.
-/

/-! ## A341736.P13891392186660813089

`A341318(∑[n]+n)`
-/

namespace A341736.P13891392186660813089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341318 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A341736.P13891392186660813089

/-! ## A341736.P15438727811159453766

`record[A341318(A175631(n+1))]`
-/

namespace A341736.P15438727811159453766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341318 (A175631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341736.P15438727811159453766

/-! ## A341736.P18292733842755409042

`or(char[1], A341318(A000096(n)))`
-/

namespace A341736.P18292733842755409042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341318 (A000096 n).toNat)

end

end A341736.P18292733842755409042

/-! ## A341736.P6928243384215092113

`or(char[1], A341318(A000217(n)+n))`
-/

namespace A341736.P6928243384215092113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341318 (A000217 n + (n : ℤ)).toNat)

end

end A341736.P6928243384215092113

/-! ## A341736.P9091791509838432911

`or(char[1], A341318(A161680(n+2)-1))`
-/

namespace A341736.P9091791509838432911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341318 (A161680 (n + 2) - 1).toNat)

end

end A341736.P9091791509838432911

/-! ## A341736.P2643892607068341785

`A007318(C(2, n))*A341318(A000096(n))`
-/

namespace A341736.P2643892607068341785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A341318 (A000096 n).toNat

end

end A341736.P2643892607068341785

/-! ## A341736.P11933938677148311294

`A057427(n)*A341318(A000217(n)+n)`
-/

namespace A341736.P11933938677148311294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A341318 (A000217 n + (n : ℤ)).toNat

end

end A341736.P11933938677148311294

/-! ## A341736.P14582042681624800155

`A341318(A000217(n)+n)%A001779(n)`
-/

namespace A341736.P14582042681624800155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341318 (A000217 n + (n : ℤ)).toNat) (A001779 n)

end

end A341736.P14582042681624800155

/-! ## A341736.P4187077810585506504

`A057427(n)*A341318(A161680(n+2)-1)`
-/

namespace A341736.P4187077810585506504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A341318 (A161680 (n + 2) - 1).toNat

end

end A341736.P4187077810585506504

/-! ## A341736.P16356931259026114131

`A014963(4*n+2)*A341318(A000096(n))`
-/

namespace A341736.P16356931259026114131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A341318 (A000096 n).toNat

end

end A341736.P16356931259026114131

/-! ## A341736.P6482741328162565311

`A341318(A161680(n+2)-1)%A010015(n)`
-/

namespace A341736.P6482741328162565311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341318 (A161680 (n + 2) - 1).toNat) (A010015 n)

end

end A341736.P6482741328162565311

/-! ## A341736.P9292214061190611259

`A341318(A000217(n)+n)+A000007(n+1)`
-/

namespace A341736.P9292214061190611259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341318 (A000217 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A341736.P9292214061190611259

/-! ## A341736.P14454647615682833221

`A001511(2*n+1)*A341318(A000217(n)+n)`
-/

namespace A341736.P14454647615682833221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A341318 (A000217 n + (n : ℤ)).toNat

end

end A341736.P14454647615682833221

/-! ## A341736.P18329066478061596288

`and(1, A000040(n+1))*A341318(A000217(n)+n)`
-/

namespace A341736.P18329066478061596288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A341318 (A000217 n + (n : ℤ)).toNat

end

end A341736.P18329066478061596288

/-! ## A341736.P14619230814971930196

`A000108(C(2, n+2))*A341318(A000217(n)+n)`
-/

namespace A341736.P14619230814971930196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A341318 (A000217 n + (n : ℤ)).toNat

end

end A341736.P14619230814971930196

/-! ## A341736.P15561821748043600592

`A341317(∑[4*n])`
-/

namespace A341736.P15561821748043600592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341736.P15561821748043600592

/-!
# A341740: a(n) is the maximum value of the magic constant in a normal magic triangle of order n.

The programs for A341740, the canonical program `A341740.P2197116805662133273` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341740 has offset 3).

The definition of A341740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341740.P6804505112176838573

`ogf((12-13x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A341740.P6804505112176838573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -13, 4] [1, -3, 3, -1] n

end

end A341740.P6804505112176838573

namespace A341740

/-- `ogf((12-13x+4x^2)/(1-3x+3x^2-x^3))` -/
def P6804505112176838573.Spec : Prop :=
  ∀ n, P6804505112176838573.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P17115363068255241344

`(3*(n+3)²+n+3-6)/2`
-/

namespace A341740.P17115363068255241344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 3) ^ 2 + (n + 3) : ℤ) - 6 : ℚ) / 2

end

end A341740.P17115363068255241344

namespace A341740

/-- `(3*(n+3)²+n+3-6)/2` -/
def P17115363068255241344.Spec : Prop :=
  ∀ n, P17115363068255241344.a n = (A341740 (n + 3) : ℚ)

theorem P17115363068255241344.correct : P17115363068255241344.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A341740, Nat.add_sub_cancel, A341740.P17115363068255241344.a, A341740.P2197116805662133273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A341740, Nat.add_sub_cancel, A341740.P17115363068255241344.a, A341740.P2197116805662133273.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A341740

/-! ## A341740.P2197116805662133273

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=12, a(1)=23, a(2)=37`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341740

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2197116805662133273.Spec : Prop :=
  ∀ n, P2197116805662133273.a n = A341740 (n + 3)

theorem P2197116805662133273.correct : P2197116805662133273.Spec := by
  intro n
  simp only [A341740, Nat.add_sub_cancel]

end A341740

/-! ## A341740.P6501841882468261366

`A285009(n+3)+A016777(n+1)-1`
-/

namespace A341740.P6501841882468261366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285009 (n + 3) + A016777 (n + 1) - 1

end

end A341740.P6501841882468261366

namespace A341740

/-- `A285009(n+3)+A016777(n+1)-1` -/
def P6501841882468261366.Spec : Prop :=
  ∀ n, P6501841882468261366.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P16533956266482415783

`A140090(n+2)-1`
-/

namespace A341740.P16533956266482415783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 (n + 2) - 1

end

end A341740.P16533956266482415783

namespace A341740

/-- `A140090(n+2)-1` -/
def P16533956266482415783.Spec : Prop :=
  ∀ n, P16533956266482415783.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P6064782942942266439

`A095794(n+3)-2`
-/

namespace A341740.P6064782942942266439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095794 (n + 3) - 2

end

end A341740.P6064782942942266439

namespace A341740

/-- `A095794(n+3)-2` -/
def P6064782942942266439.Spec : Prop :=
  ∀ n, P6064782942942266439.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P283962661766067887

`∑[a(n-1)+3]` with `a(0)=12, a(1)=11`
-/

namespace A341740.P283962661766067887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 11] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341740.P283962661766067887

namespace A341740

/-- `∑[a(n-1)+3]` -/
def P283962661766067887.Spec : Prop :=
  ∀ n, (P283962661766067887.a n : ℤ) = A341740 (n + 3)

end A341740

/-! ## A341740.P4774397605431930225

`∑[ogf((12-13x+4x^2)/(1-2x+x^2))]`
-/

namespace A341740.P4774397605431930225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -13, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341740.P4774397605431930225

namespace A341740

/-- `∑[ogf((12-13x+4x^2)/(1-2x+x^2))]` -/
def P4774397605431930225.Spec : Prop :=
  ∀ n, P4774397605431930225.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P2486740248277323414

`Δ[(n+3)*(C(n+3, 2)-3)]`
-/

namespace A341740.P2486740248277323414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((Nat.choose (n + 3) 2 : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341740.P2486740248277323414

namespace A341740

/-- `Δ[(n+3)*(C(n+3, 2)-3)]` -/
def P2486740248277323414.Spec : Prop :=
  ∀ n, P2486740248277323414.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P15439399492932603455

`Δ[(C(n+1, 2)+n)*(n+5)]`
-/

namespace A341740.P15439399492932603455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 + n) * (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341740.P15439399492932603455

namespace A341740

/-- `Δ[(C(n+1, 2)+n)*(n+5)]` -/
def P15439399492932603455.Spec : Prop :=
  ∀ n, P15439399492932603455.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P14927172607472774413

`Δ[(a(n-1)/(n+2)+n+2)*(n+3)]` with `a(0)=0`
-/

namespace A341740.P14927172607472774413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) / (n + 2 : ℚ) + (n + 2 : ℚ)) * (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341740.P14927172607472774413

namespace A341740

/-- `Δ[(a(n-1)/(n+2)+n+2)*(n+3)]` -/
def P14927172607472774413.Spec : Prop :=
  ∀ n, P14927172607472774413.a n = (A341740 (n + 3) : ℚ)

end A341740

/-! ## A341740.P3804742402751345785

`Δ[(n+5)*A000096(n)]`
-/

namespace A341740.P3804742402751345785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341740.P3804742402751345785

namespace A341740

/-- `Δ[(n+5)*A000096(n)]` -/
def P3804742402751345785.Spec : Prop :=
  ∀ n, P3804742402751345785.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P18326791821587326581

`A151542(n)+A022968(n)`
-/

namespace A341740.P18326791821587326581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + A022968 n

end

end A341740.P18326791821587326581

namespace A341740

/-- `A151542(n)+A022968(n)` -/
def P18326791821587326581.Spec : Prop :=
  ∀ n, P18326791821587326581.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P2274984594259041788

`A151542(n)-A023454(n)`
-/

namespace A341740.P2274984594259041788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n - A023454 n

end

end A341740.P2274984594259041788

namespace A341740

/-- `A151542(n)-A023454(n)` -/
def P2274984594259041788.Spec : Prop :=
  ∀ n, P2274984594259041788.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P10033977416216544371

`A005448(n+1)+A004769(n)`
-/

namespace A341740.P10033977416216544371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) + A004769 n

end

end A341740.P10033977416216544371

namespace A341740

/-- `A005448(n+1)+A004769(n)` -/
def P10033977416216544371.Spec : Prop :=
  ∀ n, P10033977416216544371.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P15861172955419584144

`A124011(n+1)+A004771(n)`
-/

namespace A341740.P15861172955419584144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124011 (n + 1) + A004771 n

end

end A341740.P15861172955419584144

namespace A341740

/-- `A124011(n+1)+A004771(n)` -/
def P15861172955419584144.Spec : Prop :=
  ∀ n, P15861172955419584144.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P12824778375837336853

`A167614(n+1)+A104675(n)`
-/

namespace A341740.P12824778375837336853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1) + A104675 n

end

end A341740.P12824778375837336853

namespace A341740

/-- `A167614(n+1)+A104675(n)` -/
def P12824778375837336853.Spec : Prop :=
  ∀ n, P12824778375837336853.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P6116311593417627975

`A290768(n+1)+A004768(n)`
-/

namespace A341740.P6116311593417627975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290768 (n + 1) + A004768 n

end

end A341740.P6116311593417627975

namespace A341740

/-- `A290768(n+1)+A004768(n)` -/
def P6116311593417627975.Spec : Prop :=
  ∀ n, P6116311593417627975.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P767560376591724166

`A026054(n+3)-A008778(n)`
-/

namespace A341740.P767560376591724166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - A008778 n

end

end A341740.P767560376591724166

namespace A341740

/-- `A026054(n+3)-A008778(n)` -/
def P767560376591724166.Spec : Prop :=
  ∀ n, P767560376591724166.a n = A341740 (n + 3)

end A341740

/-! ## A341740.P7094996962875698399

`A371912(n+3)-A370238(n)`
-/

namespace A341740.P7094996962875698399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371912 (n + 3) - A370238 n

end

end A341740.P7094996962875698399

namespace A341740

/-- `A371912(n+3)-A370238(n)` -/
def P7094996962875698399.Spec : Prop :=
  ∀ n, P7094996962875698399.a n = A341740 (n + 3)

end A341740

/-!
# A341741: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards: number of perfect matchings in the graph C_{2n} x C_k.

The programs for A341741, there is no canonical definition to state claims against.
-/

/-! ## A341741.P16031125029579287685

`A341533(n+1)+A284269(A176639(n))`
-/

namespace A341741.P16031125029579287685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341533 (n + 1) + A284269 (A176639 n).toNat

end

end A341741.P16031125029579287685

/-!
# A341742: Nodes read by depth in a binary tree defined as: Root = 1; an even node N has a left child N + 1 if N + 1 is not a prime, and an odd node N has a left child sqrt(N + 2) if sqrt(N + 2) is a prime; the right child of a node N is 2*N.

The programs for A341742, there is no canonical definition to state claims against.
-/

/-! ## A341742.P920842815569751458

`A267508(A187208(n+1))`
-/

namespace A341742.P920842815569751458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A187208 (n + 1)).toNat

end

end A341742.P920842815569751458

/-! ## A341742.P4568696954066185666

`A267508(A349725(n+1))`
-/

namespace A341742.P4568696954066185666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A349725 (n + 1)).toNat

end

end A341742.P4568696954066185666

/-! ## A341742.P14095342940719754882

`xor(A023898(n+1), A217156(A202840(n)))`
-/

namespace A341742.P14095342940719754882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023898 (n + 1)) (A217156 (A202840 n).toNat)

end

end A341742.P14095342940719754882

/-!
# A341744: a(0)=1, a(1)=2; for n > 1, a(n) = a(n - a(n-2)) + n.

The programs for A341744, the canonical program `A341744.P2343755950312766485` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341744 has offset 0).

The definition of A341744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+n` (program `A341744.P2343755950312766485`, by `A341744.P2343755950312766485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341744.P2343755950312766485

`a(n-a(n-2))+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341744

/-- `a(n-a(n-2))+n` -/
def P2343755950312766485.Spec : Prop :=
  ∀ n, (P2343755950312766485.a n : ℤ) = A341744 n

theorem P2343755950312766485.correct : P2343755950312766485.Spec := by
  intro n
  simp only [A341744]

end A341744

/-! ## A341744.P17852976199693083028

`ogf((1+2x^2-x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A341744.P17852976199693083028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, -1] [1, -2, 2, -2, 1] n

end

end A341744.P17852976199693083028

namespace A341744

/-- `ogf((1+2x^2-x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P17852976199693083028.Spec : Prop :=
  ∀ n, P17852976199693083028.a n = A341744 n

end A341744

/-! ## A341744.P13762138755247469098

`A130658(n)+n`
-/

namespace A341744.P13762138755247469098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 n + (n : ℤ)

end

end A341744.P13762138755247469098

namespace A341744

/-- `A130658(n)+n` -/
def P13762138755247469098.Spec : Prop :=
  ∀ n, P13762138755247469098.a n = A341744 n

end A341744

/-! ## A341744.P9310270731865847150

`and(2, n)!+n`
-/

namespace A341744.P9310270731865847150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n) + n

end

end A341744.P9310270731865847150

namespace A341744

/-- `and(2, n)!+n` -/
def P9310270731865847150.Spec : Prop :=
  ∀ n, (P9310270731865847150.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P333728301045055070

`∑[gcd(4, n)%4]+1`
-/

namespace A341744.P333728301045055070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341744.P333728301045055070

namespace A341744

/-- `∑[gcd(4, n)%4]+1` -/
def P333728301045055070.Spec : Prop :=
  ∀ n, (P333728301045055070.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P5050843254313162391

`log2(and(2, n)+2)+n`
-/

namespace A341744.P5050843254313162391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.land 2 n + 2 : ℝ) + (n : ℝ)

end

end A341744.P5050843254313162391

namespace A341744

/-- `log2(and(2, n)+2)+n` -/
def P5050843254313162391.Spec : Prop :=
  ∀ n, P5050843254313162391.a n = (A341744 n : ℝ)

end A341744

/-! ## A341744.P9080756303619847066

`sqrt(2^and(2, n))+n`
-/

namespace A341744.P9080756303619847066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 ^ Nat.land 2 n : ℝ) + (n : ℝ)

end

end A341744.P9080756303619847066

namespace A341744

/-- `sqrt(2^and(2, n))+n` -/
def P9080756303619847066.Spec : Prop :=
  ∀ n, P9080756303619847066.a n = (A341744 n : ℝ)

end A341744

/-! ## A341744.P2878203276371710098

`gcd(2, ∑[n+1])+n`
-/

namespace A341744.P2878203276371710098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A341744.P2878203276371710098

namespace A341744

/-- `gcd(2, ∑[n+1])+n` -/
def P2878203276371710098.Spec : Prop :=
  ∀ n, (P2878203276371710098.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P7150506248567519185

`char[or(2, n)]+1+n`
-/

namespace A341744.P7150506248567519185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1 + n

end

end A341744.P7150506248567519185

namespace A341744

/-- `char[or(2, n)]+1+n` -/
def P7150506248567519185.Spec : Prop :=
  ∀ n, (P7150506248567519185.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P164268897128125032

`floor(ϕ^and(2, n)+n)`
-/

namespace A341744.P164268897128125032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ Nat.land 2 n + (n : ℝ)⌋

end

end A341744.P164268897128125032

namespace A341744

/-- `floor(ϕ^and(2, n)+n)` -/
def P164268897128125032.Spec : Prop :=
  ∀ n, P164268897128125032.a n = A341744 n

end A341744

/-! ## A341744.P15123138527049829295

`and(2, n)/2+1+n`
-/

namespace A341744.P15123138527049829295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2 + 1 + (n : ℚ)

end

end A341744.P15123138527049829295

namespace A341744

/-- `and(2, n)/2+1+n` -/
def P15123138527049829295.Spec : Prop :=
  ∀ n, P15123138527049829295.a n = (A341744 n : ℚ)

end A341744

/-! ## A341744.P17446213278411483473

`(or(2, n+2)+n)/2`
-/

namespace A341744.P17446213278411483473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 2) + n : ℚ) / 2

end

end A341744.P17446213278411483473

namespace A341744

/-- `(or(2, n+2)+n)/2` -/
def P17446213278411483473.Spec : Prop :=
  ∀ n, P17446213278411483473.a n = (A341744 n : ℚ)

end A341744

/-! ## A341744.P13481202648155981339

`C(n, 2)%2+n+1`
-/

namespace A341744.P13481202648155981339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2 + (n + 1)

end

end A341744.P13481202648155981339

namespace A341744

/-- `C(n, 2)%2+n+1` -/
def P13481202648155981339.Spec : Prop :=
  ∀ n, (P13481202648155981339.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P18168850964564083272

`and(1, C(n, 2))+1+n`
-/

namespace A341744.P18168850964564083272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose n 2) + 1 + n

end

end A341744.P18168850964564083272

namespace A341744

/-- `and(1, C(n, 2))+1+n` -/
def P18168850964564083272.Spec : Prop :=
  ∀ n, (P18168850964564083272.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P12008718975156072886

`C(n, or(2, n))+n+1`
-/

namespace A341744.P12008718975156072886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.lor 2 n) + (n + 1)

end

end A341744.P12008718975156072886

namespace A341744

/-- `C(n, or(2, n))+n+1` -/
def P12008718975156072886.Spec : Prop :=
  ∀ n, (P12008718975156072886.a n : ℤ) = A341744 n

end A341744

/-! ## A341744.P12392878537339730805

`n-or(-2, ∑[n+1])`
-/

namespace A341744.P12392878537339730805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A341744.P12392878537339730805

namespace A341744

/-- `n-or(-2, ∑[n+1])` -/
def P12392878537339730805.Spec : Prop :=
  ∀ n, P12392878537339730805.a n = A341744 n

end A341744

/-! ## A341744.P4962204496416808407

`2-char[and(n, -3)]+n`
-/

namespace A341744.P4962204496416808407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A341744.P4962204496416808407

namespace A341744

/-- `2-char[and(n, -3)]+n` -/
def P4962204496416808407.Spec : Prop :=
  ∀ n, P4962204496416808407.a n = A341744 n

end A341744

/-! ## A341744.P4711749695162938872

`2-(char[and(n, -3)]-n)`
-/

namespace A341744.P4711749695162938872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A341744.P4711749695162938872

namespace A341744

/-- `2-(char[and(n, -3)]-n)` -/
def P4711749695162938872.Spec : Prop :=
  ∀ n, P4711749695162938872.a n = A341744 n

end A341744

/-! ## A341744.P3939371550019959793

`or(1, ∑[n+1])-∑[n]`
-/

namespace A341744.P3939371550019959793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A341744.P3939371550019959793

namespace A341744

/-- `or(1, ∑[n+1])-∑[n]` -/
def P3939371550019959793.Spec : Prop :=
  ∀ n, P3939371550019959793.a n = A341744 n

end A341744

/-! ## A341744.P17829316597412175447

`floor(n+2-cos(n%4))`
-/

namespace A341744.P17829316597412175447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) - Real.cos ((n % 4 : ℕ) : ℝ)⌋

end

end A341744.P17829316597412175447

namespace A341744

/-- `floor(n+2-cos(n%4))` -/
def P17829316597412175447.Spec : Prop :=
  ∀ n, P17829316597412175447.a n = A341744 n

end A341744

/-!
# A341746: If the runs in the binary expansion of n are (r_1, ..., r_k), then the runs in the binary expansion of a(n) are (r_1 + ... + r_k, r_1, ..., r_{k-1}).

The programs for A341746, the canonical program `A341746.P1855135683892942832` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341746 has offset 1).

The definition of A341746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341746.P1855135683892942832

`A341916(A053644(n+1)*A280995(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A341746

/-- `A341916(A053644(n+1)*A280995(n+1))` -/
def P1855135683892942832.Spec : Prop :=
  ∀ n, P1855135683892942832.a n = A341746 (n + 1)

theorem P1855135683892942832.correct : P1855135683892942832.Spec := by
  intro n
  simp only [A341746, Nat.add_sub_cancel]

end A341746

/-!
# A341749: Numbers k such that gcd(k, phi(k)) > log(log(k)).

The programs for A341749, there is no canonical definition to state claims against.
-/

/-! ## A341749.P13147870950948869517

`lt[n, A016744(A000001(n))]`
-/

namespace A341749.P13147870950948869517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016744 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341749.P13147870950948869517

/-! ## A341749.P17538269515664096587

`lt[A070939(n), A001844(A000001(n))]`
-/

namespace A341749.P17538269515664096587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P17538269515664096587

/-! ## A341749.P2049115243205861570

`lt[A137580(n), A008590(A000001(n))]`
-/

namespace A341749.P2049115243205861570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137580 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P2049115243205861570

/-! ## A341749.P8574730328745979510

`lt[A110591(n), A233312(A000001(n))]`
-/

namespace A341749.P8574730328745979510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233312 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P8574730328745979510

/-! ## A341749.P15315673672955209987

`lt[A105519(n), A303299(A000001(n))]`
-/

namespace A341749.P15315673672955209987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303299 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P15315673672955209987

/-! ## A341749.P5784454047698330744

`lt[A003057(n+6), A005897(A000001(n))]`
-/

namespace A341749.P5784454047698330744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P5784454047698330744

/-! ## A341749.P11289531251490115266

`lt[A204164(2*n+3), A174002(A000001(n))]`
-/

namespace A341749.P11289531251490115266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P11289531251490115266

/-! ## A341749.P8018270329763664281

`lt[A327945(n+3), A016757(A000001(n))]`
-/

namespace A341749.P8018270329763664281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327945 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P8018270329763664281

/-! ## A341749.P6182139851091602354

`lt[A225541(A191228(n+1)), A000001(n)]`
-/

namespace A341749.P6182139851091602354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A191228 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341749.P6182139851091602354

/-!
# A341750: Numbers k such that gcd(k, sigma(k)) > log(log(k)).

The programs for A341750, there is no canonical definition to state claims against.
-/

/-! ## A341750.P8414921344984939033

`lt[n, A115098(A326202(n+1))]+1`
-/

namespace A341750.P8414921344984939033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (A326202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341750.P8414921344984939033

/-! ## A341750.P7480194120656824718

`lt[A256389(n+1), A105573(A082068(n+1))]+1`
-/

namespace A341750.P7480194120656824718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105573 (A082068 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341750.P7480194120656824718

/-! ## A341750.P3329400886296185730

`lt[A351595(n+4), A229828(A326202(n+1))]+1`
-/

namespace A341750.P3329400886296185730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229828 (A326202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341750.P3329400886296185730

/-! ## A341750.P9915198351360174656

`∪[A069059(A187829(n+1)+2), A187829(n+1)]`
-/

namespace A341750.P9915198351360174656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (A187829 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341750.P9915198351360174656

/-! ## A341750.P11687868144491320057

`∪[A187829(n+1), A069059(A187829(n+1))]`
-/

namespace A341750.P11687868144491320057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (A187829 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341750.P11687868144491320057

/-!
# A341751: Successive approximations up to 2^n for the 2-adic integer 17^(1/4). This is the 1 (mod 4) case.

The programs for A341751, there is no canonical definition to state claims against.
-/

/-! ## A341751.P13340363399861971634

`2^(n+2)-A341752(n+2)`
-/

namespace A341751.P13340363399861971634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A341752 (n + 2)

end

end A341751.P13340363399861971634

/-! ## A341751.P13745884278244098687

`abs(A341752(n+2)-A020707(n))`
-/

namespace A341751.P13745884278244098687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341752 (n + 2) - A020707 n|

end

end A341751.P13745884278244098687

/-! ## A341751.P17884680806772657779

`A318960(n+2)+A318961(n+2)-A341752(n+2)`
-/

namespace A341751.P17884680806772657779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318960 (n + 2) + (A318961 (n + 2) - A341752 (n + 2))

end

end A341751.P17884680806772657779

/-! ## A341751.P2053340826982754325

`A341538(n+2)+A341539(n+2)-A341752(n+2)`
-/

namespace A341751.P2053340826982754325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 (n + 2) + (A341539 (n + 2) - A341752 (n + 2))

end

end A341751.P2053340826982754325

/-! ## A341751.P425184877242724144

`A341600(n+2)+A341601(n+2)-A341752(n+2)`
-/

namespace A341751.P425184877242724144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341600 (n + 2) + (A341601 (n + 2) - A341752 (n + 2))

end

end A341751.P425184877242724144

/-!
# A341752: Successive approximations up to 2^n for the 2-adic integer 17^(1/4). This is the 3 (mod 4) case.

The programs for A341752, there is no canonical definition to state claims against.
-/

/-! ## A341752.P6394013338530942885

`2^(n+2)-A341751(n+2)`
-/

namespace A341752.P6394013338530942885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A341751 (n + 2)

end

end A341752.P6394013338530942885

/-! ## A341752.P17020755742880380876

`abs(A000079(n+2)-A341751(n+2))`
-/

namespace A341752.P17020755742880380876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 2) - A341751 (n + 2)|

end

end A341752.P17020755742880380876

/-! ## A341752.P2368515165905059578

`A318960(n+2)+A318961(n+2)-A341751(n+2)`
-/

namespace A341752.P2368515165905059578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318960 (n + 2) + (A318961 (n + 2) - A341751 (n + 2))

end

end A341752.P2368515165905059578

/-! ## A341752.P16387359379789817957

`A341538(n+2)+A341539(n+2)-A341751(n+2)`
-/

namespace A341752.P16387359379789817957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341538 (n + 2) + (A341539 (n + 2) - A341751 (n + 2))

end

end A341752.P16387359379789817957

/-! ## A341752.P5104674917147084267

`A341600(n+2)+A341601(n+2)-A341751(n+2)`
-/

namespace A341752.P5104674917147084267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341600 (n + 2) + (A341601 (n + 2) - A341751 (n + 2))

end

end A341752.P5104674917147084267

/-!
# A341753: Expansion of the 2-adic integer 17^(1/4) that ends in 01.

The programs for A341753, there is no canonical definition to state claims against.
-/

/-! ## A341753.P11036349344249687173

`(1-A341754(n))^n`
-/

namespace A341753.P11036349344249687173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341754 n) ^ n

end

end A341753.P11036349344249687173

/-! ## A341753.P6249448392514970118

`A054977(n)-A341754(n)`
-/

namespace A341753.P6249448392514970118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A341754 n

end

end A341753.P6249448392514970118

/-! ## A341753.P5915199782545332987

`A000007(n*A341754(n))`
-/

namespace A341753.P5915199782545332987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A341754 n).toNat

end

end A341753.P5915199782545332987

/-! ## A341753.P8201304675357942054

`xor(A057427(n), A341754(n))`
-/

namespace A341753.P8201304675357942054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A341754 n)

end

end A341753.P8201304675357942054

/-! ## A341753.P15889227658927542889

`A000007(n)+1-A341754(n)`
-/

namespace A341753.P15889227658927542889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A341754 n)

end

end A341753.P15889227658927542889

/-! ## A341753.P7817552647240530590

`1-A057427(n*A341754(n))`
-/

namespace A341753.P7817552647240530590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A341754 n).toNat

end

end A341753.P7817552647240530590

/-! ## A341753.P9644364572931159097

`A341754(a(n-1))-A341754(n)` with `a(0)=1`
-/

namespace A341753.P9644364572931159097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341754 (a (n - 1)).toNat - A341754 n

end

end A341753.P9644364572931159097

/-! ## A341753.P5631664748094493979

`A318962(n)+A318963(n)-A341754(n)`
-/

namespace A341753.P5631664748094493979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 n + (A318963 n - A341754 n)

end

end A341753.P5631664748094493979

/-! ## A341753.P10614804358051442534

`A322217(n)+A341540(n)-A341754(n)`
-/

namespace A341753.P10614804358051442534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 n + (A341540 n - A341754 n)

end

end A341753.P10614804358051442534

/-! ## A341753.P6699570085366894101

`A341602(n)+A341603(n)-A341754(n)`
-/

namespace A341753.P6699570085366894101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 n + (A341603 n - A341754 n)

end

end A341753.P6699570085366894101

/-!
# A341754: Expansion of the 2-adic integer 17^(1/4) that ends in 11.

The programs for A341754, there is no canonical definition to state claims against.
-/

/-! ## A341754.P5457209894123398375

`(1-A341753(n))^n`
-/

namespace A341754.P5457209894123398375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341753 n) ^ n

end

end A341754.P5457209894123398375

/-! ## A341754.P11337894606254623971

`A054977(n)-A341753(n)`
-/

namespace A341754.P11337894606254623971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A341753 n

end

end A341754.P11337894606254623971

/-! ## A341754.P10452851372694289376

`xor(A057427(n), A341753(n))`
-/

namespace A341754.P10452851372694289376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A341753 n)

end

end A341754.P10452851372694289376

/-! ## A341754.P10487540426877281114

`1-A057427(n*A341753(n))`
-/

namespace A341754.P10487540426877281114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A341753 n).toNat

end

end A341754.P10487540426877281114

/-! ## A341754.P1936596776097200968

`A341753(n²%(A341753(n)+n))`
-/

namespace A341754.P1936596776097200968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 (Int.tmod (n ^ 2 : ℤ) (A341753 n + (n : ℤ))).toNat

end

end A341754.P1936596776097200968

/-! ## A341754.P8197535733683223126

`A341753((A341753(n)+1+n)%(n+1))`
-/

namespace A341754.P8197535733683223126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341753 (Int.tmod (A341753 n + 1 + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A341754.P8197535733683223126

/-! ## A341754.P1442720707130435163

`A318962(n)+A318963(n)-A341753(n)`
-/

namespace A341754.P1442720707130435163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 n + (A318963 n - A341753 n)

end

end A341754.P1442720707130435163

/-! ## A341754.P851515358983785390

`A322217(n)+A341540(n)-A341753(n)`
-/

namespace A341754.P851515358983785390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322217 n + (A341540 n - A341753 n)

end

end A341754.P851515358983785390

/-! ## A341754.P6570026363317348970

`A341602(n)+A341603(n)-A341753(n)`
-/

namespace A341754.P6570026363317348970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341602 n + (A341603 n - A341753 n)

end

end A341754.P6570026363317348970

/-!
# A341756: Records in A341755 (= length of chain of (k,k+1) sharing a digit with k+(k+1), starting at n).

The programs for A341756, there is no canonical definition to state claims against.
-/

/-! ## A341756.P13373551419932366683

`A341755(A341757(n+1))`
-/

namespace A341756.P13373551419932366683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341755 (A341757 (n + 1)).toNat

end

end A341756.P13373551419932366683

/-! ## A341756.P15486795969411084516

`record[A341755(n)]`
-/

namespace A341756.P15486795969411084516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341756.P15486795969411084516

/-!
# A341758: Table T(n,x) = e_n(x), the Grzegorczyk hierarchy function, read by antidiagonals.

The programs for A341758, there is no canonical definition to state claims against.
-/

/-! ## A341758.P17575955847368479710

`A318214(n+1)+A165560(A000129(n))`
-/

namespace A341758.P17575955847368479710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (n + 1) + A165560 (A000129 n).toNat

end

end A341758.P17575955847368479710

/-!
# A341759: Primes p such that Euler(p, 1) is an integer multiple of Bernoulli(p + 1, 1).

The programs for A341759, there is no canonical definition to state claims against.
-/

/-! ## A341759.P11074657700172971507

`p?[A014741(n+1)-1]`
-/

namespace A341759.P11074657700172971507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341759.P11074657700172971507

/-! ## A341759.P13713773921791969775

`p?[xor(3, A014741(n+2))]`
-/

namespace A341759.P13713773921791969775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A014741 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341759.P13713773921791969775

/-! ## A341759.P2227590156355742330

`p?[2*A014945(n+1)-1]`
-/

namespace A341759.P2227590156355742330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014945 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341759.P2227590156355742330

/-! ## A341759.P16997897426163136006

`p?[6*A125227(n+3)-1]`
-/

namespace A341759.P16997897426163136006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A125227 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341759.P16997897426163136006

/-! ## A341759.P13753388780762573955

`p?[xor(3, 2*A014945(n+2))]`
-/

namespace A341759.P13753388780762573955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 * A014945 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341759.P13753388780762573955

/-!
# A341761: Triangle read by rows in which row n is the coefficients of the subword complexity polynomial S(n,x).

The programs for A341761, there is no canonical definition to state claims against.
-/

/-! ## A341761.P12796795479011188743

`A143445(n+1)-A003652(A258706(n+1))`
-/

namespace A341761.P12796795479011188743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143445 (n + 1) - A003652 (A258706 (n + 1)).toNat

end

end A341761.P12796795479011188743

/-!
# A341762: The number of vertices on a 2 by 1 ellipse formed by the straight line segments mutually connecting all points formed by dividing the ellipse into 2n equal angle sectors from its origin.

The programs for A341762, there is no canonical definition to state claims against.
-/

/-! ## A341762.P15348989494388141566

`A341764(n+1)+1-A341688(n+1)`
-/

namespace A341762.P15348989494388141566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341764 (n + 1) + (1 - A341688 (n + 1))

end

end A341762.P15348989494388141566

/-! ## A341762.P3581657841507673557

`A341764(n+1)+A024000(A341688(n+1))`
-/

namespace A341762.P3581657841507673557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341764 (n + 1) + A024000 (A341688 (n + 1)).toNat

end

end A341762.P3581657841507673557

/-! ## A341762.P9730293699757151475

`A020725(A341764(n+1)-A341688(n+1))`
-/

namespace A341762.P9730293699757151475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A341764 (n + 1) - A341688 (n + 1)).toNat

end

end A341762.P9730293699757151475

/-!
# A341763: Numbers whose trajectory under iteration of sum of cubes of digits (map) produce a narcissistic number greater than nine.

The programs for A341763, there is no canonical definition to state claims against.
-/

/-! ## A341763.P11070646634232060578

`lt[7, A165330(n)%12]`
-/

namespace A341763.P11070646634232060578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165330 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341763.P11070646634232060578

/-! ## A341763.P9351365566904653592

`lt[exp(A031178(n)), A004159(n)]`
-/

namespace A341763.P9351365566904653592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A031178 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A341763.P9351365566904653592

/-! ## A341763.P16131723679777581208

`lt[A031178(n), atan(A004086(n))]`
-/

namespace A341763.P16131723679777581208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004086 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341763.P16131723679777581208

/-! ## A341763.P2678560000408991201

`lt[A031178(n), atan(A004185(n))]`
-/

namespace A341763.P2678560000408991201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004185 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341763.P2678560000408991201

/-! ## A341763.P5218896104274041871

`lt[A031178(n), atan(A055012(n))]`
-/

namespace A341763.P5218896104274041871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A055012 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341763.P5218896104274041871

/-! ## A341763.P6773246605669624238

`lt[A031178(n), atan(A165330(n))]`
-/

namespace A341763.P6773246605669624238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A165330 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A341763.P6773246605669624238

/-! ## A341763.P5330793920729600359

`eq[A031178(n), A051903(A031195(n))]`
-/

namespace A341763.P5330793920729600359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341763.P5330793920729600359

/-! ## A341763.P17305950486901897341

`eq[A031178(n), A141044(A047813(n))]`
-/

namespace A341763.P17305950486901897341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A047813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341763.P17305950486901897341

/-! ## A341763.P6597180702513485535

`lt[A031178(n), A020639(A031186(n))]`
-/

namespace A341763.P6597180702513485535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341763.P6597180702513485535

/-! ## A341763.P14140229778056509768

`lt[A031178(n), A020639(A031200(n))]`
-/

namespace A341763.P14140229778056509768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A031200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341763.P14140229778056509768

/-!
# A341764: The number of edges on a 2 by 1 ellipse formed by the straight line segments mutually connecting all points formed by dividing the ellipse into 2n equal angle sectors from its origin.

The programs for A341764, there is no canonical definition to state claims against.
-/

/-! ## A341764.P8822555958781314177

`A341688(n+1)+A341762(n+1)-1`
-/

namespace A341764.P8822555958781314177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341688 (n + 1) + A341762 (n + 1) - 1

end

end A341764.P8822555958781314177

/-! ## A341764.P8817735903492240198

`A341688(n+1)+A185048(A341762(n+1))`
-/

namespace A341764.P8817735903492240198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341688 (n + 1) + A185048 (A341762 (n + 1)).toNat

end

end A341764.P8817735903492240198

/-!
# A341765: Consider gaps between successive odd primes from 3 up to prime(n+2). Let k1 be number of gaps congruent to 2 (mod 6) and let k2 be number of gaps congruent to 4 (mod 6). Then a(n) = k1 - k2.

The programs for A341765, the canonical program `A341765.P1181486014391266501` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341765 has offset 1).

The definition of A341765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341765.P1181486014391266501

`3-A039701(n+3)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A341765

/-- `3-A039701(n+3)` -/
def P1181486014391266501.Spec : Prop :=
  ∀ n, P1181486014391266501.a n = A341765 (n + 1)

theorem P1181486014391266501.correct : P1181486014391266501.Spec := by
  intro n
  simp only [A341765, Nat.add_sub_cancel]

end A341765

/-! ## A341765.P6712030255954588047

`(2*p?[2*n+5])%3`
-/

namespace A341765.P6712030255954588047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 3

end

end A341765.P6712030255954588047

namespace A341765

/-- `(2*p?[2*n+5])%3` -/
def P6712030255954588047.Spec : Prop :=
  ∀ n, (P6712030255954588047.a n : ℤ) = A341765 (n + 1)

end A341765

/-! ## A341765.P15055129957371810773

`3-p?[xor(1, n)+5]%3`
-/

namespace A341765.P15055129957371810773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 3 : ℕ) : ℤ)

end

end A341765.P15055129957371810773

namespace A341765

/-- `3-p?[xor(1, n)+5]%3` -/
def P15055129957371810773.Spec : Prop :=
  ∀ n, P15055129957371810773.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P2044263155829303226

`floor(gcd(3, p?[2*n+5]-1)/2)+1`
-/

namespace A341765.P2044263155829303226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd 3 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) : ℚ) / 2⌋ + 1

end

end A341765.P2044263155829303226

namespace A341765

/-- `floor(gcd(3, p?[2*n+5]-1)/2)+1` -/
def P2044263155829303226.Spec : Prop :=
  ∀ n, P2044263155829303226.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P13609815040837048556

`dr(A179546(n+3))`
-/

namespace A341765.P13609815040837048556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A179546 (n + 3))

end

end A341765.P13609815040837048556

namespace A341765

/-- `dr(A179546(n+3))` -/
def P13609815040837048556.Spec : Prop :=
  ∀ n, (P13609815040837048556.a n : ℤ) = A341765 (n + 1)

end A341765

/-! ## A341765.P664819359798668438

`∑[A341952(n+2)]`
-/

namespace A341765.P664819359798668438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341952 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341765.P664819359798668438

namespace A341765

/-- `∑[A341952(n+2)]` -/
def P664819359798668438.Spec : Prop :=
  ∀ n, P664819359798668438.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P12529319134200891847

`A099618(n+3)+1`
-/

namespace A341765.P12529319134200891847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099618 (n + 3) + 1

end

end A341765.P12529319134200891847

namespace A341765

/-- `A099618(n+3)+1` -/
def P12529319134200891847.Spec : Prop :=
  ∀ n, P12529319134200891847.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P7225152060514052953

`2-A132194(n+3)`
-/

namespace A341765.P7225152060514052953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A132194 (n + 3)

end

end A341765.P7225152060514052953

namespace A341765

/-- `2-A132194(n+3)` -/
def P7225152060514052953.Spec : Prop :=
  ∀ n, P7225152060514052953.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P12663114614385565560

`A178548(n+1)%3`
-/

namespace A341765.P12663114614385565560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178548 (n + 1)) 3

end

end A341765.P12663114614385565560

namespace A341765

/-- `A178548(n+1)%3` -/
def P12663114614385565560.Spec : Prop :=
  ∀ n, P12663114614385565560.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P15547730601069167912

`A178561(n+1)%3`
-/

namespace A341765.P15547730601069167912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178561 (n + 1)) 3

end

end A341765.P15547730601069167912

namespace A341765

/-- `A178561(n+1)%3` -/
def P15547730601069167912.Spec : Prop :=
  ∀ n, P15547730601069167912.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P5552015855455224824

`A197638(n+1)%3`
-/

namespace A341765.P5552015855455224824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197638 (n + 1)) 3

end

end A341765.P5552015855455224824

namespace A341765

/-- `A197638(n+1)%3` -/
def P5552015855455224824.Spec : Prop :=
  ∀ n, P5552015855455224824.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P11022187408561627026

`A014352(n+2)%3`
-/

namespace A341765.P11022187408561627026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014352 (n + 2)) 3

end

end A341765.P11022187408561627026

namespace A341765

/-- `A014352(n+2)%3` -/
def P11022187408561627026.Spec : Prop :=
  ∀ n, P11022187408561627026.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P9138184854805591528

`A061227(n+2)%3`
-/

namespace A341765.P9138184854805591528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061227 (n + 2)) 3

end

end A341765.P9138184854805591528

namespace A341765

/-- `A061227(n+2)%3` -/
def P9138184854805591528.Spec : Prop :=
  ∀ n, P9138184854805591528.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P2577178596037505030

`A067076(n+2)%3`
-/

namespace A341765.P2577178596037505030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067076 (n + 2)) 3

end

end A341765.P2577178596037505030

namespace A341765

/-- `A067076(n+2)%3` -/
def P2577178596037505030.Spec : Prop :=
  ∀ n, P2577178596037505030.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P13282344106524950956

`A097069(n+2)%3`
-/

namespace A341765.P13282344106524950956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097069 (n + 2)) 3

end

end A341765.P13282344106524950956

namespace A341765

/-- `A097069(n+2)%3` -/
def P13282344106524950956.Spec : Prop :=
  ∀ n, P13282344106524950956.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P9213248215934822154

`A097480(n+2)%3`
-/

namespace A341765.P9213248215934822154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097480 (n + 2)) 3

end

end A341765.P9213248215934822154

namespace A341765

/-- `A097480(n+2)%3` -/
def P9213248215934822154.Spec : Prop :=
  ∀ n, P9213248215934822154.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P6688595162450075527

`A098090(n+2)%3`
-/

namespace A341765.P6688595162450075527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098090 (n + 2)) 3

end

end A341765.P6688595162450075527

namespace A341765

/-- `A098090(n+2)%3` -/
def P6688595162450075527.Spec : Prop :=
  ∀ n, P6688595162450075527.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P11629706061758060789

`A098764(n+2)%3`
-/

namespace A341765.P11629706061758060789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098764 (n + 2)) 3

end

end A341765.P11629706061758060789

namespace A341765

/-- `A098764(n+2)%3` -/
def P11629706061758060789.Spec : Prop :=
  ∀ n, P11629706061758060789.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P17312089474721916983

`A100021(n+2)%3`
-/

namespace A341765.P17312089474721916983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100021 (n + 2)) 3

end

end A341765.P17312089474721916983

namespace A341765

/-- `A100021(n+2)%3` -/
def P17312089474721916983.Spec : Prop :=
  ∀ n, P17312089474721916983.a n = A341765 (n + 1)

end A341765

/-! ## A341765.P16720297216705740282

`A207480(n+2)%3`
-/

namespace A341765.P16720297216705740282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207480 (n + 2)) 3

end

end A341765.P16720297216705740282

namespace A341765

/-- `A207480(n+2)%3` -/
def P16720297216705740282.Spec : Prop :=
  ∀ n, P16720297216705740282.a n = A341765 (n + 1)

end A341765

/-!
# A341768: a(n) = n * (binomial(n,2) - 2).

The programs for A341768, the canonical program `A341768.P17155034170055407740` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341768 has offset 0).

The definition of A341768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(C(n, 2)-2)` (program `A341768.P17155034170055407740`, by `A341768.P17155034170055407740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341768.P17155034170055407740

`n*(C(n, 2)-2)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341768

/-- `n*(C(n, 2)-2)` -/
def P17155034170055407740.Spec : Prop :=
  ∀ n, P17155034170055407740.a n = A341768 n

theorem P17155034170055407740.correct : P17155034170055407740.Spec := by
  intro n
  simp only [A341768]

end A341768

/-! ## A341768.P13057991147093656852

`ogf((-2x+6x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A341768.P13057991147093656852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -2, 6, -1] [1, -4, 6, -4, 1] n

end

end A341768.P13057991147093656852

namespace A341768

/-- `ogf((-2x+6x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P13057991147093656852.Spec : Prop :=
  ∀ n, P13057991147093656852.a n = A341768 n

end A341768

/-! ## A341768.P7087286934182423321

`n²*(n-1)/2-2*n`
-/

namespace A341768.P7087286934182423321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 - (2 * n : ℚ)

end

end A341768.P7087286934182423321

namespace A341768

/-- `n²*(n-1)/2-2*n` -/
def P7087286934182423321.Spec : Prop :=
  ∀ n, P7087286934182423321.a n = (A341768 n : ℚ)

theorem P7087286934182423321.correct : P7087286934182423321.Spec := by
  intro n
  simp only [A341768, Nat.add_sub_cancel, A341768.P7087286934182423321.a, A341768.P17155034170055407740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341768

/-! ## A341768.P9626057058973986357

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=-2, a(2)=2`
-/

namespace A341768.P9626057058973986357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -2, 2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341768.P9626057058973986357

namespace A341768

/-- `∑[∑[a(n-1)+3]]` -/
def P9626057058973986357.Spec : Prop :=
  ∀ n, P9626057058973986357.a n = A341768 n

end A341768

/-! ## A341768.P6840447282200059898

`1-∑[∑[a(n-1)-3]]` with `a(0)=1, a(1)=1`
-/

namespace A341768.P6840447282200059898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341768.P6840447282200059898

namespace A341768

/-- `1-∑[∑[a(n-1)-3]]` -/
def P6840447282200059898.Spec : Prop :=
  ∀ n, P6840447282200059898.a n = A341768 n

end A341768

/-! ## A341768.P9412236692317887993

`n*(A161680(n)-2)`
-/

namespace A341768.P9412236692317887993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A161680 n - 2)

end

end A341768.P9412236692317887993

namespace A341768

/-- `n*(A161680(n)-2)` -/
def P9412236692317887993.Spec : Prop :=
  ∀ n, P9412236692317887993.a n = A341768 n

end A341768

/-! ## A341768.P10745049531274533981

`n*(A152947(n+1)-3)`
-/

namespace A341768.P10745049531274533981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152947 (n + 1) - 3)

end

end A341768.P10745049531274533981

namespace A341768

/-- `n*(A152947(n+1)-3)` -/
def P10745049531274533981.Spec : Prop :=
  ∀ n, P10745049531274533981.a n = A341768 n

theorem P10745049531274533981.correct : P10745049531274533981.Spec := by
  intro n
  simp only [A341768, Nat.add_sub_cancel, A341768.P10745049531274533981.a, A341768.P17155034170055407740.a, A152947, A152947.P16367813442806996368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341768

/-! ## A341768.P11328865642689832289

`n*(A089071(n+1)-4)`
-/

namespace A341768.P11328865642689832289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A089071 (n + 1) - 4)

end

end A341768.P11328865642689832289

namespace A341768

/-- `n*(A089071(n+1)-4)` -/
def P11328865642689832289.Spec : Prop :=
  ∀ n, P11328865642689832289.a n = A341768 n

end A341768

/-! ## A341768.P10626852151065590921

`n*(A152948(n+1)-4)`
-/

namespace A341768.P10626852151065590921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152948 (n + 1) - 4)

end

end A341768.P10626852151065590921

namespace A341768

/-- `n*(A152948(n+1)-4)` -/
def P10626852151065590921.Spec : Prop :=
  ∀ n, P10626852151065590921.a n = A341768 n

theorem P10626852151065590921.correct : P10626852151065590921.Spec := by
  intro n
  simp only [A341768, Nat.add_sub_cancel, A341768.P10626852151065590921.a, A341768.P17155034170055407740.a, A152948, A152948.P6305161244529730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341768

/-! ## A341768.P8546701457902356016

`n*(A152949(n+1)-5)`
-/

namespace A341768.P8546701457902356016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152949 (n + 1) - 5)

end

end A341768.P8546701457902356016

namespace A341768

/-- `n*(A152949(n+1)-5)` -/
def P8546701457902356016.Spec : Prop :=
  ∀ n, P8546701457902356016.a n = A341768 n

theorem P8546701457902356016.correct : P8546701457902356016.Spec := by
  intro n
  simp only [A341768, Nat.add_sub_cancel, A341768.P8546701457902356016.a, A341768.P17155034170055407740.a, A152949, A152949.P6392678402352572629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341768

/-! ## A341768.P14153534569113275013

`(A000290(n)-(n+4))*2*n/4`
-/

namespace A341768.P14153534569113275013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000290 n - (n + 4 : ℤ)) * (2 * n : ℤ) : ℚ) / 4

end

end A341768.P14153534569113275013

namespace A341768

/-- `(A000290(n)-(n+4))*2*n/4` -/
def P14153534569113275013.Spec : Prop :=
  ∀ n, P14153534569113275013.a n = (A341768 n : ℚ)

theorem P14153534569113275013.correct : P14153534569113275013.Spec := by
  intro n
  simp only [A341768, Nat.add_sub_cancel, A341768.P14153534569113275013.a, A341768.P17155034170055407740.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A341768

/-!
# A341769: Number of connected components of Euclidean n-space when the hyperplanes x_i+x_j=1, x_i=0, x_i=1 (1 <= i < j <= n) are deleted.

The programs for A341769, there is no canonical definition to state claims against.
-/

/-! ## A341769.P14487678289886970511

`A076726(n+1)+Δ[A005840(n+1)]`
-/

namespace A341769.P14487678289886970511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 (n + 1) + (f1 (n + 1) - f1 n)

end

end A341769.P14487678289886970511

/-!
# A341771: a(1) = 2; for n >= 1, a(n+1) is the largest integer k such that for some integer d > 0, a(n-j*d) = a(n) for all j < k.

The programs for A341771, there is no canonical definition to state claims against.
-/

/-! ## A341771.P9625762962721931991

`A344320(A264165(n+2)+1)`
-/

namespace A341771.P9625762962721931991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344320 (A264165 (n + 2) + 1).toNat

end

end A341771.P9625762962721931991

/-! ## A341771.P10927375433412803955

`A001221(A193649(n)+Δ[A271600(n)])`
-/

namespace A341771.P10927375433412803955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A193649 n + (f1 (n + 1) - f1 n)).toNat

end

end A341771.P10927375433412803955

/-! ## A341771.P13260218304567013368

`A001221(xor(A001519(n), A196116(n+1)))`
-/

namespace A341771.P13260218304567013368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A001519 n) (A196116 (n + 1))).toNat

end

end A341771.P13260218304567013368

/-! ## A341771.P17601453893831594544

`A001221(or(A000383(n), A301554(n+4)))`
-/

namespace A341771.P17601453893831594544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A000383 n) (A301554 (n + 4))).toNat

end

end A341771.P17601453893831594544

/-! ## A341771.P5747187766453957135

`A124765(A007955(2*n+5)+A001317(n))`
-/

namespace A341771.P5747187766453957135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A007955 (2 * n + 5) + A001317 n).toNat

end

end A341771.P5747187766453957135

/-!
# A341772: a(n) = Sum_{d|n} phi(d) * J_2(n/d).

The programs for A341772, the canonical program `A341772.P16346253428948690978` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341772 has offset 1).

The definition of A341772 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341772.P16346253428948690978

`∑{d}[n+1, #*A321322((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341772

/-- `∑{d}[n+1, #*A321322((n+1)/#)]` -/
def P16346253428948690978.Spec : Prop :=
  ∀ n, P16346253428948690978.a n = A341772 (n + 1)

theorem P16346253428948690978.correct : P16346253428948690978.Spec := by
  intro n
  simp only [A341772, Nat.add_sub_cancel]

end A341772

/-! ## A341772.P7411223188797974364

`∑{d}[n+1, #²*A007431((n+1)/#)]`
-/

namespace A341772.P7411223188797974364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P7411223188797974364

namespace A341772

/-- `∑{d}[n+1, #²*A007431((n+1)/#)]` -/
def P7411223188797974364.Spec : Prop :=
  ∀ n, P7411223188797974364.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P18018683861022602819

`∑{d}[n+1, A008683((n+1)/#)*A069097(#)]`
-/

namespace A341772.P18018683861022602819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A069097 d

end

end A341772.P18018683861022602819

namespace A341772

/-- `∑{d}[n+1, A008683((n+1)/#)*A069097(#)]` -/
def P18018683861022602819.Spec : Prop :=
  ∀ n, P18018683861022602819.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P15020111107922710148

`∑{d}[n+1, #*A000203(#)*A007427((n+1)/#)]`
-/

namespace A341772.P15020111107922710148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P15020111107922710148

namespace A341772

/-- `∑{d}[n+1, #*A000203(#)*A007427((n+1)/#)]` -/
def P15020111107922710148.Spec : Prop :=
  ∀ n, P15020111107922710148.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P5013539708232261891

`∑{d}[n+1, #*A000010(#)*A029935((n+1)/#)]`
-/

namespace A341772.P5013539708232261891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P5013539708232261891

namespace A341772

/-- `∑{d}[n+1, #*A000010(#)*A029935((n+1)/#)]` -/
def P5013539708232261891.Spec : Prop :=
  ∀ n, P5013539708232261891.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P12602741571802974832

`∑{d}[n+1, #*A023900(#)*A338164((n+1)/#)]`
-/

namespace A341772.P12602741571802974832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023900 d * A338164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P12602741571802974832

namespace A341772

/-- `∑{d}[n+1, #*A023900(#)*A338164((n+1)/#)]` -/
def P12602741571802974832.Spec : Prop :=
  ∀ n, P12602741571802974832.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P16276558103874497852

`∑{d}[n+1, A000010(#)*A007434((n+1)/#)]`
-/

namespace A341772.P16276558103874497852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P16276558103874497852

namespace A341772

/-- `∑{d}[n+1, A000010(#)*A007434((n+1)/#)]` -/
def P16276558103874497852.Spec : Prop :=
  ∀ n, P16276558103874497852.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P946578422890341545

`∑{d}[n+1, A001001(#)*A007428((n+1)/#)]`
-/

namespace A341772.P946578422890341545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P946578422890341545

namespace A341772

/-- `∑{d}[n+1, A001001(#)*A007428((n+1)/#)]` -/
def P946578422890341545.Spec : Prop :=
  ∀ n, P946578422890341545.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P15481447107915602689

`∑{d}[n+1, A001157(#)*A007432((n+1)/#)]`
-/

namespace A341772.P15481447107915602689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P15481447107915602689

namespace A341772

/-- `∑{d}[n+1, A001157(#)*A007432((n+1)/#)]` -/
def P15481447107915602689.Spec : Prop :=
  ∀ n, P15481447107915602689.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P5763508901412594549

`∑{d}[n+1, A002618(#)*A029935((n+1)/#)]`
-/

namespace A341772.P5763508901412594549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P5763508901412594549

namespace A341772

/-- `∑{d}[n+1, A002618(#)*A029935((n+1)/#)]` -/
def P5763508901412594549.Spec : Prop :=
  ∀ n, P5763508901412594549.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P16001272940669687893

`∑{d}[n+1, A007427(#)*A064987((n+1)/#)]`
-/

namespace A341772.P16001272940669687893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P16001272940669687893

namespace A341772

/-- `∑{d}[n+1, A007427(#)*A064987((n+1)/#)]` -/
def P16001272940669687893.Spec : Prop :=
  ∀ n, P16001272940669687893.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P6000685661357946185

`∑{d}[n+1, A018804(#)*A063445((n+1)/#)]`
-/

namespace A341772.P6000685661357946185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P6000685661357946185

namespace A341772

/-- `∑{d}[n+1, A018804(#)*A063445((n+1)/#)]` -/
def P6000685661357946185.Spec : Prop :=
  ∀ n, P6000685661357946185.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P723674198177463096

`∑{d}[n+1, A057660(#)*A143275((n+1)/#)]`
-/

namespace A341772.P723674198177463096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P723674198177463096

namespace A341772

/-- `∑{d}[n+1, A057660(#)*A143275((n+1)/#)]` -/
def P723674198177463096.Spec : Prop :=
  ∀ n, P723674198177463096.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P6584281028663607554

`∑{d}[n+1, A140697(#)*A358272((n+1)/#)]`
-/

namespace A341772.P6584281028663607554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140697 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P6584281028663607554

namespace A341772

/-- `∑{d}[n+1, A140697(#)*A358272((n+1)/#)]` -/
def P6584281028663607554.Spec : Prop :=
  ∀ n, P6584281028663607554.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P7381747968698883706

`∑{d}[n+1, A158523(#)*A390262((n+1)/#)]`
-/

namespace A341772.P7381747968698883706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P7381747968698883706

namespace A341772

/-- `∑{d}[n+1, A158523(#)*A390262((n+1)/#)]` -/
def P7381747968698883706.Spec : Prop :=
  ∀ n, P7381747968698883706.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P10681119843437430053

`∑{d}[n+1, A228274(#)*A327274((n+1)/#)]`
-/

namespace A341772.P10681119843437430053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228274 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P10681119843437430053

namespace A341772

/-- `∑{d}[n+1, A228274(#)*A327274((n+1)/#)]` -/
def P10681119843437430053.Spec : Prop :=
  ∀ n, P10681119843437430053.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P4818426186358229732

`∑{d}[n+1, A340850(#)*A344683((n+1)/#)]`
-/

namespace A341772.P4818426186358229732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340850 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P4818426186358229732

namespace A341772

/-- `∑{d}[n+1, A340850(#)*A344683((n+1)/#)]` -/
def P4818426186358229732.Spec : Prop :=
  ∀ n, P4818426186358229732.a n = A341772 (n + 1)

end A341772

/-! ## A341772.P510991060914475437

`∑{d}[n+1, A328502(#)*A360428((n+1)/#)]`
-/

namespace A341772.P510991060914475437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341772.P510991060914475437

namespace A341772

/-- `∑{d}[n+1, A328502(#)*A360428((n+1)/#)]` -/
def P510991060914475437.Spec : Prop :=
  ∀ n, P510991060914475437.a n = A341772 (n + 1)

end A341772

/-!
# A341773: Number of partitions of 2*n into exactly n nonzero tetrahedral numbers.

The programs for A341773, there is no canonical definition to state claims against.
-/

/-! ## A341773.P14519860256174615615

`A341793(n)+A185284(A007913(n+1))`
-/

namespace A341773.P14519860256174615615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) + A185284 (A007913 (n + 1)).toNat

end

end A341773.P14519860256174615615

/-! ## A341773.P14795429026630590130

`A341793(n)+A037214(A058071(A034575(n+1)))`
-/

namespace A341773.P14795429026630590130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) + A037214 (A058071 (A034575 (n + 1)).toNat).toNat

end

end A341773.P14795429026630590130

/-! ## A341773.P8154917086152797415

`A341793(n*A291168(n))`
-/

namespace A341773.P8154917086152797415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (((n : ℤ) * A291168 n).toNat + 10)

end

end A341773.P8154917086152797415

/-! ## A341773.P2214723170785310168

`A341793(n)+A025438(n-A005136(n))`
-/

namespace A341773.P2214723170785310168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) + A025438 ((n : ℤ) - A005136 n).toNat

end

end A341773.P2214723170785310168

/-!
# A341774: Number of partitions of n into 3 nonzero tetrahedral numbers.

The programs for A341774, there is no canonical definition to state claims against.
-/

/-! ## A341774.P12868346058360144428

`A011373(A341794(n+3))`
-/

namespace A341774.P12868346058360144428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 (A341794 (n + 3)).toNat

end

end A341774.P12868346058360144428

/-! ## A341774.P3670747651331988291

`A206483(A341794(n+3)+1)`
-/

namespace A341774.P3670747651331988291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A341794 (n + 3) + 1).toNat

end

end A341774.P3670747651331988291

/-! ## A341774.P11584032566394287372

`A121444(A341794(n+3)+6)`
-/

namespace A341774.P11584032566394287372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 (A341794 (n + 3) + 6).toNat

end

end A341774.P11584032566394287372

/-! ## A341774.P8166778945649926757

`A048766(lcm(3, A341794(n+3)))`
-/

namespace A341774.P8166778945649926757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm 3 (A341794 (n + 3)))

end

end A341774.P8166778945649926757

/-! ## A341774.P16097161848434225311

`∑{d}[A341794(n+3), A010052(#)]`
-/

namespace A341774.P16097161848434225311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010052 d

end

end A341774.P16097161848434225311

/-! ## A341774.P3930168338684846887

`∑{d}[A341794(n+3), A025435(#)]`
-/

namespace A341774.P3930168338684846887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A025435 d

end

end A341774.P3930168338684846887

/-! ## A341774.P13681753047372001918

`∑{d}[A341794(n+3), A033461(#)]`
-/

namespace A341774.P13681753047372001918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033461 d

end

end A341774.P13681753047372001918

/-! ## A341774.P12078931501421589334

`A054868(∑{d}[A341794(n+3), #])`
-/

namespace A341774.P12078931501421589334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A341774.P12078931501421589334

/-! ## A341774.P4285978395171633397

`∑{d}[A341794(n+3), A062892(#)]`
-/

namespace A341774.P4285978395171633397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062892 d

end

end A341774.P4285978395171633397

/-! ## A341774.P5913472692232593302

`∑{d}[A341794(n+3), A065803(#)]`
-/

namespace A341774.P5913472692232593302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341794 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065803 d

end

end A341774.P5913472692232593302

/-!
# A341775: Number of partitions of n into 4 nonzero tetrahedral numbers.

The programs for A341775, there is no canonical definition to state claims against.
-/

/-! ## A341775.P11173733708437683836

`A072491(A341776(n+5)^A059268(n))`
-/

namespace A341775.P11173733708437683836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A341776 (n + 5) : ℚ) ^ (A059268 n : ℤ))).toNat

end

end A341775.P11173733708437683836

/-! ## A341775.P4867121579345899487

`A005136(A341776(n+5)^A002260(n+1))`
-/

namespace A341775.P4867121579345899487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (SequenceMachineLib.roundAway ((A341776 (n + 5) : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A341775.P4867121579345899487

/-! ## A341775.P1619585879680941612

`gcd(A025469(A284069(n+1)), A341776(n+5))`
-/

namespace A341775.P1619585879680941612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 (A284069 (n + 1)).toNat) (A341776 (n + 5))

end

end A341775.P1619585879680941612

/-! ## A341775.P1142478380724160249

`A005136(A152716(n))*A341774(n+3)`
-/

namespace A341775.P1142478380724160249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A152716 n).toNat * A341774 (n + 3)

end

end A341775.P1142478380724160249

/-! ## A341775.P13110513475730128492

`A191254(A384177(n+1))`
-/

namespace A341775.P13110513475730128492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A384177 (n + 1)).toNat

end

end A341775.P13110513475730128492

/-!
# A341776: Number of partitions of n into 5 nonzero tetrahedral numbers.

The programs for A341776, there is no canonical definition to state claims against.
-/

/-! ## A341776.P2683918812311948848

`lcm(A000002(A006206(n+1)), A341775(n+4))`
-/

namespace A341776.P2683918812311948848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000002 (A006206 (n + 1)).toNat) (A341775 (n + 4))

end

end A341776.P2683918812311948848

/-! ## A341776.P1120765724498036219

`and(A284064(A284069(n+1)), A341792(n+9))`
-/

namespace A341776.P1120765724498036219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284064 (A284069 (n + 1)).toNat) (A341792 (n + 9))

end

end A341776.P1120765724498036219

/-! ## A341776.P641332227887401692

`A132625(A318812(3*n+5))*A341775(n+4)`
-/

namespace A341776.P641332227887401692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132625 (A318812 (3 * n + 5)).toNat * A341775 (n + 4)

end

end A341776.P641332227887401692

/-! ## A341776.P5961842115449935566

`A196564(lcm(10, A341808(n+9)))`
-/

namespace A341776.P5961842115449935566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.lcm 10 (A341808 (n + 9)))

end

end A341776.P5961842115449935566

/-! ## A341776.P15834698480706127333

`A115862(A254052(n+2))`
-/

namespace A341776.P15834698480706127333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115862 (A254052 (n + 2)).toNat

end

end A341776.P15834698480706127333

/-!
# A341777: Number of partitions of n into 6 nonzero tetrahedral numbers.

The programs for A341777, there is no canonical definition to state claims against.
-/

/-! ## A341777.P2006661719374611951

`and(A192404(A151688(n)), A341773(n))`
-/

namespace A341777.P2006661719374611951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192404 (A151688 n).toNat) (A341773 n)

end

end A341777.P2006661719374611951

/-! ## A341777.P5763510299253444031

`A072491(A341773(n)^A050331(n+1))`
-/

namespace A341777.P5763510299253444031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A341773 n : ℚ) ^ (A050331 (n + 1) : ℤ))).toNat

end

end A341777.P5763510299253444031

/-! ## A341777.P10712052212704992062

`A072491(A341793(n)^A050331(n+1))`
-/

namespace A341777.P10712052212704992062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A341793 (n + 10) : ℚ) ^ (A050331 (n + 1) : ℤ))).toNat

end

end A341777.P10712052212704992062

/-! ## A341777.P3995633224317485767

`A072491(A341773(n)^A063440(n+1))`
-/

namespace A341777.P3995633224317485767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A341773 n : ℚ) ^ (A063440 (n + 1) : ℤ))).toNat

end

end A341777.P3995633224317485767

/-! ## A341777.P14754322525925805002

`A072491(A341793(n)^A063440(n+1))`
-/

namespace A341777.P14754322525925805002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (SequenceMachineLib.roundAway ((A341793 (n + 10) : ℚ) ^ (A063440 (n + 1) : ℤ))).toNat

end

end A341777.P14754322525925805002

/-!
# A341778: Number of partitions of n into 7 nonzero tetrahedral numbers.

The programs for A341778, there is no canonical definition to state claims against.
-/

/-! ## A341778.P12451473548391692081

`A341793(n)-A024692(p?[A341025(n)])`
-/

namespace A341778.P12451473548391692081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 (n + 120)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) - A024692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A341778.P12451473548391692081

/-! ## A341778.P5745381631779835123

`A341792(n+9)-A024692(p?[A341025(n)])`
-/

namespace A341778.P5745381631779835123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 (n + 120)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341792 (n + 9) - A024692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A341778.P5745381631779835123

/-! ## A341778.P9883791438895716269

`A341791(n+8)-A045839(A185037(n))`
-/

namespace A341778.P9883791438895716269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341791 (n + 8) - A045839 (A185037 n).toNat

end

end A341778.P9883791438895716269

/-! ## A341778.P7510879730680011042

`A341791(n+8)-A353474(A341813(n+1))`
-/

namespace A341778.P7510879730680011042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341791 (n + 8) - A353474 (A341813 (n + 1)).toNat

end

end A341778.P7510879730680011042

/-! ## A341778.P6063715154998198288

`A394244(n)%A177819(n+4)`
-/

namespace A341778.P6063715154998198288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394244 n) (A177819 (n + 4))

end

end A341778.P6063715154998198288

/-!
# A341779: Numbers k such that k and k+1 are both anti-tau numbers (A046642).

The programs for A341779, there is no canonical definition to state claims against.
-/

/-! ## A341779.P15412757468439546299

`∩[A046642(n+1)-1, A046642(n+1)]`
-/

namespace A341779.P15412757468439546299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341779.P15412757468439546299

/-! ## A341779.P9220614606740340227

`eq[A009191(n+1), A009191(A068225(n+1))]`
-/

namespace A341779.P9220614606740340227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A068225 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341779.P9220614606740340227

/-! ## A341779.P6187925620739314602

`eq[A306671(A068225(n+1)), A306671(n+1)]`
-/

namespace A341779.P6187925620739314602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (A068225 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341779.P6187925620739314602

/-! ## A341779.P3797867547923710095

`eq[A009191(n+1), A322980(A233583(n+1))]`
-/

namespace A341779.P3797867547923710095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322980 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341779.P3797867547923710095

/-! ## A341779.P3011749888570758005

`eq[A306671(n+1), A322980(A233583(n+1))]`
-/

namespace A341779.P3011749888570758005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322980 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341779.P3011749888570758005

/-!
# A341780: Starts of runs of 3 consecutive anti-tau numbers (A046642).

The programs for A341780, there is no canonical definition to state claims against.
-/

/-! ## A341780.P9788803419008104754

`∩[A341779(n+1)-1, A341779(n+1)]`
-/

namespace A341780.P9788803419008104754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341779 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341780.P9788803419008104754

/-! ## A341780.P10649350448925051399

`A341779(eq[1, A341779(n+2)-A341779(n+1)]+1)`
-/

namespace A341780.P10649350448925051399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341779 (n + 2) - A341779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A341780.P10649350448925051399

/-! ## A341780.P1701430099998367781

`∩[A341779(n+1), A005942(n)-1]`
-/

namespace A341780.P1701430099998367781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341780.P1701430099998367781

/-! ## A341780.P15930002011766757152

`∩[A031404(n+1), A341779(n+1)]`
-/

namespace A341780.P15930002011766757152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341780.P15930002011766757152

/-! ## A341780.P15574288700035518937

`record[A093178(A341779(n+1))]`
-/

namespace A341780.P15574288700035518937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A341779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341780.P15574288700035518937

/-!
# A341781: Refactorable numbers (or tau numbers, A033950) k such that k/tau(k) is even, where tau(k) = A000005(k).

The programs for A341781, the canonical program `A341781.P6122018093653235653` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341781 has offset 1).

The definition of A341781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341781.P6122018093653235653

`eq[2, (2*(n+1))%A145154(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341781

/-- `eq[2, (2*(n+1))%A145154(n)]` -/
def P6122018093653235653.Spec : Prop :=
  ∀ n, (P6122018093653235653.a n : ℤ) = A341781 (n + 1)

theorem P6122018093653235653.correct : P6122018093653235653.Spec := by
  intro n
  simp only [A341781, Nat.add_sub_cancel]

end A341781

/-! ## A341781.P14495351403718340268

`eq[0, (n+1)%A062011(n+1)]+1`
-/

namespace A341781.P14495351403718340268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062011 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341781.P14495351403718340268

namespace A341781

/-- `eq[0, (n+1)%A062011(n+1)]+1` -/
def P14495351403718340268.Spec : Prop :=
  ∀ n, (P14495351403718340268.a n : ℤ) = A341781 (n + 1)

end A341781

/-! ## A341781.P7403904732265391391

`eq[2, A286477((n+1+n)%A145154(n)+1)]`
-/

namespace A341781.P7403904732265391391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (Int.tmod (n + 1 + n : ℤ) (A145154 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341781.P7403904732265391391

namespace A341781

/-- `eq[2, A286477((n+1+n)%A145154(n)+1)]` -/
def P7403904732265391391.Spec : Prop :=
  ∀ n, (P7403904732265391391.a n : ℤ) = A341781 (n + 1)

end A341781

/-! ## A341781.P9537408187701312450

`eq[(2*n)%A145154(n), A000007(n)]`
-/

namespace A341781.P9537408187701312450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A145154 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341781.P9537408187701312450

namespace A341781

/-- `eq[(2*n)%A145154(n), A000007(n)]` -/
def P9537408187701312450.Spec : Prop :=
  ∀ n, (P9537408187701312450.a n : ℤ) = A341781 (n + 1)

end A341781

/-!
# A341782: a(n) = sqrt( Product_{j=1..n} Product_{k=1..n-1} (4*sin((2*j-1)*Pi/(2*n))^2 + 4*sin(2*k*Pi/n)^2) ).

The programs for A341782, there is no canonical definition to state claims against.
-/

/-! ## A341782.P16017963306584091399

`A341738((1-n)²+n²)`
-/

namespace A341782.P16017963306584091399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341738 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A341782.P16017963306584091399

/-!
# A341783: Absolute values of norms of prime elements in Z[(1+sqrt(5))/2], the ring of integers of Q(sqrt(5)).

The programs for A341783, the canonical program `A341783.P13358980128243009545` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341783 has offset 1).

The definition of A341783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341783.P13358980128243009545

`∪[A003631(n+1)², A038872(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341783

/-- `∪[A003631(n+1)², A038872(n+1)]` -/
def P13358980128243009545.Spec : Prop :=
  ∀ n, (P13358980128243009545.a n : ℤ) = A341783 (n + 1)

theorem P13358980128243009545.correct : P13358980128243009545.Spec := by
  intro n
  simp only [A341783, Nat.add_sub_cancel]

end A341783

/-! ## A341783.P17414198639248205712

`∪[A038872(n+1), A042993(A326178(n+1))²]`
-/

namespace A341783.P17414198639248205712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (A326178 (n + 1)).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341783.P17414198639248205712

namespace A341783

/-- `∪[A038872(n+1), A042993(A326178(n+1))²]` -/
def P17414198639248205712.Spec : Prop :=
  ∀ n, (P17414198639248205712.a n : ℤ) = A341783 (n + 1)

end A341783

/-!
# A341784: Norms of prime elements in Z[sqrt(-2)], the ring of integers of Q(sqrt(-2)).

The programs for A341784, the canonical program `A341784.P7806599191344346021` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341784 has offset 1).

The definition of A341784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341784.P7806599191344346021

`∪[p?[or(5, 6*n)]², A033203(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341784

/-- `∪[p?[or(5, 6*n)]², A033203(n+1)]` -/
def P7806599191344346021.Spec : Prop :=
  ∀ n, (P7806599191344346021.a n : ℤ) = A341784 (n + 1)

theorem P7806599191344346021.correct : P7806599191344346021.Spec := by
  intro n
  simp only [A341784, Nat.add_sub_cancel]

end A341784

/-! ## A341784.P5121900941235548690

`∪[A003628(n+1)², A033203(n+1)]`
-/

namespace A341784.P5121900941235548690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341784.P5121900941235548690

namespace A341784

/-- `∪[A003628(n+1)², A033203(n+1)]` -/
def P5121900941235548690.Spec : Prop :=
  ∀ n, (P5121900941235548690.a n : ℤ) = A341784 (n + 1)

end A341784

/-! ## A341784.P13191329033618251088

`∩[A034034(n+1), A136327(n+1)]`
-/

namespace A341784.P13191329033618251088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341784.P13191329033618251088

namespace A341784

/-- `∩[A034034(n+1), A136327(n+1)]` -/
def P13191329033618251088.Spec : Prop :=
  ∀ n, (P13191329033618251088.a n : ℤ) = A341784 (n + 1)

end A341784

/-! ## A341784.P12887403863895715266

`eq[A064680(A129438(n)), A069283(n)]`
-/

namespace A341784.P12887403863895715266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A129438 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341784.P12887403863895715266

namespace A341784

/-- `eq[A064680(A129438(n)), A069283(n)]` -/
def P12887403863895715266.Spec : Prop :=
  ∀ n, (P12887403863895715266.a n : ℤ) = A341784 (n + 1)

end A341784

/-! ## A341784.P7910599402791609306

`eq[A074206(n), A302126(A244543(n))]`
-/

namespace A341784.P7910599402791609306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A244543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341784.P7910599402791609306

namespace A341784

/-- `eq[A074206(n), A302126(A244543(n))]` -/
def P7910599402791609306.Spec : Prop :=
  ∀ n, (P7910599402791609306.a n : ℤ) = A341784 (n + 1)

end A341784

/-! ## A341784.P1951347530946421792

`eq[A078898(n), A302126(A244543(n))]`
-/

namespace A341784.P1951347530946421792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A244543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341784.P1951347530946421792

namespace A341784

/-- `eq[A078898(n), A302126(A244543(n))]` -/
def P1951347530946421792.Spec : Prop :=
  ∀ n, (P1951347530946421792.a n : ℤ) = A341784 (n + 1)

end A341784

/-! ## A341784.P8965393136412270968

`eq[A104725(n), A302126(A244543(n))]`
-/

namespace A341784.P8965393136412270968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A244543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341784.P8965393136412270968

namespace A341784

/-- `eq[A104725(n), A302126(A244543(n))]` -/
def P8965393136412270968.Spec : Prop :=
  ∀ n, (P8965393136412270968.a n : ℤ) = A341784 (n + 1)

end A341784

/-! ## A341784.P6370857596812193117

`eq[A211110(n), A302126(A244543(n))]`
-/

namespace A341784.P6370857596812193117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A244543 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341784.P6370857596812193117

namespace A341784

/-- `eq[A211110(n), A302126(A244543(n))]` -/
def P6370857596812193117.Spec : Prop :=
  ∀ n, (P6370857596812193117.a n : ℤ) = A341784 (n + 1)

end A341784

/-!
# A341785: Norms of prime elements in Z[(1+sqrt(-11))/2], the ring of integers of Q(sqrt(-11)).

The programs for A341785, there is no canonical definition to state claims against.
-/

/-! ## A341785.P7683186699448997037

`∪[A056874(n+1), A191060(n+1)²]`
-/

namespace A341785.P7683186699448997037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341785.P7683186699448997037

/-!
# A341786: Norms of prime ideals in Z[(1+sqrt(-15))/2], the ring of integers of Q(sqrt(-15)).

The programs for A341786, there is no canonical definition to state claims against.
-/

/-! ## A341786.P8633902412594236032

`eq[A032741(n), A061287(A333330(n))]`
-/

namespace A341786.P8633902412594236032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061287 (A333330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341786.P8633902412594236032

/-! ## A341786.P2152957190451555551

`eq[A302126(A333330(n)), A323347(n)]`
-/

namespace A341786.P2152957190451555551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A333330 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341786.P2152957190451555551

/-! ## A341786.P2212707342030805479

`eq[A001221(A261709(n+1)), A323347(n)]`
-/

namespace A341786.P2212707342030805479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261709 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341786.P2212707342030805479

/-! ## A341786.P17258068931685077860

`A074583(A246392(n+1)^A098732(n+1))`
-/

namespace A341786.P17258068931685077860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (SequenceMachineLib.roundAway ((A246392 (n + 1) : ℚ) ^ (A098732 (n + 1) : ℤ))).toNat

end

end A341786.P17258068931685077860

/-!
# A341787: Norms of prime elements in Z[(1+sqrt(-19))/2], the ring of integers of Q(sqrt(-19)).

The programs for A341787, there is no canonical definition to state claims against.
-/

/-! ## A341787.P14156392828075292206

`∩[A035243(n+1), A178156(n+1)]`
-/

namespace A341787.P14156392828075292206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341787.P14156392828075292206

/-! ## A341787.P13370749346762405085

`A089867(A098123(n)+A060265(n+2))`
-/

namespace A341787.P13370749346762405085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A098123 n + A060265 (n + 2)).toNat

end

end A341787.P13370749346762405085

/-! ## A341787.P8296315004233982354

`A089868(A098123(n)+A060265(n+2))`
-/

namespace A341787.P8296315004233982354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A098123 n + A060265 (n + 2)).toNat

end

end A341787.P8296315004233982354

/-! ## A341787.P14369676449039198937

`A089869(A098123(n)+A060265(n+2))`
-/

namespace A341787.P14369676449039198937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A098123 n + A060265 (n + 2)).toNat

end

end A341787.P14369676449039198937

/-!
# A341788: Norms of prime elements in Z[(1+sqrt(-43))/2], the ring of integers of Q(sqrt(-43)).

The programs for A341788, there is no canonical definition to state claims against.
-/

/-! ## A341788.P2312026293324499185

`∩[A000430(n+1), A010447(n+1)]`
-/

namespace A341788.P2312026293324499185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341788.P2312026293324499185

/-! ## A341788.P12739489837570786436

`∩[A010447(n+1), A087797(n+1)]`
-/

namespace A341788.P12739489837570786436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341788.P12739489837570786436

/-! ## A341788.P3303644969160801005

`∩[A010447(n+3), lt[A048785(n), 8]]`
-/

namespace A341788.P3303644969160801005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A341788.P3303644969160801005

/-! ## A341788.P15493128928206320207

`lt[A138811(A076746(3*n+5)), A138811(n)]`
-/

namespace A341788.P15493128928206320207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 (A076746 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341788.P15493128928206320207

/-!
# A341789: Norms of prime elements in Z[(1+sqrt(-67))/2], the ring of integers of Q(sqrt(-67)).

The programs for A341789, there is no canonical definition to state claims against.
-/

/-! ## A341789.P10655868963457956305

`∪[A106933(n+1), A191077(n+1)²]`
-/

namespace A341789.P10655868963457956305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191077 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341789.P10655868963457956305

/-! ## A341789.P10645716817531644159

`∩[A000430(n+1), A010428(n+1)]`
-/

namespace A341789.P10645716817531644159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341789.P10645716817531644159

/-! ## A341789.P2331643627139970432

`∩[A010428(n+1), A087797(n+1)]`
-/

namespace A341789.P2331643627139970432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341789.P2331643627139970432

/-! ## A341789.P18020062508516358586

`lt[A175632(A000010(2*n+3)), A318984(n)]`
-/

namespace A341789.P18020062508516358586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175632 (A000010 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341789.P18020062508516358586

/-! ## A341789.P6295589949376755221

`lt[A055457((2*n+3)²), A318984(n)]`
-/

namespace A341789.P6295589949376755221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 ((2 * n + 3) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341789.P6295589949376755221

/-!
# A341790: Norms of prime elements in Z[(1+sqrt(-163))/2], the ring of integers of Q(sqrt(-163)).

The programs for A341790, there is no canonical definition to state claims against.
-/

/-! ## A341790.P3628409941711191914

`∪[A257362(n+1), A296915(n+1)²]`
-/

namespace A341790.P3628409941711191914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296915 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341790.P3628409941711191914

/-! ## A341790.P9871870653776772957

`eq[A011615(n), A038572(A211110(n))]`
-/

namespace A341790.P9871870653776772957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A211110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341790.P9871870653776772957

/-!
# A341791: Number of partitions of n into 8 nonzero tetrahedral numbers.

The programs for A341791, there is no canonical definition to state claims against.
-/

/-! ## A341791.P14817695462395586804

`A151687(A341793(n)%A050891(n+1))`
-/

namespace A341791.P14817695462395586804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151687 (Int.tmod (A341793 (n + 10)) (A050891 (n + 1))).toNat

end

end A341791.P14817695462395586804

/-! ## A341791.P12801981852231239965

`A341792(n+9)-A102683(A271617(n+1))`
-/

namespace A341791.P12801981852231239965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341792 (n + 9) - A102683 (A271617 (n + 1)).toNat

end

end A341791.P12801981852231239965

/-! ## A341791.P11754304825079795498

`or(A000035(A299675(n+1)), A341778(n+7))`
-/

namespace A341791.P11754304825079795498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A299675 (n + 1)).toNat) (A341778 (n + 7))

end

end A341791.P11754304825079795498

/-! ## A341791.P15243592539349681277

`A341793(n)-A320317(A341793(3*(n+1)))`
-/

namespace A341791.P15243592539349681277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) - A320317 (A341793 (3 * (n + 1) + 10)).toNat

end

end A341791.P15243592539349681277

/-! ## A341791.P364659370018765777

`A335462(3*n+4)+A282029(A341793(n))`
-/

namespace A341791.P364659370018765777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (3 * n + 4) + A282029 (A341793 (n + 10)).toNat

end

end A341791.P364659370018765777

/-!
# A341792: Number of partitions of n into 9 nonzero tetrahedral numbers.

The programs for A341792, there is no canonical definition to state claims against.
-/

/-! ## A341792.P8829830293129478064

`A341793(A005136(n)*A025438(n)+n)`
-/

namespace A341792.P8829830293129478064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 ((A005136 n * A025438 n + (n : ℤ)).toNat + 10)

end

end A341792.P8829830293129478064

/-! ## A341792.P6447163489084080882

`A341793(n)-and(A005136(n), A025438(n))`
-/

namespace A341792.P6447163489084080882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) - Int.land (A005136 n) (A025438 n)

end

end A341792.P6447163489084080882

/-! ## A341792.P10884045175242266496

`A341793(n)-A005136(A005136(n)*A025438(n))`
-/

namespace A341792.P10884045175242266496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) - A005136 (A005136 n * A025438 n).toNat

end

end A341792.P10884045175242266496

/-! ## A341792.P9705297884183328765

`A341793(n)-A307598(A341022(3*(n+1)))`
-/

namespace A341792.P9705297884183328765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (n + 10) - A307598 (A341022 (3 * (n + 1) + 35)).toNat

end

end A341792.P9705297884183328765

/-! ## A341792.P15747746500152648366

`and(A062241(n), A341773(n))`
-/

namespace A341792.P15747746500152648366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062241 n) (A341773 n)

end

end A341792.P15747746500152648366

/-!
# A341793: Number of partitions of n into 10 nonzero tetrahedral numbers.

The programs for A341793, there is no canonical definition to state claims against.
-/

/-! ## A341793.P10342022508457830435

`A341773(n)-A101637(A271617(n+1))`
-/

namespace A341793.P10342022508457830435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341773 n - A101637 (A271617 (n + 1)).toNat

end

end A341793.P10342022508457830435

/-! ## A341793.P3050550311946499130

`and(A199262(n), A341773(n))`
-/

namespace A341793.P3050550311946499130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199262 n) (A341773 n)

end

end A341793.P3050550311946499130

/-! ## A341793.P7459630727292251139

`and(A199262(n), A394244(n))`
-/

namespace A341793.P7459630727292251139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199262 n) (A394244 n)

end

end A341793.P7459630727292251139

/-! ## A341793.P7725121453411220166

`and(A157358(n+1), A341773(n))`
-/

namespace A341793.P7725121453411220166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157358 (n + 1)) (A341773 n)

end

end A341793.P7725121453411220166

/-! ## A341793.P3555518764908022812

`and(A157358(n+1), A394244(n))`
-/

namespace A341793.P3555518764908022812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157358 (n + 1)) (A394244 n)

end

end A341793.P3555518764908022812

/-!
# A341794: Number of ways to write n as an ordered sum of 3 nonzero tetrahedral numbers.

The programs for A341794, there is no canonical definition to state claims against.
-/

/-! ## A341794.P621896289341575577

`A010876(8*A341809(n))`
-/

namespace A341794.P621896289341575577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (8 * A341809 (n + 10)).toNat

end

end A341794.P621896289341575577

/-! ## A341794.P12080795729912333864

`A341809(n)%A341833(A124112(n+1))`
-/

namespace A341794.P12080795729912333864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341809 (n + 10)) (A341833 (A124112 (n + 1)).toNat)

end

end A341794.P12080795729912333864

/-! ## A341794.P17423474630589679423

`A010878(A342252(n+9))`
-/

namespace A341794.P17423474630589679423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A342252 (n + 9)).toNat

end

end A341794.P17423474630589679423

/-! ## A341794.P4584199146916180924

`A327937(A226253(n))%9`
-/

namespace A341794.P4584199146916180924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327937 (A226253 n).toNat) 9

end

end A341794.P4584199146916180924

/-! ## A341794.P11694279148085403613

`A001222(C(A010225(n), A035377(n)))`
-/

namespace A341794.P11694279148085403613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A010225 n).toNat (A035377 n).toNat)

end

end A341794.P11694279148085403613

/-!
# A341795: Number of ways to write n as an ordered sum of 4 nonzero tetrahedral numbers.

The programs for A341795, there is no canonical definition to state claims against.
-/

/-! ## A341795.P793621679937212045

`A224226(A031285(2*(n+1)))`
-/

namespace A341795.P793621679937212045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (A031285 (2 * (n + 1))).toNat

end

end A341795.P793621679937212045

/-! ## A341795.P3783207887589978452

`A321527(A031285(2*n+2))`
-/

namespace A341795.P3783207887589978452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (A031285 (2 * n + 2)).toNat

end

end A341795.P3783207887589978452

/-! ## A341795.P18126203954509328557

`A224226(Δ[A077342(n+1)²])`
-/

namespace A341795.P18126203954509328557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (f1 (n + 1) - f1 n).toNat

end

end A341795.P18126203954509328557

/-! ## A341795.P17054471454966347318

`A321527(Δ[A077342(n+1)²])`
-/

namespace A341795.P17054471454966347318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (f1 (n + 1) - f1 n).toNat

end

end A341795.P17054471454966347318

/-! ## A341795.P3797478874743490580

`A321527(Δ[A242474(n+1)²])`
-/

namespace A341795.P3797478874743490580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (f1 (n + 1) - f1 n).toNat

end

end A341795.P3797478874743490580

/-!
# A341796: Number of ways to write n as an ordered sum of 5 nonzero tetrahedral numbers.

The programs for A341796, there is no canonical definition to state claims against.
-/

/-! ## A341796.P6988967691345532258

`A035377(n)*A060439(A001316(n))`
-/

namespace A341796.P6988967691345532258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n * A060439 (A001316 n).toNat

end

end A341796.P6988967691345532258

/-! ## A341796.P17071843213972579200

`A006530(A056487(n))*A035377(n)`
-/

namespace A341796.P17071843213972579200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056487 n).toNat * A035377 n

end

end A341796.P17071843213972579200

/-! ## A341796.P8793933834786095273

`A006530(A093785(n+1))*A035377(n)`
-/

namespace A341796.P8793933834786095273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A093785 (n + 1)).toNat * A035377 n

end

end A341796.P8793933834786095273

/-! ## A341796.P11732546790941702818

`A035377(n)*A351566(A237272(n)+A230441(n))`
-/

namespace A341796.P11732546790941702818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n * A351566 (A237272 n + A230441 n).toNat

end

end A341796.P11732546790941702818

