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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
# A158100: G.f. satisfies: A(x) = 1/AGM(1, 1 - 8*x/A(x) ).

The programs for A158100, there is no canonical definition to state claims against.
-/

/-! ## A158100.P2218707595859798297

`char[A286815(n)]*A158101(A026741(n))`
-/

namespace A158100.P2218707595859798297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A158101 (A026741 n).toNat

end

end A158100.P2218707595859798297

/-!
# A158101: G.f. satisfies: A(x^2) = -4*x + 1/AGM(1, 1 - 8*x/(A(x^2) + 4*x) ).

The programs for A158101, there is no canonical definition to state claims against.
-/

/-! ## A158101.P5065615347846490605

`A158100(2*n)`
-/

namespace A158101.P5065615347846490605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158100 (2 * n)

end

end A158101.P5065615347846490605

/-! ## A158101.P16877674524724533784

`and(-1, A158100(A005843(n)))`
-/

namespace A158101.P16877674524724533784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A158100 (A005843 n).toNat)

end

end A158101.P16877674524724533784

/-! ## A158101.P14427018809131479223

`A158100(A005843(n))/A007318(∑[n])`
-/

namespace A158101.P14427018809131479223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158100 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A158101.P14427018809131479223

/-! ## A158101.P17516392149137794922

`A158100(A005843(n))+A000038(n+1)`
-/

namespace A158101.P17516392149137794922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158100 (A005843 n).toNat + A000038 (n + 1)

end

end A158101.P17516392149137794922

/-! ## A158101.P16885710472792183728

`A158100(A005843(n))/A319101(n+1)`
-/

namespace A158101.P16885710472792183728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158100 (A005843 n).toNat : ℚ) / (A319101 (n + 1) : ℚ)

end

end A158101.P16885710472792183728

/-!
# A158102: a(n) = [x^n] 1/eta(x)^(2^n).

The programs for A158102, there is no canonical definition to state claims against.
-/

/-! ## A158102.P924050927892498745

`A144064(eq[A004070(n), A025581(n)])`
-/

namespace A158102.P924050927892498745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158102.P924050927892498745

/-! ## A158102.P9112411194598028832

`A144064(eq[A025581(n), A059268(n)])`
-/

namespace A158102.P9112411194598028832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158102.P9112411194598028832

/-! ## A158102.P12663702849476339839

`A144064(eq[A051933(n), A059268(n)])`
-/

namespace A158102.P12663702849476339839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158102.P12663702849476339839

/-! ## A158102.P3052241538201375798

`A144064(eq[A004736(n+1)-1, A059268(n)])`
-/

namespace A158102.P3052241538201375798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158102.P3052241538201375798

/-!
# A158107: G.f.: A(x) = exp( Sum_{n>=1} sigma(n)*L(n)*x^n/n ) where Sum_{n>=1} L(n)*x^n/n = log(1+x*A(x)).

The programs for A158107, there is no canonical definition to state claims against.
-/

/-! ## A158107.P15099500972641436909

`A140181(A123306(n))`
-/

namespace A158107.P15099500972641436909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140181 (A123306 n).toNat

end

end A158107.P15099500972641436909

/-! ## A158107.P17140096067408487075

`A245676(A112567(n))`
-/

namespace A158107.P17140096067408487075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245676 (A112567 n).toNat

end

end A158107.P17140096067408487075

/-!
# A158108: L.g.f.: exp(Sum_{n>=1} a(n)*x^n/n) = 1 + x*exp(Sum_{n>=1} sigma(n)*a(n)*x^n/n).

The programs for A158108, there is no canonical definition to state claims against.
-/

/-! ## A158108.P824929195396702830

`A323475(n)+A001617(A166861(3*n))`
-/

namespace A158108.P824929195396702830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323475 n + A001617 (A166861 (3 * n)).toNat

end

end A158108.P824929195396702830

/-!
# A158109: G.f.: A(x) = exp(Sum_{n>=1} C(2n-1,n)*L(n)*x^n/n) such that Sum_{n>=1} L(n)*x^n/n = log(1+x*A(x)) where L(n) = A158259(n) and C(2n-1,n) = A001700(n-1).

The programs for A158109, there is no canonical definition to state claims against.
-/

/-! ## A158109.P15987276360283070014

`A115304(∏[n!])`
-/

namespace A158109.P15987276360283070014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115304 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A158109.P15987276360283070014

/-!
# A158111: E.g.f.: sm^-1(x) = Sum_{n>=0} a(n)*x^(3n+1)/(3n+1)!; a(n) = coefficient of x^(3n+1)/(3n+1)! in the Maclaurin expansion of the inverse of the Dixon elliptic function sm(x,0).

The programs for A158111, there is no canonical definition to state claims against.
-/

/-! ## A158111.P9534172371412166960

`A102736(3*n)`
-/

namespace A158111.P9534172371412166960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102736 (3 * n)

end

end A158111.P9534172371412166960

/-! ## A158111.P3859945598011126851

`∏[1-3*n]²*A007559(n)`
-/

namespace A158111.P3859945598011126851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A007559 n

end

end A158111.P3859945598011126851

/-! ## A158111.P15091633653299866548

`record[A102736(A006368(n))]`
-/

namespace A158111.P15091633653299866548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102736 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158111.P15091633653299866548

/-! ## A158111.P2739970126551282324

`A008544(n)*A052502(n)`
-/

namespace A158111.P2739970126551282324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008544 n * A052502 n

end

end A158111.P2739970126551282324

/-! ## A158111.P880062443388610979

`record[A136216(n)²*A136214(n)]`
-/

namespace A158111.P880062443388610979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136216 n ^ 2 * A136214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158111.P880062443388610979

/-!
# A158112: a(n) = [x^n] eta(x)^(2^n).

The programs for A158112, there is no canonical definition to state claims against.
-/

/-! ## A158112.P15571679887982633082

`A286354(eq[A025581(n), A059268(n)])`
-/

namespace A158112.P15571679887982633082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158112.P15571679887982633082

/-! ## A158112.P9285950370900929135

`A286354(eq[A051933(n), A059268(n)])`
-/

namespace A158112.P9285950370900929135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A158112.P9285950370900929135

/-!
# A158116: Triangle T(n,k) = 6^(k*(n-k)), read by rows.

The programs for A158116, the canonical program `A158116.P8861049905540556252` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158116 has offset 0).

The definition of A158116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158116.P2862600378051110478

`6^A004247(n)`
-/

namespace A158116.P2862600378051110478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A004247 n : ℤ)

end

end A158116.P2862600378051110478

namespace A158116

/-- `6^A004247(n)` -/
def P2862600378051110478.Spec : Prop :=
  ∀ n, P2862600378051110478.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P16644694530118434859

`6^log2(A117401(n))`
-/

namespace A158116.P16644694530118434859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A158116.P16644694530118434859

namespace A158116

/-- `6^log2(A117401(n))` -/
def P16644694530118434859.Spec : Prop :=
  ∀ n, P16644694530118434859.a n = (A158116 n : ℝ)

end A158116

/-! ## A158116.P12633838019500230034

`6^(A077028(n)-1)`
-/

namespace A158116.P12633838019500230034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A077028 n - 1 : ℤ)

end

end A158116.P12633838019500230034

namespace A158116

/-- `6^(A077028(n)-1)` -/
def P12633838019500230034.Spec : Prop :=
  ∀ n, P12633838019500230034.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P8861049905540556252

`A000400(A004247(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158116

/-- `A000400(A004247(n))` -/
def P8861049905540556252.Spec : Prop :=
  ∀ n, P8861049905540556252.a n = A158116 n

theorem P8861049905540556252.correct : P8861049905540556252.Spec := by
  intro n
  simp only [A158116]

end A158116

/-! ## A158116.P3000735858780533820

`A100851(A285192(n))`
-/

namespace A158116.P3000735858780533820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 (A285192 n).toNat

end

end A158116.P3000735858780533820

namespace A158116

/-- `A100851(A285192(n))` -/
def P3000735858780533820.Spec : Prop :=
  ∀ n, P3000735858780533820.a n = A158116 n

end A158116

/-! ## A158116.P3933940859164122754

`A026532(A130154(n+1))`
-/

namespace A158116.P3933940859164122754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A130154 (n + 1)).toNat

end

end A158116.P3933940859164122754

namespace A158116

/-- `A026532(A130154(n+1))` -/
def P3933940859164122754.Spec : Prop :=
  ∀ n, P3933940859164122754.a n = A158116 n

end A158116

/-! ## A158116.P11641371605004446863

`A000400(1-A176270(n))`
-/

namespace A158116.P11641371605004446863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (1 - A176270 n).toNat

end

end A158116.P11641371605004446863

namespace A158116

/-- `A000400(1-A176270(n))` -/
def P11641371605004446863.Spec : Prop :=
  ∀ n, P11641371605004446863.a n = A158116 n

theorem P11641371605004446863.correct : P11641371605004446863.Spec := by
  intro n
  simp only [A158116, Nat.add_sub_cancel, A158116.P11641371605004446863.a, A158116.P8861049905540556252.a, A000400, A000400.P10889281521385558416.a, A004247, A004247.P14233945955703425283.a, A176270, A176270.P12132002411983152534.a, A002262, A002262.P12129691700837801527.a, A025581, A025581.P420762180635059694.a, A077028, A077028.P11682596430163569480.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A158116

/-! ## A158116.P14504472395569228903

`A117401(n)*A118180(n)`
-/

namespace A158116.P14504472395569228903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A118180 n

end

end A158116.P14504472395569228903

namespace A158116

/-- `A117401(n)*A118180(n)` -/
def P14504472395569228903.Spec : Prop :=
  ∀ n, P14504472395569228903.a n = A158116 n

end A158116

/-! ## A158116.P12555507725936402017

`sqrt(A118185(n))*A118180(n)`
-/

namespace A158116.P12555507725936402017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A118180 n : ℝ)

end

end A158116.P12555507725936402017

namespace A158116

/-- `sqrt(A118185(n))*A118180(n)` -/
def P12555507725936402017.Spec : Prop :=
  ∀ n, P12555507725936402017.a n = (A158116 n : ℝ)

end A158116

/-! ## A158116.P15353916329505673220

`A000400((A003056(n)-A002262(n))*A002262(n))`
-/

namespace A158116.P15353916329505673220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 ((A003056 n - A002262 n) * A002262 n).toNat

end

end A158116.P15353916329505673220

namespace A158116

/-- `A000400((A003056(n)-A002262(n))*A002262(n))` -/
def P15353916329505673220.Spec : Prop :=
  ∀ n, P15353916329505673220.a n = A158116 n

end A158116

/-! ## A158116.P3705200264511438748

`A118180(n)/A118185(n)*A176642(n)`
-/

namespace A158116.P3705200264511438748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n : ℚ) / (A118185 n : ℚ) * (A176642 n : ℚ)

end

end A158116.P3705200264511438748

namespace A158116

/-- `A118180(n)/A118185(n)*A176642(n)` -/
def P3705200264511438748.Spec : Prop :=
  ∀ n, P3705200264511438748.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P3297523056131546124

`A118180(n)/A118190(n)*A158117(n)`
-/

namespace A158116.P3297523056131546124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118180 n : ℚ) / (A118190 n : ℚ) * (A158117 n : ℚ)

end

end A158116.P3297523056131546124

namespace A158116

/-- `A118180(n)/A118190(n)*A158117(n)` -/
def P3297523056131546124.Spec : Prop :=
  ∀ n, P3297523056131546124.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P5852707981533053434

`A176627(n)/A117401(n)`
-/

namespace A158116.P5852707981533053434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176627 n : ℚ) / (A117401 n : ℚ)

end

end A158116.P5852707981533053434

namespace A158116

/-- `A176627(n)/A117401(n)` -/
def P5852707981533053434.Spec : Prop :=
  ∀ n, P5852707981533053434.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P10169565452684632884

`A176627(n)/sqrt(A118185(n))`
-/

namespace A158116.P10169565452684632884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A176627 n : ℝ) / Real.sqrt (A118185 n : ℝ)

end

end A158116.P10169565452684632884

namespace A158116

/-- `A176627(n)/sqrt(A118185(n))` -/
def P10169565452684632884.Spec : Prop :=
  ∀ n, P10169565452684632884.a n = (A158116 n : ℝ)

end A158116

/-! ## A158116.P8754092128555828735

`sqrt(A118180(n))*sqrt(A176627(n))`
-/

namespace A158116.P8754092128555828735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118180 n : ℝ) * Real.sqrt (A176627 n : ℝ)

end

end A158116.P8754092128555828735

namespace A158116

/-- `sqrt(A118180(n))*sqrt(A176627(n))` -/
def P8754092128555828735.Spec : Prop :=
  ∀ n, P8754092128555828735.a n = (A158116 n : ℝ)

end A158116

/-! ## A158116.P11403134732973410059

`A118190(n)/A158117(n)*A176627(n)`
-/

namespace A158116.P11403134732973410059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118190 n : ℚ) / (A158117 n : ℚ) * (A176627 n : ℚ)

end

end A158116.P11403134732973410059

namespace A158116

/-- `A118190(n)/A158117(n)*A176627(n)` -/
def P11403134732973410059.Spec : Prop :=
  ∀ n, P11403134732973410059.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P3764814828111748298

`A117401(n)/A118190(n)*A176639(n)`
-/

namespace A158116.P3764814828111748298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117401 n : ℚ) / (A118190 n : ℚ) * (A176639 n : ℚ)

end

end A158116.P3764814828111748298

namespace A158116

/-- `A117401(n)/A118190(n)*A176639(n)` -/
def P3764814828111748298.Spec : Prop :=
  ∀ n, P3764814828111748298.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P17096615447969372150

`A118185(n)/A158117(n)*A176639(n)`
-/

namespace A158116.P17096615447969372150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118185 n : ℚ) / (A158117 n : ℚ) * (A176639 n : ℚ)

end

end A158116.P17096615447969372150

namespace A158116

/-- `A118185(n)/A158117(n)*A176639(n)` -/
def P17096615447969372150.Spec : Prop :=
  ∀ n, P17096615447969372150.a n = (A158116 n : ℚ)

end A158116

/-! ## A158116.P1760312005320212699

`sqrt(A118180(n)*A176627(n))`
-/

namespace A158116.P1760312005320212699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118180 n * A176627 n : ℝ)

end

end A158116.P1760312005320212699

namespace A158116

/-- `sqrt(A118180(n)*A176627(n))` -/
def P1760312005320212699.Spec : Prop :=
  ∀ n, P1760312005320212699.a n = (A158116 n : ℝ)

end A158116

/-!
# A158117: Triangle T(n, k) = 10^(k*(n-k)), read by rows.

The programs for A158117, the canonical program `A158117.P5063276462293378464` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158117 has offset 0).

The definition of A158117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158117.P9101856491144992070

`10^A004247(n)`
-/

namespace A158117.P9101856491144992070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A004247 n : ℤ)

end

end A158117.P9101856491144992070

namespace A158117

/-- `10^A004247(n)` -/
def P9101856491144992070.Spec : Prop :=
  ∀ n, P9101856491144992070.a n = (A158117 n : ℚ)

end A158117

/-! ## A158117.P3230511105716468574

`10^log2(A117401(n))`
-/

namespace A158117.P3230511105716468574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A158117.P3230511105716468574

namespace A158117

/-- `10^log2(A117401(n))` -/
def P3230511105716468574.Spec : Prop :=
  ∀ n, P3230511105716468574.a n = (A158117 n : ℝ)

end A158117

/-! ## A158117.P365033836540789649

`10^(A077028(n)-1)`
-/

namespace A158117.P365033836540789649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A077028 n - 1 : ℤ)

end

end A158117.P365033836540789649

namespace A158117

/-- `10^(A077028(n)-1)` -/
def P365033836540789649.Spec : Prop :=
  ∀ n, P365033836540789649.a n = (A158117 n : ℚ)

end A158117

/-! ## A158117.P5063276462293378464

`A011557(A004247(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158117

/-- `A011557(A004247(n))` -/
def P5063276462293378464.Spec : Prop :=
  ∀ n, P5063276462293378464.a n = A158117 n

theorem P5063276462293378464.correct : P5063276462293378464.Spec := by
  intro n
  simp only [A158117]

end A158117

/-! ## A158117.P16587042798679408139

`A018005(A296180(n))`
-/

namespace A158117.P16587042798679408139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (A296180 n).toNat

end

end A158117.P16587042798679408139

namespace A158117

/-- `A018005(A296180(n))` -/
def P16587042798679408139.Spec : Prop :=
  ∀ n, P16587042798679408139.a n = A158117 n

end A158117

/-! ## A158117.P9136643309195221340

`A130080(A287326(n))`
-/

namespace A158117.P9136643309195221340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (A287326 n).toNat

end

end A158117.P9136643309195221340

namespace A158117

/-- `A130080(A287326(n))` -/
def P9136643309195221340.Spec : Prop :=
  ∀ n, P9136643309195221340.a n = A158117 n

end A158117

/-! ## A158117.P18132858816082126638

`A286507(A157528(n))`
-/

namespace A158117.P18132858816082126638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (A157528 n).toNat

end

end A158117.P18132858816082126638

namespace A158117

/-- `A286507(A157528(n))` -/
def P18132858816082126638.Spec : Prop :=
  ∀ n, P18132858816082126638.a n = A158117 n

end A158117

/-! ## A158117.P1734545819878644978

`A164844(A285192(n))`
-/

namespace A158117.P1734545819878644978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 (A285192 n).toNat

end

end A158117.P1734545819878644978

namespace A158117

/-- `A164844(A285192(n))` -/
def P1734545819878644978.Spec : Prop :=
  ∀ n, P1734545819878644978.a n = A158117 n

end A158117

/-! ## A158117.P16021991129548261801

`A017936(A130154(n+1))`
-/

namespace A158117.P16021991129548261801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (A130154 (n + 1)).toNat

end

end A158117.P16021991129548261801

namespace A158117

/-- `A017936(A130154(n+1))` -/
def P16021991129548261801.Spec : Prop :=
  ∀ n, P16021991129548261801.a n = A158117 n

end A158117

/-! ## A158117.P4999601464786027866

`A000462(A285192(n)+1)`
-/

namespace A158117.P4999601464786027866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000462 (A285192 n + 1).toNat

end

end A158117.P4999601464786027866

namespace A158117

/-- `A000462(A285192(n)+1)` -/
def P4999601464786027866.Spec : Prop :=
  ∀ n, P4999601464786027866.a n = A158117 n

end A158117

/-! ## A158117.P409140928705585524

`A004647(3*A004247(n))`
-/

namespace A158117.P409140928705585524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 (3 * A004247 n).toNat

end

end A158117.P409140928705585524

namespace A158117

/-- `A004647(3*A004247(n))` -/
def P409140928705585524.Spec : Prop :=
  ∀ n, P409140928705585524.a n = A158117 n

end A158117

/-! ## A158117.P16613496149010419510

`A117401(n)*A118190(n)`
-/

namespace A158117.P16613496149010419510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A118190 n

end

end A158117.P16613496149010419510

namespace A158117

/-- `A117401(n)*A118190(n)` -/
def P16613496149010419510.Spec : Prop :=
  ∀ n, P16613496149010419510.a n = A158117 n

end A158117

/-! ## A158117.P8765341107580965416

`sqrt(A118185(n))*A118190(n)`
-/

namespace A158117.P8765341107580965416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A118190 n : ℝ)

end

end A158117.P8765341107580965416

namespace A158117

/-- `sqrt(A118185(n))*A118190(n)` -/
def P8765341107580965416.Spec : Prop :=
  ∀ n, P8765341107580965416.a n = (A158117 n : ℝ)

end A158117

/-! ## A158117.P4207388438028302318

`10^(A002262(n)*A025581(n))`
-/

namespace A158117.P4207388438028302318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A002262 n * A025581 n : ℤ)

end

end A158117.P4207388438028302318

namespace A158117

/-- `10^(A002262(n)*A025581(n))` -/
def P4207388438028302318.Spec : Prop :=
  ∀ n, P4207388438028302318.a n = (A158117 n : ℚ)

end A158117

/-! ## A158117.P1255354278548475471

`A011557(A002262(n)*A025581(n))`
-/

namespace A158117.P1255354278548475471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A002262 n * A025581 n).toNat

end

end A158117.P1255354278548475471

namespace A158117

/-- `A011557(A002262(n)*A025581(n))` -/
def P1255354278548475471.Spec : Prop :=
  ∀ n, P1255354278548475471.a n = A158117 n

end A158117

/-! ## A158117.P7254593337592484767

`A118190(n)/A118180(n)*A158116(n)`
-/

namespace A158117.P7254593337592484767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118190 n : ℚ) / (A118180 n : ℚ) * (A158116 n : ℚ)

end

end A158117.P7254593337592484767

namespace A158117

/-- `A118190(n)/A118180(n)*A158116(n)` -/
def P7254593337592484767.Spec : Prop :=
  ∀ n, P7254593337592484767.a n = (A158117 n : ℚ)

end A158117

/-! ## A158117.P880821267406230038

`A118190(n)/A118185(n)*A176642(n)`
-/

namespace A158117.P880821267406230038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118190 n : ℚ) / (A118185 n : ℚ) * (A176642 n : ℚ)

end

end A158117.P880821267406230038

namespace A158117

/-- `A118190(n)/A118185(n)*A176642(n)` -/
def P880821267406230038.Spec : Prop :=
  ∀ n, P880821267406230038.a n = (A158117 n : ℚ)

end A158117

/-! ## A158117.P17932267542488985388

`A011557((A003056(n)-A002262(n))*A002262(n))`
-/

namespace A158117.P17932267542488985388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 ((A003056 n - A002262 n) * A002262 n).toNat

end

end A158117.P17932267542488985388

namespace A158117

/-- `A011557((A003056(n)-A002262(n))*A002262(n))` -/
def P17932267542488985388.Spec : Prop :=
  ∀ n, P17932267542488985388.a n = A158117 n

end A158117

/-!
# A158118: Number of solutions of +-1+-2^3+-3^3..+-n^3=0.

The programs for A158118, there is no canonical definition to state claims against.
-/

/-! ## A158118.P14915360157205220333

`2*A113263(n+1)`
-/

namespace A158118.P14915360157205220333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113263 (n + 1)

end

end A158118.P14915360157205220333

/-! ## A158118.P16196966670621081664

`A113263(char[1]+1+n)+A113263(n+1)`
-/

namespace A158118.P16196966670621081664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113263 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A113263 (n + 1)

end

end A158118.P16196966670621081664

/-! ## A158118.P3124102001491535301

`A113263(A008619(2*n))*A130658(n)`
-/

namespace A158118.P3124102001491535301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113263 (A008619 (2 * n)).toNat * A130658 n

end

end A158118.P3124102001491535301

/-! ## A158118.P265656533855658819

`A113263(n+1)+A113263(n+1)%A011782(n)`
-/

namespace A158118.P265656533855658819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113263 (n + 1) + Int.tmod (A113263 (n + 1)) (A011782 n)

end

end A158118.P265656533855658819

/-! ## A158118.P17284246463787607945

`A113263(n+1)+lcm(A106400(n), A113263(n+1))`
-/

namespace A158118.P17284246463787607945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113263 (n + 1) + (Int.lcm (A106400 n) (A113263 (n + 1)) : ℤ)

end

end A158118.P17284246463787607945

/-! ## A158118.P9930351210546719254

`A350861(n+1)-A369731(n+1)`
-/

namespace A158118.P9930351210546719254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350861 (n + 1) - A369731 (n + 1)

end

end A158118.P9930351210546719254

/-!
# A158119: Unsigned bisection of A157308 and A157310.

The programs for A158119, there is no canonical definition to state claims against.
-/

/-! ## A158119.P6883986343211401177

`A172396(2*n)`
-/

namespace A158119.P6883986343211401177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172396 (2 * n)

end

end A158119.P6883986343211401177

/-! ## A158119.P14633587557956748153

`abs(A157308(2*n))`
-/

namespace A158119.P14633587557956748153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157308 (2 * n)|

end

end A158119.P14633587557956748153

/-! ## A158119.P8514232697018352114

`abs(A157310(2*n))`
-/

namespace A158119.P8514232697018352114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157310 (2 * n)|

end

end A158119.P8514232697018352114

/-! ## A158119.P9327596655188110685

`gcd(A000038(n), A157310(2*n))`
-/

namespace A158119.P9327596655188110685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157310 (2 * n))

end

end A158119.P9327596655188110685

/-! ## A158119.P541613200022754042

`gcd(A151933(n), A157308(2*n))`
-/

namespace A158119.P541613200022754042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A157308 (2 * n))

end

end A158119.P541613200022754042

/-!
# A158120: Unsigned bisection of A157304 and A157305.

The programs for A158120, there is no canonical definition to state claims against.
-/

/-! ## A158120.P8163200103592431299

`record[abs(A157304(n))]`
-/

namespace A158120.P8163200103592431299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157304 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158120.P8163200103592431299

/-! ## A158120.P2843267137945261084

`record[abs(A157305(n))]`
-/

namespace A158120.P2843267137945261084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157305 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158120.P2843267137945261084

/-! ## A158120.P7468925767846267182

`abs(A157304(2*n))`
-/

namespace A158120.P7468925767846267182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157304 (2 * n)|

end

end A158120.P7468925767846267182

/-! ## A158120.P15794627505923131637

`abs(A157305(2*n))`
-/

namespace A158120.P15794627505923131637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157305 (2 * n)|

end

end A158120.P15794627505923131637

/-! ## A158120.P3172775643478737653

`A066170(A161680(n+1))*A157305(2*n)`
-/

namespace A158120.P3172775643478737653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A161680 (n + 1)).toNat * A157305 (2 * n)

end

end A158120.P3172775643478737653

/-!
# A158121: Given n points in the complex plane, let M(n) the number of distinct Moebius transformations that take 3 distinct points to 3 distinct points. Note that the triples may have some or all of the points in common.

The programs for A158121, the canonical program `A158121.P4564399420459696668` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158121 has offset 3).

The definition of A158121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158121.P4564399420459696668

`6*C(n+3, 3)²-C(n+3, 3)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158121

/-- `6*C(n+3, 3)²-C(n+3, 3)+1` -/
def P4564399420459696668.Spec : Prop :=
  ∀ n, P4564399420459696668.a n = A158121 (n + 3)

theorem P4564399420459696668.correct : P4564399420459696668.Spec := by
  intro n
  simp only [A158121, Nat.add_sub_cancel]

end A158121

/-! ## A158121.P15182975363252792058

`C(∑[∑[6*(n+1)]], 2)/3+1`
-/

namespace A158121.P15182975363252792058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / 3 + 1

end

end A158121.P15182975363252792058

namespace A158121

/-- `C(∑[∑[6*(n+1)]], 2)/3+1` -/
def P15182975363252792058.Spec : Prop :=
  ∀ n, P15182975363252792058.a n = (A158121 (n + 3) : ℚ)

end A158121

/-! ## A158121.P7910627733692449086

`∑[∑[n+1]]*A126420(n+2)+1`
-/

namespace A158121.P7910627733692449086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A126420 (n + 2) + 1

end

end A158121.P7910627733692449086

namespace A158121

/-- `∑[∑[n+1]]*A126420(n+2)+1` -/
def P7910627733692449086.Spec : Prop :=
  ∀ n, P7910627733692449086.a n = A158121 (n + 3)

end A158121

/-! ## A158121.P15095496306422876435

`lcm(∑[A000217(n+1)], A126420(n+2))+1`
-/

namespace A158121.P15095496306422876435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A126420 (n + 2)) + 1

end

end A158121.P15095496306422876435

namespace A158121

/-- `lcm(∑[A000217(n+1)], A126420(n+2))+1` -/
def P15095496306422876435.Spec : Prop :=
  ∀ n, (P15095496306422876435.a n : ℤ) = A158121 (n + 3)

end A158121

/-! ## A158121.P15645928813741944353

`A179058(n+3)-∑[A253145(n)]`
-/

namespace A158121.P15645928813741944353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179058 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158121.P15645928813741944353

namespace A158121

/-- `A179058(n+3)-∑[A253145(n)]` -/
def P15645928813741944353.Spec : Prop :=
  ∀ n, P15645928813741944353.a n = A158121 (n + 3)

end A158121

/-!
# A158123: a(n) = 81*n + 1.

The programs for A158123, the canonical program `A158123.P7632629272765465271` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158123 has offset 1).

The definition of A158123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)+1` (program `A158123.P7632629272765465271`, by `A158123.P7632629272765465271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158123.P7632629272765465271

`81*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158123

/-- `81*(n+1)+1` -/
def P7632629272765465271.Spec : Prop :=
  ∀ n, (P7632629272765465271.a n : ℤ) = A158123 (n + 1)

theorem P7632629272765465271.correct : P7632629272765465271.Spec := by
  intro n
  simp only [A158123, Nat.add_sub_cancel]

end A158123

/-!
# A158124: Weakly prime numbers (or isolated primes): changing any one decimal digit always produces a composite number, with restriction that first digit may not be changed to a 0.

The programs for A158124, there is no canonical definition to state claims against.
-/

/-! ## A158124.P7596896763792919028

`∪[A050249(n+1), A158125(n+1)]`
-/

namespace A158124.P7596896763792919028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A158124.P7596896763792919028

/-! ## A158124.P7791364462448422579

`A158578(A038106(n+1)+7)`
-/

namespace A158124.P7791364462448422579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158578 (A038106 (n + 1) + 7).toNat

end

end A158124.P7791364462448422579

/-!
# A158126: Products of emirpimes pairs, sorted.

The programs for A158126, there is no canonical definition to state claims against.
-/

/-! ## A158126.P17874541145513767665

`A004086(A263108(n+1))*A097393(eq[1, A051724(n)])`
-/

namespace A158126.P17874541145513767665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A263108 (n + 1)).toNat * A097393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A158126.P17874541145513767665

/-! ## A158126.P9833909480452456664

`A004086(A263108(n+1))*A097393(∑[A045692(n+1)!])`
-/

namespace A158126.P9833909480452456664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A045692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A263108 (n + 1)).toNat * A097393 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158126.P9833909480452456664

/-!
# A158127: a(n) = 100*n^2 + 2*n.

The programs for A158127, the canonical program `A158127.P2847844534922693146` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158127 has offset 1).

The definition of A158127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*(n+1)²+2*(n+1)` (program `A158127.P2847844534922693146`, by `A158127.P2847844534922693146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158127.P2847844534922693146

`100*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158127

/-- `100*(n+1)²+2*(n+1)` -/
def P2847844534922693146.Spec : Prop :=
  ∀ n, (P2847844534922693146.a n : ℤ) = A158127 (n + 1)

theorem P2847844534922693146.correct : P2847844534922693146.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel]

end A158127

/-! ## A158127.P6661815625282704415

`2*(A157916(n+1)+n)`
-/

namespace A158127.P6661815625282704415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157916 (n + 1) + (n : ℤ))

end

end A158127.P6661815625282704415

namespace A158127

/-- `2*(A157916(n+1)+n)` -/
def P6661815625282704415.Spec : Prop :=
  ∀ n, P6661815625282704415.a n = A158127 (n + 1)

theorem P6661815625282704415.correct : P6661815625282704415.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel, A158127.P6661815625282704415.a, A158127.P2847844534922693146.a, A157916, A157916.P15741034503057197196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158127

/-! ## A158127.P1372190160295505764

`(n+1)*(A158128(n+1)+1)`
-/

namespace A158127.P1372190160295505764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158128 (n + 1) + 1)

end

end A158127.P1372190160295505764

namespace A158127

/-- `(n+1)*(A158128(n+1)+1)` -/
def P1372190160295505764.Spec : Prop :=
  ∀ n, P1372190160295505764.a n = A158127 (n + 1)

theorem P1372190160295505764.correct : P1372190160295505764.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel, A158127.P1372190160295505764.a, A158127.P2847844534922693146.a, A158128, A158128.P10427486004682123714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158127

/-! ## A158127.P5417960402275933012

`2*(A157919(n+1)+n+2)`
-/

namespace A158127.P5417960402275933012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157919 (n + 1) + (n + 2 : ℤ))

end

end A158127.P5417960402275933012

namespace A158127

/-- `2*(A157919(n+1)+n+2)` -/
def P5417960402275933012.Spec : Prop :=
  ∀ n, P5417960402275933012.a n = A158127 (n + 1)

theorem P5417960402275933012.correct : P5417960402275933012.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel, A158127.P5417960402275933012.a, A158127.P2847844534922693146.a, A157919, A157919.P8993084716968970934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158127

/-! ## A158127.P10935436273372266933

`2*(A173141(n+1)+(n+1)²)`
-/

namespace A158127.P10935436273372266933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173141 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A158127.P10935436273372266933

namespace A158127

/-- `2*(A173141(n+1)+(n+1)²)` -/
def P10935436273372266933.Spec : Prop :=
  ∀ n, P10935436273372266933.a n = A158127 (n + 1)

theorem P10935436273372266933.correct : P10935436273372266933.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel, A158127.P10935436273372266933.a, A158127.P2847844534922693146.a, A173141, A173141.P7971151032588999872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158127

/-! ## A158127.P5812135110566997906

`A158392(n+1)%A156635(n+1)`
-/

namespace A158127.P5812135110566997906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158392 (n + 1)) (A156635 (n + 1))

end

end A158127.P5812135110566997906

namespace A158127

/-- `A158392(n+1)%A156635(n+1)` -/
def P5812135110566997906.Spec : Prop :=
  ∀ n, P5812135110566997906.a n = A158127 (n + 1)

end A158127

/-! ## A158127.P7303209656323828227

`A158408(n+1)%A158316(n+1)`
-/

namespace A158127.P7303209656323828227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158408 (n + 1)) (A158316 (n + 1))

end

end A158127.P7303209656323828227

namespace A158127

/-- `A158408(n+1)%A158316(n+1)` -/
def P7303209656323828227.Spec : Prop :=
  ∀ n, P7303209656323828227.a n = A158127 (n + 1)

end A158127

/-! ## A158127.P12029953920859889854

`(n+1)*(A102439(n+1)-2)`
-/

namespace A158127.P12029953920859889854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A102439 (n + 1) - 2)

end

end A158127.P12029953920859889854

namespace A158127

/-- `(n+1)*(A102439(n+1)-2)` -/
def P12029953920859889854.Spec : Prop :=
  ∀ n, P12029953920859889854.a n = A158127 (n + 1)

theorem P12029953920859889854.correct : P12029953920859889854.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel, A158127.P12029953920859889854.a, A158127.P2847844534922693146.a, A102439, A102439.P10344858111576924215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158127

/-! ## A158127.P15298503870294826848

`(n+1)*(A078787(n+1)-n)`
-/

namespace A158127.P15298503870294826848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A078787 (n + 1) - (n : ℤ))

end

end A158127.P15298503870294826848

namespace A158127

/-- `(n+1)*(A078787(n+1)-n)` -/
def P15298503870294826848.Spec : Prop :=
  ∀ n, P15298503870294826848.a n = A158127 (n + 1)

theorem P15298503870294826848.correct : P15298503870294826848.Spec := by
  intro n
  simp only [A158127, Nat.add_sub_cancel, A158127.P15298503870294826848.a, A158127.P2847844534922693146.a, A078787, A078787.P12578493435956342852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158127

/-! ## A158127.P1929107921689697840

`A173089(2*(n+1))`
-/

namespace A158127.P1929107921689697840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173089 (2 * (n + 1))

end

end A158127.P1929107921689697840

namespace A158127

/-- `A173089(2*(n+1))` -/
def P1929107921689697840.Spec : Prop :=
  ∀ n, P1929107921689697840.a n = A158127 (n + 1)

end A158127

/-! ## A158127.P8657057322693075384

`2*A022283(2*(n+1))`
-/

namespace A158127.P8657057322693075384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022283 (2 * (n + 1))

end

end A158127.P8657057322693075384

namespace A158127

/-- `2*A022283(2*(n+1))` -/
def P8657057322693075384.Spec : Prop :=
  ∀ n, P8657057322693075384.a n = A158127 (n + 1)

end A158127

/-! ## A158127.P8763028746231716585

`(n+1)*A017293(A008592(n+1))`
-/

namespace A158127.P8763028746231716585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017293 (A008592 (n + 1)).toNat

end

end A158127.P8763028746231716585

namespace A158127

/-- `(n+1)*A017293(A008592(n+1))` -/
def P8763028746231716585.Spec : Prop :=
  ∀ n, P8763028746231716585.a n = A158127 (n + 1)

end A158127

/-! ## A158127.P16306268287950626481

`(n+1)*A322489(A017281(n+1))`
-/

namespace A158127.P16306268287950626481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322489 (A017281 (n + 1)).toNat

end

end A158127.P16306268287950626481

namespace A158127

/-- `(n+1)*A322489(A017281(n+1))` -/
def P16306268287950626481.Spec : Prop :=
  ∀ n, P16306268287950626481.a n = A158127 (n + 1)

end A158127

/-!
# A158128: a(n) = 100*n + 1.

The programs for A158128, the canonical program `A158128.P10427486004682123714` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158128 has offset 1).

The definition of A158128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*(n+1)+1` (program `A158128.P10427486004682123714`, by `A158128.P10427486004682123714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158128.P10427486004682123714

`100*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158128

/-- `100*(n+1)+1` -/
def P10427486004682123714.Spec : Prop :=
  ∀ n, (P10427486004682123714.a n : ℤ) = A158128 (n + 1)

theorem P10427486004682123714.correct : P10427486004682123714.Spec := by
  intro n
  simp only [A158128, Nat.add_sub_cancel]

end A158128

/-!
# A158129: a(n) = 100*n^2 - 2*n.

The programs for A158129, the canonical program `A158129.P10566472877537967381` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158129 has offset 0).

The definition of A158129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100*n²-2*n` (program `A158129.P10566472877537967381`, by `A158129.P10566472877537967381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158129.P10566472877537967381

`100*n²-2*n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158129

/-- `100*n²-2*n` -/
def P10566472877537967381.Spec : Prop :=
  ∀ n, P10566472877537967381.a n = A158129 n

theorem P10566472877537967381.correct : P10566472877537967381.Spec := by
  intro n
  simp only [A158129]

end A158129

/-! ## A158129.P4926310697524730052

`abs(A017270(n)-2*n)`
-/

namespace A158129.P4926310697524730052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017270 n - (2 * n : ℤ)|

end

end A158129.P4926310697524730052

namespace A158129

/-- `abs(A017270(n)-2*n)` -/
def P4926310697524730052.Spec : Prop :=
  ∀ n, P4926310697524730052.a n = A158129 n

end A158129

/-! ## A158129.P11651074496483030985

`abs(abs(A008592(n)²-n)-n)`
-/

namespace A158129.P11651074496483030985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A008592 n ^ 2 - (n : ℤ)| - (n : ℤ))|

end

end A158129.P11651074496483030985

namespace A158129

/-- `abs(abs(A008592(n)²-n)-n)` -/
def P11651074496483030985.Spec : Prop :=
  ∀ n, P11651074496483030985.a n = A158129 n

end A158129

/-! ## A158129.P4769803426599844969

`record[A195817(n)²-n]`
-/

namespace A158129.P4769803426599844969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158129.P4769803426599844969

namespace A158129

/-- `record[A195817(n)²-n]` -/
def P4769803426599844969.Spec : Prop :=
  ∀ n, P4769803426599844969.a n = A158129 n

end A158129

/-! ## A158129.P2868854615081742994

`2*A022282(2*n)`
-/

namespace A158129.P2868854615081742994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022282 (2 * n)

end

end A158129.P2868854615081742994

namespace A158129

/-- `2*A022282(2*n)` -/
def P2868854615081742994.Spec : Prop :=
  ∀ n, P2868854615081742994.a n = A158129 n

end A158129

/-! ## A158129.P7561528922268116285

`n*A008579(A298040(2*n))`
-/

namespace A158129.P7561528922268116285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008579 (A298040 (2 * n)).toNat

end

end A158129.P7561528922268116285

namespace A158129

/-- `n*A008579(A298040(2*n))` -/
def P7561528922268116285.Spec : Prop :=
  ∀ n, P7561528922268116285.a n = A158129 n

end A158129

/-! ## A158129.P1524759576562491548

`n*A004275(A008706(A008592(n)))`
-/

namespace A158129.P1524759576562491548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004275 (A008706 (A008592 n).toNat).toNat

end

end A158129.P1524759576562491548

namespace A158129

/-- `n*A004275(A008706(A008592(n)))` -/
def P1524759576562491548.Spec : Prop :=
  ∀ n, P1524759576562491548.a n = A158129 n

end A158129

/-! ## A158129.P1064322900681072534

`A011878(A008607(2*n))`
-/

namespace A158129.P1064322900681072534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011878 (A008607 (2 * n)).toNat

end

end A158129.P1064322900681072534

namespace A158129

/-- `A011878(A008607(2*n))` -/
def P1064322900681072534.Spec : Prop :=
  ∀ n, P1064322900681072534.a n = A158129 n

end A158129

/-!
# A158130: a(n) = 121*n - 1.

The programs for A158130, the canonical program `A158130.P15621035192484013902` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158130 has offset 1).

The definition of A158130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)-1` (program `A158130.P15621035192484013902`, by `A158130.P15621035192484013902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158130.P15621035192484013902

`121*(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158130

/-- `121*(n+1)-1` -/
def P15621035192484013902.Spec : Prop :=
  ∀ n, P15621035192484013902.a n = A158130 (n + 1)

theorem P15621035192484013902.correct : P15621035192484013902.Spec := by
  intro n
  simp only [A158130, Nat.add_sub_cancel]

end A158130

/-!
# A158131: a(n) = 121*n + 1.

The programs for A158131, the canonical program `A158131.P7083311342497824103` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158131 has offset 1).

The definition of A158131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `121*(n+1)+1` (program `A158131.P7083311342497824103`, by `A158131.P7083311342497824103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158131.P7083311342497824103

`121*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158131

/-- `121*(n+1)+1` -/
def P7083311342497824103.Spec : Prop :=
  ∀ n, (P7083311342497824103.a n : ℤ) = A158131 (n + 1)

theorem P7083311342497824103.correct : P7083311342497824103.Spec := by
  intro n
  simp only [A158131, Nat.add_sub_cancel]

end A158131

/-!
# A158132: a(n) = 144n^2 + 2n.

The programs for A158132, the canonical program `A158132.P357353321891755116` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158132 has offset 1).

The definition of A158132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²+2*(n+1)` (program `A158132.P357353321891755116`, by `A158132.P357353321891755116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158132.P357353321891755116

`144*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158132

/-- `144*(n+1)²+2*(n+1)` -/
def P357353321891755116.Spec : Prop :=
  ∀ n, (P357353321891755116.a n : ℤ) = A158132 (n + 1)

theorem P357353321891755116.correct : P357353321891755116.Spec := by
  intro n
  simp only [A158132, Nat.add_sub_cancel]

end A158132

/-! ## A158132.P18069766027487270082

`2*(A158740(n+1)+n)`
-/

namespace A158132.P18069766027487270082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158740 (n + 1) + (n : ℤ))

end

end A158132.P18069766027487270082

namespace A158132

/-- `2*(A158740(n+1)+n)` -/
def P18069766027487270082.Spec : Prop :=
  ∀ n, P18069766027487270082.a n = A158132 (n + 1)

theorem P18069766027487270082.correct : P18069766027487270082.Spec := by
  intro n
  simp only [A158132, Nat.add_sub_cancel, A158132.P18069766027487270082.a, A158132.P357353321891755116.a, A158740, A158740.P13242228449475372307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158132

/-! ## A158132.P15809410912733998032

`(n+1)*(A158133(n+1)+1)`
-/

namespace A158132.P15809410912733998032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158133 (n + 1) + 1)

end

end A158132.P15809410912733998032

namespace A158132

/-- `(n+1)*(A158133(n+1)+1)` -/
def P15809410912733998032.Spec : Prop :=
  ∀ n, P15809410912733998032.a n = A158132 (n + 1)

theorem P15809410912733998032.correct : P15809410912733998032.Spec := by
  intro n
  simp only [A158132, Nat.add_sub_cancel, A158132.P15809410912733998032.a, A158132.P357353321891755116.a, A158133, A158133.P15902901142020691839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158132

/-! ## A158132.P15394577834077156717

`(n+1)*(A158136(n+1)+3)`
-/

namespace A158132.P15394577834077156717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158136 (n + 1) + 3)

end

end A158132.P15394577834077156717

namespace A158132

/-- `(n+1)*(A158136(n+1)+3)` -/
def P15394577834077156717.Spec : Prop :=
  ∀ n, P15394577834077156717.a n = A158132 (n + 1)

end A158132

/-! ## A158132.P4171503822527751028

`2*(A158738(n+1)+n+2)`
-/

namespace A158132.P4171503822527751028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158738 (n + 1) + (n + 2 : ℤ))

end

end A158132.P4171503822527751028

namespace A158132

/-- `2*(A158738(n+1)+n+2)` -/
def P4171503822527751028.Spec : Prop :=
  ∀ n, P4171503822527751028.a n = A158132 (n + 1)

theorem P4171503822527751028.correct : P4171503822527751028.Spec := by
  intro n
  simp only [A158132, Nat.add_sub_cancel, A158132.P4171503822527751028.a, A158132.P357353321891755116.a, A158738, A158738.P13269052857347112751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158132

/-! ## A158132.P4995582726021883587

`A157324(2*(n+1))`
-/

namespace A158132.P4995582726021883587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157324 (2 * (n + 1))

end

end A158132.P4995582726021883587

namespace A158132

/-- `A157324(2*(n+1))` -/
def P4995582726021883587.Spec : Prop :=
  ∀ n, P4995582726021883587.a n = A158132 (n + 1)

end A158132

/-! ## A158132.P2235130030356963525

`2*(A157889(2*(n+1))+n)`
-/

namespace A158132.P2235130030356963525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157889 (2 * (n + 1)) + (n : ℤ))

end

end A158132.P2235130030356963525

namespace A158132

/-- `2*(A157889(2*(n+1))+n)` -/
def P2235130030356963525.Spec : Prop :=
  ∀ n, P2235130030356963525.a n = A158132 (n + 1)

end A158132

/-! ## A158132.P7665206594478806147

`A022267(A008590(n+1))/2`
-/

namespace A158132.P7665206594478806147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022267 (A008590 (n + 1)).toNat : ℚ) / 2

end

end A158132.P7665206594478806147

namespace A158132

/-- `A022267(A008590(n+1))/2` -/
def P7665206594478806147.Spec : Prop :=
  ∀ n, P7665206594478806147.a n = (A158132 (n + 1) : ℚ)

end A158132

/-! ## A158132.P2296451106755062428

`(n+1)*A017545(A008594(n+1))`
-/

namespace A158132.P2296451106755062428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017545 (A008594 (n + 1)).toNat

end

end A158132.P2296451106755062428

namespace A158132

/-- `(n+1)*A017545(A008594(n+1))` -/
def P2296451106755062428.Spec : Prop :=
  ∀ n, P2296451106755062428.a n = A158132 (n + 1)

end A158132

/-!
# A158133: a(n) = 144*n + 1.

The programs for A158133, the canonical program `A158133.P15902901142020691839` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158133 has offset 1).

The definition of A158133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)+1` (program `A158133.P15902901142020691839`, by `A158133.P15902901142020691839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158133.P15902901142020691839

`144*(n+1)+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158133

/-- `144*(n+1)+1` -/
def P15902901142020691839.Spec : Prop :=
  ∀ n, (P15902901142020691839.a n : ℤ) = A158133 (n + 1)

theorem P15902901142020691839.correct : P15902901142020691839.Spec := by
  intro n
  simp only [A158133, Nat.add_sub_cancel]

end A158133

/-!
# A158134: Fourth quadrisection of A157261.

The programs for A158134, the canonical program `A158134.P3890413208393723118` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158134 has offset 1).

The definition of A158134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157261, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158134.P3890413208393723118

`A157261(4*(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A158134

/-- `A157261(4*(n+1))` -/
def P3890413208393723118.Spec : Prop :=
  ∀ n, P3890413208393723118.a n = A158134 (n + 1)

theorem P3890413208393723118.correct : P3890413208393723118.Spec := by
  intro n
  simp only [A158134, Nat.add_sub_cancel]

end A158134

/-! ## A158134.P4731023977838698961

`A275893(val(A271060(n), 4))`
-/

namespace A158134.P4731023977838698961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 (SequenceMachineLib.valuation (A271060 n).toNat 4)

end

end A158134.P4731023977838698961

namespace A158134

/-- `A275893(val(A271060(n), 4))` -/
def P4731023977838698961.Spec : Prop :=
  ∀ n, P4731023977838698961.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P6415598869224596028

`A157261(Δ[A294774(n)])%13`
-/

namespace A158134.P6415598869224596028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157261 (f1 (n + 1) - f1 n).toNat) 13

end

end A158134.P6415598869224596028

namespace A158134

/-- `A157261(Δ[A294774(n)])%13` -/
def P6415598869224596028.Spec : Prop :=
  ∀ n, P6415598869224596028.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P10330915076147237246

`filter[A157261(n+1), A099076(#)]`
-/

namespace A158134.P10330915076147237246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099076 (f1 j).toNat = 1) n)

end

end A158134.P10330915076147237246

namespace A158134

/-- `filter[A157261(n+1), A099076(#)]` -/
def P10330915076147237246.Spec : Prop :=
  ∀ n, P10330915076147237246.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P1145505793059426108

`filter[A157261(n+1), A103582(#)]`
-/

namespace A158134.P1145505793059426108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A158134.P1145505793059426108

namespace A158134

/-- `filter[A157261(n+1), A103582(#)]` -/
def P1145505793059426108.Spec : Prop :=
  ∀ n, P1145505793059426108.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P16141802899928726809

`filter[A157261(n+1), A104521(#)]`
-/

namespace A158134.P16141802899928726809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104521 (f1 j).toNat = 1) n)

end

end A158134.P16141802899928726809

namespace A158134

/-- `filter[A157261(n+1), A104521(#)]` -/
def P16141802899928726809.Spec : Prop :=
  ∀ n, P16141802899928726809.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P15181012570817866795

`filter[A157261(n+1), A105594(#)]`
-/

namespace A158134.P15181012570817866795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105594 (f1 j).toNat = 1) n)

end

end A158134.P15181012570817866795

namespace A158134

/-- `filter[A157261(n+1), A105594(#)]` -/
def P15181012570817866795.Spec : Prop :=
  ∀ n, P15181012570817866795.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P11852542699627490589

`A007498(A307136(val(n+1, 2)+1))`
-/

namespace A158134.P11852542699627490589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (A307136 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A158134.P11852542699627490589

namespace A158134

/-- `A007498(A307136(val(n+1, 2)+1))` -/
def P11852542699627490589.Spec : Prop :=
  ∀ n, P11852542699627490589.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P12766016354697114942

`A060372(A294428(val(n+1, 2)+1))`
-/

namespace A158134.P12766016354697114942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A294428 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

end

end A158134.P12766016354697114942

namespace A158134

/-- `A060372(A294428(val(n+1, 2)+1))` -/
def P12766016354697114942.Spec : Prop :=
  ∀ n, P12766016354697114942.a n = A158134 (n + 1)

end A158134

/-! ## A158134.P7841018082870612975

`A033999(n)²*A157261(Δ[A294774(n)])`
-/

namespace A158134.P7841018082870612975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A157261 (f1 (n + 1) - f1 n).toNat

end

end A158134.P7841018082870612975

namespace A158134

/-- `A033999(n)²*A157261(Δ[A294774(n)])` -/
def P7841018082870612975.Spec : Prop :=
  ∀ n, P7841018082870612975.a n = A158134 (n + 1)

end A158134

/-!
# A158135: a(n) = 144*n^2 - 2*n.

The programs for A158135, the canonical program `A158135.P3521899017416549228` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158135 has offset 1).

The definition of A158135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²-2*(n+1)` (program `A158135.P3521899017416549228`, by `A158135.P3521899017416549228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158135.P3521899017416549228

`144*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158135

/-- `144*(n+1)²-2*(n+1)` -/
def P3521899017416549228.Spec : Prop :=
  ∀ n, P3521899017416549228.a n = A158135 (n + 1)

theorem P3521899017416549228.correct : P3521899017416549228.Spec := by
  intro n
  simp only [A158135, Nat.add_sub_cancel]

end A158135

/-! ## A158135.P5871850811706273702

`2*(A158738(n+1)-n)`
-/

namespace A158135.P5871850811706273702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158738 (n + 1) - (n : ℤ))

end

end A158135.P5871850811706273702

namespace A158135

/-- `2*(A158738(n+1)-n)` -/
def P5871850811706273702.Spec : Prop :=
  ∀ n, P5871850811706273702.a n = A158135 (n + 1)

theorem P5871850811706273702.correct : P5871850811706273702.Spec := by
  intro n
  simp only [A158135, Nat.add_sub_cancel, A158135.P5871850811706273702.a, A158135.P3521899017416549228.a, A158738, A158738.P13269052857347112751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158135

/-! ## A158135.P6782977915651308446

`(n+1)*(A158136(n+1)-1)`
-/

namespace A158135.P6782977915651308446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158136 (n + 1) - 1)

end

end A158135.P6782977915651308446

namespace A158135

/-- `(n+1)*(A158136(n+1)-1)` -/
def P6782977915651308446.Spec : Prop :=
  ∀ n, P6782977915651308446.a n = A158135 (n + 1)

end A158135

/-! ## A158135.P2190701691541986690

`2*(n+1)*A157921(n+1)`
-/

namespace A158135.P2190701691541986690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157921 (n + 1))

end

end A158135.P2190701691541986690

namespace A158135

/-- `2*(n+1)*A157921(n+1)` -/
def P2190701691541986690.Spec : Prop :=
  ∀ n, P2190701691541986690.a n = A158135 (n + 1)

theorem P2190701691541986690.correct : P2190701691541986690.Spec := by
  intro n
  simp only [A158135, Nat.add_sub_cancel, A158135.P2190701691541986690.a, A158135.P3521899017416549228.a, A157921, A157921.P1631142293285210871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158135

/-! ## A158135.P1886982941278425839

`(n+1)*(A158133(n+1)-3)`
-/

namespace A158135.P1886982941278425839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158133 (n + 1) - 3)

end

end A158135.P1886982941278425839

namespace A158135

/-- `(n+1)*(A158133(n+1)-3)` -/
def P1886982941278425839.Spec : Prop :=
  ∀ n, P1886982941278425839.a n = A158135 (n + 1)

theorem P1886982941278425839.correct : P1886982941278425839.Spec := by
  intro n
  simp only [A158135, Nat.add_sub_cancel, A158135.P1886982941278425839.a, A158135.P3521899017416549228.a, A158133, A158133.P15902901142020691839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158135

/-! ## A158135.P13370549554147019790

`2*(A158740(n+1)-(n+2))`
-/

namespace A158135.P13370549554147019790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158740 (n + 1) - (n + 2 : ℤ))

end

end A158135.P13370549554147019790

namespace A158135

/-- `2*(A158740(n+1)-(n+2))` -/
def P13370549554147019790.Spec : Prop :=
  ∀ n, P13370549554147019790.a n = A158135 (n + 1)

theorem P13370549554147019790.correct : P13370549554147019790.Spec := by
  intro n
  simp only [A158135, Nat.add_sub_cancel, A158135.P13370549554147019790.a, A158135.P3521899017416549228.a, A158740, A158740.P13242228449475372307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158135

/-! ## A158135.P4745875397546666787

`(n+1)*(A187206(n+1)+4)`
-/

namespace A158135.P4745875397546666787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A187206 (n + 1) + 4)

end

end A158135.P4745875397546666787

namespace A158135

/-- `(n+1)*(A187206(n+1)+4)` -/
def P4745875397546666787.Spec : Prop :=
  ∀ n, P4745875397546666787.a n = A158135 (n + 1)

theorem P4745875397546666787.correct : P4745875397546666787.Spec := by
  intro n
  simp only [A158135, Nat.add_sub_cancel, A158135.P4745875397546666787.a, A158135.P3521899017416549228.a, A187206, A187206.P8365591124594489565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158135

/-! ## A158135.P1799757135100881269

`A157286(2*(n+1))`
-/

namespace A158135.P1799757135100881269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157286 (2 * (n + 1))

end

end A158135.P1799757135100881269

namespace A158135

/-- `A157286(2*(n+1))` -/
def P1799757135100881269.Spec : Prop :=
  ∀ n, P1799757135100881269.a n = A158135 (n + 1)

end A158135

/-! ## A158135.P5504669241760153667

`(n+1)*A017641(A016969(2*n+1))`
-/

namespace A158135.P5504669241760153667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017641 (A016969 (2 * n + 1)).toNat

end

end A158135.P5504669241760153667

namespace A158135

/-- `(n+1)*A017641(A016969(2*n+1))` -/
def P5504669241760153667.Spec : Prop :=
  ∀ n, P5504669241760153667.a n = A158135 (n + 1)

end A158135

/-! ## A158135.P10405342975125666503

`(n+1)*A017641(A103991(A016969(n)))`
-/

namespace A158135.P10405342975125666503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017641 (A103991 (A016969 n).toNat).toNat

end

end A158135.P10405342975125666503

namespace A158135

/-- `(n+1)*A017641(A103991(A016969(n)))` -/
def P10405342975125666503.Spec : Prop :=
  ∀ n, P10405342975125666503.a n = A158135 (n + 1)

end A158135

/-! ## A158135.P16908639884255782388

`(n+1)*A017245(A004771(2*n+1))`
-/

namespace A158135.P16908639884255782388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017245 (A004771 (2 * n + 1)).toNat

end

end A158135.P16908639884255782388

namespace A158135

/-- `(n+1)*A017245(A004771(2*n+1))` -/
def P16908639884255782388.Spec : Prop :=
  ∀ n, P16908639884255782388.a n = A158135 (n + 1)

end A158135

/-! ## A158135.P8552747283669578537

`(n+1)*A016957(A017653(2*n+1))`
-/

namespace A158135.P8552747283669578537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016957 (A017653 (2 * n + 1)).toNat

end

end A158135.P8552747283669578537

namespace A158135

/-- `(n+1)*A016957(A017653(2*n+1))` -/
def P8552747283669578537.Spec : Prop :=
  ∀ n, P8552747283669578537.a n = A158135 (n + 1)

end A158135

/-!
# A158136: a(n) = 144*n - 1.

The programs for A158136, the canonical program `A158136.P15495498553857892146` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158136 has offset 1).

The definition of A158136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)-1` (program `A158136.P15495498553857892146`, by `A158136.P15495498553857892146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158136.P15495498553857892146

`144*(n+1)-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158136

/-- `144*(n+1)-1` -/
def P15495498553857892146.Spec : Prop :=
  ∀ n, P15495498553857892146.a n = A158136 (n + 1)

theorem P15495498553857892146.correct : P15495498553857892146.Spec := by
  intro n
  simp only [A158136, Nat.add_sub_cancel]

end A158136

/-!
# A158137: Period 9: repeat [-2,4,-2,4,-2,-2,1,1,-2].

The programs for A158137, the canonical program `A158137.P8154285053775819964` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158137 has offset 0).

The definition of A158137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158137.P8154285053775819964

`A158090(n)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158137

/-- `A158090(n)-2` -/
def P8154285053775819964.Spec : Prop :=
  ∀ n, P8154285053775819964.a n = A158137 n

theorem P8154285053775819964.correct : P8154285053775819964.Spec := by
  intro n
  simp only [A158137]

end A158137

/-!
# A158138: Number of nondecreasing integer sequences of length 4 with sum zero and sum of absolute values 2n.

The programs for A158138, the canonical program `A158138.P2815902676441644616` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158138 has offset 1).

The definition of A158138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158138.P2815902676441644616

`(floor((n+1)/2)+1)²+2*A069905(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158138

/-- `(floor((n+1)/2)+1)²+2*A069905(n+1)` -/
def P2815902676441644616.Spec : Prop :=
  ∀ n, P2815902676441644616.a n = A158138 (n + 1)

theorem P2815902676441644616.correct : P2815902676441644616.Spec := by
  intro n
  simp only [A158138, Nat.add_sub_cancel]

end A158138

/-! ## A158138.P4378449874058558329

`A194069(n+1)-A131805(n)`
-/

namespace A158138.P4378449874058558329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194069 (n + 1) - A131805 n

end

end A158138.P4378449874058558329

namespace A158138

/-- `A194069(n+1)-A131805(n)` -/
def P4378449874058558329.Spec : Prop :=
  ∀ n, P4378449874058558329.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P6220481596599484127

`A257083(n+1)-A008810(n+1)`
-/

namespace A158138.P6220481596599484127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (n + 1) - A008810 (n + 1)

end

end A158138.P6220481596599484127

namespace A158138

/-- `A257083(n+1)-A008810(n+1)` -/
def P6220481596599484127.Spec : Prop :=
  ∀ n, P6220481596599484127.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P15040958430472233675

`A217571(n+1)+A007997(n+3)`
-/

namespace A158138.P15040958430472233675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217571 (n + 1) + A007997 (n + 3)

end

end A158138.P15040958430472233675

namespace A158138

/-- `A217571(n+1)+A007997(n+3)` -/
def P15040958430472233675.Spec : Prop :=
  ∀ n, P15040958430472233675.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P10318522476221666802

`A007997(n+3)+∑[A022998(n+1)-n]`
-/

namespace A158138.P10318522476221666802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158138.P10318522476221666802

namespace A158138

/-- `A007997(n+3)+∑[A022998(n+1)-n]` -/
def P10318522476221666802.Spec : Prop :=
  ∀ n, P10318522476221666802.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P13899108035302493606

`A246695(n+1)-(A246695(n)+A008810(n+1))`
-/

namespace A158138.P13899108035302493606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 (n + 1) - (A246695 n + A008810 (n + 1))

end

end A158138.P13899108035302493606

namespace A158138

/-- `A246695(n+1)-(A246695(n)+A008810(n+1))` -/
def P13899108035302493606.Spec : Prop :=
  ∀ n, P13899108035302493606.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P15833222779753009818

`∑[A063199(n+2)]-(a(n-1)+n)` with `a(0)=1`
-/

namespace A158138.P15833222779753009818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) + (n : ℤ))

end

end A158138.P15833222779753009818

namespace A158138

/-- `∑[A063199(n+2)]-(a(n-1)+n)` -/
def P15833222779753009818.Spec : Prop :=
  ∀ n, P15833222779753009818.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P3232725075438472126

`A001082(n+2)-A032765(n)`
-/

namespace A158138.P3232725075438472126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 2) - A032765 n

end

end A158138.P3232725075438472126

namespace A158138

/-- `A001082(n+2)-A032765(n)` -/
def P3232725075438472126.Spec : Prop :=
  ∀ n, P3232725075438472126.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P11527504686901423200

`A008822(n+1)-A065033(n+1)²`
-/

namespace A158138.P11527504686901423200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (n + 1) - A065033 (n + 1) ^ 2

end

end A158138.P11527504686901423200

namespace A158138

/-- `A008822(n+1)-A065033(n+1)²` -/
def P11527504686901423200.Spec : Prop :=
  ∀ n, P11527504686901423200.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P3289686937520909267

`A008822(n+1)-A110654(n+1)²`
-/

namespace A158138.P3289686937520909267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (n + 1) - A110654 (n + 1) ^ 2

end

end A158138.P3289686937520909267

namespace A158138

/-- `A008822(n+1)-A110654(n+1)²` -/
def P3289686937520909267.Spec : Prop :=
  ∀ n, P3289686937520909267.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P7541901885019037681

`2*A023054(n+1)-A008619(n+1)`
-/

namespace A158138.P7541901885019037681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023054 (n + 1) - A008619 (n + 1)

end

end A158138.P7541901885019037681

namespace A158138

/-- `2*A023054(n+1)-A008619(n+1)` -/
def P7541901885019037681.Spec : Prop :=
  ∀ n, P7541901885019037681.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P17772187513519060599

`A032765(A007494(n)+1)-A032765(n)`
-/

namespace A158138.P17772187513519060599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A007494 n + 1).toNat - A032765 n

end

end A158138.P17772187513519060599

namespace A158138

/-- `A032765(A007494(n)+1)-A032765(n)` -/
def P17772187513519060599.Spec : Prop :=
  ∀ n, P17772187513519060599.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P12864212491473664018

`A032765(A032766(n+1))-A032765(n)`
-/

namespace A158138.P12864212491473664018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A032766 (n + 1)).toNat - A032765 n

end

end A158138.P12864212491473664018

namespace A158138

/-- `A032765(A032766(n+1))-A032765(n)` -/
def P12864212491473664018.Spec : Prop :=
  ∀ n, P12864212491473664018.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P14564598954170977417

`A008810(A001651(n+2))-A008810(n+1)`
-/

namespace A158138.P14564598954170977417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (A001651 (n + 2)).toNat - A008810 (n + 1)

end

end A158138.P14564598954170977417

namespace A158138

/-- `A008810(A001651(n+2))-A008810(n+1)` -/
def P14564598954170977417.Spec : Prop :=
  ∀ n, P14564598954170977417.a n = A158138 (n + 1)

end A158138

/-! ## A158138.P5672275331469797962

`A008806(A047238(n+2))-A008806(2*n)`
-/

namespace A158138.P5672275331469797962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (A047238 (n + 2)).toNat - A008806 (2 * n)

end

end A158138.P5672275331469797962

namespace A158138

/-- `A008806(A047238(n+2))-A008806(2*n)` -/
def P5672275331469797962.Spec : Prop :=
  ∀ n, P5672275331469797962.a n = A158138 (n + 1)

end A158138

/-!
# A158140: Number of nondecreasing integer sequences of length 6 with sum zero and sum of absolute values 2n.

The programs for A158140, there is no canonical definition to state claims against.
-/

/-! ## A158140.P9383120881564714524

`record[A389686(∑[n+3]+n)]`
-/

namespace A158140.P9383120881564714524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389686 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158140.P9383120881564714524

/-!
# A158141: Number of nondecreasing integer sequences of length 7 with sum zero and sum of absolute values 2n.

The programs for A158141, there is no canonical definition to state claims against.
-/

/-! ## A158141.P15078446090704478685

`A354711(A138879(n+1))+A066186(n)-A103628(n)`
-/

namespace A158141.P15078446090704478685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354711 (A138879 (n + 1)).toNat + (A066186 n - A103628 n)

end

end A158141.P15078446090704478685

/-! ## A158141.P9303029137527968515

`A354711(A138879(n+1))+A220909(n)/2-A103628(n)`
-/

namespace A158141.P9303029137527968515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354711 (A138879 (n + 1)).toNat : ℚ) + ((A220909 n : ℚ) / 2 - (A103628 n : ℚ))

end

end A158141.P9303029137527968515

/-!
# A158142: Number of nondecreasing integer sequences of length 8 with sum zero and sum of absolute values 2n.

The programs for A158142, there is no canonical definition to state claims against.
-/

/-! ## A158142.P11264787433552586327

`record[A389686(A055999(n+1)-3)]`
-/

namespace A158142.P11264787433552586327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389686 (A055999 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158142.P11264787433552586327

/-! ## A158142.P17585710631124369337

`∑[∑[A326699(floor((n+2)^(n-1))+1)]]`
-/

namespace A158142.P17585710631124369337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326699 (⌊(n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158142.P17585710631124369337

/-!
# A158143: Number of nondecreasing integer sequences of length 9 with sum zero and sum of absolute values 2n.

The programs for A158143, there is no canonical definition to state claims against.
-/

/-! ## A158143.P17369677777783212365

`A204006(A377158(n))`
-/

namespace A158143.P17369677777783212365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204006 (A377158 n).toNat

end

end A158143.P17369677777783212365

/-! ## A158143.P3152283034180615499

`A298981(A295358(n))`
-/

namespace A158143.P3152283034180615499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298981 (A295358 n).toNat

end

end A158143.P3152283034180615499

/-!
# A158144: Number of nondecreasing integer sequences of length 10 with sum zero and sum of absolute values 2n.

The programs for A158144, there is no canonical definition to state claims against.
-/

/-! ## A158144.P11393981728239127316

`A334298(∑[2^n])+∑{d}[n+1, #]-∏{p}[n+1, #]`
-/

namespace A158144.P11393981728239127316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334298 (∑ j ∈ Finset.range (n + 1), f1 j) + (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ))

end

end A158144.P11393981728239127316

/-! ## A158144.P4611242575083078529

`A360799(A280839(n))`
-/

namespace A158144.P4611242575083078529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 (A280839 n).toNat

end

end A158144.P4611242575083078529

/-!
# A158145: Number of nondecreasing integer sequences of length 11 with sum zero and sum of absolute values 2n.

The programs for A158145, there is no canonical definition to state claims against.
-/

/-! ## A158145.P9434355582807892422

`A158155(n+1)-A284975(A225198(n))`
-/

namespace A158145.P9434355582807892422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158155 (n + 1) - A284975 (A225198 n).toNat

end

end A158145.P9434355582807892422

/-! ## A158145.P1484680332189575158

`A158177(n+1)-A236972(A284910(n))`
-/

namespace A158145.P1484680332189575158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A236972 (A284910 n).toNat

end

end A158145.P1484680332189575158

/-!
# A158146: Number of nondecreasing integer sequences of length 12 with sum zero and sum of absolute values 2n.

The programs for A158146, there is no canonical definition to state claims against.
-/

/-! ## A158146.P7434568308152175042

`A158148(n+1)-A335446(A006882(n))`
-/

namespace A158146.P7434568308152175042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158148 (n + 1) - A335446 (A006882 n).toNat

end

end A158146.P7434568308152175042

/-! ## A158146.P13099684127805449545

`A158151(n+1)-A335446(A006882(n))`
-/

namespace A158146.P13099684127805449545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158151 (n + 1) - A335446 (A006882 n).toNat

end

end A158146.P13099684127805449545

/-!
# A158147: Number of nondecreasing integer sequences of length 13 with sum zero and sum of absolute values 2n.

The programs for A158147, there is no canonical definition to state claims against.
-/

/-! ## A158147.P448548499157667216

`record[A001255(n)-A000045(A036631(n))]`
-/

namespace A158147.P448548499157667216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A000045 (A036631 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158147.P448548499157667216

/-! ## A158147.P5326392412272931359

`A158156(n+1)-A166301(A008339(n+1))`
-/

namespace A158147.P5326392412272931359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158156 (n + 1) - A166301 (A008339 (n + 1)).toNat

end

end A158147.P5326392412272931359

/-! ## A158147.P15578680435382574031

`A000041(n+1)²-A133165(A007021(n+3))`
-/

namespace A158147.P15578680435382574031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A133165 (A007021 (n + 3)).toNat

end

end A158147.P15578680435382574031

/-!
# A158148: Number of nondecreasing integer sequences of length 14 with sum zero and sum of absolute values 2n.

The programs for A158148, there is no canonical definition to state claims against.
-/

/-! ## A158148.P11809454291141464146

`A241971(A213710(n))`
-/

namespace A158148.P11809454291141464146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (A213710 n).toNat

end

end A158148.P11809454291141464146

/-! ## A158148.P3425458487503032954

`A241971(A288382(n+1))`
-/

namespace A158148.P3425458487503032954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (A288382 (n + 1)).toNat

end

end A158148.P3425458487503032954

/-! ## A158148.P10438679217966923291

`A158184(n+1)-A137579(A011782(n))`
-/

namespace A158148.P10438679217966923291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158184 (n + 1) - A137579 (A011782 n).toNat

end

end A158148.P10438679217966923291

/-! ## A158148.P76839036772963675

`A158150(n+1)-A001221(A255985(n))`
-/

namespace A158148.P76839036772963675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158150 (n + 1) - A001221 (A255985 n).toNat

end

end A158148.P76839036772963675

/-!
# A158149: Number of nondecreasing integer sequences of length 15 with sum zero and sum of absolute values 2n.

The programs for A158149, there is no canonical definition to state claims against.
-/

/-! ## A158149.P16299090541769796991

`A158165(n+1)-A261334(A309861(n))`
-/

namespace A158149.P16299090541769796991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A261334 (A309861 n).toNat

end

end A158149.P16299090541769796991

/-! ## A158149.P944274761093929108

`A158179(n+1)-A326016(A076850(n+1))`
-/

namespace A158149.P944274761093929108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158179 (n + 1) - A326016 (A076850 (n + 1)).toNat

end

end A158149.P944274761093929108

/-! ## A158149.P8896102072905143069

`A158162(n+1)-A205567(A232697(n+1))`
-/

namespace A158149.P8896102072905143069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158162 (n + 1) - A205567 (A232697 (n + 1)).toNat

end

end A158149.P8896102072905143069

/-! ## A158149.P5150015910335722856

`A158165(n+1)-∑[A036639(A306853(n+1))]`
-/

namespace A158149.P5150015910335722856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036639 (A306853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158149.P5150015910335722856

/-!
# A158150: Number of nondecreasing integer sequences of length 16 with sum zero and sum of absolute values 2n.

The programs for A158150, there is no canonical definition to state claims against.
-/

/-! ## A158150.P6049560972870471740

`A158177(n+1)-A185037((3-n)²)`
-/

namespace A158150.P6049560972870471740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A185037 ((3 - (n : ℤ)) ^ 2).toNat

end

end A158150.P6049560972870471740

/-! ## A158150.P10398963776096826410

`A000041(n+1)²-A185037((3-n)²)`
-/

namespace A158150.P10398963776096826410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185037 ((3 - (n : ℤ)) ^ 2).toNat

end

end A158150.P10398963776096826410

/-! ## A158150.P11808793606475167558

`A158184(n+1)-A208848(A032555(n+1))`
-/

namespace A158150.P11808793606475167558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158184 (n + 1) - A208848 (A032555 (n + 1)).toNat

end

end A158150.P11808793606475167558

/-! ## A158150.P8611380103574322116

`A158151(n+1)-A025466(A268093(n+1))`
-/

namespace A158150.P8611380103574322116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158151 (n + 1) - A025466 (A268093 (n + 1)).toNat

end

end A158150.P8611380103574322116

/-! ## A158150.P4529840821372096192

`xor(A001255(n+1), A089311(A309172(n+2)))`
-/

namespace A158150.P4529840821372096192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001255 (n + 1)) (A089311 (A309172 (n + 2)).toNat)

end

end A158150.P4529840821372096192

/-!
# A158151: Number of nondecreasing integer sequences of length 17 with sum zero and sum of absolute values 2n.

The programs for A158151, there is no canonical definition to state claims against.
-/

/-! ## A158151.P3191835998336305800

`A158162(n+1)-A205567(A232697(n))`
-/

namespace A158151.P3191835998336305800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158162 (n + 1) - A205567 (A232697 n).toNat

end

end A158151.P3191835998336305800

/-! ## A158151.P5177099290256185541

`A158172(n+1)-A088951(A000389(n))`
-/

namespace A158151.P5177099290256185541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158172 (n + 1) - A088951 (A000389 n).toNat

end

end A158151.P5177099290256185541

/-! ## A158151.P890402597267194137

`A158184(n+1)-A158209(A287021(n))`
-/

namespace A158151.P890402597267194137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158184 (n + 1) - A158209 (A287021 n).toNat

end

end A158151.P890402597267194137

/-!
# A158152: Number of nondecreasing integer sequences of length 18 with sum zero and sum of absolute values 2n.

The programs for A158152, there is no canonical definition to state claims against.
-/

/-! ## A158152.P5466432825972321593

`A158153(n+1)-2*A004526(A309863(n))`
-/

namespace A158152.P5466432825972321593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158153 (n + 1) - 2 * A004526 (A309863 n).toNat

end

end A158152.P5466432825972321593

/-! ## A158152.P15239459505148405779

`A158177(n+1)-A185037((4-n)²)`
-/

namespace A158152.P15239459505148405779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A185037 ((4 - (n : ℤ)) ^ 2).toNat

end

end A158152.P15239459505148405779

/-! ## A158152.P492429353421731489

`record[A000041(C(comp[∑[n]]-n, 2)-n)²]-A185037((4-n)²)`
-/

namespace A158152.P492429353421731489
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185037 ((4 - (n : ℤ)) ^ 2).toNat

end

end A158152.P492429353421731489

/-! ## A158152.P12201064491016643044

`record[A000041(round(sqrt(2*n))*char[∑[n]]+1)²]-A185037((4-n)²)`
-/

namespace A158152.P12201064491016643044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185037 ((4 - (n : ℤ)) ^ 2).toNat

end

end A158152.P12201064491016643044

/-! ## A158152.P6262521797160801660

`A158163(n+1)-A018843(A000837(n))`
-/

namespace A158152.P6262521797160801660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158163 (n + 1) - A018843 (A000837 n).toNat

end

end A158152.P6262521797160801660

/-!
# A158153: Number of nondecreasing integer sequences of length 19 with sum zero and sum of absolute values 2n.

The programs for A158153, there is no canonical definition to state claims against.
-/

/-! ## A158153.P4381215070217751931

`A158154(n+1)-A004526(A309863(n))`
-/

namespace A158153.P4381215070217751931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158154 (n + 1) - A004526 (A309863 n).toNat

end

end A158153.P4381215070217751931

/-! ## A158153.P6112284566560395505

`A325959(A182810(∑[n+1])²)`
-/

namespace A158153.P6112284566560395505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (A182810 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A158153.P6112284566560395505

/-! ## A158153.P3404079792949796214

`record[A168018(n+1)²-A185203(n)]`
-/

namespace A158153.P3404079792949796214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168018 (n + 1) ^ 2 - A185203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158153.P3404079792949796214

/-! ## A158153.P3277677883971755276

`A000041(n+1)²-A309881(n)^n^n`
-/

namespace A158153.P3277677883971755276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A309881 n ^ n ^ n

end

end A158153.P3277677883971755276

/-! ## A158153.P2024997166801457621

`A001255(n+1)-A086076(A123611(n))`
-/

namespace A158153.P2024997166801457621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A086076 (A123611 n).toNat

end

end A158153.P2024997166801457621

/-!
# A158154: Number of nondecreasing integer sequences of length 20 with sum zero and sum of absolute values 2n.

The programs for A158154, there is no canonical definition to state claims against.
-/

/-! ## A158154.P4827336854895850861

`A178798(A114921(n))+A158155(n+1)`
-/

namespace A158154.P4827336854895850861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A114921 n).toNat + A158155 (n + 1)

end

end A158154.P4827336854895850861

/-! ## A158154.P17005753776702823384

`A158153(n+1)+A004526(A309863(n))`
-/

namespace A158154.P17005753776702823384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158153 (n + 1) + A004526 (A309863 n).toNat

end

end A158154.P17005753776702823384

/-! ## A158154.P13816273200145777532

`A158164(n+1)-A018843(A027337(n))`
-/

namespace A158154.P13816273200145777532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158164 (n + 1) - A018843 (A027337 n).toNat

end

end A158154.P13816273200145777532

/-! ## A158154.P5208097655596037168

`A158156(n+1)-A309881(A309863(n))`
-/

namespace A158154.P5208097655596037168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158156 (n + 1) - A309881 (A309863 n).toNat

end

end A158154.P5208097655596037168

/-! ## A158154.P11767312856983731811

`A158184(n+1)-A137579(A057821(n+3))`
-/

namespace A158154.P11767312856983731811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158184 (n + 1) - A137579 (A057821 (n + 3)).toNat

end

end A158154.P11767312856983731811

/-!
# A158155: Number of nondecreasing integer sequences of length 21 with sum zero and sum of absolute values 2n.

The programs for A158155, there is no canonical definition to state claims against.
-/

/-! ## A158155.P1353620951894687458

`record[A210966(n+1)-A025439(n)]`
-/

namespace A158155.P1353620951894687458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210966 (n + 1) - A025439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158155.P1353620951894687458

/-! ## A158155.P15798599625209118092

`record[A210966(n+1)]-A326592(n)`
-/

namespace A158155.P15798599625209118092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A326592 n

end

end A158155.P15798599625209118092

/-! ## A158155.P9892175946491190403

`record[A210966(n+1)]-A326632(n)`
-/

namespace A158155.P9892175946491190403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A326632 n

end

end A158155.P9892175946491190403

/-! ## A158155.P10654649880942896800

`record[A001255(n)-A172538(n+2)]`
-/

namespace A158155.P10654649880942896800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A172538 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158155.P10654649880942896800

/-! ## A158155.P10487234433444572168

`record[A210966(n+1)]-A035674(n+1)`
-/

namespace A158155.P10487234433444572168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A035674 (n + 1)

end

end A158155.P10487234433444572168

/-!
# A158156: Number of nondecreasing integer sequences of length 22 with sum zero and sum of absolute values 2n.

The programs for A158156, there is no canonical definition to state claims against.
-/

/-! ## A158156.P7297270534556529893

`A075054(A158157(n+1))`
-/

namespace A158156.P7297270534556529893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A158157 (n + 1)).toNat

end

end A158156.P7297270534556529893

/-! ## A158156.P9100757244474226063

`A158164(n+1)-A018843(A027336(n)+1)`
-/

namespace A158156.P9100757244474226063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158164 (n + 1) - A018843 (A027336 n + 1).toNat

end

end A158156.P9100757244474226063

/-! ## A158156.P2590723702118213420

`A158165(n+1)-A018843(A027336(n)+1)`
-/

namespace A158156.P2590723702118213420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A018843 (A027336 n + 1).toNat

end

end A158156.P2590723702118213420

/-! ## A158156.P16404696184043795391

`A158173(n+1)-A023506(A083961(n+1))`
-/

namespace A158156.P16404696184043795391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158173 (n + 1) - A023506 (A083961 (n + 1)).toNat

end

end A158156.P16404696184043795391

/-! ## A158156.P2611756441750055704

`A028310(A158171(n+1)-A154725(n+1))`
-/

namespace A158156.P2611756441750055704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A158171 (n + 1) - A154725 (n + 1)).toNat

end

end A158156.P2611756441750055704

/-!
# A158157: Number of nondecreasing integer sequences of length 23 with sum zero and sum of absolute values 2n.

The programs for A158157, there is no canonical definition to state claims against.
-/

/-! ## A158157.P4283822972821749623

`record[A001255(n)-A172538(n+1)]`
-/

namespace A158157.P4283822972821749623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A172538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158157.P4283822972821749623

/-! ## A158157.P478225984356555223

`A158163(n+1)-A018843(A027336(n))`
-/

namespace A158157.P478225984356555223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158163 (n + 1) - A018843 (A027336 n).toNat

end

end A158157.P478225984356555223

/-! ## A158157.P12743716067050783131

`A158164(n+1)-A018843(A027336(n))`
-/

namespace A158157.P12743716067050783131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158164 (n + 1) - A018843 (A027336 n).toNat

end

end A158157.P12743716067050783131

/-! ## A158157.P12702232764874582970

`A158165(n+1)-A018843(A027336(n))`
-/

namespace A158157.P12702232764874582970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A018843 (A027336 n).toNat

end

end A158157.P12702232764874582970

/-! ## A158157.P606712661929520730

`A158183(n+1)-A018843(A027336(n))`
-/

namespace A158157.P606712661929520730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158183 (n + 1) - A018843 (A027336 n).toNat

end

end A158157.P606712661929520730

/-!
# A158158: Number of nondecreasing integer sequences of length 24 with sum zero and sum of absolute values 2n.

The programs for A158158, there is no canonical definition to state claims against.
-/

/-! ## A158158.P17607376559807663254

`A001255(n+1)-A005563(A172538(n+1))`
-/

namespace A158158.P17607376559807663254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A005563 (A172538 (n + 1)).toNat

end

end A158158.P17607376559807663254

/-! ## A158158.P13114771357448821909

`A158171(n+1)-A005563(A172538(n+1))`
-/

namespace A158158.P13114771357448821909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158171 (n + 1) - A005563 (A172538 (n + 1)).toNat

end

end A158158.P13114771357448821909

/-! ## A158158.P17725153982653357169

`A158183(n+1)-A005563(A172538(n+1))`
-/

namespace A158158.P17725153982653357169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158183 (n + 1) - A005563 (A172538 (n + 1)).toNat

end

end A158158.P17725153982653357169

/-! ## A158158.P15947151176115625085

`A000041(n+1)²-A185214(A185203(2*n))`
-/

namespace A158158.P15947151176115625085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185214 (A185203 (2 * n)).toNat

end

end A158158.P15947151176115625085

/-!
# A158159: Number of nondecreasing integer sequences of length 25 with sum zero and sum of absolute values 2n.

The programs for A158159, there is no canonical definition to state claims against.
-/

/-! ## A158159.P14498863322081682234

`A001255(A077168(n))-A239259(A033483(n))`
-/

namespace A158159.P14498863322081682234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (A077168 n).toNat - A239259 (A033483 n).toNat

end

end A158159.P14498863322081682234

/-! ## A158159.P17765886700713145400

`record[A158171(n+1)-A172538(n+1)]`
-/

namespace A158159.P17765886700713145400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158171 (n + 1) - A172538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158159.P17765886700713145400

/-! ## A158159.P14267454070936726801

`record[A158183(n+1)-A172538(n+1)]`
-/

namespace A158159.P14267454070936726801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158183 (n + 1) - A172538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158159.P14267454070936726801

/-! ## A158159.P7946044992537082186

`A158171(n+1)-A185284(A000701(n))`
-/

namespace A158159.P7946044992537082186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158171 (n + 1) - A185284 (A000701 n).toNat

end

end A158159.P7946044992537082186

/-! ## A158159.P3490414825518977853

`A158177(n+1)-A185284(A000701(n))`
-/

namespace A158159.P3490414825518977853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A185284 (A000701 n).toNat

end

end A158159.P3490414825518977853

/-!
# A158160: Number of nondecreasing integer sequences of length 26 with sum zero and sum of absolute values 2n.

The programs for A158160, there is no canonical definition to state claims against.
-/

/-! ## A158160.P10232886041450516780

`A101322(A158161(n+1))`
-/

namespace A158160.P10232886041450516780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (A158161 (n + 1)).toNat

end

end A158160.P10232886041450516780

/-! ## A158160.P600924813029045249

`A158162(n+1)-A185037(A232697(n))`
-/

namespace A158160.P600924813029045249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158162 (n + 1) - A185037 (A232697 n).toNat

end

end A158160.P600924813029045249

/-! ## A158160.P14696845909730684600

`A158168(n+1)-A185037(A232697(n))`
-/

namespace A158160.P14696845909730684600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158168 (n + 1) - A185037 (A232697 n).toNat

end

end A158160.P14696845909730684600

/-! ## A158160.P2955578797793604709

`A158173(n+1)-A185037(A232697(n))`
-/

namespace A158160.P2955578797793604709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158173 (n + 1) - A185037 (A232697 n).toNat

end

end A158160.P2955578797793604709

/-! ## A158160.P12821761594121071096

`A158177(n+1)-A185037(A232697(n))`
-/

namespace A158160.P12821761594121071096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A185037 (A232697 n).toNat

end

end A158160.P12821761594121071096

/-!
# A158161: Number of nondecreasing integer sequences of length 27 with sum zero and sum of absolute values 2n.

The programs for A158161, there is no canonical definition to state claims against.
-/

/-! ## A158161.P12651996520044897719

`record[A000041(n)²-A172543(n+1)]`
-/

namespace A158161.P12651996520044897719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2 - A172543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158161.P12651996520044897719

/-! ## A158161.P14905706743984216363

`A001255(A077168(n))-char[A000219(n+4)]`
-/

namespace A158161.P14905706743984216363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (A077168 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A158161.P14905706743984216363

/-! ## A158161.P5113876443672282626

`A158162(n+1)-A001899(A063431(n+1))`
-/

namespace A158161.P5113876443672282626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158162 (n + 1) - A001899 (A063431 (n + 1)).toNat

end

end A158161.P5113876443672282626

/-! ## A158161.P2680706196965434051

`A158163(n+1)-A008966(A158165(n+4))`
-/

namespace A158161.P2680706196965434051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158163 (n + 1) - A008966 (A158165 (n + 4)).toNat

end

end A158161.P2680706196965434051

/-! ## A158161.P3803008809509911040

`A158165(n+1)-A008966(A158165(n+4))`
-/

namespace A158161.P3803008809509911040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A008966 (A158165 (n + 4)).toNat

end

end A158161.P3803008809509911040

/-!
# A158162: Number of nondecreasing integer sequences of length 28 with sum zero and sum of absolute values 2n.

The programs for A158162, there is no canonical definition to state claims against.
-/

/-! ## A158162.P13722405880846656138

`and(-3, A158163(A187829(n+1)))`
-/

namespace A158162.P13722405880846656138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A158163 (A187829 (n + 1)).toNat)

end

end A158162.P13722405880846656138

/-! ## A158162.P15961365880701889860

`A158177(n+1)-A185037(A033483(n))`
-/

namespace A158162.P15961365880701889860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A185037 (A033483 n).toNat

end

end A158162.P15961365880701889860

/-! ## A158162.P10645171603321062868

`A158179(n+1)-A185037(A033483(n))`
-/

namespace A158162.P10645171603321062868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158179 (n + 1) - A185037 (A033483 n).toNat

end

end A158162.P10645171603321062868

/-! ## A158162.P1138099956908647107

`A158183(n+1)-A340999(A077169(n))`
-/

namespace A158162.P1138099956908647107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158183 (n + 1) - A340999 ((A077169 n).toNat + 204)

end

end A158162.P1138099956908647107

/-! ## A158162.P14652977277523153467

`A001255(n+1)-A018843(A000009(n+1))`
-/

namespace A158162.P14652977277523153467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A018843 (A000009 (n + 1)).toNat

end

end A158162.P14652977277523153467

/-!
# A158163: Number of nondecreasing integer sequences of length 29 with sum zero and sum of absolute values 2n.

The programs for A158163, there is no canonical definition to state claims against.
-/

/-! ## A158163.P6018270053690223285

`A001255(A187829(n+1))-char[14]`
-/

namespace A158163.P6018270053690223285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (A187829 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A158163.P6018270053690223285

/-! ## A158163.P12402003892111269228

`A158165(n+1)-A032741(A245792(n))`
-/

namespace A158163.P12402003892111269228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A032741 (A245792 n).toNat

end

end A158163.P12402003892111269228

/-! ## A158163.P3748970317825374930

`A158165(n+1)-A008966(A158165(n+3))`
-/

namespace A158163.P3748970317825374930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A008966 (A158165 (n + 3)).toNat

end

end A158163.P3748970317825374930

/-! ## A158163.P11173095926231182851

`A158184(n+1)-A039966(A332612(n+5))`
-/

namespace A158163.P11173095926231182851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158184 (n + 1) - A039966 (A332612 (n + 5)).toNat

end

end A158163.P11173095926231182851

/-! ## A158163.P9355899110613901975

`A000041(n+1)²-A010054(A199921(n+1))`
-/

namespace A158163.P9355899110613901975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A010054 (A199921 (n + 1)).toNat

end

end A158163.P9355899110613901975

/-!
# A158164: Number of nondecreasing integer sequences of length 30 with sum zero and sum of absolute values 2n.

The programs for A158164, there is no canonical definition to state claims against.
-/

/-! ## A158164.P9357675251497309489

`A001255(n+1)-A018843(A000009(n))`
-/

namespace A158164.P9357675251497309489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A018843 (A000009 n).toNat

end

end A158164.P9357675251497309489

/-! ## A158164.P14387023206185309365

`A158183(n+1)-A018843(A000009(n))`
-/

namespace A158164.P14387023206185309365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158183 (n + 1) - A018843 (A000009 n).toNat

end

end A158164.P14387023206185309365

/-! ## A158164.P3262974971672980447

`record[A035363(n)²]-A018843(A000009(n))`
-/

namespace A158164.P3262974971672980447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A018843 (A000009 n).toNat

end

end A158164.P3262974971672980447

/-! ## A158164.P2715534331378547337

`A158165(n+1)-A329903(A158165(n+1))`
-/

namespace A158164.P2715534331378547337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158165 (n + 1) - A329903 (A158165 (n + 1)).toNat

end

end A158164.P2715534331378547337

/-! ## A158164.P3821207437489475835

`A158166(n+1)-A185037(A165656(n+2))`
-/

namespace A158164.P3821207437489475835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158166 (n + 1) - A185037 (A165656 (n + 2)).toNat

end

end A158164.P3821207437489475835

/-!
# A158165: Number of nondecreasing integer sequences of length 31 with sum zero and sum of absolute values 2n.

The programs for A158165, there is no canonical definition to state claims against.
-/

/-! ## A158165.P7249901347396384243

`A316658(A205295(n))+A158166(n+1)`
-/

namespace A158165.P7249901347396384243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316658 (A205295 n).toNat + A158166 (n + 1)

end

end A158165.P7249901347396384243

/-! ## A158165.P3980551463012866217

`A000041(n+1)²-A025456(A126683(n))`
-/

namespace A158165.P3980551463012866217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A025456 (A126683 n).toNat

end

end A158165.P3980551463012866217

/-! ## A158165.P3659858809034461009

`A000041(n+1)²-A185284(A002125(n))`
-/

namespace A158165.P3659858809034461009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185284 (A002125 n).toNat

end

end A158165.P3659858809034461009

/-! ## A158165.P9745859427038763019

`A000041(n+1)²-A185284(A020742(n))`
-/

namespace A158165.P9745859427038763019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185284 (A020742 n).toNat

end

end A158165.P9745859427038763019

/-! ## A158165.P2485607903367186290

`A158176(n+1)-A025443(A005179(n+1))`
-/

namespace A158165.P2485607903367186290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158176 (n + 1) - A025443 (A005179 (n + 1)).toNat

end

end A158165.P2485607903367186290

/-!
# A158166: Number of nondecreasing integer sequences of length 32 with sum zero and sum of absolute values 2n.

The programs for A158166, there is no canonical definition to state claims against.
-/

/-! ## A158166.P12309945623210350280

`A158184(n+1)-A235044(A205295(n))`
-/

namespace A158166.P12309945623210350280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158184 (n + 1) - A235044 (A205295 n).toNat

end

end A158166.P12309945623210350280

/-! ## A158166.P11210988767726673545

`A158168(n+1)-A185037(A165656(n)²)`
-/

namespace A158166.P11210988767726673545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158168 (n + 1) - A185037 (A165656 n ^ 2).toNat

end

end A158166.P11210988767726673545

/-! ## A158166.P4797353129834859077

`A158173(n+1)-A185037(A165656(n)²)`
-/

namespace A158166.P4797353129834859077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158173 (n + 1) - A185037 (A165656 n ^ 2).toNat

end

end A158166.P4797353129834859077

/-!
# A158167: Number of nondecreasing integer sequences of length 33 with sum zero and sum of absolute values 2n.

The programs for A158167, there is no canonical definition to state claims against.
-/

/-! ## A158167.P17503504214009705949

`A001255(n+1)-A102683(A184955(n))`
-/

namespace A158167.P17503504214009705949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A102683 (A184955 n).toNat

end

end A158167.P17503504214009705949

/-! ## A158167.P16981164595773974715

`A158171(n+1)-A185284(A000009(n))`
-/

namespace A158167.P16981164595773974715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158171 (n + 1) - A185284 (A000009 n).toNat

end

end A158167.P16981164595773974715

/-! ## A158167.P8944221651378891937

`A158177(n+1)-A185284(A000009(n))`
-/

namespace A158167.P8944221651378891937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158177 (n + 1) - A185284 (A000009 n).toNat

end

end A158167.P8944221651378891937

/-! ## A158167.P8397688813818076507

`A158181(n+1)-A185036(A376743(n))`
-/

namespace A158167.P8397688813818076507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158181 (n + 1) - A185036 (A376743 n).toNat

end

end A158167.P8397688813818076507

/-! ## A158167.P3597988436900324541

`A001255(n+1)-A014071(A290948(3*n+5))`
-/

namespace A158167.P3597988436900324541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A014071 (A290948 (3 * n + 5)).toNat

end

end A158167.P3597988436900324541

/-!
# A158168: Number of nondecreasing integer sequences of length 34 with sum zero and sum of absolute values 2n.

The programs for A158168, there is no canonical definition to state claims against.
-/

/-! ## A158168.P5872577701962545378

`A158173(n+1)-A185238(A073303(n))`
-/

namespace A158168.P5872577701962545378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158173 (n + 1) - A185238 (A073303 n).toNat

end

end A158168.P5872577701962545378

/-! ## A158168.P14113088799821366026

`A158173(n+1)-A185037(A165656(n))`
-/

namespace A158168.P14113088799821366026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158173 (n + 1) - A185037 (A165656 n).toNat

end

end A158168.P14113088799821366026

/-! ## A158168.P14395132424572245333

`Δ[A000070(n)]²-A185037(A185063(n))`
-/

namespace A158168.P14395132424572245333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A185037 (A185063 n).toNat

end

end A158168.P14395132424572245333

/-! ## A158168.P26286720017744566

`A000041(n+1)²-A185238(A073303(n))`
-/

namespace A158168.P26286720017744566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185238 (A073303 n).toNat

end

end A158168.P26286720017744566

/-! ## A158168.P18187662742545726148

`A000041(n+1)²-A185037(A165656(n))`
-/

namespace A158168.P18187662742545726148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185037 (A165656 n).toNat

end

end A158168.P18187662742545726148

/-!
# A158169: Number of nondecreasing integer sequences of length 35 with sum zero and sum of absolute values 2n.

The programs for A158169, there is no canonical definition to state claims against.
-/

/-! ## A158169.P17898370656103964473

`A158171(n+1)-A185284(2*n+3)`
-/

namespace A158169.P17898370656103964473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158171 (n + 1) - A185284 (2 * n + 3)

end

end A158169.P17898370656103964473

/-! ## A158169.P12725531764869074113

`A000041(n+1)²-A185284(2*n+3)`
-/

namespace A158169.P12725531764869074113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185284 (2 * n + 3)

end

end A158169.P12725531764869074113

/-! ## A158169.P15311410822058457062

`A016389(A013610(n))+A000041(n+1)²`
-/

namespace A158169.P15311410822058457062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A013610 n).toNat + A000041 (n + 1) ^ 2

end

end A158169.P15311410822058457062

/-! ## A158169.P9292579777334961876

`A000041(n+1)²-A016389(A156953(n))`
-/

namespace A158169.P9292579777334961876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A016389 (A156953 n).toNat

end

end A158169.P9292579777334961876

/-! ## A158169.P12910831761466355359

`A000041(n+1)²-A185036(A048993(n))`
-/

namespace A158169.P12910831761466355359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185036 (A048993 n).toNat

end

end A158169.P12910831761466355359

/-!
# A158170: Number of nondecreasing integer sequences of length 36 with sum zero and sum of absolute values 2n.

The programs for A158170, there is no canonical definition to state claims against.
-/

/-! ## A158170.P12992811834272973268

`A158172(n+1)-A014082(A228168(n))`
-/

namespace A158170.P12992811834272973268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158172 (n + 1) - A014082 (A228168 n).toNat

end

end A158170.P12992811834272973268

/-! ## A158170.P1541654969567183011

`A158173(n+1)-A014082(A228168(n))`
-/

namespace A158170.P1541654969567183011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158173 (n + 1) - A014082 (A228168 n).toNat

end

end A158170.P1541654969567183011

/-! ## A158170.P6978267532579969873

`A158174(n+1)-A014082(A228168(n))`
-/

namespace A158170.P6978267532579969873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158174 (n + 1) - A014082 (A228168 n).toNat

end

end A158170.P6978267532579969873

/-! ## A158170.P18319210868651246759

`A158175(n+1)-A014082(A228168(n))`
-/

namespace A158170.P18319210868651246759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158175 (n + 1) - A014082 (A228168 n).toNat

end

end A158170.P18319210868651246759

/-! ## A158170.P14773764647016561451

`A000041(n+1)²-A014082(A228168(n))`
-/

namespace A158170.P14773764647016561451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A014082 (A228168 n).toNat

end

end A158170.P14773764647016561451

/-!
# A158171: Number of nondecreasing integer sequences of length 37 with sum zero and sum of absolute values 2n.

The programs for A158171, there is no canonical definition to state claims against.
-/

/-! ## A158171.P8861439775294862354

`A000041(n+1)²-A185284(2*n+1)`
-/

namespace A158171.P8861439775294862354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185284 (2 * n + 1)

end

end A158171.P8861439775294862354

/-! ## A158171.P17180227309729362748

`A213598(n+1)²-A185284(2*n+1)`
-/

namespace A158171.P17180227309729362748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1) ^ 2 - A185284 (2 * n + 1)

end

end A158171.P17180227309729362748

/-! ## A158171.P8145879953644941949

`A000041(n+1)²-A025465(A060455(n))`
-/

namespace A158171.P8145879953644941949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A025465 (A060455 n).toNat

end

end A158171.P8145879953644941949

/-! ## A158171.P10259504637866733768

`A000041(n+1)²-A055641(A156953(n))`
-/

namespace A158171.P10259504637866733768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A055641 (A156953 n).toNat

end

end A158171.P10259504637866733768

/-! ## A158171.P12433233124783692025

`A000041(n+1)²-A025469(A285981(n))`
-/

namespace A158171.P12433233124783692025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A025469 (A285981 n).toNat

end

end A158171.P12433233124783692025

/-!
# A158172: Number of nondecreasing integer sequences of length 38 with sum zero and sum of absolute values 2n.

The programs for A158172, there is no canonical definition to state claims against.
-/

/-! ## A158172.P4033283846262139608

`record[A035363(n)²]-A006927(A014376(n))`
-/

namespace A158172.P4033283846262139608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006927 (A014376 n).toNat

end

end A158172.P4033283846262139608

/-!
# A158173: Number of nondecreasing integer sequences of length 39 with sum zero and sum of absolute values 2n.

The programs for A158173, there is no canonical definition to state claims against.
-/

/-! ## A158173.P3103099349843842683

`A000027(A001255(n+1)-A235145(n))`
-/

namespace A158173.P3103099349843842683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001255 (n + 1) - A235145 n).toNat

end

end A158173.P3103099349843842683

/-! ## A158173.P3993531966921943120

`A000041(n+1)²-A185246(A000009(n))`
-/

namespace A158173.P3993531966921943120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185246 (A000009 n).toNat

end

end A158173.P3993531966921943120

/-! ## A158173.P17585172404857609658

`A000041(n+1)²-A050605(A134975(n))`
-/

namespace A158173.P17585172404857609658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A050605 (A134975 n).toNat

end

end A158173.P17585172404857609658

/-!
# A158174: Number of nondecreasing integer sequences of length 40 with sum zero and sum of absolute values 2n.

The programs for A158174, there is no canonical definition to state claims against.
-/

/-! ## A158174.P6988868260717311171

`A158176(n+1)-A032741(A185294(n))`
-/

namespace A158174.P6988868260717311171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158176 (n + 1) - A032741 (A185294 n).toNat

end

end A158174.P6988868260717311171

/-! ## A158174.P16619524225456287586

`A158180(n+1)-A032741(A185294(n))`
-/

namespace A158174.P16619524225456287586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158180 (n + 1) - A032741 (A185294 n).toNat

end

end A158174.P16619524225456287586

/-!
# A158175: Number of nondecreasing integer sequences of length 41 with sum zero and sum of absolute values 2n.

The programs for A158175, there is no canonical definition to state claims against.
-/

/-! ## A158175.P11551143555080740967

`A158179(n+1)-A032741(A165878(n))`
-/

namespace A158175.P11551143555080740967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158179 (n + 1) - A032741 (A165878 n).toNat

end

end A158175.P11551143555080740967

/-! ## A158175.P6049239760155117033

`A000041(n+1)²-A185036(A185044(n))`
-/

namespace A158175.P6049239760155117033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185036 (A185044 n).toNat

end

end A158175.P6049239760155117033

/-! ## A158175.P2478530729389000358

`A158181(n+1)-A011697(A058343(n+3))`
-/

namespace A158175.P2478530729389000358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158181 (n + 1) - A011697 (A058343 (n + 3)).toNat

end

end A158175.P2478530729389000358

/-! ## A158175.P13334597401945183834

`A000041(n+1)²-A044941(A000016(n+1))`
-/

namespace A158175.P13334597401945183834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A044941 (A000016 (n + 1)).toNat

end

end A158175.P13334597401945183834

/-!
# A158177: Number of nondecreasing integer sequences of length 43 with sum zero and sum of absolute values 2n.

The programs for A158177, there is no canonical definition to state claims against.
-/

/-! ## A158177.P11484450312546192613

`A158181(n+1)-A184944(A058343(n))`
-/

namespace A158177.P11484450312546192613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158181 (n + 1) - A184944 (A058343 n).toNat

end

end A158177.P11484450312546192613

/-! ## A158177.P6303252833149559722

`A158181(n+1)-A185284(A069905(n))`
-/

namespace A158177.P6303252833149559722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158181 (n + 1) - A185284 (A069905 n).toNat

end

end A158177.P6303252833149559722

/-! ## A158177.P14074501825849568554

`A000041(n+1)²-A044941(A000016(n))`
-/

namespace A158177.P14074501825849568554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A044941 (A000016 n).toNat

end

end A158177.P14074501825849568554

/-!
# A158179: Number of nondecreasing integer sequences of length 45 with sum zero and sum of absolute values 2n.

The programs for A158179, there is no canonical definition to state claims against.
-/

/-! ## A158179.P3844062887623929424

`A000041(n+1)²-A101637(A022168(n))`
-/

namespace A158179.P3844062887623929424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A101637 (A022168 n).toNat

end

end A158179.P3844062887623929424

/-! ## A158179.P17890727606473858819

`A000041(n+1)²-A175861(A117401(n)²)`
-/

namespace A158179.P17890727606473858819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A175861 (A117401 n ^ 2).toNat

end

end A158179.P17890727606473858819

/-! ## A158179.P13419171624846505658

`A000041(n+1)²-A011697(A058343(n+1))`
-/

namespace A158179.P13419171624846505658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A011697 (A058343 (n + 1)).toNat

end

end A158179.P13419171624846505658

/-! ## A158179.P1949046416042260518

`A000041(n+1)²-A185238(A028326(n+1))`
-/

namespace A158179.P1949046416042260518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185238 (A028326 (n + 1)).toNat

end

end A158179.P1949046416042260518

/-!
# A158180: Number of nondecreasing integer sequences of length 46 with sum zero and sum of absolute values 2n.

The programs for A158180, there is no canonical definition to state claims against.
-/

/-! ## A158180.P2466438561915526276

`record[A035444(n)²]-A335520(A013609(n))`
-/

namespace A158180.P2466438561915526276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A335520 (A013609 n).toNat

end

end A158180.P2466438561915526276

/-! ## A158180.P4274212944275584351

`A158182(n+1)-A185214(A185203(n+1))`
-/

namespace A158180.P4274212944275584351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158182 (n + 1) - A185214 (A185203 (n + 1)).toNat

end

end A158180.P4274212944275584351

/-! ## A158180.P10925796334266993206

`A158181(n+1)-2*A011697(A058343(n))`
-/

namespace A158180.P10925796334266993206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158181 (n + 1) - 2 * A011697 (A058343 n).toNat

end

end A158180.P10925796334266993206

/-! ## A158180.P12537693661895566174

`A158181(n+1)-2*A185238(A124927(n))`
-/

namespace A158180.P12537693661895566174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158181 (n + 1) - 2 * A185238 (A124927 n).toNat

end

end A158180.P12537693661895566174

/-! ## A158180.P2886076158119289762

`A000041(n+1)²-A185214(A185203(n+1))`
-/

namespace A158180.P2886076158119289762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185214 (A185203 (n + 1)).toNat

end

end A158180.P2886076158119289762

/-!
# A158181: Number of nondecreasing integer sequences of length 47 with sum zero and sum of absolute values 2n.

The programs for A158181, there is no canonical definition to state claims against.
-/

/-! ## A158181.P3565830861299280084

`A000041(n+1)²-A011697(A058343(n))`
-/

namespace A158181.P3565830861299280084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A011697 (A058343 n).toNat

end

end A158181.P3565830861299280084

/-! ## A158181.P11496486823293003282

`A000041(n+1)²-A185238(A028326(n))`
-/

namespace A158181.P11496486823293003282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185238 (A028326 n).toNat

end

end A158181.P11496486823293003282

/-! ## A158181.P13699860998048811428

`A000041(n+1)²-A067898(A174127(n))`
-/

namespace A158181.P13699860998048811428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A067898 (A174127 n).toNat

end

end A158181.P13699860998048811428

/-! ## A158181.P12177207468962011093

`A000041(n+1)²-A185238(A124927(n))`
-/

namespace A158181.P12177207468962011093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185238 (A124927 n).toNat

end

end A158181.P12177207468962011093

/-! ## A158181.P15519447394182922710

`A000041(n+1)²-A185203(A207194(n+1))`
-/

namespace A158181.P15519447394182922710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185203 (A207194 (n + 1)).toNat

end

end A158181.P15519447394182922710

/-!
# A158182: Number of nondecreasing integer sequences of length 48 with sum zero and sum of absolute values 2n.

The programs for A158182, there is no canonical definition to state claims against.
-/

/-! ## A158182.P6473413214974833247

`A000041(n+1)²-A185214(A185203(n))`
-/

namespace A158182.P6473413214974833247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185214 (A185203 n).toNat

end

end A158182.P6473413214974833247

/-! ## A158182.P10462641758822170455

`record[A026794(n+1)²]-A185214(A185203(n))`
-/

namespace A158182.P10462641758822170455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185214 (A185203 n).toNat

end

end A158182.P10462641758822170455

/-!
# A158183: Number of nondecreasing integer sequences of length 49 with sum zero and sum of absolute values 2n.

The programs for A158183, there is no canonical definition to state claims against.
-/

/-! ## A158183.P15977487092948619373

`or(A158182(n+1), A185214(A185203(n)))`
-/

namespace A158183.P15977487092948619373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158182 (n + 1)) (A185214 (A185203 n).toNat)

end

end A158183.P15977487092948619373

/-! ## A158183.P379186213527902867

`A000041(n+1)²-A185203(A207194(n))`
-/

namespace A158183.P379186213527902867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A185203 (A207194 n).toNat

end

end A158183.P379186213527902867

/-! ## A158183.P16228143267689644157

`A001255(n+1)-A263787(p?[A117707(n)])`
-/

namespace A158183.P16228143267689644157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A263787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158183.P16228143267689644157

/-! ## A158183.P11023364537400759495

`A304718(∑[n+1])²-A295341(A004197(n))`
-/

namespace A158183.P11023364537400759495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304718 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A295341 (A004197 n).toNat

end

end A158183.P11023364537400759495

/-!
# A158184: Number of nondecreasing integer sequences of length 50 with sum zero and sum of absolute values 2n.

The programs for A158184, there is no canonical definition to state claims against.
-/

/-! ## A158184.P5534863401736047549

`ratio[A058694(n)²]`
-/

namespace A158184.P5534863401736047549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058694 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A158184.P5534863401736047549

/-! ## A158184.P15917516195291872186

`ratio[∏[A000041(n)]²]`
-/

namespace A158184.P15917516195291872186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A158184.P15917516195291872186

/-! ## A158184.P11546550675927604268

`A304718(∑[n+1])²`
-/

namespace A158184.P11546550675927604268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304718 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A158184.P11546550675927604268

/-! ## A158184.P6492726732613866062

`A330472(∑[n+2])²`
-/

namespace A158184.P6492726732613866062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330472 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A158184.P6492726732613866062

/-! ## A158184.P3605580784293285594

`record[A299200((n+1)²)]`
-/

namespace A158184.P3605580784293285594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158184.P3605580784293285594

/-!
# A158185: Let b(n) the sequence of zero plus the natural numbers (0+A000027). At any step n=1,2,3,4,... add b(n-1) to the number in position n+b(n).

The programs for A158185, there is no canonical definition to state claims against.
-/

/-! ## A158185.P4251926059982147173

`A036037(A002478(n))+n`
-/

namespace A158185.P4251926059982147173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A002478 n).toNat + (n : ℤ)

end

end A158185.P4251926059982147173

/-! ## A158185.P9251795413533198061

`A036037(A000930(2*n))+n`
-/

namespace A158185.P9251795413533198061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A000930 (2 * n)).toNat + (n : ℤ)

end

end A158185.P9251795413533198061

/-! ## A158185.P6403837901843489610

`A056239(A331286(n+1)+∑[2^n])`
-/

namespace A158185.P6403837901843489610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331286 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A158185.P6403837901843489610

/-! ## A158185.P14039033948817383419

`or(A051344(A060773(n)), A072728(n))`
-/

namespace A158185.P14039033948817383419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051344 (A060773 n).toNat) (A072728 n)

end

end A158185.P14039033948817383419

/-!
# A158186: a(n) = 10*n^2 - 7*n + 1.

The programs for A158186, the canonical program `A158186.P854451765404364871` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158186 has offset 0).

The definition of A158186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²-7*n+1` (program `A158186.P854451765404364871`, by `A158186.P854451765404364871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158186.P854451765404364871

`10*n²-7*n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158186

/-- `10*n²-7*n+1` -/
def P854451765404364871.Spec : Prop :=
  ∀ n, P854451765404364871.a n = A158186 n

theorem P854451765404364871.correct : P854451765404364871.Spec := by
  intro n
  simp only [A158186]

end A158186

/-! ## A158186.P6779374830105997093

`∑[a(n-1)+20]` with `a(0)=1, a(1)=3`
-/

namespace A158186.P6779374830105997093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158186.P6779374830105997093

namespace A158186

/-- `∑[a(n-1)+20]` -/
def P6779374830105997093.Spec : Prop :=
  ∀ n, (P6779374830105997093.a n : ℤ) = A158186 n

end A158186

/-! ## A158186.P15077751909517889280

`record[ogf((1+3x+7x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A158186.P15077751909517889280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 7] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158186.P15077751909517889280

namespace A158186

/-- `record[ogf((1+3x+7x^2)/(1+3x+3x^2+x^3))]` -/
def P15077751909517889280.Spec : Prop :=
  ∀ n, P15077751909517889280.a n = A158186 n

end A158186

/-! ## A158186.P16004452314702083482

`(comp[or(1, n)]-1)*(5*n-1)`
-/

namespace A158186.P16004452314702083482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1) * ((5 * n : ℤ) - 1)

end

end A158186.P16004452314702083482

namespace A158186

/-- `(comp[or(1, n)]-1)*(5*n-1)` -/
def P16004452314702083482.Spec : Prop :=
  ∀ n, P16004452314702083482.a n = A158186 n

end A158186

/-! ## A158186.P3182441779636617764

`abs(n-(A153784(n)+1))`
-/

namespace A158186.P3182441779636617764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A153784 n + 1)|

end

end A158186.P3182441779636617764

namespace A158186

/-- `abs(n-(A153784(n)+1))` -/
def P3182441779636617764.Spec : Prop :=
  ∀ n, P3182441779636617764.a n = A158186 n

end A158186

/-! ## A158186.P4552963387059059959

`(5*n-1)*A060747(n)`
-/

namespace A158186.P4552963387059059959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n : ℤ) - 1) * A060747 n

end

end A158186.P4552963387059059959

namespace A158186

/-- `(5*n-1)*A060747(n)` -/
def P4552963387059059959.Spec : Prop :=
  ∀ n, P4552963387059059959.a n = A158186 n

theorem P4552963387059059959.correct : P4552963387059059959.Spec := by
  intro n
  simp only [A158186, Nat.add_sub_cancel, A158186.P4552963387059059959.a, A158186.P854451765404364871.a, A060747, A060747.P16920431360270313306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158186

/-! ## A158186.P12417848085964151822

`abs(∑[n-1]-A152759(n))`
-/

namespace A158186.P12417848085964151822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A152759 n|

end

end A158186.P12417848085964151822

namespace A158186

/-- `abs(∑[n-1]-A152759(n))` -/
def P12417848085964151822.Spec : Prop :=
  ∀ n, P12417848085964151822.a n = A158186 n

end A158186

/-! ## A158186.P15901160960251488394

`A033590(n)/A033578(n)`
-/

namespace A158186.P15901160960251488394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033590 n : ℚ) / (A033578 n : ℚ)

end

end A158186.P15901160960251488394

namespace A158186

/-- `A033590(n)/A033578(n)` -/
def P15901160960251488394.Spec : Prop :=
  ∀ n, P15901160960251488394.a n = (A158186 n : ℚ)

end A158186

/-! ## A158186.P14474066905618697665

`A010010(n)%A033571(A028310(n))`
-/

namespace A158186.P14474066905618697665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010010 n) (A033571 (A028310 n).toNat)

end

end A158186.P14474066905618697665

namespace A158186

/-- `A010010(n)%A033571(A028310(n))` -/
def P14474066905618697665.Spec : Prop :=
  ∀ n, P14474066905618697665.a n = A158186 n

end A158186

/-! ## A158186.P12826187127963608921

`A085787(record[n*a(n%2)])` with `a(0)=1, a(1)=2`
-/

namespace A158186.P12826187127963608921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n * f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A158186.P12826187127963608921

namespace A158186

/-- `A085787(record[n*a(n%2)])` -/
def P12826187127963608921.Spec : Prop :=
  ∀ n, P12826187127963608921.a n = A158186 n

end A158186

/-! ## A158186.P4275730968623132490

`A085787(A111284(n+1))`
-/

namespace A158186.P4275730968623132490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (A111284 (n + 1)).toNat

end

end A158186.P4275730968623132490

namespace A158186

/-- `A085787(A111284(n+1))` -/
def P4275730968623132490.Spec : Prop :=
  ∀ n, P4275730968623132490.a n = A158186 n

end A158186

/-!
# A158187: a(n) = 10*n^2 + 1.

The programs for A158187, the canonical program `A158187.P2080251887677523797` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158187 has offset 0).

The definition of A158187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²+1` (program `A158187.P2080251887677523797`, by `A158187.P2080251887677523797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158187.P2080251887677523797

`10*n²+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A158187

/-- `10*n²+1` -/
def P2080251887677523797.Spec : Prop :=
  ∀ n, (P2080251887677523797.a n : ℤ) = A158187 n

theorem P2080251887677523797.correct : P2080251887677523797.Spec := by
  intro n
  simp only [A158187]

end A158187

/-! ## A158187.P6646508660574705891

`or(1, 10*n²)`
-/

namespace A158187.P6646508660574705891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * n ^ 2)

end

end A158187.P6646508660574705891

namespace A158187

/-- `or(1, 10*n²)` -/
def P6646508660574705891.Spec : Prop :=
  ∀ n, (P6646508660574705891.a n : ℤ) = A158187 n

end A158187

/-! ## A158187.P1026096701402745253

`xor(1, 10*n²)`
-/

namespace A158187.P1026096701402745253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * n ^ 2)

end

end A158187.P1026096701402745253

namespace A158187

/-- `xor(1, 10*n²)` -/
def P1026096701402745253.Spec : Prop :=
  ∀ n, (P1026096701402745253.a n : ℤ) = A158187 n

end A158187

/-! ## A158187.P10747702050392651704

`∑[a(n-1)+20]` with `a(0)=1, a(1)=10`
-/

namespace A158187.P10747702050392651704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158187.P10747702050392651704

namespace A158187

/-- `∑[a(n-1)+20]` -/
def P10747702050392651704.Spec : Prop :=
  ∀ n, (P10747702050392651704.a n : ℤ) = A158187 n

end A158187

/-! ## A158187.P4005143203409882257

`xor(2, n*4*5*n)/2`
-/

namespace A158187.P4005143203409882257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n * (4 * (5 * n))) : ℚ) / 2

end

end A158187.P4005143203409882257

namespace A158187

/-- `xor(2, n*4*5*n)/2` -/
def P4005143203409882257.Spec : Prop :=
  ∀ n, P4005143203409882257.a n = (A158187 n : ℚ)

end A158187

/-! ## A158187.P16003933796365691185

`ceil(A158493(n)/2)`
-/

namespace A158187.P16003933796365691185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158493 n : ℚ) / 2⌉

end

end A158187.P16003933796365691185

namespace A158187

/-- `ceil(A158493(n)/2)` -/
def P16003933796365691185.Spec : Prop :=
  ∀ n, P16003933796365691185.a n = A158187 n

end A158187

/-! ## A158187.P10390407295899049553

`ceil(A158558(n)/3)`
-/

namespace A158187.P10390407295899049553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158558 n : ℚ) / 3⌉

end

end A158187.P10390407295899049553

namespace A158187

/-- `ceil(A158558(n)/3)` -/
def P10390407295899049553.Spec : Prop :=
  ∀ n, P10390407295899049553.a n = A158187 n

end A158187

/-! ## A158187.P17853826951037100606

`ceil(A010022(n)/4)`
-/

namespace A158187.P17853826951037100606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010022 n : ℚ) / 4⌉

end

end A158187.P17853826951037100606

namespace A158187

/-- `ceil(A010022(n)/4)` -/
def P17853826951037100606.Spec : Prop :=
  ∀ n, P17853826951037100606.a n = A158187 n

end A158187

/-! ## A158187.P13399138692912225024

`(A195322(n)+2)/2`
-/

namespace A158187.P13399138692912225024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195322 n + 2 : ℚ) / 2

end

end A158187.P13399138692912225024

namespace A158187

/-- `(A195322(n)+2)/2` -/
def P13399138692912225024.Spec : Prop :=
  ∀ n, P13399138692912225024.a n = (A158187 n : ℚ)

theorem P13399138692912225024.correct : P13399138692912225024.Spec := by
  intro n
  simp only [A158187, Nat.add_sub_cancel, A158187.P13399138692912225024.a, A158187.P2080251887677523797.a, A195322, A195322.P14642345599838426870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158187

/-! ## A158187.P2960337842019789149

`(A244636(n)+3)/3`
-/

namespace A158187.P2960337842019789149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244636 n + 3 : ℚ) / 3

end

end A158187.P2960337842019789149

namespace A158187

/-- `(A244636(n)+3)/3` -/
def P2960337842019789149.Spec : Prop :=
  ∀ n, P2960337842019789149.a n = (A158187 n : ℚ)

theorem P2960337842019789149.correct : P2960337842019789149.Spec := by
  intro n
  simp only [A158187, Nat.add_sub_cancel, A158187.P2960337842019789149.a, A158187.P2080251887677523797.a, A244636, A244636.P15245594885132756061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158187

/-! ## A158187.P10514574436762501733

`(A158602(n)+3)/4`
-/

namespace A158187.P10514574436762501733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158602 n + 3 : ℚ) / 4

end

end A158187.P10514574436762501733

namespace A158187

/-- `(A158602(n)+3)/4` -/
def P10514574436762501733.Spec : Prop :=
  ∀ n, P10514574436762501733.a n = (A158187 n : ℚ)

theorem P10514574436762501733.correct : P10514574436762501733.Spec := by
  intro n
  simp only [A158187, Nat.add_sub_cancel, A158187.P10514574436762501733.a, A158187.P2080251887677523797.a, A158602, A158602.P7268378752972568757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158187

/-! ## A158187.P12962949469255606705

`A121509(Δ[n²])`
-/

namespace A158187.P12962949469255606705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158187.P12962949469255606705

namespace A158187

/-- `A121509(Δ[n²])` -/
def P12962949469255606705.Spec : Prop :=
  ∀ n, P12962949469255606705.a n = A158187 n

end A158187

/-! ## A158187.P4831040941938826078

`ceil(A010001(2*n)/2)`
-/

namespace A158187.P4831040941938826078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 (2 * n) : ℚ) / 2⌉

end

end A158187.P4831040941938826078

namespace A158187

/-- `ceil(A010001(2*n)/2)` -/
def P4831040941938826078.Spec : Prop :=
  ∀ n, P4831040941938826078.a n = A158187 n

end A158187

/-! ## A158187.P16612794467687912913

`ceil(A212656(2*n)/2)`
-/

namespace A158187.P16612794467687912913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212656 (2 * n) : ℚ) / 2⌉

end

end A158187.P16612794467687912913

namespace A158187

/-- `ceil(A212656(2*n)/2)` -/
def P16612794467687912913.Spec : Prop :=
  ∀ n, P16612794467687912913.a n = A158187 n

end A158187

/-! ## A158187.P7046284366582103706

`∑[A370532(2*n+1)]`
-/

namespace A158187.P7046284366582103706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158187.P7046284366582103706

namespace A158187

/-- `∑[A370532(2*n+1)]` -/
def P7046284366582103706.Spec : Prop :=
  ∀ n, P7046284366582103706.a n = A158187 n

end A158187

/-! ## A158187.P9701712097611529806

`ceil(A005897(10*n)/60)`
-/

namespace A158187.P9701712097611529806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005897 (10 * n) : ℚ) / 60⌉

end

end A158187.P9701712097611529806

namespace A158187

/-- `ceil(A005897(10*n)/60)` -/
def P9701712097611529806.Spec : Prop :=
  ∀ n, P9701712097611529806.a n = A158187 n

end A158187

/-! ## A158187.P3870654494901456410

`abs(n*(A028310(10*n)+1)+1-n)`
-/

namespace A158187.P3870654494901456410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A028310 (10 * n) + 1) + 1 - (n : ℤ)|

end

end A158187.P3870654494901456410

namespace A158187

/-- `abs(n*(A028310(10*n)+1)+1-n)` -/
def P3870654494901456410.Spec : Prop :=
  ∀ n, P3870654494901456410.a n = A158187 n

end A158187

/-! ## A158187.P3351858917439343342

`sqrt(A017282(n²))`
-/

namespace A158187.P3351858917439343342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017282 (n ^ 2) : ℝ)

end

end A158187.P3351858917439343342

namespace A158187

/-- `sqrt(A017282(n²))` -/
def P3351858917439343342.Spec : Prop :=
  ∀ n, P3351858917439343342.a n = (A158187 n : ℝ)

end A158187

/-! ## A158187.P3093748471215329892

`A017281(n²)`
-/

namespace A158187.P3093748471215329892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (n ^ 2)

end

end A158187.P3093748471215329892

namespace A158187

/-- `A017281(n²)` -/
def P3093748471215329892.Spec : Prop :=
  ∀ n, P3093748471215329892.a n = A158187 n

end A158187

/-!
# A158189: Prime numbers p such that the sum of the nonprime digits of p + the sum of even digits of p is prime.

The programs for A158189, there is no canonical definition to state claims against.
-/

/-! ## A158189.P8135035980044653863

`p?[A177760(2*n+1)+A047241(n+1)]`
-/

namespace A158189.P8135035980044653863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177760 (2 * n + 1) + A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158189.P8135035980044653863

/-! ## A158189.P806737659473797827

`A337649(A350277(n+1))`
-/

namespace A158189.P806737659473797827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337649 (A350277 (n + 1)).toNat

end

end A158189.P806737659473797827

/-!
# A158190: Nonprime numbers with final digit prime.

The programs for A158190, the canonical program `A158190.P2903595179682650954` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158190 has offset 1).

The definition of A158190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158190.P17229853367508436514

`filter[A260181(n+1), A005171(#)]`
-/

namespace A158190.P17229853367508436514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A158190.P17229853367508436514

namespace A158190

/-- `filter[A260181(n+1), A005171(#)]` -/
def P17229853367508436514.Spec : Prop :=
  ∀ n, P17229853367508436514.a n = A158190 (n + 1)

end A158190

/-! ## A158190.P2903595179682650954

`filter[A260181(n+1), A066247(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158190

/-- `filter[A260181(n+1), A066247(#)]` -/
def P2903595179682650954.Spec : Prop :=
  ∀ n, P2903595179682650954.a n = A158190 (n + 1)

theorem P2903595179682650954.correct : P2903595179682650954.Spec := by
  intro n
  simp only [A158190, Nat.add_sub_cancel]

end A158190

/-! ## A158190.P2192207180918886412

`∩[A002808(n+1), A260181(n+1)]`
-/

namespace A158190.P2192207180918886412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158190.P2192207180918886412

namespace A158190

/-- `∩[A002808(n+1), A260181(n+1)]` -/
def P2192207180918886412.Spec : Prop :=
  ∀ n, (P2192207180918886412.a n : ℤ) = A158190 (n + 1)

end A158190

/-! ## A158190.P17125502360182070572

`∩[A018252(n+1), A260181(n+1)]`
-/

namespace A158190.P17125502360182070572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158190.P17125502360182070572

namespace A158190

/-- `∩[A018252(n+1), A260181(n+1)]` -/
def P17125502360182070572.Spec : Prop :=
  ∀ n, (P17125502360182070572.a n : ℤ) = A158190 (n + 1)

end A158190

/-! ## A158190.P11848951854227003919

`∩[A141468(n+1), A260181(n+1)]`
-/

namespace A158190.P11848951854227003919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158190.P11848951854227003919

namespace A158190

/-- `∩[A141468(n+1), A260181(n+1)]` -/
def P11848951854227003919.Spec : Prop :=
  ∀ n, (P11848951854227003919.a n : ℤ) = A158190 (n + 1)

end A158190

/-! ## A158190.P12085147626514380355

`∩[A117815(n+1), A260181(n+1)]`
-/

namespace A158190.P12085147626514380355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158190.P12085147626514380355

namespace A158190

/-- `∩[A117815(n+1), A260181(n+1)]` -/
def P12085147626514380355.Spec : Prop :=
  ∀ n, (P12085147626514380355.a n : ℤ) = A158190 (n + 1)

end A158190

/-! ## A158190.P3974936132819909294

`∩[A056653(n+1), A260181(n+1)]`
-/

namespace A158190.P3974936132819909294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158190.P3974936132819909294

namespace A158190

/-- `∩[A056653(n+1), A260181(n+1)]` -/
def P3974936132819909294.Spec : Prop :=
  ∀ n, (P3974936132819909294.a n : ℤ) = A158190 (n + 1)

end A158190

/-! ## A158190.P11635734839982644996

`A026239(p?[A026239(A260181(n+1))])`
-/

namespace A158190.P11635734839982644996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A260181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158190.P11635734839982644996

namespace A158190

/-- `A026239(p?[A026239(A260181(n+1))])` -/
def P11635734839982644996.Spec : Prop :=
  ∀ n, P11635734839982644996.a n = A158190 (n + 1)

end A158190

/-!
# A158194: a(n) = Sum_{i=1..n-1} (-1)^i*binomial(n, i-1)*binomial(n, i)*binomial(n, i+1).

The programs for A158194, there is no canonical definition to state claims against.
-/

/-! ## A158194.P2408481092422475670

`A007814(n+1)*A252650(A075729(n))`
-/

namespace A158194.P2408481092422475670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A252650 (A075729 n).toNat

end

end A158194.P2408481092422475670

/-! ## A158194.P14622494448575495801

`A027641(n+3)*A062401(A000351(n))`
-/

namespace A158194.P14622494448575495801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (n + 3) * A062401 (A000351 n).toNat

end

end A158194.P14622494448575495801

/-!
# A158195: Prime numbers such that sum of digits is even semiprime.

The programs for A158195, the canonical program `A158195.P13663355669615472388` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158195 has offset 1).

The definition of A158195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158195.P13663355669615472388

`p?[(n+1)*(A091090(A007953(n))-1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158195

/-- `p?[(n+1)*(A091090(A007953(n))-1)]` -/
def P13663355669615472388.Spec : Prop :=
  ∀ n, P13663355669615472388.a n = A158195 (n + 1)

theorem P13663355669615472388.correct : P13663355669615472388.Spec := by
  intro n
  simp only [A158195, Nat.add_sub_cancel]

end A158195

/-! ## A158195.P9231119478707227850

`p?[n*A203951(A160939(n+1)-n)]`
-/

namespace A158195.P9231119478707227850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A203951 (A160939 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158195.P9231119478707227850

namespace A158195

/-- `p?[n*A203951(A160939(n+1)-n)]` -/
def P9231119478707227850.Spec : Prop :=
  ∀ n, P9231119478707227850.a n = A158195 (n + 1)

end A158195

/-! ## A158195.P16763772151735510399

`p?[(A091090(A007953(n))-1)*A131738(n)]`
-/

namespace A158195.P16763772151735510399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091090 (A007953 n).toNat - 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158195.P16763772151735510399

namespace A158195

/-- `p?[(A091090(A007953(n))-1)*A131738(n)]` -/
def P16763772151735510399.Spec : Prop :=
  ∀ n, P16763772151735510399.a n = A158195 (n + 1)

end A158195

/-! ## A158195.P10869417688792388768

`p?[(A091090(A007953(n))-1)*A008619(2*n)]`
-/

namespace A158195.P10869417688792388768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091090 (A007953 n).toNat - 1) * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158195.P10869417688792388768

namespace A158195

/-- `p?[(A091090(A007953(n))-1)*A008619(2*n)]` -/
def P10869417688792388768.Spec : Prop :=
  ∀ n, P10869417688792388768.a n = A158195 (n + 1)

end A158195

/-! ## A158195.P16243573130489613182

`p?[(A091090(A007953(n))-1)*A029579(2*n)]`
-/

namespace A158195.P16243573130489613182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091090 (A007953 n).toNat - 1) * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158195.P16243573130489613182

namespace A158195

/-- `p?[(A091090(A007953(n))-1)*A029579(2*n)]` -/
def P16243573130489613182.Spec : Prop :=
  ∀ n, P16243573130489613182.a n = A158195 (n + 1)

end A158195

/-!
# A158196: Expansion of (1-x^2*c(x)^4)/(1-3*x*c(x)^2), c(x) the g.f. of A000108.

The programs for A158196, the canonical program `A158196.P7128410409804886233` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158196 has offset 0).

The definition of A158196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158196.P7128410409804886233

`A076035(n)+A076035(n)-A076025(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158196

/-- `A076035(n)+A076035(n)-A076025(n+1)` -/
def P7128410409804886233.Spec : Prop :=
  ∀ n, P7128410409804886233.a n = A158196 n

theorem P7128410409804886233.correct : P7128410409804886233.Spec := by
  intro n
  simp only [A158196]

end A158196

/-! ## A158196.P6976900574207544063

`or(A000720(A155598(n)), A005179(n+1))`
-/

namespace A158196.P6976900574207544063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000720 (A155598 n).toNat) (A005179 (n + 1))

end

end A158196.P6976900574207544063

namespace A158196

/-- `or(A000720(A155598(n)), A005179(n+1))` -/
def P6976900574207544063.Spec : Prop :=
  ∀ n, P6976900574207544063.a n = A158196 n

end A158196

/-!
# A158197: Expansion of (1-x^2*c(x)^4)/(1-4*x*c(x)^2), c(x) the g.f. of A000108.

The programs for A158197, there is no canonical definition to state claims against.
-/

/-! ## A158197.P18115383524022323411

`∑[A279004(∑[A298024(n)])]`
-/

namespace A158197.P18115383524022323411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279004 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158197.P18115383524022323411

/-!
# A158198: Triangle T(n, k) = Sum_{j=0..k-1} (-1)^j*binomial(k, j+1)*(k-j)^(n-k), read by rows.

The programs for A158198, there is no canonical definition to state claims against.
-/

/-! ## A158198.P13036340985420609369

`A091821(A193387(n+1))`
-/

namespace A158198.P13036340985420609369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091821 (A193387 (n + 1)).toNat

end

end A158198.P13036340985420609369

/-! ## A158198.P2659124754204247580

`A228360(A086645(n))+A179745(n+1)`
-/

namespace A158198.P2659124754204247580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228360 (A086645 n).toNat + A179745 (n + 1)

end

end A158198.P2659124754204247580

/-! ## A158198.P10952156357760337970

`A140595(A080936(n+1)-A096751(n))`
-/

namespace A158198.P10952156357760337970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A080936 (n + 1) - A096751 n).toNat

end

end A158198.P10952156357760337970

/-! ## A158198.P10271468882558945765

`xor(A091863(A220738(n+1)), A142150(A009998(n)))`
-/

namespace A158198.P10271468882558945765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091863 (A220738 (n + 1)).toNat) (A142150 (A009998 n).toNat)

end

end A158198.P10271468882558945765

/-! ## A158198.P10706961740435360217

`A320751(A182469(3*n+1))+A179745(A000005(2^n))`
-/

namespace A158198.P10706961740435360217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320751 (A182469 (3 * n + 1)).toNat + A179745 (A000005 (2 ^ n)).toNat

end

end A158198.P10706961740435360217

