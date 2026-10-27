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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A158500: Expansion of (1 + 2*x)*(1 + sqrt(1+4*x))/(2*sqrt(1+4*x)).

The programs for A158500, there is no canonical definition to state claims against.
-/

/-! ## A158500.P12867416498860172715

`A109970(2*(1-n)²)`
-/

namespace A158500.P12867416498860172715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109970 (2 * (1 - (n : ℤ)) ^ 2).toNat

end

end A158500.P12867416498860172715

/-! ## A158500.P1183586034030070662

`A130595(A004273(n²-n))`
-/

namespace A158500.P1183586034030070662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A004273 (n ^ 2 - n)).toNat

end

end A158500.P1183586034030070662

/-! ## A158500.P3836777653701492380

`A130595(A163985(n²-n))`
-/

namespace A158500.P3836777653701492380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A163985 (n ^ 2 - n)).toNat

end

end A158500.P3836777653701492380

/-! ## A158500.P2660313983723110007

`A130595(A050166(∑[n]+2)-n)`
-/

namespace A158500.P2660313983723110007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A050166 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - (n : ℤ)).toNat

end

end A158500.P2660313983723110007

/-! ## A158500.P7092226249424741632

`A130595(A061579((n-1)*2*n+1))`
-/

namespace A158500.P7092226249424741632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 (((n : ℤ) - 1) * (2 * n : ℤ) + 1).toNat).toNat

end

end A158500.P7092226249424741632

/-! ## A158500.P11705066238984839994

`A130595(A002939(n)%A056220(n))`
-/

namespace A158500.P11705066238984839994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (Int.tmod (A002939 n) (A056220 n)).toNat

end

end A158500.P11705066238984839994

/-! ## A158500.P3758359433096161060

`A110555(A275543(n)-1)`
-/

namespace A158500.P3758359433096161060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (A275543 n - 1).toNat

end

end A158500.P3758359433096161060

/-! ## A158500.P16722802705597330368

`A306913(A004273(n*(n-1)))`
-/

namespace A158500.P16722802705597330368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306913 (A004273 ((n : ℤ) * ((n : ℤ) - 1)).toNat).toNat

end

end A158500.P16722802705597330368

/-! ## A158500.P11696872668219198558

`A108299(A321986(4*n))`
-/

namespace A158500.P11696872668219198558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A321986 (4 * n)).toNat

end

end A158500.P11696872668219198558

/-!
# A158501: Hankel transform of A158500.

The programs for A158501, the canonical program `A158501.P748590238385233164` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158501 has offset 0).

The definition of A158501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158501.P916214645599291690

`4*(-1)^n*C(n+2, 3)+(n+1)²`
-/

namespace A158501.P916214645599291690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (-1) ^ n * (Nat.choose (n + 2) 3 : ℤ) + ((n + 1) ^ 2 : ℤ)

end

end A158501.P916214645599291690

namespace A158501

/-- `4*(-1)^n*C(n+2, 3)+(n+1)²` -/
def P916214645599291690.Spec : Prop :=
  ∀ n, P916214645599291690.a n = A158501 n

theorem P916214645599291690.correct : P916214645599291690.Spec := by
  intro n
  simp only [A158501, Nat.add_sub_cancel, A158501.P916214645599291690.a, A158501.P748590238385233164.a, A000290, A000290.P12206242496348924484.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A158501

/-! ## A158501.P17961868918548220614

`(n+1)*(2*(-1)^n*n²+4*(-1)^n*n+3*n+3)/3`
-/

namespace A158501.P17961868918548220614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 * (-1) ^ n * (n ^ 2 : ℤ) + 4 * (-1) ^ n * (n : ℤ) + (3 * n : ℤ) + 3) : ℚ) / 3

end

end A158501.P17961868918548220614

namespace A158501

/-- `(n+1)*(2*(-1)^n*n²+4*(-1)^n*n+3*n+3)/3` -/
def P17961868918548220614.Spec : Prop :=
  ∀ n, P17961868918548220614.a n = (A158501 n : ℚ)

theorem P17961868918548220614.correct : P17961868918548220614.Spec := by
  intro n
  simp only [A158501, Nat.add_sub_cancel, A158501.P17961868918548220614.a, A158501.P748590238385233164.a, A000290, A000290.P12206242496348924484.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A158501

/-! ## A158501.P748590238385233164

`4*(-1)^n*A000292(n)+A000290(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A158501

/-- `4*(-1)^n*A000292(n)+A000290(n+1)` -/
def P748590238385233164.Spec : Prop :=
  ∀ n, P748590238385233164.a n = A158501 n

theorem P748590238385233164.correct : P748590238385233164.Spec := by
  intro n
  simp only [A158501]

end A158501

/-! ## A158501.P6574537070643911452

`gcd(2*n+1, and(1, n))²-a(n-1)` with `a(0)=1`
-/

namespace A158501.P6574537070643911452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd (2 * n + 1) (Nat.land 1 n) ^ 2 : ℤ) - a (n - 1)

end

end A158501.P6574537070643911452

namespace A158501

/-- `gcd(2*n+1, and(1, n))²-a(n-1)` -/
def P6574537070643911452.Spec : Prop :=
  ∀ n, P6574537070643911452.a n = A158501 n

end A158501

/-! ## A158501.P3218428192502833796

`C(2*n+1, and(1, n+1))²-a(n-1)` with `a(0)=1`
-/

namespace A158501.P3218428192502833796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n + 1) (Nat.land 1 (n + 1)) ^ 2 : ℤ) - a (n - 1)

end

end A158501.P3218428192502833796

namespace A158501

/-- `C(2*n+1, and(1, n+1))²-a(n-1)` -/
def P3218428192502833796.Spec : Prop :=
  ∀ n, P3218428192502833796.a n = A158501 n

end A158501

/-! ## A158501.P7303543886850489126

`(A131738(n)+n)²-a(n-1)` with `a(0)=1`
-/

namespace A158501.P7303543886850489126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A131738 n + (n : ℤ)) ^ 2 - a (n - 1)

end

end A158501.P7303543886850489126

namespace A158501

/-- `(A131738(n)+n)²-a(n-1)` -/
def P7303543886850489126.Spec : Prop :=
  ∀ n, P7303543886850489126.a n = A158501 n

end A158501

/-! ## A158501.P10241622838882139853

`(A038608(n)+1+n)²-a(n-1)` with `a(0)=1`
-/

namespace A158501.P10241622838882139853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A038608 n + 1 + (n : ℤ)) ^ 2 - a (n - 1)

end

end A158501.P10241622838882139853

namespace A158501

/-- `(A038608(n)+1+n)²-a(n-1)` -/
def P10241622838882139853.Spec : Prop :=
  ∀ n, P10241622838882139853.a n = A158501 n

end A158501

/-! ## A158501.P8857509836466160517

`A266072(n+1)²-a(n-1)` with `a(0)=1`
-/

namespace A158501.P8857509836466160517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266072 (n + 1) ^ 2 - a (n - 1)

end

end A158501.P8857509836466160517

namespace A158501

/-- `A266072(n+1)²-a(n-1)` -/
def P8857509836466160517.Spec : Prop :=
  ∀ n, P8857509836466160517.a n = A158501 n

end A158501

/-!
# A158503: Triangle read by rows: numerators of coefficients of the polynomials phi_s(t) used for asymptotic elementary function expansions of parabolic cylinder functions U(a, x), V(a, x).

The programs for A158503, there is no canonical definition to state claims against.
-/

/-! ## A158503.P5641106613537476546

`A003991(A079589(n))-A033586(n)`
-/

namespace A158503.P5641106613537476546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A079589 n).toNat - A033586 n

end

end A158503.P5641106613537476546

/-!
# A158504: A158486(n)/5.

The programs for A158504, there is no canonical definition to state claims against.
-/

/-! ## A158504.P16331833756818038905

`A158486(n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158504.P16331833756818038905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158486 (n + 1) : ℚ) / 5

end

end A158504.P16331833756818038905

/-! ## A158504.P5412127643829314539

`A158511(n+1)+1+n`
-/

namespace A158504.P5412127643829314539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158511 (n + 1) + 1 + (n : ℤ)

end

end A158504.P5412127643829314539

/-! ## A158504.P11208471396521279208

`A158511(Δ[n²]-n)-xor(n, -1)`
-/

namespace A158504.P11208471396521279208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1)

end

end A158504.P11208471396521279208

/-! ## A158504.P3711102542506831644

`A002266(A158486(n+1))`
-/

namespace A158504.P3711102542506831644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A158486 (n + 1)).toNat

end

end A158504.P3711102542506831644

/-! ## A158504.P5092926182855424417

`A134119(A158486(n+1)+1)`
-/

namespace A158504.P5092926182855424417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A158486 (n + 1) + 1).toNat

end

end A158504.P5092926182855424417

/-! ## A158504.P10625747969465462049

`A059995(2*A158486(n+1))`
-/

namespace A158504.P10625747969465462049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A158486 (n + 1)).toNat

end

end A158504.P10625747969465462049

/-! ## A158504.P2400280061592341950

`A059995(A158486(n+1)+A158486(n+1)+1)`
-/

namespace A158504.P2400280061592341950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A158486 (n + 1) + (A158486 (n + 1) + 1)).toNat

end

end A158504.P2400280061592341950

/-!
# A158506: Determinants of n-times-n matrices M of the form M[i,j] = 2^(i*j).

The programs for A158506, there is no canonical definition to state claims against.
-/

/-! ## A158506.P17486189624836468084

`∏[A028368(n+1)]`
-/

namespace A158506.P17486189624836468084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158506.P17486189624836468084

/-! ## A158506.P18252847217100676578

`∏[2*4^n*A002884(n)]`
-/

namespace A158506.P18252847217100676578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) * A002884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158506.P18252847217100676578

/-! ## A158506.P4640238207082329579

`∏[2*4^n]*A203303(n+1)`
-/

namespace A158506.P4640238207082329579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A203303 (n + 1)

end

end A158506.P4640238207082329579

/-! ## A158506.P7546226013856025762

`∏[A002884(n)*A081294(n+1)]`
-/

namespace A158506.P7546226013856025762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A081294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158506.P7546226013856025762

/-! ## A158506.P9088638985193545368

`A028365(n+1)/A005329(n+1)*A203305(n+1)`
-/

namespace A158506.P9088638985193545368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028365 (n + 1) : ℚ) / (A005329 (n + 1) : ℚ) * (A203305 (n + 1) : ℚ)

end

end A158506.P9088638985193545368

/-!
# A158507: Numerator of Bernoulli(n, 2/7).

The programs for A158507, there is no canonical definition to state claims against.
-/

/-! ## A158507.P3819998081578606682

`A279119(A135058(n))-A000466(n)`
-/

namespace A158507.P3819998081578606682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A135058 n).toNat - A000466 n

end

end A158507.P3819998081578606682

/-!
# A158510: Generalized Fibonacci numbers Fib(n + 0.5) rounded to an integer.

The programs for A158510, the canonical program `A158510.P11790813226340929365` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158510 has offset 0).

The definition of A158510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158510.P11790813226340929365

`round(A074677(2*n)^(ceil(sin(n)²)/2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A158510

/-- `round(A074677(2*n)^(ceil(sin(n)²)/2))` -/
def P11790813226340929365.Spec : Prop :=
  ∀ n, P11790813226340929365.a n = A158510 n

theorem P11790813226340929365.correct : P11790813226340929365.Spec := by
  intro n
  simp only [A158510]

end A158510

/-! ## A158510.P11107297057490966959

`round(A000007(n)+sqrt(A001654(n)))`
-/

namespace A158510.P11107297057490966959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℝ) + Real.sqrt (A001654 n : ℝ))

end

end A158510.P11107297057490966959

namespace A158510

/-- `round(A000007(n)+sqrt(A001654(n)))` -/
def P11107297057490966959.Spec : Prop :=
  ∀ n, P11107297057490966959.a n = A158510 n

end A158510

/-! ## A158510.P1987316513760086404

`round(sqrt(A008647(n)+A001654(n)))`
-/

namespace A158510.P1987316513760086404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008647 n + A001654 n : ℝ))

end

end A158510.P1987316513760086404

namespace A158510

/-- `round(sqrt(A008647(n)+A001654(n)))` -/
def P1987316513760086404.Spec : Prop :=
  ∀ n, P1987316513760086404.a n = A158510 n

end A158510

/-! ## A158510.P1069808274664226007

`round(sqrt(A056594(n)+A001654(n)))`
-/

namespace A158510.P1069808274664226007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A056594 n + A001654 n : ℝ))

end

end A158510.P1069808274664226007

namespace A158510

/-- `round(sqrt(A056594(n)+A001654(n)))` -/
def P1069808274664226007.Spec : Prop :=
  ∀ n, P1069808274664226007.a n = A158510 n

end A158510

/-! ## A158510.P7916290953906376820

`round(sqrt(A266253(n)+A001654(n)))`
-/

namespace A158510.P7916290953906376820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A266253 n + A001654 n : ℝ))

end

end A158510.P7916290953906376820

namespace A158510

/-- `round(sqrt(A266253(n)+A001654(n)))` -/
def P7916290953906376820.Spec : Prop :=
  ∀ n, P7916290953906376820.a n = A158510 n

end A158510

/-! ## A158510.P5726995919210968969

`A000007(n)+round(sqrt(A074677(2*n)))`
-/

namespace A158510.P5726995919210968969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + SequenceMachineLib.roundAway (Real.sqrt (A074677 (2 * n) : ℝ))

end

end A158510.P5726995919210968969

namespace A158510

/-- `A000007(n)+round(sqrt(A074677(2*n)))` -/
def P5726995919210968969.Spec : Prop :=
  ∀ n, P5726995919210968969.a n = A158510 n

end A158510

/-! ## A158510.P1911377690340419854

`round(A049084(2*(n+1))+sqrt(A074677(2*n)))`
-/

namespace A158510.P1911377690340419854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049084 (2 * (n + 1)) : ℝ) + Real.sqrt (A074677 (2 * n) : ℝ))

end

end A158510.P1911377690340419854

namespace A158510

/-- `round(A049084(2*(n+1))+sqrt(A074677(2*n)))` -/
def P1911377690340419854.Spec : Prop :=
  ∀ n, P1911377690340419854.a n = A158510 n

end A158510

/-! ## A158510.P12754909490361995814

`round(sqrt(ϕ^(2*n+1)/5))`
-/

namespace A158510.P12754909490361995814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.goldenRatio ^ (2 * n + 1) / 5))

end

end A158510.P12754909490361995814

namespace A158510

/-- `round(sqrt(ϕ^(2*n+1)/5))` -/
def P12754909490361995814.Spec : Prop :=
  ∀ n, P12754909490361995814.a n = A158510 n

end A158510

/-!
# A158511: a(n) = A158504(n) - n.

The programs for A158511, there is no canonical definition to state claims against.
-/

/-! ## A158511.P9224521970435466503

`A158504(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158511.P9224521970435466503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158504 (n + 1) - (n + 1 : ℤ)

end

end A158511.P9224521970435466503

/-! ## A158511.P2606219502442078169

`A158486(n+1)/5-(n+1)`
-/

namespace A158511.P2606219502442078169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158486 (n + 1) : ℚ) / 5 - (n + 1 : ℚ)

end

end A158511.P2606219502442078169

/-! ## A158511.P16622746993205964514

`A001478(n+1)+A158504(n+1)`
-/

namespace A158511.P16622746993205964514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A158504 (n + 1)

end

end A158511.P16622746993205964514

/-! ## A158511.P14820033692886866773

`A023443(A158504(n+1))-n`
-/

namespace A158511.P14820033692886866773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A158504 (n + 1)).toNat - (n : ℤ)

end

end A158511.P14820033692886866773

/-! ## A158511.P16952655405903693652

`A023443(A158486(n+1)/5)-n`
-/

namespace A158511.P16952655405903693652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A158486 (n + 1) : ℚ) / 5)).toNat - (n : ℤ)

end

end A158511.P16952655405903693652

/-!
# A158513: a(n) = Hermite(n,5).

The programs for A158513, the canonical program `A158513.P1247976189037694828` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158513 has offset 0).

The definition of A158513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158513.P1247976189037694828

`∏[10-2*(n-1)/a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158513

/-- `∏[10-2*(n-1)/a(n-1)]` -/
def P1247976189037694828.Spec : Prop :=
  ∀ n, P1247976189037694828.a n = (A158513 n : ℚ)

end A158513

/-!
# A158515: Number of colors needed to paint a wheel graph on n nodes.

The programs for A158515, the canonical program `A158515.P10647747202996075475` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158515 has offset 0).

The definition of A158515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158515.P10647747202996075475

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158515

/-- `a(n-2)` -/
def P10647747202996075475.Spec : Prop :=
  ∀ n, (P10647747202996075475.a n : ℤ) = A158515 n

theorem P10647747202996075475.correct : P10647747202996075475.Spec := by
  intro n
  simp only [A158515]

end A158515

/-!
# A158517: Numbers n with property that 4 n^2 are squares arising in A158470.

The programs for A158517, there is no canonical definition to state claims against.
-/

/-! ## A158517.P13578387989818937065

`ceil(sqrt(A158529(n+1))/2)`
-/

namespace A158517.P13578387989818937065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158529 (n + 1) : ℝ) / 2⌉

end

end A158517.P13578387989818937065

/-! ## A158517.P2938971377807887995

`A014682(ceil(sqrt(A158529(n+1))))`
-/

namespace A158517.P2938971377807887995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ⌈Real.sqrt (A158529 (n + 1) : ℝ)⌉.toNat

end

end A158517.P2938971377807887995

/-! ## A158517.P11471910216546441293

`A273943(ceil(sqrt(A158529(n+1))))`
-/

namespace A158517.P11471910216546441293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ⌈Real.sqrt (A158529 (n + 1) : ℝ)⌉.toNat

end

end A158517.P11471910216546441293

/-! ## A158517.P120394340891993532

`A302043(ceil(sqrt(A158529(n+1))))`
-/

namespace A158517.P120394340891993532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 ⌈Real.sqrt (A158529 (n + 1) : ℝ)⌉.toNat

end

end A158517.P120394340891993532

/-! ## A158517.P15012822991355017830

`A014682(sqrt(A158529(n+1)+7))`
-/

namespace A158517.P15012822991355017830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway (Real.sqrt (A158529 (n + 1) + 7 : ℝ))).toNat

end

end A158517.P15012822991355017830

/-!
# A158520: Numbers n such that 2^n divided by the number of digits of 2^n is an integer.

The programs for A158520, there is no canonical definition to state claims against.
-/

/-! ## A158520.P17382609966954694206

`eq[2, A245564(floor(n/log2(10))+1)]`
-/

namespace A158520.P17382609966954694206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158520.P17382609966954694206

/-! ## A158520.P13098874105407654795

`eq[1, A071766(A034887(n))]`
-/

namespace A158520.P13098874105407654795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A034887 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158520.P13098874105407654795

/-! ## A158520.P4565168323827534576

`eq[1, A336158(2*A034887(n))]`
-/

namespace A158520.P4565168323827534576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (2 * A034887 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158520.P4565168323827534576

/-! ## A158520.P10214840885633882561

`eq[A000010(2*A034887(n)), A034887(n)]`
-/

namespace A158520.P10214840885633882561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A034887 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158520.P10214840885633882561

/-! ## A158520.P17232768635110410279

`eq[1, A336158(A034887(n)²)]`
-/

namespace A158520.P17232768635110410279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A034887 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158520.P17232768635110410279

/-!
# A158521: Primes which yield primes when "13" is prefixed or appended.

The programs for A158521, there is no canonical definition to state claims against.
-/

/-! ## A158521.P12704643041465213616

`p?[A158232(n+1)]`
-/

namespace A158521.P12704643041465213616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158521.P12704643041465213616

/-! ## A158521.P3434908385969027191

`p?[record[A158232(A324347(n))]]`
-/

namespace A158521.P3434908385969027191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158521.P3434908385969027191

/-! ## A158521.P4134802853064667876

`p?[record[A158232(A293428(n))]]`
-/

namespace A158521.P4134802853064667876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158521.P4134802853064667876

/-! ## A158521.P10057303950485747287

`∩[A002476(n+1), A158232(n+1)]`
-/

namespace A158521.P10057303950485747287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P10057303950485747287

/-! ## A158521.P8439977701933665319

`∩[A007645(n+1), A158232(n+1)]`
-/

namespace A158521.P8439977701933665319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P8439977701933665319

/-! ## A158521.P2081956313594591833

`∩[A045331(n+1), A158232(n+1)]`
-/

namespace A158521.P2081956313594591833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P2081956313594591833

/-! ## A158521.P15053939622686055031

`∩[A045375(n+1), A158232(n+1)]`
-/

namespace A158521.P15053939622686055031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P15053939622686055031

/-! ## A158521.P13274992808739303304

`∩[A158232(n+1), A279815(n+1)]`
-/

namespace A158521.P13274992808739303304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P13274992808739303304

/-! ## A158521.P12396152831235266482

`∩[A158232(n+1), A164318(n+1)]`
-/

namespace A158521.P12396152831235266482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P12396152831235266482

/-! ## A158521.P356995616625888197

`∩[A040116(n+1), A158232(n+1)]`
-/

namespace A158521.P356995616625888197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P356995616625888197

/-! ## A158521.P4224191038735457634

`∩[A158232(n+1), A325143(n+1)]`
-/

namespace A158521.P4224191038735457634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P4224191038735457634

/-! ## A158521.P9143674552289077390

`∩[A059500(n+1), A158232(n+1)]`
-/

namespace A158521.P9143674552289077390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P9143674552289077390

/-! ## A158521.P10526448189653197423

`∩[A158232(n+1), A042990(n)]`
-/

namespace A158521.P10526448189653197423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P10526448189653197423

/-! ## A158521.P4848733944992082547

`∩[A045311(n+1), A158232(n+1)]`
-/

namespace A158521.P4848733944992082547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P4848733944992082547

/-! ## A158521.P17850206217954970854

`∩[A140557(n+1), A158232(n+1)]`
-/

namespace A158521.P17850206217954970854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P17850206217954970854

/-! ## A158521.P10825706862707156109

`∩[A058501(n+1), A158232(n+1)]`
-/

namespace A158521.P10825706862707156109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P10825706862707156109

/-! ## A158521.P637927492442797940

`∩[A140562(n+1), A158232(n+1)]`
-/

namespace A158521.P637927492442797940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P637927492442797940

/-! ## A158521.P17685693685985194428

`∩[A158232(n+1), A167464(n+1)]`
-/

namespace A158521.P17685693685985194428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P17685693685985194428

/-! ## A158521.P2284479792877657174

`∩[A140563(n+1), A158232(n+1)]`
-/

namespace A158521.P2284479792877657174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P2284479792877657174

/-! ## A158521.P16886693820682617950

`∩[A138645(n+1), A158232(n+1)]`
-/

namespace A158521.P16886693820682617950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158521.P16886693820682617950

/-!
# A158522: Dirichlet inverse of number of unitary divisors of n (A034444).

The programs for A158522, the canonical program `A158522.P8664483793613272313` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158522 has offset 1).

The definition of A158522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158522.P8725916301905850601

`A008836(n+1)*2^A001221(n+1)`
-/

namespace A158522.P8725916301905850601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) : ℚ) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A158522.P8725916301905850601

namespace A158522

/-- `A008836(n+1)*2^A001221(n+1)` -/
def P8725916301905850601.Spec : Prop :=
  ∀ n, P8725916301905850601.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P8664483793613272313

`(-1)^A001222(n+1)*A034444(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A158522

/-- `(-1)^A001222(n+1)*A034444(n+1)` -/
def P8664483793613272313.Spec : Prop :=
  ∀ n, P8664483793613272313.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P13696866977124665826

`(-1)^A001222(n+1)*2^A001221(n+1)`
-/

namespace A158522.P13696866977124665826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A158522.P13696866977124665826

namespace A158522

/-- `(-1)^A001222(n+1)*2^A001221(n+1)` -/
def P13696866977124665826.Spec : Prop :=
  ∀ n, P13696866977124665826.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P15122448873762428615

`∏{e}[n+1, 2*(-1)^#]`
-/

namespace A158522.P15122448873762428615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p

end

end A158522.P15122448873762428615

namespace A158522

/-- `∏{e}[n+1, 2*(-1)^#]` -/
def P15122448873762428615.Spec : Prop :=
  ∀ n, P15122448873762428615.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P9632939456640451031

`∑{d}[n+1, A326415(#)]`
-/

namespace A158522.P9632939456640451031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d

end

end A158522.P9632939456640451031

namespace A158522

/-- `∑{d}[n+1, A326415(#)]` -/
def P9632939456640451031.Spec : Prop :=
  ∀ n, P9632939456640451031.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P18264362820931490932

`A298473(n+1)/(n+1)`
-/

namespace A158522.P18264362820931490932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298473 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A158522.P18264362820931490932

namespace A158522

/-- `A298473(n+1)/(n+1)` -/
def P18264362820931490932.Spec : Prop :=
  ∀ n, P18264362820931490932.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P4498233781906164985

`A008836(n+1)*A034444(n+1)`
-/

namespace A158522.P4498233781906164985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A034444 (n + 1)

end

end A158522.P4498233781906164985

namespace A158522

/-- `A008836(n+1)*A034444(n+1)` -/
def P4498233781906164985.Spec : Prop :=
  ∀ n, P4498233781906164985.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P5792599577285504052

`A056671(n+1)*A390490(n+1)`
-/

namespace A158522.P5792599577285504052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A390490 (n + 1)

end

end A158522.P5792599577285504052

namespace A158522

/-- `A056671(n+1)*A390490(n+1)` -/
def P5792599577285504052.Spec : Prop :=
  ∀ n, P5792599577285504052.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P9902653948665027440

`A307428(n+1)*A365498(n+1)`
-/

namespace A158522.P9902653948665027440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (n + 1) * A365498 (n + 1)

end

end A158522.P9902653948665027440

namespace A158522

/-- `A307428(n+1)*A365498(n+1)` -/
def P9902653948665027440.Spec : Prop :=
  ∀ n, P9902653948665027440.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P3094095774505295583

`A061142(n+1)/A162512(n+1)`
-/

namespace A158522.P3094095774505295583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A162512 (n + 1) : ℚ)

end

end A158522.P3094095774505295583

namespace A158522

/-- `A061142(n+1)/A162512(n+1)` -/
def P3094095774505295583.Spec : Prop :=
  ∀ n, P3094095774505295583.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P15595315111463780115

`A165872(n+1)/A162510(n+1)`
-/

namespace A158522.P15595315111463780115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165872 (n + 1) : ℚ) / (A162510 (n + 1) : ℚ)

end

end A158522.P15595315111463780115

namespace A158522

/-- `A165872(n+1)/A162510(n+1)` -/
def P15595315111463780115.Spec : Prop :=
  ∀ n, P15595315111463780115.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P1473214208807463529

`A322327(n+1)/A303915(n+1)`
-/

namespace A158522.P1473214208807463529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (n + 1) : ℚ) / (A303915 (n + 1) : ℚ)

end

end A158522.P1473214208807463529

namespace A158522

/-- `A322327(n+1)/A303915(n+1)` -/
def P1473214208807463529.Spec : Prop :=
  ∀ n, P1473214208807463529.a n = (A158522 (n + 1) : ℚ)

end A158522

/-! ## A158522.P16201519449357979928

`∑{d}[n+1, A007427(#)*A010052((n+1)/#)]`
-/

namespace A158522.P16201519449357979928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P16201519449357979928

namespace A158522

/-- `∑{d}[n+1, A007427(#)*A010052((n+1)/#)]` -/
def P16201519449357979928.Spec : Prop :=
  ∀ n, P16201519449357979928.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P17421028015979981458

`∑{d}[n+1, A008836((n+1)/#)*A008683(#)]`
-/

namespace A158522.P17421028015979981458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A008683 d

end

end A158522.P17421028015979981458

namespace A158522

/-- `∑{d}[n+1, A008836((n+1)/#)*A008683(#)]` -/
def P17421028015979981458.Spec : Prop :=
  ∀ n, P17421028015979981458.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P12061883112196940551

`∑{d}[n+1, A007428(#)*A046951((n+1)/#)]`
-/

namespace A158522.P12061883112196940551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P12061883112196940551

namespace A158522

/-- `∑{d}[n+1, A007428(#)*A046951((n+1)/#)]` -/
def P12061883112196940551.Spec : Prop :=
  ∀ n, P12061883112196940551.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P16345513546318943652

`∑{d}[n+1, A055615(#)*A074722((n+1)/#)]`
-/

namespace A158522.P16345513546318943652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P16345513546318943652

namespace A158522

/-- `∑{d}[n+1, A055615(#)*A074722((n+1)/#)]` -/
def P16345513546318943652.Spec : Prop :=
  ∀ n, P16345513546318943652.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P5633516371635424692

`∑{d}[n+1, A046692(#)*A206369((n+1)/#)]`
-/

namespace A158522.P5633516371635424692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P5633516371635424692

namespace A158522

/-- `∑{d}[n+1, A046692(#)*A206369((n+1)/#)]` -/
def P5633516371635424692.Spec : Prop :=
  ∀ n, P5633516371635424692.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P17803077467539695247

`∑{d}[n+1, A000010(#)*A323363((n+1)/#)]`
-/

namespace A158522.P17803077467539695247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P17803077467539695247

namespace A158522

/-- `∑{d}[n+1, A000010(#)*A323363((n+1)/#)]` -/
def P17803077467539695247.Spec : Prop :=
  ∀ n, P17803077467539695247.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P16802548783769674494

`∑{d}[n+1, A007434(#)*A328639((n+1)/#)]`
-/

namespace A158522.P16802548783769674494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P16802548783769674494

namespace A158522

/-- `∑{d}[n+1, A007434(#)*A328639((n+1)/#)]` -/
def P16802548783769674494.Spec : Prop :=
  ∀ n, P16802548783769674494.a n = A158522 (n + 1)

end A158522

/-! ## A158522.P15564564554615993808

`∑{d}[n+1, A124315(#)*A247343((n+1)/#)]`
-/

namespace A158522.P15564564554615993808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158522.P15564564554615993808

namespace A158522

/-- `∑{d}[n+1, A124315(#)*A247343((n+1)/#)]` -/
def P15564564554615993808.Spec : Prop :=
  ∀ n, P15564564554615993808.a n = A158522 (n + 1)

end A158522

/-!
# A158523: Moebius transform of negated primes in factorization of n.

The programs for A158523, the canonical program `A158523.P14887875491729113623` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158523 has offset 1).

The definition of A158523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158523.P14887875491729113623

`(-1)^A001222(n+1)*A001615(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A158523

/-- `(-1)^A001222(n+1)*A001615(n+1)` -/
def P14887875491729113623.Spec : Prop :=
  ∀ n, P14887875491729113623.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P15769456476949669555

`(-1)^∑{e}[n+1, #]*∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A158523.P15769456476949669555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) * (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ))

end

end A158523.P15769456476949669555

namespace A158523

/-- `(-1)^∑{e}[n+1, #]*∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P15769456476949669555.Spec : Prop :=
  ∀ n, P15769456476949669555.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P2215298567020211044

`∑{d}[∏{p}[n+1, #], (n+1)/#]/(-1)^∑{e}[n+1, #]`
-/

namespace A158523.P2215298567020211044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A158523.P2215298567020211044

namespace A158523

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]/(-1)^∑{e}[n+1, #]` -/
def P2215298567020211044.Spec : Prop :=
  ∀ n, P2215298567020211044.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P4706678742762174224

`∑{d}[∏{p}[n+1, #], (n+1)/#]*∏{e}[n+1, (-1)^#]`
-/

namespace A158523.P4706678742762174224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * ((∏ p ∈ Nat.primeFactors (f3 n), (-1) ^ Nat.factorization (f3 n) p : ℤ) : ℚ)

end

end A158523.P4706678742762174224

namespace A158523

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]*∏{e}[n+1, (-1)^#]` -/
def P4706678742762174224.Spec : Prop :=
  ∀ n, P4706678742762174224.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P13526311814382121706

`∑{d}[∏{p}[n+1, #], (n+1)/#]/∏{e}[n+1, (-1)^#]`
-/

namespace A158523.P13526311814382121706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) / ((∏ p ∈ Nat.primeFactors (f3 n), (-1) ^ Nat.factorization (f3 n) p : ℤ) : ℚ)

end

end A158523.P13526311814382121706

namespace A158523

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]/∏{e}[n+1, (-1)^#]` -/
def P13526311814382121706.Spec : Prop :=
  ∀ n, P13526311814382121706.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P14415094581597852147

`∑{d}[∏{p}[n+1, #], (n+1)/#]*∏{p}[n+1, (-1)^val(n+1, #)]`
-/

namespace A158523.P14415094581597852147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * ((∏ p ∈ Nat.primeFactors (f3 n), (-1) ^ SequenceMachineLib.valuation (n + 1) p : ℤ) : ℚ)

end

end A158523.P14415094581597852147

namespace A158523

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]*∏{p}[n+1, (-1)^val(n+1, #)]` -/
def P14415094581597852147.Spec : Prop :=
  ∀ n, P14415094581597852147.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P11904095741066941194

`(-1)^∑{e}[n+1, #]*∏{p}[n+1, #+1]*(n+1)/∏{p}[n+1, #]`
-/

namespace A158523.P11904095741066941194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ) : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ))

end

end A158523.P11904095741066941194

namespace A158523

/-- `(-1)^∑{e}[n+1, #]*∏{p}[n+1, #+1]*(n+1)/∏{p}[n+1, #]` -/
def P11904095741066941194.Spec : Prop :=
  ∀ n, P11904095741066941194.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P2049996950277532146

`∑{d}[∏{p}[n+1, #], (n+1)/#]*A008836(n+1)`
-/

namespace A158523.P2049996950277532146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (A008836 (n + 1) : ℚ)

end

end A158523.P2049996950277532146

namespace A158523

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]*A008836(n+1)` -/
def P2049996950277532146.Spec : Prop :=
  ∀ n, P2049996950277532146.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P14262543053863382576

`A001615(n+1)*A008836(n+1)`
-/

namespace A158523.P14262543053863382576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A008836 (n + 1)

end

end A158523.P14262543053863382576

namespace A158523

/-- `A001615(n+1)*A008836(n+1)` -/
def P14262543053863382576.Spec : Prop :=
  ∀ n, P14262543053863382576.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P15611904235905201280

`A003557(n+1)*A323363(n+1)`
-/

namespace A158523.P15611904235905201280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A323363 (n + 1)

end

end A158523.P15611904235905201280

namespace A158523

/-- `A003557(n+1)*A323363(n+1)` -/
def P15611904235905201280.Spec : Prop :=
  ∀ n, P15611904235905201280.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P5728796408746081274

`A000082(n+1)/A061019(n+1)`
-/

namespace A158523.P5728796408746081274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A158523.P5728796408746081274

namespace A158523

/-- `A000082(n+1)/A061019(n+1)` -/
def P5728796408746081274.Spec : Prop :=
  ∀ n, P5728796408746081274.a n = (A158523 (n + 1) : ℚ)

end A158523

/-! ## A158523.P18328445046997728967

`∑{d}[n+1, A007427(#)*A061020((n+1)/#)]`
-/

namespace A158523.P18328445046997728967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P18328445046997728967

namespace A158523

/-- `∑{d}[n+1, A007427(#)*A061020((n+1)/#)]` -/
def P18328445046997728967.Spec : Prop :=
  ∀ n, P18328445046997728967.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P15549244031168452990

`∑{d}[n+1, A008683(#)*A061019((n+1)/#)]`
-/

namespace A158523.P15549244031168452990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P15549244031168452990

namespace A158523

/-- `∑{d}[n+1, A008683(#)*A061019((n+1)/#)]` -/
def P15549244031168452990.Spec : Prop :=
  ∀ n, P15549244031168452990.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P10742413473392372030

`∑{d}[n+1, A000010(#)*A298473((n+1)/#)]`
-/

namespace A158523.P10742413473392372030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P10742413473392372030

namespace A158523

/-- `∑{d}[n+1, A000010(#)*A298473((n+1)/#)]` -/
def P10742413473392372030.Spec : Prop :=
  ∀ n, P10742413473392372030.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P15898204693667970400

`∑{d}[n+1, A055615(#)*A358272((n+1)/#)]`
-/

namespace A158523.P15898204693667970400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P15898204693667970400

namespace A158523

/-- `∑{d}[n+1, A055615(#)*A358272((n+1)/#)]` -/
def P15898204693667970400.Spec : Prop :=
  ∀ n, P15898204693667970400.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P15758645624831579680

`∑{d}[n+1, A118209(#)*A327274((n+1)/#)]`
-/

namespace A158523.P15758645624831579680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118209 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P15758645624831579680

namespace A158523

/-- `∑{d}[n+1, A118209(#)*A327274((n+1)/#)]` -/
def P15758645624831579680.Spec : Prop :=
  ∀ n, P15758645624831579680.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P11068415154687033474

`∑{d}[n+1, A328254(#)*A351600((n+1)/#)]`
-/

namespace A158523.P11068415154687033474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328254 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P11068415154687033474

namespace A158523

/-- `∑{d}[n+1, A328254(#)*A351600((n+1)/#)]` -/
def P11068415154687033474.Spec : Prop :=
  ∀ n, P11068415154687033474.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P757633564739419237

`∑{d}[n+1, A346234(#)*A347237((n+1)/#)]`
-/

namespace A158523.P757633564739419237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346234 d * A347237 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P757633564739419237

namespace A158523

/-- `∑{d}[n+1, A346234(#)*A347237((n+1)/#)]` -/
def P757633564739419237.Spec : Prop :=
  ∀ n, P757633564739419237.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P11489898884401677857

`∑{d}[n+1, A347236(#)*A378221((n+1)/#)]`
-/

namespace A158523.P11489898884401677857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347236 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A158523.P11489898884401677857

namespace A158523

/-- `∑{d}[n+1, A347236(#)*A378221((n+1)/#)]` -/
def P11489898884401677857.Spec : Prop :=
  ∀ n, P11489898884401677857.a n = A158523 (n + 1)

end A158523

/-! ## A158523.P6585082678040454159

`A378434(n+1)+A378434(n+1)-A178450(n+1)`
-/

namespace A158523.P6585082678040454159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378434 (n + 1) + (A378434 (n + 1) - A178450 (n + 1))

end

end A158523.P6585082678040454159

namespace A158523

/-- `A378434(n+1)+A378434(n+1)-A178450(n+1)` -/
def P6585082678040454159.Spec : Prop :=
  ∀ n, P6585082678040454159.a n = A158523 (n + 1)

end A158523

/-!
# A158525: Number of connected spanning subgraphs and number of forests of the wheel graph W_n.

The programs for A158525, the canonical program `A158525.P8352468504798026345` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158525 has offset 4).

The definition of A158525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158525.P8352468504798026345

`2*A035344(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A158525

/-- `2*A035344(n+2)` -/
def P8352468504798026345.Spec : Prop :=
  ∀ n, P8352468504798026345.a n = A158525 (n + 4)

theorem P8352468504798026345.correct : P8352468504798026345.Spec := by
  intro n
  simp only [A158525, Nat.add_sub_cancel]

end A158525

/-! ## A158525.P6988426717557900417

`A056236(n+3)-2`
-/

namespace A158525.P6988426717557900417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 (n + 3) - 2

end

end A158525.P6988426717557900417

namespace A158525

/-- `A056236(n+3)-2` -/
def P6988426717557900417.Spec : Prop :=
  ∀ n, P6988426717557900417.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P16678204910356152511

`8*A010914(n)-2`
-/

namespace A158525.P16678204910356152511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A010914 n - 2

end

end A158525.P16678204910356152511

namespace A158525

/-- `8*A010914(n)-2` -/
def P16678204910356152511.Spec : Prop :=
  ∀ n, P16678204910356152511.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P17055197084604571224

`Δ[8*A020727(n)]-2`
-/

namespace A158525.P17055197084604571224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A020727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A158525.P17055197084604571224

namespace A158525

/-- `Δ[8*A020727(n)]-2` -/
def P17055197084604571224.Spec : Prop :=
  ∀ n, P17055197084604571224.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P13710288628802243824

`2*(A113859(n+1)-2)`
-/

namespace A158525.P13710288628802243824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113859 (n + 1) - 2)

end

end A158525.P13710288628802243824

namespace A158525

/-- `2*(A113859(n+1)-2)` -/
def P13710288628802243824.Spec : Prop :=
  ∀ n, P13710288628802243824.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P13935630915883171745

`A129639(2*(n+1))-2`
-/

namespace A158525.P13935630915883171745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129639 (2 * (n + 1) + 12) - 2

end

end A158525.P13935630915883171745

namespace A158525

/-- `A129639(2*(n+1))-2` -/
def P13935630915883171745.Spec : Prop :=
  ∀ n, P13935630915883171745.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P9504317017043316901

`2*(A006012(n+3)-1)`
-/

namespace A158525.P9504317017043316901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006012 (n + 3) - 1)

end

end A158525.P9504317017043316901

namespace A158525

/-- `2*(A006012(n+3)-1)` -/
def P9504317017043316901.Spec : Prop :=
  ∀ n, P9504317017043316901.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P18305047703236624049

`A030435(2*(n+3))-2`
-/

namespace A158525.P18305047703236624049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 * (n + 3)) - 2

end

end A158525.P18305047703236624049

namespace A158525

/-- `A030435(2*(n+3))-2` -/
def P18305047703236624049.Spec : Prop :=
  ∀ n, P18305047703236624049.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P17991509813054786364

`2*(2*A048580(n+1)-1)`
-/

namespace A158525.P17991509813054786364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A048580 (n + 1) - 1)

end

end A158525.P17991509813054786364

namespace A158525

/-- `2*(2*A048580(n+1)-1)` -/
def P17991509813054786364.Spec : Prop :=
  ∀ n, P17991509813054786364.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P10955120420050441133

`A007070(n+3)-A087161(n+4)`
-/

namespace A158525.P10955120420050441133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 3) - A087161 (n + 4)

end

end A158525.P10955120420050441133

namespace A158525

/-- `A007070(n+3)-A087161(n+4)` -/
def P10955120420050441133.Spec : Prop :=
  ∀ n, P10955120420050441133.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P7902740386540846026

`A265185(n+3)/2-2`
-/

namespace A158525.P7902740386540846026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265185 (n + 3) : ℚ) / 2 - 2

end

end A158525.P7902740386540846026

namespace A158525

/-- `A265185(n+3)/2-2` -/
def P7902740386540846026.Spec : Prop :=
  ∀ n, P7902740386540846026.a n = (A158525 (n + 4) : ℚ)

end A158525

/-! ## A158525.P4717184482028888528

`Δ[Δ[A265185(n+1)]]-2`
-/

namespace A158525.P4717184482028888528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A158525.P4717184482028888528

namespace A158525

/-- `Δ[Δ[A265185(n+1)]]-2` -/
def P4717184482028888528.Spec : Prop :=
  ∀ n, P4717184482028888528.a n = A158525 (n + 4)

end A158525

/-! ## A158525.P8190889466736806781

`Δ[A087161(n+5)]-A087161(n+5)`
-/

namespace A158525.P8190889466736806781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087161 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A087161 (n + 5)

end

end A158525.P8190889466736806781

namespace A158525

/-- `Δ[A087161(n+5)]-A087161(n+5)` -/
def P8190889466736806781.Spec : Prop :=
  ∀ n, P8190889466736806781.a n = A158525 (n + 4)

end A158525

/-!
# A158526: n and (1 + 2*n + 2*n^2) are primes.

The programs for A158526, the canonical program `A158526.P13730426443095740123` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158526 has offset 1).

The definition of A158526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 817 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158526.P13730426443095740123

`p?[A027861(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A158526

/-- `p?[A027861(n+1)]` -/
def P13730426443095740123.Spec : Prop :=
  ∀ n, P13730426443095740123.a n = A158526 (n + 1)

theorem P13730426443095740123.correct : P13730426443095740123.Spec := by
  intro n
  simp only [A158526, Nat.add_sub_cancel]

end A158526

/-! ## A158526.P14285986798959192324

`record[A006530(A027861(n+2))]`
-/

namespace A158526.P14285986798959192324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027861 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158526.P14285986798959192324

namespace A158526

/-- `record[A006530(A027861(n+2))]` -/
def P14285986798959192324.Spec : Prop :=
  ∀ n, P14285986798959192324.a n = A158526 (n + 1)

end A158526

/-! ## A158526.P10789003432307659313

`record[A020639(A027861(n+3))]`
-/

namespace A158526.P10789003432307659313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027861 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158526.P10789003432307659313

namespace A158526

/-- `record[A020639(A027861(n+3))]` -/
def P10789003432307659313.Spec : Prop :=
  ∀ n, P10789003432307659313.a n = A158526 (n + 1)

end A158526

/-! ## A158526.P5017536662012383736

`filter[A027861(n+1), A010051(#)]`
-/

namespace A158526.P5017536662012383736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158526.P5017536662012383736

namespace A158526

/-- `filter[A027861(n+1), A010051(#)]` -/
def P5017536662012383736.Spec : Prop :=
  ∀ n, P5017536662012383736.a n = A158526 (n + 1)

end A158526

/-! ## A158526.P6401039710571468402

`∩[A000040(n+1), A027861(n+1)]`
-/

namespace A158526.P6401039710571468402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P6401039710571468402

namespace A158526

/-- `∩[A000040(n+1), A027861(n+1)]` -/
def P6401039710571468402.Spec : Prop :=
  ∀ n, (P6401039710571468402.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P145554185172961754

`∩[A027861(n+1), A040159(n+1)]`
-/

namespace A158526.P145554185172961754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P145554185172961754

namespace A158526

/-- `∩[A027861(n+1), A040159(n+1)]` -/
def P145554185172961754.Spec : Prop :=
  ∀ n, (P145554185172961754.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P5318678164709394975

`∩[A027861(n+1), A040161(n+1)]`
-/

namespace A158526.P5318678164709394975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P5318678164709394975

namespace A158526

/-- `∩[A027861(n+1), A040161(n+1)]` -/
def P5318678164709394975.Spec : Prop :=
  ∀ n, (P5318678164709394975.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P2945254472815431052

`∩[A027861(n+1), A040165(n+1)]`
-/

namespace A158526.P2945254472815431052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P2945254472815431052

namespace A158526

/-- `∩[A027861(n+1), A040165(n+1)]` -/
def P2945254472815431052.Spec : Prop :=
  ∀ n, (P2945254472815431052.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P1463322705746157956

`∩[A027861(n+1), A040169(n+1)]`
-/

namespace A158526.P1463322705746157956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P1463322705746157956

namespace A158526

/-- `∩[A027861(n+1), A040169(n+1)]` -/
def P1463322705746157956.Spec : Prop :=
  ∀ n, (P1463322705746157956.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P859684839563857242

`∩[A027861(n+1), A040171(n+1)]`
-/

namespace A158526.P859684839563857242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P859684839563857242

namespace A158526

/-- `∩[A027861(n+1), A040171(n+1)]` -/
def P859684839563857242.Spec : Prop :=
  ∀ n, (P859684839563857242.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P491617263500653197

`∩[A027861(n+1), A040177(n+1)]`
-/

namespace A158526.P491617263500653197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P491617263500653197

namespace A158526

/-- `∩[A027861(n+1), A040177(n+1)]` -/
def P491617263500653197.Spec : Prop :=
  ∀ n, (P491617263500653197.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P18025351073861097369

`∩[A027861(n+1), A040179(n+1)]`
-/

namespace A158526.P18025351073861097369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P18025351073861097369

namespace A158526

/-- `∩[A027861(n+1), A040179(n+1)]` -/
def P18025351073861097369.Spec : Prop :=
  ∀ n, (P18025351073861097369.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P16433977429679620943

`∩[A027861(n+1), A040184(n+1)]`
-/

namespace A158526.P16433977429679620943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P16433977429679620943

namespace A158526

/-- `∩[A027861(n+1), A040184(n+1)]` -/
def P16433977429679620943.Spec : Prop :=
  ∀ n, (P16433977429679620943.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P400877913313861299

`∩[A027861(n+1), A040970(n+1)]`
-/

namespace A158526.P400877913313861299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P400877913313861299

namespace A158526

/-- `∩[A027861(n+1), A040970(n+1)]` -/
def P400877913313861299.Spec : Prop :=
  ∀ n, (P400877913313861299.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P17200364825755736004

`∩[A027861(n+1), A040972(n+1)]`
-/

namespace A158526.P17200364825755736004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P17200364825755736004

namespace A158526

/-- `∩[A027861(n+1), A040972(n+1)]` -/
def P17200364825755736004.Spec : Prop :=
  ∀ n, (P17200364825755736004.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P7876318326917412987

`∩[A027861(n+1), A040974(n+1)]`
-/

namespace A158526.P7876318326917412987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P7876318326917412987

namespace A158526

/-- `∩[A027861(n+1), A040974(n+1)]` -/
def P7876318326917412987.Spec : Prop :=
  ∀ n, (P7876318326917412987.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P6093383286991574718

`∩[A027861(n+1), A040978(n+1)]`
-/

namespace A158526.P6093383286991574718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P6093383286991574718

namespace A158526

/-- `∩[A027861(n+1), A040978(n+1)]` -/
def P6093383286991574718.Spec : Prop :=
  ∀ n, (P6093383286991574718.a n : ℤ) = A158526 (n + 1)

end A158526

/-! ## A158526.P1163052899081927722

`∩[A027861(n+1), A040980(n+1)]`
-/

namespace A158526.P1163052899081927722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158526.P1163052899081927722

namespace A158526

/-- `∩[A027861(n+1), A040980(n+1)]` -/
def P1163052899081927722.Spec : Prop :=
  ∀ n, (P1163052899081927722.a n : ℤ) = A158526 (n + 1)

end A158526

/-!
# A158528: Sum of primes between consecutive positive cubes.

The programs for A158528, the canonical program `A158528.P17573556764949661852` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158528 has offset 1).

The definition of A158528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158528.P17573556764949661852

`Δ[A007504(∑[A060199(n)])]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158528

/-- `Δ[A007504(∑[A060199(n)])]` -/
def P17573556764949661852.Spec : Prop :=
  ∀ n, P17573556764949661852.a n = A158528 (n + 1)

theorem P17573556764949661852.correct : P17573556764949661852.Spec := by
  intro n
  simp only [A158528, Nat.add_sub_cancel]

end A158528

/-! ## A158528.P8279769551752855866

`Δ[A007504(A038098(n+1))]`
-/

namespace A158528.P8279769551752855866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P8279769551752855866

namespace A158528

/-- `Δ[A007504(A038098(n+1))]` -/
def P8279769551752855866.Spec : Prop :=
  ∀ n, P8279769551752855866.a n = A158528 (n + 1)

end A158528

/-! ## A158528.P14813640141470175875

`Δ[A007504(A000720((n+1)^3))]`
-/

namespace A158528.P14813640141470175875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 ((n + 1) ^ 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P14813640141470175875

namespace A158528

/-- `Δ[A007504(A000720((n+1)^3))]` -/
def P14813640141470175875.Spec : Prop :=
  ∀ n, P14813640141470175875.a n = A158528 (n + 1)

end A158528

/-! ## A158528.P2072712105761863750

`Δ[A034387(Δ[∑[n]²])]`
-/

namespace A158528.P2072712105761863750
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P2072712105761863750

namespace A158528

/-- `Δ[A034387(Δ[∑[n]²])]` -/
def P2072712105761863750.Spec : Prop :=
  ∀ n, P2072712105761863750.a n = A158528 (n + 1)

end A158528

/-! ## A158528.P5423540257628501484

`Δ[A158662((n+1)^3)]`
-/

namespace A158528.P5423540257628501484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 ((n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P5423540257628501484

namespace A158528

/-- `Δ[A158662((n+1)^3)]` -/
def P5423540257628501484.Spec : Prop :=
  ∀ n, P5423540257628501484.a n = A158528 (n + 1)

end A158528

/-!
# A158529: List of primes p with following properties: p = prime(m-1) for some m, p+7 is a square and is equal to prime(m+1)-1.

The programs for A158529, there is no canonical definition to state claims against.
-/

/-! ## A158529.P3855871355500346874

`A134582(A158517(n+1))-3`
-/

namespace A158529.P3855871355500346874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134582 (A158517 (n + 1)).toNat - 3

end

end A158529.P3855871355500346874

/-! ## A158529.P7658431192277115716

`∩[A046134(n+1), n²-7]`
-/

namespace A158529.P7658431192277115716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158529.P7658431192277115716

/-!
# A158535: a(n) = Hermite(n,11).

The programs for A158535, the canonical program `A158535.P16363659337685917916` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158535 has offset 0).

The definition of A158535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158535.P16363659337685917916

`22*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158535

/-- `22*a(n-1)-2*(n-1)*a(n-2)` -/
def P16363659337685917916.Spec : Prop :=
  ∀ n, P16363659337685917916.a n = A158535 n

theorem P16363659337685917916.correct : P16363659337685917916.Spec := by
  intro n
  simp only [A158535]

end A158535

/-!
# A158536: a(n) = 121*n^2 + 11.

The programs for A158536, the canonical program `A158536.P18049657743555289657` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158536 has offset 0).

The definition of A158536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*n²+11` (program `A158536.P18049657743555289657`, by `A158536.P18049657743555289657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158536.P18049657743555289657

`121*n²+11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158536

/-- `121*n²+11` -/
def P18049657743555289657.Spec : Prop :=
  ∀ n, (P18049657743555289657.a n : ℤ) = A158536 n

theorem P18049657743555289657.correct : P18049657743555289657.Spec := by
  intro n
  simp only [A158536]

end A158536

/-! ## A158536.P1137503625984552462

`lcm(11, A017390(n)+11)`
-/

namespace A158536.P1137503625984552462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (A017390 n + 11)

end

end A158536.P1137503625984552462

namespace A158536

/-- `lcm(11, A017390(n)+11)` -/
def P1137503625984552462.Spec : Prop :=
  ∀ n, (P1137503625984552462.a n : ℤ) = A158536 n

end A158536

/-! ## A158536.P2538922122369905839

`11*ceil(A158537(n)/2)`
-/

namespace A158536.P2538922122369905839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌈(A158537 n : ℚ) / 2⌉

end

end A158536.P2538922122369905839

namespace A158536

/-- `11*ceil(A158537(n)/2)` -/
def P2538922122369905839.Spec : Prop :=
  ∀ n, P2538922122369905839.a n = A158536 n

end A158536

/-! ## A158536.P14369171248623844699

`11*(11*A000290(n)+1)`
-/

namespace A158536.P14369171248623844699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (11 * A000290 n + 1)

end

end A158536.P14369171248623844699

namespace A158536

/-- `11*(11*A000290(n)+1)` -/
def P14369171248623844699.Spec : Prop :=
  ∀ n, P14369171248623844699.a n = A158536 n

theorem P14369171248623844699.correct : P14369171248623844699.Spec := by
  intro n
  simp only [A158536, Nat.add_sub_cancel, A158536.P14369171248623844699.a, A158536.P18049657743555289657.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158536

/-! ## A158536.P13004084481879868343

`A189836(11*n)`
-/

namespace A158536.P13004084481879868343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 (11 * n)

end

end A158536.P13004084481879868343

namespace A158536

/-- `A189836(11*n)` -/
def P13004084481879868343.Spec : Prop :=
  ∀ n, P13004084481879868343.a n = A158536 n

theorem P13004084481879868343.correct : P13004084481879868343.Spec := by
  intro n
  simp only [A158536, Nat.add_sub_cancel, A158536.P13004084481879868343.a, A158536.P18049657743555289657.a, A189836, A189836.P17684441985641373940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158536

/-! ## A158536.P4863810471036233282

`11*(n*A028310(11*n)+1)`
-/

namespace A158536.P4863810471036233282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ((n : ℤ) * A028310 (11 * n) + 1)

end

end A158536.P4863810471036233282

namespace A158536

/-- `11*(n*A028310(11*n)+1)` -/
def P4863810471036233282.Spec : Prop :=
  ∀ n, P4863810471036233282.a n = A158536 n

end A158536

/-! ## A158536.P13079432464537304837

`11*A017401(n²)`
-/

namespace A158536.P13079432464537304837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A017401 (n ^ 2)

end

end A158536.P13079432464537304837

namespace A158536

/-- `11*A017401(n²)` -/
def P13079432464537304837.Spec : Prop :=
  ∀ n, P13079432464537304837.a n = A158536 n

theorem P13079432464537304837.correct : P13079432464537304837.Spec := by
  intro n
  simp only [A158536, Nat.add_sub_cancel, A158536.P13079432464537304837.a, A158536.P18049657743555289657.a, A017401, A017401.P13777489390994228607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158536

/-!
# A158537: a(n) = 22*n^2 + 1.

The programs for A158537, the canonical program `A158537.P7872366161731036146` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158537 has offset 0).

The definition of A158537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n²+1` (program `A158537.P7872366161731036146`, by `A158537.P7872366161731036146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158537.P7872366161731036146

`22*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158537

/-- `22*n²+1` -/
def P7872366161731036146.Spec : Prop :=
  ∀ n, (P7872366161731036146.a n : ℤ) = A158537 n

theorem P7872366161731036146.correct : P7872366161731036146.Spec := by
  intro n
  simp only [A158537]

end A158537

/-! ## A158537.P11817418283510400452

`or(1, 22*n²)`
-/

namespace A158537.P11817418283510400452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (22 * n ^ 2)

end

end A158537.P11817418283510400452

namespace A158537

/-- `or(1, 22*n²)` -/
def P11817418283510400452.Spec : Prop :=
  ∀ n, (P11817418283510400452.a n : ℤ) = A158537 n

end A158537

/-! ## A158537.P12706310733148198

`xor(1, 22*n²)`
-/

namespace A158537.P12706310733148198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (22 * n ^ 2)

end

end A158537.P12706310733148198

namespace A158537

/-- `xor(1, 22*n²)` -/
def P12706310733148198.Spec : Prop :=
  ∀ n, (P12706310733148198.a n : ℤ) = A158537 n

end A158537

/-! ## A158537.P11202639649897171536

`∑[a(n-1)+44]` with `a(0)=1, a(1)=22`
-/

namespace A158537.P11202639649897171536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158537.P11202639649897171536

namespace A158537

/-- `∑[a(n-1)+44]` -/
def P11202639649897171536.Spec : Prop :=
  ∀ n, (P11202639649897171536.a n : ℤ) = A158537 n

end A158537

/-! ## A158537.P6199243831997732252

`(lcm(2, 2*n*22*n+1)+2)/4`
-/

namespace A158537.P6199243831997732252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n * (22 * n) + 1) + 2 : ℚ) / 4

end

end A158537.P6199243831997732252

namespace A158537

/-- `(lcm(2, 2*n*22*n+1)+2)/4` -/
def P6199243831997732252.Spec : Prop :=
  ∀ n, P6199243831997732252.a n = (A158537 n : ℚ)

end A158537

/-! ## A158537.P17796858530608150218

`ceil(A158630(n)/2)`
-/

namespace A158537.P17796858530608150218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158630 n : ℚ) / 2⌉

end

end A158537.P17796858530608150218

namespace A158537

/-- `ceil(A158630(n)/2)` -/
def P17796858530608150218.Spec : Prop :=
  ∀ n, P17796858530608150218.a n = A158537 n

end A158537

/-! ## A158537.P12967679331578426665

`ceil(A158689(n)/3)`
-/

namespace A158537.P12967679331578426665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158689 n : ℚ) / 3⌉

end

end A158537.P12967679331578426665

namespace A158537

/-- `ceil(A158689(n)/3)` -/
def P12967679331578426665.Spec : Prop :=
  ∀ n, P12967679331578426665.a n = A158537 n

end A158537

/-! ## A158537.P15370347577465883040

`∑[A004277(11*(A004277(n)-1))]`
-/

namespace A158537.P15370347577465883040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (11 * (A004277 n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158537.P15370347577465883040

namespace A158537

/-- `∑[A004277(11*(A004277(n)-1))]` -/
def P15370347577465883040.Spec : Prop :=
  ∀ n, P15370347577465883040.a n = A158537 n

end A158537

/-! ## A158537.P11651291325942104347

`A000027(2*n*11*n+1)`
-/

namespace A158537.P11651291325942104347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n * (11 * n)) + 1)

end

end A158537.P11651291325942104347

namespace A158537

/-- `A000027(2*n*11*n+1)` -/
def P11651291325942104347.Spec : Prop :=
  ∀ n, P11651291325942104347.a n = A158537 n

theorem P11651291325942104347.correct : P11651291325942104347.Spec := by
  intro n
  simp only [A158537, Nat.add_sub_cancel, A158537.P11651291325942104347.a, A158537.P7872366161731036146.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158537

/-! ## A158537.P5154018271590387822

`A161709(n²)`
-/

namespace A158537.P5154018271590387822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n ^ 2)

end

end A158537.P5154018271590387822

namespace A158537

/-- `A161709(n²)` -/
def P5154018271590387822.Spec : Prop :=
  ∀ n, P5154018271590387822.a n = A158537 n

end A158537

/-! ## A158537.P9640742108611708289

`∩[A161709(n), A195149(n)+1]`
-/

namespace A158537.P9640742108611708289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195149 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158537.P9640742108611708289

namespace A158537

/-- `∩[A161709(n), A195149(n)+1]` -/
def P9640742108611708289.Spec : Prop :=
  ∀ n, (P9640742108611708289.a n : ℤ) = A158537 n

end A158537

/-!
# A158538: a(n) = Hermite(n,12).

The programs for A158538, the canonical program `A158538.P13963401450054928606` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158538 has offset 0).

The definition of A158538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158538.P13963401450054928606

`24*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158538

/-- `24*a(n-1)-2*(n-1)*a(n-2)` -/
def P13963401450054928606.Spec : Prop :=
  ∀ n, P13963401450054928606.a n = A158538 n

theorem P13963401450054928606.correct : P13963401450054928606.Spec := by
  intro n
  simp only [A158538]

end A158538

/-!
# A158539: a(n) = 121*n^2 - 11.

The programs for A158539, the canonical program `A158539.P855610343109994441` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158539 has offset 1).

The definition of A158539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)²-11` (program `A158539.P855610343109994441`, by `A158539.P855610343109994441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158539.P855610343109994441

`121*(n+1)²-11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158539

/-- `121*(n+1)²-11` -/
def P855610343109994441.Spec : Prop :=
  ∀ n, P855610343109994441.a n = A158539 (n + 1)

theorem P855610343109994441.correct : P855610343109994441.Spec := by
  intro n
  simp only [A158539, Nat.add_sub_cancel]

end A158539

/-! ## A158539.P8653180902129903606

`abs(11-A008593(n+1)²)`
-/

namespace A158539.P8653180902129903606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 - A008593 (n + 1) ^ 2|

end

end A158539.P8653180902129903606

namespace A158539

/-- `abs(11-A008593(n+1)²)` -/
def P8653180902129903606.Spec : Prop :=
  ∀ n, P8653180902129903606.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P16364666974331695094

`abs(A173267(n+1)-(n+12))`
-/

namespace A158539.P16364666974331695094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173267 (n + 1) - (n + 12 : ℤ)|

end

end A158539.P16364666974331695094

namespace A158539

/-- `abs(A173267(n+1)-(n+12))` -/
def P16364666974331695094.Spec : Prop :=
  ∀ n, P16364666974331695094.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P12512450709054671595

`11*(11*A000290(n+1)-1)`
-/

namespace A158539.P12512450709054671595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (11 * A000290 (n + 1) - 1)

end

end A158539.P12512450709054671595

namespace A158539

/-- `11*(11*A000290(n+1)-1)` -/
def P12512450709054671595.Spec : Prop :=
  ∀ n, P12512450709054671595.a n = A158539 (n + 1)

theorem P12512450709054671595.correct : P12512450709054671595.Spec := by
  intro n
  simp only [A158539, Nat.add_sub_cancel, A158539.P12512450709054671595.a, A158539.P855610343109994441.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158539

/-! ## A158539.P9498257342315246339

`abs(A157960(n+1)-A022966(n))`
-/

namespace A158539.P9498257342315246339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157960 (n + 1) - A022966 n|

end

end A158539.P9498257342315246339

namespace A158539

/-- `abs(A157960(n+1)-A022966(n))` -/
def P9498257342315246339.Spec : Prop :=
  ∀ n, P9498257342315246339.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P4122888940059346163

`abs(11-Δ[A152740(n)]²)`
-/

namespace A158539.P4122888940059346163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 - (f1 (n + 1) - f1 n) ^ 2|

end

end A158539.P4122888940059346163

namespace A158539

/-- `abs(11-Δ[A152740(n)]²)` -/
def P4122888940059346163.Spec : Prop :=
  ∀ n, P4122888940059346163.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P18049695882092241797

`Δ[∑[A158536(n)]-A008604(n)]`
-/

namespace A158539.P18049695882092241797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158539.P18049695882092241797

namespace A158539

/-- `Δ[∑[A158536(n)]-A008604(n)]` -/
def P18049695882092241797.Spec : Prop :=
  ∀ n, P18049695882092241797.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P9495471900253062315

`Δ[∑[A008593(n)²]-A008593(n)]`
-/

namespace A158539.P9495471900253062315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158539.P9495471900253062315

namespace A158539

/-- `Δ[∑[A008593(n)²]-A008593(n)]` -/
def P9495471900253062315.Spec : Prop :=
  ∀ n, P9495471900253062315.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P12248182165320543821

`record[A176592(n+2)²-11]`
-/

namespace A158539.P12248182165320543821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176592 (n + 2) ^ 2 - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158539.P12248182165320543821

namespace A158539

/-- `record[A176592(n+2)²-11]` -/
def P12248182165320543821.Spec : Prop :=
  ∀ n, P12248182165320543821.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P1868363996942962002

`(A157960(n+1)-A022966(n))*A001222(A045356(n+1))`
-/

namespace A158539.P1868363996942962002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157960 (n + 1) - A022966 n) * A001222 (A045356 (n + 1)).toNat

end

end A158539.P1868363996942962002

namespace A158539

/-- `(A157960(n+1)-A022966(n))*A001222(A045356(n+1))` -/
def P1868363996942962002.Spec : Prop :=
  ∀ n, P1868363996942962002.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P12729931150345163780

`(A157960(n+1)-A022966(n))*A001222(A038967(n+2))`
-/

namespace A158539.P12729931150345163780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157960 (n + 1) - A022966 n) * A001222 (A038967 (n + 2)).toNat

end

end A158539.P12729931150345163780

namespace A158539

/-- `(A157960(n+1)-A022966(n))*A001222(A038967(n+2))` -/
def P12729931150345163780.Spec : Prop :=
  ∀ n, P12729931150345163780.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P16910808490036050338

`(A157960(n+1)-A022966(n))*A001222(A023228(n+1))`
-/

namespace A158539.P16910808490036050338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157960 (n + 1) - A022966 n) * A001222 (A023228 (n + 1)).toNat

end

end A158539.P16910808490036050338

namespace A158539

/-- `(A157960(n+1)-A022966(n))*A001222(A023228(n+1))` -/
def P16910808490036050338.Spec : Prop :=
  ∀ n, P16910808490036050338.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P6581867060318833595

`(A157960(n+1)-A022966(n))*A001222(A267550(n+1))`
-/

namespace A158539.P6581867060318833595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157960 (n + 1) - A022966 n) * A001222 (A267550 (n + 1)).toNat

end

end A158539.P6581867060318833595

namespace A158539

/-- `(A157960(n+1)-A022966(n))*A001222(A267550(n+1))` -/
def P6581867060318833595.Spec : Prop :=
  ∀ n, P6581867060318833595.a n = A158539 (n + 1)

end A158539

/-! ## A158539.P18407559718226634817

`11*A017509(A005563(n))`
-/

namespace A158539.P18407559718226634817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A017509 (A005563 n).toNat

end

end A158539.P18407559718226634817

namespace A158539

/-- `11*A017509(A005563(n))` -/
def P18407559718226634817.Spec : Prop :=
  ∀ n, P18407559718226634817.a n = A158539 (n + 1)

end A158539

/-!
# A158540: a(n) = 22*n^2 - 1.

The programs for A158540, the canonical program `A158540.P13945659981385710168` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158540 has offset 1).

The definition of A158540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*(n+1)²-1` (program `A158540.P13945659981385710168`, by `A158540.P13945659981385710168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158540.P13945659981385710168

`22*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158540

/-- `22*(n+1)²-1` -/
def P13945659981385710168.Spec : Prop :=
  ∀ n, P13945659981385710168.a n = A158540 (n + 1)

theorem P13945659981385710168.correct : P13945659981385710168.Spec := by
  intro n
  simp only [A158540, Nat.add_sub_cancel]

end A158540

/-! ## A158540.P10645556381448270449

`abs(2-A158537(n+1))`
-/

namespace A158540.P10645556381448270449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158537 (n + 1)|

end

end A158540.P10645556381448270449

namespace A158540

/-- `abs(2-A158537(n+1))` -/
def P10645556381448270449.Spec : Prop :=
  ∀ n, P10645556381448270449.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P8192079194505557699

`floor(A158628(n+1)/2)`
-/

namespace A158540.P8192079194505557699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158628 (n + 1) : ℚ) / 2⌋

end

end A158540.P8192079194505557699

namespace A158540

/-- `floor(A158628(n+1)/2)` -/
def P8192079194505557699.Spec : Prop :=
  ∀ n, P8192079194505557699.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P11648824646611927838

`floor(A158693(n+1)/3)`
-/

namespace A158540.P11648824646611927838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158693 (n + 1) : ℚ) / 3⌋

end

end A158540.P11648824646611927838

namespace A158540

/-- `floor(A158693(n+1)/3)` -/
def P11648824646611927838.Spec : Prop :=
  ∀ n, P11648824646611927838.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P14681375037050119694

`(A158630(n+1)-3)/2`
-/

namespace A158540.P14681375037050119694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158630 (n + 1) - 3 : ℚ) / 2

end

end A158540.P14681375037050119694

namespace A158540

/-- `(A158630(n+1)-3)/2` -/
def P14681375037050119694.Spec : Prop :=
  ∀ n, P14681375037050119694.a n = (A158540 (n + 1) : ℚ)

theorem P14681375037050119694.correct : P14681375037050119694.Spec := by
  intro n
  simp only [A158540, Nat.add_sub_cancel, A158540.P14681375037050119694.a, A158540.P13945659981385710168.a, A158630, A158630.P4066684916499905521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158540

/-! ## A158540.P15498927303365172281

`∑[11*(4*n+2)-A000007(n)]`
-/

namespace A158540.P15498927303365172281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * (4 * n + 2) : ℤ) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158540.P15498927303365172281

namespace A158540

/-- `∑[11*(4*n+2)-A000007(n)]` -/
def P15498927303365172281.Spec : Prop :=
  ∀ n, P15498927303365172281.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P11545530206243105832

`abs(11*(A046092(n)+A004277(n+1))-1)`
-/

namespace A158540.P11545530206243105832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 * (A046092 n + A004277 (n + 1)) - 1|

end

end A158540.P11545530206243105832

namespace A158540

/-- `abs(11*(A046092(n)+A004277(n+1))-1)` -/
def P11545530206243105832.Spec : Prop :=
  ∀ n, P11545530206243105832.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P8401259653379113945

`(A158628(n+1)-1)/A020639(2*(n+1))`
-/

namespace A158540.P8401259653379113945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158628 (n + 1) - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A158540.P8401259653379113945

namespace A158540

/-- `(A158628(n+1)-1)/A020639(2*(n+1))` -/
def P8401259653379113945.Spec : Prop :=
  ∀ n, P8401259653379113945.a n = (A158540 (n + 1) : ℚ)

end A158540

/-! ## A158540.P14919316750910852102

`∑[45*n+22-A065033(2*n)]`
-/

namespace A158540.P14919316750910852102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n + 22 : ℤ) - A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158540.P14919316750910852102

namespace A158540

/-- `∑[45*n+22-A065033(2*n)]` -/
def P14919316750910852102.Spec : Prop :=
  ∀ n, P14919316750910852102.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P1351850408136997810

`∑[A063228(2*n+1)+A063228(2*(n+1))]`
-/

namespace A158540.P1351850408136997810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063228 (2 * n + 1) + A063228 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158540.P1351850408136997810

namespace A158540

/-- `∑[A063228(2*n+1)+A063228(2*(n+1))]` -/
def P1351850408136997810.Spec : Prop :=
  ∀ n, P1351850408136997810.a n = A158540 (n + 1)

end A158540

/-! ## A158540.P1269630721210490931

`∑[A016957(A017317(n))-A063130(n+1)]`
-/

namespace A158540.P1269630721210490931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A017317 n).toNat - A063130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158540.P1269630721210490931

namespace A158540

/-- `∑[A016957(A017317(n))-A063130(n+1)]` -/
def P1269630721210490931.Spec : Prop :=
  ∀ n, P1269630721210490931.a n = A158540 (n + 1)

end A158540

/-!
# A158542: a(n) = Hermite(n,13).

The programs for A158542, the canonical program `A158542.P8884027796064081523` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158542 has offset 0).

The definition of A158542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158542.P8884027796064081523

`26*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158542

/-- `26*a(n-1)-2*(n-1)*a(n-2)` -/
def P8884027796064081523.Spec : Prop :=
  ∀ n, P8884027796064081523.a n = A158542 n

theorem P8884027796064081523.correct : P8884027796064081523.Spec := by
  intro n
  simp only [A158542]

end A158542

/-!
# A158543: a(n) = 144*n^2 - 12.

The programs for A158543, the canonical program `A158543.P17864952982196229554` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158543 has offset 1).

The definition of A158543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²-12` (program `A158543.P17864952982196229554`, by `A158543.P17864952982196229554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158543.P17864952982196229554

`144*(n+1)²-12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158543

/-- `144*(n+1)²-12` -/
def P17864952982196229554.Spec : Prop :=
  ∀ n, P17864952982196229554.a n = A158543 (n + 1)

theorem P17864952982196229554.correct : P17864952982196229554.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel]

end A158543

/-! ## A158543.P13426113701741694434

`12*A158463(n+1)`
-/

namespace A158543.P13426113701741694434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A158463 (n + 1)

end

end A158543.P13426113701741694434

namespace A158543

/-- `12*A158463(n+1)` -/
def P13426113701741694434.Spec : Prop :=
  ∀ n, P13426113701741694434.a n = A158543 (n + 1)

theorem P13426113701741694434.correct : P13426113701741694434.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P13426113701741694434.a, A158543.P17864952982196229554.a, A158463, A158463.P7007655217700314725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P8742213049637353355

`4*(A136017(n+1)-2)`
-/

namespace A158543.P8742213049637353355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A136017 (n + 1) - 2)

end

end A158543.P8742213049637353355

namespace A158543

/-- `4*(A136017(n+1)-2)` -/
def P8742213049637353355.Spec : Prop :=
  ∀ n, P8742213049637353355.a n = A158543 (n + 1)

theorem P8742213049637353355.correct : P8742213049637353355.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P8742213049637353355.a, A158543.P17864952982196229554.a, A136017, A136017.P15592961706062905529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P12785795157180964177

`4*(A158462(n+1)+3)`
-/

namespace A158543.P12785795157180964177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158462 (n + 1) + 3)

end

end A158543.P12785795157180964177

namespace A158543

/-- `4*(A158462(n+1)+3)` -/
def P12785795157180964177.Spec : Prop :=
  ∀ n, P12785795157180964177.a n = A158543 (n + 1)

theorem P12785795157180964177.correct : P12785795157180964177.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P12785795157180964177.a, A158543.P17864952982196229554.a, A158462, A158462.P6216805547940033243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P17224153631776743683

`2*(A158738(n+1)-5)`
-/

namespace A158543.P17224153631776743683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158738 (n + 1) - 5)

end

end A158543.P17224153631776743683

namespace A158543

/-- `2*(A158738(n+1)-5)` -/
def P17224153631776743683.Spec : Prop :=
  ∀ n, P17224153631776743683.a n = A158543 (n + 1)

theorem P17224153631776743683.correct : P17224153631776743683.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P17224153631776743683.a, A158543.P17864952982196229554.a, A158738, A158738.P13269052857347112751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P17660931596245344457

`lcm(4, (A016969(n)+1)²-3)`
-/

namespace A158543.P17660931596245344457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ((A016969 n + 1) ^ 2 - 3)

end

end A158543.P17660931596245344457

namespace A158543

/-- `lcm(4, (A016969(n)+1)²-3)` -/
def P17660931596245344457.Spec : Prop :=
  ∀ n, (P17660931596245344457.a n : ℤ) = A158543 (n + 1)

end A158543

/-! ## A158543.P16699096411748757528

`12*(Δ[(2*n+1)*A046092(n)]-1)`
-/

namespace A158543.P16699096411748757528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (f1 (n + 1) - f1 n - 1)

end

end A158543.P16699096411748757528

namespace A158543

/-- `12*(Δ[(2*n+1)*A046092(n)]-1)` -/
def P16699096411748757528.Spec : Prop :=
  ∀ n, P16699096411748757528.a n = A158543 (n + 1)

theorem P16699096411748757528.correct : P16699096411748757528.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P16699096411748757528.f1, A158543.P16699096411748757528.a, A158543.P17864952982196229554.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P16169207123799690866

`3*(A065532(n+1)-3)`
-/

namespace A158543.P16169207123799690866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A065532 (n + 1) - 3)

end

end A158543.P16169207123799690866

namespace A158543

/-- `3*(A065532(n+1)-3)` -/
def P16169207123799690866.Spec : Prop :=
  ∀ n, P16169207123799690866.a n = A158543 (n + 1)

theorem P16169207123799690866.correct : P16169207123799690866.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P16169207123799690866.a, A158543.P17864952982196229554.a, A065532, A065532.P11573010565156108803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P14669541502081262383

`4*A157872(2*(n+1))`
-/

namespace A158543.P14669541502081262383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A157872 (2 * (n + 1))

end

end A158543.P14669541502081262383

namespace A158543

/-- `4*A157872(2*(n+1))` -/
def P14669541502081262383.Spec : Prop :=
  ∀ n, P14669541502081262383.a n = A158543 (n + 1)

end A158543

/-! ## A158543.P12969628340427255506

`(A017593(2*n+1)-A017593(2*n))*A080663(2*(n+1))`
-/

namespace A158543.P12969628340427255506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017593 (2 * n + 1) - A017593 (2 * n)) * A080663 (2 * (n + 1))

end

end A158543.P12969628340427255506

namespace A158543

/-- `(A017593(2*n+1)-A017593(2*n))*A080663(2*(n+1))` -/
def P12969628340427255506.Spec : Prop :=
  ∀ n, P12969628340427255506.a n = A158543 (n + 1)

end A158543

/-! ## A158543.P16725650021709044455

`3*A188148(2*n+3)`
-/

namespace A158543.P16725650021709044455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A188148 (2 * n + 3)

end

end A158543.P16725650021709044455

namespace A158543

/-- `3*A188148(2*n+3)` -/
def P16725650021709044455.Spec : Prop :=
  ∀ n, P16725650021709044455.a n = A158543 (n + 1)

end A158543

/-! ## A158543.P11750093314483815453

`4*A082109(3*n+2)`
-/

namespace A158543.P11750093314483815453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082109 (3 * n + 2)

end

end A158543.P11750093314483815453

namespace A158543

/-- `4*A082109(3*n+2)` -/
def P11750093314483815453.Spec : Prop :=
  ∀ n, P11750093314483815453.a n = A158543 (n + 1)

theorem P11750093314483815453.correct : P11750093314483815453.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P11750093314483815453.a, A158543.P17864952982196229554.a, A082109, A082109.P15494663758169868970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P14139285304436051923

`4*(4*A005563(3*n+2)+1)`
-/

namespace A158543.P14139285304436051923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A005563 (3 * n + 2) + 1)

end

end A158543.P14139285304436051923

namespace A158543

/-- `4*(4*A005563(3*n+2)+1)` -/
def P14139285304436051923.Spec : Prop :=
  ∀ n, P14139285304436051923.a n = A158543 (n + 1)

theorem P14139285304436051923.correct : P14139285304436051923.Spec := by
  intro n
  simp only [A158543, Nat.add_sub_cancel, A158543.P14139285304436051923.a, A158543.P17864952982196229554.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158543

/-! ## A158543.P13079165253041544114

`A035104(A350052(n))`
-/

namespace A158543.P13079165253041544114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035104 (A350052 n).toNat

end

end A158543.P13079165253041544114

namespace A158543

/-- `A035104(A350052(n))` -/
def P13079165253041544114.Spec : Prop :=
  ∀ n, P13079165253041544114.a n = A158543 (n + 1)

end A158543

/-! ## A158543.P501396938723681220

`A270681(A017629(n))`
-/

namespace A158543.P501396938723681220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270681 (A017629 n).toNat

end

end A158543.P501396938723681220

namespace A158543

/-- `A270681(A017629(n))` -/
def P501396938723681220.Spec : Prop :=
  ∀ n, P501396938723681220.a n = A158543 (n + 1)

end A158543

/-!
# A158544: a(n) = 24*n^2 - 1.

The programs for A158544, the canonical program `A158544.P3199639721512580159` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158544 has offset 1).

The definition of A158544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*(n+1)²-1` (program `A158544.P3199639721512580159`, by `A158544.P3199639721512580159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158544.P3199639721512580159

`24*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158544

/-- `24*(n+1)²-1` -/
def P3199639721512580159.Spec : Prop :=
  ∀ n, P3199639721512580159.a n = A158544 (n + 1)

theorem P3199639721512580159.correct : P3199639721512580159.Spec := by
  intro n
  simp only [A158544, Nat.add_sub_cancel]

end A158544

/-! ## A158544.P12749028120894133785

`A140811(2*(n+1))`
-/

namespace A158544.P12749028120894133785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 (2 * (n + 1))

end

end A158544.P12749028120894133785

namespace A158544

/-- `A140811(2*(n+1))` -/
def P12749028120894133785.Spec : Prop :=
  ∀ n, P12749028120894133785.a n = A158544 (n + 1)

theorem P12749028120894133785.correct : P12749028120894133785.Spec := by
  intro n
  simp only [A158544, Nat.add_sub_cancel, A158544.P12749028120894133785.a, A158544.P3199639721512580159.a, A140811, A140811.P17716776478933671421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158544

/-! ## A158544.P12444261830597622385

`floor(A158738(n+1)/3)`
-/

namespace A158544.P12444261830597622385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158738 (n + 1) : ℚ) / 3⌋

end

end A158544.P12444261830597622385

namespace A158544

/-- `floor(A158738(n+1)/3)` -/
def P12444261830597622385.Spec : Prop :=
  ∀ n, P12444261830597622385.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P5998820233037891458

`(A158638(n+1)-3)/2`
-/

namespace A158544.P5998820233037891458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158638 (n + 1) - 3 : ℚ) / 2

end

end A158544.P5998820233037891458

namespace A158544

/-- `(A158638(n+1)-3)/2` -/
def P5998820233037891458.Spec : Prop :=
  ∀ n, P5998820233037891458.a n = (A158544 (n + 1) : ℚ)

theorem P5998820233037891458.correct : P5998820233037891458.Spec := by
  intro n
  simp only [A158544, Nat.add_sub_cancel, A158544.P5998820233037891458.a, A158544.P3199639721512580159.a, A158638, A158638.P7332495969947453421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158544

/-! ## A158544.P872371521965274654

`abs(∑[8*A016945(n)]-1)`
-/

namespace A158544.P872371521965274654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A158544.P872371521965274654

namespace A158544

/-- `abs(∑[8*A016945(n)]-1)` -/
def P872371521965274654.Spec : Prop :=
  ∀ n, P872371521965274654.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P11403253438775115345

`abs(1-24*A000290(n+1))`
-/

namespace A158544.P11403253438775115345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 24 * A000290 (n + 1)|

end

end A158544.P11403253438775115345

namespace A158544

/-- `abs(1-24*A000290(n+1))` -/
def P11403253438775115345.Spec : Prop :=
  ∀ n, P11403253438775115345.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P3771926647177573841

`abs(4*2*(A056106(n+1)+n)-1)`
-/

namespace A158544.P3771926647177573841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * (2 * (A056106 (n + 1) + (n : ℤ))) - 1|

end

end A158544.P3771926647177573841

namespace A158544

/-- `abs(4*2*(A056106(n+1)+n)-1)` -/
def P3771926647177573841.Spec : Prop :=
  ∀ n, P3771926647177573841.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P150221152910439291

`abs(24*A000578(n+1)/(n+1)-1)`
-/

namespace A158544.P150221152910439291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |24 * ((A000578 (n + 1) : ℚ) / (n + 1 : ℚ)) - 1|

end

end A158544.P150221152910439291

namespace A158544

/-- `abs(24*A000578(n+1)/(n+1)-1)` -/
def P150221152910439291.Spec : Prop :=
  ∀ n, P150221152910439291.a n = (A158544 (n + 1) : ℚ)

end A158544

/-! ## A158544.P13331662284920334533

`ceil(A141759(n)+A141759(n)/2)`
-/

namespace A158544.P13331662284920334533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141759 n : ℚ) + (A141759 n : ℚ) / 2⌉

end

end A158544.P13331662284920334533

namespace A158544

/-- `ceil(A141759(n)+A141759(n)/2)` -/
def P13331662284920334533.Spec : Prop :=
  ∀ n, P13331662284920334533.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P17327838955707313550

`(A065532(n+1)-1)/2`
-/

namespace A158544.P17327838955707313550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065532 (n + 1) - 1 : ℚ) / 2

end

end A158544.P17327838955707313550

namespace A158544

/-- `(A065532(n+1)-1)/2` -/
def P17327838955707313550.Spec : Prop :=
  ∀ n, P17327838955707313550.a n = (A158544 (n + 1) : ℚ)

theorem P17327838955707313550.correct : P17327838955707313550.Spec := by
  intro n
  simp only [A158544, Nat.add_sub_cancel, A158544.P17327838955707313550.a, A158544.P3199639721512580159.a, A065532, A065532.P11573010565156108803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158544

/-! ## A158544.P301780102395060534

`Δ[n*(A118057(n+1)+2)]`
-/

namespace A158544.P301780102395060534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A118057 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158544.P301780102395060534

namespace A158544

/-- `Δ[n*(A118057(n+1)+2)]` -/
def P301780102395060534.Spec : Prop :=
  ∀ n, P301780102395060534.a n = A158544 (n + 1)

theorem P301780102395060534.correct : P301780102395060534.Spec := by
  intro n
  simp only [A158544, Nat.add_sub_cancel, A158544.P301780102395060534.f1, A158544.P301780102395060534.a, A158544.P3199639721512580159.a, A118057, A118057.P16718058190534757251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158544

/-! ## A158544.P10908440715348876648

`Δ[n*(A060820(n+1)-2)]`
-/

namespace A158544.P10908440715348876648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A060820 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158544.P10908440715348876648

namespace A158544

/-- `Δ[n*(A060820(n+1)-2)]` -/
def P10908440715348876648.Spec : Prop :=
  ∀ n, P10908440715348876648.a n = A158544 (n + 1)

theorem P10908440715348876648.correct : P10908440715348876648.Spec := by
  intro n
  simp only [A158544, Nat.add_sub_cancel, A158544.P10908440715348876648.f1, A158544.P10908440715348876648.a, A158544.P3199639721512580159.a, A060820, A060820.P10858429723471655281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158544

/-! ## A158544.P5702554615304621623

`∑[(2*n+1)*A101104(n+3)]`
-/

namespace A158544.P5702554615304621623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A101104 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158544.P5702554615304621623

namespace A158544

/-- `∑[(2*n+1)*A101104(n+3)]` -/
def P5702554615304621623.Spec : Prop :=
  ∀ n, P5702554615304621623.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P15490260611308404723

`Δ[n*A195241(n+2)]`
-/

namespace A158544.P15490260611308404723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195241 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158544.P15490260611308404723

namespace A158544

/-- `Δ[n*A195241(n+2)]` -/
def P15490260611308404723.Spec : Prop :=
  ∀ n, P15490260611308404723.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P7596689129780852921

`or(2, A385602(2*n+1))`
-/

namespace A158544.P7596689129780852921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A385602 (2 * n + 1))

end

end A158544.P7596689129780852921

namespace A158544

/-- `or(2, A385602(2*n+1))` -/
def P7596689129780852921.Spec : Prop :=
  ∀ n, P7596689129780852921.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P3697509865268130324

`abs(Δ[(n+1)*A046092(2*n)]-1)`
-/

namespace A158544.P3697509865268130324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046092 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 1|

end

end A158544.P3697509865268130324

namespace A158544

/-- `abs(Δ[(n+1)*A046092(2*n)]-1)` -/
def P3697509865268130324.Spec : Prop :=
  ∀ n, P3697509865268130324.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P3810852657451478337

`abs(2*4*∑[record[A166466(n+2)]]-1)`
-/

namespace A158544.P3810852657451478337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) - 1|

end

end A158544.P3810852657451478337

namespace A158544

/-- `abs(2*4*∑[record[A166466(n+2)]]-1)` -/
def P3810852657451478337.Spec : Prop :=
  ∀ n, P3810852657451478337.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P2453828495156746912

`abs(Δ[3*n-2-∑[A005897(2*n)]])`
-/

namespace A158544.P2453828495156746912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A158544.P2453828495156746912

namespace A158544

/-- `abs(Δ[3*n-2-∑[A005897(2*n)]])` -/
def P2453828495156746912.Spec : Prop :=
  ∀ n, P2453828495156746912.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P13606497909683154055

`Δ[n*A132209(2*n+1)]`
-/

namespace A158544.P13606497909683154055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A132209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158544.P13606497909683154055

namespace A158544

/-- `Δ[n*A132209(2*n+1)]` -/
def P13606497909683154055.Spec : Prop :=
  ∀ n, P13606497909683154055.a n = A158544 (n + 1)

end A158544

/-! ## A158544.P707009073483943279

`A108928(3*(n+1))/3`
-/

namespace A158544.P707009073483943279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108928 (3 * (n + 1)) : ℚ) / 3

end

end A158544.P707009073483943279

namespace A158544

/-- `A108928(3*(n+1))/3` -/
def P707009073483943279.Spec : Prop :=
  ∀ n, P707009073483943279.a n = (A158544 (n + 1) : ℚ)

end A158544

/-!
# A158545: a(n) = Hermite(n,14).

The programs for A158545, the canonical program `A158545.P16460605441849845088` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158545 has offset 0).

The definition of A158545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158545.P16460605441849845088

`28*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158545

/-- `28*a(n-1)-2*(n-1)*a(n-2)` -/
def P16460605441849845088.Spec : Prop :=
  ∀ n, P16460605441849845088.a n = A158545 n

theorem P16460605441849845088.correct : P16460605441849845088.Spec := by
  intro n
  simp only [A158545]

end A158545

/-!
# A158546: a(n) = 144*n^2 + 12.

The programs for A158546, the canonical program `A158546.P11562335720534390101` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158546 has offset 0).

The definition of A158546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*n²+12` (program `A158546.P11562335720534390101`, by `A158546.P11562335720534390101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158546.P11562335720534390101

`144*n²+12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158546

/-- `144*n²+12` -/
def P11562335720534390101.Spec : Prop :=
  ∀ n, (P11562335720534390101.a n : ℤ) = A158546 n

theorem P11562335720534390101.correct : P11562335720534390101.Spec := by
  intro n
  simp only [A158546]

end A158546

/-! ## A158546.P17716148112383651411

`12*A158480(n)`
-/

namespace A158546.P17716148112383651411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A158480 n

end

end A158546.P17716148112383651411

namespace A158546

/-- `12*A158480(n)` -/
def P17716148112383651411.Spec : Prop :=
  ∀ n, P17716148112383651411.a n = A158546 n

theorem P17716148112383651411.correct : P17716148112383651411.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P17716148112383651411.a, A158546.P11562335720534390101.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P9163801555406698623

`or(12, (12*n)²)`
-/

namespace A158546.P9163801555406698623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 12 ((12 * n) ^ 2)

end

end A158546.P9163801555406698623

namespace A158546

/-- `or(12, (12*n)²)` -/
def P9163801555406698623.Spec : Prop :=
  ∀ n, (P9163801555406698623.a n : ℤ) = A158546 n

end A158546

/-! ## A158546.P5694963483596626661

`xor(5, 9*(n*16*n+1))`
-/

namespace A158546.P5694963483596626661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (9 * (n * (16 * n) + 1))

end

end A158546.P5694963483596626661

namespace A158546

/-- `xor(5, 9*(n*16*n+1))` -/
def P5694963483596626661.Spec : Prop :=
  ∀ n, (P5694963483596626661.a n : ℤ) = A158546 n

end A158546

/-! ## A158546.P13371953569038547765

`12*(4*∑[a(n-1)+6]+1)` with `a(0)=0, a(1)=3`
-/

namespace A158546.P13371953569038547765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A158546.P13371953569038547765

namespace A158546

/-- `12*(4*∑[a(n-1)+6]+1)` -/
def P13371953569038547765.Spec : Prop :=
  ∀ n, (P13371953569038547765.a n : ℤ) = A158546 n

end A158546

/-! ## A158546.P12744613817485334573

`lcm(12, A010014(n))`
-/

namespace A158546.P12744613817485334573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (A010014 n)

end

end A158546.P12744613817485334573

namespace A158546

/-- `lcm(12, A010014(n))` -/
def P12744613817485334573.Spec : Prop :=
  ∀ n, (P12744613817485334573.a n : ℤ) = A158546 n

end A158546

/-! ## A158546.P9540419219626989721

`4*(A158591(n)+2)`
-/

namespace A158546.P9540419219626989721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158591 n + 2)

end

end A158546.P9540419219626989721

namespace A158546

/-- `4*(A158591(n)+2)` -/
def P9540419219626989721.Spec : Prop :=
  ∀ n, P9540419219626989721.a n = A158546 n

theorem P9540419219626989721.correct : P9540419219626989721.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P9540419219626989721.a, A158546.P11562335720534390101.a, A158591, A158591.P11450394899068244051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P3708794591226580286

`3*(A158638(n)+3)`
-/

namespace A158546.P3708794591226580286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A158638 n + 3)

end

end A158546.P3708794591226580286

namespace A158546

/-- `3*(A158638(n)+3)` -/
def P3708794591226580286.Spec : Prop :=
  ∀ n, P3708794591226580286.a n = A158546 n

theorem P3708794591226580286.correct : P3708794591226580286.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P3708794591226580286.a, A158546.P11562335720534390101.a, A158638, A158638.P7332495969947453421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P3560096878528651086

`4*(A016910(n)+3)`
-/

namespace A158546.P3560096878528651086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A016910 n + 3)

end

end A158546.P3560096878528651086

namespace A158546

/-- `4*(A016910(n)+3)` -/
def P3560096878528651086.Spec : Prop :=
  ∀ n, P3560096878528651086.a n = A158546 n

theorem P3560096878528651086.correct : P3560096878528651086.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P3560096878528651086.a, A158546.P11562335720534390101.a, A016910, A016910.P3732514033866141413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P14292641294039896261

`2*(A158740(n)+5)`
-/

namespace A158546.P14292641294039896261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158740 n + 5)

end

end A158546.P14292641294039896261

namespace A158546

/-- `2*(A158740(n)+5)` -/
def P14292641294039896261.Spec : Prop :=
  ∀ n, P14292641294039896261.a n = A158546 n

theorem P14292641294039896261.correct : P14292641294039896261.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P14292641294039896261.a, A158546.P11562335720534390101.a, A158740, A158740.P13242228449475372307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P3408631524853461885

`3*(A065532(n)+5)`
-/

namespace A158546.P3408631524853461885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A065532 n + 5)

end

end A158546.P3408631524853461885

namespace A158546

/-- `3*(A065532(n)+5)` -/
def P3408631524853461885.Spec : Prop :=
  ∀ n, P3408631524853461885.a n = A158546 n

theorem P3408631524853461885.correct : P3408631524853461885.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P3408631524853461885.a, A158546.P11562335720534390101.a, A065532, A065532.P11573010565156108803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P352386783582956589

`(A033581(2*n)+2)*6`
-/

namespace A158546.P352386783582956589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033581 (2 * n) + 2) * 6

end

end A158546.P352386783582956589

namespace A158546

/-- `(A033581(2*n)+2)*6` -/
def P352386783582956589.Spec : Prop :=
  ∀ n, P352386783582956589.a n = A158546 n

theorem P352386783582956589.correct : P352386783582956589.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P352386783582956589.a, A158546.P11562335720534390101.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P893603517789258582

`2*(A153792(2*n)+12*n+6)`
-/

namespace A158546.P893603517789258582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153792 (2 * n) + (12 * n + 6 : ℤ))

end

end A158546.P893603517789258582

namespace A158546

/-- `2*(A153792(2*n)+12*n+6)` -/
def P893603517789258582.Spec : Prop :=
  ∀ n, P893603517789258582.a n = A158546 n

theorem P893603517789258582.correct : P893603517789258582.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P893603517789258582.a, A158546.P11562335720534390101.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P1586702745350140112

`12*(n*A228137(2*n+1)-n+1)`
-/

namespace A158546.P1586702745350140112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((n : ℤ) * A228137 (2 * n + 1) - (n : ℤ) + 1)

end

end A158546.P1586702745350140112

namespace A158546

/-- `12*(n*A228137(2*n+1)-n+1)` -/
def P1586702745350140112.Spec : Prop :=
  ∀ n, P1586702745350140112.a n = A158546 n

end A158546

/-! ## A158546.P3936152264118589816

`2*(A134154(2*n)+A004538(2*n+1))`
-/

namespace A158546.P3936152264118589816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134154 (2 * n) + A004538 (2 * n + 1))

end

end A158546.P3936152264118589816

namespace A158546

/-- `2*(A134154(2*n)+A004538(2*n+1))` -/
def P3936152264118589816.Spec : Prop :=
  ∀ n, P3936152264118589816.a n = A158546 n

theorem P3936152264118589816.correct : P3936152264118589816.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P3936152264118589816.a, A158546.P11562335720534390101.a, A004538, A004538.P10298653278695798692.a, A134154, A134154.P10105203805466113981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P15481775128562789202

`2*(A153786(2*n)+A028896(2*n+1))`
-/

namespace A158546.P15481775128562789202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153786 (2 * n) + A028896 (2 * n + 1))

end

end A158546.P15481775128562789202

namespace A158546

/-- `2*(A153786(2*n)+A028896(2*n+1))` -/
def P15481775128562789202.Spec : Prop :=
  ∀ n, P15481775128562789202.a n = A158546 n

theorem P15481775128562789202.correct : P15481775128562789202.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P15481775128562789202.a, A158546.P11562335720534390101.a, A028896, A028896.P3776891904721443318.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P14433329820236020724

`Δ[6*(A007531(2*n)+2*n)]`
-/

namespace A158546.P14433329820236020724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A007531 (2 * n) + (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158546.P14433329820236020724

namespace A158546

/-- `Δ[6*(A007531(2*n)+2*n)]` -/
def P14433329820236020724.Spec : Prop :=
  ∀ n, P14433329820236020724.a n = A158546 n

theorem P14433329820236020724.correct : P14433329820236020724.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P14433329820236020724.f1, A158546.P14433329820236020724.a, A158546.P11562335720534390101.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P8053006857771238554

`4*A222465(3*n)`
-/

namespace A158546.P8053006857771238554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A222465 (3 * n)

end

end A158546.P8053006857771238554

namespace A158546

/-- `4*A222465(3*n)` -/
def P8053006857771238554.Spec : Prop :=
  ∀ n, P8053006857771238554.a n = A158546 n

theorem P8053006857771238554.correct : P8053006857771238554.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P8053006857771238554.a, A158546.P11562335720534390101.a, A222465, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-! ## A158546.P13246076824554136778

`2*(A062741(4*n)+A008588(n+1))`
-/

namespace A158546.P13246076824554136778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062741 (4 * n) + A008588 (n + 1))

end

end A158546.P13246076824554136778

namespace A158546

/-- `2*(A062741(4*n)+A008588(n+1))` -/
def P13246076824554136778.Spec : Prop :=
  ∀ n, P13246076824554136778.a n = A158546 n

end A158546

/-! ## A158546.P11982141718621966847

`A241748(12*n)`
-/

namespace A158546.P11982141718621966847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241748 (12 * n)

end

end A158546.P11982141718621966847

namespace A158546

/-- `A241748(12*n)` -/
def P11982141718621966847.Spec : Prop :=
  ∀ n, P11982141718621966847.a n = A158546 n

theorem P11982141718621966847.correct : P11982141718621966847.Spec := by
  intro n
  simp only [A158546, Nat.add_sub_cancel, A158546.P11982141718621966847.a, A158546.P11562335720534390101.a, A241748, A241748.P16440024712766360971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158546

/-!
# A158547: a(n) = 24*n^2 + 1.

The programs for A158547, the canonical program `A158547.P1924341594523569015` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158547 has offset 0).

The definition of A158547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n²+1` (program `A158547.P1924341594523569015`, by `A158547.P1924341594523569015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158547.P1924341594523569015

`24*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158547

/-- `24*n²+1` -/
def P1924341594523569015.Spec : Prop :=
  ∀ n, (P1924341594523569015.a n : ℤ) = A158547 n

theorem P1924341594523569015.correct : P1924341594523569015.Spec := by
  intro n
  simp only [A158547]

end A158547

/-! ## A158547.P15206062141411224868

`A227776(2*n)`
-/

namespace A158547.P15206062141411224868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 (2 * n)

end

end A158547.P15206062141411224868

namespace A158547

/-- `A227776(2*n)` -/
def P15206062141411224868.Spec : Prop :=
  ∀ n, P15206062141411224868.a n = A158547 n

theorem P15206062141411224868.correct : P15206062141411224868.Spec := by
  intro n
  simp only [A158547, Nat.add_sub_cancel, A158547.P15206062141411224868.a, A158547.P1924341594523569015.a, A227776, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158547

/-! ## A158547.P4916500178057152893

`or(1, 24*n²)`
-/

namespace A158547.P4916500178057152893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (24 * n ^ 2)

end

end A158547.P4916500178057152893

namespace A158547

/-- `or(1, 24*n²)` -/
def P4916500178057152893.Spec : Prop :=
  ∀ n, (P4916500178057152893.a n : ℤ) = A158547 n

end A158547

/-! ## A158547.P12074395825166969430

`xor(1, 24*n²)`
-/

namespace A158547.P12074395825166969430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (24 * n ^ 2)

end

end A158547.P12074395825166969430

namespace A158547

/-- `xor(1, 24*n²)` -/
def P12074395825166969430.Spec : Prop :=
  ∀ n, (P12074395825166969430.a n : ℤ) = A158547 n

end A158547

/-! ## A158547.P13745899236255092448

`∑[a(n-1)+48]` with `a(0)=1, a(1)=24`
-/

namespace A158547.P13745899236255092448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158547.P13745899236255092448

namespace A158547

/-- `∑[a(n-1)+48]` -/
def P13745899236255092448.Spec : Prop :=
  ∀ n, (P13745899236255092448.a n : ℤ) = A158547 n

end A158547

/-! ## A158547.P4833649602309488775

`ceil(A158638(n)/2)`
-/

namespace A158547.P4833649602309488775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158638 n : ℚ) / 2⌉

end

end A158547.P4833649602309488775

namespace A158547

/-- `ceil(A158638(n)/2)` -/
def P4833649602309488775.Spec : Prop :=
  ∀ n, P4833649602309488775.a n = A158547 n

end A158547

/-! ## A158547.P6476923247388501884

`ceil(A158740(n)/3)`
-/

namespace A158547.P6476923247388501884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158740 n : ℚ) / 3⌉

end

end A158547.P6476923247388501884

namespace A158547

/-- `ceil(A158740(n)/3)` -/
def P6476923247388501884.Spec : Prop :=
  ∀ n, P6476923247388501884.a n = A158547 n

end A158547

/-! ## A158547.P849009026205323498

`(A065532(n)+3)/2`
-/

namespace A158547.P849009026205323498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065532 n + 3 : ℚ) / 2

end

end A158547.P849009026205323498

namespace A158547

/-- `(A065532(n)+3)/2` -/
def P849009026205323498.Spec : Prop :=
  ∀ n, P849009026205323498.a n = (A158547 n : ℚ)

theorem P849009026205323498.correct : P849009026205323498.Spec := by
  intro n
  simp only [A158547, Nat.add_sub_cancel, A158547.P849009026205323498.a, A158547.P1924341594523569015.a, A065532, A065532.P11573010565156108803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158547

/-! ## A158547.P4462562558363916645

`floor(sqrt((1-A010014(n))²+1))`
-/

namespace A158547.P4462562558363916645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((1 - A010014 n) ^ 2 + 1)

end

end A158547.P4462562558363916645

namespace A158547

/-- `floor(sqrt((1-A010014(n))²+1))` -/
def P4462562558363916645.Spec : Prop :=
  ∀ n, P4462562558363916645.a n = A158547 n

end A158547

/-! ## A158547.P12919922410668050686

`record[(A000265(n+1)-1)*6*n+1]`
-/

namespace A158547.P12919922410668050686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) - 1) * (6 * n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158547.P12919922410668050686

namespace A158547

/-- `record[(A000265(n+1)-1)*6*n+1]` -/
def P12919922410668050686.Spec : Prop :=
  ∀ n, P12919922410668050686.a n = A158547 n

end A158547

/-! ## A158547.P4605228779573519165

`Δ[(n-1)*A080856(n)]`
-/

namespace A158547.P4605228779573519165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A080856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158547.P4605228779573519165

namespace A158547

/-- `Δ[(n-1)*A080856(n)]` -/
def P4605228779573519165.Spec : Prop :=
  ∀ n, P4605228779573519165.a n = A158547 n

theorem P4605228779573519165.correct : P4605228779573519165.Spec := by
  intro n
  simp only [A158547, Nat.add_sub_cancel, A158547.P4605228779573519165.f1, A158547.P4605228779573519165.a, A158547.P1924341594523569015.a, A080856, A080856.P3251155691184586344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158547

/-! ## A158547.P17417360325968766714

`ceil(A005914(2*n)/2)`
-/

namespace A158547.P17417360325968766714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005914 (2 * n) : ℚ) / 2⌉

end

end A158547.P17417360325968766714

namespace A158547

/-- `ceil(A005914(2*n)/2)` -/
def P17417360325968766714.Spec : Prop :=
  ∀ n, P17417360325968766714.a n = A158547 n

end A158547

/-! ## A158547.P16180820844136553921

`round(A158480(2*n)/2)`
-/

namespace A158547.P16180820844136553921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A158480 (2 * n) : ℚ) / 2)

end

end A158547.P16180820844136553921

namespace A158547

/-- `round(A158480(2*n)/2)` -/
def P16180820844136553921.Spec : Prop :=
  ∀ n, P16180820844136553921.a n = A158547 n

end A158547

/-! ## A158547.P12042213362423565126

`Δ[A007531(2*n)+n]`
-/

namespace A158547.P12042213362423565126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158547.P12042213362423565126

namespace A158547

/-- `Δ[A007531(2*n)+n]` -/
def P12042213362423565126.Spec : Prop :=
  ∀ n, P12042213362423565126.a n = A158547 n

theorem P12042213362423565126.correct : P12042213362423565126.Spec := by
  intro n
  simp only [A158547, Nat.add_sub_cancel, A158547.P12042213362423565126.f1, A158547.P12042213362423565126.a, A158547.P1924341594523569015.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158547

/-! ## A158547.P15358208730733525786

`ceil(A158575(3*n)/12)`
-/

namespace A158547.P15358208730733525786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158575 (3 * n) : ℚ) / 12⌉

end

end A158547.P15358208730733525786

namespace A158547

/-- `ceil(A158575(3*n)/12)` -/
def P15358208730733525786.Spec : Prop :=
  ∀ n, P15358208730733525786.a n = A158547 n

end A158547

/-! ## A158547.P3755605841715593978

`A084672(6*n)`
-/

namespace A158547.P3755605841715593978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 (6 * n)

end

end A158547.P3755605841715593978

namespace A158547

/-- `A084672(6*n)` -/
def P3755605841715593978.Spec : Prop :=
  ∀ n, P3755605841715593978.a n = A158547 n

end A158547

/-! ## A158547.P11930195825699459353

`A194069(A008458(n))`
-/

namespace A158547.P11930195825699459353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194069 (A008458 n).toNat

end

end A158547.P11930195825699459353

namespace A158547

/-- `A194069(A008458(n))` -/
def P11930195825699459353.Spec : Prop :=
  ∀ n, P11930195825699459353.a n = A158547 n

end A158547

/-! ## A158547.P16279315104047407298

`abs(A010014(n)-A051904(n²+1))`
-/

namespace A158547.P16279315104047407298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010014 n - A051904 (n ^ 2 + 1)|

end

end A158547.P16279315104047407298

namespace A158547

/-- `abs(A010014(n)-A051904(n²+1))` -/
def P16279315104047407298.Spec : Prop :=
  ∀ n, P16279315104047407298.a n = A158547 n

end A158547

/-! ## A158547.P3752560328197029309

`A103214(n²)`
-/

namespace A158547.P3752560328197029309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (n ^ 2)

end

end A158547.P3752560328197029309

namespace A158547

/-- `A103214(n²)` -/
def P3752560328197029309.Spec : Prop :=
  ∀ n, P3752560328197029309.a n = A158547 n

end A158547

/-! ## A158547.P15916732396194502950

`∩[A084672(n), A103214(n)]`
-/

namespace A158547.P15916732396194502950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158547.P15916732396194502950

namespace A158547

/-- `∩[A084672(n), A103214(n)]` -/
def P15916732396194502950.Spec : Prop :=
  ∀ n, (P15916732396194502950.a n : ℤ) = A158547 n

end A158547

/-!
# A158548: a(n) = 169*n^2 + 13.

The programs for A158548, the canonical program `A158548.P9200089655691650226` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158548 has offset 0).

The definition of A158548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `169*n²+13` (program `A158548.P9200089655691650226`, by `A158548.P9200089655691650226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158548.P9200089655691650226

`169*n²+13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158548

/-- `169*n²+13` -/
def P9200089655691650226.Spec : Prop :=
  ∀ n, (P9200089655691650226.a n : ℤ) = A158548 n

theorem P9200089655691650226.correct : P9200089655691650226.Spec := by
  intro n
  simp only [A158548]

end A158548

/-! ## A158548.P4671939188418476248

`lcm(13, 13*n*n+1)`
-/

namespace A158548.P4671939188418476248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 13 (13 * (n * n) + 1)

end

end A158548.P4671939188418476248

namespace A158548

/-- `lcm(13, 13*n*n+1)` -/
def P4671939188418476248.Spec : Prop :=
  ∀ n, (P4671939188418476248.a n : ℤ) = A158548 n

end A158548

/-! ## A158548.P21367132685578813

`∑[338+a(n-1)]` with `a(0)=13, a(1)=169`
-/

namespace A158548.P21367132685578813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 169] fun n f1 =>
  338 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158548.P21367132685578813

namespace A158548

/-- `∑[338+a(n-1)]` -/
def P21367132685578813.Spec : Prop :=
  ∀ n, (P21367132685578813.a n : ℤ) = A158548 n

end A158548

/-! ## A158548.P4889777069987272119

`13*(A152742(n)+1)`
-/

namespace A158548.P4889777069987272119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (A152742 n + 1)

end

end A158548.P4889777069987272119

namespace A158548

/-- `13*(A152742(n)+1)` -/
def P4889777069987272119.Spec : Prop :=
  ∀ n, P4889777069987272119.a n = A158548 n

theorem P4889777069987272119.correct : P4889777069987272119.Spec := by
  intro n
  simp only [A158548, Nat.add_sub_cancel, A158548.P4889777069987272119.a, A158548.P9200089655691650226.a, A152742, A152742.P4687310680346739208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158548

/-! ## A158548.P7952669740803694176

`lcm(26, A010016(n))/2`
-/

namespace A158548.P7952669740803694176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 26 (A010016 n) : ℚ) / 2

end

end A158548.P7952669740803694176

namespace A158548

/-- `lcm(26, A010016(n))/2` -/
def P7952669740803694176.Spec : Prop :=
  ∀ n, P7952669740803694176.a n = (A158548 n : ℚ)

end A158548

/-! ## A158548.P9552997910047153354

`13*(13*A000290(n)+1)`
-/

namespace A158548.P9552997910047153354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (13 * A000290 n + 1)

end

end A158548.P9552997910047153354

namespace A158548

/-- `13*(13*A000290(n)+1)` -/
def P9552997910047153354.Spec : Prop :=
  ∀ n, P9552997910047153354.a n = A158548 n

theorem P9552997910047153354.correct : P9552997910047153354.Spec := by
  intro n
  simp only [A158548, Nat.add_sub_cancel, A158548.P9552997910047153354.a, A158548.P9200089655691650226.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158548

/-! ## A158548.P12134247630648863406

`A241749(13*n)`
-/

namespace A158548.P12134247630648863406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241749 (13 * n)

end

end A158548.P12134247630648863406

namespace A158548

/-- `A241749(13*n)` -/
def P12134247630648863406.Spec : Prop :=
  ∀ n, P12134247630648863406.a n = A158548 n

theorem P12134247630648863406.correct : P12134247630648863406.Spec := by
  intro n
  simp only [A158548, Nat.add_sub_cancel, A158548.P12134247630648863406.a, A158548.P9200089655691650226.a, A241749, A241749.P16244220396534045988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158548

/-! ## A158548.P1674913703190503005

`13*A190991(n²)`
-/

namespace A158548.P1674913703190503005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A190991 (n ^ 2)

end

end A158548.P1674913703190503005

namespace A158548

/-- `13*A190991(n²)` -/
def P1674913703190503005.Spec : Prop :=
  ∀ n, P1674913703190503005.a n = A158548 n

theorem P1674913703190503005.correct : P1674913703190503005.Spec := by
  intro n
  simp only [A158548, Nat.add_sub_cancel, A158548.P1674913703190503005.a, A158548.P9200089655691650226.a, A190991, A190991.P11410187498899268460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158548

/-! ## A158548.P17260904756616539050

`13*A112653(A058331(n))`
-/

namespace A158548.P17260904756616539050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A112653 (A058331 n).toNat

end

end A158548.P17260904756616539050

namespace A158548

/-- `13*A112653(A058331(n))` -/
def P17260904756616539050.Spec : Prop :=
  ∀ n, P17260904756616539050.a n = A158548 n

end A158548

/-!
# A158549: a(n) = 26*n^2 + 1.

The programs for A158549, the canonical program `A158549.P4119665566555301062` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158549 has offset 0).

The definition of A158549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*n²+1` (program `A158549.P4119665566555301062`, by `A158549.P4119665566555301062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158549.P4119665566555301062

`26*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158549

/-- `26*n²+1` -/
def P4119665566555301062.Spec : Prop :=
  ∀ n, (P4119665566555301062.a n : ℤ) = A158549 n

theorem P4119665566555301062.correct : P4119665566555301062.Spec := by
  intro n
  simp only [A158549]

end A158549

/-! ## A158549.P1065742051188038946

`or(1, 26*n²)`
-/

namespace A158549.P1065742051188038946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (26 * n ^ 2)

end

end A158549.P1065742051188038946

namespace A158549

/-- `or(1, 26*n²)` -/
def P1065742051188038946.Spec : Prop :=
  ∀ n, (P1065742051188038946.a n : ℤ) = A158549 n

end A158549

/-! ## A158549.P9704723950058092581

`xor(1, 26*n²)`
-/

namespace A158549.P9704723950058092581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (26 * n ^ 2)

end

end A158549.P9704723950058092581

namespace A158549

/-- `xor(1, 26*n²)` -/
def P9704723950058092581.Spec : Prop :=
  ∀ n, (P9704723950058092581.a n : ℤ) = A158549 n

end A158549

/-! ## A158549.P6084540559769054744

`ceil(A158644(n)/2)`
-/

namespace A158549.P6084540559769054744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158644 n : ℚ) / 2⌉

end

end A158549.P6084540559769054744

namespace A158549

/-- `ceil(A158644(n)/2)` -/
def P6084540559769054744.Spec : Prop :=
  ∀ n, P6084540559769054744.a n = A158549 n

end A158549

/-! ## A158549.P15636429131977250489

`ceil(A158769(n)/3)`
-/

namespace A158549.P15636429131977250489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158769 n : ℚ) / 3⌉

end

end A158549.P15636429131977250489

namespace A158549

/-- `ceil(A158769(n)/3)` -/
def P15636429131977250489.Spec : Prop :=
  ∀ n, P15636429131977250489.a n = A158549 n

end A158549

/-! ## A158549.P12693568008470789983

`ceil(A010004(2*n)/2)`
-/

namespace A158549.P12693568008470789983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010004 (2 * n) : ℚ) / 2⌉

end

end A158549.P12693568008470789983

namespace A158549

/-- `ceil(A010004(2*n)/2)` -/
def P12693568008470789983.Spec : Prop :=
  ∀ n, P12693568008470789983.a n = A158549 n

end A158549

/-! ## A158549.P5156052786811081766

`A190991(2*n²)`
-/

namespace A158549.P5156052786811081766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (2 * n ^ 2)

end

end A158549.P5156052786811081766

namespace A158549

/-- `A190991(2*n²)` -/
def P5156052786811081766.Spec : Prop :=
  ∀ n, P5156052786811081766.a n = A158549 n

theorem P5156052786811081766.correct : P5156052786811081766.Spec := by
  intro n
  simp only [A158549, Nat.add_sub_cancel, A158549.P5156052786811081766.a, A158549.P4119665566555301062.a, A190991, A190991.P11410187498899268460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158549

/-! ## A158549.P11082752233278458993

`ceil((2*A008595(n*2*n)+1)/2)`
-/

namespace A158549.P11082752233278458993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A008595 (n * (2 * n)) + 1 : ℚ) / 2⌉

end

end A158549.P11082752233278458993

namespace A158549

/-- `ceil((2*A008595(n*2*n)+1)/2)` -/
def P11082752233278458993.Spec : Prop :=
  ∀ n, P11082752233278458993.a n = A158549 n

end A158549

/-! ## A158549.P2257144623021336659

`A106389(A053755(n))`
-/

namespace A158549.P2257144623021336659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (A053755 n).toNat

end

end A158549.P2257144623021336659

namespace A158549

/-- `A106389(A053755(n))` -/
def P2257144623021336659.Spec : Prop :=
  ∀ n, P2257144623021336659.a n = A158549 n

end A158549

/-!
# A158550: a(n) = 169*n^2 - 13.

The programs for A158550, the canonical program `A158550.P17584470881348121547` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158550 has offset 1).

The definition of A158550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `169*(n+1)²-13` (program `A158550.P17584470881348121547`, by `A158550.P17584470881348121547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158550.P17584470881348121547

`169*(n+1)²-13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158550

/-- `169*(n+1)²-13` -/
def P17584470881348121547.Spec : Prop :=
  ∀ n, P17584470881348121547.a n = A158550 (n + 1)

theorem P17584470881348121547.correct : P17584470881348121547.Spec := by
  intro n
  simp only [A158550, Nat.add_sub_cancel]

end A158550

/-! ## A158550.P14538774690338664538

`record[(13*(1-n))²-13]`
-/

namespace A158550.P14538774690338664538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * (1 - (n : ℤ))) ^ 2 - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158550.P14538774690338664538

namespace A158550

/-- `record[(13*(1-n))²-13]` -/
def P14538774690338664538.Spec : Prop :=
  ∀ n, P14538774690338664538.a n = A158550 (n + 1)

end A158550

/-! ## A158550.P14703186537207288762

`lcm(13, 1-13*(n+1)*(n+1))`
-/

namespace A158550.P14703186537207288762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (1 - (13 * ((n + 1) * (n + 1)) : ℤ))

end

end A158550.P14703186537207288762

namespace A158550

/-- `lcm(13, 1-13*(n+1)*(n+1))` -/
def P14703186537207288762.Spec : Prop :=
  ∀ n, (P14703186537207288762.a n : ℤ) = A158550 (n + 1)

end A158550

/-! ## A158550.P16151284164416367629

`13*(13*A000290(n+1)-1)`
-/

namespace A158550.P16151284164416367629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (13 * A000290 (n + 1) - 1)

end

end A158550.P16151284164416367629

namespace A158550

/-- `13*(13*A000290(n+1)-1)` -/
def P16151284164416367629.Spec : Prop :=
  ∀ n, P16151284164416367629.a n = A158550 (n + 1)

theorem P16151284164416367629.correct : P16151284164416367629.Spec := by
  intro n
  simp only [A158550, Nat.add_sub_cancel, A158550.P16151284164416367629.a, A158550.P17584470881348121547.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158550

/-! ## A158550.P17665345820321782079

`A127146(A154609(n+1))`
-/

namespace A158550.P17665345820321782079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127146 (A154609 (n + 1)).toNat

end

end A158550.P17665345820321782079

namespace A158550

/-- `A127146(A154609(n+1))` -/
def P17665345820321782079.Spec : Prop :=
  ∀ n, P17665345820321782079.a n = A158550 (n + 1)

end A158550

/-! ## A158550.P18049649249461540962

`(A000463(52*(n+1))-52)/4`
-/

namespace A158550.P18049649249461540962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (52 * (n + 1)) - 52 : ℚ) / 4

end

end A158550.P18049649249461540962

namespace A158550

/-- `(A000463(52*(n+1))-52)/4` -/
def P18049649249461540962.Spec : Prop :=
  ∀ n, P18049649249461540962.a n = (A158550 (n + 1) : ℚ)

end A158550

/-!
# A158551: a(n) = 26*n^2 - 1.

The programs for A158551, the canonical program `A158551.P5984939618370270517` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158551 has offset 1).

The definition of A158551 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*(n+1)²-1` (program `A158551.P5984939618370270517`, by `A158551.P5984939618370270517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158551.P5984939618370270517

`26*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158551

/-- `26*(n+1)²-1` -/
def P5984939618370270517.Spec : Prop :=
  ∀ n, P5984939618370270517.a n = A158551 (n + 1)

theorem P5984939618370270517.correct : P5984939618370270517.Spec := by
  intro n
  simp only [A158551, Nat.add_sub_cancel]

end A158551

/-! ## A158551.P14700773219915514031

`abs(2-A158549(n+1))`
-/

namespace A158551.P14700773219915514031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158549 (n + 1)|

end

end A158551.P14700773219915514031

namespace A158551

/-- `abs(2-A158549(n+1))` -/
def P14700773219915514031.Spec : Prop :=
  ∀ n, P14700773219915514031.a n = A158551 (n + 1)

end A158551

/-! ## A158551.P4780014822825340431

`floor(A158640(n+1)/2)`
-/

namespace A158551.P4780014822825340431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158640 (n + 1) : ℚ) / 2⌋

end

end A158551.P4780014822825340431

namespace A158551

/-- `floor(A158640(n+1)/2)` -/
def P4780014822825340431.Spec : Prop :=
  ∀ n, P4780014822825340431.a n = A158551 (n + 1)

end A158551

/-! ## A158551.P17110257417900106553

`floor(A158771(n+1)/3)`
-/

namespace A158551.P17110257417900106553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158771 (n + 1) : ℚ) / 3⌋

end

end A158551.P17110257417900106553

namespace A158551

/-- `floor(A158771(n+1)/3)` -/
def P17110257417900106553.Spec : Prop :=
  ∀ n, P17110257417900106553.a n = A158551 (n + 1)

end A158551

/-! ## A158551.P3968904839071896573

`(A158644(n+1)-3)/2`
-/

namespace A158551.P3968904839071896573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158644 (n + 1) - 3 : ℚ) / 2

end

end A158551.P3968904839071896573

namespace A158551

/-- `(A158644(n+1)-3)/2` -/
def P3968904839071896573.Spec : Prop :=
  ∀ n, P3968904839071896573.a n = (A158551 (n + 1) : ℚ)

theorem P3968904839071896573.correct : P3968904839071896573.Spec := by
  intro n
  simp only [A158551, Nat.add_sub_cancel, A158551.P3968904839071896573.a, A158551.P5984939618370270517.a, A158644, A158644.P15086344085195836591.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158551

/-! ## A158551.P5954593196312481559

`abs(1-(∑[A053742(n)]+(n+1)²))`
-/

namespace A158551.P5954593196312481559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ))|

end

end A158551.P5954593196312481559

namespace A158551

/-- `abs(1-(∑[A053742(n)]+(n+1)²))` -/
def P5954593196312481559.Spec : Prop :=
  ∀ n, P5954593196312481559.a n = A158551 (n + 1)

end A158551

/-! ## A158551.P9211854699684673297

`(A158730(n+1)-A108211(n+1))/2`
-/

namespace A158551.P9211854699684673297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158730 (n + 1) - A108211 (n + 1) : ℚ) / 2

end

end A158551.P9211854699684673297

namespace A158551

/-- `(A158730(n+1)-A108211(n+1))/2` -/
def P9211854699684673297.Spec : Prop :=
  ∀ n, P9211854699684673297.a n = (A158551 (n + 1) : ℚ)

theorem P9211854699684673297.correct : P9211854699684673297.Spec := by
  intro n
  simp only [A158551, Nat.add_sub_cancel, A158551.P9211854699684673297.a, A158551.P5984939618370270517.a, A108211, A108211.P17641433821935710279.a, A158730, A158730.P13211681437165183510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158551

/-! ## A158551.P8129839684098026608

`A304840((n+1)²)/2`
-/

namespace A158551.P8129839684098026608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304840 ((n + 1) ^ 2) : ℚ) / 2

end

end A158551.P8129839684098026608

namespace A158551

/-- `A304840((n+1)²)/2` -/
def P8129839684098026608.Spec : Prop :=
  ∀ n, P8129839684098026608.a n = (A158551 (n + 1) : ℚ)

end A158551

/-! ## A158551.P3167156360267032072

`A175886((2*(n+1))²)`
-/

namespace A158551.P3167156360267032072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 ((2 * (n + 1)) ^ 2)

end

end A158551.P3167156360267032072

namespace A158551

/-- `A175886((2*(n+1))²)` -/
def P3167156360267032072.Spec : Prop :=
  ∀ n, P3167156360267032072.a n = A158551 (n + 1)

end A158551

/-!
# A158552: a(n) = A144433(n) - A106833(n).

The programs for A158552, the canonical program `A158552.P7680842235153735162` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158552 has offset 1).

The definition of A158552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158552.P7680842235153735162

`A144433(n+1)-A106833(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A158552

/-- `A144433(n+1)-A106833(n+1)` -/
def P7680842235153735162.Spec : Prop :=
  ∀ n, P7680842235153735162.a n = A158552 (n + 1)

theorem P7680842235153735162.correct : P7680842235153735162.Spec := by
  intro n
  simp only [A158552, Nat.add_sub_cancel]

end A158552

/-! ## A158552.P17895124313376115214

`A118402(n+4)`
-/

namespace A158552.P17895124313376115214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118402 (n + 4)

end

end A158552.P17895124313376115214

namespace A158552

/-- `A118402(n+4)` -/
def P17895124313376115214.Spec : Prop :=
  ∀ n, P17895124313376115214.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P12051559877041127460

`Δ[lcm(2, n+2)]+1`
-/

namespace A158552.P12051559877041127460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A158552.P12051559877041127460

namespace A158552

/-- `Δ[lcm(2, n+2)]+1` -/
def P12051559877041127460.Spec : Prop :=
  ∀ n, P12051559877041127460.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P12788596266276626172

`3-Δ[or(n, (-1)^n)]`
-/

namespace A158552.P12788596266276626172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A158552.P12788596266276626172

namespace A158552

/-- `3-Δ[or(n, (-1)^n)]` -/
def P12788596266276626172.Spec : Prop :=
  ∀ n, P12788596266276626172.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P11681967803334552293

`∑[ogf((5+4x+x^2)/(1+2x+x^2))]`
-/

namespace A158552.P11681967803334552293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, 1] [1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158552.P11681967803334552293

namespace A158552

/-- `∑[ogf((5+4x+x^2)/(1+2x+x^2))]` -/
def P11681967803334552293.Spec : Prop :=
  ∀ n, P11681967803334552293.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P1984288048422949933

`ogf((5+4x+x^2)/(1+x-x^2-x^3))`
-/

namespace A158552.P1984288048422949933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, 1] [1, 1, -1, -1] n

end

end A158552.P1984288048422949933

namespace A158552

/-- `ogf((5+4x+x^2)/(1+x-x^2-x^3))` -/
def P1984288048422949933.Spec : Prop :=
  ∀ n, P1984288048422949933.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P10125811797136687515

`xor(n+2, -(n%2))+3`
-/

namespace A158552.P10125811797136687515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (-((n % 2 : ℕ) : ℤ)) + 3

end

end A158552.P10125811797136687515

namespace A158552

/-- `xor(n+2, -(n%2))+3` -/
def P10125811797136687515.Spec : Prop :=
  ∀ n, P10125811797136687515.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P10674629364838365825

`xor(n+2, -and(1, n))+3`
-/

namespace A158552.P10674629364838365825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (-(Nat.land 1 n : ℤ)) + 3

end

end A158552.P10674629364838365825

namespace A158552

/-- `xor(n+2, -and(1, n))+3` -/
def P10674629364838365825.Spec : Prop :=
  ∀ n, P10674629364838365825.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P8350647536978192859

`4-Δ[(n+2)*gcd(2, n)]`
-/

namespace A158552.P8350647536978192859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A158552.P8350647536978192859

namespace A158552

/-- `4-Δ[(n+2)*gcd(2, n)]` -/
def P8350647536978192859.Spec : Prop :=
  ∀ n, P8350647536978192859.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P3979252749616213878

`Δ[(and(1, n)+2)*(n+2)]`
-/

namespace A158552.P3979252749616213878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 2) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158552.P3979252749616213878

namespace A158552

/-- `Δ[(and(1, n)+2)*(n+2)]` -/
def P3979252749616213878.Spec : Prop :=
  ∀ n, P3979252749616213878.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P9321363206437127475

`Δ[(n+3)^and(1, n)]+2`
-/

namespace A158552.P9321363206437127475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A158552.P9321363206437127475

namespace A158552

/-- `Δ[(n+3)^and(1, n)]+2` -/
def P9321363206437127475.Spec : Prop :=
  ∀ n, P9321363206437127475.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P7139661697497764708

`Δ[C(n+3, and(1, n))]+2`
-/

namespace A158552.P7139661697497764708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A158552.P7139661697497764708

namespace A158552

/-- `Δ[C(n+3, and(1, n))]+2` -/
def P7139661697497764708.Spec : Prop :=
  ∀ n, P7139661697497764708.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P3045931868645423897

`(-1)^n+5-a(n-1)` with `a(0)=5`
-/

namespace A158552.P3045931868645423897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (-1) ^ n + (5 - a (n - 1))

end

end A158552.P3045931868645423897

namespace A158552

/-- `(-1)^n+5-a(n-1)` -/
def P3045931868645423897.Spec : Prop :=
  ∀ n, P3045931868645423897.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P8457086559215141809

`5-(a(n-1)-(-1)^n)` with `a(0)=5`
-/

namespace A158552.P8457086559215141809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 - (a (n - 1) - (-1) ^ n)

end

end A158552.P8457086559215141809

namespace A158552

/-- `5-(a(n-1)-(-1)^n)` -/
def P8457086559215141809.Spec : Prop :=
  ∀ n, P8457086559215141809.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P11518784032883902226

`Δ[gcd(n+3, and(1, n+1))]+2`
-/

namespace A158552.P11518784032883902226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A158552.P11518784032883902226

namespace A158552

/-- `Δ[gcd(n+3, and(1, n+1))]+2` -/
def P11518784032883902226.Spec : Prop :=
  ∀ n, P11518784032883902226.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P15575220400193125706

`(2*n+5)*char[2*n]-n`
-/

namespace A158552.P15575220400193125706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 5) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - (n : ℤ)

end

end A158552.P15575220400193125706

namespace A158552

/-- `(2*n+5)*char[2*n]-n` -/
def P15575220400193125706.Spec : Prop :=
  ∀ n, P15575220400193125706.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P9891923240559392275

`Δ[(n+2)*(n+3-or(1, n))]`
-/

namespace A158552.P9891923240559392275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n + 3 : ℤ) - (Nat.lor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158552.P9891923240559392275

namespace A158552

/-- `Δ[(n+2)*(n+3-or(1, n))]` -/
def P9891923240559392275.Spec : Prop :=
  ∀ n, P9891923240559392275.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P3891603312032088530

`Δ[(val(n²+1, 2)+2)*(n+2)]`
-/

namespace A158552.P3891603312032088530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n ^ 2 + 1) 2 + 2) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158552.P3891603312032088530

namespace A158552

/-- `Δ[(val(n²+1, 2)+2)*(n+2)]` -/
def P3891603312032088530.Spec : Prop :=
  ∀ n, P3891603312032088530.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P1804242750480832750

`Δ[(gcd(2*n, (n+1)²)+1)*(n+2)]`
-/

namespace A158552.P1804242750480832750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) ((n + 1) ^ 2) + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158552.P1804242750480832750

namespace A158552

/-- `Δ[(gcd(2*n, (n+1)²)+1)*(n+2)]` -/
def P1804242750480832750.Spec : Prop :=
  ∀ n, P1804242750480832750.a n = A158552 (n + 1)

end A158552

/-! ## A158552.P11438809179032928945

`Δ[(n+2)*(A316828(n)!+1)]`
-/

namespace A158552.P11438809179032928945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (Nat.factorial (A316828 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158552.P11438809179032928945

namespace A158552

/-- `Δ[(n+2)*(A316828(n)!+1)]` -/
def P11438809179032928945.Spec : Prop :=
  ∀ n, P11438809179032928945.a n = A158552 (n + 1)

end A158552

/-!
# A158553: a(n) = 196*n^2 - 14.

The programs for A158553, the canonical program `A158553.P6895713599370082387` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158553 has offset 1).

The definition of A158553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `196*(n+1)²-14` (program `A158553.P6895713599370082387`, by `A158553.P6895713599370082387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158553.P6895713599370082387

`196*(n+1)²-14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158553

/-- `196*(n+1)²-14` -/
def P6895713599370082387.Spec : Prop :=
  ∀ n, P6895713599370082387.a n = A158553 (n + 1)

theorem P6895713599370082387.correct : P6895713599370082387.Spec := by
  intro n
  simp only [A158553, Nat.add_sub_cancel]

end A158553

/-! ## A158553.P11788927312057391695

`14*A158485(n+1)`
-/

namespace A158553.P11788927312057391695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A158485 (n + 1)

end

end A158553.P11788927312057391695

namespace A158553

/-- `14*A158485(n+1)` -/
def P11788927312057391695.Spec : Prop :=
  ∀ n, P11788927312057391695.a n = A158553 (n + 1)

theorem P11788927312057391695.correct : P11788927312057391695.Spec := by
  intro n
  simp only [A158553, Nat.add_sub_cancel, A158553.P11788927312057391695.a, A158553.P6895713599370082387.a, A158485, A158485.P15843754978112244489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158553

/-! ## A158553.P15900107247393312461

`7*(A158554(n+1)-1)`
-/

namespace A158553.P15900107247393312461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A158554 (n + 1) - 1)

end

end A158553.P15900107247393312461

namespace A158553

/-- `7*(A158554(n+1)-1)` -/
def P15900107247393312461.Spec : Prop :=
  ∀ n, P15900107247393312461.a n = A158553 (n + 1)

theorem P15900107247393312461.correct : P15900107247393312461.Spec := by
  intro n
  simp only [A158553, Nat.add_sub_cancel, A158553.P15900107247393312461.a, A158553.P6895713599370082387.a, A158554, A158554.P844351326912008475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158553

/-! ## A158553.P13374216323169120243

`14*(14*A000290(n+1)-1)`
-/

namespace A158553.P13374216323169120243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (14 * A000290 (n + 1) - 1)

end

end A158553.P13374216323169120243

namespace A158553

/-- `14*(14*A000290(n+1)-1)` -/
def P13374216323169120243.Spec : Prop :=
  ∀ n, P13374216323169120243.a n = A158553 (n + 1)

theorem P13374216323169120243.correct : P13374216323169120243.Spec := by
  intro n
  simp only [A158553, Nat.add_sub_cancel, A158553.P13374216323169120243.a, A158553.P6895713599370082387.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158553

/-! ## A158553.P7391430712602152108

`7*(7*A016742(n+1)-2)`
-/

namespace A158553.P7391430712602152108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (7 * A016742 (n + 1) - 2)

end

end A158553.P7391430712602152108

namespace A158553

/-- `7*(7*A016742(n+1)-2)` -/
def P7391430712602152108.Spec : Prop :=
  ∀ n, P7391430712602152108.a n = A158553 (n + 1)

theorem P7391430712602152108.correct : P7391430712602152108.Spec := by
  intro n
  simp only [A158553, Nat.add_sub_cancel, A158553.P7391430712602152108.a, A158553.P6895713599370082387.a, A016742, A016742.P17821809754172938154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158553

/-! ## A158553.P3169368715873964375

`Δ[∑[A008596(n)²]-A008596(n)]`
-/

namespace A158553.P3169368715873964375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158553.P3169368715873964375

namespace A158553

/-- `Δ[∑[A008596(n)²]-A008596(n)]` -/
def P3169368715873964375.Spec : Prop :=
  ∀ n, P3169368715873964375.a n = A158553 (n + 1)

end A158553

/-!
# A158554: a(n) = 28*n^2 - 1.

The programs for A158554, the canonical program `A158554.P844351326912008475` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158554 has offset 1).

The definition of A158554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*(n+1)²-1` (program `A158554.P844351326912008475`, by `A158554.P844351326912008475.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158554.P844351326912008475

`28*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158554

/-- `28*(n+1)²-1` -/
def P844351326912008475.Spec : Prop :=
  ∀ n, P844351326912008475.a n = A158554 (n + 1)

theorem P844351326912008475.correct : P844351326912008475.Spec := by
  intro n
  simp only [A158554, Nat.add_sub_cancel]

end A158554

/-! ## A158554.P2481411531987427116

`floor(A158658(n+1)/2)`
-/

namespace A158554.P2481411531987427116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158658 (n + 1) : ℚ) / 2⌋

end

end A158554.P2481411531987427116

namespace A158554

/-- `floor(A158658(n+1)/2)` -/
def P2481411531987427116.Spec : Prop :=
  ∀ n, P2481411531987427116.a n = A158554 (n + 1)

end A158554

/-! ## A158554.P56300790588634803

`(A158660(n+1)-3)/2`
-/

namespace A158554.P56300790588634803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158660 (n + 1) - 3 : ℚ) / 2

end

end A158554.P56300790588634803

namespace A158554

/-- `(A158660(n+1)-3)/2` -/
def P56300790588634803.Spec : Prop :=
  ∀ n, P56300790588634803.a n = (A158554 (n + 1) : ℚ)

theorem P56300790588634803.correct : P56300790588634803.Spec := by
  intro n
  simp only [A158554, Nat.add_sub_cancel, A158554.P56300790588634803.a, A158554.P844351326912008475.a, A158660, A158660.P11271612442515931679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158554

/-! ## A158554.P12974236575402059707

`(A210645(n+1)-3)/3`
-/

namespace A158554.P12974236575402059707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210645 (n + 1) - 3 : ℚ) / 3

end

end A158554.P12974236575402059707

namespace A158554

/-- `(A210645(n+1)-3)/3` -/
def P12974236575402059707.Spec : Prop :=
  ∀ n, P12974236575402059707.a n = (A158554 (n + 1) : ℚ)

theorem P12974236575402059707.correct : P12974236575402059707.Spec := by
  intro n
  simp only [A158554, Nat.add_sub_cancel, A158554.P12974236575402059707.a, A158554.P844351326912008475.a, A210645, A210645.P11962332448011689548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158554

/-! ## A158554.P7330293305943993487

`A069076(n+1)%A157912(n+1)`
-/

namespace A158554.P7330293305943993487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069076 (n + 1)) (A157912 (n + 1))

end

end A158554.P7330293305943993487

namespace A158554

/-- `A069076(n+1)%A157912(n+1)` -/
def P7330293305943993487.Spec : Prop :=
  ∀ n, P7330293305943993487.a n = A158554 (n + 1)

end A158554

/-! ## A158554.P10751524912767837005

`(A158736(n+1)-A158482(n+1))/2`
-/

namespace A158554.P10751524912767837005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158736 (n + 1) - A158482 (n + 1) : ℚ) / 2

end

end A158554.P10751524912767837005

namespace A158554

/-- `(A158736(n+1)-A158482(n+1))/2` -/
def P10751524912767837005.Spec : Prop :=
  ∀ n, P10751524912767837005.a n = (A158554 (n + 1) : ℚ)

theorem P10751524912767837005.correct : P10751524912767837005.Spec := by
  intro n
  simp only [A158554, Nat.add_sub_cancel, A158554.P10751524912767837005.a, A158554.P844351326912008475.a, A158482, A158482.P9203100436480343542.a, A158736, A158736.P1921437562563384827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158554

/-! ## A158554.P13885413964550205549

`abs(1-∑[A135628(2*n+1)])`
-/

namespace A158554.P13885413964550205549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A158554.P13885413964550205549

namespace A158554

/-- `abs(1-∑[A135628(2*n+1)])` -/
def P13885413964550205549.Spec : Prop :=
  ∀ n, P13885413964550205549.a n = A158554 (n + 1)

end A158554

/-! ## A158554.P11019561499647739442

`abs(1-14*∑[A004277(Δ[n²])])`
-/

namespace A158554.P11019561499647739442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 14 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A158554.P11019561499647739442

namespace A158554

/-- `abs(1-14*∑[A004277(Δ[n²])])` -/
def P11019561499647739442.Spec : Prop :=
  ∀ n, P11019561499647739442.a n = A158554 (n + 1)

end A158554

/-! ## A158554.P721086900002128031

`or(∑[A135628(2*n+1)]-1, A073784(n+1))`
-/

namespace A158554.P721086900002128031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j - 1) (A073784 (n + 1))

end

end A158554.P721086900002128031

namespace A158554

/-- `or(∑[A135628(2*n+1)]-1, A073784(n+1))` -/
def P721086900002128031.Spec : Prop :=
  ∀ n, P721086900002128031.a n = A158554 (n + 1)

end A158554

/-! ## A158554.P10908150150173697161

`A138988(A358053(n+1))`
-/

namespace A158554.P10908150150173697161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (A358053 (n + 1)).toNat

end

end A158554.P10908150150173697161

namespace A158554

/-- `A138988(A358053(n+1))` -/
def P10908150150173697161.Spec : Prop :=
  ∀ n, P10908150150173697161.a n = A158554 (n + 1)

end A158554

/-! ## A158554.P6199845280959857199

`A333251(A135628(n+1))`
-/

namespace A158554.P6199845280959857199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333251 (A135628 (n + 1)).toNat

end

end A158554.P6199845280959857199

namespace A158554

/-- `A333251(A135628(n+1))` -/
def P6199845280959857199.Spec : Prop :=
  ∀ n, P6199845280959857199.a n = A158554 (n + 1)

end A158554

/-!
# A158555: a(n) = 196*n^2 + 14.

The programs for A158555, the canonical program `A158555.P13691823099996633254` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158555 has offset 0).

The definition of A158555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `196*n²+14` (program `A158555.P13691823099996633254`, by `A158555.P13691823099996633254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158555.P13691823099996633254

`196*n²+14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158555

/-- `196*n²+14` -/
def P13691823099996633254.Spec : Prop :=
  ∀ n, (P13691823099996633254.a n : ℤ) = A158555 n

theorem P13691823099996633254.correct : P13691823099996633254.Spec := by
  intro n
  simp only [A158555]

end A158555

/-! ## A158555.P15843396714797954018

`14*or(1, 14*n²)`
-/

namespace A158555.P15843396714797954018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * Nat.lor 1 (14 * n ^ 2)

end

end A158555.P15843396714797954018

namespace A158555

/-- `14*or(1, 14*n²)` -/
def P15843396714797954018.Spec : Prop :=
  ∀ n, (P15843396714797954018.a n : ℤ) = A158555 n

end A158555

/-! ## A158555.P3981398303845700568

`14*xor(1, 14*n²)`
-/

namespace A158555.P3981398303845700568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * Nat.xor 1 (14 * n ^ 2)

end

end A158555.P3981398303845700568

namespace A158555

/-- `14*xor(1, 14*n²)` -/
def P3981398303845700568.Spec : Prop :=
  ∀ n, (P3981398303845700568.a n : ℤ) = A158555 n

end A158555

/-! ## A158555.P17816017359587319529

`7*(A158556(n)+1)`
-/

namespace A158555.P17816017359587319529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A158556 n + 1)

end

end A158555.P17816017359587319529

namespace A158555

/-- `7*(A158556(n)+1)` -/
def P17816017359587319529.Spec : Prop :=
  ∀ n, P17816017359587319529.a n = A158555 n

theorem P17816017359587319529.correct : P17816017359587319529.Spec := by
  intro n
  simp only [A158555, Nat.add_sub_cancel, A158555.P17816017359587319529.a, A158555.P13691823099996633254.a, A158556, A158556.P2837177840009573916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158555

/-! ## A158555.P4633767614691183174

`2*(2*A016982(n)+7)`
-/

namespace A158555.P4633767614691183174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A016982 n + 7)

end

end A158555.P4633767614691183174

namespace A158555

/-- `2*(2*A016982(n)+7)` -/
def P4633767614691183174.Spec : Prop :=
  ∀ n, P4633767614691183174.a n = A158555 n

theorem P4633767614691183174.correct : P4633767614691183174.Spec := by
  intro n
  simp only [A158555, Nat.add_sub_cancel, A158555.P4633767614691183174.a, A158555.P13691823099996633254.a, A016982, A016982.P14306478648458584256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158555

/-! ## A158555.P13069066667862545243

`14*(14*A000290(n)+1)`
-/

namespace A158555.P13069066667862545243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (14 * A000290 n + 1)

end

end A158555.P13069066667862545243

namespace A158555

/-- `14*(14*A000290(n)+1)` -/
def P13069066667862545243.Spec : Prop :=
  ∀ n, P13069066667862545243.a n = A158555 n

theorem P13069066667862545243.correct : P13069066667862545243.Spec := by
  intro n
  simp only [A158555, Nat.add_sub_cancel, A158555.P13069066667862545243.a, A158555.P13691823099996633254.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158555

/-! ## A158555.P4343819419017762414

`2*(A339048(A008589(n))-2)`
-/

namespace A158555.P4343819419017762414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A339048 (A008589 n).toNat - 2)

end

end A158555.P4343819419017762414

namespace A158555

/-- `2*(A339048(A008589(n))-2)` -/
def P4343819419017762414.Spec : Prop :=
  ∀ n, P4343819419017762414.a n = A158555 n

end A158555

/-! ## A158555.P14721428590571663900

`A114962(14*n)`
-/

namespace A158555.P14721428590571663900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114962 (14 * n)

end

end A158555.P14721428590571663900

namespace A158555

/-- `A114962(14*n)` -/
def P14721428590571663900.Spec : Prop :=
  ∀ n, P14721428590571663900.a n = A158555 n

theorem P14721428590571663900.correct : P14721428590571663900.Spec := by
  intro n
  simp only [A158555, Nat.add_sub_cancel, A158555.P14721428590571663900.a, A158555.P13691823099996633254.a, A114962, A114962.P10271032811468501680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158555

/-!
# A158556: a(n) = 28*n^2 + 1.

The programs for A158556, the canonical program `A158556.P2837177840009573916` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158556 has offset 0).

The definition of A158556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*n²+1` (program `A158556.P2837177840009573916`, by `A158556.P2837177840009573916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158556.P2837177840009573916

`28*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158556

/-- `28*n²+1` -/
def P2837177840009573916.Spec : Prop :=
  ∀ n, (P2837177840009573916.a n : ℤ) = A158556 n

theorem P2837177840009573916.correct : P2837177840009573916.Spec := by
  intro n
  simp only [A158556]

end A158556

/-! ## A158556.P414774708208773115

`A247541(2*n)`
-/

namespace A158556.P414774708208773115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 (2 * n)

end

end A158556.P414774708208773115

namespace A158556

/-- `A247541(2*n)` -/
def P414774708208773115.Spec : Prop :=
  ∀ n, P414774708208773115.a n = A158556 n

theorem P414774708208773115.correct : P414774708208773115.Spec := by
  intro n
  simp only [A158556, Nat.add_sub_cancel, A158556.P414774708208773115.a, A158556.P2837177840009573916.a, A247541, A247541.P3935640903610456510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158556

/-! ## A158556.P2817976201448637933

`or(1, 28*n²)`
-/

namespace A158556.P2817976201448637933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (28 * n ^ 2)

end

end A158556.P2817976201448637933

namespace A158556

/-- `or(1, 28*n²)` -/
def P2817976201448637933.Spec : Prop :=
  ∀ n, (P2817976201448637933.a n : ℤ) = A158556 n

end A158556

/-! ## A158556.P9243238500776141787

`xor(1, 28*n²)`
-/

namespace A158556.P9243238500776141787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (28 * n ^ 2)

end

end A158556.P9243238500776141787

namespace A158556

/-- `xor(1, 28*n²)` -/
def P9243238500776141787.Spec : Prop :=
  ∀ n, (P9243238500776141787.a n : ℤ) = A158556 n

end A158556

/-! ## A158556.P18189842817523340873

`(14*∑[a(n-1)+8]+2)/2` with `a(0)=0, a(1)=4`
-/

namespace A158556.P18189842817523340873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℕ) : ℚ) / 2

end

end A158556.P18189842817523340873

namespace A158556

/-- `(14*∑[a(n-1)+8]+2)/2` -/
def P18189842817523340873.Spec : Prop :=
  ∀ n, P18189842817523340873.a n = (A158556 n : ℚ)

end A158556

/-! ## A158556.P12611567633266702802

`ceil(A158660(n)/2)`
-/

namespace A158556.P12611567633266702802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158660 n : ℚ) / 2⌉

end

end A158556.P12611567633266702802

namespace A158556

/-- `ceil(A158660(n)/2)` -/
def P12611567633266702802.Spec : Prop :=
  ∀ n, P12611567633266702802.a n = A158556 n

end A158556

/-! ## A158556.P3167424048348995858

`(56*A000290(n)+2)/2`
-/

namespace A158556.P3167424048348995858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (56 * A000290 n + 2 : ℚ) / 2

end

end A158556.P3167424048348995858

namespace A158556

/-- `(56*A000290(n)+2)/2` -/
def P3167424048348995858.Spec : Prop :=
  ∀ n, P3167424048348995858.a n = (A158556 n : ℚ)

theorem P3167424048348995858.correct : P3167424048348995858.Spec := by
  intro n
  simp only [A158556, Nat.add_sub_cancel, A158556.P3167424048348995858.a, A158556.P2837177840009573916.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158556

/-! ## A158556.P16619622504072836175

`(7*n*4*A004277(n)+2)/2`
-/

namespace A158556.P16619622504072836175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * n : ℤ) * (4 * A004277 n) + 2 : ℚ) / 2

end

end A158556.P16619622504072836175

namespace A158556

/-- `(7*n*4*A004277(n)+2)/2` -/
def P16619622504072836175.Spec : Prop :=
  ∀ n, P16619622504072836175.a n = (A158556 n : ℚ)

end A158556

/-! ## A158556.P11412169485155760880

`A321324(2*7*n)`
-/

namespace A158556.P11412169485155760880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321324 (2 * (7 * n))

end

end A158556.P11412169485155760880

namespace A158556

/-- `A321324(2*7*n)` -/
def P11412169485155760880.Spec : Prop :=
  ∀ n, P11412169485155760880.a n = A158556 n

end A158556

/-! ## A158556.P11409952893294784953

`A161714(n²)`
-/

namespace A158556.P11409952893294784953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (n ^ 2)

end

end A158556.P11409952893294784953

namespace A158556

/-- `A161714(n²)` -/
def P11409952893294784953.Spec : Prop :=
  ∀ n, P11409952893294784953.a n = A158556 n

end A158556

/-! ## A158556.P4190831071486082500

`∩[A161714(n), A247541(n)]`
-/

namespace A158556.P4190831071486082500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158556.P4190831071486082500

namespace A158556

/-- `∩[A161714(n), A247541(n)]` -/
def P4190831071486082500.Spec : Prop :=
  ∀ n, (P4190831071486082500.a n : ℤ) = A158556 n

end A158556

/-!
# A158557: a(n) = 225*n^2 + 15.

The programs for A158557, the canonical program `A158557.P11518582202496838378` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158557 has offset 0).

The definition of A158557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*n²+15` (program `A158557.P11518582202496838378`, by `A158557.P11518582202496838378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158557.P11518582202496838378

`225*n²+15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158557

/-- `225*n²+15` -/
def P11518582202496838378.Spec : Prop :=
  ∀ n, (P11518582202496838378.a n : ℤ) = A158557 n

theorem P11518582202496838378.correct : P11518582202496838378.Spec := by
  intro n
  simp only [A158557]

end A158557

/-! ## A158557.P18444693264832380933

`lcm(15, 15*n*n+1)`
-/

namespace A158557.P18444693264832380933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 15 (15 * (n * n) + 1)

end

end A158557.P18444693264832380933

namespace A158557

/-- `lcm(15, 15*n*n+1)` -/
def P18444693264832380933.Spec : Prop :=
  ∀ n, (P18444693264832380933.a n : ℤ) = A158557 n

end A158557

/-! ## A158557.P1847278294846554977

`5*(5*A247792(n)-2)`
-/

namespace A158557.P1847278294846554977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A247792 n - 2)

end

end A158557.P1847278294846554977

namespace A158557

/-- `5*(5*A247792(n)-2)` -/
def P1847278294846554977.Spec : Prop :=
  ∀ n, P1847278294846554977.a n = A158557 n

theorem P1847278294846554977.correct : P1847278294846554977.Spec := by
  intro n
  simp only [A158557, Nat.add_sub_cancel, A158557.P1847278294846554977.a, A158557.P11518582202496838378.a, A247792, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158557

/-! ## A158557.P7692634246837130262

`15*(15*A000290(n)+1)`
-/

namespace A158557.P7692634246837130262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (15 * A000290 n + 1)

end

end A158557.P7692634246837130262

namespace A158557

/-- `15*(15*A000290(n)+1)` -/
def P7692634246837130262.Spec : Prop :=
  ∀ n, P7692634246837130262.a n = A158557 n

theorem P7692634246837130262.correct : P7692634246837130262.Spec := by
  intro n
  simp only [A158557, Nat.add_sub_cancel, A158557.P7692634246837130262.a, A158557.P11518582202496838378.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158557

/-! ## A158557.P6949404639601164710

`3*(A033428(5*n)+5)`
-/

namespace A158557.P6949404639601164710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (5 * n) + 5)

end

end A158557.P6949404639601164710

namespace A158557

/-- `3*(A033428(5*n)+5)` -/
def P6949404639601164710.Spec : Prop :=
  ∀ n, P6949404639601164710.a n = A158557 n

theorem P6949404639601164710.correct : P6949404639601164710.Spec := by
  intro n
  simp only [A158557, Nat.add_sub_cancel, A158557.P6949404639601164710.a, A158557.P11518582202496838378.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158557

/-! ## A158557.P3969858695843127927

`A241750(15*n)`
-/

namespace A158557.P3969858695843127927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241750 (15 * n)

end

end A158557.P3969858695843127927

namespace A158557

/-- `A241750(15*n)` -/
def P3969858695843127927.Spec : Prop :=
  ∀ n, P3969858695843127927.a n = A158557 n

theorem P3969858695843127927.correct : P3969858695843127927.Spec := by
  intro n
  simp only [A158557, Nat.add_sub_cancel, A158557.P3969858695843127927.a, A158557.P11518582202496838378.a, A241750, A241750.P13027902610625093173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158557

/-!
# A158558: a(n) = 30*n^2 + 1.

The programs for A158558, the canonical program `A158558.P6619580536631758183` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158558 has offset 0).

The definition of A158558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n²+1` (program `A158558.P6619580536631758183`, by `A158558.P6619580536631758183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158558.P6619580536631758183

`30*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158558

/-- `30*n²+1` -/
def P6619580536631758183.Spec : Prop :=
  ∀ n, (P6619580536631758183.a n : ℤ) = A158558 n

theorem P6619580536631758183.correct : P6619580536631758183.Spec := by
  intro n
  simp only [A158558]

end A158558

/-! ## A158558.P7036193449342238521

`or(1, 30*n²)`
-/

namespace A158558.P7036193449342238521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (30 * n ^ 2)

end

end A158558.P7036193449342238521

namespace A158558

/-- `or(1, 30*n²)` -/
def P7036193449342238521.Spec : Prop :=
  ∀ n, (P7036193449342238521.a n : ℤ) = A158558 n

end A158558

/-! ## A158558.P8601648312080358712

`xor(1, 30*n²)`
-/

namespace A158558.P8601648312080358712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (30 * n ^ 2)

end

end A158558.P8601648312080358712

namespace A158558

/-- `xor(1, 30*n²)` -/
def P8601648312080358712.Spec : Prop :=
  ∀ n, (P8601648312080358712.a n : ℤ) = A158558 n

end A158558

/-! ## A158558.P4664740458582622315

`ceil(A158673(n)/2)`
-/

namespace A158558.P4664740458582622315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158673 n : ℚ) / 2⌉

end

end A158558.P4664740458582622315

namespace A158558

/-- `ceil(A158673(n)/2)` -/
def P4664740458582622315.Spec : Prop :=
  ∀ n, P4664740458582622315.a n = A158558 n

end A158558

/-! ## A158558.P11120966721550077518

`abs(5-3*(n*A008592(n)+2))`
-/

namespace A158558.P11120966721550077518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - 3 * ((n : ℤ) * A008592 n + 2)|

end

end A158558.P11120966721550077518

namespace A158558

/-- `abs(5-3*(n*A008592(n)+2))` -/
def P11120966721550077518.Spec : Prop :=
  ∀ n, P11120966721550077518.a n = A158558 n

end A158558

/-! ## A158558.P2889250749502941000

`abs(A134153(n)+(5*n-3)*3*n)`
-/

namespace A158558.P2889250749502941000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134153 n + ((5 * n : ℤ) - 3) * (3 * n : ℤ)|

end

end A158558.P2889250749502941000

namespace A158558

/-- `abs(A134153(n)+(5*n-3)*3*n)` -/
def P2889250749502941000.Spec : Prop :=
  ∀ n, P2889250749502941000.a n = A158558 n

end A158558

/-! ## A158558.P15863083777559343298

`ceil(A010005(2*n)/2)`
-/

namespace A158558.P15863083777559343298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010005 (2 * n) : ℚ) / 2⌉

end

end A158558.P15863083777559343298

namespace A158558

/-- `ceil(A010005(2*n)/2)` -/
def P15863083777559343298.Spec : Prop :=
  ∀ n, P15863083777559343298.a n = A158558 n

end A158558

/-! ## A158558.P3910061163070151282

`A268742(3*n+n+1)`
-/

namespace A158558.P3910061163070151282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268742 (3 * n + (n + 1))

end

end A158558.P3910061163070151282

namespace A158558

/-- `A268742(3*n+n+1)` -/
def P3910061163070151282.Spec : Prop :=
  ∀ n, P3910061163070151282.a n = A158558 n

end A158558

/-! ## A158558.P8955211774701421981

`record[ratio[A300656(n)]]`
-/

namespace A158558.P8955211774701421981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300656 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158558.P8955211774701421981

namespace A158558

/-- `record[ratio[A300656(n)]]` -/
def P8955211774701421981.Spec : Prop :=
  ∀ n, P8955211774701421981.a n = (A158558 n : ℚ)

end A158558

/-! ## A158558.P17214614522575903881

`A300656(∑[n+1]+1)`
-/

namespace A158558.P17214614522575903881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158558.P17214614522575903881

namespace A158558

/-- `A300656(∑[n+1]+1)` -/
def P17214614522575903881.Spec : Prop :=
  ∀ n, P17214614522575903881.a n = A158558 n

end A158558

/-! ## A158558.P13076107924288537424

`record[A300656(n+1)/A300656(n)]`
-/

namespace A158558.P13076107924288537424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300656 (n + 1) : ℚ) / (A300656 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158558.P13076107924288537424

namespace A158558

/-- `record[A300656(n+1)/A300656(n)]` -/
def P13076107924288537424.Spec : Prop :=
  ∀ n, P13076107924288537424.a n = (A158558 n : ℚ)

end A158558

/-! ## A158558.P6469175105308847129

`A128470(n²)`
-/

namespace A158558.P6469175105308847129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (n ^ 2)

end

end A158558.P6469175105308847129

namespace A158558

/-- `A128470(n²)` -/
def P6469175105308847129.Spec : Prop :=
  ∀ n, P6469175105308847129.a n = A158558 n

end A158558

/-! ## A158558.P3162639528574068817

`∩[A128470(n), A268742(n)]`
-/

namespace A158558.P3162639528574068817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158558.P3162639528574068817

namespace A158558

/-- `∩[A128470(n), A268742(n)]` -/
def P3162639528574068817.Spec : Prop :=
  ∀ n, (P3162639528574068817.a n : ℤ) = A158558 n

end A158558

/-!
# A158559: a(n) = 225*n^2 - 15.

The programs for A158559, the canonical program `A158559.P5867986040655177485` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158559 has offset 1).

The definition of A158559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*(n+1)²-15` (program `A158559.P5867986040655177485`, by `A158559.P5867986040655177485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158559.P5867986040655177485

`225*(n+1)²-15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158559

/-- `225*(n+1)²-15` -/
def P5867986040655177485.Spec : Prop :=
  ∀ n, P5867986040655177485.a n = A158559 (n + 1)

theorem P5867986040655177485.correct : P5867986040655177485.Spec := by
  intro n
  simp only [A158559, Nat.add_sub_cancel]

end A158559

/-! ## A158559.P17477687294475633873

`5*(5*A136016(n+1)+2)`
-/

namespace A158559.P17477687294475633873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A136016 (n + 1) + 2)

end

end A158559.P17477687294475633873

namespace A158559

/-- `5*(5*A136016(n+1)+2)` -/
def P17477687294475633873.Spec : Prop :=
  ∀ n, P17477687294475633873.a n = A158559 (n + 1)

theorem P17477687294475633873.correct : P17477687294475633873.Spec := by
  intro n
  simp only [A158559, Nat.add_sub_cancel, A158559.P17477687294475633873.a, A158559.P5867986040655177485.a, A136016, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158559

/-! ## A158559.P7010825683309527669

`5*(5*A157872(n+1)+12)`
-/

namespace A158559.P7010825683309527669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A157872 (n + 1) + 12)

end

end A158559.P7010825683309527669

namespace A158559

/-- `5*(5*A157872(n+1)+12)` -/
def P7010825683309527669.Spec : Prop :=
  ∀ n, P7010825683309527669.a n = A158559 (n + 1)

theorem P7010825683309527669.correct : P7010825683309527669.Spec := by
  intro n
  simp only [A158559, Nat.add_sub_cancel, A158559.P7010825683309527669.a, A158559.P5867986040655177485.a, A157872, A157872.P14767788552816275263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158559

/-! ## A158559.P14336064122177476359

`15*(15*A000290(n+1)-1)`
-/

namespace A158559.P14336064122177476359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (15 * A000290 (n + 1) - 1)

end

end A158559.P14336064122177476359

namespace A158559

/-- `15*(15*A000290(n+1)-1)` -/
def P14336064122177476359.Spec : Prop :=
  ∀ n, P14336064122177476359.a n = A158559 (n + 1)

theorem P14336064122177476359.correct : P14336064122177476359.Spec := by
  intro n
  simp only [A158559, Nat.add_sub_cancel, A158559.P14336064122177476359.a, A158559.P5867986040655177485.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158559

/-! ## A158559.P5102848528093926172

`3*(A033428(5*(n+1))-5)`
-/

namespace A158559.P5102848528093926172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (5 * (n + 1)) - 5)

end

end A158559.P5102848528093926172

namespace A158559

/-- `3*(A033428(5*(n+1))-5)` -/
def P5102848528093926172.Spec : Prop :=
  ∀ n, P5102848528093926172.a n = A158559 (n + 1)

theorem P5102848528093926172.correct : P5102848528093926172.Spec := by
  intro n
  simp only [A158559, Nat.add_sub_cancel, A158559.P5102848528093926172.a, A158559.P5867986040655177485.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158559

/-!
# A158560: a(n) = 30*n^2 - 1.

The programs for A158560, the canonical program `A158560.P7964568299904866016` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158560 has offset 1).

The definition of A158560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*(n+1)²-1` (program `A158560.P7964568299904866016`, by `A158560.P7964568299904866016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158560.P7964568299904866016

`30*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158560

/-- `30*(n+1)²-1` -/
def P7964568299904866016.Spec : Prop :=
  ∀ n, P7964568299904866016.a n = A158560 (n + 1)

theorem P7964568299904866016.correct : P7964568299904866016.Spec := by
  intro n
  simp only [A158560, Nat.add_sub_cancel]

end A158560

/-! ## A158560.P10898833219957191363

`or(1, 30*(n*(n+2)+1)-1)`
-/

namespace A158560.P10898833219957191363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((30 * (n * (n + 2) + 1) : ℤ) - 1)

end

end A158560.P10898833219957191363

namespace A158560

/-- `or(1, 30*(n*(n+2)+1)-1)` -/
def P10898833219957191363.Spec : Prop :=
  ∀ n, P10898833219957191363.a n = A158560 (n + 1)

end A158560

/-! ## A158560.P6526729816738568089

`A158669(n+1)/30`
-/

namespace A158560.P6526729816738568089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158669 (n + 1) : ℚ) / 30

end

end A158560.P6526729816738568089

namespace A158560

/-- `A158669(n+1)/30` -/
def P6526729816738568089.Spec : Prop :=
  ∀ n, P6526729816738568089.a n = (A158560 (n + 1) : ℚ)

theorem P6526729816738568089.correct : P6526729816738568089.Spec := by
  intro n
  simp only [A158560, Nat.add_sub_cancel, A158560.P6526729816738568089.a, A158560.P7964568299904866016.a, A158669, A158669.P12155324503272335770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158560

/-! ## A158560.P5380495798969317026

`floor(A158670(n+1)/2)`
-/

namespace A158560.P5380495798969317026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158670 (n + 1) : ℚ) / 2⌋

end

end A158560.P5380495798969317026

namespace A158560

/-- `floor(A158670(n+1)/2)` -/
def P5380495798969317026.Spec : Prop :=
  ∀ n, P5380495798969317026.a n = A158560 (n + 1)

end A158560

/-! ## A158560.P13217054098952345976

`Δ[A005904(n)-3*n]`
-/

namespace A158560.P13217054098952345976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158560.P13217054098952345976

namespace A158560

/-- `Δ[A005904(n)-3*n]` -/
def P13217054098952345976.Spec : Prop :=
  ∀ n, P13217054098952345976.a n = A158560 (n + 1)

theorem P13217054098952345976.correct : P13217054098952345976.Spec := by
  intro n
  simp only [A158560, Nat.add_sub_cancel, A158560.P13217054098952345976.f1, A158560.P13217054098952345976.a, A158560.P7964568299904866016.a, A005904, A005904.P6150330656000877991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158560

/-! ## A158560.P3953783189701017200

`(A158673(n+1)-3)/2`
-/

namespace A158560.P3953783189701017200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158673 (n + 1) - 3 : ℚ) / 2

end

end A158560.P3953783189701017200

namespace A158560

/-- `(A158673(n+1)-3)/2` -/
def P3953783189701017200.Spec : Prop :=
  ∀ n, P3953783189701017200.a n = (A158560 (n + 1) : ℚ)

theorem P3953783189701017200.correct : P3953783189701017200.Spec := by
  intro n
  simp only [A158560, Nat.add_sub_cancel, A158560.P3953783189701017200.a, A158560.P7964568299904866016.a, A158673, A158673.P11583470406906896367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158560

/-! ## A158560.P1217431378704359010

`abs(30*A000578(n+1)/(n+1)-1)`
-/

namespace A158560.P1217431378704359010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |30 * ((A000578 (n + 1) : ℚ) / (n + 1 : ℚ)) - 1|

end

end A158560.P1217431378704359010

namespace A158560

/-- `abs(30*A000578(n+1)/(n+1)-1)` -/
def P1217431378704359010.Spec : Prop :=
  ∀ n, P1217431378704359010.a n = (A158560 (n + 1) : ℚ)

end A158560

/-! ## A158560.P4414048444947645406

`(8*A158668(n+1))%A158680(n+1)`
-/

namespace A158560.P4414048444947645406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * A158668 (n + 1)) (A158680 (n + 1))

end

end A158560.P4414048444947645406

namespace A158560

/-- `(8*A158668(n+1))%A158680(n+1)` -/
def P4414048444947645406.Spec : Prop :=
  ∀ n, P4414048444947645406.a n = A158560 (n + 1)

end A158560

/-! ## A158560.P5962343895514987224

`∑[A053741(n)+A017509(n)-A028310(n)]`
-/

namespace A158560.P5962343895514987224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017509 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158560.P5962343895514987224

namespace A158560

/-- `∑[A053741(n)+A017509(n)-A028310(n)]` -/
def P5962343895514987224.Spec : Prop :=
  ∀ n, P5962343895514987224.a n = A158560 (n + 1)

end A158560

/-! ## A158560.P798394228240786850

`Δ[A063497(n)/2-n]`
-/

namespace A158560.P798394228240786850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063497 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158560.P798394228240786850

namespace A158560

/-- `Δ[A063497(n)/2-n]` -/
def P798394228240786850.Spec : Prop :=
  ∀ n, P798394228240786850.a n = (A158560 (n + 1) : ℚ)

theorem P798394228240786850.correct : P798394228240786850.Spec := by
  intro n
  simp only [A158560, Nat.add_sub_cancel, A158560.P798394228240786850.f1, A158560.P798394228240786850.a, A158560.P7964568299904866016.a, A063497, A063497.P14189921204005272401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158560

/-!
# A158561: a(n) = ((2^n)*((2^n)+1) - (2^(n-1))*((2^(n-1))+1))/2, a(1)=3.

The programs for A158561, the canonical program `A158561.P10526492634742688063` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158561 has offset 1).

The definition of A158561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158561.P7038312159426490659

`ogf((3-11x+8x^2)/(1-6x+8x^2))`
-/

namespace A158561.P7038312159426490659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11, 8] [1, -6, 8] n

end

end A158561.P7038312159426490659

namespace A158561

/-- `ogf((3-11x+8x^2)/(1-6x+8x^2))` -/
def P7038312159426490659.Spec : Prop :=
  ∀ n, P7038312159426490659.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P5216569623332900259

`Δ[(xor(1, 2^n)+4^n)/2]`
-/

namespace A158561.P5216569623332900259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 ^ n) + 4 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P5216569623332900259

namespace A158561

/-- `Δ[(xor(1, 2^n)+4^n)/2]` -/
def P5216569623332900259.Spec : Prop :=
  ∀ n, P5216569623332900259.a n = (A158561 (n + 1) : ℚ)

end A158561

/-! ## A158561.P10526492634742688063

`Δ[or(1, 2^n)*floor(2^(n-1))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158561

/-- `Δ[or(1, 2^n)*floor(2^(n-1))]` -/
def P10526492634742688063.Spec : Prop :=
  ∀ n, P10526492634742688063.a n = A158561 (n + 1)

theorem P10526492634742688063.correct : P10526492634742688063.Spec := by
  intro n
  simp only [A158561, Nat.add_sub_cancel]

end A158561

/-! ## A158561.P14111580432897098246

`Δ[lcm(or(1, 2^n), floor(2^(n-1)))]`
-/

namespace A158561.P14111580432897098246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 (2 ^ n) : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A158561.P14111580432897098246

namespace A158561

/-- `Δ[lcm(or(1, 2^n), floor(2^(n-1)))]` -/
def P14111580432897098246.Spec : Prop :=
  ∀ n, P14111580432897098246.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P12986851418974965858

`4*a(n-1)-2^(n-1)` with `a(0)=3, a(1)=7`
-/

namespace A158561.P12986851418974965858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 7] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A158561.P12986851418974965858

namespace A158561

/-- `4*a(n-1)-2^(n-1)` -/
def P12986851418974965858.Spec : Prop :=
  ∀ n, P12986851418974965858.a n = (A158561 (n + 1) : ℚ)

end A158561

/-! ## A158561.P11705317074995451065

`or(4^n, Δ[(2^n+4^n)/2])`
-/

namespace A158561.P11705317074995451065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A158561.P11705317074995451065

namespace A158561

/-- `or(4^n, Δ[(2^n+4^n)/2])` -/
def P11705317074995451065.Spec : Prop :=
  ∀ n, P11705317074995451065.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P3979989769799492681

`Δ[xor(ceil(2^(n-1)), ceil(4^n/2))]`
-/

namespace A158561.P3979989769799492681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P3979989769799492681

namespace A158561

/-- `Δ[xor(ceil(2^(n-1)), ceil(4^n/2))]` -/
def P3979989769799492681.Spec : Prop :=
  ∀ n, P3979989769799492681.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P12107915067255046380

`Δ[(2^n+4^n)/2]+floor(acot(n))`
-/

namespace A158561.P12107915067255046380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

end

end A158561.P12107915067255046380

namespace A158561

/-- `Δ[(2^n+4^n)/2]+floor(acot(n))` -/
def P12107915067255046380.Spec : Prop :=
  ∀ n, P12107915067255046380.a n = (A158561 (n + 1) : ℚ)

end A158561

/-! ## A158561.P14699685788718484312

`lcm(2, 4^n)+(2^n+4^n)/2`
-/

namespace A158561.P14699685788718484312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℚ) + (2 ^ n + 4 ^ n : ℚ) / 2

end

end A158561.P14699685788718484312

namespace A158561

/-- `lcm(2, 4^n)+(2^n+4^n)/2` -/
def P14699685788718484312.Spec : Prop :=
  ∀ n, P14699685788718484312.a n = (A158561 (n + 1) : ℚ)

end A158561

/-! ## A158561.P3578925753194654172

`Δ[and(-n, A007582(n))]`
-/

namespace A158561.P3578925753194654172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A007582 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P3578925753194654172

namespace A158561

/-- `Δ[and(-n, A007582(n))]` -/
def P3578925753194654172.Spec : Prop :=
  ∀ n, P3578925753194654172.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P18334993289749464095

`Δ[A135576(n+1)/2]`
-/

namespace A158561.P18334993289749464095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135576 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P18334993289749464095

namespace A158561

/-- `Δ[A135576(n+1)/2]` -/
def P18334993289749464095.Spec : Prop :=
  ∀ n, P18334993289749464095.a n = (A158561 (n + 1) : ℚ)

end A158561

/-! ## A158561.P3089611350203059338

`Δ[ceil(A281481(n)-acot(n))]`
-/

namespace A158561.P3089611350203059338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A281481 n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P3089611350203059338

namespace A158561

/-- `Δ[ceil(A281481(n)-acot(n))]` -/
def P3089611350203059338.Spec : Prop :=
  ∀ n, P3089611350203059338.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P169004281358434932

`Δ[(2^n+1)*A131577(n)]`
-/

namespace A158561.P169004281358434932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P169004281358434932

namespace A158561

/-- `Δ[(2^n+1)*A131577(n)]` -/
def P169004281358434932.Spec : Prop :=
  ∀ n, P169004281358434932.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P2864115925328521192

`Δ[floor(2^(n-1))*A000051(n)]`
-/

namespace A158561.P2864115925328521192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P2864115925328521192

namespace A158561

/-- `Δ[floor(2^(n-1))*A000051(n)]` -/
def P2864115925328521192.Spec : Prop :=
  ∀ n, P2864115925328521192.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P11897514801141675275

`A087009(2*(n+1))+ceil(2^(n-1))`
-/

namespace A158561.P11897514801141675275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (2 * (n + 1)) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A158561.P11897514801141675275

namespace A158561

/-- `A087009(2*(n+1))+ceil(2^(n-1))` -/
def P11897514801141675275.Spec : Prop :=
  ∀ n, P11897514801141675275.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P8784878713456621169

`A000007(n)+Δ[(2^n+4^n)/2]`
-/

namespace A158561.P8784878713456621169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A158561.P8784878713456621169

namespace A158561

/-- `A000007(n)+Δ[(2^n+4^n)/2]` -/
def P8784878713456621169.Spec : Prop :=
  ∀ n, P8784878713456621169.a n = (A158561 (n + 1) : ℚ)

end A158561

/-! ## A158561.P251347679019813946

`A155543(n)+A007582(n)`
-/

namespace A158561.P251347679019813946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n + A007582 n

end

end A158561.P251347679019813946

namespace A158561

/-- `A155543(n)+A007582(n)` -/
def P251347679019813946.Spec : Prop :=
  ∀ n, P251347679019813946.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P1598025609747101649

`A281481(n)+A103454(n)`
-/

namespace A158561.P1598025609747101649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A103454 n

end

end A158561.P1598025609747101649

namespace A158561

/-- `A281481(n)+A103454(n)` -/
def P1598025609747101649.Spec : Prop :=
  ∀ n, P1598025609747101649.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P881944934255755346

`A256873(n)+A211012(n)`
-/

namespace A158561.P881944934255755346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n + A211012 n

end

end A158561.P881944934255755346

namespace A158561

/-- `A256873(n)+A211012(n)` -/
def P881944934255755346.Spec : Prop :=
  ∀ n, P881944934255755346.a n = A158561 (n + 1)

end A158561

/-! ## A158561.P2034599269842094778

`Δ[A057427(n)+A007582(n)]`
-/

namespace A158561.P2034599269842094778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A007582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158561.P2034599269842094778

namespace A158561

/-- `Δ[A057427(n)+A007582(n)]` -/
def P2034599269842094778.Spec : Prop :=
  ∀ n, P2034599269842094778.a n = A158561 (n + 1)

end A158561

/-!
# A158562: a(n) = 256*n^2 - 16.

The programs for A158562, the canonical program `A158562.P2710658673093551484` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158562 has offset 1).

The definition of A158562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256*(n+1)²-16` (program `A158562.P2710658673093551484`, by `A158562.P2710658673093551484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158562.P2710658673093551484

`256*(n+1)²-16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158562

/-- `256*(n+1)²-16` -/
def P2710658673093551484.Spec : Prop :=
  ∀ n, P2710658673093551484.a n = A158562 (n + 1)

theorem P2710658673093551484.correct : P2710658673093551484.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel]

end A158562

/-! ## A158562.P15399029962355089328

`16*A141759(n)`
-/

namespace A158562.P15399029962355089328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A141759 n

end

end A158562.P15399029962355089328

namespace A158562

/-- `16*A141759(n)` -/
def P15399029962355089328.Spec : Prop :=
  ∀ n, P15399029962355089328.a n = A158562 (n + 1)

theorem P15399029962355089328.correct : P15399029962355089328.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P15399029962355089328.a, A158562.P2710658673093551484.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P6961989575947706039

`4*(A158487(n+1)+4)`
-/

namespace A158562.P6961989575947706039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158487 (n + 1) + 4)

end

end A158562.P6961989575947706039

namespace A158562

/-- `4*(A158487(n+1)+4)` -/
def P6961989575947706039.Spec : Prop :=
  ∀ n, P6961989575947706039.a n = A158562 (n + 1)

theorem P6961989575947706039.correct : P6961989575947706039.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P6961989575947706039.a, A158562.P2710658673093551484.a, A158487, A158487.P4071329257013432001.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P2279632245403619646

`4*(A158684(n+1)-3)`
-/

namespace A158562.P2279632245403619646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158684 (n + 1) - 3)

end

end A158562.P2279632245403619646

namespace A158562

/-- `4*(A158684(n+1)-3)` -/
def P2279632245403619646.Spec : Prop :=
  ∀ n, P2279632245403619646.a n = A158562 (n + 1)

theorem P2279632245403619646.correct : P2279632245403619646.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P2279632245403619646.a, A158562.P2710658673093551484.a, A158684, A158684.P12772694682750737315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P9705326286750611256

`(8*n+6)*Δ[A016838(n)]`
-/

namespace A158562.P9705326286750611256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) * (f1 (n + 1) - f1 n)

end

end A158562.P9705326286750611256

namespace A158562

/-- `(8*n+6)*Δ[A016838(n)]` -/
def P9705326286750611256.Spec : Prop :=
  ∀ n, P9705326286750611256.a n = A158562 (n + 1)

theorem P9705326286750611256.correct : P9705326286750611256.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P9705326286750611256.f1, A158562.P9705326286750611256.a, A158562.P2710658673093551484.a, A016838, A016838.P1946869396513697861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P11171647712466421875

`2*(8*n+6)*A119413(n+2)`
-/

namespace A158562.P11171647712466421875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((8 * n + 6 : ℤ) * A119413 (n + 2))

end

end A158562.P11171647712466421875

namespace A158562

/-- `2*(8*n+6)*A119413(n+2)` -/
def P11171647712466421875.Spec : Prop :=
  ∀ n, P11171647712466421875.a n = A158562 (n + 1)

theorem P11171647712466421875.correct : P11171647712466421875.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P11171647712466421875.a, A158562.P2710658673093551484.a, A119413, A119413.P2366630370367449973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P3533477199260817546

`A098502(n+1)*A119413(n+2)`
-/

namespace A158562.P3533477199260817546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098502 (n + 1) * A119413 (n + 2)

end

end A158562.P3533477199260817546

namespace A158562

/-- `A098502(n+1)*A119413(n+2)` -/
def P3533477199260817546.Spec : Prop :=
  ∀ n, P3533477199260817546.a n = A158562 (n + 1)

theorem P3533477199260817546.correct : P3533477199260817546.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P3533477199260817546.a, A158562.P2710658673093551484.a, A098502, A098502.P2263672566962012192.a, A119413, A119413.P2366630370367449973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P9218962099873339289

`(A016838(n+1)-A016838(n))*A017137(n)`
-/

namespace A158562.P9218962099873339289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016838 (n + 1) - A016838 n) * A017137 n

end

end A158562.P9218962099873339289

namespace A158562

/-- `(A016838(n+1)-A016838(n))*A017137(n)` -/
def P9218962099873339289.Spec : Prop :=
  ∀ n, P9218962099873339289.a n = A158562 (n + 1)

theorem P9218962099873339289.correct : P9218962099873339289.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P9218962099873339289.a, A158562.P2710658673093551484.a, A016838, A016838.P1946869396513697861.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P17638691073129346788

`(A016814(n+1)-A016814(n))*A017089(n+1)`
-/

namespace A158562.P17638691073129346788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016814 (n + 1) - A016814 n) * A017089 (n + 1)

end

end A158562.P17638691073129346788

namespace A158562

/-- `(A016814(n+1)-A016814(n))*A017089(n+1)` -/
def P17638691073129346788.Spec : Prop :=
  ∀ n, P17638691073129346788.a n = A158562 (n + 1)

theorem P17638691073129346788.correct : P17638691073129346788.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P17638691073129346788.a, A158562.P2710658673093551484.a, A016814, A016814.P5668709183610020667.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P9984155022799226611

`(A017089(n+1)+A017089(n))*A063110(n+2)`
-/

namespace A158562.P9984155022799226611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 (n + 1) + A017089 n) * A063110 (n + 2)

end

end A158562.P9984155022799226611

namespace A158562

/-- `(A017089(n+1)+A017089(n))*A063110(n+2)` -/
def P9984155022799226611.Spec : Prop :=
  ∀ n, P9984155022799226611.a n = A158562 (n + 1)

end A158562

/-! ## A158562.P5379108938260961114

`(A017113(n+1)+A008590(n+1))*A098502(n+1)`
-/

namespace A158562.P5379108938260961114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017113 (n + 1) + A008590 (n + 1)) * A098502 (n + 1)

end

end A158562.P5379108938260961114

namespace A158562

/-- `(A017113(n+1)+A008590(n+1))*A098502(n+1)` -/
def P5379108938260961114.Spec : Prop :=
  ∀ n, P5379108938260961114.a n = A158562 (n + 1)

theorem P5379108938260961114.correct : P5379108938260961114.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P5379108938260961114.a, A158562.P2710658673093551484.a, A008590, A008590.P15621076316638553644.a, A017113, A017113.P3624354701485579327.a, A098502, A098502.P2263672566962012192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P9437157414046116852

`A157913(2*(n+1))`
-/

namespace A158562.P9437157414046116852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157913 (2 * (n + 1))

end

end A158562.P9437157414046116852

namespace A158562

/-- `A157913(2*(n+1))` -/
def P9437157414046116852.Spec : Prop :=
  ∀ n, P9437157414046116852.a n = A158562 (n + 1)

end A158562

/-! ## A158562.P8418821317613441116

`4*A158443(2*(n+1))`
-/

namespace A158562.P8418821317613441116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158443 (2 * (n + 1))

end

end A158562.P8418821317613441116

namespace A158562

/-- `4*A158443(2*(n+1))` -/
def P8418821317613441116.Spec : Prop :=
  ∀ n, P8418821317613441116.a n = A158562 (n + 1)

end A158562

/-! ## A158562.P1581740401038915677

`A051062(2*n+1)*(8*n+10)`
-/

namespace A158562.P1581740401038915677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 (2 * n + 1) * (8 * n + 10 : ℤ)

end

end A158562.P1581740401038915677

namespace A158562

/-- `A051062(2*n+1)*(8*n+10)` -/
def P1581740401038915677.Spec : Prop :=
  ∀ n, P1581740401038915677.a n = A158562 (n + 1)

theorem P1581740401038915677.correct : P1581740401038915677.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P1581740401038915677.a, A158562.P2710658673093551484.a, A051062, A051062.P11177069363644223625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P5757729298893721052

`A017089(n+1)*A051062(2*n+1)`
-/

namespace A158562.P5757729298893721052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (n + 1) * A051062 (2 * n + 1)

end

end A158562.P5757729298893721052

namespace A158562

/-- `A017089(n+1)*A051062(2*n+1)` -/
def P5757729298893721052.Spec : Prop :=
  ∀ n, P5757729298893721052.a n = A158562 (n + 1)

theorem P5757729298893721052.correct : P5757729298893721052.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P5757729298893721052.a, A158562.P2710658673093551484.a, A017089, A017089.P13709942329986306669.a, A051062, A051062.P11177069363644223625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P8983492183846580674

`A017113(2*n+1)*A017113(2*(n+1))`
-/

namespace A158562.P8983492183846580674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (2 * n + 1) * A017113 (2 * (n + 1))

end

end A158562.P8983492183846580674

namespace A158562

/-- `A017113(2*n+1)*A017113(2*(n+1))` -/
def P8983492183846580674.Spec : Prop :=
  ∀ n, P8983492183846580674.a n = A158562 (n + 1)

theorem P8983492183846580674.correct : P8983492183846580674.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P8983492183846580674.a, A158562.P2710658673093551484.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P9270905390213174594

`A281813(2*n+1)*A281813(2*(n+1))`
-/

namespace A158562.P9270905390213174594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 (2 * n + 1) * A281813 (2 * (n + 1))

end

end A158562.P9270905390213174594

namespace A158562

/-- `A281813(2*n+1)*A281813(2*(n+1))` -/
def P9270905390213174594.Spec : Prop :=
  ∀ n, P9270905390213174594.a n = A158562 (n + 1)

end A158562

/-! ## A158562.P9508726454815908487

`(A017137(2*n+1)+A017089(2*n+1))*A017089(n+1)`
-/

namespace A158562.P9508726454815908487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 (2 * n + 1) + A017089 (2 * n + 1)) * A017089 (n + 1)

end

end A158562.P9508726454815908487

namespace A158562

/-- `(A017137(2*n+1)+A017089(2*n+1))*A017089(n+1)` -/
def P9508726454815908487.Spec : Prop :=
  ∀ n, P9508726454815908487.a n = A158562 (n + 1)

theorem P9508726454815908487.correct : P9508726454815908487.Spec := by
  intro n
  simp only [A158562, Nat.add_sub_cancel, A158562.P9508726454815908487.a, A158562.P2710658673093551484.a, A017089, A017089.P13709942329986306669.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158562

/-! ## A158562.P2865787584414078958

`Δ[A077591(2*n+1)]*(4*n+5)`
-/

namespace A158562.P2865787584414078958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (4 * n + 5 : ℤ)

end

end A158562.P2865787584414078958

namespace A158562

/-- `Δ[A077591(2*n+1)]*(4*n+5)` -/
def P2865787584414078958.Spec : Prop :=
  ∀ n, P2865787584414078958.a n = A158562 (n + 1)

end A158562

/-! ## A158562.P6888720549970084919

`A134965(2*(n+1))*A173512(2*(n+1))`
-/

namespace A158562.P6888720549970084919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134965 (2 * (n + 1)) * A173512 (2 * (n + 1))

end

end A158562.P6888720549970084919

namespace A158562

/-- `A134965(2*(n+1))*A173512(2*(n+1))` -/
def P6888720549970084919.Spec : Prop :=
  ∀ n, P6888720549970084919.a n = A158562 (n + 1)

end A158562

/-!
# A158563: a(n) = 32*n^2 - 1.

The programs for A158563, the canonical program `A158563.P13902014769167631248` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158563 has offset 1).

The definition of A158563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)²-1` (program `A158563.P13902014769167631248`, by `A158563.P13902014769167631248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158563.P13902014769167631248

`32*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158563

/-- `32*(n+1)²-1` -/
def P13902014769167631248.Spec : Prop :=
  ∀ n, P13902014769167631248.a n = A158563 (n + 1)

theorem P13902014769167631248.correct : P13902014769167631248.Spec := by
  intro n
  simp only [A158563, Nat.add_sub_cancel]

end A158563

/-! ## A158563.P13416507207946235086

`floor(cot(2/(8*(n+1))²))`
-/

namespace A158563.P13416507207946235086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / ((8 * (n + 1)) ^ 2 : ℚ) : ℝ)⌋

end

end A158563.P13416507207946235086

namespace A158563

/-- `floor(cot(2/(8*(n+1))²))` -/
def P13416507207946235086.Spec : Prop :=
  ∀ n, P13416507207946235086.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P2854836468914355002

`or(3, 2*A141759(n))`
-/

namespace A158563.P2854836468914355002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (2 * A141759 n)

end

end A158563.P2854836468914355002

namespace A158563

/-- `or(3, 2*A141759(n))` -/
def P2854836468914355002.Spec : Prop :=
  ∀ n, P2854836468914355002.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P7242216320015817682

`floor(A158684(n+1)/2)`
-/

namespace A158563.P7242216320015817682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158684 (n + 1) : ℚ) / 2⌋

end

end A158563.P7242216320015817682

namespace A158563

/-- `floor(A158684(n+1)/2)` -/
def P7242216320015817682.Spec : Prop :=
  ∀ n, P7242216320015817682.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P17602540376183566404

`(A017066(n+1)-2)/2`
-/

namespace A158563.P17602540376183566404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017066 (n + 1) - 2 : ℚ) / 2

end

end A158563.P17602540376183566404

namespace A158563

/-- `(A017066(n+1)-2)/2` -/
def P17602540376183566404.Spec : Prop :=
  ∀ n, P17602540376183566404.a n = (A158563 (n + 1) : ℚ)

theorem P17602540376183566404.correct : P17602540376183566404.Spec := by
  intro n
  simp only [A158563, Nat.add_sub_cancel, A158563.P17602540376183566404.a, A158563.P13902014769167631248.a, A017066, A017066.P14577607273091826583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158563

/-! ## A158563.P17573142428119144819

`abs(2*Δ[A046092(n)]²-1)`
-/

namespace A158563.P17573142428119144819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (f1 (n + 1) - f1 n) ^ 2 - 1|

end

end A158563.P17573142428119144819

namespace A158563

/-- `abs(2*Δ[A046092(n)]²-1)` -/
def P17573142428119144819.Spec : Prop :=
  ∀ n, P17573142428119144819.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P15373219218224323868

`(A157948(n+1)+n-1)/2`
-/

namespace A158563.P15373219218224323868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157948 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A158563.P15373219218224323868

namespace A158563

/-- `(A157948(n+1)+n-1)/2` -/
def P15373219218224323868.Spec : Prop :=
  ∀ n, P15373219218224323868.a n = (A158563 (n + 1) : ℚ)

theorem P15373219218224323868.correct : P15373219218224323868.Spec := by
  intro n
  simp only [A158563, Nat.add_sub_cancel, A158563.P15373219218224323868.a, A158563.P13902014769167631248.a, A157948, A157948.P9942417277161281651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158563

/-! ## A158563.P9333090358384096566

`abs(A244082(n+1)-1)`
-/

namespace A158563.P9333090358384096566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244082 (n + 1) - 1|

end

end A158563.P9333090358384096566

namespace A158563

/-- `abs(A244082(n+1)-1)` -/
def P9333090358384096566.Spec : Prop :=
  ∀ n, P9333090358384096566.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P4076237640350075544

`(A158686(n+1)-3)/2`
-/

namespace A158563.P4076237640350075544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158686 (n + 1) - 3 : ℚ) / 2

end

end A158563.P4076237640350075544

namespace A158563

/-- `(A158686(n+1)-3)/2` -/
def P4076237640350075544.Spec : Prop :=
  ∀ n, P4076237640350075544.a n = (A158563 (n + 1) : ℚ)

theorem P4076237640350075544.correct : P4076237640350075544.Spec := by
  intro n
  simp only [A158563, Nat.add_sub_cancel, A158563.P4076237640350075544.a, A158563.P13902014769167631248.a, A158686, A158686.P15625956396772246712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158563

/-! ## A158563.P5847208962959634271

`A157914(2*(n+1))`
-/

namespace A158563.P5847208962959634271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (2 * (n + 1))

end

end A158563.P5847208962959634271

namespace A158563

/-- `A157914(2*(n+1))` -/
def P5847208962959634271.Spec : Prop :=
  ∀ n, P5847208962959634271.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P645981306488719479

`or(1, A299279(2*(n+1)))`
-/

namespace A158563.P645981306488719479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299279 (2 * (n + 1)))

end

end A158563.P645981306488719479

namespace A158563

/-- `or(1, A299279(2*(n+1)))` -/
def P645981306488719479.Spec : Prop :=
  ∀ n, P645981306488719479.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P3619835744024736868

`A056220(4*(n+1))`
-/

namespace A158563.P3619835744024736868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (4 * (n + 1))

end

end A158563.P3619835744024736868

namespace A158563

/-- `A056220(4*(n+1))` -/
def P3619835744024736868.Spec : Prop :=
  ∀ n, P3619835744024736868.a n = A158563 (n + 1)

theorem P3619835744024736868.correct : P3619835744024736868.Spec := by
  intro n
  simp only [A158563, Nat.add_sub_cancel, A158563.P3619835744024736868.a, A158563.P13902014769167631248.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158563

/-! ## A158563.P7093469656338166661

`A195605(3*(n+1)+n)`
-/

namespace A158563.P7093469656338166661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 (3 * (n + 1) + n)

end

end A158563.P7093469656338166661

namespace A158563

/-- `A195605(3*(n+1)+n)` -/
def P7093469656338166661.Spec : Prop :=
  ∀ n, P7093469656338166661.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P4281471897986370995

`A320431(3*(n+1)+n+2)`
-/

namespace A158563.P4281471897986370995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320431 (3 * (n + 1) + (n + 2))

end

end A158563.P4281471897986370995

namespace A158563

/-- `A320431(3*(n+1)+n+2)` -/
def P4281471897986370995.Spec : Prop :=
  ∀ n, P4281471897986370995.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P1416348491233681304

`(A004277(A004767(n)+1)²-2)/2`
-/

namespace A158563.P1416348491233681304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A004767 n + 1).toNat ^ 2 - 2 : ℚ) / 2

end

end A158563.P1416348491233681304

namespace A158563

/-- `(A004277(A004767(n)+1)²-2)/2` -/
def P1416348491233681304.Spec : Prop :=
  ∀ n, P1416348491233681304.a n = (A158563 (n + 1) : ℚ)

end A158563

/-! ## A158563.P15883444673855788885

`abs(2*(A005563(A016777(n+1)+n-1)+2)-3)`
-/

namespace A158563.P15883444673855788885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A005563 (A016777 (n + 1) + ((n : ℤ) - 1)).toNat + 2) - 3|

end

end A158563.P15883444673855788885

namespace A158563

/-- `abs(2*(A005563(A016777(n+1)+n-1)+2)-3)` -/
def P15883444673855788885.Spec : Prop :=
  ∀ n, P15883444673855788885.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P4623624962671716036

`sqrt(A239607(4*(n+1)))`
-/

namespace A158563.P4623624962671716036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239607 (4 * (n + 1)) : ℝ)

end

end A158563.P4623624962671716036

namespace A158563

/-- `sqrt(A239607(4*(n+1)))` -/
def P4623624962671716036.Spec : Prop :=
  ∀ n, P4623624962671716036.a n = (A158563 (n + 1) : ℝ)

end A158563

/-! ## A158563.P18038634153708665988

`A047838(8*(n+1))`
-/

namespace A158563.P18038634153708665988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (8 * (n + 1))

end

end A158563.P18038634153708665988

namespace A158563

/-- `A047838(8*(n+1))` -/
def P18038634153708665988.Spec : Prop :=
  ∀ n, P18038634153708665988.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P6972020061566632846

`A079326(8*(n+1))`
-/

namespace A158563.P6972020061566632846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079326 (8 * (n + 1))

end

end A158563.P6972020061566632846

namespace A158563

/-- `A079326(8*(n+1))` -/
def P6972020061566632846.Spec : Prop :=
  ∀ n, P6972020061566632846.a n = A158563 (n + 1)

end A158563

/-! ## A158563.P2651429964006640694

`A188653(8*(n+1))`
-/

namespace A158563.P2651429964006640694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (8 * (n + 1))

end

end A158563.P2651429964006640694

namespace A158563

/-- `A188653(8*(n+1))` -/
def P2651429964006640694.Spec : Prop :=
  ∀ n, P2651429964006640694.a n = A158563 (n + 1)

end A158563

/-!
# A158565: A modulo two based Pascal's triangle using powers of two for even and powers of three for odd: t(n,m)=If[Mod[Binomial[n, m], 2] == 0 && m <= Floor[n/2], 2^m, If[Mod[Binomial[n, m], 2] == 0 && m > Floor[n/2], 2^(n - m), If[Mod[Binomial[n, m], 2] == 1 && m <= Floor[n/2], 3^m, If[Mod[Binomial[n, m], 2] == 1 && m > Floor[n/2], 3^(n - m), 0]]]].

The programs for A158565, there is no canonical definition to state claims against.
-/

/-! ## A158565.P16000041244126264878

`(A047999(n)+2)^A004197(n)`
-/

namespace A158565.P16000041244126264878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047999 n + 2 : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P16000041244126264878

/-! ## A158565.P3410098571860455099

`A020639(A124928(n))^A004197(n)`
-/

namespace A158565.P3410098571860455099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A124928 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P3410098571860455099

/-! ## A158565.P1882885028314536181

`A020639(A131111(n))^A004197(n)`
-/

namespace A158565.P1882885028314536181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A131111 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P1882885028314536181

/-! ## A158565.P1008149184175637555

`A020639(A132047(n))^A004197(n)`
-/

namespace A158565.P1008149184175637555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A132047 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P1008149184175637555

/-! ## A158565.P13816364563123997694

`A020639(A134059(n))^A004197(n)`
-/

namespace A158565.P13816364563123997694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A134059 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P13816364563123997694

/-! ## A158565.P12185988660025325584

`A020639(A134060(n))^A004197(n)`
-/

namespace A158565.P12185988660025325584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A134060 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P12185988660025325584

/-! ## A158565.P16717654086450893421

`A020639(A168623(n))^A004197(n)`
-/

namespace A158565.P16717654086450893421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A168623 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P16717654086450893421

/-! ## A158565.P9491578204746340538

`A020639(A249250(n))^A004197(n)`
-/

namespace A158565.P9491578204746340538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A249250 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P9491578204746340538

/-! ## A158565.P14246824150155720232

`A020639(A134059(n))^A261684(n)`
-/

namespace A158565.P14246824150155720232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A134059 n).toNat : ℚ) ^ (A261684 n : ℤ)

end

end A158565.P14246824150155720232

/-! ## A158565.P2216662428300871877

`A020639(3*A114202(n))^A004197(n)`
-/

namespace A158565.P2216662428300871877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (3 * A114202 n).toNat : ℚ) ^ (A004197 n : ℤ)

end

end A158565.P2216662428300871877

/-!
# A158567: First differences of A157680.

The programs for A158567, there is no canonical definition to state claims against.
-/

/-! ## A158567.P16384561175115895256

`A157680(n+2)-A157680(n+1)`
-/

namespace A158567.P16384561175115895256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157680 (n + 2) - A157680 (n + 1)

end

end A158567.P16384561175115895256

/-! ## A158567.P8612865137595373872

`Δ[A157680(n+1)]`
-/

namespace A158567.P8612865137595373872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158567.P8612865137595373872

/-! ## A158567.P14470753182274957857

`Δ[A157644(n+1)%10]`
-/

namespace A158567.P14470753182274957857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157644 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158567.P14470753182274957857

/-! ## A158567.P15965402273043787648

`Δ[(A157763(n)+a(n-1))%10]` with `a(0)=9`
-/

namespace A158567.P15965402273043787648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  Int.tmod (A157763 n + f1 (n - 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158567.P15965402273043787648

/-! ## A158567.P16738567540674931069

`Δ[A010879(A157644(n+1))]`
-/

namespace A158567.P16738567540674931069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A157644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158567.P16738567540674931069

/-! ## A158567.P18361081470632688184

`Δ[record[A157644(A134478(n))]%10]`
-/

namespace A158567.P18361081470632688184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158567.P18361081470632688184

/-! ## A158567.P434448945933981020

`Δ[record[A157644(A193739(n))]%10]`
-/

namespace A158567.P434448945933981020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158567.P434448945933981020

/-!
# A158568: a(n) = Sum_{i=1..Fibonacci(n)} sigma_0(i) where sigma_0(n) is A000005(n).

The programs for A158568, there is no canonical definition to state claims against.
-/

/-! ## A158568.P1030611903518177970

`A006218(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A158568.P1030611903518177970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (n + 1) - f1 n).toNat

end

end A158568.P1030611903518177970

/-! ## A158568.P519094924257356359

`A006218(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A158568.P519094924257356359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (n + 1) - f1 n).toNat

end

end A158568.P519094924257356359

/-! ## A158568.P2647720111171915043

`A006218(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A158568.P2647720111171915043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A158568.P2647720111171915043

/-! ## A158568.P6852670897859722351

`A006218(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A158568.P6852670897859722351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158568.P6852670897859722351

/-!
# A158569: a(n) = Sum_{i=1..F(n)} F(i), where F = A000045, Fibonacci numbers.

The programs for A158569, the canonical program `A158569.P12997002080472448591` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158569 has offset 0).

The definition of A158569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158569.P12997002080472448591

`A000071(A157725(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A158569

/-- `A000071(A157725(n))` -/
def P12997002080472448591.Spec : Prop :=
  ∀ n, P12997002080472448591.a n = A158569 n

theorem P12997002080472448591.correct : P12997002080472448591.Spec := by
  intro n
  simp only [A158569]

end A158569

/-! ## A158569.P8124652503840133866

`A000045(A000045(n)+2)-1`
-/

namespace A158569.P8124652503840133866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000045 n + 2).toNat - 1

end

end A158569.P8124652503840133866

namespace A158569

/-- `A000045(A000045(n)+2)-1` -/
def P8124652503840133866.Spec : Prop :=
  ∀ n, P8124652503840133866.a n = A158569 n

end A158569

/-! ## A158569.P8299205168067455802

`A131524(A001588(n))`
-/

namespace A158569.P8299205168067455802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (A001588 n).toNat

end

end A158569.P8299205168067455802

namespace A158569

/-- `A131524(A001588(n))` -/
def P8299205168067455802.Spec : Prop :=
  ∀ n, P8299205168067455802.a n = A158569 n

end A158569

/-! ## A158569.P3800593499101139126

`A321664(A022086(n))`
-/

namespace A158569.P3800593499101139126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A022086 n).toNat

end

end A158569.P3800593499101139126

namespace A158569

/-- `A321664(A022086(n))` -/
def P3800593499101139126.Spec : Prop :=
  ∀ n, P3800593499101139126.a n = A158569 n

end A158569

/-! ## A158569.P15599557686983718232

`A339572(A055389(n))`
-/

namespace A158569.P15599557686983718232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (A055389 n).toNat

end

end A158569.P15599557686983718232

namespace A158569

/-- `A339572(A055389(n))` -/
def P15599557686983718232.Spec : Prop :=
  ∀ n, P15599557686983718232.a n = A158569 n

end A158569

/-!
# A158570: a(n) = A007814((2n-1)!! + 1).

The programs for A158570, the canonical program `A158570.P8155421376841415389` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158570 has offset 1).

The definition of A158570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158570.P8155421376841415389

`xor(floor(a(n-4)/3), a(n-4))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158570

/-- `xor(floor(a(n-4)/3), a(n-4))` -/
def P8155421376841415389.Spec : Prop :=
  ∀ n, P8155421376841415389.a n = A158570 (n + 1)

theorem P8155421376841415389.correct : P8155421376841415389.Spec := by
  intro n
  simp only [A158570, Nat.add_sub_cancel]

end A158570

/-!
# A158571: Primes whose digit sum is a single-digit nonprime.

The programs for A158571, there is no canonical definition to state claims against.
-/

/-! ## A158571.P10559542173569998502

`∪[A062339(n+1), A062343(n+1)]`
-/

namespace A158571.P10559542173569998502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P10559542173569998502

/-! ## A158571.P6884148896423686278

`∩[A166567(n+1), A304366(n+1)]`
-/

namespace A158571.P6884148896423686278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P6884148896423686278

/-! ## A158571.P4021178406601944218

`p?[∪[A052218(n+1), A052222(n+1)]]`
-/

namespace A158571.P4021178406601944218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158571.P4021178406601944218

/-! ## A158571.P16256784909095334591

`p?[∪[A052218(n+1), A062343(n+1)]]`
-/

namespace A158571.P16256784909095334591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158571.P16256784909095334591

/-! ## A158571.P1544352269703917577

`∩[A062338(n+1), A304366(n+1)]`
-/

namespace A158571.P1544352269703917577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P1544352269703917577

/-! ## A158571.P8598959830152422678

`∩[A104213(n+1), A304366(n+1)]`
-/

namespace A158571.P8598959830152422678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P8598959830152422678

/-! ## A158571.P2501215840489089550

`p?[A070026(n+2)+1]`
-/

namespace A158571.P2501215840489089550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158571.P2501215840489089550

/-! ## A158571.P11517890555184793454

`∩[A079132(n+1), A143863(n+1)]`
-/

namespace A158571.P11517890555184793454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P11517890555184793454

/-! ## A158571.P6431999566482159442

`∩[A143863(n+1), A166849(n+1)]`
-/

namespace A158571.P6431999566482159442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P6431999566482159442

/-! ## A158571.P16492918932326095596

`∩[A143863(n+1), A304366(n+1)]`
-/

namespace A158571.P16492918932326095596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158571.P16492918932326095596

/-!
# A158572: a(n) = A007814((2n-1)!! - 1).

The programs for A158572, the canonical program `A158572.P3362869834669589704` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158572 has offset 2).

The definition of A158572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158572.P3362869834669589704

`val(∑[C(A059029(n), 3)+1], 2)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A158572

/-- `val(∑[C(A059029(n), 3)+1], 2)+1` -/
def P3362869834669589704.Spec : Prop :=
  ∀ n, (P3362869834669589704.a n : ℤ) = A158572 (n + 2)

theorem P3362869834669589704.correct : P3362869834669589704.Spec := by
  intro n
  simp only [A158572, Nat.add_sub_cancel]

end A158572

/-! ## A158572.P14383485222711265960

`val(∑[∑[A268676(n)+2*n]], 2)+1`
-/

namespace A158572.P14383485222711265960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n + (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A158572.P14383485222711265960

namespace A158572

/-- `val(∑[∑[A268676(n)+2*n]], 2)+1` -/
def P14383485222711265960.Spec : Prop :=
  ∀ n, (P14383485222711265960.a n : ℤ) = A158572 (n + 2)

end A158572

/-! ## A158572.P292325024865713006

`A050603(n)+Δ[A130766(n)]`
-/

namespace A158572.P292325024865713006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n + (f1 (n + 1) - f1 n)

end

end A158572.P292325024865713006

namespace A158572

/-- `A050603(n)+Δ[A130766(n)]` -/
def P292325024865713006.Spec : Prop :=
  ∀ n, P292325024865713006.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P1518382141162717333

`A050605(n)+Δ[A047351(n+1)]`
-/

namespace A158572.P1518382141162717333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n + (f1 (n + 1) - f1 n)

end

end A158572.P1518382141162717333

namespace A158572

/-- `A050605(n)+Δ[A047351(n+1)]` -/
def P1518382141162717333.Spec : Prop :=
  ∀ n, P1518382141162717333.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P16452750914341385063

`A001511(A309215(n)+1+n)`
-/

namespace A158572.P16452750914341385063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A309215 n + 1 + (n : ℤ)).toNat

end

end A158572.P16452750914341385063

namespace A158572

/-- `A001511(A309215(n)+1+n)` -/
def P16452750914341385063.Spec : Prop :=
  ∀ n, P16452750914341385063.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P13443633405442446836

`A001511(A022998(n+1)+∑[n]%2)`
-/

namespace A158572.P13443633405442446836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A022998 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)).toNat

end

end A158572.P13443633405442446836

namespace A158572

/-- `A001511(A022998(n+1)+∑[n]%2)` -/
def P13443633405442446836.Spec : Prop :=
  ∀ n, P13443633405442446836.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P7608974837064478192

`A324468(A047479(n+2))`
-/

namespace A158572.P7608974837064478192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (A047479 (n + 2)).toNat

end

end A158572.P7608974837064478192

namespace A158572

/-- `A324468(A047479(n+2))` -/
def P7608974837064478192.Spec : Prop :=
  ∀ n, P7608974837064478192.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P12766516486058823405

`A324468(A047507(n+1)+1)`
-/

namespace A158572.P12766516486058823405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (A047507 (n + 1) + 1).toNat

end

end A158572.P12766516486058823405

namespace A158572

/-- `A324468(A047507(n+1)+1)` -/
def P12766516486058823405.Spec : Prop :=
  ∀ n, P12766516486058823405.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P16783726586838246544

`A001511(A382865(n+1))`
-/

namespace A158572.P16783726586838246544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A382865 (n + 1)).toNat

end

end A158572.P16783726586838246544

namespace A158572

/-- `A001511(A382865(n+1))` -/
def P16783726586838246544.Spec : Prop :=
  ∀ n, P16783726586838246544.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P9633381892741414013

`val(Δ[n*A230928(n+1)], 2)`
-/

namespace A158572.P9633381892741414013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A158572.P9633381892741414013

namespace A158572

/-- `val(Δ[n*A230928(n+1)], 2)` -/
def P9633381892741414013.Spec : Prop :=
  ∀ n, (P9633381892741414013.a n : ℤ) = A158572 (n + 2)

end A158572

/-! ## A158572.P15720584874077791314

`A001511(A006519(∑[n+1]+1)+lcm(2, n)+1)`
-/

namespace A158572.P15720584874077791314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (Nat.lcm 2 n : ℤ) + 1).toNat

end

end A158572.P15720584874077791314

namespace A158572

/-- `A001511(A006519(∑[n+1]+1)+lcm(2, n)+1)` -/
def P15720584874077791314.Spec : Prop :=
  ∀ n, P15720584874077791314.a n = A158572 (n + 2)

end A158572

/-! ## A158572.P4394666904666609637

`A001511(A109043(n)+A006519(∑[n+1]+1)+1)`
-/

namespace A158572.P4394666904666609637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A109043 n + A006519 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A158572.P4394666904666609637

namespace A158572

/-- `A001511(A109043(n)+A006519(∑[n+1]+1)+1)` -/
def P4394666904666609637.Spec : Prop :=
  ∀ n, P4394666904666609637.a n = A158572 (n + 2)

end A158572

/-!
# A158573: Numbers k such that 30*k + 7 is prime.

The programs for A158573, the canonical program `A158573.P7707022528032758565` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158573 has offset 1).

The definition of A158573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158573.P7707022528032758565

`floor(A132231(n+1)/30)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A158573

/-- `floor(A132231(n+1)/30)` -/
def P7707022528032758565.Spec : Prop :=
  ∀ n, P7707022528032758565.a n = A158573 (n + 1)

theorem P7707022528032758565.correct : P7707022528032758565.Spec := by
  intro n
  simp only [A158573, Nat.add_sub_cancel]

end A158573

/-! ## A158573.P796744361386050313

`eq[1, A001222(30*n+7)]`
-/

namespace A158573.P796744361386050313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P796744361386050313

namespace A158573

/-- `eq[1, A001222(30*n+7)]` -/
def P796744361386050313.Spec : Prop :=
  ∀ n, (P796744361386050313.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P9974818716357458758

`eq[2, A000005(30*n+7)]`
-/

namespace A158573.P9974818716357458758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P9974818716357458758

namespace A158573

/-- `eq[2, A000005(30*n+7)]` -/
def P9974818716357458758.Spec : Prop :=
  ∀ n, (P9974818716357458758.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P16692153323618904532

`eq[30*n+7, A006530(30*n+7)]`
-/

namespace A158573.P16692153323618904532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (30 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P16692153323618904532

namespace A158573

/-- `eq[30*n+7, A006530(30*n+7)]` -/
def P16692153323618904532.Spec : Prop :=
  ∀ n, (P16692153323618904532.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P5893601897304178658

`eq[30*n+7, A020639(30*n+7)]`
-/

namespace A158573.P5893601897304178658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P5893601897304178658

namespace A158573

/-- `eq[30*n+7, A020639(30*n+7)]` -/
def P5893601897304178658.Spec : Prop :=
  ∀ n, (P5893601897304178658.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P10773779092491828679

`eq[1, A075743(A017293(n))]`
-/

namespace A158573.P10773779092491828679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P10773779092491828679

namespace A158573

/-- `eq[1, A075743(A017293(n))]` -/
def P10773779092491828679.Spec : Prop :=
  ∀ n, (P10773779092491828679.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P1419306674096128841

`eq[1, A075743(A017317(n)-2)]`
-/

namespace A158573.P1419306674096128841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017317 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P1419306674096128841

namespace A158573

/-- `eq[1, A075743(A017317(n)-2)]` -/
def P1419306674096128841.Spec : Prop :=
  ∀ n, (P1419306674096128841.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P12478741415845651079

`lt[A000005(A139606(2*n)+1), 3]`
-/

namespace A158573.P12478741415845651079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139606 (2 * n) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158573.P12478741415845651079

namespace A158573

/-- `lt[A000005(A139606(2*n)+1), 3]` -/
def P12478741415845651079.Spec : Prop :=
  ∀ n, (P12478741415845651079.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P3553780126283481595

`lt[A000005(6*A016861(n)+1), 3]`
-/

namespace A158573.P3553780126283481595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * A016861 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158573.P3553780126283481595

namespace A158573

/-- `lt[A000005(6*A016861(n)+1), 3]` -/
def P3553780126283481595.Spec : Prop :=
  ∀ n, (P3553780126283481595.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P18155182586143237104

`lt[A000203(A128471(n)), A082369(n+1)]`
-/

namespace A158573.P18155182586143237104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A128471 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158573.P18155182586143237104

namespace A158573

/-- `lt[A000203(A128471(n)), A082369(n+1)]` -/
def P18155182586143237104.Spec : Prop :=
  ∀ n, (P18155182586143237104.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P13747005708872439502

`eq[2, A116933(A017305(n)-2)]`
-/

namespace A158573.P13747005708872439502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A017305 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158573.P13747005708872439502

namespace A158573

/-- `eq[2, A116933(A017305(n)-2)]` -/
def P13747005708872439502.Spec : Prop :=
  ∀ n, (P13747005708872439502.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P10440510673471975522

`lt[n, A014963(30*n+7)]`
-/

namespace A158573.P10440510673471975522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158573.P10440510673471975522

namespace A158573

/-- `lt[n, A014963(30*n+7)]` -/
def P10440510673471975522.Spec : Prop :=
  ∀ n, (P10440510673471975522.a n : ℤ) = A158573 (n + 1)

end A158573

/-! ## A158573.P7939250183426723425

`A008651(A132231(n+1))`
-/

namespace A158573.P7939250183426723425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A132231 (n + 1)).toNat

end

end A158573.P7939250183426723425

namespace A158573

/-- `A008651(A132231(n+1))` -/
def P7939250183426723425.Spec : Prop :=
  ∀ n, P7939250183426723425.a n = A158573 (n + 1)

end A158573

/-!
# A158574: a(n) = 256*n^2 + 16.

The programs for A158574, the canonical program `A158574.P5034723378707897273` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158574 has offset 0).

The definition of A158574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `256*n²+16` (program `A158574.P5034723378707897273`, by `A158574.P5034723378707897273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158574.P5034723378707897273

`256*n²+16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158574

/-- `256*n²+16` -/
def P5034723378707897273.Spec : Prop :=
  ∀ n, (P5034723378707897273.a n : ℤ) = A158574 n

theorem P5034723378707897273.correct : P5034723378707897273.Spec := by
  intro n
  simp only [A158574]

end A158574

/-! ## A158574.P3456923155806209980

`or(16, (16*n)²)`
-/

namespace A158574.P3456923155806209980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 16 ((16 * n) ^ 2)

end

end A158574.P3456923155806209980

namespace A158574

/-- `or(16, (16*n)²)` -/
def P3456923155806209980.Spec : Prop :=
  ∀ n, (P3456923155806209980.a n : ℤ) = A158574 n

end A158574

/-! ## A158574.P12440468319445927055

`xor(16, (16*n)²)`
-/

namespace A158574.P12440468319445927055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 16 ((16 * n) ^ 2)

end

end A158574.P12440468319445927055

namespace A158574

/-- `xor(16, (16*n)²)` -/
def P12440468319445927055.Spec : Prop :=
  ∀ n, (P12440468319445927055.a n : ℤ) = A158574 n

end A158574

/-! ## A158574.P4506075069400051059

`lcm(16, 2*2*n*4*n+1)`
-/

namespace A158574.P4506075069400051059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 16 (2 * (2 * n * (4 * n)) + 1)

end

end A158574.P4506075069400051059

namespace A158574

/-- `lcm(16, 2*2*n*4*n+1)` -/
def P4506075069400051059.Spec : Prop :=
  ∀ n, (P4506075069400051059.a n : ℤ) = A158574 n

end A158574

/-! ## A158574.P15445625367599078645

`16*(4*∑[a(n-1)+8]-3)` with `a(0)=1, a(1)=4`
-/

namespace A158574.P15445625367599078645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 3)

end

end A158574.P15445625367599078645

namespace A158574

/-- `16*(4*∑[a(n-1)+8]-3)` -/
def P15445625367599078645.Spec : Prop :=
  ∀ n, P15445625367599078645.a n = A158574 n

end A158574

/-! ## A158574.P4488530719614503374

`4*(A158686(n)+3)`
-/

namespace A158574.P4488530719614503374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158686 n + 3)

end

end A158574.P4488530719614503374

namespace A158574

/-- `4*(A158686(n)+3)` -/
def P4488530719614503374.Spec : Prop :=
  ∀ n, P4488530719614503374.a n = A158574 n

theorem P4488530719614503374.correct : P4488530719614503374.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P4488530719614503374.a, A158574.P5034723378707897273.a, A158686, A158686.P15625956396772246712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P6117941179979227884

`4*(A017066(n)+4)`
-/

namespace A158574.P6117941179979227884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A017066 n + 4)

end

end A158574.P6117941179979227884

namespace A158574

/-- `4*(A017066(n)+4)` -/
def P6117941179979227884.Spec : Prop :=
  ∀ n, P6117941179979227884.a n = A158574 n

theorem P6117941179979227884.correct : P6117941179979227884.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P6117941179979227884.a, A158574.P5034723378707897273.a, A017066, A017066.P14577607273091826583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P393315990698722717

`8*(A244082(n)+2)`
-/

namespace A158574.P393315990698722717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A244082 n + 2)

end

end A158574.P393315990698722717

namespace A158574

/-- `8*(A244082(n)+2)` -/
def P393315990698722717.Spec : Prop :=
  ∀ n, P393315990698722717.a n = A158574 n

theorem P393315990698722717.correct : P393315990698722717.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P393315990698722717.a, A158574.P5034723378707897273.a, A244082, A244082.P4230128900204354164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P4940682665128874958

`8*A108100(2*n)`
-/

namespace A158574.P4940682665128874958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108100 (2 * n)

end

end A158574.P4940682665128874958

namespace A158574

/-- `8*A108100(2*n)` -/
def P4940682665128874958.Spec : Prop :=
  ∀ n, P4940682665128874958.a n = A158574 n

theorem P4940682665128874958.correct : P4940682665128874958.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P4940682665128874958.a, A158574.P5034723378707897273.a, A108100, A108100.P3833022910287010970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P5831153746407607536

`(A008598(2*n+1)-A008598(2*n))*A053755(2*n)`
-/

namespace A158574.P5831153746407607536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008598 (2 * n + 1) - A008598 (2 * n)) * A053755 (2 * n)

end

end A158574.P5831153746407607536

namespace A158574

/-- `(A008598(2*n+1)-A008598(2*n))*A053755(2*n)` -/
def P5831153746407607536.Spec : Prop :=
  ∀ n, P5831153746407607536.a n = A158574 n

theorem P5831153746407607536.correct : P5831153746407607536.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P5831153746407607536.a, A158574.P5034723378707897273.a, A008598, A008598.P6226039880973179911.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P2633953947090555438

`16*A081345(4*n)`
-/

namespace A158574.P2633953947090555438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A081345 (4 * n)

end

end A158574.P2633953947090555438

namespace A158574

/-- `16*A081345(4*n)` -/
def P2633953947090555438.Spec : Prop :=
  ∀ n, P2633953947090555438.a n = A158574 n

end A158574

/-! ## A158574.P10432549309713203669

`A133265(2*n)²²*A002522(4*n)`
-/

namespace A158574.P10432549309713203669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133265 (2 * n) ^ 2) ^ 2 * A002522 (4 * n)

end

end A158574.P10432549309713203669

namespace A158574

/-- `A133265(2*n)²²*A002522(4*n)` -/
def P10432549309713203669.Spec : Prop :=
  ∀ n, P10432549309713203669.a n = A158574 n

end A158574

/-! ## A158574.P10283340911451776211

`(A241847(n+1)-A002522(n+1))*A002522(4*n)`
-/

namespace A158574.P10283340911451776211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241847 (n + 1) - A002522 (n + 1)) * A002522 (4 * n)

end

end A158574.P10283340911451776211

namespace A158574

/-- `(A241847(n+1)-A002522(n+1))*A002522(4*n)` -/
def P10283340911451776211.Spec : Prop :=
  ∀ n, P10283340911451776211.a n = A158574 n

theorem P10283340911451776211.correct : P10283340911451776211.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P10283340911451776211.a, A158574.P5034723378707897273.a, A002522, A002522.P3778392011853271743.a, A241847, A241847.P8388503422762483598.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P6341549971505590522

`2*A155966(8*n)`
-/

namespace A158574.P6341549971505590522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155966 (8 * n)

end

end A158574.P6341549971505590522

namespace A158574

/-- `2*A155966(8*n)` -/
def P6341549971505590522.Spec : Prop :=
  ∀ n, P6341549971505590522.a n = A158574 n

theorem P6341549971505590522.correct : P6341549971505590522.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P6341549971505590522.a, A158574.P5034723378707897273.a, A155966, A155966.P536139070605951251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P4670039855428621615

`4*A087475(8*n)`
-/

namespace A158574.P4670039855428621615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A087475 (8 * n)

end

end A158574.P4670039855428621615

namespace A158574

/-- `4*A087475(8*n)` -/
def P4670039855428621615.Spec : Prop :=
  ∀ n, P4670039855428621615.a n = A158574 n

theorem P4670039855428621615.correct : P4670039855428621615.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P4670039855428621615.a, A158574.P5034723378707897273.a, A087475, A087475.P4372105407425732933.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-! ## A158574.P13281384455425745257

`A241751(16*n)`
-/

namespace A158574.P13281384455425745257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241751 (16 * n)

end

end A158574.P13281384455425745257

namespace A158574

/-- `A241751(16*n)` -/
def P13281384455425745257.Spec : Prop :=
  ∀ n, P13281384455425745257.a n = A158574 n

theorem P13281384455425745257.correct : P13281384455425745257.Spec := by
  intro n
  simp only [A158574, Nat.add_sub_cancel, A158574.P13281384455425745257.a, A158574.P5034723378707897273.a, A241751, A241751.P7792988430586457364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158574

/-!
# A158575: a(n) = 32*n^2 + 1.

The programs for A158575, the canonical program `A158575.P14119471849793563473` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158575 has offset 0).

The definition of A158575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n²+1` (program `A158575.P14119471849793563473`, by `A158575.P14119471849793563473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158575.P14119471849793563473

`32*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158575

/-- `32*n²+1` -/
def P14119471849793563473.Spec : Prop :=
  ∀ n, (P14119471849793563473.a n : ℤ) = A158575 n

theorem P14119471849793563473.correct : P14119471849793563473.Spec := by
  intro n
  simp only [A158575]

end A158575

/-! ## A158575.P9585195065296796783

`A081585(2*n)`
-/

namespace A158575.P9585195065296796783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 (2 * n)

end

end A158575.P9585195065296796783

namespace A158575

/-- `A081585(2*n)` -/
def P9585195065296796783.Spec : Prop :=
  ∀ n, P9585195065296796783.a n = A158575 n

theorem P9585195065296796783.correct : P9585195065296796783.Spec := by
  intro n
  simp only [A158575, Nat.add_sub_cancel, A158575.P9585195065296796783.a, A158575.P14119471849793563473.a, A081585, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158575

/-! ## A158575.P3391787756893631864

`or(1, 32*n²)`
-/

namespace A158575.P3391787756893631864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (32 * n ^ 2)

end

end A158575.P3391787756893631864

namespace A158575

/-- `or(1, 32*n²)` -/
def P3391787756893631864.Spec : Prop :=
  ∀ n, (P3391787756893631864.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P4356455874181824243

`xor(1, 32*n²)`
-/

namespace A158575.P4356455874181824243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (32 * n ^ 2)

end

end A158575.P4356455874181824243

namespace A158575

/-- `xor(1, 32*n²)` -/
def P4356455874181824243.Spec : Prop :=
  ∀ n, (P4356455874181824243.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P8316594153566485750

`A275543(4*n)`
-/

namespace A158575.P8316594153566485750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (4 * n)

end

end A158575.P8316594153566485750

namespace A158575

/-- `A275543(4*n)` -/
def P8316594153566485750.Spec : Prop :=
  ∀ n, P8316594153566485750.a n = A158575 n

end A158575

/-! ## A158575.P952335042388059181

`ceil(A158686(n)/2)`
-/

namespace A158575.P952335042388059181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158686 n : ℚ) / 2⌉

end

end A158575.P952335042388059181

namespace A158575

/-- `ceil(A158686(n)/2)` -/
def P952335042388059181.Spec : Prop :=
  ∀ n, P952335042388059181.a n = A158575 n

end A158575

/-! ## A158575.P6907264396634732395

`(A017066(n)+2)/2`
-/

namespace A158575.P6907264396634732395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017066 n + 2 : ℚ) / 2

end

end A158575.P6907264396634732395

namespace A158575

/-- `(A017066(n)+2)/2` -/
def P6907264396634732395.Spec : Prop :=
  ∀ n, P6907264396634732395.a n = (A158575 n : ℚ)

theorem P6907264396634732395.correct : P6907264396634732395.Spec := by
  intro n
  simp only [A158575, Nat.add_sub_cancel, A158575.P6907264396634732395.a, A158575.P14119471849793563473.a, A017066, A017066.P14577607273091826583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158575

/-! ## A158575.P8482573089477383207

`ceil(A010006(2*n)/2)`
-/

namespace A158575.P8482573089477383207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010006 (2 * n) : ℚ) / 2⌉

end

end A158575.P8482573089477383207

namespace A158575

/-- `ceil(A010006(2*n)/2)` -/
def P8482573089477383207.Spec : Prop :=
  ∀ n, P8482573089477383207.a n = A158575 n

end A158575

/-! ## A158575.P7842318826554348071

`A249356(A131098(n+1))`
-/

namespace A158575.P7842318826554348071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A131098 (n + 1)).toNat

end

end A158575.P7842318826554348071

namespace A158575

/-- `A249356(A131098(n+1))` -/
def P7842318826554348071.Spec : Prop :=
  ∀ n, P7842318826554348071.a n = A158575 n

end A158575

/-! ## A158575.P3077706907778177382

`∩[A249356(n+1), A081585(n)]`
-/

namespace A158575.P3077706907778177382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158575.P3077706907778177382

namespace A158575

/-- `∩[A249356(n+1), A081585(n)]` -/
def P3077706907778177382.Spec : Prop :=
  ∀ n, (P3077706907778177382.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P16346800677041512634

`A058331(4*n)`
-/

namespace A158575.P16346800677041512634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (4 * n)

end

end A158575.P16346800677041512634

namespace A158575

/-- `A058331(4*n)` -/
def P16346800677041512634.Spec : Prop :=
  ∀ n, P16346800677041512634.a n = A158575 n

theorem P16346800677041512634.correct : P16346800677041512634.Spec := by
  intro n
  simp only [A158575, Nat.add_sub_cancel, A158575.P16346800677041512634.a, A158575.P14119471849793563473.a, A058331, A058331.P11448505833250118096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158575

/-! ## A158575.P8341045905083085678

`∩[A249356(n+1), A058331(n)]`
-/

namespace A158575.P8341045905083085678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158575.P8341045905083085678

namespace A158575

/-- `∩[A249356(n+1), A058331(n)]` -/
def P8341045905083085678.Spec : Prop :=
  ∀ n, (P8341045905083085678.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P481509869855317107

`A099392(7*n+n+1)`
-/

namespace A158575.P481509869855317107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (7 * n + (n + 1))

end

end A158575.P481509869855317107

namespace A158575

/-- `A099392(7*n+n+1)` -/
def P481509869855317107.Spec : Prop :=
  ∀ n, P481509869855317107.a n = A158575 n

end A158575

/-! ## A158575.P8658780450838696900

`A031940(A022144(n))`
-/

namespace A158575.P8658780450838696900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (A022144 n).toNat

end

end A158575.P8658780450838696900

namespace A158575

/-- `A031940(A022144(n))` -/
def P8658780450838696900.Spec : Prop :=
  ∀ n, P8658780450838696900.a n = A158575 n

end A158575

/-! ## A158575.P17220371592469651938

`∩[A118002(n), A249356(n+1)]`
-/

namespace A158575.P17220371592469651938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158575.P17220371592469651938

namespace A158575

/-- `∩[A118002(n), A249356(n+1)]` -/
def P17220371592469651938.Spec : Prop :=
  ∀ n, (P17220371592469651938.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P17722535759496711547

`∩[A031940(n+1), A249356(n+1)]`
-/

namespace A158575.P17722535759496711547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158575.P17722535759496711547

namespace A158575

/-- `∩[A031940(n+1), A249356(n+1)]` -/
def P17722535759496711547.Spec : Prop :=
  ∀ n, (P17722535759496711547.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P13034928501439715705

`∩[A080827(n+1), A249356(n+1)]`
-/

namespace A158575.P13034928501439715705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158575.P13034928501439715705

namespace A158575

/-- `∩[A080827(n+1), A249356(n+1)]` -/
def P13034928501439715705.Spec : Prop :=
  ∀ n, (P13034928501439715705.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P125507669032318189

`∩[A249356(n+1), A329279(n+1)]`
-/

namespace A158575.P125507669032318189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158575.P125507669032318189

namespace A158575

/-- `∩[A249356(n+1), A329279(n+1)]` -/
def P125507669032318189.Spec : Prop :=
  ∀ n, (P125507669032318189.a n : ℤ) = A158575 n

end A158575

/-! ## A158575.P6185809236888538094

`A061925(8*n)`
-/

namespace A158575.P6185809236888538094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (8 * n)

end

end A158575.P6185809236888538094

namespace A158575

/-- `A061925(8*n)` -/
def P6185809236888538094.Spec : Prop :=
  ∀ n, P6185809236888538094.a n = A158575 n

end A158575

/-! ## A158575.P1532625899462206877

`A097063(8*n)`
-/

namespace A158575.P1532625899462206877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 (8 * n)

end

end A158575.P1532625899462206877

namespace A158575

/-- `A097063(8*n)` -/
def P1532625899462206877.Spec : Prop :=
  ∀ n, P1532625899462206877.a n = A158575 n

end A158575

/-!
# A158576: a(n) = number of components of the graph P(n,10) (defined in Comments).

The programs for A158576, there is no canonical definition to state claims against.
-/

/-! ## A158576.P1057951562248468737

`A103221(xor(3, A049366(n+1)))`
-/

namespace A158576.P1057951562248468737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.xor 3 (A049366 (n + 1))).toNat

end

end A158576.P1057951562248468737

/-! ## A158576.P10331566529583110198

`ceil(A114472(n)/A089981(n+1))`
-/

namespace A158576.P10331566529583110198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114472 n : ℚ) / (A089981 (n + 1) : ℚ)⌉

end

end A158576.P10331566529583110198

/-!
# A158577: a(n) = size of the n-th term in S(10) (defined in Comments).

The programs for A158577, there is no canonical definition to state claims against.
-/

/-! ## A158577.P6121454313624913285

`Δ[A006880(n)]-A178926(A150973(n))`
-/

namespace A158577.P6121454313624913285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A178926 (A150973 n).toNat

end

end A158577.P6121454313624913285

/-! ## A158577.P9905087518026959934

`A006879(n+1)-A178926(A150973(n))`
-/

namespace A158577.P9905087518026959934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 (n + 1) - A178926 (A150973 n).toNat

end

end A158577.P9905087518026959934

/-!
# A158580: a(n) = Hermite(n, 15).

The programs for A158580, the canonical program `A158580.P15007208283425132091` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158580 has offset 0).

The definition of A158580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158580.P15007208283425132091

`30*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158580

/-- `30*a(n-1)-2*(n-1)*a(n-2)` -/
def P15007208283425132091.Spec : Prop :=
  ∀ n, P15007208283425132091.a n = A158580 n

theorem P15007208283425132091.correct : P15007208283425132091.Spec := by
  intro n
  simp only [A158580]

end A158580

/-!
# A158581: Numbers having in binary representation at least two ones and two zeros.

The programs for A158581, the canonical program `A158581.P5022531893962303272` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158581 has offset 1).

The definition of A158581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158581.P5022531893962303272

`lt[0, A164884(A164884(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A158581

/-- `lt[0, A164884(A164884(n))]` -/
def P5022531893962303272.Spec : Prop :=
  ∀ n, (P5022531893962303272.a n : ℤ) = A158581 (n + 1)

theorem P5022531893962303272.correct : P5022531893962303272.Spec := by
  intro n
  simp only [A158581, Nat.add_sub_cancel]

end A158581

/-! ## A158581.P17941475071474212632

`eq[A099893(n), A391442(n)]`
-/

namespace A158581.P17941475071474212632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P17941475071474212632

namespace A158581

/-- `eq[A099893(n), A391442(n)]` -/
def P17941475071474212632.Spec : Prop :=
  ∀ n, (P17941475071474212632.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P11128367429141769437

`eq[A182660(n), A391442(n)]`
-/

namespace A158581.P11128367429141769437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P11128367429141769437

namespace A158581

/-- `eq[A182660(n), A391442(n)]` -/
def P11128367429141769437.Spec : Prop :=
  ∀ n, (P11128367429141769437.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P3949210316292143513

`eq[A209229(n), A391442(n)]`
-/

namespace A158581.P3949210316292143513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P3949210316292143513

namespace A158581

/-- `eq[A209229(n), A391442(n)]` -/
def P3949210316292143513.Spec : Prop :=
  ∀ n, (P3949210316292143513.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P7253397365837954969

`eq[A255308(n), A391442(n)]`
-/

namespace A158581.P7253397365837954969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P7253397365837954969

namespace A158581

/-- `eq[A255308(n), A391442(n)]` -/
def P7253397365837954969.Spec : Prop :=
  ∀ n, (P7253397365837954969.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P12989478475533863963

`eq[A255309(n), A391442(n)]`
-/

namespace A158581.P12989478475533863963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P12989478475533863963

namespace A158581

/-- `eq[A255309(n), A391442(n)]` -/
def P12989478475533863963.Spec : Prop :=
  ∀ n, (P12989478475533863963.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P6488883454032509015

`eq[A341509(3*n)*A341509(4*n), A341509(n+1)]`
-/

namespace A158581.P6488883454032509015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341509 (3 * n) * A341509 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P6488883454032509015

namespace A158581

/-- `eq[A341509(3*n)*A341509(4*n), A341509(n+1)]` -/
def P6488883454032509015.Spec : Prop :=
  ∀ n, (P6488883454032509015.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P6435938468408209548

`filter[A158582(n+1), A347523(#)]`
-/

namespace A158581.P6435938468408209548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A158581.P6435938468408209548

namespace A158581

/-- `filter[A158582(n+1), A347523(#)]` -/
def P6435938468408209548.Spec : Prop :=
  ∀ n, P6435938468408209548.a n = A158581 (n + 1)

end A158581

/-! ## A158581.P7857396230520187168

`∩[A158582(n+1), A383666(n+1)]`
-/

namespace A158581.P7857396230520187168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158581.P7857396230520187168

namespace A158581

/-- `∩[A158582(n+1), A383666(n+1)]` -/
def P7857396230520187168.Spec : Prop :=
  ∀ n, (P7857396230520187168.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P4138040721157802495

`∩[A158582(n+1), A057716(n)]`
-/

namespace A158581.P4138040721157802495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158581.P4138040721157802495

namespace A158581

/-- `∩[A158582(n+1), A057716(n)]` -/
def P4138040721157802495.Spec : Prop :=
  ∀ n, (P4138040721157802495.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P7119563061319420353

`∩[A062289(n+1), A383666(n+1)]`
-/

namespace A158581.P7119563061319420353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158581.P7119563061319420353

namespace A158581

/-- `∩[A062289(n+1), A383666(n+1)]` -/
def P7119563061319420353.Spec : Prop :=
  ∀ n, (P7119563061319420353.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P15470873370997967427

`∩[A138591(n+1), A158582(n+1)]`
-/

namespace A158581.P15470873370997967427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158581.P15470873370997967427

namespace A158581

/-- `∩[A138591(n+1), A158582(n+1)]` -/
def P15470873370997967427.Spec : Prop :=
  ∀ n, (P15470873370997967427.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P8620875779422648799

`lt[1, A152723(n+1)]+1`
-/

namespace A158581.P8620875779422648799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A158581.P8620875779422648799

namespace A158581

/-- `lt[1, A152723(n+1)]+1` -/
def P8620875779422648799.Spec : Prop :=
  ∀ n, (P8620875779422648799.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P9238066212040608709

`eq[A048298(n), A391442(n)]`
-/

namespace A158581.P9238066212040608709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A158581.P9238066212040608709

namespace A158581

/-- `eq[A048298(n), A391442(n)]` -/
def P9238066212040608709.Spec : Prop :=
  ∀ n, (P9238066212040608709.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P14766046559021447205

`filter[A383666(n+1), A043545(#)]`
-/

namespace A158581.P14766046559021447205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A158581.P14766046559021447205

namespace A158581

/-- `filter[A383666(n+1), A043545(#)]` -/
def P14766046559021447205.Spec : Prop :=
  ∀ n, P14766046559021447205.a n = A158581 (n + 1)

end A158581

/-! ## A158581.P5818236509900295380

`lt[1, A152723(A004277(n)-n)]`
-/

namespace A158581.P5818236509900295380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158581.P5818236509900295380

namespace A158581

/-- `lt[1, A152723(A004277(n)-n)]` -/
def P5818236509900295380.Spec : Prop :=
  ∀ n, (P5818236509900295380.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P12226869688964837445

`lt[1, A152723(gcd(n, A004277(n)))]`
-/

namespace A158581.P12226869688964837445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152723 (Int.gcd (n : ℤ) (A004277 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158581.P12226869688964837445

namespace A158581

/-- `lt[1, A152723(gcd(n, A004277(n)))]` -/
def P12226869688964837445.Spec : Prop :=
  ∀ n, (P12226869688964837445.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P2629861347519091062

`lt[2, A301977(A301984(n+1))]+1`
-/

namespace A158581.P2629861347519091062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301977 (A301984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A158581.P2629861347519091062

namespace A158581

/-- `lt[2, A301977(A301984(n+1))]+1` -/
def P2629861347519091062.Spec : Prop :=
  ∀ n, (P2629861347519091062.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P6585517900979187160

`lt[A099246(n), A000120(n)*A023416(n)]`
-/

namespace A158581.P6585517900979187160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158581.P6585517900979187160

namespace A158581

/-- `lt[A099246(n), A000120(n)*A023416(n)]` -/
def P6585517900979187160.Spec : Prop :=
  ∀ n, (P6585517900979187160.a n : ℤ) = A158581 (n + 1)

end A158581

/-! ## A158581.P8875676032873711204

`lt[A006519(n+1), A000265(A000265(n+2)+1)]+1`
-/

namespace A158581.P8875676032873711204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A158581.P8875676032873711204

namespace A158581

/-- `lt[A006519(n+1), A000265(A000265(n+2)+1)]+1` -/
def P8875676032873711204.Spec : Prop :=
  ∀ n, (P8875676032873711204.a n : ℤ) = A158581 (n + 1)

end A158581

/-!
# A158582: Numbers with at least two zeros in their binary representation.

The programs for A158582, the canonical program `A158582.P6978795775471315550` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158582 has offset 1).

The definition of A158582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158582.P15785319401298582557

`comp[and(n, xor(n, -n)-n)-1]`
-/

namespace A158582.P15785319401298582557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)) - (n : ℤ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158582.P15785319401298582557

namespace A158582

/-- `comp[and(n, xor(n, -n)-n)-1]` -/
def P15785319401298582557.Spec : Prop :=
  ∀ n, (P15785319401298582557.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P6978795775471315550

`lt[2, gcd(2, n)*a(floor(n/2))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158582

/-- `lt[2, gcd(2, n)*a(floor(n/2))]` -/
def P6978795775471315550.Spec : Prop :=
  ∀ n, (P6978795775471315550.a n : ℤ) = A158582 (n + 1)

theorem P6978795775471315550.correct : P6978795775471315550.Spec := by
  intro n
  simp only [A158582, Nat.add_sub_cancel]

end A158582

/-! ## A158582.P16468553248802165286

`lt[2*a(and(n, n-1))+1, n]` with `a(0)=1`
-/

namespace A158582.P16468553248802165286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158582.P16468553248802165286

namespace A158582

/-- `lt[2*a(and(n, n-1))+1, n]` -/
def P16468553248802165286.Spec : Prop :=
  ∀ n, (P16468553248802165286.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P9095978516231015689

`lt[lcm(2, a(and(n, n-1)))+1, n]` with `a(0)=1`
-/

namespace A158582.P9095978516231015689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 2 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158582.P9095978516231015689

namespace A158582

/-- `lt[lcm(2, a(and(n, n-1)))+1, n]` -/
def P9095978516231015689.Spec : Prop :=
  ∀ n, (P9095978516231015689.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P10632407407334358254

`lt[2*a(and(n, n-1)), or(1, n)]` with `a(0)=2`
-/

namespace A158582.P10632407407334358254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158582.P10632407407334358254

namespace A158582

/-- `lt[2*a(and(n, n-1)), or(1, n)]` -/
def P10632407407334358254.Spec : Prop :=
  ∀ n, (P10632407407334358254.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P14850874392409783811

`lt[1, a(floor(n/2))+(n+1)%2]` with `a(0)=0`
-/

namespace A158582.P14850874392409783811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158582.P14850874392409783811

namespace A158582

/-- `lt[1, a(floor(n/2))+(n+1)%2]` -/
def P14850874392409783811.Spec : Prop :=
  ∀ n, (P14850874392409783811.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P9482285615484696667

`comp[or(n, and(-(n+2), a(n-1)))]` with `a(0)=1, a(1)=0`
-/

namespace A158582.P9482285615484696667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Int.lor (n : ℤ) (Int.land (-(n + 2 : ℤ)) (f1 (n - 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158582.P9482285615484696667

namespace A158582

/-- `comp[or(n, and(-(n+2), a(n-1)))]` -/
def P9482285615484696667.Spec : Prop :=
  ∀ n, (P9482285615484696667.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P14597591463832525840

`comp[eq[and(n, 2*n), and(n, n-1)]-1]`
-/

namespace A158582.P14597591463832525840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158582.P14597591463832525840

namespace A158582

/-- `comp[eq[and(n, 2*n), and(n, n-1)]-1]` -/
def P14597591463832525840.Spec : Prop :=
  ∀ n, (P14597591463832525840.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P10876570395720765309

`lt[3, a(floor(n/2))*a(n%2)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A158582.P10876570395720765309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat * f2 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158582.P10876570395720765309

namespace A158582

/-- `lt[3, a(floor(n/2))*a(n%2)]` -/
def P10876570395720765309.Spec : Prop :=
  ∀ n, (P10876570395720765309.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P3881279915952733099

`lt[lcm(n, 2*(a(n-1)+1))/n-1, n]` with `a(0)=1`
-/

namespace A158582.P3881279915952733099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (2 * (f1 (n - 1) + 1))) : ℚ) / (n : ℚ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A158582.P3881279915952733099

namespace A158582

/-- `lt[lcm(n, 2*(a(n-1)+1))/n-1, n]` -/
def P3881279915952733099.Spec : Prop :=
  ∀ n, (P3881279915952733099.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P13562825716882927022

`lt[2^val(n+1, 2), (a(n-1)-1+n)%n]` with `a(0)=0`
-/

namespace A158582.P13562825716882927022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod (f2 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158582.P13562825716882927022

namespace A158582

/-- `lt[2^val(n+1, 2), (a(n-1)-1+n)%n]` -/
def P13562825716882927022.Spec : Prop :=
  ∀ n, (P13562825716882927022.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P15260974879615009816

`comp[A089633(n)]`
-/

namespace A158582.P15260974879615009816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158582.P15260974879615009816

namespace A158582

/-- `comp[A089633(n)]` -/
def P15260974879615009816.Spec : Prop :=
  ∀ n, (P15260974879615009816.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P13166101788599160970

`eq[0, A391442(n)]`
-/

namespace A158582.P13166101788599160970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158582.P13166101788599160970

namespace A158582

/-- `eq[0, A391442(n)]` -/
def P13166101788599160970.Spec : Prop :=
  ∀ n, (P13166101788599160970.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P767350574459765218

`lt[2, A124758(n)]`
-/

namespace A158582.P767350574459765218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158582.P767350574459765218

namespace A158582

/-- `lt[2, A124758(n)]` -/
def P767350574459765218.Spec : Prop :=
  ∀ n, (P767350574459765218.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P18439783870277019747

`lt[4, A267584(n)]`
-/

namespace A158582.P18439783870277019747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158582.P18439783870277019747

namespace A158582

/-- `lt[4, A267584(n)]` -/
def P18439783870277019747.Spec : Prop :=
  ∀ n, (P18439783870277019747.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P4241940181569591200

`lt[A209639(n), n]`
-/

namespace A158582.P4241940181569591200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158582.P4241940181569591200

namespace A158582

/-- `lt[A209639(n), n]` -/
def P4241940181569591200.Spec : Prop :=
  ∀ n, (P4241940181569591200.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P11821760115306833303

`comp[A130328(n)-1]`
-/

namespace A158582.P11821760115306833303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158582.P11821760115306833303

namespace A158582

/-- `comp[A130328(n)-1]` -/
def P11821760115306833303.Spec : Prop :=
  ∀ n, (P11821760115306833303.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P8754605042464505009

`comp[A173787(n)-1]`
-/

namespace A158582.P8754605042464505009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158582.P8754605042464505009

namespace A158582

/-- `comp[A173787(n)-1]` -/
def P8754605042464505009.Spec : Prop :=
  ∀ n, (P8754605042464505009.a n : ℤ) = A158582 (n + 1)

end A158582

/-! ## A158582.P17889679433468803018

`A101082(n+1)-1`
-/

namespace A158582.P17889679433468803018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1) - 1

end

end A158582.P17889679433468803018

namespace A158582

/-- `A101082(n+1)-1` -/
def P17889679433468803018.Spec : Prop :=
  ∀ n, P17889679433468803018.a n = A158582 (n + 1)

end A158582

/-! ## A158582.P7838674733412547150

`eq[0, A340375(n+1)]`
-/

namespace A158582.P7838674733412547150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158582.P7838674733412547150

namespace A158582

/-- `eq[0, A340375(n+1)]` -/
def P7838674733412547150.Spec : Prop :=
  ∀ n, (P7838674733412547150.a n : ℤ) = A158582 (n + 1)

end A158582

/-!
# A158585: a(n) = 289*n^2 + 17.

The programs for A158585, the canonical program `A158585.P9020550990035552634` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158585 has offset 0).

The definition of A158585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `289*n²+17` (program `A158585.P9020550990035552634`, by `A158585.P9020550990035552634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158585.P9020550990035552634

`289*n²+17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158585

/-- `289*n²+17` -/
def P9020550990035552634.Spec : Prop :=
  ∀ n, (P9020550990035552634.a n : ℤ) = A158585 n

theorem P9020550990035552634.correct : P9020550990035552634.Spec := by
  intro n
  simp only [A158585]

end A158585

/-! ## A158585.P1450401383089538755

`lcm(17, 17*n*n+1)`
-/

namespace A158585.P1450401383089538755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 17 (17 * (n * n) + 1)

end

end A158585.P1450401383089538755

namespace A158585

/-- `lcm(17, 17*n*n+1)` -/
def P1450401383089538755.Spec : Prop :=
  ∀ n, (P1450401383089538755.a n : ℤ) = A158585 n

end A158585

/-! ## A158585.P15175049597242052892

`17*(A244630(n)+1)`
-/

namespace A158585.P15175049597242052892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (A244630 n + 1)

end

end A158585.P15175049597242052892

namespace A158585

/-- `17*(A244630(n)+1)` -/
def P15175049597242052892.Spec : Prop :=
  ∀ n, P15175049597242052892.a n = A158585 n

theorem P15175049597242052892.correct : P15175049597242052892.Spec := by
  intro n
  simp only [A158585, Nat.add_sub_cancel, A158585.P15175049597242052892.a, A158585.P9020550990035552634.a, A244630, A244630.P17246717711598176874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158585

/-! ## A158585.P201305695390019322

`17*(17*A000290(n)+1)`
-/

namespace A158585.P201305695390019322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (17 * A000290 n + 1)

end

end A158585.P201305695390019322

namespace A158585

/-- `17*(17*A000290(n)+1)` -/
def P201305695390019322.Spec : Prop :=
  ∀ n, P201305695390019322.a n = A158585 n

theorem P201305695390019322.correct : P201305695390019322.Spec := by
  intro n
  simp only [A158585, Nat.add_sub_cancel, A158585.P201305695390019322.a, A158585.P9020550990035552634.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158585

/-! ## A158585.P11840969616575104369

`A241847(17*n)`
-/

namespace A158585.P11840969616575104369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241847 (17 * n)

end

end A158585.P11840969616575104369

namespace A158585

/-- `A241847(17*n)` -/
def P11840969616575104369.Spec : Prop :=
  ∀ n, P11840969616575104369.a n = A158585 n

theorem P11840969616575104369.correct : P11840969616575104369.Spec := by
  intro n
  simp only [A158585, Nat.add_sub_cancel, A158585.P11840969616575104369.a, A158585.P9020550990035552634.a, A241847, A241847.P8388503422762483598.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158585

/-!
# A158586: a(n) = 34*n^2 + 1.

The programs for A158586, the canonical program `A158586.P14210663653100296572` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158586 has offset 0).

The definition of A158586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34*n²+1` (program `A158586.P14210663653100296572`, by `A158586.P14210663653100296572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158586.P14210663653100296572

`34*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158586

/-- `34*n²+1` -/
def P14210663653100296572.Spec : Prop :=
  ∀ n, (P14210663653100296572.a n : ℤ) = A158586 n

theorem P14210663653100296572.correct : P14210663653100296572.Spec := by
  intro n
  simp only [A158586]

end A158586

/-! ## A158586.P2282072955233597954

`or(1, 34*n²)`
-/

namespace A158586.P2282072955233597954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (34 * n ^ 2)

end

end A158586.P2282072955233597954

namespace A158586

/-- `or(1, 34*n²)` -/
def P2282072955233597954.Spec : Prop :=
  ∀ n, (P2282072955233597954.a n : ℤ) = A158586 n

end A158586

/-! ## A158586.P4503643244978290898

`xor(1, 34*n²)`
-/

namespace A158586.P4503643244978290898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (34 * n ^ 2)

end

end A158586.P4503643244978290898

namespace A158586

/-- `xor(1, 34*n²)` -/
def P4503643244978290898.Spec : Prop :=
  ∀ n, (P4503643244978290898.a n : ℤ) = A158586 n

end A158586

/-! ## A158586.P11049091237125821066

`ceil(A158732(n)/2)`
-/

namespace A158586.P11049091237125821066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158732 n : ℚ) / 2⌉

end

end A158586.P11049091237125821066

namespace A158586

/-- `ceil(A158732(n)/2)` -/
def P11049091237125821066.Spec : Prop :=
  ∀ n, P11049091237125821066.a n = A158586 n

end A158586

/-! ## A158586.P17632658999368830250

`abs(xor(-1, A303302(n)))`
-/

namespace A158586.P17632658999368830250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A303302 n)|

end

end A158586.P17632658999368830250

namespace A158586

/-- `abs(xor(-1, A303302(n)))` -/
def P17632658999368830250.Spec : Prop :=
  ∀ n, P17632658999368830250.a n = A158586 n

end A158586

/-! ## A158586.P6974251820213386800

`ceil(((abs(1-n)+16*n+1)*A046092(n)+1)/(n+1))`
-/

namespace A158586.P6974251820213386800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((|1 - (n : ℤ)| + (16 * n + 1 : ℤ)) * A046092 n + 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A158586.P6974251820213386800

namespace A158586

/-- `ceil(((abs(1-n)+16*n+1)*A046092(n)+1)/(n+1))` -/
def P6974251820213386800.Spec : Prop :=
  ∀ n, P6974251820213386800.a n = A158586 n

end A158586

/-! ## A158586.P16066415137487264203

`(A005899(n)+A022144(n)²)/2`
-/

namespace A158586.P16066415137487264203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005899 n + A022144 n ^ 2 : ℚ) / 2

end

end A158586.P16066415137487264203

namespace A158586

/-- `(A005899(n)+A022144(n)²)/2` -/
def P16066415137487264203.Spec : Prop :=
  ∀ n, P16066415137487264203.a n = (A158586 n : ℚ)

end A158586

/-! ## A158586.P15534585047714868443

`(A303302(n)+1)%A297991(n+1)`
-/

namespace A158586.P15534585047714868443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303302 n + 1) (A297991 (n + 1))

end

end A158586.P15534585047714868443

namespace A158586

/-- `(A303302(n)+1)%A297991(n+1)` -/
def P15534585047714868443.Spec : Prop :=
  ∀ n, P15534585047714868443.a n = A158586 n

end A158586

/-! ## A158586.P11562810865299101909

`A215137(2*n²)`
-/

namespace A158586.P11562810865299101909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 (2 * n ^ 2)

end

end A158586.P11562810865299101909

namespace A158586

/-- `A215137(2*n²)` -/
def P11562810865299101909.Spec : Prop :=
  ∀ n, P11562810865299101909.a n = A158586 n

theorem P11562810865299101909.correct : P11562810865299101909.Spec := by
  intro n
  simp only [A158586, Nat.add_sub_cancel, A158586.P11562810865299101909.a, A158586.P14210663653100296572.a, A215137, A215137.P16345260773211617231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158586

/-! ## A158586.P13971194103479367991

`A151978(2*A061925(2*n))`
-/

namespace A158586.P13971194103479367991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (2 * A061925 (2 * n)).toNat

end

end A158586.P13971194103479367991

namespace A158586

/-- `A151978(2*A061925(2*n))` -/
def P13971194103479367991.Spec : Prop :=
  ∀ n, P13971194103479367991.a n = A158586 n

end A158586

/-!
# A158587: a(n) = 289*n^2 - 17.

The programs for A158587, the canonical program `A158587.P5491444507565883784` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158587 has offset 1).

The definition of A158587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `289*(n+1)²-17` (program `A158587.P5491444507565883784`, by `A158587.P5491444507565883784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158587.P5491444507565883784

`289*(n+1)²-17`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158587

/-- `289*(n+1)²-17` -/
def P5491444507565883784.Spec : Prop :=
  ∀ n, P5491444507565883784.a n = A158587 (n + 1)

theorem P5491444507565883784.correct : P5491444507565883784.Spec := by
  intro n
  simp only [A158587, Nat.add_sub_cancel]

end A158587

/-! ## A158587.P11081414087230202682

`17*A321180(n+1)`
-/

namespace A158587.P11081414087230202682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A321180 (n + 1)

end

end A158587.P11081414087230202682

namespace A158587

/-- `17*A321180(n+1)` -/
def P11081414087230202682.Spec : Prop :=
  ∀ n, P11081414087230202682.a n = A158587 (n + 1)

theorem P11081414087230202682.correct : P11081414087230202682.Spec := by
  intro n
  simp only [A158587, Nat.add_sub_cancel, A158587.P11081414087230202682.a, A158587.P5491444507565883784.a, A321180, A321180.P9288936456031094822.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158587

/-! ## A158587.P301288811055421616

`lcm(17, 1-17*(n+1)*(n+1))`
-/

namespace A158587.P301288811055421616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 17 (1 - (17 * ((n + 1) * (n + 1)) : ℤ))

end

end A158587.P301288811055421616

namespace A158587

/-- `lcm(17, 1-17*(n+1)*(n+1))` -/
def P301288811055421616.Spec : Prop :=
  ∀ n, (P301288811055421616.a n : ℤ) = A158587 (n + 1)

end A158587

/-! ## A158587.P1838025330978121408

`17*(17*A000290(n+1)-1)`
-/

namespace A158587.P1838025330978121408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (17 * A000290 (n + 1) - 1)

end

end A158587.P1838025330978121408

namespace A158587

/-- `17*(17*A000290(n+1)-1)` -/
def P1838025330978121408.Spec : Prop :=
  ∀ n, P1838025330978121408.a n = A158587 (n + 1)

theorem P1838025330978121408.correct : P1838025330978121408.Spec := by
  intro n
  simp only [A158587, Nat.add_sub_cancel, A158587.P1838025330978121408.a, A158587.P5491444507565883784.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158587

/-! ## A158587.P1579760571194546635

`Δ[17*∑[A321180(n)]]`
-/

namespace A158587.P1579760571194546635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158587.P1579760571194546635

namespace A158587

/-- `Δ[17*∑[A321180(n)]]` -/
def P1579760571194546635.Spec : Prop :=
  ∀ n, P1579760571194546635.a n = A158587 (n + 1)

end A158587

/-! ## A158587.P839930446112875222

`∑[A008599(A008599(2*n+1)-A000007(n))]`
-/

namespace A158587.P839930446112875222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A008599 (2 * n + 1) - A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158587.P839930446112875222

namespace A158587

/-- `∑[A008599(A008599(2*n+1)-A000007(n))]` -/
def P839930446112875222.Spec : Prop :=
  ∀ n, P839930446112875222.a n = A158587 (n + 1)

end A158587

/-!
# A158588: a(n) = 34*n^2 - 1.

The programs for A158588, the canonical program `A158588.P7989450247486132535` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158588 has offset 1).

The definition of A158588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34*(n+1)²-1` (program `A158588.P7989450247486132535`, by `A158588.P7989450247486132535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158588.P7989450247486132535

`34*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158588

/-- `34*(n+1)²-1` -/
def P7989450247486132535.Spec : Prop :=
  ∀ n, P7989450247486132535.a n = A158588 (n + 1)

theorem P7989450247486132535.correct : P7989450247486132535.Spec := by
  intro n
  simp only [A158588, Nat.add_sub_cancel]

end A158588

/-! ## A158588.P16768309487361761181

`floor(A158730(n+1)/2)`
-/

namespace A158588.P16768309487361761181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158730 (n + 1) : ℚ) / 2⌋

end

end A158588.P16768309487361761181

namespace A158588

/-- `floor(A158730(n+1)/2)` -/
def P16768309487361761181.Spec : Prop :=
  ∀ n, P16768309487361761181.a n = A158588 (n + 1)

end A158588

/-! ## A158588.P6720570656143812820

`(A158732(n+1)-3)/2`
-/

namespace A158588.P6720570656143812820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158732 (n + 1) - 3 : ℚ) / 2

end

end A158588.P6720570656143812820

namespace A158588

/-- `(A158732(n+1)-3)/2` -/
def P6720570656143812820.Spec : Prop :=
  ∀ n, P6720570656143812820.a n = (A158588 (n + 1) : ℚ)

theorem P6720570656143812820.correct : P6720570656143812820.Spec := by
  intro n
  simp only [A158588, Nat.add_sub_cancel, A158588.P6720570656143812820.a, A158588.P7989450247486132535.a, A158732, A158732.P7104617364013209010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158588

/-! ## A158588.P147971505969612611

`abs(A158062(n+1)-A001844(n))`
-/

namespace A158588.P147971505969612611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158062 (n + 1) - A001844 n|

end

end A158588.P147971505969612611

namespace A158588

/-- `abs(A158062(n+1)-A001844(n))` -/
def P147971505969612611.Spec : Prop :=
  ∀ n, P147971505969612611.a n = A158588 (n + 1)

end A158588

/-! ## A158588.P15697918405422617367

`A210645(n+1)%A157916(n+1)`
-/

namespace A158588.P15697918405422617367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210645 (n + 1)) (A157916 (n + 1))

end

end A158588.P15697918405422617367

namespace A158588

/-- `A210645(n+1)%A157916(n+1)` -/
def P15697918405422617367.Spec : Prop :=
  ∀ n, P15697918405422617367.a n = A158588 (n + 1)

end A158588

/-! ## A158588.P15521047744539756337

`(A157919(n+1)+A157910(n+1))/2`
-/

namespace A158588.P15521047744539756337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157919 (n + 1) + A157910 (n + 1) : ℚ) / 2

end

end A158588.P15521047744539756337

namespace A158588

/-- `(A157919(n+1)+A157910(n+1))/2` -/
def P15521047744539756337.Spec : Prop :=
  ∀ n, P15521047744539756337.a n = (A158588 (n + 1) : ℚ)

theorem P15521047744539756337.correct : P15521047744539756337.Spec := by
  intro n
  simp only [A158588, Nat.add_sub_cancel, A158588.P15521047744539756337.a, A158588.P7989450247486132535.a, A157910, A157910.P11116691083865188033.a, A157919, A157919.P8993084716968970934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158588

/-! ## A158588.P3816200514061489867

`∑[A181440(n+2)+A154612(n)+A053742(n)]`
-/

namespace A158588.P3816200514061489867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (n + 2) + (A154612 n + A053742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158588.P3816200514061489867

namespace A158588

/-- `∑[A181440(n+2)+A154612(n)+A053742(n)]` -/
def P3816200514061489867.Spec : Prop :=
  ∀ n, P3816200514061489867.a n = A158588 (n + 1)

end A158588

/-! ## A158588.P2186779126238964730

`A361692(2*(n+1)²)`
-/

namespace A158588.P2186779126238964730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (2 * (n + 1) ^ 2)

end

end A158588.P2186779126238964730

namespace A158588

/-- `A361692(2*(n+1)²)` -/
def P2186779126238964730.Spec : Prop :=
  ∀ n, P2186779126238964730.a n = A158588 (n + 1)

end A158588

/-!
# A158589: a(n) = 324*n^2 - 18.

The programs for A158589, the canonical program `A158589.P11003728220262594962` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158589 has offset 1).

The definition of A158589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*(n+1)²-18` (program `A158589.P11003728220262594962`, by `A158589.P11003728220262594962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158589.P11003728220262594962

`324*(n+1)²-18`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158589

/-- `324*(n+1)²-18` -/
def P11003728220262594962.Spec : Prop :=
  ∀ n, P11003728220262594962.a n = A158589 (n + 1)

theorem P11003728220262594962.correct : P11003728220262594962.Spec := by
  intro n
  simp only [A158589, Nat.add_sub_cancel]

end A158589

/-! ## A158589.P15483751169462548820

`18*A157910(n+1)`
-/

namespace A158589.P15483751169462548820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A157910 (n + 1)

end

end A158589.P15483751169462548820

namespace A158589

/-- `18*A157910(n+1)` -/
def P15483751169462548820.Spec : Prop :=
  ∀ n, P15483751169462548820.a n = A158589 (n + 1)

theorem P15483751169462548820.correct : P15483751169462548820.Spec := by
  intro n
  simp only [A158589, Nat.add_sub_cancel, A158589.P15483751169462548820.a, A158589.P11003728220262594962.a, A157910, A157910.P11116691083865188033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158589

/-! ## A158589.P3571774215142117292

`18*(18*A000290(n+1)-1)`
-/

namespace A158589.P3571774215142117292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (18 * A000290 (n + 1) - 1)

end

end A158589.P3571774215142117292

namespace A158589

/-- `18*(18*A000290(n+1)-1)` -/
def P3571774215142117292.Spec : Prop :=
  ∀ n, P3571774215142117292.a n = A158589 (n + 1)

theorem P3571774215142117292.correct : P3571774215142117292.Spec := by
  intro n
  simp only [A158589, Nat.add_sub_cancel, A158589.P3571774215142117292.a, A158589.P11003728220262594962.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158589

/-! ## A158589.P528292260850852565

`3*3*(A016910(n+1)-2)`
-/

namespace A158589.P528292260850852565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * (A016910 (n + 1) - 2))

end

end A158589.P528292260850852565

namespace A158589

/-- `3*3*(A016910(n+1)-2)` -/
def P528292260850852565.Spec : Prop :=
  ∀ n, P528292260850852565.a n = A158589 (n + 1)

theorem P528292260850852565.correct : P528292260850852565.Spec := by
  intro n
  simp only [A158589, Nat.add_sub_cancel, A158589.P528292260850852565.a, A158589.P11003728220262594962.a, A016910, A016910.P3732514033866141413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158589

/-! ## A158589.P17551078215370177857

`9*A259055(2*n+1)`
-/

namespace A158589.P17551078215370177857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A259055 (2 * n + 1)

end

end A158589.P17551078215370177857

namespace A158589

/-- `9*A259055(2*n+1)` -/
def P17551078215370177857.Spec : Prop :=
  ∀ n, P17551078215370177857.a n = A158589 (n + 1)

theorem P17551078215370177857.correct : P17551078215370177857.Spec := by
  intro n
  simp only [A158589, Nat.add_sub_cancel, A158589.P17551078215370177857.a, A158589.P11003728220262594962.a, A259055, A259055.P8394724405653825334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158589

/-! ## A158589.P6715473133752117032

`(A136016(2*(n+1))-1)*9`
-/

namespace A158589.P6715473133752117032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136016 (2 * (n + 1)) - 1) * 9

end

end A158589.P6715473133752117032

namespace A158589

/-- `(A136016(2*(n+1))-1)*9` -/
def P6715473133752117032.Spec : Prop :=
  ∀ n, P6715473133752117032.a n = A158589 (n + 1)

end A158589

/-!
# A158590: a(n) = 324*n^2 + 18.

The programs for A158590, the canonical program `A158590.P4206021739296905845` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158590 has offset 0).

The definition of A158590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*n²+18` (program `A158590.P4206021739296905845`, by `A158590.P4206021739296905845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158590.P4206021739296905845

`324*n²+18`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158590

/-- `324*n²+18` -/
def P4206021739296905845.Spec : Prop :=
  ∀ n, (P4206021739296905845.a n : ℤ) = A158590 n

theorem P4206021739296905845.correct : P4206021739296905845.Spec := by
  intro n
  simp only [A158590]

end A158590

/-! ## A158590.P4482524900112101353

`9*xor(2, (6*n)²)`
-/

namespace A158590.P4482524900112101353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.xor 2 ((6 * n) ^ 2)

end

end A158590.P4482524900112101353

namespace A158590

/-- `9*xor(2, (6*n)²)` -/
def P4482524900112101353.Spec : Prop :=
  ∀ n, (P4482524900112101353.a n : ℤ) = A158590 n

end A158590

/-! ## A158590.P17989200778859089165

`18*or(1, 18*n²)`
-/

namespace A158590.P17989200778859089165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * Nat.lor 1 (18 * n ^ 2)

end

end A158590.P17989200778859089165

namespace A158590

/-- `18*or(1, 18*n²)` -/
def P17989200778859089165.Spec : Prop :=
  ∀ n, (P17989200778859089165.a n : ℤ) = A158590 n

end A158590

/-! ## A158590.P10774891193645663183

`record[lcm(18, (n*2*n+1)*ceil(atan(n+1)))]`
-/

namespace A158590.P10774891193645663183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 18 ((n * (2 * n) + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158590.P10774891193645663183

namespace A158590

/-- `record[lcm(18, (n*2*n+1)*ceil(atan(n+1)))]` -/
def P10774891193645663183.Spec : Prop :=
  ∀ n, (P10774891193645663183.a n : ℤ) = A158590 n

end A158590

/-! ## A158590.P18078180586483482073

`18*(18*A000290(n)+1)`
-/

namespace A158590.P18078180586483482073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (18 * A000290 n + 1)

end

end A158590.P18078180586483482073

namespace A158590

/-- `18*(18*A000290(n)+1)` -/
def P18078180586483482073.Spec : Prop :=
  ∀ n, P18078180586483482073.a n = A158590 n

theorem P18078180586483482073.correct : P18078180586483482073.Spec := by
  intro n
  simp only [A158590, Nat.add_sub_cancel, A158590.P18078180586483482073.a, A158590.P4206021739296905845.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158590

/-! ## A158590.P13747488209621612215

`record[lcm(18, A005899(n))]`
-/

namespace A158590.P13747488209621612215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 18 (A005899 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158590.P13747488209621612215

namespace A158590

/-- `record[lcm(18, A005899(n))]` -/
def P13747488209621612215.Spec : Prop :=
  ∀ n, (P13747488209621612215.a n : ℤ) = A158590 n

end A158590

/-! ## A158590.P14784577822667764071

`6*A097803(3*n)`
-/

namespace A158590.P14784577822667764071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A097803 (3 * n)

end

end A158590.P14784577822667764071

namespace A158590

/-- `6*A097803(3*n)` -/
def P14784577822667764071.Spec : Prop :=
  ∀ n, P14784577822667764071.a n = A158590 n

theorem P14784577822667764071.correct : P14784577822667764071.Spec := by
  intro n
  simp only [A158590, Nat.add_sub_cancel, A158590.P14784577822667764071.a, A158590.P4206021739296905845.a, A097803, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158590

/-! ## A158590.P9768014946688991244

`6*(A033581(3*n)+3)`
-/

namespace A158590.P9768014946688991244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A033581 (3 * n) + 3)

end

end A158590.P9768014946688991244

namespace A158590

/-- `6*(A033581(3*n)+3)` -/
def P9768014946688991244.Spec : Prop :=
  ∀ n, P9768014946688991244.a n = A158590 n

theorem P9768014946688991244.correct : P9768014946688991244.Spec := by
  intro n
  simp only [A158590, Nat.add_sub_cancel, A158590.P9768014946688991244.a, A158590.P4206021739296905845.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158590

/-! ## A158590.P6174266091052477098

`A241848(18*n)`
-/

namespace A158590.P6174266091052477098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 (18 * n)

end

end A158590.P6174266091052477098

namespace A158590

/-- `A241848(18*n)` -/
def P6174266091052477098.Spec : Prop :=
  ∀ n, P6174266091052477098.a n = A158590 n

theorem P6174266091052477098.correct : P6174266091052477098.Spec := by
  intro n
  simp only [A158590, Nat.add_sub_cancel, A158590.P6174266091052477098.a, A158590.P4206021739296905845.a, A241848, A241848.P10518508374331350270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158590

/-!
# A158591: a(n) = 36*n^2 + 1.

The programs for A158591, the canonical program `A158591.P11450394899068244051` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158591 has offset 0).

The definition of A158591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*n²+1` (program `A158591.P11450394899068244051`, by `A158591.P11450394899068244051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158591.P11450394899068244051

`36*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158591

/-- `36*n²+1` -/
def P11450394899068244051.Spec : Prop :=
  ∀ n, (P11450394899068244051.a n : ℤ) = A158591 n

theorem P11450394899068244051.correct : P11450394899068244051.Spec := by
  intro n
  simp only [A158591]

end A158591

/-! ## A158591.P7620183802534943072

`A247792(2*n)`
-/

namespace A158591.P7620183802534943072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 (2 * n)

end

end A158591.P7620183802534943072

namespace A158591

/-- `A247792(2*n)` -/
def P7620183802534943072.Spec : Prop :=
  ∀ n, P7620183802534943072.a n = A158591 n

theorem P7620183802534943072.correct : P7620183802534943072.Spec := by
  intro n
  simp only [A158591, Nat.add_sub_cancel, A158591.P7620183802534943072.a, A158591.P11450394899068244051.a, A247792, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158591

/-! ## A158591.P2759259631162421783

`or(1, (6*n)²)`
-/

namespace A158591.P2759259631162421783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((6 * n) ^ 2)

end

end A158591.P2759259631162421783

namespace A158591

/-- `or(1, (6*n)²)` -/
def P2759259631162421783.Spec : Prop :=
  ∀ n, (P2759259631162421783.a n : ℤ) = A158591 n

end A158591

/-! ## A158591.P16245115412817061633

`xor(1, (6*n)²)`
-/

namespace A158591.P16245115412817061633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((6 * n) ^ 2)

end

end A158591.P16245115412817061633

namespace A158591

/-- `xor(1, (6*n)²)` -/
def P16245115412817061633.Spec : Prop :=
  ∀ n, (P16245115412817061633.a n : ℤ) = A158591 n

end A158591

/-! ## A158591.P2047752212725116018

`ceil(A158740(n)/2)`
-/

namespace A158591.P2047752212725116018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158740 n : ℚ) / 2⌉

end

end A158591.P2047752212725116018

namespace A158591

/-- `ceil(A158740(n)/2)` -/
def P2047752212725116018.Spec : Prop :=
  ∀ n, P2047752212725116018.a n = A158591 n

end A158591

/-! ## A158591.P17152497709184651906

`A086605(2*n+1)/(2*n+1)`
-/

namespace A158591.P17152497709184651906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086605 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A158591.P17152497709184651906

namespace A158591

/-- `A086605(2*n+1)/(2*n+1)` -/
def P17152497709184651906.Spec : Prop :=
  ∀ n, P17152497709184651906.a n = (A158591 n : ℚ)

theorem P17152497709184651906.correct : P17152497709184651906.Spec := by
  intro n
  simp only [A158591, Nat.add_sub_cancel, A158591.P17152497709184651906.a, A158591.P11450394899068244051.a, A086605, A086605.P4140281209324293466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158591

/-! ## A158591.P4398642306964004092

`A008355(2*n)/A008527(n)`
-/

namespace A158591.P4398642306964004092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008355 (2 * n) : ℚ) / (A008527 n : ℚ)

end

end A158591.P4398642306964004092

namespace A158591

/-- `A008355(2*n)/A008527(n)` -/
def P4398642306964004092.Spec : Prop :=
  ∀ n, P4398642306964004092.a n = (A158591 n : ℚ)

end A158591

/-! ## A158591.P9091910631845225280

`A053755(3*n)`
-/

namespace A158591.P9091910631845225280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (3 * n)

end

end A158591.P9091910631845225280

namespace A158591

/-- `A053755(3*n)` -/
def P9091910631845225280.Spec : Prop :=
  ∀ n, P9091910631845225280.a n = A158591 n

theorem P9091910631845225280.correct : P9091910631845225280.Spec := by
  intro n
  simp only [A158591, Nat.add_sub_cancel, A158591.P9091910631845225280.a, A158591.P11450394899068244051.a, A053755, A053755.P11748163540145338459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158591

/-! ## A158591.P1497480457854358938

`A108100(3*n)/2`
-/

namespace A158591.P1497480457854358938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108100 (3 * n) : ℚ) / 2

end

end A158591.P1497480457854358938

namespace A158591

/-- `A108100(3*n)/2` -/
def P1497480457854358938.Spec : Prop :=
  ∀ n, P1497480457854358938.a n = (A158591 n : ℚ)

theorem P1497480457854358938.correct : P1497480457854358938.Spec := by
  intro n
  simp only [A158591, Nat.add_sub_cancel, A158591.P1497480457854358938.a, A158591.P11450394899068244051.a, A108100, A108100.P3833022910287010970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158591

/-! ## A158591.P3753586412814310163

`∩[A053755(n), A247792(n)]`
-/

namespace A158591.P3753586412814310163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158591.P3753586412814310163

namespace A158591

/-- `∩[A053755(n), A247792(n)]` -/
def P3753586412814310163.Spec : Prop :=
  ∀ n, (P3753586412814310163.a n : ℤ) = A158591 n

end A158591

/-! ## A158591.P3777124147867915340

`A002522(6*n)`
-/

namespace A158591.P3777124147867915340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (6 * n)

end

end A158591.P3777124147867915340

namespace A158591

/-- `A002522(6*n)` -/
def P3777124147867915340.Spec : Prop :=
  ∀ n, P3777124147867915340.a n = A158591 n

theorem P3777124147867915340.correct : P3777124147867915340.Spec := by
  intro n
  simp only [A158591, Nat.add_sub_cancel, A158591.P3777124147867915340.a, A158591.P11450394899068244051.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158591

/-! ## A158591.P18316197415289252406

`A081345(6*n)`
-/

namespace A158591.P18316197415289252406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (6 * n)

end

end A158591.P18316197415289252406

namespace A158591

/-- `A081345(6*n)` -/
def P18316197415289252406.Spec : Prop :=
  ∀ n, P18316197415289252406.a n = A158591 n

end A158591

/-! ## A158591.P11591299313358320182

`A098748(6*n)`
-/

namespace A158591.P11591299313358320182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098748 (6 * n)

end

end A158591.P11591299313358320182

namespace A158591

/-- `A098748(6*n)` -/
def P11591299313358320182.Spec : Prop :=
  ∀ n, P11591299313358320182.a n = A158591 n

end A158591

/-! ## A158591.P7580395093271757558

`A105770(6*n)`
-/

namespace A158591.P7580395093271757558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105770 (6 * n)

end

end A158591.P7580395093271757558

namespace A158591

/-- `A105770(6*n)` -/
def P7580395093271757558.Spec : Prop :=
  ∀ n, P7580395093271757558.a n = A158591 n

end A158591

/-! ## A158591.P14175563155432981014

`A228564(6*n)`
-/

namespace A158591.P14175563155432981014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (6 * n)

end

end A158591.P14175563155432981014

namespace A158591

/-- `A228564(6*n)` -/
def P14175563155432981014.Spec : Prop :=
  ∀ n, P14175563155432981014.a n = A158591 n

end A158591

/-! ## A158591.P11358628712888457053

`A098749(A016921(n))`
-/

namespace A158591.P11358628712888457053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A016921 n).toNat

end

end A158591.P11358628712888457053

namespace A158591

/-- `A098749(A016921(n))` -/
def P11358628712888457053.Spec : Prop :=
  ∀ n, P11358628712888457053.a n = A158591 n

end A158591

/-! ## A158591.P529157888255240790

`A098749(A271114(n))`
-/

namespace A158591.P529157888255240790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A271114 n).toNat

end

end A158591.P529157888255240790

namespace A158591

/-- `A098749(A271114(n))` -/
def P529157888255240790.Spec : Prop :=
  ∀ n, P529157888255240790.a n = A158591 n

end A158591

/-! ## A158591.P10370726691453438327

`∩[A080335(n), A247792(n)]`
-/

namespace A158591.P10370726691453438327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158591.P10370726691453438327

namespace A158591

/-- `∩[A080335(n), A247792(n)]` -/
def P10370726691453438327.Spec : Prop :=
  ∀ n, (P10370726691453438327.a n : ℤ) = A158591 n

end A158591

/-! ## A158591.P12327096608704700842

`∩[A081345(n), A247792(n)]`
-/

namespace A158591.P12327096608704700842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158591.P12327096608704700842

namespace A158591

/-- `∩[A081345(n), A247792(n)]` -/
def P12327096608704700842.Spec : Prop :=
  ∀ n, (P12327096608704700842.a n : ℤ) = A158591 n

end A158591

/-! ## A158591.P2339349902399235698

`A349803(9*n)`
-/

namespace A158591.P2339349902399235698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349803 (9 * n)

end

end A158591.P2339349902399235698

namespace A158591

/-- `A349803(9*n)` -/
def P2339349902399235698.Spec : Prop :=
  ∀ n, P2339349902399235698.a n = A158591 n

end A158591

/-!
# A158592: a(n) = 361*n^2 + 19.

The programs for A158592, the canonical program `A158592.P17552659562386825230` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158592 has offset 0).

The definition of A158592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `361*n²+19` (program `A158592.P17552659562386825230`, by `A158592.P17552659562386825230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158592.P17552659562386825230

`361*n²+19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158592

/-- `361*n²+19` -/
def P17552659562386825230.Spec : Prop :=
  ∀ n, (P17552659562386825230.a n : ℤ) = A158592 n

theorem P17552659562386825230.correct : P17552659562386825230.Spec := by
  intro n
  simp only [A158592]

end A158592

/-! ## A158592.P1595845712817775721

`lcm(19, 19*n^2+1)`
-/

namespace A158592.P1595845712817775721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 19 (19 * n ^ 2 + 1)

end

end A158592.P1595845712817775721

namespace A158592

/-- `lcm(19, 19*n^2+1)` -/
def P1595845712817775721.Spec : Prop :=
  ∀ n, (P1595845712817775721.a n : ℤ) = A158592 n

end A158592

/-! ## A158592.P1939927085903746212

`19*(A244631(n)+1)`
-/

namespace A158592.P1939927085903746212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A244631 n + 1)

end

end A158592.P1939927085903746212

namespace A158592

/-- `19*(A244631(n)+1)` -/
def P1939927085903746212.Spec : Prop :=
  ∀ n, P1939927085903746212.a n = A158592 n

theorem P1939927085903746212.correct : P1939927085903746212.Spec := by
  intro n
  simp only [A158592, Nat.add_sub_cancel, A158592.P1939927085903746212.a, A158592.P17552659562386825230.a, A244631, A244631.P16156651558373966406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158592

/-! ## A158592.P4844414948541438632

`19*(A158493(n)-n²)`
-/

namespace A158592.P4844414948541438632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A158493 n - (n ^ 2 : ℤ))

end

end A158592.P4844414948541438632

namespace A158592

/-- `19*(A158493(n)-n²)` -/
def P4844414948541438632.Spec : Prop :=
  ∀ n, P4844414948541438632.a n = A158592 n

theorem P4844414948541438632.correct : P4844414948541438632.Spec := by
  intro n
  simp only [A158592, Nat.add_sub_cancel, A158592.P4844414948541438632.a, A158592.P17552659562386825230.a, A158493, A158493.P15053320901918141336.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158592

/-! ## A158592.P5674231332773054027

`19*(∑[record[19*A006257(n)]]+1)`
-/

namespace A158592.P5674231332773054027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A158592.P5674231332773054027

namespace A158592

/-- `19*(∑[record[19*A006257(n)]]+1)` -/
def P5674231332773054027.Spec : Prop :=
  ∀ n, P5674231332773054027.a n = A158592 n

end A158592

/-! ## A158592.P11914417383961492897

`A241849(19*n)`
-/

namespace A158592.P11914417383961492897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241849 (19 * n)

end

end A158592.P11914417383961492897

namespace A158592

/-- `A241849(19*n)` -/
def P11914417383961492897.Spec : Prop :=
  ∀ n, P11914417383961492897.a n = A158592 n

theorem P11914417383961492897.correct : P11914417383961492897.Spec := by
  intro n
  simp only [A158592, Nat.add_sub_cancel, A158592.P11914417383961492897.a, A158592.P17552659562386825230.a, A241849, A241849.P2465626945269001209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158592

/-!
# A158593: a(n) = 38*n^2 + 1.

The programs for A158593, the canonical program `A158593.P8745817777594179414` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158593 has offset 0).

The definition of A158593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38*n²+1` (program `A158593.P8745817777594179414`, by `A158593.P8745817777594179414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158593.P8745817777594179414

`38*n²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158593

/-- `38*n²+1` -/
def P8745817777594179414.Spec : Prop :=
  ∀ n, (P8745817777594179414.a n : ℤ) = A158593 n

theorem P8745817777594179414.correct : P8745817777594179414.Spec := by
  intro n
  simp only [A158593]

end A158593

/-! ## A158593.P10076572524401548278

`or(1, 38*n²)`
-/

namespace A158593.P10076572524401548278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (38 * n ^ 2)

end

end A158593.P10076572524401548278

namespace A158593

/-- `or(1, 38*n²)` -/
def P10076572524401548278.Spec : Prop :=
  ∀ n, (P10076572524401548278.a n : ℤ) = A158593 n

end A158593

/-! ## A158593.P1204081055367595798

`xor(1, 38*n²)`
-/

namespace A158593.P1204081055367595798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (38 * n ^ 2)

end

end A158593.P1204081055367595798

namespace A158593

/-- `xor(1, 38*n²)` -/
def P1204081055367595798.Spec : Prop :=
  ∀ n, (P1204081055367595798.a n : ℤ) = A158593 n

end A158593

/-! ## A158593.P13632666835154960415

`(n*38*n+1)*a(and(1, 2*n))` with `a(0)=1`
-/

namespace A158593.P13632666835154960415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * (38 * n) + 1) * a (Nat.land 1 (2 * n))

end

end A158593.P13632666835154960415

namespace A158593

/-- `(n*38*n+1)*a(and(1, 2*n))` -/
def P13632666835154960415.Spec : Prop :=
  ∀ n, (P13632666835154960415.a n : ℤ) = A158593 n

end A158593

/-! ## A158593.P4946784750220005827

`ceil(A158767(n)/2)`
-/

namespace A158593.P4946784750220005827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158767 n : ℚ) / 2⌉

end

end A158593.P4946784750220005827

namespace A158593

/-- `ceil(A158767(n)/2)` -/
def P4946784750220005827.Spec : Prop :=
  ∀ n, P4946784750220005827.a n = A158593 n

end A158593

/-! ## A158593.P4550978981797881262

`round(A010009(2*n)/2)`
-/

namespace A158593.P4550978981797881262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010009 (2 * n) : ℚ) / 2)

end

end A158593.P4550978981797881262

namespace A158593

/-- `round(A010009(2*n)/2)` -/
def P4550978981797881262.Spec : Prop :=
  ∀ n, P4550978981797881262.a n = A158593 n

end A158593

/-! ## A158593.P17936527986557567655

`A010009(2*n)/A040001(2*n)`
-/

namespace A158593.P17936527986557567655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010009 (2 * n) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A158593.P17936527986557567655

namespace A158593

/-- `A010009(2*n)/A040001(2*n)` -/
def P17936527986557567655.Spec : Prop :=
  ∀ n, P17936527986557567655.a n = (A158593 n : ℚ)

end A158593

/-! ## A158593.P5710042185008686099

`(38*A000290(n)+1)%A000332(3*n+11)`
-/

namespace A158593.P5710042185008686099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (38 * A000290 n + 1) (A000332 (3 * n + 11))

end

end A158593.P5710042185008686099

namespace A158593

/-- `(38*A000290(n)+1)%A000332(3*n+11)` -/
def P5710042185008686099.Spec : Prop :=
  ∀ n, P5710042185008686099.a n = A158593 n

end A158593

/-! ## A158593.P11085909926865309025

`ceil(A008000(6*n)/2)`
-/

namespace A158593.P11085909926865309025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008000 (6 * n) : ℚ) / 2⌉

end

end A158593.P11085909926865309025

namespace A158593

/-- `ceil(A008000(6*n)/2)` -/
def P11085909926865309025.Spec : Prop :=
  ∀ n, P11085909926865309025.a n = A158593 n

end A158593

/-! ## A158593.P15293100156413508782

`∑[A315640(record[n*A010697(n)])]`
-/

namespace A158593.P15293100156413508782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315640 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158593.P15293100156413508782

namespace A158593

/-- `∑[A315640(record[n*A010697(n)])]` -/
def P15293100156413508782.Spec : Prop :=
  ∀ n, P15293100156413508782.a n = A158593 n

end A158593

/-! ## A158593.P9632345014582544692

`∑[record[A009531(A314250(n))-n]]`
-/

namespace A158593.P9632345014582544692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A314250 n).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158593.P9632345014582544692

namespace A158593

/-- `∑[record[A009531(A314250(n))-n]]` -/
def P9632345014582544692.Spec : Prop :=
  ∀ n, P9632345014582544692.a n = A158593 n

end A158593

/-! ## A158593.P4365175394091370313

`∑[A315647(record[n*A010697(n)])]`
-/

namespace A158593.P4365175394091370313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158593.P4365175394091370313

namespace A158593

/-- `∑[A315647(record[n*A010697(n)])]` -/
def P4365175394091370313.Spec : Prop :=
  ∀ n, P4365175394091370313.a n = A158593 n

end A158593

/-! ## A158593.P8696089976197836480

`A000027(19*n*2*n+1)`
-/

namespace A158593.P8696089976197836480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (19 * n * (2 * n) + 1)

end

end A158593.P8696089976197836480

namespace A158593

/-- `A000027(19*n*2*n+1)` -/
def P8696089976197836480.Spec : Prop :=
  ∀ n, P8696089976197836480.a n = A158593 n

theorem P8696089976197836480.correct : P8696089976197836480.Spec := by
  intro n
  simp only [A158593, Nat.add_sub_cancel, A158593.P8696089976197836480.a, A158593.P8745817777594179414.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158593

/-!
# A158594: Numbers which yield a prime whenever a 3 is prefixed, appended or inserted.

The programs for A158594, there is no canonical definition to state claims against.
-/

/-! ## A158594.P12719362368582461256

`∪[A215419(n+1), A216166(n+1)]`
-/

namespace A158594.P12719362368582461256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158594.P12719362368582461256

/-! ## A158594.P4097287592931209763

`∩[A068674(n+1), A304248(n+1)]`
-/

namespace A158594.P4097287592931209763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158594.P4097287592931209763

/-! ## A158594.P3105928001226485263

`A068674(eq[A269242(n), A352131(n)])`
-/

namespace A158594.P3105928001226485263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068674 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158594.P3105928001226485263

/-!
# A158595: a(n) = 361*n^2 - 19.

The programs for A158595, the canonical program `A158595.P16398332245303602794` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158595 has offset 1).

The definition of A158595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `361*(n+1)²-19` (program `A158595.P16398332245303602794`, by `A158595.P16398332245303602794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158595.P16398332245303602794

`361*(n+1)²-19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158595

/-- `361*(n+1)²-19` -/
def P16398332245303602794.Spec : Prop :=
  ∀ n, P16398332245303602794.a n = A158595 (n + 1)

theorem P16398332245303602794.correct : P16398332245303602794.Spec := by
  intro n
  simp only [A158595, Nat.add_sub_cancel]

end A158595

/-! ## A158595.P18098886259745664028

`record[(19*(1-n))²-19]`
-/

namespace A158595.P18098886259745664028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * (1 - (n : ℤ))) ^ 2 - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158595.P18098886259745664028

namespace A158595

/-- `record[(19*(1-n))²-19]` -/
def P18098886259745664028.Spec : Prop :=
  ∀ n, P18098886259745664028.a n = A158595 (n + 1)

end A158595

/-! ## A158595.P4267571067557010347

`19*(19*A000290(n+1)-1)`
-/

namespace A158595.P4267571067557010347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (19 * A000290 (n + 1) - 1)

end

end A158595.P4267571067557010347

namespace A158595

/-- `19*(19*A000290(n+1)-1)` -/
def P4267571067557010347.Spec : Prop :=
  ∀ n, P4267571067557010347.a n = A158595 (n + 1)

theorem P4267571067557010347.correct : P4267571067557010347.Spec := by
  intro n
  simp only [A158595, Nat.add_sub_cancel, A158595.P4267571067557010347.a, A158595.P16398332245303602794.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158595

/-! ## A158595.P9034913354619385978

`19*(A157889(n+1)+A008865(n+1))`
-/

namespace A158595.P9034913354619385978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A157889 (n + 1) + A008865 (n + 1))

end

end A158595.P9034913354619385978

namespace A158595

/-- `19*(A157889(n+1)+A008865(n+1))` -/
def P9034913354619385978.Spec : Prop :=
  ∀ n, P9034913354619385978.a n = A158595 (n + 1)

theorem P9034913354619385978.correct : P9034913354619385978.Spec := by
  intro n
  simp only [A158595, Nat.add_sub_cancel, A158595.P9034913354619385978.a, A158595.P16398332245303602794.a, A008865, A008865.P16699731729816255732.a, A157889, A157889.P17648701603193564117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158595

/-! ## A158595.P16769155259479504492

`Δ[∑[A008601(n)²]-A008601(n)]`
-/

namespace A158595.P16769155259479504492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158595.P16769155259479504492

namespace A158595

/-- `Δ[∑[A008601(n)²]-A008601(n)]` -/
def P16769155259479504492.Spec : Prop :=
  ∀ n, P16769155259479504492.a n = A158595 (n + 1)

end A158595

/-!
# A158596: a(n) = 38*n^2 - 1.

The programs for A158596, the canonical program `A158596.P944518473653823919` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158596 has offset 1).

The definition of A158596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38*(n+1)²-1` (program `A158596.P944518473653823919`, by `A158596.P944518473653823919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158596.P944518473653823919

`38*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158596

/-- `38*(n+1)²-1` -/
def P944518473653823919.Spec : Prop :=
  ∀ n, P944518473653823919.a n = A158596 (n + 1)

theorem P944518473653823919.correct : P944518473653823919.Spec := by
  intro n
  simp only [A158596, Nat.add_sub_cancel]

end A158596

/-! ## A158596.P17406190816712303444

`floor(A158765(n+1)/2)`
-/

namespace A158596.P17406190816712303444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158765 (n + 1) : ℚ) / 2⌋

end

end A158596.P17406190816712303444

namespace A158596

/-- `floor(A158765(n+1)/2)` -/
def P17406190816712303444.Spec : Prop :=
  ∀ n, P17406190816712303444.a n = A158596 (n + 1)

end A158596

/-! ## A158596.P13938224787608797634

`(A158767(n+1)-3)/2`
-/

namespace A158596.P13938224787608797634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158767 (n + 1) - 3 : ℚ) / 2

end

end A158596.P13938224787608797634

namespace A158596

/-- `(A158767(n+1)-3)/2` -/
def P13938224787608797634.Spec : Prop :=
  ∀ n, P13938224787608797634.a n = (A158596 (n + 1) : ℚ)

theorem P13938224787608797634.correct : P13938224787608797634.Spec := by
  intro n
  simp only [A158596, Nat.add_sub_cancel, A158596.P13938224787608797634.a, A158596.P944518473653823919.a, A158767, A158767.P12309204623952170228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158596

/-! ## A158596.P5565440810925039870

`abs(1-38*A000290(n+1))`
-/

namespace A158596.P5565440810925039870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 38 * A000290 (n + 1)|

end

end A158596.P5565440810925039870

namespace A158596

/-- `abs(1-38*A000290(n+1))` -/
def P5565440810925039870.Spec : Prop :=
  ∀ n, P5565440810925039870.a n = A158596 (n + 1)

end A158596

/-! ## A158596.P6301555430407312483

`(A158658(n+1)+A158491(n+1))/2`
-/

namespace A158596.P6301555430407312483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158658 (n + 1) + A158491 (n + 1) : ℚ) / 2

end

end A158596.P6301555430407312483

namespace A158596

/-- `(A158658(n+1)+A158491(n+1))/2` -/
def P6301555430407312483.Spec : Prop :=
  ∀ n, P6301555430407312483.a n = (A158596 (n + 1) : ℚ)

theorem P6301555430407312483.correct : P6301555430407312483.Spec := by
  intro n
  simp only [A158596, Nat.add_sub_cancel, A158596.P6301555430407312483.a, A158596.P944518473653823919.a, A158491, A158491.P7981057112013540397.a, A158658, A158658.P6133891185110326415.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158596

/-! ## A158596.P16357301001590609210

`(A158684(n+1)+A141759(n))%A158626(n+1)`
-/

namespace A158596.P16357301001590609210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158684 (n + 1) + A141759 n) (A158626 (n + 1))

end

end A158596.P16357301001590609210

namespace A158596

/-- `(A158684(n+1)+A141759(n))%A158626(n+1)` -/
def P16357301001590609210.Spec : Prop :=
  ∀ n, P16357301001590609210.a n = A158596 (n + 1)

end A158596

/-! ## A158596.P9342293012419358196

`A113541((2*(n+1))²)`
-/

namespace A158596.P9342293012419358196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 ((2 * (n + 1)) ^ 2)

end

end A158596.P9342293012419358196

namespace A158596

/-- `A113541((2*(n+1))²)` -/
def P9342293012419358196.Spec : Prop :=
  ∀ n, P9342293012419358196.a n = A158596 (n + 1)

end A158596

/-!
# A158597: a(n) = 400*n^2 - 20.

The programs for A158597, the canonical program `A158597.P14697643341314529078` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158597 has offset 1).

The definition of A158597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `400*(n+1)²-20` (program `A158597.P14697643341314529078`, by `A158597.P14697643341314529078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158597.P14697643341314529078

`400*(n+1)²-20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158597

/-- `400*(n+1)²-20` -/
def P14697643341314529078.Spec : Prop :=
  ∀ n, P14697643341314529078.a n = A158597 (n + 1)

theorem P14697643341314529078.correct : P14697643341314529078.Spec := by
  intro n
  simp only [A158597, Nat.add_sub_cancel]

end A158597

/-! ## A158597.P2252829589416759352

`20*A158491(n+1)`
-/

namespace A158597.P2252829589416759352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A158491 (n + 1)

end

end A158597.P2252829589416759352

namespace A158597

/-- `20*A158491(n+1)` -/
def P2252829589416759352.Spec : Prop :=
  ∀ n, P2252829589416759352.a n = A158597 (n + 1)

theorem P2252829589416759352.correct : P2252829589416759352.Spec := by
  intro n
  simp only [A158597, Nat.add_sub_cancel, A158597.P2252829589416759352.a, A158597.P14697643341314529078.a, A158491, A158491.P7981057112013540397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158597

/-! ## A158597.P6152161484386847083

`4*(A158490(n+1)+5)`
-/

namespace A158597.P6152161484386847083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A158490 (n + 1) + 5)

end

end A158597.P6152161484386847083

namespace A158597

/-- `4*(A158490(n+1)+5)` -/
def P6152161484386847083.Spec : Prop :=
  ∀ n, P6152161484386847083.a n = A158597 (n + 1)

theorem P6152161484386847083.correct : P6152161484386847083.Spec := by
  intro n
  simp only [A158597, Nat.add_sub_cancel, A158597.P6152161484386847083.a, A158597.P14697643341314529078.a, A158490, A158490.P845353052253331992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158597

/-! ## A158597.P12568381609571092328

`5*(A158774(n+1)-3)`
-/

namespace A158597.P12568381609571092328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158774 (n + 1) - 3)

end

end A158597.P12568381609571092328

namespace A158597

/-- `5*(A158774(n+1)-3)` -/
def P12568381609571092328.Spec : Prop :=
  ∀ n, P12568381609571092328.a n = A158597 (n + 1)

theorem P12568381609571092328.correct : P12568381609571092328.Spec := by
  intro n
  simp only [A158597, Nat.add_sub_cancel, A158597.P12568381609571092328.a, A158597.P14697643341314529078.a, A158774, A158774.P5113679915558682527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158597

/-! ## A158597.P7312805143910707716

`4*5*(Δ[A188050(n)]-1)`
-/

namespace A158597.P7312805143910707716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (5 * (f1 (n + 1) - f1 n - 1))

end

end A158597.P7312805143910707716

namespace A158597

/-- `4*5*(Δ[A188050(n)]-1)` -/
def P7312805143910707716.Spec : Prop :=
  ∀ n, P7312805143910707716.a n = A158597 (n + 1)

end A158597

/-! ## A158597.P15700432923603837012

`4*A158446(2*(n+1))`
-/

namespace A158597.P15700432923603837012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158446 (2 * (n + 1))

end

end A158597.P15700432923603837012

namespace A158597

/-- `4*A158446(2*(n+1))` -/
def P15700432923603837012.Spec : Prop :=
  ∀ n, P15700432923603837012.a n = A158597 (n + 1)

end A158597

/-! ## A158597.P917464064101175342

`(A158447(2*(n+1))-1)*10`
-/

namespace A158597.P917464064101175342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158447 (2 * (n + 1)) - 1) * 10

end

end A158597.P917464064101175342

namespace A158597

/-- `(A158447(2*(n+1))-1)*10` -/
def P917464064101175342.Spec : Prop :=
  ∀ n, P917464064101175342.a n = A158597 (n + 1)

end A158597

/-! ## A158597.P136617550912048013

`4*(A017378(n)+A017377(2*n)+5)`
-/

namespace A158597.P136617550912048013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A017378 n + A017377 (2 * n) + 5)

end

end A158597.P136617550912048013

namespace A158597

/-- `4*(A017378(n)+A017377(2*n)+5)` -/
def P136617550912048013.Spec : Prop :=
  ∀ n, P136617550912048013.a n = A158597 (n + 1)

theorem P136617550912048013.correct : P136617550912048013.Spec := by
  intro n
  simp only [A158597, Nat.add_sub_cancel, A158597.P136617550912048013.a, A158597.P14697643341314529078.a, A017377, A017377.P8985772118360569930.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158597

/-! ## A158597.P14367243667490700965

`5*(A134538(A008574(n+1))-3)`
-/

namespace A158597.P14367243667490700965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A134538 (A008574 (n + 1)).toNat - 3)

end

end A158597.P14367243667490700965

namespace A158597

/-- `5*(A134538(A008574(n+1))-3)` -/
def P14367243667490700965.Spec : Prop :=
  ∀ n, P14367243667490700965.a n = A158597 (n + 1)

end A158597

/-! ## A158597.P16193170279323185960

`4*(A028566(A016969(n)+4*n+1)+11)`
-/

namespace A158597.P16193170279323185960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A028566 (A016969 n + (4 * n + 1 : ℤ)).toNat + 11)

end

end A158597.P16193170279323185960

namespace A158597

/-- `4*(A028566(A016969(n)+4*n+1)+11)` -/
def P16193170279323185960.Spec : Prop :=
  ∀ n, P16193170279323185960.a n = A158597 (n + 1)

end A158597

/-! ## A158597.P12204578036636403433

`A134594(A290781(n))`
-/

namespace A158597.P12204578036636403433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134594 (A290781 n).toNat

end

end A158597.P12204578036636403433

namespace A158597

/-- `A134594(A290781(n))` -/
def P12204578036636403433.Spec : Prop :=
  ∀ n, P12204578036636403433.a n = A158597 (n + 1)

end A158597

/-!
# A158598: a(n) = 40*n^2 - 1.

The programs for A158598, the canonical program `A158598.P262584789850618516` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158598 has offset 1).

The definition of A158598 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*(n+1)²-1` (program `A158598.P262584789850618516`, by `A158598.P262584789850618516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158598.P262584789850618516

`40*(n+1)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158598

/-- `40*(n+1)²-1` -/
def P262584789850618516.Spec : Prop :=
  ∀ n, P262584789850618516.a n = A158598 (n + 1)

theorem P262584789850618516.correct : P262584789850618516.Spec := by
  intro n
  simp only [A158598, Nat.add_sub_cancel]

end A158598

/-! ## A158598.P12118435324556181665

`A158447(2*(n+1))`
-/

namespace A158598.P12118435324556181665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158447 (2 * (n + 1))

end

end A158598.P12118435324556181665

namespace A158598

/-- `A158447(2*(n+1))` -/
def P12118435324556181665.Spec : Prop :=
  ∀ n, P12118435324556181665.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P4776315966013295728

`floor(A158774(n+1)/2)`
-/

namespace A158598.P4776315966013295728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158774 (n + 1) : ℚ) / 2⌋

end

end A158598.P4776315966013295728

namespace A158598

/-- `floor(A158774(n+1)/2)` -/
def P4776315966013295728.Spec : Prop :=
  ∀ n, P4776315966013295728.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P12491010580055004336

`(A158776(n+1)-3)/2`
-/

namespace A158598.P12491010580055004336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158776 (n + 1) - 3 : ℚ) / 2

end

end A158598.P12491010580055004336

namespace A158598

/-- `(A158776(n+1)-3)/2` -/
def P12491010580055004336.Spec : Prop :=
  ∀ n, P12491010580055004336.a n = (A158598 (n + 1) : ℚ)

theorem P12491010580055004336.correct : P12491010580055004336.Spec := by
  intro n
  simp only [A158598, Nat.add_sub_cancel, A158598.P12491010580055004336.a, A158598.P262584789850618516.a, A158776, A158776.P10609333151299409575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158598

/-! ## A158598.P1198586014851027469

`(5*A141759(n)+3)/2`
-/

namespace A158598.P1198586014851027469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A141759 n + 3 : ℚ) / 2

end

end A158598.P1198586014851027469

namespace A158598

/-- `(5*A141759(n)+3)/2` -/
def P1198586014851027469.Spec : Prop :=
  ∀ n, P1198586014851027469.a n = (A158598 (n + 1) : ℚ)

theorem P1198586014851027469.correct : P1198586014851027469.Spec := by
  intro n
  simp only [A158598, Nat.add_sub_cancel, A158598.P1198586014851027469.a, A158598.P262584789850618516.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158598

/-! ## A158598.P18158133836218067682

`-xor(A158602(n+1)-3, -1)`
-/

namespace A158598.P18158133836218067682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A158602 (n + 1) - 3) (-1)

end

end A158598.P18158133836218067682

namespace A158598

/-- `-xor(A158602(n+1)-3, -1)` -/
def P18158133836218067682.Spec : Prop :=
  ∀ n, P18158133836218067682.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P13871557947656384714

`(A158684(n+1)+A141759(n))/2`
-/

namespace A158598.P13871557947656384714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158684 (n + 1) + A141759 n : ℚ) / 2

end

end A158598.P13871557947656384714

namespace A158598

/-- `(A158684(n+1)+A141759(n))/2` -/
def P13871557947656384714.Spec : Prop :=
  ∀ n, P13871557947656384714.a n = (A158598 (n + 1) : ℚ)

theorem P13871557947656384714.correct : P13871557947656384714.Spec := by
  intro n
  simp only [A158598, Nat.add_sub_cancel, A158598.P13871557947656384714.a, A158598.P262584789850618516.a, A141759, A141759.P7052951860497148321.a, A158684, A158684.P12772694682750737315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158598

/-! ## A158598.P16061455305351274320

`(A158668(n+1)+A158540(n+1))/2`
-/

namespace A158598.P16061455305351274320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158668 (n + 1) + A158540 (n + 1) : ℚ) / 2

end

end A158598.P16061455305351274320

namespace A158598

/-- `(A158668(n+1)+A158540(n+1))/2` -/
def P16061455305351274320.Spec : Prop :=
  ∀ n, P16061455305351274320.a n = (A158598 (n + 1) : ℚ)

theorem P16061455305351274320.correct : P16061455305351274320.Spec := by
  intro n
  simp only [A158598, Nat.add_sub_cancel, A158598.P16061455305351274320.a, A158598.P262584789850618516.a, A158540, A158540.P13945659981385710168.a, A158668, A158668.P9781776998810756519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158598

/-! ## A158598.P13720089468825813899

`Δ[∑[A033583(2*n)]-n]`
-/

namespace A158598.P13720089468825813899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158598.P13720089468825813899

namespace A158598

/-- `Δ[∑[A033583(2*n)]-n]` -/
def P13720089468825813899.Spec : Prop :=
  ∀ n, P13720089468825813899.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P15309627143486126041

`(A195605(2*n+1)+A157910(2*(n+1)))/2`
-/

namespace A158598.P15309627143486126041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195605 (2 * n + 1) + A157910 (2 * (n + 1)) : ℚ) / 2

end

end A158598.P15309627143486126041

namespace A158598

/-- `(A195605(2*n+1)+A157910(2*(n+1)))/2` -/
def P15309627143486126041.Spec : Prop :=
  ∀ n, P15309627143486126041.a n = (A158598 (n + 1) : ℚ)

end A158598

/-! ## A158598.P13016243468333752331

`abs(A005901(2*(n+1))-3)`
-/

namespace A158598.P13016243468333752331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005901 (2 * (n + 1)) - 3|

end

end A158598.P13016243468333752331

namespace A158598

/-- `abs(A005901(2*(n+1))-3)` -/
def P13016243468333752331.Spec : Prop :=
  ∀ n, P13016243468333752331.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P15953400617727601988

`abs(3-A005901(n+2+n))`
-/

namespace A158598.P15953400617727601988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A005901 (n + 2 + n)|

end

end A158598.P15953400617727601988

namespace A158598

/-- `abs(3-A005901(n+2+n))` -/
def P15953400617727601988.Spec : Prop :=
  ∀ n, P15953400617727601988.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P11740564613190984634

`(A010010(2*(n+1))-4)/2`
-/

namespace A158598.P11740564613190984634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010010 (2 * (n + 1)) - 4 : ℚ) / 2

end

end A158598.P11740564613190984634

namespace A158598

/-- `(A010010(2*(n+1))-4)/2` -/
def P11740564613190984634.Spec : Prop :=
  ∀ n, P11740564613190984634.a n = (A158598 (n + 1) : ℚ)

end A158598

/-! ## A158598.P16252977370767904759

`A369113(A317095(n+1))`
-/

namespace A158598.P16252977370767904759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369113 (A317095 (n + 1)).toNat

end

end A158598.P16252977370767904759

namespace A158598

/-- `A369113(A317095(n+1))` -/
def P16252977370767904759.Spec : Prop :=
  ∀ n, P16252977370767904759.a n = A158598 (n + 1)

end A158598

/-! ## A158598.P13126907317406267814

`abs(8*(A016897(n*(n+2))+1)-1)`
-/

namespace A158598.P13126907317406267814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * (A016897 (n * (n + 2)) + 1) - 1|

end

end A158598.P13126907317406267814

namespace A158598

/-- `abs(8*(A016897(n*(n+2))+1)-1)` -/
def P13126907317406267814.Spec : Prop :=
  ∀ n, P13126907317406267814.a n = A158598 (n + 1)

end A158598

/-!
# A158599: Numerators of x^(2n-1) in the series expansion of Steinhaus's approximate angle trisection.

The programs for A158599, there is no canonical definition to state claims against.
-/

/-! ## A158599.P181235424635729671

`p?[A026800(A026803(n+1))]^A185327(n+4)`
-/

namespace A158599.P181235424635729671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026800 (A026803 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A185327 (n + 4) : ℤ)

end

end A158599.P181235424635729671

/-! ## A158599.P12177778725963941250

`p?[A026800(A026803(n+1))]^A026798(2*(n+2))`
-/

namespace A158599.P12177778725963941250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026800 (A026803 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A026798 (2 * (n + 2)) : ℤ)

end

end A158599.P12177778725963941250

